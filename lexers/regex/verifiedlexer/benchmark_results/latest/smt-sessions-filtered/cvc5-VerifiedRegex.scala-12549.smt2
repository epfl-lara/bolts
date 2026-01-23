; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!696714 () Bool)

(assert start!696714)

(declare-fun res!2915499 () Bool)

(declare-fun e!4294132 () Bool)

(assert (=> start!696714 (=> (not res!2915499) (not e!4294132))))

(declare-datatypes ((C!36686 0))(
  ( (C!36687 (val!28291 Int)) )
))
(declare-datatypes ((Regex!18206 0))(
  ( (ElementMatch!18206 (c!1332545 C!36686)) (Concat!27051 (regOne!36924 Regex!18206) (regTwo!36924 Regex!18206)) (EmptyExpr!18206) (Star!18206 (reg!18535 Regex!18206)) (EmptyLang!18206) (Union!18206 (regOne!36925 Regex!18206) (regTwo!36925 Regex!18206)) )
))
(declare-datatypes ((List!69490 0))(
  ( (Nil!69366) (Cons!69366 (h!75814 Regex!18206) (t!383507 List!69490)) )
))
(declare-datatypes ((Context!14400 0))(
  ( (Context!14401 (exprs!7700 List!69490)) )
))
(declare-datatypes ((List!69491 0))(
  ( (Nil!69367) (Cons!69367 (h!75815 Context!14400) (t!383508 List!69491)) )
))
(declare-fun zl!333 () List!69491)

(declare-fun r!7278 () Regex!18206)

(declare-fun contains!20638 (List!69490 Regex!18206) Bool)

(declare-fun unfocusZipperList!2247 (List!69491) List!69490)

(assert (=> start!696714 (= res!2915499 (contains!20638 (unfocusZipperList!2247 zl!333) r!7278))))

(assert (=> start!696714 e!4294132))

(declare-fun e!4294134 () Bool)

(assert (=> start!696714 e!4294134))

(declare-fun e!4294133 () Bool)

(assert (=> start!696714 e!4294133))

(declare-fun b!7145592 () Bool)

(declare-fun lambda!435693 () Int)

(declare-fun forall!17042 (List!69490 Int) Bool)

(assert (=> b!7145592 (= e!4294132 (not (forall!17042 (exprs!7700 (h!75815 zl!333)) lambda!435693)))))

(declare-fun b!7145593 () Bool)

(declare-fun res!2915498 () Bool)

(assert (=> b!7145593 (=> (not res!2915498) (not e!4294132))))

(assert (=> b!7145593 (= res!2915498 (is-Cons!69367 zl!333))))

(declare-fun b!7145594 () Bool)

(declare-fun tp!1971259 () Bool)

(declare-fun tp!1971261 () Bool)

(assert (=> b!7145594 (= e!4294133 (and tp!1971259 tp!1971261))))

(declare-fun b!7145595 () Bool)

(declare-fun e!4294131 () Bool)

(declare-fun tp!1971264 () Bool)

(assert (=> b!7145595 (= e!4294131 tp!1971264)))

(declare-fun b!7145596 () Bool)

(declare-fun tp!1971260 () Bool)

(assert (=> b!7145596 (= e!4294133 tp!1971260)))

(declare-fun b!7145597 () Bool)

(declare-fun tp_is_empty!46049 () Bool)

(assert (=> b!7145597 (= e!4294133 tp_is_empty!46049)))

(declare-fun tp!1971262 () Bool)

(declare-fun b!7145598 () Bool)

(declare-fun inv!88580 (Context!14400) Bool)

(assert (=> b!7145598 (= e!4294134 (and (inv!88580 (h!75815 zl!333)) e!4294131 tp!1971262))))

(declare-fun b!7145599 () Bool)

(declare-fun tp!1971263 () Bool)

(declare-fun tp!1971258 () Bool)

(assert (=> b!7145599 (= e!4294133 (and tp!1971263 tp!1971258))))

(assert (= (and start!696714 res!2915499) b!7145593))

(assert (= (and b!7145593 res!2915498) b!7145592))

(assert (= b!7145598 b!7145595))

(assert (= (and start!696714 (is-Cons!69367 zl!333)) b!7145598))

(assert (= (and start!696714 (is-ElementMatch!18206 r!7278)) b!7145597))

(assert (= (and start!696714 (is-Concat!27051 r!7278)) b!7145594))

(assert (= (and start!696714 (is-Star!18206 r!7278)) b!7145596))

(assert (= (and start!696714 (is-Union!18206 r!7278)) b!7145599))

(declare-fun m!7858970 () Bool)

(assert (=> start!696714 m!7858970))

(assert (=> start!696714 m!7858970))

(declare-fun m!7858972 () Bool)

(assert (=> start!696714 m!7858972))

(declare-fun m!7858974 () Bool)

(assert (=> b!7145592 m!7858974))

(declare-fun m!7858976 () Bool)

(assert (=> b!7145598 m!7858976))

(push 1)

(assert (not b!7145595))

(assert (not b!7145599))

(assert (not b!7145598))

(assert (not b!7145592))

(assert (not b!7145594))

(assert tp_is_empty!46049)

(assert (not start!696714))

(assert (not b!7145596))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2228038 () Bool)

(declare-fun lt!2568805 () Bool)

(declare-fun content!14230 (List!69490) (Set Regex!18206))

(assert (=> d!2228038 (= lt!2568805 (set.member r!7278 (content!14230 (unfocusZipperList!2247 zl!333))))))

(declare-fun e!4294152 () Bool)

(assert (=> d!2228038 (= lt!2568805 e!4294152)))

(declare-fun res!2915510 () Bool)

(assert (=> d!2228038 (=> (not res!2915510) (not e!4294152))))

(assert (=> d!2228038 (= res!2915510 (is-Cons!69366 (unfocusZipperList!2247 zl!333)))))

(assert (=> d!2228038 (= (contains!20638 (unfocusZipperList!2247 zl!333) r!7278) lt!2568805)))

(declare-fun b!7145628 () Bool)

(declare-fun e!4294151 () Bool)

(assert (=> b!7145628 (= e!4294152 e!4294151)))

(declare-fun res!2915511 () Bool)

(assert (=> b!7145628 (=> res!2915511 e!4294151)))

(assert (=> b!7145628 (= res!2915511 (= (h!75814 (unfocusZipperList!2247 zl!333)) r!7278))))

(declare-fun b!7145629 () Bool)

(assert (=> b!7145629 (= e!4294151 (contains!20638 (t!383507 (unfocusZipperList!2247 zl!333)) r!7278))))

(assert (= (and d!2228038 res!2915510) b!7145628))

(assert (= (and b!7145628 (not res!2915511)) b!7145629))

(assert (=> d!2228038 m!7858970))

(declare-fun m!7858986 () Bool)

(assert (=> d!2228038 m!7858986))

(declare-fun m!7858988 () Bool)

(assert (=> d!2228038 m!7858988))

(declare-fun m!7858990 () Bool)

(assert (=> b!7145629 m!7858990))

(assert (=> start!696714 d!2228038))

(declare-fun bs!1889081 () Bool)

(declare-fun d!2228040 () Bool)

(assert (= bs!1889081 (and d!2228040 b!7145592)))

(declare-fun lambda!435699 () Int)

(assert (=> bs!1889081 (= lambda!435699 lambda!435693)))

(declare-fun lt!2568808 () List!69490)

(assert (=> d!2228040 (forall!17042 lt!2568808 lambda!435699)))

(declare-fun e!4294155 () List!69490)

(assert (=> d!2228040 (= lt!2568808 e!4294155)))

(declare-fun c!1332549 () Bool)

(assert (=> d!2228040 (= c!1332549 (is-Cons!69367 zl!333))))

(assert (=> d!2228040 (= (unfocusZipperList!2247 zl!333) lt!2568808)))

(declare-fun b!7145634 () Bool)

(declare-fun generalisedConcat!2383 (List!69490) Regex!18206)

(assert (=> b!7145634 (= e!4294155 (Cons!69366 (generalisedConcat!2383 (exprs!7700 (h!75815 zl!333))) (unfocusZipperList!2247 (t!383508 zl!333))))))

(declare-fun b!7145635 () Bool)

(assert (=> b!7145635 (= e!4294155 Nil!69366)))

(assert (= (and d!2228040 c!1332549) b!7145634))

(assert (= (and d!2228040 (not c!1332549)) b!7145635))

(declare-fun m!7858992 () Bool)

(assert (=> d!2228040 m!7858992))

(declare-fun m!7858994 () Bool)

(assert (=> b!7145634 m!7858994))

(declare-fun m!7858996 () Bool)

(assert (=> b!7145634 m!7858996))

(assert (=> start!696714 d!2228040))

(declare-fun d!2228044 () Bool)

(declare-fun res!2915516 () Bool)

(declare-fun e!4294160 () Bool)

(assert (=> d!2228044 (=> res!2915516 e!4294160)))

(assert (=> d!2228044 (= res!2915516 (is-Nil!69366 (exprs!7700 (h!75815 zl!333))))))

(assert (=> d!2228044 (= (forall!17042 (exprs!7700 (h!75815 zl!333)) lambda!435693) e!4294160)))

(declare-fun b!7145640 () Bool)

(declare-fun e!4294161 () Bool)

(assert (=> b!7145640 (= e!4294160 e!4294161)))

(declare-fun res!2915517 () Bool)

(assert (=> b!7145640 (=> (not res!2915517) (not e!4294161))))

(declare-fun dynLambda!28252 (Int Regex!18206) Bool)

(assert (=> b!7145640 (= res!2915517 (dynLambda!28252 lambda!435693 (h!75814 (exprs!7700 (h!75815 zl!333)))))))

(declare-fun b!7145641 () Bool)

(assert (=> b!7145641 (= e!4294161 (forall!17042 (t!383507 (exprs!7700 (h!75815 zl!333))) lambda!435693))))

(assert (= (and d!2228044 (not res!2915516)) b!7145640))

(assert (= (and b!7145640 res!2915517) b!7145641))

(declare-fun b_lambda!272733 () Bool)

(assert (=> (not b_lambda!272733) (not b!7145640)))

(declare-fun m!7858998 () Bool)

(assert (=> b!7145640 m!7858998))

(declare-fun m!7859000 () Bool)

(assert (=> b!7145641 m!7859000))

(assert (=> b!7145592 d!2228044))

(declare-fun bs!1889082 () Bool)

(declare-fun d!2228046 () Bool)

(assert (= bs!1889082 (and d!2228046 b!7145592)))

(declare-fun lambda!435702 () Int)

(assert (=> bs!1889082 (= lambda!435702 lambda!435693)))

(declare-fun bs!1889083 () Bool)

(assert (= bs!1889083 (and d!2228046 d!2228040)))

(assert (=> bs!1889083 (= lambda!435702 lambda!435699)))

(assert (=> d!2228046 (= (inv!88580 (h!75815 zl!333)) (forall!17042 (exprs!7700 (h!75815 zl!333)) lambda!435702))))

(declare-fun bs!1889084 () Bool)

(assert (= bs!1889084 d!2228046))

(declare-fun m!7859002 () Bool)

(assert (=> bs!1889084 m!7859002))

(assert (=> b!7145598 d!2228046))

(declare-fun e!4294168 () Bool)

(assert (=> b!7145596 (= tp!1971260 e!4294168)))

(declare-fun b!7145658 () Bool)

(declare-fun tp!1971297 () Bool)

(assert (=> b!7145658 (= e!4294168 tp!1971297)))

(declare-fun b!7145659 () Bool)

(declare-fun tp!1971298 () Bool)

(declare-fun tp!1971299 () Bool)

(assert (=> b!7145659 (= e!4294168 (and tp!1971298 tp!1971299))))

(declare-fun b!7145657 () Bool)

(declare-fun tp!1971300 () Bool)

(declare-fun tp!1971296 () Bool)

(assert (=> b!7145657 (= e!4294168 (and tp!1971300 tp!1971296))))

(declare-fun b!7145656 () Bool)

(assert (=> b!7145656 (= e!4294168 tp_is_empty!46049)))

(assert (= (and b!7145596 (is-ElementMatch!18206 (reg!18535 r!7278))) b!7145656))

(assert (= (and b!7145596 (is-Concat!27051 (reg!18535 r!7278))) b!7145657))

(assert (= (and b!7145596 (is-Star!18206 (reg!18535 r!7278))) b!7145658))

(assert (= (and b!7145596 (is-Union!18206 (reg!18535 r!7278))) b!7145659))

(declare-fun b!7145666 () Bool)

(declare-fun e!4294173 () Bool)

(declare-fun tp!1971305 () Bool)

(declare-fun tp!1971306 () Bool)

(assert (=> b!7145666 (= e!4294173 (and tp!1971305 tp!1971306))))

(assert (=> b!7145595 (= tp!1971264 e!4294173)))

(assert (= (and b!7145595 (is-Cons!69366 (exprs!7700 (h!75815 zl!333)))) b!7145666))

(declare-fun e!4294174 () Bool)

(assert (=> b!7145599 (= tp!1971263 e!4294174)))

(declare-fun b!7145669 () Bool)

(declare-fun tp!1971308 () Bool)

(assert (=> b!7145669 (= e!4294174 tp!1971308)))

(declare-fun b!7145670 () Bool)

(declare-fun tp!1971309 () Bool)

(declare-fun tp!1971310 () Bool)

(assert (=> b!7145670 (= e!4294174 (and tp!1971309 tp!1971310))))

(declare-fun b!7145668 () Bool)

(declare-fun tp!1971311 () Bool)

(declare-fun tp!1971307 () Bool)

(assert (=> b!7145668 (= e!4294174 (and tp!1971311 tp!1971307))))

(declare-fun b!7145667 () Bool)

(assert (=> b!7145667 (= e!4294174 tp_is_empty!46049)))

(assert (= (and b!7145599 (is-ElementMatch!18206 (regOne!36925 r!7278))) b!7145667))

(assert (= (and b!7145599 (is-Concat!27051 (regOne!36925 r!7278))) b!7145668))

(assert (= (and b!7145599 (is-Star!18206 (regOne!36925 r!7278))) b!7145669))

(assert (= (and b!7145599 (is-Union!18206 (regOne!36925 r!7278))) b!7145670))

(declare-fun e!4294175 () Bool)

(assert (=> b!7145599 (= tp!1971258 e!4294175)))

(declare-fun b!7145673 () Bool)

(declare-fun tp!1971313 () Bool)

(assert (=> b!7145673 (= e!4294175 tp!1971313)))

(declare-fun b!7145674 () Bool)

(declare-fun tp!1971314 () Bool)

(declare-fun tp!1971315 () Bool)

(assert (=> b!7145674 (= e!4294175 (and tp!1971314 tp!1971315))))

(declare-fun b!7145672 () Bool)

(declare-fun tp!1971316 () Bool)

(declare-fun tp!1971312 () Bool)

(assert (=> b!7145672 (= e!4294175 (and tp!1971316 tp!1971312))))

(declare-fun b!7145671 () Bool)

(assert (=> b!7145671 (= e!4294175 tp_is_empty!46049)))

(assert (= (and b!7145599 (is-ElementMatch!18206 (regTwo!36925 r!7278))) b!7145671))

(assert (= (and b!7145599 (is-Concat!27051 (regTwo!36925 r!7278))) b!7145672))

(assert (= (and b!7145599 (is-Star!18206 (regTwo!36925 r!7278))) b!7145673))

(assert (= (and b!7145599 (is-Union!18206 (regTwo!36925 r!7278))) b!7145674))

(declare-fun e!4294176 () Bool)

(assert (=> b!7145594 (= tp!1971259 e!4294176)))

(declare-fun b!7145677 () Bool)

(declare-fun tp!1971318 () Bool)

(assert (=> b!7145677 (= e!4294176 tp!1971318)))

(declare-fun b!7145678 () Bool)

(declare-fun tp!1971319 () Bool)

(declare-fun tp!1971320 () Bool)

(assert (=> b!7145678 (= e!4294176 (and tp!1971319 tp!1971320))))

(declare-fun b!7145676 () Bool)

(declare-fun tp!1971321 () Bool)

(declare-fun tp!1971317 () Bool)

(assert (=> b!7145676 (= e!4294176 (and tp!1971321 tp!1971317))))

(declare-fun b!7145675 () Bool)

(assert (=> b!7145675 (= e!4294176 tp_is_empty!46049)))

(assert (= (and b!7145594 (is-ElementMatch!18206 (regOne!36924 r!7278))) b!7145675))

(assert (= (and b!7145594 (is-Concat!27051 (regOne!36924 r!7278))) b!7145676))

(assert (= (and b!7145594 (is-Star!18206 (regOne!36924 r!7278))) b!7145677))

(assert (= (and b!7145594 (is-Union!18206 (regOne!36924 r!7278))) b!7145678))

(declare-fun e!4294177 () Bool)

(assert (=> b!7145594 (= tp!1971261 e!4294177)))

(declare-fun b!7145681 () Bool)

(declare-fun tp!1971323 () Bool)

(assert (=> b!7145681 (= e!4294177 tp!1971323)))

(declare-fun b!7145682 () Bool)

(declare-fun tp!1971324 () Bool)

(declare-fun tp!1971325 () Bool)

(assert (=> b!7145682 (= e!4294177 (and tp!1971324 tp!1971325))))

(declare-fun b!7145680 () Bool)

(declare-fun tp!1971326 () Bool)

(declare-fun tp!1971322 () Bool)

(assert (=> b!7145680 (= e!4294177 (and tp!1971326 tp!1971322))))

(declare-fun b!7145679 () Bool)

(assert (=> b!7145679 (= e!4294177 tp_is_empty!46049)))

(assert (= (and b!7145594 (is-ElementMatch!18206 (regTwo!36924 r!7278))) b!7145679))

(assert (= (and b!7145594 (is-Concat!27051 (regTwo!36924 r!7278))) b!7145680))

(assert (= (and b!7145594 (is-Star!18206 (regTwo!36924 r!7278))) b!7145681))

(assert (= (and b!7145594 (is-Union!18206 (regTwo!36924 r!7278))) b!7145682))

(declare-fun b!7145690 () Bool)

(declare-fun e!4294183 () Bool)

(declare-fun tp!1971331 () Bool)

(assert (=> b!7145690 (= e!4294183 tp!1971331)))

(declare-fun tp!1971332 () Bool)

(declare-fun e!4294182 () Bool)

(declare-fun b!7145689 () Bool)

(assert (=> b!7145689 (= e!4294182 (and (inv!88580 (h!75815 (t!383508 zl!333))) e!4294183 tp!1971332))))

(assert (=> b!7145598 (= tp!1971262 e!4294182)))

(assert (= b!7145689 b!7145690))

(assert (= (and b!7145598 (is-Cons!69367 (t!383508 zl!333))) b!7145689))

(declare-fun m!7859010 () Bool)

(assert (=> b!7145689 m!7859010))

(declare-fun b_lambda!272735 () Bool)

(assert (= b_lambda!272733 (or b!7145592 b_lambda!272735)))

(declare-fun bs!1889085 () Bool)

(declare-fun d!2228050 () Bool)

(assert (= bs!1889085 (and d!2228050 b!7145592)))

(declare-fun validRegex!9373 (Regex!18206) Bool)

(assert (=> bs!1889085 (= (dynLambda!28252 lambda!435693 (h!75814 (exprs!7700 (h!75815 zl!333)))) (validRegex!9373 (h!75814 (exprs!7700 (h!75815 zl!333)))))))

(declare-fun m!7859012 () Bool)

(assert (=> bs!1889085 m!7859012))

(assert (=> b!7145640 d!2228050))

(push 1)

(assert (not bs!1889085))

(assert (not b!7145678))

(assert (not b!7145690))

(assert tp_is_empty!46049)

(assert (not b!7145676))

(assert (not b!7145670))

(assert (not b!7145634))

(assert (not b!7145668))

(assert (not b!7145673))

(assert (not b!7145669))

(assert (not b!7145680))

(assert (not b!7145659))

(assert (not b!7145682))

(assert (not d!2228040))

(assert (not d!2228038))

(assert (not b!7145689))

(assert (not d!2228046))

(assert (not b_lambda!272735))

(assert (not b!7145672))

(assert (not b!7145677))

(assert (not b!7145629))

(assert (not b!7145681))

(assert (not b!7145641))

(assert (not b!7145674))

(assert (not b!7145657))

(assert (not b!7145666))

(assert (not b!7145658))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

