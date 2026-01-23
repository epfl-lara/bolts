; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!185306 () Bool)

(assert start!185306)

(declare-datatypes ((BalanceConc!13558 0) (Conc!6814 0) (List!20674 0) (Object!3877 0) (IArray!13633 0))(
  ( (BalanceConc!13559 (c!302429 Conc!6814)) )
  ( (Node!6814 (left!16521 Conc!6814) (right!16851 Conc!6814) (csize!13858 Int) (cheight!7025 Int)) (Leaf!9972 (xs!9690 IArray!13633) (csize!13859 Int)) (Empty!6814) )
  ( (Nil!20594) (Cons!20594 (h!25995 Object!3877) (t!172539 List!20674)) )
  ( (BalanceConc!13557 (value!115579 BalanceConc!13558)) (List!20673 (value!115580 List!20674)) (Character!78 (value!115581 (_ BitVec 16))) (Open!78 (value!115582 Int)) )
  ( (IArray!13634 (innerList!6874 List!20674)) )
))
(declare-datatypes ((T!32580 0))(
  ( (T!32581 (val!5868 Int)) )
))
(declare-datatypes ((List!20675 0))(
  ( (Nil!20595) (Cons!20595 (h!25996 T!32580) (t!172540 List!20675)) )
))
(declare-datatypes ((Vector!160 0))(
  ( (Vector!161 (underlying!4010 Object!3877) (overflowing!137 List!20675)) )
))
(declare-fun thiss!9288 () Vector!160)

(declare-fun choose!11678 (Vector!160) List!20675)

(declare-fun list!8355 (Vector!160) List!20675)

(assert (=> start!185306 (not (= (choose!11678 thiss!9288) (list!8355 thiss!9288)))))

(declare-fun e!1185844 () Bool)

(assert (=> start!185306 e!1185844))

(declare-fun b!1856330 () Bool)

(declare-fun tp!528077 () Bool)

(declare-fun tp!528078 () Bool)

(assert (=> b!1856330 (= e!1185844 (and tp!528077 tp!528078))))

(assert (= start!185306 b!1856330))

(declare-fun m!2281399 () Bool)

(assert (=> start!185306 m!2281399))

(declare-fun m!2281401 () Bool)

(assert (=> start!185306 m!2281401))

(check-sat (not start!185306) (not b!1856330))
(check-sat)
(get-model)

(declare-fun d!566828 () Bool)

(declare-fun choose!11679 (Vector!160) List!20675)

(assert (=> d!566828 (= (choose!11678 thiss!9288) (choose!11679 thiss!9288))))

(declare-fun bs!410654 () Bool)

(assert (= bs!410654 d!566828))

(declare-fun m!2281403 () Bool)

(assert (=> bs!410654 m!2281403))

(assert (=> start!185306 d!566828))

(declare-fun d!566830 () Bool)

(declare-fun choose!11680 (Vector!160) List!20675)

(assert (=> d!566830 (= (list!8355 thiss!9288) (choose!11680 thiss!9288))))

(declare-fun bs!410656 () Bool)

(assert (= bs!410656 d!566830))

(declare-fun m!2281407 () Bool)

(assert (=> bs!410656 m!2281407))

(assert (=> start!185306 d!566830))

(declare-fun b!1856346 () Bool)

(declare-fun e!1185854 () Bool)

(declare-fun tp!528085 () Bool)

(declare-fun inv!26994 (Conc!6814) Bool)

(assert (=> b!1856346 (= e!1185854 (and (inv!26994 (c!302429 (value!115579 (underlying!4010 thiss!9288)))) tp!528085))))

(declare-fun b!1856345 () Bool)

(declare-fun e!1185853 () Bool)

(declare-fun inv!26995 (BalanceConc!13558) Bool)

(assert (=> b!1856345 (= e!1185853 (and (inv!26995 (value!115579 (underlying!4010 thiss!9288))) e!1185854))))

(declare-fun b!1856347 () Bool)

(declare-fun tp!528086 () Bool)

(assert (=> b!1856347 (= e!1185853 tp!528086)))

(assert (=> b!1856330 (= tp!528077 e!1185853)))

(assert (= b!1856345 b!1856346))

(get-info :version)

(assert (= (and b!1856330 ((_ is BalanceConc!13557) (underlying!4010 thiss!9288))) b!1856345))

(assert (= (and b!1856330 ((_ is List!20673) (underlying!4010 thiss!9288))) b!1856347))

(declare-fun m!2281411 () Bool)

(assert (=> b!1856346 m!2281411))

(declare-fun m!2281413 () Bool)

(assert (=> b!1856345 m!2281413))

(declare-fun b!1856354 () Bool)

(declare-fun e!1185857 () Bool)

(declare-fun tp_is_empty!8533 () Bool)

(declare-fun tp!528091 () Bool)

(assert (=> b!1856354 (= e!1185857 (and tp_is_empty!8533 tp!528091))))

(assert (=> b!1856330 (= tp!528078 e!1185857)))

(assert (= (and b!1856330 ((_ is Cons!20595) (overflowing!137 thiss!9288))) b!1856354))

(check-sat (not d!566828) tp_is_empty!8533 (not b!1856345) (not b!1856354) (not b!1856346) (not b!1856347) (not d!566830))
(check-sat)
(get-model)

(declare-fun d!566834 () Bool)

(assert (=> d!566834 true))

(declare-fun e!1185865 () Bool)

(assert (=> d!566834 e!1185865))

(declare-fun res!832104 () List!20675)

(assert (=> d!566834 (= (choose!11680 thiss!9288) res!832104)))

(declare-fun b!1856365 () Bool)

(declare-fun tp!528099 () Bool)

(assert (=> b!1856365 (= e!1185865 (and tp_is_empty!8533 tp!528099))))

(assert (= (and d!566834 ((_ is Cons!20595) res!832104)) b!1856365))

(assert (=> d!566830 d!566834))

(declare-fun d!566836 () Bool)

(declare-fun c!302432 () Bool)

(assert (=> d!566836 (= c!302432 ((_ is Node!6814) (c!302429 (value!115579 (underlying!4010 thiss!9288)))))))

(declare-fun e!1185870 () Bool)

(assert (=> d!566836 (= (inv!26994 (c!302429 (value!115579 (underlying!4010 thiss!9288)))) e!1185870)))

(declare-fun b!1856372 () Bool)

(declare-fun inv!26998 (Conc!6814) Bool)

(assert (=> b!1856372 (= e!1185870 (inv!26998 (c!302429 (value!115579 (underlying!4010 thiss!9288)))))))

(declare-fun b!1856373 () Bool)

(declare-fun e!1185871 () Bool)

(assert (=> b!1856373 (= e!1185870 e!1185871)))

(declare-fun res!832107 () Bool)

(assert (=> b!1856373 (= res!832107 (not ((_ is Leaf!9972) (c!302429 (value!115579 (underlying!4010 thiss!9288))))))))

(assert (=> b!1856373 (=> res!832107 e!1185871)))

(declare-fun b!1856374 () Bool)

(declare-fun inv!26999 (Conc!6814) Bool)

(assert (=> b!1856374 (= e!1185871 (inv!26999 (c!302429 (value!115579 (underlying!4010 thiss!9288)))))))

(assert (= (and d!566836 c!302432) b!1856372))

(assert (= (and d!566836 (not c!302432)) b!1856373))

(assert (= (and b!1856373 (not res!832107)) b!1856374))

(declare-fun m!2281419 () Bool)

(assert (=> b!1856372 m!2281419))

(declare-fun m!2281421 () Bool)

(assert (=> b!1856374 m!2281421))

(assert (=> b!1856346 d!566836))

(declare-fun d!566840 () Bool)

(declare-fun isBalanced!2121 (Conc!6814) Bool)

(assert (=> d!566840 (= (inv!26995 (value!115579 (underlying!4010 thiss!9288))) (isBalanced!2121 (c!302429 (value!115579 (underlying!4010 thiss!9288)))))))

(declare-fun bs!410658 () Bool)

(assert (= bs!410658 d!566840))

(declare-fun m!2281423 () Bool)

(assert (=> bs!410658 m!2281423))

(assert (=> b!1856345 d!566840))

(declare-fun d!566842 () Bool)

(declare-fun res!832112 () List!20675)

(assert (=> d!566842 (= res!832112 (list!8355 thiss!9288))))

(declare-fun e!1185876 () Bool)

(assert (=> d!566842 e!1185876))

(assert (=> d!566842 (= (choose!11679 thiss!9288) res!832112)))

(declare-fun b!1856379 () Bool)

(declare-fun tp!528104 () Bool)

(assert (=> b!1856379 (= e!1185876 (and tp_is_empty!8533 tp!528104))))

(assert (= (and d!566842 ((_ is Cons!20595) res!832112)) b!1856379))

(assert (=> d!566842 m!2281401))

(assert (=> d!566828 d!566842))

(declare-fun tp!528114 () Bool)

(declare-fun b!1856389 () Bool)

(declare-fun tp!528112 () Bool)

(declare-fun e!1185882 () Bool)

(assert (=> b!1856389 (= e!1185882 (and (inv!26994 (left!16521 (c!302429 (value!115579 (underlying!4010 thiss!9288))))) tp!528112 (inv!26994 (right!16851 (c!302429 (value!115579 (underlying!4010 thiss!9288))))) tp!528114))))

(declare-fun b!1856391 () Bool)

(declare-fun e!1185883 () Bool)

(declare-fun tp!528113 () Bool)

(assert (=> b!1856391 (= e!1185883 tp!528113)))

(declare-fun b!1856390 () Bool)

(declare-fun inv!27000 (IArray!13633) Bool)

(assert (=> b!1856390 (= e!1185882 (and (inv!27000 (xs!9690 (c!302429 (value!115579 (underlying!4010 thiss!9288))))) e!1185883))))

(assert (=> b!1856346 (= tp!528085 (and (inv!26994 (c!302429 (value!115579 (underlying!4010 thiss!9288)))) e!1185882))))

(assert (= (and b!1856346 ((_ is Node!6814) (c!302429 (value!115579 (underlying!4010 thiss!9288))))) b!1856389))

(assert (= b!1856390 b!1856391))

(assert (= (and b!1856346 ((_ is Leaf!9972) (c!302429 (value!115579 (underlying!4010 thiss!9288))))) b!1856390))

(declare-fun m!2281427 () Bool)

(assert (=> b!1856389 m!2281427))

(declare-fun m!2281429 () Bool)

(assert (=> b!1856389 m!2281429))

(declare-fun m!2281431 () Bool)

(assert (=> b!1856390 m!2281431))

(assert (=> b!1856346 m!2281411))

(declare-fun b!1856392 () Bool)

(declare-fun e!1185884 () Bool)

(declare-fun tp!528115 () Bool)

(assert (=> b!1856392 (= e!1185884 (and tp_is_empty!8533 tp!528115))))

(assert (=> b!1856354 (= tp!528091 e!1185884)))

(assert (= (and b!1856354 ((_ is Cons!20595) (t!172540 (overflowing!137 thiss!9288)))) b!1856392))

(declare-fun b!1856397 () Bool)

(declare-fun e!1185887 () Bool)

(declare-fun tp!528120 () Bool)

(declare-fun tp!528121 () Bool)

(assert (=> b!1856397 (= e!1185887 (and tp!528120 tp!528121))))

(assert (=> b!1856347 (= tp!528086 e!1185887)))

(assert (= (and b!1856347 ((_ is Cons!20594) (value!115580 (underlying!4010 thiss!9288)))) b!1856397))

(check-sat (not d!566840) (not b!1856397) (not b!1856365) (not b!1856374) (not b!1856391) (not b!1856390) (not b!1856346) tp_is_empty!8533 (not b!1856389) (not b!1856392) (not b!1856372) (not b!1856379) (not d!566842))
(check-sat)
