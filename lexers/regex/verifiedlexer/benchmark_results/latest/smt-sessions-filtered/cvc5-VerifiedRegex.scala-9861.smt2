; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!516618 () Bool)

(assert start!516618)

(declare-fun setIsEmpty!27439 () Bool)

(declare-fun setRes!27439 () Bool)

(assert (=> setIsEmpty!27439 setRes!27439))

(declare-fun b!4920924 () Bool)

(declare-fun e!3075102 () Bool)

(declare-datatypes ((C!26926 0))(
  ( (C!26927 (val!22797 Int)) )
))
(declare-datatypes ((List!56779 0))(
  ( (Nil!56655) (Cons!56655 (h!63103 C!26926) (t!367217 List!56779)) )
))
(declare-datatypes ((IArray!29775 0))(
  ( (IArray!29776 (innerList!14945 List!56779)) )
))
(declare-datatypes ((Conc!14857 0))(
  ( (Node!14857 (left!41308 Conc!14857) (right!41638 Conc!14857) (csize!29944 Int) (cheight!15068 Int)) (Leaf!24719 (xs!18177 IArray!29775) (csize!29945 Int)) (Empty!14857) )
))
(declare-datatypes ((BalanceConc!29144 0))(
  ( (BalanceConc!29145 (c!837334 Conc!14857)) )
))
(declare-fun input!5492 () BalanceConc!29144)

(declare-fun tp!1382850 () Bool)

(declare-fun inv!73361 (Conc!14857) Bool)

(assert (=> b!4920924 (= e!3075102 (and (inv!73361 (c!837334 input!5492)) tp!1382850))))

(declare-fun setNonEmpty!27439 () Bool)

(declare-fun tp!1382848 () Bool)

(declare-datatypes ((Regex!13358 0))(
  ( (ElementMatch!13358 (c!837335 C!26926)) (Concat!21931 (regOne!27228 Regex!13358) (regTwo!27228 Regex!13358)) (EmptyExpr!13358) (Star!13358 (reg!13687 Regex!13358)) (EmptyLang!13358) (Union!13358 (regOne!27229 Regex!13358) (regTwo!27229 Regex!13358)) )
))
(declare-datatypes ((List!56780 0))(
  ( (Nil!56656) (Cons!56656 (h!63104 Regex!13358) (t!367218 List!56780)) )
))
(declare-datatypes ((Context!6000 0))(
  ( (Context!6001 (exprs!3500 List!56780)) )
))
(declare-fun setElem!27439 () Context!6000)

(declare-fun e!3075101 () Bool)

(declare-fun inv!73362 (Context!6000) Bool)

(assert (=> setNonEmpty!27439 (= setRes!27439 (and tp!1382848 (inv!73362 setElem!27439) e!3075101))))

(declare-fun z!3559 () (Set Context!6000))

(declare-fun setRest!27439 () (Set Context!6000))

(assert (=> setNonEmpty!27439 (= z!3559 (set.union (set.insert setElem!27439 (as set.empty (Set Context!6000))) setRest!27439))))

(declare-fun b!4920926 () Bool)

(declare-fun e!3075100 () Bool)

(declare-fun size!37433 (List!56779) Int)

(assert (=> b!4920926 (= e!3075100 (not (= 0 (size!37433 Nil!56655))))))

(declare-fun b!4920925 () Bool)

(declare-fun tp!1382849 () Bool)

(assert (=> b!4920925 (= e!3075101 tp!1382849)))

(declare-fun res!2101141 () Bool)

(assert (=> start!516618 (=> (not res!2101141) (not e!3075100))))

(declare-fun lt!2021730 () List!56779)

(declare-fun ++!12307 (List!56779 List!56779) List!56779)

(assert (=> start!516618 (= res!2101141 (= (++!12307 Nil!56655 lt!2021730) lt!2021730))))

(declare-fun lt!2021732 () List!56779)

(declare-datatypes ((tuple2!61084 0))(
  ( (tuple2!61085 (_1!33845 BalanceConc!29144) (_2!33845 BalanceConc!29144)) )
))
(declare-fun lt!2021731 () tuple2!61084)

(declare-fun list!17920 (BalanceConc!29144) List!56779)

(assert (=> start!516618 (= lt!2021732 (list!17920 (_2!33845 lt!2021731)))))

(declare-fun lt!2021733 () List!56779)

(assert (=> start!516618 (= lt!2021733 (list!17920 (_1!33845 lt!2021731)))))

(declare-fun splitAt!242 (BalanceConc!29144 Int) tuple2!61084)

(declare-fun findLongestMatchInnerZipperFast!70 ((Set Context!6000) List!56779 Int List!56779 BalanceConc!29144 Int) Int)

(declare-fun size!37434 (BalanceConc!29144) Int)

(assert (=> start!516618 (= lt!2021731 (splitAt!242 input!5492 (findLongestMatchInnerZipperFast!70 z!3559 Nil!56655 0 lt!2021730 input!5492 (size!37434 input!5492))))))

(assert (=> start!516618 (= lt!2021730 (list!17920 input!5492))))

(assert (=> start!516618 e!3075100))

(declare-fun inv!73363 (BalanceConc!29144) Bool)

(assert (=> start!516618 (and (inv!73363 input!5492) e!3075102)))

(declare-fun condSetEmpty!27439 () Bool)

(assert (=> start!516618 (= condSetEmpty!27439 (= z!3559 (as set.empty (Set Context!6000))))))

(assert (=> start!516618 setRes!27439))

(assert (= (and start!516618 res!2101141) b!4920926))

(assert (= start!516618 b!4920924))

(assert (= (and start!516618 condSetEmpty!27439) setIsEmpty!27439))

(assert (= (and start!516618 (not condSetEmpty!27439)) setNonEmpty!27439))

(assert (= setNonEmpty!27439 b!4920925))

(declare-fun m!5935388 () Bool)

(assert (=> b!4920924 m!5935388))

(declare-fun m!5935390 () Bool)

(assert (=> setNonEmpty!27439 m!5935390))

(declare-fun m!5935392 () Bool)

(assert (=> b!4920926 m!5935392))

(declare-fun m!5935394 () Bool)

(assert (=> start!516618 m!5935394))

(declare-fun m!5935396 () Bool)

(assert (=> start!516618 m!5935396))

(declare-fun m!5935398 () Bool)

(assert (=> start!516618 m!5935398))

(assert (=> start!516618 m!5935396))

(declare-fun m!5935400 () Bool)

(assert (=> start!516618 m!5935400))

(declare-fun m!5935402 () Bool)

(assert (=> start!516618 m!5935402))

(declare-fun m!5935404 () Bool)

(assert (=> start!516618 m!5935404))

(declare-fun m!5935406 () Bool)

(assert (=> start!516618 m!5935406))

(declare-fun m!5935408 () Bool)

(assert (=> start!516618 m!5935408))

(assert (=> start!516618 m!5935394))

(push 1)

(assert (not b!4920925))

(assert (not setNonEmpty!27439))

(assert (not start!516618))

(assert (not b!4920924))

(assert (not b!4920926))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1583050 () Bool)

(declare-fun lt!2021748 () Int)

(assert (=> d!1583050 (>= lt!2021748 0)))

(declare-fun e!3075114 () Int)

(assert (=> d!1583050 (= lt!2021748 e!3075114)))

(declare-fun c!837340 () Bool)

(assert (=> d!1583050 (= c!837340 (is-Nil!56655 Nil!56655))))

(assert (=> d!1583050 (= (size!37433 Nil!56655) lt!2021748)))

(declare-fun b!4920940 () Bool)

(assert (=> b!4920940 (= e!3075114 0)))

(declare-fun b!4920941 () Bool)

(assert (=> b!4920941 (= e!3075114 (+ 1 (size!37433 (t!367217 Nil!56655))))))

(assert (= (and d!1583050 c!837340) b!4920940))

(assert (= (and d!1583050 (not c!837340)) b!4920941))

(declare-fun m!5935432 () Bool)

(assert (=> b!4920941 m!5935432))

(assert (=> b!4920926 d!1583050))

(declare-fun d!1583052 () Bool)

(declare-fun lambda!245085 () Int)

(declare-fun forall!13119 (List!56780 Int) Bool)

(assert (=> d!1583052 (= (inv!73362 setElem!27439) (forall!13119 (exprs!3500 setElem!27439) lambda!245085))))

(declare-fun bs!1179135 () Bool)

(assert (= bs!1179135 d!1583052))

(declare-fun m!5935458 () Bool)

(assert (=> bs!1179135 m!5935458))

(assert (=> setNonEmpty!27439 d!1583052))

(declare-fun d!1583066 () Bool)

(declare-fun c!837362 () Bool)

(assert (=> d!1583066 (= c!837362 (is-Node!14857 (c!837334 input!5492)))))

(declare-fun e!3075144 () Bool)

(assert (=> d!1583066 (= (inv!73361 (c!837334 input!5492)) e!3075144)))

(declare-fun b!4920995 () Bool)

(declare-fun inv!73367 (Conc!14857) Bool)

(assert (=> b!4920995 (= e!3075144 (inv!73367 (c!837334 input!5492)))))

(declare-fun b!4920996 () Bool)

(declare-fun e!3075145 () Bool)

(assert (=> b!4920996 (= e!3075144 e!3075145)))

(declare-fun res!2101156 () Bool)

(assert (=> b!4920996 (= res!2101156 (not (is-Leaf!24719 (c!837334 input!5492))))))

(assert (=> b!4920996 (=> res!2101156 e!3075145)))

(declare-fun b!4920997 () Bool)

(declare-fun inv!73368 (Conc!14857) Bool)

(assert (=> b!4920997 (= e!3075145 (inv!73368 (c!837334 input!5492)))))

(assert (= (and d!1583066 c!837362) b!4920995))

(assert (= (and d!1583066 (not c!837362)) b!4920996))

(assert (= (and b!4920996 (not res!2101156)) b!4920997))

(declare-fun m!5935460 () Bool)

(assert (=> b!4920995 m!5935460))

(declare-fun m!5935462 () Bool)

(assert (=> b!4920997 m!5935462))

(assert (=> b!4920924 d!1583066))

(declare-fun d!1583068 () Bool)

(declare-fun list!17922 (Conc!14857) List!56779)

(assert (=> d!1583068 (= (list!17920 (_2!33845 lt!2021731)) (list!17922 (c!837334 (_2!33845 lt!2021731))))))

(declare-fun bs!1179136 () Bool)

(assert (= bs!1179136 d!1583068))

(declare-fun m!5935464 () Bool)

(assert (=> bs!1179136 m!5935464))

(assert (=> start!516618 d!1583068))

(declare-fun d!1583070 () Bool)

(assert (=> d!1583070 (= (list!17920 (_1!33845 lt!2021731)) (list!17922 (c!837334 (_1!33845 lt!2021731))))))

(declare-fun bs!1179137 () Bool)

(assert (= bs!1179137 d!1583070))

(declare-fun m!5935466 () Bool)

(assert (=> bs!1179137 m!5935466))

(assert (=> start!516618 d!1583070))

(declare-fun d!1583072 () Bool)

(declare-fun e!3075153 () Bool)

(assert (=> d!1583072 e!3075153))

(declare-fun res!2101161 () Bool)

(assert (=> d!1583072 (=> (not res!2101161) (not e!3075153))))

(declare-fun lt!2021889 () tuple2!61084)

(declare-fun isBalanced!4072 (Conc!14857) Bool)

(assert (=> d!1583072 (= res!2101161 (isBalanced!4072 (c!837334 (_1!33845 lt!2021889))))))

(declare-datatypes ((tuple2!61088 0))(
  ( (tuple2!61089 (_1!33847 Conc!14857) (_2!33847 Conc!14857)) )
))
(declare-fun lt!2021888 () tuple2!61088)

(assert (=> d!1583072 (= lt!2021889 (tuple2!61085 (BalanceConc!29145 (_1!33847 lt!2021888)) (BalanceConc!29145 (_2!33847 lt!2021888))))))

(declare-fun splitAt!244 (Conc!14857 Int) tuple2!61088)

(assert (=> d!1583072 (= lt!2021888 (splitAt!244 (c!837334 input!5492) (findLongestMatchInnerZipperFast!70 z!3559 Nil!56655 0 lt!2021730 input!5492 (size!37434 input!5492))))))

(assert (=> d!1583072 (isBalanced!4072 (c!837334 input!5492))))

(assert (=> d!1583072 (= (splitAt!242 input!5492 (findLongestMatchInnerZipperFast!70 z!3559 Nil!56655 0 lt!2021730 input!5492 (size!37434 input!5492))) lt!2021889)))

(declare-fun b!4921012 () Bool)

(declare-fun res!2101162 () Bool)

(assert (=> b!4921012 (=> (not res!2101162) (not e!3075153))))

(assert (=> b!4921012 (= res!2101162 (isBalanced!4072 (c!837334 (_2!33845 lt!2021889))))))

(declare-fun b!4921013 () Bool)

(declare-datatypes ((tuple2!61090 0))(
  ( (tuple2!61091 (_1!33848 List!56779) (_2!33848 List!56779)) )
))
(declare-fun splitAtIndex!88 (List!56779 Int) tuple2!61090)

(assert (=> b!4921013 (= e!3075153 (= (tuple2!61091 (list!17920 (_1!33845 lt!2021889)) (list!17920 (_2!33845 lt!2021889))) (splitAtIndex!88 (list!17920 input!5492) (findLongestMatchInnerZipperFast!70 z!3559 Nil!56655 0 lt!2021730 input!5492 (size!37434 input!5492)))))))

(assert (= (and d!1583072 res!2101161) b!4921012))

(assert (= (and b!4921012 res!2101162) b!4921013))

(declare-fun m!5935468 () Bool)

(assert (=> d!1583072 m!5935468))

(assert (=> d!1583072 m!5935396))

(declare-fun m!5935470 () Bool)

(assert (=> d!1583072 m!5935470))

(declare-fun m!5935472 () Bool)

(assert (=> d!1583072 m!5935472))

(declare-fun m!5935474 () Bool)

(assert (=> b!4921012 m!5935474))

(declare-fun m!5935478 () Bool)

(assert (=> b!4921013 m!5935478))

(declare-fun m!5935480 () Bool)

(assert (=> b!4921013 m!5935480))

(assert (=> b!4921013 m!5935408))

(assert (=> b!4921013 m!5935408))

(assert (=> b!4921013 m!5935396))

(declare-fun m!5935488 () Bool)

(assert (=> b!4921013 m!5935488))

(assert (=> start!516618 d!1583072))

(declare-fun b!4921022 () Bool)

(declare-fun e!3075158 () List!56779)

(assert (=> b!4921022 (= e!3075158 lt!2021730)))

(declare-fun b!4921023 () Bool)

(assert (=> b!4921023 (= e!3075158 (Cons!56655 (h!63103 Nil!56655) (++!12307 (t!367217 Nil!56655) lt!2021730)))))

(declare-fun b!4921025 () Bool)

(declare-fun e!3075159 () Bool)

(declare-fun lt!2021892 () List!56779)

(assert (=> b!4921025 (= e!3075159 (or (not (= lt!2021730 Nil!56655)) (= lt!2021892 Nil!56655)))))

(declare-fun d!1583074 () Bool)

(assert (=> d!1583074 e!3075159))

(declare-fun res!2101167 () Bool)

(assert (=> d!1583074 (=> (not res!2101167) (not e!3075159))))

(declare-fun content!10056 (List!56779) (Set C!26926))

(assert (=> d!1583074 (= res!2101167 (= (content!10056 lt!2021892) (set.union (content!10056 Nil!56655) (content!10056 lt!2021730))))))

(assert (=> d!1583074 (= lt!2021892 e!3075158)))

(declare-fun c!837370 () Bool)

(assert (=> d!1583074 (= c!837370 (is-Nil!56655 Nil!56655))))

(assert (=> d!1583074 (= (++!12307 Nil!56655 lt!2021730) lt!2021892)))

(declare-fun b!4921024 () Bool)

(declare-fun res!2101168 () Bool)

(assert (=> b!4921024 (=> (not res!2101168) (not e!3075159))))

(assert (=> b!4921024 (= res!2101168 (= (size!37433 lt!2021892) (+ (size!37433 Nil!56655) (size!37433 lt!2021730))))))

(assert (= (and d!1583074 c!837370) b!4921022))

(assert (= (and d!1583074 (not c!837370)) b!4921023))

(assert (= (and d!1583074 res!2101167) b!4921024))

(assert (= (and b!4921024 res!2101168) b!4921025))

(declare-fun m!5935552 () Bool)

(assert (=> b!4921023 m!5935552))

(declare-fun m!5935554 () Bool)

(assert (=> d!1583074 m!5935554))

(declare-fun m!5935556 () Bool)

(assert (=> d!1583074 m!5935556))

(declare-fun m!5935558 () Bool)

(assert (=> d!1583074 m!5935558))

(declare-fun m!5935560 () Bool)

(assert (=> b!4921024 m!5935560))

(assert (=> b!4921024 m!5935392))

(declare-fun m!5935562 () Bool)

(assert (=> b!4921024 m!5935562))

(assert (=> start!516618 d!1583074))

(declare-fun d!1583080 () Bool)

(declare-fun lt!2021895 () Int)

(assert (=> d!1583080 (= lt!2021895 (size!37433 (list!17920 input!5492)))))

(declare-fun size!37437 (Conc!14857) Int)

(assert (=> d!1583080 (= lt!2021895 (size!37437 (c!837334 input!5492)))))

(assert (=> d!1583080 (= (size!37434 input!5492) lt!2021895)))

(declare-fun bs!1179139 () Bool)

(assert (= bs!1179139 d!1583080))

(assert (=> bs!1179139 m!5935408))

(assert (=> bs!1179139 m!5935408))

(declare-fun m!5935564 () Bool)

(assert (=> bs!1179139 m!5935564))

(declare-fun m!5935566 () Bool)

(assert (=> bs!1179139 m!5935566))

(assert (=> start!516618 d!1583080))

(declare-fun d!1583082 () Bool)

(assert (=> d!1583082 (= (list!17920 input!5492) (list!17922 (c!837334 input!5492)))))

(declare-fun bs!1179140 () Bool)

(assert (= bs!1179140 d!1583082))

(declare-fun m!5935568 () Bool)

(assert (=> bs!1179140 m!5935568))

(assert (=> start!516618 d!1583082))

(declare-fun d!1583084 () Bool)

(assert (=> d!1583084 (= (inv!73363 input!5492) (isBalanced!4072 (c!837334 input!5492)))))

(declare-fun bs!1179141 () Bool)

(assert (= bs!1179141 d!1583084))

(assert (=> bs!1179141 m!5935472))

(assert (=> start!516618 d!1583084))

(declare-fun b!4921057 () Bool)

(declare-datatypes ((Unit!147045 0))(
  ( (Unit!147046) )
))
(declare-fun e!3075175 () Unit!147045)

(declare-fun Unit!147047 () Unit!147045)

(assert (=> b!4921057 (= e!3075175 Unit!147047)))

(declare-fun lt!2021995 () List!56779)

(declare-fun lt!2021988 () List!56779)

(declare-fun lt!2022025 () List!56779)

(declare-fun bm!342376 () Bool)

(declare-fun lt!2022022 () List!56779)

(declare-fun c!837388 () Bool)

(declare-fun call!342389 () Unit!147045)

(declare-fun lemmaIsPrefixRefl!3344 (List!56779 List!56779) Unit!147045)

(assert (=> bm!342376 (= call!342389 (lemmaIsPrefixRefl!3344 (ite c!837388 lt!2022025 lt!2021995) (ite c!837388 lt!2022022 lt!2021988)))))

(declare-fun b!4921058 () Bool)

(declare-fun Unit!147048 () Unit!147045)

(assert (=> b!4921058 (= e!3075175 Unit!147048)))

(assert (=> b!4921058 (= lt!2021995 (list!17920 input!5492))))

(assert (=> b!4921058 (= lt!2021988 (list!17920 input!5492))))

(declare-fun lt!2022013 () Unit!147045)

(assert (=> b!4921058 (= lt!2022013 call!342389)))

(declare-fun call!342390 () Bool)

(assert (=> b!4921058 call!342390))

(declare-fun lt!2022010 () Unit!147045)

(assert (=> b!4921058 (= lt!2022010 lt!2022013)))

(declare-fun lt!2022019 () List!56779)

(assert (=> b!4921058 (= lt!2022019 (list!17920 input!5492))))

(declare-fun lt!2022000 () Unit!147045)

(declare-fun call!342384 () Unit!147045)

(assert (=> b!4921058 (= lt!2022000 call!342384)))

(assert (=> b!4921058 (= lt!2022019 Nil!56655)))

(declare-fun lt!2022005 () Unit!147045)

(assert (=> b!4921058 (= lt!2022005 lt!2022000)))

(assert (=> b!4921058 false))

(declare-fun b!4921059 () Bool)

(declare-fun e!3075177 () List!56779)

(assert (=> b!4921059 (= e!3075177 (list!17920 input!5492))))

(declare-fun b!4921060 () Bool)

(declare-fun e!3075178 () Int)

(declare-fun lt!2022016 () Int)

(assert (=> b!4921060 (= e!3075178 (ite (= lt!2022016 0) 0 lt!2022016))))

(declare-fun call!342388 () Int)

(assert (=> b!4921060 (= lt!2022016 call!342388)))

(declare-fun lt!2022026 () tuple2!61084)

(declare-fun call!342383 () List!56779)

(declare-fun bm!342377 () Bool)

(assert (=> bm!342377 (= call!342383 (list!17920 (ite c!837388 input!5492 (_2!33845 lt!2022026))))))

(declare-fun bm!342378 () Bool)

(declare-fun c!837383 () Bool)

(assert (=> bm!342378 (= c!837383 c!837388)))

(declare-fun lt!2021992 () List!56779)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1106 (List!56779 List!56779 List!56779) Unit!147045)

(assert (=> bm!342378 (= call!342384 (lemmaIsPrefixSameLengthThenSameList!1106 (ite c!837388 lt!2021992 lt!2022019) Nil!56655 e!3075177))))

(declare-fun bm!342379 () Bool)

(declare-fun call!342386 () List!56779)

(declare-fun tail!9654 (List!56779) List!56779)

(assert (=> bm!342379 (= call!342386 (tail!9654 lt!2021730))))

(declare-fun b!4921061 () Bool)

(assert (=> b!4921061 (= e!3075177 call!342383)))

(declare-fun b!4921056 () Bool)

(assert (=> b!4921056 (= e!3075178 call!342388)))

(declare-fun d!1583086 () Bool)

(declare-fun lt!2022027 () Int)

(declare-fun findLongestMatchInnerZipper!43 ((Set Context!6000) List!56779 Int List!56779 List!56779 Int) tuple2!61090)

(assert (=> d!1583086 (= (size!37433 (_1!33848 (findLongestMatchInnerZipper!43 z!3559 Nil!56655 0 lt!2021730 (list!17920 input!5492) (size!37434 input!5492)))) lt!2022027)))

(declare-fun e!3075179 () Int)

(assert (=> d!1583086 (= lt!2022027 e!3075179)))

(declare-fun c!837386 () Bool)

(declare-fun lostCauseZipper!678 ((Set Context!6000)) Bool)

(assert (=> d!1583086 (= c!837386 (lostCauseZipper!678 z!3559))))

(declare-fun lt!2021997 () Unit!147045)

(declare-fun Unit!147049 () Unit!147045)

(assert (=> d!1583086 (= lt!2021997 Unit!147049)))

(declare-fun getSuffix!2936 (List!56779 List!56779) List!56779)

(assert (=> d!1583086 (= (getSuffix!2936 (list!17920 input!5492) Nil!56655) lt!2021730)))

(declare-fun lt!2022003 () Unit!147045)

(declare-fun lt!2022001 () Unit!147045)

(assert (=> d!1583086 (= lt!2022003 lt!2022001)))

(declare-fun lt!2022008 () List!56779)

(assert (=> d!1583086 (= lt!2021730 lt!2022008)))

(declare-fun lemmaSamePrefixThenSameSuffix!2352 (List!56779 List!56779 List!56779 List!56779 List!56779) Unit!147045)

(assert (=> d!1583086 (= lt!2022001 (lemmaSamePrefixThenSameSuffix!2352 Nil!56655 lt!2021730 Nil!56655 lt!2022008 (list!17920 input!5492)))))

(assert (=> d!1583086 (= lt!2022008 (getSuffix!2936 (list!17920 input!5492) Nil!56655))))

(declare-fun lt!2022021 () Unit!147045)

(declare-fun lt!2022006 () Unit!147045)

(assert (=> d!1583086 (= lt!2022021 lt!2022006)))

(declare-fun isPrefix!4948 (List!56779 List!56779) Bool)

(assert (=> d!1583086 (isPrefix!4948 Nil!56655 (++!12307 Nil!56655 lt!2021730))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3172 (List!56779 List!56779) Unit!147045)

(assert (=> d!1583086 (= lt!2022006 (lemmaConcatTwoListThenFirstIsPrefix!3172 Nil!56655 lt!2021730))))

(assert (=> d!1583086 (= (++!12307 Nil!56655 lt!2021730) (list!17920 input!5492))))

(assert (=> d!1583086 (= (findLongestMatchInnerZipperFast!70 z!3559 Nil!56655 0 lt!2021730 input!5492 (size!37434 input!5492)) lt!2022027)))

(declare-fun b!4921062 () Bool)

(declare-fun e!3075180 () Int)

(assert (=> b!4921062 (= e!3075180 0)))

(declare-fun bm!342380 () Bool)

(assert (=> bm!342380 (= call!342390 (isPrefix!4948 (ite c!837388 lt!2022025 lt!2021995) (ite c!837388 lt!2022022 lt!2021988)))))

(declare-fun b!4921063 () Bool)

(declare-fun c!837387 () Bool)

(declare-fun call!342382 () Bool)

(assert (=> b!4921063 (= c!837387 call!342382)))

(declare-fun lt!2022023 () Unit!147045)

(declare-fun lt!2021999 () Unit!147045)

(assert (=> b!4921063 (= lt!2022023 lt!2021999)))

(declare-fun lt!2021994 () C!26926)

(declare-fun lt!2022012 () List!56779)

(declare-fun lt!2021989 () List!56779)

(assert (=> b!4921063 (= (++!12307 (++!12307 Nil!56655 (Cons!56655 lt!2021994 Nil!56655)) lt!2022012) lt!2021989)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1378 (List!56779 C!26926 List!56779 List!56779) Unit!147045)

(assert (=> b!4921063 (= lt!2021999 (lemmaMoveElementToOtherListKeepsConcatEq!1378 Nil!56655 lt!2021994 lt!2022012 lt!2021989))))

(assert (=> b!4921063 (= lt!2021989 (list!17920 input!5492))))

(assert (=> b!4921063 (= lt!2022012 (tail!9654 lt!2021730))))

(declare-fun apply!13629 (BalanceConc!29144 Int) C!26926)

(assert (=> b!4921063 (= lt!2021994 (apply!13629 input!5492 0))))

(declare-fun lt!2022024 () Unit!147045)

(declare-fun lt!2021987 () Unit!147045)

(assert (=> b!4921063 (= lt!2022024 lt!2021987)))

(declare-fun lt!2022007 () List!56779)

(declare-fun head!10507 (List!56779) C!26926)

(assert (=> b!4921063 (isPrefix!4948 (++!12307 Nil!56655 (Cons!56655 (head!10507 (getSuffix!2936 lt!2022007 Nil!56655)) Nil!56655)) lt!2022007)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!760 (List!56779 List!56779) Unit!147045)

(assert (=> b!4921063 (= lt!2021987 (lemmaAddHeadSuffixToPrefixStillPrefix!760 Nil!56655 lt!2022007))))

(assert (=> b!4921063 (= lt!2022007 (list!17920 input!5492))))

(declare-fun lt!2022014 () Unit!147045)

(assert (=> b!4921063 (= lt!2022014 e!3075175)))

(declare-fun c!837385 () Bool)

(assert (=> b!4921063 (= c!837385 (= (size!37433 Nil!56655) (size!37434 input!5492)))))

(declare-fun lt!2021986 () Unit!147045)

(declare-fun lt!2022017 () Unit!147045)

(assert (=> b!4921063 (= lt!2021986 lt!2022017)))

(declare-fun lt!2022015 () List!56779)

(assert (=> b!4921063 (<= (size!37433 Nil!56655) (size!37433 lt!2022015))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!672 (List!56779 List!56779) Unit!147045)

(assert (=> b!4921063 (= lt!2022017 (lemmaIsPrefixThenSmallerEqSize!672 Nil!56655 lt!2022015))))

(assert (=> b!4921063 (= lt!2022015 (list!17920 input!5492))))

(declare-fun lt!2022002 () Unit!147045)

(declare-fun lt!2021991 () Unit!147045)

(assert (=> b!4921063 (= lt!2022002 lt!2021991)))

(declare-fun lt!2022011 () List!56779)

(declare-fun drop!2211 (List!56779 Int) List!56779)

(declare-fun apply!13630 (List!56779 Int) C!26926)

(assert (=> b!4921063 (= (head!10507 (drop!2211 lt!2022011 0)) (apply!13630 lt!2022011 0))))

(declare-fun lemmaDropApply!1269 (List!56779 Int) Unit!147045)

(assert (=> b!4921063 (= lt!2021991 (lemmaDropApply!1269 lt!2022011 0))))

(assert (=> b!4921063 (= lt!2022011 (list!17920 input!5492))))

(declare-fun lt!2021993 () Unit!147045)

(declare-fun lt!2022009 () Unit!147045)

(assert (=> b!4921063 (= lt!2021993 lt!2022009)))

(declare-fun lt!2021990 () List!56779)

(declare-fun lt!2022004 () List!56779)

(assert (=> b!4921063 (and (= lt!2021990 Nil!56655) (= lt!2022004 lt!2021730))))

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!644 (List!56779 List!56779 List!56779 List!56779) Unit!147045)

(assert (=> b!4921063 (= lt!2022009 (lemmaConcatSameAndSameSizesThenSameLists!644 lt!2021990 lt!2022004 Nil!56655 lt!2021730))))

(assert (=> b!4921063 (= lt!2022004 call!342383)))

(assert (=> b!4921063 (= lt!2021990 (list!17920 (_1!33845 lt!2022026)))))

(assert (=> b!4921063 (= lt!2022026 (splitAt!242 input!5492 0))))

(declare-fun e!3075176 () Int)

(assert (=> b!4921063 (= e!3075176 e!3075178)))

(declare-fun bm!342381 () Bool)

(declare-fun call!342385 () C!26926)

(assert (=> bm!342381 (= call!342385 (apply!13629 input!5492 0))))

(declare-fun bm!342382 () Bool)

(declare-fun call!342387 () (Set Context!6000))

(declare-fun derivationStepZipper!575 ((Set Context!6000) C!26926) (Set Context!6000))

(assert (=> bm!342382 (= call!342387 (derivationStepZipper!575 z!3559 call!342385))))

(declare-fun b!4921064 () Bool)

(assert (=> b!4921064 (= e!3075179 0)))

(declare-fun b!4921065 () Bool)

(declare-fun c!837384 () Bool)

(assert (=> b!4921065 (= c!837384 call!342382)))

(declare-fun lt!2021998 () Unit!147045)

(declare-fun lt!2022020 () Unit!147045)

(assert (=> b!4921065 (= lt!2021998 lt!2022020)))

(assert (=> b!4921065 (= lt!2021992 Nil!56655)))

(assert (=> b!4921065 (= lt!2022020 call!342384)))

(assert (=> b!4921065 (= lt!2021992 call!342383)))

(declare-fun lt!2022018 () Unit!147045)

(declare-fun lt!2021996 () Unit!147045)

(assert (=> b!4921065 (= lt!2022018 lt!2021996)))

(assert (=> b!4921065 call!342390))

(assert (=> b!4921065 (= lt!2021996 call!342389)))

(assert (=> b!4921065 (= lt!2022022 call!342383)))

(assert (=> b!4921065 (= lt!2022025 call!342383)))

(assert (=> b!4921065 (= e!3075176 e!3075180)))

(declare-fun bm!342383 () Bool)

(declare-fun nullableZipper!797 ((Set Context!6000)) Bool)

(assert (=> bm!342383 (= call!342382 (nullableZipper!797 z!3559))))

(declare-fun b!4921066 () Bool)

(assert (=> b!4921066 (= e!3075179 e!3075176)))

(assert (=> b!4921066 (= c!837388 (= 0 (size!37434 input!5492)))))

(declare-fun b!4921067 () Bool)

(assert (=> b!4921067 (= e!3075180 0)))

(declare-fun bm!342384 () Bool)

(declare-fun call!342381 () List!56779)

(assert (=> bm!342384 (= call!342381 (++!12307 Nil!56655 (Cons!56655 call!342385 Nil!56655)))))

(declare-fun bm!342385 () Bool)

(assert (=> bm!342385 (= call!342388 (findLongestMatchInnerZipperFast!70 call!342387 call!342381 (+ 0 1) call!342386 input!5492 (size!37434 input!5492)))))

(assert (= (and d!1583086 c!837386) b!4921064))

(assert (= (and d!1583086 (not c!837386)) b!4921066))

(assert (= (and b!4921066 c!837388) b!4921065))

(assert (= (and b!4921066 (not c!837388)) b!4921063))

(assert (= (and b!4921065 c!837384) b!4921067))

(assert (= (and b!4921065 (not c!837384)) b!4921062))

(assert (= (and b!4921063 c!837385) b!4921058))

(assert (= (and b!4921063 (not c!837385)) b!4921057))

(assert (= (and b!4921063 c!837387) b!4921060))

(assert (= (and b!4921063 (not c!837387)) b!4921056))

(assert (= (or b!4921060 b!4921056) bm!342379))

(assert (= (or b!4921060 b!4921056) bm!342381))

(assert (= (or b!4921060 b!4921056) bm!342382))

(assert (= (or b!4921060 b!4921056) bm!342384))

(assert (= (or b!4921060 b!4921056) bm!342385))

(assert (= (or b!4921065 b!4921058) bm!342376))

(assert (= (or b!4921065 b!4921058) bm!342380))

(assert (= (or b!4921065 b!4921063) bm!342383))

(assert (= (or b!4921065 b!4921063) bm!342377))

(assert (= (or b!4921065 b!4921058) bm!342378))

(assert (= (and bm!342378 c!837383) b!4921061))

(assert (= (and bm!342378 (not c!837383)) b!4921059))

(declare-fun m!5935586 () Bool)

(assert (=> b!4921063 m!5935586))

(declare-fun m!5935588 () Bool)

(assert (=> b!4921063 m!5935588))

(assert (=> b!4921063 m!5935392))

(declare-fun m!5935590 () Bool)

(assert (=> b!4921063 m!5935590))

(declare-fun m!5935592 () Bool)

(assert (=> b!4921063 m!5935592))

(declare-fun m!5935594 () Bool)

(assert (=> b!4921063 m!5935594))

(declare-fun m!5935596 () Bool)

(assert (=> b!4921063 m!5935596))

(declare-fun m!5935598 () Bool)

(assert (=> b!4921063 m!5935598))

(assert (=> b!4921063 m!5935394))

(declare-fun m!5935600 () Bool)

(assert (=> b!4921063 m!5935600))

(declare-fun m!5935602 () Bool)

(assert (=> b!4921063 m!5935602))

(assert (=> b!4921063 m!5935408))

(assert (=> b!4921063 m!5935586))

(declare-fun m!5935604 () Bool)

(assert (=> b!4921063 m!5935604))

(declare-fun m!5935606 () Bool)

(assert (=> b!4921063 m!5935606))

(declare-fun m!5935608 () Bool)

(assert (=> b!4921063 m!5935608))

(declare-fun m!5935610 () Bool)

(assert (=> b!4921063 m!5935610))

(assert (=> b!4921063 m!5935608))

(assert (=> b!4921063 m!5935594))

(declare-fun m!5935612 () Bool)

(assert (=> b!4921063 m!5935612))

(declare-fun m!5935614 () Bool)

(assert (=> b!4921063 m!5935614))

(declare-fun m!5935616 () Bool)

(assert (=> b!4921063 m!5935616))

(assert (=> b!4921063 m!5935590))

(declare-fun m!5935618 () Bool)

(assert (=> b!4921063 m!5935618))

(declare-fun m!5935620 () Bool)

(assert (=> b!4921063 m!5935620))

(declare-fun m!5935622 () Bool)

(assert (=> b!4921063 m!5935622))

(declare-fun m!5935624 () Bool)

(assert (=> bm!342382 m!5935624))

(assert (=> b!4921058 m!5935408))

(assert (=> b!4921059 m!5935408))

(declare-fun m!5935626 () Bool)

(assert (=> bm!342384 m!5935626))

(assert (=> bm!342385 m!5935394))

(declare-fun m!5935628 () Bool)

(assert (=> bm!342385 m!5935628))

(declare-fun m!5935630 () Bool)

(assert (=> bm!342383 m!5935630))

(declare-fun m!5935632 () Bool)

(assert (=> bm!342378 m!5935632))

(declare-fun m!5935634 () Bool)

(assert (=> bm!342380 m!5935634))

(declare-fun m!5935636 () Bool)

(assert (=> bm!342377 m!5935636))

(assert (=> bm!342379 m!5935618))

(declare-fun m!5935638 () Bool)

(assert (=> bm!342376 m!5935638))

(assert (=> d!1583086 m!5935398))

(assert (=> d!1583086 m!5935408))

(declare-fun m!5935640 () Bool)

(assert (=> d!1583086 m!5935640))

(declare-fun m!5935642 () Bool)

(assert (=> d!1583086 m!5935642))

(assert (=> d!1583086 m!5935408))

(declare-fun m!5935644 () Bool)

(assert (=> d!1583086 m!5935644))

(assert (=> d!1583086 m!5935408))

(assert (=> d!1583086 m!5935398))

(declare-fun m!5935646 () Bool)

(assert (=> d!1583086 m!5935646))

(declare-fun m!5935648 () Bool)

(assert (=> d!1583086 m!5935648))

(declare-fun m!5935650 () Bool)

(assert (=> d!1583086 m!5935650))

(assert (=> d!1583086 m!5935408))

(assert (=> d!1583086 m!5935394))

(declare-fun m!5935652 () Bool)

(assert (=> d!1583086 m!5935652))

(assert (=> bm!342381 m!5935616))

(assert (=> start!516618 d!1583086))

(declare-fun condSetEmpty!27445 () Bool)

(assert (=> setNonEmpty!27439 (= condSetEmpty!27445 (= setRest!27439 (as set.empty (Set Context!6000))))))

(declare-fun setRes!27445 () Bool)

(assert (=> setNonEmpty!27439 (= tp!1382848 setRes!27445)))

(declare-fun setIsEmpty!27445 () Bool)

(assert (=> setIsEmpty!27445 setRes!27445))

(declare-fun tp!1382864 () Bool)

(declare-fun setElem!27445 () Context!6000)

(declare-fun setNonEmpty!27445 () Bool)

(declare-fun e!3075183 () Bool)

(assert (=> setNonEmpty!27445 (= setRes!27445 (and tp!1382864 (inv!73362 setElem!27445) e!3075183))))

(declare-fun setRest!27445 () (Set Context!6000))

(assert (=> setNonEmpty!27445 (= setRest!27439 (set.union (set.insert setElem!27445 (as set.empty (Set Context!6000))) setRest!27445))))

(declare-fun b!4921072 () Bool)

(declare-fun tp!1382865 () Bool)

(assert (=> b!4921072 (= e!3075183 tp!1382865)))

(assert (= (and setNonEmpty!27439 condSetEmpty!27445) setIsEmpty!27445))

(assert (= (and setNonEmpty!27439 (not condSetEmpty!27445)) setNonEmpty!27445))

(assert (= setNonEmpty!27445 b!4921072))

(declare-fun m!5935654 () Bool)

(assert (=> setNonEmpty!27445 m!5935654))

(declare-fun tp!1382873 () Bool)

(declare-fun tp!1382874 () Bool)

(declare-fun e!3075188 () Bool)

(declare-fun b!4921081 () Bool)

(assert (=> b!4921081 (= e!3075188 (and (inv!73361 (left!41308 (c!837334 input!5492))) tp!1382874 (inv!73361 (right!41638 (c!837334 input!5492))) tp!1382873))))

(declare-fun b!4921083 () Bool)

(declare-fun e!3075189 () Bool)

(declare-fun tp!1382872 () Bool)

(assert (=> b!4921083 (= e!3075189 tp!1382872)))

(declare-fun b!4921082 () Bool)

(declare-fun inv!73371 (IArray!29775) Bool)

(assert (=> b!4921082 (= e!3075188 (and (inv!73371 (xs!18177 (c!837334 input!5492))) e!3075189))))

(assert (=> b!4920924 (= tp!1382850 (and (inv!73361 (c!837334 input!5492)) e!3075188))))

(assert (= (and b!4920924 (is-Node!14857 (c!837334 input!5492))) b!4921081))

(assert (= b!4921082 b!4921083))

(assert (= (and b!4920924 (is-Leaf!24719 (c!837334 input!5492))) b!4921082))

(declare-fun m!5935656 () Bool)

(assert (=> b!4921081 m!5935656))

(declare-fun m!5935658 () Bool)

(assert (=> b!4921081 m!5935658))

(declare-fun m!5935660 () Bool)

(assert (=> b!4921082 m!5935660))

(assert (=> b!4920924 m!5935388))

(declare-fun b!4921088 () Bool)

(declare-fun e!3075192 () Bool)

(declare-fun tp!1382879 () Bool)

(declare-fun tp!1382880 () Bool)

(assert (=> b!4921088 (= e!3075192 (and tp!1382879 tp!1382880))))

(assert (=> b!4920925 (= tp!1382849 e!3075192)))

(assert (= (and b!4920925 (is-Cons!56656 (exprs!3500 setElem!27439))) b!4921088))

(push 1)

(assert (not bm!342380))

(assert (not d!1583070))

(assert (not b!4921058))

(assert (not d!1583082))

(assert (not bm!342378))

(assert (not bm!342377))

(assert (not d!1583052))

(assert (not b!4921083))

(assert (not b!4921088))

(assert (not d!1583072))

(assert (not bm!342383))

(assert (not b!4921059))

(assert (not b!4921023))

(assert (not bm!342385))

(assert (not b!4921024))

(assert (not bm!342379))

(assert (not bm!342381))

(assert (not b!4920997))

(assert (not b!4921072))

(assert (not b!4920924))

(assert (not b!4921082))

(assert (not setNonEmpty!27445))

(assert (not d!1583074))

(assert (not b!4921012))

(assert (not d!1583086))

(assert (not b!4921063))

(assert (not b!4920995))

(assert (not bm!342382))

(assert (not b!4921013))

(assert (not bm!342376))

(assert (not bm!342384))

(assert (not d!1583080))

(assert (not d!1583068))

(assert (not b!4920941))

(assert (not b!4921081))

(assert (not d!1583084))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

