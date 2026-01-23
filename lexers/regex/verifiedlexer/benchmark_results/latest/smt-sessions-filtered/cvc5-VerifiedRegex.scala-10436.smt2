; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!539350 () Bool)

(assert start!539350)

(declare-fun e!3188945 () Bool)

(declare-fun tp!1426620 () Bool)

(declare-datatypes ((C!28590 0))(
  ( (C!28591 (val!23947 Int)) )
))
(declare-datatypes ((Regex!14162 0))(
  ( (ElementMatch!14162 (c!878472 C!28590)) (Concat!23007 (regOne!28836 Regex!14162) (regTwo!28836 Regex!14162)) (EmptyExpr!14162) (Star!14162 (reg!14491 Regex!14162)) (EmptyLang!14162) (Union!14162 (regOne!28837 Regex!14162) (regTwo!28837 Regex!14162)) )
))
(declare-datatypes ((List!59215 0))(
  ( (Nil!59091) (Cons!59091 (h!65539 Regex!14162) (t!372216 List!59215)) )
))
(declare-datatypes ((Context!7092 0))(
  ( (Context!7093 (exprs!4046 List!59215)) )
))
(declare-fun setElem!29896 () Context!7092)

(declare-fun setNonEmpty!29895 () Bool)

(declare-fun setRes!29895 () Bool)

(declare-fun inv!78587 (Context!7092) Bool)

(assert (=> setNonEmpty!29895 (= setRes!29895 (and tp!1426620 (inv!78587 setElem!29896) e!3188945))))

(declare-fun baseZ!46 () (Set Context!7092))

(declare-fun setRest!29895 () (Set Context!7092))

(assert (=> setNonEmpty!29895 (= baseZ!46 (set.union (set.insert setElem!29896 (as set.empty (Set Context!7092))) setRest!29895))))

(declare-fun b!5113036 () Bool)

(declare-fun res!2176487 () Bool)

(declare-fun e!3188938 () Bool)

(assert (=> b!5113036 (=> res!2176487 e!3188938)))

(declare-datatypes ((List!59216 0))(
  ( (Nil!59092) (Cons!59092 (h!65540 C!28590) (t!372217 List!59216)) )
))
(declare-fun input!5745 () List!59216)

(declare-fun testedP!265 () List!59216)

(declare-fun lt!2106093 () List!59216)

(declare-fun ++!12987 (List!59216 List!59216) List!59216)

(assert (=> b!5113036 (= res!2176487 (not (= (++!12987 testedP!265 lt!2106093) input!5745)))))

(declare-fun b!5113037 () Bool)

(declare-fun e!3188947 () Bool)

(declare-fun e!3188940 () Bool)

(assert (=> b!5113037 (= e!3188947 e!3188940)))

(declare-fun res!2176484 () Bool)

(assert (=> b!5113037 (=> res!2176484 e!3188940)))

(declare-fun lt!2106088 () List!59216)

(declare-fun knownP!20 () List!59216)

(assert (=> b!5113037 (= res!2176484 (not (= (++!12987 knownP!20 lt!2106088) input!5745)))))

(declare-fun getSuffix!3241 (List!59216 List!59216) List!59216)

(assert (=> b!5113037 (= lt!2106088 (getSuffix!3241 input!5745 knownP!20))))

(declare-fun lt!2106098 () List!59216)

(declare-fun lt!2106103 () List!59216)

(assert (=> b!5113037 (= lt!2106098 (getSuffix!3241 knownP!20 lt!2106103))))

(declare-fun isPrefix!5567 (List!59216 List!59216) Bool)

(assert (=> b!5113037 (isPrefix!5567 lt!2106103 knownP!20)))

(declare-datatypes ((Unit!150203 0))(
  ( (Unit!150204) )
))
(declare-fun lt!2106096 () Unit!150203)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!704 (List!59216 List!59216 List!59216) Unit!150203)

(assert (=> b!5113037 (= lt!2106096 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!704 knownP!20 lt!2106103 input!5745))))

(declare-fun lt!2106100 () C!28590)

(declare-fun z!4463 () (Set Context!7092))

(declare-fun derivationZipper!61 ((Set Context!7092) List!59216) (Set Context!7092))

(declare-fun derivationStepZipper!797 ((Set Context!7092) C!28590) (Set Context!7092))

(assert (=> b!5113037 (= (derivationZipper!61 baseZ!46 lt!2106103) (derivationStepZipper!797 z!4463 lt!2106100))))

(declare-fun lt!2106087 () Unit!150203)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!22 ((Set Context!7092) (Set Context!7092) List!59216 C!28590) Unit!150203)

(assert (=> b!5113037 (= lt!2106087 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!22 baseZ!46 z!4463 testedP!265 lt!2106100))))

(assert (=> b!5113037 (isPrefix!5567 lt!2106103 input!5745)))

(declare-fun lt!2106097 () Unit!150203)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!957 (List!59216 List!59216) Unit!150203)

(assert (=> b!5113037 (= lt!2106097 (lemmaAddHeadSuffixToPrefixStillPrefix!957 testedP!265 input!5745))))

(assert (=> b!5113037 (= lt!2106103 (++!12987 testedP!265 (Cons!59092 lt!2106100 Nil!59092)))))

(declare-fun head!10890 (List!59216) C!28590)

(assert (=> b!5113037 (= lt!2106100 (head!10890 lt!2106093))))

(assert (=> b!5113037 (= lt!2106093 (getSuffix!3241 input!5745 testedP!265))))

(declare-fun b!5113038 () Bool)

(declare-fun e!3188937 () Bool)

(assert (=> b!5113038 (= e!3188937 (not e!3188947))))

(declare-fun res!2176480 () Bool)

(assert (=> b!5113038 (=> res!2176480 e!3188947)))

(declare-fun lt!2106095 () List!59216)

(declare-fun matchZipper!830 ((Set Context!7092) List!59216) Bool)

(assert (=> b!5113038 (= res!2176480 (not (matchZipper!830 z!4463 lt!2106095)))))

(assert (=> b!5113038 (= lt!2106095 (getSuffix!3241 knownP!20 testedP!265))))

(assert (=> b!5113038 (isPrefix!5567 testedP!265 knownP!20)))

(declare-fun lt!2106102 () Unit!150203)

(assert (=> b!5113038 (= lt!2106102 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!704 knownP!20 testedP!265 input!5745))))

(declare-fun b!5113039 () Bool)

(declare-fun res!2176482 () Bool)

(assert (=> b!5113039 (=> res!2176482 e!3188947)))

(declare-fun lt!2106091 () Int)

(declare-fun size!39468 (List!59216) Int)

(assert (=> b!5113039 (= res!2176482 (>= lt!2106091 (size!39468 input!5745)))))

(declare-fun b!5113040 () Bool)

(assert (=> b!5113040 (= e!3188940 e!3188938)))

(declare-fun res!2176481 () Bool)

(assert (=> b!5113040 (=> res!2176481 e!3188938)))

(declare-fun lt!2106092 () List!59216)

(assert (=> b!5113040 (= res!2176481 (not (= lt!2106092 input!5745)))))

(assert (=> b!5113040 (= lt!2106092 (++!12987 (++!12987 testedP!265 lt!2106095) lt!2106088))))

(declare-fun b!5113041 () Bool)

(declare-fun e!3188946 () Bool)

(declare-fun tp_is_empty!37597 () Bool)

(declare-fun tp!1426618 () Bool)

(assert (=> b!5113041 (= e!3188946 (and tp_is_empty!37597 tp!1426618))))

(declare-fun b!5113042 () Bool)

(declare-fun e!3188942 () Bool)

(assert (=> b!5113042 (= e!3188942 (not (= lt!2106095 Nil!59092)))))

(declare-fun b!5113043 () Bool)

(declare-fun tp!1426619 () Bool)

(assert (=> b!5113043 (= e!3188945 tp!1426619)))

(declare-fun b!5113044 () Bool)

(declare-fun e!3188943 () Bool)

(declare-fun tp!1426617 () Bool)

(assert (=> b!5113044 (= e!3188943 tp!1426617)))

(declare-fun b!5113045 () Bool)

(declare-fun res!2176489 () Bool)

(assert (=> b!5113045 (=> res!2176489 e!3188947)))

(assert (=> b!5113045 (= res!2176489 (not (= (derivationZipper!61 baseZ!46 testedP!265) z!4463)))))

(declare-fun b!5113046 () Bool)

(declare-fun e!3188944 () Bool)

(declare-fun tp!1426614 () Bool)

(assert (=> b!5113046 (= e!3188944 (and tp_is_empty!37597 tp!1426614))))

(declare-fun b!5113047 () Bool)

(declare-fun res!2176486 () Bool)

(assert (=> b!5113047 (=> (not res!2176486) (not e!3188937))))

(assert (=> b!5113047 (= res!2176486 (matchZipper!830 baseZ!46 knownP!20))))

(declare-fun setIsEmpty!29895 () Bool)

(declare-fun setRes!29896 () Bool)

(assert (=> setIsEmpty!29895 setRes!29896))

(declare-fun b!5113048 () Bool)

(declare-fun e!3188941 () Bool)

(declare-fun tp!1426615 () Bool)

(assert (=> b!5113048 (= e!3188941 (and tp_is_empty!37597 tp!1426615))))

(declare-fun b!5113049 () Bool)

(declare-fun e!3188939 () Bool)

(assert (=> b!5113049 (= e!3188939 e!3188937)))

(declare-fun res!2176485 () Bool)

(assert (=> b!5113049 (=> (not res!2176485) (not e!3188937))))

(declare-fun lt!2106089 () Int)

(assert (=> b!5113049 (= res!2176485 (>= lt!2106089 lt!2106091))))

(assert (=> b!5113049 (= lt!2106091 (size!39468 testedP!265))))

(assert (=> b!5113049 (= lt!2106089 (size!39468 knownP!20))))

(declare-fun setElem!29895 () Context!7092)

(declare-fun setNonEmpty!29896 () Bool)

(declare-fun tp!1426616 () Bool)

(assert (=> setNonEmpty!29896 (= setRes!29896 (and tp!1426616 (inv!78587 setElem!29895) e!3188943))))

(declare-fun setRest!29896 () (Set Context!7092))

(assert (=> setNonEmpty!29896 (= z!4463 (set.union (set.insert setElem!29895 (as set.empty (Set Context!7092))) setRest!29896))))

(declare-fun b!5113050 () Bool)

(declare-fun res!2176483 () Bool)

(assert (=> b!5113050 (=> res!2176483 e!3188947)))

(declare-fun lostCauseZipper!1048 ((Set Context!7092)) Bool)

(assert (=> b!5113050 (= res!2176483 (lostCauseZipper!1048 z!4463))))

(declare-fun b!5113051 () Bool)

(declare-fun e!3188936 () Bool)

(assert (=> b!5113051 (= e!3188936 e!3188942)))

(declare-fun res!2176492 () Bool)

(assert (=> b!5113051 (=> res!2176492 e!3188942)))

(assert (=> b!5113051 (= res!2176492 (not (= (head!10890 lt!2106095) lt!2106100)))))

(declare-fun lt!2106101 () List!59216)

(assert (=> b!5113051 (= lt!2106101 lt!2106093)))

(declare-fun lt!2106090 () Unit!150203)

(declare-fun lemmaSamePrefixThenSameSuffix!2613 (List!59216 List!59216 List!59216 List!59216 List!59216) Unit!150203)

(assert (=> b!5113051 (= lt!2106090 (lemmaSamePrefixThenSameSuffix!2613 testedP!265 lt!2106101 testedP!265 lt!2106093 input!5745))))

(declare-fun res!2176488 () Bool)

(assert (=> start!539350 (=> (not res!2176488) (not e!3188939))))

(assert (=> start!539350 (= res!2176488 (isPrefix!5567 testedP!265 input!5745))))

(assert (=> start!539350 e!3188939))

(assert (=> start!539350 e!3188944))

(declare-fun condSetEmpty!29895 () Bool)

(assert (=> start!539350 (= condSetEmpty!29895 (= z!4463 (as set.empty (Set Context!7092))))))

(assert (=> start!539350 setRes!29896))

(assert (=> start!539350 e!3188941))

(declare-fun condSetEmpty!29896 () Bool)

(assert (=> start!539350 (= condSetEmpty!29896 (= baseZ!46 (as set.empty (Set Context!7092))))))

(assert (=> start!539350 setRes!29895))

(assert (=> start!539350 e!3188946))

(declare-fun b!5113052 () Bool)

(declare-fun res!2176479 () Bool)

(assert (=> b!5113052 (=> res!2176479 e!3188947)))

(assert (=> b!5113052 (= res!2176479 (= lt!2106091 lt!2106089))))

(declare-fun b!5113053 () Bool)

(declare-fun res!2176491 () Bool)

(assert (=> b!5113053 (=> (not res!2176491) (not e!3188939))))

(assert (=> b!5113053 (= res!2176491 (isPrefix!5567 knownP!20 input!5745))))

(declare-fun b!5113054 () Bool)

(assert (=> b!5113054 (= e!3188938 e!3188936)))

(declare-fun res!2176490 () Bool)

(assert (=> b!5113054 (=> res!2176490 e!3188936)))

(declare-fun lt!2106099 () List!59216)

(assert (=> b!5113054 (= res!2176490 (not (= lt!2106099 input!5745)))))

(assert (=> b!5113054 (= lt!2106092 lt!2106099)))

(assert (=> b!5113054 (= lt!2106099 (++!12987 testedP!265 lt!2106101))))

(assert (=> b!5113054 (= lt!2106101 (++!12987 lt!2106095 lt!2106088))))

(declare-fun lt!2106094 () Unit!150203)

(declare-fun lemmaConcatAssociativity!2745 (List!59216 List!59216 List!59216) Unit!150203)

(assert (=> b!5113054 (= lt!2106094 (lemmaConcatAssociativity!2745 testedP!265 lt!2106095 lt!2106088))))

(declare-fun setIsEmpty!29896 () Bool)

(assert (=> setIsEmpty!29896 setRes!29895))

(assert (= (and start!539350 res!2176488) b!5113053))

(assert (= (and b!5113053 res!2176491) b!5113049))

(assert (= (and b!5113049 res!2176485) b!5113047))

(assert (= (and b!5113047 res!2176486) b!5113038))

(assert (= (and b!5113038 (not res!2176480)) b!5113045))

(assert (= (and b!5113045 (not res!2176489)) b!5113050))

(assert (= (and b!5113050 (not res!2176483)) b!5113052))

(assert (= (and b!5113052 (not res!2176479)) b!5113039))

(assert (= (and b!5113039 (not res!2176482)) b!5113037))

(assert (= (and b!5113037 (not res!2176484)) b!5113040))

(assert (= (and b!5113040 (not res!2176481)) b!5113036))

(assert (= (and b!5113036 (not res!2176487)) b!5113054))

(assert (= (and b!5113054 (not res!2176490)) b!5113051))

(assert (= (and b!5113051 (not res!2176492)) b!5113042))

(assert (= (and start!539350 (is-Cons!59092 input!5745)) b!5113046))

(assert (= (and start!539350 condSetEmpty!29895) setIsEmpty!29895))

(assert (= (and start!539350 (not condSetEmpty!29895)) setNonEmpty!29896))

(assert (= setNonEmpty!29896 b!5113044))

(assert (= (and start!539350 (is-Cons!59092 testedP!265)) b!5113048))

(assert (= (and start!539350 condSetEmpty!29896) setIsEmpty!29896))

(assert (= (and start!539350 (not condSetEmpty!29896)) setNonEmpty!29895))

(assert (= setNonEmpty!29895 b!5113043))

(assert (= (and start!539350 (is-Cons!59092 knownP!20)) b!5113041))

(declare-fun m!6171086 () Bool)

(assert (=> b!5113036 m!6171086))

(declare-fun m!6171088 () Bool)

(assert (=> b!5113054 m!6171088))

(declare-fun m!6171090 () Bool)

(assert (=> b!5113054 m!6171090))

(declare-fun m!6171092 () Bool)

(assert (=> b!5113054 m!6171092))

(declare-fun m!6171094 () Bool)

(assert (=> b!5113050 m!6171094))

(declare-fun m!6171096 () Bool)

(assert (=> b!5113045 m!6171096))

(declare-fun m!6171098 () Bool)

(assert (=> b!5113037 m!6171098))

(declare-fun m!6171100 () Bool)

(assert (=> b!5113037 m!6171100))

(declare-fun m!6171102 () Bool)

(assert (=> b!5113037 m!6171102))

(declare-fun m!6171104 () Bool)

(assert (=> b!5113037 m!6171104))

(declare-fun m!6171106 () Bool)

(assert (=> b!5113037 m!6171106))

(declare-fun m!6171108 () Bool)

(assert (=> b!5113037 m!6171108))

(declare-fun m!6171110 () Bool)

(assert (=> b!5113037 m!6171110))

(declare-fun m!6171112 () Bool)

(assert (=> b!5113037 m!6171112))

(declare-fun m!6171114 () Bool)

(assert (=> b!5113037 m!6171114))

(declare-fun m!6171116 () Bool)

(assert (=> b!5113037 m!6171116))

(declare-fun m!6171118 () Bool)

(assert (=> b!5113037 m!6171118))

(declare-fun m!6171120 () Bool)

(assert (=> b!5113037 m!6171120))

(declare-fun m!6171122 () Bool)

(assert (=> b!5113037 m!6171122))

(declare-fun m!6171124 () Bool)

(assert (=> setNonEmpty!29896 m!6171124))

(declare-fun m!6171126 () Bool)

(assert (=> b!5113049 m!6171126))

(declare-fun m!6171128 () Bool)

(assert (=> b!5113049 m!6171128))

(declare-fun m!6171130 () Bool)

(assert (=> b!5113040 m!6171130))

(assert (=> b!5113040 m!6171130))

(declare-fun m!6171132 () Bool)

(assert (=> b!5113040 m!6171132))

(declare-fun m!6171134 () Bool)

(assert (=> b!5113038 m!6171134))

(declare-fun m!6171136 () Bool)

(assert (=> b!5113038 m!6171136))

(declare-fun m!6171138 () Bool)

(assert (=> b!5113038 m!6171138))

(declare-fun m!6171140 () Bool)

(assert (=> b!5113038 m!6171140))

(declare-fun m!6171142 () Bool)

(assert (=> b!5113051 m!6171142))

(declare-fun m!6171144 () Bool)

(assert (=> b!5113051 m!6171144))

(declare-fun m!6171146 () Bool)

(assert (=> b!5113047 m!6171146))

(declare-fun m!6171148 () Bool)

(assert (=> b!5113039 m!6171148))

(declare-fun m!6171150 () Bool)

(assert (=> start!539350 m!6171150))

(declare-fun m!6171152 () Bool)

(assert (=> b!5113053 m!6171152))

(declare-fun m!6171154 () Bool)

(assert (=> setNonEmpty!29895 m!6171154))

(push 1)

(assert (not b!5113053))

(assert (not b!5113044))

(assert (not b!5113036))

(assert (not b!5113045))

(assert (not b!5113043))

(assert (not b!5113037))

(assert (not b!5113047))

(assert (not b!5113048))

(assert (not b!5113040))

(assert (not b!5113038))

(assert (not b!5113046))

(assert (not setNonEmpty!29896))

(assert tp_is_empty!37597)

(assert (not b!5113050))

(assert (not b!5113049))

(assert (not b!5113041))

(assert (not setNonEmpty!29895))

(assert (not start!539350))

(assert (not b!5113051))

(assert (not b!5113039))

(assert (not b!5113054))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1652429 () Bool)

(assert (=> d!1652429 (= (head!10890 lt!2106095) (h!65540 lt!2106095))))

(assert (=> b!5113051 d!1652429))

(declare-fun d!1652431 () Bool)

(assert (=> d!1652431 (= lt!2106101 lt!2106093)))

(declare-fun lt!2106159 () Unit!150203)

(declare-fun choose!37507 (List!59216 List!59216 List!59216 List!59216 List!59216) Unit!150203)

(assert (=> d!1652431 (= lt!2106159 (choose!37507 testedP!265 lt!2106101 testedP!265 lt!2106093 input!5745))))

(assert (=> d!1652431 (isPrefix!5567 testedP!265 input!5745)))

(assert (=> d!1652431 (= (lemmaSamePrefixThenSameSuffix!2613 testedP!265 lt!2106101 testedP!265 lt!2106093 input!5745) lt!2106159)))

(declare-fun bs!1192182 () Bool)

(assert (= bs!1192182 d!1652431))

(declare-fun m!6171236 () Bool)

(assert (=> bs!1192182 m!6171236))

(assert (=> bs!1192182 m!6171150))

(assert (=> b!5113051 d!1652431))

(declare-fun bs!1192187 () Bool)

(declare-fun b!5113176 () Bool)

(declare-fun d!1652433 () Bool)

(assert (= bs!1192187 (and b!5113176 d!1652433)))

(declare-fun lambda!250584 () Int)

(declare-fun lambda!250583 () Int)

(assert (=> bs!1192187 (not (= lambda!250584 lambda!250583))))

(declare-fun bs!1192188 () Bool)

(declare-fun b!5113177 () Bool)

(assert (= bs!1192188 (and b!5113177 d!1652433)))

(declare-fun lambda!250585 () Int)

(assert (=> bs!1192188 (not (= lambda!250585 lambda!250583))))

(declare-fun bs!1192189 () Bool)

(assert (= bs!1192189 (and b!5113177 b!5113176)))

(assert (=> bs!1192189 (= lambda!250585 lambda!250584)))

(declare-fun e!3189025 () Unit!150203)

(declare-fun Unit!150207 () Unit!150203)

(assert (=> b!5113176 (= e!3189025 Unit!150207)))

(declare-datatypes ((List!59219 0))(
  ( (Nil!59095) (Cons!59095 (h!65543 Context!7092) (t!372220 List!59219)) )
))
(declare-fun lt!2106202 () List!59219)

(declare-fun call!356442 () List!59219)

(assert (=> b!5113176 (= lt!2106202 call!356442)))

(declare-fun lt!2106199 () Unit!150203)

(declare-fun lemmaNotForallThenExists!309 (List!59219 Int) Unit!150203)

(assert (=> b!5113176 (= lt!2106199 (lemmaNotForallThenExists!309 lt!2106202 lambda!250583))))

(declare-fun call!356443 () Bool)

(assert (=> b!5113176 call!356443))

(declare-fun lt!2106200 () Unit!150203)

(assert (=> b!5113176 (= lt!2106200 lt!2106199)))

(declare-fun bm!356437 () Bool)

(declare-fun toList!8235 ((Set Context!7092)) List!59219)

(assert (=> bm!356437 (= call!356442 (toList!8235 z!4463))))

(declare-fun Unit!150208 () Unit!150203)

(assert (=> b!5113177 (= e!3189025 Unit!150208)))

(declare-fun lt!2106204 () List!59219)

(assert (=> b!5113177 (= lt!2106204 call!356442)))

(declare-fun lt!2106201 () Unit!150203)

(declare-fun lemmaForallThenNotExists!292 (List!59219 Int) Unit!150203)

(assert (=> b!5113177 (= lt!2106201 (lemmaForallThenNotExists!292 lt!2106204 lambda!250583))))

(assert (=> b!5113177 (not call!356443)))

(declare-fun lt!2106205 () Unit!150203)

(assert (=> b!5113177 (= lt!2106205 lt!2106201)))

(declare-fun lt!2106203 () Bool)

(declare-datatypes ((Option!14669 0))(
  ( (None!14668) (Some!14668 (v!50681 List!59216)) )
))
(declare-fun isEmpty!31878 (Option!14669) Bool)

(declare-fun getLanguageWitness!786 ((Set Context!7092)) Option!14669)

(assert (=> d!1652433 (= lt!2106203 (isEmpty!31878 (getLanguageWitness!786 z!4463)))))

(declare-fun forall!13553 ((Set Context!7092) Int) Bool)

(assert (=> d!1652433 (= lt!2106203 (forall!13553 z!4463 lambda!250583))))

(declare-fun lt!2106206 () Unit!150203)

(assert (=> d!1652433 (= lt!2106206 e!3189025)))

(declare-fun c!878503 () Bool)

(assert (=> d!1652433 (= c!878503 (not (forall!13553 z!4463 lambda!250583)))))

(assert (=> d!1652433 (= (lostCauseZipper!1048 z!4463) lt!2106203)))

(declare-fun bm!356438 () Bool)

(declare-fun exists!1446 (List!59219 Int) Bool)

(assert (=> bm!356438 (= call!356443 (exists!1446 (ite c!878503 lt!2106202 lt!2106204) (ite c!878503 lambda!250584 lambda!250585)))))

(assert (= (and d!1652433 c!878503) b!5113176))

(assert (= (and d!1652433 (not c!878503)) b!5113177))

(assert (= (or b!5113176 b!5113177) bm!356437))

(assert (= (or b!5113176 b!5113177) bm!356438))

(declare-fun m!6171322 () Bool)

(assert (=> bm!356437 m!6171322))

(declare-fun m!6171324 () Bool)

(assert (=> bm!356438 m!6171324))

(declare-fun m!6171326 () Bool)

(assert (=> b!5113177 m!6171326))

(declare-fun m!6171328 () Bool)

(assert (=> b!5113176 m!6171328))

(declare-fun m!6171330 () Bool)

(assert (=> d!1652433 m!6171330))

(assert (=> d!1652433 m!6171330))

(declare-fun m!6171332 () Bool)

(assert (=> d!1652433 m!6171332))

(declare-fun m!6171334 () Bool)

(assert (=> d!1652433 m!6171334))

(assert (=> d!1652433 m!6171334))

(assert (=> b!5113050 d!1652433))

(declare-fun b!5113187 () Bool)

(declare-fun e!3189031 () List!59216)

(assert (=> b!5113187 (= e!3189031 (Cons!59092 (h!65540 (++!12987 testedP!265 lt!2106095)) (++!12987 (t!372217 (++!12987 testedP!265 lt!2106095)) lt!2106088)))))

(declare-fun b!5113189 () Bool)

(declare-fun e!3189030 () Bool)

(declare-fun lt!2106209 () List!59216)

(assert (=> b!5113189 (= e!3189030 (or (not (= lt!2106088 Nil!59092)) (= lt!2106209 (++!12987 testedP!265 lt!2106095))))))

(declare-fun d!1652465 () Bool)

(assert (=> d!1652465 e!3189030))

(declare-fun res!2176568 () Bool)

(assert (=> d!1652465 (=> (not res!2176568) (not e!3189030))))

(declare-fun content!10502 (List!59216) (Set C!28590))

(assert (=> d!1652465 (= res!2176568 (= (content!10502 lt!2106209) (set.union (content!10502 (++!12987 testedP!265 lt!2106095)) (content!10502 lt!2106088))))))

(assert (=> d!1652465 (= lt!2106209 e!3189031)))

(declare-fun c!878506 () Bool)

(assert (=> d!1652465 (= c!878506 (is-Nil!59092 (++!12987 testedP!265 lt!2106095)))))

(assert (=> d!1652465 (= (++!12987 (++!12987 testedP!265 lt!2106095) lt!2106088) lt!2106209)))

(declare-fun b!5113186 () Bool)

(assert (=> b!5113186 (= e!3189031 lt!2106088)))

(declare-fun b!5113188 () Bool)

(declare-fun res!2176567 () Bool)

(assert (=> b!5113188 (=> (not res!2176567) (not e!3189030))))

(assert (=> b!5113188 (= res!2176567 (= (size!39468 lt!2106209) (+ (size!39468 (++!12987 testedP!265 lt!2106095)) (size!39468 lt!2106088))))))

(assert (= (and d!1652465 c!878506) b!5113186))

(assert (= (and d!1652465 (not c!878506)) b!5113187))

(assert (= (and d!1652465 res!2176568) b!5113188))

(assert (= (and b!5113188 res!2176567) b!5113189))

(declare-fun m!6171336 () Bool)

(assert (=> b!5113187 m!6171336))

(declare-fun m!6171338 () Bool)

(assert (=> d!1652465 m!6171338))

(assert (=> d!1652465 m!6171130))

(declare-fun m!6171340 () Bool)

(assert (=> d!1652465 m!6171340))

(declare-fun m!6171342 () Bool)

(assert (=> d!1652465 m!6171342))

(declare-fun m!6171344 () Bool)

(assert (=> b!5113188 m!6171344))

(assert (=> b!5113188 m!6171130))

(declare-fun m!6171346 () Bool)

(assert (=> b!5113188 m!6171346))

(declare-fun m!6171348 () Bool)

(assert (=> b!5113188 m!6171348))

(assert (=> b!5113040 d!1652465))

(declare-fun b!5113191 () Bool)

(declare-fun e!3189033 () List!59216)

(assert (=> b!5113191 (= e!3189033 (Cons!59092 (h!65540 testedP!265) (++!12987 (t!372217 testedP!265) lt!2106095)))))

(declare-fun e!3189032 () Bool)

(declare-fun lt!2106210 () List!59216)

(declare-fun b!5113193 () Bool)

(assert (=> b!5113193 (= e!3189032 (or (not (= lt!2106095 Nil!59092)) (= lt!2106210 testedP!265)))))

(declare-fun d!1652467 () Bool)

(assert (=> d!1652467 e!3189032))

(declare-fun res!2176570 () Bool)

(assert (=> d!1652467 (=> (not res!2176570) (not e!3189032))))

(assert (=> d!1652467 (= res!2176570 (= (content!10502 lt!2106210) (set.union (content!10502 testedP!265) (content!10502 lt!2106095))))))

(assert (=> d!1652467 (= lt!2106210 e!3189033)))

(declare-fun c!878507 () Bool)

(assert (=> d!1652467 (= c!878507 (is-Nil!59092 testedP!265))))

(assert (=> d!1652467 (= (++!12987 testedP!265 lt!2106095) lt!2106210)))

(declare-fun b!5113190 () Bool)

(assert (=> b!5113190 (= e!3189033 lt!2106095)))

(declare-fun b!5113192 () Bool)

(declare-fun res!2176569 () Bool)

(assert (=> b!5113192 (=> (not res!2176569) (not e!3189032))))

(assert (=> b!5113192 (= res!2176569 (= (size!39468 lt!2106210) (+ (size!39468 testedP!265) (size!39468 lt!2106095))))))

(assert (= (and d!1652467 c!878507) b!5113190))

(assert (= (and d!1652467 (not c!878507)) b!5113191))

(assert (= (and d!1652467 res!2176570) b!5113192))

(assert (= (and b!5113192 res!2176569) b!5113193))

(declare-fun m!6171350 () Bool)

(assert (=> b!5113191 m!6171350))

(declare-fun m!6171352 () Bool)

(assert (=> d!1652467 m!6171352))

(declare-fun m!6171354 () Bool)

(assert (=> d!1652467 m!6171354))

(declare-fun m!6171356 () Bool)

(assert (=> d!1652467 m!6171356))

(declare-fun m!6171358 () Bool)

(assert (=> b!5113192 m!6171358))

(assert (=> b!5113192 m!6171126))

(declare-fun m!6171360 () Bool)

(assert (=> b!5113192 m!6171360))

(assert (=> b!5113040 d!1652467))

(declare-fun d!1652469 () Bool)

(declare-fun lambda!250588 () Int)

(declare-fun forall!13554 (List!59215 Int) Bool)

(assert (=> d!1652469 (= (inv!78587 setElem!29895) (forall!13554 (exprs!4046 setElem!29895) lambda!250588))))

(declare-fun bs!1192190 () Bool)

(assert (= bs!1192190 d!1652469))

(declare-fun m!6171362 () Bool)

(assert (=> bs!1192190 m!6171362))

(assert (=> setNonEmpty!29896 d!1652469))

(declare-fun d!1652471 () Bool)

(declare-fun lt!2106213 () Int)

(assert (=> d!1652471 (>= lt!2106213 0)))

(declare-fun e!3189036 () Int)

(assert (=> d!1652471 (= lt!2106213 e!3189036)))

(declare-fun c!878510 () Bool)

(assert (=> d!1652471 (= c!878510 (is-Nil!59092 testedP!265))))

(assert (=> d!1652471 (= (size!39468 testedP!265) lt!2106213)))

(declare-fun b!5113198 () Bool)

(assert (=> b!5113198 (= e!3189036 0)))

(declare-fun b!5113199 () Bool)

(assert (=> b!5113199 (= e!3189036 (+ 1 (size!39468 (t!372217 testedP!265))))))

(assert (= (and d!1652471 c!878510) b!5113198))

(assert (= (and d!1652471 (not c!878510)) b!5113199))

(declare-fun m!6171364 () Bool)

(assert (=> b!5113199 m!6171364))

(assert (=> b!5113049 d!1652471))

(declare-fun d!1652473 () Bool)

(declare-fun lt!2106214 () Int)

(assert (=> d!1652473 (>= lt!2106214 0)))

(declare-fun e!3189037 () Int)

(assert (=> d!1652473 (= lt!2106214 e!3189037)))

(declare-fun c!878511 () Bool)

(assert (=> d!1652473 (= c!878511 (is-Nil!59092 knownP!20))))

(assert (=> d!1652473 (= (size!39468 knownP!20) lt!2106214)))

(declare-fun b!5113200 () Bool)

(assert (=> b!5113200 (= e!3189037 0)))

(declare-fun b!5113201 () Bool)

(assert (=> b!5113201 (= e!3189037 (+ 1 (size!39468 (t!372217 knownP!20))))))

(assert (= (and d!1652473 c!878511) b!5113200))

(assert (= (and d!1652473 (not c!878511)) b!5113201))

(declare-fun m!6171366 () Bool)

(assert (=> b!5113201 m!6171366))

(assert (=> b!5113049 d!1652473))

(declare-fun d!1652475 () Bool)

(declare-fun lt!2106215 () Int)

(assert (=> d!1652475 (>= lt!2106215 0)))

(declare-fun e!3189038 () Int)

(assert (=> d!1652475 (= lt!2106215 e!3189038)))

(declare-fun c!878512 () Bool)

(assert (=> d!1652475 (= c!878512 (is-Nil!59092 input!5745))))

(assert (=> d!1652475 (= (size!39468 input!5745) lt!2106215)))

(declare-fun b!5113202 () Bool)

(assert (=> b!5113202 (= e!3189038 0)))

(declare-fun b!5113203 () Bool)

(assert (=> b!5113203 (= e!3189038 (+ 1 (size!39468 (t!372217 input!5745))))))

(assert (= (and d!1652475 c!878512) b!5113202))

(assert (= (and d!1652475 (not c!878512)) b!5113203))

(declare-fun m!6171368 () Bool)

(assert (=> b!5113203 m!6171368))

(assert (=> b!5113039 d!1652475))

(declare-fun d!1652477 () Bool)

(declare-fun c!878515 () Bool)

(declare-fun isEmpty!31879 (List!59216) Bool)

(assert (=> d!1652477 (= c!878515 (isEmpty!31879 lt!2106095))))

(declare-fun e!3189041 () Bool)

(assert (=> d!1652477 (= (matchZipper!830 z!4463 lt!2106095) e!3189041)))

(declare-fun b!5113208 () Bool)

(declare-fun nullableZipper!999 ((Set Context!7092)) Bool)

(assert (=> b!5113208 (= e!3189041 (nullableZipper!999 z!4463))))

(declare-fun b!5113209 () Bool)

(declare-fun tail!10031 (List!59216) List!59216)

(assert (=> b!5113209 (= e!3189041 (matchZipper!830 (derivationStepZipper!797 z!4463 (head!10890 lt!2106095)) (tail!10031 lt!2106095)))))

(assert (= (and d!1652477 c!878515) b!5113208))

(assert (= (and d!1652477 (not c!878515)) b!5113209))

(declare-fun m!6171370 () Bool)

(assert (=> d!1652477 m!6171370))

(declare-fun m!6171372 () Bool)

(assert (=> b!5113208 m!6171372))

(assert (=> b!5113209 m!6171142))

(assert (=> b!5113209 m!6171142))

(declare-fun m!6171374 () Bool)

(assert (=> b!5113209 m!6171374))

(declare-fun m!6171376 () Bool)

(assert (=> b!5113209 m!6171376))

(assert (=> b!5113209 m!6171374))

(assert (=> b!5113209 m!6171376))

(declare-fun m!6171378 () Bool)

(assert (=> b!5113209 m!6171378))

(assert (=> b!5113038 d!1652477))

(declare-fun d!1652479 () Bool)

(declare-fun lt!2106218 () List!59216)

(assert (=> d!1652479 (= (++!12987 testedP!265 lt!2106218) knownP!20)))

(declare-fun e!3189044 () List!59216)

(assert (=> d!1652479 (= lt!2106218 e!3189044)))

(declare-fun c!878518 () Bool)

(assert (=> d!1652479 (= c!878518 (is-Cons!59092 testedP!265))))

(assert (=> d!1652479 (>= (size!39468 knownP!20) (size!39468 testedP!265))))

(assert (=> d!1652479 (= (getSuffix!3241 knownP!20 testedP!265) lt!2106218)))

(declare-fun b!5113214 () Bool)

(assert (=> b!5113214 (= e!3189044 (getSuffix!3241 (tail!10031 knownP!20) (t!372217 testedP!265)))))

(declare-fun b!5113215 () Bool)

(assert (=> b!5113215 (= e!3189044 knownP!20)))

(assert (= (and d!1652479 c!878518) b!5113214))

(assert (= (and d!1652479 (not c!878518)) b!5113215))

(declare-fun m!6171380 () Bool)

(assert (=> d!1652479 m!6171380))

(assert (=> d!1652479 m!6171128))

(assert (=> d!1652479 m!6171126))

(declare-fun m!6171382 () Bool)

(assert (=> b!5113214 m!6171382))

(assert (=> b!5113214 m!6171382))

(declare-fun m!6171384 () Bool)

(assert (=> b!5113214 m!6171384))

(assert (=> b!5113038 d!1652479))

(declare-fun b!5113224 () Bool)

(declare-fun e!3189051 () Bool)

(declare-fun e!3189053 () Bool)

(assert (=> b!5113224 (= e!3189051 e!3189053)))

(declare-fun res!2176580 () Bool)

(assert (=> b!5113224 (=> (not res!2176580) (not e!3189053))))

(assert (=> b!5113224 (= res!2176580 (not (is-Nil!59092 knownP!20)))))

(declare-fun b!5113227 () Bool)

(declare-fun e!3189052 () Bool)

(assert (=> b!5113227 (= e!3189052 (>= (size!39468 knownP!20) (size!39468 testedP!265)))))

(declare-fun b!5113226 () Bool)

(assert (=> b!5113226 (= e!3189053 (isPrefix!5567 (tail!10031 testedP!265) (tail!10031 knownP!20)))))

(declare-fun d!1652481 () Bool)

(assert (=> d!1652481 e!3189052))

(declare-fun res!2176581 () Bool)

(assert (=> d!1652481 (=> res!2176581 e!3189052)))

(declare-fun lt!2106221 () Bool)

(assert (=> d!1652481 (= res!2176581 (not lt!2106221))))

(assert (=> d!1652481 (= lt!2106221 e!3189051)))

(declare-fun res!2176579 () Bool)

(assert (=> d!1652481 (=> res!2176579 e!3189051)))

(assert (=> d!1652481 (= res!2176579 (is-Nil!59092 testedP!265))))

(assert (=> d!1652481 (= (isPrefix!5567 testedP!265 knownP!20) lt!2106221)))

(declare-fun b!5113225 () Bool)

(declare-fun res!2176582 () Bool)

(assert (=> b!5113225 (=> (not res!2176582) (not e!3189053))))

(assert (=> b!5113225 (= res!2176582 (= (head!10890 testedP!265) (head!10890 knownP!20)))))

(assert (= (and d!1652481 (not res!2176579)) b!5113224))

(assert (= (and b!5113224 res!2176580) b!5113225))

(assert (= (and b!5113225 res!2176582) b!5113226))

(assert (= (and d!1652481 (not res!2176581)) b!5113227))

(assert (=> b!5113227 m!6171128))

(assert (=> b!5113227 m!6171126))

(declare-fun m!6171386 () Bool)

(assert (=> b!5113226 m!6171386))

(assert (=> b!5113226 m!6171382))

(assert (=> b!5113226 m!6171386))

(assert (=> b!5113226 m!6171382))

(declare-fun m!6171388 () Bool)

(assert (=> b!5113226 m!6171388))

(declare-fun m!6171390 () Bool)

(assert (=> b!5113225 m!6171390))

(declare-fun m!6171392 () Bool)

(assert (=> b!5113225 m!6171392))

(assert (=> b!5113038 d!1652481))

(declare-fun d!1652483 () Bool)

(assert (=> d!1652483 (isPrefix!5567 testedP!265 knownP!20)))

(declare-fun lt!2106224 () Unit!150203)

(declare-fun choose!37508 (List!59216 List!59216 List!59216) Unit!150203)

(assert (=> d!1652483 (= lt!2106224 (choose!37508 knownP!20 testedP!265 input!5745))))

(assert (=> d!1652483 (isPrefix!5567 knownP!20 input!5745)))

(assert (=> d!1652483 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!704 knownP!20 testedP!265 input!5745) lt!2106224)))

(declare-fun bs!1192191 () Bool)

(assert (= bs!1192191 d!1652483))

(assert (=> bs!1192191 m!6171138))

(declare-fun m!6171394 () Bool)

(assert (=> bs!1192191 m!6171394))

(assert (=> bs!1192191 m!6171152))

(assert (=> b!5113038 d!1652483))

(declare-fun d!1652485 () Bool)

(declare-fun lt!2106225 () List!59216)

(assert (=> d!1652485 (= (++!12987 testedP!265 lt!2106225) input!5745)))

(declare-fun e!3189054 () List!59216)

(assert (=> d!1652485 (= lt!2106225 e!3189054)))

(declare-fun c!878519 () Bool)

(assert (=> d!1652485 (= c!878519 (is-Cons!59092 testedP!265))))

(assert (=> d!1652485 (>= (size!39468 input!5745) (size!39468 testedP!265))))

(assert (=> d!1652485 (= (getSuffix!3241 input!5745 testedP!265) lt!2106225)))

(declare-fun b!5113228 () Bool)

(assert (=> b!5113228 (= e!3189054 (getSuffix!3241 (tail!10031 input!5745) (t!372217 testedP!265)))))

(declare-fun b!5113229 () Bool)

(assert (=> b!5113229 (= e!3189054 input!5745)))

(assert (= (and d!1652485 c!878519) b!5113228))

(assert (= (and d!1652485 (not c!878519)) b!5113229))

(declare-fun m!6171396 () Bool)

(assert (=> d!1652485 m!6171396))

(assert (=> d!1652485 m!6171148))

(assert (=> d!1652485 m!6171126))

(declare-fun m!6171398 () Bool)

(assert (=> b!5113228 m!6171398))

(assert (=> b!5113228 m!6171398))

(declare-fun m!6171400 () Bool)

(assert (=> b!5113228 m!6171400))

(assert (=> b!5113037 d!1652485))

(declare-fun d!1652487 () Bool)

(assert (=> d!1652487 (isPrefix!5567 lt!2106103 knownP!20)))

(declare-fun lt!2106226 () Unit!150203)

(assert (=> d!1652487 (= lt!2106226 (choose!37508 knownP!20 lt!2106103 input!5745))))

(assert (=> d!1652487 (isPrefix!5567 knownP!20 input!5745)))

(assert (=> d!1652487 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!704 knownP!20 lt!2106103 input!5745) lt!2106226)))

(declare-fun bs!1192192 () Bool)

(assert (= bs!1192192 d!1652487))

(assert (=> bs!1192192 m!6171110))

(declare-fun m!6171402 () Bool)

(assert (=> bs!1192192 m!6171402))

(assert (=> bs!1192192 m!6171152))

(assert (=> b!5113037 d!1652487))

(declare-fun b!5113231 () Bool)

(declare-fun e!3189056 () List!59216)

(assert (=> b!5113231 (= e!3189056 (Cons!59092 (h!65540 knownP!20) (++!12987 (t!372217 knownP!20) lt!2106088)))))

(declare-fun b!5113233 () Bool)

(declare-fun lt!2106227 () List!59216)

(declare-fun e!3189055 () Bool)

(assert (=> b!5113233 (= e!3189055 (or (not (= lt!2106088 Nil!59092)) (= lt!2106227 knownP!20)))))

(declare-fun d!1652489 () Bool)

(assert (=> d!1652489 e!3189055))

(declare-fun res!2176584 () Bool)

(assert (=> d!1652489 (=> (not res!2176584) (not e!3189055))))

(assert (=> d!1652489 (= res!2176584 (= (content!10502 lt!2106227) (set.union (content!10502 knownP!20) (content!10502 lt!2106088))))))

(assert (=> d!1652489 (= lt!2106227 e!3189056)))

(declare-fun c!878520 () Bool)

(assert (=> d!1652489 (= c!878520 (is-Nil!59092 knownP!20))))

(assert (=> d!1652489 (= (++!12987 knownP!20 lt!2106088) lt!2106227)))

(declare-fun b!5113230 () Bool)

(assert (=> b!5113230 (= e!3189056 lt!2106088)))

(declare-fun b!5113232 () Bool)

(declare-fun res!2176583 () Bool)

(assert (=> b!5113232 (=> (not res!2176583) (not e!3189055))))

(assert (=> b!5113232 (= res!2176583 (= (size!39468 lt!2106227) (+ (size!39468 knownP!20) (size!39468 lt!2106088))))))

(assert (= (and d!1652489 c!878520) b!5113230))

(assert (= (and d!1652489 (not c!878520)) b!5113231))

(assert (= (and d!1652489 res!2176584) b!5113232))

(assert (= (and b!5113232 res!2176583) b!5113233))

(declare-fun m!6171404 () Bool)

(assert (=> b!5113231 m!6171404))

(declare-fun m!6171406 () Bool)

(assert (=> d!1652489 m!6171406))

(declare-fun m!6171408 () Bool)

(assert (=> d!1652489 m!6171408))

(assert (=> d!1652489 m!6171342))

(declare-fun m!6171410 () Bool)

(assert (=> b!5113232 m!6171410))

(assert (=> b!5113232 m!6171128))

(assert (=> b!5113232 m!6171348))

(assert (=> b!5113037 d!1652489))

(declare-fun d!1652491 () Bool)

(assert (=> d!1652491 true))

(declare-fun lambda!250591 () Int)

(declare-fun flatMap!333 ((Set Context!7092) Int) (Set Context!7092))

(assert (=> d!1652491 (= (derivationStepZipper!797 z!4463 lt!2106100) (flatMap!333 z!4463 lambda!250591))))

(declare-fun bs!1192193 () Bool)

(assert (= bs!1192193 d!1652491))

(declare-fun m!6171412 () Bool)

(assert (=> bs!1192193 m!6171412))

(assert (=> b!5113037 d!1652491))

(declare-fun d!1652493 () Bool)

(assert (=> d!1652493 (= (head!10890 lt!2106093) (h!65540 lt!2106093))))

(assert (=> b!5113037 d!1652493))

(declare-fun b!5113236 () Bool)

(declare-fun e!3189057 () Bool)

(declare-fun e!3189059 () Bool)

(assert (=> b!5113236 (= e!3189057 e!3189059)))

(declare-fun res!2176586 () Bool)

(assert (=> b!5113236 (=> (not res!2176586) (not e!3189059))))

(assert (=> b!5113236 (= res!2176586 (not (is-Nil!59092 knownP!20)))))

(declare-fun b!5113239 () Bool)

(declare-fun e!3189058 () Bool)

(assert (=> b!5113239 (= e!3189058 (>= (size!39468 knownP!20) (size!39468 lt!2106103)))))

(declare-fun b!5113238 () Bool)

(assert (=> b!5113238 (= e!3189059 (isPrefix!5567 (tail!10031 lt!2106103) (tail!10031 knownP!20)))))

(declare-fun d!1652495 () Bool)

(assert (=> d!1652495 e!3189058))

(declare-fun res!2176587 () Bool)

(assert (=> d!1652495 (=> res!2176587 e!3189058)))

(declare-fun lt!2106228 () Bool)

(assert (=> d!1652495 (= res!2176587 (not lt!2106228))))

(assert (=> d!1652495 (= lt!2106228 e!3189057)))

(declare-fun res!2176585 () Bool)

(assert (=> d!1652495 (=> res!2176585 e!3189057)))

(assert (=> d!1652495 (= res!2176585 (is-Nil!59092 lt!2106103))))

(assert (=> d!1652495 (= (isPrefix!5567 lt!2106103 knownP!20) lt!2106228)))

(declare-fun b!5113237 () Bool)

(declare-fun res!2176588 () Bool)

(assert (=> b!5113237 (=> (not res!2176588) (not e!3189059))))

(assert (=> b!5113237 (= res!2176588 (= (head!10890 lt!2106103) (head!10890 knownP!20)))))

(assert (= (and d!1652495 (not res!2176585)) b!5113236))

(assert (= (and b!5113236 res!2176586) b!5113237))

(assert (= (and b!5113237 res!2176588) b!5113238))

(assert (= (and d!1652495 (not res!2176587)) b!5113239))

(assert (=> b!5113239 m!6171128))

(declare-fun m!6171414 () Bool)

(assert (=> b!5113239 m!6171414))

(declare-fun m!6171416 () Bool)

(assert (=> b!5113238 m!6171416))

(assert (=> b!5113238 m!6171382))

(assert (=> b!5113238 m!6171416))

(assert (=> b!5113238 m!6171382))

(declare-fun m!6171418 () Bool)

(assert (=> b!5113238 m!6171418))

(declare-fun m!6171420 () Bool)

(assert (=> b!5113237 m!6171420))

(assert (=> b!5113237 m!6171392))

(assert (=> b!5113037 d!1652495))

(declare-fun d!1652497 () Bool)

(assert (=> d!1652497 (isPrefix!5567 (++!12987 testedP!265 (Cons!59092 (head!10890 (getSuffix!3241 input!5745 testedP!265)) Nil!59092)) input!5745)))

(declare-fun lt!2106231 () Unit!150203)

(declare-fun choose!37509 (List!59216 List!59216) Unit!150203)

(assert (=> d!1652497 (= lt!2106231 (choose!37509 testedP!265 input!5745))))

(assert (=> d!1652497 (isPrefix!5567 testedP!265 input!5745)))

(assert (=> d!1652497 (= (lemmaAddHeadSuffixToPrefixStillPrefix!957 testedP!265 input!5745) lt!2106231)))

(declare-fun bs!1192194 () Bool)

(assert (= bs!1192194 d!1652497))

(declare-fun m!6171422 () Bool)

(assert (=> bs!1192194 m!6171422))

(assert (=> bs!1192194 m!6171422))

(declare-fun m!6171424 () Bool)

(assert (=> bs!1192194 m!6171424))

(assert (=> bs!1192194 m!6171098))

(assert (=> bs!1192194 m!6171150))

(declare-fun m!6171426 () Bool)

(assert (=> bs!1192194 m!6171426))

(assert (=> bs!1192194 m!6171098))

(declare-fun m!6171428 () Bool)

(assert (=> bs!1192194 m!6171428))

(assert (=> b!5113037 d!1652497))

(declare-fun d!1652499 () Bool)

(declare-fun c!878525 () Bool)

(assert (=> d!1652499 (= c!878525 (is-Cons!59092 lt!2106103))))

(declare-fun e!3189062 () (Set Context!7092))

(assert (=> d!1652499 (= (derivationZipper!61 baseZ!46 lt!2106103) e!3189062)))

(declare-fun b!5113244 () Bool)

(assert (=> b!5113244 (= e!3189062 (derivationZipper!61 (derivationStepZipper!797 baseZ!46 (h!65540 lt!2106103)) (t!372217 lt!2106103)))))

(declare-fun b!5113245 () Bool)

(assert (=> b!5113245 (= e!3189062 baseZ!46)))

(assert (= (and d!1652499 c!878525) b!5113244))

(assert (= (and d!1652499 (not c!878525)) b!5113245))

(declare-fun m!6171430 () Bool)

(assert (=> b!5113244 m!6171430))

(assert (=> b!5113244 m!6171430))

(declare-fun m!6171432 () Bool)

(assert (=> b!5113244 m!6171432))

(assert (=> b!5113037 d!1652499))

(declare-fun d!1652501 () Bool)

(declare-fun lt!2106232 () List!59216)

(assert (=> d!1652501 (= (++!12987 knownP!20 lt!2106232) input!5745)))

(declare-fun e!3189063 () List!59216)

(assert (=> d!1652501 (= lt!2106232 e!3189063)))

(declare-fun c!878526 () Bool)

(assert (=> d!1652501 (= c!878526 (is-Cons!59092 knownP!20))))

(assert (=> d!1652501 (>= (size!39468 input!5745) (size!39468 knownP!20))))

(assert (=> d!1652501 (= (getSuffix!3241 input!5745 knownP!20) lt!2106232)))

(declare-fun b!5113246 () Bool)

(assert (=> b!5113246 (= e!3189063 (getSuffix!3241 (tail!10031 input!5745) (t!372217 knownP!20)))))

(declare-fun b!5113247 () Bool)

(assert (=> b!5113247 (= e!3189063 input!5745)))

(assert (= (and d!1652501 c!878526) b!5113246))

(assert (= (and d!1652501 (not c!878526)) b!5113247))

(declare-fun m!6171434 () Bool)

(assert (=> d!1652501 m!6171434))

(assert (=> d!1652501 m!6171148))

(assert (=> d!1652501 m!6171128))

(assert (=> b!5113246 m!6171398))

(assert (=> b!5113246 m!6171398))

(declare-fun m!6171436 () Bool)

(assert (=> b!5113246 m!6171436))

(assert (=> b!5113037 d!1652501))

(declare-fun b!5113248 () Bool)

(declare-fun e!3189064 () Bool)

(declare-fun e!3189066 () Bool)

(assert (=> b!5113248 (= e!3189064 e!3189066)))

(declare-fun res!2176590 () Bool)

(assert (=> b!5113248 (=> (not res!2176590) (not e!3189066))))

(assert (=> b!5113248 (= res!2176590 (not (is-Nil!59092 input!5745)))))

(declare-fun b!5113251 () Bool)

(declare-fun e!3189065 () Bool)

(assert (=> b!5113251 (= e!3189065 (>= (size!39468 input!5745) (size!39468 lt!2106103)))))

(declare-fun b!5113250 () Bool)

(assert (=> b!5113250 (= e!3189066 (isPrefix!5567 (tail!10031 lt!2106103) (tail!10031 input!5745)))))

(declare-fun d!1652503 () Bool)

(assert (=> d!1652503 e!3189065))

(declare-fun res!2176591 () Bool)

(assert (=> d!1652503 (=> res!2176591 e!3189065)))

(declare-fun lt!2106233 () Bool)

(assert (=> d!1652503 (= res!2176591 (not lt!2106233))))

(assert (=> d!1652503 (= lt!2106233 e!3189064)))

(declare-fun res!2176589 () Bool)

(assert (=> d!1652503 (=> res!2176589 e!3189064)))

(assert (=> d!1652503 (= res!2176589 (is-Nil!59092 lt!2106103))))

(assert (=> d!1652503 (= (isPrefix!5567 lt!2106103 input!5745) lt!2106233)))

(declare-fun b!5113249 () Bool)

(declare-fun res!2176592 () Bool)

(assert (=> b!5113249 (=> (not res!2176592) (not e!3189066))))

(assert (=> b!5113249 (= res!2176592 (= (head!10890 lt!2106103) (head!10890 input!5745)))))

(assert (= (and d!1652503 (not res!2176589)) b!5113248))

(assert (= (and b!5113248 res!2176590) b!5113249))

(assert (= (and b!5113249 res!2176592) b!5113250))

(assert (= (and d!1652503 (not res!2176591)) b!5113251))

(assert (=> b!5113251 m!6171148))

(assert (=> b!5113251 m!6171414))

(assert (=> b!5113250 m!6171416))

(assert (=> b!5113250 m!6171398))

(assert (=> b!5113250 m!6171416))

(assert (=> b!5113250 m!6171398))

(declare-fun m!6171438 () Bool)

(assert (=> b!5113250 m!6171438))

(assert (=> b!5113249 m!6171420))

(declare-fun m!6171440 () Bool)

(assert (=> b!5113249 m!6171440))

(assert (=> b!5113037 d!1652503))

(declare-fun d!1652505 () Bool)

(declare-fun lt!2106234 () List!59216)

(assert (=> d!1652505 (= (++!12987 lt!2106103 lt!2106234) knownP!20)))

(declare-fun e!3189067 () List!59216)

(assert (=> d!1652505 (= lt!2106234 e!3189067)))

(declare-fun c!878527 () Bool)

(assert (=> d!1652505 (= c!878527 (is-Cons!59092 lt!2106103))))

(assert (=> d!1652505 (>= (size!39468 knownP!20) (size!39468 lt!2106103))))

(assert (=> d!1652505 (= (getSuffix!3241 knownP!20 lt!2106103) lt!2106234)))

(declare-fun b!5113252 () Bool)

(assert (=> b!5113252 (= e!3189067 (getSuffix!3241 (tail!10031 knownP!20) (t!372217 lt!2106103)))))

(declare-fun b!5113253 () Bool)

(assert (=> b!5113253 (= e!3189067 knownP!20)))

(assert (= (and d!1652505 c!878527) b!5113252))

(assert (= (and d!1652505 (not c!878527)) b!5113253))

(declare-fun m!6171442 () Bool)

(assert (=> d!1652505 m!6171442))

(assert (=> d!1652505 m!6171128))

(assert (=> d!1652505 m!6171414))

(assert (=> b!5113252 m!6171382))

(assert (=> b!5113252 m!6171382))

(declare-fun m!6171444 () Bool)

(assert (=> b!5113252 m!6171444))

(assert (=> b!5113037 d!1652505))

(declare-fun b!5113255 () Bool)

(declare-fun e!3189069 () List!59216)

(assert (=> b!5113255 (= e!3189069 (Cons!59092 (h!65540 testedP!265) (++!12987 (t!372217 testedP!265) (Cons!59092 lt!2106100 Nil!59092))))))

(declare-fun e!3189068 () Bool)

(declare-fun lt!2106235 () List!59216)

(declare-fun b!5113257 () Bool)

(assert (=> b!5113257 (= e!3189068 (or (not (= (Cons!59092 lt!2106100 Nil!59092) Nil!59092)) (= lt!2106235 testedP!265)))))

(declare-fun d!1652507 () Bool)

(assert (=> d!1652507 e!3189068))

(declare-fun res!2176594 () Bool)

(assert (=> d!1652507 (=> (not res!2176594) (not e!3189068))))

(assert (=> d!1652507 (= res!2176594 (= (content!10502 lt!2106235) (set.union (content!10502 testedP!265) (content!10502 (Cons!59092 lt!2106100 Nil!59092)))))))

(assert (=> d!1652507 (= lt!2106235 e!3189069)))

(declare-fun c!878528 () Bool)

(assert (=> d!1652507 (= c!878528 (is-Nil!59092 testedP!265))))

(assert (=> d!1652507 (= (++!12987 testedP!265 (Cons!59092 lt!2106100 Nil!59092)) lt!2106235)))

(declare-fun b!5113254 () Bool)

(assert (=> b!5113254 (= e!3189069 (Cons!59092 lt!2106100 Nil!59092))))

(declare-fun b!5113256 () Bool)

(declare-fun res!2176593 () Bool)

(assert (=> b!5113256 (=> (not res!2176593) (not e!3189068))))

(assert (=> b!5113256 (= res!2176593 (= (size!39468 lt!2106235) (+ (size!39468 testedP!265) (size!39468 (Cons!59092 lt!2106100 Nil!59092)))))))

(assert (= (and d!1652507 c!878528) b!5113254))

(assert (= (and d!1652507 (not c!878528)) b!5113255))

(assert (= (and d!1652507 res!2176594) b!5113256))

(assert (= (and b!5113256 res!2176593) b!5113257))

(declare-fun m!6171446 () Bool)

(assert (=> b!5113255 m!6171446))

(declare-fun m!6171448 () Bool)

(assert (=> d!1652507 m!6171448))

(assert (=> d!1652507 m!6171354))

(declare-fun m!6171450 () Bool)

(assert (=> d!1652507 m!6171450))

(declare-fun m!6171452 () Bool)

(assert (=> b!5113256 m!6171452))

(assert (=> b!5113256 m!6171126))

(declare-fun m!6171454 () Bool)

(assert (=> b!5113256 m!6171454))

(assert (=> b!5113037 d!1652507))

(declare-fun d!1652509 () Bool)

(assert (=> d!1652509 (= (derivationZipper!61 baseZ!46 (++!12987 testedP!265 (Cons!59092 lt!2106100 Nil!59092))) (derivationStepZipper!797 z!4463 lt!2106100))))

(declare-fun lt!2106238 () Unit!150203)

(declare-fun choose!37510 ((Set Context!7092) (Set Context!7092) List!59216 C!28590) Unit!150203)

(assert (=> d!1652509 (= lt!2106238 (choose!37510 baseZ!46 z!4463 testedP!265 lt!2106100))))

(assert (=> d!1652509 (= (derivationZipper!61 baseZ!46 testedP!265) z!4463)))

(assert (=> d!1652509 (= (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!22 baseZ!46 z!4463 testedP!265 lt!2106100) lt!2106238)))

(declare-fun bs!1192195 () Bool)

(assert (= bs!1192195 d!1652509))

(assert (=> bs!1192195 m!6171100))

(assert (=> bs!1192195 m!6171114))

(assert (=> bs!1192195 m!6171114))

(declare-fun m!6171456 () Bool)

(assert (=> bs!1192195 m!6171456))

(declare-fun m!6171458 () Bool)

(assert (=> bs!1192195 m!6171458))

(assert (=> bs!1192195 m!6171096))

(assert (=> b!5113037 d!1652509))

(declare-fun b!5113259 () Bool)

(declare-fun e!3189071 () List!59216)

(assert (=> b!5113259 (= e!3189071 (Cons!59092 (h!65540 testedP!265) (++!12987 (t!372217 testedP!265) lt!2106093)))))

(declare-fun lt!2106239 () List!59216)

(declare-fun e!3189070 () Bool)

(declare-fun b!5113261 () Bool)

(assert (=> b!5113261 (= e!3189070 (or (not (= lt!2106093 Nil!59092)) (= lt!2106239 testedP!265)))))

(declare-fun d!1652511 () Bool)

(assert (=> d!1652511 e!3189070))

(declare-fun res!2176596 () Bool)

(assert (=> d!1652511 (=> (not res!2176596) (not e!3189070))))

(assert (=> d!1652511 (= res!2176596 (= (content!10502 lt!2106239) (set.union (content!10502 testedP!265) (content!10502 lt!2106093))))))

(assert (=> d!1652511 (= lt!2106239 e!3189071)))

(declare-fun c!878530 () Bool)

(assert (=> d!1652511 (= c!878530 (is-Nil!59092 testedP!265))))

(assert (=> d!1652511 (= (++!12987 testedP!265 lt!2106093) lt!2106239)))

(declare-fun b!5113258 () Bool)

(assert (=> b!5113258 (= e!3189071 lt!2106093)))

(declare-fun b!5113260 () Bool)

(declare-fun res!2176595 () Bool)

(assert (=> b!5113260 (=> (not res!2176595) (not e!3189070))))

(assert (=> b!5113260 (= res!2176595 (= (size!39468 lt!2106239) (+ (size!39468 testedP!265) (size!39468 lt!2106093))))))

(assert (= (and d!1652511 c!878530) b!5113258))

(assert (= (and d!1652511 (not c!878530)) b!5113259))

(assert (= (and d!1652511 res!2176596) b!5113260))

(assert (= (and b!5113260 res!2176595) b!5113261))

(declare-fun m!6171460 () Bool)

(assert (=> b!5113259 m!6171460))

(declare-fun m!6171462 () Bool)

(assert (=> d!1652511 m!6171462))

(assert (=> d!1652511 m!6171354))

(declare-fun m!6171464 () Bool)

(assert (=> d!1652511 m!6171464))

(declare-fun m!6171466 () Bool)

(assert (=> b!5113260 m!6171466))

(assert (=> b!5113260 m!6171126))

(declare-fun m!6171468 () Bool)

(assert (=> b!5113260 m!6171468))

(assert (=> b!5113036 d!1652511))

(declare-fun b!5113262 () Bool)

(declare-fun e!3189072 () Bool)

(declare-fun e!3189074 () Bool)

(assert (=> b!5113262 (= e!3189072 e!3189074)))

(declare-fun res!2176598 () Bool)

(assert (=> b!5113262 (=> (not res!2176598) (not e!3189074))))

(assert (=> b!5113262 (= res!2176598 (not (is-Nil!59092 input!5745)))))

(declare-fun b!5113265 () Bool)

(declare-fun e!3189073 () Bool)

(assert (=> b!5113265 (= e!3189073 (>= (size!39468 input!5745) (size!39468 testedP!265)))))

(declare-fun b!5113264 () Bool)

(assert (=> b!5113264 (= e!3189074 (isPrefix!5567 (tail!10031 testedP!265) (tail!10031 input!5745)))))

(declare-fun d!1652513 () Bool)

(assert (=> d!1652513 e!3189073))

(declare-fun res!2176599 () Bool)

(assert (=> d!1652513 (=> res!2176599 e!3189073)))

(declare-fun lt!2106240 () Bool)

(assert (=> d!1652513 (= res!2176599 (not lt!2106240))))

(assert (=> d!1652513 (= lt!2106240 e!3189072)))

(declare-fun res!2176597 () Bool)

(assert (=> d!1652513 (=> res!2176597 e!3189072)))

(assert (=> d!1652513 (= res!2176597 (is-Nil!59092 testedP!265))))

(assert (=> d!1652513 (= (isPrefix!5567 testedP!265 input!5745) lt!2106240)))

(declare-fun b!5113263 () Bool)

(declare-fun res!2176600 () Bool)

(assert (=> b!5113263 (=> (not res!2176600) (not e!3189074))))

(assert (=> b!5113263 (= res!2176600 (= (head!10890 testedP!265) (head!10890 input!5745)))))

(assert (= (and d!1652513 (not res!2176597)) b!5113262))

(assert (= (and b!5113262 res!2176598) b!5113263))

(assert (= (and b!5113263 res!2176600) b!5113264))

(assert (= (and d!1652513 (not res!2176599)) b!5113265))

(assert (=> b!5113265 m!6171148))

(assert (=> b!5113265 m!6171126))

(assert (=> b!5113264 m!6171386))

(assert (=> b!5113264 m!6171398))

(assert (=> b!5113264 m!6171386))

(assert (=> b!5113264 m!6171398))

(declare-fun m!6171470 () Bool)

(assert (=> b!5113264 m!6171470))

(assert (=> b!5113263 m!6171390))

(assert (=> b!5113263 m!6171440))

(assert (=> start!539350 d!1652513))

(declare-fun d!1652515 () Bool)

(declare-fun c!878531 () Bool)

(assert (=> d!1652515 (= c!878531 (isEmpty!31879 knownP!20))))

(declare-fun e!3189075 () Bool)

(assert (=> d!1652515 (= (matchZipper!830 baseZ!46 knownP!20) e!3189075)))

(declare-fun b!5113266 () Bool)

(assert (=> b!5113266 (= e!3189075 (nullableZipper!999 baseZ!46))))

(declare-fun b!5113267 () Bool)

(assert (=> b!5113267 (= e!3189075 (matchZipper!830 (derivationStepZipper!797 baseZ!46 (head!10890 knownP!20)) (tail!10031 knownP!20)))))

(assert (= (and d!1652515 c!878531) b!5113266))

(assert (= (and d!1652515 (not c!878531)) b!5113267))

(declare-fun m!6171472 () Bool)

(assert (=> d!1652515 m!6171472))

(declare-fun m!6171474 () Bool)

(assert (=> b!5113266 m!6171474))

(assert (=> b!5113267 m!6171392))

(assert (=> b!5113267 m!6171392))

(declare-fun m!6171476 () Bool)

(assert (=> b!5113267 m!6171476))

(assert (=> b!5113267 m!6171382))

(assert (=> b!5113267 m!6171476))

(assert (=> b!5113267 m!6171382))

(declare-fun m!6171478 () Bool)

(assert (=> b!5113267 m!6171478))

(assert (=> b!5113047 d!1652515))

(declare-fun b!5113269 () Bool)

(declare-fun e!3189077 () List!59216)

(assert (=> b!5113269 (= e!3189077 (Cons!59092 (h!65540 testedP!265) (++!12987 (t!372217 testedP!265) lt!2106101)))))

(declare-fun b!5113271 () Bool)

(declare-fun lt!2106241 () List!59216)

(declare-fun e!3189076 () Bool)

(assert (=> b!5113271 (= e!3189076 (or (not (= lt!2106101 Nil!59092)) (= lt!2106241 testedP!265)))))

(declare-fun d!1652517 () Bool)

(assert (=> d!1652517 e!3189076))

(declare-fun res!2176602 () Bool)

(assert (=> d!1652517 (=> (not res!2176602) (not e!3189076))))

(assert (=> d!1652517 (= res!2176602 (= (content!10502 lt!2106241) (set.union (content!10502 testedP!265) (content!10502 lt!2106101))))))

(assert (=> d!1652517 (= lt!2106241 e!3189077)))

(declare-fun c!878532 () Bool)

(assert (=> d!1652517 (= c!878532 (is-Nil!59092 testedP!265))))

(assert (=> d!1652517 (= (++!12987 testedP!265 lt!2106101) lt!2106241)))

(declare-fun b!5113268 () Bool)

(assert (=> b!5113268 (= e!3189077 lt!2106101)))

(declare-fun b!5113270 () Bool)

(declare-fun res!2176601 () Bool)

(assert (=> b!5113270 (=> (not res!2176601) (not e!3189076))))

(assert (=> b!5113270 (= res!2176601 (= (size!39468 lt!2106241) (+ (size!39468 testedP!265) (size!39468 lt!2106101))))))

(assert (= (and d!1652517 c!878532) b!5113268))

(assert (= (and d!1652517 (not c!878532)) b!5113269))

(assert (= (and d!1652517 res!2176602) b!5113270))

(assert (= (and b!5113270 res!2176601) b!5113271))

(declare-fun m!6171480 () Bool)

(assert (=> b!5113269 m!6171480))

(declare-fun m!6171482 () Bool)

(assert (=> d!1652517 m!6171482))

(assert (=> d!1652517 m!6171354))

(declare-fun m!6171484 () Bool)

(assert (=> d!1652517 m!6171484))

(declare-fun m!6171486 () Bool)

(assert (=> b!5113270 m!6171486))

(assert (=> b!5113270 m!6171126))

(declare-fun m!6171488 () Bool)

(assert (=> b!5113270 m!6171488))

(assert (=> b!5113054 d!1652517))

(declare-fun b!5113273 () Bool)

(declare-fun e!3189079 () List!59216)

(assert (=> b!5113273 (= e!3189079 (Cons!59092 (h!65540 lt!2106095) (++!12987 (t!372217 lt!2106095) lt!2106088)))))

(declare-fun lt!2106242 () List!59216)

(declare-fun b!5113275 () Bool)

(declare-fun e!3189078 () Bool)

(assert (=> b!5113275 (= e!3189078 (or (not (= lt!2106088 Nil!59092)) (= lt!2106242 lt!2106095)))))

(declare-fun d!1652519 () Bool)

(assert (=> d!1652519 e!3189078))

(declare-fun res!2176604 () Bool)

(assert (=> d!1652519 (=> (not res!2176604) (not e!3189078))))

(assert (=> d!1652519 (= res!2176604 (= (content!10502 lt!2106242) (set.union (content!10502 lt!2106095) (content!10502 lt!2106088))))))

(assert (=> d!1652519 (= lt!2106242 e!3189079)))

(declare-fun c!878533 () Bool)

(assert (=> d!1652519 (= c!878533 (is-Nil!59092 lt!2106095))))

(assert (=> d!1652519 (= (++!12987 lt!2106095 lt!2106088) lt!2106242)))

(declare-fun b!5113272 () Bool)

(assert (=> b!5113272 (= e!3189079 lt!2106088)))

(declare-fun b!5113274 () Bool)

(declare-fun res!2176603 () Bool)

(assert (=> b!5113274 (=> (not res!2176603) (not e!3189078))))

(assert (=> b!5113274 (= res!2176603 (= (size!39468 lt!2106242) (+ (size!39468 lt!2106095) (size!39468 lt!2106088))))))

(assert (= (and d!1652519 c!878533) b!5113272))

(assert (= (and d!1652519 (not c!878533)) b!5113273))

(assert (= (and d!1652519 res!2176604) b!5113274))

(assert (= (and b!5113274 res!2176603) b!5113275))

(declare-fun m!6171490 () Bool)

(assert (=> b!5113273 m!6171490))

(declare-fun m!6171492 () Bool)

(assert (=> d!1652519 m!6171492))

(assert (=> d!1652519 m!6171356))

(assert (=> d!1652519 m!6171342))

(declare-fun m!6171494 () Bool)

(assert (=> b!5113274 m!6171494))

(assert (=> b!5113274 m!6171360))

(assert (=> b!5113274 m!6171348))

(assert (=> b!5113054 d!1652519))

(declare-fun d!1652521 () Bool)

(assert (=> d!1652521 (= (++!12987 (++!12987 testedP!265 lt!2106095) lt!2106088) (++!12987 testedP!265 (++!12987 lt!2106095 lt!2106088)))))

(declare-fun lt!2106245 () Unit!150203)

(declare-fun choose!37514 (List!59216 List!59216 List!59216) Unit!150203)

(assert (=> d!1652521 (= lt!2106245 (choose!37514 testedP!265 lt!2106095 lt!2106088))))

(assert (=> d!1652521 (= (lemmaConcatAssociativity!2745 testedP!265 lt!2106095 lt!2106088) lt!2106245)))

(declare-fun bs!1192196 () Bool)

(assert (= bs!1192196 d!1652521))

(assert (=> bs!1192196 m!6171090))

(declare-fun m!6171496 () Bool)

(assert (=> bs!1192196 m!6171496))

(assert (=> bs!1192196 m!6171090))

(declare-fun m!6171498 () Bool)

(assert (=> bs!1192196 m!6171498))

(assert (=> bs!1192196 m!6171130))

(assert (=> bs!1192196 m!6171130))

(assert (=> bs!1192196 m!6171132))

(assert (=> b!5113054 d!1652521))

(declare-fun bs!1192197 () Bool)

(declare-fun d!1652523 () Bool)

(assert (= bs!1192197 (and d!1652523 d!1652469)))

(declare-fun lambda!250592 () Int)

(assert (=> bs!1192197 (= lambda!250592 lambda!250588)))

(assert (=> d!1652523 (= (inv!78587 setElem!29896) (forall!13554 (exprs!4046 setElem!29896) lambda!250592))))

(declare-fun bs!1192198 () Bool)

(assert (= bs!1192198 d!1652523))

(declare-fun m!6171500 () Bool)

(assert (=> bs!1192198 m!6171500))

(assert (=> setNonEmpty!29895 d!1652523))

(declare-fun d!1652525 () Bool)

(declare-fun c!878534 () Bool)

(assert (=> d!1652525 (= c!878534 (is-Cons!59092 testedP!265))))

(declare-fun e!3189080 () (Set Context!7092))

(assert (=> d!1652525 (= (derivationZipper!61 baseZ!46 testedP!265) e!3189080)))

(declare-fun b!5113276 () Bool)

(assert (=> b!5113276 (= e!3189080 (derivationZipper!61 (derivationStepZipper!797 baseZ!46 (h!65540 testedP!265)) (t!372217 testedP!265)))))

(declare-fun b!5113277 () Bool)

(assert (=> b!5113277 (= e!3189080 baseZ!46)))

(assert (= (and d!1652525 c!878534) b!5113276))

(assert (= (and d!1652525 (not c!878534)) b!5113277))

(declare-fun m!6171502 () Bool)

(assert (=> b!5113276 m!6171502))

(assert (=> b!5113276 m!6171502))

(declare-fun m!6171504 () Bool)

(assert (=> b!5113276 m!6171504))

(assert (=> b!5113045 d!1652525))

(declare-fun b!5113278 () Bool)

(declare-fun e!3189081 () Bool)

(declare-fun e!3189083 () Bool)

(assert (=> b!5113278 (= e!3189081 e!3189083)))

(declare-fun res!2176606 () Bool)

(assert (=> b!5113278 (=> (not res!2176606) (not e!3189083))))

(assert (=> b!5113278 (= res!2176606 (not (is-Nil!59092 input!5745)))))

(declare-fun b!5113281 () Bool)

(declare-fun e!3189082 () Bool)

(assert (=> b!5113281 (= e!3189082 (>= (size!39468 input!5745) (size!39468 knownP!20)))))

(declare-fun b!5113280 () Bool)

(assert (=> b!5113280 (= e!3189083 (isPrefix!5567 (tail!10031 knownP!20) (tail!10031 input!5745)))))

(declare-fun d!1652527 () Bool)

(assert (=> d!1652527 e!3189082))

(declare-fun res!2176607 () Bool)

(assert (=> d!1652527 (=> res!2176607 e!3189082)))

(declare-fun lt!2106246 () Bool)

(assert (=> d!1652527 (= res!2176607 (not lt!2106246))))

(assert (=> d!1652527 (= lt!2106246 e!3189081)))

(declare-fun res!2176605 () Bool)

(assert (=> d!1652527 (=> res!2176605 e!3189081)))

(assert (=> d!1652527 (= res!2176605 (is-Nil!59092 knownP!20))))

(assert (=> d!1652527 (= (isPrefix!5567 knownP!20 input!5745) lt!2106246)))

(declare-fun b!5113279 () Bool)

(declare-fun res!2176608 () Bool)

(assert (=> b!5113279 (=> (not res!2176608) (not e!3189083))))

(assert (=> b!5113279 (= res!2176608 (= (head!10890 knownP!20) (head!10890 input!5745)))))

(assert (= (and d!1652527 (not res!2176605)) b!5113278))

(assert (= (and b!5113278 res!2176606) b!5113279))

(assert (= (and b!5113279 res!2176608) b!5113280))

(assert (= (and d!1652527 (not res!2176607)) b!5113281))

(assert (=> b!5113281 m!6171148))

(assert (=> b!5113281 m!6171128))

(assert (=> b!5113280 m!6171382))

(assert (=> b!5113280 m!6171398))

(assert (=> b!5113280 m!6171382))

(assert (=> b!5113280 m!6171398))

(declare-fun m!6171506 () Bool)

(assert (=> b!5113280 m!6171506))

(assert (=> b!5113279 m!6171392))

(assert (=> b!5113279 m!6171440))

(assert (=> b!5113053 d!1652527))

(declare-fun b!5113286 () Bool)

(declare-fun e!3189086 () Bool)

(declare-fun tp!1426646 () Bool)

(declare-fun tp!1426647 () Bool)

(assert (=> b!5113286 (= e!3189086 (and tp!1426646 tp!1426647))))

(assert (=> b!5113043 (= tp!1426619 e!3189086)))

(assert (= (and b!5113043 (is-Cons!59091 (exprs!4046 setElem!29896))) b!5113286))

(declare-fun b!5113291 () Bool)

(declare-fun e!3189089 () Bool)

(declare-fun tp!1426650 () Bool)

(assert (=> b!5113291 (= e!3189089 (and tp_is_empty!37597 tp!1426650))))

(assert (=> b!5113046 (= tp!1426614 e!3189089)))

(assert (= (and b!5113046 (is-Cons!59092 (t!372217 input!5745))) b!5113291))

(declare-fun b!5113292 () Bool)

(declare-fun e!3189090 () Bool)

(declare-fun tp!1426651 () Bool)

(assert (=> b!5113292 (= e!3189090 (and tp_is_empty!37597 tp!1426651))))

(assert (=> b!5113041 (= tp!1426618 e!3189090)))

(assert (= (and b!5113041 (is-Cons!59092 (t!372217 knownP!20))) b!5113292))

(declare-fun condSetEmpty!29905 () Bool)

(assert (=> setNonEmpty!29895 (= condSetEmpty!29905 (= setRest!29895 (as set.empty (Set Context!7092))))))

(declare-fun setRes!29905 () Bool)

(assert (=> setNonEmpty!29895 (= tp!1426620 setRes!29905)))

(declare-fun setIsEmpty!29905 () Bool)

(assert (=> setIsEmpty!29905 setRes!29905))

(declare-fun tp!1426656 () Bool)

(declare-fun e!3189093 () Bool)

(declare-fun setElem!29905 () Context!7092)

(declare-fun setNonEmpty!29905 () Bool)

(assert (=> setNonEmpty!29905 (= setRes!29905 (and tp!1426656 (inv!78587 setElem!29905) e!3189093))))

(declare-fun setRest!29905 () (Set Context!7092))

(assert (=> setNonEmpty!29905 (= setRest!29895 (set.union (set.insert setElem!29905 (as set.empty (Set Context!7092))) setRest!29905))))

(declare-fun b!5113297 () Bool)

(declare-fun tp!1426657 () Bool)

(assert (=> b!5113297 (= e!3189093 tp!1426657)))

(assert (= (and setNonEmpty!29895 condSetEmpty!29905) setIsEmpty!29905))

(assert (= (and setNonEmpty!29895 (not condSetEmpty!29905)) setNonEmpty!29905))

(assert (= setNonEmpty!29905 b!5113297))

(declare-fun m!6171508 () Bool)

(assert (=> setNonEmpty!29905 m!6171508))

(declare-fun condSetEmpty!29906 () Bool)

(assert (=> setNonEmpty!29896 (= condSetEmpty!29906 (= setRest!29896 (as set.empty (Set Context!7092))))))

(declare-fun setRes!29906 () Bool)

(assert (=> setNonEmpty!29896 (= tp!1426616 setRes!29906)))

(declare-fun setIsEmpty!29906 () Bool)

(assert (=> setIsEmpty!29906 setRes!29906))

(declare-fun setNonEmpty!29906 () Bool)

(declare-fun e!3189094 () Bool)

(declare-fun tp!1426658 () Bool)

(declare-fun setElem!29906 () Context!7092)

(assert (=> setNonEmpty!29906 (= setRes!29906 (and tp!1426658 (inv!78587 setElem!29906) e!3189094))))

(declare-fun setRest!29906 () (Set Context!7092))

(assert (=> setNonEmpty!29906 (= setRest!29896 (set.union (set.insert setElem!29906 (as set.empty (Set Context!7092))) setRest!29906))))

(declare-fun b!5113298 () Bool)

(declare-fun tp!1426659 () Bool)

(assert (=> b!5113298 (= e!3189094 tp!1426659)))

(assert (= (and setNonEmpty!29896 condSetEmpty!29906) setIsEmpty!29906))

(assert (= (and setNonEmpty!29896 (not condSetEmpty!29906)) setNonEmpty!29906))

(assert (= setNonEmpty!29906 b!5113298))

(declare-fun m!6171510 () Bool)

(assert (=> setNonEmpty!29906 m!6171510))

(declare-fun b!5113299 () Bool)

(declare-fun e!3189095 () Bool)

(declare-fun tp!1426660 () Bool)

(declare-fun tp!1426661 () Bool)

(assert (=> b!5113299 (= e!3189095 (and tp!1426660 tp!1426661))))

(assert (=> b!5113044 (= tp!1426617 e!3189095)))

(assert (= (and b!5113044 (is-Cons!59091 (exprs!4046 setElem!29895))) b!5113299))

(declare-fun b!5113300 () Bool)

(declare-fun e!3189096 () Bool)

(declare-fun tp!1426662 () Bool)

(assert (=> b!5113300 (= e!3189096 (and tp_is_empty!37597 tp!1426662))))

(assert (=> b!5113048 (= tp!1426615 e!3189096)))

(assert (= (and b!5113048 (is-Cons!59092 (t!372217 testedP!265))) b!5113300))

(push 1)

(assert (not b!5113264))

(assert (not b!5113256))

(assert (not b!5113274))

(assert (not d!1652465))

(assert (not b!5113188))

(assert (not d!1652519))

(assert (not b!5113286))

(assert (not setNonEmpty!29905))

(assert (not b!5113214))

(assert (not b!5113208))

(assert (not d!1652505))

(assert (not b!5113280))

(assert (not d!1652479))

(assert (not b!5113263))

(assert (not b!5113252))

(assert tp_is_empty!37597)

(assert (not b!5113209))

(assert (not b!5113251))

(assert (not d!1652431))

(assert (not b!5113266))

(assert (not b!5113191))

(assert (not d!1652521))

(assert (not b!5113246))

(assert (not b!5113201))

(assert (not b!5113298))

(assert (not b!5113187))

(assert (not d!1652497))

(assert (not d!1652491))

(assert (not bm!356438))

(assert (not b!5113203))

(assert (not b!5113269))

(assert (not d!1652501))

(assert (not d!1652515))

(assert (not b!5113281))

(assert (not d!1652517))

(assert (not b!5113265))

(assert (not d!1652469))

(assert (not d!1652509))

(assert (not d!1652483))

(assert (not b!5113291))

(assert (not d!1652523))

(assert (not b!5113238))

(assert (not b!5113270))

(assert (not b!5113292))

(assert (not d!1652477))

(assert (not b!5113279))

(assert (not b!5113244))

(assert (not b!5113300))

(assert (not b!5113177))

(assert (not b!5113297))

(assert (not d!1652467))

(assert (not b!5113249))

(assert (not d!1652433))

(assert (not b!5113176))

(assert (not setNonEmpty!29906))

(assert (not b!5113299))

(assert (not b!5113226))

(assert (not b!5113255))

(assert (not b!5113250))

(assert (not d!1652489))

(assert (not b!5113231))

(assert (not b!5113225))

(assert (not b!5113227))

(assert (not b!5113260))

(assert (not b!5113192))

(assert (not b!5113228))

(assert (not b!5113276))

(assert (not d!1652511))

(assert (not b!5113267))

(assert (not b!5113239))

(assert (not bm!356437))

(assert (not d!1652507))

(assert (not d!1652487))

(assert (not b!5113199))

(assert (not b!5113273))

(assert (not b!5113232))

(assert (not d!1652485))

(assert (not b!5113259))

(assert (not b!5113237))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

