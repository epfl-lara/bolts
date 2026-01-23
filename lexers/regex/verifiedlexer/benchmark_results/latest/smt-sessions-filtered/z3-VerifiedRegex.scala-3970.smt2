; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!216580 () Bool)

(assert start!216580)

(declare-fun res!953306 () Bool)

(declare-fun e!1417756 () Bool)

(assert (=> start!216580 (=> (not res!953306) (not e!1417756))))

(declare-fun i!956 () Int)

(assert (=> start!216580 (= res!953306 (<= 0 i!956))))

(assert (=> start!216580 e!1417756))

(assert (=> start!216580 true))

(declare-fun e!1417754 () Bool)

(assert (=> start!216580 e!1417754))

(declare-fun b!2220013 () Bool)

(declare-fun e!1417755 () Bool)

(assert (=> b!2220013 (= e!1417756 (not e!1417755))))

(declare-fun res!953307 () Bool)

(assert (=> b!2220013 (=> res!953307 e!1417755)))

(declare-fun lt!827344 () Int)

(assert (=> b!2220013 (= res!953307 (>= i!956 lt!827344))))

(declare-datatypes ((T!41034 0))(
  ( (T!41035 (val!7452 Int)) )
))
(declare-datatypes ((List!26112 0))(
  ( (Nil!26019) (Cons!26019 (h!31420 T!41034) (t!199509 List!26112)) )
))
(declare-fun lt!827345 () List!26112)

(declare-fun size!20297 (List!26112) Int)

(assert (=> b!2220013 (= lt!827344 (size!20297 lt!827345))))

(declare-datatypes ((List!26114 0) (Conc!8513 0) (IArray!17031 0) (Object!4430 0) (BalanceConc!16754 0))(
  ( (Nil!26020) (Cons!26020 (h!31421 Object!4430) (t!199510 List!26114)) )
  ( (Node!8513 (left!20011 Conc!8513) (right!20341 Conc!8513) (csize!17256 Int) (cheight!8724 Int)) (Leaf!12484 (xs!11455 IArray!17031) (csize!17257 Int)) (Empty!8513) )
  ( (IArray!17032 (innerList!8573 List!26114)) )
  ( (BalanceConc!16753 (value!132524 BalanceConc!16754)) (List!26113 (value!132525 List!26114)) (Character!92 (value!132526 (_ BitVec 16))) (Open!92 (value!132527 Int)) )
  ( (BalanceConc!16755 (c!354507 Conc!8513)) )
))
(declare-datatypes ((Vector!188 0))(
  ( (Vector!189 (underlying!6126 Object!4430) (overflowing!151 List!26112)) )
))
(declare-fun thiss!9308 () Vector!188)

(declare-fun list!10099 (Vector!188) List!26112)

(assert (=> b!2220013 (= lt!827345 (list!10099 thiss!9308))))

(declare-fun size!20298 (Vector!188) Int)

(assert (=> b!2220013 (= lt!827344 (size!20298 thiss!9308))))

(declare-fun b!2220014 () Bool)

(declare-fun choose!13097 (Vector!188 Int) T!41034)

(declare-fun apply!6435 (List!26112 Int) T!41034)

(assert (=> b!2220014 (= e!1417755 (= (choose!13097 thiss!9308 i!956) (apply!6435 lt!827345 i!956)))))

(declare-fun b!2220015 () Bool)

(declare-fun tp!691515 () Bool)

(declare-fun tp!691516 () Bool)

(assert (=> b!2220015 (= e!1417754 (and tp!691515 tp!691516))))

(assert (= (and start!216580 res!953306) b!2220013))

(assert (= (and b!2220013 (not res!953307)) b!2220014))

(assert (= start!216580 b!2220015))

(declare-fun m!2660803 () Bool)

(assert (=> b!2220013 m!2660803))

(declare-fun m!2660805 () Bool)

(assert (=> b!2220013 m!2660805))

(declare-fun m!2660807 () Bool)

(assert (=> b!2220013 m!2660807))

(declare-fun m!2660809 () Bool)

(assert (=> b!2220014 m!2660809))

(declare-fun m!2660811 () Bool)

(assert (=> b!2220014 m!2660811))

(check-sat (not b!2220014) (not b!2220013) (not b!2220015))
(check-sat)
(get-model)

(declare-fun d!663659 () Bool)

(declare-fun choose!13099 (Vector!188 Int) T!41034)

(assert (=> d!663659 (= (choose!13097 thiss!9308 i!956) (choose!13099 thiss!9308 i!956))))

(declare-fun bs!452208 () Bool)

(assert (= bs!452208 d!663659))

(declare-fun m!2660815 () Bool)

(assert (=> bs!452208 m!2660815))

(assert (=> b!2220014 d!663659))

(declare-fun d!663663 () Bool)

(declare-fun lt!827353 () T!41034)

(declare-fun contains!4317 (List!26112 T!41034) Bool)

(assert (=> d!663663 (contains!4317 lt!827345 lt!827353)))

(declare-fun e!1417770 () T!41034)

(assert (=> d!663663 (= lt!827353 e!1417770)))

(declare-fun c!354515 () Bool)

(assert (=> d!663663 (= c!354515 (= i!956 0))))

(declare-fun e!1417769 () Bool)

(assert (=> d!663663 e!1417769))

(declare-fun res!953313 () Bool)

(assert (=> d!663663 (=> (not res!953313) (not e!1417769))))

(assert (=> d!663663 (= res!953313 (<= 0 i!956))))

(assert (=> d!663663 (= (apply!6435 lt!827345 i!956) lt!827353)))

(declare-fun b!2220035 () Bool)

(assert (=> b!2220035 (= e!1417769 (< i!956 (size!20297 lt!827345)))))

(declare-fun b!2220036 () Bool)

(declare-fun head!4746 (List!26112) T!41034)

(assert (=> b!2220036 (= e!1417770 (head!4746 lt!827345))))

(declare-fun b!2220037 () Bool)

(declare-fun tail!3235 (List!26112) List!26112)

(assert (=> b!2220037 (= e!1417770 (apply!6435 (tail!3235 lt!827345) (- i!956 1)))))

(assert (= (and d!663663 res!953313) b!2220035))

(assert (= (and d!663663 c!354515) b!2220036))

(assert (= (and d!663663 (not c!354515)) b!2220037))

(declare-fun m!2660825 () Bool)

(assert (=> d!663663 m!2660825))

(assert (=> b!2220035 m!2660803))

(declare-fun m!2660827 () Bool)

(assert (=> b!2220036 m!2660827))

(declare-fun m!2660829 () Bool)

(assert (=> b!2220037 m!2660829))

(assert (=> b!2220037 m!2660829))

(declare-fun m!2660831 () Bool)

(assert (=> b!2220037 m!2660831))

(assert (=> b!2220014 d!663663))

(declare-fun d!663667 () Bool)

(declare-fun lt!827359 () Int)

(assert (=> d!663667 (>= lt!827359 0)))

(declare-fun e!1417774 () Int)

(assert (=> d!663667 (= lt!827359 e!1417774)))

(declare-fun c!354519 () Bool)

(get-info :version)

(assert (=> d!663667 (= c!354519 ((_ is Nil!26019) lt!827345))))

(assert (=> d!663667 (= (size!20297 lt!827345) lt!827359)))

(declare-fun b!2220044 () Bool)

(assert (=> b!2220044 (= e!1417774 0)))

(declare-fun b!2220045 () Bool)

(assert (=> b!2220045 (= e!1417774 (+ 1 (size!20297 (t!199509 lt!827345))))))

(assert (= (and d!663667 c!354519) b!2220044))

(assert (= (and d!663667 (not c!354519)) b!2220045))

(declare-fun m!2660837 () Bool)

(assert (=> b!2220045 m!2660837))

(assert (=> b!2220013 d!663667))

(declare-fun d!663673 () Bool)

(declare-fun choose!13102 (Vector!188) List!26112)

(assert (=> d!663673 (= (list!10099 thiss!9308) (choose!13102 thiss!9308))))

(declare-fun bs!452211 () Bool)

(assert (= bs!452211 d!663673))

(declare-fun m!2660843 () Bool)

(assert (=> bs!452211 m!2660843))

(assert (=> b!2220013 d!663673))

(declare-fun d!663675 () Bool)

(declare-fun lt!827363 () Int)

(assert (=> d!663675 (= lt!827363 (size!20297 (list!10099 thiss!9308)))))

(declare-fun choose!13103 (Vector!188) Int)

(assert (=> d!663675 (= lt!827363 (choose!13103 thiss!9308))))

(assert (=> d!663675 (= (size!20298 thiss!9308) lt!827363)))

(declare-fun bs!452212 () Bool)

(assert (= bs!452212 d!663675))

(assert (=> bs!452212 m!2660805))

(assert (=> bs!452212 m!2660805))

(declare-fun m!2660849 () Bool)

(assert (=> bs!452212 m!2660849))

(declare-fun m!2660851 () Bool)

(assert (=> bs!452212 m!2660851))

(assert (=> b!2220013 d!663675))

(declare-fun b!2220071 () Bool)

(declare-fun e!1417789 () Bool)

(declare-fun tp!691530 () Bool)

(declare-fun inv!35323 (Conc!8513) Bool)

(assert (=> b!2220071 (= e!1417789 (and (inv!35323 (c!354507 (value!132524 (underlying!6126 thiss!9308)))) tp!691530))))

(declare-fun b!2220070 () Bool)

(declare-fun e!1417788 () Bool)

(declare-fun inv!35324 (BalanceConc!16754) Bool)

(assert (=> b!2220070 (= e!1417788 (and (inv!35324 (value!132524 (underlying!6126 thiss!9308))) e!1417789))))

(declare-fun b!2220072 () Bool)

(declare-fun tp!691531 () Bool)

(assert (=> b!2220072 (= e!1417788 tp!691531)))

(assert (=> b!2220015 (= tp!691515 e!1417788)))

(assert (= b!2220070 b!2220071))

(assert (= (and b!2220015 ((_ is BalanceConc!16753) (underlying!6126 thiss!9308))) b!2220070))

(assert (= (and b!2220015 ((_ is List!26113) (underlying!6126 thiss!9308))) b!2220072))

(declare-fun m!2660853 () Bool)

(assert (=> b!2220071 m!2660853))

(declare-fun m!2660855 () Bool)

(assert (=> b!2220070 m!2660855))

(declare-fun b!2220077 () Bool)

(declare-fun e!1417792 () Bool)

(declare-fun tp_is_empty!9893 () Bool)

(declare-fun tp!691534 () Bool)

(assert (=> b!2220077 (= e!1417792 (and tp_is_empty!9893 tp!691534))))

(assert (=> b!2220015 (= tp!691516 e!1417792)))

(assert (= (and b!2220015 ((_ is Cons!26019) (overflowing!151 thiss!9308))) b!2220077))

(check-sat (not b!2220077) (not b!2220072) (not b!2220036) (not d!663675) (not d!663663) (not d!663659) (not b!2220071) tp_is_empty!9893 (not b!2220070) (not b!2220035) (not d!663673) (not b!2220037) (not b!2220045))
(check-sat)
(get-model)

(declare-fun d!663677 () Bool)

(declare-fun c!354525 () Bool)

(assert (=> d!663677 (= c!354525 ((_ is Node!8513) (c!354507 (value!132524 (underlying!6126 thiss!9308)))))))

(declare-fun e!1417801 () Bool)

(assert (=> d!663677 (= (inv!35323 (c!354507 (value!132524 (underlying!6126 thiss!9308)))) e!1417801)))

(declare-fun b!2220091 () Bool)

(declare-fun inv!35325 (Conc!8513) Bool)

(assert (=> b!2220091 (= e!1417801 (inv!35325 (c!354507 (value!132524 (underlying!6126 thiss!9308)))))))

(declare-fun b!2220092 () Bool)

(declare-fun e!1417802 () Bool)

(assert (=> b!2220092 (= e!1417801 e!1417802)))

(declare-fun res!953320 () Bool)

(assert (=> b!2220092 (= res!953320 (not ((_ is Leaf!12484) (c!354507 (value!132524 (underlying!6126 thiss!9308))))))))

(assert (=> b!2220092 (=> res!953320 e!1417802)))

(declare-fun b!2220093 () Bool)

(declare-fun inv!35326 (Conc!8513) Bool)

(assert (=> b!2220093 (= e!1417802 (inv!35326 (c!354507 (value!132524 (underlying!6126 thiss!9308)))))))

(assert (= (and d!663677 c!354525) b!2220091))

(assert (= (and d!663677 (not c!354525)) b!2220092))

(assert (= (and b!2220092 (not res!953320)) b!2220093))

(declare-fun m!2660871 () Bool)

(assert (=> b!2220091 m!2660871))

(declare-fun m!2660873 () Bool)

(assert (=> b!2220093 m!2660873))

(assert (=> b!2220071 d!663677))

(declare-fun d!663691 () Bool)

(declare-fun lt!827367 () Int)

(assert (=> d!663691 (>= lt!827367 0)))

(declare-fun e!1417803 () Int)

(assert (=> d!663691 (= lt!827367 e!1417803)))

(declare-fun c!354526 () Bool)

(assert (=> d!663691 (= c!354526 ((_ is Nil!26019) (list!10099 thiss!9308)))))

(assert (=> d!663691 (= (size!20297 (list!10099 thiss!9308)) lt!827367)))

(declare-fun b!2220094 () Bool)

(assert (=> b!2220094 (= e!1417803 0)))

(declare-fun b!2220095 () Bool)

(assert (=> b!2220095 (= e!1417803 (+ 1 (size!20297 (t!199509 (list!10099 thiss!9308)))))))

(assert (= (and d!663691 c!354526) b!2220094))

(assert (= (and d!663691 (not c!354526)) b!2220095))

(declare-fun m!2660875 () Bool)

(assert (=> b!2220095 m!2660875))

(assert (=> d!663675 d!663691))

(assert (=> d!663675 d!663673))

(declare-fun d!663693 () Bool)

(declare-fun res!953327 () Int)

(assert (=> d!663693 (= res!953327 (size!20297 (list!10099 thiss!9308)))))

(assert (=> d!663693 true))

(assert (=> d!663693 (= (choose!13103 thiss!9308) res!953327)))

(declare-fun bs!452214 () Bool)

(assert (= bs!452214 d!663693))

(assert (=> bs!452214 m!2660805))

(assert (=> bs!452214 m!2660805))

(assert (=> bs!452214 m!2660849))

(assert (=> d!663675 d!663693))

(declare-fun d!663695 () Bool)

(assert (=> d!663695 (= (head!4746 lt!827345) (h!31420 lt!827345))))

(assert (=> b!2220036 d!663695))

(assert (=> b!2220035 d!663667))

(declare-fun d!663697 () Bool)

(declare-fun isBalanced!2640 (Conc!8513) Bool)

(assert (=> d!663697 (= (inv!35324 (value!132524 (underlying!6126 thiss!9308))) (isBalanced!2640 (c!354507 (value!132524 (underlying!6126 thiss!9308)))))))

(declare-fun bs!452215 () Bool)

(assert (= bs!452215 d!663697))

(declare-fun m!2660883 () Bool)

(assert (=> bs!452215 m!2660883))

(assert (=> b!2220070 d!663697))

(declare-fun d!663703 () Bool)

(declare-fun res!953335 () T!41034)

(assert (=> d!663703 (= res!953335 (apply!6435 (list!10099 thiss!9308) i!956))))

(assert (=> d!663703 tp_is_empty!9893))

(assert (=> d!663703 (= (choose!13099 thiss!9308 i!956) res!953335)))

(declare-fun bs!452216 () Bool)

(assert (= bs!452216 d!663703))

(assert (=> bs!452216 m!2660805))

(assert (=> bs!452216 m!2660805))

(declare-fun m!2660885 () Bool)

(assert (=> bs!452216 m!2660885))

(assert (=> d!663659 d!663703))

(declare-fun d!663705 () Bool)

(declare-fun lt!827371 () Int)

(assert (=> d!663705 (>= lt!827371 0)))

(declare-fun e!1417813 () Int)

(assert (=> d!663705 (= lt!827371 e!1417813)))

(declare-fun c!354527 () Bool)

(assert (=> d!663705 (= c!354527 ((_ is Nil!26019) (t!199509 lt!827345)))))

(assert (=> d!663705 (= (size!20297 (t!199509 lt!827345)) lt!827371)))

(declare-fun b!2220105 () Bool)

(assert (=> b!2220105 (= e!1417813 0)))

(declare-fun b!2220106 () Bool)

(assert (=> b!2220106 (= e!1417813 (+ 1 (size!20297 (t!199509 (t!199509 lt!827345)))))))

(assert (= (and d!663705 c!354527) b!2220105))

(assert (= (and d!663705 (not c!354527)) b!2220106))

(declare-fun m!2660887 () Bool)

(assert (=> b!2220106 m!2660887))

(assert (=> b!2220045 d!663705))

(declare-fun d!663707 () Bool)

(assert (=> d!663707 true))

(declare-fun e!1417820 () Bool)

(assert (=> d!663707 e!1417820))

(declare-fun res!953340 () List!26112)

(assert (=> d!663707 (= (choose!13102 thiss!9308) res!953340)))

(declare-fun b!2220115 () Bool)

(declare-fun tp!691540 () Bool)

(assert (=> b!2220115 (= e!1417820 (and tp_is_empty!9893 tp!691540))))

(assert (= (and d!663707 ((_ is Cons!26019) res!953340)) b!2220115))

(assert (=> d!663673 d!663707))

(declare-fun d!663709 () Bool)

(declare-fun lt!827374 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3533 (List!26112) (InoxSet T!41034))

(assert (=> d!663709 (= lt!827374 (select (content!3533 lt!827345) lt!827353))))

(declare-fun e!1417827 () Bool)

(assert (=> d!663709 (= lt!827374 e!1417827)))

(declare-fun res!953346 () Bool)

(assert (=> d!663709 (=> (not res!953346) (not e!1417827))))

(assert (=> d!663709 (= res!953346 ((_ is Cons!26019) lt!827345))))

(assert (=> d!663709 (= (contains!4317 lt!827345 lt!827353) lt!827374)))

(declare-fun b!2220123 () Bool)

(declare-fun e!1417828 () Bool)

(assert (=> b!2220123 (= e!1417827 e!1417828)))

(declare-fun res!953347 () Bool)

(assert (=> b!2220123 (=> res!953347 e!1417828)))

(assert (=> b!2220123 (= res!953347 (= (h!31420 lt!827345) lt!827353))))

(declare-fun b!2220124 () Bool)

(assert (=> b!2220124 (= e!1417828 (contains!4317 (t!199509 lt!827345) lt!827353))))

(assert (= (and d!663709 res!953346) b!2220123))

(assert (= (and b!2220123 (not res!953347)) b!2220124))

(declare-fun m!2660895 () Bool)

(assert (=> d!663709 m!2660895))

(declare-fun m!2660897 () Bool)

(assert (=> d!663709 m!2660897))

(declare-fun m!2660899 () Bool)

(assert (=> b!2220124 m!2660899))

(assert (=> d!663663 d!663709))

(declare-fun d!663715 () Bool)

(declare-fun lt!827375 () T!41034)

(assert (=> d!663715 (contains!4317 (tail!3235 lt!827345) lt!827375)))

(declare-fun e!1417830 () T!41034)

(assert (=> d!663715 (= lt!827375 e!1417830)))

(declare-fun c!354531 () Bool)

(assert (=> d!663715 (= c!354531 (= (- i!956 1) 0))))

(declare-fun e!1417829 () Bool)

(assert (=> d!663715 e!1417829))

(declare-fun res!953348 () Bool)

(assert (=> d!663715 (=> (not res!953348) (not e!1417829))))

(assert (=> d!663715 (= res!953348 (<= 0 (- i!956 1)))))

(assert (=> d!663715 (= (apply!6435 (tail!3235 lt!827345) (- i!956 1)) lt!827375)))

(declare-fun b!2220125 () Bool)

(assert (=> b!2220125 (= e!1417829 (< (- i!956 1) (size!20297 (tail!3235 lt!827345))))))

(declare-fun b!2220126 () Bool)

(assert (=> b!2220126 (= e!1417830 (head!4746 (tail!3235 lt!827345)))))

(declare-fun b!2220127 () Bool)

(assert (=> b!2220127 (= e!1417830 (apply!6435 (tail!3235 (tail!3235 lt!827345)) (- (- i!956 1) 1)))))

(assert (= (and d!663715 res!953348) b!2220125))

(assert (= (and d!663715 c!354531) b!2220126))

(assert (= (and d!663715 (not c!354531)) b!2220127))

(assert (=> d!663715 m!2660829))

(declare-fun m!2660901 () Bool)

(assert (=> d!663715 m!2660901))

(assert (=> b!2220125 m!2660829))

(declare-fun m!2660903 () Bool)

(assert (=> b!2220125 m!2660903))

(assert (=> b!2220126 m!2660829))

(declare-fun m!2660905 () Bool)

(assert (=> b!2220126 m!2660905))

(assert (=> b!2220127 m!2660829))

(declare-fun m!2660907 () Bool)

(assert (=> b!2220127 m!2660907))

(assert (=> b!2220127 m!2660907))

(declare-fun m!2660909 () Bool)

(assert (=> b!2220127 m!2660909))

(assert (=> b!2220037 d!663715))

(declare-fun d!663717 () Bool)

(assert (=> d!663717 (= (tail!3235 lt!827345) (t!199509 lt!827345))))

(assert (=> b!2220037 d!663717))

(declare-fun tp!691558 () Bool)

(declare-fun tp!691562 () Bool)

(declare-fun e!1417844 () Bool)

(declare-fun b!2220150 () Bool)

(assert (=> b!2220150 (= e!1417844 (and (inv!35323 (left!20011 (c!354507 (value!132524 (underlying!6126 thiss!9308))))) tp!691558 (inv!35323 (right!20341 (c!354507 (value!132524 (underlying!6126 thiss!9308))))) tp!691562))))

(declare-fun b!2220152 () Bool)

(declare-fun e!1417843 () Bool)

(declare-fun tp!691559 () Bool)

(assert (=> b!2220152 (= e!1417843 tp!691559)))

(declare-fun b!2220151 () Bool)

(declare-fun inv!35329 (IArray!17031) Bool)

(assert (=> b!2220151 (= e!1417844 (and (inv!35329 (xs!11455 (c!354507 (value!132524 (underlying!6126 thiss!9308))))) e!1417843))))

(assert (=> b!2220071 (= tp!691530 (and (inv!35323 (c!354507 (value!132524 (underlying!6126 thiss!9308)))) e!1417844))))

(assert (= (and b!2220071 ((_ is Node!8513) (c!354507 (value!132524 (underlying!6126 thiss!9308))))) b!2220150))

(assert (= b!2220151 b!2220152))

(assert (= (and b!2220071 ((_ is Leaf!12484) (c!354507 (value!132524 (underlying!6126 thiss!9308))))) b!2220151))

(declare-fun m!2660913 () Bool)

(assert (=> b!2220150 m!2660913))

(declare-fun m!2660915 () Bool)

(assert (=> b!2220150 m!2660915))

(declare-fun m!2660917 () Bool)

(assert (=> b!2220151 m!2660917))

(assert (=> b!2220071 m!2660853))

(declare-fun b!2220153 () Bool)

(declare-fun e!1417845 () Bool)

(declare-fun tp!691563 () Bool)

(assert (=> b!2220153 (= e!1417845 (and tp_is_empty!9893 tp!691563))))

(assert (=> b!2220077 (= tp!691534 e!1417845)))

(assert (= (and b!2220077 ((_ is Cons!26019) (t!199509 (overflowing!151 thiss!9308)))) b!2220153))

(declare-fun b!2220158 () Bool)

(declare-fun e!1417848 () Bool)

(declare-fun tp!691568 () Bool)

(declare-fun tp!691569 () Bool)

(assert (=> b!2220158 (= e!1417848 (and tp!691568 tp!691569))))

(assert (=> b!2220072 (= tp!691531 e!1417848)))

(assert (= (and b!2220072 ((_ is Cons!26020) (value!132525 (underlying!6126 thiss!9308)))) b!2220158))

(check-sat (not b!2220158) (not b!2220150) (not d!663709) (not b!2220093) (not d!663693) (not b!2220115) (not d!663697) (not b!2220071) tp_is_empty!9893 (not b!2220127) (not b!2220153) (not b!2220124) (not b!2220091) (not d!663703) (not b!2220152) (not b!2220106) (not d!663715) (not b!2220126) (not b!2220095) (not b!2220151) (not b!2220125))
(check-sat)
