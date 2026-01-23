; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!716206 () Bool)

(assert start!716206)

(declare-fun b!7333188 () Bool)

(declare-fun res!2963410 () Bool)

(declare-fun e!4391164 () Bool)

(assert (=> b!7333188 (=> (not res!2963410) (not e!4391164))))

(declare-datatypes ((C!38394 0))(
  ( (C!38395 (val!29557 Int)) )
))
(declare-datatypes ((Regex!19060 0))(
  ( (ElementMatch!19060 (c!1361782 C!38394)) (Concat!27905 (regOne!38632 Regex!19060) (regTwo!38632 Regex!19060)) (EmptyExpr!19060) (Star!19060 (reg!19389 Regex!19060)) (EmptyLang!19060) (Union!19060 (regOne!38633 Regex!19060) (regTwo!38633 Regex!19060)) )
))
(declare-datatypes ((List!71556 0))(
  ( (Nil!71432) (Cons!71432 (h!77880 Regex!19060) (t!385947 List!71556)) )
))
(declare-datatypes ((Context!16000 0))(
  ( (Context!16001 (exprs!8500 List!71556)) )
))
(declare-fun ct1!256 () Context!16000)

(declare-fun isEmpty!40972 (List!71556) Bool)

(assert (=> b!7333188 (= res!2963410 (not (isEmpty!40972 (exprs!8500 ct1!256))))))

(declare-fun b!7333189 () Bool)

(declare-fun res!2963408 () Bool)

(declare-fun e!4391162 () Bool)

(assert (=> b!7333189 (=> (not res!2963408) (not e!4391162))))

(declare-fun lt!2608545 () List!71556)

(assert (=> b!7333189 (= res!2963408 (not (isEmpty!40972 lt!2608545)))))

(declare-fun b!7333190 () Bool)

(declare-fun e!4391166 () Bool)

(assert (=> b!7333190 (= e!4391166 e!4391162)))

(declare-fun res!2963407 () Bool)

(assert (=> b!7333190 (=> (not res!2963407) (not e!4391162))))

(declare-fun lt!2608546 () (Set Context!16000))

(declare-fun cWitness!35 () Context!16000)

(declare-fun lt!2608544 () (Set Context!16000))

(declare-fun lt!2608541 () (Set Context!16000))

(assert (=> b!7333190 (= res!2963407 (and (= lt!2608544 (set.union lt!2608546 lt!2608541)) (or (set.member cWitness!35 lt!2608546) (set.member cWitness!35 lt!2608541)) (not (set.member cWitness!35 lt!2608541))))))

(declare-fun lt!2608551 () Context!16000)

(declare-fun c!10305 () C!38394)

(declare-fun derivationStepZipperUp!2740 (Context!16000 C!38394) (Set Context!16000))

(assert (=> b!7333190 (= lt!2608541 (derivationStepZipperUp!2740 lt!2608551 c!10305))))

(declare-fun b!7333191 () Bool)

(declare-fun e!4391163 () Bool)

(declare-fun tp!2081858 () Bool)

(assert (=> b!7333191 (= e!4391163 tp!2081858)))

(declare-fun b!7333192 () Bool)

(declare-fun e!4391161 () Bool)

(assert (=> b!7333192 (= e!4391162 (not e!4391161))))

(declare-fun res!2963411 () Bool)

(assert (=> b!7333192 (=> res!2963411 e!4391161)))

(declare-fun lt!2608549 () Context!16000)

(declare-fun lt!2608543 () (Set Context!16000))

(assert (=> b!7333192 (= res!2963411 (not (set.member lt!2608549 lt!2608543)))))

(declare-fun lambda!454920 () Int)

(declare-datatypes ((Unit!165081 0))(
  ( (Unit!165082) )
))
(declare-fun lt!2608538 () Unit!165081)

(declare-fun ct2!352 () Context!16000)

(declare-fun lemmaConcatPreservesForall!1739 (List!71556 List!71556 Int) Unit!165081)

(assert (=> b!7333192 (= lt!2608538 (lemmaConcatPreservesForall!1739 (exprs!8500 cWitness!35) (exprs!8500 ct2!352) lambda!454920))))

(declare-fun lt!2608542 () List!71556)

(declare-fun derivationStepZipperDown!2887 (Regex!19060 Context!16000 C!38394) (Set Context!16000))

(declare-fun ++!16882 (List!71556 List!71556) List!71556)

(assert (=> b!7333192 (set.member lt!2608549 (derivationStepZipperDown!2887 (h!77880 (exprs!8500 ct1!256)) (Context!16001 (++!16882 lt!2608542 (exprs!8500 ct2!352))) c!10305))))

(assert (=> b!7333192 (= lt!2608549 (Context!16001 (++!16882 (exprs!8500 cWitness!35) (exprs!8500 ct2!352))))))

(declare-fun lt!2608552 () Unit!165081)

(assert (=> b!7333192 (= lt!2608552 (lemmaConcatPreservesForall!1739 lt!2608542 (exprs!8500 ct2!352) lambda!454920))))

(declare-fun lt!2608547 () Unit!165081)

(assert (=> b!7333192 (= lt!2608547 (lemmaConcatPreservesForall!1739 (exprs!8500 cWitness!35) (exprs!8500 ct2!352) lambda!454920))))

(declare-fun lt!2608539 () Unit!165081)

(declare-fun lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!31 (Regex!19060 Context!16000 Context!16000 Context!16000 C!38394) Unit!165081)

(assert (=> b!7333192 (= lt!2608539 (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!31 (h!77880 (exprs!8500 ct1!256)) lt!2608551 ct2!352 cWitness!35 c!10305))))

(declare-fun tail!14741 (List!71556) List!71556)

(assert (=> b!7333192 (= lt!2608543 (derivationStepZipperDown!2887 (h!77880 (exprs!8500 ct1!256)) (Context!16001 (tail!14741 lt!2608545)) c!10305))))

(declare-fun b!7333193 () Bool)

(declare-fun e!4391165 () Bool)

(assert (=> b!7333193 (= e!4391165 e!4391164)))

(declare-fun res!2963413 () Bool)

(assert (=> b!7333193 (=> (not res!2963413) (not e!4391164))))

(assert (=> b!7333193 (= res!2963413 (is-Cons!71432 (exprs!8500 ct1!256)))))

(assert (=> b!7333193 (= lt!2608545 (++!16882 (exprs!8500 ct1!256) (exprs!8500 ct2!352)))))

(declare-fun lt!2608548 () Unit!165081)

(assert (=> b!7333193 (= lt!2608548 (lemmaConcatPreservesForall!1739 (exprs!8500 ct1!256) (exprs!8500 ct2!352) lambda!454920))))

(declare-fun b!7333194 () Bool)

(declare-fun e!4391168 () Bool)

(declare-fun tp!2081856 () Bool)

(assert (=> b!7333194 (= e!4391168 tp!2081856)))

(declare-fun res!2963412 () Bool)

(assert (=> start!716206 (=> (not res!2963412) (not e!4391165))))

(assert (=> start!716206 (= res!2963412 (set.member cWitness!35 lt!2608544))))

(assert (=> start!716206 (= lt!2608544 (derivationStepZipperUp!2740 ct1!256 c!10305))))

(assert (=> start!716206 e!4391165))

(declare-fun tp_is_empty!48365 () Bool)

(assert (=> start!716206 tp_is_empty!48365))

(declare-fun inv!90991 (Context!16000) Bool)

(assert (=> start!716206 (and (inv!90991 cWitness!35) e!4391168)))

(assert (=> start!716206 (and (inv!90991 ct1!256) e!4391163)))

(declare-fun e!4391167 () Bool)

(assert (=> start!716206 (and (inv!90991 ct2!352) e!4391167)))

(declare-fun b!7333195 () Bool)

(declare-fun tp!2081857 () Bool)

(assert (=> b!7333195 (= e!4391167 tp!2081857)))

(declare-fun b!7333196 () Bool)

(assert (=> b!7333196 (= e!4391164 e!4391166)))

(declare-fun res!2963409 () Bool)

(assert (=> b!7333196 (=> (not res!2963409) (not e!4391166))))

(declare-fun nullable!8161 (Regex!19060) Bool)

(assert (=> b!7333196 (= res!2963409 (nullable!8161 (h!77880 (exprs!8500 ct1!256))))))

(assert (=> b!7333196 (= lt!2608546 (derivationStepZipperDown!2887 (h!77880 (exprs!8500 ct1!256)) lt!2608551 c!10305))))

(assert (=> b!7333196 (= lt!2608551 (Context!16001 lt!2608542))))

(assert (=> b!7333196 (= lt!2608542 (tail!14741 (exprs!8500 ct1!256)))))

(declare-fun b!7333197 () Bool)

(assert (=> b!7333197 (= e!4391161 (set.member lt!2608549 (derivationStepZipperUp!2740 (Context!16001 lt!2608545) c!10305)))))

(declare-fun lt!2608540 () Unit!165081)

(assert (=> b!7333197 (= lt!2608540 (lemmaConcatPreservesForall!1739 (exprs!8500 ct1!256) (exprs!8500 ct2!352) lambda!454920))))

(declare-fun lt!2608550 () Unit!165081)

(assert (=> b!7333197 (= lt!2608550 (lemmaConcatPreservesForall!1739 (exprs!8500 cWitness!35) (exprs!8500 ct2!352) lambda!454920))))

(assert (= (and start!716206 res!2963412) b!7333193))

(assert (= (and b!7333193 res!2963413) b!7333188))

(assert (= (and b!7333188 res!2963410) b!7333196))

(assert (= (and b!7333196 res!2963409) b!7333190))

(assert (= (and b!7333190 res!2963407) b!7333189))

(assert (= (and b!7333189 res!2963408) b!7333192))

(assert (= (and b!7333192 (not res!2963411)) b!7333197))

(assert (= start!716206 b!7333194))

(assert (= start!716206 b!7333191))

(assert (= start!716206 b!7333195))

(declare-fun m!7999258 () Bool)

(assert (=> b!7333193 m!7999258))

(declare-fun m!7999260 () Bool)

(assert (=> b!7333193 m!7999260))

(declare-fun m!7999262 () Bool)

(assert (=> b!7333189 m!7999262))

(declare-fun m!7999264 () Bool)

(assert (=> b!7333197 m!7999264))

(declare-fun m!7999266 () Bool)

(assert (=> b!7333197 m!7999266))

(assert (=> b!7333197 m!7999260))

(declare-fun m!7999268 () Bool)

(assert (=> b!7333197 m!7999268))

(declare-fun m!7999270 () Bool)

(assert (=> b!7333192 m!7999270))

(declare-fun m!7999272 () Bool)

(assert (=> b!7333192 m!7999272))

(declare-fun m!7999274 () Bool)

(assert (=> b!7333192 m!7999274))

(declare-fun m!7999276 () Bool)

(assert (=> b!7333192 m!7999276))

(declare-fun m!7999278 () Bool)

(assert (=> b!7333192 m!7999278))

(assert (=> b!7333192 m!7999268))

(declare-fun m!7999280 () Bool)

(assert (=> b!7333192 m!7999280))

(declare-fun m!7999282 () Bool)

(assert (=> b!7333192 m!7999282))

(declare-fun m!7999284 () Bool)

(assert (=> b!7333192 m!7999284))

(assert (=> b!7333192 m!7999268))

(declare-fun m!7999286 () Bool)

(assert (=> b!7333192 m!7999286))

(declare-fun m!7999288 () Bool)

(assert (=> b!7333188 m!7999288))

(declare-fun m!7999290 () Bool)

(assert (=> b!7333190 m!7999290))

(declare-fun m!7999292 () Bool)

(assert (=> b!7333190 m!7999292))

(declare-fun m!7999294 () Bool)

(assert (=> b!7333190 m!7999294))

(declare-fun m!7999296 () Bool)

(assert (=> start!716206 m!7999296))

(declare-fun m!7999298 () Bool)

(assert (=> start!716206 m!7999298))

(declare-fun m!7999300 () Bool)

(assert (=> start!716206 m!7999300))

(declare-fun m!7999302 () Bool)

(assert (=> start!716206 m!7999302))

(declare-fun m!7999304 () Bool)

(assert (=> start!716206 m!7999304))

(declare-fun m!7999306 () Bool)

(assert (=> b!7333196 m!7999306))

(declare-fun m!7999308 () Bool)

(assert (=> b!7333196 m!7999308))

(declare-fun m!7999310 () Bool)

(assert (=> b!7333196 m!7999310))

(push 1)

(assert (not b!7333190))

(assert (not b!7333196))

(assert (not b!7333194))

(assert tp_is_empty!48365)

(assert (not start!716206))

(assert (not b!7333189))

(assert (not b!7333197))

(assert (not b!7333191))

(assert (not b!7333193))

(assert (not b!7333195))

(assert (not b!7333188))

(assert (not b!7333192))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2277231 () Bool)

(assert (=> d!2277231 (= (tail!14741 lt!2608545) (t!385947 lt!2608545))))

(assert (=> b!7333192 d!2277231))

(declare-fun d!2277233 () Bool)

(declare-fun forall!17897 (List!71556 Int) Bool)

(assert (=> d!2277233 (forall!17897 (++!16882 (exprs!8500 cWitness!35) (exprs!8500 ct2!352)) lambda!454920)))

(declare-fun lt!2608600 () Unit!165081)

(declare-fun choose!57041 (List!71556 List!71556 Int) Unit!165081)

(assert (=> d!2277233 (= lt!2608600 (choose!57041 (exprs!8500 cWitness!35) (exprs!8500 ct2!352) lambda!454920))))

(assert (=> d!2277233 (forall!17897 (exprs!8500 cWitness!35) lambda!454920)))

(assert (=> d!2277233 (= (lemmaConcatPreservesForall!1739 (exprs!8500 cWitness!35) (exprs!8500 ct2!352) lambda!454920) lt!2608600)))

(declare-fun bs!1917664 () Bool)

(assert (= bs!1917664 d!2277233))

(assert (=> bs!1917664 m!7999278))

(assert (=> bs!1917664 m!7999278))

(declare-fun m!7999366 () Bool)

(assert (=> bs!1917664 m!7999366))

(declare-fun m!7999368 () Bool)

(assert (=> bs!1917664 m!7999368))

(declare-fun m!7999370 () Bool)

(assert (=> bs!1917664 m!7999370))

(assert (=> b!7333192 d!2277233))

(declare-fun d!2277235 () Bool)

(assert (=> d!2277235 (forall!17897 (++!16882 lt!2608542 (exprs!8500 ct2!352)) lambda!454920)))

(declare-fun lt!2608601 () Unit!165081)

(assert (=> d!2277235 (= lt!2608601 (choose!57041 lt!2608542 (exprs!8500 ct2!352) lambda!454920))))

(assert (=> d!2277235 (forall!17897 lt!2608542 lambda!454920)))

(assert (=> d!2277235 (= (lemmaConcatPreservesForall!1739 lt!2608542 (exprs!8500 ct2!352) lambda!454920) lt!2608601)))

(declare-fun bs!1917665 () Bool)

(assert (= bs!1917665 d!2277235))

(assert (=> bs!1917665 m!7999274))

(assert (=> bs!1917665 m!7999274))

(declare-fun m!7999372 () Bool)

(assert (=> bs!1917665 m!7999372))

(declare-fun m!7999374 () Bool)

(assert (=> bs!1917665 m!7999374))

(declare-fun m!7999376 () Bool)

(assert (=> bs!1917665 m!7999376))

(assert (=> b!7333192 d!2277235))

(declare-fun b!7333250 () Bool)

(declare-fun e!4391206 () (Set Context!16000))

(declare-fun call!668302 () (Set Context!16000))

(assert (=> b!7333250 (= e!4391206 call!668302)))

(declare-fun c!1361795 () Bool)

(declare-fun call!668300 () (Set Context!16000))

(declare-fun bm!668295 () Bool)

(declare-fun call!668304 () List!71556)

(assert (=> bm!668295 (= call!668300 (derivationStepZipperDown!2887 (ite c!1361795 (regOne!38633 (h!77880 (exprs!8500 ct1!256))) (regOne!38632 (h!77880 (exprs!8500 ct1!256)))) (ite c!1361795 (Context!16001 (tail!14741 lt!2608545)) (Context!16001 call!668304)) c!10305))))

(declare-fun bm!668296 () Bool)

(declare-fun call!668301 () List!71556)

(assert (=> bm!668296 (= call!668301 call!668304)))

(declare-fun d!2277237 () Bool)

(declare-fun c!1361796 () Bool)

(assert (=> d!2277237 (= c!1361796 (and (is-ElementMatch!19060 (h!77880 (exprs!8500 ct1!256))) (= (c!1361782 (h!77880 (exprs!8500 ct1!256))) c!10305)))))

(declare-fun e!4391205 () (Set Context!16000))

(assert (=> d!2277237 (= (derivationStepZipperDown!2887 (h!77880 (exprs!8500 ct1!256)) (Context!16001 (tail!14741 lt!2608545)) c!10305) e!4391205)))

(declare-fun b!7333251 () Bool)

(declare-fun e!4391210 () Bool)

(assert (=> b!7333251 (= e!4391210 (nullable!8161 (regOne!38632 (h!77880 (exprs!8500 ct1!256)))))))

(declare-fun b!7333252 () Bool)

(declare-fun e!4391209 () (Set Context!16000))

(declare-fun call!668303 () (Set Context!16000))

(assert (=> b!7333252 (= e!4391209 (set.union call!668300 call!668303))))

(declare-fun c!1361798 () Bool)

(declare-fun c!1361794 () Bool)

(declare-fun bm!668297 () Bool)

(declare-fun $colon$colon!3070 (List!71556 Regex!19060) List!71556)

(assert (=> bm!668297 (= call!668304 ($colon$colon!3070 (exprs!8500 (Context!16001 (tail!14741 lt!2608545))) (ite (or c!1361794 c!1361798) (regTwo!38632 (h!77880 (exprs!8500 ct1!256))) (h!77880 (exprs!8500 ct1!256)))))))

(declare-fun b!7333253 () Bool)

(declare-fun e!4391207 () (Set Context!16000))

(assert (=> b!7333253 (= e!4391207 call!668302)))

(declare-fun b!7333254 () Bool)

(assert (=> b!7333254 (= e!4391205 e!4391209)))

(assert (=> b!7333254 (= c!1361795 (is-Union!19060 (h!77880 (exprs!8500 ct1!256))))))

(declare-fun b!7333255 () Bool)

(declare-fun e!4391208 () (Set Context!16000))

(assert (=> b!7333255 (= e!4391208 e!4391206)))

(assert (=> b!7333255 (= c!1361798 (is-Concat!27905 (h!77880 (exprs!8500 ct1!256))))))

(declare-fun b!7333256 () Bool)

(assert (=> b!7333256 (= c!1361794 e!4391210)))

(declare-fun res!2963437 () Bool)

(assert (=> b!7333256 (=> (not res!2963437) (not e!4391210))))

(assert (=> b!7333256 (= res!2963437 (is-Concat!27905 (h!77880 (exprs!8500 ct1!256))))))

(assert (=> b!7333256 (= e!4391209 e!4391208)))

(declare-fun b!7333257 () Bool)

(declare-fun call!668305 () (Set Context!16000))

(assert (=> b!7333257 (= e!4391208 (set.union call!668300 call!668305))))

(declare-fun bm!668298 () Bool)

(assert (=> bm!668298 (= call!668305 call!668303)))

(declare-fun b!7333258 () Bool)

(assert (=> b!7333258 (= e!4391207 (as set.empty (Set Context!16000)))))

(declare-fun b!7333259 () Bool)

(declare-fun c!1361797 () Bool)

(assert (=> b!7333259 (= c!1361797 (is-Star!19060 (h!77880 (exprs!8500 ct1!256))))))

(assert (=> b!7333259 (= e!4391206 e!4391207)))

(declare-fun b!7333260 () Bool)

(assert (=> b!7333260 (= e!4391205 (set.insert (Context!16001 (tail!14741 lt!2608545)) (as set.empty (Set Context!16000))))))

(declare-fun bm!668299 () Bool)

(assert (=> bm!668299 (= call!668302 call!668305)))

(declare-fun bm!668300 () Bool)

(assert (=> bm!668300 (= call!668303 (derivationStepZipperDown!2887 (ite c!1361795 (regTwo!38633 (h!77880 (exprs!8500 ct1!256))) (ite c!1361794 (regTwo!38632 (h!77880 (exprs!8500 ct1!256))) (ite c!1361798 (regOne!38632 (h!77880 (exprs!8500 ct1!256))) (reg!19389 (h!77880 (exprs!8500 ct1!256)))))) (ite (or c!1361795 c!1361794) (Context!16001 (tail!14741 lt!2608545)) (Context!16001 call!668301)) c!10305))))

(assert (= (and d!2277237 c!1361796) b!7333260))

(assert (= (and d!2277237 (not c!1361796)) b!7333254))

(assert (= (and b!7333254 c!1361795) b!7333252))

(assert (= (and b!7333254 (not c!1361795)) b!7333256))

(assert (= (and b!7333256 res!2963437) b!7333251))

(assert (= (and b!7333256 c!1361794) b!7333257))

(assert (= (and b!7333256 (not c!1361794)) b!7333255))

(assert (= (and b!7333255 c!1361798) b!7333250))

(assert (= (and b!7333255 (not c!1361798)) b!7333259))

(assert (= (and b!7333259 c!1361797) b!7333253))

(assert (= (and b!7333259 (not c!1361797)) b!7333258))

(assert (= (or b!7333250 b!7333253) bm!668296))

(assert (= (or b!7333250 b!7333253) bm!668299))

(assert (= (or b!7333257 bm!668299) bm!668298))

(assert (= (or b!7333257 bm!668296) bm!668297))

(assert (= (or b!7333252 bm!668298) bm!668300))

(assert (= (or b!7333252 b!7333257) bm!668295))

(declare-fun m!7999378 () Bool)

(assert (=> b!7333251 m!7999378))

(declare-fun m!7999380 () Bool)

(assert (=> bm!668300 m!7999380))

(declare-fun m!7999382 () Bool)

(assert (=> bm!668295 m!7999382))

(declare-fun m!7999384 () Bool)

(assert (=> bm!668297 m!7999384))

(declare-fun m!7999386 () Bool)

(assert (=> b!7333260 m!7999386))

(assert (=> b!7333192 d!2277237))

(declare-fun d!2277241 () Bool)

(declare-fun e!4391220 () Bool)

(assert (=> d!2277241 e!4391220))

(declare-fun res!2963446 () Bool)

(assert (=> d!2277241 (=> (not res!2963446) (not e!4391220))))

(declare-fun lt!2608606 () List!71556)

(declare-fun content!14988 (List!71556) (Set Regex!19060))

(assert (=> d!2277241 (= res!2963446 (= (content!14988 lt!2608606) (set.union (content!14988 lt!2608542) (content!14988 (exprs!8500 ct2!352)))))))

(declare-fun e!4391219 () List!71556)

(assert (=> d!2277241 (= lt!2608606 e!4391219)))

(declare-fun c!1361803 () Bool)

(assert (=> d!2277241 (= c!1361803 (is-Nil!71432 lt!2608542))))

(assert (=> d!2277241 (= (++!16882 lt!2608542 (exprs!8500 ct2!352)) lt!2608606)))

(declare-fun b!7333278 () Bool)

(assert (=> b!7333278 (= e!4391219 (Cons!71432 (h!77880 lt!2608542) (++!16882 (t!385947 lt!2608542) (exprs!8500 ct2!352))))))

(declare-fun b!7333279 () Bool)

(declare-fun res!2963447 () Bool)

(assert (=> b!7333279 (=> (not res!2963447) (not e!4391220))))

(declare-fun size!41967 (List!71556) Int)

(assert (=> b!7333279 (= res!2963447 (= (size!41967 lt!2608606) (+ (size!41967 lt!2608542) (size!41967 (exprs!8500 ct2!352)))))))

(declare-fun b!7333280 () Bool)

(assert (=> b!7333280 (= e!4391220 (or (not (= (exprs!8500 ct2!352) Nil!71432)) (= lt!2608606 lt!2608542)))))

(declare-fun b!7333277 () Bool)

(assert (=> b!7333277 (= e!4391219 (exprs!8500 ct2!352))))

(assert (= (and d!2277241 c!1361803) b!7333277))

(assert (= (and d!2277241 (not c!1361803)) b!7333278))

(assert (= (and d!2277241 res!2963446) b!7333279))

(assert (= (and b!7333279 res!2963447) b!7333280))

(declare-fun m!7999388 () Bool)

(assert (=> d!2277241 m!7999388))

(declare-fun m!7999390 () Bool)

(assert (=> d!2277241 m!7999390))

(declare-fun m!7999392 () Bool)

(assert (=> d!2277241 m!7999392))

(declare-fun m!7999394 () Bool)

(assert (=> b!7333278 m!7999394))

(declare-fun m!7999396 () Bool)

(assert (=> b!7333279 m!7999396))

(declare-fun m!7999398 () Bool)

(assert (=> b!7333279 m!7999398))

(declare-fun m!7999400 () Bool)

(assert (=> b!7333279 m!7999400))

(assert (=> b!7333192 d!2277241))

(declare-fun bs!1917667 () Bool)

(declare-fun d!2277243 () Bool)

(assert (= bs!1917667 (and d!2277243 b!7333193)))

(declare-fun lambda!454938 () Int)

(assert (=> bs!1917667 (= lambda!454938 lambda!454920)))

(assert (=> d!2277243 (set.member (Context!16001 (++!16882 (exprs!8500 cWitness!35) (exprs!8500 ct2!352))) (derivationStepZipperDown!2887 (h!77880 (exprs!8500 ct1!256)) (Context!16001 (++!16882 (exprs!8500 lt!2608551) (exprs!8500 ct2!352))) c!10305))))

(declare-fun lt!2608619 () Unit!165081)

(assert (=> d!2277243 (= lt!2608619 (lemmaConcatPreservesForall!1739 (exprs!8500 lt!2608551) (exprs!8500 ct2!352) lambda!454938))))

(declare-fun lt!2608618 () Unit!165081)

(assert (=> d!2277243 (= lt!2608618 (lemmaConcatPreservesForall!1739 (exprs!8500 cWitness!35) (exprs!8500 ct2!352) lambda!454938))))

(declare-fun lt!2608617 () Unit!165081)

(declare-fun choose!57042 (Regex!19060 Context!16000 Context!16000 Context!16000 C!38394) Unit!165081)

(assert (=> d!2277243 (= lt!2608617 (choose!57042 (h!77880 (exprs!8500 ct1!256)) lt!2608551 ct2!352 cWitness!35 c!10305))))

(declare-fun validRegex!9662 (Regex!19060) Bool)

(assert (=> d!2277243 (validRegex!9662 (h!77880 (exprs!8500 ct1!256)))))

(assert (=> d!2277243 (= (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!31 (h!77880 (exprs!8500 ct1!256)) lt!2608551 ct2!352 cWitness!35 c!10305) lt!2608617)))

(declare-fun bs!1917668 () Bool)

(assert (= bs!1917668 d!2277243))

(assert (=> bs!1917668 m!7999278))

(declare-fun m!7999422 () Bool)

(assert (=> bs!1917668 m!7999422))

(declare-fun m!7999424 () Bool)

(assert (=> bs!1917668 m!7999424))

(declare-fun m!7999426 () Bool)

(assert (=> bs!1917668 m!7999426))

(declare-fun m!7999428 () Bool)

(assert (=> bs!1917668 m!7999428))

(declare-fun m!7999430 () Bool)

(assert (=> bs!1917668 m!7999430))

(declare-fun m!7999432 () Bool)

(assert (=> bs!1917668 m!7999432))

(declare-fun m!7999434 () Bool)

(assert (=> bs!1917668 m!7999434))

(assert (=> b!7333192 d!2277243))

(declare-fun d!2277249 () Bool)

(declare-fun e!4391224 () Bool)

(assert (=> d!2277249 e!4391224))

(declare-fun res!2963450 () Bool)

(assert (=> d!2277249 (=> (not res!2963450) (not e!4391224))))

(declare-fun lt!2608620 () List!71556)

(assert (=> d!2277249 (= res!2963450 (= (content!14988 lt!2608620) (set.union (content!14988 (exprs!8500 cWitness!35)) (content!14988 (exprs!8500 ct2!352)))))))

(declare-fun e!4391223 () List!71556)

(assert (=> d!2277249 (= lt!2608620 e!4391223)))

(declare-fun c!1361806 () Bool)

(assert (=> d!2277249 (= c!1361806 (is-Nil!71432 (exprs!8500 cWitness!35)))))

(assert (=> d!2277249 (= (++!16882 (exprs!8500 cWitness!35) (exprs!8500 ct2!352)) lt!2608620)))

(declare-fun b!7333286 () Bool)

(assert (=> b!7333286 (= e!4391223 (Cons!71432 (h!77880 (exprs!8500 cWitness!35)) (++!16882 (t!385947 (exprs!8500 cWitness!35)) (exprs!8500 ct2!352))))))

(declare-fun b!7333287 () Bool)

(declare-fun res!2963451 () Bool)

(assert (=> b!7333287 (=> (not res!2963451) (not e!4391224))))

(assert (=> b!7333287 (= res!2963451 (= (size!41967 lt!2608620) (+ (size!41967 (exprs!8500 cWitness!35)) (size!41967 (exprs!8500 ct2!352)))))))

(declare-fun b!7333288 () Bool)

(assert (=> b!7333288 (= e!4391224 (or (not (= (exprs!8500 ct2!352) Nil!71432)) (= lt!2608620 (exprs!8500 cWitness!35))))))

(declare-fun b!7333285 () Bool)

(assert (=> b!7333285 (= e!4391223 (exprs!8500 ct2!352))))

(assert (= (and d!2277249 c!1361806) b!7333285))

(assert (= (and d!2277249 (not c!1361806)) b!7333286))

(assert (= (and d!2277249 res!2963450) b!7333287))

(assert (= (and b!7333287 res!2963451) b!7333288))

(declare-fun m!7999436 () Bool)

(assert (=> d!2277249 m!7999436))

(declare-fun m!7999438 () Bool)

(assert (=> d!2277249 m!7999438))

(assert (=> d!2277249 m!7999392))

(declare-fun m!7999440 () Bool)

(assert (=> b!7333286 m!7999440))

(declare-fun m!7999442 () Bool)

(assert (=> b!7333287 m!7999442))

(declare-fun m!7999444 () Bool)

(assert (=> b!7333287 m!7999444))

(assert (=> b!7333287 m!7999400))

(assert (=> b!7333192 d!2277249))

(declare-fun b!7333289 () Bool)

(declare-fun e!4391226 () (Set Context!16000))

(declare-fun call!668308 () (Set Context!16000))

(assert (=> b!7333289 (= e!4391226 call!668308)))

(declare-fun bm!668301 () Bool)

(declare-fun call!668306 () (Set Context!16000))

(declare-fun c!1361808 () Bool)

(declare-fun call!668310 () List!71556)

(assert (=> bm!668301 (= call!668306 (derivationStepZipperDown!2887 (ite c!1361808 (regOne!38633 (h!77880 (exprs!8500 ct1!256))) (regOne!38632 (h!77880 (exprs!8500 ct1!256)))) (ite c!1361808 (Context!16001 (++!16882 lt!2608542 (exprs!8500 ct2!352))) (Context!16001 call!668310)) c!10305))))

(declare-fun bm!668302 () Bool)

(declare-fun call!668307 () List!71556)

(assert (=> bm!668302 (= call!668307 call!668310)))

(declare-fun d!2277251 () Bool)

(declare-fun c!1361809 () Bool)

(assert (=> d!2277251 (= c!1361809 (and (is-ElementMatch!19060 (h!77880 (exprs!8500 ct1!256))) (= (c!1361782 (h!77880 (exprs!8500 ct1!256))) c!10305)))))

(declare-fun e!4391225 () (Set Context!16000))

(assert (=> d!2277251 (= (derivationStepZipperDown!2887 (h!77880 (exprs!8500 ct1!256)) (Context!16001 (++!16882 lt!2608542 (exprs!8500 ct2!352))) c!10305) e!4391225)))

(declare-fun b!7333290 () Bool)

(declare-fun e!4391230 () Bool)

(assert (=> b!7333290 (= e!4391230 (nullable!8161 (regOne!38632 (h!77880 (exprs!8500 ct1!256)))))))

(declare-fun b!7333291 () Bool)

(declare-fun e!4391229 () (Set Context!16000))

(declare-fun call!668309 () (Set Context!16000))

(assert (=> b!7333291 (= e!4391229 (set.union call!668306 call!668309))))

(declare-fun c!1361811 () Bool)

(declare-fun c!1361807 () Bool)

(declare-fun bm!668303 () Bool)

(assert (=> bm!668303 (= call!668310 ($colon$colon!3070 (exprs!8500 (Context!16001 (++!16882 lt!2608542 (exprs!8500 ct2!352)))) (ite (or c!1361807 c!1361811) (regTwo!38632 (h!77880 (exprs!8500 ct1!256))) (h!77880 (exprs!8500 ct1!256)))))))

(declare-fun b!7333292 () Bool)

(declare-fun e!4391227 () (Set Context!16000))

(assert (=> b!7333292 (= e!4391227 call!668308)))

(declare-fun b!7333293 () Bool)

(assert (=> b!7333293 (= e!4391225 e!4391229)))

(assert (=> b!7333293 (= c!1361808 (is-Union!19060 (h!77880 (exprs!8500 ct1!256))))))

(declare-fun b!7333294 () Bool)

(declare-fun e!4391228 () (Set Context!16000))

(assert (=> b!7333294 (= e!4391228 e!4391226)))

(assert (=> b!7333294 (= c!1361811 (is-Concat!27905 (h!77880 (exprs!8500 ct1!256))))))

(declare-fun b!7333295 () Bool)

(assert (=> b!7333295 (= c!1361807 e!4391230)))

(declare-fun res!2963452 () Bool)

(assert (=> b!7333295 (=> (not res!2963452) (not e!4391230))))

(assert (=> b!7333295 (= res!2963452 (is-Concat!27905 (h!77880 (exprs!8500 ct1!256))))))

(assert (=> b!7333295 (= e!4391229 e!4391228)))

(declare-fun b!7333296 () Bool)

(declare-fun call!668311 () (Set Context!16000))

(assert (=> b!7333296 (= e!4391228 (set.union call!668306 call!668311))))

(declare-fun bm!668304 () Bool)

(assert (=> bm!668304 (= call!668311 call!668309)))

(declare-fun b!7333297 () Bool)

(assert (=> b!7333297 (= e!4391227 (as set.empty (Set Context!16000)))))

(declare-fun b!7333298 () Bool)

(declare-fun c!1361810 () Bool)

(assert (=> b!7333298 (= c!1361810 (is-Star!19060 (h!77880 (exprs!8500 ct1!256))))))

(assert (=> b!7333298 (= e!4391226 e!4391227)))

(declare-fun b!7333299 () Bool)

(assert (=> b!7333299 (= e!4391225 (set.insert (Context!16001 (++!16882 lt!2608542 (exprs!8500 ct2!352))) (as set.empty (Set Context!16000))))))

(declare-fun bm!668305 () Bool)

(assert (=> bm!668305 (= call!668308 call!668311)))

(declare-fun bm!668306 () Bool)

(assert (=> bm!668306 (= call!668309 (derivationStepZipperDown!2887 (ite c!1361808 (regTwo!38633 (h!77880 (exprs!8500 ct1!256))) (ite c!1361807 (regTwo!38632 (h!77880 (exprs!8500 ct1!256))) (ite c!1361811 (regOne!38632 (h!77880 (exprs!8500 ct1!256))) (reg!19389 (h!77880 (exprs!8500 ct1!256)))))) (ite (or c!1361808 c!1361807) (Context!16001 (++!16882 lt!2608542 (exprs!8500 ct2!352))) (Context!16001 call!668307)) c!10305))))

(assert (= (and d!2277251 c!1361809) b!7333299))

(assert (= (and d!2277251 (not c!1361809)) b!7333293))

(assert (= (and b!7333293 c!1361808) b!7333291))

(assert (= (and b!7333293 (not c!1361808)) b!7333295))

(assert (= (and b!7333295 res!2963452) b!7333290))

(assert (= (and b!7333295 c!1361807) b!7333296))

(assert (= (and b!7333295 (not c!1361807)) b!7333294))

(assert (= (and b!7333294 c!1361811) b!7333289))

(assert (= (and b!7333294 (not c!1361811)) b!7333298))

(assert (= (and b!7333298 c!1361810) b!7333292))

(assert (= (and b!7333298 (not c!1361810)) b!7333297))

(assert (= (or b!7333289 b!7333292) bm!668302))

(assert (= (or b!7333289 b!7333292) bm!668305))

(assert (= (or b!7333296 bm!668305) bm!668304))

(assert (= (or b!7333296 bm!668302) bm!668303))

(assert (= (or b!7333291 bm!668304) bm!668306))

(assert (= (or b!7333291 b!7333296) bm!668301))

(assert (=> b!7333290 m!7999378))

(declare-fun m!7999446 () Bool)

(assert (=> bm!668306 m!7999446))

(declare-fun m!7999448 () Bool)

(assert (=> bm!668301 m!7999448))

(declare-fun m!7999450 () Bool)

(assert (=> bm!668303 m!7999450))

(declare-fun m!7999452 () Bool)

(assert (=> b!7333299 m!7999452))

(assert (=> b!7333192 d!2277251))

(declare-fun d!2277253 () Bool)

(declare-fun e!4391232 () Bool)

(assert (=> d!2277253 e!4391232))

(declare-fun res!2963453 () Bool)

(assert (=> d!2277253 (=> (not res!2963453) (not e!4391232))))

(declare-fun lt!2608621 () List!71556)

(assert (=> d!2277253 (= res!2963453 (= (content!14988 lt!2608621) (set.union (content!14988 (exprs!8500 ct1!256)) (content!14988 (exprs!8500 ct2!352)))))))

(declare-fun e!4391231 () List!71556)

(assert (=> d!2277253 (= lt!2608621 e!4391231)))

(declare-fun c!1361812 () Bool)

(assert (=> d!2277253 (= c!1361812 (is-Nil!71432 (exprs!8500 ct1!256)))))

(assert (=> d!2277253 (= (++!16882 (exprs!8500 ct1!256) (exprs!8500 ct2!352)) lt!2608621)))

(declare-fun b!7333301 () Bool)

(assert (=> b!7333301 (= e!4391231 (Cons!71432 (h!77880 (exprs!8500 ct1!256)) (++!16882 (t!385947 (exprs!8500 ct1!256)) (exprs!8500 ct2!352))))))

(declare-fun b!7333302 () Bool)

(declare-fun res!2963454 () Bool)

(assert (=> b!7333302 (=> (not res!2963454) (not e!4391232))))

(assert (=> b!7333302 (= res!2963454 (= (size!41967 lt!2608621) (+ (size!41967 (exprs!8500 ct1!256)) (size!41967 (exprs!8500 ct2!352)))))))

(declare-fun b!7333303 () Bool)

(assert (=> b!7333303 (= e!4391232 (or (not (= (exprs!8500 ct2!352) Nil!71432)) (= lt!2608621 (exprs!8500 ct1!256))))))

(declare-fun b!7333300 () Bool)

(assert (=> b!7333300 (= e!4391231 (exprs!8500 ct2!352))))

(assert (= (and d!2277253 c!1361812) b!7333300))

(assert (= (and d!2277253 (not c!1361812)) b!7333301))

(assert (= (and d!2277253 res!2963453) b!7333302))

(assert (= (and b!7333302 res!2963454) b!7333303))

(declare-fun m!7999454 () Bool)

(assert (=> d!2277253 m!7999454))

(declare-fun m!7999456 () Bool)

(assert (=> d!2277253 m!7999456))

(assert (=> d!2277253 m!7999392))

(declare-fun m!7999458 () Bool)

(assert (=> b!7333301 m!7999458))

(declare-fun m!7999460 () Bool)

(assert (=> b!7333302 m!7999460))

(declare-fun m!7999462 () Bool)

(assert (=> b!7333302 m!7999462))

(assert (=> b!7333302 m!7999400))

(assert (=> b!7333193 d!2277253))

(declare-fun d!2277255 () Bool)

(assert (=> d!2277255 (forall!17897 (++!16882 (exprs!8500 ct1!256) (exprs!8500 ct2!352)) lambda!454920)))

(declare-fun lt!2608622 () Unit!165081)

(assert (=> d!2277255 (= lt!2608622 (choose!57041 (exprs!8500 ct1!256) (exprs!8500 ct2!352) lambda!454920))))

(assert (=> d!2277255 (forall!17897 (exprs!8500 ct1!256) lambda!454920)))

(assert (=> d!2277255 (= (lemmaConcatPreservesForall!1739 (exprs!8500 ct1!256) (exprs!8500 ct2!352) lambda!454920) lt!2608622)))

(declare-fun bs!1917669 () Bool)

(assert (= bs!1917669 d!2277255))

(assert (=> bs!1917669 m!7999258))

(assert (=> bs!1917669 m!7999258))

(declare-fun m!7999464 () Bool)

(assert (=> bs!1917669 m!7999464))

(declare-fun m!7999466 () Bool)

(assert (=> bs!1917669 m!7999466))

(declare-fun m!7999468 () Bool)

(assert (=> bs!1917669 m!7999468))

(assert (=> b!7333193 d!2277255))

(declare-fun b!7333324 () Bool)

(declare-fun e!4391246 () (Set Context!16000))

(declare-fun call!668316 () (Set Context!16000))

(assert (=> b!7333324 (= e!4391246 call!668316)))

(declare-fun e!4391247 () (Set Context!16000))

(declare-fun b!7333325 () Bool)

(assert (=> b!7333325 (= e!4391247 (set.union call!668316 (derivationStepZipperUp!2740 (Context!16001 (t!385947 (exprs!8500 ct1!256))) c!10305)))))

(declare-fun b!7333326 () Bool)

(assert (=> b!7333326 (= e!4391246 (as set.empty (Set Context!16000)))))

(declare-fun b!7333327 () Bool)

(declare-fun e!4391245 () Bool)

(assert (=> b!7333327 (= e!4391245 (nullable!8161 (h!77880 (exprs!8500 ct1!256))))))

(declare-fun b!7333328 () Bool)

(assert (=> b!7333328 (= e!4391247 e!4391246)))

(declare-fun c!1361822 () Bool)

(assert (=> b!7333328 (= c!1361822 (is-Cons!71432 (exprs!8500 ct1!256)))))

(declare-fun d!2277257 () Bool)

(declare-fun c!1361821 () Bool)

(assert (=> d!2277257 (= c!1361821 e!4391245)))

(declare-fun res!2963459 () Bool)

(assert (=> d!2277257 (=> (not res!2963459) (not e!4391245))))

(assert (=> d!2277257 (= res!2963459 (is-Cons!71432 (exprs!8500 ct1!256)))))

(assert (=> d!2277257 (= (derivationStepZipperUp!2740 ct1!256 c!10305) e!4391247)))

(declare-fun bm!668311 () Bool)

(assert (=> bm!668311 (= call!668316 (derivationStepZipperDown!2887 (h!77880 (exprs!8500 ct1!256)) (Context!16001 (t!385947 (exprs!8500 ct1!256))) c!10305))))

(assert (= (and d!2277257 res!2963459) b!7333327))

(assert (= (and d!2277257 c!1361821) b!7333325))

(assert (= (and d!2277257 (not c!1361821)) b!7333328))

(assert (= (and b!7333328 c!1361822) b!7333324))

(assert (= (and b!7333328 (not c!1361822)) b!7333326))

(assert (= (or b!7333325 b!7333324) bm!668311))

(declare-fun m!7999470 () Bool)

(assert (=> b!7333325 m!7999470))

(assert (=> b!7333327 m!7999306))

(declare-fun m!7999472 () Bool)

(assert (=> bm!668311 m!7999472))

(assert (=> start!716206 d!2277257))

(declare-fun bs!1917670 () Bool)

(declare-fun d!2277259 () Bool)

(assert (= bs!1917670 (and d!2277259 b!7333193)))

(declare-fun lambda!454941 () Int)

(assert (=> bs!1917670 (= lambda!454941 lambda!454920)))

(declare-fun bs!1917671 () Bool)

(assert (= bs!1917671 (and d!2277259 d!2277243)))

(assert (=> bs!1917671 (= lambda!454941 lambda!454938)))

(assert (=> d!2277259 (= (inv!90991 cWitness!35) (forall!17897 (exprs!8500 cWitness!35) lambda!454941))))

(declare-fun bs!1917672 () Bool)

(assert (= bs!1917672 d!2277259))

(declare-fun m!7999474 () Bool)

(assert (=> bs!1917672 m!7999474))

(assert (=> start!716206 d!2277259))

(declare-fun bs!1917673 () Bool)

(declare-fun d!2277261 () Bool)

(assert (= bs!1917673 (and d!2277261 b!7333193)))

(declare-fun lambda!454942 () Int)

(assert (=> bs!1917673 (= lambda!454942 lambda!454920)))

(declare-fun bs!1917674 () Bool)

(assert (= bs!1917674 (and d!2277261 d!2277243)))

(assert (=> bs!1917674 (= lambda!454942 lambda!454938)))

(declare-fun bs!1917675 () Bool)

(assert (= bs!1917675 (and d!2277261 d!2277259)))

(assert (=> bs!1917675 (= lambda!454942 lambda!454941)))

(assert (=> d!2277261 (= (inv!90991 ct1!256) (forall!17897 (exprs!8500 ct1!256) lambda!454942))))

(declare-fun bs!1917676 () Bool)

(assert (= bs!1917676 d!2277261))

(declare-fun m!7999476 () Bool)

(assert (=> bs!1917676 m!7999476))

(assert (=> start!716206 d!2277261))

(declare-fun bs!1917677 () Bool)

(declare-fun d!2277263 () Bool)

(assert (= bs!1917677 (and d!2277263 b!7333193)))

(declare-fun lambda!454943 () Int)

(assert (=> bs!1917677 (= lambda!454943 lambda!454920)))

(declare-fun bs!1917678 () Bool)

(assert (= bs!1917678 (and d!2277263 d!2277243)))

(assert (=> bs!1917678 (= lambda!454943 lambda!454938)))

(declare-fun bs!1917679 () Bool)

(assert (= bs!1917679 (and d!2277263 d!2277259)))

(assert (=> bs!1917679 (= lambda!454943 lambda!454941)))

(declare-fun bs!1917680 () Bool)

(assert (= bs!1917680 (and d!2277263 d!2277261)))

(assert (=> bs!1917680 (= lambda!454943 lambda!454942)))

(assert (=> d!2277263 (= (inv!90991 ct2!352) (forall!17897 (exprs!8500 ct2!352) lambda!454943))))

(declare-fun bs!1917681 () Bool)

(assert (= bs!1917681 d!2277263))

(declare-fun m!7999478 () Bool)

(assert (=> bs!1917681 m!7999478))

(assert (=> start!716206 d!2277263))

(declare-fun d!2277265 () Bool)

(assert (=> d!2277265 (= (isEmpty!40972 (exprs!8500 ct1!256)) (is-Nil!71432 (exprs!8500 ct1!256)))))

(assert (=> b!7333188 d!2277265))

(declare-fun d!2277269 () Bool)

(assert (=> d!2277269 (= (isEmpty!40972 lt!2608545) (is-Nil!71432 lt!2608545))))

(assert (=> b!7333189 d!2277269))

(declare-fun b!7333334 () Bool)

(declare-fun e!4391252 () (Set Context!16000))

(declare-fun call!668318 () (Set Context!16000))

(assert (=> b!7333334 (= e!4391252 call!668318)))

(declare-fun b!7333335 () Bool)

(declare-fun e!4391253 () (Set Context!16000))

(assert (=> b!7333335 (= e!4391253 (set.union call!668318 (derivationStepZipperUp!2740 (Context!16001 (t!385947 (exprs!8500 lt!2608551))) c!10305)))))

(declare-fun b!7333336 () Bool)

(assert (=> b!7333336 (= e!4391252 (as set.empty (Set Context!16000)))))

(declare-fun b!7333337 () Bool)

(declare-fun e!4391251 () Bool)

(assert (=> b!7333337 (= e!4391251 (nullable!8161 (h!77880 (exprs!8500 lt!2608551))))))

(declare-fun b!7333338 () Bool)

(assert (=> b!7333338 (= e!4391253 e!4391252)))

(declare-fun c!1361826 () Bool)

(assert (=> b!7333338 (= c!1361826 (is-Cons!71432 (exprs!8500 lt!2608551)))))

(declare-fun d!2277271 () Bool)

(declare-fun c!1361825 () Bool)

(assert (=> d!2277271 (= c!1361825 e!4391251)))

(declare-fun res!2963461 () Bool)

(assert (=> d!2277271 (=> (not res!2963461) (not e!4391251))))

(assert (=> d!2277271 (= res!2963461 (is-Cons!71432 (exprs!8500 lt!2608551)))))

(assert (=> d!2277271 (= (derivationStepZipperUp!2740 lt!2608551 c!10305) e!4391253)))

(declare-fun bm!668313 () Bool)

(assert (=> bm!668313 (= call!668318 (derivationStepZipperDown!2887 (h!77880 (exprs!8500 lt!2608551)) (Context!16001 (t!385947 (exprs!8500 lt!2608551))) c!10305))))

(assert (= (and d!2277271 res!2963461) b!7333337))

(assert (= (and d!2277271 c!1361825) b!7333335))

(assert (= (and d!2277271 (not c!1361825)) b!7333338))

(assert (= (and b!7333338 c!1361826) b!7333334))

(assert (= (and b!7333338 (not c!1361826)) b!7333336))

(assert (= (or b!7333335 b!7333334) bm!668313))

(declare-fun m!7999484 () Bool)

(assert (=> b!7333335 m!7999484))

(declare-fun m!7999486 () Bool)

(assert (=> b!7333337 m!7999486))

(declare-fun m!7999488 () Bool)

(assert (=> bm!668313 m!7999488))

(assert (=> b!7333190 d!2277271))

(declare-fun d!2277273 () Bool)

(declare-fun nullableFct!3252 (Regex!19060) Bool)

(assert (=> d!2277273 (= (nullable!8161 (h!77880 (exprs!8500 ct1!256))) (nullableFct!3252 (h!77880 (exprs!8500 ct1!256))))))

(declare-fun bs!1917682 () Bool)

(assert (= bs!1917682 d!2277273))

(declare-fun m!7999490 () Bool)

(assert (=> bs!1917682 m!7999490))

(assert (=> b!7333196 d!2277273))

(declare-fun b!7333339 () Bool)

(declare-fun e!4391255 () (Set Context!16000))

(declare-fun call!668321 () (Set Context!16000))

(assert (=> b!7333339 (= e!4391255 call!668321)))

(declare-fun bm!668314 () Bool)

(declare-fun call!668319 () (Set Context!16000))

(declare-fun call!668323 () List!71556)

(declare-fun c!1361828 () Bool)

(assert (=> bm!668314 (= call!668319 (derivationStepZipperDown!2887 (ite c!1361828 (regOne!38633 (h!77880 (exprs!8500 ct1!256))) (regOne!38632 (h!77880 (exprs!8500 ct1!256)))) (ite c!1361828 lt!2608551 (Context!16001 call!668323)) c!10305))))

(declare-fun bm!668315 () Bool)

(declare-fun call!668320 () List!71556)

(assert (=> bm!668315 (= call!668320 call!668323)))

(declare-fun d!2277275 () Bool)

(declare-fun c!1361829 () Bool)

(assert (=> d!2277275 (= c!1361829 (and (is-ElementMatch!19060 (h!77880 (exprs!8500 ct1!256))) (= (c!1361782 (h!77880 (exprs!8500 ct1!256))) c!10305)))))

(declare-fun e!4391254 () (Set Context!16000))

(assert (=> d!2277275 (= (derivationStepZipperDown!2887 (h!77880 (exprs!8500 ct1!256)) lt!2608551 c!10305) e!4391254)))

(declare-fun b!7333340 () Bool)

(declare-fun e!4391259 () Bool)

(assert (=> b!7333340 (= e!4391259 (nullable!8161 (regOne!38632 (h!77880 (exprs!8500 ct1!256)))))))

(declare-fun b!7333341 () Bool)

(declare-fun e!4391258 () (Set Context!16000))

(declare-fun call!668322 () (Set Context!16000))

(assert (=> b!7333341 (= e!4391258 (set.union call!668319 call!668322))))

(declare-fun bm!668316 () Bool)

(declare-fun c!1361831 () Bool)

(declare-fun c!1361827 () Bool)

(assert (=> bm!668316 (= call!668323 ($colon$colon!3070 (exprs!8500 lt!2608551) (ite (or c!1361827 c!1361831) (regTwo!38632 (h!77880 (exprs!8500 ct1!256))) (h!77880 (exprs!8500 ct1!256)))))))

(declare-fun b!7333342 () Bool)

(declare-fun e!4391256 () (Set Context!16000))

(assert (=> b!7333342 (= e!4391256 call!668321)))

(declare-fun b!7333343 () Bool)

(assert (=> b!7333343 (= e!4391254 e!4391258)))

(assert (=> b!7333343 (= c!1361828 (is-Union!19060 (h!77880 (exprs!8500 ct1!256))))))

(declare-fun b!7333344 () Bool)

(declare-fun e!4391257 () (Set Context!16000))

(assert (=> b!7333344 (= e!4391257 e!4391255)))

(assert (=> b!7333344 (= c!1361831 (is-Concat!27905 (h!77880 (exprs!8500 ct1!256))))))

(declare-fun b!7333345 () Bool)

(assert (=> b!7333345 (= c!1361827 e!4391259)))

(declare-fun res!2963462 () Bool)

(assert (=> b!7333345 (=> (not res!2963462) (not e!4391259))))

(assert (=> b!7333345 (= res!2963462 (is-Concat!27905 (h!77880 (exprs!8500 ct1!256))))))

(assert (=> b!7333345 (= e!4391258 e!4391257)))

(declare-fun b!7333346 () Bool)

(declare-fun call!668324 () (Set Context!16000))

(assert (=> b!7333346 (= e!4391257 (set.union call!668319 call!668324))))

(declare-fun bm!668317 () Bool)

(assert (=> bm!668317 (= call!668324 call!668322)))

(declare-fun b!7333347 () Bool)

(assert (=> b!7333347 (= e!4391256 (as set.empty (Set Context!16000)))))

(declare-fun b!7333348 () Bool)

(declare-fun c!1361830 () Bool)

(assert (=> b!7333348 (= c!1361830 (is-Star!19060 (h!77880 (exprs!8500 ct1!256))))))

(assert (=> b!7333348 (= e!4391255 e!4391256)))

(declare-fun b!7333349 () Bool)

(assert (=> b!7333349 (= e!4391254 (set.insert lt!2608551 (as set.empty (Set Context!16000))))))

(declare-fun bm!668318 () Bool)

(assert (=> bm!668318 (= call!668321 call!668324)))

(declare-fun bm!668319 () Bool)

(assert (=> bm!668319 (= call!668322 (derivationStepZipperDown!2887 (ite c!1361828 (regTwo!38633 (h!77880 (exprs!8500 ct1!256))) (ite c!1361827 (regTwo!38632 (h!77880 (exprs!8500 ct1!256))) (ite c!1361831 (regOne!38632 (h!77880 (exprs!8500 ct1!256))) (reg!19389 (h!77880 (exprs!8500 ct1!256)))))) (ite (or c!1361828 c!1361827) lt!2608551 (Context!16001 call!668320)) c!10305))))

(assert (= (and d!2277275 c!1361829) b!7333349))

(assert (= (and d!2277275 (not c!1361829)) b!7333343))

(assert (= (and b!7333343 c!1361828) b!7333341))

(assert (= (and b!7333343 (not c!1361828)) b!7333345))

(assert (= (and b!7333345 res!2963462) b!7333340))

(assert (= (and b!7333345 c!1361827) b!7333346))

(assert (= (and b!7333345 (not c!1361827)) b!7333344))

(assert (= (and b!7333344 c!1361831) b!7333339))

(assert (= (and b!7333344 (not c!1361831)) b!7333348))

(assert (= (and b!7333348 c!1361830) b!7333342))

(assert (= (and b!7333348 (not c!1361830)) b!7333347))

(assert (= (or b!7333339 b!7333342) bm!668315))

(assert (= (or b!7333339 b!7333342) bm!668318))

(assert (= (or b!7333346 bm!668318) bm!668317))

(assert (= (or b!7333346 bm!668315) bm!668316))

(assert (= (or b!7333341 bm!668317) bm!668319))

(assert (= (or b!7333341 b!7333346) bm!668314))

(assert (=> b!7333340 m!7999378))

(declare-fun m!7999492 () Bool)

(assert (=> bm!668319 m!7999492))

(declare-fun m!7999494 () Bool)

(assert (=> bm!668314 m!7999494))

(declare-fun m!7999496 () Bool)

(assert (=> bm!668316 m!7999496))

(declare-fun m!7999498 () Bool)

(assert (=> b!7333349 m!7999498))

(assert (=> b!7333196 d!2277275))

(declare-fun d!2277277 () Bool)

(assert (=> d!2277277 (= (tail!14741 (exprs!8500 ct1!256)) (t!385947 (exprs!8500 ct1!256)))))

(assert (=> b!7333196 d!2277277))

(declare-fun b!7333350 () Bool)

(declare-fun e!4391261 () (Set Context!16000))

(declare-fun call!668325 () (Set Context!16000))

(assert (=> b!7333350 (= e!4391261 call!668325)))

(declare-fun e!4391262 () (Set Context!16000))

(declare-fun b!7333351 () Bool)

(assert (=> b!7333351 (= e!4391262 (set.union call!668325 (derivationStepZipperUp!2740 (Context!16001 (t!385947 (exprs!8500 (Context!16001 lt!2608545)))) c!10305)))))

(declare-fun b!7333352 () Bool)

(assert (=> b!7333352 (= e!4391261 (as set.empty (Set Context!16000)))))

(declare-fun b!7333353 () Bool)

(declare-fun e!4391260 () Bool)

(assert (=> b!7333353 (= e!4391260 (nullable!8161 (h!77880 (exprs!8500 (Context!16001 lt!2608545)))))))

(declare-fun b!7333354 () Bool)

(assert (=> b!7333354 (= e!4391262 e!4391261)))

(declare-fun c!1361833 () Bool)

(assert (=> b!7333354 (= c!1361833 (is-Cons!71432 (exprs!8500 (Context!16001 lt!2608545))))))

(declare-fun d!2277279 () Bool)

(declare-fun c!1361832 () Bool)

(assert (=> d!2277279 (= c!1361832 e!4391260)))

(declare-fun res!2963463 () Bool)

(assert (=> d!2277279 (=> (not res!2963463) (not e!4391260))))

(assert (=> d!2277279 (= res!2963463 (is-Cons!71432 (exprs!8500 (Context!16001 lt!2608545))))))

(assert (=> d!2277279 (= (derivationStepZipperUp!2740 (Context!16001 lt!2608545) c!10305) e!4391262)))

(declare-fun bm!668320 () Bool)

(assert (=> bm!668320 (= call!668325 (derivationStepZipperDown!2887 (h!77880 (exprs!8500 (Context!16001 lt!2608545))) (Context!16001 (t!385947 (exprs!8500 (Context!16001 lt!2608545)))) c!10305))))

(assert (= (and d!2277279 res!2963463) b!7333353))

(assert (= (and d!2277279 c!1361832) b!7333351))

(assert (= (and d!2277279 (not c!1361832)) b!7333354))

(assert (= (and b!7333354 c!1361833) b!7333350))

(assert (= (and b!7333354 (not c!1361833)) b!7333352))

(assert (= (or b!7333351 b!7333350) bm!668320))

(declare-fun m!7999500 () Bool)

(assert (=> b!7333351 m!7999500))

(declare-fun m!7999502 () Bool)

(assert (=> b!7333353 m!7999502))

(declare-fun m!7999504 () Bool)

(assert (=> bm!668320 m!7999504))

(assert (=> b!7333197 d!2277279))

(assert (=> b!7333197 d!2277255))

(assert (=> b!7333197 d!2277233))

(declare-fun b!7333359 () Bool)

(declare-fun e!4391265 () Bool)

(declare-fun tp!2081872 () Bool)

(declare-fun tp!2081873 () Bool)

(assert (=> b!7333359 (= e!4391265 (and tp!2081872 tp!2081873))))

(assert (=> b!7333194 (= tp!2081856 e!4391265)))

(assert (= (and b!7333194 (is-Cons!71432 (exprs!8500 cWitness!35))) b!7333359))

(declare-fun b!7333360 () Bool)

(declare-fun e!4391266 () Bool)

(declare-fun tp!2081874 () Bool)

(declare-fun tp!2081875 () Bool)

(assert (=> b!7333360 (= e!4391266 (and tp!2081874 tp!2081875))))

(assert (=> b!7333195 (= tp!2081857 e!4391266)))

(assert (= (and b!7333195 (is-Cons!71432 (exprs!8500 ct2!352))) b!7333360))

(declare-fun b!7333361 () Bool)

(declare-fun e!4391267 () Bool)

(declare-fun tp!2081876 () Bool)

(declare-fun tp!2081877 () Bool)

(assert (=> b!7333361 (= e!4391267 (and tp!2081876 tp!2081877))))

(assert (=> b!7333191 (= tp!2081858 e!4391267)))

(assert (= (and b!7333191 (is-Cons!71432 (exprs!8500 ct1!256))) b!7333361))

(push 1)

(assert (not d!2277241))

(assert (not d!2277249))

(assert (not bm!668316))

(assert (not b!7333302))

(assert (not bm!668297))

(assert (not bm!668300))

(assert (not d!2277253))

(assert (not b!7333360))

(assert (not b!7333287))

(assert (not b!7333361))

(assert (not b!7333278))

(assert (not bm!668303))

(assert (not bm!668319))

(assert (not bm!668306))

(assert (not b!7333325))

(assert (not bm!668313))

(assert (not b!7333340))

(assert (not b!7333327))

(assert (not d!2277263))

(assert tp_is_empty!48365)

(assert (not bm!668311))

(assert (not bm!668301))

(assert (not d!2277259))

(assert (not b!7333251))

(assert (not bm!668295))

(assert (not b!7333337))

(assert (not b!7333279))

(assert (not d!2277233))

(assert (not bm!668314))

(assert (not b!7333286))

(assert (not bm!668320))

(assert (not d!2277261))

(assert (not b!7333290))

(assert (not d!2277235))

(assert (not b!7333351))

(assert (not d!2277273))

(assert (not b!7333359))

(assert (not d!2277243))

(assert (not b!7333301))

(assert (not b!7333353))

(assert (not b!7333335))

(assert (not d!2277255))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

