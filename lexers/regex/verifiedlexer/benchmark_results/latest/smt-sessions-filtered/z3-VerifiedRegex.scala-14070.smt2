; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!741966 () Bool)

(assert start!741966)

(declare-fun b!7819927 () Bool)

(declare-fun e!4626800 () Bool)

(declare-fun e!4626802 () Bool)

(assert (=> b!7819927 (= e!4626800 e!4626802)))

(declare-fun res!3112623 () Bool)

(assert (=> b!7819927 (=> (not res!3112623) (not e!4626802))))

(declare-datatypes ((C!42196 0))(
  ( (C!42197 (val!31538 Int)) )
))
(declare-datatypes ((List!73772 0))(
  ( (Nil!73648) (Cons!73648 (h!80096 C!42196) (t!388507 List!73772)) )
))
(declare-fun lt!2676172 () List!73772)

(declare-fun s!14274 () List!73772)

(assert (=> b!7819927 (= res!3112623 (= lt!2676172 s!14274))))

(declare-fun s1Rec!453 () List!73772)

(declare-fun s2Rec!453 () List!73772)

(declare-fun ++!17969 (List!73772 List!73772) List!73772)

(assert (=> b!7819927 (= lt!2676172 (++!17969 s1Rec!453 s2Rec!453))))

(declare-fun b!7819928 () Bool)

(declare-fun e!4626805 () Bool)

(declare-fun tp!2307711 () Bool)

(assert (=> b!7819928 (= e!4626805 tp!2307711)))

(declare-fun b!7819929 () Bool)

(declare-fun tp_is_empty!52225 () Bool)

(assert (=> b!7819929 (= e!4626805 tp_is_empty!52225)))

(declare-fun b!7819930 () Bool)

(declare-fun e!4626811 () Bool)

(declare-fun tp!2307717 () Bool)

(assert (=> b!7819930 (= e!4626811 (and tp_is_empty!52225 tp!2307717))))

(declare-fun b!7819931 () Bool)

(declare-fun e!4626810 () Bool)

(assert (=> b!7819931 (= e!4626810 tp_is_empty!52225)))

(declare-fun b!7819932 () Bool)

(declare-fun e!4626804 () Bool)

(assert (=> b!7819932 (= e!4626804 e!4626800)))

(declare-fun res!3112621 () Bool)

(assert (=> b!7819932 (=> (not res!3112621) (not e!4626800))))

(declare-fun lt!2676173 () List!73772)

(assert (=> b!7819932 (= res!3112621 (= lt!2676173 s!14274))))

(declare-fun s1!4101 () List!73772)

(declare-fun s2!3721 () List!73772)

(assert (=> b!7819932 (= lt!2676173 (++!17969 s1!4101 s2!3721))))

(declare-fun b!7819933 () Bool)

(declare-fun e!4626803 () Bool)

(declare-datatypes ((Regex!20935 0))(
  ( (ElementMatch!20935 (c!1439284 C!42196)) (Concat!29780 (regOne!42382 Regex!20935) (regTwo!42382 Regex!20935)) (EmptyExpr!20935) (Star!20935 (reg!21264 Regex!20935)) (EmptyLang!20935) (Union!20935 (regOne!42383 Regex!20935) (regTwo!42383 Regex!20935)) )
))
(declare-fun r2!6199 () Regex!20935)

(declare-fun matchR!10391 (Regex!20935 List!73772) Bool)

(assert (=> b!7819933 (= e!4626803 (not (matchR!10391 r2!6199 s2Rec!453)))))

(declare-fun b!7819934 () Bool)

(declare-fun res!3112627 () Bool)

(assert (=> b!7819934 (=> (not res!3112627) (not e!4626802))))

(declare-fun r1!6261 () Regex!20935)

(assert (=> b!7819934 (= res!3112627 (matchR!10391 r1!6261 s1!4101))))

(declare-fun b!7819935 () Bool)

(declare-fun res!3112628 () Bool)

(assert (=> b!7819935 (=> (not res!3112628) (not e!4626800))))

(declare-fun isPrefix!6285 (List!73772 List!73772) Bool)

(assert (=> b!7819935 (= res!3112628 (isPrefix!6285 s1Rec!453 s1!4101))))

(declare-fun b!7819936 () Bool)

(declare-fun e!4626809 () Bool)

(assert (=> b!7819936 (= e!4626802 (not e!4626809))))

(declare-fun res!3112618 () Bool)

(assert (=> b!7819936 (=> res!3112618 e!4626809)))

(assert (=> b!7819936 (= res!3112618 (not (= s1Rec!453 s1!4101)))))

(assert (=> b!7819936 (isPrefix!6285 s1Rec!453 lt!2676172)))

(declare-datatypes ((Unit!168640 0))(
  ( (Unit!168641) )
))
(declare-fun lt!2676171 () Unit!168640)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3749 (List!73772 List!73772) Unit!168640)

(assert (=> b!7819936 (= lt!2676171 (lemmaConcatTwoListThenFirstIsPrefix!3749 s1Rec!453 s2Rec!453))))

(assert (=> b!7819936 (isPrefix!6285 s1!4101 lt!2676173)))

(declare-fun lt!2676174 () Unit!168640)

(assert (=> b!7819936 (= lt!2676174 (lemmaConcatTwoListThenFirstIsPrefix!3749 s1!4101 s2!3721))))

(declare-fun b!7819937 () Bool)

(declare-fun tp!2307709 () Bool)

(assert (=> b!7819937 (= e!4626810 tp!2307709)))

(declare-fun b!7819938 () Bool)

(declare-fun res!3112624 () Bool)

(assert (=> b!7819938 (=> (not res!3112624) (not e!4626804))))

(declare-fun validRegex!11349 (Regex!20935) Bool)

(assert (=> b!7819938 (= res!3112624 (validRegex!11349 r2!6199))))

(declare-fun b!7819939 () Bool)

(declare-fun tp!2307715 () Bool)

(declare-fun tp!2307713 () Bool)

(assert (=> b!7819939 (= e!4626810 (and tp!2307715 tp!2307713))))

(declare-fun b!7819940 () Bool)

(declare-fun res!3112619 () Bool)

(assert (=> b!7819940 (=> (not res!3112619) (not e!4626802))))

(get-info :version)

(assert (=> b!7819940 (= res!3112619 (not ((_ is Nil!73648) s2Rec!453)))))

(declare-fun b!7819941 () Bool)

(assert (=> b!7819941 (= e!4626809 true)))

(declare-fun lt!2676170 () Bool)

(assert (=> b!7819941 (= lt!2676170 (isPrefix!6285 s1Rec!453 s!14274))))

(declare-fun b!7819942 () Bool)

(declare-fun e!4626808 () Bool)

(declare-fun tp!2307706 () Bool)

(assert (=> b!7819942 (= e!4626808 (and tp_is_empty!52225 tp!2307706))))

(declare-fun b!7819943 () Bool)

(declare-fun e!4626801 () Bool)

(declare-fun tp!2307707 () Bool)

(assert (=> b!7819943 (= e!4626801 (and tp_is_empty!52225 tp!2307707))))

(declare-fun res!3112626 () Bool)

(assert (=> start!741966 (=> (not res!3112626) (not e!4626804))))

(assert (=> start!741966 (= res!3112626 (validRegex!11349 r1!6261))))

(assert (=> start!741966 e!4626804))

(assert (=> start!741966 e!4626805))

(assert (=> start!741966 e!4626808))

(assert (=> start!741966 e!4626811))

(declare-fun e!4626806 () Bool)

(assert (=> start!741966 e!4626806))

(assert (=> start!741966 e!4626801))

(assert (=> start!741966 e!4626810))

(declare-fun e!4626807 () Bool)

(assert (=> start!741966 e!4626807))

(declare-fun b!7819944 () Bool)

(declare-fun res!3112622 () Bool)

(assert (=> b!7819944 (=> res!3112622 e!4626809)))

(assert (=> b!7819944 (= res!3112622 (not (isPrefix!6285 s1!4101 s!14274)))))

(declare-fun b!7819945 () Bool)

(declare-fun tp!2307716 () Bool)

(assert (=> b!7819945 (= e!4626806 (and tp_is_empty!52225 tp!2307716))))

(declare-fun b!7819946 () Bool)

(declare-fun tp!2307714 () Bool)

(assert (=> b!7819946 (= e!4626807 (and tp_is_empty!52225 tp!2307714))))

(declare-fun b!7819947 () Bool)

(declare-fun res!3112620 () Bool)

(assert (=> b!7819947 (=> (not res!3112620) (not e!4626802))))

(assert (=> b!7819947 (= res!3112620 e!4626803)))

(declare-fun res!3112625 () Bool)

(assert (=> b!7819947 (=> res!3112625 e!4626803)))

(assert (=> b!7819947 (= res!3112625 (not (matchR!10391 r1!6261 s1Rec!453)))))

(declare-fun b!7819948 () Bool)

(declare-fun res!3112617 () Bool)

(assert (=> b!7819948 (=> (not res!3112617) (not e!4626802))))

(assert (=> b!7819948 (= res!3112617 (matchR!10391 r2!6199 s2!3721))))

(declare-fun b!7819949 () Bool)

(declare-fun tp!2307708 () Bool)

(declare-fun tp!2307704 () Bool)

(assert (=> b!7819949 (= e!4626805 (and tp!2307708 tp!2307704))))

(declare-fun b!7819950 () Bool)

(declare-fun tp!2307710 () Bool)

(declare-fun tp!2307705 () Bool)

(assert (=> b!7819950 (= e!4626810 (and tp!2307710 tp!2307705))))

(declare-fun b!7819951 () Bool)

(declare-fun tp!2307703 () Bool)

(declare-fun tp!2307712 () Bool)

(assert (=> b!7819951 (= e!4626805 (and tp!2307703 tp!2307712))))

(assert (= (and start!741966 res!3112626) b!7819938))

(assert (= (and b!7819938 res!3112624) b!7819932))

(assert (= (and b!7819932 res!3112621) b!7819935))

(assert (= (and b!7819935 res!3112628) b!7819927))

(assert (= (and b!7819927 res!3112623) b!7819934))

(assert (= (and b!7819934 res!3112627) b!7819948))

(assert (= (and b!7819948 res!3112617) b!7819947))

(assert (= (and b!7819947 (not res!3112625)) b!7819933))

(assert (= (and b!7819947 res!3112620) b!7819940))

(assert (= (and b!7819940 res!3112619) b!7819936))

(assert (= (and b!7819936 (not res!3112618)) b!7819944))

(assert (= (and b!7819944 (not res!3112622)) b!7819941))

(assert (= (and start!741966 ((_ is ElementMatch!20935) r2!6199)) b!7819929))

(assert (= (and start!741966 ((_ is Concat!29780) r2!6199)) b!7819949))

(assert (= (and start!741966 ((_ is Star!20935) r2!6199)) b!7819928))

(assert (= (and start!741966 ((_ is Union!20935) r2!6199)) b!7819951))

(assert (= (and start!741966 ((_ is Cons!73648) s1!4101)) b!7819942))

(assert (= (and start!741966 ((_ is Cons!73648) s2!3721)) b!7819930))

(assert (= (and start!741966 ((_ is Cons!73648) s2Rec!453)) b!7819945))

(assert (= (and start!741966 ((_ is Cons!73648) s!14274)) b!7819943))

(assert (= (and start!741966 ((_ is ElementMatch!20935) r1!6261)) b!7819931))

(assert (= (and start!741966 ((_ is Concat!29780) r1!6261)) b!7819939))

(assert (= (and start!741966 ((_ is Star!20935) r1!6261)) b!7819937))

(assert (= (and start!741966 ((_ is Union!20935) r1!6261)) b!7819950))

(assert (= (and start!741966 ((_ is Cons!73648) s1Rec!453)) b!7819946))

(declare-fun m!8244652 () Bool)

(assert (=> b!7819935 m!8244652))

(declare-fun m!8244654 () Bool)

(assert (=> b!7819941 m!8244654))

(declare-fun m!8244656 () Bool)

(assert (=> b!7819932 m!8244656))

(declare-fun m!8244658 () Bool)

(assert (=> b!7819936 m!8244658))

(declare-fun m!8244660 () Bool)

(assert (=> b!7819936 m!8244660))

(declare-fun m!8244662 () Bool)

(assert (=> b!7819936 m!8244662))

(declare-fun m!8244664 () Bool)

(assert (=> b!7819936 m!8244664))

(declare-fun m!8244666 () Bool)

(assert (=> start!741966 m!8244666))

(declare-fun m!8244668 () Bool)

(assert (=> b!7819948 m!8244668))

(declare-fun m!8244670 () Bool)

(assert (=> b!7819933 m!8244670))

(declare-fun m!8244672 () Bool)

(assert (=> b!7819947 m!8244672))

(declare-fun m!8244674 () Bool)

(assert (=> b!7819938 m!8244674))

(declare-fun m!8244676 () Bool)

(assert (=> b!7819934 m!8244676))

(declare-fun m!8244678 () Bool)

(assert (=> b!7819927 m!8244678))

(declare-fun m!8244680 () Bool)

(assert (=> b!7819944 m!8244680))

(check-sat (not b!7819943) (not b!7819948) (not b!7819933) (not b!7819939) (not b!7819945) (not b!7819937) tp_is_empty!52225 (not b!7819941) (not b!7819934) (not b!7819928) (not b!7819947) (not b!7819936) (not b!7819930) (not b!7819935) (not b!7819944) (not b!7819950) (not b!7819951) (not b!7819942) (not b!7819938) (not start!741966) (not b!7819949) (not b!7819932) (not b!7819946) (not b!7819927))
(check-sat)
