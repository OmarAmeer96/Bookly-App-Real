import 'package:bookly_app/Core/utils/newest_books_loading_card.dart';
import 'package:bookly_app/Core/utils/styles.dart';
import 'package:bookly_app/Core/widgets/custom_error_widget.dart';
import 'package:bookly_app/Features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/newest_books_list_view_item.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_home_app_bar.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/featured_books_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        const SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 16),
                child: CustomHomeAppBar(),
              ),
              FeaturedBooksListView(),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Newest Books",
                  style: Styles.montserratSemiBold,
                ),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
        /*
        THE SLIVER LIST WAS LIKE THIS:
        SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: BestSellerListView(),
          ),
        ),

        =======================================================

        AND THIS IS THE BEST SELLER LIST VIEW FILE:
        class BestSellerListView extends StatelessWidget {
          const BestSellerListView({super.key});
          @override
          Widget build(BuildContext context) {
            return SizedBox(
              child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: 10,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return const Padding(
                    padding: EdgeInsets.only(bottom: 20),
                    child: BestSellerListViewItem(),
                  );
                },
              ),
            );
          }
        }
        */
        BlocBuilder<NewestBooksCubit, NewestBooksState>(
          builder: (context, state) {
            if (state is NewestBooksSuccess) {
              return SliverList(
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: NewestBooksListViewItem(
                          bookModel: state.books[index],
                        ),
                      ),
                    );
                  },
                  childCount: state.books.length,
                ),
              );
            } else if (state is NewestBooksFailure) {
              return SliverToBoxAdapter(
                child: CustomErrorWidget(
                  errMessage: state.errMessage,
                ),
              );
            } else {
              return SliverList(
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: newestBooksloadingCard(),
                    );
                  },
                  childCount: 5,
                ),
              );
            }
          },
        ),
      ],
    );
  }
}
