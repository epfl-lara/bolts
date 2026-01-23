; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!742302 () Bool)

(assert start!742302)

(declare-fun b!7834932 () Bool)

(declare-fun e!4633123 () Bool)

(declare-fun tp_is_empty!52317 () Bool)

(declare-fun tp!2317638 () Bool)

(assert (=> b!7834932 (= e!4633123 (and tp_is_empty!52317 tp!2317638))))

(declare-fun b!7834933 () Bool)

(declare-fun e!4633122 () Bool)

(assert (=> b!7834933 (= e!4633122 false)))

(declare-datatypes ((C!42288 0))(
  ( (C!42289 (val!31584 Int)) )
))
(declare-datatypes ((List!73818 0))(
  ( (Nil!73694) (Cons!73694 (h!80142 C!42288) (t!388553 List!73818)) )
))
(declare-fun s1!4101 () List!73818)

(declare-fun s1Rec!453 () List!73818)

(assert (=> b!7834933 (= s1!4101 s1Rec!453)))

(declare-datatypes ((Unit!168750 0))(
  ( (Unit!168751) )
))
(declare-fun lt!2677473 () Unit!168750)

(declare-fun s!14274 () List!73818)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1547 (List!73818 List!73818 List!73818) Unit!168750)

(assert (=> b!7834933 (= lt!2677473 (lemmaIsPrefixSameLengthThenSameList!1547 s1!4101 s1Rec!453 s!14274))))

(declare-fun b!7834934 () Bool)

(declare-fun e!4633124 () Bool)

(declare-fun tp!2317647 () Bool)

(assert (=> b!7834934 (= e!4633124 (and tp_is_empty!52317 tp!2317647))))

(declare-fun res!3116330 () Bool)

(declare-fun e!4633116 () Bool)

(assert (=> start!742302 (=> (not res!3116330) (not e!4633116))))

(declare-datatypes ((Regex!20981 0))(
  ( (ElementMatch!20981 (c!1440896 C!42288)) (Concat!29826 (regOne!42474 Regex!20981) (regTwo!42474 Regex!20981)) (EmptyExpr!20981) (Star!20981 (reg!21310 Regex!20981)) (EmptyLang!20981) (Union!20981 (regOne!42475 Regex!20981) (regTwo!42475 Regex!20981)) )
))
(declare-fun r1!6261 () Regex!20981)

(declare-fun validRegex!11395 (Regex!20981) Bool)

(assert (=> start!742302 (= res!3116330 (validRegex!11395 r1!6261))))

(assert (=> start!742302 e!4633116))

(declare-fun e!4633113 () Bool)

(assert (=> start!742302 e!4633113))

(declare-fun e!4633115 () Bool)

(assert (=> start!742302 e!4633115))

(declare-fun e!4633118 () Bool)

(assert (=> start!742302 e!4633118))

(assert (=> start!742302 e!4633123))

(declare-fun e!4633117 () Bool)

(assert (=> start!742302 e!4633117))

(declare-fun e!4633119 () Bool)

(assert (=> start!742302 e!4633119))

(assert (=> start!742302 e!4633124))

(declare-fun b!7834935 () Bool)

(declare-fun e!4633121 () Unit!168750)

(declare-fun Unit!168752 () Unit!168750)

(assert (=> b!7834935 (= e!4633121 Unit!168752)))

(declare-fun s2!3721 () List!73818)

(declare-fun lt!2677472 () Unit!168750)

(declare-fun s2Rec!453 () List!73818)

(declare-fun lemmaSamePrefixThenSameSuffix!2915 (List!73818 List!73818 List!73818 List!73818 List!73818) Unit!168750)

(assert (=> b!7834935 (= lt!2677472 (lemmaSamePrefixThenSameSuffix!2915 s1!4101 s2!3721 s1Rec!453 s2Rec!453 s!14274))))

(assert (=> b!7834935 false))

(declare-fun b!7834936 () Bool)

(declare-fun res!3116331 () Bool)

(declare-fun e!4633114 () Bool)

(assert (=> b!7834936 (=> (not res!3116331) (not e!4633114))))

(declare-fun matchR!10437 (Regex!20981 List!73818) Bool)

(assert (=> b!7834936 (= res!3116331 (matchR!10437 r1!6261 s1!4101))))

(declare-fun b!7834937 () Bool)

(declare-fun e!4633125 () Bool)

(assert (=> b!7834937 (= e!4633116 e!4633125)))

(declare-fun res!3116334 () Bool)

(assert (=> b!7834937 (=> (not res!3116334) (not e!4633125))))

(declare-fun lt!2677478 () List!73818)

(assert (=> b!7834937 (= res!3116334 (= lt!2677478 s!14274))))

(declare-fun ++!18015 (List!73818 List!73818) List!73818)

(assert (=> b!7834937 (= lt!2677478 (++!18015 s1!4101 s2!3721))))

(declare-fun b!7834938 () Bool)

(declare-fun Unit!168753 () Unit!168750)

(assert (=> b!7834938 (= e!4633121 Unit!168753)))

(declare-fun b!7834939 () Bool)

(declare-fun res!3116336 () Bool)

(assert (=> b!7834939 (=> (not res!3116336) (not e!4633114))))

(declare-fun e!4633120 () Bool)

(assert (=> b!7834939 (= res!3116336 e!4633120)))

(declare-fun res!3116340 () Bool)

(assert (=> b!7834939 (=> res!3116340 e!4633120)))

(assert (=> b!7834939 (= res!3116340 (not (matchR!10437 r1!6261 s1Rec!453)))))

(declare-fun b!7834940 () Bool)

(declare-fun tp!2317637 () Bool)

(assert (=> b!7834940 (= e!4633119 tp!2317637)))

(declare-fun b!7834941 () Bool)

(assert (=> b!7834941 (= e!4633119 tp_is_empty!52317)))

(declare-fun b!7834942 () Bool)

(assert (=> b!7834942 (= e!4633113 tp_is_empty!52317)))

(declare-fun b!7834943 () Bool)

(declare-fun tp!2317643 () Bool)

(declare-fun tp!2317639 () Bool)

(assert (=> b!7834943 (= e!4633119 (and tp!2317643 tp!2317639))))

(declare-fun b!7834944 () Bool)

(declare-fun tp!2317646 () Bool)

(assert (=> b!7834944 (= e!4633115 (and tp_is_empty!52317 tp!2317646))))

(declare-fun b!7834945 () Bool)

(declare-fun tp!2317641 () Bool)

(assert (=> b!7834945 (= e!4633118 (and tp_is_empty!52317 tp!2317641))))

(declare-fun b!7834946 () Bool)

(declare-fun tp!2317644 () Bool)

(assert (=> b!7834946 (= e!4633113 tp!2317644)))

(declare-fun b!7834947 () Bool)

(assert (=> b!7834947 (= e!4633125 e!4633114)))

(declare-fun res!3116338 () Bool)

(assert (=> b!7834947 (=> (not res!3116338) (not e!4633114))))

(declare-fun lt!2677471 () List!73818)

(assert (=> b!7834947 (= res!3116338 (= lt!2677471 s!14274))))

(assert (=> b!7834947 (= lt!2677471 (++!18015 s1Rec!453 s2Rec!453))))

(declare-fun b!7834948 () Bool)

(declare-fun tp!2317642 () Bool)

(assert (=> b!7834948 (= e!4633117 (and tp_is_empty!52317 tp!2317642))))

(declare-fun b!7834949 () Bool)

(declare-fun tp!2317650 () Bool)

(declare-fun tp!2317645 () Bool)

(assert (=> b!7834949 (= e!4633119 (and tp!2317650 tp!2317645))))

(declare-fun b!7834950 () Bool)

(declare-fun res!3116335 () Bool)

(assert (=> b!7834950 (=> (not res!3116335) (not e!4633116))))

(declare-fun r2!6199 () Regex!20981)

(assert (=> b!7834950 (= res!3116335 (validRegex!11395 r2!6199))))

(declare-fun b!7834951 () Bool)

(declare-fun res!3116332 () Bool)

(assert (=> b!7834951 (=> (not res!3116332) (not e!4633114))))

(assert (=> b!7834951 (= res!3116332 (matchR!10437 r2!6199 s2!3721))))

(declare-fun b!7834952 () Bool)

(assert (=> b!7834952 (= e!4633114 (not e!4633122))))

(declare-fun res!3116339 () Bool)

(assert (=> b!7834952 (=> res!3116339 e!4633122)))

(declare-fun size!42771 (List!73818) Int)

(assert (=> b!7834952 (= res!3116339 (not (= (size!42771 s1Rec!453) (size!42771 s1!4101))))))

(declare-fun lt!2677470 () List!73818)

(declare-fun lt!2677469 () List!73818)

(declare-fun isPrefix!6331 (List!73818 List!73818) Bool)

(assert (=> b!7834952 (isPrefix!6331 lt!2677470 lt!2677469)))

(declare-fun lt!2677468 () Unit!168750)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3777 (List!73818 List!73818) Unit!168750)

(assert (=> b!7834952 (= lt!2677468 (lemmaConcatTwoListThenFirstIsPrefix!3777 lt!2677470 (t!388553 s2Rec!453)))))

(assert (=> b!7834952 (= lt!2677469 s!14274)))

(assert (=> b!7834952 (= lt!2677469 (++!18015 lt!2677470 (t!388553 s2Rec!453)))))

(assert (=> b!7834952 (= lt!2677470 (++!18015 s1Rec!453 (Cons!73694 (h!80142 s2Rec!453) Nil!73694)))))

(declare-fun lt!2677476 () Unit!168750)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3442 (List!73818 C!42288 List!73818 List!73818) Unit!168750)

(assert (=> b!7834952 (= lt!2677476 (lemmaMoveElementToOtherListKeepsConcatEq!3442 s1Rec!453 (h!80142 s2Rec!453) (t!388553 s2Rec!453) s!14274))))

(declare-fun lt!2677475 () Unit!168750)

(assert (=> b!7834952 (= lt!2677475 e!4633121)))

(declare-fun c!1440895 () Bool)

(assert (=> b!7834952 (= c!1440895 (= s1Rec!453 s1!4101))))

(assert (=> b!7834952 (isPrefix!6331 s1Rec!453 lt!2677471)))

(declare-fun lt!2677474 () Unit!168750)

(assert (=> b!7834952 (= lt!2677474 (lemmaConcatTwoListThenFirstIsPrefix!3777 s1Rec!453 s2Rec!453))))

(assert (=> b!7834952 (isPrefix!6331 s1!4101 lt!2677478)))

(declare-fun lt!2677477 () Unit!168750)

(assert (=> b!7834952 (= lt!2677477 (lemmaConcatTwoListThenFirstIsPrefix!3777 s1!4101 s2!3721))))

(declare-fun b!7834953 () Bool)

(declare-fun tp!2317640 () Bool)

(declare-fun tp!2317648 () Bool)

(assert (=> b!7834953 (= e!4633113 (and tp!2317640 tp!2317648))))

(declare-fun b!7834954 () Bool)

(declare-fun res!3116337 () Bool)

(assert (=> b!7834954 (=> (not res!3116337) (not e!4633125))))

(assert (=> b!7834954 (= res!3116337 (isPrefix!6331 s1Rec!453 s1!4101))))

(declare-fun b!7834955 () Bool)

(declare-fun res!3116333 () Bool)

(assert (=> b!7834955 (=> (not res!3116333) (not e!4633114))))

(get-info :version)

(assert (=> b!7834955 (= res!3116333 (not ((_ is Nil!73694) s2Rec!453)))))

(declare-fun b!7834956 () Bool)

(declare-fun tp!2317651 () Bool)

(declare-fun tp!2317649 () Bool)

(assert (=> b!7834956 (= e!4633113 (and tp!2317651 tp!2317649))))

(declare-fun b!7834957 () Bool)

(assert (=> b!7834957 (= e!4633120 (not (matchR!10437 r2!6199 s2Rec!453)))))

(assert (= (and start!742302 res!3116330) b!7834950))

(assert (= (and b!7834950 res!3116335) b!7834937))

(assert (= (and b!7834937 res!3116334) b!7834954))

(assert (= (and b!7834954 res!3116337) b!7834947))

(assert (= (and b!7834947 res!3116338) b!7834936))

(assert (= (and b!7834936 res!3116331) b!7834951))

(assert (= (and b!7834951 res!3116332) b!7834939))

(assert (= (and b!7834939 (not res!3116340)) b!7834957))

(assert (= (and b!7834939 res!3116336) b!7834955))

(assert (= (and b!7834955 res!3116333) b!7834952))

(assert (= (and b!7834952 c!1440895) b!7834935))

(assert (= (and b!7834952 (not c!1440895)) b!7834938))

(assert (= (and b!7834952 (not res!3116339)) b!7834933))

(assert (= (and start!742302 ((_ is ElementMatch!20981) r2!6199)) b!7834942))

(assert (= (and start!742302 ((_ is Concat!29826) r2!6199)) b!7834953))

(assert (= (and start!742302 ((_ is Star!20981) r2!6199)) b!7834946))

(assert (= (and start!742302 ((_ is Union!20981) r2!6199)) b!7834956))

(assert (= (and start!742302 ((_ is Cons!73694) s1!4101)) b!7834944))

(assert (= (and start!742302 ((_ is Cons!73694) s2!3721)) b!7834945))

(assert (= (and start!742302 ((_ is Cons!73694) s2Rec!453)) b!7834932))

(assert (= (and start!742302 ((_ is Cons!73694) s!14274)) b!7834948))

(assert (= (and start!742302 ((_ is ElementMatch!20981) r1!6261)) b!7834941))

(assert (= (and start!742302 ((_ is Concat!29826) r1!6261)) b!7834943))

(assert (= (and start!742302 ((_ is Star!20981) r1!6261)) b!7834940))

(assert (= (and start!742302 ((_ is Union!20981) r1!6261)) b!7834949))

(assert (= (and start!742302 ((_ is Cons!73694) s1Rec!453)) b!7834934))

(declare-fun m!8250322 () Bool)

(assert (=> b!7834935 m!8250322))

(declare-fun m!8250324 () Bool)

(assert (=> b!7834951 m!8250324))

(declare-fun m!8250326 () Bool)

(assert (=> b!7834957 m!8250326))

(declare-fun m!8250328 () Bool)

(assert (=> b!7834937 m!8250328))

(declare-fun m!8250330 () Bool)

(assert (=> b!7834939 m!8250330))

(declare-fun m!8250332 () Bool)

(assert (=> b!7834954 m!8250332))

(declare-fun m!8250334 () Bool)

(assert (=> b!7834950 m!8250334))

(declare-fun m!8250336 () Bool)

(assert (=> b!7834933 m!8250336))

(declare-fun m!8250338 () Bool)

(assert (=> start!742302 m!8250338))

(declare-fun m!8250340 () Bool)

(assert (=> b!7834947 m!8250340))

(declare-fun m!8250342 () Bool)

(assert (=> b!7834936 m!8250342))

(declare-fun m!8250344 () Bool)

(assert (=> b!7834952 m!8250344))

(declare-fun m!8250346 () Bool)

(assert (=> b!7834952 m!8250346))

(declare-fun m!8250348 () Bool)

(assert (=> b!7834952 m!8250348))

(declare-fun m!8250350 () Bool)

(assert (=> b!7834952 m!8250350))

(declare-fun m!8250352 () Bool)

(assert (=> b!7834952 m!8250352))

(declare-fun m!8250354 () Bool)

(assert (=> b!7834952 m!8250354))

(declare-fun m!8250356 () Bool)

(assert (=> b!7834952 m!8250356))

(declare-fun m!8250358 () Bool)

(assert (=> b!7834952 m!8250358))

(declare-fun m!8250360 () Bool)

(assert (=> b!7834952 m!8250360))

(declare-fun m!8250362 () Bool)

(assert (=> b!7834952 m!8250362))

(declare-fun m!8250364 () Bool)

(assert (=> b!7834952 m!8250364))

(check-sat (not b!7834952) (not b!7834943) (not b!7834946) (not start!742302) (not b!7834945) tp_is_empty!52317 (not b!7834947) (not b!7834940) (not b!7834954) (not b!7834932) (not b!7834957) (not b!7834949) (not b!7834950) (not b!7834944) (not b!7834936) (not b!7834934) (not b!7834935) (not b!7834951) (not b!7834933) (not b!7834948) (not b!7834953) (not b!7834939) (not b!7834937) (not b!7834956))
(check-sat)
