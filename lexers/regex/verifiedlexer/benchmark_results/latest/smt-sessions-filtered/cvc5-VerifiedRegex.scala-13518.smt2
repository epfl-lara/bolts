; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!728410 () Bool)

(assert start!728410)

(declare-fun b!7527442 () Bool)

(declare-fun res!3016898 () Bool)

(declare-fun e!4486656 () Bool)

(assert (=> b!7527442 (=> (not res!3016898) (not e!4486656))))

(declare-fun lt!2639270 () Int)

(declare-fun lt!2639269 () Int)

(assert (=> b!7527442 (= res!3016898 (>= lt!2639270 lt!2639269))))

(declare-fun b!7527443 () Bool)

(declare-fun e!4486652 () Bool)

(declare-fun tp!2187770 () Bool)

(declare-fun tp!2187773 () Bool)

(assert (=> b!7527443 (= e!4486652 (and tp!2187770 tp!2187773))))

(declare-fun b!7527444 () Bool)

(declare-fun tp!2187772 () Bool)

(assert (=> b!7527444 (= e!4486652 tp!2187772)))

(declare-fun b!7527445 () Bool)

(declare-fun res!3016895 () Bool)

(declare-fun e!4486653 () Bool)

(assert (=> b!7527445 (=> (not res!3016895) (not e!4486653))))

(declare-datatypes ((C!39986 0))(
  ( (C!39987 (val!30433 Int)) )
))
(declare-datatypes ((List!72713 0))(
  ( (Nil!72589) (Cons!72589 (h!79037 C!39986) (t!387420 List!72713)) )
))
(declare-fun bigger!57 () List!72713)

(declare-fun input!6727 () List!72713)

(declare-fun isPrefix!6036 (List!72713 List!72713) Bool)

(assert (=> b!7527445 (= res!3016895 (isPrefix!6036 bigger!57 input!6727))))

(declare-fun res!3016899 () Bool)

(assert (=> start!728410 (=> (not res!3016899) (not e!4486653))))

(declare-datatypes ((Regex!19830 0))(
  ( (ElementMatch!19830 (c!1390435 C!39986)) (Concat!28675 (regOne!40172 Regex!19830) (regTwo!40172 Regex!19830)) (EmptyExpr!19830) (Star!19830 (reg!20159 Regex!19830)) (EmptyLang!19830) (Union!19830 (regOne!40173 Regex!19830) (regTwo!40173 Regex!19830)) )
))
(declare-fun baseR!93 () Regex!19830)

(declare-fun validRegex!10258 (Regex!19830) Bool)

(assert (=> start!728410 (= res!3016899 (validRegex!10258 baseR!93))))

(assert (=> start!728410 e!4486653))

(assert (=> start!728410 e!4486652))

(declare-fun e!4486650 () Bool)

(assert (=> start!728410 e!4486650))

(declare-fun e!4486655 () Bool)

(assert (=> start!728410 e!4486655))

(declare-fun e!4486654 () Bool)

(assert (=> start!728410 e!4486654))

(declare-fun b!7527446 () Bool)

(declare-fun res!3016902 () Bool)

(assert (=> b!7527446 (=> (not res!3016902) (not e!4486656))))

(assert (=> b!7527446 (= res!3016902 (isPrefix!6036 Nil!72589 input!6727))))

(declare-fun b!7527447 () Bool)

(declare-fun tp_is_empty!50015 () Bool)

(assert (=> b!7527447 (= e!4486652 tp_is_empty!50015)))

(declare-fun b!7527448 () Bool)

(declare-fun tp!2187777 () Bool)

(assert (=> b!7527448 (= e!4486650 (and tp_is_empty!50015 tp!2187777))))

(declare-fun b!7527449 () Bool)

(declare-fun res!3016903 () Bool)

(assert (=> b!7527449 (=> (not res!3016903) (not e!4486653))))

(declare-fun returnP!57 () List!72713)

(assert (=> b!7527449 (= res!3016903 (isPrefix!6036 returnP!57 input!6727))))

(declare-fun b!7527450 () Bool)

(declare-fun tp!2187776 () Bool)

(assert (=> b!7527450 (= e!4486654 (and tp_is_empty!50015 tp!2187776))))

(declare-fun b!7527451 () Bool)

(declare-fun e!4486651 () Bool)

(assert (=> b!7527451 (= e!4486651 e!4486656)))

(declare-fun res!3016897 () Bool)

(assert (=> b!7527451 (=> (not res!3016897) (not e!4486656))))

(declare-datatypes ((tuple2!68802 0))(
  ( (tuple2!68803 (_1!37704 List!72713) (_2!37704 List!72713)) )
))
(declare-fun findLongestMatchInner!2109 (Regex!19830 List!72713 Int List!72713 List!72713 Int) tuple2!68802)

(declare-fun size!42326 (List!72713) Int)

(assert (=> b!7527451 (= res!3016897 (= (_1!37704 (findLongestMatchInner!2109 baseR!93 Nil!72589 lt!2639269 input!6727 input!6727 (size!42326 input!6727))) returnP!57))))

(assert (=> b!7527451 (= lt!2639269 (size!42326 Nil!72589))))

(declare-fun b!7527452 () Bool)

(declare-fun tp!2187775 () Bool)

(declare-fun tp!2187774 () Bool)

(assert (=> b!7527452 (= e!4486652 (and tp!2187775 tp!2187774))))

(declare-fun b!7527453 () Bool)

(declare-fun tp!2187771 () Bool)

(assert (=> b!7527453 (= e!4486655 (and tp_is_empty!50015 tp!2187771))))

(declare-fun b!7527454 () Bool)

(assert (=> b!7527454 (= e!4486653 e!4486651)))

(declare-fun res!3016900 () Bool)

(assert (=> b!7527454 (=> (not res!3016900) (not e!4486651))))

(declare-fun lt!2639267 () Int)

(assert (=> b!7527454 (= res!3016900 (>= lt!2639270 lt!2639267))))

(assert (=> b!7527454 (= lt!2639267 (size!42326 returnP!57))))

(assert (=> b!7527454 (= lt!2639270 (size!42326 bigger!57))))

(declare-fun b!7527455 () Bool)

(declare-fun res!3016896 () Bool)

(assert (=> b!7527455 (=> (not res!3016896) (not e!4486656))))

(assert (=> b!7527455 (= res!3016896 (not (= lt!2639270 lt!2639267)))))

(declare-fun b!7527456 () Bool)

(declare-fun matchR!9434 (Regex!19830 List!72713) Bool)

(declare-fun getSuffix!3522 (List!72713 List!72713) List!72713)

(assert (=> b!7527456 (= e!4486656 (not (matchR!9434 baseR!93 (getSuffix!3522 bigger!57 Nil!72589))))))

(assert (=> b!7527456 (isPrefix!6036 Nil!72589 bigger!57)))

(declare-datatypes ((Unit!166558 0))(
  ( (Unit!166559) )
))
(declare-fun lt!2639268 () Unit!166558)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!792 (List!72713 List!72713 List!72713) Unit!166558)

(assert (=> b!7527456 (= lt!2639268 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!792 bigger!57 Nil!72589 input!6727))))

(declare-fun b!7527457 () Bool)

(declare-fun res!3016901 () Bool)

(assert (=> b!7527457 (=> (not res!3016901) (not e!4486656))))

(assert (=> b!7527457 (= res!3016901 (matchR!9434 baseR!93 bigger!57))))

(assert (= (and start!728410 res!3016899) b!7527449))

(assert (= (and b!7527449 res!3016903) b!7527445))

(assert (= (and b!7527445 res!3016895) b!7527454))

(assert (= (and b!7527454 res!3016900) b!7527451))

(assert (= (and b!7527451 res!3016897) b!7527455))

(assert (= (and b!7527455 res!3016896) b!7527457))

(assert (= (and b!7527457 res!3016901) b!7527446))

(assert (= (and b!7527446 res!3016902) b!7527442))

(assert (= (and b!7527442 res!3016898) b!7527456))

(assert (= (and start!728410 (is-ElementMatch!19830 baseR!93)) b!7527447))

(assert (= (and start!728410 (is-Concat!28675 baseR!93)) b!7527452))

(assert (= (and start!728410 (is-Star!19830 baseR!93)) b!7527444))

(assert (= (and start!728410 (is-Union!19830 baseR!93)) b!7527443))

(assert (= (and start!728410 (is-Cons!72589 returnP!57)) b!7527448))

(assert (= (and start!728410 (is-Cons!72589 input!6727)) b!7527453))

(assert (= (and start!728410 (is-Cons!72589 bigger!57)) b!7527450))

(declare-fun m!8102250 () Bool)

(assert (=> start!728410 m!8102250))

(declare-fun m!8102252 () Bool)

(assert (=> b!7527457 m!8102252))

(declare-fun m!8102254 () Bool)

(assert (=> b!7527446 m!8102254))

(declare-fun m!8102256 () Bool)

(assert (=> b!7527451 m!8102256))

(assert (=> b!7527451 m!8102256))

(declare-fun m!8102258 () Bool)

(assert (=> b!7527451 m!8102258))

(declare-fun m!8102260 () Bool)

(assert (=> b!7527451 m!8102260))

(declare-fun m!8102262 () Bool)

(assert (=> b!7527456 m!8102262))

(assert (=> b!7527456 m!8102262))

(declare-fun m!8102264 () Bool)

(assert (=> b!7527456 m!8102264))

(declare-fun m!8102266 () Bool)

(assert (=> b!7527456 m!8102266))

(declare-fun m!8102268 () Bool)

(assert (=> b!7527456 m!8102268))

(declare-fun m!8102270 () Bool)

(assert (=> b!7527445 m!8102270))

(declare-fun m!8102272 () Bool)

(assert (=> b!7527454 m!8102272))

(declare-fun m!8102274 () Bool)

(assert (=> b!7527454 m!8102274))

(declare-fun m!8102276 () Bool)

(assert (=> b!7527449 m!8102276))

(push 1)

(assert (not b!7527452))

(assert (not b!7527446))

(assert tp_is_empty!50015)

(assert (not b!7527443))

(assert (not b!7527449))

(assert (not b!7527448))

(assert (not b!7527444))

(assert (not b!7527453))

(assert (not b!7527456))

(assert (not start!728410))

(assert (not b!7527445))

(assert (not b!7527457))

(assert (not b!7527454))

(assert (not b!7527450))

(assert (not b!7527451))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7527534 () Bool)

(declare-fun e!4486693 () Bool)

(declare-fun derivativeStep!5654 (Regex!19830 C!39986) Regex!19830)

(declare-fun head!15450 (List!72713) C!39986)

(declare-fun tail!15010 (List!72713) List!72713)

(assert (=> b!7527534 (= e!4486693 (matchR!9434 (derivativeStep!5654 baseR!93 (head!15450 bigger!57)) (tail!15010 bigger!57)))))

(declare-fun b!7527535 () Bool)

(declare-fun res!3016954 () Bool)

(declare-fun e!4486698 () Bool)

(assert (=> b!7527535 (=> (not res!3016954) (not e!4486698))))

(declare-fun isEmpty!41340 (List!72713) Bool)

(assert (=> b!7527535 (= res!3016954 (isEmpty!41340 (tail!15010 bigger!57)))))

(declare-fun b!7527536 () Bool)

(declare-fun e!4486696 () Bool)

(declare-fun lt!2639285 () Bool)

(declare-fun call!690587 () Bool)

(assert (=> b!7527536 (= e!4486696 (= lt!2639285 call!690587))))

(declare-fun b!7527537 () Bool)

(declare-fun e!4486697 () Bool)

(assert (=> b!7527537 (= e!4486696 e!4486697)))

(declare-fun c!1390443 () Bool)

(assert (=> b!7527537 (= c!1390443 (is-EmptyLang!19830 baseR!93))))

(declare-fun b!7527538 () Bool)

(declare-fun e!4486692 () Bool)

(declare-fun e!4486694 () Bool)

(assert (=> b!7527538 (= e!4486692 e!4486694)))

(declare-fun res!3016948 () Bool)

(assert (=> b!7527538 (=> (not res!3016948) (not e!4486694))))

(assert (=> b!7527538 (= res!3016948 (not lt!2639285))))

(declare-fun b!7527539 () Bool)

(declare-fun res!3016950 () Bool)

(assert (=> b!7527539 (=> res!3016950 e!4486692)))

(assert (=> b!7527539 (= res!3016950 e!4486698)))

(declare-fun res!3016949 () Bool)

(assert (=> b!7527539 (=> (not res!3016949) (not e!4486698))))

(assert (=> b!7527539 (= res!3016949 lt!2639285)))

(declare-fun b!7527540 () Bool)

(assert (=> b!7527540 (= e!4486697 (not lt!2639285))))

(declare-fun b!7527541 () Bool)

(declare-fun e!4486695 () Bool)

(assert (=> b!7527541 (= e!4486695 (not (= (head!15450 bigger!57) (c!1390435 baseR!93))))))

(declare-fun b!7527542 () Bool)

(declare-fun res!3016947 () Bool)

(assert (=> b!7527542 (=> res!3016947 e!4486695)))

(assert (=> b!7527542 (= res!3016947 (not (isEmpty!41340 (tail!15010 bigger!57))))))

(declare-fun b!7527543 () Bool)

(assert (=> b!7527543 (= e!4486698 (= (head!15450 bigger!57) (c!1390435 baseR!93)))))

(declare-fun b!7527544 () Bool)

(declare-fun nullable!8648 (Regex!19830) Bool)

(assert (=> b!7527544 (= e!4486693 (nullable!8648 baseR!93))))

(declare-fun b!7527545 () Bool)

(declare-fun res!3016952 () Bool)

(assert (=> b!7527545 (=> (not res!3016952) (not e!4486698))))

(assert (=> b!7527545 (= res!3016952 (not call!690587))))

(declare-fun b!7527546 () Bool)

(declare-fun res!3016951 () Bool)

(assert (=> b!7527546 (=> res!3016951 e!4486692)))

(assert (=> b!7527546 (= res!3016951 (not (is-ElementMatch!19830 baseR!93)))))

(assert (=> b!7527546 (= e!4486697 e!4486692)))

(declare-fun d!2309511 () Bool)

(assert (=> d!2309511 e!4486696))

(declare-fun c!1390445 () Bool)

(assert (=> d!2309511 (= c!1390445 (is-EmptyExpr!19830 baseR!93))))

(assert (=> d!2309511 (= lt!2639285 e!4486693)))

(declare-fun c!1390444 () Bool)

(assert (=> d!2309511 (= c!1390444 (isEmpty!41340 bigger!57))))

(assert (=> d!2309511 (validRegex!10258 baseR!93)))

(assert (=> d!2309511 (= (matchR!9434 baseR!93 bigger!57) lt!2639285)))

(declare-fun b!7527547 () Bool)

(assert (=> b!7527547 (= e!4486694 e!4486695)))

(declare-fun res!3016953 () Bool)

(assert (=> b!7527547 (=> res!3016953 e!4486695)))

(assert (=> b!7527547 (= res!3016953 call!690587)))

(declare-fun bm!690582 () Bool)

(assert (=> bm!690582 (= call!690587 (isEmpty!41340 bigger!57))))

(assert (= (and d!2309511 c!1390444) b!7527544))

(assert (= (and d!2309511 (not c!1390444)) b!7527534))

(assert (= (and d!2309511 c!1390445) b!7527536))

(assert (= (and d!2309511 (not c!1390445)) b!7527537))

(assert (= (and b!7527537 c!1390443) b!7527540))

(assert (= (and b!7527537 (not c!1390443)) b!7527546))

(assert (= (and b!7527546 (not res!3016951)) b!7527539))

(assert (= (and b!7527539 res!3016949) b!7527545))

(assert (= (and b!7527545 res!3016952) b!7527535))

(assert (= (and b!7527535 res!3016954) b!7527543))

(assert (= (and b!7527539 (not res!3016950)) b!7527538))

(assert (= (and b!7527538 res!3016948) b!7527547))

(assert (= (and b!7527547 (not res!3016953)) b!7527542))

(assert (= (and b!7527542 (not res!3016947)) b!7527541))

(assert (= (or b!7527536 b!7527547 b!7527545) bm!690582))

(declare-fun m!8102306 () Bool)

(assert (=> b!7527535 m!8102306))

(assert (=> b!7527535 m!8102306))

(declare-fun m!8102308 () Bool)

(assert (=> b!7527535 m!8102308))

(declare-fun m!8102310 () Bool)

(assert (=> b!7527534 m!8102310))

(assert (=> b!7527534 m!8102310))

(declare-fun m!8102312 () Bool)

(assert (=> b!7527534 m!8102312))

(assert (=> b!7527534 m!8102306))

(assert (=> b!7527534 m!8102312))

(assert (=> b!7527534 m!8102306))

(declare-fun m!8102314 () Bool)

(assert (=> b!7527534 m!8102314))

(assert (=> b!7527543 m!8102310))

(declare-fun m!8102316 () Bool)

(assert (=> bm!690582 m!8102316))

(declare-fun m!8102318 () Bool)

(assert (=> b!7527544 m!8102318))

(assert (=> d!2309511 m!8102316))

(assert (=> d!2309511 m!8102250))

(assert (=> b!7527541 m!8102310))

(assert (=> b!7527542 m!8102306))

(assert (=> b!7527542 m!8102306))

(assert (=> b!7527542 m!8102308))

(assert (=> b!7527457 d!2309511))

(declare-fun b!7527557 () Bool)

(declare-fun res!3016966 () Bool)

(declare-fun e!4486706 () Bool)

(assert (=> b!7527557 (=> (not res!3016966) (not e!4486706))))

(assert (=> b!7527557 (= res!3016966 (= (head!15450 Nil!72589) (head!15450 input!6727)))))

(declare-fun b!7527556 () Bool)

(declare-fun e!4486705 () Bool)

(assert (=> b!7527556 (= e!4486705 e!4486706)))

(declare-fun res!3016963 () Bool)

(assert (=> b!7527556 (=> (not res!3016963) (not e!4486706))))

(assert (=> b!7527556 (= res!3016963 (not (is-Nil!72589 input!6727)))))

(declare-fun d!2309515 () Bool)

(declare-fun e!4486707 () Bool)

(assert (=> d!2309515 e!4486707))

(declare-fun res!3016964 () Bool)

(assert (=> d!2309515 (=> res!3016964 e!4486707)))

(declare-fun lt!2639288 () Bool)

(assert (=> d!2309515 (= res!3016964 (not lt!2639288))))

(assert (=> d!2309515 (= lt!2639288 e!4486705)))

(declare-fun res!3016965 () Bool)

(assert (=> d!2309515 (=> res!3016965 e!4486705)))

(assert (=> d!2309515 (= res!3016965 (is-Nil!72589 Nil!72589))))

(assert (=> d!2309515 (= (isPrefix!6036 Nil!72589 input!6727) lt!2639288)))

(declare-fun b!7527558 () Bool)

(assert (=> b!7527558 (= e!4486706 (isPrefix!6036 (tail!15010 Nil!72589) (tail!15010 input!6727)))))

(declare-fun b!7527559 () Bool)

(assert (=> b!7527559 (= e!4486707 (>= (size!42326 input!6727) (size!42326 Nil!72589)))))

(assert (= (and d!2309515 (not res!3016965)) b!7527556))

(assert (= (and b!7527556 res!3016963) b!7527557))

(assert (= (and b!7527557 res!3016966) b!7527558))

(assert (= (and d!2309515 (not res!3016964)) b!7527559))

(declare-fun m!8102320 () Bool)

(assert (=> b!7527557 m!8102320))

(declare-fun m!8102322 () Bool)

(assert (=> b!7527557 m!8102322))

(declare-fun m!8102324 () Bool)

(assert (=> b!7527558 m!8102324))

(declare-fun m!8102326 () Bool)

(assert (=> b!7527558 m!8102326))

(assert (=> b!7527558 m!8102324))

(assert (=> b!7527558 m!8102326))

(declare-fun m!8102328 () Bool)

(assert (=> b!7527558 m!8102328))

(assert (=> b!7527559 m!8102256))

(assert (=> b!7527559 m!8102260))

(assert (=> b!7527446 d!2309515))

(declare-fun b!7527578 () Bool)

(declare-fun e!4486726 () Bool)

(declare-fun call!690595 () Bool)

(assert (=> b!7527578 (= e!4486726 call!690595)))

(declare-fun d!2309517 () Bool)

(declare-fun res!3016981 () Bool)

(declare-fun e!4486725 () Bool)

(assert (=> d!2309517 (=> res!3016981 e!4486725)))

(assert (=> d!2309517 (= res!3016981 (is-ElementMatch!19830 baseR!93))))

(assert (=> d!2309517 (= (validRegex!10258 baseR!93) e!4486725)))

(declare-fun b!7527579 () Bool)

(declare-fun e!4486723 () Bool)

(declare-fun call!690596 () Bool)

(assert (=> b!7527579 (= e!4486723 call!690596)))

(declare-fun b!7527580 () Bool)

(declare-fun e!4486728 () Bool)

(declare-fun e!4486727 () Bool)

(assert (=> b!7527580 (= e!4486728 e!4486727)))

(declare-fun c!1390451 () Bool)

(assert (=> b!7527580 (= c!1390451 (is-Union!19830 baseR!93))))

(declare-fun b!7527581 () Bool)

(assert (=> b!7527581 (= e!4486728 e!4486723)))

(declare-fun res!3016980 () Bool)

(assert (=> b!7527581 (= res!3016980 (not (nullable!8648 (reg!20159 baseR!93))))))

(assert (=> b!7527581 (=> (not res!3016980) (not e!4486723))))

(declare-fun b!7527582 () Bool)

(declare-fun e!4486722 () Bool)

(declare-fun call!690594 () Bool)

(assert (=> b!7527582 (= e!4486722 call!690594)))

(declare-fun c!1390450 () Bool)

(declare-fun bm!690589 () Bool)

(assert (=> bm!690589 (= call!690596 (validRegex!10258 (ite c!1390450 (reg!20159 baseR!93) (ite c!1390451 (regOne!40173 baseR!93) (regTwo!40172 baseR!93)))))))

(declare-fun bm!690590 () Bool)

(assert (=> bm!690590 (= call!690594 (validRegex!10258 (ite c!1390451 (regTwo!40173 baseR!93) (regOne!40172 baseR!93))))))

(declare-fun b!7527583 () Bool)

(assert (=> b!7527583 (= e!4486725 e!4486728)))

(assert (=> b!7527583 (= c!1390450 (is-Star!19830 baseR!93))))

(declare-fun b!7527584 () Bool)

(declare-fun res!3016978 () Bool)

(assert (=> b!7527584 (=> (not res!3016978) (not e!4486722))))

(assert (=> b!7527584 (= res!3016978 call!690595)))

(assert (=> b!7527584 (= e!4486727 e!4486722)))

(declare-fun bm!690591 () Bool)

(assert (=> bm!690591 (= call!690595 call!690596)))

(declare-fun b!7527585 () Bool)

(declare-fun res!3016977 () Bool)

(declare-fun e!4486724 () Bool)

(assert (=> b!7527585 (=> res!3016977 e!4486724)))

(assert (=> b!7527585 (= res!3016977 (not (is-Concat!28675 baseR!93)))))

(assert (=> b!7527585 (= e!4486727 e!4486724)))

(declare-fun b!7527586 () Bool)

(assert (=> b!7527586 (= e!4486724 e!4486726)))

(declare-fun res!3016979 () Bool)

(assert (=> b!7527586 (=> (not res!3016979) (not e!4486726))))

(assert (=> b!7527586 (= res!3016979 call!690594)))

(assert (= (and d!2309517 (not res!3016981)) b!7527583))

(assert (= (and b!7527583 c!1390450) b!7527581))

(assert (= (and b!7527583 (not c!1390450)) b!7527580))

(assert (= (and b!7527581 res!3016980) b!7527579))

(assert (= (and b!7527580 c!1390451) b!7527584))

(assert (= (and b!7527580 (not c!1390451)) b!7527585))

(assert (= (and b!7527584 res!3016978) b!7527582))

(assert (= (and b!7527585 (not res!3016977)) b!7527586))

(assert (= (and b!7527586 res!3016979) b!7527578))

(assert (= (or b!7527582 b!7527586) bm!690590))

(assert (= (or b!7527584 b!7527578) bm!690591))

(assert (= (or b!7527579 bm!690591) bm!690589))

(declare-fun m!8102330 () Bool)

(assert (=> b!7527581 m!8102330))

(declare-fun m!8102332 () Bool)

(assert (=> bm!690589 m!8102332))

(declare-fun m!8102334 () Bool)

(assert (=> bm!690590 m!8102334))

(assert (=> start!728410 d!2309517))

(declare-fun bm!690608 () Bool)

(declare-fun call!690619 () Unit!166558)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1508 (List!72713 List!72713 List!72713) Unit!166558)

(assert (=> bm!690608 (= call!690619 (lemmaIsPrefixSameLengthThenSameList!1508 input!6727 Nil!72589 input!6727))))

(declare-fun b!7527631 () Bool)

(declare-fun e!4486756 () Bool)

(declare-fun e!4486754 () Bool)

(assert (=> b!7527631 (= e!4486756 e!4486754)))

(declare-fun res!3016986 () Bool)

(assert (=> b!7527631 (=> res!3016986 e!4486754)))

(declare-fun lt!2639403 () tuple2!68802)

(assert (=> b!7527631 (= res!3016986 (isEmpty!41340 (_1!37704 lt!2639403)))))

(declare-fun b!7527632 () Bool)

(declare-fun e!4486755 () Unit!166558)

(declare-fun Unit!166562 () Unit!166558)

(assert (=> b!7527632 (= e!4486755 Unit!166562)))

(declare-fun b!7527633 () Bool)

(declare-fun e!4486757 () tuple2!68802)

(declare-fun e!4486760 () tuple2!68802)

(assert (=> b!7527633 (= e!4486757 e!4486760)))

(declare-fun lt!2639398 () tuple2!68802)

(declare-fun call!690620 () tuple2!68802)

(assert (=> b!7527633 (= lt!2639398 call!690620)))

(declare-fun c!1390473 () Bool)

(assert (=> b!7527633 (= c!1390473 (isEmpty!41340 (_1!37704 lt!2639398)))))

(declare-fun b!7527634 () Bool)

(assert (=> b!7527634 (= e!4486760 lt!2639398)))

(declare-fun b!7527635 () Bool)

(assert (=> b!7527635 (= e!4486754 (>= (size!42326 (_1!37704 lt!2639403)) (size!42326 Nil!72589)))))

(declare-fun b!7527636 () Bool)

(declare-fun e!4486759 () tuple2!68802)

(assert (=> b!7527636 (= e!4486759 (tuple2!68803 Nil!72589 input!6727))))

(declare-fun bm!690610 () Bool)

(declare-fun call!690614 () Bool)

(assert (=> bm!690610 (= call!690614 (isPrefix!6036 input!6727 input!6727))))

(declare-fun bm!690611 () Bool)

(declare-fun call!690613 () List!72713)

(assert (=> bm!690611 (= call!690613 (tail!15010 input!6727))))

(declare-fun b!7527637 () Bool)

(assert (=> b!7527637 (= e!4486760 (tuple2!68803 Nil!72589 input!6727))))

(declare-fun b!7527638 () Bool)

(assert (=> b!7527638 (= e!4486757 call!690620)))

(declare-fun b!7527639 () Bool)

(declare-fun e!4486753 () tuple2!68802)

(assert (=> b!7527639 (= e!4486753 (tuple2!68803 Nil!72589 Nil!72589))))

(declare-fun bm!690612 () Bool)

(declare-fun call!690618 () Unit!166558)

(declare-fun lemmaIsPrefixRefl!3857 (List!72713 List!72713) Unit!166558)

(assert (=> bm!690612 (= call!690618 (lemmaIsPrefixRefl!3857 input!6727 input!6727))))

(declare-fun b!7527640 () Bool)

(declare-fun c!1390474 () Bool)

(declare-fun call!690615 () Bool)

(assert (=> b!7527640 (= c!1390474 call!690615)))

(declare-fun lt!2639407 () Unit!166558)

(declare-fun lt!2639388 () Unit!166558)

(assert (=> b!7527640 (= lt!2639407 lt!2639388)))

(declare-fun lt!2639406 () C!39986)

(declare-fun lt!2639395 () List!72713)

(declare-fun ++!17369 (List!72713 List!72713) List!72713)

(assert (=> b!7527640 (= (++!17369 (++!17369 Nil!72589 (Cons!72589 lt!2639406 Nil!72589)) lt!2639395) input!6727)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3166 (List!72713 C!39986 List!72713 List!72713) Unit!166558)

(assert (=> b!7527640 (= lt!2639388 (lemmaMoveElementToOtherListKeepsConcatEq!3166 Nil!72589 lt!2639406 lt!2639395 input!6727))))

(assert (=> b!7527640 (= lt!2639395 (tail!15010 input!6727))))

(assert (=> b!7527640 (= lt!2639406 (head!15450 input!6727))))

(declare-fun lt!2639389 () Unit!166558)

(declare-fun lt!2639396 () Unit!166558)

(assert (=> b!7527640 (= lt!2639389 lt!2639396)))

(assert (=> b!7527640 (isPrefix!6036 (++!17369 Nil!72589 (Cons!72589 (head!15450 (getSuffix!3522 input!6727 Nil!72589)) Nil!72589)) input!6727)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1135 (List!72713 List!72713) Unit!166558)

(assert (=> b!7527640 (= lt!2639396 (lemmaAddHeadSuffixToPrefixStillPrefix!1135 Nil!72589 input!6727))))

(declare-fun lt!2639405 () Unit!166558)

(declare-fun lt!2639387 () Unit!166558)

(assert (=> b!7527640 (= lt!2639405 lt!2639387)))

(assert (=> b!7527640 (= lt!2639387 (lemmaAddHeadSuffixToPrefixStillPrefix!1135 Nil!72589 input!6727))))

(declare-fun lt!2639404 () List!72713)

(assert (=> b!7527640 (= lt!2639404 (++!17369 Nil!72589 (Cons!72589 (head!15450 input!6727) Nil!72589)))))

(declare-fun lt!2639397 () Unit!166558)

(assert (=> b!7527640 (= lt!2639397 e!4486755)))

(declare-fun c!1390477 () Bool)

(assert (=> b!7527640 (= c!1390477 (= (size!42326 Nil!72589) (size!42326 input!6727)))))

(declare-fun lt!2639383 () Unit!166558)

(declare-fun lt!2639382 () Unit!166558)

(assert (=> b!7527640 (= lt!2639383 lt!2639382)))

(assert (=> b!7527640 (<= (size!42326 Nil!72589) (size!42326 input!6727))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!1005 (List!72713 List!72713) Unit!166558)

(assert (=> b!7527640 (= lt!2639382 (lemmaIsPrefixThenSmallerEqSize!1005 Nil!72589 input!6727))))

(declare-fun e!4486758 () tuple2!68802)

(assert (=> b!7527640 (= e!4486758 e!4486757)))

(declare-fun b!7527641 () Bool)

(assert (=> b!7527641 (= e!4486759 e!4486758)))

(declare-fun c!1390475 () Bool)

(assert (=> b!7527641 (= c!1390475 (= lt!2639269 (size!42326 input!6727)))))

(declare-fun b!7527642 () Bool)

(declare-fun c!1390472 () Bool)

(assert (=> b!7527642 (= c!1390472 call!690615)))

(declare-fun lt!2639384 () Unit!166558)

(declare-fun lt!2639381 () Unit!166558)

(assert (=> b!7527642 (= lt!2639384 lt!2639381)))

(assert (=> b!7527642 (= input!6727 Nil!72589)))

(assert (=> b!7527642 (= lt!2639381 call!690619)))

(declare-fun lt!2639400 () Unit!166558)

(declare-fun lt!2639401 () Unit!166558)

(assert (=> b!7527642 (= lt!2639400 lt!2639401)))

(assert (=> b!7527642 call!690614))

(assert (=> b!7527642 (= lt!2639401 call!690618)))

(assert (=> b!7527642 (= e!4486758 e!4486753)))

(declare-fun b!7527643 () Bool)

(declare-fun Unit!166563 () Unit!166558)

(assert (=> b!7527643 (= e!4486755 Unit!166563)))

(declare-fun lt!2639408 () Unit!166558)

(assert (=> b!7527643 (= lt!2639408 call!690618)))

(assert (=> b!7527643 call!690614))

(declare-fun lt!2639390 () Unit!166558)

(assert (=> b!7527643 (= lt!2639390 lt!2639408)))

(declare-fun lt!2639385 () Unit!166558)

(assert (=> b!7527643 (= lt!2639385 call!690619)))

(assert (=> b!7527643 (= input!6727 Nil!72589)))

(declare-fun lt!2639394 () Unit!166558)

(assert (=> b!7527643 (= lt!2639394 lt!2639385)))

(assert (=> b!7527643 false))

(declare-fun bm!690609 () Bool)

(assert (=> bm!690609 (= call!690615 (nullable!8648 baseR!93))))

(declare-fun d!2309519 () Bool)

(assert (=> d!2309519 e!4486756))

(declare-fun res!3016987 () Bool)

(assert (=> d!2309519 (=> (not res!3016987) (not e!4486756))))

(assert (=> d!2309519 (= res!3016987 (= (++!17369 (_1!37704 lt!2639403) (_2!37704 lt!2639403)) input!6727))))

(assert (=> d!2309519 (= lt!2639403 e!4486759)))

(declare-fun c!1390476 () Bool)

(declare-fun lostCause!1632 (Regex!19830) Bool)

(assert (=> d!2309519 (= c!1390476 (lostCause!1632 baseR!93))))

(declare-fun lt!2639392 () Unit!166558)

(declare-fun Unit!166564 () Unit!166558)

(assert (=> d!2309519 (= lt!2639392 Unit!166564)))

(assert (=> d!2309519 (= (getSuffix!3522 input!6727 Nil!72589) input!6727)))

(declare-fun lt!2639393 () Unit!166558)

(declare-fun lt!2639391 () Unit!166558)

(assert (=> d!2309519 (= lt!2639393 lt!2639391)))

(declare-fun lt!2639402 () List!72713)

(assert (=> d!2309519 (= input!6727 lt!2639402)))

(declare-fun lemmaSamePrefixThenSameSuffix!2816 (List!72713 List!72713 List!72713 List!72713 List!72713) Unit!166558)

(assert (=> d!2309519 (= lt!2639391 (lemmaSamePrefixThenSameSuffix!2816 Nil!72589 input!6727 Nil!72589 lt!2639402 input!6727))))

(assert (=> d!2309519 (= lt!2639402 (getSuffix!3522 input!6727 Nil!72589))))

(declare-fun lt!2639399 () Unit!166558)

(declare-fun lt!2639386 () Unit!166558)

(assert (=> d!2309519 (= lt!2639399 lt!2639386)))

(assert (=> d!2309519 (isPrefix!6036 Nil!72589 (++!17369 Nil!72589 input!6727))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3730 (List!72713 List!72713) Unit!166558)

(assert (=> d!2309519 (= lt!2639386 (lemmaConcatTwoListThenFirstIsPrefix!3730 Nil!72589 input!6727))))

(assert (=> d!2309519 (validRegex!10258 baseR!93)))

(assert (=> d!2309519 (= (findLongestMatchInner!2109 baseR!93 Nil!72589 lt!2639269 input!6727 input!6727 (size!42326 input!6727)) lt!2639403)))

(declare-fun bm!690613 () Bool)

(declare-fun call!690616 () Regex!19830)

(declare-fun call!690617 () C!39986)

(assert (=> bm!690613 (= call!690616 (derivativeStep!5654 baseR!93 call!690617))))

(declare-fun b!7527644 () Bool)

(assert (=> b!7527644 (= e!4486753 (tuple2!68803 Nil!72589 input!6727))))

(declare-fun bm!690614 () Bool)

(assert (=> bm!690614 (= call!690620 (findLongestMatchInner!2109 call!690616 lt!2639404 (+ lt!2639269 1) call!690613 input!6727 (size!42326 input!6727)))))

(declare-fun bm!690615 () Bool)

(assert (=> bm!690615 (= call!690617 (head!15450 input!6727))))

(assert (= (and d!2309519 c!1390476) b!7527636))

(assert (= (and d!2309519 (not c!1390476)) b!7527641))

(assert (= (and b!7527641 c!1390475) b!7527642))

(assert (= (and b!7527641 (not c!1390475)) b!7527640))

(assert (= (and b!7527642 c!1390472) b!7527639))

(assert (= (and b!7527642 (not c!1390472)) b!7527644))

(assert (= (and b!7527640 c!1390477) b!7527643))

(assert (= (and b!7527640 (not c!1390477)) b!7527632))

(assert (= (and b!7527640 c!1390474) b!7527633))

(assert (= (and b!7527640 (not c!1390474)) b!7527638))

(assert (= (and b!7527633 c!1390473) b!7527637))

(assert (= (and b!7527633 (not c!1390473)) b!7527634))

(assert (= (or b!7527633 b!7527638) bm!690615))

(assert (= (or b!7527633 b!7527638) bm!690611))

(assert (= (or b!7527633 b!7527638) bm!690613))

(assert (= (or b!7527633 b!7527638) bm!690614))

(assert (= (or b!7527642 b!7527643) bm!690610))

(assert (= (or b!7527642 b!7527640) bm!690609))

(assert (= (or b!7527642 b!7527643) bm!690608))

(assert (= (or b!7527642 b!7527643) bm!690612))

(assert (= (and d!2309519 res!3016987) b!7527631))

(assert (= (and b!7527631 (not res!3016986)) b!7527635))

(declare-fun m!8102336 () Bool)

(assert (=> b!7527633 m!8102336))

(assert (=> bm!690611 m!8102326))

(assert (=> bm!690609 m!8102318))

(declare-fun m!8102338 () Bool)

(assert (=> bm!690610 m!8102338))

(declare-fun m!8102340 () Bool)

(assert (=> bm!690608 m!8102340))

(declare-fun m!8102342 () Bool)

(assert (=> b!7527640 m!8102342))

(assert (=> b!7527640 m!8102326))

(assert (=> b!7527640 m!8102256))

(declare-fun m!8102344 () Bool)

(assert (=> b!7527640 m!8102344))

(declare-fun m!8102346 () Bool)

(assert (=> b!7527640 m!8102346))

(assert (=> b!7527640 m!8102260))

(declare-fun m!8102348 () Bool)

(assert (=> b!7527640 m!8102348))

(assert (=> b!7527640 m!8102344))

(declare-fun m!8102350 () Bool)

(assert (=> b!7527640 m!8102350))

(declare-fun m!8102352 () Bool)

(assert (=> b!7527640 m!8102352))

(declare-fun m!8102354 () Bool)

(assert (=> b!7527640 m!8102354))

(declare-fun m!8102356 () Bool)

(assert (=> b!7527640 m!8102356))

(declare-fun m!8102358 () Bool)

(assert (=> b!7527640 m!8102358))

(declare-fun m!8102360 () Bool)

(assert (=> b!7527640 m!8102360))

(assert (=> b!7527640 m!8102322))

(assert (=> b!7527640 m!8102356))

(assert (=> b!7527640 m!8102350))

(declare-fun m!8102362 () Bool)

(assert (=> b!7527631 m!8102362))

(declare-fun m!8102364 () Bool)

(assert (=> d!2309519 m!8102364))

(declare-fun m!8102366 () Bool)

(assert (=> d!2309519 m!8102366))

(declare-fun m!8102368 () Bool)

(assert (=> d!2309519 m!8102368))

(assert (=> d!2309519 m!8102356))

(assert (=> d!2309519 m!8102364))

(assert (=> d!2309519 m!8102250))

(declare-fun m!8102370 () Bool)

(assert (=> d!2309519 m!8102370))

(declare-fun m!8102372 () Bool)

(assert (=> d!2309519 m!8102372))

(declare-fun m!8102374 () Bool)

(assert (=> d!2309519 m!8102374))

(declare-fun m!8102376 () Bool)

(assert (=> b!7527635 m!8102376))

(assert (=> b!7527635 m!8102260))

(assert (=> bm!690614 m!8102256))

(declare-fun m!8102378 () Bool)

(assert (=> bm!690614 m!8102378))

(declare-fun m!8102380 () Bool)

(assert (=> bm!690612 m!8102380))

(declare-fun m!8102382 () Bool)

(assert (=> bm!690613 m!8102382))

(assert (=> bm!690615 m!8102322))

(assert (=> b!7527451 d!2309519))

(declare-fun d!2309521 () Bool)

(declare-fun lt!2639431 () Int)

(assert (=> d!2309521 (>= lt!2639431 0)))

(declare-fun e!4486767 () Int)

(assert (=> d!2309521 (= lt!2639431 e!4486767)))

(declare-fun c!1390484 () Bool)

(assert (=> d!2309521 (= c!1390484 (is-Nil!72589 input!6727))))

(assert (=> d!2309521 (= (size!42326 input!6727) lt!2639431)))

(declare-fun b!7527657 () Bool)

(assert (=> b!7527657 (= e!4486767 0)))

(declare-fun b!7527658 () Bool)

(assert (=> b!7527658 (= e!4486767 (+ 1 (size!42326 (t!387420 input!6727))))))

(assert (= (and d!2309521 c!1390484) b!7527657))

(assert (= (and d!2309521 (not c!1390484)) b!7527658))

(declare-fun m!8102384 () Bool)

(assert (=> b!7527658 m!8102384))

(assert (=> b!7527451 d!2309521))

(declare-fun d!2309523 () Bool)

(declare-fun lt!2639432 () Int)

(assert (=> d!2309523 (>= lt!2639432 0)))

(declare-fun e!4486768 () Int)

(assert (=> d!2309523 (= lt!2639432 e!4486768)))

(declare-fun c!1390485 () Bool)

(assert (=> d!2309523 (= c!1390485 (is-Nil!72589 Nil!72589))))

(assert (=> d!2309523 (= (size!42326 Nil!72589) lt!2639432)))

(declare-fun b!7527659 () Bool)

(assert (=> b!7527659 (= e!4486768 0)))

(declare-fun b!7527660 () Bool)

(assert (=> b!7527660 (= e!4486768 (+ 1 (size!42326 (t!387420 Nil!72589))))))

(assert (= (and d!2309523 c!1390485) b!7527659))

(assert (= (and d!2309523 (not c!1390485)) b!7527660))

(declare-fun m!8102386 () Bool)

(assert (=> b!7527660 m!8102386))

(assert (=> b!7527451 d!2309523))

(declare-fun b!7527661 () Bool)

(declare-fun e!4486770 () Bool)

(assert (=> b!7527661 (= e!4486770 (matchR!9434 (derivativeStep!5654 baseR!93 (head!15450 (getSuffix!3522 bigger!57 Nil!72589))) (tail!15010 (getSuffix!3522 bigger!57 Nil!72589))))))

(declare-fun b!7527662 () Bool)

(declare-fun res!3016995 () Bool)

(declare-fun e!4486775 () Bool)

(assert (=> b!7527662 (=> (not res!3016995) (not e!4486775))))

(assert (=> b!7527662 (= res!3016995 (isEmpty!41340 (tail!15010 (getSuffix!3522 bigger!57 Nil!72589))))))

(declare-fun b!7527663 () Bool)

(declare-fun e!4486773 () Bool)

(declare-fun lt!2639433 () Bool)

(declare-fun call!690629 () Bool)

(assert (=> b!7527663 (= e!4486773 (= lt!2639433 call!690629))))

(declare-fun b!7527664 () Bool)

(declare-fun e!4486774 () Bool)

(assert (=> b!7527664 (= e!4486773 e!4486774)))

(declare-fun c!1390486 () Bool)

(assert (=> b!7527664 (= c!1390486 (is-EmptyLang!19830 baseR!93))))

(declare-fun b!7527665 () Bool)

(declare-fun e!4486769 () Bool)

(declare-fun e!4486771 () Bool)

(assert (=> b!7527665 (= e!4486769 e!4486771)))

(declare-fun res!3016989 () Bool)

(assert (=> b!7527665 (=> (not res!3016989) (not e!4486771))))

(assert (=> b!7527665 (= res!3016989 (not lt!2639433))))

(declare-fun b!7527666 () Bool)

(declare-fun res!3016991 () Bool)

(assert (=> b!7527666 (=> res!3016991 e!4486769)))

(assert (=> b!7527666 (= res!3016991 e!4486775)))

(declare-fun res!3016990 () Bool)

(assert (=> b!7527666 (=> (not res!3016990) (not e!4486775))))

(assert (=> b!7527666 (= res!3016990 lt!2639433)))

(declare-fun b!7527667 () Bool)

(assert (=> b!7527667 (= e!4486774 (not lt!2639433))))

(declare-fun b!7527668 () Bool)

(declare-fun e!4486772 () Bool)

(assert (=> b!7527668 (= e!4486772 (not (= (head!15450 (getSuffix!3522 bigger!57 Nil!72589)) (c!1390435 baseR!93))))))

(declare-fun b!7527669 () Bool)

(declare-fun res!3016988 () Bool)

(assert (=> b!7527669 (=> res!3016988 e!4486772)))

(assert (=> b!7527669 (= res!3016988 (not (isEmpty!41340 (tail!15010 (getSuffix!3522 bigger!57 Nil!72589)))))))

(declare-fun b!7527670 () Bool)

(assert (=> b!7527670 (= e!4486775 (= (head!15450 (getSuffix!3522 bigger!57 Nil!72589)) (c!1390435 baseR!93)))))

(declare-fun b!7527671 () Bool)

(assert (=> b!7527671 (= e!4486770 (nullable!8648 baseR!93))))

(declare-fun b!7527672 () Bool)

(declare-fun res!3016993 () Bool)

(assert (=> b!7527672 (=> (not res!3016993) (not e!4486775))))

(assert (=> b!7527672 (= res!3016993 (not call!690629))))

(declare-fun b!7527673 () Bool)

(declare-fun res!3016992 () Bool)

(assert (=> b!7527673 (=> res!3016992 e!4486769)))

(assert (=> b!7527673 (= res!3016992 (not (is-ElementMatch!19830 baseR!93)))))

(assert (=> b!7527673 (= e!4486774 e!4486769)))

(declare-fun d!2309525 () Bool)

(assert (=> d!2309525 e!4486773))

(declare-fun c!1390488 () Bool)

(assert (=> d!2309525 (= c!1390488 (is-EmptyExpr!19830 baseR!93))))

(assert (=> d!2309525 (= lt!2639433 e!4486770)))

(declare-fun c!1390487 () Bool)

(assert (=> d!2309525 (= c!1390487 (isEmpty!41340 (getSuffix!3522 bigger!57 Nil!72589)))))

(assert (=> d!2309525 (validRegex!10258 baseR!93)))

(assert (=> d!2309525 (= (matchR!9434 baseR!93 (getSuffix!3522 bigger!57 Nil!72589)) lt!2639433)))

(declare-fun b!7527674 () Bool)

(assert (=> b!7527674 (= e!4486771 e!4486772)))

(declare-fun res!3016994 () Bool)

(assert (=> b!7527674 (=> res!3016994 e!4486772)))

(assert (=> b!7527674 (= res!3016994 call!690629)))

(declare-fun bm!690624 () Bool)

(assert (=> bm!690624 (= call!690629 (isEmpty!41340 (getSuffix!3522 bigger!57 Nil!72589)))))

(assert (= (and d!2309525 c!1390487) b!7527671))

(assert (= (and d!2309525 (not c!1390487)) b!7527661))

(assert (= (and d!2309525 c!1390488) b!7527663))

(assert (= (and d!2309525 (not c!1390488)) b!7527664))

(assert (= (and b!7527664 c!1390486) b!7527667))

(assert (= (and b!7527664 (not c!1390486)) b!7527673))

(assert (= (and b!7527673 (not res!3016992)) b!7527666))

(assert (= (and b!7527666 res!3016990) b!7527672))

(assert (= (and b!7527672 res!3016993) b!7527662))

(assert (= (and b!7527662 res!3016995) b!7527670))

(assert (= (and b!7527666 (not res!3016991)) b!7527665))

(assert (= (and b!7527665 res!3016989) b!7527674))

(assert (= (and b!7527674 (not res!3016994)) b!7527669))

(assert (= (and b!7527669 (not res!3016988)) b!7527668))

(assert (= (or b!7527663 b!7527674 b!7527672) bm!690624))

(assert (=> b!7527662 m!8102262))

(declare-fun m!8102388 () Bool)

(assert (=> b!7527662 m!8102388))

(assert (=> b!7527662 m!8102388))

(declare-fun m!8102390 () Bool)

(assert (=> b!7527662 m!8102390))

(assert (=> b!7527661 m!8102262))

(declare-fun m!8102392 () Bool)

(assert (=> b!7527661 m!8102392))

(assert (=> b!7527661 m!8102392))

(declare-fun m!8102394 () Bool)

(assert (=> b!7527661 m!8102394))

(assert (=> b!7527661 m!8102262))

(assert (=> b!7527661 m!8102388))

(assert (=> b!7527661 m!8102394))

(assert (=> b!7527661 m!8102388))

(declare-fun m!8102396 () Bool)

(assert (=> b!7527661 m!8102396))

(assert (=> b!7527670 m!8102262))

(assert (=> b!7527670 m!8102392))

(assert (=> bm!690624 m!8102262))

(declare-fun m!8102398 () Bool)

(assert (=> bm!690624 m!8102398))

(assert (=> b!7527671 m!8102318))

(assert (=> d!2309525 m!8102262))

(assert (=> d!2309525 m!8102398))

(assert (=> d!2309525 m!8102250))

(assert (=> b!7527668 m!8102262))

(assert (=> b!7527668 m!8102392))

(assert (=> b!7527669 m!8102262))

(assert (=> b!7527669 m!8102388))

(assert (=> b!7527669 m!8102388))

(assert (=> b!7527669 m!8102390))

(assert (=> b!7527456 d!2309525))

(declare-fun d!2309527 () Bool)

(declare-fun lt!2639436 () List!72713)

(assert (=> d!2309527 (= (++!17369 Nil!72589 lt!2639436) bigger!57)))

(declare-fun e!4486778 () List!72713)

(assert (=> d!2309527 (= lt!2639436 e!4486778)))

(declare-fun c!1390491 () Bool)

(assert (=> d!2309527 (= c!1390491 (is-Cons!72589 Nil!72589))))

(assert (=> d!2309527 (>= (size!42326 bigger!57) (size!42326 Nil!72589))))

(assert (=> d!2309527 (= (getSuffix!3522 bigger!57 Nil!72589) lt!2639436)))

(declare-fun b!7527679 () Bool)

(assert (=> b!7527679 (= e!4486778 (getSuffix!3522 (tail!15010 bigger!57) (t!387420 Nil!72589)))))

(declare-fun b!7527680 () Bool)

(assert (=> b!7527680 (= e!4486778 bigger!57)))

(assert (= (and d!2309527 c!1390491) b!7527679))

(assert (= (and d!2309527 (not c!1390491)) b!7527680))

(declare-fun m!8102400 () Bool)

(assert (=> d!2309527 m!8102400))

(assert (=> d!2309527 m!8102274))

(assert (=> d!2309527 m!8102260))

(assert (=> b!7527679 m!8102306))

(assert (=> b!7527679 m!8102306))

(declare-fun m!8102402 () Bool)

(assert (=> b!7527679 m!8102402))

(assert (=> b!7527456 d!2309527))

(declare-fun b!7527682 () Bool)

(declare-fun res!3016999 () Bool)

(declare-fun e!4486780 () Bool)

(assert (=> b!7527682 (=> (not res!3016999) (not e!4486780))))

(assert (=> b!7527682 (= res!3016999 (= (head!15450 Nil!72589) (head!15450 bigger!57)))))

(declare-fun b!7527681 () Bool)

(declare-fun e!4486779 () Bool)

(assert (=> b!7527681 (= e!4486779 e!4486780)))

(declare-fun res!3016996 () Bool)

(assert (=> b!7527681 (=> (not res!3016996) (not e!4486780))))

(assert (=> b!7527681 (= res!3016996 (not (is-Nil!72589 bigger!57)))))

(declare-fun d!2309529 () Bool)

(declare-fun e!4486781 () Bool)

(assert (=> d!2309529 e!4486781))

(declare-fun res!3016997 () Bool)

(assert (=> d!2309529 (=> res!3016997 e!4486781)))

(declare-fun lt!2639437 () Bool)

(assert (=> d!2309529 (= res!3016997 (not lt!2639437))))

(assert (=> d!2309529 (= lt!2639437 e!4486779)))

(declare-fun res!3016998 () Bool)

(assert (=> d!2309529 (=> res!3016998 e!4486779)))

(assert (=> d!2309529 (= res!3016998 (is-Nil!72589 Nil!72589))))

(assert (=> d!2309529 (= (isPrefix!6036 Nil!72589 bigger!57) lt!2639437)))

(declare-fun b!7527683 () Bool)

(assert (=> b!7527683 (= e!4486780 (isPrefix!6036 (tail!15010 Nil!72589) (tail!15010 bigger!57)))))

(declare-fun b!7527684 () Bool)

(assert (=> b!7527684 (= e!4486781 (>= (size!42326 bigger!57) (size!42326 Nil!72589)))))

(assert (= (and d!2309529 (not res!3016998)) b!7527681))

(assert (= (and b!7527681 res!3016996) b!7527682))

(assert (= (and b!7527682 res!3016999) b!7527683))

(assert (= (and d!2309529 (not res!3016997)) b!7527684))

(assert (=> b!7527682 m!8102320))

(assert (=> b!7527682 m!8102310))

(assert (=> b!7527683 m!8102324))

(assert (=> b!7527683 m!8102306))

(assert (=> b!7527683 m!8102324))

(assert (=> b!7527683 m!8102306))

(declare-fun m!8102404 () Bool)

(assert (=> b!7527683 m!8102404))

(assert (=> b!7527684 m!8102274))

(assert (=> b!7527684 m!8102260))

(assert (=> b!7527456 d!2309529))

(declare-fun d!2309531 () Bool)

(assert (=> d!2309531 (isPrefix!6036 Nil!72589 bigger!57)))

(declare-fun lt!2639440 () Unit!166558)

(declare-fun choose!58259 (List!72713 List!72713 List!72713) Unit!166558)

(assert (=> d!2309531 (= lt!2639440 (choose!58259 bigger!57 Nil!72589 input!6727))))

(assert (=> d!2309531 (isPrefix!6036 bigger!57 input!6727)))

(assert (=> d!2309531 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!792 bigger!57 Nil!72589 input!6727) lt!2639440)))

(declare-fun bs!1939781 () Bool)

(assert (= bs!1939781 d!2309531))

(assert (=> bs!1939781 m!8102266))

(declare-fun m!8102406 () Bool)

(assert (=> bs!1939781 m!8102406))

(assert (=> bs!1939781 m!8102270))

(assert (=> b!7527456 d!2309531))

(declare-fun b!7527690 () Bool)

(declare-fun res!3017007 () Bool)

(declare-fun e!4486787 () Bool)

(assert (=> b!7527690 (=> (not res!3017007) (not e!4486787))))

(assert (=> b!7527690 (= res!3017007 (= (head!15450 bigger!57) (head!15450 input!6727)))))

(declare-fun b!7527689 () Bool)

(declare-fun e!4486786 () Bool)

(assert (=> b!7527689 (= e!4486786 e!4486787)))

(declare-fun res!3017004 () Bool)

(assert (=> b!7527689 (=> (not res!3017004) (not e!4486787))))

(assert (=> b!7527689 (= res!3017004 (not (is-Nil!72589 input!6727)))))

(declare-fun d!2309533 () Bool)

(declare-fun e!4486788 () Bool)

(assert (=> d!2309533 e!4486788))

(declare-fun res!3017005 () Bool)

(assert (=> d!2309533 (=> res!3017005 e!4486788)))

(declare-fun lt!2639441 () Bool)

(assert (=> d!2309533 (= res!3017005 (not lt!2639441))))

(assert (=> d!2309533 (= lt!2639441 e!4486786)))

(declare-fun res!3017006 () Bool)

(assert (=> d!2309533 (=> res!3017006 e!4486786)))

(assert (=> d!2309533 (= res!3017006 (is-Nil!72589 bigger!57))))

(assert (=> d!2309533 (= (isPrefix!6036 bigger!57 input!6727) lt!2639441)))

(declare-fun b!7527691 () Bool)

(assert (=> b!7527691 (= e!4486787 (isPrefix!6036 (tail!15010 bigger!57) (tail!15010 input!6727)))))

(declare-fun b!7527692 () Bool)

(assert (=> b!7527692 (= e!4486788 (>= (size!42326 input!6727) (size!42326 bigger!57)))))

(assert (= (and d!2309533 (not res!3017006)) b!7527689))

(assert (= (and b!7527689 res!3017004) b!7527690))

(assert (= (and b!7527690 res!3017007) b!7527691))

(assert (= (and d!2309533 (not res!3017005)) b!7527692))

(assert (=> b!7527690 m!8102310))

(assert (=> b!7527690 m!8102322))

(assert (=> b!7527691 m!8102306))

(assert (=> b!7527691 m!8102326))

(assert (=> b!7527691 m!8102306))

(assert (=> b!7527691 m!8102326))

(declare-fun m!8102408 () Bool)

(assert (=> b!7527691 m!8102408))

(assert (=> b!7527692 m!8102256))

(assert (=> b!7527692 m!8102274))

(assert (=> b!7527445 d!2309533))

(declare-fun b!7527694 () Bool)

(declare-fun res!3017011 () Bool)

(declare-fun e!4486790 () Bool)

(assert (=> b!7527694 (=> (not res!3017011) (not e!4486790))))

(assert (=> b!7527694 (= res!3017011 (= (head!15450 returnP!57) (head!15450 input!6727)))))

(declare-fun b!7527693 () Bool)

(declare-fun e!4486789 () Bool)

(assert (=> b!7527693 (= e!4486789 e!4486790)))

(declare-fun res!3017008 () Bool)

(assert (=> b!7527693 (=> (not res!3017008) (not e!4486790))))

(assert (=> b!7527693 (= res!3017008 (not (is-Nil!72589 input!6727)))))

(declare-fun d!2309535 () Bool)

(declare-fun e!4486791 () Bool)

(assert (=> d!2309535 e!4486791))

(declare-fun res!3017009 () Bool)

(assert (=> d!2309535 (=> res!3017009 e!4486791)))

(declare-fun lt!2639442 () Bool)

(assert (=> d!2309535 (= res!3017009 (not lt!2639442))))

(assert (=> d!2309535 (= lt!2639442 e!4486789)))

(declare-fun res!3017010 () Bool)

(assert (=> d!2309535 (=> res!3017010 e!4486789)))

(assert (=> d!2309535 (= res!3017010 (is-Nil!72589 returnP!57))))

(assert (=> d!2309535 (= (isPrefix!6036 returnP!57 input!6727) lt!2639442)))

(declare-fun b!7527695 () Bool)

(assert (=> b!7527695 (= e!4486790 (isPrefix!6036 (tail!15010 returnP!57) (tail!15010 input!6727)))))

(declare-fun b!7527696 () Bool)

(assert (=> b!7527696 (= e!4486791 (>= (size!42326 input!6727) (size!42326 returnP!57)))))

(assert (= (and d!2309535 (not res!3017010)) b!7527693))

(assert (= (and b!7527693 res!3017008) b!7527694))

(assert (= (and b!7527694 res!3017011) b!7527695))

(assert (= (and d!2309535 (not res!3017009)) b!7527696))

(declare-fun m!8102410 () Bool)

(assert (=> b!7527694 m!8102410))

(assert (=> b!7527694 m!8102322))

(declare-fun m!8102412 () Bool)

(assert (=> b!7527695 m!8102412))

(assert (=> b!7527695 m!8102326))

(assert (=> b!7527695 m!8102412))

(assert (=> b!7527695 m!8102326))

(declare-fun m!8102414 () Bool)

(assert (=> b!7527695 m!8102414))

(assert (=> b!7527696 m!8102256))

(assert (=> b!7527696 m!8102272))

(assert (=> b!7527449 d!2309535))

(declare-fun d!2309537 () Bool)

(declare-fun lt!2639443 () Int)

(assert (=> d!2309537 (>= lt!2639443 0)))

(declare-fun e!4486792 () Int)

(assert (=> d!2309537 (= lt!2639443 e!4486792)))

(declare-fun c!1390492 () Bool)

(assert (=> d!2309537 (= c!1390492 (is-Nil!72589 returnP!57))))

(assert (=> d!2309537 (= (size!42326 returnP!57) lt!2639443)))

(declare-fun b!7527697 () Bool)

(assert (=> b!7527697 (= e!4486792 0)))

(declare-fun b!7527698 () Bool)

(assert (=> b!7527698 (= e!4486792 (+ 1 (size!42326 (t!387420 returnP!57))))))

(assert (= (and d!2309537 c!1390492) b!7527697))

(assert (= (and d!2309537 (not c!1390492)) b!7527698))

(declare-fun m!8102416 () Bool)

(assert (=> b!7527698 m!8102416))

(assert (=> b!7527454 d!2309537))

(declare-fun d!2309539 () Bool)

(declare-fun lt!2639444 () Int)

(assert (=> d!2309539 (>= lt!2639444 0)))

(declare-fun e!4486793 () Int)

(assert (=> d!2309539 (= lt!2639444 e!4486793)))

(declare-fun c!1390493 () Bool)

(assert (=> d!2309539 (= c!1390493 (is-Nil!72589 bigger!57))))

(assert (=> d!2309539 (= (size!42326 bigger!57) lt!2639444)))

(declare-fun b!7527699 () Bool)

(assert (=> b!7527699 (= e!4486793 0)))

(declare-fun b!7527700 () Bool)

(assert (=> b!7527700 (= e!4486793 (+ 1 (size!42326 (t!387420 bigger!57))))))

(assert (= (and d!2309539 c!1390493) b!7527699))

(assert (= (and d!2309539 (not c!1390493)) b!7527700))

(declare-fun m!8102418 () Bool)

(assert (=> b!7527700 m!8102418))

(assert (=> b!7527454 d!2309539))

(declare-fun b!7527705 () Bool)

(declare-fun e!4486796 () Bool)

(declare-fun tp!2187804 () Bool)

(assert (=> b!7527705 (= e!4486796 (and tp_is_empty!50015 tp!2187804))))

(assert (=> b!7527453 (= tp!2187771 e!4486796)))

(assert (= (and b!7527453 (is-Cons!72589 (t!387420 input!6727))) b!7527705))

(declare-fun e!4486799 () Bool)

(assert (=> b!7527452 (= tp!2187775 e!4486799)))

(declare-fun b!7527719 () Bool)

(declare-fun tp!2187816 () Bool)

(declare-fun tp!2187819 () Bool)

(assert (=> b!7527719 (= e!4486799 (and tp!2187816 tp!2187819))))

(declare-fun b!7527716 () Bool)

(assert (=> b!7527716 (= e!4486799 tp_is_empty!50015)))

(declare-fun b!7527718 () Bool)

(declare-fun tp!2187818 () Bool)

(assert (=> b!7527718 (= e!4486799 tp!2187818)))

(declare-fun b!7527717 () Bool)

(declare-fun tp!2187817 () Bool)

(declare-fun tp!2187815 () Bool)

(assert (=> b!7527717 (= e!4486799 (and tp!2187817 tp!2187815))))

(assert (= (and b!7527452 (is-ElementMatch!19830 (regOne!40172 baseR!93))) b!7527716))

(assert (= (and b!7527452 (is-Concat!28675 (regOne!40172 baseR!93))) b!7527717))

(assert (= (and b!7527452 (is-Star!19830 (regOne!40172 baseR!93))) b!7527718))

(assert (= (and b!7527452 (is-Union!19830 (regOne!40172 baseR!93))) b!7527719))

(declare-fun e!4486800 () Bool)

(assert (=> b!7527452 (= tp!2187774 e!4486800)))

(declare-fun b!7527723 () Bool)

(declare-fun tp!2187821 () Bool)

(declare-fun tp!2187824 () Bool)

(assert (=> b!7527723 (= e!4486800 (and tp!2187821 tp!2187824))))

(declare-fun b!7527720 () Bool)

(assert (=> b!7527720 (= e!4486800 tp_is_empty!50015)))

(declare-fun b!7527722 () Bool)

(declare-fun tp!2187823 () Bool)

(assert (=> b!7527722 (= e!4486800 tp!2187823)))

(declare-fun b!7527721 () Bool)

(declare-fun tp!2187822 () Bool)

(declare-fun tp!2187820 () Bool)

(assert (=> b!7527721 (= e!4486800 (and tp!2187822 tp!2187820))))

(assert (= (and b!7527452 (is-ElementMatch!19830 (regTwo!40172 baseR!93))) b!7527720))

(assert (= (and b!7527452 (is-Concat!28675 (regTwo!40172 baseR!93))) b!7527721))

(assert (= (and b!7527452 (is-Star!19830 (regTwo!40172 baseR!93))) b!7527722))

(assert (= (and b!7527452 (is-Union!19830 (regTwo!40172 baseR!93))) b!7527723))

(declare-fun b!7527724 () Bool)

(declare-fun e!4486801 () Bool)

(declare-fun tp!2187825 () Bool)

(assert (=> b!7527724 (= e!4486801 (and tp_is_empty!50015 tp!2187825))))

(assert (=> b!7527450 (= tp!2187776 e!4486801)))

(assert (= (and b!7527450 (is-Cons!72589 (t!387420 bigger!57))) b!7527724))

(declare-fun e!4486802 () Bool)

(assert (=> b!7527444 (= tp!2187772 e!4486802)))

(declare-fun b!7527728 () Bool)

(declare-fun tp!2187827 () Bool)

(declare-fun tp!2187830 () Bool)

(assert (=> b!7527728 (= e!4486802 (and tp!2187827 tp!2187830))))

(declare-fun b!7527725 () Bool)

(assert (=> b!7527725 (= e!4486802 tp_is_empty!50015)))

(declare-fun b!7527727 () Bool)

(declare-fun tp!2187829 () Bool)

(assert (=> b!7527727 (= e!4486802 tp!2187829)))

(declare-fun b!7527726 () Bool)

(declare-fun tp!2187828 () Bool)

(declare-fun tp!2187826 () Bool)

(assert (=> b!7527726 (= e!4486802 (and tp!2187828 tp!2187826))))

(assert (= (and b!7527444 (is-ElementMatch!19830 (reg!20159 baseR!93))) b!7527725))

(assert (= (and b!7527444 (is-Concat!28675 (reg!20159 baseR!93))) b!7527726))

(assert (= (and b!7527444 (is-Star!19830 (reg!20159 baseR!93))) b!7527727))

(assert (= (and b!7527444 (is-Union!19830 (reg!20159 baseR!93))) b!7527728))

(declare-fun e!4486803 () Bool)

(assert (=> b!7527443 (= tp!2187770 e!4486803)))

(declare-fun b!7527732 () Bool)

(declare-fun tp!2187832 () Bool)

(declare-fun tp!2187835 () Bool)

(assert (=> b!7527732 (= e!4486803 (and tp!2187832 tp!2187835))))

(declare-fun b!7527729 () Bool)

(assert (=> b!7527729 (= e!4486803 tp_is_empty!50015)))

(declare-fun b!7527731 () Bool)

(declare-fun tp!2187834 () Bool)

(assert (=> b!7527731 (= e!4486803 tp!2187834)))

(declare-fun b!7527730 () Bool)

(declare-fun tp!2187833 () Bool)

(declare-fun tp!2187831 () Bool)

(assert (=> b!7527730 (= e!4486803 (and tp!2187833 tp!2187831))))

(assert (= (and b!7527443 (is-ElementMatch!19830 (regOne!40173 baseR!93))) b!7527729))

(assert (= (and b!7527443 (is-Concat!28675 (regOne!40173 baseR!93))) b!7527730))

(assert (= (and b!7527443 (is-Star!19830 (regOne!40173 baseR!93))) b!7527731))

(assert (= (and b!7527443 (is-Union!19830 (regOne!40173 baseR!93))) b!7527732))

(declare-fun e!4486804 () Bool)

(assert (=> b!7527443 (= tp!2187773 e!4486804)))

(declare-fun b!7527736 () Bool)

(declare-fun tp!2187837 () Bool)

(declare-fun tp!2187840 () Bool)

(assert (=> b!7527736 (= e!4486804 (and tp!2187837 tp!2187840))))

(declare-fun b!7527733 () Bool)

(assert (=> b!7527733 (= e!4486804 tp_is_empty!50015)))

(declare-fun b!7527735 () Bool)

(declare-fun tp!2187839 () Bool)

(assert (=> b!7527735 (= e!4486804 tp!2187839)))

(declare-fun b!7527734 () Bool)

(declare-fun tp!2187838 () Bool)

(declare-fun tp!2187836 () Bool)

(assert (=> b!7527734 (= e!4486804 (and tp!2187838 tp!2187836))))

(assert (= (and b!7527443 (is-ElementMatch!19830 (regTwo!40173 baseR!93))) b!7527733))

(assert (= (and b!7527443 (is-Concat!28675 (regTwo!40173 baseR!93))) b!7527734))

(assert (= (and b!7527443 (is-Star!19830 (regTwo!40173 baseR!93))) b!7527735))

(assert (= (and b!7527443 (is-Union!19830 (regTwo!40173 baseR!93))) b!7527736))

(declare-fun b!7527737 () Bool)

(declare-fun e!4486805 () Bool)

(declare-fun tp!2187841 () Bool)

(assert (=> b!7527737 (= e!4486805 (and tp_is_empty!50015 tp!2187841))))

(assert (=> b!7527448 (= tp!2187777 e!4486805)))

(assert (= (and b!7527448 (is-Cons!72589 (t!387420 returnP!57))) b!7527737))

(push 1)

(assert (not b!7527542))

(assert (not b!7527721))

(assert (not b!7527541))

(assert (not b!7527558))

(assert (not b!7527722))

(assert (not b!7527719))

(assert (not bm!690609))

(assert (not bm!690612))

(assert (not b!7527658))

(assert (not bm!690590))

(assert (not b!7527705))

(assert (not b!7527671))

(assert (not b!7527581))

(assert (not bm!690613))

(assert (not b!7527735))

(assert (not b!7527535))

(assert (not b!7527734))

(assert (not b!7527692))

(assert (not b!7527690))

(assert (not b!7527661))

(assert (not b!7527717))

(assert (not b!7527668))

(assert (not b!7527683))

(assert (not b!7527723))

(assert (not b!7527543))

(assert (not d!2309525))

(assert (not b!7527727))

(assert (not b!7527682))

(assert tp_is_empty!50015)

(assert (not bm!690589))

(assert (not b!7527544))

(assert (not b!7527695))

(assert (not b!7527559))

(assert (not b!7527737))

(assert (not bm!690615))

(assert (not b!7527731))

(assert (not b!7527726))

(assert (not bm!690611))

(assert (not b!7527684))

(assert (not b!7527635))

(assert (not b!7527633))

(assert (not b!7527696))

(assert (not b!7527691))

(assert (not bm!690608))

(assert (not d!2309511))

(assert (not b!7527662))

(assert (not b!7527660))

(assert (not b!7527700))

(assert (not b!7527679))

(assert (not b!7527732))

(assert (not b!7527670))

(assert (not d!2309527))

(assert (not d!2309519))

(assert (not bm!690614))

(assert (not bm!690610))

(assert (not b!7527640))

(assert (not d!2309531))

(assert (not b!7527557))

(assert (not b!7527698))

(assert (not b!7527728))

(assert (not b!7527730))

(assert (not b!7527631))

(assert (not b!7527736))

(assert (not b!7527534))

(assert (not bm!690624))

(assert (not bm!690582))

(assert (not b!7527718))

(assert (not b!7527669))

(assert (not b!7527694))

(assert (not b!7527724))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

