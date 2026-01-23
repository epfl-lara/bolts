; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!228378 () Bool)

(assert start!228378)

(declare-datatypes ((T!43530 0))(
  ( (T!43531 (val!7926 Int)) )
))
(declare-datatypes ((List!27712 0))(
  ( (Nil!27614) (Cons!27614 (h!33015 T!43530) (t!207314 List!27712)) )
))
(declare-datatypes ((IArray!18043 0))(
  ( (IArray!18044 (innerList!9079 List!27712)) )
))
(declare-fun arr!15 () IArray!18043)

(declare-datatypes ((Conc!9019 0))(
  ( (Node!9019 (left!20925 Conc!9019) (right!21255 Conc!9019) (csize!18268 Int) (cheight!9230 Int)) (Leaf!13238 (xs!11961 IArray!18043) (csize!18269 Int)) (Empty!9019) )
))
(declare-datatypes ((BalanceConc!17766 0))(
  ( (BalanceConc!17767 (c!366893 Conc!9019)) )
))
(declare-fun inv!37398 (BalanceConc!17766) Bool)

(declare-fun fromArray!3 (IArray!18043 Conc!9019) Conc!9019)

(assert (=> start!228378 (not (inv!37398 (BalanceConc!17767 (fromArray!3 arr!15 Empty!9019))))))

(declare-fun e!1484185 () Bool)

(declare-fun inv!37399 (IArray!18043) Bool)

(assert (=> start!228378 (and (inv!37399 arr!15) e!1484185)))

(declare-fun b!2314949 () Bool)

(declare-fun tp!735399 () Bool)

(assert (=> b!2314949 (= e!1484185 tp!735399)))

(assert (= start!228378 b!2314949))

(declare-fun m!2741729 () Bool)

(assert (=> start!228378 m!2741729))

(declare-fun m!2741731 () Bool)

(assert (=> start!228378 m!2741731))

(declare-fun m!2741733 () Bool)

(assert (=> start!228378 m!2741733))

(check-sat (not start!228378) (not b!2314949))
(check-sat)
(get-model)

(declare-fun d!684529 () Bool)

(declare-fun isBalanced!2715 (Conc!9019) Bool)

(assert (=> d!684529 (= (inv!37398 (BalanceConc!17767 (fromArray!3 arr!15 Empty!9019))) (isBalanced!2715 (c!366893 (BalanceConc!17767 (fromArray!3 arr!15 Empty!9019)))))))

(declare-fun bs!458781 () Bool)

(assert (= bs!458781 d!684529))

(declare-fun m!2741737 () Bool)

(assert (=> bs!458781 m!2741737))

(assert (=> start!228378 d!684529))

(declare-fun call!137448 () Conc!9019)

(declare-fun call!137447 () Int)

(declare-fun b!2314975 () Bool)

(declare-fun e!1484203 () Conc!9019)

(declare-fun slice!633 (IArray!18043 Int Int) IArray!18043)

(assert (=> b!2314975 (= e!1484203 (fromArray!3 (slice!633 arr!15 512 call!137447) call!137448))))

(declare-fun lt!858236 () Conc!9019)

(assert (=> b!2314975 (= lt!858236 (Leaf!13238 (slice!633 arr!15 0 512) 512))))

(declare-fun lt!858235 () Conc!9019)

(assert (=> b!2314975 (= lt!858235 (fromArray!3 (slice!633 arr!15 512 call!137447) call!137448))))

(declare-fun lt!858244 () List!27712)

(declare-fun list!10924 (Conc!9019) List!27712)

(assert (=> b!2314975 (= lt!858244 (list!10924 Empty!9019))))

(declare-fun lt!858237 () List!27712)

(assert (=> b!2314975 (= lt!858237 (list!10924 lt!858236))))

(declare-fun lt!858238 () List!27712)

(declare-fun list!10925 (IArray!18043) List!27712)

(assert (=> b!2314975 (= lt!858238 (list!10925 (slice!633 arr!15 512 call!137447)))))

(declare-datatypes ((Unit!40466 0))(
  ( (Unit!40467) )
))
(declare-fun lt!858241 () Unit!40466)

(declare-fun lemmaConcatAssociativity!1431 (List!27712 List!27712 List!27712) Unit!40466)

(assert (=> b!2314975 (= lt!858241 (lemmaConcatAssociativity!1431 lt!858244 lt!858237 lt!858238))))

(declare-fun ++!6750 (List!27712 List!27712) List!27712)

(assert (=> b!2314975 (= (++!6750 (++!6750 lt!858244 lt!858237) lt!858238) (++!6750 lt!858244 (++!6750 lt!858237 lt!858238)))))

(declare-fun lt!858245 () Unit!40466)

(assert (=> b!2314975 (= lt!858245 lt!858241)))

(declare-fun lt!858243 () List!27712)

(assert (=> b!2314975 (= lt!858243 (list!10925 arr!15))))

(declare-fun lt!858242 () Int)

(assert (=> b!2314975 (= lt!858242 512)))

(declare-fun lt!858234 () Unit!40466)

(declare-fun sliceSplit!2 (List!27712 Int) Unit!40466)

(assert (=> b!2314975 (= lt!858234 (sliceSplit!2 lt!858243 lt!858242))))

(declare-fun slice!635 (List!27712 Int Int) List!27712)

(declare-fun size!21829 (List!27712) Int)

(assert (=> b!2314975 (= (++!6750 (slice!635 lt!858243 0 lt!858242) (slice!635 lt!858243 lt!858242 (size!21829 lt!858243))) lt!858243)))

(declare-fun lt!858239 () Unit!40466)

(assert (=> b!2314975 (= lt!858239 lt!858234)))

(declare-fun bm!137442 () Bool)

(declare-fun size!21830 (IArray!18043) Int)

(assert (=> bm!137442 (= call!137447 (size!21830 arr!15))))

(declare-fun b!2314976 () Bool)

(declare-fun e!1484201 () Conc!9019)

(assert (=> b!2314976 (= e!1484201 Empty!9019)))

(declare-fun d!684533 () Bool)

(declare-fun e!1484202 () Bool)

(assert (=> d!684533 e!1484202))

(declare-fun res!989142 () Bool)

(assert (=> d!684533 (=> (not res!989142) (not e!1484202))))

(declare-fun lt!858240 () Conc!9019)

(assert (=> d!684533 (= res!989142 (isBalanced!2715 lt!858240))))

(assert (=> d!684533 (= lt!858240 e!1484203)))

(declare-fun c!366904 () Bool)

(assert (=> d!684533 (= c!366904 (<= (size!21830 arr!15) 512))))

(assert (=> d!684533 (isBalanced!2715 Empty!9019)))

(assert (=> d!684533 (= (fromArray!3 arr!15 Empty!9019) lt!858240)))

(declare-fun b!2314977 () Bool)

(assert (=> b!2314977 (= e!1484201 call!137448)))

(declare-fun b!2314978 () Bool)

(assert (=> b!2314978 (= e!1484202 (= (list!10924 lt!858240) (++!6750 (list!10924 Empty!9019) (list!10925 arr!15))))))

(declare-fun bm!137443 () Bool)

(declare-fun ++!6752 (Conc!9019 Conc!9019) Conc!9019)

(assert (=> bm!137443 (= call!137448 (++!6752 Empty!9019 (ite c!366904 (Leaf!13238 arr!15 call!137447) lt!858236)))))

(declare-fun b!2314979 () Bool)

(assert (=> b!2314979 (= e!1484203 e!1484201)))

(declare-fun c!366905 () Bool)

(assert (=> b!2314979 (= c!366905 (= call!137447 0))))

(assert (= (and d!684533 c!366904) b!2314979))

(assert (= (and d!684533 (not c!366904)) b!2314975))

(assert (= (and b!2314979 c!366905) b!2314976))

(assert (= (and b!2314979 (not c!366905)) b!2314977))

(assert (= (or b!2314979 b!2314977 b!2314975) bm!137442))

(assert (= (or b!2314977 b!2314975) bm!137443))

(assert (= (and d!684533 res!989142) b!2314978))

(declare-fun m!2741787 () Bool)

(assert (=> bm!137442 m!2741787))

(declare-fun m!2741789 () Bool)

(assert (=> d!684533 m!2741789))

(assert (=> d!684533 m!2741787))

(declare-fun m!2741791 () Bool)

(assert (=> d!684533 m!2741791))

(declare-fun m!2741793 () Bool)

(assert (=> b!2314975 m!2741793))

(declare-fun m!2741795 () Bool)

(assert (=> b!2314975 m!2741795))

(declare-fun m!2741797 () Bool)

(assert (=> b!2314975 m!2741797))

(assert (=> b!2314975 m!2741797))

(declare-fun m!2741799 () Bool)

(assert (=> b!2314975 m!2741799))

(declare-fun m!2741801 () Bool)

(assert (=> b!2314975 m!2741801))

(declare-fun m!2741803 () Bool)

(assert (=> b!2314975 m!2741803))

(declare-fun m!2741805 () Bool)

(assert (=> b!2314975 m!2741805))

(declare-fun m!2741807 () Bool)

(assert (=> b!2314975 m!2741807))

(declare-fun m!2741809 () Bool)

(assert (=> b!2314975 m!2741809))

(declare-fun m!2741811 () Bool)

(assert (=> b!2314975 m!2741811))

(declare-fun m!2741813 () Bool)

(assert (=> b!2314975 m!2741813))

(declare-fun m!2741815 () Bool)

(assert (=> b!2314975 m!2741815))

(assert (=> b!2314975 m!2741813))

(declare-fun m!2741817 () Bool)

(assert (=> b!2314975 m!2741817))

(assert (=> b!2314975 m!2741797))

(declare-fun m!2741819 () Bool)

(assert (=> b!2314975 m!2741819))

(assert (=> b!2314975 m!2741803))

(declare-fun m!2741821 () Bool)

(assert (=> b!2314975 m!2741821))

(assert (=> b!2314975 m!2741815))

(declare-fun m!2741823 () Bool)

(assert (=> b!2314975 m!2741823))

(declare-fun m!2741825 () Bool)

(assert (=> b!2314975 m!2741825))

(assert (=> b!2314975 m!2741821))

(assert (=> b!2314975 m!2741793))

(declare-fun m!2741827 () Bool)

(assert (=> b!2314978 m!2741827))

(assert (=> b!2314978 m!2741825))

(assert (=> b!2314978 m!2741801))

(assert (=> b!2314978 m!2741825))

(assert (=> b!2314978 m!2741801))

(declare-fun m!2741829 () Bool)

(assert (=> b!2314978 m!2741829))

(declare-fun m!2741831 () Bool)

(assert (=> bm!137443 m!2741831))

(assert (=> start!228378 d!684533))

(declare-fun d!684537 () Bool)

(assert (=> d!684537 (= (inv!37399 arr!15) (<= (size!21829 (innerList!9079 arr!15)) 2147483647))))

(declare-fun bs!458783 () Bool)

(assert (= bs!458783 d!684537))

(declare-fun m!2741833 () Bool)

(assert (=> bs!458783 m!2741833))

(assert (=> start!228378 d!684537))

(declare-fun b!2314989 () Bool)

(declare-fun e!1484209 () Bool)

(declare-fun tp_is_empty!10769 () Bool)

(declare-fun tp!735405 () Bool)

(assert (=> b!2314989 (= e!1484209 (and tp_is_empty!10769 tp!735405))))

(assert (=> b!2314949 (= tp!735399 e!1484209)))

(get-info :version)

(assert (= (and b!2314949 ((_ is Cons!27614) (innerList!9079 arr!15))) b!2314989))

(check-sat (not bm!137442) (not b!2314989) (not d!684529) (not d!684533) tp_is_empty!10769 (not b!2314975) (not bm!137443) (not d!684537) (not b!2314978))
(check-sat)
