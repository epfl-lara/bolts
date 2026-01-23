; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!741986 () Bool)

(assert start!741986)

(declare-fun b!7820735 () Bool)

(declare-fun e!4627194 () Bool)

(declare-fun tp_is_empty!52245 () Bool)

(assert (=> b!7820735 (= e!4627194 tp_is_empty!52245)))

(declare-fun b!7820736 () Bool)

(declare-fun e!4627196 () Bool)

(assert (=> b!7820736 (= e!4627196 tp_is_empty!52245)))

(declare-fun b!7820737 () Bool)

(declare-datatypes ((Unit!168688 0))(
  ( (Unit!168689) )
))
(declare-fun e!4627193 () Unit!168688)

(declare-fun Unit!168690 () Unit!168688)

(assert (=> b!7820737 (= e!4627193 Unit!168690)))

(declare-fun b!7820739 () Bool)

(declare-fun res!3112949 () Bool)

(declare-fun e!4627198 () Bool)

(assert (=> b!7820739 (=> (not res!3112949) (not e!4627198))))

(declare-datatypes ((C!42216 0))(
  ( (C!42217 (val!31548 Int)) )
))
(declare-datatypes ((List!73782 0))(
  ( (Nil!73658) (Cons!73658 (h!80106 C!42216) (t!388517 List!73782)) )
))
(declare-fun s2Rec!453 () List!73782)

(get-info :version)

(assert (=> b!7820739 (= res!3112949 (not ((_ is Nil!73658) s2Rec!453)))))

(declare-fun b!7820740 () Bool)

(declare-fun Unit!168691 () Unit!168688)

(assert (=> b!7820740 (= e!4627193 Unit!168691)))

(declare-fun s1!4101 () List!73782)

(declare-fun s!14274 () List!73782)

(declare-fun s1Rec!453 () List!73782)

(declare-fun lt!2676517 () Unit!168688)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1545 (List!73782 List!73782 List!73782) Unit!168688)

(assert (=> b!7820740 (= lt!2676517 (lemmaIsPrefixSameLengthThenSameList!1545 s1!4101 s1Rec!453 s!14274))))

(assert (=> b!7820740 false))

(declare-fun b!7820741 () Bool)

(declare-fun tp!2308153 () Bool)

(assert (=> b!7820741 (= e!4627194 tp!2308153)))

(declare-fun b!7820742 () Bool)

(declare-fun e!4627201 () Bool)

(declare-fun tp!2308158 () Bool)

(assert (=> b!7820742 (= e!4627201 (and tp_is_empty!52245 tp!2308158))))

(declare-fun b!7820743 () Bool)

(declare-fun res!3112945 () Bool)

(assert (=> b!7820743 (=> (not res!3112945) (not e!4627198))))

(declare-datatypes ((Regex!20945 0))(
  ( (ElementMatch!20945 (c!1439342 C!42216)) (Concat!29790 (regOne!42402 Regex!20945) (regTwo!42402 Regex!20945)) (EmptyExpr!20945) (Star!20945 (reg!21274 Regex!20945)) (EmptyLang!20945) (Union!20945 (regOne!42403 Regex!20945) (regTwo!42403 Regex!20945)) )
))
(declare-fun r1!6261 () Regex!20945)

(declare-fun matchR!10401 (Regex!20945 List!73782) Bool)

(assert (=> b!7820743 (= res!3112945 (matchR!10401 r1!6261 s1!4101))))

(declare-fun b!7820744 () Bool)

(declare-fun tp!2308163 () Bool)

(declare-fun tp!2308165 () Bool)

(assert (=> b!7820744 (= e!4627194 (and tp!2308163 tp!2308165))))

(declare-fun b!7820745 () Bool)

(declare-fun e!4627191 () Bool)

(declare-fun tp!2308166 () Bool)

(assert (=> b!7820745 (= e!4627191 (and tp_is_empty!52245 tp!2308166))))

(declare-fun b!7820746 () Bool)

(declare-fun tp!2308157 () Bool)

(declare-fun tp!2308154 () Bool)

(assert (=> b!7820746 (= e!4627194 (and tp!2308157 tp!2308154))))

(declare-fun b!7820747 () Bool)

(declare-fun e!4627195 () Unit!168688)

(declare-fun Unit!168692 () Unit!168688)

(assert (=> b!7820747 (= e!4627195 Unit!168692)))

(declare-fun s2!3721 () List!73782)

(declare-fun lt!2676521 () Unit!168688)

(declare-fun lemmaSamePrefixThenSameSuffix!2903 (List!73782 List!73782 List!73782 List!73782 List!73782) Unit!168688)

(assert (=> b!7820747 (= lt!2676521 (lemmaSamePrefixThenSameSuffix!2903 s1!4101 s2!3721 s1Rec!453 s2Rec!453 s!14274))))

(assert (=> b!7820747 false))

(declare-fun b!7820738 () Bool)

(declare-fun Unit!168693 () Unit!168688)

(assert (=> b!7820738 (= e!4627195 Unit!168693)))

(declare-fun res!3112947 () Bool)

(declare-fun e!4627197 () Bool)

(assert (=> start!741986 (=> (not res!3112947) (not e!4627197))))

(declare-fun validRegex!11359 (Regex!20945) Bool)

(assert (=> start!741986 (= res!3112947 (validRegex!11359 r1!6261))))

(assert (=> start!741986 e!4627197))

(assert (=> start!741986 e!4627196))

(assert (=> start!741986 e!4627201))

(assert (=> start!741986 e!4627191))

(declare-fun e!4627199 () Bool)

(assert (=> start!741986 e!4627199))

(declare-fun e!4627192 () Bool)

(assert (=> start!741986 e!4627192))

(assert (=> start!741986 e!4627194))

(declare-fun e!4627189 () Bool)

(assert (=> start!741986 e!4627189))

(declare-fun b!7820748 () Bool)

(declare-fun tp!2308167 () Bool)

(assert (=> b!7820748 (= e!4627196 tp!2308167)))

(declare-fun b!7820749 () Bool)

(declare-fun tp!2308159 () Bool)

(assert (=> b!7820749 (= e!4627189 (and tp_is_empty!52245 tp!2308159))))

(declare-fun b!7820750 () Bool)

(declare-fun tp!2308155 () Bool)

(assert (=> b!7820750 (= e!4627192 (and tp_is_empty!52245 tp!2308155))))

(declare-fun b!7820751 () Bool)

(declare-fun tp!2308162 () Bool)

(assert (=> b!7820751 (= e!4627199 (and tp_is_empty!52245 tp!2308162))))

(declare-fun b!7820752 () Bool)

(declare-fun res!3112948 () Bool)

(assert (=> b!7820752 (=> (not res!3112948) (not e!4627197))))

(declare-fun r2!6199 () Regex!20945)

(assert (=> b!7820752 (= res!3112948 (validRegex!11359 r2!6199))))

(declare-fun b!7820753 () Bool)

(declare-fun res!3112951 () Bool)

(assert (=> b!7820753 (=> (not res!3112951) (not e!4627198))))

(declare-fun e!4627190 () Bool)

(assert (=> b!7820753 (= res!3112951 e!4627190)))

(declare-fun res!3112944 () Bool)

(assert (=> b!7820753 (=> res!3112944 e!4627190)))

(assert (=> b!7820753 (= res!3112944 (not (matchR!10401 r1!6261 s1Rec!453)))))

(declare-fun b!7820754 () Bool)

(declare-fun res!3112943 () Bool)

(declare-fun e!4627200 () Bool)

(assert (=> b!7820754 (=> (not res!3112943) (not e!4627200))))

(declare-fun isPrefix!6295 (List!73782 List!73782) Bool)

(assert (=> b!7820754 (= res!3112943 (isPrefix!6295 s1Rec!453 s1!4101))))

(declare-fun b!7820755 () Bool)

(assert (=> b!7820755 (= e!4627200 e!4627198)))

(declare-fun res!3112952 () Bool)

(assert (=> b!7820755 (=> (not res!3112952) (not e!4627198))))

(declare-fun lt!2676512 () List!73782)

(assert (=> b!7820755 (= res!3112952 (= lt!2676512 s!14274))))

(declare-fun ++!17979 (List!73782 List!73782) List!73782)

(assert (=> b!7820755 (= lt!2676512 (++!17979 s1Rec!453 s2Rec!453))))

(declare-fun b!7820756 () Bool)

(declare-fun tp!2308156 () Bool)

(declare-fun tp!2308161 () Bool)

(assert (=> b!7820756 (= e!4627196 (and tp!2308156 tp!2308161))))

(declare-fun b!7820757 () Bool)

(assert (=> b!7820757 (= e!4627198 (not true))))

(declare-fun lt!2676519 () List!73782)

(declare-datatypes ((tuple2!69980 0))(
  ( (tuple2!69981 (_1!38293 List!73782) (_2!38293 List!73782)) )
))
(declare-datatypes ((Option!17784 0))(
  ( (None!17783) (Some!17783 (v!54918 tuple2!69980)) )
))
(declare-fun isDefined!14392 (Option!17784) Bool)

(declare-fun findConcatSeparation!3814 (Regex!20945 Regex!20945 List!73782 List!73782 List!73782) Option!17784)

(assert (=> b!7820757 (isDefined!14392 (findConcatSeparation!3814 r1!6261 r2!6199 lt!2676519 (t!388517 s2Rec!453) s!14274))))

(declare-fun lt!2676518 () Unit!168688)

(declare-fun lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!134 (Regex!20945 Regex!20945 List!73782 List!73782 List!73782 List!73782 List!73782) Unit!168688)

(assert (=> b!7820757 (= lt!2676518 (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!134 r1!6261 r2!6199 s1!4101 s2!3721 s!14274 lt!2676519 (t!388517 s2Rec!453)))))

(assert (=> b!7820757 (isPrefix!6295 lt!2676519 s1!4101)))

(declare-fun lt!2676516 () Unit!168688)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!943 (List!73782 List!73782 List!73782) Unit!168688)

(assert (=> b!7820757 (= lt!2676516 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!943 s1!4101 lt!2676519 s!14274))))

(declare-fun lt!2676520 () Unit!168688)

(assert (=> b!7820757 (= lt!2676520 e!4627193)))

(declare-fun c!1439340 () Bool)

(declare-fun size!42747 (List!73782) Int)

(assert (=> b!7820757 (= c!1439340 (= (size!42747 s1Rec!453) (size!42747 s1!4101)))))

(declare-fun lt!2676510 () List!73782)

(assert (=> b!7820757 (isPrefix!6295 lt!2676519 lt!2676510)))

(declare-fun lt!2676522 () Unit!168688)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3759 (List!73782 List!73782) Unit!168688)

(assert (=> b!7820757 (= lt!2676522 (lemmaConcatTwoListThenFirstIsPrefix!3759 lt!2676519 (t!388517 s2Rec!453)))))

(assert (=> b!7820757 (= lt!2676510 s!14274)))

(assert (=> b!7820757 (= lt!2676510 (++!17979 lt!2676519 (t!388517 s2Rec!453)))))

(assert (=> b!7820757 (= lt!2676519 (++!17979 s1Rec!453 (Cons!73658 (h!80106 s2Rec!453) Nil!73658)))))

(declare-fun lt!2676511 () Unit!168688)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3432 (List!73782 C!42216 List!73782 List!73782) Unit!168688)

(assert (=> b!7820757 (= lt!2676511 (lemmaMoveElementToOtherListKeepsConcatEq!3432 s1Rec!453 (h!80106 s2Rec!453) (t!388517 s2Rec!453) s!14274))))

(declare-fun lt!2676509 () Unit!168688)

(assert (=> b!7820757 (= lt!2676509 e!4627195)))

(declare-fun c!1439341 () Bool)

(assert (=> b!7820757 (= c!1439341 (= s1Rec!453 s1!4101))))

(assert (=> b!7820757 (isPrefix!6295 s1Rec!453 lt!2676512)))

(declare-fun lt!2676513 () Unit!168688)

(assert (=> b!7820757 (= lt!2676513 (lemmaConcatTwoListThenFirstIsPrefix!3759 s1Rec!453 s2Rec!453))))

(declare-fun lt!2676515 () List!73782)

(assert (=> b!7820757 (isPrefix!6295 s1!4101 lt!2676515)))

(declare-fun lt!2676514 () Unit!168688)

(assert (=> b!7820757 (= lt!2676514 (lemmaConcatTwoListThenFirstIsPrefix!3759 s1!4101 s2!3721))))

(declare-fun b!7820758 () Bool)

(assert (=> b!7820758 (= e!4627197 e!4627200)))

(declare-fun res!3112946 () Bool)

(assert (=> b!7820758 (=> (not res!3112946) (not e!4627200))))

(assert (=> b!7820758 (= res!3112946 (= lt!2676515 s!14274))))

(assert (=> b!7820758 (= lt!2676515 (++!17979 s1!4101 s2!3721))))

(declare-fun b!7820759 () Bool)

(declare-fun res!3112950 () Bool)

(assert (=> b!7820759 (=> (not res!3112950) (not e!4627198))))

(assert (=> b!7820759 (= res!3112950 (matchR!10401 r2!6199 s2!3721))))

(declare-fun b!7820760 () Bool)

(declare-fun tp!2308160 () Bool)

(declare-fun tp!2308164 () Bool)

(assert (=> b!7820760 (= e!4627196 (and tp!2308160 tp!2308164))))

(declare-fun b!7820761 () Bool)

(assert (=> b!7820761 (= e!4627190 (not (matchR!10401 r2!6199 s2Rec!453)))))

(assert (= (and start!741986 res!3112947) b!7820752))

(assert (= (and b!7820752 res!3112948) b!7820758))

(assert (= (and b!7820758 res!3112946) b!7820754))

(assert (= (and b!7820754 res!3112943) b!7820755))

(assert (= (and b!7820755 res!3112952) b!7820743))

(assert (= (and b!7820743 res!3112945) b!7820759))

(assert (= (and b!7820759 res!3112950) b!7820753))

(assert (= (and b!7820753 (not res!3112944)) b!7820761))

(assert (= (and b!7820753 res!3112951) b!7820739))

(assert (= (and b!7820739 res!3112949) b!7820757))

(assert (= (and b!7820757 c!1439341) b!7820747))

(assert (= (and b!7820757 (not c!1439341)) b!7820738))

(assert (= (and b!7820757 c!1439340) b!7820740))

(assert (= (and b!7820757 (not c!1439340)) b!7820737))

(assert (= (and start!741986 ((_ is ElementMatch!20945) r2!6199)) b!7820736))

(assert (= (and start!741986 ((_ is Concat!29790) r2!6199)) b!7820756))

(assert (= (and start!741986 ((_ is Star!20945) r2!6199)) b!7820748))

(assert (= (and start!741986 ((_ is Union!20945) r2!6199)) b!7820760))

(assert (= (and start!741986 ((_ is Cons!73658) s1!4101)) b!7820742))

(assert (= (and start!741986 ((_ is Cons!73658) s2!3721)) b!7820745))

(assert (= (and start!741986 ((_ is Cons!73658) s2Rec!453)) b!7820751))

(assert (= (and start!741986 ((_ is Cons!73658) s!14274)) b!7820750))

(assert (= (and start!741986 ((_ is ElementMatch!20945) r1!6261)) b!7820735))

(assert (= (and start!741986 ((_ is Concat!29790) r1!6261)) b!7820744))

(assert (= (and start!741986 ((_ is Star!20945) r1!6261)) b!7820741))

(assert (= (and start!741986 ((_ is Union!20945) r1!6261)) b!7820746))

(assert (= (and start!741986 ((_ is Cons!73658) s1Rec!453)) b!7820749))

(declare-fun m!8245080 () Bool)

(assert (=> b!7820755 m!8245080))

(declare-fun m!8245082 () Bool)

(assert (=> start!741986 m!8245082))

(declare-fun m!8245084 () Bool)

(assert (=> b!7820740 m!8245084))

(declare-fun m!8245086 () Bool)

(assert (=> b!7820754 m!8245086))

(declare-fun m!8245088 () Bool)

(assert (=> b!7820757 m!8245088))

(declare-fun m!8245090 () Bool)

(assert (=> b!7820757 m!8245090))

(declare-fun m!8245092 () Bool)

(assert (=> b!7820757 m!8245092))

(declare-fun m!8245094 () Bool)

(assert (=> b!7820757 m!8245094))

(declare-fun m!8245096 () Bool)

(assert (=> b!7820757 m!8245096))

(declare-fun m!8245098 () Bool)

(assert (=> b!7820757 m!8245098))

(declare-fun m!8245100 () Bool)

(assert (=> b!7820757 m!8245100))

(declare-fun m!8245102 () Bool)

(assert (=> b!7820757 m!8245102))

(declare-fun m!8245104 () Bool)

(assert (=> b!7820757 m!8245104))

(declare-fun m!8245106 () Bool)

(assert (=> b!7820757 m!8245106))

(assert (=> b!7820757 m!8245092))

(declare-fun m!8245108 () Bool)

(assert (=> b!7820757 m!8245108))

(declare-fun m!8245110 () Bool)

(assert (=> b!7820757 m!8245110))

(declare-fun m!8245112 () Bool)

(assert (=> b!7820757 m!8245112))

(declare-fun m!8245114 () Bool)

(assert (=> b!7820757 m!8245114))

(declare-fun m!8245116 () Bool)

(assert (=> b!7820757 m!8245116))

(declare-fun m!8245118 () Bool)

(assert (=> b!7820757 m!8245118))

(declare-fun m!8245120 () Bool)

(assert (=> b!7820747 m!8245120))

(declare-fun m!8245122 () Bool)

(assert (=> b!7820753 m!8245122))

(declare-fun m!8245124 () Bool)

(assert (=> b!7820758 m!8245124))

(declare-fun m!8245126 () Bool)

(assert (=> b!7820761 m!8245126))

(declare-fun m!8245128 () Bool)

(assert (=> b!7820759 m!8245128))

(declare-fun m!8245130 () Bool)

(assert (=> b!7820752 m!8245130))

(declare-fun m!8245132 () Bool)

(assert (=> b!7820743 m!8245132))

(check-sat (not b!7820760) (not b!7820748) (not b!7820754) (not b!7820761) (not b!7820756) (not b!7820744) (not b!7820755) (not b!7820743) (not b!7820747) (not b!7820758) tp_is_empty!52245 (not b!7820742) (not b!7820745) (not b!7820751) (not b!7820753) (not b!7820750) (not start!741986) (not b!7820757) (not b!7820759) (not b!7820752) (not b!7820740) (not b!7820741) (not b!7820749) (not b!7820746))
(check-sat)
