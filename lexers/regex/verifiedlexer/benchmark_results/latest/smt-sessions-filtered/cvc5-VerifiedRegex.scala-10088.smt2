; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!527476 () Bool)

(assert start!527476)

(declare-fun res!2130853 () Bool)

(declare-fun e!3119466 () Bool)

(assert (=> start!527476 (=> (not res!2130853) (not e!3119466))))

(declare-datatypes ((C!27770 0))(
  ( (C!27771 (val!23251 Int)) )
))
(declare-datatypes ((Regex!13760 0))(
  ( (ElementMatch!13760 (c!851385 C!27770)) (Concat!22553 (regOne!28032 Regex!13760) (regTwo!28032 Regex!13760)) (EmptyExpr!13760) (Star!13760 (reg!14089 Regex!13760)) (EmptyLang!13760) (Union!13760 (regOne!28033 Regex!13760) (regTwo!28033 Regex!13760)) )
))
(declare-fun r!12727 () Regex!13760)

(declare-fun validRegex!6057 (Regex!13760) Bool)

(assert (=> start!527476 (= res!2130853 (validRegex!6057 r!12727))))

(assert (=> start!527476 e!3119466))

(declare-fun e!3119471 () Bool)

(assert (=> start!527476 e!3119471))

(declare-fun condSetEmpty!28235 () Bool)

(declare-datatypes ((List!57884 0))(
  ( (Nil!57760) (Cons!57760 (h!64208 Regex!13760) (t!370210 List!57884)) )
))
(declare-datatypes ((Context!6370 0))(
  ( (Context!6371 (exprs!3685 List!57884)) )
))
(declare-fun z!4183 () (Set Context!6370))

(assert (=> start!527476 (= condSetEmpty!28235 (= z!4183 (as set.empty (Set Context!6370))))))

(declare-fun setRes!28235 () Bool)

(assert (=> start!527476 setRes!28235))

(declare-datatypes ((List!57885 0))(
  ( (Nil!57761) (Cons!57761 (h!64209 C!27770) (t!370211 List!57885)) )
))
(declare-datatypes ((IArray!30619 0))(
  ( (IArray!30620 (innerList!15367 List!57885)) )
))
(declare-datatypes ((Conc!15279 0))(
  ( (Node!15279 (left!42249 Conc!15279) (right!42579 Conc!15279) (csize!30788 Int) (cheight!15490 Int)) (Leaf!25368 (xs!18605 IArray!30619) (csize!30789 Int)) (Empty!15279) )
))
(declare-datatypes ((BalanceConc!29988 0))(
  ( (BalanceConc!29989 (c!851386 Conc!15279)) )
))
(declare-fun input!5597 () BalanceConc!29988)

(declare-fun e!3119468 () Bool)

(declare-fun inv!75809 (BalanceConc!29988) Bool)

(assert (=> start!527476 (and (inv!75809 input!5597) e!3119468)))

(declare-fun totalInput!1012 () BalanceConc!29988)

(declare-fun e!3119470 () Bool)

(assert (=> start!527476 (and (inv!75809 totalInput!1012) e!3119470)))

(declare-fun b!4990951 () Bool)

(declare-fun e!3119467 () Bool)

(declare-fun tp!1399208 () Bool)

(assert (=> b!4990951 (= e!3119467 tp!1399208)))

(declare-fun b!4990952 () Bool)

(declare-fun tp!1399206 () Bool)

(assert (=> b!4990952 (= e!3119471 tp!1399206)))

(declare-fun b!4990953 () Bool)

(declare-fun tp!1399205 () Bool)

(declare-fun inv!75810 (Conc!15279) Bool)

(assert (=> b!4990953 (= e!3119470 (and (inv!75810 (c!851386 totalInput!1012)) tp!1399205))))

(declare-fun setElem!28235 () Context!6370)

(declare-fun setNonEmpty!28235 () Bool)

(declare-fun tp!1399209 () Bool)

(declare-fun inv!75811 (Context!6370) Bool)

(assert (=> setNonEmpty!28235 (= setRes!28235 (and tp!1399209 (inv!75811 setElem!28235) e!3119467))))

(declare-fun setRest!28235 () (Set Context!6370))

(assert (=> setNonEmpty!28235 (= z!4183 (set.union (set.insert setElem!28235 (as set.empty (Set Context!6370))) setRest!28235))))

(declare-fun b!4990954 () Bool)

(declare-fun e!3119469 () Bool)

(declare-datatypes ((tuple2!62868 0))(
  ( (tuple2!62869 (_1!34737 BalanceConc!29988) (_2!34737 BalanceConc!29988)) )
))
(declare-fun lt!2064569 () tuple2!62868)

(declare-fun lt!2064566 () List!57885)

(declare-fun ++!12604 (List!57885 List!57885) List!57885)

(declare-fun list!18563 (BalanceConc!29988) List!57885)

(assert (=> b!4990954 (= e!3119469 (not (= (++!12604 (list!18563 (_1!34737 lt!2064569)) (list!18563 (_2!34737 lt!2064569))) lt!2064566)))))

(declare-datatypes ((tuple2!62870 0))(
  ( (tuple2!62871 (_1!34738 List!57885) (_2!34738 List!57885)) )
))
(declare-fun lt!2064568 () tuple2!62870)

(declare-fun findLongestMatch!1773 (Regex!13760 List!57885) tuple2!62870)

(assert (=> b!4990954 (= lt!2064568 (findLongestMatch!1773 r!12727 lt!2064566))))

(declare-fun lt!2064565 () Int)

(declare-fun size!38372 (BalanceConc!29988) Int)

(assert (=> b!4990954 (= lt!2064565 (size!38372 input!5597))))

(declare-fun lt!2064567 () Int)

(assert (=> b!4990954 (= lt!2064567 (size!38372 totalInput!1012))))

(declare-fun findLongestMatchZipperFastV2!62 ((Set Context!6370) BalanceConc!29988 BalanceConc!29988) tuple2!62868)

(assert (=> b!4990954 (= lt!2064569 (findLongestMatchZipperFastV2!62 z!4183 input!5597 totalInput!1012))))

(declare-fun b!4990955 () Bool)

(declare-fun res!2130854 () Bool)

(assert (=> b!4990955 (=> (not res!2130854) (not e!3119466))))

(declare-datatypes ((List!57886 0))(
  ( (Nil!57762) (Cons!57762 (h!64210 Context!6370) (t!370212 List!57886)) )
))
(declare-fun unfocusZipper!287 (List!57886) Regex!13760)

(declare-fun toList!8045 ((Set Context!6370)) List!57886)

(assert (=> b!4990955 (= res!2130854 (= (unfocusZipper!287 (toList!8045 z!4183)) r!12727))))

(declare-fun setIsEmpty!28235 () Bool)

(assert (=> setIsEmpty!28235 setRes!28235))

(declare-fun b!4990956 () Bool)

(declare-fun tp!1399202 () Bool)

(declare-fun tp!1399203 () Bool)

(assert (=> b!4990956 (= e!3119471 (and tp!1399202 tp!1399203))))

(declare-fun b!4990957 () Bool)

(declare-fun tp_is_empty!36517 () Bool)

(assert (=> b!4990957 (= e!3119471 tp_is_empty!36517)))

(declare-fun b!4990958 () Bool)

(declare-fun tp!1399207 () Bool)

(assert (=> b!4990958 (= e!3119468 (and (inv!75810 (c!851386 input!5597)) tp!1399207))))

(declare-fun b!4990959 () Bool)

(assert (=> b!4990959 (= e!3119466 e!3119469)))

(declare-fun res!2130852 () Bool)

(assert (=> b!4990959 (=> (not res!2130852) (not e!3119469))))

(declare-fun isSuffix!1326 (List!57885 List!57885) Bool)

(assert (=> b!4990959 (= res!2130852 (isSuffix!1326 lt!2064566 (list!18563 totalInput!1012)))))

(assert (=> b!4990959 (= lt!2064566 (list!18563 input!5597))))

(declare-fun b!4990960 () Bool)

(declare-fun tp!1399204 () Bool)

(declare-fun tp!1399201 () Bool)

(assert (=> b!4990960 (= e!3119471 (and tp!1399204 tp!1399201))))

(assert (= (and start!527476 res!2130853) b!4990955))

(assert (= (and b!4990955 res!2130854) b!4990959))

(assert (= (and b!4990959 res!2130852) b!4990954))

(assert (= (and start!527476 (is-ElementMatch!13760 r!12727)) b!4990957))

(assert (= (and start!527476 (is-Concat!22553 r!12727)) b!4990956))

(assert (= (and start!527476 (is-Star!13760 r!12727)) b!4990952))

(assert (= (and start!527476 (is-Union!13760 r!12727)) b!4990960))

(assert (= (and start!527476 condSetEmpty!28235) setIsEmpty!28235))

(assert (= (and start!527476 (not condSetEmpty!28235)) setNonEmpty!28235))

(assert (= setNonEmpty!28235 b!4990951))

(assert (= start!527476 b!4990958))

(assert (= start!527476 b!4990953))

(declare-fun m!6023862 () Bool)

(assert (=> b!4990954 m!6023862))

(declare-fun m!6023864 () Bool)

(assert (=> b!4990954 m!6023864))

(declare-fun m!6023866 () Bool)

(assert (=> b!4990954 m!6023866))

(assert (=> b!4990954 m!6023862))

(assert (=> b!4990954 m!6023864))

(declare-fun m!6023868 () Bool)

(assert (=> b!4990954 m!6023868))

(declare-fun m!6023870 () Bool)

(assert (=> b!4990954 m!6023870))

(declare-fun m!6023872 () Bool)

(assert (=> b!4990954 m!6023872))

(declare-fun m!6023874 () Bool)

(assert (=> b!4990954 m!6023874))

(declare-fun m!6023876 () Bool)

(assert (=> b!4990959 m!6023876))

(assert (=> b!4990959 m!6023876))

(declare-fun m!6023878 () Bool)

(assert (=> b!4990959 m!6023878))

(declare-fun m!6023880 () Bool)

(assert (=> b!4990959 m!6023880))

(declare-fun m!6023882 () Bool)

(assert (=> b!4990958 m!6023882))

(declare-fun m!6023884 () Bool)

(assert (=> b!4990955 m!6023884))

(assert (=> b!4990955 m!6023884))

(declare-fun m!6023886 () Bool)

(assert (=> b!4990955 m!6023886))

(declare-fun m!6023888 () Bool)

(assert (=> b!4990953 m!6023888))

(declare-fun m!6023890 () Bool)

(assert (=> setNonEmpty!28235 m!6023890))

(declare-fun m!6023892 () Bool)

(assert (=> start!527476 m!6023892))

(declare-fun m!6023894 () Bool)

(assert (=> start!527476 m!6023894))

(declare-fun m!6023896 () Bool)

(assert (=> start!527476 m!6023896))

(push 1)

(assert (not b!4990953))

(assert (not b!4990960))

(assert (not b!4990955))

(assert (not b!4990958))

(assert (not b!4990951))

(assert (not b!4990959))

(assert (not b!4990956))

(assert tp_is_empty!36517)

(assert (not b!4990952))

(assert (not b!4990954))

(assert (not setNonEmpty!28235))

(assert (not start!527476))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1606487 () Bool)

(declare-fun lt!2064592 () Regex!13760)

(assert (=> d!1606487 (validRegex!6057 lt!2064592)))

(declare-fun generalisedUnion!560 (List!57884) Regex!13760)

(declare-fun unfocusZipperList!73 (List!57886) List!57884)

(assert (=> d!1606487 (= lt!2064592 (generalisedUnion!560 (unfocusZipperList!73 (toList!8045 z!4183))))))

(assert (=> d!1606487 (= (unfocusZipper!287 (toList!8045 z!4183)) lt!2064592)))

(declare-fun bs!1184886 () Bool)

(assert (= bs!1184886 d!1606487))

(declare-fun m!6023940 () Bool)

(assert (=> bs!1184886 m!6023940))

(assert (=> bs!1184886 m!6023884))

(declare-fun m!6023942 () Bool)

(assert (=> bs!1184886 m!6023942))

(assert (=> bs!1184886 m!6023942))

(declare-fun m!6023944 () Bool)

(assert (=> bs!1184886 m!6023944))

(assert (=> b!4990955 d!1606487))

(declare-fun d!1606491 () Bool)

(declare-fun e!3119495 () Bool)

(assert (=> d!1606491 e!3119495))

(declare-fun res!2130869 () Bool)

(assert (=> d!1606491 (=> (not res!2130869) (not e!3119495))))

(declare-fun lt!2064596 () List!57886)

(declare-fun noDuplicate!1009 (List!57886) Bool)

(assert (=> d!1606491 (= res!2130869 (noDuplicate!1009 lt!2064596))))

(declare-fun choose!36889 ((Set Context!6370)) List!57886)

(assert (=> d!1606491 (= lt!2064596 (choose!36889 z!4183))))

(assert (=> d!1606491 (= (toList!8045 z!4183) lt!2064596)))

(declare-fun b!4990996 () Bool)

(declare-fun content!10207 (List!57886) (Set Context!6370))

(assert (=> b!4990996 (= e!3119495 (= (content!10207 lt!2064596) z!4183))))

(assert (= (and d!1606491 res!2130869) b!4990996))

(declare-fun m!6023952 () Bool)

(assert (=> d!1606491 m!6023952))

(declare-fun m!6023954 () Bool)

(assert (=> d!1606491 m!6023954))

(declare-fun m!6023956 () Bool)

(assert (=> b!4990996 m!6023956))

(assert (=> b!4990955 d!1606491))

(declare-fun d!1606495 () Bool)

(declare-fun c!851391 () Bool)

(assert (=> d!1606495 (= c!851391 (is-Node!15279 (c!851386 totalInput!1012)))))

(declare-fun e!3119500 () Bool)

(assert (=> d!1606495 (= (inv!75810 (c!851386 totalInput!1012)) e!3119500)))

(declare-fun b!4991003 () Bool)

(declare-fun inv!75815 (Conc!15279) Bool)

(assert (=> b!4991003 (= e!3119500 (inv!75815 (c!851386 totalInput!1012)))))

(declare-fun b!4991004 () Bool)

(declare-fun e!3119501 () Bool)

(assert (=> b!4991004 (= e!3119500 e!3119501)))

(declare-fun res!2130872 () Bool)

(assert (=> b!4991004 (= res!2130872 (not (is-Leaf!25368 (c!851386 totalInput!1012))))))

(assert (=> b!4991004 (=> res!2130872 e!3119501)))

(declare-fun b!4991005 () Bool)

(declare-fun inv!75816 (Conc!15279) Bool)

(assert (=> b!4991005 (= e!3119501 (inv!75816 (c!851386 totalInput!1012)))))

(assert (= (and d!1606495 c!851391) b!4991003))

(assert (= (and d!1606495 (not c!851391)) b!4991004))

(assert (= (and b!4991004 (not res!2130872)) b!4991005))

(declare-fun m!6023958 () Bool)

(assert (=> b!4991003 m!6023958))

(declare-fun m!6023960 () Bool)

(assert (=> b!4991005 m!6023960))

(assert (=> b!4990953 d!1606495))

(declare-fun d!1606497 () Bool)

(declare-fun lambda!248155 () Int)

(declare-fun forall!13339 (List!57884 Int) Bool)

(assert (=> d!1606497 (= (inv!75811 setElem!28235) (forall!13339 (exprs!3685 setElem!28235) lambda!248155))))

(declare-fun bs!1184887 () Bool)

(assert (= bs!1184887 d!1606497))

(declare-fun m!6023962 () Bool)

(assert (=> bs!1184887 m!6023962))

(assert (=> setNonEmpty!28235 d!1606497))

(declare-fun d!1606499 () Bool)

(declare-fun e!3119504 () Bool)

(assert (=> d!1606499 e!3119504))

(declare-fun res!2130875 () Bool)

(assert (=> d!1606499 (=> res!2130875 e!3119504)))

(declare-fun lt!2064599 () Bool)

(assert (=> d!1606499 (= res!2130875 (not lt!2064599))))

(declare-fun drop!2423 (List!57885 Int) List!57885)

(declare-fun size!38374 (List!57885) Int)

(assert (=> d!1606499 (= lt!2064599 (= lt!2064566 (drop!2423 (list!18563 totalInput!1012) (- (size!38374 (list!18563 totalInput!1012)) (size!38374 lt!2064566)))))))

(assert (=> d!1606499 (= (isSuffix!1326 lt!2064566 (list!18563 totalInput!1012)) lt!2064599)))

(declare-fun b!4991008 () Bool)

(assert (=> b!4991008 (= e!3119504 (>= (size!38374 (list!18563 totalInput!1012)) (size!38374 lt!2064566)))))

(assert (= (and d!1606499 (not res!2130875)) b!4991008))

(assert (=> d!1606499 m!6023876))

(declare-fun m!6023964 () Bool)

(assert (=> d!1606499 m!6023964))

(declare-fun m!6023966 () Bool)

(assert (=> d!1606499 m!6023966))

(assert (=> d!1606499 m!6023876))

(declare-fun m!6023968 () Bool)

(assert (=> d!1606499 m!6023968))

(assert (=> b!4991008 m!6023876))

(assert (=> b!4991008 m!6023964))

(assert (=> b!4991008 m!6023966))

(assert (=> b!4990959 d!1606499))

(declare-fun d!1606501 () Bool)

(declare-fun list!18565 (Conc!15279) List!57885)

(assert (=> d!1606501 (= (list!18563 totalInput!1012) (list!18565 (c!851386 totalInput!1012)))))

(declare-fun bs!1184888 () Bool)

(assert (= bs!1184888 d!1606501))

(declare-fun m!6023970 () Bool)

(assert (=> bs!1184888 m!6023970))

(assert (=> b!4990959 d!1606501))

(declare-fun d!1606503 () Bool)

(assert (=> d!1606503 (= (list!18563 input!5597) (list!18565 (c!851386 input!5597)))))

(declare-fun bs!1184889 () Bool)

(assert (= bs!1184889 d!1606503))

(declare-fun m!6023972 () Bool)

(assert (=> bs!1184889 m!6023972))

(assert (=> b!4990959 d!1606503))

(declare-fun d!1606505 () Bool)

(declare-fun c!851392 () Bool)

(assert (=> d!1606505 (= c!851392 (is-Node!15279 (c!851386 input!5597)))))

(declare-fun e!3119505 () Bool)

(assert (=> d!1606505 (= (inv!75810 (c!851386 input!5597)) e!3119505)))

(declare-fun b!4991009 () Bool)

(assert (=> b!4991009 (= e!3119505 (inv!75815 (c!851386 input!5597)))))

(declare-fun b!4991010 () Bool)

(declare-fun e!3119506 () Bool)

(assert (=> b!4991010 (= e!3119505 e!3119506)))

(declare-fun res!2130876 () Bool)

(assert (=> b!4991010 (= res!2130876 (not (is-Leaf!25368 (c!851386 input!5597))))))

(assert (=> b!4991010 (=> res!2130876 e!3119506)))

(declare-fun b!4991011 () Bool)

(assert (=> b!4991011 (= e!3119506 (inv!75816 (c!851386 input!5597)))))

(assert (= (and d!1606505 c!851392) b!4991009))

(assert (= (and d!1606505 (not c!851392)) b!4991010))

(assert (= (and b!4991010 (not res!2130876)) b!4991011))

(declare-fun m!6023974 () Bool)

(assert (=> b!4991009 m!6023974))

(declare-fun m!6023976 () Bool)

(assert (=> b!4991011 m!6023976))

(assert (=> b!4990958 d!1606505))

(declare-fun b!4991030 () Bool)

(declare-fun res!2130887 () Bool)

(declare-fun e!3119521 () Bool)

(assert (=> b!4991030 (=> (not res!2130887) (not e!3119521))))

(declare-fun call!348251 () Bool)

(assert (=> b!4991030 (= res!2130887 call!348251)))

(declare-fun e!3119523 () Bool)

(assert (=> b!4991030 (= e!3119523 e!3119521)))

(declare-fun bm!348245 () Bool)

(declare-fun c!851398 () Bool)

(assert (=> bm!348245 (= call!348251 (validRegex!6057 (ite c!851398 (regOne!28033 r!12727) (regTwo!28032 r!12727))))))

(declare-fun b!4991031 () Bool)

(declare-fun e!3119527 () Bool)

(assert (=> b!4991031 (= e!3119527 e!3119523)))

(assert (=> b!4991031 (= c!851398 (is-Union!13760 r!12727))))

(declare-fun b!4991032 () Bool)

(declare-fun e!3119524 () Bool)

(assert (=> b!4991032 (= e!3119524 e!3119527)))

(declare-fun c!851397 () Bool)

(assert (=> b!4991032 (= c!851397 (is-Star!13760 r!12727))))

(declare-fun bm!348246 () Bool)

(declare-fun call!348252 () Bool)

(declare-fun call!348250 () Bool)

(assert (=> bm!348246 (= call!348252 call!348250)))

(declare-fun bm!348247 () Bool)

(assert (=> bm!348247 (= call!348250 (validRegex!6057 (ite c!851397 (reg!14089 r!12727) (ite c!851398 (regTwo!28033 r!12727) (regOne!28032 r!12727)))))))

(declare-fun d!1606507 () Bool)

(declare-fun res!2130890 () Bool)

(assert (=> d!1606507 (=> res!2130890 e!3119524)))

(assert (=> d!1606507 (= res!2130890 (is-ElementMatch!13760 r!12727))))

(assert (=> d!1606507 (= (validRegex!6057 r!12727) e!3119524)))

(declare-fun b!4991033 () Bool)

(assert (=> b!4991033 (= e!3119521 call!348252)))

(declare-fun b!4991034 () Bool)

(declare-fun e!3119526 () Bool)

(declare-fun e!3119522 () Bool)

(assert (=> b!4991034 (= e!3119526 e!3119522)))

(declare-fun res!2130888 () Bool)

(assert (=> b!4991034 (=> (not res!2130888) (not e!3119522))))

(assert (=> b!4991034 (= res!2130888 call!348252)))

(declare-fun b!4991035 () Bool)

(assert (=> b!4991035 (= e!3119522 call!348251)))

(declare-fun b!4991036 () Bool)

(declare-fun e!3119525 () Bool)

(assert (=> b!4991036 (= e!3119527 e!3119525)))

(declare-fun res!2130889 () Bool)

(declare-fun nullable!4666 (Regex!13760) Bool)

(assert (=> b!4991036 (= res!2130889 (not (nullable!4666 (reg!14089 r!12727))))))

(assert (=> b!4991036 (=> (not res!2130889) (not e!3119525))))

(declare-fun b!4991037 () Bool)

(assert (=> b!4991037 (= e!3119525 call!348250)))

(declare-fun b!4991038 () Bool)

(declare-fun res!2130891 () Bool)

(assert (=> b!4991038 (=> res!2130891 e!3119526)))

(assert (=> b!4991038 (= res!2130891 (not (is-Concat!22553 r!12727)))))

(assert (=> b!4991038 (= e!3119523 e!3119526)))

(assert (= (and d!1606507 (not res!2130890)) b!4991032))

(assert (= (and b!4991032 c!851397) b!4991036))

(assert (= (and b!4991032 (not c!851397)) b!4991031))

(assert (= (and b!4991036 res!2130889) b!4991037))

(assert (= (and b!4991031 c!851398) b!4991030))

(assert (= (and b!4991031 (not c!851398)) b!4991038))

(assert (= (and b!4991030 res!2130887) b!4991033))

(assert (= (and b!4991038 (not res!2130891)) b!4991034))

(assert (= (and b!4991034 res!2130888) b!4991035))

(assert (= (or b!4991033 b!4991034) bm!348246))

(assert (= (or b!4991030 b!4991035) bm!348245))

(assert (= (or b!4991037 bm!348246) bm!348247))

(declare-fun m!6023978 () Bool)

(assert (=> bm!348245 m!6023978))

(declare-fun m!6023980 () Bool)

(assert (=> bm!348247 m!6023980))

(declare-fun m!6023982 () Bool)

(assert (=> b!4991036 m!6023982))

(assert (=> start!527476 d!1606507))

(declare-fun d!1606509 () Bool)

(declare-fun isBalanced!4249 (Conc!15279) Bool)

(assert (=> d!1606509 (= (inv!75809 input!5597) (isBalanced!4249 (c!851386 input!5597)))))

(declare-fun bs!1184890 () Bool)

(assert (= bs!1184890 d!1606509))

(declare-fun m!6023984 () Bool)

(assert (=> bs!1184890 m!6023984))

(assert (=> start!527476 d!1606509))

(declare-fun d!1606511 () Bool)

(assert (=> d!1606511 (= (inv!75809 totalInput!1012) (isBalanced!4249 (c!851386 totalInput!1012)))))

(declare-fun bs!1184891 () Bool)

(assert (= bs!1184891 d!1606511))

(declare-fun m!6023986 () Bool)

(assert (=> bs!1184891 m!6023986))

(assert (=> start!527476 d!1606511))

(declare-fun d!1606513 () Bool)

(declare-fun lt!2064616 () tuple2!62870)

(assert (=> d!1606513 (= (++!12604 (_1!34738 lt!2064616) (_2!34738 lt!2064616)) lt!2064566)))

(declare-fun findLongestMatchInner!1949 (Regex!13760 List!57885 Int List!57885 List!57885 Int) tuple2!62870)

(declare-fun sizeTr!377 (List!57885 Int) Int)

(assert (=> d!1606513 (= lt!2064616 (findLongestMatchInner!1949 r!12727 Nil!57761 0 lt!2064566 lt!2064566 (sizeTr!377 lt!2064566 0)))))

(declare-datatypes ((Unit!148885 0))(
  ( (Unit!148886) )
))
(declare-fun lt!2064618 () Unit!148885)

(declare-fun lt!2064621 () Unit!148885)

(assert (=> d!1606513 (= lt!2064618 lt!2064621)))

(declare-fun lt!2064619 () List!57885)

(declare-fun lt!2064620 () Int)

(assert (=> d!1606513 (= (sizeTr!377 lt!2064619 lt!2064620) (+ (size!38374 lt!2064619) lt!2064620))))

(declare-fun lemmaSizeTrEqualsSize!376 (List!57885 Int) Unit!148885)

(assert (=> d!1606513 (= lt!2064621 (lemmaSizeTrEqualsSize!376 lt!2064619 lt!2064620))))

(assert (=> d!1606513 (= lt!2064620 0)))

(assert (=> d!1606513 (= lt!2064619 Nil!57761)))

(declare-fun lt!2064623 () Unit!148885)

(declare-fun lt!2064622 () Unit!148885)

(assert (=> d!1606513 (= lt!2064623 lt!2064622)))

(declare-fun lt!2064617 () Int)

(assert (=> d!1606513 (= (sizeTr!377 lt!2064566 lt!2064617) (+ (size!38374 lt!2064566) lt!2064617))))

(assert (=> d!1606513 (= lt!2064622 (lemmaSizeTrEqualsSize!376 lt!2064566 lt!2064617))))

(assert (=> d!1606513 (= lt!2064617 0)))

(assert (=> d!1606513 (validRegex!6057 r!12727)))

(assert (=> d!1606513 (= (findLongestMatch!1773 r!12727 lt!2064566) lt!2064616)))

(declare-fun bs!1184892 () Bool)

(assert (= bs!1184892 d!1606513))

(declare-fun m!6023988 () Bool)

(assert (=> bs!1184892 m!6023988))

(declare-fun m!6023990 () Bool)

(assert (=> bs!1184892 m!6023990))

(declare-fun m!6023992 () Bool)

(assert (=> bs!1184892 m!6023992))

(declare-fun m!6023994 () Bool)

(assert (=> bs!1184892 m!6023994))

(assert (=> bs!1184892 m!6023966))

(declare-fun m!6023996 () Bool)

(assert (=> bs!1184892 m!6023996))

(assert (=> bs!1184892 m!6023892))

(declare-fun m!6023998 () Bool)

(assert (=> bs!1184892 m!6023998))

(declare-fun m!6024000 () Bool)

(assert (=> bs!1184892 m!6024000))

(assert (=> bs!1184892 m!6023998))

(declare-fun m!6024002 () Bool)

(assert (=> bs!1184892 m!6024002))

(assert (=> b!4990954 d!1606513))

(declare-fun b!4991050 () Bool)

(declare-fun e!3119532 () Bool)

(declare-fun lt!2064626 () List!57885)

(assert (=> b!4991050 (= e!3119532 (or (not (= (list!18563 (_2!34737 lt!2064569)) Nil!57761)) (= lt!2064626 (list!18563 (_1!34737 lt!2064569)))))))

(declare-fun d!1606515 () Bool)

(assert (=> d!1606515 e!3119532))

(declare-fun res!2130896 () Bool)

(assert (=> d!1606515 (=> (not res!2130896) (not e!3119532))))

(declare-fun content!10208 (List!57885) (Set C!27770))

(assert (=> d!1606515 (= res!2130896 (= (content!10208 lt!2064626) (set.union (content!10208 (list!18563 (_1!34737 lt!2064569))) (content!10208 (list!18563 (_2!34737 lt!2064569))))))))

(declare-fun e!3119533 () List!57885)

(assert (=> d!1606515 (= lt!2064626 e!3119533)))

(declare-fun c!851401 () Bool)

(assert (=> d!1606515 (= c!851401 (is-Nil!57761 (list!18563 (_1!34737 lt!2064569))))))

(assert (=> d!1606515 (= (++!12604 (list!18563 (_1!34737 lt!2064569)) (list!18563 (_2!34737 lt!2064569))) lt!2064626)))

(declare-fun b!4991048 () Bool)

(assert (=> b!4991048 (= e!3119533 (Cons!57761 (h!64209 (list!18563 (_1!34737 lt!2064569))) (++!12604 (t!370211 (list!18563 (_1!34737 lt!2064569))) (list!18563 (_2!34737 lt!2064569)))))))

(declare-fun b!4991047 () Bool)

(assert (=> b!4991047 (= e!3119533 (list!18563 (_2!34737 lt!2064569)))))

(declare-fun b!4991049 () Bool)

(declare-fun res!2130897 () Bool)

(assert (=> b!4991049 (=> (not res!2130897) (not e!3119532))))

(assert (=> b!4991049 (= res!2130897 (= (size!38374 lt!2064626) (+ (size!38374 (list!18563 (_1!34737 lt!2064569))) (size!38374 (list!18563 (_2!34737 lt!2064569))))))))

(assert (= (and d!1606515 c!851401) b!4991047))

(assert (= (and d!1606515 (not c!851401)) b!4991048))

(assert (= (and d!1606515 res!2130896) b!4991049))

(assert (= (and b!4991049 res!2130897) b!4991050))

(declare-fun m!6024004 () Bool)

(assert (=> d!1606515 m!6024004))

(assert (=> d!1606515 m!6023862))

(declare-fun m!6024006 () Bool)

(assert (=> d!1606515 m!6024006))

(assert (=> d!1606515 m!6023864))

(declare-fun m!6024008 () Bool)

(assert (=> d!1606515 m!6024008))

(assert (=> b!4991048 m!6023864))

(declare-fun m!6024010 () Bool)

(assert (=> b!4991048 m!6024010))

(declare-fun m!6024012 () Bool)

(assert (=> b!4991049 m!6024012))

(assert (=> b!4991049 m!6023862))

(declare-fun m!6024014 () Bool)

(assert (=> b!4991049 m!6024014))

(assert (=> b!4991049 m!6023864))

(declare-fun m!6024016 () Bool)

(assert (=> b!4991049 m!6024016))

(assert (=> b!4990954 d!1606515))

(declare-fun d!1606517 () Bool)

(declare-fun lt!2064629 () Int)

(assert (=> d!1606517 (= lt!2064629 (size!38374 (list!18563 input!5597)))))

(declare-fun size!38375 (Conc!15279) Int)

(assert (=> d!1606517 (= lt!2064629 (size!38375 (c!851386 input!5597)))))

(assert (=> d!1606517 (= (size!38372 input!5597) lt!2064629)))

(declare-fun bs!1184893 () Bool)

(assert (= bs!1184893 d!1606517))

(assert (=> bs!1184893 m!6023880))

(assert (=> bs!1184893 m!6023880))

(declare-fun m!6024018 () Bool)

(assert (=> bs!1184893 m!6024018))

(declare-fun m!6024020 () Bool)

(assert (=> bs!1184893 m!6024020))

(assert (=> b!4990954 d!1606517))

(declare-fun d!1606519 () Bool)

(assert (=> d!1606519 (= (list!18563 (_1!34737 lt!2064569)) (list!18565 (c!851386 (_1!34737 lt!2064569))))))

(declare-fun bs!1184894 () Bool)

(assert (= bs!1184894 d!1606519))

(declare-fun m!6024022 () Bool)

(assert (=> bs!1184894 m!6024022))

(assert (=> b!4990954 d!1606519))

(declare-fun d!1606521 () Bool)

(declare-fun lt!2064630 () Int)

(assert (=> d!1606521 (= lt!2064630 (size!38374 (list!18563 totalInput!1012)))))

(assert (=> d!1606521 (= lt!2064630 (size!38375 (c!851386 totalInput!1012)))))

(assert (=> d!1606521 (= (size!38372 totalInput!1012) lt!2064630)))

(declare-fun bs!1184895 () Bool)

(assert (= bs!1184895 d!1606521))

(assert (=> bs!1184895 m!6023876))

(assert (=> bs!1184895 m!6023876))

(assert (=> bs!1184895 m!6023964))

(declare-fun m!6024024 () Bool)

(assert (=> bs!1184895 m!6024024))

(assert (=> b!4990954 d!1606521))

(declare-fun d!1606523 () Bool)

(declare-fun lt!2064635 () tuple2!62868)

(assert (=> d!1606523 (= (++!12604 (list!18563 (_1!34737 lt!2064635)) (list!18563 (_2!34737 lt!2064635))) (list!18563 input!5597))))

(declare-fun lt!2064636 () Int)

(declare-fun splitAt!422 (BalanceConc!29988 Int) tuple2!62868)

(declare-fun findLongestMatchInnerZipperFastV2!100 ((Set Context!6370) Int BalanceConc!29988 Int) Int)

(assert (=> d!1606523 (= lt!2064635 (splitAt!422 input!5597 (findLongestMatchInnerZipperFastV2!100 z!4183 (- lt!2064636 (size!38372 input!5597)) totalInput!1012 lt!2064636)))))

(assert (=> d!1606523 (= lt!2064636 (size!38372 totalInput!1012))))

(assert (=> d!1606523 (isSuffix!1326 (list!18563 input!5597) (list!18563 totalInput!1012))))

(assert (=> d!1606523 (= (findLongestMatchZipperFastV2!62 z!4183 input!5597 totalInput!1012) lt!2064635)))

(declare-fun bs!1184896 () Bool)

(assert (= bs!1184896 d!1606523))

(assert (=> bs!1184896 m!6023868))

(declare-fun m!6024026 () Bool)

(assert (=> bs!1184896 m!6024026))

(declare-fun m!6024028 () Bool)

(assert (=> bs!1184896 m!6024028))

(declare-fun m!6024030 () Bool)

(assert (=> bs!1184896 m!6024030))

(declare-fun m!6024032 () Bool)

(assert (=> bs!1184896 m!6024032))

(assert (=> bs!1184896 m!6023880))

(assert (=> bs!1184896 m!6023880))

(assert (=> bs!1184896 m!6023876))

(declare-fun m!6024034 () Bool)

(assert (=> bs!1184896 m!6024034))

(assert (=> bs!1184896 m!6024026))

(assert (=> bs!1184896 m!6023876))

(assert (=> bs!1184896 m!6023870))

(assert (=> bs!1184896 m!6024030))

(assert (=> bs!1184896 m!6024032))

(declare-fun m!6024036 () Bool)

(assert (=> bs!1184896 m!6024036))

(assert (=> b!4990954 d!1606523))

(declare-fun d!1606525 () Bool)

(assert (=> d!1606525 (= (list!18563 (_2!34737 lt!2064569)) (list!18565 (c!851386 (_2!34737 lt!2064569))))))

(declare-fun bs!1184897 () Bool)

(assert (= bs!1184897 d!1606525))

(declare-fun m!6024038 () Bool)

(assert (=> bs!1184897 m!6024038))

(assert (=> b!4990954 d!1606525))

(declare-fun b!4991063 () Bool)

(declare-fun e!3119536 () Bool)

(declare-fun tp!1399250 () Bool)

(assert (=> b!4991063 (= e!3119536 tp!1399250)))

(assert (=> b!4990960 (= tp!1399204 e!3119536)))

(declare-fun b!4991061 () Bool)

(assert (=> b!4991061 (= e!3119536 tp_is_empty!36517)))

(declare-fun b!4991064 () Bool)

(declare-fun tp!1399249 () Bool)

(declare-fun tp!1399251 () Bool)

(assert (=> b!4991064 (= e!3119536 (and tp!1399249 tp!1399251))))

(declare-fun b!4991062 () Bool)

(declare-fun tp!1399247 () Bool)

(declare-fun tp!1399248 () Bool)

(assert (=> b!4991062 (= e!3119536 (and tp!1399247 tp!1399248))))

(assert (= (and b!4990960 (is-ElementMatch!13760 (regOne!28033 r!12727))) b!4991061))

(assert (= (and b!4990960 (is-Concat!22553 (regOne!28033 r!12727))) b!4991062))

(assert (= (and b!4990960 (is-Star!13760 (regOne!28033 r!12727))) b!4991063))

(assert (= (and b!4990960 (is-Union!13760 (regOne!28033 r!12727))) b!4991064))

(declare-fun b!4991067 () Bool)

(declare-fun e!3119537 () Bool)

(declare-fun tp!1399255 () Bool)

(assert (=> b!4991067 (= e!3119537 tp!1399255)))

(assert (=> b!4990960 (= tp!1399201 e!3119537)))

(declare-fun b!4991065 () Bool)

(assert (=> b!4991065 (= e!3119537 tp_is_empty!36517)))

(declare-fun b!4991068 () Bool)

(declare-fun tp!1399254 () Bool)

(declare-fun tp!1399256 () Bool)

(assert (=> b!4991068 (= e!3119537 (and tp!1399254 tp!1399256))))

(declare-fun b!4991066 () Bool)

(declare-fun tp!1399252 () Bool)

(declare-fun tp!1399253 () Bool)

(assert (=> b!4991066 (= e!3119537 (and tp!1399252 tp!1399253))))

(assert (= (and b!4990960 (is-ElementMatch!13760 (regTwo!28033 r!12727))) b!4991065))

(assert (= (and b!4990960 (is-Concat!22553 (regTwo!28033 r!12727))) b!4991066))

(assert (= (and b!4990960 (is-Star!13760 (regTwo!28033 r!12727))) b!4991067))

(assert (= (and b!4990960 (is-Union!13760 (regTwo!28033 r!12727))) b!4991068))

(declare-fun b!4991073 () Bool)

(declare-fun e!3119540 () Bool)

(declare-fun tp!1399261 () Bool)

(declare-fun tp!1399262 () Bool)

(assert (=> b!4991073 (= e!3119540 (and tp!1399261 tp!1399262))))

(assert (=> b!4990951 (= tp!1399208 e!3119540)))

(assert (= (and b!4990951 (is-Cons!57760 (exprs!3685 setElem!28235))) b!4991073))

(declare-fun b!4991076 () Bool)

(declare-fun e!3119541 () Bool)

(declare-fun tp!1399266 () Bool)

(assert (=> b!4991076 (= e!3119541 tp!1399266)))

(assert (=> b!4990956 (= tp!1399202 e!3119541)))

(declare-fun b!4991074 () Bool)

(assert (=> b!4991074 (= e!3119541 tp_is_empty!36517)))

(declare-fun b!4991077 () Bool)

(declare-fun tp!1399265 () Bool)

(declare-fun tp!1399267 () Bool)

(assert (=> b!4991077 (= e!3119541 (and tp!1399265 tp!1399267))))

(declare-fun b!4991075 () Bool)

(declare-fun tp!1399263 () Bool)

(declare-fun tp!1399264 () Bool)

(assert (=> b!4991075 (= e!3119541 (and tp!1399263 tp!1399264))))

(assert (= (and b!4990956 (is-ElementMatch!13760 (regOne!28032 r!12727))) b!4991074))

(assert (= (and b!4990956 (is-Concat!22553 (regOne!28032 r!12727))) b!4991075))

(assert (= (and b!4990956 (is-Star!13760 (regOne!28032 r!12727))) b!4991076))

(assert (= (and b!4990956 (is-Union!13760 (regOne!28032 r!12727))) b!4991077))

(declare-fun b!4991080 () Bool)

(declare-fun e!3119542 () Bool)

(declare-fun tp!1399271 () Bool)

(assert (=> b!4991080 (= e!3119542 tp!1399271)))

(assert (=> b!4990956 (= tp!1399203 e!3119542)))

(declare-fun b!4991078 () Bool)

(assert (=> b!4991078 (= e!3119542 tp_is_empty!36517)))

(declare-fun b!4991081 () Bool)

(declare-fun tp!1399270 () Bool)

(declare-fun tp!1399272 () Bool)

(assert (=> b!4991081 (= e!3119542 (and tp!1399270 tp!1399272))))

(declare-fun b!4991079 () Bool)

(declare-fun tp!1399268 () Bool)

(declare-fun tp!1399269 () Bool)

(assert (=> b!4991079 (= e!3119542 (and tp!1399268 tp!1399269))))

(assert (= (and b!4990956 (is-ElementMatch!13760 (regTwo!28032 r!12727))) b!4991078))

(assert (= (and b!4990956 (is-Concat!22553 (regTwo!28032 r!12727))) b!4991079))

(assert (= (and b!4990956 (is-Star!13760 (regTwo!28032 r!12727))) b!4991080))

(assert (= (and b!4990956 (is-Union!13760 (regTwo!28032 r!12727))) b!4991081))

(declare-fun e!3119548 () Bool)

(declare-fun tp!1399281 () Bool)

(declare-fun b!4991090 () Bool)

(declare-fun tp!1399280 () Bool)

(assert (=> b!4991090 (= e!3119548 (and (inv!75810 (left!42249 (c!851386 totalInput!1012))) tp!1399280 (inv!75810 (right!42579 (c!851386 totalInput!1012))) tp!1399281))))

(declare-fun b!4991092 () Bool)

(declare-fun e!3119547 () Bool)

(declare-fun tp!1399279 () Bool)

(assert (=> b!4991092 (= e!3119547 tp!1399279)))

(declare-fun b!4991091 () Bool)

(declare-fun inv!75817 (IArray!30619) Bool)

(assert (=> b!4991091 (= e!3119548 (and (inv!75817 (xs!18605 (c!851386 totalInput!1012))) e!3119547))))

(assert (=> b!4990953 (= tp!1399205 (and (inv!75810 (c!851386 totalInput!1012)) e!3119548))))

(assert (= (and b!4990953 (is-Node!15279 (c!851386 totalInput!1012))) b!4991090))

(assert (= b!4991091 b!4991092))

(assert (= (and b!4990953 (is-Leaf!25368 (c!851386 totalInput!1012))) b!4991091))

(declare-fun m!6024040 () Bool)

(assert (=> b!4991090 m!6024040))

(declare-fun m!6024042 () Bool)

(assert (=> b!4991090 m!6024042))

(declare-fun m!6024044 () Bool)

(assert (=> b!4991091 m!6024044))

(assert (=> b!4990953 m!6023888))

(declare-fun b!4991095 () Bool)

(declare-fun e!3119549 () Bool)

(declare-fun tp!1399285 () Bool)

(assert (=> b!4991095 (= e!3119549 tp!1399285)))

(assert (=> b!4990952 (= tp!1399206 e!3119549)))

(declare-fun b!4991093 () Bool)

(assert (=> b!4991093 (= e!3119549 tp_is_empty!36517)))

(declare-fun b!4991096 () Bool)

(declare-fun tp!1399284 () Bool)

(declare-fun tp!1399286 () Bool)

(assert (=> b!4991096 (= e!3119549 (and tp!1399284 tp!1399286))))

(declare-fun b!4991094 () Bool)

(declare-fun tp!1399282 () Bool)

(declare-fun tp!1399283 () Bool)

(assert (=> b!4991094 (= e!3119549 (and tp!1399282 tp!1399283))))

(assert (= (and b!4990952 (is-ElementMatch!13760 (reg!14089 r!12727))) b!4991093))

(assert (= (and b!4990952 (is-Concat!22553 (reg!14089 r!12727))) b!4991094))

(assert (= (and b!4990952 (is-Star!13760 (reg!14089 r!12727))) b!4991095))

(assert (= (and b!4990952 (is-Union!13760 (reg!14089 r!12727))) b!4991096))

(declare-fun condSetEmpty!28241 () Bool)

(assert (=> setNonEmpty!28235 (= condSetEmpty!28241 (= setRest!28235 (as set.empty (Set Context!6370))))))

(declare-fun setRes!28241 () Bool)

(assert (=> setNonEmpty!28235 (= tp!1399209 setRes!28241)))

(declare-fun setIsEmpty!28241 () Bool)

(assert (=> setIsEmpty!28241 setRes!28241))

(declare-fun e!3119552 () Bool)

(declare-fun setElem!28241 () Context!6370)

(declare-fun setNonEmpty!28241 () Bool)

(declare-fun tp!1399291 () Bool)

(assert (=> setNonEmpty!28241 (= setRes!28241 (and tp!1399291 (inv!75811 setElem!28241) e!3119552))))

(declare-fun setRest!28241 () (Set Context!6370))

(assert (=> setNonEmpty!28241 (= setRest!28235 (set.union (set.insert setElem!28241 (as set.empty (Set Context!6370))) setRest!28241))))

(declare-fun b!4991101 () Bool)

(declare-fun tp!1399292 () Bool)

(assert (=> b!4991101 (= e!3119552 tp!1399292)))

(assert (= (and setNonEmpty!28235 condSetEmpty!28241) setIsEmpty!28241))

(assert (= (and setNonEmpty!28235 (not condSetEmpty!28241)) setNonEmpty!28241))

(assert (= setNonEmpty!28241 b!4991101))

(declare-fun m!6024046 () Bool)

(assert (=> setNonEmpty!28241 m!6024046))

(declare-fun e!3119554 () Bool)

(declare-fun b!4991102 () Bool)

(declare-fun tp!1399295 () Bool)

(declare-fun tp!1399294 () Bool)

(assert (=> b!4991102 (= e!3119554 (and (inv!75810 (left!42249 (c!851386 input!5597))) tp!1399294 (inv!75810 (right!42579 (c!851386 input!5597))) tp!1399295))))

(declare-fun b!4991104 () Bool)

(declare-fun e!3119553 () Bool)

(declare-fun tp!1399293 () Bool)

(assert (=> b!4991104 (= e!3119553 tp!1399293)))

(declare-fun b!4991103 () Bool)

(assert (=> b!4991103 (= e!3119554 (and (inv!75817 (xs!18605 (c!851386 input!5597))) e!3119553))))

(assert (=> b!4990958 (= tp!1399207 (and (inv!75810 (c!851386 input!5597)) e!3119554))))

(assert (= (and b!4990958 (is-Node!15279 (c!851386 input!5597))) b!4991102))

(assert (= b!4991103 b!4991104))

(assert (= (and b!4990958 (is-Leaf!25368 (c!851386 input!5597))) b!4991103))

(declare-fun m!6024048 () Bool)

(assert (=> b!4991102 m!6024048))

(declare-fun m!6024050 () Bool)

(assert (=> b!4991102 m!6024050))

(declare-fun m!6024052 () Bool)

(assert (=> b!4991103 m!6024052))

(assert (=> b!4990958 m!6023882))

(push 1)

(assert (not d!1606523))

(assert (not b!4991077))

(assert (not b!4991009))

(assert (not b!4991003))

(assert (not b!4991090))

(assert (not b!4991064))

(assert (not b!4991094))

(assert (not b!4991073))

(assert (not b!4991075))

(assert (not d!1606487))

(assert (not d!1606501))

(assert (not d!1606513))

(assert (not b!4991091))

(assert (not b!4991080))

(assert (not b!4991036))

(assert (not d!1606499))

(assert (not b!4990953))

(assert (not bm!348245))

(assert (not b!4991095))

(assert (not b!4991067))

(assert (not b!4991066))

(assert (not d!1606519))

(assert (not b!4991101))

(assert (not b!4991092))

(assert (not b!4991048))

(assert (not bm!348247))

(assert (not b!4991102))

(assert (not b!4991063))

(assert (not d!1606503))

(assert tp_is_empty!36517)

(assert (not b!4991008))

(assert (not b!4991062))

(assert (not b!4991049))

(assert (not b!4991076))

(assert (not d!1606515))

(assert (not d!1606525))

(assert (not d!1606517))

(assert (not b!4991103))

(assert (not b!4991005))

(assert (not b!4991068))

(assert (not setNonEmpty!28241))

(assert (not b!4991011))

(assert (not b!4990958))

(assert (not d!1606521))

(assert (not b!4991096))

(assert (not d!1606509))

(assert (not d!1606497))

(assert (not d!1606511))

(assert (not b!4990996))

(assert (not b!4991104))

(assert (not b!4991081))

(assert (not d!1606491))

(assert (not b!4991079))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

