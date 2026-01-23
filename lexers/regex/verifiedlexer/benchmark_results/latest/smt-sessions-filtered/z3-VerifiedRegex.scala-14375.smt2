; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!749820 () Bool)

(assert start!749820)

(declare-fun b!7944894 () Bool)

(declare-fun e!4687448 () Bool)

(declare-fun tp_is_empty!53405 () Bool)

(declare-fun tp!2363082 () Bool)

(assert (=> b!7944894 (= e!4687448 (and tp_is_empty!53405 tp!2363082))))

(declare-fun b!7944895 () Bool)

(declare-fun e!4687447 () Bool)

(declare-fun tp!2363076 () Bool)

(declare-fun tp!2363079 () Bool)

(assert (=> b!7944895 (= e!4687447 (and tp!2363076 tp!2363079))))

(declare-fun b!7944896 () Bool)

(declare-fun e!4687445 () Bool)

(declare-fun tp!2363077 () Bool)

(assert (=> b!7944896 (= e!4687445 tp!2363077)))

(declare-fun b!7944897 () Bool)

(declare-fun e!4687444 () Bool)

(declare-fun tp!2363084 () Bool)

(assert (=> b!7944897 (= e!4687444 (and tp_is_empty!53405 tp!2363084))))

(declare-fun b!7944898 () Bool)

(declare-fun tp!2363081 () Bool)

(declare-fun tp!2363078 () Bool)

(assert (=> b!7944898 (= e!4687445 (and tp!2363081 tp!2363078))))

(declare-fun b!7944899 () Bool)

(declare-fun tp!2363083 () Bool)

(assert (=> b!7944899 (= e!4687447 tp!2363083)))

(declare-fun b!7944900 () Bool)

(declare-fun res!3151288 () Bool)

(declare-fun e!4687449 () Bool)

(assert (=> b!7944900 (=> (not res!3151288) (not e!4687449))))

(declare-datatypes ((C!43200 0))(
  ( (C!43201 (val!32148 Int)) )
))
(declare-datatypes ((Regex!21431 0))(
  ( (ElementMatch!21431 (c!1459518 C!43200)) (Concat!30430 (regOne!43374 Regex!21431) (regTwo!43374 Regex!21431)) (EmptyExpr!21431) (Star!21431 (reg!21760 Regex!21431)) (EmptyLang!21431) (Union!21431 (regOne!43375 Regex!21431) (regTwo!43375 Regex!21431)) )
))
(declare-fun baseR!116 () Regex!21431)

(declare-datatypes ((List!74660 0))(
  ( (Nil!74536) (Cons!74536 (h!80984 C!43200) (t!390403 List!74660)) )
))
(declare-fun testedP!447 () List!74660)

(declare-fun r!24602 () Regex!21431)

(declare-fun derivative!617 (Regex!21431 List!74660) Regex!21431)

(assert (=> b!7944900 (= res!3151288 (= (derivative!617 baseR!116 testedP!447) r!24602))))

(declare-fun b!7944902 () Bool)

(declare-fun e!4687446 () Bool)

(assert (=> b!7944902 (= e!4687446 false)))

(declare-fun lt!2697825 () List!74660)

(declare-fun lt!2697826 () List!74660)

(declare-fun ++!18317 (List!74660 List!74660) List!74660)

(assert (=> b!7944902 (= lt!2697825 (++!18317 testedP!447 lt!2697826))))

(declare-fun b!7944903 () Bool)

(declare-fun res!3151292 () Bool)

(assert (=> b!7944903 (=> (not res!3151292) (not e!4687446))))

(declare-fun validRegex!11735 (Regex!21431) Bool)

(assert (=> b!7944903 (= res!3151292 (validRegex!11735 r!24602))))

(declare-fun b!7944904 () Bool)

(assert (=> b!7944904 (= e!4687447 tp_is_empty!53405)))

(declare-fun b!7944905 () Bool)

(assert (=> b!7944905 (= e!4687445 tp_is_empty!53405)))

(declare-fun b!7944906 () Bool)

(declare-fun tp!2363080 () Bool)

(declare-fun tp!2363086 () Bool)

(assert (=> b!7944906 (= e!4687445 (and tp!2363080 tp!2363086))))

(declare-fun res!3151289 () Bool)

(assert (=> start!749820 (=> (not res!3151289) (not e!4687449))))

(assert (=> start!749820 (= res!3151289 (validRegex!11735 baseR!116))))

(assert (=> start!749820 e!4687449))

(assert (=> start!749820 e!4687445))

(assert (=> start!749820 e!4687448))

(assert (=> start!749820 e!4687444))

(assert (=> start!749820 e!4687447))

(declare-fun b!7944901 () Bool)

(declare-fun res!3151291 () Bool)

(assert (=> b!7944901 (=> (not res!3151291) (not e!4687449))))

(declare-fun input!7927 () List!74660)

(declare-fun isPrefix!6531 (List!74660 List!74660) Bool)

(assert (=> b!7944901 (= res!3151291 (isPrefix!6531 testedP!447 input!7927))))

(declare-fun b!7944907 () Bool)

(declare-fun tp!2363085 () Bool)

(declare-fun tp!2363075 () Bool)

(assert (=> b!7944907 (= e!4687447 (and tp!2363085 tp!2363075))))

(declare-fun b!7944908 () Bool)

(assert (=> b!7944908 (= e!4687449 e!4687446)))

(declare-fun res!3151290 () Bool)

(assert (=> b!7944908 (=> (not res!3151290) (not e!4687446))))

(declare-fun lt!2697827 () Int)

(declare-fun isEmpty!42835 (List!74660) Bool)

(declare-datatypes ((tuple2!70524 0))(
  ( (tuple2!70525 (_1!38565 List!74660) (_2!38565 List!74660)) )
))
(declare-fun findLongestMatchInner!2212 (Regex!21431 List!74660 Int List!74660 List!74660 Int) tuple2!70524)

(declare-fun size!43367 (List!74660) Int)

(assert (=> b!7944908 (= res!3151290 (isEmpty!42835 (_1!38565 (findLongestMatchInner!2212 r!24602 testedP!447 lt!2697827 lt!2697826 input!7927 (size!43367 input!7927)))))))

(declare-fun getSuffix!3734 (List!74660 List!74660) List!74660)

(assert (=> b!7944908 (= lt!2697826 (getSuffix!3734 input!7927 testedP!447))))

(assert (=> b!7944908 (= lt!2697827 (size!43367 testedP!447))))

(assert (= (and start!749820 res!3151289) b!7944901))

(assert (= (and b!7944901 res!3151291) b!7944900))

(assert (= (and b!7944900 res!3151288) b!7944908))

(assert (= (and b!7944908 res!3151290) b!7944903))

(assert (= (and b!7944903 res!3151292) b!7944902))

(get-info :version)

(assert (= (and start!749820 ((_ is ElementMatch!21431) baseR!116)) b!7944905))

(assert (= (and start!749820 ((_ is Concat!30430) baseR!116)) b!7944906))

(assert (= (and start!749820 ((_ is Star!21431) baseR!116)) b!7944896))

(assert (= (and start!749820 ((_ is Union!21431) baseR!116)) b!7944898))

(assert (= (and start!749820 ((_ is Cons!74536) testedP!447)) b!7944894))

(assert (= (and start!749820 ((_ is Cons!74536) input!7927)) b!7944897))

(assert (= (and start!749820 ((_ is ElementMatch!21431) r!24602)) b!7944904))

(assert (= (and start!749820 ((_ is Concat!30430) r!24602)) b!7944895))

(assert (= (and start!749820 ((_ is Star!21431) r!24602)) b!7944899))

(assert (= (and start!749820 ((_ is Union!21431) r!24602)) b!7944907))

(declare-fun m!8331802 () Bool)

(assert (=> b!7944902 m!8331802))

(declare-fun m!8331804 () Bool)

(assert (=> b!7944900 m!8331804))

(declare-fun m!8331806 () Bool)

(assert (=> b!7944901 m!8331806))

(declare-fun m!8331808 () Bool)

(assert (=> b!7944903 m!8331808))

(declare-fun m!8331810 () Bool)

(assert (=> b!7944908 m!8331810))

(declare-fun m!8331812 () Bool)

(assert (=> b!7944908 m!8331812))

(declare-fun m!8331814 () Bool)

(assert (=> b!7944908 m!8331814))

(declare-fun m!8331816 () Bool)

(assert (=> b!7944908 m!8331816))

(assert (=> b!7944908 m!8331812))

(declare-fun m!8331818 () Bool)

(assert (=> b!7944908 m!8331818))

(declare-fun m!8331820 () Bool)

(assert (=> start!749820 m!8331820))

(check-sat (not b!7944908) (not b!7944907) (not b!7944898) (not b!7944900) (not b!7944894) (not b!7944895) (not b!7944897) (not b!7944906) (not b!7944899) (not b!7944902) (not b!7944903) (not b!7944896) (not start!749820) tp_is_empty!53405 (not b!7944901))
(check-sat)
