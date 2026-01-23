; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!750024 () Bool)

(assert start!750024)

(declare-fun b!7947752 () Bool)

(declare-fun e!4688775 () Bool)

(declare-fun tp!2364530 () Bool)

(declare-fun tp!2364531 () Bool)

(assert (=> b!7947752 (= e!4688775 (and tp!2364530 tp!2364531))))

(declare-fun b!7947753 () Bool)

(declare-fun res!3152216 () Bool)

(declare-fun e!4688773 () Bool)

(assert (=> b!7947753 (=> (not res!3152216) (not e!4688773))))

(declare-datatypes ((C!43252 0))(
  ( (C!43253 (val!32174 Int)) )
))
(declare-datatypes ((List!74686 0))(
  ( (Nil!74562) (Cons!74562 (h!81010 C!43252) (t!390429 List!74686)) )
))
(declare-fun testedP!447 () List!74686)

(declare-fun input!7927 () List!74686)

(assert (=> b!7947753 (= res!3152216 (not (= testedP!447 input!7927)))))

(declare-fun b!7947755 () Bool)

(declare-datatypes ((Unit!169762 0))(
  ( (Unit!169763) )
))
(declare-fun e!4688774 () Unit!169762)

(declare-fun Unit!169764 () Unit!169762)

(assert (=> b!7947755 (= e!4688774 Unit!169764)))

(declare-fun b!7947756 () Bool)

(declare-fun lt!2698890 () Int)

(declare-fun lt!2698893 () Int)

(assert (=> b!7947756 (= e!4688773 (not (or (>= lt!2698890 lt!2698893) (>= lt!2698893 lt!2698890))))))

(declare-fun lt!2698894 () Unit!169762)

(assert (=> b!7947756 (= lt!2698894 e!4688774)))

(declare-fun c!1459897 () Bool)

(assert (=> b!7947756 (= c!1459897 (= lt!2698890 lt!2698893))))

(assert (=> b!7947756 (<= lt!2698890 lt!2698893)))

(declare-fun lt!2698895 () Unit!169762)

(declare-fun lemmaIsPrefixThenSmallerEqSize!1074 (List!74686 List!74686) Unit!169762)

(assert (=> b!7947756 (= lt!2698895 (lemmaIsPrefixThenSmallerEqSize!1074 testedP!447 input!7927))))

(declare-fun b!7947757 () Bool)

(declare-fun e!4688779 () Bool)

(declare-fun tp!2364524 () Bool)

(declare-fun tp!2364525 () Bool)

(assert (=> b!7947757 (= e!4688779 (and tp!2364524 tp!2364525))))

(declare-fun b!7947758 () Bool)

(declare-fun tp!2364529 () Bool)

(assert (=> b!7947758 (= e!4688779 tp!2364529)))

(declare-fun b!7947759 () Bool)

(declare-fun res!3152215 () Bool)

(declare-fun e!4688776 () Bool)

(assert (=> b!7947759 (=> (not res!3152215) (not e!4688776))))

(declare-fun isPrefix!6557 (List!74686 List!74686) Bool)

(assert (=> b!7947759 (= res!3152215 (isPrefix!6557 testedP!447 input!7927))))

(declare-fun b!7947760 () Bool)

(declare-fun e!4688777 () Bool)

(declare-fun tp_is_empty!53457 () Bool)

(declare-fun tp!2364527 () Bool)

(assert (=> b!7947760 (= e!4688777 (and tp_is_empty!53457 tp!2364527))))

(declare-fun b!7947761 () Bool)

(declare-fun tp!2364523 () Bool)

(declare-fun tp!2364532 () Bool)

(assert (=> b!7947761 (= e!4688775 (and tp!2364523 tp!2364532))))

(declare-fun b!7947762 () Bool)

(assert (=> b!7947762 (= e!4688779 tp_is_empty!53457)))

(declare-fun b!7947763 () Bool)

(declare-fun Unit!169765 () Unit!169762)

(assert (=> b!7947763 (= e!4688774 Unit!169765)))

(declare-fun lt!2698891 () Unit!169762)

(declare-fun lemmaIsPrefixRefl!4025 (List!74686 List!74686) Unit!169762)

(assert (=> b!7947763 (= lt!2698891 (lemmaIsPrefixRefl!4025 input!7927 input!7927))))

(assert (=> b!7947763 (isPrefix!6557 input!7927 input!7927)))

(declare-fun lt!2698892 () Unit!169762)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1605 (List!74686 List!74686 List!74686) Unit!169762)

(assert (=> b!7947763 (= lt!2698892 (lemmaIsPrefixSameLengthThenSameList!1605 input!7927 testedP!447 input!7927))))

(assert (=> b!7947763 false))

(declare-fun b!7947764 () Bool)

(assert (=> b!7947764 (= e!4688775 tp_is_empty!53457)))

(declare-fun b!7947765 () Bool)

(declare-fun tp!2364526 () Bool)

(declare-fun tp!2364534 () Bool)

(assert (=> b!7947765 (= e!4688779 (and tp!2364526 tp!2364534))))

(declare-fun b!7947766 () Bool)

(declare-fun tp!2364533 () Bool)

(assert (=> b!7947766 (= e!4688775 tp!2364533)))

(declare-fun res!3152213 () Bool)

(assert (=> start!750024 (=> (not res!3152213) (not e!4688776))))

(declare-datatypes ((Regex!21457 0))(
  ( (ElementMatch!21457 (c!1459898 C!43252)) (Concat!30456 (regOne!43426 Regex!21457) (regTwo!43426 Regex!21457)) (EmptyExpr!21457) (Star!21457 (reg!21786 Regex!21457)) (EmptyLang!21457) (Union!21457 (regOne!43427 Regex!21457) (regTwo!43427 Regex!21457)) )
))
(declare-fun baseR!116 () Regex!21457)

(declare-fun validRegex!11761 (Regex!21457) Bool)

(assert (=> start!750024 (= res!3152213 (validRegex!11761 baseR!116))))

(assert (=> start!750024 e!4688776))

(assert (=> start!750024 e!4688779))

(assert (=> start!750024 e!4688777))

(declare-fun e!4688778 () Bool)

(assert (=> start!750024 e!4688778))

(assert (=> start!750024 e!4688775))

(declare-fun b!7947754 () Bool)

(assert (=> b!7947754 (= e!4688776 e!4688773)))

(declare-fun res!3152212 () Bool)

(assert (=> b!7947754 (=> (not res!3152212) (not e!4688773))))

(declare-fun r!24602 () Regex!21457)

(declare-fun lt!2698889 () List!74686)

(declare-fun isEmpty!42861 (List!74686) Bool)

(declare-datatypes ((tuple2!70576 0))(
  ( (tuple2!70577 (_1!38591 List!74686) (_2!38591 List!74686)) )
))
(declare-fun findLongestMatchInner!2238 (Regex!21457 List!74686 Int List!74686 List!74686 Int) tuple2!70576)

(assert (=> b!7947754 (= res!3152212 (not (isEmpty!42861 (_1!38591 (findLongestMatchInner!2238 r!24602 testedP!447 lt!2698890 lt!2698889 input!7927 lt!2698893)))))))

(declare-fun size!43393 (List!74686) Int)

(assert (=> b!7947754 (= lt!2698893 (size!43393 input!7927))))

(declare-fun getSuffix!3760 (List!74686 List!74686) List!74686)

(assert (=> b!7947754 (= lt!2698889 (getSuffix!3760 input!7927 testedP!447))))

(assert (=> b!7947754 (= lt!2698890 (size!43393 testedP!447))))

(declare-fun b!7947767 () Bool)

(declare-fun tp!2364528 () Bool)

(assert (=> b!7947767 (= e!4688778 (and tp_is_empty!53457 tp!2364528))))

(declare-fun b!7947768 () Bool)

(declare-fun res!3152214 () Bool)

(assert (=> b!7947768 (=> (not res!3152214) (not e!4688776))))

(declare-fun derivative!643 (Regex!21457 List!74686) Regex!21457)

(assert (=> b!7947768 (= res!3152214 (= (derivative!643 baseR!116 testedP!447) r!24602))))

(assert (= (and start!750024 res!3152213) b!7947759))

(assert (= (and b!7947759 res!3152215) b!7947768))

(assert (= (and b!7947768 res!3152214) b!7947754))

(assert (= (and b!7947754 res!3152212) b!7947753))

(assert (= (and b!7947753 res!3152216) b!7947756))

(assert (= (and b!7947756 c!1459897) b!7947763))

(assert (= (and b!7947756 (not c!1459897)) b!7947755))

(get-info :version)

(assert (= (and start!750024 ((_ is ElementMatch!21457) baseR!116)) b!7947762))

(assert (= (and start!750024 ((_ is Concat!30456) baseR!116)) b!7947757))

(assert (= (and start!750024 ((_ is Star!21457) baseR!116)) b!7947758))

(assert (= (and start!750024 ((_ is Union!21457) baseR!116)) b!7947765))

(assert (= (and start!750024 ((_ is Cons!74562) testedP!447)) b!7947760))

(assert (= (and start!750024 ((_ is Cons!74562) input!7927)) b!7947767))

(assert (= (and start!750024 ((_ is ElementMatch!21457) r!24602)) b!7947764))

(assert (= (and start!750024 ((_ is Concat!30456) r!24602)) b!7947752))

(assert (= (and start!750024 ((_ is Star!21457) r!24602)) b!7947766))

(assert (= (and start!750024 ((_ is Union!21457) r!24602)) b!7947761))

(declare-fun m!8333230 () Bool)

(assert (=> b!7947759 m!8333230))

(declare-fun m!8333232 () Bool)

(assert (=> b!7947756 m!8333232))

(declare-fun m!8333234 () Bool)

(assert (=> start!750024 m!8333234))

(declare-fun m!8333236 () Bool)

(assert (=> b!7947754 m!8333236))

(declare-fun m!8333238 () Bool)

(assert (=> b!7947754 m!8333238))

(declare-fun m!8333240 () Bool)

(assert (=> b!7947754 m!8333240))

(declare-fun m!8333242 () Bool)

(assert (=> b!7947754 m!8333242))

(declare-fun m!8333244 () Bool)

(assert (=> b!7947754 m!8333244))

(declare-fun m!8333246 () Bool)

(assert (=> b!7947768 m!8333246))

(declare-fun m!8333248 () Bool)

(assert (=> b!7947763 m!8333248))

(declare-fun m!8333250 () Bool)

(assert (=> b!7947763 m!8333250))

(declare-fun m!8333252 () Bool)

(assert (=> b!7947763 m!8333252))

(check-sat (not b!7947756) (not b!7947752) (not b!7947761) (not b!7947760) (not b!7947763) (not b!7947759) (not b!7947767) tp_is_empty!53457 (not b!7947757) (not start!750024) (not b!7947758) (not b!7947766) (not b!7947768) (not b!7947754) (not b!7947765))
(check-sat)
