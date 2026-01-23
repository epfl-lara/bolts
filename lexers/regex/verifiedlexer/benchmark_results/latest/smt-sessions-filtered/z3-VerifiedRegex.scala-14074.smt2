; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!741982 () Bool)

(assert start!741982)

(declare-fun b!7820573 () Bool)

(declare-fun e!4627116 () Bool)

(declare-fun tp!2308071 () Bool)

(declare-fun tp!2308076 () Bool)

(assert (=> b!7820573 (= e!4627116 (and tp!2308071 tp!2308076))))

(declare-fun b!7820574 () Bool)

(declare-datatypes ((Unit!168676 0))(
  ( (Unit!168677) )
))
(declare-fun e!4627112 () Unit!168676)

(declare-fun Unit!168678 () Unit!168676)

(assert (=> b!7820574 (= e!4627112 Unit!168678)))

(declare-fun b!7820575 () Bool)

(declare-fun e!4627121 () Bool)

(declare-fun tp_is_empty!52241 () Bool)

(declare-fun tp!2308063 () Bool)

(assert (=> b!7820575 (= e!4627121 (and tp_is_empty!52241 tp!2308063))))

(declare-fun b!7820576 () Bool)

(declare-fun e!4627123 () Bool)

(assert (=> b!7820576 (= e!4627123 (not true))))

(declare-datatypes ((C!42212 0))(
  ( (C!42213 (val!31546 Int)) )
))
(declare-datatypes ((List!73780 0))(
  ( (Nil!73656) (Cons!73656 (h!80104 C!42212) (t!388515 List!73780)) )
))
(declare-fun lt!2676435 () List!73780)

(declare-fun s1!4101 () List!73780)

(declare-fun isPrefix!6293 (List!73780 List!73780) Bool)

(assert (=> b!7820576 (isPrefix!6293 lt!2676435 s1!4101)))

(declare-fun s!14274 () List!73780)

(declare-fun lt!2676429 () Unit!168676)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!941 (List!73780 List!73780 List!73780) Unit!168676)

(assert (=> b!7820576 (= lt!2676429 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!941 s1!4101 lt!2676435 s!14274))))

(declare-fun lt!2676434 () Unit!168676)

(declare-fun e!4627111 () Unit!168676)

(assert (=> b!7820576 (= lt!2676434 e!4627111)))

(declare-fun c!1439326 () Bool)

(declare-fun s1Rec!453 () List!73780)

(declare-fun size!42745 (List!73780) Int)

(assert (=> b!7820576 (= c!1439326 (= (size!42745 s1Rec!453) (size!42745 s1!4101)))))

(declare-fun lt!2676437 () List!73780)

(assert (=> b!7820576 (isPrefix!6293 lt!2676435 lt!2676437)))

(declare-fun lt!2676436 () Unit!168676)

(declare-fun s2Rec!453 () List!73780)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3757 (List!73780 List!73780) Unit!168676)

(assert (=> b!7820576 (= lt!2676436 (lemmaConcatTwoListThenFirstIsPrefix!3757 lt!2676435 (t!388515 s2Rec!453)))))

(assert (=> b!7820576 (= lt!2676437 s!14274)))

(declare-fun ++!17977 (List!73780 List!73780) List!73780)

(assert (=> b!7820576 (= lt!2676437 (++!17977 lt!2676435 (t!388515 s2Rec!453)))))

(assert (=> b!7820576 (= lt!2676435 (++!17977 s1Rec!453 (Cons!73656 (h!80104 s2Rec!453) Nil!73656)))))

(declare-fun lt!2676430 () Unit!168676)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3430 (List!73780 C!42212 List!73780 List!73780) Unit!168676)

(assert (=> b!7820576 (= lt!2676430 (lemmaMoveElementToOtherListKeepsConcatEq!3430 s1Rec!453 (h!80104 s2Rec!453) (t!388515 s2Rec!453) s!14274))))

(declare-fun lt!2676433 () Unit!168676)

(assert (=> b!7820576 (= lt!2676433 e!4627112)))

(declare-fun c!1439327 () Bool)

(assert (=> b!7820576 (= c!1439327 (= s1Rec!453 s1!4101))))

(declare-fun lt!2676428 () List!73780)

(assert (=> b!7820576 (isPrefix!6293 s1Rec!453 lt!2676428)))

(declare-fun lt!2676438 () Unit!168676)

(assert (=> b!7820576 (= lt!2676438 (lemmaConcatTwoListThenFirstIsPrefix!3757 s1Rec!453 s2Rec!453))))

(declare-fun lt!2676431 () List!73780)

(assert (=> b!7820576 (isPrefix!6293 s1!4101 lt!2676431)))

(declare-fun lt!2676427 () Unit!168676)

(declare-fun s2!3721 () List!73780)

(assert (=> b!7820576 (= lt!2676427 (lemmaConcatTwoListThenFirstIsPrefix!3757 s1!4101 s2!3721))))

(declare-fun b!7820577 () Bool)

(declare-fun e!4627113 () Bool)

(declare-fun tp!2308068 () Bool)

(assert (=> b!7820577 (= e!4627113 (and tp_is_empty!52241 tp!2308068))))

(declare-fun b!7820578 () Bool)

(declare-fun e!4627118 () Bool)

(declare-fun tp!2308069 () Bool)

(declare-fun tp!2308074 () Bool)

(assert (=> b!7820578 (= e!4627118 (and tp!2308069 tp!2308074))))

(declare-fun b!7820579 () Bool)

(assert (=> b!7820579 (= e!4627116 tp_is_empty!52241)))

(declare-fun b!7820580 () Bool)

(declare-fun e!4627114 () Bool)

(assert (=> b!7820580 (= e!4627114 e!4627123)))

(declare-fun res!3112884 () Bool)

(assert (=> b!7820580 (=> (not res!3112884) (not e!4627123))))

(assert (=> b!7820580 (= res!3112884 (= lt!2676428 s!14274))))

(assert (=> b!7820580 (= lt!2676428 (++!17977 s1Rec!453 s2Rec!453))))

(declare-fun b!7820581 () Bool)

(declare-fun e!4627120 () Bool)

(declare-datatypes ((Regex!20943 0))(
  ( (ElementMatch!20943 (c!1439328 C!42212)) (Concat!29788 (regOne!42398 Regex!20943) (regTwo!42398 Regex!20943)) (EmptyExpr!20943) (Star!20943 (reg!21272 Regex!20943)) (EmptyLang!20943) (Union!20943 (regOne!42399 Regex!20943) (regTwo!42399 Regex!20943)) )
))
(declare-fun r2!6199 () Regex!20943)

(declare-fun matchR!10399 (Regex!20943 List!73780) Bool)

(assert (=> b!7820581 (= e!4627120 (not (matchR!10399 r2!6199 s2Rec!453)))))

(declare-fun b!7820582 () Bool)

(declare-fun e!4627115 () Bool)

(declare-fun tp!2308075 () Bool)

(assert (=> b!7820582 (= e!4627115 (and tp_is_empty!52241 tp!2308075))))

(declare-fun b!7820584 () Bool)

(declare-fun tp!2308070 () Bool)

(assert (=> b!7820584 (= e!4627118 tp!2308070)))

(declare-fun b!7820585 () Bool)

(declare-fun Unit!168679 () Unit!168676)

(assert (=> b!7820585 (= e!4627111 Unit!168679)))

(declare-fun b!7820586 () Bool)

(declare-fun tp!2308067 () Bool)

(declare-fun tp!2308073 () Bool)

(assert (=> b!7820586 (= e!4627116 (and tp!2308067 tp!2308073))))

(declare-fun b!7820587 () Bool)

(declare-fun res!3112892 () Bool)

(assert (=> b!7820587 (=> (not res!3112892) (not e!4627123))))

(declare-fun r1!6261 () Regex!20943)

(assert (=> b!7820587 (= res!3112892 (matchR!10399 r1!6261 s1!4101))))

(declare-fun b!7820588 () Bool)

(declare-fun tp!2308064 () Bool)

(assert (=> b!7820588 (= e!4627116 tp!2308064)))

(declare-fun b!7820589 () Bool)

(declare-fun Unit!168680 () Unit!168676)

(assert (=> b!7820589 (= e!4627112 Unit!168680)))

(declare-fun lt!2676432 () Unit!168676)

(declare-fun lemmaSamePrefixThenSameSuffix!2901 (List!73780 List!73780 List!73780 List!73780 List!73780) Unit!168676)

(assert (=> b!7820589 (= lt!2676432 (lemmaSamePrefixThenSameSuffix!2901 s1!4101 s2!3721 s1Rec!453 s2Rec!453 s!14274))))

(assert (=> b!7820589 false))

(declare-fun b!7820590 () Bool)

(declare-fun e!4627119 () Bool)

(declare-fun tp!2308065 () Bool)

(assert (=> b!7820590 (= e!4627119 (and tp_is_empty!52241 tp!2308065))))

(declare-fun b!7820591 () Bool)

(declare-fun res!3112890 () Bool)

(assert (=> b!7820591 (=> (not res!3112890) (not e!4627123))))

(assert (=> b!7820591 (= res!3112890 e!4627120)))

(declare-fun res!3112883 () Bool)

(assert (=> b!7820591 (=> res!3112883 e!4627120)))

(assert (=> b!7820591 (= res!3112883 (not (matchR!10399 r1!6261 s1Rec!453)))))

(declare-fun b!7820592 () Bool)

(declare-fun res!3112885 () Bool)

(declare-fun e!4627122 () Bool)

(assert (=> b!7820592 (=> (not res!3112885) (not e!4627122))))

(declare-fun validRegex!11357 (Regex!20943) Bool)

(assert (=> b!7820592 (= res!3112885 (validRegex!11357 r2!6199))))

(declare-fun b!7820593 () Bool)

(declare-fun res!3112886 () Bool)

(assert (=> b!7820593 (=> (not res!3112886) (not e!4627114))))

(assert (=> b!7820593 (= res!3112886 (isPrefix!6293 s1Rec!453 s1!4101))))

(declare-fun b!7820594 () Bool)

(assert (=> b!7820594 (= e!4627118 tp_is_empty!52241)))

(declare-fun b!7820595 () Bool)

(declare-fun e!4627117 () Bool)

(declare-fun tp!2308072 () Bool)

(assert (=> b!7820595 (= e!4627117 (and tp_is_empty!52241 tp!2308072))))

(declare-fun b!7820596 () Bool)

(declare-fun Unit!168681 () Unit!168676)

(assert (=> b!7820596 (= e!4627111 Unit!168681)))

(declare-fun lt!2676426 () Unit!168676)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1543 (List!73780 List!73780 List!73780) Unit!168676)

(assert (=> b!7820596 (= lt!2676426 (lemmaIsPrefixSameLengthThenSameList!1543 s1!4101 s1Rec!453 s!14274))))

(assert (=> b!7820596 false))

(declare-fun b!7820597 () Bool)

(declare-fun res!3112889 () Bool)

(assert (=> b!7820597 (=> (not res!3112889) (not e!4627123))))

(assert (=> b!7820597 (= res!3112889 (matchR!10399 r2!6199 s2!3721))))

(declare-fun b!7820598 () Bool)

(declare-fun res!3112891 () Bool)

(assert (=> b!7820598 (=> (not res!3112891) (not e!4627123))))

(get-info :version)

(assert (=> b!7820598 (= res!3112891 (not ((_ is Nil!73656) s2Rec!453)))))

(declare-fun b!7820599 () Bool)

(assert (=> b!7820599 (= e!4627122 e!4627114)))

(declare-fun res!3112887 () Bool)

(assert (=> b!7820599 (=> (not res!3112887) (not e!4627114))))

(assert (=> b!7820599 (= res!3112887 (= lt!2676431 s!14274))))

(assert (=> b!7820599 (= lt!2676431 (++!17977 s1!4101 s2!3721))))

(declare-fun res!3112888 () Bool)

(assert (=> start!741982 (=> (not res!3112888) (not e!4627122))))

(assert (=> start!741982 (= res!3112888 (validRegex!11357 r1!6261))))

(assert (=> start!741982 e!4627122))

(assert (=> start!741982 e!4627116))

(assert (=> start!741982 e!4627121))

(assert (=> start!741982 e!4627119))

(assert (=> start!741982 e!4627115))

(assert (=> start!741982 e!4627117))

(assert (=> start!741982 e!4627118))

(assert (=> start!741982 e!4627113))

(declare-fun b!7820583 () Bool)

(declare-fun tp!2308066 () Bool)

(declare-fun tp!2308077 () Bool)

(assert (=> b!7820583 (= e!4627118 (and tp!2308066 tp!2308077))))

(assert (= (and start!741982 res!3112888) b!7820592))

(assert (= (and b!7820592 res!3112885) b!7820599))

(assert (= (and b!7820599 res!3112887) b!7820593))

(assert (= (and b!7820593 res!3112886) b!7820580))

(assert (= (and b!7820580 res!3112884) b!7820587))

(assert (= (and b!7820587 res!3112892) b!7820597))

(assert (= (and b!7820597 res!3112889) b!7820591))

(assert (= (and b!7820591 (not res!3112883)) b!7820581))

(assert (= (and b!7820591 res!3112890) b!7820598))

(assert (= (and b!7820598 res!3112891) b!7820576))

(assert (= (and b!7820576 c!1439327) b!7820589))

(assert (= (and b!7820576 (not c!1439327)) b!7820574))

(assert (= (and b!7820576 c!1439326) b!7820596))

(assert (= (and b!7820576 (not c!1439326)) b!7820585))

(assert (= (and start!741982 ((_ is ElementMatch!20943) r2!6199)) b!7820579))

(assert (= (and start!741982 ((_ is Concat!29788) r2!6199)) b!7820573))

(assert (= (and start!741982 ((_ is Star!20943) r2!6199)) b!7820588))

(assert (= (and start!741982 ((_ is Union!20943) r2!6199)) b!7820586))

(assert (= (and start!741982 ((_ is Cons!73656) s1!4101)) b!7820575))

(assert (= (and start!741982 ((_ is Cons!73656) s2!3721)) b!7820590))

(assert (= (and start!741982 ((_ is Cons!73656) s2Rec!453)) b!7820582))

(assert (= (and start!741982 ((_ is Cons!73656) s!14274)) b!7820595))

(assert (= (and start!741982 ((_ is ElementMatch!20943) r1!6261)) b!7820594))

(assert (= (and start!741982 ((_ is Concat!29788) r1!6261)) b!7820583))

(assert (= (and start!741982 ((_ is Star!20943) r1!6261)) b!7820584))

(assert (= (and start!741982 ((_ is Union!20943) r1!6261)) b!7820578))

(assert (= (and start!741982 ((_ is Cons!73656) s1Rec!453)) b!7820577))

(declare-fun m!8244978 () Bool)

(assert (=> b!7820580 m!8244978))

(declare-fun m!8244980 () Bool)

(assert (=> start!741982 m!8244980))

(declare-fun m!8244982 () Bool)

(assert (=> b!7820596 m!8244982))

(declare-fun m!8244984 () Bool)

(assert (=> b!7820599 m!8244984))

(declare-fun m!8244986 () Bool)

(assert (=> b!7820592 m!8244986))

(declare-fun m!8244988 () Bool)

(assert (=> b!7820587 m!8244988))

(declare-fun m!8244990 () Bool)

(assert (=> b!7820589 m!8244990))

(declare-fun m!8244992 () Bool)

(assert (=> b!7820591 m!8244992))

(declare-fun m!8244994 () Bool)

(assert (=> b!7820597 m!8244994))

(declare-fun m!8244996 () Bool)

(assert (=> b!7820581 m!8244996))

(declare-fun m!8244998 () Bool)

(assert (=> b!7820576 m!8244998))

(declare-fun m!8245000 () Bool)

(assert (=> b!7820576 m!8245000))

(declare-fun m!8245002 () Bool)

(assert (=> b!7820576 m!8245002))

(declare-fun m!8245004 () Bool)

(assert (=> b!7820576 m!8245004))

(declare-fun m!8245006 () Bool)

(assert (=> b!7820576 m!8245006))

(declare-fun m!8245008 () Bool)

(assert (=> b!7820576 m!8245008))

(declare-fun m!8245010 () Bool)

(assert (=> b!7820576 m!8245010))

(declare-fun m!8245012 () Bool)

(assert (=> b!7820576 m!8245012))

(declare-fun m!8245014 () Bool)

(assert (=> b!7820576 m!8245014))

(declare-fun m!8245016 () Bool)

(assert (=> b!7820576 m!8245016))

(declare-fun m!8245018 () Bool)

(assert (=> b!7820576 m!8245018))

(declare-fun m!8245020 () Bool)

(assert (=> b!7820576 m!8245020))

(declare-fun m!8245022 () Bool)

(assert (=> b!7820576 m!8245022))

(declare-fun m!8245024 () Bool)

(assert (=> b!7820593 m!8245024))

(check-sat (not b!7820580) (not b!7820584) (not b!7820590) (not b!7820595) (not b!7820599) (not b!7820577) (not b!7820582) (not b!7820591) (not b!7820596) (not b!7820592) tp_is_empty!52241 (not b!7820597) (not b!7820578) (not b!7820586) (not b!7820573) (not b!7820581) (not b!7820587) (not b!7820576) (not b!7820593) (not b!7820583) (not b!7820575) (not start!741982) (not b!7820588) (not b!7820589))
(check-sat)
