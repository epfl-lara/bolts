; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!297542 () Bool)

(assert start!297542)

(declare-fun b!3176948 () Bool)

(declare-fun e!1978782 () Bool)

(declare-fun tp!1004800 () Bool)

(assert (=> b!3176948 (= e!1978782 tp!1004800)))

(declare-fun tp!1004798 () Bool)

(declare-fun tp!1004799 () Bool)

(declare-datatypes ((T!63158 0))(
  ( (T!63159 (val!11988 Int)) )
))
(declare-datatypes ((List!35737 0))(
  ( (Nil!35613) (Cons!35613 (h!41033 T!63158) (t!234832 List!35737)) )
))
(declare-datatypes ((IArray!21113 0))(
  ( (IArray!21114 (innerList!10614 List!35737)) )
))
(declare-datatypes ((Conc!10554 0))(
  ( (Node!10554 (left!27708 Conc!10554) (right!28038 Conc!10554) (csize!21338 Int) (cheight!10765 Int)) (Leaf!16709 (xs!13672 IArray!21113) (csize!21339 Int)) (Empty!10554) )
))
(declare-fun t!3671 () Conc!10554)

(declare-fun b!3176949 () Bool)

(declare-fun e!1978780 () Bool)

(declare-fun inv!48459 (Conc!10554) Bool)

(assert (=> b!3176949 (= e!1978780 (and (inv!48459 (left!27708 t!3671)) tp!1004799 (inv!48459 (right!28038 t!3671)) tp!1004798))))

(declare-fun b!3176950 () Bool)

(declare-fun e!1978781 () Bool)

(declare-fun ConcPrimitiveSize!30 (Conc!10554) Int)

(assert (=> b!3176950 (= e!1978781 (>= (ConcPrimitiveSize!30 (right!28038 t!3671)) (ConcPrimitiveSize!30 t!3671)))))

(declare-fun b!3176951 () Bool)

(declare-fun inv!48460 (IArray!21113) Bool)

(assert (=> b!3176951 (= e!1978780 (and (inv!48460 (xs!13672 t!3671)) e!1978782))))

(declare-fun res!1290753 () Bool)

(assert (=> start!297542 (=> (not res!1290753) (not e!1978781))))

(get-info :version)

(assert (=> start!297542 (= res!1290753 (and (not ((_ is Empty!10554) t!3671)) (not ((_ is Leaf!16709) t!3671))))))

(assert (=> start!297542 e!1978781))

(assert (=> start!297542 (and (inv!48459 t!3671) e!1978780)))

(declare-fun tp_is_empty!17233 () Bool)

(assert (=> start!297542 tp_is_empty!17233))

(declare-fun b!3176952 () Bool)

(declare-fun res!1290752 () Bool)

(assert (=> b!3176952 (=> (not res!1290752) (not e!1978781))))

(declare-fun v!5469 () T!63158)

(declare-fun contains!6291 (Conc!10554 T!63158) Bool)

(assert (=> b!3176952 (= res!1290752 (not (contains!6291 (left!27708 t!3671) v!5469)))))

(assert (= (and start!297542 res!1290753) b!3176952))

(assert (= (and b!3176952 res!1290752) b!3176950))

(assert (= (and start!297542 ((_ is Node!10554) t!3671)) b!3176949))

(assert (= b!3176951 b!3176948))

(assert (= (and start!297542 ((_ is Leaf!16709) t!3671)) b!3176951))

(declare-fun m!3433425 () Bool)

(assert (=> b!3176949 m!3433425))

(declare-fun m!3433427 () Bool)

(assert (=> b!3176949 m!3433427))

(declare-fun m!3433429 () Bool)

(assert (=> b!3176952 m!3433429))

(declare-fun m!3433431 () Bool)

(assert (=> b!3176950 m!3433431))

(declare-fun m!3433433 () Bool)

(assert (=> b!3176950 m!3433433))

(declare-fun m!3433435 () Bool)

(assert (=> b!3176951 m!3433435))

(declare-fun m!3433437 () Bool)

(assert (=> start!297542 m!3433437))

(check-sat (not b!3176952) (not start!297542) tp_is_empty!17233 (not b!3176949) (not b!3176950) (not b!3176948) (not b!3176951))
(check-sat)
(get-model)

(declare-fun b!3176977 () Bool)

(declare-fun e!1978799 () Bool)

(declare-fun contains!6292 (IArray!21113 T!63158) Bool)

(assert (=> b!3176977 (= e!1978799 (contains!6292 (xs!13672 (left!27708 t!3671)) v!5469))))

(declare-fun b!3176978 () Bool)

(declare-fun e!1978801 () Bool)

(assert (=> b!3176978 (= e!1978799 e!1978801)))

(declare-fun res!1290763 () Bool)

(assert (=> b!3176978 (= res!1290763 (contains!6291 (left!27708 (left!27708 t!3671)) v!5469))))

(assert (=> b!3176978 (=> res!1290763 e!1978801)))

(declare-fun d!869751 () Bool)

(declare-fun lt!1068039 () Bool)

(declare-fun contains!6293 (List!35737 T!63158) Bool)

(declare-fun list!12642 (Conc!10554) List!35737)

(assert (=> d!869751 (= lt!1068039 (contains!6293 (list!12642 (left!27708 t!3671)) v!5469))))

(declare-fun e!1978800 () Bool)

(assert (=> d!869751 (= lt!1068039 e!1978800)))

(declare-fun res!1290764 () Bool)

(assert (=> d!869751 (=> (not res!1290764) (not e!1978800))))

(assert (=> d!869751 (= res!1290764 (not ((_ is Empty!10554) (left!27708 t!3671))))))

(assert (=> d!869751 (= (contains!6291 (left!27708 t!3671) v!5469) lt!1068039)))

(declare-fun b!3176979 () Bool)

(assert (=> b!3176979 (= e!1978801 (contains!6291 (right!28038 (left!27708 t!3671)) v!5469))))

(declare-fun b!3176976 () Bool)

(assert (=> b!3176976 (= e!1978800 e!1978799)))

(declare-fun c!533848 () Bool)

(assert (=> b!3176976 (= c!533848 ((_ is Leaf!16709) (left!27708 t!3671)))))

(assert (= (and d!869751 res!1290764) b!3176976))

(assert (= (and b!3176976 c!533848) b!3176977))

(assert (= (and b!3176976 (not c!533848)) b!3176978))

(assert (= (and b!3176978 (not res!1290763)) b!3176979))

(declare-fun m!3433451 () Bool)

(assert (=> b!3176977 m!3433451))

(declare-fun m!3433453 () Bool)

(assert (=> b!3176978 m!3433453))

(declare-fun m!3433455 () Bool)

(assert (=> d!869751 m!3433455))

(assert (=> d!869751 m!3433455))

(declare-fun m!3433457 () Bool)

(assert (=> d!869751 m!3433457))

(declare-fun m!3433459 () Bool)

(assert (=> b!3176979 m!3433459))

(assert (=> b!3176952 d!869751))

(declare-fun d!869759 () Bool)

(declare-fun size!26912 (List!35737) Int)

(assert (=> d!869759 (= (inv!48460 (xs!13672 t!3671)) (<= (size!26912 (innerList!10614 (xs!13672 t!3671))) 2147483647))))

(declare-fun bs!539764 () Bool)

(assert (= bs!539764 d!869759))

(declare-fun m!3433461 () Bool)

(assert (=> bs!539764 m!3433461))

(assert (=> b!3176951 d!869759))

(declare-fun bm!230888 () Bool)

(declare-fun call!230893 () Int)

(declare-fun c!533862 () Bool)

(declare-fun BigIntAbs!0 (Int) Int)

(assert (=> bm!230888 (= call!230893 (BigIntAbs!0 (ite c!533862 (cheight!10765 (right!28038 t!3671)) (csize!21339 (right!28038 t!3671)))))))

(declare-fun b!3177004 () Bool)

(declare-fun e!1978815 () Int)

(assert (=> b!3177004 (= e!1978815 0)))

(declare-fun b!3177005 () Bool)

(declare-fun e!1978814 () Int)

(assert (=> b!3177005 (= e!1978814 e!1978815)))

(declare-fun c!533861 () Bool)

(assert (=> b!3177005 (= c!533861 ((_ is Leaf!16709) (right!28038 t!3671)))))

(declare-fun d!869761 () Bool)

(declare-fun lt!1068046 () Int)

(assert (=> d!869761 (>= lt!1068046 0)))

(assert (=> d!869761 (= lt!1068046 e!1978814)))

(assert (=> d!869761 (= c!533862 ((_ is Node!10554) (right!28038 t!3671)))))

(assert (=> d!869761 (= (ConcPrimitiveSize!30 (right!28038 t!3671)) lt!1068046)))

(declare-fun b!3177006 () Bool)

(assert (=> b!3177006 (= e!1978814 (+ 1 (ConcPrimitiveSize!30 (left!27708 (right!28038 t!3671))) (ConcPrimitiveSize!30 (right!28038 (right!28038 t!3671))) (BigIntAbs!0 (csize!21338 (right!28038 t!3671))) call!230893))))

(declare-fun b!3177007 () Bool)

(declare-fun IArrayPrimitiveSize!29 (IArray!21113) Int)

(assert (=> b!3177007 (= e!1978815 (+ 1 (IArrayPrimitiveSize!29 (xs!13672 (right!28038 t!3671))) call!230893))))

(assert (= (and d!869761 c!533862) b!3177006))

(assert (= (and d!869761 (not c!533862)) b!3177005))

(assert (= (and b!3177005 c!533861) b!3177007))

(assert (= (and b!3177005 (not c!533861)) b!3177004))

(assert (= (or b!3177006 b!3177007) bm!230888))

(declare-fun m!3433483 () Bool)

(assert (=> bm!230888 m!3433483))

(declare-fun m!3433485 () Bool)

(assert (=> b!3177006 m!3433485))

(declare-fun m!3433487 () Bool)

(assert (=> b!3177006 m!3433487))

(declare-fun m!3433489 () Bool)

(assert (=> b!3177006 m!3433489))

(declare-fun m!3433491 () Bool)

(assert (=> b!3177007 m!3433491))

(assert (=> b!3176950 d!869761))

(declare-fun bm!230889 () Bool)

(declare-fun call!230894 () Int)

(declare-fun c!533864 () Bool)

(assert (=> bm!230889 (= call!230894 (BigIntAbs!0 (ite c!533864 (cheight!10765 t!3671) (csize!21339 t!3671))))))

(declare-fun b!3177008 () Bool)

(declare-fun e!1978817 () Int)

(assert (=> b!3177008 (= e!1978817 0)))

(declare-fun b!3177009 () Bool)

(declare-fun e!1978816 () Int)

(assert (=> b!3177009 (= e!1978816 e!1978817)))

(declare-fun c!533863 () Bool)

(assert (=> b!3177009 (= c!533863 ((_ is Leaf!16709) t!3671))))

(declare-fun d!869769 () Bool)

(declare-fun lt!1068047 () Int)

(assert (=> d!869769 (>= lt!1068047 0)))

(assert (=> d!869769 (= lt!1068047 e!1978816)))

(assert (=> d!869769 (= c!533864 ((_ is Node!10554) t!3671))))

(assert (=> d!869769 (= (ConcPrimitiveSize!30 t!3671) lt!1068047)))

(declare-fun b!3177010 () Bool)

(assert (=> b!3177010 (= e!1978816 (+ 1 (ConcPrimitiveSize!30 (left!27708 t!3671)) (ConcPrimitiveSize!30 (right!28038 t!3671)) (BigIntAbs!0 (csize!21338 t!3671)) call!230894))))

(declare-fun b!3177011 () Bool)

(assert (=> b!3177011 (= e!1978817 (+ 1 (IArrayPrimitiveSize!29 (xs!13672 t!3671)) call!230894))))

(assert (= (and d!869769 c!533864) b!3177010))

(assert (= (and d!869769 (not c!533864)) b!3177009))

(assert (= (and b!3177009 c!533863) b!3177011))

(assert (= (and b!3177009 (not c!533863)) b!3177008))

(assert (= (or b!3177010 b!3177011) bm!230889))

(declare-fun m!3433493 () Bool)

(assert (=> bm!230889 m!3433493))

(declare-fun m!3433495 () Bool)

(assert (=> b!3177010 m!3433495))

(assert (=> b!3177010 m!3433431))

(declare-fun m!3433497 () Bool)

(assert (=> b!3177010 m!3433497))

(declare-fun m!3433499 () Bool)

(assert (=> b!3177011 m!3433499))

(assert (=> b!3176950 d!869769))

(declare-fun d!869771 () Bool)

(declare-fun c!533870 () Bool)

(assert (=> d!869771 (= c!533870 ((_ is Node!10554) (left!27708 t!3671)))))

(declare-fun e!1978835 () Bool)

(assert (=> d!869771 (= (inv!48459 (left!27708 t!3671)) e!1978835)))

(declare-fun b!3177038 () Bool)

(declare-fun inv!48463 (Conc!10554) Bool)

(assert (=> b!3177038 (= e!1978835 (inv!48463 (left!27708 t!3671)))))

(declare-fun b!3177039 () Bool)

(declare-fun e!1978836 () Bool)

(assert (=> b!3177039 (= e!1978835 e!1978836)))

(declare-fun res!1290773 () Bool)

(assert (=> b!3177039 (= res!1290773 (not ((_ is Leaf!16709) (left!27708 t!3671))))))

(assert (=> b!3177039 (=> res!1290773 e!1978836)))

(declare-fun b!3177040 () Bool)

(declare-fun inv!48464 (Conc!10554) Bool)

(assert (=> b!3177040 (= e!1978836 (inv!48464 (left!27708 t!3671)))))

(assert (= (and d!869771 c!533870) b!3177038))

(assert (= (and d!869771 (not c!533870)) b!3177039))

(assert (= (and b!3177039 (not res!1290773)) b!3177040))

(declare-fun m!3433511 () Bool)

(assert (=> b!3177038 m!3433511))

(declare-fun m!3433513 () Bool)

(assert (=> b!3177040 m!3433513))

(assert (=> b!3176949 d!869771))

(declare-fun d!869773 () Bool)

(declare-fun c!533871 () Bool)

(assert (=> d!869773 (= c!533871 ((_ is Node!10554) (right!28038 t!3671)))))

(declare-fun e!1978837 () Bool)

(assert (=> d!869773 (= (inv!48459 (right!28038 t!3671)) e!1978837)))

(declare-fun b!3177041 () Bool)

(assert (=> b!3177041 (= e!1978837 (inv!48463 (right!28038 t!3671)))))

(declare-fun b!3177042 () Bool)

(declare-fun e!1978838 () Bool)

(assert (=> b!3177042 (= e!1978837 e!1978838)))

(declare-fun res!1290774 () Bool)

(assert (=> b!3177042 (= res!1290774 (not ((_ is Leaf!16709) (right!28038 t!3671))))))

(assert (=> b!3177042 (=> res!1290774 e!1978838)))

(declare-fun b!3177043 () Bool)

(assert (=> b!3177043 (= e!1978838 (inv!48464 (right!28038 t!3671)))))

(assert (= (and d!869773 c!533871) b!3177041))

(assert (= (and d!869773 (not c!533871)) b!3177042))

(assert (= (and b!3177042 (not res!1290774)) b!3177043))

(declare-fun m!3433515 () Bool)

(assert (=> b!3177041 m!3433515))

(declare-fun m!3433517 () Bool)

(assert (=> b!3177043 m!3433517))

(assert (=> b!3176949 d!869773))

(declare-fun d!869775 () Bool)

(declare-fun c!533872 () Bool)

(assert (=> d!869775 (= c!533872 ((_ is Node!10554) t!3671))))

(declare-fun e!1978839 () Bool)

(assert (=> d!869775 (= (inv!48459 t!3671) e!1978839)))

(declare-fun b!3177044 () Bool)

(assert (=> b!3177044 (= e!1978839 (inv!48463 t!3671))))

(declare-fun b!3177045 () Bool)

(declare-fun e!1978840 () Bool)

(assert (=> b!3177045 (= e!1978839 e!1978840)))

(declare-fun res!1290775 () Bool)

(assert (=> b!3177045 (= res!1290775 (not ((_ is Leaf!16709) t!3671)))))

(assert (=> b!3177045 (=> res!1290775 e!1978840)))

(declare-fun b!3177046 () Bool)

(assert (=> b!3177046 (= e!1978840 (inv!48464 t!3671))))

(assert (= (and d!869775 c!533872) b!3177044))

(assert (= (and d!869775 (not c!533872)) b!3177045))

(assert (= (and b!3177045 (not res!1290775)) b!3177046))

(declare-fun m!3433519 () Bool)

(assert (=> b!3177044 m!3433519))

(declare-fun m!3433521 () Bool)

(assert (=> b!3177046 m!3433521))

(assert (=> start!297542 d!869775))

(declare-fun e!1978852 () Bool)

(declare-fun tp!1004823 () Bool)

(declare-fun b!3177066 () Bool)

(declare-fun tp!1004824 () Bool)

(assert (=> b!3177066 (= e!1978852 (and (inv!48459 (left!27708 (left!27708 t!3671))) tp!1004824 (inv!48459 (right!28038 (left!27708 t!3671))) tp!1004823))))

(declare-fun b!3177068 () Bool)

(declare-fun e!1978853 () Bool)

(declare-fun tp!1004822 () Bool)

(assert (=> b!3177068 (= e!1978853 tp!1004822)))

(declare-fun b!3177067 () Bool)

(assert (=> b!3177067 (= e!1978852 (and (inv!48460 (xs!13672 (left!27708 t!3671))) e!1978853))))

(assert (=> b!3176949 (= tp!1004799 (and (inv!48459 (left!27708 t!3671)) e!1978852))))

(assert (= (and b!3176949 ((_ is Node!10554) (left!27708 t!3671))) b!3177066))

(assert (= b!3177067 b!3177068))

(assert (= (and b!3176949 ((_ is Leaf!16709) (left!27708 t!3671))) b!3177067))

(declare-fun m!3433535 () Bool)

(assert (=> b!3177066 m!3433535))

(declare-fun m!3433537 () Bool)

(assert (=> b!3177066 m!3433537))

(declare-fun m!3433539 () Bool)

(assert (=> b!3177067 m!3433539))

(assert (=> b!3176949 m!3433425))

(declare-fun tp!1004826 () Bool)

(declare-fun e!1978854 () Bool)

(declare-fun b!3177069 () Bool)

(declare-fun tp!1004827 () Bool)

(assert (=> b!3177069 (= e!1978854 (and (inv!48459 (left!27708 (right!28038 t!3671))) tp!1004827 (inv!48459 (right!28038 (right!28038 t!3671))) tp!1004826))))

(declare-fun b!3177071 () Bool)

(declare-fun e!1978855 () Bool)

(declare-fun tp!1004825 () Bool)

(assert (=> b!3177071 (= e!1978855 tp!1004825)))

(declare-fun b!3177070 () Bool)

(assert (=> b!3177070 (= e!1978854 (and (inv!48460 (xs!13672 (right!28038 t!3671))) e!1978855))))

(assert (=> b!3176949 (= tp!1004798 (and (inv!48459 (right!28038 t!3671)) e!1978854))))

(assert (= (and b!3176949 ((_ is Node!10554) (right!28038 t!3671))) b!3177069))

(assert (= b!3177070 b!3177071))

(assert (= (and b!3176949 ((_ is Leaf!16709) (right!28038 t!3671))) b!3177070))

(declare-fun m!3433541 () Bool)

(assert (=> b!3177069 m!3433541))

(declare-fun m!3433543 () Bool)

(assert (=> b!3177069 m!3433543))

(declare-fun m!3433545 () Bool)

(assert (=> b!3177070 m!3433545))

(assert (=> b!3176949 m!3433427))

(declare-fun b!3177076 () Bool)

(declare-fun e!1978858 () Bool)

(declare-fun tp!1004830 () Bool)

(assert (=> b!3177076 (= e!1978858 (and tp_is_empty!17233 tp!1004830))))

(assert (=> b!3176948 (= tp!1004800 e!1978858)))

(assert (= (and b!3176948 ((_ is Cons!35613) (innerList!10614 (xs!13672 t!3671)))) b!3177076))

(check-sat tp_is_empty!17233 (not bm!230888) (not bm!230889) (not b!3177070) (not b!3177076) (not b!3177067) (not b!3177006) (not b!3177041) (not d!869751) (not b!3177010) (not b!3177044) (not b!3177066) (not b!3177069) (not b!3177068) (not b!3176949) (not b!3177046) (not b!3177038) (not b!3177043) (not d!869759) (not b!3177071) (not b!3177007) (not b!3177040) (not b!3176979) (not b!3176977) (not b!3177011) (not b!3176978))
(check-sat)
(get-model)

(declare-fun d!869777 () Bool)

(declare-fun c!533873 () Bool)

(assert (=> d!869777 (= c!533873 ((_ is Node!10554) (left!27708 (left!27708 t!3671))))))

(declare-fun e!1978859 () Bool)

(assert (=> d!869777 (= (inv!48459 (left!27708 (left!27708 t!3671))) e!1978859)))

(declare-fun b!3177077 () Bool)

(assert (=> b!3177077 (= e!1978859 (inv!48463 (left!27708 (left!27708 t!3671))))))

(declare-fun b!3177078 () Bool)

(declare-fun e!1978860 () Bool)

(assert (=> b!3177078 (= e!1978859 e!1978860)))

(declare-fun res!1290776 () Bool)

(assert (=> b!3177078 (= res!1290776 (not ((_ is Leaf!16709) (left!27708 (left!27708 t!3671)))))))

(assert (=> b!3177078 (=> res!1290776 e!1978860)))

(declare-fun b!3177079 () Bool)

(assert (=> b!3177079 (= e!1978860 (inv!48464 (left!27708 (left!27708 t!3671))))))

(assert (= (and d!869777 c!533873) b!3177077))

(assert (= (and d!869777 (not c!533873)) b!3177078))

(assert (= (and b!3177078 (not res!1290776)) b!3177079))

(declare-fun m!3433547 () Bool)

(assert (=> b!3177077 m!3433547))

(declare-fun m!3433549 () Bool)

(assert (=> b!3177079 m!3433549))

(assert (=> b!3177066 d!869777))

(declare-fun d!869779 () Bool)

(declare-fun c!533874 () Bool)

(assert (=> d!869779 (= c!533874 ((_ is Node!10554) (right!28038 (left!27708 t!3671))))))

(declare-fun e!1978861 () Bool)

(assert (=> d!869779 (= (inv!48459 (right!28038 (left!27708 t!3671))) e!1978861)))

(declare-fun b!3177080 () Bool)

(assert (=> b!3177080 (= e!1978861 (inv!48463 (right!28038 (left!27708 t!3671))))))

(declare-fun b!3177081 () Bool)

(declare-fun e!1978862 () Bool)

(assert (=> b!3177081 (= e!1978861 e!1978862)))

(declare-fun res!1290777 () Bool)

(assert (=> b!3177081 (= res!1290777 (not ((_ is Leaf!16709) (right!28038 (left!27708 t!3671)))))))

(assert (=> b!3177081 (=> res!1290777 e!1978862)))

(declare-fun b!3177082 () Bool)

(assert (=> b!3177082 (= e!1978862 (inv!48464 (right!28038 (left!27708 t!3671))))))

(assert (= (and d!869779 c!533874) b!3177080))

(assert (= (and d!869779 (not c!533874)) b!3177081))

(assert (= (and b!3177081 (not res!1290777)) b!3177082))

(declare-fun m!3433551 () Bool)

(assert (=> b!3177080 m!3433551))

(declare-fun m!3433553 () Bool)

(assert (=> b!3177082 m!3433553))

(assert (=> b!3177066 d!869779))

(declare-fun d!869781 () Bool)

(declare-fun res!1290782 () Bool)

(declare-fun e!1978865 () Bool)

(assert (=> d!869781 (=> (not res!1290782) (not e!1978865))))

(declare-fun list!12644 (IArray!21113) List!35737)

(assert (=> d!869781 (= res!1290782 (<= (size!26912 (list!12644 (xs!13672 t!3671))) 512))))

(assert (=> d!869781 (= (inv!48464 t!3671) e!1978865)))

(declare-fun b!3177087 () Bool)

(declare-fun res!1290783 () Bool)

(assert (=> b!3177087 (=> (not res!1290783) (not e!1978865))))

(assert (=> b!3177087 (= res!1290783 (= (csize!21339 t!3671) (size!26912 (list!12644 (xs!13672 t!3671)))))))

(declare-fun b!3177088 () Bool)

(assert (=> b!3177088 (= e!1978865 (and (> (csize!21339 t!3671) 0) (<= (csize!21339 t!3671) 512)))))

(assert (= (and d!869781 res!1290782) b!3177087))

(assert (= (and b!3177087 res!1290783) b!3177088))

(declare-fun m!3433555 () Bool)

(assert (=> d!869781 m!3433555))

(assert (=> d!869781 m!3433555))

(declare-fun m!3433557 () Bool)

(assert (=> d!869781 m!3433557))

(assert (=> b!3177087 m!3433555))

(assert (=> b!3177087 m!3433555))

(assert (=> b!3177087 m!3433557))

(assert (=> b!3177046 d!869781))

(declare-fun d!869783 () Bool)

(declare-fun lt!1068053 () Int)

(assert (=> d!869783 (>= lt!1068053 0)))

(declare-fun ListPrimitiveSize!240 (List!35737) Int)

(assert (=> d!869783 (= lt!1068053 (+ 1 (ListPrimitiveSize!240 (innerList!10614 (xs!13672 t!3671)))))))

(assert (=> d!869783 (= (IArrayPrimitiveSize!29 (xs!13672 t!3671)) lt!1068053)))

(declare-fun bs!539766 () Bool)

(assert (= bs!539766 d!869783))

(declare-fun m!3433559 () Bool)

(assert (=> bs!539766 m!3433559))

(assert (=> b!3177011 d!869783))

(declare-fun d!869787 () Bool)

(declare-fun res!1290800 () Bool)

(declare-fun e!1978877 () Bool)

(assert (=> d!869787 (=> (not res!1290800) (not e!1978877))))

(declare-fun size!26914 (Conc!10554) Int)

(assert (=> d!869787 (= res!1290800 (= (csize!21338 t!3671) (+ (size!26914 (left!27708 t!3671)) (size!26914 (right!28038 t!3671)))))))

(assert (=> d!869787 (= (inv!48463 t!3671) e!1978877)))

(declare-fun b!3177109 () Bool)

(declare-fun res!1290801 () Bool)

(assert (=> b!3177109 (=> (not res!1290801) (not e!1978877))))

(assert (=> b!3177109 (= res!1290801 (and (not (= (left!27708 t!3671) Empty!10554)) (not (= (right!28038 t!3671) Empty!10554))))))

(declare-fun b!3177110 () Bool)

(declare-fun res!1290802 () Bool)

(assert (=> b!3177110 (=> (not res!1290802) (not e!1978877))))

(declare-fun max!0 (Int Int) Int)

(declare-fun height!1525 (Conc!10554) Int)

(assert (=> b!3177110 (= res!1290802 (= (cheight!10765 t!3671) (+ (max!0 (height!1525 (left!27708 t!3671)) (height!1525 (right!28038 t!3671))) 1)))))

(declare-fun b!3177111 () Bool)

(assert (=> b!3177111 (= e!1978877 (<= 0 (cheight!10765 t!3671)))))

(assert (= (and d!869787 res!1290800) b!3177109))

(assert (= (and b!3177109 res!1290801) b!3177110))

(assert (= (and b!3177110 res!1290802) b!3177111))

(declare-fun m!3433585 () Bool)

(assert (=> d!869787 m!3433585))

(declare-fun m!3433587 () Bool)

(assert (=> d!869787 m!3433587))

(declare-fun m!3433589 () Bool)

(assert (=> b!3177110 m!3433589))

(declare-fun m!3433591 () Bool)

(assert (=> b!3177110 m!3433591))

(assert (=> b!3177110 m!3433589))

(assert (=> b!3177110 m!3433591))

(declare-fun m!3433593 () Bool)

(assert (=> b!3177110 m!3433593))

(assert (=> b!3177044 d!869787))

(declare-fun bm!230890 () Bool)

(declare-fun call!230895 () Int)

(declare-fun c!533878 () Bool)

(assert (=> bm!230890 (= call!230895 (BigIntAbs!0 (ite c!533878 (cheight!10765 (left!27708 t!3671)) (csize!21339 (left!27708 t!3671)))))))

(declare-fun b!3177112 () Bool)

(declare-fun e!1978879 () Int)

(assert (=> b!3177112 (= e!1978879 0)))

(declare-fun b!3177113 () Bool)

(declare-fun e!1978878 () Int)

(assert (=> b!3177113 (= e!1978878 e!1978879)))

(declare-fun c!533877 () Bool)

(assert (=> b!3177113 (= c!533877 ((_ is Leaf!16709) (left!27708 t!3671)))))

(declare-fun d!869795 () Bool)

(declare-fun lt!1068056 () Int)

(assert (=> d!869795 (>= lt!1068056 0)))

(assert (=> d!869795 (= lt!1068056 e!1978878)))

(assert (=> d!869795 (= c!533878 ((_ is Node!10554) (left!27708 t!3671)))))

(assert (=> d!869795 (= (ConcPrimitiveSize!30 (left!27708 t!3671)) lt!1068056)))

(declare-fun b!3177114 () Bool)

(assert (=> b!3177114 (= e!1978878 (+ 1 (ConcPrimitiveSize!30 (left!27708 (left!27708 t!3671))) (ConcPrimitiveSize!30 (right!28038 (left!27708 t!3671))) (BigIntAbs!0 (csize!21338 (left!27708 t!3671))) call!230895))))

(declare-fun b!3177115 () Bool)

(assert (=> b!3177115 (= e!1978879 (+ 1 (IArrayPrimitiveSize!29 (xs!13672 (left!27708 t!3671))) call!230895))))

(assert (= (and d!869795 c!533878) b!3177114))

(assert (= (and d!869795 (not c!533878)) b!3177113))

(assert (= (and b!3177113 c!533877) b!3177115))

(assert (= (and b!3177113 (not c!533877)) b!3177112))

(assert (= (or b!3177114 b!3177115) bm!230890))

(declare-fun m!3433595 () Bool)

(assert (=> bm!230890 m!3433595))

(declare-fun m!3433597 () Bool)

(assert (=> b!3177114 m!3433597))

(declare-fun m!3433599 () Bool)

(assert (=> b!3177114 m!3433599))

(declare-fun m!3433601 () Bool)

(assert (=> b!3177114 m!3433601))

(declare-fun m!3433603 () Bool)

(assert (=> b!3177115 m!3433603))

(assert (=> b!3177010 d!869795))

(assert (=> b!3177010 d!869761))

(declare-fun d!869797 () Bool)

(assert (=> d!869797 (= (BigIntAbs!0 (csize!21338 t!3671)) (ite (>= (csize!21338 t!3671) 0) (csize!21338 t!3671) (- (csize!21338 t!3671))))))

(assert (=> b!3177010 d!869797))

(declare-fun b!3177117 () Bool)

(declare-fun e!1978880 () Bool)

(assert (=> b!3177117 (= e!1978880 (contains!6292 (xs!13672 (right!28038 (left!27708 t!3671))) v!5469))))

(declare-fun b!3177118 () Bool)

(declare-fun e!1978882 () Bool)

(assert (=> b!3177118 (= e!1978880 e!1978882)))

(declare-fun res!1290803 () Bool)

(assert (=> b!3177118 (= res!1290803 (contains!6291 (left!27708 (right!28038 (left!27708 t!3671))) v!5469))))

(assert (=> b!3177118 (=> res!1290803 e!1978882)))

(declare-fun d!869799 () Bool)

(declare-fun lt!1068057 () Bool)

(assert (=> d!869799 (= lt!1068057 (contains!6293 (list!12642 (right!28038 (left!27708 t!3671))) v!5469))))

(declare-fun e!1978881 () Bool)

(assert (=> d!869799 (= lt!1068057 e!1978881)))

(declare-fun res!1290804 () Bool)

(assert (=> d!869799 (=> (not res!1290804) (not e!1978881))))

(assert (=> d!869799 (= res!1290804 (not ((_ is Empty!10554) (right!28038 (left!27708 t!3671)))))))

(assert (=> d!869799 (= (contains!6291 (right!28038 (left!27708 t!3671)) v!5469) lt!1068057)))

(declare-fun b!3177119 () Bool)

(assert (=> b!3177119 (= e!1978882 (contains!6291 (right!28038 (right!28038 (left!27708 t!3671))) v!5469))))

(declare-fun b!3177116 () Bool)

(assert (=> b!3177116 (= e!1978881 e!1978880)))

(declare-fun c!533879 () Bool)

(assert (=> b!3177116 (= c!533879 ((_ is Leaf!16709) (right!28038 (left!27708 t!3671))))))

(assert (= (and d!869799 res!1290804) b!3177116))

(assert (= (and b!3177116 c!533879) b!3177117))

(assert (= (and b!3177116 (not c!533879)) b!3177118))

(assert (= (and b!3177118 (not res!1290803)) b!3177119))

(declare-fun m!3433605 () Bool)

(assert (=> b!3177117 m!3433605))

(declare-fun m!3433607 () Bool)

(assert (=> b!3177118 m!3433607))

(declare-fun m!3433609 () Bool)

(assert (=> d!869799 m!3433609))

(assert (=> d!869799 m!3433609))

(declare-fun m!3433611 () Bool)

(assert (=> d!869799 m!3433611))

(declare-fun m!3433613 () Bool)

(assert (=> b!3177119 m!3433613))

(assert (=> b!3176979 d!869799))

(assert (=> b!3176949 d!869771))

(assert (=> b!3176949 d!869773))

(declare-fun b!3177121 () Bool)

(declare-fun e!1978885 () Bool)

(assert (=> b!3177121 (= e!1978885 (contains!6292 (xs!13672 (left!27708 (left!27708 t!3671))) v!5469))))

(declare-fun b!3177122 () Bool)

(declare-fun e!1978887 () Bool)

(assert (=> b!3177122 (= e!1978885 e!1978887)))

(declare-fun res!1290807 () Bool)

(assert (=> b!3177122 (= res!1290807 (contains!6291 (left!27708 (left!27708 (left!27708 t!3671))) v!5469))))

(assert (=> b!3177122 (=> res!1290807 e!1978887)))

(declare-fun d!869801 () Bool)

(declare-fun lt!1068058 () Bool)

(assert (=> d!869801 (= lt!1068058 (contains!6293 (list!12642 (left!27708 (left!27708 t!3671))) v!5469))))

(declare-fun e!1978886 () Bool)

(assert (=> d!869801 (= lt!1068058 e!1978886)))

(declare-fun res!1290808 () Bool)

(assert (=> d!869801 (=> (not res!1290808) (not e!1978886))))

(assert (=> d!869801 (= res!1290808 (not ((_ is Empty!10554) (left!27708 (left!27708 t!3671)))))))

(assert (=> d!869801 (= (contains!6291 (left!27708 (left!27708 t!3671)) v!5469) lt!1068058)))

(declare-fun b!3177123 () Bool)

(assert (=> b!3177123 (= e!1978887 (contains!6291 (right!28038 (left!27708 (left!27708 t!3671))) v!5469))))

(declare-fun b!3177120 () Bool)

(assert (=> b!3177120 (= e!1978886 e!1978885)))

(declare-fun c!533880 () Bool)

(assert (=> b!3177120 (= c!533880 ((_ is Leaf!16709) (left!27708 (left!27708 t!3671))))))

(assert (= (and d!869801 res!1290808) b!3177120))

(assert (= (and b!3177120 c!533880) b!3177121))

(assert (= (and b!3177120 (not c!533880)) b!3177122))

(assert (= (and b!3177122 (not res!1290807)) b!3177123))

(declare-fun m!3433615 () Bool)

(assert (=> b!3177121 m!3433615))

(declare-fun m!3433617 () Bool)

(assert (=> b!3177122 m!3433617))

(declare-fun m!3433619 () Bool)

(assert (=> d!869801 m!3433619))

(assert (=> d!869801 m!3433619))

(declare-fun m!3433621 () Bool)

(assert (=> d!869801 m!3433621))

(declare-fun m!3433623 () Bool)

(assert (=> b!3177123 m!3433623))

(assert (=> b!3176978 d!869801))

(declare-fun d!869803 () Bool)

(assert (=> d!869803 (= (inv!48460 (xs!13672 (left!27708 t!3671))) (<= (size!26912 (innerList!10614 (xs!13672 (left!27708 t!3671)))) 2147483647))))

(declare-fun bs!539767 () Bool)

(assert (= bs!539767 d!869803))

(declare-fun m!3433625 () Bool)

(assert (=> bs!539767 m!3433625))

(assert (=> b!3177067 d!869803))

(declare-fun d!869805 () Bool)

(declare-fun lt!1068061 () Bool)

(assert (=> d!869805 (= lt!1068061 (contains!6293 (list!12644 (xs!13672 (left!27708 t!3671))) v!5469))))

(declare-fun choose!18524 (IArray!21113 T!63158) Bool)

(assert (=> d!869805 (= lt!1068061 (choose!18524 (xs!13672 (left!27708 t!3671)) v!5469))))

(assert (=> d!869805 (= (contains!6292 (xs!13672 (left!27708 t!3671)) v!5469) lt!1068061)))

(declare-fun bs!539768 () Bool)

(assert (= bs!539768 d!869805))

(declare-fun m!3433637 () Bool)

(assert (=> bs!539768 m!3433637))

(assert (=> bs!539768 m!3433637))

(declare-fun m!3433639 () Bool)

(assert (=> bs!539768 m!3433639))

(declare-fun m!3433641 () Bool)

(assert (=> bs!539768 m!3433641))

(assert (=> b!3176977 d!869805))

(declare-fun d!869809 () Bool)

(assert (=> d!869809 (= (BigIntAbs!0 (ite c!533864 (cheight!10765 t!3671) (csize!21339 t!3671))) (ite (>= (ite c!533864 (cheight!10765 t!3671) (csize!21339 t!3671)) 0) (ite c!533864 (cheight!10765 t!3671) (csize!21339 t!3671)) (- (ite c!533864 (cheight!10765 t!3671) (csize!21339 t!3671)))))))

(assert (=> bm!230889 d!869809))

(declare-fun d!869811 () Bool)

(assert (=> d!869811 (= (inv!48460 (xs!13672 (right!28038 t!3671))) (<= (size!26912 (innerList!10614 (xs!13672 (right!28038 t!3671)))) 2147483647))))

(declare-fun bs!539769 () Bool)

(assert (= bs!539769 d!869811))

(declare-fun m!3433647 () Bool)

(assert (=> bs!539769 m!3433647))

(assert (=> b!3177070 d!869811))

(declare-fun d!869815 () Bool)

(declare-fun lt!1068066 () Int)

(assert (=> d!869815 (>= lt!1068066 0)))

(declare-fun e!1978899 () Int)

(assert (=> d!869815 (= lt!1068066 e!1978899)))

(declare-fun c!533889 () Bool)

(assert (=> d!869815 (= c!533889 ((_ is Nil!35613) (innerList!10614 (xs!13672 t!3671))))))

(assert (=> d!869815 (= (size!26912 (innerList!10614 (xs!13672 t!3671))) lt!1068066)))

(declare-fun b!3177151 () Bool)

(assert (=> b!3177151 (= e!1978899 0)))

(declare-fun b!3177152 () Bool)

(assert (=> b!3177152 (= e!1978899 (+ 1 (size!26912 (t!234832 (innerList!10614 (xs!13672 t!3671))))))))

(assert (= (and d!869815 c!533889) b!3177151))

(assert (= (and d!869815 (not c!533889)) b!3177152))

(declare-fun m!3433673 () Bool)

(assert (=> b!3177152 m!3433673))

(assert (=> d!869759 d!869815))

(declare-fun d!869827 () Bool)

(declare-fun res!1290821 () Bool)

(declare-fun e!1978901 () Bool)

(assert (=> d!869827 (=> (not res!1290821) (not e!1978901))))

(assert (=> d!869827 (= res!1290821 (= (csize!21338 (left!27708 t!3671)) (+ (size!26914 (left!27708 (left!27708 t!3671))) (size!26914 (right!28038 (left!27708 t!3671))))))))

(assert (=> d!869827 (= (inv!48463 (left!27708 t!3671)) e!1978901)))

(declare-fun b!3177156 () Bool)

(declare-fun res!1290822 () Bool)

(assert (=> b!3177156 (=> (not res!1290822) (not e!1978901))))

(assert (=> b!3177156 (= res!1290822 (and (not (= (left!27708 (left!27708 t!3671)) Empty!10554)) (not (= (right!28038 (left!27708 t!3671)) Empty!10554))))))

(declare-fun b!3177157 () Bool)

(declare-fun res!1290823 () Bool)

(assert (=> b!3177157 (=> (not res!1290823) (not e!1978901))))

(assert (=> b!3177157 (= res!1290823 (= (cheight!10765 (left!27708 t!3671)) (+ (max!0 (height!1525 (left!27708 (left!27708 t!3671))) (height!1525 (right!28038 (left!27708 t!3671)))) 1)))))

(declare-fun b!3177158 () Bool)

(assert (=> b!3177158 (= e!1978901 (<= 0 (cheight!10765 (left!27708 t!3671))))))

(assert (= (and d!869827 res!1290821) b!3177156))

(assert (= (and b!3177156 res!1290822) b!3177157))

(assert (= (and b!3177157 res!1290823) b!3177158))

(declare-fun m!3433685 () Bool)

(assert (=> d!869827 m!3433685))

(declare-fun m!3433687 () Bool)

(assert (=> d!869827 m!3433687))

(declare-fun m!3433689 () Bool)

(assert (=> b!3177157 m!3433689))

(declare-fun m!3433691 () Bool)

(assert (=> b!3177157 m!3433691))

(assert (=> b!3177157 m!3433689))

(assert (=> b!3177157 m!3433691))

(declare-fun m!3433693 () Bool)

(assert (=> b!3177157 m!3433693))

(assert (=> b!3177038 d!869827))

(declare-fun d!869831 () Bool)

(assert (=> d!869831 (= (BigIntAbs!0 (ite c!533862 (cheight!10765 (right!28038 t!3671)) (csize!21339 (right!28038 t!3671)))) (ite (>= (ite c!533862 (cheight!10765 (right!28038 t!3671)) (csize!21339 (right!28038 t!3671))) 0) (ite c!533862 (cheight!10765 (right!28038 t!3671)) (csize!21339 (right!28038 t!3671))) (- (ite c!533862 (cheight!10765 (right!28038 t!3671)) (csize!21339 (right!28038 t!3671))))))))

(assert (=> bm!230888 d!869831))

(declare-fun d!869833 () Bool)

(declare-fun c!533890 () Bool)

(assert (=> d!869833 (= c!533890 ((_ is Node!10554) (left!27708 (right!28038 t!3671))))))

(declare-fun e!1978903 () Bool)

(assert (=> d!869833 (= (inv!48459 (left!27708 (right!28038 t!3671))) e!1978903)))

(declare-fun b!3177161 () Bool)

(assert (=> b!3177161 (= e!1978903 (inv!48463 (left!27708 (right!28038 t!3671))))))

(declare-fun b!3177162 () Bool)

(declare-fun e!1978904 () Bool)

(assert (=> b!3177162 (= e!1978903 e!1978904)))

(declare-fun res!1290826 () Bool)

(assert (=> b!3177162 (= res!1290826 (not ((_ is Leaf!16709) (left!27708 (right!28038 t!3671)))))))

(assert (=> b!3177162 (=> res!1290826 e!1978904)))

(declare-fun b!3177163 () Bool)

(assert (=> b!3177163 (= e!1978904 (inv!48464 (left!27708 (right!28038 t!3671))))))

(assert (= (and d!869833 c!533890) b!3177161))

(assert (= (and d!869833 (not c!533890)) b!3177162))

(assert (= (and b!3177162 (not res!1290826)) b!3177163))

(declare-fun m!3433699 () Bool)

(assert (=> b!3177161 m!3433699))

(declare-fun m!3433701 () Bool)

(assert (=> b!3177163 m!3433701))

(assert (=> b!3177069 d!869833))

(declare-fun d!869837 () Bool)

(declare-fun c!533891 () Bool)

(assert (=> d!869837 (= c!533891 ((_ is Node!10554) (right!28038 (right!28038 t!3671))))))

(declare-fun e!1978905 () Bool)

(assert (=> d!869837 (= (inv!48459 (right!28038 (right!28038 t!3671))) e!1978905)))

(declare-fun b!3177164 () Bool)

(assert (=> b!3177164 (= e!1978905 (inv!48463 (right!28038 (right!28038 t!3671))))))

(declare-fun b!3177165 () Bool)

(declare-fun e!1978906 () Bool)

(assert (=> b!3177165 (= e!1978905 e!1978906)))

(declare-fun res!1290827 () Bool)

(assert (=> b!3177165 (= res!1290827 (not ((_ is Leaf!16709) (right!28038 (right!28038 t!3671)))))))

(assert (=> b!3177165 (=> res!1290827 e!1978906)))

(declare-fun b!3177166 () Bool)

(assert (=> b!3177166 (= e!1978906 (inv!48464 (right!28038 (right!28038 t!3671))))))

(assert (= (and d!869837 c!533891) b!3177164))

(assert (= (and d!869837 (not c!533891)) b!3177165))

(assert (= (and b!3177165 (not res!1290827)) b!3177166))

(declare-fun m!3433703 () Bool)

(assert (=> b!3177164 m!3433703))

(declare-fun m!3433705 () Bool)

(assert (=> b!3177166 m!3433705))

(assert (=> b!3177069 d!869837))

(declare-fun d!869839 () Bool)

(declare-fun res!1290828 () Bool)

(declare-fun e!1978907 () Bool)

(assert (=> d!869839 (=> (not res!1290828) (not e!1978907))))

(assert (=> d!869839 (= res!1290828 (<= (size!26912 (list!12644 (xs!13672 (right!28038 t!3671)))) 512))))

(assert (=> d!869839 (= (inv!48464 (right!28038 t!3671)) e!1978907)))

(declare-fun b!3177167 () Bool)

(declare-fun res!1290829 () Bool)

(assert (=> b!3177167 (=> (not res!1290829) (not e!1978907))))

(assert (=> b!3177167 (= res!1290829 (= (csize!21339 (right!28038 t!3671)) (size!26912 (list!12644 (xs!13672 (right!28038 t!3671))))))))

(declare-fun b!3177168 () Bool)

(assert (=> b!3177168 (= e!1978907 (and (> (csize!21339 (right!28038 t!3671)) 0) (<= (csize!21339 (right!28038 t!3671)) 512)))))

(assert (= (and d!869839 res!1290828) b!3177167))

(assert (= (and b!3177167 res!1290829) b!3177168))

(declare-fun m!3433707 () Bool)

(assert (=> d!869839 m!3433707))

(assert (=> d!869839 m!3433707))

(declare-fun m!3433709 () Bool)

(assert (=> d!869839 m!3433709))

(assert (=> b!3177167 m!3433707))

(assert (=> b!3177167 m!3433707))

(assert (=> b!3177167 m!3433709))

(assert (=> b!3177043 d!869839))

(declare-fun d!869841 () Bool)

(declare-fun lt!1068067 () Int)

(assert (=> d!869841 (>= lt!1068067 0)))

(assert (=> d!869841 (= lt!1068067 (+ 1 (ListPrimitiveSize!240 (innerList!10614 (xs!13672 (right!28038 t!3671))))))))

(assert (=> d!869841 (= (IArrayPrimitiveSize!29 (xs!13672 (right!28038 t!3671))) lt!1068067)))

(declare-fun bs!539770 () Bool)

(assert (= bs!539770 d!869841))

(declare-fun m!3433711 () Bool)

(assert (=> bs!539770 m!3433711))

(assert (=> b!3177007 d!869841))

(declare-fun bm!230893 () Bool)

(declare-fun call!230898 () Int)

(declare-fun c!533893 () Bool)

(assert (=> bm!230893 (= call!230898 (BigIntAbs!0 (ite c!533893 (cheight!10765 (left!27708 (right!28038 t!3671))) (csize!21339 (left!27708 (right!28038 t!3671))))))))

(declare-fun b!3177169 () Bool)

(declare-fun e!1978909 () Int)

(assert (=> b!3177169 (= e!1978909 0)))

(declare-fun b!3177170 () Bool)

(declare-fun e!1978908 () Int)

(assert (=> b!3177170 (= e!1978908 e!1978909)))

(declare-fun c!533892 () Bool)

(assert (=> b!3177170 (= c!533892 ((_ is Leaf!16709) (left!27708 (right!28038 t!3671))))))

(declare-fun d!869843 () Bool)

(declare-fun lt!1068068 () Int)

(assert (=> d!869843 (>= lt!1068068 0)))

(assert (=> d!869843 (= lt!1068068 e!1978908)))

(assert (=> d!869843 (= c!533893 ((_ is Node!10554) (left!27708 (right!28038 t!3671))))))

(assert (=> d!869843 (= (ConcPrimitiveSize!30 (left!27708 (right!28038 t!3671))) lt!1068068)))

(declare-fun b!3177171 () Bool)

(assert (=> b!3177171 (= e!1978908 (+ 1 (ConcPrimitiveSize!30 (left!27708 (left!27708 (right!28038 t!3671)))) (ConcPrimitiveSize!30 (right!28038 (left!27708 (right!28038 t!3671)))) (BigIntAbs!0 (csize!21338 (left!27708 (right!28038 t!3671)))) call!230898))))

(declare-fun b!3177172 () Bool)

(assert (=> b!3177172 (= e!1978909 (+ 1 (IArrayPrimitiveSize!29 (xs!13672 (left!27708 (right!28038 t!3671)))) call!230898))))

(assert (= (and d!869843 c!533893) b!3177171))

(assert (= (and d!869843 (not c!533893)) b!3177170))

(assert (= (and b!3177170 c!533892) b!3177172))

(assert (= (and b!3177170 (not c!533892)) b!3177169))

(assert (= (or b!3177171 b!3177172) bm!230893))

(declare-fun m!3433713 () Bool)

(assert (=> bm!230893 m!3433713))

(declare-fun m!3433715 () Bool)

(assert (=> b!3177171 m!3433715))

(declare-fun m!3433717 () Bool)

(assert (=> b!3177171 m!3433717))

(declare-fun m!3433719 () Bool)

(assert (=> b!3177171 m!3433719))

(declare-fun m!3433721 () Bool)

(assert (=> b!3177172 m!3433721))

(assert (=> b!3177006 d!869843))

(declare-fun bm!230894 () Bool)

(declare-fun call!230899 () Int)

(declare-fun c!533895 () Bool)

(assert (=> bm!230894 (= call!230899 (BigIntAbs!0 (ite c!533895 (cheight!10765 (right!28038 (right!28038 t!3671))) (csize!21339 (right!28038 (right!28038 t!3671))))))))

(declare-fun b!3177173 () Bool)

(declare-fun e!1978911 () Int)

(assert (=> b!3177173 (= e!1978911 0)))

(declare-fun b!3177174 () Bool)

(declare-fun e!1978910 () Int)

(assert (=> b!3177174 (= e!1978910 e!1978911)))

(declare-fun c!533894 () Bool)

(assert (=> b!3177174 (= c!533894 ((_ is Leaf!16709) (right!28038 (right!28038 t!3671))))))

(declare-fun d!869845 () Bool)

(declare-fun lt!1068071 () Int)

(assert (=> d!869845 (>= lt!1068071 0)))

(assert (=> d!869845 (= lt!1068071 e!1978910)))

(assert (=> d!869845 (= c!533895 ((_ is Node!10554) (right!28038 (right!28038 t!3671))))))

(assert (=> d!869845 (= (ConcPrimitiveSize!30 (right!28038 (right!28038 t!3671))) lt!1068071)))

(declare-fun b!3177175 () Bool)

(assert (=> b!3177175 (= e!1978910 (+ 1 (ConcPrimitiveSize!30 (left!27708 (right!28038 (right!28038 t!3671)))) (ConcPrimitiveSize!30 (right!28038 (right!28038 (right!28038 t!3671)))) (BigIntAbs!0 (csize!21338 (right!28038 (right!28038 t!3671)))) call!230899))))

(declare-fun b!3177176 () Bool)

(assert (=> b!3177176 (= e!1978911 (+ 1 (IArrayPrimitiveSize!29 (xs!13672 (right!28038 (right!28038 t!3671)))) call!230899))))

(assert (= (and d!869845 c!533895) b!3177175))

(assert (= (and d!869845 (not c!533895)) b!3177174))

(assert (= (and b!3177174 c!533894) b!3177176))

(assert (= (and b!3177174 (not c!533894)) b!3177173))

(assert (= (or b!3177175 b!3177176) bm!230894))

(declare-fun m!3433723 () Bool)

(assert (=> bm!230894 m!3433723))

(declare-fun m!3433725 () Bool)

(assert (=> b!3177175 m!3433725))

(declare-fun m!3433727 () Bool)

(assert (=> b!3177175 m!3433727))

(declare-fun m!3433729 () Bool)

(assert (=> b!3177175 m!3433729))

(declare-fun m!3433733 () Bool)

(assert (=> b!3177176 m!3433733))

(assert (=> b!3177006 d!869845))

(declare-fun d!869847 () Bool)

(assert (=> d!869847 (= (BigIntAbs!0 (csize!21338 (right!28038 t!3671))) (ite (>= (csize!21338 (right!28038 t!3671)) 0) (csize!21338 (right!28038 t!3671)) (- (csize!21338 (right!28038 t!3671)))))))

(assert (=> b!3177006 d!869847))

(declare-fun d!869851 () Bool)

(declare-fun res!1290830 () Bool)

(declare-fun e!1978912 () Bool)

(assert (=> d!869851 (=> (not res!1290830) (not e!1978912))))

(assert (=> d!869851 (= res!1290830 (= (csize!21338 (right!28038 t!3671)) (+ (size!26914 (left!27708 (right!28038 t!3671))) (size!26914 (right!28038 (right!28038 t!3671))))))))

(assert (=> d!869851 (= (inv!48463 (right!28038 t!3671)) e!1978912)))

(declare-fun b!3177177 () Bool)

(declare-fun res!1290831 () Bool)

(assert (=> b!3177177 (=> (not res!1290831) (not e!1978912))))

(assert (=> b!3177177 (= res!1290831 (and (not (= (left!27708 (right!28038 t!3671)) Empty!10554)) (not (= (right!28038 (right!28038 t!3671)) Empty!10554))))))

(declare-fun b!3177178 () Bool)

(declare-fun res!1290832 () Bool)

(assert (=> b!3177178 (=> (not res!1290832) (not e!1978912))))

(assert (=> b!3177178 (= res!1290832 (= (cheight!10765 (right!28038 t!3671)) (+ (max!0 (height!1525 (left!27708 (right!28038 t!3671))) (height!1525 (right!28038 (right!28038 t!3671)))) 1)))))

(declare-fun b!3177179 () Bool)

(assert (=> b!3177179 (= e!1978912 (<= 0 (cheight!10765 (right!28038 t!3671))))))

(assert (= (and d!869851 res!1290830) b!3177177))

(assert (= (and b!3177177 res!1290831) b!3177178))

(assert (= (and b!3177178 res!1290832) b!3177179))

(declare-fun m!3433739 () Bool)

(assert (=> d!869851 m!3433739))

(declare-fun m!3433741 () Bool)

(assert (=> d!869851 m!3433741))

(declare-fun m!3433743 () Bool)

(assert (=> b!3177178 m!3433743))

(declare-fun m!3433745 () Bool)

(assert (=> b!3177178 m!3433745))

(assert (=> b!3177178 m!3433743))

(assert (=> b!3177178 m!3433745))

(declare-fun m!3433747 () Bool)

(assert (=> b!3177178 m!3433747))

(assert (=> b!3177041 d!869851))

(declare-fun d!869859 () Bool)

(declare-fun lt!1068079 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4833 (List!35737) (InoxSet T!63158))

(assert (=> d!869859 (= lt!1068079 (select (content!4833 (list!12642 (left!27708 t!3671))) v!5469))))

(declare-fun e!1978923 () Bool)

(assert (=> d!869859 (= lt!1068079 e!1978923)))

(declare-fun res!1290840 () Bool)

(assert (=> d!869859 (=> (not res!1290840) (not e!1978923))))

(assert (=> d!869859 (= res!1290840 ((_ is Cons!35613) (list!12642 (left!27708 t!3671))))))

(assert (=> d!869859 (= (contains!6293 (list!12642 (left!27708 t!3671)) v!5469) lt!1068079)))

(declare-fun b!3177194 () Bool)

(declare-fun e!1978924 () Bool)

(assert (=> b!3177194 (= e!1978923 e!1978924)))

(declare-fun res!1290839 () Bool)

(assert (=> b!3177194 (=> res!1290839 e!1978924)))

(assert (=> b!3177194 (= res!1290839 (= (h!41033 (list!12642 (left!27708 t!3671))) v!5469))))

(declare-fun b!3177195 () Bool)

(assert (=> b!3177195 (= e!1978924 (contains!6293 (t!234832 (list!12642 (left!27708 t!3671))) v!5469))))

(assert (= (and d!869859 res!1290840) b!3177194))

(assert (= (and b!3177194 (not res!1290839)) b!3177195))

(assert (=> d!869859 m!3433455))

(declare-fun m!3433771 () Bool)

(assert (=> d!869859 m!3433771))

(declare-fun m!3433773 () Bool)

(assert (=> d!869859 m!3433773))

(declare-fun m!3433775 () Bool)

(assert (=> b!3177195 m!3433775))

(assert (=> d!869751 d!869859))

(declare-fun b!3177212 () Bool)

(declare-fun e!1978936 () List!35737)

(assert (=> b!3177212 (= e!1978936 (list!12644 (xs!13672 (left!27708 t!3671))))))

(declare-fun b!3177211 () Bool)

(declare-fun e!1978935 () List!35737)

(assert (=> b!3177211 (= e!1978935 e!1978936)))

(declare-fun c!533905 () Bool)

(assert (=> b!3177211 (= c!533905 ((_ is Leaf!16709) (left!27708 t!3671)))))

(declare-fun d!869871 () Bool)

(declare-fun c!533904 () Bool)

(assert (=> d!869871 (= c!533904 ((_ is Empty!10554) (left!27708 t!3671)))))

(assert (=> d!869871 (= (list!12642 (left!27708 t!3671)) e!1978935)))

(declare-fun b!3177210 () Bool)

(assert (=> b!3177210 (= e!1978935 Nil!35613)))

(declare-fun b!3177213 () Bool)

(declare-fun ++!8520 (List!35737 List!35737) List!35737)

(assert (=> b!3177213 (= e!1978936 (++!8520 (list!12642 (left!27708 (left!27708 t!3671))) (list!12642 (right!28038 (left!27708 t!3671)))))))

(assert (= (and d!869871 c!533904) b!3177210))

(assert (= (and d!869871 (not c!533904)) b!3177211))

(assert (= (and b!3177211 c!533905) b!3177212))

(assert (= (and b!3177211 (not c!533905)) b!3177213))

(assert (=> b!3177212 m!3433637))

(assert (=> b!3177213 m!3433619))

(assert (=> b!3177213 m!3433609))

(assert (=> b!3177213 m!3433619))

(assert (=> b!3177213 m!3433609))

(declare-fun m!3433783 () Bool)

(assert (=> b!3177213 m!3433783))

(assert (=> d!869751 d!869871))

(declare-fun d!869875 () Bool)

(declare-fun res!1290847 () Bool)

(declare-fun e!1978937 () Bool)

(assert (=> d!869875 (=> (not res!1290847) (not e!1978937))))

(assert (=> d!869875 (= res!1290847 (<= (size!26912 (list!12644 (xs!13672 (left!27708 t!3671)))) 512))))

(assert (=> d!869875 (= (inv!48464 (left!27708 t!3671)) e!1978937)))

(declare-fun b!3177214 () Bool)

(declare-fun res!1290848 () Bool)

(assert (=> b!3177214 (=> (not res!1290848) (not e!1978937))))

(assert (=> b!3177214 (= res!1290848 (= (csize!21339 (left!27708 t!3671)) (size!26912 (list!12644 (xs!13672 (left!27708 t!3671))))))))

(declare-fun b!3177215 () Bool)

(assert (=> b!3177215 (= e!1978937 (and (> (csize!21339 (left!27708 t!3671)) 0) (<= (csize!21339 (left!27708 t!3671)) 512)))))

(assert (= (and d!869875 res!1290847) b!3177214))

(assert (= (and b!3177214 res!1290848) b!3177215))

(assert (=> d!869875 m!3433637))

(assert (=> d!869875 m!3433637))

(declare-fun m!3433785 () Bool)

(assert (=> d!869875 m!3433785))

(assert (=> b!3177214 m!3433637))

(assert (=> b!3177214 m!3433637))

(assert (=> b!3177214 m!3433785))

(assert (=> b!3177040 d!869875))

(declare-fun tp!1004833 () Bool)

(declare-fun e!1978942 () Bool)

(declare-fun tp!1004832 () Bool)

(declare-fun b!3177224 () Bool)

(assert (=> b!3177224 (= e!1978942 (and (inv!48459 (left!27708 (left!27708 (left!27708 t!3671)))) tp!1004833 (inv!48459 (right!28038 (left!27708 (left!27708 t!3671)))) tp!1004832))))

(declare-fun b!3177226 () Bool)

(declare-fun e!1978943 () Bool)

(declare-fun tp!1004831 () Bool)

(assert (=> b!3177226 (= e!1978943 tp!1004831)))

(declare-fun b!3177225 () Bool)

(assert (=> b!3177225 (= e!1978942 (and (inv!48460 (xs!13672 (left!27708 (left!27708 t!3671)))) e!1978943))))

(assert (=> b!3177066 (= tp!1004824 (and (inv!48459 (left!27708 (left!27708 t!3671))) e!1978942))))

(assert (= (and b!3177066 ((_ is Node!10554) (left!27708 (left!27708 t!3671)))) b!3177224))

(assert (= b!3177225 b!3177226))

(assert (= (and b!3177066 ((_ is Leaf!16709) (left!27708 (left!27708 t!3671)))) b!3177225))

(declare-fun m!3433787 () Bool)

(assert (=> b!3177224 m!3433787))

(declare-fun m!3433789 () Bool)

(assert (=> b!3177224 m!3433789))

(declare-fun m!3433791 () Bool)

(assert (=> b!3177225 m!3433791))

(assert (=> b!3177066 m!3433535))

(declare-fun e!1978944 () Bool)

(declare-fun tp!1004835 () Bool)

(declare-fun b!3177227 () Bool)

(declare-fun tp!1004836 () Bool)

(assert (=> b!3177227 (= e!1978944 (and (inv!48459 (left!27708 (right!28038 (left!27708 t!3671)))) tp!1004836 (inv!48459 (right!28038 (right!28038 (left!27708 t!3671)))) tp!1004835))))

(declare-fun b!3177229 () Bool)

(declare-fun e!1978945 () Bool)

(declare-fun tp!1004834 () Bool)

(assert (=> b!3177229 (= e!1978945 tp!1004834)))

(declare-fun b!3177228 () Bool)

(assert (=> b!3177228 (= e!1978944 (and (inv!48460 (xs!13672 (right!28038 (left!27708 t!3671)))) e!1978945))))

(assert (=> b!3177066 (= tp!1004823 (and (inv!48459 (right!28038 (left!27708 t!3671))) e!1978944))))

(assert (= (and b!3177066 ((_ is Node!10554) (right!28038 (left!27708 t!3671)))) b!3177227))

(assert (= b!3177228 b!3177229))

(assert (= (and b!3177066 ((_ is Leaf!16709) (right!28038 (left!27708 t!3671)))) b!3177228))

(declare-fun m!3433793 () Bool)

(assert (=> b!3177227 m!3433793))

(declare-fun m!3433795 () Bool)

(assert (=> b!3177227 m!3433795))

(declare-fun m!3433797 () Bool)

(assert (=> b!3177228 m!3433797))

(assert (=> b!3177066 m!3433537))

(declare-fun b!3177230 () Bool)

(declare-fun e!1978946 () Bool)

(declare-fun tp!1004837 () Bool)

(assert (=> b!3177230 (= e!1978946 (and tp_is_empty!17233 tp!1004837))))

(assert (=> b!3177071 (= tp!1004825 e!1978946)))

(assert (= (and b!3177071 ((_ is Cons!35613) (innerList!10614 (xs!13672 (right!28038 t!3671))))) b!3177230))

(declare-fun tp!1004839 () Bool)

(declare-fun b!3177231 () Bool)

(declare-fun tp!1004840 () Bool)

(declare-fun e!1978947 () Bool)

(assert (=> b!3177231 (= e!1978947 (and (inv!48459 (left!27708 (left!27708 (right!28038 t!3671)))) tp!1004840 (inv!48459 (right!28038 (left!27708 (right!28038 t!3671)))) tp!1004839))))

(declare-fun b!3177233 () Bool)

(declare-fun e!1978948 () Bool)

(declare-fun tp!1004838 () Bool)

(assert (=> b!3177233 (= e!1978948 tp!1004838)))

(declare-fun b!3177232 () Bool)

(assert (=> b!3177232 (= e!1978947 (and (inv!48460 (xs!13672 (left!27708 (right!28038 t!3671)))) e!1978948))))

(assert (=> b!3177069 (= tp!1004827 (and (inv!48459 (left!27708 (right!28038 t!3671))) e!1978947))))

(assert (= (and b!3177069 ((_ is Node!10554) (left!27708 (right!28038 t!3671)))) b!3177231))

(assert (= b!3177232 b!3177233))

(assert (= (and b!3177069 ((_ is Leaf!16709) (left!27708 (right!28038 t!3671)))) b!3177232))

(declare-fun m!3433799 () Bool)

(assert (=> b!3177231 m!3433799))

(declare-fun m!3433801 () Bool)

(assert (=> b!3177231 m!3433801))

(declare-fun m!3433803 () Bool)

(assert (=> b!3177232 m!3433803))

(assert (=> b!3177069 m!3433541))

(declare-fun tp!1004842 () Bool)

(declare-fun tp!1004843 () Bool)

(declare-fun e!1978949 () Bool)

(declare-fun b!3177234 () Bool)

(assert (=> b!3177234 (= e!1978949 (and (inv!48459 (left!27708 (right!28038 (right!28038 t!3671)))) tp!1004843 (inv!48459 (right!28038 (right!28038 (right!28038 t!3671)))) tp!1004842))))

(declare-fun b!3177236 () Bool)

(declare-fun e!1978950 () Bool)

(declare-fun tp!1004841 () Bool)

(assert (=> b!3177236 (= e!1978950 tp!1004841)))

(declare-fun b!3177235 () Bool)

(assert (=> b!3177235 (= e!1978949 (and (inv!48460 (xs!13672 (right!28038 (right!28038 t!3671)))) e!1978950))))

(assert (=> b!3177069 (= tp!1004826 (and (inv!48459 (right!28038 (right!28038 t!3671))) e!1978949))))

(assert (= (and b!3177069 ((_ is Node!10554) (right!28038 (right!28038 t!3671)))) b!3177234))

(assert (= b!3177235 b!3177236))

(assert (= (and b!3177069 ((_ is Leaf!16709) (right!28038 (right!28038 t!3671)))) b!3177235))

(declare-fun m!3433805 () Bool)

(assert (=> b!3177234 m!3433805))

(declare-fun m!3433807 () Bool)

(assert (=> b!3177234 m!3433807))

(declare-fun m!3433809 () Bool)

(assert (=> b!3177235 m!3433809))

(assert (=> b!3177069 m!3433543))

(declare-fun b!3177237 () Bool)

(declare-fun e!1978951 () Bool)

(declare-fun tp!1004844 () Bool)

(assert (=> b!3177237 (= e!1978951 (and tp_is_empty!17233 tp!1004844))))

(assert (=> b!3177068 (= tp!1004822 e!1978951)))

(assert (= (and b!3177068 ((_ is Cons!35613) (innerList!10614 (xs!13672 (left!27708 t!3671))))) b!3177237))

(declare-fun b!3177238 () Bool)

(declare-fun e!1978952 () Bool)

(declare-fun tp!1004845 () Bool)

(assert (=> b!3177238 (= e!1978952 (and tp_is_empty!17233 tp!1004845))))

(assert (=> b!3177076 (= tp!1004830 e!1978952)))

(assert (= (and b!3177076 ((_ is Cons!35613) (t!234832 (innerList!10614 (xs!13672 t!3671))))) b!3177238))

(check-sat (not b!3177077) (not d!869801) (not b!3177231) (not b!3177117) (not b!3177152) (not d!869803) (not b!3177175) (not b!3177087) (not b!3177225) (not b!3177171) (not b!3177229) (not b!3177115) (not d!869811) (not b!3177178) (not b!3177066) (not b!3177232) (not b!3177069) (not b!3177167) (not d!869859) (not d!869851) (not b!3177110) tp_is_empty!17233 (not b!3177163) (not b!3177164) (not d!869805) (not b!3177227) (not b!3177237) (not d!869799) (not bm!230893) (not d!869875) (not b!3177161) (not b!3177230) (not b!3177228) (not b!3177226) (not b!3177079) (not d!869783) (not b!3177224) (not b!3177082) (not d!869839) (not d!869781) (not b!3177166) (not b!3177114) (not b!3177123) (not b!3177122) (not d!869787) (not b!3177176) (not d!869841) (not b!3177238) (not b!3177214) (not b!3177172) (not b!3177234) (not b!3177121) (not bm!230890) (not b!3177212) (not b!3177195) (not d!869827) (not b!3177119) (not b!3177080) (not bm!230894) (not b!3177213) (not b!3177235) (not b!3177233) (not b!3177236) (not b!3177157) (not b!3177118))
(check-sat)
