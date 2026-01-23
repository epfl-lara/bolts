; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!742298 () Bool)

(assert start!742298)

(declare-fun b!7834774 () Bool)

(declare-datatypes ((Unit!168742 0))(
  ( (Unit!168743) )
))
(declare-fun e!4633042 () Unit!168742)

(declare-fun Unit!168744 () Unit!168742)

(assert (=> b!7834774 (= e!4633042 Unit!168744)))

(declare-fun b!7834775 () Bool)

(declare-fun e!4633043 () Bool)

(declare-fun e!4633040 () Bool)

(assert (=> b!7834775 (= e!4633043 (not e!4633040))))

(declare-fun res!3116267 () Bool)

(assert (=> b!7834775 (=> res!3116267 e!4633040)))

(declare-fun lt!2677404 () Int)

(declare-fun lt!2677407 () Int)

(assert (=> b!7834775 (= res!3116267 (not (= lt!2677404 lt!2677407)))))

(declare-datatypes ((C!42284 0))(
  ( (C!42285 (val!31582 Int)) )
))
(declare-datatypes ((List!73816 0))(
  ( (Nil!73692) (Cons!73692 (h!80140 C!42284) (t!388551 List!73816)) )
))
(declare-fun s1!4101 () List!73816)

(declare-fun size!42769 (List!73816) Int)

(assert (=> b!7834775 (= lt!2677407 (size!42769 s1!4101))))

(declare-fun s1Rec!453 () List!73816)

(assert (=> b!7834775 (= lt!2677404 (size!42769 s1Rec!453))))

(declare-fun lt!2677410 () List!73816)

(declare-fun lt!2677409 () List!73816)

(declare-fun isPrefix!6329 (List!73816 List!73816) Bool)

(assert (=> b!7834775 (isPrefix!6329 lt!2677410 lt!2677409)))

(declare-fun lt!2677411 () Unit!168742)

(declare-fun s2Rec!453 () List!73816)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3775 (List!73816 List!73816) Unit!168742)

(assert (=> b!7834775 (= lt!2677411 (lemmaConcatTwoListThenFirstIsPrefix!3775 lt!2677410 (t!388551 s2Rec!453)))))

(declare-fun s!14274 () List!73816)

(assert (=> b!7834775 (= lt!2677409 s!14274)))

(declare-fun ++!18013 (List!73816 List!73816) List!73816)

(assert (=> b!7834775 (= lt!2677409 (++!18013 lt!2677410 (t!388551 s2Rec!453)))))

(assert (=> b!7834775 (= lt!2677410 (++!18013 s1Rec!453 (Cons!73692 (h!80140 s2Rec!453) Nil!73692)))))

(declare-fun lt!2677408 () Unit!168742)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3440 (List!73816 C!42284 List!73816 List!73816) Unit!168742)

(assert (=> b!7834775 (= lt!2677408 (lemmaMoveElementToOtherListKeepsConcatEq!3440 s1Rec!453 (h!80140 s2Rec!453) (t!388551 s2Rec!453) s!14274))))

(declare-fun lt!2677406 () Unit!168742)

(assert (=> b!7834775 (= lt!2677406 e!4633042)))

(declare-fun c!1440887 () Bool)

(assert (=> b!7834775 (= c!1440887 (= s1Rec!453 s1!4101))))

(declare-fun lt!2677405 () List!73816)

(assert (=> b!7834775 (isPrefix!6329 s1Rec!453 lt!2677405)))

(declare-fun lt!2677412 () Unit!168742)

(assert (=> b!7834775 (= lt!2677412 (lemmaConcatTwoListThenFirstIsPrefix!3775 s1Rec!453 s2Rec!453))))

(declare-fun lt!2677401 () List!73816)

(assert (=> b!7834775 (isPrefix!6329 s1!4101 lt!2677401)))

(declare-fun lt!2677403 () Unit!168742)

(declare-fun s2!3721 () List!73816)

(assert (=> b!7834775 (= lt!2677403 (lemmaConcatTwoListThenFirstIsPrefix!3775 s1!4101 s2!3721))))

(declare-fun b!7834776 () Bool)

(declare-fun res!3116263 () Bool)

(assert (=> b!7834776 (=> res!3116263 e!4633040)))

(assert (=> b!7834776 (= res!3116263 (not (isPrefix!6329 s1!4101 s!14274)))))

(declare-fun b!7834777 () Bool)

(declare-fun e!4633038 () Bool)

(declare-datatypes ((Regex!20979 0))(
  ( (ElementMatch!20979 (c!1440888 C!42284)) (Concat!29824 (regOne!42470 Regex!20979) (regTwo!42470 Regex!20979)) (EmptyExpr!20979) (Star!20979 (reg!21308 Regex!20979)) (EmptyLang!20979) (Union!20979 (regOne!42471 Regex!20979) (regTwo!42471 Regex!20979)) )
))
(declare-fun r2!6199 () Regex!20979)

(declare-fun matchR!10435 (Regex!20979 List!73816) Bool)

(assert (=> b!7834777 (= e!4633038 (not (matchR!10435 r2!6199 s2Rec!453)))))

(declare-fun b!7834778 () Bool)

(declare-fun res!3116269 () Bool)

(assert (=> b!7834778 (=> (not res!3116269) (not e!4633043))))

(declare-fun r1!6261 () Regex!20979)

(assert (=> b!7834778 (= res!3116269 (matchR!10435 r1!6261 s1!4101))))

(declare-fun b!7834779 () Bool)

(declare-fun res!3116272 () Bool)

(assert (=> b!7834779 (=> (not res!3116272) (not e!4633043))))

(get-info :version)

(assert (=> b!7834779 (= res!3116272 (not ((_ is Nil!73692) s2Rec!453)))))

(declare-fun b!7834780 () Bool)

(declare-fun res!3116268 () Bool)

(assert (=> b!7834780 (=> (not res!3116268) (not e!4633043))))

(assert (=> b!7834780 (= res!3116268 e!4633038)))

(declare-fun res!3116265 () Bool)

(assert (=> b!7834780 (=> res!3116265 e!4633038)))

(assert (=> b!7834780 (= res!3116265 (not (matchR!10435 r1!6261 s1Rec!453)))))

(declare-fun b!7834781 () Bool)

(declare-fun e!4633046 () Bool)

(declare-fun tp_is_empty!52313 () Bool)

(declare-fun tp!2317551 () Bool)

(assert (=> b!7834781 (= e!4633046 (and tp_is_empty!52313 tp!2317551))))

(declare-fun b!7834782 () Bool)

(declare-fun res!3116266 () Bool)

(declare-fun e!4633044 () Bool)

(assert (=> b!7834782 (=> (not res!3116266) (not e!4633044))))

(assert (=> b!7834782 (= res!3116266 (isPrefix!6329 s1Rec!453 s1!4101))))

(declare-fun b!7834783 () Bool)

(declare-fun e!4633039 () Bool)

(declare-fun tp!2317553 () Bool)

(declare-fun tp!2317554 () Bool)

(assert (=> b!7834783 (= e!4633039 (and tp!2317553 tp!2317554))))

(declare-fun b!7834784 () Bool)

(declare-fun e!4633037 () Bool)

(assert (=> b!7834784 (= e!4633037 tp_is_empty!52313)))

(declare-fun b!7834785 () Bool)

(declare-fun e!4633045 () Bool)

(declare-fun tp!2317556 () Bool)

(assert (=> b!7834785 (= e!4633045 (and tp_is_empty!52313 tp!2317556))))

(declare-fun b!7834786 () Bool)

(declare-fun tp!2317552 () Bool)

(declare-fun tp!2317548 () Bool)

(assert (=> b!7834786 (= e!4633039 (and tp!2317552 tp!2317548))))

(declare-fun b!7834787 () Bool)

(declare-fun e!4633047 () Bool)

(assert (=> b!7834787 (= e!4633047 e!4633044)))

(declare-fun res!3116274 () Bool)

(assert (=> b!7834787 (=> (not res!3116274) (not e!4633044))))

(assert (=> b!7834787 (= res!3116274 (= lt!2677401 s!14274))))

(assert (=> b!7834787 (= lt!2677401 (++!18013 s1!4101 s2!3721))))

(declare-fun b!7834788 () Bool)

(declare-fun res!3116271 () Bool)

(assert (=> b!7834788 (=> res!3116271 e!4633040)))

(assert (=> b!7834788 (= res!3116271 (not (isPrefix!6329 s1Rec!453 s!14274)))))

(declare-fun b!7834789 () Bool)

(declare-fun tp!2317549 () Bool)

(declare-fun tp!2317550 () Bool)

(assert (=> b!7834789 (= e!4633037 (and tp!2317549 tp!2317550))))

(declare-fun b!7834790 () Bool)

(declare-fun e!4633035 () Bool)

(declare-fun tp!2317555 () Bool)

(assert (=> b!7834790 (= e!4633035 (and tp_is_empty!52313 tp!2317555))))

(declare-fun b!7834791 () Bool)

(declare-fun tp!2317560 () Bool)

(assert (=> b!7834791 (= e!4633037 tp!2317560)))

(declare-fun b!7834792 () Bool)

(declare-fun tp!2317547 () Bool)

(declare-fun tp!2317557 () Bool)

(assert (=> b!7834792 (= e!4633037 (and tp!2317547 tp!2317557))))

(declare-fun b!7834793 () Bool)

(assert (=> b!7834793 (= e!4633044 e!4633043)))

(declare-fun res!3116262 () Bool)

(assert (=> b!7834793 (=> (not res!3116262) (not e!4633043))))

(assert (=> b!7834793 (= res!3116262 (= lt!2677405 s!14274))))

(assert (=> b!7834793 (= lt!2677405 (++!18013 s1Rec!453 s2Rec!453))))

(declare-fun b!7834794 () Bool)

(declare-fun Unit!168745 () Unit!168742)

(assert (=> b!7834794 (= e!4633042 Unit!168745)))

(declare-fun lt!2677402 () Unit!168742)

(declare-fun lemmaSamePrefixThenSameSuffix!2913 (List!73816 List!73816 List!73816 List!73816 List!73816) Unit!168742)

(assert (=> b!7834794 (= lt!2677402 (lemmaSamePrefixThenSameSuffix!2913 s1!4101 s2!3721 s1Rec!453 s2Rec!453 s!14274))))

(assert (=> b!7834794 false))

(declare-fun b!7834795 () Bool)

(declare-fun res!3116273 () Bool)

(assert (=> b!7834795 (=> (not res!3116273) (not e!4633047))))

(declare-fun validRegex!11393 (Regex!20979) Bool)

(assert (=> b!7834795 (= res!3116273 (validRegex!11393 r2!6199))))

(declare-fun b!7834796 () Bool)

(assert (=> b!7834796 (= e!4633039 tp_is_empty!52313)))

(declare-fun b!7834797 () Bool)

(declare-fun e!4633041 () Bool)

(declare-fun tp!2317559 () Bool)

(assert (=> b!7834797 (= e!4633041 (and tp_is_empty!52313 tp!2317559))))

(declare-fun b!7834798 () Bool)

(assert (=> b!7834798 (= e!4633040 (= lt!2677407 lt!2677404))))

(declare-fun res!3116264 () Bool)

(assert (=> start!742298 (=> (not res!3116264) (not e!4633047))))

(assert (=> start!742298 (= res!3116264 (validRegex!11393 r1!6261))))

(assert (=> start!742298 e!4633047))

(assert (=> start!742298 e!4633039))

(assert (=> start!742298 e!4633045))

(declare-fun e!4633036 () Bool)

(assert (=> start!742298 e!4633036))

(assert (=> start!742298 e!4633041))

(assert (=> start!742298 e!4633046))

(assert (=> start!742298 e!4633037))

(assert (=> start!742298 e!4633035))

(declare-fun b!7834799 () Bool)

(declare-fun tp!2317558 () Bool)

(assert (=> b!7834799 (= e!4633036 (and tp_is_empty!52313 tp!2317558))))

(declare-fun b!7834800 () Bool)

(declare-fun tp!2317561 () Bool)

(assert (=> b!7834800 (= e!4633039 tp!2317561)))

(declare-fun b!7834801 () Bool)

(declare-fun res!3116270 () Bool)

(assert (=> b!7834801 (=> (not res!3116270) (not e!4633043))))

(assert (=> b!7834801 (= res!3116270 (matchR!10435 r2!6199 s2!3721))))

(assert (= (and start!742298 res!3116264) b!7834795))

(assert (= (and b!7834795 res!3116273) b!7834787))

(assert (= (and b!7834787 res!3116274) b!7834782))

(assert (= (and b!7834782 res!3116266) b!7834793))

(assert (= (and b!7834793 res!3116262) b!7834778))

(assert (= (and b!7834778 res!3116269) b!7834801))

(assert (= (and b!7834801 res!3116270) b!7834780))

(assert (= (and b!7834780 (not res!3116265)) b!7834777))

(assert (= (and b!7834780 res!3116268) b!7834779))

(assert (= (and b!7834779 res!3116272) b!7834775))

(assert (= (and b!7834775 c!1440887) b!7834794))

(assert (= (and b!7834775 (not c!1440887)) b!7834774))

(assert (= (and b!7834775 (not res!3116267)) b!7834776))

(assert (= (and b!7834776 (not res!3116263)) b!7834788))

(assert (= (and b!7834788 (not res!3116271)) b!7834798))

(assert (= (and start!742298 ((_ is ElementMatch!20979) r2!6199)) b!7834796))

(assert (= (and start!742298 ((_ is Concat!29824) r2!6199)) b!7834786))

(assert (= (and start!742298 ((_ is Star!20979) r2!6199)) b!7834800))

(assert (= (and start!742298 ((_ is Union!20979) r2!6199)) b!7834783))

(assert (= (and start!742298 ((_ is Cons!73692) s1!4101)) b!7834785))

(assert (= (and start!742298 ((_ is Cons!73692) s2!3721)) b!7834799))

(assert (= (and start!742298 ((_ is Cons!73692) s2Rec!453)) b!7834797))

(assert (= (and start!742298 ((_ is Cons!73692) s!14274)) b!7834781))

(assert (= (and start!742298 ((_ is ElementMatch!20979) r1!6261)) b!7834784))

(assert (= (and start!742298 ((_ is Concat!29824) r1!6261)) b!7834789))

(assert (= (and start!742298 ((_ is Star!20979) r1!6261)) b!7834791))

(assert (= (and start!742298 ((_ is Union!20979) r1!6261)) b!7834792))

(assert (= (and start!742298 ((_ is Cons!73692) s1Rec!453)) b!7834790))

(declare-fun m!8250232 () Bool)

(assert (=> b!7834780 m!8250232))

(declare-fun m!8250234 () Bool)

(assert (=> b!7834782 m!8250234))

(declare-fun m!8250236 () Bool)

(assert (=> b!7834778 m!8250236))

(declare-fun m!8250238 () Bool)

(assert (=> b!7834777 m!8250238))

(declare-fun m!8250240 () Bool)

(assert (=> b!7834795 m!8250240))

(declare-fun m!8250242 () Bool)

(assert (=> b!7834775 m!8250242))

(declare-fun m!8250244 () Bool)

(assert (=> b!7834775 m!8250244))

(declare-fun m!8250246 () Bool)

(assert (=> b!7834775 m!8250246))

(declare-fun m!8250248 () Bool)

(assert (=> b!7834775 m!8250248))

(declare-fun m!8250250 () Bool)

(assert (=> b!7834775 m!8250250))

(declare-fun m!8250252 () Bool)

(assert (=> b!7834775 m!8250252))

(declare-fun m!8250254 () Bool)

(assert (=> b!7834775 m!8250254))

(declare-fun m!8250256 () Bool)

(assert (=> b!7834775 m!8250256))

(declare-fun m!8250258 () Bool)

(assert (=> b!7834775 m!8250258))

(declare-fun m!8250260 () Bool)

(assert (=> b!7834775 m!8250260))

(declare-fun m!8250262 () Bool)

(assert (=> b!7834775 m!8250262))

(declare-fun m!8250264 () Bool)

(assert (=> b!7834793 m!8250264))

(declare-fun m!8250266 () Bool)

(assert (=> b!7834801 m!8250266))

(declare-fun m!8250268 () Bool)

(assert (=> b!7834776 m!8250268))

(declare-fun m!8250270 () Bool)

(assert (=> start!742298 m!8250270))

(declare-fun m!8250272 () Bool)

(assert (=> b!7834794 m!8250272))

(declare-fun m!8250274 () Bool)

(assert (=> b!7834787 m!8250274))

(declare-fun m!8250276 () Bool)

(assert (=> b!7834788 m!8250276))

(check-sat tp_is_empty!52313 (not b!7834787) (not b!7834789) (not b!7834783) (not b!7834791) (not b!7834795) (not b!7834794) (not b!7834778) (not b!7834788) (not b!7834790) (not b!7834777) (not b!7834780) (not b!7834785) (not b!7834799) (not b!7834800) (not b!7834786) (not b!7834801) (not b!7834776) (not b!7834793) (not b!7834782) (not b!7834797) (not b!7834792) (not b!7834781) (not start!742298) (not b!7834775))
(check-sat)
