; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!742306 () Bool)

(assert start!742306)

(declare-fun b!7835093 () Bool)

(declare-fun e!4633196 () Bool)

(declare-fun tp!2317738 () Bool)

(assert (=> b!7835093 (= e!4633196 tp!2317738)))

(declare-fun b!7835094 () Bool)

(declare-fun tp!2317727 () Bool)

(declare-fun tp!2317734 () Bool)

(assert (=> b!7835094 (= e!4633196 (and tp!2317727 tp!2317734))))

(declare-fun b!7835095 () Bool)

(declare-fun e!4633192 () Bool)

(declare-fun e!4633197 () Bool)

(assert (=> b!7835095 (= e!4633192 e!4633197)))

(declare-fun res!3116393 () Bool)

(assert (=> b!7835095 (=> (not res!3116393) (not e!4633197))))

(declare-datatypes ((C!42292 0))(
  ( (C!42293 (val!31586 Int)) )
))
(declare-datatypes ((List!73820 0))(
  ( (Nil!73696) (Cons!73696 (h!80144 C!42292) (t!388555 List!73820)) )
))
(declare-fun lt!2677542 () List!73820)

(declare-fun s!14274 () List!73820)

(assert (=> b!7835095 (= res!3116393 (= lt!2677542 s!14274))))

(declare-fun s1!4101 () List!73820)

(declare-fun s2!3721 () List!73820)

(declare-fun ++!18017 (List!73820 List!73820) List!73820)

(assert (=> b!7835095 (= lt!2677542 (++!18017 s1!4101 s2!3721))))

(declare-fun b!7835096 () Bool)

(declare-fun e!4633201 () Bool)

(declare-fun tp_is_empty!52321 () Bool)

(declare-fun tp!2317729 () Bool)

(assert (=> b!7835096 (= e!4633201 (and tp_is_empty!52321 tp!2317729))))

(declare-fun b!7835097 () Bool)

(declare-datatypes ((Unit!168760 0))(
  ( (Unit!168761) )
))
(declare-fun e!4633202 () Unit!168760)

(declare-fun Unit!168762 () Unit!168760)

(assert (=> b!7835097 (= e!4633202 Unit!168762)))

(declare-fun b!7835098 () Bool)

(declare-fun e!4633203 () Bool)

(declare-datatypes ((Regex!20983 0))(
  ( (ElementMatch!20983 (c!1440910 C!42292)) (Concat!29828 (regOne!42478 Regex!20983) (regTwo!42478 Regex!20983)) (EmptyExpr!20983) (Star!20983 (reg!21312 Regex!20983)) (EmptyLang!20983) (Union!20983 (regOne!42479 Regex!20983) (regTwo!42479 Regex!20983)) )
))
(declare-fun r2!6199 () Regex!20983)

(declare-fun s2Rec!453 () List!73820)

(declare-fun matchR!10439 (Regex!20983 List!73820) Bool)

(assert (=> b!7835098 (= e!4633203 (not (matchR!10439 r2!6199 s2Rec!453)))))

(declare-fun b!7835099 () Bool)

(declare-fun e!4633195 () Unit!168760)

(declare-fun Unit!168763 () Unit!168760)

(assert (=> b!7835099 (= e!4633195 Unit!168763)))

(declare-fun s1Rec!453 () List!73820)

(declare-fun lt!2677545 () Unit!168760)

(declare-fun lemmaSamePrefixThenSameSuffix!2917 (List!73820 List!73820 List!73820 List!73820 List!73820) Unit!168760)

(assert (=> b!7835099 (= lt!2677545 (lemmaSamePrefixThenSameSuffix!2917 s1!4101 s2!3721 s1Rec!453 s2Rec!453 s!14274))))

(assert (=> b!7835099 false))

(declare-fun res!3116398 () Bool)

(assert (=> start!742306 (=> (not res!3116398) (not e!4633192))))

(declare-fun r1!6261 () Regex!20983)

(declare-fun validRegex!11397 (Regex!20983) Bool)

(assert (=> start!742306 (= res!3116398 (validRegex!11397 r1!6261))))

(assert (=> start!742306 e!4633192))

(declare-fun e!4633199 () Bool)

(assert (=> start!742306 e!4633199))

(declare-fun e!4633193 () Bool)

(assert (=> start!742306 e!4633193))

(assert (=> start!742306 e!4633201))

(declare-fun e!4633198 () Bool)

(assert (=> start!742306 e!4633198))

(declare-fun e!4633200 () Bool)

(assert (=> start!742306 e!4633200))

(assert (=> start!742306 e!4633196))

(declare-fun e!4633194 () Bool)

(assert (=> start!742306 e!4633194))

(declare-fun b!7835100 () Bool)

(declare-fun tp!2317737 () Bool)

(declare-fun tp!2317739 () Bool)

(assert (=> b!7835100 (= e!4633199 (and tp!2317737 tp!2317739))))

(declare-fun b!7835101 () Bool)

(assert (=> b!7835101 (= e!4633196 tp_is_empty!52321)))

(declare-fun b!7835102 () Bool)

(declare-fun res!3116400 () Bool)

(assert (=> b!7835102 (=> (not res!3116400) (not e!4633197))))

(declare-fun isPrefix!6333 (List!73820 List!73820) Bool)

(assert (=> b!7835102 (= res!3116400 (isPrefix!6333 s1Rec!453 s1!4101))))

(declare-fun b!7835103 () Bool)

(declare-fun e!4633191 () Bool)

(assert (=> b!7835103 (= e!4633197 e!4633191)))

(declare-fun res!3116394 () Bool)

(assert (=> b!7835103 (=> (not res!3116394) (not e!4633191))))

(declare-fun lt!2677539 () List!73820)

(assert (=> b!7835103 (= res!3116394 (= lt!2677539 s!14274))))

(assert (=> b!7835103 (= lt!2677539 (++!18017 s1Rec!453 s2Rec!453))))

(declare-fun b!7835104 () Bool)

(declare-fun res!3116395 () Bool)

(assert (=> b!7835104 (=> (not res!3116395) (not e!4633191))))

(assert (=> b!7835104 (= res!3116395 (matchR!10439 r2!6199 s2!3721))))

(declare-fun b!7835105 () Bool)

(assert (=> b!7835105 (= e!4633191 (not (isPrefix!6333 s1!4101 s!14274)))))

(declare-fun lt!2677544 () Unit!168760)

(assert (=> b!7835105 (= lt!2677544 e!4633202)))

(declare-fun c!1440909 () Bool)

(declare-fun size!42773 (List!73820) Int)

(assert (=> b!7835105 (= c!1440909 (= (size!42773 s1Rec!453) (size!42773 s1!4101)))))

(declare-fun lt!2677548 () List!73820)

(declare-fun lt!2677540 () List!73820)

(assert (=> b!7835105 (isPrefix!6333 lt!2677548 lt!2677540)))

(declare-fun lt!2677549 () Unit!168760)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3779 (List!73820 List!73820) Unit!168760)

(assert (=> b!7835105 (= lt!2677549 (lemmaConcatTwoListThenFirstIsPrefix!3779 lt!2677548 (t!388555 s2Rec!453)))))

(assert (=> b!7835105 (= lt!2677540 s!14274)))

(assert (=> b!7835105 (= lt!2677540 (++!18017 lt!2677548 (t!388555 s2Rec!453)))))

(assert (=> b!7835105 (= lt!2677548 (++!18017 s1Rec!453 (Cons!73696 (h!80144 s2Rec!453) Nil!73696)))))

(declare-fun lt!2677546 () Unit!168760)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3444 (List!73820 C!42292 List!73820 List!73820) Unit!168760)

(assert (=> b!7835105 (= lt!2677546 (lemmaMoveElementToOtherListKeepsConcatEq!3444 s1Rec!453 (h!80144 s2Rec!453) (t!388555 s2Rec!453) s!14274))))

(declare-fun lt!2677541 () Unit!168760)

(assert (=> b!7835105 (= lt!2677541 e!4633195)))

(declare-fun c!1440908 () Bool)

(assert (=> b!7835105 (= c!1440908 (= s1Rec!453 s1!4101))))

(assert (=> b!7835105 (isPrefix!6333 s1Rec!453 lt!2677539)))

(declare-fun lt!2677543 () Unit!168760)

(assert (=> b!7835105 (= lt!2677543 (lemmaConcatTwoListThenFirstIsPrefix!3779 s1Rec!453 s2Rec!453))))

(assert (=> b!7835105 (isPrefix!6333 s1!4101 lt!2677542)))

(declare-fun lt!2677550 () Unit!168760)

(assert (=> b!7835105 (= lt!2677550 (lemmaConcatTwoListThenFirstIsPrefix!3779 s1!4101 s2!3721))))

(declare-fun b!7835106 () Bool)

(declare-fun Unit!168764 () Unit!168760)

(assert (=> b!7835106 (= e!4633202 Unit!168764)))

(declare-fun lt!2677547 () Unit!168760)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1549 (List!73820 List!73820 List!73820) Unit!168760)

(assert (=> b!7835106 (= lt!2677547 (lemmaIsPrefixSameLengthThenSameList!1549 s1!4101 s1Rec!453 s!14274))))

(assert (=> b!7835106 false))

(declare-fun b!7835107 () Bool)

(declare-fun tp!2317728 () Bool)

(assert (=> b!7835107 (= e!4633193 (and tp_is_empty!52321 tp!2317728))))

(declare-fun b!7835108 () Bool)

(declare-fun tp!2317740 () Bool)

(assert (=> b!7835108 (= e!4633198 (and tp_is_empty!52321 tp!2317740))))

(declare-fun b!7835109 () Bool)

(declare-fun tp!2317731 () Bool)

(assert (=> b!7835109 (= e!4633200 (and tp_is_empty!52321 tp!2317731))))

(declare-fun b!7835110 () Bool)

(declare-fun tp!2317735 () Bool)

(assert (=> b!7835110 (= e!4633194 (and tp_is_empty!52321 tp!2317735))))

(declare-fun b!7835111 () Bool)

(declare-fun res!3116397 () Bool)

(assert (=> b!7835111 (=> (not res!3116397) (not e!4633191))))

(assert (=> b!7835111 (= res!3116397 (matchR!10439 r1!6261 s1!4101))))

(declare-fun b!7835112 () Bool)

(declare-fun tp!2317736 () Bool)

(declare-fun tp!2317741 () Bool)

(assert (=> b!7835112 (= e!4633196 (and tp!2317736 tp!2317741))))

(declare-fun b!7835113 () Bool)

(declare-fun tp!2317733 () Bool)

(declare-fun tp!2317732 () Bool)

(assert (=> b!7835113 (= e!4633199 (and tp!2317733 tp!2317732))))

(declare-fun b!7835114 () Bool)

(declare-fun res!3116399 () Bool)

(assert (=> b!7835114 (=> (not res!3116399) (not e!4633191))))

(get-info :version)

(assert (=> b!7835114 (= res!3116399 (not ((_ is Nil!73696) s2Rec!453)))))

(declare-fun b!7835115 () Bool)

(declare-fun tp!2317730 () Bool)

(assert (=> b!7835115 (= e!4633199 tp!2317730)))

(declare-fun b!7835116 () Bool)

(declare-fun res!3116391 () Bool)

(assert (=> b!7835116 (=> (not res!3116391) (not e!4633191))))

(assert (=> b!7835116 (= res!3116391 e!4633203)))

(declare-fun res!3116396 () Bool)

(assert (=> b!7835116 (=> res!3116396 e!4633203)))

(assert (=> b!7835116 (= res!3116396 (not (matchR!10439 r1!6261 s1Rec!453)))))

(declare-fun b!7835117 () Bool)

(declare-fun Unit!168765 () Unit!168760)

(assert (=> b!7835117 (= e!4633195 Unit!168765)))

(declare-fun b!7835118 () Bool)

(declare-fun res!3116392 () Bool)

(assert (=> b!7835118 (=> (not res!3116392) (not e!4633192))))

(assert (=> b!7835118 (= res!3116392 (validRegex!11397 r2!6199))))

(declare-fun b!7835119 () Bool)

(assert (=> b!7835119 (= e!4633199 tp_is_empty!52321)))

(assert (= (and start!742306 res!3116398) b!7835118))

(assert (= (and b!7835118 res!3116392) b!7835095))

(assert (= (and b!7835095 res!3116393) b!7835102))

(assert (= (and b!7835102 res!3116400) b!7835103))

(assert (= (and b!7835103 res!3116394) b!7835111))

(assert (= (and b!7835111 res!3116397) b!7835104))

(assert (= (and b!7835104 res!3116395) b!7835116))

(assert (= (and b!7835116 (not res!3116396)) b!7835098))

(assert (= (and b!7835116 res!3116391) b!7835114))

(assert (= (and b!7835114 res!3116399) b!7835105))

(assert (= (and b!7835105 c!1440908) b!7835099))

(assert (= (and b!7835105 (not c!1440908)) b!7835117))

(assert (= (and b!7835105 c!1440909) b!7835106))

(assert (= (and b!7835105 (not c!1440909)) b!7835097))

(assert (= (and start!742306 ((_ is ElementMatch!20983) r2!6199)) b!7835119))

(assert (= (and start!742306 ((_ is Concat!29828) r2!6199)) b!7835113))

(assert (= (and start!742306 ((_ is Star!20983) r2!6199)) b!7835115))

(assert (= (and start!742306 ((_ is Union!20983) r2!6199)) b!7835100))

(assert (= (and start!742306 ((_ is Cons!73696) s1!4101)) b!7835107))

(assert (= (and start!742306 ((_ is Cons!73696) s2!3721)) b!7835096))

(assert (= (and start!742306 ((_ is Cons!73696) s2Rec!453)) b!7835108))

(assert (= (and start!742306 ((_ is Cons!73696) s!14274)) b!7835109))

(assert (= (and start!742306 ((_ is ElementMatch!20983) r1!6261)) b!7835101))

(assert (= (and start!742306 ((_ is Concat!29828) r1!6261)) b!7835094))

(assert (= (and start!742306 ((_ is Star!20983) r1!6261)) b!7835093))

(assert (= (and start!742306 ((_ is Union!20983) r1!6261)) b!7835112))

(assert (= (and start!742306 ((_ is Cons!73696) s1Rec!453)) b!7835110))

(declare-fun m!8250412 () Bool)

(assert (=> b!7835111 m!8250412))

(declare-fun m!8250414 () Bool)

(assert (=> b!7835102 m!8250414))

(declare-fun m!8250416 () Bool)

(assert (=> b!7835105 m!8250416))

(declare-fun m!8250418 () Bool)

(assert (=> b!7835105 m!8250418))

(declare-fun m!8250420 () Bool)

(assert (=> b!7835105 m!8250420))

(declare-fun m!8250422 () Bool)

(assert (=> b!7835105 m!8250422))

(declare-fun m!8250424 () Bool)

(assert (=> b!7835105 m!8250424))

(declare-fun m!8250426 () Bool)

(assert (=> b!7835105 m!8250426))

(declare-fun m!8250428 () Bool)

(assert (=> b!7835105 m!8250428))

(declare-fun m!8250430 () Bool)

(assert (=> b!7835105 m!8250430))

(declare-fun m!8250432 () Bool)

(assert (=> b!7835105 m!8250432))

(declare-fun m!8250434 () Bool)

(assert (=> b!7835105 m!8250434))

(declare-fun m!8250436 () Bool)

(assert (=> b!7835105 m!8250436))

(declare-fun m!8250438 () Bool)

(assert (=> b!7835105 m!8250438))

(declare-fun m!8250440 () Bool)

(assert (=> b!7835104 m!8250440))

(declare-fun m!8250442 () Bool)

(assert (=> b!7835116 m!8250442))

(declare-fun m!8250444 () Bool)

(assert (=> b!7835106 m!8250444))

(declare-fun m!8250446 () Bool)

(assert (=> b!7835095 m!8250446))

(declare-fun m!8250448 () Bool)

(assert (=> b!7835098 m!8250448))

(declare-fun m!8250450 () Bool)

(assert (=> start!742306 m!8250450))

(declare-fun m!8250452 () Bool)

(assert (=> b!7835099 m!8250452))

(declare-fun m!8250454 () Bool)

(assert (=> b!7835118 m!8250454))

(declare-fun m!8250456 () Bool)

(assert (=> b!7835103 m!8250456))

(check-sat (not b!7835093) tp_is_empty!52321 (not b!7835118) (not b!7835103) (not b!7835099) (not b!7835113) (not b!7835095) (not start!742306) (not b!7835107) (not b!7835096) (not b!7835116) (not b!7835100) (not b!7835098) (not b!7835109) (not b!7835108) (not b!7835110) (not b!7835104) (not b!7835102) (not b!7835115) (not b!7835111) (not b!7835106) (not b!7835105) (not b!7835094) (not b!7835112))
(check-sat)
