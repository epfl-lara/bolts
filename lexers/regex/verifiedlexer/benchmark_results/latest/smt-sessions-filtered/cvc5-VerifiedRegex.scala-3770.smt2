; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!210372 () Bool)

(assert start!210372)

(declare-fun b!2169390 () Bool)

(declare-fun e!1387474 () Bool)

(declare-fun e!1387480 () Bool)

(assert (=> b!2169390 (= e!1387474 e!1387480)))

(declare-fun res!933774 () Bool)

(assert (=> b!2169390 (=> (not res!933774) (not e!1387480))))

(declare-datatypes ((C!12158 0))(
  ( (C!12159 (val!7065 Int)) )
))
(declare-datatypes ((List!25231 0))(
  ( (Nil!25147) (Cons!25147 (h!30548 C!12158) (t!197793 List!25231)) )
))
(declare-fun lt!807872 () List!25231)

(declare-datatypes ((IArray!16289 0))(
  ( (IArray!16290 (innerList!8202 List!25231)) )
))
(declare-datatypes ((Conc!8142 0))(
  ( (Node!8142 (left!19328 Conc!8142) (right!19658 Conc!8142) (csize!16514 Int) (cheight!8353 Int)) (Leaf!11913 (xs!11084 IArray!16289) (csize!16515 Int)) (Empty!8142) )
))
(declare-datatypes ((BalanceConc!16046 0))(
  ( (BalanceConc!16047 (c!343758 Conc!8142)) )
))
(declare-fun totalInput!977 () BalanceConc!16046)

(declare-fun isSuffix!673 (List!25231 List!25231) Bool)

(declare-fun list!9637 (BalanceConc!16046) List!25231)

(assert (=> b!2169390 (= res!933774 (isSuffix!673 lt!807872 (list!9637 totalInput!977)))))

(declare-fun input!5540 () BalanceConc!16046)

(assert (=> b!2169390 (= lt!807872 (list!9637 input!5540))))

(declare-fun b!2169391 () Bool)

(declare-fun e!1387479 () Bool)

(assert (=> b!2169391 (= e!1387480 e!1387479)))

(declare-fun res!933775 () Bool)

(assert (=> b!2169391 (=> (not res!933775) (not e!1387479))))

(declare-fun lt!807870 () List!25231)

(assert (=> b!2169391 (= res!933775 (= lt!807870 lt!807872))))

(declare-fun lt!807878 () List!25231)

(declare-fun lt!807879 () List!25231)

(declare-fun ++!6365 (List!25231 List!25231) List!25231)

(assert (=> b!2169391 (= lt!807870 (++!6365 lt!807878 lt!807879))))

(declare-datatypes ((tuple2!24894 0))(
  ( (tuple2!24895 (_1!14817 BalanceConc!16046) (_2!14817 BalanceConc!16046)) )
))
(declare-fun lt!807876 () tuple2!24894)

(assert (=> b!2169391 (= lt!807879 (list!9637 (_2!14817 lt!807876)))))

(assert (=> b!2169391 (= lt!807878 (list!9637 (_1!14817 lt!807876)))))

(declare-datatypes ((tuple2!24896 0))(
  ( (tuple2!24897 (_1!14818 List!25231) (_2!14818 List!25231)) )
))
(declare-fun lt!807877 () tuple2!24896)

(declare-datatypes ((Regex!6006 0))(
  ( (ElementMatch!6006 (c!343759 C!12158)) (Concat!10308 (regOne!12524 Regex!6006) (regTwo!12524 Regex!6006)) (EmptyExpr!6006) (Star!6006 (reg!6335 Regex!6006)) (EmptyLang!6006) (Union!6006 (regOne!12525 Regex!6006) (regTwo!12525 Regex!6006)) )
))
(declare-fun r!12534 () Regex!6006)

(declare-fun findLongestMatch!560 (Regex!6006 List!25231) tuple2!24896)

(assert (=> b!2169391 (= lt!807877 (findLongestMatch!560 r!12534 lt!807872))))

(declare-fun lt!807869 () Int)

(declare-fun size!19649 (BalanceConc!16046) Int)

(assert (=> b!2169391 (= lt!807869 (size!19649 input!5540))))

(declare-fun lt!807873 () Int)

(assert (=> b!2169391 (= lt!807873 (size!19649 totalInput!977))))

(declare-datatypes ((List!25232 0))(
  ( (Nil!25148) (Cons!25148 (h!30549 Regex!6006) (t!197794 List!25232)) )
))
(declare-datatypes ((Context!3152 0))(
  ( (Context!3153 (exprs!2076 List!25232)) )
))
(declare-fun z!4055 () (Set Context!3152))

(declare-fun findLongestMatchZipperSequenceV3!55 ((Set Context!3152) BalanceConc!16046 BalanceConc!16046) tuple2!24894)

(assert (=> b!2169391 (= lt!807876 (findLongestMatchZipperSequenceV3!55 z!4055 input!5540 totalInput!977))))

(declare-fun tp!677095 () Bool)

(declare-fun setRes!18161 () Bool)

(declare-fun e!1387481 () Bool)

(declare-fun setNonEmpty!18161 () Bool)

(declare-fun setElem!18161 () Context!3152)

(declare-fun inv!33360 (Context!3152) Bool)

(assert (=> setNonEmpty!18161 (= setRes!18161 (and tp!677095 (inv!33360 setElem!18161) e!1387481))))

(declare-fun setRest!18161 () (Set Context!3152))

(assert (=> setNonEmpty!18161 (= z!4055 (set.union (set.insert setElem!18161 (as set.empty (Set Context!3152))) setRest!18161))))

(declare-fun b!2169392 () Bool)

(declare-fun e!1387477 () Bool)

(declare-fun tp!677094 () Bool)

(declare-fun tp!677098 () Bool)

(assert (=> b!2169392 (= e!1387477 (and tp!677094 tp!677098))))

(declare-fun b!2169393 () Bool)

(declare-fun res!933777 () Bool)

(assert (=> b!2169393 (=> (not res!933777) (not e!1387474))))

(declare-datatypes ((List!25233 0))(
  ( (Nil!25149) (Cons!25149 (h!30550 Context!3152) (t!197795 List!25233)) )
))
(declare-fun unfocusZipper!113 (List!25233) Regex!6006)

(declare-fun toList!1189 ((Set Context!3152)) List!25233)

(assert (=> b!2169393 (= res!933777 (= (unfocusZipper!113 (toList!1189 z!4055)) r!12534))))

(declare-fun b!2169394 () Bool)

(declare-fun e!1387476 () Bool)

(declare-fun tp!677093 () Bool)

(declare-fun inv!33361 (Conc!8142) Bool)

(assert (=> b!2169394 (= e!1387476 (and (inv!33361 (c!343758 totalInput!977)) tp!677093))))

(declare-fun b!2169395 () Bool)

(declare-fun tp!677100 () Bool)

(assert (=> b!2169395 (= e!1387481 tp!677100)))

(declare-fun b!2169396 () Bool)

(declare-fun tp!677096 () Bool)

(declare-fun tp!677099 () Bool)

(assert (=> b!2169396 (= e!1387477 (and tp!677096 tp!677099))))

(declare-fun b!2169397 () Bool)

(declare-fun e!1387475 () Bool)

(assert (=> b!2169397 (= e!1387475 (not (>= (- lt!807873 lt!807869) 0)))))

(declare-fun lt!807875 () List!25231)

(declare-fun isPrefix!2122 (List!25231 List!25231) Bool)

(assert (=> b!2169397 (isPrefix!2122 (_1!14818 lt!807877) lt!807875)))

(declare-datatypes ((Unit!38213 0))(
  ( (Unit!38214) )
))
(declare-fun lt!807874 () Unit!38213)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1405 (List!25231 List!25231) Unit!38213)

(assert (=> b!2169397 (= lt!807874 (lemmaConcatTwoListThenFirstIsPrefix!1405 (_1!14818 lt!807877) (_2!14818 lt!807877)))))

(assert (=> b!2169397 (isPrefix!2122 lt!807878 lt!807870)))

(declare-fun lt!807871 () Unit!38213)

(assert (=> b!2169397 (= lt!807871 (lemmaConcatTwoListThenFirstIsPrefix!1405 lt!807878 lt!807879))))

(declare-fun res!933778 () Bool)

(assert (=> start!210372 (=> (not res!933778) (not e!1387474))))

(declare-fun validRegex!2282 (Regex!6006) Bool)

(assert (=> start!210372 (= res!933778 (validRegex!2282 r!12534))))

(assert (=> start!210372 e!1387474))

(assert (=> start!210372 e!1387477))

(declare-fun condSetEmpty!18161 () Bool)

(assert (=> start!210372 (= condSetEmpty!18161 (= z!4055 (as set.empty (Set Context!3152))))))

(assert (=> start!210372 setRes!18161))

(declare-fun inv!33362 (BalanceConc!16046) Bool)

(assert (=> start!210372 (and (inv!33362 totalInput!977) e!1387476)))

(declare-fun e!1387478 () Bool)

(assert (=> start!210372 (and (inv!33362 input!5540) e!1387478)))

(declare-fun b!2169398 () Bool)

(declare-fun tp!677101 () Bool)

(assert (=> b!2169398 (= e!1387478 (and (inv!33361 (c!343758 input!5540)) tp!677101))))

(declare-fun b!2169399 () Bool)

(declare-fun tp_is_empty!9619 () Bool)

(assert (=> b!2169399 (= e!1387477 tp_is_empty!9619)))

(declare-fun setIsEmpty!18161 () Bool)

(assert (=> setIsEmpty!18161 setRes!18161))

(declare-fun b!2169400 () Bool)

(declare-fun tp!677097 () Bool)

(assert (=> b!2169400 (= e!1387477 tp!677097)))

(declare-fun b!2169401 () Bool)

(assert (=> b!2169401 (= e!1387479 e!1387475)))

(declare-fun res!933776 () Bool)

(assert (=> b!2169401 (=> (not res!933776) (not e!1387475))))

(assert (=> b!2169401 (= res!933776 (= lt!807875 lt!807872))))

(assert (=> b!2169401 (= lt!807875 (++!6365 (_1!14818 lt!807877) (_2!14818 lt!807877)))))

(assert (= (and start!210372 res!933778) b!2169393))

(assert (= (and b!2169393 res!933777) b!2169390))

(assert (= (and b!2169390 res!933774) b!2169391))

(assert (= (and b!2169391 res!933775) b!2169401))

(assert (= (and b!2169401 res!933776) b!2169397))

(assert (= (and start!210372 (is-ElementMatch!6006 r!12534)) b!2169399))

(assert (= (and start!210372 (is-Concat!10308 r!12534)) b!2169396))

(assert (= (and start!210372 (is-Star!6006 r!12534)) b!2169400))

(assert (= (and start!210372 (is-Union!6006 r!12534)) b!2169392))

(assert (= (and start!210372 condSetEmpty!18161) setIsEmpty!18161))

(assert (= (and start!210372 (not condSetEmpty!18161)) setNonEmpty!18161))

(assert (= setNonEmpty!18161 b!2169395))

(assert (= start!210372 b!2169394))

(assert (= start!210372 b!2169398))

(declare-fun m!2610403 () Bool)

(assert (=> b!2169390 m!2610403))

(assert (=> b!2169390 m!2610403))

(declare-fun m!2610405 () Bool)

(assert (=> b!2169390 m!2610405))

(declare-fun m!2610407 () Bool)

(assert (=> b!2169390 m!2610407))

(declare-fun m!2610409 () Bool)

(assert (=> b!2169393 m!2610409))

(assert (=> b!2169393 m!2610409))

(declare-fun m!2610411 () Bool)

(assert (=> b!2169393 m!2610411))

(declare-fun m!2610413 () Bool)

(assert (=> b!2169394 m!2610413))

(declare-fun m!2610415 () Bool)

(assert (=> b!2169398 m!2610415))

(declare-fun m!2610417 () Bool)

(assert (=> b!2169401 m!2610417))

(declare-fun m!2610419 () Bool)

(assert (=> start!210372 m!2610419))

(declare-fun m!2610421 () Bool)

(assert (=> start!210372 m!2610421))

(declare-fun m!2610423 () Bool)

(assert (=> start!210372 m!2610423))

(declare-fun m!2610425 () Bool)

(assert (=> b!2169391 m!2610425))

(declare-fun m!2610427 () Bool)

(assert (=> b!2169391 m!2610427))

(declare-fun m!2610429 () Bool)

(assert (=> b!2169391 m!2610429))

(declare-fun m!2610431 () Bool)

(assert (=> b!2169391 m!2610431))

(declare-fun m!2610433 () Bool)

(assert (=> b!2169391 m!2610433))

(declare-fun m!2610435 () Bool)

(assert (=> b!2169391 m!2610435))

(declare-fun m!2610437 () Bool)

(assert (=> b!2169391 m!2610437))

(declare-fun m!2610439 () Bool)

(assert (=> setNonEmpty!18161 m!2610439))

(declare-fun m!2610441 () Bool)

(assert (=> b!2169397 m!2610441))

(declare-fun m!2610443 () Bool)

(assert (=> b!2169397 m!2610443))

(declare-fun m!2610445 () Bool)

(assert (=> b!2169397 m!2610445))

(declare-fun m!2610447 () Bool)

(assert (=> b!2169397 m!2610447))

(push 1)

(assert (not start!210372))

(assert (not b!2169400))

(assert (not b!2169395))

(assert (not b!2169401))

(assert (not b!2169392))

(assert (not setNonEmpty!18161))

(assert (not b!2169390))

(assert (not b!2169391))

(assert (not b!2169394))

(assert tp_is_empty!9619)

(assert (not b!2169398))

(assert (not b!2169397))

(assert (not b!2169396))

(assert (not b!2169393))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!649645 () Bool)

(declare-fun c!343764 () Bool)

(assert (=> d!649645 (= c!343764 (is-Node!8142 (c!343758 totalInput!977)))))

(declare-fun e!1387510 () Bool)

(assert (=> d!649645 (= (inv!33361 (c!343758 totalInput!977)) e!1387510)))

(declare-fun b!2169444 () Bool)

(declare-fun inv!33366 (Conc!8142) Bool)

(assert (=> b!2169444 (= e!1387510 (inv!33366 (c!343758 totalInput!977)))))

(declare-fun b!2169445 () Bool)

(declare-fun e!1387511 () Bool)

(assert (=> b!2169445 (= e!1387510 e!1387511)))

(declare-fun res!933796 () Bool)

(assert (=> b!2169445 (= res!933796 (not (is-Leaf!11913 (c!343758 totalInput!977))))))

(assert (=> b!2169445 (=> res!933796 e!1387511)))

(declare-fun b!2169446 () Bool)

(declare-fun inv!33367 (Conc!8142) Bool)

(assert (=> b!2169446 (= e!1387511 (inv!33367 (c!343758 totalInput!977)))))

(assert (= (and d!649645 c!343764) b!2169444))

(assert (= (and d!649645 (not c!343764)) b!2169445))

(assert (= (and b!2169445 (not res!933796)) b!2169446))

(declare-fun m!2610495 () Bool)

(assert (=> b!2169444 m!2610495))

(declare-fun m!2610497 () Bool)

(assert (=> b!2169446 m!2610497))

(assert (=> b!2169394 d!649645))

(declare-fun d!649647 () Bool)

(declare-fun lt!807915 () Regex!6006)

(assert (=> d!649647 (validRegex!2282 lt!807915)))

(declare-fun generalisedUnion!509 (List!25232) Regex!6006)

(declare-fun unfocusZipperList!33 (List!25233) List!25232)

(assert (=> d!649647 (= lt!807915 (generalisedUnion!509 (unfocusZipperList!33 (toList!1189 z!4055))))))

(assert (=> d!649647 (= (unfocusZipper!113 (toList!1189 z!4055)) lt!807915)))

(declare-fun bs!446831 () Bool)

(assert (= bs!446831 d!649647))

(declare-fun m!2610499 () Bool)

(assert (=> bs!446831 m!2610499))

(assert (=> bs!446831 m!2610409))

(declare-fun m!2610501 () Bool)

(assert (=> bs!446831 m!2610501))

(assert (=> bs!446831 m!2610501))

(declare-fun m!2610503 () Bool)

(assert (=> bs!446831 m!2610503))

(assert (=> b!2169393 d!649647))

(declare-fun d!649651 () Bool)

(declare-fun e!1387514 () Bool)

(assert (=> d!649651 e!1387514))

(declare-fun res!933799 () Bool)

(assert (=> d!649651 (=> (not res!933799) (not e!1387514))))

(declare-fun lt!807918 () List!25233)

(declare-fun noDuplicate!286 (List!25233) Bool)

(assert (=> d!649651 (= res!933799 (noDuplicate!286 lt!807918))))

(declare-fun choose!12778 ((Set Context!3152)) List!25233)

(assert (=> d!649651 (= lt!807918 (choose!12778 z!4055))))

(assert (=> d!649651 (= (toList!1189 z!4055) lt!807918)))

(declare-fun b!2169449 () Bool)

(declare-fun content!3412 (List!25233) (Set Context!3152))

(assert (=> b!2169449 (= e!1387514 (= (content!3412 lt!807918) z!4055))))

(assert (= (and d!649651 res!933799) b!2169449))

(declare-fun m!2610505 () Bool)

(assert (=> d!649651 m!2610505))

(declare-fun m!2610507 () Bool)

(assert (=> d!649651 m!2610507))

(declare-fun m!2610509 () Bool)

(assert (=> b!2169449 m!2610509))

(assert (=> b!2169393 d!649651))

(declare-fun d!649653 () Bool)

(declare-fun list!9639 (Conc!8142) List!25231)

(assert (=> d!649653 (= (list!9637 (_2!14817 lt!807876)) (list!9639 (c!343758 (_2!14817 lt!807876))))))

(declare-fun bs!446832 () Bool)

(assert (= bs!446832 d!649653))

(declare-fun m!2610511 () Bool)

(assert (=> bs!446832 m!2610511))

(assert (=> b!2169391 d!649653))

(declare-fun d!649655 () Bool)

(declare-fun lt!807921 () Int)

(declare-fun size!19651 (List!25231) Int)

(assert (=> d!649655 (= lt!807921 (size!19651 (list!9637 totalInput!977)))))

(declare-fun size!19652 (Conc!8142) Int)

(assert (=> d!649655 (= lt!807921 (size!19652 (c!343758 totalInput!977)))))

(assert (=> d!649655 (= (size!19649 totalInput!977) lt!807921)))

(declare-fun bs!446833 () Bool)

(assert (= bs!446833 d!649655))

(assert (=> bs!446833 m!2610403))

(assert (=> bs!446833 m!2610403))

(declare-fun m!2610513 () Bool)

(assert (=> bs!446833 m!2610513))

(declare-fun m!2610515 () Bool)

(assert (=> bs!446833 m!2610515))

(assert (=> b!2169391 d!649655))

(declare-fun d!649657 () Bool)

(declare-fun lt!807948 () tuple2!24896)

(assert (=> d!649657 (= (++!6365 (_1!14818 lt!807948) (_2!14818 lt!807948)) lt!807872)))

(declare-fun findLongestMatchInner!635 (Regex!6006 List!25231 Int List!25231 List!25231 Int) tuple2!24896)

(declare-fun sizeTr!109 (List!25231 Int) Int)

(assert (=> d!649657 (= lt!807948 (findLongestMatchInner!635 r!12534 Nil!25147 0 lt!807872 lt!807872 (sizeTr!109 lt!807872 0)))))

(declare-fun lt!807944 () Unit!38213)

(declare-fun lt!807943 () Unit!38213)

(assert (=> d!649657 (= lt!807944 lt!807943)))

(declare-fun lt!807949 () List!25231)

(declare-fun lt!807950 () Int)

(assert (=> d!649657 (= (sizeTr!109 lt!807949 lt!807950) (+ (size!19651 lt!807949) lt!807950))))

(declare-fun lemmaSizeTrEqualsSize!109 (List!25231 Int) Unit!38213)

(assert (=> d!649657 (= lt!807943 (lemmaSizeTrEqualsSize!109 lt!807949 lt!807950))))

(assert (=> d!649657 (= lt!807950 0)))

(assert (=> d!649657 (= lt!807949 Nil!25147)))

(declare-fun lt!807947 () Unit!38213)

(declare-fun lt!807945 () Unit!38213)

(assert (=> d!649657 (= lt!807947 lt!807945)))

(declare-fun lt!807946 () Int)

(assert (=> d!649657 (= (sizeTr!109 lt!807872 lt!807946) (+ (size!19651 lt!807872) lt!807946))))

(assert (=> d!649657 (= lt!807945 (lemmaSizeTrEqualsSize!109 lt!807872 lt!807946))))

(assert (=> d!649657 (= lt!807946 0)))

(assert (=> d!649657 (validRegex!2282 r!12534)))

(assert (=> d!649657 (= (findLongestMatch!560 r!12534 lt!807872) lt!807948)))

(declare-fun bs!446835 () Bool)

(assert (= bs!446835 d!649657))

(declare-fun m!2610531 () Bool)

(assert (=> bs!446835 m!2610531))

(declare-fun m!2610535 () Bool)

(assert (=> bs!446835 m!2610535))

(assert (=> bs!446835 m!2610419))

(declare-fun m!2610537 () Bool)

(assert (=> bs!446835 m!2610537))

(declare-fun m!2610541 () Bool)

(assert (=> bs!446835 m!2610541))

(declare-fun m!2610543 () Bool)

(assert (=> bs!446835 m!2610543))

(declare-fun m!2610545 () Bool)

(assert (=> bs!446835 m!2610545))

(declare-fun m!2610547 () Bool)

(assert (=> bs!446835 m!2610547))

(assert (=> bs!446835 m!2610537))

(declare-fun m!2610549 () Bool)

(assert (=> bs!446835 m!2610549))

(declare-fun m!2610551 () Bool)

(assert (=> bs!446835 m!2610551))

(assert (=> b!2169391 d!649657))

(declare-fun d!649663 () Bool)

(assert (=> d!649663 (= (list!9637 (_1!14817 lt!807876)) (list!9639 (c!343758 (_1!14817 lt!807876))))))

(declare-fun bs!446836 () Bool)

(assert (= bs!446836 d!649663))

(declare-fun m!2610553 () Bool)

(assert (=> bs!446836 m!2610553))

(assert (=> b!2169391 d!649663))

(declare-fun lt!807956 () List!25231)

(declare-fun b!2169477 () Bool)

(declare-fun e!1387532 () Bool)

(assert (=> b!2169477 (= e!1387532 (or (not (= lt!807879 Nil!25147)) (= lt!807956 lt!807878)))))

(declare-fun b!2169475 () Bool)

(declare-fun e!1387531 () List!25231)

(assert (=> b!2169475 (= e!1387531 (Cons!25147 (h!30548 lt!807878) (++!6365 (t!197793 lt!807878) lt!807879)))))

(declare-fun b!2169476 () Bool)

(declare-fun res!933821 () Bool)

(assert (=> b!2169476 (=> (not res!933821) (not e!1387532))))

(assert (=> b!2169476 (= res!933821 (= (size!19651 lt!807956) (+ (size!19651 lt!807878) (size!19651 lt!807879))))))

(declare-fun b!2169474 () Bool)

(assert (=> b!2169474 (= e!1387531 lt!807879)))

(declare-fun d!649665 () Bool)

(assert (=> d!649665 e!1387532))

(declare-fun res!933820 () Bool)

(assert (=> d!649665 (=> (not res!933820) (not e!1387532))))

(declare-fun content!3413 (List!25231) (Set C!12158))

(assert (=> d!649665 (= res!933820 (= (content!3413 lt!807956) (set.union (content!3413 lt!807878) (content!3413 lt!807879))))))

(assert (=> d!649665 (= lt!807956 e!1387531)))

(declare-fun c!343767 () Bool)

(assert (=> d!649665 (= c!343767 (is-Nil!25147 lt!807878))))

(assert (=> d!649665 (= (++!6365 lt!807878 lt!807879) lt!807956)))

(assert (= (and d!649665 c!343767) b!2169474))

(assert (= (and d!649665 (not c!343767)) b!2169475))

(assert (= (and d!649665 res!933820) b!2169476))

(assert (= (and b!2169476 res!933821) b!2169477))

(declare-fun m!2610575 () Bool)

(assert (=> b!2169475 m!2610575))

(declare-fun m!2610577 () Bool)

(assert (=> b!2169476 m!2610577))

(declare-fun m!2610579 () Bool)

(assert (=> b!2169476 m!2610579))

(declare-fun m!2610581 () Bool)

(assert (=> b!2169476 m!2610581))

(declare-fun m!2610583 () Bool)

(assert (=> d!649665 m!2610583))

(declare-fun m!2610585 () Bool)

(assert (=> d!649665 m!2610585))

(declare-fun m!2610587 () Bool)

(assert (=> d!649665 m!2610587))

(assert (=> b!2169391 d!649665))

(declare-fun d!649673 () Bool)

(declare-fun lt!807957 () Int)

(assert (=> d!649673 (= lt!807957 (size!19651 (list!9637 input!5540)))))

(assert (=> d!649673 (= lt!807957 (size!19652 (c!343758 input!5540)))))

(assert (=> d!649673 (= (size!19649 input!5540) lt!807957)))

(declare-fun bs!446839 () Bool)

(assert (= bs!446839 d!649673))

(assert (=> bs!446839 m!2610407))

(assert (=> bs!446839 m!2610407))

(declare-fun m!2610589 () Bool)

(assert (=> bs!446839 m!2610589))

(declare-fun m!2610591 () Bool)

(assert (=> bs!446839 m!2610591))

(assert (=> b!2169391 d!649673))

(declare-fun b!2169486 () Bool)

(declare-fun e!1387537 () Int)

(declare-fun lt!807969 () Int)

(assert (=> b!2169486 (= e!1387537 (- lt!807969 1))))

(declare-fun b!2169487 () Bool)

(declare-fun e!1387538 () tuple2!24894)

(declare-fun call!130131 () tuple2!24894)

(assert (=> b!2169487 (= e!1387538 call!130131)))

(declare-fun b!2169488 () Bool)

(assert (=> b!2169488 (= e!1387538 call!130131)))

(declare-fun b!2169489 () Bool)

(assert (=> b!2169489 (= e!1387537 (- 1))))

(declare-fun d!649675 () Bool)

(declare-fun lt!807966 () tuple2!24894)

(assert (=> d!649675 (= (++!6365 (list!9637 (_1!14817 lt!807966)) (list!9637 (_2!14817 lt!807966))) (list!9637 input!5540))))

(assert (=> d!649675 (= lt!807966 e!1387538)))

(declare-fun c!343773 () Bool)

(declare-fun lt!807967 () Int)

(assert (=> d!649675 (= c!343773 (< lt!807967 0))))

(declare-fun lt!807968 () Int)

(declare-fun furthestNullablePosition!193 ((Set Context!3152) Int BalanceConc!16046 Int Int) Int)

(assert (=> d!649675 (= lt!807967 (+ (- (furthestNullablePosition!193 z!4055 lt!807969 totalInput!977 lt!807968 e!1387537) lt!807969) 1))))

(declare-fun c!343772 () Bool)

(declare-fun nullableZipper!287 ((Set Context!3152)) Bool)

(assert (=> d!649675 (= c!343772 (nullableZipper!287 z!4055))))

(assert (=> d!649675 (= lt!807969 (- lt!807968 (size!19649 input!5540)))))

(assert (=> d!649675 (= lt!807968 (size!19649 totalInput!977))))

(assert (=> d!649675 (isSuffix!673 (list!9637 input!5540) (list!9637 totalInput!977))))

(assert (=> d!649675 (= (findLongestMatchZipperSequenceV3!55 z!4055 input!5540 totalInput!977) lt!807966)))

(declare-fun bm!130126 () Bool)

(declare-fun splitAt!31 (BalanceConc!16046 Int) tuple2!24894)

(assert (=> bm!130126 (= call!130131 (splitAt!31 input!5540 (ite c!343773 0 lt!807967)))))

(assert (= (and d!649675 c!343772) b!2169486))

(assert (= (and d!649675 (not c!343772)) b!2169489))

(assert (= (and d!649675 c!343773) b!2169488))

(assert (= (and d!649675 (not c!343773)) b!2169487))

(assert (= (or b!2169488 b!2169487) bm!130126))

(declare-fun m!2610593 () Bool)

(assert (=> d!649675 m!2610593))

(assert (=> d!649675 m!2610403))

(assert (=> d!649675 m!2610437))

(declare-fun m!2610595 () Bool)

(assert (=> d!649675 m!2610595))

(declare-fun m!2610597 () Bool)

(assert (=> d!649675 m!2610597))

(declare-fun m!2610599 () Bool)

(assert (=> d!649675 m!2610599))

(declare-fun m!2610601 () Bool)

(assert (=> d!649675 m!2610601))

(assert (=> d!649675 m!2610597))

(assert (=> d!649675 m!2610599))

(assert (=> d!649675 m!2610407))

(assert (=> d!649675 m!2610403))

(declare-fun m!2610603 () Bool)

(assert (=> d!649675 m!2610603))

(assert (=> d!649675 m!2610427))

(assert (=> d!649675 m!2610407))

(declare-fun m!2610605 () Bool)

(assert (=> bm!130126 m!2610605))

(assert (=> b!2169391 d!649675))

(declare-fun d!649677 () Bool)

(declare-fun e!1387541 () Bool)

(assert (=> d!649677 e!1387541))

(declare-fun res!933824 () Bool)

(assert (=> d!649677 (=> res!933824 e!1387541)))

(declare-fun lt!807988 () Bool)

(assert (=> d!649677 (= res!933824 (not lt!807988))))

(declare-fun drop!1229 (List!25231 Int) List!25231)

(assert (=> d!649677 (= lt!807988 (= lt!807872 (drop!1229 (list!9637 totalInput!977) (- (size!19651 (list!9637 totalInput!977)) (size!19651 lt!807872)))))))

(assert (=> d!649677 (= (isSuffix!673 lt!807872 (list!9637 totalInput!977)) lt!807988)))

(declare-fun b!2169492 () Bool)

(assert (=> b!2169492 (= e!1387541 (>= (size!19651 (list!9637 totalInput!977)) (size!19651 lt!807872)))))

(assert (= (and d!649677 (not res!933824)) b!2169492))

(assert (=> d!649677 m!2610403))

(assert (=> d!649677 m!2610513))

(assert (=> d!649677 m!2610547))

(assert (=> d!649677 m!2610403))

(declare-fun m!2610607 () Bool)

(assert (=> d!649677 m!2610607))

(assert (=> b!2169492 m!2610403))

(assert (=> b!2169492 m!2610513))

(assert (=> b!2169492 m!2610547))

(assert (=> b!2169390 d!649677))

(declare-fun d!649679 () Bool)

(assert (=> d!649679 (= (list!9637 totalInput!977) (list!9639 (c!343758 totalInput!977)))))

(declare-fun bs!446840 () Bool)

(assert (= bs!446840 d!649679))

(declare-fun m!2610609 () Bool)

(assert (=> bs!446840 m!2610609))

(assert (=> b!2169390 d!649679))

(declare-fun d!649681 () Bool)

(assert (=> d!649681 (= (list!9637 input!5540) (list!9639 (c!343758 input!5540)))))

(declare-fun bs!446841 () Bool)

(assert (= bs!446841 d!649681))

(declare-fun m!2610611 () Bool)

(assert (=> bs!446841 m!2610611))

(assert (=> b!2169390 d!649681))

(declare-fun b!2169496 () Bool)

(declare-fun e!1387543 () Bool)

(declare-fun lt!807989 () List!25231)

(assert (=> b!2169496 (= e!1387543 (or (not (= (_2!14818 lt!807877) Nil!25147)) (= lt!807989 (_1!14818 lt!807877))))))

(declare-fun b!2169494 () Bool)

(declare-fun e!1387542 () List!25231)

(assert (=> b!2169494 (= e!1387542 (Cons!25147 (h!30548 (_1!14818 lt!807877)) (++!6365 (t!197793 (_1!14818 lt!807877)) (_2!14818 lt!807877))))))

(declare-fun b!2169495 () Bool)

(declare-fun res!933826 () Bool)

(assert (=> b!2169495 (=> (not res!933826) (not e!1387543))))

(assert (=> b!2169495 (= res!933826 (= (size!19651 lt!807989) (+ (size!19651 (_1!14818 lt!807877)) (size!19651 (_2!14818 lt!807877)))))))

(declare-fun b!2169493 () Bool)

(assert (=> b!2169493 (= e!1387542 (_2!14818 lt!807877))))

(declare-fun d!649683 () Bool)

(assert (=> d!649683 e!1387543))

(declare-fun res!933825 () Bool)

(assert (=> d!649683 (=> (not res!933825) (not e!1387543))))

(assert (=> d!649683 (= res!933825 (= (content!3413 lt!807989) (set.union (content!3413 (_1!14818 lt!807877)) (content!3413 (_2!14818 lt!807877)))))))

(assert (=> d!649683 (= lt!807989 e!1387542)))

(declare-fun c!343774 () Bool)

(assert (=> d!649683 (= c!343774 (is-Nil!25147 (_1!14818 lt!807877)))))

(assert (=> d!649683 (= (++!6365 (_1!14818 lt!807877) (_2!14818 lt!807877)) lt!807989)))

(assert (= (and d!649683 c!343774) b!2169493))

(assert (= (and d!649683 (not c!343774)) b!2169494))

(assert (= (and d!649683 res!933825) b!2169495))

(assert (= (and b!2169495 res!933826) b!2169496))

(declare-fun m!2610613 () Bool)

(assert (=> b!2169494 m!2610613))

(declare-fun m!2610615 () Bool)

(assert (=> b!2169495 m!2610615))

(declare-fun m!2610617 () Bool)

(assert (=> b!2169495 m!2610617))

(declare-fun m!2610619 () Bool)

(assert (=> b!2169495 m!2610619))

(declare-fun m!2610621 () Bool)

(assert (=> d!649683 m!2610621))

(declare-fun m!2610623 () Bool)

(assert (=> d!649683 m!2610623))

(declare-fun m!2610625 () Bool)

(assert (=> d!649683 m!2610625))

(assert (=> b!2169401 d!649683))

(declare-fun b!2169515 () Bool)

(declare-fun e!1387559 () Bool)

(declare-fun e!1387558 () Bool)

(assert (=> b!2169515 (= e!1387559 e!1387558)))

(declare-fun res!933837 () Bool)

(assert (=> b!2169515 (=> (not res!933837) (not e!1387558))))

(declare-fun call!130140 () Bool)

(assert (=> b!2169515 (= res!933837 call!130140)))

(declare-fun b!2169516 () Bool)

(declare-fun res!933840 () Bool)

(declare-fun e!1387563 () Bool)

(assert (=> b!2169516 (=> (not res!933840) (not e!1387563))))

(declare-fun call!130139 () Bool)

(assert (=> b!2169516 (= res!933840 call!130139)))

(declare-fun e!1387564 () Bool)

(assert (=> b!2169516 (= e!1387564 e!1387563)))

(declare-fun bm!130133 () Bool)

(declare-fun c!343780 () Bool)

(assert (=> bm!130133 (= call!130139 (validRegex!2282 (ite c!343780 (regOne!12525 r!12534) (regTwo!12524 r!12534))))))

(declare-fun b!2169517 () Bool)

(declare-fun e!1387562 () Bool)

(declare-fun e!1387561 () Bool)

(assert (=> b!2169517 (= e!1387562 e!1387561)))

(declare-fun res!933839 () Bool)

(declare-fun nullable!1693 (Regex!6006) Bool)

(assert (=> b!2169517 (= res!933839 (not (nullable!1693 (reg!6335 r!12534))))))

(assert (=> b!2169517 (=> (not res!933839) (not e!1387561))))

(declare-fun b!2169518 () Bool)

(declare-fun call!130138 () Bool)

(assert (=> b!2169518 (= e!1387561 call!130138)))

(declare-fun b!2169519 () Bool)

(declare-fun res!933838 () Bool)

(assert (=> b!2169519 (=> res!933838 e!1387559)))

(assert (=> b!2169519 (= res!933838 (not (is-Concat!10308 r!12534)))))

(assert (=> b!2169519 (= e!1387564 e!1387559)))

(declare-fun b!2169520 () Bool)

(assert (=> b!2169520 (= e!1387563 call!130140)))

(declare-fun c!343779 () Bool)

(declare-fun bm!130134 () Bool)

(assert (=> bm!130134 (= call!130138 (validRegex!2282 (ite c!343779 (reg!6335 r!12534) (ite c!343780 (regTwo!12525 r!12534) (regOne!12524 r!12534)))))))

(declare-fun b!2169521 () Bool)

(assert (=> b!2169521 (= e!1387562 e!1387564)))

(assert (=> b!2169521 (= c!343780 (is-Union!6006 r!12534))))

(declare-fun b!2169522 () Bool)

(assert (=> b!2169522 (= e!1387558 call!130139)))

(declare-fun b!2169523 () Bool)

(declare-fun e!1387560 () Bool)

(assert (=> b!2169523 (= e!1387560 e!1387562)))

(assert (=> b!2169523 (= c!343779 (is-Star!6006 r!12534))))

(declare-fun bm!130135 () Bool)

(assert (=> bm!130135 (= call!130140 call!130138)))

(declare-fun d!649685 () Bool)

(declare-fun res!933841 () Bool)

(assert (=> d!649685 (=> res!933841 e!1387560)))

(assert (=> d!649685 (= res!933841 (is-ElementMatch!6006 r!12534))))

(assert (=> d!649685 (= (validRegex!2282 r!12534) e!1387560)))

(assert (= (and d!649685 (not res!933841)) b!2169523))

(assert (= (and b!2169523 c!343779) b!2169517))

(assert (= (and b!2169523 (not c!343779)) b!2169521))

(assert (= (and b!2169517 res!933839) b!2169518))

(assert (= (and b!2169521 c!343780) b!2169516))

(assert (= (and b!2169521 (not c!343780)) b!2169519))

(assert (= (and b!2169516 res!933840) b!2169520))

(assert (= (and b!2169519 (not res!933838)) b!2169515))

(assert (= (and b!2169515 res!933837) b!2169522))

(assert (= (or b!2169520 b!2169515) bm!130135))

(assert (= (or b!2169516 b!2169522) bm!130133))

(assert (= (or b!2169518 bm!130135) bm!130134))

(declare-fun m!2610645 () Bool)

(assert (=> bm!130133 m!2610645))

(declare-fun m!2610649 () Bool)

(assert (=> b!2169517 m!2610649))

(declare-fun m!2610653 () Bool)

(assert (=> bm!130134 m!2610653))

(assert (=> start!210372 d!649685))

(declare-fun d!649690 () Bool)

(declare-fun isBalanced!2526 (Conc!8142) Bool)

(assert (=> d!649690 (= (inv!33362 totalInput!977) (isBalanced!2526 (c!343758 totalInput!977)))))

(declare-fun bs!446844 () Bool)

(assert (= bs!446844 d!649690))

(declare-fun m!2610655 () Bool)

(assert (=> bs!446844 m!2610655))

(assert (=> start!210372 d!649690))

(declare-fun d!649693 () Bool)

(assert (=> d!649693 (= (inv!33362 input!5540) (isBalanced!2526 (c!343758 input!5540)))))

(declare-fun bs!446845 () Bool)

(assert (= bs!446845 d!649693))

(declare-fun m!2610657 () Bool)

(assert (=> bs!446845 m!2610657))

(assert (=> start!210372 d!649693))

(declare-fun d!649695 () Bool)

(declare-fun lambda!81770 () Int)

(declare-fun forall!5165 (List!25232 Int) Bool)

(assert (=> d!649695 (= (inv!33360 setElem!18161) (forall!5165 (exprs!2076 setElem!18161) lambda!81770))))

(declare-fun bs!446848 () Bool)

(assert (= bs!446848 d!649695))

(declare-fun m!2610711 () Bool)

(assert (=> bs!446848 m!2610711))

(assert (=> setNonEmpty!18161 d!649695))

(declare-fun d!649711 () Bool)

(declare-fun c!343795 () Bool)

(assert (=> d!649711 (= c!343795 (is-Node!8142 (c!343758 input!5540)))))

(declare-fun e!1387587 () Bool)

(assert (=> d!649711 (= (inv!33361 (c!343758 input!5540)) e!1387587)))

(declare-fun b!2169564 () Bool)

(assert (=> b!2169564 (= e!1387587 (inv!33366 (c!343758 input!5540)))))

(declare-fun b!2169565 () Bool)

(declare-fun e!1387588 () Bool)

(assert (=> b!2169565 (= e!1387587 e!1387588)))

(declare-fun res!933854 () Bool)

(assert (=> b!2169565 (= res!933854 (not (is-Leaf!11913 (c!343758 input!5540))))))

(assert (=> b!2169565 (=> res!933854 e!1387588)))

(declare-fun b!2169566 () Bool)

(assert (=> b!2169566 (= e!1387588 (inv!33367 (c!343758 input!5540)))))

(assert (= (and d!649711 c!343795) b!2169564))

(assert (= (and d!649711 (not c!343795)) b!2169565))

(assert (= (and b!2169565 (not res!933854)) b!2169566))

(declare-fun m!2610713 () Bool)

(assert (=> b!2169564 m!2610713))

(declare-fun m!2610715 () Bool)

(assert (=> b!2169566 m!2610715))

(assert (=> b!2169398 d!649711))

(declare-fun b!2169577 () Bool)

(declare-fun e!1387596 () Bool)

(declare-fun tail!3115 (List!25231) List!25231)

(assert (=> b!2169577 (= e!1387596 (isPrefix!2122 (tail!3115 (_1!14818 lt!807877)) (tail!3115 lt!807875)))))

(declare-fun d!649713 () Bool)

(declare-fun e!1387595 () Bool)

(assert (=> d!649713 e!1387595))

(declare-fun res!933864 () Bool)

(assert (=> d!649713 (=> res!933864 e!1387595)))

(declare-fun lt!808020 () Bool)

(assert (=> d!649713 (= res!933864 (not lt!808020))))

(declare-fun e!1387597 () Bool)

(assert (=> d!649713 (= lt!808020 e!1387597)))

(declare-fun res!933865 () Bool)

(assert (=> d!649713 (=> res!933865 e!1387597)))

(assert (=> d!649713 (= res!933865 (is-Nil!25147 (_1!14818 lt!807877)))))

(assert (=> d!649713 (= (isPrefix!2122 (_1!14818 lt!807877) lt!807875) lt!808020)))

(declare-fun b!2169576 () Bool)

(declare-fun res!933866 () Bool)

(assert (=> b!2169576 (=> (not res!933866) (not e!1387596))))

(declare-fun head!4643 (List!25231) C!12158)

(assert (=> b!2169576 (= res!933866 (= (head!4643 (_1!14818 lt!807877)) (head!4643 lt!807875)))))

(declare-fun b!2169578 () Bool)

(assert (=> b!2169578 (= e!1387595 (>= (size!19651 lt!807875) (size!19651 (_1!14818 lt!807877))))))

(declare-fun b!2169575 () Bool)

(assert (=> b!2169575 (= e!1387597 e!1387596)))

(declare-fun res!933863 () Bool)

(assert (=> b!2169575 (=> (not res!933863) (not e!1387596))))

(assert (=> b!2169575 (= res!933863 (not (is-Nil!25147 lt!807875)))))

(assert (= (and d!649713 (not res!933865)) b!2169575))

(assert (= (and b!2169575 res!933863) b!2169576))

(assert (= (and b!2169576 res!933866) b!2169577))

(assert (= (and d!649713 (not res!933864)) b!2169578))

(declare-fun m!2610717 () Bool)

(assert (=> b!2169577 m!2610717))

(declare-fun m!2610719 () Bool)

(assert (=> b!2169577 m!2610719))

(assert (=> b!2169577 m!2610717))

(assert (=> b!2169577 m!2610719))

(declare-fun m!2610721 () Bool)

(assert (=> b!2169577 m!2610721))

(declare-fun m!2610723 () Bool)

(assert (=> b!2169576 m!2610723))

(declare-fun m!2610725 () Bool)

(assert (=> b!2169576 m!2610725))

(declare-fun m!2610727 () Bool)

(assert (=> b!2169578 m!2610727))

(assert (=> b!2169578 m!2610617))

(assert (=> b!2169397 d!649713))

(declare-fun d!649715 () Bool)

(assert (=> d!649715 (isPrefix!2122 (_1!14818 lt!807877) (++!6365 (_1!14818 lt!807877) (_2!14818 lt!807877)))))

(declare-fun lt!808023 () Unit!38213)

(declare-fun choose!12779 (List!25231 List!25231) Unit!38213)

(assert (=> d!649715 (= lt!808023 (choose!12779 (_1!14818 lt!807877) (_2!14818 lt!807877)))))

(assert (=> d!649715 (= (lemmaConcatTwoListThenFirstIsPrefix!1405 (_1!14818 lt!807877) (_2!14818 lt!807877)) lt!808023)))

(declare-fun bs!446849 () Bool)

(assert (= bs!446849 d!649715))

(assert (=> bs!446849 m!2610417))

(assert (=> bs!446849 m!2610417))

(declare-fun m!2610729 () Bool)

(assert (=> bs!446849 m!2610729))

(declare-fun m!2610731 () Bool)

(assert (=> bs!446849 m!2610731))

(assert (=> b!2169397 d!649715))

(declare-fun b!2169581 () Bool)

(declare-fun e!1387599 () Bool)

(assert (=> b!2169581 (= e!1387599 (isPrefix!2122 (tail!3115 lt!807878) (tail!3115 lt!807870)))))

(declare-fun d!649717 () Bool)

(declare-fun e!1387598 () Bool)

(assert (=> d!649717 e!1387598))

(declare-fun res!933868 () Bool)

(assert (=> d!649717 (=> res!933868 e!1387598)))

(declare-fun lt!808024 () Bool)

(assert (=> d!649717 (= res!933868 (not lt!808024))))

(declare-fun e!1387600 () Bool)

(assert (=> d!649717 (= lt!808024 e!1387600)))

(declare-fun res!933869 () Bool)

(assert (=> d!649717 (=> res!933869 e!1387600)))

(assert (=> d!649717 (= res!933869 (is-Nil!25147 lt!807878))))

(assert (=> d!649717 (= (isPrefix!2122 lt!807878 lt!807870) lt!808024)))

(declare-fun b!2169580 () Bool)

(declare-fun res!933870 () Bool)

(assert (=> b!2169580 (=> (not res!933870) (not e!1387599))))

(assert (=> b!2169580 (= res!933870 (= (head!4643 lt!807878) (head!4643 lt!807870)))))

(declare-fun b!2169582 () Bool)

(assert (=> b!2169582 (= e!1387598 (>= (size!19651 lt!807870) (size!19651 lt!807878)))))

(declare-fun b!2169579 () Bool)

(assert (=> b!2169579 (= e!1387600 e!1387599)))

(declare-fun res!933867 () Bool)

(assert (=> b!2169579 (=> (not res!933867) (not e!1387599))))

(assert (=> b!2169579 (= res!933867 (not (is-Nil!25147 lt!807870)))))

(assert (= (and d!649717 (not res!933869)) b!2169579))

(assert (= (and b!2169579 res!933867) b!2169580))

(assert (= (and b!2169580 res!933870) b!2169581))

(assert (= (and d!649717 (not res!933868)) b!2169582))

(declare-fun m!2610733 () Bool)

(assert (=> b!2169581 m!2610733))

(declare-fun m!2610735 () Bool)

(assert (=> b!2169581 m!2610735))

(assert (=> b!2169581 m!2610733))

(assert (=> b!2169581 m!2610735))

(declare-fun m!2610737 () Bool)

(assert (=> b!2169581 m!2610737))

(declare-fun m!2610739 () Bool)

(assert (=> b!2169580 m!2610739))

(declare-fun m!2610741 () Bool)

(assert (=> b!2169580 m!2610741))

(declare-fun m!2610743 () Bool)

(assert (=> b!2169582 m!2610743))

(assert (=> b!2169582 m!2610579))

(assert (=> b!2169397 d!649717))

(declare-fun d!649719 () Bool)

(assert (=> d!649719 (isPrefix!2122 lt!807878 (++!6365 lt!807878 lt!807879))))

(declare-fun lt!808025 () Unit!38213)

(assert (=> d!649719 (= lt!808025 (choose!12779 lt!807878 lt!807879))))

(assert (=> d!649719 (= (lemmaConcatTwoListThenFirstIsPrefix!1405 lt!807878 lt!807879) lt!808025)))

(declare-fun bs!446850 () Bool)

(assert (= bs!446850 d!649719))

(assert (=> bs!446850 m!2610433))

(assert (=> bs!446850 m!2610433))

(declare-fun m!2610745 () Bool)

(assert (=> bs!446850 m!2610745))

(declare-fun m!2610747 () Bool)

(assert (=> bs!446850 m!2610747))

(assert (=> b!2169397 d!649719))

(declare-fun e!1387605 () Bool)

(declare-fun tp!677135 () Bool)

(declare-fun b!2169591 () Bool)

(declare-fun tp!677136 () Bool)

(assert (=> b!2169591 (= e!1387605 (and (inv!33361 (left!19328 (c!343758 totalInput!977))) tp!677135 (inv!33361 (right!19658 (c!343758 totalInput!977))) tp!677136))))

(declare-fun b!2169593 () Bool)

(declare-fun e!1387606 () Bool)

(declare-fun tp!677137 () Bool)

(assert (=> b!2169593 (= e!1387606 tp!677137)))

(declare-fun b!2169592 () Bool)

(declare-fun inv!33368 (IArray!16289) Bool)

(assert (=> b!2169592 (= e!1387605 (and (inv!33368 (xs!11084 (c!343758 totalInput!977))) e!1387606))))

(assert (=> b!2169394 (= tp!677093 (and (inv!33361 (c!343758 totalInput!977)) e!1387605))))

(assert (= (and b!2169394 (is-Node!8142 (c!343758 totalInput!977))) b!2169591))

(assert (= b!2169592 b!2169593))

(assert (= (and b!2169394 (is-Leaf!11913 (c!343758 totalInput!977))) b!2169592))

(declare-fun m!2610749 () Bool)

(assert (=> b!2169591 m!2610749))

(declare-fun m!2610751 () Bool)

(assert (=> b!2169591 m!2610751))

(declare-fun m!2610753 () Bool)

(assert (=> b!2169592 m!2610753))

(assert (=> b!2169394 m!2610413))

(declare-fun b!2169598 () Bool)

(declare-fun e!1387609 () Bool)

(declare-fun tp!677142 () Bool)

(declare-fun tp!677143 () Bool)

(assert (=> b!2169598 (= e!1387609 (and tp!677142 tp!677143))))

(assert (=> b!2169395 (= tp!677100 e!1387609)))

(assert (= (and b!2169395 (is-Cons!25148 (exprs!2076 setElem!18161))) b!2169598))

(declare-fun condSetEmpty!18167 () Bool)

(assert (=> setNonEmpty!18161 (= condSetEmpty!18167 (= setRest!18161 (as set.empty (Set Context!3152))))))

(declare-fun setRes!18167 () Bool)

(assert (=> setNonEmpty!18161 (= tp!677095 setRes!18167)))

(declare-fun setIsEmpty!18167 () Bool)

(assert (=> setIsEmpty!18167 setRes!18167))

(declare-fun e!1387612 () Bool)

(declare-fun setNonEmpty!18167 () Bool)

(declare-fun setElem!18167 () Context!3152)

(declare-fun tp!677148 () Bool)

(assert (=> setNonEmpty!18167 (= setRes!18167 (and tp!677148 (inv!33360 setElem!18167) e!1387612))))

(declare-fun setRest!18167 () (Set Context!3152))

(assert (=> setNonEmpty!18167 (= setRest!18161 (set.union (set.insert setElem!18167 (as set.empty (Set Context!3152))) setRest!18167))))

(declare-fun b!2169603 () Bool)

(declare-fun tp!677149 () Bool)

(assert (=> b!2169603 (= e!1387612 tp!677149)))

(assert (= (and setNonEmpty!18161 condSetEmpty!18167) setIsEmpty!18167))

(assert (= (and setNonEmpty!18161 (not condSetEmpty!18167)) setNonEmpty!18167))

(assert (= setNonEmpty!18167 b!2169603))

(declare-fun m!2610755 () Bool)

(assert (=> setNonEmpty!18167 m!2610755))

(declare-fun b!2169616 () Bool)

(declare-fun e!1387615 () Bool)

(declare-fun tp!677161 () Bool)

(assert (=> b!2169616 (= e!1387615 tp!677161)))

(assert (=> b!2169396 (= tp!677096 e!1387615)))

(declare-fun b!2169615 () Bool)

(declare-fun tp!677162 () Bool)

(declare-fun tp!677160 () Bool)

(assert (=> b!2169615 (= e!1387615 (and tp!677162 tp!677160))))

(declare-fun b!2169617 () Bool)

(declare-fun tp!677163 () Bool)

(declare-fun tp!677164 () Bool)

(assert (=> b!2169617 (= e!1387615 (and tp!677163 tp!677164))))

(declare-fun b!2169614 () Bool)

(assert (=> b!2169614 (= e!1387615 tp_is_empty!9619)))

(assert (= (and b!2169396 (is-ElementMatch!6006 (regOne!12524 r!12534))) b!2169614))

(assert (= (and b!2169396 (is-Concat!10308 (regOne!12524 r!12534))) b!2169615))

(assert (= (and b!2169396 (is-Star!6006 (regOne!12524 r!12534))) b!2169616))

(assert (= (and b!2169396 (is-Union!6006 (regOne!12524 r!12534))) b!2169617))

(declare-fun b!2169620 () Bool)

(declare-fun e!1387616 () Bool)

(declare-fun tp!677166 () Bool)

(assert (=> b!2169620 (= e!1387616 tp!677166)))

(assert (=> b!2169396 (= tp!677099 e!1387616)))

(declare-fun b!2169619 () Bool)

(declare-fun tp!677167 () Bool)

(declare-fun tp!677165 () Bool)

(assert (=> b!2169619 (= e!1387616 (and tp!677167 tp!677165))))

(declare-fun b!2169621 () Bool)

(declare-fun tp!677168 () Bool)

(declare-fun tp!677169 () Bool)

(assert (=> b!2169621 (= e!1387616 (and tp!677168 tp!677169))))

(declare-fun b!2169618 () Bool)

(assert (=> b!2169618 (= e!1387616 tp_is_empty!9619)))

(assert (= (and b!2169396 (is-ElementMatch!6006 (regTwo!12524 r!12534))) b!2169618))

(assert (= (and b!2169396 (is-Concat!10308 (regTwo!12524 r!12534))) b!2169619))

(assert (= (and b!2169396 (is-Star!6006 (regTwo!12524 r!12534))) b!2169620))

(assert (= (and b!2169396 (is-Union!6006 (regTwo!12524 r!12534))) b!2169621))

(declare-fun b!2169624 () Bool)

(declare-fun e!1387617 () Bool)

(declare-fun tp!677171 () Bool)

(assert (=> b!2169624 (= e!1387617 tp!677171)))

(assert (=> b!2169400 (= tp!677097 e!1387617)))

(declare-fun b!2169623 () Bool)

(declare-fun tp!677172 () Bool)

(declare-fun tp!677170 () Bool)

(assert (=> b!2169623 (= e!1387617 (and tp!677172 tp!677170))))

(declare-fun b!2169625 () Bool)

(declare-fun tp!677173 () Bool)

(declare-fun tp!677174 () Bool)

(assert (=> b!2169625 (= e!1387617 (and tp!677173 tp!677174))))

(declare-fun b!2169622 () Bool)

(assert (=> b!2169622 (= e!1387617 tp_is_empty!9619)))

(assert (= (and b!2169400 (is-ElementMatch!6006 (reg!6335 r!12534))) b!2169622))

(assert (= (and b!2169400 (is-Concat!10308 (reg!6335 r!12534))) b!2169623))

(assert (= (and b!2169400 (is-Star!6006 (reg!6335 r!12534))) b!2169624))

(assert (= (and b!2169400 (is-Union!6006 (reg!6335 r!12534))) b!2169625))

(declare-fun e!1387618 () Bool)

(declare-fun b!2169626 () Bool)

(declare-fun tp!677176 () Bool)

(declare-fun tp!677175 () Bool)

(assert (=> b!2169626 (= e!1387618 (and (inv!33361 (left!19328 (c!343758 input!5540))) tp!677175 (inv!33361 (right!19658 (c!343758 input!5540))) tp!677176))))

(declare-fun b!2169628 () Bool)

(declare-fun e!1387619 () Bool)

(declare-fun tp!677177 () Bool)

(assert (=> b!2169628 (= e!1387619 tp!677177)))

(declare-fun b!2169627 () Bool)

(assert (=> b!2169627 (= e!1387618 (and (inv!33368 (xs!11084 (c!343758 input!5540))) e!1387619))))

(assert (=> b!2169398 (= tp!677101 (and (inv!33361 (c!343758 input!5540)) e!1387618))))

(assert (= (and b!2169398 (is-Node!8142 (c!343758 input!5540))) b!2169626))

(assert (= b!2169627 b!2169628))

(assert (= (and b!2169398 (is-Leaf!11913 (c!343758 input!5540))) b!2169627))

(declare-fun m!2610757 () Bool)

(assert (=> b!2169626 m!2610757))

(declare-fun m!2610759 () Bool)

(assert (=> b!2169626 m!2610759))

(declare-fun m!2610761 () Bool)

(assert (=> b!2169627 m!2610761))

(assert (=> b!2169398 m!2610415))

(declare-fun b!2169631 () Bool)

(declare-fun e!1387620 () Bool)

(declare-fun tp!677179 () Bool)

(assert (=> b!2169631 (= e!1387620 tp!677179)))

(assert (=> b!2169392 (= tp!677094 e!1387620)))

(declare-fun b!2169630 () Bool)

(declare-fun tp!677180 () Bool)

(declare-fun tp!677178 () Bool)

(assert (=> b!2169630 (= e!1387620 (and tp!677180 tp!677178))))

(declare-fun b!2169632 () Bool)

(declare-fun tp!677181 () Bool)

(declare-fun tp!677182 () Bool)

(assert (=> b!2169632 (= e!1387620 (and tp!677181 tp!677182))))

(declare-fun b!2169629 () Bool)

(assert (=> b!2169629 (= e!1387620 tp_is_empty!9619)))

(assert (= (and b!2169392 (is-ElementMatch!6006 (regOne!12525 r!12534))) b!2169629))

(assert (= (and b!2169392 (is-Concat!10308 (regOne!12525 r!12534))) b!2169630))

(assert (= (and b!2169392 (is-Star!6006 (regOne!12525 r!12534))) b!2169631))

(assert (= (and b!2169392 (is-Union!6006 (regOne!12525 r!12534))) b!2169632))

(declare-fun b!2169635 () Bool)

(declare-fun e!1387621 () Bool)

(declare-fun tp!677184 () Bool)

(assert (=> b!2169635 (= e!1387621 tp!677184)))

(assert (=> b!2169392 (= tp!677098 e!1387621)))

(declare-fun b!2169634 () Bool)

(declare-fun tp!677185 () Bool)

(declare-fun tp!677183 () Bool)

(assert (=> b!2169634 (= e!1387621 (and tp!677185 tp!677183))))

(declare-fun b!2169636 () Bool)

(declare-fun tp!677186 () Bool)

(declare-fun tp!677187 () Bool)

(assert (=> b!2169636 (= e!1387621 (and tp!677186 tp!677187))))

(declare-fun b!2169633 () Bool)

(assert (=> b!2169633 (= e!1387621 tp_is_empty!9619)))

(assert (= (and b!2169392 (is-ElementMatch!6006 (regTwo!12525 r!12534))) b!2169633))

(assert (= (and b!2169392 (is-Concat!10308 (regTwo!12525 r!12534))) b!2169634))

(assert (= (and b!2169392 (is-Star!6006 (regTwo!12525 r!12534))) b!2169635))

(assert (= (and b!2169392 (is-Union!6006 (regTwo!12525 r!12534))) b!2169636))

(push 1)

(assert (not d!649719))

(assert (not b!2169517))

(assert (not b!2169603))

(assert (not d!649695))

(assert (not b!2169591))

(assert (not b!2169620))

(assert (not b!2169634))

(assert (not b!2169625))

(assert (not b!2169635))

(assert (not b!2169592))

(assert (not b!2169580))

(assert (not d!649647))

(assert (not d!649675))

(assert (not d!649677))

(assert (not b!2169636))

(assert (not d!649715))

(assert (not b!2169624))

(assert (not b!2169577))

(assert (not d!649679))

(assert (not d!649651))

(assert (not b!2169621))

(assert (not bm!130134))

(assert (not b!2169444))

(assert (not b!2169598))

(assert (not b!2169628))

(assert (not d!649657))

(assert (not b!2169446))

(assert (not b!2169494))

(assert (not b!2169617))

(assert (not b!2169631))

(assert (not b!2169566))

(assert (not b!2169619))

(assert (not d!649653))

(assert (not d!649690))

(assert (not b!2169576))

(assert (not b!2169626))

(assert (not b!2169476))

(assert (not d!649673))

(assert (not b!2169495))

(assert (not b!2169616))

(assert (not d!649693))

(assert (not b!2169630))

(assert (not d!649683))

(assert (not b!2169623))

(assert (not b!2169564))

(assert (not b!2169593))

(assert (not setNonEmpty!18167))

(assert (not d!649665))

(assert (not d!649655))

(assert (not b!2169627))

(assert (not b!2169492))

(assert (not b!2169449))

(assert (not bm!130126))

(assert (not b!2169632))

(assert (not b!2169475))

(assert (not d!649681))

(assert (not bm!130133))

(assert (not b!2169394))

(assert (not b!2169578))

(assert (not b!2169615))

(assert tp_is_empty!9619)

(assert (not b!2169581))

(assert (not d!649663))

(assert (not b!2169398))

(assert (not b!2169582))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

