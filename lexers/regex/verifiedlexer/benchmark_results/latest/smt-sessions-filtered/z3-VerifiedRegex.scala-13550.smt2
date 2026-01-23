; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!729056 () Bool)

(assert start!729056)

(declare-fun b!7537937 () Bool)

(declare-fun e!4491500 () Bool)

(declare-fun tp!2192529 () Bool)

(declare-fun tp!2192523 () Bool)

(assert (=> b!7537937 (= e!4491500 (and tp!2192529 tp!2192523))))

(declare-fun b!7537938 () Bool)

(declare-fun res!3020817 () Bool)

(declare-fun e!4491505 () Bool)

(assert (=> b!7537938 (=> (not res!3020817) (not e!4491505))))

(declare-datatypes ((C!40116 0))(
  ( (C!40117 (val!30498 Int)) )
))
(declare-datatypes ((Regex!19895 0))(
  ( (ElementMatch!19895 (c!1391782 C!40116)) (Concat!28740 (regOne!40302 Regex!19895) (regTwo!40302 Regex!19895)) (EmptyExpr!19895) (Star!19895 (reg!20224 Regex!19895)) (EmptyLang!19895) (Union!19895 (regOne!40303 Regex!19895) (regTwo!40303 Regex!19895)) )
))
(declare-fun r!24333 () Regex!19895)

(declare-fun validRegex!10323 (Regex!19895) Bool)

(assert (=> b!7537938 (= res!3020817 (validRegex!10323 r!24333))))

(declare-fun b!7537939 () Bool)

(declare-fun e!4491503 () Bool)

(declare-fun e!4491497 () Bool)

(assert (=> b!7537939 (= e!4491503 e!4491497)))

(declare-fun res!3020814 () Bool)

(assert (=> b!7537939 (=> res!3020814 e!4491497)))

(declare-datatypes ((List!72778 0))(
  ( (Nil!72654) (Cons!72654 (h!79102 C!40116) (t!387485 List!72778)) )
))
(declare-fun lt!2642327 () List!72778)

(declare-fun input!7874 () List!72778)

(assert (=> b!7537939 (= res!3020814 (not (= lt!2642327 input!7874)))))

(declare-fun lt!2642332 () List!72778)

(declare-fun lt!2642331 () List!72778)

(declare-fun testedP!423 () List!72778)

(declare-fun ++!17412 (List!72778 List!72778) List!72778)

(assert (=> b!7537939 (= lt!2642327 (++!17412 (++!17412 testedP!423 lt!2642332) lt!2642331))))

(declare-fun b!7537940 () Bool)

(declare-fun e!4491498 () Bool)

(declare-fun tp!2192526 () Bool)

(declare-fun tp!2192525 () Bool)

(assert (=> b!7537940 (= e!4491498 (and tp!2192526 tp!2192525))))

(declare-fun b!7537941 () Bool)

(assert (=> b!7537941 (= e!4491497 true)))

(assert (=> b!7537941 (= lt!2642327 (++!17412 testedP!423 (++!17412 lt!2642332 lt!2642331)))))

(declare-datatypes ((Unit!166728 0))(
  ( (Unit!166729) )
))
(declare-fun lt!2642336 () Unit!166728)

(declare-fun lemmaConcatAssociativity!3060 (List!72778 List!72778 List!72778) Unit!166728)

(assert (=> b!7537941 (= lt!2642336 (lemmaConcatAssociativity!3060 testedP!423 lt!2642332 lt!2642331))))

(declare-fun b!7537942 () Bool)

(declare-fun tp!2192517 () Bool)

(assert (=> b!7537942 (= e!4491500 tp!2192517)))

(declare-fun res!3020816 () Bool)

(assert (=> start!729056 (=> (not res!3020816) (not e!4491505))))

(declare-fun baseR!101 () Regex!19895)

(assert (=> start!729056 (= res!3020816 (validRegex!10323 baseR!101))))

(assert (=> start!729056 e!4491505))

(assert (=> start!729056 e!4491498))

(declare-fun e!4491501 () Bool)

(assert (=> start!729056 e!4491501))

(declare-fun e!4491502 () Bool)

(assert (=> start!729056 e!4491502))

(declare-fun e!4491499 () Bool)

(assert (=> start!729056 e!4491499))

(assert (=> start!729056 e!4491500))

(declare-fun b!7537943 () Bool)

(declare-fun tp_is_empty!50145 () Bool)

(declare-fun tp!2192527 () Bool)

(assert (=> b!7537943 (= e!4491499 (and tp_is_empty!50145 tp!2192527))))

(declare-fun b!7537944 () Bool)

(declare-fun e!4491496 () Bool)

(assert (=> b!7537944 (= e!4491505 e!4491496)))

(declare-fun res!3020819 () Bool)

(assert (=> b!7537944 (=> (not res!3020819) (not e!4491496))))

(declare-fun lt!2642334 () Int)

(declare-fun lt!2642330 () Int)

(assert (=> b!7537944 (= res!3020819 (>= lt!2642334 lt!2642330))))

(declare-fun size!42391 (List!72778) Int)

(assert (=> b!7537944 (= lt!2642330 (size!42391 testedP!423))))

(declare-fun knownP!30 () List!72778)

(assert (=> b!7537944 (= lt!2642334 (size!42391 knownP!30))))

(declare-fun b!7537945 () Bool)

(declare-fun e!4491504 () Bool)

(assert (=> b!7537945 (= e!4491504 e!4491503)))

(declare-fun res!3020810 () Bool)

(assert (=> b!7537945 (=> res!3020810 e!4491503)))

(assert (=> b!7537945 (= res!3020810 (not (= (++!17412 knownP!30 lt!2642331) input!7874)))))

(declare-fun getSuffix!3581 (List!72778 List!72778) List!72778)

(assert (=> b!7537945 (= lt!2642331 (getSuffix!3581 input!7874 knownP!30))))

(declare-fun lt!2642329 () List!72778)

(declare-fun lt!2642337 () List!72778)

(assert (=> b!7537945 (= lt!2642329 (getSuffix!3581 knownP!30 lt!2642337))))

(declare-fun isPrefix!6101 (List!72778 List!72778) Bool)

(assert (=> b!7537945 (isPrefix!6101 lt!2642337 knownP!30)))

(declare-fun lt!2642339 () Unit!166728)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!851 (List!72778 List!72778 List!72778) Unit!166728)

(assert (=> b!7537945 (= lt!2642339 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!851 knownP!30 lt!2642337 input!7874))))

(declare-fun lt!2642328 () C!40116)

(declare-fun derivative!427 (Regex!19895 List!72778) Regex!19895)

(declare-fun derivativeStep!5685 (Regex!19895 C!40116) Regex!19895)

(assert (=> b!7537945 (= (derivative!427 baseR!101 lt!2642337) (derivativeStep!5685 r!24333 lt!2642328))))

(declare-fun lt!2642335 () Unit!166728)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!133 (Regex!19895 Regex!19895 List!72778 C!40116) Unit!166728)

(assert (=> b!7537945 (= lt!2642335 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!133 baseR!101 r!24333 testedP!423 lt!2642328))))

(assert (=> b!7537945 (isPrefix!6101 lt!2642337 input!7874)))

(declare-fun lt!2642340 () Unit!166728)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1166 (List!72778 List!72778) Unit!166728)

(assert (=> b!7537945 (= lt!2642340 (lemmaAddHeadSuffixToPrefixStillPrefix!1166 testedP!423 input!7874))))

(assert (=> b!7537945 (= lt!2642337 (++!17412 testedP!423 (Cons!72654 lt!2642328 Nil!72654)))))

(declare-fun lt!2642333 () List!72778)

(declare-fun head!15485 (List!72778) C!40116)

(assert (=> b!7537945 (= lt!2642328 (head!15485 lt!2642333))))

(assert (=> b!7537945 (= lt!2642333 (getSuffix!3581 input!7874 testedP!423))))

(declare-fun b!7537946 () Bool)

(declare-fun res!3020809 () Bool)

(assert (=> b!7537946 (=> res!3020809 e!4491504)))

(assert (=> b!7537946 (= res!3020809 (>= lt!2642330 (size!42391 input!7874)))))

(declare-fun b!7537947 () Bool)

(declare-fun res!3020813 () Bool)

(assert (=> b!7537947 (=> res!3020813 e!4491504)))

(assert (=> b!7537947 (= res!3020813 (not (= (derivative!427 baseR!101 testedP!423) r!24333)))))

(declare-fun b!7537948 () Bool)

(declare-fun tp!2192522 () Bool)

(declare-fun tp!2192521 () Bool)

(assert (=> b!7537948 (= e!4491498 (and tp!2192522 tp!2192521))))

(declare-fun b!7537949 () Bool)

(declare-fun res!3020812 () Bool)

(assert (=> b!7537949 (=> (not res!3020812) (not e!4491505))))

(assert (=> b!7537949 (= res!3020812 (isPrefix!6101 testedP!423 input!7874))))

(declare-fun b!7537950 () Bool)

(declare-fun res!3020818 () Bool)

(assert (=> b!7537950 (=> (not res!3020818) (not e!4491505))))

(assert (=> b!7537950 (= res!3020818 (isPrefix!6101 knownP!30 input!7874))))

(declare-fun b!7537951 () Bool)

(declare-fun tp!2192519 () Bool)

(assert (=> b!7537951 (= e!4491502 (and tp_is_empty!50145 tp!2192519))))

(declare-fun b!7537952 () Bool)

(declare-fun res!3020811 () Bool)

(assert (=> b!7537952 (=> (not res!3020811) (not e!4491496))))

(declare-fun matchR!9497 (Regex!19895 List!72778) Bool)

(assert (=> b!7537952 (= res!3020811 (matchR!9497 baseR!101 knownP!30))))

(declare-fun b!7537953 () Bool)

(declare-fun tp!2192528 () Bool)

(assert (=> b!7537953 (= e!4491501 (and tp_is_empty!50145 tp!2192528))))

(declare-fun b!7537954 () Bool)

(assert (=> b!7537954 (= e!4491496 (not e!4491504))))

(declare-fun res!3020808 () Bool)

(assert (=> b!7537954 (=> res!3020808 e!4491504)))

(assert (=> b!7537954 (= res!3020808 (not (matchR!9497 r!24333 lt!2642332)))))

(assert (=> b!7537954 (= lt!2642332 (getSuffix!3581 knownP!30 testedP!423))))

(assert (=> b!7537954 (isPrefix!6101 testedP!423 knownP!30)))

(declare-fun lt!2642338 () Unit!166728)

(assert (=> b!7537954 (= lt!2642338 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!851 knownP!30 testedP!423 input!7874))))

(declare-fun b!7537955 () Bool)

(declare-fun tp!2192518 () Bool)

(assert (=> b!7537955 (= e!4491498 tp!2192518)))

(declare-fun b!7537956 () Bool)

(declare-fun res!3020807 () Bool)

(assert (=> b!7537956 (=> res!3020807 e!4491504)))

(declare-fun lostCause!1687 (Regex!19895) Bool)

(assert (=> b!7537956 (= res!3020807 (lostCause!1687 r!24333))))

(declare-fun b!7537957 () Bool)

(declare-fun tp!2192520 () Bool)

(declare-fun tp!2192524 () Bool)

(assert (=> b!7537957 (= e!4491500 (and tp!2192520 tp!2192524))))

(declare-fun b!7537958 () Bool)

(assert (=> b!7537958 (= e!4491498 tp_is_empty!50145)))

(declare-fun b!7537959 () Bool)

(declare-fun res!3020820 () Bool)

(assert (=> b!7537959 (=> res!3020820 e!4491504)))

(assert (=> b!7537959 (= res!3020820 (= lt!2642330 lt!2642334))))

(declare-fun b!7537960 () Bool)

(assert (=> b!7537960 (= e!4491500 tp_is_empty!50145)))

(declare-fun b!7537961 () Bool)

(declare-fun res!3020815 () Bool)

(assert (=> b!7537961 (=> res!3020815 e!4491497)))

(assert (=> b!7537961 (= res!3020815 (not (= (++!17412 testedP!423 lt!2642333) input!7874)))))

(assert (= (and start!729056 res!3020816) b!7537938))

(assert (= (and b!7537938 res!3020817) b!7537949))

(assert (= (and b!7537949 res!3020812) b!7537950))

(assert (= (and b!7537950 res!3020818) b!7537944))

(assert (= (and b!7537944 res!3020819) b!7537952))

(assert (= (and b!7537952 res!3020811) b!7537954))

(assert (= (and b!7537954 (not res!3020808)) b!7537947))

(assert (= (and b!7537947 (not res!3020813)) b!7537956))

(assert (= (and b!7537956 (not res!3020807)) b!7537959))

(assert (= (and b!7537959 (not res!3020820)) b!7537946))

(assert (= (and b!7537946 (not res!3020809)) b!7537945))

(assert (= (and b!7537945 (not res!3020810)) b!7537939))

(assert (= (and b!7537939 (not res!3020814)) b!7537961))

(assert (= (and b!7537961 (not res!3020815)) b!7537941))

(get-info :version)

(assert (= (and start!729056 ((_ is ElementMatch!19895) baseR!101)) b!7537958))

(assert (= (and start!729056 ((_ is Concat!28740) baseR!101)) b!7537948))

(assert (= (and start!729056 ((_ is Star!19895) baseR!101)) b!7537955))

(assert (= (and start!729056 ((_ is Union!19895) baseR!101)) b!7537940))

(assert (= (and start!729056 ((_ is Cons!72654) input!7874)) b!7537953))

(assert (= (and start!729056 ((_ is Cons!72654) knownP!30)) b!7537951))

(assert (= (and start!729056 ((_ is Cons!72654) testedP!423)) b!7537943))

(assert (= (and start!729056 ((_ is ElementMatch!19895) r!24333)) b!7537960))

(assert (= (and start!729056 ((_ is Concat!28740) r!24333)) b!7537957))

(assert (= (and start!729056 ((_ is Star!19895) r!24333)) b!7537942))

(assert (= (and start!729056 ((_ is Union!19895) r!24333)) b!7537937))

(declare-fun m!8107956 () Bool)

(assert (=> b!7537952 m!8107956))

(declare-fun m!8107958 () Bool)

(assert (=> b!7537941 m!8107958))

(assert (=> b!7537941 m!8107958))

(declare-fun m!8107960 () Bool)

(assert (=> b!7537941 m!8107960))

(declare-fun m!8107962 () Bool)

(assert (=> b!7537941 m!8107962))

(declare-fun m!8107964 () Bool)

(assert (=> start!729056 m!8107964))

(declare-fun m!8107966 () Bool)

(assert (=> b!7537939 m!8107966))

(assert (=> b!7537939 m!8107966))

(declare-fun m!8107968 () Bool)

(assert (=> b!7537939 m!8107968))

(declare-fun m!8107970 () Bool)

(assert (=> b!7537947 m!8107970))

(declare-fun m!8107972 () Bool)

(assert (=> b!7537949 m!8107972))

(declare-fun m!8107974 () Bool)

(assert (=> b!7537944 m!8107974))

(declare-fun m!8107976 () Bool)

(assert (=> b!7537944 m!8107976))

(declare-fun m!8107978 () Bool)

(assert (=> b!7537956 m!8107978))

(declare-fun m!8107980 () Bool)

(assert (=> b!7537938 m!8107980))

(declare-fun m!8107982 () Bool)

(assert (=> b!7537961 m!8107982))

(declare-fun m!8107984 () Bool)

(assert (=> b!7537950 m!8107984))

(declare-fun m!8107986 () Bool)

(assert (=> b!7537945 m!8107986))

(declare-fun m!8107988 () Bool)

(assert (=> b!7537945 m!8107988))

(declare-fun m!8107990 () Bool)

(assert (=> b!7537945 m!8107990))

(declare-fun m!8107992 () Bool)

(assert (=> b!7537945 m!8107992))

(declare-fun m!8107994 () Bool)

(assert (=> b!7537945 m!8107994))

(declare-fun m!8107996 () Bool)

(assert (=> b!7537945 m!8107996))

(declare-fun m!8107998 () Bool)

(assert (=> b!7537945 m!8107998))

(declare-fun m!8108000 () Bool)

(assert (=> b!7537945 m!8108000))

(declare-fun m!8108002 () Bool)

(assert (=> b!7537945 m!8108002))

(declare-fun m!8108004 () Bool)

(assert (=> b!7537945 m!8108004))

(declare-fun m!8108006 () Bool)

(assert (=> b!7537945 m!8108006))

(declare-fun m!8108008 () Bool)

(assert (=> b!7537945 m!8108008))

(declare-fun m!8108010 () Bool)

(assert (=> b!7537945 m!8108010))

(declare-fun m!8108012 () Bool)

(assert (=> b!7537946 m!8108012))

(declare-fun m!8108014 () Bool)

(assert (=> b!7537954 m!8108014))

(declare-fun m!8108016 () Bool)

(assert (=> b!7537954 m!8108016))

(declare-fun m!8108018 () Bool)

(assert (=> b!7537954 m!8108018))

(declare-fun m!8108020 () Bool)

(assert (=> b!7537954 m!8108020))

(check-sat (not b!7537951) (not b!7537946) (not b!7537947) (not b!7537938) (not b!7537941) (not start!729056) (not b!7537955) (not b!7537953) (not b!7537944) tp_is_empty!50145 (not b!7537957) (not b!7537940) (not b!7537961) (not b!7537943) (not b!7537952) (not b!7537948) (not b!7537956) (not b!7537939) (not b!7537945) (not b!7537937) (not b!7537950) (not b!7537949) (not b!7537954) (not b!7537942))
(check-sat)
