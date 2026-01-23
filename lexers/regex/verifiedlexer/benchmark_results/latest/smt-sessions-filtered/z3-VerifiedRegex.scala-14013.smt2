; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!740474 () Bool)

(assert start!740474)

(declare-fun res!3101178 () Bool)

(declare-fun e!4608754 () Bool)

(assert (=> start!740474 (=> (not res!3101178) (not e!4608754))))

(declare-datatypes ((C!41968 0))(
  ( (C!41969 (val!31424 Int)) )
))
(declare-datatypes ((Regex!20821 0))(
  ( (ElementMatch!20821 (c!1433568 C!41968)) (Concat!29666 (regOne!42154 Regex!20821) (regTwo!42154 Regex!20821)) (EmptyExpr!20821) (Star!20821 (reg!21150 Regex!20821)) (EmptyLang!20821) (Union!20821 (regOne!42155 Regex!20821) (regTwo!42155 Regex!20821)) )
))
(declare-fun r1!6279 () Regex!20821)

(declare-fun validRegex!11235 (Regex!20821) Bool)

(assert (=> start!740474 (= res!3101178 (validRegex!11235 r1!6279))))

(assert (=> start!740474 e!4608754))

(declare-fun e!4608750 () Bool)

(assert (=> start!740474 e!4608750))

(declare-fun e!4608749 () Bool)

(assert (=> start!740474 e!4608749))

(declare-fun e!4608755 () Bool)

(assert (=> start!740474 e!4608755))

(declare-fun b!7780040 () Bool)

(declare-fun e!4608747 () Bool)

(declare-fun e!4608753 () Bool)

(assert (=> b!7780040 (= e!4608747 (not e!4608753))))

(declare-fun res!3101171 () Bool)

(assert (=> b!7780040 (=> res!3101171 e!4608753)))

(declare-fun lt!2672819 () Bool)

(assert (=> b!7780040 (= res!3101171 (not lt!2672819))))

(declare-datatypes ((List!73660 0))(
  ( (Nil!73536) (Cons!73536 (h!79984 C!41968) (t!388395 List!73660)) )
))
(declare-fun s!14292 () List!73660)

(declare-fun derivative!549 (Regex!20821 List!73660) Regex!20821)

(assert (=> b!7780040 (= (derivative!549 EmptyLang!20821 (t!388395 s!14292)) EmptyLang!20821)))

(declare-datatypes ((Unit!168532 0))(
  ( (Unit!168533) )
))
(declare-fun lt!2672814 () Unit!168532)

(declare-fun lemmaEmptyLangDerivativeIsAFixPoint!84 (Regex!20821 List!73660) Unit!168532)

(assert (=> b!7780040 (= lt!2672814 (lemmaEmptyLangDerivativeIsAFixPoint!84 EmptyLang!20821 (t!388395 s!14292)))))

(declare-fun e!4608751 () Bool)

(assert (=> b!7780040 e!4608751))

(declare-fun res!3101175 () Bool)

(assert (=> b!7780040 (=> res!3101175 e!4608751)))

(assert (=> b!7780040 (= res!3101175 lt!2672819)))

(declare-fun lt!2672816 () Regex!20821)

(declare-fun matchR!10281 (Regex!20821 List!73660) Bool)

(assert (=> b!7780040 (= lt!2672819 (matchR!10281 lt!2672816 (t!388395 s!14292)))))

(declare-fun lt!2672813 () Unit!168532)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!390 (Regex!20821 Regex!20821 List!73660) Unit!168532)

(assert (=> b!7780040 (= lt!2672813 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!390 lt!2672816 EmptyLang!20821 (t!388395 s!14292)))))

(declare-fun b!7780041 () Bool)

(declare-fun tp_is_empty!51997 () Bool)

(assert (=> b!7780041 (= e!4608750 tp_is_empty!51997)))

(declare-fun b!7780042 () Bool)

(declare-fun tp!2286707 () Bool)

(assert (=> b!7780042 (= e!4608755 (and tp_is_empty!51997 tp!2286707))))

(declare-fun b!7780043 () Bool)

(declare-fun res!3101174 () Bool)

(assert (=> b!7780043 (=> (not res!3101174) (not e!4608754))))

(declare-fun r2!6217 () Regex!20821)

(assert (=> b!7780043 (= res!3101174 (validRegex!11235 r2!6217))))

(declare-fun b!7780044 () Bool)

(declare-fun tp!2286710 () Bool)

(declare-fun tp!2286713 () Bool)

(assert (=> b!7780044 (= e!4608750 (and tp!2286710 tp!2286713))))

(declare-fun b!7780045 () Bool)

(declare-fun e!4608748 () Bool)

(assert (=> b!7780045 (= e!4608754 e!4608748)))

(declare-fun res!3101172 () Bool)

(assert (=> b!7780045 (=> (not res!3101172) (not e!4608748))))

(declare-fun lt!2672815 () Regex!20821)

(assert (=> b!7780045 (= res!3101172 (matchR!10281 lt!2672815 s!14292))))

(assert (=> b!7780045 (= lt!2672815 (Concat!29666 r1!6279 r2!6217))))

(declare-fun b!7780046 () Bool)

(declare-fun res!3101173 () Bool)

(declare-fun e!4608752 () Bool)

(assert (=> b!7780046 (=> (not res!3101173) (not e!4608752))))

(declare-fun nullable!9209 (Regex!20821) Bool)

(assert (=> b!7780046 (= res!3101173 (not (nullable!9209 r1!6279)))))

(declare-fun b!7780047 () Bool)

(assert (=> b!7780047 (= e!4608748 e!4608752)))

(declare-fun res!3101170 () Bool)

(assert (=> b!7780047 (=> (not res!3101170) (not e!4608752))))

(declare-fun lt!2672817 () Regex!20821)

(assert (=> b!7780047 (= res!3101170 (matchR!10281 lt!2672817 (t!388395 s!14292)))))

(declare-fun derivativeStep!6164 (Regex!20821 C!41968) Regex!20821)

(assert (=> b!7780047 (= lt!2672817 (derivativeStep!6164 lt!2672815 (h!79984 s!14292)))))

(declare-fun b!7780048 () Bool)

(assert (=> b!7780048 (= e!4608752 e!4608747)))

(declare-fun res!3101177 () Bool)

(assert (=> b!7780048 (=> (not res!3101177) (not e!4608747))))

(assert (=> b!7780048 (= res!3101177 (= lt!2672817 (Union!20821 lt!2672816 EmptyLang!20821)))))

(declare-fun lt!2672820 () Regex!20821)

(assert (=> b!7780048 (= lt!2672816 (Concat!29666 lt!2672820 r2!6217))))

(assert (=> b!7780048 (= lt!2672820 (derivativeStep!6164 r1!6279 (h!79984 s!14292)))))

(declare-fun b!7780049 () Bool)

(assert (=> b!7780049 (= e!4608749 tp_is_empty!51997)))

(declare-fun b!7780050 () Bool)

(assert (=> b!7780050 (= e!4608753 (validRegex!11235 lt!2672820))))

(declare-datatypes ((tuple2!69896 0))(
  ( (tuple2!69897 (_1!38251 List!73660) (_2!38251 List!73660)) )
))
(declare-datatypes ((Option!17742 0))(
  ( (None!17741) (Some!17741 (v!54876 tuple2!69896)) )
))
(declare-fun isDefined!14354 (Option!17742) Bool)

(declare-fun findConcatSeparation!3772 (Regex!20821 Regex!20821 List!73660 List!73660 List!73660) Option!17742)

(assert (=> b!7780050 (isDefined!14354 (findConcatSeparation!3772 lt!2672820 r2!6217 Nil!73536 (t!388395 s!14292) (t!388395 s!14292)))))

(declare-fun lt!2672818 () Unit!168532)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!362 (Regex!20821 Regex!20821 List!73660) Unit!168532)

(assert (=> b!7780050 (= lt!2672818 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!362 lt!2672820 r2!6217 (t!388395 s!14292)))))

(declare-fun b!7780051 () Bool)

(declare-fun tp!2286712 () Bool)

(declare-fun tp!2286703 () Bool)

(assert (=> b!7780051 (= e!4608749 (and tp!2286712 tp!2286703))))

(declare-fun b!7780052 () Bool)

(declare-fun tp!2286709 () Bool)

(assert (=> b!7780052 (= e!4608749 tp!2286709)))

(declare-fun b!7780053 () Bool)

(declare-fun tp!2286708 () Bool)

(declare-fun tp!2286706 () Bool)

(assert (=> b!7780053 (= e!4608750 (and tp!2286708 tp!2286706))))

(declare-fun b!7780054 () Bool)

(assert (=> b!7780054 (= e!4608751 (matchR!10281 EmptyLang!20821 (t!388395 s!14292)))))

(declare-fun b!7780055 () Bool)

(declare-fun tp!2286711 () Bool)

(assert (=> b!7780055 (= e!4608750 tp!2286711)))

(declare-fun b!7780056 () Bool)

(declare-fun tp!2286704 () Bool)

(declare-fun tp!2286705 () Bool)

(assert (=> b!7780056 (= e!4608749 (and tp!2286704 tp!2286705))))

(declare-fun b!7780057 () Bool)

(declare-fun res!3101176 () Bool)

(assert (=> b!7780057 (=> (not res!3101176) (not e!4608748))))

(get-info :version)

(assert (=> b!7780057 (= res!3101176 ((_ is Cons!73536) s!14292))))

(assert (= (and start!740474 res!3101178) b!7780043))

(assert (= (and b!7780043 res!3101174) b!7780045))

(assert (= (and b!7780045 res!3101172) b!7780057))

(assert (= (and b!7780057 res!3101176) b!7780047))

(assert (= (and b!7780047 res!3101170) b!7780046))

(assert (= (and b!7780046 res!3101173) b!7780048))

(assert (= (and b!7780048 res!3101177) b!7780040))

(assert (= (and b!7780040 (not res!3101175)) b!7780054))

(assert (= (and b!7780040 (not res!3101171)) b!7780050))

(assert (= (and start!740474 ((_ is ElementMatch!20821) r1!6279)) b!7780041))

(assert (= (and start!740474 ((_ is Concat!29666) r1!6279)) b!7780044))

(assert (= (and start!740474 ((_ is Star!20821) r1!6279)) b!7780055))

(assert (= (and start!740474 ((_ is Union!20821) r1!6279)) b!7780053))

(assert (= (and start!740474 ((_ is ElementMatch!20821) r2!6217)) b!7780049))

(assert (= (and start!740474 ((_ is Concat!29666) r2!6217)) b!7780056))

(assert (= (and start!740474 ((_ is Star!20821) r2!6217)) b!7780052))

(assert (= (and start!740474 ((_ is Union!20821) r2!6217)) b!7780051))

(assert (= (and start!740474 ((_ is Cons!73536) s!14292)) b!7780042))

(declare-fun m!8228622 () Bool)

(assert (=> b!7780054 m!8228622))

(declare-fun m!8228624 () Bool)

(assert (=> b!7780043 m!8228624))

(declare-fun m!8228626 () Bool)

(assert (=> b!7780048 m!8228626))

(declare-fun m!8228628 () Bool)

(assert (=> start!740474 m!8228628))

(declare-fun m!8228630 () Bool)

(assert (=> b!7780047 m!8228630))

(declare-fun m!8228632 () Bool)

(assert (=> b!7780047 m!8228632))

(declare-fun m!8228634 () Bool)

(assert (=> b!7780040 m!8228634))

(declare-fun m!8228636 () Bool)

(assert (=> b!7780040 m!8228636))

(declare-fun m!8228638 () Bool)

(assert (=> b!7780040 m!8228638))

(declare-fun m!8228640 () Bool)

(assert (=> b!7780040 m!8228640))

(declare-fun m!8228642 () Bool)

(assert (=> b!7780046 m!8228642))

(declare-fun m!8228644 () Bool)

(assert (=> b!7780050 m!8228644))

(declare-fun m!8228646 () Bool)

(assert (=> b!7780050 m!8228646))

(assert (=> b!7780050 m!8228646))

(declare-fun m!8228648 () Bool)

(assert (=> b!7780050 m!8228648))

(declare-fun m!8228650 () Bool)

(assert (=> b!7780050 m!8228650))

(declare-fun m!8228652 () Bool)

(assert (=> b!7780045 m!8228652))

(check-sat (not b!7780051) (not b!7780048) (not b!7780056) (not b!7780042) (not b!7780055) (not b!7780047) (not b!7780045) tp_is_empty!51997 (not b!7780046) (not start!740474) (not b!7780043) (not b!7780040) (not b!7780050) (not b!7780044) (not b!7780053) (not b!7780054) (not b!7780052))
(check-sat)
(get-model)

(declare-fun b!7780114 () Bool)

(declare-fun e!4608786 () Bool)

(declare-fun e!4608788 () Bool)

(assert (=> b!7780114 (= e!4608786 e!4608788)))

(declare-fun c!1433582 () Bool)

(assert (=> b!7780114 (= c!1433582 ((_ is EmptyLang!20821) lt!2672817))))

(declare-fun b!7780115 () Bool)

(declare-fun e!4608784 () Bool)

(declare-fun e!4608787 () Bool)

(assert (=> b!7780115 (= e!4608784 e!4608787)))

(declare-fun res!3101216 () Bool)

(assert (=> b!7780115 (=> res!3101216 e!4608787)))

(declare-fun call!721115 () Bool)

(assert (=> b!7780115 (= res!3101216 call!721115)))

(declare-fun b!7780116 () Bool)

(declare-fun res!3101217 () Bool)

(declare-fun e!4608785 () Bool)

(assert (=> b!7780116 (=> (not res!3101217) (not e!4608785))))

(declare-fun isEmpty!42182 (List!73660) Bool)

(declare-fun tail!15453 (List!73660) List!73660)

(assert (=> b!7780116 (= res!3101217 (isEmpty!42182 (tail!15453 (t!388395 s!14292))))))

(declare-fun b!7780117 () Bool)

(declare-fun res!3101211 () Bool)

(declare-fun e!4608789 () Bool)

(assert (=> b!7780117 (=> res!3101211 e!4608789)))

(assert (=> b!7780117 (= res!3101211 e!4608785)))

(declare-fun res!3101218 () Bool)

(assert (=> b!7780117 (=> (not res!3101218) (not e!4608785))))

(declare-fun lt!2672825 () Bool)

(assert (=> b!7780117 (= res!3101218 lt!2672825)))

(declare-fun b!7780118 () Bool)

(declare-fun res!3101213 () Bool)

(assert (=> b!7780118 (=> (not res!3101213) (not e!4608785))))

(assert (=> b!7780118 (= res!3101213 (not call!721115))))

(declare-fun b!7780119 () Bool)

(declare-fun head!15912 (List!73660) C!41968)

(assert (=> b!7780119 (= e!4608785 (= (head!15912 (t!388395 s!14292)) (c!1433568 lt!2672817)))))

(declare-fun d!2345082 () Bool)

(assert (=> d!2345082 e!4608786))

(declare-fun c!1433581 () Bool)

(assert (=> d!2345082 (= c!1433581 ((_ is EmptyExpr!20821) lt!2672817))))

(declare-fun e!4608790 () Bool)

(assert (=> d!2345082 (= lt!2672825 e!4608790)))

(declare-fun c!1433583 () Bool)

(assert (=> d!2345082 (= c!1433583 (isEmpty!42182 (t!388395 s!14292)))))

(assert (=> d!2345082 (validRegex!11235 lt!2672817)))

(assert (=> d!2345082 (= (matchR!10281 lt!2672817 (t!388395 s!14292)) lt!2672825)))

(declare-fun b!7780120 () Bool)

(assert (=> b!7780120 (= e!4608790 (nullable!9209 lt!2672817))))

(declare-fun b!7780121 () Bool)

(declare-fun res!3101212 () Bool)

(assert (=> b!7780121 (=> res!3101212 e!4608787)))

(assert (=> b!7780121 (= res!3101212 (not (isEmpty!42182 (tail!15453 (t!388395 s!14292)))))))

(declare-fun b!7780122 () Bool)

(assert (=> b!7780122 (= e!4608787 (not (= (head!15912 (t!388395 s!14292)) (c!1433568 lt!2672817))))))

(declare-fun b!7780123 () Bool)

(assert (=> b!7780123 (= e!4608789 e!4608784)))

(declare-fun res!3101215 () Bool)

(assert (=> b!7780123 (=> (not res!3101215) (not e!4608784))))

(assert (=> b!7780123 (= res!3101215 (not lt!2672825))))

(declare-fun bm!721110 () Bool)

(assert (=> bm!721110 (= call!721115 (isEmpty!42182 (t!388395 s!14292)))))

(declare-fun b!7780124 () Bool)

(assert (=> b!7780124 (= e!4608788 (not lt!2672825))))

(declare-fun b!7780125 () Bool)

(assert (=> b!7780125 (= e!4608790 (matchR!10281 (derivativeStep!6164 lt!2672817 (head!15912 (t!388395 s!14292))) (tail!15453 (t!388395 s!14292))))))

(declare-fun b!7780126 () Bool)

(declare-fun res!3101214 () Bool)

(assert (=> b!7780126 (=> res!3101214 e!4608789)))

(assert (=> b!7780126 (= res!3101214 (not ((_ is ElementMatch!20821) lt!2672817)))))

(assert (=> b!7780126 (= e!4608788 e!4608789)))

(declare-fun b!7780127 () Bool)

(assert (=> b!7780127 (= e!4608786 (= lt!2672825 call!721115))))

(assert (= (and d!2345082 c!1433583) b!7780120))

(assert (= (and d!2345082 (not c!1433583)) b!7780125))

(assert (= (and d!2345082 c!1433581) b!7780127))

(assert (= (and d!2345082 (not c!1433581)) b!7780114))

(assert (= (and b!7780114 c!1433582) b!7780124))

(assert (= (and b!7780114 (not c!1433582)) b!7780126))

(assert (= (and b!7780126 (not res!3101214)) b!7780117))

(assert (= (and b!7780117 res!3101218) b!7780118))

(assert (= (and b!7780118 res!3101213) b!7780116))

(assert (= (and b!7780116 res!3101217) b!7780119))

(assert (= (and b!7780117 (not res!3101211)) b!7780123))

(assert (= (and b!7780123 res!3101215) b!7780115))

(assert (= (and b!7780115 (not res!3101216)) b!7780121))

(assert (= (and b!7780121 (not res!3101212)) b!7780122))

(assert (= (or b!7780127 b!7780115 b!7780118) bm!721110))

(declare-fun m!8228654 () Bool)

(assert (=> b!7780125 m!8228654))

(assert (=> b!7780125 m!8228654))

(declare-fun m!8228656 () Bool)

(assert (=> b!7780125 m!8228656))

(declare-fun m!8228658 () Bool)

(assert (=> b!7780125 m!8228658))

(assert (=> b!7780125 m!8228656))

(assert (=> b!7780125 m!8228658))

(declare-fun m!8228660 () Bool)

(assert (=> b!7780125 m!8228660))

(declare-fun m!8228662 () Bool)

(assert (=> bm!721110 m!8228662))

(assert (=> b!7780121 m!8228658))

(assert (=> b!7780121 m!8228658))

(declare-fun m!8228664 () Bool)

(assert (=> b!7780121 m!8228664))

(assert (=> d!2345082 m!8228662))

(declare-fun m!8228666 () Bool)

(assert (=> d!2345082 m!8228666))

(declare-fun m!8228668 () Bool)

(assert (=> b!7780120 m!8228668))

(assert (=> b!7780119 m!8228654))

(assert (=> b!7780116 m!8228658))

(assert (=> b!7780116 m!8228658))

(assert (=> b!7780116 m!8228664))

(assert (=> b!7780122 m!8228654))

(assert (=> b!7780047 d!2345082))

(declare-fun call!721137 () Regex!20821)

(declare-fun b!7780189 () Bool)

(declare-fun e!4608830 () Regex!20821)

(declare-fun call!721135 () Regex!20821)

(assert (=> b!7780189 (= e!4608830 (Union!20821 (Concat!29666 call!721137 (regTwo!42154 lt!2672815)) call!721135))))

(declare-fun b!7780190 () Bool)

(declare-fun c!1433606 () Bool)

(assert (=> b!7780190 (= c!1433606 ((_ is Union!20821) lt!2672815))))

(declare-fun e!4608829 () Regex!20821)

(declare-fun e!4608832 () Regex!20821)

(assert (=> b!7780190 (= e!4608829 e!4608832)))

(declare-fun b!7780191 () Bool)

(assert (=> b!7780191 (= e!4608829 (ite (= (h!79984 s!14292) (c!1433568 lt!2672815)) EmptyExpr!20821 EmptyLang!20821))))

(declare-fun b!7780192 () Bool)

(declare-fun c!1433605 () Bool)

(assert (=> b!7780192 (= c!1433605 (nullable!9209 (regOne!42154 lt!2672815)))))

(declare-fun e!4608833 () Regex!20821)

(assert (=> b!7780192 (= e!4608833 e!4608830)))

(declare-fun bm!721129 () Bool)

(assert (=> bm!721129 (= call!721137 (derivativeStep!6164 (ite c!1433606 (regOne!42155 lt!2672815) (regOne!42154 lt!2672815)) (h!79984 s!14292)))))

(declare-fun b!7780193 () Bool)

(assert (=> b!7780193 (= e!4608832 e!4608833)))

(declare-fun c!1433603 () Bool)

(assert (=> b!7780193 (= c!1433603 ((_ is Star!20821) lt!2672815))))

(declare-fun b!7780194 () Bool)

(assert (=> b!7780194 (= e!4608830 (Union!20821 (Concat!29666 call!721135 (regTwo!42154 lt!2672815)) EmptyLang!20821))))

(declare-fun b!7780195 () Bool)

(declare-fun e!4608831 () Regex!20821)

(assert (=> b!7780195 (= e!4608831 e!4608829)))

(declare-fun c!1433604 () Bool)

(assert (=> b!7780195 (= c!1433604 ((_ is ElementMatch!20821) lt!2672815))))

(declare-fun b!7780196 () Bool)

(declare-fun call!721134 () Regex!20821)

(assert (=> b!7780196 (= e!4608833 (Concat!29666 call!721134 lt!2672815))))

(declare-fun bm!721131 () Bool)

(assert (=> bm!721131 (= call!721135 call!721134)))

(declare-fun b!7780197 () Bool)

(declare-fun call!721136 () Regex!20821)

(assert (=> b!7780197 (= e!4608832 (Union!20821 call!721137 call!721136))))

(declare-fun bm!721132 () Bool)

(assert (=> bm!721132 (= call!721136 (derivativeStep!6164 (ite c!1433606 (regTwo!42155 lt!2672815) (ite c!1433603 (reg!21150 lt!2672815) (ite c!1433605 (regTwo!42154 lt!2672815) (regOne!42154 lt!2672815)))) (h!79984 s!14292)))))

(declare-fun b!7780198 () Bool)

(assert (=> b!7780198 (= e!4608831 EmptyLang!20821)))

(declare-fun d!2345086 () Bool)

(declare-fun lt!2672829 () Regex!20821)

(assert (=> d!2345086 (validRegex!11235 lt!2672829)))

(assert (=> d!2345086 (= lt!2672829 e!4608831)))

(declare-fun c!1433607 () Bool)

(assert (=> d!2345086 (= c!1433607 (or ((_ is EmptyExpr!20821) lt!2672815) ((_ is EmptyLang!20821) lt!2672815)))))

(assert (=> d!2345086 (validRegex!11235 lt!2672815)))

(assert (=> d!2345086 (= (derivativeStep!6164 lt!2672815 (h!79984 s!14292)) lt!2672829)))

(declare-fun bm!721130 () Bool)

(assert (=> bm!721130 (= call!721134 call!721136)))

(assert (= (and d!2345086 c!1433607) b!7780198))

(assert (= (and d!2345086 (not c!1433607)) b!7780195))

(assert (= (and b!7780195 c!1433604) b!7780191))

(assert (= (and b!7780195 (not c!1433604)) b!7780190))

(assert (= (and b!7780190 c!1433606) b!7780197))

(assert (= (and b!7780190 (not c!1433606)) b!7780193))

(assert (= (and b!7780193 c!1433603) b!7780196))

(assert (= (and b!7780193 (not c!1433603)) b!7780192))

(assert (= (and b!7780192 c!1433605) b!7780189))

(assert (= (and b!7780192 (not c!1433605)) b!7780194))

(assert (= (or b!7780189 b!7780194) bm!721131))

(assert (= (or b!7780196 bm!721131) bm!721130))

(assert (= (or b!7780197 bm!721130) bm!721132))

(assert (= (or b!7780197 b!7780189) bm!721129))

(declare-fun m!8228694 () Bool)

(assert (=> b!7780192 m!8228694))

(declare-fun m!8228696 () Bool)

(assert (=> bm!721129 m!8228696))

(declare-fun m!8228698 () Bool)

(assert (=> bm!721132 m!8228698))

(declare-fun m!8228700 () Bool)

(assert (=> d!2345086 m!8228700))

(declare-fun m!8228702 () Bool)

(assert (=> d!2345086 m!8228702))

(assert (=> b!7780047 d!2345086))

(declare-fun d!2345094 () Bool)

(declare-fun lt!2672832 () Regex!20821)

(assert (=> d!2345094 (validRegex!11235 lt!2672832)))

(declare-fun e!4608836 () Regex!20821)

(assert (=> d!2345094 (= lt!2672832 e!4608836)))

(declare-fun c!1433610 () Bool)

(assert (=> d!2345094 (= c!1433610 ((_ is Cons!73536) (t!388395 s!14292)))))

(assert (=> d!2345094 (validRegex!11235 EmptyLang!20821)))

(assert (=> d!2345094 (= (derivative!549 EmptyLang!20821 (t!388395 s!14292)) lt!2672832)))

(declare-fun b!7780203 () Bool)

(assert (=> b!7780203 (= e!4608836 (derivative!549 (derivativeStep!6164 EmptyLang!20821 (h!79984 (t!388395 s!14292))) (t!388395 (t!388395 s!14292))))))

(declare-fun b!7780204 () Bool)

(assert (=> b!7780204 (= e!4608836 EmptyLang!20821)))

(assert (= (and d!2345094 c!1433610) b!7780203))

(assert (= (and d!2345094 (not c!1433610)) b!7780204))

(declare-fun m!8228704 () Bool)

(assert (=> d!2345094 m!8228704))

(declare-fun m!8228706 () Bool)

(assert (=> d!2345094 m!8228706))

(declare-fun m!8228708 () Bool)

(assert (=> b!7780203 m!8228708))

(assert (=> b!7780203 m!8228708))

(declare-fun m!8228710 () Bool)

(assert (=> b!7780203 m!8228710))

(assert (=> b!7780040 d!2345094))

(declare-fun d!2345096 () Bool)

(assert (=> d!2345096 (= (derivative!549 EmptyLang!20821 (t!388395 s!14292)) EmptyLang!20821)))

(declare-fun lt!2672841 () Unit!168532)

(declare-fun choose!59499 (Regex!20821 List!73660) Unit!168532)

(assert (=> d!2345096 (= lt!2672841 (choose!59499 EmptyLang!20821 (t!388395 s!14292)))))

(assert (=> d!2345096 (= EmptyLang!20821 EmptyLang!20821)))

(assert (=> d!2345096 (= (lemmaEmptyLangDerivativeIsAFixPoint!84 EmptyLang!20821 (t!388395 s!14292)) lt!2672841)))

(declare-fun bs!1966215 () Bool)

(assert (= bs!1966215 d!2345096))

(assert (=> bs!1966215 m!8228634))

(declare-fun m!8228712 () Bool)

(assert (=> bs!1966215 m!8228712))

(assert (=> b!7780040 d!2345096))

(declare-fun b!7780223 () Bool)

(declare-fun e!4608849 () Bool)

(declare-fun e!4608851 () Bool)

(assert (=> b!7780223 (= e!4608849 e!4608851)))

(declare-fun c!1433616 () Bool)

(assert (=> b!7780223 (= c!1433616 ((_ is EmptyLang!20821) lt!2672816))))

(declare-fun b!7780224 () Bool)

(declare-fun e!4608847 () Bool)

(declare-fun e!4608850 () Bool)

(assert (=> b!7780224 (= e!4608847 e!4608850)))

(declare-fun res!3101257 () Bool)

(assert (=> b!7780224 (=> res!3101257 e!4608850)))

(declare-fun call!721138 () Bool)

(assert (=> b!7780224 (= res!3101257 call!721138)))

(declare-fun b!7780225 () Bool)

(declare-fun res!3101258 () Bool)

(declare-fun e!4608848 () Bool)

(assert (=> b!7780225 (=> (not res!3101258) (not e!4608848))))

(assert (=> b!7780225 (= res!3101258 (isEmpty!42182 (tail!15453 (t!388395 s!14292))))))

(declare-fun b!7780226 () Bool)

(declare-fun res!3101252 () Bool)

(declare-fun e!4608852 () Bool)

(assert (=> b!7780226 (=> res!3101252 e!4608852)))

(assert (=> b!7780226 (= res!3101252 e!4608848)))

(declare-fun res!3101259 () Bool)

(assert (=> b!7780226 (=> (not res!3101259) (not e!4608848))))

(declare-fun lt!2672842 () Bool)

(assert (=> b!7780226 (= res!3101259 lt!2672842)))

(declare-fun b!7780227 () Bool)

(declare-fun res!3101254 () Bool)

(assert (=> b!7780227 (=> (not res!3101254) (not e!4608848))))

(assert (=> b!7780227 (= res!3101254 (not call!721138))))

(declare-fun b!7780228 () Bool)

(assert (=> b!7780228 (= e!4608848 (= (head!15912 (t!388395 s!14292)) (c!1433568 lt!2672816)))))

(declare-fun d!2345098 () Bool)

(assert (=> d!2345098 e!4608849))

(declare-fun c!1433615 () Bool)

(assert (=> d!2345098 (= c!1433615 ((_ is EmptyExpr!20821) lt!2672816))))

(declare-fun e!4608853 () Bool)

(assert (=> d!2345098 (= lt!2672842 e!4608853)))

(declare-fun c!1433617 () Bool)

(assert (=> d!2345098 (= c!1433617 (isEmpty!42182 (t!388395 s!14292)))))

(assert (=> d!2345098 (validRegex!11235 lt!2672816)))

(assert (=> d!2345098 (= (matchR!10281 lt!2672816 (t!388395 s!14292)) lt!2672842)))

(declare-fun b!7780229 () Bool)

(assert (=> b!7780229 (= e!4608853 (nullable!9209 lt!2672816))))

(declare-fun b!7780230 () Bool)

(declare-fun res!3101253 () Bool)

(assert (=> b!7780230 (=> res!3101253 e!4608850)))

(assert (=> b!7780230 (= res!3101253 (not (isEmpty!42182 (tail!15453 (t!388395 s!14292)))))))

(declare-fun b!7780231 () Bool)

(assert (=> b!7780231 (= e!4608850 (not (= (head!15912 (t!388395 s!14292)) (c!1433568 lt!2672816))))))

(declare-fun b!7780232 () Bool)

(assert (=> b!7780232 (= e!4608852 e!4608847)))

(declare-fun res!3101256 () Bool)

(assert (=> b!7780232 (=> (not res!3101256) (not e!4608847))))

(assert (=> b!7780232 (= res!3101256 (not lt!2672842))))

(declare-fun bm!721133 () Bool)

(assert (=> bm!721133 (= call!721138 (isEmpty!42182 (t!388395 s!14292)))))

(declare-fun b!7780233 () Bool)

(assert (=> b!7780233 (= e!4608851 (not lt!2672842))))

(declare-fun b!7780234 () Bool)

(assert (=> b!7780234 (= e!4608853 (matchR!10281 (derivativeStep!6164 lt!2672816 (head!15912 (t!388395 s!14292))) (tail!15453 (t!388395 s!14292))))))

(declare-fun b!7780235 () Bool)

(declare-fun res!3101255 () Bool)

(assert (=> b!7780235 (=> res!3101255 e!4608852)))

(assert (=> b!7780235 (= res!3101255 (not ((_ is ElementMatch!20821) lt!2672816)))))

(assert (=> b!7780235 (= e!4608851 e!4608852)))

(declare-fun b!7780236 () Bool)

(assert (=> b!7780236 (= e!4608849 (= lt!2672842 call!721138))))

(assert (= (and d!2345098 c!1433617) b!7780229))

(assert (= (and d!2345098 (not c!1433617)) b!7780234))

(assert (= (and d!2345098 c!1433615) b!7780236))

(assert (= (and d!2345098 (not c!1433615)) b!7780223))

(assert (= (and b!7780223 c!1433616) b!7780233))

(assert (= (and b!7780223 (not c!1433616)) b!7780235))

(assert (= (and b!7780235 (not res!3101255)) b!7780226))

(assert (= (and b!7780226 res!3101259) b!7780227))

(assert (= (and b!7780227 res!3101254) b!7780225))

(assert (= (and b!7780225 res!3101258) b!7780228))

(assert (= (and b!7780226 (not res!3101252)) b!7780232))

(assert (= (and b!7780232 res!3101256) b!7780224))

(assert (= (and b!7780224 (not res!3101257)) b!7780230))

(assert (= (and b!7780230 (not res!3101253)) b!7780231))

(assert (= (or b!7780236 b!7780224 b!7780227) bm!721133))

(assert (=> b!7780234 m!8228654))

(assert (=> b!7780234 m!8228654))

(declare-fun m!8228714 () Bool)

(assert (=> b!7780234 m!8228714))

(assert (=> b!7780234 m!8228658))

(assert (=> b!7780234 m!8228714))

(assert (=> b!7780234 m!8228658))

(declare-fun m!8228716 () Bool)

(assert (=> b!7780234 m!8228716))

(assert (=> bm!721133 m!8228662))

(assert (=> b!7780230 m!8228658))

(assert (=> b!7780230 m!8228658))

(assert (=> b!7780230 m!8228664))

(assert (=> d!2345098 m!8228662))

(declare-fun m!8228718 () Bool)

(assert (=> d!2345098 m!8228718))

(declare-fun m!8228720 () Bool)

(assert (=> b!7780229 m!8228720))

(assert (=> b!7780228 m!8228654))

(assert (=> b!7780225 m!8228658))

(assert (=> b!7780225 m!8228658))

(assert (=> b!7780225 m!8228664))

(assert (=> b!7780231 m!8228654))

(assert (=> b!7780040 d!2345098))

(declare-fun d!2345100 () Bool)

(declare-fun e!4608864 () Bool)

(assert (=> d!2345100 e!4608864))

(declare-fun res!3101269 () Bool)

(assert (=> d!2345100 (=> res!3101269 e!4608864)))

(assert (=> d!2345100 (= res!3101269 (matchR!10281 lt!2672816 (t!388395 s!14292)))))

(declare-fun lt!2672848 () Unit!168532)

(declare-fun choose!59500 (Regex!20821 Regex!20821 List!73660) Unit!168532)

(assert (=> d!2345100 (= lt!2672848 (choose!59500 lt!2672816 EmptyLang!20821 (t!388395 s!14292)))))

(declare-fun e!4608863 () Bool)

(assert (=> d!2345100 e!4608863))

(declare-fun res!3101270 () Bool)

(assert (=> d!2345100 (=> (not res!3101270) (not e!4608863))))

(assert (=> d!2345100 (= res!3101270 (validRegex!11235 lt!2672816))))

(assert (=> d!2345100 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!390 lt!2672816 EmptyLang!20821 (t!388395 s!14292)) lt!2672848)))

(declare-fun b!7780250 () Bool)

(assert (=> b!7780250 (= e!4608863 (validRegex!11235 EmptyLang!20821))))

(declare-fun b!7780251 () Bool)

(assert (=> b!7780251 (= e!4608864 (matchR!10281 EmptyLang!20821 (t!388395 s!14292)))))

(assert (= (and d!2345100 res!3101270) b!7780250))

(assert (= (and d!2345100 (not res!3101269)) b!7780251))

(assert (=> d!2345100 m!8228638))

(declare-fun m!8228744 () Bool)

(assert (=> d!2345100 m!8228744))

(assert (=> d!2345100 m!8228718))

(assert (=> b!7780250 m!8228706))

(assert (=> b!7780251 m!8228622))

(assert (=> b!7780040 d!2345100))

(declare-fun b!7780252 () Bool)

(declare-fun e!4608867 () Bool)

(declare-fun e!4608869 () Bool)

(assert (=> b!7780252 (= e!4608867 e!4608869)))

(declare-fun c!1433621 () Bool)

(assert (=> b!7780252 (= c!1433621 ((_ is EmptyLang!20821) lt!2672815))))

(declare-fun b!7780253 () Bool)

(declare-fun e!4608865 () Bool)

(declare-fun e!4608868 () Bool)

(assert (=> b!7780253 (= e!4608865 e!4608868)))

(declare-fun res!3101276 () Bool)

(assert (=> b!7780253 (=> res!3101276 e!4608868)))

(declare-fun call!721139 () Bool)

(assert (=> b!7780253 (= res!3101276 call!721139)))

(declare-fun b!7780254 () Bool)

(declare-fun res!3101277 () Bool)

(declare-fun e!4608866 () Bool)

(assert (=> b!7780254 (=> (not res!3101277) (not e!4608866))))

(assert (=> b!7780254 (= res!3101277 (isEmpty!42182 (tail!15453 s!14292)))))

(declare-fun b!7780255 () Bool)

(declare-fun res!3101271 () Bool)

(declare-fun e!4608870 () Bool)

(assert (=> b!7780255 (=> res!3101271 e!4608870)))

(assert (=> b!7780255 (= res!3101271 e!4608866)))

(declare-fun res!3101278 () Bool)

(assert (=> b!7780255 (=> (not res!3101278) (not e!4608866))))

(declare-fun lt!2672849 () Bool)

(assert (=> b!7780255 (= res!3101278 lt!2672849)))

(declare-fun b!7780256 () Bool)

(declare-fun res!3101273 () Bool)

(assert (=> b!7780256 (=> (not res!3101273) (not e!4608866))))

(assert (=> b!7780256 (= res!3101273 (not call!721139))))

(declare-fun b!7780257 () Bool)

(assert (=> b!7780257 (= e!4608866 (= (head!15912 s!14292) (c!1433568 lt!2672815)))))

(declare-fun d!2345104 () Bool)

(assert (=> d!2345104 e!4608867))

(declare-fun c!1433620 () Bool)

(assert (=> d!2345104 (= c!1433620 ((_ is EmptyExpr!20821) lt!2672815))))

(declare-fun e!4608871 () Bool)

(assert (=> d!2345104 (= lt!2672849 e!4608871)))

(declare-fun c!1433622 () Bool)

(assert (=> d!2345104 (= c!1433622 (isEmpty!42182 s!14292))))

(assert (=> d!2345104 (validRegex!11235 lt!2672815)))

(assert (=> d!2345104 (= (matchR!10281 lt!2672815 s!14292) lt!2672849)))

(declare-fun b!7780258 () Bool)

(assert (=> b!7780258 (= e!4608871 (nullable!9209 lt!2672815))))

(declare-fun b!7780259 () Bool)

(declare-fun res!3101272 () Bool)

(assert (=> b!7780259 (=> res!3101272 e!4608868)))

(assert (=> b!7780259 (= res!3101272 (not (isEmpty!42182 (tail!15453 s!14292))))))

(declare-fun b!7780260 () Bool)

(assert (=> b!7780260 (= e!4608868 (not (= (head!15912 s!14292) (c!1433568 lt!2672815))))))

(declare-fun b!7780261 () Bool)

(assert (=> b!7780261 (= e!4608870 e!4608865)))

(declare-fun res!3101275 () Bool)

(assert (=> b!7780261 (=> (not res!3101275) (not e!4608865))))

(assert (=> b!7780261 (= res!3101275 (not lt!2672849))))

(declare-fun bm!721134 () Bool)

(assert (=> bm!721134 (= call!721139 (isEmpty!42182 s!14292))))

(declare-fun b!7780262 () Bool)

(assert (=> b!7780262 (= e!4608869 (not lt!2672849))))

(declare-fun b!7780263 () Bool)

(assert (=> b!7780263 (= e!4608871 (matchR!10281 (derivativeStep!6164 lt!2672815 (head!15912 s!14292)) (tail!15453 s!14292)))))

(declare-fun b!7780264 () Bool)

(declare-fun res!3101274 () Bool)

(assert (=> b!7780264 (=> res!3101274 e!4608870)))

(assert (=> b!7780264 (= res!3101274 (not ((_ is ElementMatch!20821) lt!2672815)))))

(assert (=> b!7780264 (= e!4608869 e!4608870)))

(declare-fun b!7780265 () Bool)

(assert (=> b!7780265 (= e!4608867 (= lt!2672849 call!721139))))

(assert (= (and d!2345104 c!1433622) b!7780258))

(assert (= (and d!2345104 (not c!1433622)) b!7780263))

(assert (= (and d!2345104 c!1433620) b!7780265))

(assert (= (and d!2345104 (not c!1433620)) b!7780252))

(assert (= (and b!7780252 c!1433621) b!7780262))

(assert (= (and b!7780252 (not c!1433621)) b!7780264))

(assert (= (and b!7780264 (not res!3101274)) b!7780255))

(assert (= (and b!7780255 res!3101278) b!7780256))

(assert (= (and b!7780256 res!3101273) b!7780254))

(assert (= (and b!7780254 res!3101277) b!7780257))

(assert (= (and b!7780255 (not res!3101271)) b!7780261))

(assert (= (and b!7780261 res!3101275) b!7780253))

(assert (= (and b!7780253 (not res!3101276)) b!7780259))

(assert (= (and b!7780259 (not res!3101272)) b!7780260))

(assert (= (or b!7780265 b!7780253 b!7780256) bm!721134))

(declare-fun m!8228746 () Bool)

(assert (=> b!7780263 m!8228746))

(assert (=> b!7780263 m!8228746))

(declare-fun m!8228748 () Bool)

(assert (=> b!7780263 m!8228748))

(declare-fun m!8228750 () Bool)

(assert (=> b!7780263 m!8228750))

(assert (=> b!7780263 m!8228748))

(assert (=> b!7780263 m!8228750))

(declare-fun m!8228752 () Bool)

(assert (=> b!7780263 m!8228752))

(declare-fun m!8228754 () Bool)

(assert (=> bm!721134 m!8228754))

(assert (=> b!7780259 m!8228750))

(assert (=> b!7780259 m!8228750))

(declare-fun m!8228756 () Bool)

(assert (=> b!7780259 m!8228756))

(assert (=> d!2345104 m!8228754))

(assert (=> d!2345104 m!8228702))

(declare-fun m!8228758 () Bool)

(assert (=> b!7780258 m!8228758))

(assert (=> b!7780257 m!8228746))

(assert (=> b!7780254 m!8228750))

(assert (=> b!7780254 m!8228750))

(assert (=> b!7780254 m!8228756))

(assert (=> b!7780260 m!8228746))

(assert (=> b!7780045 d!2345104))

(declare-fun d!2345106 () Bool)

(declare-fun nullableFct!3602 (Regex!20821) Bool)

(assert (=> d!2345106 (= (nullable!9209 r1!6279) (nullableFct!3602 r1!6279))))

(declare-fun bs!1966217 () Bool)

(assert (= bs!1966217 d!2345106))

(declare-fun m!8228762 () Bool)

(assert (=> bs!1966217 m!8228762))

(assert (=> b!7780046 d!2345106))

(declare-fun b!7780304 () Bool)

(declare-fun e!4608896 () Bool)

(declare-fun call!721148 () Bool)

(assert (=> b!7780304 (= e!4608896 call!721148)))

(declare-fun b!7780305 () Bool)

(declare-fun res!3101301 () Bool)

(declare-fun e!4608899 () Bool)

(assert (=> b!7780305 (=> res!3101301 e!4608899)))

(assert (=> b!7780305 (= res!3101301 (not ((_ is Concat!29666) lt!2672820)))))

(declare-fun e!4608901 () Bool)

(assert (=> b!7780305 (= e!4608901 e!4608899)))

(declare-fun b!7780306 () Bool)

(declare-fun e!4608902 () Bool)

(assert (=> b!7780306 (= e!4608902 e!4608896)))

(declare-fun res!3101298 () Bool)

(assert (=> b!7780306 (= res!3101298 (not (nullable!9209 (reg!21150 lt!2672820))))))

(assert (=> b!7780306 (=> (not res!3101298) (not e!4608896))))

(declare-fun b!7780307 () Bool)

(declare-fun e!4608900 () Bool)

(declare-fun call!721149 () Bool)

(assert (=> b!7780307 (= e!4608900 call!721149)))

(declare-fun b!7780308 () Bool)

(declare-fun e!4608897 () Bool)

(assert (=> b!7780308 (= e!4608899 e!4608897)))

(declare-fun res!3101297 () Bool)

(assert (=> b!7780308 (=> (not res!3101297) (not e!4608897))))

(declare-fun call!721147 () Bool)

(assert (=> b!7780308 (= res!3101297 call!721147)))

(declare-fun b!7780309 () Bool)

(assert (=> b!7780309 (= e!4608897 call!721149)))

(declare-fun d!2345110 () Bool)

(declare-fun res!3101300 () Bool)

(declare-fun e!4608898 () Bool)

(assert (=> d!2345110 (=> res!3101300 e!4608898)))

(assert (=> d!2345110 (= res!3101300 ((_ is ElementMatch!20821) lt!2672820))))

(assert (=> d!2345110 (= (validRegex!11235 lt!2672820) e!4608898)))

(declare-fun bm!721142 () Bool)

(declare-fun c!1433634 () Bool)

(assert (=> bm!721142 (= call!721147 (validRegex!11235 (ite c!1433634 (regOne!42155 lt!2672820) (regOne!42154 lt!2672820))))))

(declare-fun bm!721143 () Bool)

(assert (=> bm!721143 (= call!721149 call!721148)))

(declare-fun c!1433633 () Bool)

(declare-fun bm!721144 () Bool)

(assert (=> bm!721144 (= call!721148 (validRegex!11235 (ite c!1433633 (reg!21150 lt!2672820) (ite c!1433634 (regTwo!42155 lt!2672820) (regTwo!42154 lt!2672820)))))))

(declare-fun b!7780310 () Bool)

(assert (=> b!7780310 (= e!4608898 e!4608902)))

(assert (=> b!7780310 (= c!1433633 ((_ is Star!20821) lt!2672820))))

(declare-fun b!7780311 () Bool)

(declare-fun res!3101299 () Bool)

(assert (=> b!7780311 (=> (not res!3101299) (not e!4608900))))

(assert (=> b!7780311 (= res!3101299 call!721147)))

(assert (=> b!7780311 (= e!4608901 e!4608900)))

(declare-fun b!7780312 () Bool)

(assert (=> b!7780312 (= e!4608902 e!4608901)))

(assert (=> b!7780312 (= c!1433634 ((_ is Union!20821) lt!2672820))))

(assert (= (and d!2345110 (not res!3101300)) b!7780310))

(assert (= (and b!7780310 c!1433633) b!7780306))

(assert (= (and b!7780310 (not c!1433633)) b!7780312))

(assert (= (and b!7780306 res!3101298) b!7780304))

(assert (= (and b!7780312 c!1433634) b!7780311))

(assert (= (and b!7780312 (not c!1433634)) b!7780305))

(assert (= (and b!7780311 res!3101299) b!7780307))

(assert (= (and b!7780305 (not res!3101301)) b!7780308))

(assert (= (and b!7780308 res!3101297) b!7780309))

(assert (= (or b!7780311 b!7780308) bm!721142))

(assert (= (or b!7780307 b!7780309) bm!721143))

(assert (= (or b!7780304 bm!721143) bm!721144))

(declare-fun m!8228780 () Bool)

(assert (=> b!7780306 m!8228780))

(declare-fun m!8228782 () Bool)

(assert (=> bm!721142 m!8228782))

(declare-fun m!8228784 () Bool)

(assert (=> bm!721144 m!8228784))

(assert (=> b!7780050 d!2345110))

(declare-fun d!2345118 () Bool)

(declare-fun isEmpty!42183 (Option!17742) Bool)

(assert (=> d!2345118 (= (isDefined!14354 (findConcatSeparation!3772 lt!2672820 r2!6217 Nil!73536 (t!388395 s!14292) (t!388395 s!14292))) (not (isEmpty!42183 (findConcatSeparation!3772 lt!2672820 r2!6217 Nil!73536 (t!388395 s!14292) (t!388395 s!14292)))))))

(declare-fun bs!1966219 () Bool)

(assert (= bs!1966219 d!2345118))

(assert (=> bs!1966219 m!8228646))

(declare-fun m!8228786 () Bool)

(assert (=> bs!1966219 m!8228786))

(assert (=> b!7780050 d!2345118))

(declare-fun b!7780478 () Bool)

(declare-fun e!4608984 () Option!17742)

(assert (=> b!7780478 (= e!4608984 (Some!17741 (tuple2!69897 Nil!73536 (t!388395 s!14292))))))

(declare-fun b!7780479 () Bool)

(declare-fun e!4608983 () Option!17742)

(assert (=> b!7780479 (= e!4608983 None!17741)))

(declare-fun b!7780480 () Bool)

(declare-fun res!3101347 () Bool)

(declare-fun e!4608985 () Bool)

(assert (=> b!7780480 (=> (not res!3101347) (not e!4608985))))

(declare-fun lt!2672876 () Option!17742)

(declare-fun get!26281 (Option!17742) tuple2!69896)

(assert (=> b!7780480 (= res!3101347 (matchR!10281 lt!2672820 (_1!38251 (get!26281 lt!2672876))))))

(declare-fun d!2345120 () Bool)

(declare-fun e!4608982 () Bool)

(assert (=> d!2345120 e!4608982))

(declare-fun res!3101348 () Bool)

(assert (=> d!2345120 (=> res!3101348 e!4608982)))

(assert (=> d!2345120 (= res!3101348 e!4608985)))

(declare-fun res!3101346 () Bool)

(assert (=> d!2345120 (=> (not res!3101346) (not e!4608985))))

(assert (=> d!2345120 (= res!3101346 (isDefined!14354 lt!2672876))))

(assert (=> d!2345120 (= lt!2672876 e!4608984)))

(declare-fun c!1433669 () Bool)

(declare-fun e!4608986 () Bool)

(assert (=> d!2345120 (= c!1433669 e!4608986)))

(declare-fun res!3101344 () Bool)

(assert (=> d!2345120 (=> (not res!3101344) (not e!4608986))))

(assert (=> d!2345120 (= res!3101344 (matchR!10281 lt!2672820 Nil!73536))))

(assert (=> d!2345120 (validRegex!11235 lt!2672820)))

(assert (=> d!2345120 (= (findConcatSeparation!3772 lt!2672820 r2!6217 Nil!73536 (t!388395 s!14292) (t!388395 s!14292)) lt!2672876)))

(declare-fun b!7780481 () Bool)

(declare-fun ++!17917 (List!73660 List!73660) List!73660)

(assert (=> b!7780481 (= e!4608985 (= (++!17917 (_1!38251 (get!26281 lt!2672876)) (_2!38251 (get!26281 lt!2672876))) (t!388395 s!14292)))))

(declare-fun b!7780482 () Bool)

(declare-fun lt!2672875 () Unit!168532)

(declare-fun lt!2672877 () Unit!168532)

(assert (=> b!7780482 (= lt!2672875 lt!2672877)))

(assert (=> b!7780482 (= (++!17917 (++!17917 Nil!73536 (Cons!73536 (h!79984 (t!388395 s!14292)) Nil!73536)) (t!388395 (t!388395 s!14292))) (t!388395 s!14292))))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3394 (List!73660 C!41968 List!73660 List!73660) Unit!168532)

(assert (=> b!7780482 (= lt!2672877 (lemmaMoveElementToOtherListKeepsConcatEq!3394 Nil!73536 (h!79984 (t!388395 s!14292)) (t!388395 (t!388395 s!14292)) (t!388395 s!14292)))))

(assert (=> b!7780482 (= e!4608983 (findConcatSeparation!3772 lt!2672820 r2!6217 (++!17917 Nil!73536 (Cons!73536 (h!79984 (t!388395 s!14292)) Nil!73536)) (t!388395 (t!388395 s!14292)) (t!388395 s!14292)))))

(declare-fun b!7780483 () Bool)

(assert (=> b!7780483 (= e!4608986 (matchR!10281 r2!6217 (t!388395 s!14292)))))

(declare-fun b!7780484 () Bool)

(assert (=> b!7780484 (= e!4608982 (not (isDefined!14354 lt!2672876)))))

(declare-fun b!7780485 () Bool)

(assert (=> b!7780485 (= e!4608984 e!4608983)))

(declare-fun c!1433670 () Bool)

(assert (=> b!7780485 (= c!1433670 ((_ is Nil!73536) (t!388395 s!14292)))))

(declare-fun b!7780486 () Bool)

(declare-fun res!3101345 () Bool)

(assert (=> b!7780486 (=> (not res!3101345) (not e!4608985))))

(assert (=> b!7780486 (= res!3101345 (matchR!10281 r2!6217 (_2!38251 (get!26281 lt!2672876))))))

(assert (= (and d!2345120 res!3101344) b!7780483))

(assert (= (and d!2345120 c!1433669) b!7780478))

(assert (= (and d!2345120 (not c!1433669)) b!7780485))

(assert (= (and b!7780485 c!1433670) b!7780479))

(assert (= (and b!7780485 (not c!1433670)) b!7780482))

(assert (= (and d!2345120 res!3101346) b!7780480))

(assert (= (and b!7780480 res!3101347) b!7780486))

(assert (= (and b!7780486 res!3101345) b!7780481))

(assert (= (and d!2345120 (not res!3101348)) b!7780484))

(declare-fun m!8228844 () Bool)

(assert (=> d!2345120 m!8228844))

(declare-fun m!8228846 () Bool)

(assert (=> d!2345120 m!8228846))

(assert (=> d!2345120 m!8228644))

(assert (=> b!7780484 m!8228844))

(declare-fun m!8228848 () Bool)

(assert (=> b!7780483 m!8228848))

(declare-fun m!8228850 () Bool)

(assert (=> b!7780482 m!8228850))

(assert (=> b!7780482 m!8228850))

(declare-fun m!8228852 () Bool)

(assert (=> b!7780482 m!8228852))

(declare-fun m!8228854 () Bool)

(assert (=> b!7780482 m!8228854))

(assert (=> b!7780482 m!8228850))

(declare-fun m!8228856 () Bool)

(assert (=> b!7780482 m!8228856))

(declare-fun m!8228858 () Bool)

(assert (=> b!7780480 m!8228858))

(declare-fun m!8228860 () Bool)

(assert (=> b!7780480 m!8228860))

(assert (=> b!7780486 m!8228858))

(declare-fun m!8228862 () Bool)

(assert (=> b!7780486 m!8228862))

(assert (=> b!7780481 m!8228858))

(declare-fun m!8228864 () Bool)

(assert (=> b!7780481 m!8228864))

(assert (=> b!7780050 d!2345120))

(declare-fun d!2345136 () Bool)

(assert (=> d!2345136 (isDefined!14354 (findConcatSeparation!3772 lt!2672820 r2!6217 Nil!73536 (t!388395 s!14292) (t!388395 s!14292)))))

(declare-fun lt!2672880 () Unit!168532)

(declare-fun choose!59501 (Regex!20821 Regex!20821 List!73660) Unit!168532)

(assert (=> d!2345136 (= lt!2672880 (choose!59501 lt!2672820 r2!6217 (t!388395 s!14292)))))

(assert (=> d!2345136 (validRegex!11235 lt!2672820)))

(assert (=> d!2345136 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!362 lt!2672820 r2!6217 (t!388395 s!14292)) lt!2672880)))

(declare-fun bs!1966221 () Bool)

(assert (= bs!1966221 d!2345136))

(assert (=> bs!1966221 m!8228646))

(assert (=> bs!1966221 m!8228646))

(assert (=> bs!1966221 m!8228648))

(declare-fun m!8228866 () Bool)

(assert (=> bs!1966221 m!8228866))

(assert (=> bs!1966221 m!8228644))

(assert (=> b!7780050 d!2345136))

(declare-fun b!7780487 () Bool)

(declare-fun e!4608987 () Bool)

(declare-fun call!721175 () Bool)

(assert (=> b!7780487 (= e!4608987 call!721175)))

(declare-fun b!7780488 () Bool)

(declare-fun res!3101353 () Bool)

(declare-fun e!4608990 () Bool)

(assert (=> b!7780488 (=> res!3101353 e!4608990)))

(assert (=> b!7780488 (= res!3101353 (not ((_ is Concat!29666) r1!6279)))))

(declare-fun e!4608992 () Bool)

(assert (=> b!7780488 (= e!4608992 e!4608990)))

(declare-fun b!7780489 () Bool)

(declare-fun e!4608993 () Bool)

(assert (=> b!7780489 (= e!4608993 e!4608987)))

(declare-fun res!3101350 () Bool)

(assert (=> b!7780489 (= res!3101350 (not (nullable!9209 (reg!21150 r1!6279))))))

(assert (=> b!7780489 (=> (not res!3101350) (not e!4608987))))

(declare-fun b!7780490 () Bool)

(declare-fun e!4608991 () Bool)

(declare-fun call!721176 () Bool)

(assert (=> b!7780490 (= e!4608991 call!721176)))

(declare-fun b!7780491 () Bool)

(declare-fun e!4608988 () Bool)

(assert (=> b!7780491 (= e!4608990 e!4608988)))

(declare-fun res!3101349 () Bool)

(assert (=> b!7780491 (=> (not res!3101349) (not e!4608988))))

(declare-fun call!721174 () Bool)

(assert (=> b!7780491 (= res!3101349 call!721174)))

(declare-fun b!7780492 () Bool)

(assert (=> b!7780492 (= e!4608988 call!721176)))

(declare-fun d!2345138 () Bool)

(declare-fun res!3101352 () Bool)

(declare-fun e!4608989 () Bool)

(assert (=> d!2345138 (=> res!3101352 e!4608989)))

(assert (=> d!2345138 (= res!3101352 ((_ is ElementMatch!20821) r1!6279))))

(assert (=> d!2345138 (= (validRegex!11235 r1!6279) e!4608989)))

(declare-fun bm!721169 () Bool)

(declare-fun c!1433672 () Bool)

(assert (=> bm!721169 (= call!721174 (validRegex!11235 (ite c!1433672 (regOne!42155 r1!6279) (regOne!42154 r1!6279))))))

(declare-fun bm!721170 () Bool)

(assert (=> bm!721170 (= call!721176 call!721175)))

(declare-fun bm!721171 () Bool)

(declare-fun c!1433671 () Bool)

(assert (=> bm!721171 (= call!721175 (validRegex!11235 (ite c!1433671 (reg!21150 r1!6279) (ite c!1433672 (regTwo!42155 r1!6279) (regTwo!42154 r1!6279)))))))

(declare-fun b!7780493 () Bool)

(assert (=> b!7780493 (= e!4608989 e!4608993)))

(assert (=> b!7780493 (= c!1433671 ((_ is Star!20821) r1!6279))))

(declare-fun b!7780494 () Bool)

(declare-fun res!3101351 () Bool)

(assert (=> b!7780494 (=> (not res!3101351) (not e!4608991))))

(assert (=> b!7780494 (= res!3101351 call!721174)))

(assert (=> b!7780494 (= e!4608992 e!4608991)))

(declare-fun b!7780495 () Bool)

(assert (=> b!7780495 (= e!4608993 e!4608992)))

(assert (=> b!7780495 (= c!1433672 ((_ is Union!20821) r1!6279))))

(assert (= (and d!2345138 (not res!3101352)) b!7780493))

(assert (= (and b!7780493 c!1433671) b!7780489))

(assert (= (and b!7780493 (not c!1433671)) b!7780495))

(assert (= (and b!7780489 res!3101350) b!7780487))

(assert (= (and b!7780495 c!1433672) b!7780494))

(assert (= (and b!7780495 (not c!1433672)) b!7780488))

(assert (= (and b!7780494 res!3101351) b!7780490))

(assert (= (and b!7780488 (not res!3101353)) b!7780491))

(assert (= (and b!7780491 res!3101349) b!7780492))

(assert (= (or b!7780494 b!7780491) bm!721169))

(assert (= (or b!7780490 b!7780492) bm!721170))

(assert (= (or b!7780487 bm!721170) bm!721171))

(declare-fun m!8228868 () Bool)

(assert (=> b!7780489 m!8228868))

(declare-fun m!8228870 () Bool)

(assert (=> bm!721169 m!8228870))

(declare-fun m!8228872 () Bool)

(assert (=> bm!721171 m!8228872))

(assert (=> start!740474 d!2345138))

(declare-fun b!7780496 () Bool)

(declare-fun call!721178 () Regex!20821)

(declare-fun e!4608995 () Regex!20821)

(declare-fun call!721180 () Regex!20821)

(assert (=> b!7780496 (= e!4608995 (Union!20821 (Concat!29666 call!721180 (regTwo!42154 r1!6279)) call!721178))))

(declare-fun b!7780497 () Bool)

(declare-fun c!1433676 () Bool)

(assert (=> b!7780497 (= c!1433676 ((_ is Union!20821) r1!6279))))

(declare-fun e!4608994 () Regex!20821)

(declare-fun e!4608997 () Regex!20821)

(assert (=> b!7780497 (= e!4608994 e!4608997)))

(declare-fun b!7780498 () Bool)

(assert (=> b!7780498 (= e!4608994 (ite (= (h!79984 s!14292) (c!1433568 r1!6279)) EmptyExpr!20821 EmptyLang!20821))))

(declare-fun b!7780499 () Bool)

(declare-fun c!1433675 () Bool)

(assert (=> b!7780499 (= c!1433675 (nullable!9209 (regOne!42154 r1!6279)))))

(declare-fun e!4608998 () Regex!20821)

(assert (=> b!7780499 (= e!4608998 e!4608995)))

(declare-fun bm!721172 () Bool)

(assert (=> bm!721172 (= call!721180 (derivativeStep!6164 (ite c!1433676 (regOne!42155 r1!6279) (regOne!42154 r1!6279)) (h!79984 s!14292)))))

(declare-fun b!7780500 () Bool)

(assert (=> b!7780500 (= e!4608997 e!4608998)))

(declare-fun c!1433673 () Bool)

(assert (=> b!7780500 (= c!1433673 ((_ is Star!20821) r1!6279))))

(declare-fun b!7780501 () Bool)

(assert (=> b!7780501 (= e!4608995 (Union!20821 (Concat!29666 call!721178 (regTwo!42154 r1!6279)) EmptyLang!20821))))

(declare-fun b!7780502 () Bool)

(declare-fun e!4608996 () Regex!20821)

(assert (=> b!7780502 (= e!4608996 e!4608994)))

(declare-fun c!1433674 () Bool)

(assert (=> b!7780502 (= c!1433674 ((_ is ElementMatch!20821) r1!6279))))

(declare-fun b!7780503 () Bool)

(declare-fun call!721177 () Regex!20821)

(assert (=> b!7780503 (= e!4608998 (Concat!29666 call!721177 r1!6279))))

(declare-fun bm!721174 () Bool)

(assert (=> bm!721174 (= call!721178 call!721177)))

(declare-fun b!7780504 () Bool)

(declare-fun call!721179 () Regex!20821)

(assert (=> b!7780504 (= e!4608997 (Union!20821 call!721180 call!721179))))

(declare-fun bm!721175 () Bool)

(assert (=> bm!721175 (= call!721179 (derivativeStep!6164 (ite c!1433676 (regTwo!42155 r1!6279) (ite c!1433673 (reg!21150 r1!6279) (ite c!1433675 (regTwo!42154 r1!6279) (regOne!42154 r1!6279)))) (h!79984 s!14292)))))

(declare-fun b!7780505 () Bool)

(assert (=> b!7780505 (= e!4608996 EmptyLang!20821)))

(declare-fun d!2345140 () Bool)

(declare-fun lt!2672881 () Regex!20821)

(assert (=> d!2345140 (validRegex!11235 lt!2672881)))

(assert (=> d!2345140 (= lt!2672881 e!4608996)))

(declare-fun c!1433677 () Bool)

(assert (=> d!2345140 (= c!1433677 (or ((_ is EmptyExpr!20821) r1!6279) ((_ is EmptyLang!20821) r1!6279)))))

(assert (=> d!2345140 (validRegex!11235 r1!6279)))

(assert (=> d!2345140 (= (derivativeStep!6164 r1!6279 (h!79984 s!14292)) lt!2672881)))

(declare-fun bm!721173 () Bool)

(assert (=> bm!721173 (= call!721177 call!721179)))

(assert (= (and d!2345140 c!1433677) b!7780505))

(assert (= (and d!2345140 (not c!1433677)) b!7780502))

(assert (= (and b!7780502 c!1433674) b!7780498))

(assert (= (and b!7780502 (not c!1433674)) b!7780497))

(assert (= (and b!7780497 c!1433676) b!7780504))

(assert (= (and b!7780497 (not c!1433676)) b!7780500))

(assert (= (and b!7780500 c!1433673) b!7780503))

(assert (= (and b!7780500 (not c!1433673)) b!7780499))

(assert (= (and b!7780499 c!1433675) b!7780496))

(assert (= (and b!7780499 (not c!1433675)) b!7780501))

(assert (= (or b!7780496 b!7780501) bm!721174))

(assert (= (or b!7780503 bm!721174) bm!721173))

(assert (= (or b!7780504 bm!721173) bm!721175))

(assert (= (or b!7780504 b!7780496) bm!721172))

(declare-fun m!8228874 () Bool)

(assert (=> b!7780499 m!8228874))

(declare-fun m!8228876 () Bool)

(assert (=> bm!721172 m!8228876))

(declare-fun m!8228878 () Bool)

(assert (=> bm!721175 m!8228878))

(declare-fun m!8228880 () Bool)

(assert (=> d!2345140 m!8228880))

(assert (=> d!2345140 m!8228628))

(assert (=> b!7780048 d!2345140))

(declare-fun b!7780506 () Bool)

(declare-fun e!4609001 () Bool)

(declare-fun e!4609003 () Bool)

(assert (=> b!7780506 (= e!4609001 e!4609003)))

(declare-fun c!1433679 () Bool)

(assert (=> b!7780506 (= c!1433679 ((_ is EmptyLang!20821) EmptyLang!20821))))

(declare-fun b!7780507 () Bool)

(declare-fun e!4608999 () Bool)

(declare-fun e!4609002 () Bool)

(assert (=> b!7780507 (= e!4608999 e!4609002)))

(declare-fun res!3101359 () Bool)

(assert (=> b!7780507 (=> res!3101359 e!4609002)))

(declare-fun call!721181 () Bool)

(assert (=> b!7780507 (= res!3101359 call!721181)))

(declare-fun b!7780508 () Bool)

(declare-fun res!3101360 () Bool)

(declare-fun e!4609000 () Bool)

(assert (=> b!7780508 (=> (not res!3101360) (not e!4609000))))

(assert (=> b!7780508 (= res!3101360 (isEmpty!42182 (tail!15453 (t!388395 s!14292))))))

(declare-fun b!7780509 () Bool)

(declare-fun res!3101354 () Bool)

(declare-fun e!4609004 () Bool)

(assert (=> b!7780509 (=> res!3101354 e!4609004)))

(assert (=> b!7780509 (= res!3101354 e!4609000)))

(declare-fun res!3101361 () Bool)

(assert (=> b!7780509 (=> (not res!3101361) (not e!4609000))))

(declare-fun lt!2672882 () Bool)

(assert (=> b!7780509 (= res!3101361 lt!2672882)))

(declare-fun b!7780510 () Bool)

(declare-fun res!3101356 () Bool)

(assert (=> b!7780510 (=> (not res!3101356) (not e!4609000))))

(assert (=> b!7780510 (= res!3101356 (not call!721181))))

(declare-fun b!7780511 () Bool)

(assert (=> b!7780511 (= e!4609000 (= (head!15912 (t!388395 s!14292)) (c!1433568 EmptyLang!20821)))))

(declare-fun d!2345142 () Bool)

(assert (=> d!2345142 e!4609001))

(declare-fun c!1433678 () Bool)

(assert (=> d!2345142 (= c!1433678 ((_ is EmptyExpr!20821) EmptyLang!20821))))

(declare-fun e!4609005 () Bool)

(assert (=> d!2345142 (= lt!2672882 e!4609005)))

(declare-fun c!1433680 () Bool)

(assert (=> d!2345142 (= c!1433680 (isEmpty!42182 (t!388395 s!14292)))))

(assert (=> d!2345142 (validRegex!11235 EmptyLang!20821)))

(assert (=> d!2345142 (= (matchR!10281 EmptyLang!20821 (t!388395 s!14292)) lt!2672882)))

(declare-fun b!7780512 () Bool)

(assert (=> b!7780512 (= e!4609005 (nullable!9209 EmptyLang!20821))))

(declare-fun b!7780513 () Bool)

(declare-fun res!3101355 () Bool)

(assert (=> b!7780513 (=> res!3101355 e!4609002)))

(assert (=> b!7780513 (= res!3101355 (not (isEmpty!42182 (tail!15453 (t!388395 s!14292)))))))

(declare-fun b!7780514 () Bool)

(assert (=> b!7780514 (= e!4609002 (not (= (head!15912 (t!388395 s!14292)) (c!1433568 EmptyLang!20821))))))

(declare-fun b!7780515 () Bool)

(assert (=> b!7780515 (= e!4609004 e!4608999)))

(declare-fun res!3101358 () Bool)

(assert (=> b!7780515 (=> (not res!3101358) (not e!4608999))))

(assert (=> b!7780515 (= res!3101358 (not lt!2672882))))

(declare-fun bm!721176 () Bool)

(assert (=> bm!721176 (= call!721181 (isEmpty!42182 (t!388395 s!14292)))))

(declare-fun b!7780516 () Bool)

(assert (=> b!7780516 (= e!4609003 (not lt!2672882))))

(declare-fun b!7780517 () Bool)

(assert (=> b!7780517 (= e!4609005 (matchR!10281 (derivativeStep!6164 EmptyLang!20821 (head!15912 (t!388395 s!14292))) (tail!15453 (t!388395 s!14292))))))

(declare-fun b!7780518 () Bool)

(declare-fun res!3101357 () Bool)

(assert (=> b!7780518 (=> res!3101357 e!4609004)))

(assert (=> b!7780518 (= res!3101357 (not ((_ is ElementMatch!20821) EmptyLang!20821)))))

(assert (=> b!7780518 (= e!4609003 e!4609004)))

(declare-fun b!7780519 () Bool)

(assert (=> b!7780519 (= e!4609001 (= lt!2672882 call!721181))))

(assert (= (and d!2345142 c!1433680) b!7780512))

(assert (= (and d!2345142 (not c!1433680)) b!7780517))

(assert (= (and d!2345142 c!1433678) b!7780519))

(assert (= (and d!2345142 (not c!1433678)) b!7780506))

(assert (= (and b!7780506 c!1433679) b!7780516))

(assert (= (and b!7780506 (not c!1433679)) b!7780518))

(assert (= (and b!7780518 (not res!3101357)) b!7780509))

(assert (= (and b!7780509 res!3101361) b!7780510))

(assert (= (and b!7780510 res!3101356) b!7780508))

(assert (= (and b!7780508 res!3101360) b!7780511))

(assert (= (and b!7780509 (not res!3101354)) b!7780515))

(assert (= (and b!7780515 res!3101358) b!7780507))

(assert (= (and b!7780507 (not res!3101359)) b!7780513))

(assert (= (and b!7780513 (not res!3101355)) b!7780514))

(assert (= (or b!7780519 b!7780507 b!7780510) bm!721176))

(assert (=> b!7780517 m!8228654))

(assert (=> b!7780517 m!8228654))

(declare-fun m!8228882 () Bool)

(assert (=> b!7780517 m!8228882))

(assert (=> b!7780517 m!8228658))

(assert (=> b!7780517 m!8228882))

(assert (=> b!7780517 m!8228658))

(declare-fun m!8228884 () Bool)

(assert (=> b!7780517 m!8228884))

(assert (=> bm!721176 m!8228662))

(assert (=> b!7780513 m!8228658))

(assert (=> b!7780513 m!8228658))

(assert (=> b!7780513 m!8228664))

(assert (=> d!2345142 m!8228662))

(assert (=> d!2345142 m!8228706))

(declare-fun m!8228886 () Bool)

(assert (=> b!7780512 m!8228886))

(assert (=> b!7780511 m!8228654))

(assert (=> b!7780508 m!8228658))

(assert (=> b!7780508 m!8228658))

(assert (=> b!7780508 m!8228664))

(assert (=> b!7780514 m!8228654))

(assert (=> b!7780054 d!2345142))

(declare-fun b!7780520 () Bool)

(declare-fun e!4609006 () Bool)

(declare-fun call!721183 () Bool)

(assert (=> b!7780520 (= e!4609006 call!721183)))

(declare-fun b!7780521 () Bool)

(declare-fun res!3101366 () Bool)

(declare-fun e!4609009 () Bool)

(assert (=> b!7780521 (=> res!3101366 e!4609009)))

(assert (=> b!7780521 (= res!3101366 (not ((_ is Concat!29666) r2!6217)))))

(declare-fun e!4609011 () Bool)

(assert (=> b!7780521 (= e!4609011 e!4609009)))

(declare-fun b!7780522 () Bool)

(declare-fun e!4609012 () Bool)

(assert (=> b!7780522 (= e!4609012 e!4609006)))

(declare-fun res!3101363 () Bool)

(assert (=> b!7780522 (= res!3101363 (not (nullable!9209 (reg!21150 r2!6217))))))

(assert (=> b!7780522 (=> (not res!3101363) (not e!4609006))))

(declare-fun b!7780523 () Bool)

(declare-fun e!4609010 () Bool)

(declare-fun call!721184 () Bool)

(assert (=> b!7780523 (= e!4609010 call!721184)))

(declare-fun b!7780524 () Bool)

(declare-fun e!4609007 () Bool)

(assert (=> b!7780524 (= e!4609009 e!4609007)))

(declare-fun res!3101362 () Bool)

(assert (=> b!7780524 (=> (not res!3101362) (not e!4609007))))

(declare-fun call!721182 () Bool)

(assert (=> b!7780524 (= res!3101362 call!721182)))

(declare-fun b!7780525 () Bool)

(assert (=> b!7780525 (= e!4609007 call!721184)))

(declare-fun d!2345144 () Bool)

(declare-fun res!3101365 () Bool)

(declare-fun e!4609008 () Bool)

(assert (=> d!2345144 (=> res!3101365 e!4609008)))

(assert (=> d!2345144 (= res!3101365 ((_ is ElementMatch!20821) r2!6217))))

(assert (=> d!2345144 (= (validRegex!11235 r2!6217) e!4609008)))

(declare-fun bm!721177 () Bool)

(declare-fun c!1433682 () Bool)

(assert (=> bm!721177 (= call!721182 (validRegex!11235 (ite c!1433682 (regOne!42155 r2!6217) (regOne!42154 r2!6217))))))

(declare-fun bm!721178 () Bool)

(assert (=> bm!721178 (= call!721184 call!721183)))

(declare-fun bm!721179 () Bool)

(declare-fun c!1433681 () Bool)

(assert (=> bm!721179 (= call!721183 (validRegex!11235 (ite c!1433681 (reg!21150 r2!6217) (ite c!1433682 (regTwo!42155 r2!6217) (regTwo!42154 r2!6217)))))))

(declare-fun b!7780526 () Bool)

(assert (=> b!7780526 (= e!4609008 e!4609012)))

(assert (=> b!7780526 (= c!1433681 ((_ is Star!20821) r2!6217))))

(declare-fun b!7780527 () Bool)

(declare-fun res!3101364 () Bool)

(assert (=> b!7780527 (=> (not res!3101364) (not e!4609010))))

(assert (=> b!7780527 (= res!3101364 call!721182)))

(assert (=> b!7780527 (= e!4609011 e!4609010)))

(declare-fun b!7780528 () Bool)

(assert (=> b!7780528 (= e!4609012 e!4609011)))

(assert (=> b!7780528 (= c!1433682 ((_ is Union!20821) r2!6217))))

(assert (= (and d!2345144 (not res!3101365)) b!7780526))

(assert (= (and b!7780526 c!1433681) b!7780522))

(assert (= (and b!7780526 (not c!1433681)) b!7780528))

(assert (= (and b!7780522 res!3101363) b!7780520))

(assert (= (and b!7780528 c!1433682) b!7780527))

(assert (= (and b!7780528 (not c!1433682)) b!7780521))

(assert (= (and b!7780527 res!3101364) b!7780523))

(assert (= (and b!7780521 (not res!3101366)) b!7780524))

(assert (= (and b!7780524 res!3101362) b!7780525))

(assert (= (or b!7780527 b!7780524) bm!721177))

(assert (= (or b!7780523 b!7780525) bm!721178))

(assert (= (or b!7780520 bm!721178) bm!721179))

(declare-fun m!8228888 () Bool)

(assert (=> b!7780522 m!8228888))

(declare-fun m!8228890 () Bool)

(assert (=> bm!721177 m!8228890))

(declare-fun m!8228892 () Bool)

(assert (=> bm!721179 m!8228892))

(assert (=> b!7780043 d!2345144))

(declare-fun e!4609015 () Bool)

(assert (=> b!7780052 (= tp!2286709 e!4609015)))

(declare-fun b!7780542 () Bool)

(declare-fun tp!2286791 () Bool)

(declare-fun tp!2286788 () Bool)

(assert (=> b!7780542 (= e!4609015 (and tp!2286791 tp!2286788))))

(declare-fun b!7780540 () Bool)

(declare-fun tp!2286789 () Bool)

(declare-fun tp!2286790 () Bool)

(assert (=> b!7780540 (= e!4609015 (and tp!2286789 tp!2286790))))

(declare-fun b!7780541 () Bool)

(declare-fun tp!2286787 () Bool)

(assert (=> b!7780541 (= e!4609015 tp!2286787)))

(declare-fun b!7780539 () Bool)

(assert (=> b!7780539 (= e!4609015 tp_is_empty!51997)))

(assert (= (and b!7780052 ((_ is ElementMatch!20821) (reg!21150 r2!6217))) b!7780539))

(assert (= (and b!7780052 ((_ is Concat!29666) (reg!21150 r2!6217))) b!7780540))

(assert (= (and b!7780052 ((_ is Star!20821) (reg!21150 r2!6217))) b!7780541))

(assert (= (and b!7780052 ((_ is Union!20821) (reg!21150 r2!6217))) b!7780542))

(declare-fun b!7780547 () Bool)

(declare-fun e!4609018 () Bool)

(declare-fun tp!2286794 () Bool)

(assert (=> b!7780547 (= e!4609018 (and tp_is_empty!51997 tp!2286794))))

(assert (=> b!7780042 (= tp!2286707 e!4609018)))

(assert (= (and b!7780042 ((_ is Cons!73536) (t!388395 s!14292))) b!7780547))

(declare-fun e!4609019 () Bool)

(assert (=> b!7780056 (= tp!2286704 e!4609019)))

(declare-fun b!7780551 () Bool)

(declare-fun tp!2286799 () Bool)

(declare-fun tp!2286796 () Bool)

(assert (=> b!7780551 (= e!4609019 (and tp!2286799 tp!2286796))))

(declare-fun b!7780549 () Bool)

(declare-fun tp!2286797 () Bool)

(declare-fun tp!2286798 () Bool)

(assert (=> b!7780549 (= e!4609019 (and tp!2286797 tp!2286798))))

(declare-fun b!7780550 () Bool)

(declare-fun tp!2286795 () Bool)

(assert (=> b!7780550 (= e!4609019 tp!2286795)))

(declare-fun b!7780548 () Bool)

(assert (=> b!7780548 (= e!4609019 tp_is_empty!51997)))

(assert (= (and b!7780056 ((_ is ElementMatch!20821) (regOne!42154 r2!6217))) b!7780548))

(assert (= (and b!7780056 ((_ is Concat!29666) (regOne!42154 r2!6217))) b!7780549))

(assert (= (and b!7780056 ((_ is Star!20821) (regOne!42154 r2!6217))) b!7780550))

(assert (= (and b!7780056 ((_ is Union!20821) (regOne!42154 r2!6217))) b!7780551))

(declare-fun e!4609020 () Bool)

(assert (=> b!7780056 (= tp!2286705 e!4609020)))

(declare-fun b!7780555 () Bool)

(declare-fun tp!2286804 () Bool)

(declare-fun tp!2286801 () Bool)

(assert (=> b!7780555 (= e!4609020 (and tp!2286804 tp!2286801))))

(declare-fun b!7780553 () Bool)

(declare-fun tp!2286802 () Bool)

(declare-fun tp!2286803 () Bool)

(assert (=> b!7780553 (= e!4609020 (and tp!2286802 tp!2286803))))

(declare-fun b!7780554 () Bool)

(declare-fun tp!2286800 () Bool)

(assert (=> b!7780554 (= e!4609020 tp!2286800)))

(declare-fun b!7780552 () Bool)

(assert (=> b!7780552 (= e!4609020 tp_is_empty!51997)))

(assert (= (and b!7780056 ((_ is ElementMatch!20821) (regTwo!42154 r2!6217))) b!7780552))

(assert (= (and b!7780056 ((_ is Concat!29666) (regTwo!42154 r2!6217))) b!7780553))

(assert (= (and b!7780056 ((_ is Star!20821) (regTwo!42154 r2!6217))) b!7780554))

(assert (= (and b!7780056 ((_ is Union!20821) (regTwo!42154 r2!6217))) b!7780555))

(declare-fun e!4609021 () Bool)

(assert (=> b!7780051 (= tp!2286712 e!4609021)))

(declare-fun b!7780559 () Bool)

(declare-fun tp!2286809 () Bool)

(declare-fun tp!2286806 () Bool)

(assert (=> b!7780559 (= e!4609021 (and tp!2286809 tp!2286806))))

(declare-fun b!7780557 () Bool)

(declare-fun tp!2286807 () Bool)

(declare-fun tp!2286808 () Bool)

(assert (=> b!7780557 (= e!4609021 (and tp!2286807 tp!2286808))))

(declare-fun b!7780558 () Bool)

(declare-fun tp!2286805 () Bool)

(assert (=> b!7780558 (= e!4609021 tp!2286805)))

(declare-fun b!7780556 () Bool)

(assert (=> b!7780556 (= e!4609021 tp_is_empty!51997)))

(assert (= (and b!7780051 ((_ is ElementMatch!20821) (regOne!42155 r2!6217))) b!7780556))

(assert (= (and b!7780051 ((_ is Concat!29666) (regOne!42155 r2!6217))) b!7780557))

(assert (= (and b!7780051 ((_ is Star!20821) (regOne!42155 r2!6217))) b!7780558))

(assert (= (and b!7780051 ((_ is Union!20821) (regOne!42155 r2!6217))) b!7780559))

(declare-fun e!4609022 () Bool)

(assert (=> b!7780051 (= tp!2286703 e!4609022)))

(declare-fun b!7780563 () Bool)

(declare-fun tp!2286814 () Bool)

(declare-fun tp!2286811 () Bool)

(assert (=> b!7780563 (= e!4609022 (and tp!2286814 tp!2286811))))

(declare-fun b!7780561 () Bool)

(declare-fun tp!2286812 () Bool)

(declare-fun tp!2286813 () Bool)

(assert (=> b!7780561 (= e!4609022 (and tp!2286812 tp!2286813))))

(declare-fun b!7780562 () Bool)

(declare-fun tp!2286810 () Bool)

(assert (=> b!7780562 (= e!4609022 tp!2286810)))

(declare-fun b!7780560 () Bool)

(assert (=> b!7780560 (= e!4609022 tp_is_empty!51997)))

(assert (= (and b!7780051 ((_ is ElementMatch!20821) (regTwo!42155 r2!6217))) b!7780560))

(assert (= (and b!7780051 ((_ is Concat!29666) (regTwo!42155 r2!6217))) b!7780561))

(assert (= (and b!7780051 ((_ is Star!20821) (regTwo!42155 r2!6217))) b!7780562))

(assert (= (and b!7780051 ((_ is Union!20821) (regTwo!42155 r2!6217))) b!7780563))

(declare-fun e!4609023 () Bool)

(assert (=> b!7780044 (= tp!2286710 e!4609023)))

(declare-fun b!7780567 () Bool)

(declare-fun tp!2286819 () Bool)

(declare-fun tp!2286816 () Bool)

(assert (=> b!7780567 (= e!4609023 (and tp!2286819 tp!2286816))))

(declare-fun b!7780565 () Bool)

(declare-fun tp!2286817 () Bool)

(declare-fun tp!2286818 () Bool)

(assert (=> b!7780565 (= e!4609023 (and tp!2286817 tp!2286818))))

(declare-fun b!7780566 () Bool)

(declare-fun tp!2286815 () Bool)

(assert (=> b!7780566 (= e!4609023 tp!2286815)))

(declare-fun b!7780564 () Bool)

(assert (=> b!7780564 (= e!4609023 tp_is_empty!51997)))

(assert (= (and b!7780044 ((_ is ElementMatch!20821) (regOne!42154 r1!6279))) b!7780564))

(assert (= (and b!7780044 ((_ is Concat!29666) (regOne!42154 r1!6279))) b!7780565))

(assert (= (and b!7780044 ((_ is Star!20821) (regOne!42154 r1!6279))) b!7780566))

(assert (= (and b!7780044 ((_ is Union!20821) (regOne!42154 r1!6279))) b!7780567))

(declare-fun e!4609024 () Bool)

(assert (=> b!7780044 (= tp!2286713 e!4609024)))

(declare-fun b!7780571 () Bool)

(declare-fun tp!2286824 () Bool)

(declare-fun tp!2286821 () Bool)

(assert (=> b!7780571 (= e!4609024 (and tp!2286824 tp!2286821))))

(declare-fun b!7780569 () Bool)

(declare-fun tp!2286822 () Bool)

(declare-fun tp!2286823 () Bool)

(assert (=> b!7780569 (= e!4609024 (and tp!2286822 tp!2286823))))

(declare-fun b!7780570 () Bool)

(declare-fun tp!2286820 () Bool)

(assert (=> b!7780570 (= e!4609024 tp!2286820)))

(declare-fun b!7780568 () Bool)

(assert (=> b!7780568 (= e!4609024 tp_is_empty!51997)))

(assert (= (and b!7780044 ((_ is ElementMatch!20821) (regTwo!42154 r1!6279))) b!7780568))

(assert (= (and b!7780044 ((_ is Concat!29666) (regTwo!42154 r1!6279))) b!7780569))

(assert (= (and b!7780044 ((_ is Star!20821) (regTwo!42154 r1!6279))) b!7780570))

(assert (= (and b!7780044 ((_ is Union!20821) (regTwo!42154 r1!6279))) b!7780571))

(declare-fun e!4609025 () Bool)

(assert (=> b!7780055 (= tp!2286711 e!4609025)))

(declare-fun b!7780575 () Bool)

(declare-fun tp!2286829 () Bool)

(declare-fun tp!2286826 () Bool)

(assert (=> b!7780575 (= e!4609025 (and tp!2286829 tp!2286826))))

(declare-fun b!7780573 () Bool)

(declare-fun tp!2286827 () Bool)

(declare-fun tp!2286828 () Bool)

(assert (=> b!7780573 (= e!4609025 (and tp!2286827 tp!2286828))))

(declare-fun b!7780574 () Bool)

(declare-fun tp!2286825 () Bool)

(assert (=> b!7780574 (= e!4609025 tp!2286825)))

(declare-fun b!7780572 () Bool)

(assert (=> b!7780572 (= e!4609025 tp_is_empty!51997)))

(assert (= (and b!7780055 ((_ is ElementMatch!20821) (reg!21150 r1!6279))) b!7780572))

(assert (= (and b!7780055 ((_ is Concat!29666) (reg!21150 r1!6279))) b!7780573))

(assert (= (and b!7780055 ((_ is Star!20821) (reg!21150 r1!6279))) b!7780574))

(assert (= (and b!7780055 ((_ is Union!20821) (reg!21150 r1!6279))) b!7780575))

(declare-fun e!4609026 () Bool)

(assert (=> b!7780053 (= tp!2286708 e!4609026)))

(declare-fun b!7780579 () Bool)

(declare-fun tp!2286834 () Bool)

(declare-fun tp!2286831 () Bool)

(assert (=> b!7780579 (= e!4609026 (and tp!2286834 tp!2286831))))

(declare-fun b!7780577 () Bool)

(declare-fun tp!2286832 () Bool)

(declare-fun tp!2286833 () Bool)

(assert (=> b!7780577 (= e!4609026 (and tp!2286832 tp!2286833))))

(declare-fun b!7780578 () Bool)

(declare-fun tp!2286830 () Bool)

(assert (=> b!7780578 (= e!4609026 tp!2286830)))

(declare-fun b!7780576 () Bool)

(assert (=> b!7780576 (= e!4609026 tp_is_empty!51997)))

(assert (= (and b!7780053 ((_ is ElementMatch!20821) (regOne!42155 r1!6279))) b!7780576))

(assert (= (and b!7780053 ((_ is Concat!29666) (regOne!42155 r1!6279))) b!7780577))

(assert (= (and b!7780053 ((_ is Star!20821) (regOne!42155 r1!6279))) b!7780578))

(assert (= (and b!7780053 ((_ is Union!20821) (regOne!42155 r1!6279))) b!7780579))

(declare-fun e!4609027 () Bool)

(assert (=> b!7780053 (= tp!2286706 e!4609027)))

(declare-fun b!7780583 () Bool)

(declare-fun tp!2286839 () Bool)

(declare-fun tp!2286836 () Bool)

(assert (=> b!7780583 (= e!4609027 (and tp!2286839 tp!2286836))))

(declare-fun b!7780581 () Bool)

(declare-fun tp!2286837 () Bool)

(declare-fun tp!2286838 () Bool)

(assert (=> b!7780581 (= e!4609027 (and tp!2286837 tp!2286838))))

(declare-fun b!7780582 () Bool)

(declare-fun tp!2286835 () Bool)

(assert (=> b!7780582 (= e!4609027 tp!2286835)))

(declare-fun b!7780580 () Bool)

(assert (=> b!7780580 (= e!4609027 tp_is_empty!51997)))

(assert (= (and b!7780053 ((_ is ElementMatch!20821) (regTwo!42155 r1!6279))) b!7780580))

(assert (= (and b!7780053 ((_ is Concat!29666) (regTwo!42155 r1!6279))) b!7780581))

(assert (= (and b!7780053 ((_ is Star!20821) (regTwo!42155 r1!6279))) b!7780582))

(assert (= (and b!7780053 ((_ is Union!20821) (regTwo!42155 r1!6279))) b!7780583))

(check-sat (not b!7780514) (not b!7780483) (not b!7780577) (not b!7780119) (not b!7780225) (not b!7780250) (not b!7780583) (not b!7780484) (not b!7780573) (not b!7780513) (not d!2345100) (not b!7780582) (not b!7780561) (not b!7780562) (not b!7780203) (not b!7780259) (not b!7780551) (not bm!721132) (not bm!721144) (not bm!721110) (not b!7780231) (not b!7780565) (not bm!721176) (not bm!721129) (not b!7780517) (not b!7780542) (not b!7780257) (not bm!721133) (not b!7780549) (not d!2345140) (not b!7780499) (not b!7780553) (not b!7780229) (not d!2345082) (not b!7780570) (not b!7780489) (not b!7780555) (not b!7780228) (not b!7780557) (not b!7780522) (not b!7780251) (not b!7780482) (not b!7780541) (not b!7780306) (not d!2345118) (not b!7780121) (not b!7780512) (not b!7780554) (not d!2345104) (not b!7780571) (not b!7780550) (not d!2345096) (not d!2345136) (not b!7780559) (not bm!721134) (not b!7780120) (not bm!721171) (not b!7780579) (not d!2345106) (not b!7780511) (not bm!721175) (not bm!721169) (not b!7780563) (not b!7780508) (not bm!721172) (not b!7780575) (not b!7780260) (not b!7780567) (not b!7780481) (not bm!721179) (not b!7780566) (not b!7780122) (not b!7780116) (not b!7780547) (not bm!721142) (not b!7780540) (not d!2345086) (not d!2345120) tp_is_empty!51997 (not b!7780258) (not b!7780254) (not d!2345094) (not b!7780486) (not d!2345098) (not b!7780578) (not b!7780234) (not b!7780558) (not b!7780192) (not b!7780230) (not b!7780574) (not b!7780125) (not d!2345142) (not b!7780263) (not b!7780569) (not b!7780480) (not b!7780581) (not bm!721177))
(check-sat)
