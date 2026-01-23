; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!728386 () Bool)

(assert start!728386)

(declare-fun b!7526990 () Bool)

(declare-fun res!3016717 () Bool)

(declare-fun e!4486416 () Bool)

(assert (=> b!7526990 (=> (not res!3016717) (not e!4486416))))

(declare-datatypes ((C!39982 0))(
  ( (C!39983 (val!30431 Int)) )
))
(declare-datatypes ((List!72711 0))(
  ( (Nil!72587) (Cons!72587 (h!79035 C!39982) (t!387418 List!72711)) )
))
(declare-fun input!6727 () List!72711)

(declare-fun isPrefix!6034 (List!72711 List!72711) Bool)

(assert (=> b!7526990 (= res!3016717 (isPrefix!6034 Nil!72587 input!6727))))

(declare-fun b!7526991 () Bool)

(declare-fun e!4486414 () Bool)

(declare-fun tp_is_empty!50011 () Bool)

(assert (=> b!7526991 (= e!4486414 tp_is_empty!50011)))

(declare-fun b!7526992 () Bool)

(declare-fun e!4486412 () Bool)

(declare-fun tp!2187648 () Bool)

(assert (=> b!7526992 (= e!4486412 (and tp_is_empty!50011 tp!2187648))))

(declare-fun b!7526993 () Bool)

(declare-fun tp!2187647 () Bool)

(declare-fun tp!2187645 () Bool)

(assert (=> b!7526993 (= e!4486414 (and tp!2187647 tp!2187645))))

(declare-fun b!7526994 () Bool)

(declare-fun e!4486413 () Bool)

(declare-fun e!4486415 () Bool)

(assert (=> b!7526994 (= e!4486413 e!4486415)))

(declare-fun res!3016721 () Bool)

(assert (=> b!7526994 (=> (not res!3016721) (not e!4486415))))

(declare-fun lt!2639053 () Int)

(declare-fun lt!2639052 () Int)

(assert (=> b!7526994 (= res!3016721 (>= lt!2639053 lt!2639052))))

(declare-fun returnP!57 () List!72711)

(declare-fun size!42324 (List!72711) Int)

(assert (=> b!7526994 (= lt!2639052 (size!42324 returnP!57))))

(declare-fun bigger!57 () List!72711)

(assert (=> b!7526994 (= lt!2639053 (size!42324 bigger!57))))

(declare-fun b!7526995 () Bool)

(assert (=> b!7526995 (= e!4486415 e!4486416)))

(declare-fun res!3016718 () Bool)

(assert (=> b!7526995 (=> (not res!3016718) (not e!4486416))))

(declare-datatypes ((Regex!19828 0))(
  ( (ElementMatch!19828 (c!1390355 C!39982)) (Concat!28673 (regOne!40168 Regex!19828) (regTwo!40168 Regex!19828)) (EmptyExpr!19828) (Star!19828 (reg!20157 Regex!19828)) (EmptyLang!19828) (Union!19828 (regOne!40169 Regex!19828) (regTwo!40169 Regex!19828)) )
))
(declare-fun baseR!93 () Regex!19828)

(declare-fun lt!2639051 () Int)

(declare-datatypes ((tuple2!68798 0))(
  ( (tuple2!68799 (_1!37702 List!72711) (_2!37702 List!72711)) )
))
(declare-fun findLongestMatchInner!2107 (Regex!19828 List!72711 Int List!72711 List!72711 Int) tuple2!68798)

(assert (=> b!7526995 (= res!3016718 (= (_1!37702 (findLongestMatchInner!2107 baseR!93 Nil!72587 lt!2639051 input!6727 input!6727 (size!42324 input!6727))) returnP!57))))

(assert (=> b!7526995 (= lt!2639051 (size!42324 Nil!72587))))

(declare-fun b!7526996 () Bool)

(assert (=> b!7526996 (= e!4486416 (< lt!2639053 lt!2639051))))

(declare-fun b!7526997 () Bool)

(declare-fun e!4486410 () Bool)

(declare-fun tp!2187642 () Bool)

(assert (=> b!7526997 (= e!4486410 (and tp_is_empty!50011 tp!2187642))))

(declare-fun b!7526998 () Bool)

(declare-fun res!3016716 () Bool)

(assert (=> b!7526998 (=> (not res!3016716) (not e!4486413))))

(assert (=> b!7526998 (= res!3016716 (isPrefix!6034 bigger!57 input!6727))))

(declare-fun b!7526999 () Bool)

(declare-fun tp!2187649 () Bool)

(assert (=> b!7526999 (= e!4486414 tp!2187649)))

(declare-fun b!7527001 () Bool)

(declare-fun tp!2187646 () Bool)

(declare-fun tp!2187643 () Bool)

(assert (=> b!7527001 (= e!4486414 (and tp!2187646 tp!2187643))))

(declare-fun b!7527002 () Bool)

(declare-fun res!3016715 () Bool)

(assert (=> b!7527002 (=> (not res!3016715) (not e!4486413))))

(assert (=> b!7527002 (= res!3016715 (isPrefix!6034 returnP!57 input!6727))))

(declare-fun b!7527003 () Bool)

(declare-fun res!3016719 () Bool)

(assert (=> b!7527003 (=> (not res!3016719) (not e!4486416))))

(declare-fun matchR!9432 (Regex!19828 List!72711) Bool)

(assert (=> b!7527003 (= res!3016719 (matchR!9432 baseR!93 bigger!57))))

(declare-fun b!7527004 () Bool)

(declare-fun e!4486411 () Bool)

(declare-fun tp!2187644 () Bool)

(assert (=> b!7527004 (= e!4486411 (and tp_is_empty!50011 tp!2187644))))

(declare-fun b!7527000 () Bool)

(declare-fun res!3016720 () Bool)

(assert (=> b!7527000 (=> (not res!3016720) (not e!4486416))))

(assert (=> b!7527000 (= res!3016720 (not (= lt!2639053 lt!2639052)))))

(declare-fun res!3016722 () Bool)

(assert (=> start!728386 (=> (not res!3016722) (not e!4486413))))

(declare-fun validRegex!10256 (Regex!19828) Bool)

(assert (=> start!728386 (= res!3016722 (validRegex!10256 baseR!93))))

(assert (=> start!728386 e!4486413))

(assert (=> start!728386 e!4486414))

(assert (=> start!728386 e!4486410))

(assert (=> start!728386 e!4486411))

(assert (=> start!728386 e!4486412))

(assert (= (and start!728386 res!3016722) b!7527002))

(assert (= (and b!7527002 res!3016715) b!7526998))

(assert (= (and b!7526998 res!3016716) b!7526994))

(assert (= (and b!7526994 res!3016721) b!7526995))

(assert (= (and b!7526995 res!3016718) b!7527000))

(assert (= (and b!7527000 res!3016720) b!7527003))

(assert (= (and b!7527003 res!3016719) b!7526990))

(assert (= (and b!7526990 res!3016717) b!7526996))

(assert (= (and start!728386 (is-ElementMatch!19828 baseR!93)) b!7526991))

(assert (= (and start!728386 (is-Concat!28673 baseR!93)) b!7526993))

(assert (= (and start!728386 (is-Star!19828 baseR!93)) b!7526999))

(assert (= (and start!728386 (is-Union!19828 baseR!93)) b!7527001))

(assert (= (and start!728386 (is-Cons!72587 returnP!57)) b!7526997))

(assert (= (and start!728386 (is-Cons!72587 input!6727)) b!7527004))

(assert (= (and start!728386 (is-Cons!72587 bigger!57)) b!7526992))

(declare-fun m!8102022 () Bool)

(assert (=> b!7527002 m!8102022))

(declare-fun m!8102024 () Bool)

(assert (=> b!7526995 m!8102024))

(assert (=> b!7526995 m!8102024))

(declare-fun m!8102026 () Bool)

(assert (=> b!7526995 m!8102026))

(declare-fun m!8102028 () Bool)

(assert (=> b!7526995 m!8102028))

(declare-fun m!8102030 () Bool)

(assert (=> b!7526994 m!8102030))

(declare-fun m!8102032 () Bool)

(assert (=> b!7526994 m!8102032))

(declare-fun m!8102034 () Bool)

(assert (=> b!7527003 m!8102034))

(declare-fun m!8102036 () Bool)

(assert (=> b!7526990 m!8102036))

(declare-fun m!8102038 () Bool)

(assert (=> start!728386 m!8102038))

(declare-fun m!8102040 () Bool)

(assert (=> b!7526998 m!8102040))

(push 1)

(assert (not b!7526990))

(assert (not b!7526998))

(assert (not b!7527002))

(assert (not b!7527004))

(assert (not b!7526992))

(assert (not b!7527001))

(assert tp_is_empty!50011)

(assert (not b!7526994))

(assert (not start!728386))

(assert (not b!7526993))

(assert (not b!7527003))

(assert (not b!7526995))

(assert (not b!7526997))

(assert (not b!7526999))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2309470 () Bool)

(declare-fun lt!2639065 () Int)

(assert (=> d!2309470 (>= lt!2639065 0)))

(declare-fun e!4486440 () Int)

(assert (=> d!2309470 (= lt!2639065 e!4486440)))

(declare-fun c!1390359 () Bool)

(assert (=> d!2309470 (= c!1390359 (is-Nil!72587 returnP!57))))

(assert (=> d!2309470 (= (size!42324 returnP!57) lt!2639065)))

(declare-fun b!7527054 () Bool)

(assert (=> b!7527054 (= e!4486440 0)))

(declare-fun b!7527055 () Bool)

(assert (=> b!7527055 (= e!4486440 (+ 1 (size!42324 (t!387418 returnP!57))))))

(assert (= (and d!2309470 c!1390359) b!7527054))

(assert (= (and d!2309470 (not c!1390359)) b!7527055))

(declare-fun m!8102062 () Bool)

(assert (=> b!7527055 m!8102062))

(assert (=> b!7526994 d!2309470))

(declare-fun d!2309474 () Bool)

(declare-fun lt!2639066 () Int)

(assert (=> d!2309474 (>= lt!2639066 0)))

(declare-fun e!4486441 () Int)

(assert (=> d!2309474 (= lt!2639066 e!4486441)))

(declare-fun c!1390360 () Bool)

(assert (=> d!2309474 (= c!1390360 (is-Nil!72587 bigger!57))))

(assert (=> d!2309474 (= (size!42324 bigger!57) lt!2639066)))

(declare-fun b!7527056 () Bool)

(assert (=> b!7527056 (= e!4486441 0)))

(declare-fun b!7527057 () Bool)

(assert (=> b!7527057 (= e!4486441 (+ 1 (size!42324 (t!387418 bigger!57))))))

(assert (= (and d!2309474 c!1390360) b!7527056))

(assert (= (and d!2309474 (not c!1390360)) b!7527057))

(declare-fun m!8102064 () Bool)

(assert (=> b!7527057 m!8102064))

(assert (=> b!7526994 d!2309474))

(declare-fun d!2309476 () Bool)

(declare-fun e!4486448 () Bool)

(assert (=> d!2309476 e!4486448))

(declare-fun res!3016758 () Bool)

(assert (=> d!2309476 (=> res!3016758 e!4486448)))

(declare-fun lt!2639069 () Bool)

(assert (=> d!2309476 (= res!3016758 (not lt!2639069))))

(declare-fun e!4486450 () Bool)

(assert (=> d!2309476 (= lt!2639069 e!4486450)))

(declare-fun res!3016757 () Bool)

(assert (=> d!2309476 (=> res!3016757 e!4486450)))

(assert (=> d!2309476 (= res!3016757 (is-Nil!72587 Nil!72587))))

(assert (=> d!2309476 (= (isPrefix!6034 Nil!72587 input!6727) lt!2639069)))

(declare-fun b!7527066 () Bool)

(declare-fun e!4486449 () Bool)

(assert (=> b!7527066 (= e!4486450 e!4486449)))

(declare-fun res!3016755 () Bool)

(assert (=> b!7527066 (=> (not res!3016755) (not e!4486449))))

(assert (=> b!7527066 (= res!3016755 (not (is-Nil!72587 input!6727)))))

(declare-fun b!7527069 () Bool)

(assert (=> b!7527069 (= e!4486448 (>= (size!42324 input!6727) (size!42324 Nil!72587)))))

(declare-fun b!7527067 () Bool)

(declare-fun res!3016756 () Bool)

(assert (=> b!7527067 (=> (not res!3016756) (not e!4486449))))

(declare-fun head!15448 (List!72711) C!39982)

(assert (=> b!7527067 (= res!3016756 (= (head!15448 Nil!72587) (head!15448 input!6727)))))

(declare-fun b!7527068 () Bool)

(declare-fun tail!15008 (List!72711) List!72711)

(assert (=> b!7527068 (= e!4486449 (isPrefix!6034 (tail!15008 Nil!72587) (tail!15008 input!6727)))))

(assert (= (and d!2309476 (not res!3016757)) b!7527066))

(assert (= (and b!7527066 res!3016755) b!7527067))

(assert (= (and b!7527067 res!3016756) b!7527068))

(assert (= (and d!2309476 (not res!3016758)) b!7527069))

(assert (=> b!7527069 m!8102024))

(assert (=> b!7527069 m!8102028))

(declare-fun m!8102066 () Bool)

(assert (=> b!7527067 m!8102066))

(declare-fun m!8102068 () Bool)

(assert (=> b!7527067 m!8102068))

(declare-fun m!8102070 () Bool)

(assert (=> b!7527068 m!8102070))

(declare-fun m!8102072 () Bool)

(assert (=> b!7527068 m!8102072))

(assert (=> b!7527068 m!8102070))

(assert (=> b!7527068 m!8102072))

(declare-fun m!8102074 () Bool)

(assert (=> b!7527068 m!8102074))

(assert (=> b!7526990 d!2309476))

(declare-fun bm!690524 () Bool)

(declare-datatypes ((Unit!166548 0))(
  ( (Unit!166549) )
))
(declare-fun call!690529 () Unit!166548)

(declare-fun lemmaIsPrefixRefl!3855 (List!72711 List!72711) Unit!166548)

(assert (=> bm!690524 (= call!690529 (lemmaIsPrefixRefl!3855 input!6727 input!6727))))

(declare-fun b!7527098 () Bool)

(declare-fun e!4486468 () Unit!166548)

(declare-fun Unit!166550 () Unit!166548)

(assert (=> b!7527098 (= e!4486468 Unit!166550)))

(declare-fun b!7527099 () Bool)

(declare-fun e!4486471 () tuple2!68798)

(declare-fun e!4486474 () tuple2!68798)

(assert (=> b!7527099 (= e!4486471 e!4486474)))

(declare-fun c!1390376 () Bool)

(assert (=> b!7527099 (= c!1390376 (= lt!2639051 (size!42324 input!6727)))))

(declare-fun b!7527100 () Bool)

(declare-fun e!4486473 () Bool)

(declare-fun lt!2639143 () tuple2!68798)

(assert (=> b!7527100 (= e!4486473 (>= (size!42324 (_1!37702 lt!2639143)) (size!42324 Nil!72587)))))

(declare-fun bm!690525 () Bool)

(declare-fun call!690533 () Bool)

(declare-fun nullable!8646 (Regex!19828) Bool)

(assert (=> bm!690525 (= call!690533 (nullable!8646 baseR!93))))

(declare-fun bm!690526 () Bool)

(declare-fun call!690534 () Bool)

(assert (=> bm!690526 (= call!690534 (isPrefix!6034 input!6727 input!6727))))

(declare-fun b!7527101 () Bool)

(declare-fun e!4486470 () Bool)

(assert (=> b!7527101 (= e!4486470 e!4486473)))

(declare-fun res!3016763 () Bool)

(assert (=> b!7527101 (=> res!3016763 e!4486473)))

(declare-fun isEmpty!41338 (List!72711) Bool)

(assert (=> b!7527101 (= res!3016763 (isEmpty!41338 (_1!37702 lt!2639143)))))

(declare-fun b!7527102 () Bool)

(declare-fun Unit!166551 () Unit!166548)

(assert (=> b!7527102 (= e!4486468 Unit!166551)))

(declare-fun lt!2639140 () Unit!166548)

(assert (=> b!7527102 (= lt!2639140 call!690529)))

(assert (=> b!7527102 call!690534))

(declare-fun lt!2639136 () Unit!166548)

(assert (=> b!7527102 (= lt!2639136 lt!2639140)))

(declare-fun lt!2639145 () Unit!166548)

(declare-fun call!690532 () Unit!166548)

(assert (=> b!7527102 (= lt!2639145 call!690532)))

(assert (=> b!7527102 (= input!6727 Nil!72587)))

(declare-fun lt!2639139 () Unit!166548)

(assert (=> b!7527102 (= lt!2639139 lt!2639145)))

(assert (=> b!7527102 false))

(declare-fun bm!690527 () Bool)

(declare-fun call!690535 () C!39982)

(assert (=> bm!690527 (= call!690535 (head!15448 input!6727))))

(declare-fun d!2309478 () Bool)

(assert (=> d!2309478 e!4486470))

(declare-fun res!3016764 () Bool)

(assert (=> d!2309478 (=> (not res!3016764) (not e!4486470))))

(declare-fun ++!17367 (List!72711 List!72711) List!72711)

(assert (=> d!2309478 (= res!3016764 (= (++!17367 (_1!37702 lt!2639143) (_2!37702 lt!2639143)) input!6727))))

(assert (=> d!2309478 (= lt!2639143 e!4486471)))

(declare-fun c!1390378 () Bool)

(declare-fun lostCause!1630 (Regex!19828) Bool)

(assert (=> d!2309478 (= c!1390378 (lostCause!1630 baseR!93))))

(declare-fun lt!2639133 () Unit!166548)

(declare-fun Unit!166552 () Unit!166548)

(assert (=> d!2309478 (= lt!2639133 Unit!166552)))

(declare-fun getSuffix!3520 (List!72711 List!72711) List!72711)

(assert (=> d!2309478 (= (getSuffix!3520 input!6727 Nil!72587) input!6727)))

(declare-fun lt!2639147 () Unit!166548)

(declare-fun lt!2639150 () Unit!166548)

(assert (=> d!2309478 (= lt!2639147 lt!2639150)))

(declare-fun lt!2639130 () List!72711)

(assert (=> d!2309478 (= input!6727 lt!2639130)))

(declare-fun lemmaSamePrefixThenSameSuffix!2814 (List!72711 List!72711 List!72711 List!72711 List!72711) Unit!166548)

(assert (=> d!2309478 (= lt!2639150 (lemmaSamePrefixThenSameSuffix!2814 Nil!72587 input!6727 Nil!72587 lt!2639130 input!6727))))

(assert (=> d!2309478 (= lt!2639130 (getSuffix!3520 input!6727 Nil!72587))))

(declare-fun lt!2639142 () Unit!166548)

(declare-fun lt!2639153 () Unit!166548)

(assert (=> d!2309478 (= lt!2639142 lt!2639153)))

(assert (=> d!2309478 (isPrefix!6034 Nil!72587 (++!17367 Nil!72587 input!6727))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3728 (List!72711 List!72711) Unit!166548)

(assert (=> d!2309478 (= lt!2639153 (lemmaConcatTwoListThenFirstIsPrefix!3728 Nil!72587 input!6727))))

(assert (=> d!2309478 (validRegex!10256 baseR!93)))

(assert (=> d!2309478 (= (findLongestMatchInner!2107 baseR!93 Nil!72587 lt!2639051 input!6727 input!6727 (size!42324 input!6727)) lt!2639143)))

(declare-fun b!7527103 () Bool)

(declare-fun e!4486472 () tuple2!68798)

(assert (=> b!7527103 (= e!4486472 (tuple2!68799 Nil!72587 input!6727))))

(declare-fun b!7527104 () Bool)

(assert (=> b!7527104 (= e!4486472 (tuple2!68799 Nil!72587 Nil!72587))))

(declare-fun b!7527105 () Bool)

(declare-fun e!4486469 () tuple2!68798)

(declare-fun e!4486467 () tuple2!68798)

(assert (=> b!7527105 (= e!4486469 e!4486467)))

(declare-fun lt!2639126 () tuple2!68798)

(declare-fun call!690530 () tuple2!68798)

(assert (=> b!7527105 (= lt!2639126 call!690530)))

(declare-fun c!1390374 () Bool)

(assert (=> b!7527105 (= c!1390374 (isEmpty!41338 (_1!37702 lt!2639126)))))

(declare-fun b!7527106 () Bool)

(assert (=> b!7527106 (= e!4486469 call!690530)))

(declare-fun b!7527107 () Bool)

(declare-fun c!1390375 () Bool)

(assert (=> b!7527107 (= c!1390375 call!690533)))

(declare-fun lt!2639152 () Unit!166548)

(declare-fun lt!2639146 () Unit!166548)

(assert (=> b!7527107 (= lt!2639152 lt!2639146)))

(declare-fun lt!2639134 () C!39982)

(declare-fun lt!2639137 () List!72711)

(assert (=> b!7527107 (= (++!17367 (++!17367 Nil!72587 (Cons!72587 lt!2639134 Nil!72587)) lt!2639137) input!6727)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3164 (List!72711 C!39982 List!72711 List!72711) Unit!166548)

(assert (=> b!7527107 (= lt!2639146 (lemmaMoveElementToOtherListKeepsConcatEq!3164 Nil!72587 lt!2639134 lt!2639137 input!6727))))

(assert (=> b!7527107 (= lt!2639137 (tail!15008 input!6727))))

(assert (=> b!7527107 (= lt!2639134 (head!15448 input!6727))))

(declare-fun lt!2639141 () Unit!166548)

(declare-fun lt!2639128 () Unit!166548)

(assert (=> b!7527107 (= lt!2639141 lt!2639128)))

(assert (=> b!7527107 (isPrefix!6034 (++!17367 Nil!72587 (Cons!72587 (head!15448 (getSuffix!3520 input!6727 Nil!72587)) Nil!72587)) input!6727)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1133 (List!72711 List!72711) Unit!166548)

(assert (=> b!7527107 (= lt!2639128 (lemmaAddHeadSuffixToPrefixStillPrefix!1133 Nil!72587 input!6727))))

(declare-fun lt!2639129 () Unit!166548)

(declare-fun lt!2639144 () Unit!166548)

(assert (=> b!7527107 (= lt!2639129 lt!2639144)))

(assert (=> b!7527107 (= lt!2639144 (lemmaAddHeadSuffixToPrefixStillPrefix!1133 Nil!72587 input!6727))))

(declare-fun lt!2639148 () List!72711)

(assert (=> b!7527107 (= lt!2639148 (++!17367 Nil!72587 (Cons!72587 (head!15448 input!6727) Nil!72587)))))

(declare-fun lt!2639149 () Unit!166548)

(assert (=> b!7527107 (= lt!2639149 e!4486468)))

(declare-fun c!1390377 () Bool)

(assert (=> b!7527107 (= c!1390377 (= (size!42324 Nil!72587) (size!42324 input!6727)))))

(declare-fun lt!2639127 () Unit!166548)

(declare-fun lt!2639135 () Unit!166548)

(assert (=> b!7527107 (= lt!2639127 lt!2639135)))

(assert (=> b!7527107 (<= (size!42324 Nil!72587) (size!42324 input!6727))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!1003 (List!72711 List!72711) Unit!166548)

(assert (=> b!7527107 (= lt!2639135 (lemmaIsPrefixThenSmallerEqSize!1003 Nil!72587 input!6727))))

(assert (=> b!7527107 (= e!4486474 e!4486469)))

(declare-fun b!7527108 () Bool)

(declare-fun c!1390373 () Bool)

(assert (=> b!7527108 (= c!1390373 call!690533)))

(declare-fun lt!2639138 () Unit!166548)

(declare-fun lt!2639151 () Unit!166548)

(assert (=> b!7527108 (= lt!2639138 lt!2639151)))

(assert (=> b!7527108 (= input!6727 Nil!72587)))

(assert (=> b!7527108 (= lt!2639151 call!690532)))

(declare-fun lt!2639132 () Unit!166548)

(declare-fun lt!2639131 () Unit!166548)

(assert (=> b!7527108 (= lt!2639132 lt!2639131)))

(assert (=> b!7527108 call!690534))

(assert (=> b!7527108 (= lt!2639131 call!690529)))

(assert (=> b!7527108 (= e!4486474 e!4486472)))

(declare-fun bm!690528 () Bool)

(declare-fun call!690531 () List!72711)

(assert (=> bm!690528 (= call!690531 (tail!15008 input!6727))))

(declare-fun call!690536 () Regex!19828)

(declare-fun bm!690529 () Bool)

(assert (=> bm!690529 (= call!690530 (findLongestMatchInner!2107 call!690536 lt!2639148 (+ lt!2639051 1) call!690531 input!6727 (size!42324 input!6727)))))

(declare-fun b!7527109 () Bool)

(assert (=> b!7527109 (= e!4486467 lt!2639126)))

(declare-fun b!7527110 () Bool)

(assert (=> b!7527110 (= e!4486471 (tuple2!68799 Nil!72587 input!6727))))

(declare-fun bm!690530 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1506 (List!72711 List!72711 List!72711) Unit!166548)

(assert (=> bm!690530 (= call!690532 (lemmaIsPrefixSameLengthThenSameList!1506 input!6727 Nil!72587 input!6727))))

(declare-fun b!7527111 () Bool)

(assert (=> b!7527111 (= e!4486467 (tuple2!68799 Nil!72587 input!6727))))

(declare-fun bm!690531 () Bool)

(declare-fun derivativeStep!5652 (Regex!19828 C!39982) Regex!19828)

(assert (=> bm!690531 (= call!690536 (derivativeStep!5652 baseR!93 call!690535))))

(assert (= (and d!2309478 c!1390378) b!7527110))

(assert (= (and d!2309478 (not c!1390378)) b!7527099))

(assert (= (and b!7527099 c!1390376) b!7527108))

(assert (= (and b!7527099 (not c!1390376)) b!7527107))

(assert (= (and b!7527108 c!1390373) b!7527104))

(assert (= (and b!7527108 (not c!1390373)) b!7527103))

(assert (= (and b!7527107 c!1390377) b!7527102))

(assert (= (and b!7527107 (not c!1390377)) b!7527098))

(assert (= (and b!7527107 c!1390375) b!7527105))

(assert (= (and b!7527107 (not c!1390375)) b!7527106))

(assert (= (and b!7527105 c!1390374) b!7527111))

(assert (= (and b!7527105 (not c!1390374)) b!7527109))

(assert (= (or b!7527105 b!7527106) bm!690527))

(assert (= (or b!7527105 b!7527106) bm!690528))

(assert (= (or b!7527105 b!7527106) bm!690531))

(assert (= (or b!7527105 b!7527106) bm!690529))

(assert (= (or b!7527108 b!7527102) bm!690526))

(assert (= (or b!7527108 b!7527107) bm!690525))

(assert (= (or b!7527108 b!7527102) bm!690530))

(assert (= (or b!7527108 b!7527102) bm!690524))

(assert (= (and d!2309478 res!3016764) b!7527101))

(assert (= (and b!7527101 (not res!3016763)) b!7527100))

(declare-fun m!8102076 () Bool)

(assert (=> b!7527100 m!8102076))

(assert (=> b!7527100 m!8102028))

(declare-fun m!8102078 () Bool)

(assert (=> b!7527101 m!8102078))

(declare-fun m!8102080 () Bool)

(assert (=> bm!690531 m!8102080))

(assert (=> bm!690528 m!8102072))

(assert (=> bm!690527 m!8102068))

(assert (=> bm!690529 m!8102024))

(declare-fun m!8102082 () Bool)

(assert (=> bm!690529 m!8102082))

(declare-fun m!8102084 () Bool)

(assert (=> bm!690525 m!8102084))

(declare-fun m!8102086 () Bool)

(assert (=> bm!690526 m!8102086))

(declare-fun m!8102088 () Bool)

(assert (=> d!2309478 m!8102088))

(declare-fun m!8102090 () Bool)

(assert (=> d!2309478 m!8102090))

(assert (=> d!2309478 m!8102038))

(declare-fun m!8102092 () Bool)

(assert (=> d!2309478 m!8102092))

(declare-fun m!8102094 () Bool)

(assert (=> d!2309478 m!8102094))

(declare-fun m!8102096 () Bool)

(assert (=> d!2309478 m!8102096))

(assert (=> d!2309478 m!8102092))

(declare-fun m!8102098 () Bool)

(assert (=> d!2309478 m!8102098))

(declare-fun m!8102100 () Bool)

(assert (=> d!2309478 m!8102100))

(assert (=> b!7527107 m!8102068))

(assert (=> b!7527107 m!8102088))

(assert (=> b!7527107 m!8102024))

(assert (=> b!7527107 m!8102028))

(declare-fun m!8102102 () Bool)

(assert (=> b!7527107 m!8102102))

(declare-fun m!8102104 () Bool)

(assert (=> b!7527107 m!8102104))

(declare-fun m!8102106 () Bool)

(assert (=> b!7527107 m!8102106))

(assert (=> b!7527107 m!8102088))

(declare-fun m!8102108 () Bool)

(assert (=> b!7527107 m!8102108))

(declare-fun m!8102110 () Bool)

(assert (=> b!7527107 m!8102110))

(assert (=> b!7527107 m!8102072))

(declare-fun m!8102112 () Bool)

(assert (=> b!7527107 m!8102112))

(declare-fun m!8102114 () Bool)

(assert (=> b!7527107 m!8102114))

(assert (=> b!7527107 m!8102110))

(declare-fun m!8102116 () Bool)

(assert (=> b!7527107 m!8102116))

(assert (=> b!7527107 m!8102104))

(declare-fun m!8102118 () Bool)

(assert (=> b!7527107 m!8102118))

(declare-fun m!8102120 () Bool)

(assert (=> bm!690524 m!8102120))

(declare-fun m!8102122 () Bool)

(assert (=> b!7527105 m!8102122))

(declare-fun m!8102124 () Bool)

(assert (=> bm!690530 m!8102124))

(assert (=> b!7526995 d!2309478))

(declare-fun d!2309480 () Bool)

(declare-fun lt!2639154 () Int)

(assert (=> d!2309480 (>= lt!2639154 0)))

(declare-fun e!4486475 () Int)

(assert (=> d!2309480 (= lt!2639154 e!4486475)))

(declare-fun c!1390379 () Bool)

(assert (=> d!2309480 (= c!1390379 (is-Nil!72587 input!6727))))

(assert (=> d!2309480 (= (size!42324 input!6727) lt!2639154)))

(declare-fun b!7527112 () Bool)

(assert (=> b!7527112 (= e!4486475 0)))

(declare-fun b!7527113 () Bool)

(assert (=> b!7527113 (= e!4486475 (+ 1 (size!42324 (t!387418 input!6727))))))

(assert (= (and d!2309480 c!1390379) b!7527112))

(assert (= (and d!2309480 (not c!1390379)) b!7527113))

(declare-fun m!8102126 () Bool)

(assert (=> b!7527113 m!8102126))

(assert (=> b!7526995 d!2309480))

(declare-fun d!2309482 () Bool)

(declare-fun lt!2639155 () Int)

(assert (=> d!2309482 (>= lt!2639155 0)))

(declare-fun e!4486476 () Int)

(assert (=> d!2309482 (= lt!2639155 e!4486476)))

(declare-fun c!1390380 () Bool)

(assert (=> d!2309482 (= c!1390380 (is-Nil!72587 Nil!72587))))

(assert (=> d!2309482 (= (size!42324 Nil!72587) lt!2639155)))

(declare-fun b!7527114 () Bool)

(assert (=> b!7527114 (= e!4486476 0)))

(declare-fun b!7527115 () Bool)

(assert (=> b!7527115 (= e!4486476 (+ 1 (size!42324 (t!387418 Nil!72587))))))

(assert (= (and d!2309482 c!1390380) b!7527114))

(assert (= (and d!2309482 (not c!1390380)) b!7527115))

(declare-fun m!8102128 () Bool)

(assert (=> b!7527115 m!8102128))

(assert (=> b!7526995 d!2309482))

(declare-fun d!2309484 () Bool)

(declare-fun e!4486477 () Bool)

(assert (=> d!2309484 e!4486477))

(declare-fun res!3016768 () Bool)

(assert (=> d!2309484 (=> res!3016768 e!4486477)))

(declare-fun lt!2639156 () Bool)

(assert (=> d!2309484 (= res!3016768 (not lt!2639156))))

(declare-fun e!4486479 () Bool)

(assert (=> d!2309484 (= lt!2639156 e!4486479)))

(declare-fun res!3016767 () Bool)

(assert (=> d!2309484 (=> res!3016767 e!4486479)))

(assert (=> d!2309484 (= res!3016767 (is-Nil!72587 returnP!57))))

(assert (=> d!2309484 (= (isPrefix!6034 returnP!57 input!6727) lt!2639156)))

(declare-fun b!7527116 () Bool)

(declare-fun e!4486478 () Bool)

(assert (=> b!7527116 (= e!4486479 e!4486478)))

(declare-fun res!3016765 () Bool)

(assert (=> b!7527116 (=> (not res!3016765) (not e!4486478))))

(assert (=> b!7527116 (= res!3016765 (not (is-Nil!72587 input!6727)))))

(declare-fun b!7527119 () Bool)

(assert (=> b!7527119 (= e!4486477 (>= (size!42324 input!6727) (size!42324 returnP!57)))))

(declare-fun b!7527117 () Bool)

(declare-fun res!3016766 () Bool)

(assert (=> b!7527117 (=> (not res!3016766) (not e!4486478))))

(assert (=> b!7527117 (= res!3016766 (= (head!15448 returnP!57) (head!15448 input!6727)))))

(declare-fun b!7527118 () Bool)

(assert (=> b!7527118 (= e!4486478 (isPrefix!6034 (tail!15008 returnP!57) (tail!15008 input!6727)))))

(assert (= (and d!2309484 (not res!3016767)) b!7527116))

(assert (= (and b!7527116 res!3016765) b!7527117))

(assert (= (and b!7527117 res!3016766) b!7527118))

(assert (= (and d!2309484 (not res!3016768)) b!7527119))

(assert (=> b!7527119 m!8102024))

(assert (=> b!7527119 m!8102030))

(declare-fun m!8102130 () Bool)

(assert (=> b!7527117 m!8102130))

(assert (=> b!7527117 m!8102068))

(declare-fun m!8102132 () Bool)

(assert (=> b!7527118 m!8102132))

(assert (=> b!7527118 m!8102072))

(assert (=> b!7527118 m!8102132))

(assert (=> b!7527118 m!8102072))

(declare-fun m!8102134 () Bool)

(assert (=> b!7527118 m!8102134))

(assert (=> b!7527002 d!2309484))

(declare-fun b!7527138 () Bool)

(declare-fun e!4486500 () Bool)

(declare-fun e!4486494 () Bool)

(assert (=> b!7527138 (= e!4486500 e!4486494)))

(declare-fun res!3016781 () Bool)

(assert (=> b!7527138 (=> (not res!3016781) (not e!4486494))))

(declare-fun call!690544 () Bool)

(assert (=> b!7527138 (= res!3016781 call!690544)))

(declare-fun b!7527139 () Bool)

(declare-fun res!3016782 () Bool)

(declare-fun e!4486498 () Bool)

(assert (=> b!7527139 (=> (not res!3016782) (not e!4486498))))

(declare-fun call!690543 () Bool)

(assert (=> b!7527139 (= res!3016782 call!690543)))

(declare-fun e!4486496 () Bool)

(assert (=> b!7527139 (= e!4486496 e!4486498)))

(declare-fun b!7527140 () Bool)

(assert (=> b!7527140 (= e!4486494 call!690543)))

(declare-fun bm!690538 () Bool)

(declare-fun c!1390385 () Bool)

(assert (=> bm!690538 (= call!690544 (validRegex!10256 (ite c!1390385 (regTwo!40169 baseR!93) (regOne!40168 baseR!93))))))

(declare-fun b!7527141 () Bool)

(declare-fun e!4486495 () Bool)

(assert (=> b!7527141 (= e!4486495 e!4486496)))

(assert (=> b!7527141 (= c!1390385 (is-Union!19828 baseR!93))))

(declare-fun b!7527142 () Bool)

(declare-fun e!4486497 () Bool)

(assert (=> b!7527142 (= e!4486495 e!4486497)))

(declare-fun res!3016783 () Bool)

(assert (=> b!7527142 (= res!3016783 (not (nullable!8646 (reg!20157 baseR!93))))))

(assert (=> b!7527142 (=> (not res!3016783) (not e!4486497))))

(declare-fun d!2309486 () Bool)

(declare-fun res!3016780 () Bool)

(declare-fun e!4486499 () Bool)

(assert (=> d!2309486 (=> res!3016780 e!4486499)))

(assert (=> d!2309486 (= res!3016780 (is-ElementMatch!19828 baseR!93))))

(assert (=> d!2309486 (= (validRegex!10256 baseR!93) e!4486499)))

(declare-fun b!7527143 () Bool)

(declare-fun call!690545 () Bool)

(assert (=> b!7527143 (= e!4486497 call!690545)))

(declare-fun bm!690539 () Bool)

(assert (=> bm!690539 (= call!690543 call!690545)))

(declare-fun bm!690540 () Bool)

(declare-fun c!1390386 () Bool)

(assert (=> bm!690540 (= call!690545 (validRegex!10256 (ite c!1390386 (reg!20157 baseR!93) (ite c!1390385 (regOne!40169 baseR!93) (regTwo!40168 baseR!93)))))))

(declare-fun b!7527144 () Bool)

(assert (=> b!7527144 (= e!4486499 e!4486495)))

(assert (=> b!7527144 (= c!1390386 (is-Star!19828 baseR!93))))

(declare-fun b!7527145 () Bool)

(assert (=> b!7527145 (= e!4486498 call!690544)))

(declare-fun b!7527146 () Bool)

(declare-fun res!3016779 () Bool)

(assert (=> b!7527146 (=> res!3016779 e!4486500)))

(assert (=> b!7527146 (= res!3016779 (not (is-Concat!28673 baseR!93)))))

(assert (=> b!7527146 (= e!4486496 e!4486500)))

(assert (= (and d!2309486 (not res!3016780)) b!7527144))

(assert (= (and b!7527144 c!1390386) b!7527142))

(assert (= (and b!7527144 (not c!1390386)) b!7527141))

(assert (= (and b!7527142 res!3016783) b!7527143))

(assert (= (and b!7527141 c!1390385) b!7527139))

(assert (= (and b!7527141 (not c!1390385)) b!7527146))

(assert (= (and b!7527139 res!3016782) b!7527145))

(assert (= (and b!7527146 (not res!3016779)) b!7527138))

(assert (= (and b!7527138 res!3016781) b!7527140))

(assert (= (or b!7527145 b!7527138) bm!690538))

(assert (= (or b!7527139 b!7527140) bm!690539))

(assert (= (or b!7527143 bm!690539) bm!690540))

(declare-fun m!8102136 () Bool)

(assert (=> bm!690538 m!8102136))

(declare-fun m!8102138 () Bool)

(assert (=> b!7527142 m!8102138))

(declare-fun m!8102140 () Bool)

(assert (=> bm!690540 m!8102140))

(assert (=> start!728386 d!2309486))

(declare-fun d!2309488 () Bool)

(declare-fun e!4486501 () Bool)

(assert (=> d!2309488 e!4486501))

(declare-fun res!3016787 () Bool)

(assert (=> d!2309488 (=> res!3016787 e!4486501)))

(declare-fun lt!2639163 () Bool)

(assert (=> d!2309488 (= res!3016787 (not lt!2639163))))

(declare-fun e!4486503 () Bool)

(assert (=> d!2309488 (= lt!2639163 e!4486503)))

(declare-fun res!3016786 () Bool)

(assert (=> d!2309488 (=> res!3016786 e!4486503)))

(assert (=> d!2309488 (= res!3016786 (is-Nil!72587 bigger!57))))

(assert (=> d!2309488 (= (isPrefix!6034 bigger!57 input!6727) lt!2639163)))

(declare-fun b!7527147 () Bool)

(declare-fun e!4486502 () Bool)

(assert (=> b!7527147 (= e!4486503 e!4486502)))

(declare-fun res!3016784 () Bool)

(assert (=> b!7527147 (=> (not res!3016784) (not e!4486502))))

(assert (=> b!7527147 (= res!3016784 (not (is-Nil!72587 input!6727)))))

(declare-fun b!7527150 () Bool)

(assert (=> b!7527150 (= e!4486501 (>= (size!42324 input!6727) (size!42324 bigger!57)))))

(declare-fun b!7527148 () Bool)

(declare-fun res!3016785 () Bool)

(assert (=> b!7527148 (=> (not res!3016785) (not e!4486502))))

(assert (=> b!7527148 (= res!3016785 (= (head!15448 bigger!57) (head!15448 input!6727)))))

(declare-fun b!7527149 () Bool)

(assert (=> b!7527149 (= e!4486502 (isPrefix!6034 (tail!15008 bigger!57) (tail!15008 input!6727)))))

(assert (= (and d!2309488 (not res!3016786)) b!7527147))

(assert (= (and b!7527147 res!3016784) b!7527148))

(assert (= (and b!7527148 res!3016785) b!7527149))

(assert (= (and d!2309488 (not res!3016787)) b!7527150))

(assert (=> b!7527150 m!8102024))

(assert (=> b!7527150 m!8102032))

(declare-fun m!8102142 () Bool)

(assert (=> b!7527148 m!8102142))

(assert (=> b!7527148 m!8102068))

(declare-fun m!8102144 () Bool)

(assert (=> b!7527149 m!8102144))

(assert (=> b!7527149 m!8102072))

(assert (=> b!7527149 m!8102144))

(assert (=> b!7527149 m!8102072))

(declare-fun m!8102146 () Bool)

(assert (=> b!7527149 m!8102146))

(assert (=> b!7526998 d!2309488))

(declare-fun d!2309490 () Bool)

(declare-fun e!4486534 () Bool)

(assert (=> d!2309490 e!4486534))

(declare-fun c!1390405 () Bool)

(assert (=> d!2309490 (= c!1390405 (is-EmptyExpr!19828 baseR!93))))

(declare-fun lt!2639216 () Bool)

(declare-fun e!4486531 () Bool)

(assert (=> d!2309490 (= lt!2639216 e!4486531)))

(declare-fun c!1390406 () Bool)

(assert (=> d!2309490 (= c!1390406 (isEmpty!41338 bigger!57))))

(assert (=> d!2309490 (validRegex!10256 baseR!93)))

(assert (=> d!2309490 (= (matchR!9432 baseR!93 bigger!57) lt!2639216)))

(declare-fun b!7527203 () Bool)

(declare-fun e!4486536 () Bool)

(declare-fun e!4486532 () Bool)

(assert (=> b!7527203 (= e!4486536 e!4486532)))

(declare-fun res!3016809 () Bool)

(assert (=> b!7527203 (=> res!3016809 e!4486532)))

(declare-fun call!690560 () Bool)

(assert (=> b!7527203 (= res!3016809 call!690560)))

(declare-fun b!7527204 () Bool)

(declare-fun e!4486535 () Bool)

(assert (=> b!7527204 (= e!4486535 e!4486536)))

(declare-fun res!3016805 () Bool)

(assert (=> b!7527204 (=> (not res!3016805) (not e!4486536))))

(assert (=> b!7527204 (= res!3016805 (not lt!2639216))))

(declare-fun b!7527205 () Bool)

(declare-fun res!3016810 () Bool)

(declare-fun e!4486533 () Bool)

(assert (=> b!7527205 (=> (not res!3016810) (not e!4486533))))

(assert (=> b!7527205 (= res!3016810 (not call!690560))))

(declare-fun bm!690553 () Bool)

(assert (=> bm!690553 (= call!690560 (isEmpty!41338 bigger!57))))

(declare-fun b!7527206 () Bool)

(declare-fun res!3016811 () Bool)

(assert (=> b!7527206 (=> (not res!3016811) (not e!4486533))))

(assert (=> b!7527206 (= res!3016811 (isEmpty!41338 (tail!15008 bigger!57)))))

(declare-fun b!7527207 () Bool)

(assert (=> b!7527207 (= e!4486533 (= (head!15448 bigger!57) (c!1390355 baseR!93)))))

(declare-fun b!7527208 () Bool)

(assert (=> b!7527208 (= e!4486531 (matchR!9432 (derivativeStep!5652 baseR!93 (head!15448 bigger!57)) (tail!15008 bigger!57)))))

(declare-fun b!7527209 () Bool)

(declare-fun res!3016806 () Bool)

(assert (=> b!7527209 (=> res!3016806 e!4486532)))

(assert (=> b!7527209 (= res!3016806 (not (isEmpty!41338 (tail!15008 bigger!57))))))

(declare-fun b!7527210 () Bool)

(declare-fun e!4486530 () Bool)

(assert (=> b!7527210 (= e!4486530 (not lt!2639216))))

(declare-fun b!7527211 () Bool)

(declare-fun res!3016808 () Bool)

(assert (=> b!7527211 (=> res!3016808 e!4486535)))

(assert (=> b!7527211 (= res!3016808 e!4486533)))

(declare-fun res!3016804 () Bool)

(assert (=> b!7527211 (=> (not res!3016804) (not e!4486533))))

(assert (=> b!7527211 (= res!3016804 lt!2639216)))

(declare-fun b!7527212 () Bool)

(assert (=> b!7527212 (= e!4486532 (not (= (head!15448 bigger!57) (c!1390355 baseR!93))))))

(declare-fun b!7527213 () Bool)

(declare-fun res!3016807 () Bool)

(assert (=> b!7527213 (=> res!3016807 e!4486535)))

(assert (=> b!7527213 (= res!3016807 (not (is-ElementMatch!19828 baseR!93)))))

(assert (=> b!7527213 (= e!4486530 e!4486535)))

(declare-fun b!7527214 () Bool)

(assert (=> b!7527214 (= e!4486534 (= lt!2639216 call!690560))))

(declare-fun b!7527215 () Bool)

(assert (=> b!7527215 (= e!4486531 (nullable!8646 baseR!93))))

(declare-fun b!7527216 () Bool)

(assert (=> b!7527216 (= e!4486534 e!4486530)))

(declare-fun c!1390407 () Bool)

(assert (=> b!7527216 (= c!1390407 (is-EmptyLang!19828 baseR!93))))

(assert (= (and d!2309490 c!1390406) b!7527215))

(assert (= (and d!2309490 (not c!1390406)) b!7527208))

(assert (= (and d!2309490 c!1390405) b!7527214))

(assert (= (and d!2309490 (not c!1390405)) b!7527216))

(assert (= (and b!7527216 c!1390407) b!7527210))

(assert (= (and b!7527216 (not c!1390407)) b!7527213))

(assert (= (and b!7527213 (not res!3016807)) b!7527211))

(assert (= (and b!7527211 res!3016804) b!7527205))

(assert (= (and b!7527205 res!3016810) b!7527206))

(assert (= (and b!7527206 res!3016811) b!7527207))

(assert (= (and b!7527211 (not res!3016808)) b!7527204))

(assert (= (and b!7527204 res!3016805) b!7527203))

(assert (= (and b!7527203 (not res!3016809)) b!7527209))

(assert (= (and b!7527209 (not res!3016806)) b!7527212))

(assert (= (or b!7527214 b!7527203 b!7527205) bm!690553))

(assert (=> b!7527208 m!8102142))

(assert (=> b!7527208 m!8102142))

(declare-fun m!8102148 () Bool)

(assert (=> b!7527208 m!8102148))

(assert (=> b!7527208 m!8102144))

(assert (=> b!7527208 m!8102148))

(assert (=> b!7527208 m!8102144))

(declare-fun m!8102150 () Bool)

(assert (=> b!7527208 m!8102150))

(declare-fun m!8102152 () Bool)

(assert (=> d!2309490 m!8102152))

(assert (=> d!2309490 m!8102038))

(assert (=> bm!690553 m!8102152))

(assert (=> b!7527206 m!8102144))

(assert (=> b!7527206 m!8102144))

(declare-fun m!8102154 () Bool)

(assert (=> b!7527206 m!8102154))

(assert (=> b!7527212 m!8102142))

(assert (=> b!7527207 m!8102142))

(assert (=> b!7527215 m!8102084))

(assert (=> b!7527209 m!8102144))

(assert (=> b!7527209 m!8102144))

(assert (=> b!7527209 m!8102154))

(assert (=> b!7527003 d!2309490))

(declare-fun b!7527228 () Bool)

(declare-fun e!4486539 () Bool)

(declare-fun tp!2187687 () Bool)

(declare-fun tp!2187686 () Bool)

(assert (=> b!7527228 (= e!4486539 (and tp!2187687 tp!2187686))))

(declare-fun b!7527230 () Bool)

(declare-fun tp!2187684 () Bool)

(declare-fun tp!2187688 () Bool)

(assert (=> b!7527230 (= e!4486539 (and tp!2187684 tp!2187688))))

(declare-fun b!7527227 () Bool)

(assert (=> b!7527227 (= e!4486539 tp_is_empty!50011)))

(assert (=> b!7526999 (= tp!2187649 e!4486539)))

(declare-fun b!7527229 () Bool)

(declare-fun tp!2187685 () Bool)

(assert (=> b!7527229 (= e!4486539 tp!2187685)))

(assert (= (and b!7526999 (is-ElementMatch!19828 (reg!20157 baseR!93))) b!7527227))

(assert (= (and b!7526999 (is-Concat!28673 (reg!20157 baseR!93))) b!7527228))

(assert (= (and b!7526999 (is-Star!19828 (reg!20157 baseR!93))) b!7527229))

(assert (= (and b!7526999 (is-Union!19828 (reg!20157 baseR!93))) b!7527230))

(declare-fun b!7527232 () Bool)

(declare-fun e!4486540 () Bool)

(declare-fun tp!2187692 () Bool)

(declare-fun tp!2187691 () Bool)

(assert (=> b!7527232 (= e!4486540 (and tp!2187692 tp!2187691))))

(declare-fun b!7527234 () Bool)

(declare-fun tp!2187689 () Bool)

(declare-fun tp!2187693 () Bool)

(assert (=> b!7527234 (= e!4486540 (and tp!2187689 tp!2187693))))

(declare-fun b!7527231 () Bool)

(assert (=> b!7527231 (= e!4486540 tp_is_empty!50011)))

(assert (=> b!7527001 (= tp!2187646 e!4486540)))

(declare-fun b!7527233 () Bool)

(declare-fun tp!2187690 () Bool)

(assert (=> b!7527233 (= e!4486540 tp!2187690)))

(assert (= (and b!7527001 (is-ElementMatch!19828 (regOne!40169 baseR!93))) b!7527231))

(assert (= (and b!7527001 (is-Concat!28673 (regOne!40169 baseR!93))) b!7527232))

(assert (= (and b!7527001 (is-Star!19828 (regOne!40169 baseR!93))) b!7527233))

(assert (= (and b!7527001 (is-Union!19828 (regOne!40169 baseR!93))) b!7527234))

(declare-fun b!7527236 () Bool)

(declare-fun e!4486541 () Bool)

(declare-fun tp!2187697 () Bool)

(declare-fun tp!2187696 () Bool)

(assert (=> b!7527236 (= e!4486541 (and tp!2187697 tp!2187696))))

(declare-fun b!7527238 () Bool)

(declare-fun tp!2187694 () Bool)

(declare-fun tp!2187698 () Bool)

(assert (=> b!7527238 (= e!4486541 (and tp!2187694 tp!2187698))))

(declare-fun b!7527235 () Bool)

(assert (=> b!7527235 (= e!4486541 tp_is_empty!50011)))

(assert (=> b!7527001 (= tp!2187643 e!4486541)))

(declare-fun b!7527237 () Bool)

(declare-fun tp!2187695 () Bool)

(assert (=> b!7527237 (= e!4486541 tp!2187695)))

(assert (= (and b!7527001 (is-ElementMatch!19828 (regTwo!40169 baseR!93))) b!7527235))

(assert (= (and b!7527001 (is-Concat!28673 (regTwo!40169 baseR!93))) b!7527236))

(assert (= (and b!7527001 (is-Star!19828 (regTwo!40169 baseR!93))) b!7527237))

(assert (= (and b!7527001 (is-Union!19828 (regTwo!40169 baseR!93))) b!7527238))

(declare-fun b!7527243 () Bool)

(declare-fun e!4486544 () Bool)

(declare-fun tp!2187701 () Bool)

(assert (=> b!7527243 (= e!4486544 (and tp_is_empty!50011 tp!2187701))))

(assert (=> b!7526992 (= tp!2187648 e!4486544)))

(assert (= (and b!7526992 (is-Cons!72587 (t!387418 bigger!57))) b!7527243))

(declare-fun b!7527244 () Bool)

(declare-fun e!4486545 () Bool)

(declare-fun tp!2187702 () Bool)

(assert (=> b!7527244 (= e!4486545 (and tp_is_empty!50011 tp!2187702))))

(assert (=> b!7526997 (= tp!2187642 e!4486545)))

(assert (= (and b!7526997 (is-Cons!72587 (t!387418 returnP!57))) b!7527244))

(declare-fun b!7527245 () Bool)

(declare-fun e!4486546 () Bool)

(declare-fun tp!2187703 () Bool)

(assert (=> b!7527245 (= e!4486546 (and tp_is_empty!50011 tp!2187703))))

(assert (=> b!7527004 (= tp!2187644 e!4486546)))

(assert (= (and b!7527004 (is-Cons!72587 (t!387418 input!6727))) b!7527245))

(declare-fun b!7527247 () Bool)

(declare-fun e!4486547 () Bool)

(declare-fun tp!2187707 () Bool)

(declare-fun tp!2187706 () Bool)

(assert (=> b!7527247 (= e!4486547 (and tp!2187707 tp!2187706))))

(declare-fun b!7527249 () Bool)

(declare-fun tp!2187704 () Bool)

(declare-fun tp!2187708 () Bool)

(assert (=> b!7527249 (= e!4486547 (and tp!2187704 tp!2187708))))

(declare-fun b!7527246 () Bool)

(assert (=> b!7527246 (= e!4486547 tp_is_empty!50011)))

(assert (=> b!7526993 (= tp!2187647 e!4486547)))

(declare-fun b!7527248 () Bool)

(declare-fun tp!2187705 () Bool)

(assert (=> b!7527248 (= e!4486547 tp!2187705)))

(assert (= (and b!7526993 (is-ElementMatch!19828 (regOne!40168 baseR!93))) b!7527246))

(assert (= (and b!7526993 (is-Concat!28673 (regOne!40168 baseR!93))) b!7527247))

(assert (= (and b!7526993 (is-Star!19828 (regOne!40168 baseR!93))) b!7527248))

(assert (= (and b!7526993 (is-Union!19828 (regOne!40168 baseR!93))) b!7527249))

(declare-fun b!7527251 () Bool)

(declare-fun e!4486548 () Bool)

(declare-fun tp!2187712 () Bool)

(declare-fun tp!2187711 () Bool)

(assert (=> b!7527251 (= e!4486548 (and tp!2187712 tp!2187711))))

(declare-fun b!7527253 () Bool)

(declare-fun tp!2187709 () Bool)

(declare-fun tp!2187713 () Bool)

(assert (=> b!7527253 (= e!4486548 (and tp!2187709 tp!2187713))))

(declare-fun b!7527250 () Bool)

(assert (=> b!7527250 (= e!4486548 tp_is_empty!50011)))

(assert (=> b!7526993 (= tp!2187645 e!4486548)))

(declare-fun b!7527252 () Bool)

(declare-fun tp!2187710 () Bool)

(assert (=> b!7527252 (= e!4486548 tp!2187710)))

(assert (= (and b!7526993 (is-ElementMatch!19828 (regTwo!40168 baseR!93))) b!7527250))

(assert (= (and b!7526993 (is-Concat!28673 (regTwo!40168 baseR!93))) b!7527251))

(assert (= (and b!7526993 (is-Star!19828 (regTwo!40168 baseR!93))) b!7527252))

(assert (= (and b!7526993 (is-Union!19828 (regTwo!40168 baseR!93))) b!7527253))

(push 1)

(assert (not b!7527243))

(assert (not bm!690540))

(assert (not b!7527212))

(assert (not b!7527232))

(assert (not b!7527209))

(assert (not b!7527247))

(assert (not d!2309490))

(assert (not b!7527149))

(assert (not bm!690531))

(assert (not bm!690530))

(assert (not b!7527101))

(assert (not b!7527142))

(assert (not b!7527233))

(assert (not bm!690525))

(assert (not bm!690524))

(assert (not b!7527148))

(assert (not b!7527206))

(assert (not bm!690528))

(assert (not bm!690527))

(assert (not b!7527253))

(assert (not b!7527105))

(assert (not b!7527067))

(assert (not b!7527107))

(assert (not bm!690553))

(assert (not b!7527100))

(assert (not b!7527236))

(assert (not b!7527249))

(assert (not b!7527115))

(assert (not b!7527068))

(assert (not b!7527207))

(assert tp_is_empty!50011)

(assert (not b!7527230))

(assert (not b!7527118))

(assert (not b!7527055))

(assert (not b!7527117))

(assert (not b!7527251))

(assert (not b!7527245))

(assert (not bm!690526))

(assert (not b!7527238))

(assert (not b!7527069))

(assert (not b!7527229))

(assert (not b!7527234))

(assert (not b!7527057))

(assert (not b!7527119))

(assert (not d!2309478))

(assert (not bm!690529))

(assert (not b!7527248))

(assert (not bm!690538))

(assert (not b!7527215))

(assert (not b!7527228))

(assert (not b!7527208))

(assert (not b!7527252))

(assert (not b!7527113))

(assert (not b!7527150))

(assert (not b!7527244))

(assert (not b!7527237))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

