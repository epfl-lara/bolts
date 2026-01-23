; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!750020 () Bool)

(assert start!750020)

(declare-fun b!7947651 () Bool)

(declare-fun e!4688733 () Bool)

(declare-fun tp!2364457 () Bool)

(assert (=> b!7947651 (= e!4688733 tp!2364457)))

(declare-fun b!7947652 () Bool)

(declare-fun e!4688736 () Bool)

(declare-fun tp_is_empty!53453 () Bool)

(assert (=> b!7947652 (= e!4688736 tp_is_empty!53453)))

(declare-fun b!7947653 () Bool)

(declare-fun res!3152181 () Bool)

(declare-fun e!4688731 () Bool)

(assert (=> b!7947653 (=> (not res!3152181) (not e!4688731))))

(declare-datatypes ((C!43248 0))(
  ( (C!43249 (val!32172 Int)) )
))
(declare-datatypes ((Regex!21455 0))(
  ( (ElementMatch!21455 (c!1459890 C!43248)) (Concat!30454 (regOne!43422 Regex!21455) (regTwo!43422 Regex!21455)) (EmptyExpr!21455) (Star!21455 (reg!21784 Regex!21455)) (EmptyLang!21455) (Union!21455 (regOne!43423 Regex!21455) (regTwo!43423 Regex!21455)) )
))
(declare-fun baseR!116 () Regex!21455)

(declare-fun r!24602 () Regex!21455)

(declare-datatypes ((List!74684 0))(
  ( (Nil!74560) (Cons!74560 (h!81008 C!43248) (t!390427 List!74684)) )
))
(declare-fun testedP!447 () List!74684)

(declare-fun derivative!641 (Regex!21455 List!74684) Regex!21455)

(assert (=> b!7947653 (= res!3152181 (= (derivative!641 baseR!116 testedP!447) r!24602))))

(declare-fun b!7947654 () Bool)

(declare-fun tp!2364452 () Bool)

(assert (=> b!7947654 (= e!4688736 tp!2364452)))

(declare-fun b!7947655 () Bool)

(declare-fun tp!2364455 () Bool)

(declare-fun tp!2364456 () Bool)

(assert (=> b!7947655 (= e!4688736 (and tp!2364455 tp!2364456))))

(declare-fun b!7947656 () Bool)

(declare-fun tp!2364454 () Bool)

(declare-fun tp!2364461 () Bool)

(assert (=> b!7947656 (= e!4688736 (and tp!2364454 tp!2364461))))

(declare-fun b!7947657 () Bool)

(declare-fun e!4688737 () Bool)

(assert (=> b!7947657 (= e!4688731 e!4688737)))

(declare-fun res!3152182 () Bool)

(assert (=> b!7947657 (=> (not res!3152182) (not e!4688737))))

(declare-fun lt!2698853 () List!74684)

(declare-fun input!7927 () List!74684)

(declare-fun lt!2698849 () Int)

(declare-fun lt!2698851 () Int)

(declare-fun isEmpty!42859 (List!74684) Bool)

(declare-datatypes ((tuple2!70572 0))(
  ( (tuple2!70573 (_1!38589 List!74684) (_2!38589 List!74684)) )
))
(declare-fun findLongestMatchInner!2236 (Regex!21455 List!74684 Int List!74684 List!74684 Int) tuple2!70572)

(assert (=> b!7947657 (= res!3152182 (not (isEmpty!42859 (_1!38589 (findLongestMatchInner!2236 r!24602 testedP!447 lt!2698851 lt!2698853 input!7927 lt!2698849)))))))

(declare-fun size!43391 (List!74684) Int)

(assert (=> b!7947657 (= lt!2698849 (size!43391 input!7927))))

(declare-fun getSuffix!3758 (List!74684 List!74684) List!74684)

(assert (=> b!7947657 (= lt!2698853 (getSuffix!3758 input!7927 testedP!447))))

(assert (=> b!7947657 (= lt!2698851 (size!43391 testedP!447))))

(declare-fun b!7947658 () Bool)

(declare-fun tp!2364460 () Bool)

(declare-fun tp!2364462 () Bool)

(assert (=> b!7947658 (= e!4688733 (and tp!2364460 tp!2364462))))

(declare-fun b!7947659 () Bool)

(assert (=> b!7947659 (= e!4688733 tp_is_empty!53453)))

(declare-fun b!7947660 () Bool)

(declare-fun res!3152184 () Bool)

(assert (=> b!7947660 (=> (not res!3152184) (not e!4688737))))

(assert (=> b!7947660 (= res!3152184 (not (= testedP!447 input!7927)))))

(declare-fun b!7947661 () Bool)

(declare-fun e!4688734 () Bool)

(declare-fun tp!2364459 () Bool)

(assert (=> b!7947661 (= e!4688734 (and tp_is_empty!53453 tp!2364459))))

(declare-fun b!7947662 () Bool)

(declare-fun tp!2364458 () Bool)

(declare-fun tp!2364453 () Bool)

(assert (=> b!7947662 (= e!4688733 (and tp!2364458 tp!2364453))))

(declare-fun b!7947664 () Bool)

(declare-fun e!4688732 () Bool)

(assert (=> b!7947664 (= e!4688732 true)))

(declare-fun isPrefix!6555 (List!74684 List!74684) Bool)

(assert (=> b!7947664 (isPrefix!6555 input!7927 input!7927)))

(declare-datatypes ((Unit!169756 0))(
  ( (Unit!169757) )
))
(declare-fun lt!2698850 () Unit!169756)

(declare-fun lemmaIsPrefixRefl!4023 (List!74684 List!74684) Unit!169756)

(assert (=> b!7947664 (= lt!2698850 (lemmaIsPrefixRefl!4023 input!7927 input!7927))))

(declare-fun b!7947663 () Bool)

(declare-fun res!3152183 () Bool)

(assert (=> b!7947663 (=> (not res!3152183) (not e!4688731))))

(assert (=> b!7947663 (= res!3152183 (isPrefix!6555 testedP!447 input!7927))))

(declare-fun res!3152185 () Bool)

(assert (=> start!750020 (=> (not res!3152185) (not e!4688731))))

(declare-fun validRegex!11759 (Regex!21455) Bool)

(assert (=> start!750020 (= res!3152185 (validRegex!11759 baseR!116))))

(assert (=> start!750020 e!4688731))

(assert (=> start!750020 e!4688736))

(declare-fun e!4688735 () Bool)

(assert (=> start!750020 e!4688735))

(assert (=> start!750020 e!4688734))

(assert (=> start!750020 e!4688733))

(declare-fun b!7947665 () Bool)

(assert (=> b!7947665 (= e!4688737 (not e!4688732))))

(declare-fun res!3152186 () Bool)

(assert (=> b!7947665 (=> res!3152186 e!4688732)))

(assert (=> b!7947665 (= res!3152186 (not (= lt!2698851 lt!2698849)))))

(assert (=> b!7947665 (<= lt!2698851 lt!2698849)))

(declare-fun lt!2698852 () Unit!169756)

(declare-fun lemmaIsPrefixThenSmallerEqSize!1072 (List!74684 List!74684) Unit!169756)

(assert (=> b!7947665 (= lt!2698852 (lemmaIsPrefixThenSmallerEqSize!1072 testedP!447 input!7927))))

(declare-fun b!7947666 () Bool)

(declare-fun tp!2364451 () Bool)

(assert (=> b!7947666 (= e!4688735 (and tp_is_empty!53453 tp!2364451))))

(assert (= (and start!750020 res!3152185) b!7947663))

(assert (= (and b!7947663 res!3152183) b!7947653))

(assert (= (and b!7947653 res!3152181) b!7947657))

(assert (= (and b!7947657 res!3152182) b!7947660))

(assert (= (and b!7947660 res!3152184) b!7947665))

(assert (= (and b!7947665 (not res!3152186)) b!7947664))

(get-info :version)

(assert (= (and start!750020 ((_ is ElementMatch!21455) baseR!116)) b!7947652))

(assert (= (and start!750020 ((_ is Concat!30454) baseR!116)) b!7947655))

(assert (= (and start!750020 ((_ is Star!21455) baseR!116)) b!7947654))

(assert (= (and start!750020 ((_ is Union!21455) baseR!116)) b!7947656))

(assert (= (and start!750020 ((_ is Cons!74560) testedP!447)) b!7947666))

(assert (= (and start!750020 ((_ is Cons!74560) input!7927)) b!7947661))

(assert (= (and start!750020 ((_ is ElementMatch!21455) r!24602)) b!7947659))

(assert (= (and start!750020 ((_ is Concat!30454) r!24602)) b!7947662))

(assert (= (and start!750020 ((_ is Star!21455) r!24602)) b!7947651))

(assert (= (and start!750020 ((_ is Union!21455) r!24602)) b!7947658))

(declare-fun m!8333184 () Bool)

(assert (=> b!7947663 m!8333184))

(declare-fun m!8333186 () Bool)

(assert (=> start!750020 m!8333186))

(declare-fun m!8333188 () Bool)

(assert (=> b!7947665 m!8333188))

(declare-fun m!8333190 () Bool)

(assert (=> b!7947657 m!8333190))

(declare-fun m!8333192 () Bool)

(assert (=> b!7947657 m!8333192))

(declare-fun m!8333194 () Bool)

(assert (=> b!7947657 m!8333194))

(declare-fun m!8333196 () Bool)

(assert (=> b!7947657 m!8333196))

(declare-fun m!8333198 () Bool)

(assert (=> b!7947657 m!8333198))

(declare-fun m!8333200 () Bool)

(assert (=> b!7947664 m!8333200))

(declare-fun m!8333202 () Bool)

(assert (=> b!7947664 m!8333202))

(declare-fun m!8333204 () Bool)

(assert (=> b!7947653 m!8333204))

(check-sat (not b!7947664) (not b!7947663) (not b!7947654) (not start!750020) tp_is_empty!53453 (not b!7947651) (not b!7947656) (not b!7947653) (not b!7947665) (not b!7947655) (not b!7947661) (not b!7947666) (not b!7947657) (not b!7947662) (not b!7947658))
(check-sat)
