; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!92440 () Bool)

(assert start!92440)

(declare-fun bs!256627 () Bool)

(declare-fun b!1085764 () Bool)

(declare-fun b!1085768 () Bool)

(assert (= bs!256627 (and b!1085764 b!1085768)))

(declare-fun lambda!39936 () Int)

(declare-fun lambda!39935 () Int)

(assert (=> bs!256627 (not (= lambda!39936 lambda!39935))))

(assert (=> b!1085764 true))

(declare-datatypes ((C!6574 0))(
  ( (C!6575 (val!3535 Int)) )
))
(declare-datatypes ((Regex!3002 0))(
  ( (ElementMatch!3002 (c!183528 C!6574)) (Concat!4835 (regOne!6516 Regex!3002) (regTwo!6516 Regex!3002)) (EmptyExpr!3002) (Star!3002 (reg!3331 Regex!3002)) (EmptyLang!3002) (Union!3002 (regOne!6517 Regex!3002) (regTwo!6517 Regex!3002)) )
))
(declare-datatypes ((List!10309 0))(
  ( (Nil!10293) (Cons!10293 (h!15694 Regex!3002) (t!101355 List!10309)) )
))
(declare-datatypes ((Context!964 0))(
  ( (Context!965 (exprs!982 List!10309)) )
))
(declare-fun z!1122 () (Set Context!964))

(declare-fun e!686695 () Bool)

(declare-fun exists!147 ((Set Context!964) Int) Bool)

(declare-fun filter!164 ((Set Context!964) Int) (Set Context!964))

(assert (=> b!1085764 (= e!686695 (not (exists!147 (filter!164 z!1122 lambda!39935) lambda!39936)))))

(declare-datatypes ((List!10310 0))(
  ( (Nil!10294) (Cons!10294 (h!15695 Context!964) (t!101356 List!10310)) )
))
(declare-fun lt!363251 () List!10310)

(declare-fun exists!148 (List!10310 Int) Bool)

(assert (=> b!1085764 (exists!148 lt!363251 lambda!39936)))

(declare-datatypes ((Unit!15695 0))(
  ( (Unit!15696) )
))
(declare-fun lt!363250 () Unit!15695)

(declare-datatypes ((List!10311 0))(
  ( (Nil!10295) (Cons!10295 (h!15696 C!6574) (t!101357 List!10311)) )
))
(declare-fun s!2287 () List!10311)

(declare-fun lemmaZipperMatchesExistsMatchingContext!29 (List!10310 List!10311) Unit!15695)

(assert (=> b!1085764 (= lt!363250 (lemmaZipperMatchesExistsMatchingContext!29 lt!363251 s!2287))))

(declare-fun toList!620 ((Set Context!964)) List!10310)

(assert (=> b!1085764 (= lt!363251 (toList!620 (filter!164 z!1122 lambda!39935)))))

(declare-fun b!1085765 () Bool)

(declare-fun e!686697 () Bool)

(declare-fun tp_is_empty!5635 () Bool)

(declare-fun tp!325042 () Bool)

(assert (=> b!1085765 (= e!686697 (and tp_is_empty!5635 tp!325042))))

(declare-fun b!1085766 () Bool)

(declare-fun e!686696 () Bool)

(declare-fun tp!325045 () Bool)

(assert (=> b!1085766 (= e!686696 tp!325045)))

(declare-fun b!1085767 () Bool)

(declare-fun e!686699 () Bool)

(declare-fun tp!325043 () Bool)

(assert (=> b!1085767 (= e!686699 tp!325043)))

(declare-fun setIsEmpty!7551 () Bool)

(declare-fun setRes!7551 () Bool)

(assert (=> setIsEmpty!7551 setRes!7551))

(declare-fun res!482924 () Bool)

(assert (=> b!1085768 (=> (not res!482924) (not e!686695))))

(declare-fun matchZipper!50 ((Set Context!964) List!10311) Bool)

(assert (=> b!1085768 (= res!482924 (matchZipper!50 (filter!164 z!1122 lambda!39935) s!2287))))

(declare-fun res!482926 () Bool)

(assert (=> start!92440 (=> (not res!482926) (not e!686695))))

(declare-fun zl!316 () List!10310)

(assert (=> start!92440 (= res!482926 (= (toList!620 z!1122) zl!316))))

(assert (=> start!92440 e!686695))

(declare-fun condSetEmpty!7551 () Bool)

(assert (=> start!92440 (= condSetEmpty!7551 (= z!1122 (as set.empty (Set Context!964))))))

(assert (=> start!92440 setRes!7551))

(declare-fun e!686698 () Bool)

(assert (=> start!92440 e!686698))

(assert (=> start!92440 e!686697))

(declare-fun b!1085769 () Bool)

(declare-fun tp!325044 () Bool)

(declare-fun inv!13219 (Context!964) Bool)

(assert (=> b!1085769 (= e!686698 (and (inv!13219 (h!15695 zl!316)) e!686699 tp!325044))))

(declare-fun setNonEmpty!7551 () Bool)

(declare-fun tp!325041 () Bool)

(declare-fun setElem!7551 () Context!964)

(assert (=> setNonEmpty!7551 (= setRes!7551 (and tp!325041 (inv!13219 setElem!7551) e!686696))))

(declare-fun setRest!7551 () (Set Context!964))

(assert (=> setNonEmpty!7551 (= z!1122 (set.union (set.insert setElem!7551 (as set.empty (Set Context!964))) setRest!7551))))

(declare-fun b!1085770 () Bool)

(declare-fun res!482925 () Bool)

(assert (=> b!1085770 (=> (not res!482925) (not e!686695))))

(assert (=> b!1085770 (= res!482925 (not (matchZipper!50 z!1122 s!2287)))))

(assert (= (and start!92440 res!482926) b!1085770))

(assert (= (and b!1085770 res!482925) b!1085768))

(assert (= (and b!1085768 res!482924) b!1085764))

(assert (= (and start!92440 condSetEmpty!7551) setIsEmpty!7551))

(assert (= (and start!92440 (not condSetEmpty!7551)) setNonEmpty!7551))

(assert (= setNonEmpty!7551 b!1085766))

(assert (= b!1085769 b!1085767))

(assert (= (and start!92440 (is-Cons!10294 zl!316)) b!1085769))

(assert (= (and start!92440 (is-Cons!10295 s!2287)) b!1085765))

(declare-fun m!1235521 () Bool)

(assert (=> b!1085764 m!1235521))

(declare-fun m!1235523 () Bool)

(assert (=> b!1085764 m!1235523))

(declare-fun m!1235525 () Bool)

(assert (=> b!1085764 m!1235525))

(assert (=> b!1085764 m!1235523))

(declare-fun m!1235527 () Bool)

(assert (=> b!1085764 m!1235527))

(assert (=> b!1085764 m!1235523))

(declare-fun m!1235529 () Bool)

(assert (=> b!1085764 m!1235529))

(assert (=> b!1085764 m!1235523))

(declare-fun m!1235531 () Bool)

(assert (=> start!92440 m!1235531))

(declare-fun m!1235533 () Bool)

(assert (=> setNonEmpty!7551 m!1235533))

(assert (=> b!1085768 m!1235523))

(assert (=> b!1085768 m!1235523))

(declare-fun m!1235535 () Bool)

(assert (=> b!1085768 m!1235535))

(declare-fun m!1235537 () Bool)

(assert (=> b!1085770 m!1235537))

(declare-fun m!1235539 () Bool)

(assert (=> b!1085769 m!1235539))

(push 1)

(assert (not b!1085770))

(assert (not b!1085764))

(assert (not start!92440))

(assert (not b!1085768))

(assert (not b!1085767))

(assert (not b!1085769))

(assert (not setNonEmpty!7551))

(assert (not b!1085766))

(assert tp_is_empty!5635)

(assert (not b!1085765))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!305027 () Bool)

(declare-fun c!183542 () Bool)

(declare-fun isEmpty!6622 (List!10311) Bool)

(assert (=> d!305027 (= c!183542 (isEmpty!6622 s!2287))))

(declare-fun e!686717 () Bool)

(assert (=> d!305027 (= (matchZipper!50 (filter!164 z!1122 lambda!39935) s!2287) e!686717)))

(declare-fun b!1085800 () Bool)

(declare-fun nullableZipper!21 ((Set Context!964)) Bool)

(assert (=> b!1085800 (= e!686717 (nullableZipper!21 (filter!164 z!1122 lambda!39935)))))

(declare-fun b!1085801 () Bool)

(declare-fun derivationStepZipper!19 ((Set Context!964) C!6574) (Set Context!964))

(declare-fun head!2007 (List!10311) C!6574)

(declare-fun tail!1569 (List!10311) List!10311)

(assert (=> b!1085801 (= e!686717 (matchZipper!50 (derivationStepZipper!19 (filter!164 z!1122 lambda!39935) (head!2007 s!2287)) (tail!1569 s!2287)))))

(assert (= (and d!305027 c!183542) b!1085800))

(assert (= (and d!305027 (not c!183542)) b!1085801))

(declare-fun m!1235561 () Bool)

(assert (=> d!305027 m!1235561))

(assert (=> b!1085800 m!1235523))

(declare-fun m!1235563 () Bool)

(assert (=> b!1085800 m!1235563))

(declare-fun m!1235565 () Bool)

(assert (=> b!1085801 m!1235565))

(assert (=> b!1085801 m!1235523))

(assert (=> b!1085801 m!1235565))

(declare-fun m!1235567 () Bool)

(assert (=> b!1085801 m!1235567))

(declare-fun m!1235569 () Bool)

(assert (=> b!1085801 m!1235569))

(assert (=> b!1085801 m!1235567))

(assert (=> b!1085801 m!1235569))

(declare-fun m!1235571 () Bool)

(assert (=> b!1085801 m!1235571))

(assert (=> b!1085768 d!305027))

(declare-fun d!305029 () Bool)

(declare-fun choose!6913 ((Set Context!964) Int) (Set Context!964))

(assert (=> d!305029 (= (filter!164 z!1122 lambda!39935) (choose!6913 z!1122 lambda!39935))))

(declare-fun bs!256629 () Bool)

(assert (= bs!256629 d!305029))

(declare-fun m!1235573 () Bool)

(assert (=> bs!256629 m!1235573))

(assert (=> b!1085768 d!305029))

(declare-fun lt!363260 () Bool)

(declare-fun d!305031 () Bool)

(assert (=> d!305031 (= lt!363260 (exists!148 (toList!620 (filter!164 z!1122 lambda!39935)) lambda!39936))))

(declare-fun choose!6914 ((Set Context!964) Int) Bool)

(assert (=> d!305031 (= lt!363260 (choose!6914 (filter!164 z!1122 lambda!39935) lambda!39936))))

(assert (=> d!305031 (= (exists!147 (filter!164 z!1122 lambda!39935) lambda!39936) lt!363260)))

(declare-fun bs!256630 () Bool)

(assert (= bs!256630 d!305031))

(assert (=> bs!256630 m!1235523))

(assert (=> bs!256630 m!1235527))

(assert (=> bs!256630 m!1235527))

(declare-fun m!1235575 () Bool)

(assert (=> bs!256630 m!1235575))

(assert (=> bs!256630 m!1235523))

(declare-fun m!1235577 () Bool)

(assert (=> bs!256630 m!1235577))

(assert (=> b!1085764 d!305031))

(assert (=> b!1085764 d!305029))

(declare-fun bs!256631 () Bool)

(declare-fun d!305035 () Bool)

(assert (= bs!256631 (and d!305035 b!1085768)))

(declare-fun lambda!39951 () Int)

(assert (=> bs!256631 (not (= lambda!39951 lambda!39935))))

(declare-fun bs!256632 () Bool)

(assert (= bs!256632 (and d!305035 b!1085764)))

(assert (=> bs!256632 (not (= lambda!39951 lambda!39936))))

(assert (=> d!305035 true))

(declare-fun order!6201 () Int)

(declare-fun dynLambda!4512 (Int Int) Int)

(assert (=> d!305035 (< (dynLambda!4512 order!6201 lambda!39936) (dynLambda!4512 order!6201 lambda!39951))))

(declare-fun forall!2259 (List!10310 Int) Bool)

(assert (=> d!305035 (= (exists!148 lt!363251 lambda!39936) (not (forall!2259 lt!363251 lambda!39951)))))

(declare-fun bs!256633 () Bool)

(assert (= bs!256633 d!305035))

(declare-fun m!1235579 () Bool)

(assert (=> bs!256633 m!1235579))

(assert (=> b!1085764 d!305035))

(declare-fun bs!256634 () Bool)

(declare-fun d!305037 () Bool)

(assert (= bs!256634 (and d!305037 b!1085768)))

(declare-fun lambda!39954 () Int)

(assert (=> bs!256634 (not (= lambda!39954 lambda!39935))))

(declare-fun bs!256635 () Bool)

(assert (= bs!256635 (and d!305037 b!1085764)))

(assert (=> bs!256635 (= lambda!39954 lambda!39936)))

(declare-fun bs!256636 () Bool)

(assert (= bs!256636 (and d!305037 d!305035)))

(assert (=> bs!256636 (not (= lambda!39954 lambda!39951))))

(assert (=> d!305037 true))

(assert (=> d!305037 (exists!148 lt!363251 lambda!39954)))

(declare-fun lt!363263 () Unit!15695)

(declare-fun choose!6915 (List!10310 List!10311) Unit!15695)

(assert (=> d!305037 (= lt!363263 (choose!6915 lt!363251 s!2287))))

(declare-fun content!1475 (List!10310) (Set Context!964))

(assert (=> d!305037 (matchZipper!50 (content!1475 lt!363251) s!2287)))

(assert (=> d!305037 (= (lemmaZipperMatchesExistsMatchingContext!29 lt!363251 s!2287) lt!363263)))

(declare-fun bs!256637 () Bool)

(assert (= bs!256637 d!305037))

(declare-fun m!1235581 () Bool)

(assert (=> bs!256637 m!1235581))

(declare-fun m!1235583 () Bool)

(assert (=> bs!256637 m!1235583))

(declare-fun m!1235585 () Bool)

(assert (=> bs!256637 m!1235585))

(assert (=> bs!256637 m!1235585))

(declare-fun m!1235587 () Bool)

(assert (=> bs!256637 m!1235587))

(assert (=> b!1085764 d!305037))

(declare-fun d!305039 () Bool)

(declare-fun e!686723 () Bool)

(assert (=> d!305039 e!686723))

(declare-fun res!482938 () Bool)

(assert (=> d!305039 (=> (not res!482938) (not e!686723))))

(declare-fun lt!363266 () List!10310)

(declare-fun noDuplicate!183 (List!10310) Bool)

(assert (=> d!305039 (= res!482938 (noDuplicate!183 lt!363266))))

(declare-fun choose!6916 ((Set Context!964)) List!10310)

(assert (=> d!305039 (= lt!363266 (choose!6916 (filter!164 z!1122 lambda!39935)))))

(assert (=> d!305039 (= (toList!620 (filter!164 z!1122 lambda!39935)) lt!363266)))

(declare-fun b!1085812 () Bool)

(assert (=> b!1085812 (= e!686723 (= (content!1475 lt!363266) (filter!164 z!1122 lambda!39935)))))

(assert (= (and d!305039 res!482938) b!1085812))

(declare-fun m!1235601 () Bool)

(assert (=> d!305039 m!1235601))

(assert (=> d!305039 m!1235523))

(declare-fun m!1235603 () Bool)

(assert (=> d!305039 m!1235603))

(declare-fun m!1235605 () Bool)

(assert (=> b!1085812 m!1235605))

(assert (=> b!1085764 d!305039))

(declare-fun d!305043 () Bool)

(declare-fun e!686724 () Bool)

(assert (=> d!305043 e!686724))

(declare-fun res!482939 () Bool)

(assert (=> d!305043 (=> (not res!482939) (not e!686724))))

(declare-fun lt!363267 () List!10310)

(assert (=> d!305043 (= res!482939 (noDuplicate!183 lt!363267))))

(assert (=> d!305043 (= lt!363267 (choose!6916 z!1122))))

(assert (=> d!305043 (= (toList!620 z!1122) lt!363267)))

(declare-fun b!1085813 () Bool)

(assert (=> b!1085813 (= e!686724 (= (content!1475 lt!363267) z!1122))))

(assert (= (and d!305043 res!482939) b!1085813))

(declare-fun m!1235607 () Bool)

(assert (=> d!305043 m!1235607))

(declare-fun m!1235609 () Bool)

(assert (=> d!305043 m!1235609))

(declare-fun m!1235611 () Bool)

(assert (=> b!1085813 m!1235611))

(assert (=> start!92440 d!305043))

(declare-fun d!305045 () Bool)

(declare-fun lambda!39957 () Int)

(declare-fun forall!2260 (List!10309 Int) Bool)

(assert (=> d!305045 (= (inv!13219 (h!15695 zl!316)) (forall!2260 (exprs!982 (h!15695 zl!316)) lambda!39957))))

(declare-fun bs!256639 () Bool)

(assert (= bs!256639 d!305045))

(declare-fun m!1235615 () Bool)

(assert (=> bs!256639 m!1235615))

(assert (=> b!1085769 d!305045))

(declare-fun d!305049 () Bool)

(declare-fun c!183548 () Bool)

(assert (=> d!305049 (= c!183548 (isEmpty!6622 s!2287))))

(declare-fun e!686725 () Bool)

(assert (=> d!305049 (= (matchZipper!50 z!1122 s!2287) e!686725)))

(declare-fun b!1085814 () Bool)

(assert (=> b!1085814 (= e!686725 (nullableZipper!21 z!1122))))

(declare-fun b!1085815 () Bool)

(assert (=> b!1085815 (= e!686725 (matchZipper!50 (derivationStepZipper!19 z!1122 (head!2007 s!2287)) (tail!1569 s!2287)))))

(assert (= (and d!305049 c!183548) b!1085814))

(assert (= (and d!305049 (not c!183548)) b!1085815))

(assert (=> d!305049 m!1235561))

(declare-fun m!1235617 () Bool)

(assert (=> b!1085814 m!1235617))

(assert (=> b!1085815 m!1235565))

(assert (=> b!1085815 m!1235565))

(declare-fun m!1235619 () Bool)

(assert (=> b!1085815 m!1235619))

(assert (=> b!1085815 m!1235569))

(assert (=> b!1085815 m!1235619))

(assert (=> b!1085815 m!1235569))

(declare-fun m!1235621 () Bool)

(assert (=> b!1085815 m!1235621))

(assert (=> b!1085770 d!305049))

(declare-fun bs!256640 () Bool)

(declare-fun d!305051 () Bool)

(assert (= bs!256640 (and d!305051 d!305045)))

(declare-fun lambda!39958 () Int)

(assert (=> bs!256640 (= lambda!39958 lambda!39957)))

(assert (=> d!305051 (= (inv!13219 setElem!7551) (forall!2260 (exprs!982 setElem!7551) lambda!39958))))

(declare-fun bs!256641 () Bool)

(assert (= bs!256641 d!305051))

(declare-fun m!1235623 () Bool)

(assert (=> bs!256641 m!1235623))

(assert (=> setNonEmpty!7551 d!305051))

(declare-fun b!1085820 () Bool)

(declare-fun e!686728 () Bool)

(declare-fun tp!325063 () Bool)

(assert (=> b!1085820 (= e!686728 (and tp_is_empty!5635 tp!325063))))

(assert (=> b!1085765 (= tp!325042 e!686728)))

(assert (= (and b!1085765 (is-Cons!10295 (t!101357 s!2287))) b!1085820))

(declare-fun b!1085828 () Bool)

(declare-fun e!686734 () Bool)

(declare-fun tp!325068 () Bool)

(assert (=> b!1085828 (= e!686734 tp!325068)))

(declare-fun tp!325069 () Bool)

(declare-fun b!1085827 () Bool)

(declare-fun e!686733 () Bool)

(assert (=> b!1085827 (= e!686733 (and (inv!13219 (h!15695 (t!101356 zl!316))) e!686734 tp!325069))))

(assert (=> b!1085769 (= tp!325044 e!686733)))

(assert (= b!1085827 b!1085828))

(assert (= (and b!1085769 (is-Cons!10294 (t!101356 zl!316))) b!1085827))

(declare-fun m!1235625 () Bool)

(assert (=> b!1085827 m!1235625))

(declare-fun condSetEmpty!7557 () Bool)

(assert (=> setNonEmpty!7551 (= condSetEmpty!7557 (= setRest!7551 (as set.empty (Set Context!964))))))

(declare-fun setRes!7557 () Bool)

(assert (=> setNonEmpty!7551 (= tp!325041 setRes!7557)))

(declare-fun setIsEmpty!7557 () Bool)

(assert (=> setIsEmpty!7557 setRes!7557))

(declare-fun e!686737 () Bool)

(declare-fun setElem!7557 () Context!964)

(declare-fun tp!325075 () Bool)

(declare-fun setNonEmpty!7557 () Bool)

(assert (=> setNonEmpty!7557 (= setRes!7557 (and tp!325075 (inv!13219 setElem!7557) e!686737))))

(declare-fun setRest!7557 () (Set Context!964))

(assert (=> setNonEmpty!7557 (= setRest!7551 (set.union (set.insert setElem!7557 (as set.empty (Set Context!964))) setRest!7557))))

(declare-fun b!1085833 () Bool)

(declare-fun tp!325074 () Bool)

(assert (=> b!1085833 (= e!686737 tp!325074)))

(assert (= (and setNonEmpty!7551 condSetEmpty!7557) setIsEmpty!7557))

(assert (= (and setNonEmpty!7551 (not condSetEmpty!7557)) setNonEmpty!7557))

(assert (= setNonEmpty!7557 b!1085833))

(declare-fun m!1235627 () Bool)

(assert (=> setNonEmpty!7557 m!1235627))

(declare-fun b!1085838 () Bool)

(declare-fun e!686740 () Bool)

(declare-fun tp!325080 () Bool)

(declare-fun tp!325081 () Bool)

(assert (=> b!1085838 (= e!686740 (and tp!325080 tp!325081))))

(assert (=> b!1085766 (= tp!325045 e!686740)))

(assert (= (and b!1085766 (is-Cons!10293 (exprs!982 setElem!7551))) b!1085838))

(declare-fun b!1085839 () Bool)

(declare-fun e!686741 () Bool)

(declare-fun tp!325082 () Bool)

(declare-fun tp!325083 () Bool)

(assert (=> b!1085839 (= e!686741 (and tp!325082 tp!325083))))

(assert (=> b!1085767 (= tp!325043 e!686741)))

(assert (= (and b!1085767 (is-Cons!10293 (exprs!982 (h!15695 zl!316)))) b!1085839))

(push 1)

(assert (not b!1085815))

(assert (not d!305045))

(assert (not b!1085800))

(assert (not b!1085820))

(assert (not b!1085801))

(assert (not d!305029))

(assert tp_is_empty!5635)

(assert (not b!1085827))

(assert (not d!305043))

(assert (not d!305051))

(assert (not d!305027))

(assert (not b!1085839))

(assert (not d!305031))

(assert (not d!305035))

(assert (not b!1085828))

(assert (not b!1085812))

(assert (not b!1085814))

(assert (not d!305037))

(assert (not d!305039))

(assert (not d!305049))

(assert (not b!1085838))

(assert (not b!1085833))

(assert (not b!1085813))

(assert (not setNonEmpty!7557))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

