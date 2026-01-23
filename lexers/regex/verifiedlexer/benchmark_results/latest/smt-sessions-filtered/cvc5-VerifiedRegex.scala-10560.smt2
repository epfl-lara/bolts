; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!543770 () Bool)

(assert start!543770)

(declare-fun b!5136184 () Bool)

(declare-fun res!2187610 () Bool)

(declare-fun e!3203633 () Bool)

(assert (=> b!5136184 (=> (not res!2187610) (not e!3203633))))

(declare-fun e!3203632 () Bool)

(assert (=> b!5136184 (= res!2187610 e!3203632)))

(declare-fun res!2187612 () Bool)

(assert (=> b!5136184 (=> res!2187612 e!3203632)))

(declare-datatypes ((C!29086 0))(
  ( (C!29087 (val!24195 Int)) )
))
(declare-datatypes ((Regex!14410 0))(
  ( (ElementMatch!14410 (c!884308 C!29086)) (Concat!23255 (regOne!29332 Regex!14410) (regTwo!29332 Regex!14410)) (EmptyExpr!14410) (Star!14410 (reg!14739 Regex!14410)) (EmptyLang!14410) (Union!14410 (regOne!29333 Regex!14410) (regTwo!29333 Regex!14410)) )
))
(declare-datatypes ((List!59762 0))(
  ( (Nil!59638) (Cons!59638 (h!66086 Regex!14410) (t!372791 List!59762)) )
))
(declare-datatypes ((Context!7588 0))(
  ( (Context!7589 (exprs!4294 List!59762)) )
))
(declare-fun ctx!74 () Context!7588)

(assert (=> b!5136184 (= res!2187612 (not (is-Cons!59638 (exprs!4294 ctx!74))))))

(declare-fun res!2187611 () Bool)

(assert (=> start!543770 (=> (not res!2187611) (not e!3203633))))

(declare-fun lostCause!1380 (Context!7588) Bool)

(assert (=> start!543770 (= res!2187611 (lostCause!1380 ctx!74))))

(assert (=> start!543770 e!3203633))

(declare-fun e!3203634 () Bool)

(declare-fun inv!79207 (Context!7588) Bool)

(assert (=> start!543770 (and (inv!79207 ctx!74) e!3203634)))

(declare-fun b!5136185 () Bool)

(declare-fun res!2187609 () Bool)

(assert (=> b!5136185 (=> (not res!2187609) (not e!3203633))))

(assert (=> b!5136185 (= res!2187609 (is-Cons!59638 (exprs!4294 ctx!74)))))

(declare-fun b!5136186 () Bool)

(declare-fun nullable!4783 (Regex!14410) Bool)

(assert (=> b!5136186 (= e!3203632 (not (nullable!4783 (h!66086 (exprs!4294 ctx!74)))))))

(declare-fun b!5136187 () Bool)

(declare-fun tp!1432458 () Bool)

(assert (=> b!5136187 (= e!3203634 tp!1432458)))

(declare-fun b!5136188 () Bool)

(assert (=> b!5136188 (= e!3203633 (not (inv!79207 (Context!7589 (t!372791 (exprs!4294 ctx!74))))))))

(assert (= (and start!543770 res!2187611) b!5136184))

(assert (= (and b!5136184 (not res!2187612)) b!5136186))

(assert (= (and b!5136184 res!2187610) b!5136185))

(assert (= (and b!5136185 res!2187609) b!5136188))

(assert (= start!543770 b!5136187))

(declare-fun m!6201918 () Bool)

(assert (=> start!543770 m!6201918))

(declare-fun m!6201920 () Bool)

(assert (=> start!543770 m!6201920))

(declare-fun m!6201922 () Bool)

(assert (=> b!5136186 m!6201922))

(declare-fun m!6201924 () Bool)

(assert (=> b!5136188 m!6201924))

(push 1)

(assert (not b!5136188))

(assert (not start!543770))

(assert (not b!5136186))

(assert (not b!5136187))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1661967 () Bool)

(declare-fun lambda!255995 () Int)

(declare-fun forall!13879 (List!59762 Int) Bool)

(assert (=> d!1661967 (= (inv!79207 (Context!7589 (t!372791 (exprs!4294 ctx!74)))) (forall!13879 (exprs!4294 (Context!7589 (t!372791 (exprs!4294 ctx!74)))) lambda!255995))))

(declare-fun bs!1200151 () Bool)

(assert (= bs!1200151 d!1661967))

(declare-fun m!6201936 () Bool)

(assert (=> bs!1200151 m!6201936))

(assert (=> b!5136188 d!1661967))

(declare-fun bs!1200152 () Bool)

(declare-fun d!1661969 () Bool)

(assert (= bs!1200152 (and d!1661969 d!1661967)))

(declare-fun lambda!255998 () Int)

(assert (=> bs!1200152 (not (= lambda!255998 lambda!255995))))

(declare-fun exists!1748 (List!59762 Int) Bool)

(assert (=> d!1661969 (= (lostCause!1380 ctx!74) (exists!1748 (exprs!4294 ctx!74) lambda!255998))))

(declare-fun bs!1200153 () Bool)

(assert (= bs!1200153 d!1661969))

(declare-fun m!6201938 () Bool)

(assert (=> bs!1200153 m!6201938))

(assert (=> start!543770 d!1661969))

(declare-fun bs!1200154 () Bool)

(declare-fun d!1661971 () Bool)

(assert (= bs!1200154 (and d!1661971 d!1661967)))

(declare-fun lambda!255999 () Int)

(assert (=> bs!1200154 (= lambda!255999 lambda!255995)))

(declare-fun bs!1200155 () Bool)

(assert (= bs!1200155 (and d!1661971 d!1661969)))

(assert (=> bs!1200155 (not (= lambda!255999 lambda!255998))))

(assert (=> d!1661971 (= (inv!79207 ctx!74) (forall!13879 (exprs!4294 ctx!74) lambda!255999))))

(declare-fun bs!1200156 () Bool)

(assert (= bs!1200156 d!1661971))

(declare-fun m!6201940 () Bool)

(assert (=> bs!1200156 m!6201940))

(assert (=> start!543770 d!1661971))

(declare-fun d!1661973 () Bool)

(declare-fun nullableFct!1304 (Regex!14410) Bool)

(assert (=> d!1661973 (= (nullable!4783 (h!66086 (exprs!4294 ctx!74))) (nullableFct!1304 (h!66086 (exprs!4294 ctx!74))))))

(declare-fun bs!1200157 () Bool)

(assert (= bs!1200157 d!1661973))

(declare-fun m!6201942 () Bool)

(assert (=> bs!1200157 m!6201942))

(assert (=> b!5136186 d!1661973))

(declare-fun b!5136208 () Bool)

(declare-fun e!3203646 () Bool)

(declare-fun tp!1432466 () Bool)

(declare-fun tp!1432467 () Bool)

(assert (=> b!5136208 (= e!3203646 (and tp!1432466 tp!1432467))))

(assert (=> b!5136187 (= tp!1432458 e!3203646)))

(assert (= (and b!5136187 (is-Cons!59638 (exprs!4294 ctx!74))) b!5136208))

(push 1)

(assert (not b!5136208))

(assert (not d!1661967))

(assert (not d!1661969))

(assert (not d!1661973))

(assert (not d!1661971))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1200158 () Bool)

(declare-fun d!1661975 () Bool)

(assert (= bs!1200158 (and d!1661975 d!1661967)))

(declare-fun lambda!256002 () Int)

(assert (=> bs!1200158 (not (= lambda!256002 lambda!255995))))

(declare-fun bs!1200159 () Bool)

(assert (= bs!1200159 (and d!1661975 d!1661969)))

(assert (=> bs!1200159 (not (= lambda!256002 lambda!255998))))

(declare-fun bs!1200160 () Bool)

(assert (= bs!1200160 (and d!1661975 d!1661971)))

(assert (=> bs!1200160 (not (= lambda!256002 lambda!255999))))

(assert (=> d!1661975 true))

(declare-fun order!26927 () Int)

(declare-fun dynLambda!23744 (Int Int) Int)

(assert (=> d!1661975 (< (dynLambda!23744 order!26927 lambda!255998) (dynLambda!23744 order!26927 lambda!256002))))

(assert (=> d!1661975 (= (exists!1748 (exprs!4294 ctx!74) lambda!255998) (not (forall!13879 (exprs!4294 ctx!74) lambda!256002)))))

(declare-fun bs!1200161 () Bool)

(assert (= bs!1200161 d!1661975))

(declare-fun m!6201944 () Bool)

(assert (=> bs!1200161 m!6201944))

(assert (=> d!1661969 d!1661975))

(declare-fun bm!358037 () Bool)

(declare-fun call!358042 () Bool)

(declare-fun c!884312 () Bool)

(assert (=> bm!358037 (= call!358042 (nullable!4783 (ite c!884312 (regTwo!29333 (h!66086 (exprs!4294 ctx!74))) (regTwo!29332 (h!66086 (exprs!4294 ctx!74))))))))

(declare-fun b!5136230 () Bool)

(declare-fun e!3203667 () Bool)

(declare-fun e!3203665 () Bool)

(assert (=> b!5136230 (= e!3203667 e!3203665)))

(declare-fun res!2187636 () Bool)

(declare-fun call!358043 () Bool)

(assert (=> b!5136230 (= res!2187636 call!358043)))

(assert (=> b!5136230 (=> (not res!2187636) (not e!3203665))))

(declare-fun bm!358038 () Bool)

(assert (=> bm!358038 (= call!358043 (nullable!4783 (ite c!884312 (regOne!29333 (h!66086 (exprs!4294 ctx!74))) (regOne!29332 (h!66086 (exprs!4294 ctx!74))))))))

(declare-fun b!5136231 () Bool)

(declare-fun e!3203666 () Bool)

(assert (=> b!5136231 (= e!3203666 call!358042)))

(declare-fun d!1661977 () Bool)

(declare-fun res!2187639 () Bool)

(declare-fun e!3203664 () Bool)

(assert (=> d!1661977 (=> res!2187639 e!3203664)))

(assert (=> d!1661977 (= res!2187639 (is-EmptyExpr!14410 (h!66086 (exprs!4294 ctx!74))))))

(assert (=> d!1661977 (= (nullableFct!1304 (h!66086 (exprs!4294 ctx!74))) e!3203664)))

(declare-fun b!5136232 () Bool)

(assert (=> b!5136232 (= e!3203667 e!3203666)))

(declare-fun res!2187637 () Bool)

(assert (=> b!5136232 (= res!2187637 call!358043)))

(assert (=> b!5136232 (=> res!2187637 e!3203666)))

(declare-fun b!5136233 () Bool)

(declare-fun e!3203663 () Bool)

(assert (=> b!5136233 (= e!3203664 e!3203663)))

(declare-fun res!2187635 () Bool)

(assert (=> b!5136233 (=> (not res!2187635) (not e!3203663))))

(assert (=> b!5136233 (= res!2187635 (and (not (is-EmptyLang!14410 (h!66086 (exprs!4294 ctx!74)))) (not (is-ElementMatch!14410 (h!66086 (exprs!4294 ctx!74))))))))

(declare-fun b!5136234 () Bool)

(declare-fun e!3203662 () Bool)

(assert (=> b!5136234 (= e!3203662 e!3203667)))

(assert (=> b!5136234 (= c!884312 (is-Union!14410 (h!66086 (exprs!4294 ctx!74))))))

(declare-fun b!5136235 () Bool)

(assert (=> b!5136235 (= e!3203665 call!358042)))

(declare-fun b!5136236 () Bool)

(assert (=> b!5136236 (= e!3203663 e!3203662)))

(declare-fun res!2187638 () Bool)

(assert (=> b!5136236 (=> res!2187638 e!3203662)))

(assert (=> b!5136236 (= res!2187638 (is-Star!14410 (h!66086 (exprs!4294 ctx!74))))))

(assert (= (and d!1661977 (not res!2187639)) b!5136233))

(assert (= (and b!5136233 res!2187635) b!5136236))

(assert (= (and b!5136236 (not res!2187638)) b!5136234))

(assert (= (and b!5136234 c!884312) b!5136232))

(assert (= (and b!5136234 (not c!884312)) b!5136230))

(assert (= (and b!5136232 (not res!2187637)) b!5136231))

(assert (= (and b!5136230 res!2187636) b!5136235))

(assert (= (or b!5136231 b!5136235) bm!358037))

(assert (= (or b!5136232 b!5136230) bm!358038))

(declare-fun m!6201952 () Bool)

(assert (=> bm!358037 m!6201952))

(declare-fun m!6201954 () Bool)

(assert (=> bm!358038 m!6201954))

(assert (=> d!1661973 d!1661977))

(declare-fun d!1661983 () Bool)

(declare-fun res!2187644 () Bool)

(declare-fun e!3203672 () Bool)

(assert (=> d!1661983 (=> res!2187644 e!3203672)))

(assert (=> d!1661983 (= res!2187644 (is-Nil!59638 (exprs!4294 (Context!7589 (t!372791 (exprs!4294 ctx!74))))))))

(assert (=> d!1661983 (= (forall!13879 (exprs!4294 (Context!7589 (t!372791 (exprs!4294 ctx!74)))) lambda!255995) e!3203672)))

(declare-fun b!5136241 () Bool)

(declare-fun e!3203673 () Bool)

(assert (=> b!5136241 (= e!3203672 e!3203673)))

(declare-fun res!2187645 () Bool)

(assert (=> b!5136241 (=> (not res!2187645) (not e!3203673))))

(declare-fun dynLambda!23745 (Int Regex!14410) Bool)

(assert (=> b!5136241 (= res!2187645 (dynLambda!23745 lambda!255995 (h!66086 (exprs!4294 (Context!7589 (t!372791 (exprs!4294 ctx!74)))))))))

(declare-fun b!5136242 () Bool)

(assert (=> b!5136242 (= e!3203673 (forall!13879 (t!372791 (exprs!4294 (Context!7589 (t!372791 (exprs!4294 ctx!74))))) lambda!255995))))

(assert (= (and d!1661983 (not res!2187644)) b!5136241))

(assert (= (and b!5136241 res!2187645) b!5136242))

(declare-fun b_lambda!200089 () Bool)

(assert (=> (not b_lambda!200089) (not b!5136241)))

(declare-fun m!6201956 () Bool)

(assert (=> b!5136241 m!6201956))

(declare-fun m!6201958 () Bool)

(assert (=> b!5136242 m!6201958))

(assert (=> d!1661967 d!1661983))

(declare-fun d!1661985 () Bool)

(declare-fun res!2187646 () Bool)

(declare-fun e!3203674 () Bool)

(assert (=> d!1661985 (=> res!2187646 e!3203674)))

(assert (=> d!1661985 (= res!2187646 (is-Nil!59638 (exprs!4294 ctx!74)))))

(assert (=> d!1661985 (= (forall!13879 (exprs!4294 ctx!74) lambda!255999) e!3203674)))

(declare-fun b!5136243 () Bool)

(declare-fun e!3203675 () Bool)

(assert (=> b!5136243 (= e!3203674 e!3203675)))

(declare-fun res!2187647 () Bool)

(assert (=> b!5136243 (=> (not res!2187647) (not e!3203675))))

(assert (=> b!5136243 (= res!2187647 (dynLambda!23745 lambda!255999 (h!66086 (exprs!4294 ctx!74))))))

(declare-fun b!5136244 () Bool)

(assert (=> b!5136244 (= e!3203675 (forall!13879 (t!372791 (exprs!4294 ctx!74)) lambda!255999))))

(assert (= (and d!1661985 (not res!2187646)) b!5136243))

(assert (= (and b!5136243 res!2187647) b!5136244))

(declare-fun b_lambda!200091 () Bool)

(assert (=> (not b_lambda!200091) (not b!5136243)))

(declare-fun m!6201960 () Bool)

(assert (=> b!5136243 m!6201960))

(declare-fun m!6201962 () Bool)

(assert (=> b!5136244 m!6201962))

(assert (=> d!1661971 d!1661985))

(declare-fun b!5136258 () Bool)

(declare-fun e!3203678 () Bool)

(declare-fun tp!1432486 () Bool)

(declare-fun tp!1432485 () Bool)

(assert (=> b!5136258 (= e!3203678 (and tp!1432486 tp!1432485))))

(declare-fun b!5136255 () Bool)

(declare-fun tp_is_empty!37973 () Bool)

(assert (=> b!5136255 (= e!3203678 tp_is_empty!37973)))

(assert (=> b!5136208 (= tp!1432466 e!3203678)))

(declare-fun b!5136257 () Bool)

(declare-fun tp!1432487 () Bool)

(assert (=> b!5136257 (= e!3203678 tp!1432487)))

(declare-fun b!5136256 () Bool)

(declare-fun tp!1432488 () Bool)

(declare-fun tp!1432484 () Bool)

(assert (=> b!5136256 (= e!3203678 (and tp!1432488 tp!1432484))))

(assert (= (and b!5136208 (is-ElementMatch!14410 (h!66086 (exprs!4294 ctx!74)))) b!5136255))

(assert (= (and b!5136208 (is-Concat!23255 (h!66086 (exprs!4294 ctx!74)))) b!5136256))

(assert (= (and b!5136208 (is-Star!14410 (h!66086 (exprs!4294 ctx!74)))) b!5136257))

(assert (= (and b!5136208 (is-Union!14410 (h!66086 (exprs!4294 ctx!74)))) b!5136258))

(declare-fun b!5136259 () Bool)

(declare-fun e!3203679 () Bool)

(declare-fun tp!1432489 () Bool)

(declare-fun tp!1432490 () Bool)

(assert (=> b!5136259 (= e!3203679 (and tp!1432489 tp!1432490))))

(assert (=> b!5136208 (= tp!1432467 e!3203679)))

(assert (= (and b!5136208 (is-Cons!59638 (t!372791 (exprs!4294 ctx!74)))) b!5136259))

(declare-fun b_lambda!200093 () Bool)

(assert (= b_lambda!200089 (or d!1661967 b_lambda!200093)))

(declare-fun bs!1200168 () Bool)

(declare-fun d!1661987 () Bool)

(assert (= bs!1200168 (and d!1661987 d!1661967)))

(declare-fun validRegex!6268 (Regex!14410) Bool)

(assert (=> bs!1200168 (= (dynLambda!23745 lambda!255995 (h!66086 (exprs!4294 (Context!7589 (t!372791 (exprs!4294 ctx!74)))))) (validRegex!6268 (h!66086 (exprs!4294 (Context!7589 (t!372791 (exprs!4294 ctx!74)))))))))

(declare-fun m!6201964 () Bool)

(assert (=> bs!1200168 m!6201964))

(assert (=> b!5136241 d!1661987))

(declare-fun b_lambda!200095 () Bool)

(assert (= b_lambda!200091 (or d!1661971 b_lambda!200095)))

(declare-fun bs!1200169 () Bool)

(declare-fun d!1661989 () Bool)

(assert (= bs!1200169 (and d!1661989 d!1661971)))

(assert (=> bs!1200169 (= (dynLambda!23745 lambda!255999 (h!66086 (exprs!4294 ctx!74))) (validRegex!6268 (h!66086 (exprs!4294 ctx!74))))))

(declare-fun m!6201966 () Bool)

(assert (=> bs!1200169 m!6201966))

(assert (=> b!5136243 d!1661989))

(push 1)

(assert (not b!5136258))

(assert (not b!5136259))

(assert (not b!5136256))

(assert (not bs!1200168))

(assert (not b!5136242))

(assert (not b!5136257))

(assert (not bs!1200169))

(assert tp_is_empty!37973)

(assert (not bm!358038))

(assert (not b_lambda!200093))

(assert (not b!5136244))

(assert (not b_lambda!200095))

(assert (not d!1661975))

(assert (not bm!358037))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

