; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!233540 () Bool)

(assert start!233540)

(declare-fun b!2380072 () Bool)

(assert (=> b!2380072 true))

(assert (=> b!2380072 true))

(declare-fun lambda!88627 () Int)

(declare-fun lambda!88626 () Int)

(assert (=> b!2380072 (not (= lambda!88627 lambda!88626))))

(assert (=> b!2380072 true))

(assert (=> b!2380072 true))

(declare-fun b!2380070 () Bool)

(declare-fun e!1518139 () Bool)

(declare-fun tp!759902 () Bool)

(declare-fun tp!759900 () Bool)

(assert (=> b!2380070 (= e!1518139 (and tp!759902 tp!759900))))

(declare-fun b!2380071 () Bool)

(declare-fun e!1518138 () Bool)

(assert (=> b!2380071 (= e!1518138 false)))

(declare-fun e!1518137 () Bool)

(declare-fun e!1518146 () Bool)

(assert (=> b!2380072 (= e!1518137 e!1518146)))

(declare-fun res!1010745 () Bool)

(assert (=> b!2380072 (=> res!1010745 e!1518146)))

(declare-fun lt!868016 () Bool)

(declare-fun lt!868017 () Bool)

(assert (=> b!2380072 (= res!1010745 (not (= lt!868016 lt!868017)))))

(declare-fun Exists!1041 (Int) Bool)

(assert (=> b!2380072 (= (Exists!1041 lambda!88626) (Exists!1041 lambda!88627))))

(declare-datatypes ((Unit!41011 0))(
  ( (Unit!41012) )
))
(declare-fun lt!868027 () Unit!41011)

(declare-datatypes ((C!14116 0))(
  ( (C!14117 (val!8300 Int)) )
))
(declare-datatypes ((Regex!6979 0))(
  ( (ElementMatch!6979 (c!378349 C!14116)) (Concat!11615 (regOne!14470 Regex!6979) (regTwo!14470 Regex!6979)) (EmptyExpr!6979) (Star!6979 (reg!7308 Regex!6979)) (EmptyLang!6979) (Union!6979 (regOne!14471 Regex!6979) (regTwo!14471 Regex!6979)) )
))
(declare-fun r!13927 () Regex!6979)

(declare-datatypes ((List!28196 0))(
  ( (Nil!28098) (Cons!28098 (h!33499 C!14116) (t!208173 List!28196)) )
))
(declare-fun s!9460 () List!28196)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!380 (Regex!6979 Regex!6979 List!28196) Unit!41011)

(assert (=> b!2380072 (= lt!868027 (lemmaExistCutMatchRandMatchRSpecEquivalent!380 (regOne!14470 r!13927) (regTwo!14470 r!13927) s!9460))))

(assert (=> b!2380072 (= lt!868017 (Exists!1041 lambda!88626))))

(declare-datatypes ((tuple2!27822 0))(
  ( (tuple2!27823 (_1!16452 List!28196) (_2!16452 List!28196)) )
))
(declare-datatypes ((Option!5522 0))(
  ( (None!5521) (Some!5521 (v!30929 tuple2!27822)) )
))
(declare-fun isDefined!4350 (Option!5522) Bool)

(declare-fun findConcatSeparation!630 (Regex!6979 Regex!6979 List!28196 List!28196 List!28196) Option!5522)

(assert (=> b!2380072 (= lt!868017 (isDefined!4350 (findConcatSeparation!630 (regOne!14470 r!13927) (regTwo!14470 r!13927) Nil!28098 s!9460 s!9460)))))

(declare-fun lt!868021 () Unit!41011)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!630 (Regex!6979 Regex!6979 List!28196) Unit!41011)

(assert (=> b!2380072 (= lt!868021 (lemmaFindConcatSeparationEquivalentToExists!630 (regOne!14470 r!13927) (regTwo!14470 r!13927) s!9460))))

(declare-fun b!2380073 () Bool)

(declare-fun tp!759905 () Bool)

(assert (=> b!2380073 (= e!1518139 tp!759905)))

(declare-fun b!2380074 () Bool)

(declare-fun res!1010738 () Bool)

(declare-fun e!1518140 () Bool)

(assert (=> b!2380074 (=> res!1010738 e!1518140)))

(declare-fun lt!868020 () Regex!6979)

(declare-fun validRegex!2704 (Regex!6979) Bool)

(assert (=> b!2380074 (= res!1010738 (not (validRegex!2704 lt!868020)))))

(declare-fun b!2380075 () Bool)

(declare-fun tp!759899 () Bool)

(declare-fun tp!759901 () Bool)

(assert (=> b!2380075 (= e!1518139 (and tp!759899 tp!759901))))

(declare-fun b!2380076 () Bool)

(declare-fun e!1518143 () Unit!41011)

(declare-fun Unit!41013 () Unit!41011)

(assert (=> b!2380076 (= e!1518143 Unit!41013)))

(declare-fun b!2380077 () Bool)

(declare-fun Unit!41014 () Unit!41011)

(assert (=> b!2380077 (= e!1518143 Unit!41014)))

(declare-fun lt!868019 () tuple2!27822)

(declare-fun lt!868026 () Option!5522)

(declare-fun get!8567 (Option!5522) tuple2!27822)

(assert (=> b!2380077 (= lt!868019 (get!8567 lt!868026))))

(declare-fun lt!868024 () Unit!41011)

(declare-fun lt!868015 () Regex!6979)

(declare-fun lemmaFindSeparationIsDefinedThenConcatMatches!10 (Regex!6979 Regex!6979 List!28196 List!28196 List!28196) Unit!41011)

(assert (=> b!2380077 (= lt!868024 (lemmaFindSeparationIsDefinedThenConcatMatches!10 lt!868015 EmptyExpr!6979 (_1!16452 lt!868019) (_2!16452 lt!868019) s!9460))))

(declare-fun res!1010743 () Bool)

(declare-fun matchR!3096 (Regex!6979 List!28196) Bool)

(declare-fun ++!6934 (List!28196 List!28196) List!28196)

(assert (=> b!2380077 (= res!1010743 (matchR!3096 (Concat!11615 lt!868015 EmptyExpr!6979) (++!6934 (_1!16452 lt!868019) (_2!16452 lt!868019))))))

(assert (=> b!2380077 (=> (not res!1010743) (not e!1518138))))

(assert (=> b!2380077 e!1518138))

(declare-fun b!2380078 () Bool)

(declare-fun e!1518145 () Bool)

(assert (=> b!2380078 (= e!1518145 e!1518140)))

(declare-fun res!1010746 () Bool)

(assert (=> b!2380078 (=> res!1010746 e!1518140)))

(assert (=> b!2380078 (= res!1010746 (not (validRegex!2704 lt!868015)))))

(declare-fun lt!868018 () Bool)

(assert (=> b!2380078 (not lt!868018)))

(declare-fun lt!868023 () Unit!41011)

(assert (=> b!2380078 (= lt!868023 e!1518143)))

(declare-fun c!378348 () Bool)

(assert (=> b!2380078 (= c!378348 lt!868018)))

(assert (=> b!2380078 (= lt!868018 (isDefined!4350 lt!868026))))

(assert (=> b!2380078 (= lt!868026 (findConcatSeparation!630 lt!868015 EmptyExpr!6979 Nil!28098 s!9460 s!9460))))

(declare-fun b!2380079 () Bool)

(declare-fun e!1518141 () Bool)

(assert (=> b!2380079 (= e!1518146 e!1518141)))

(declare-fun res!1010736 () Bool)

(assert (=> b!2380079 (=> res!1010736 e!1518141)))

(declare-datatypes ((List!28197 0))(
  ( (Nil!28099) (Cons!28099 (h!33500 Regex!6979) (t!208174 List!28197)) )
))
(declare-fun lt!868022 () List!28197)

(declare-fun isEmpty!16045 (List!28197) Bool)

(assert (=> b!2380079 (= res!1010736 (not (isEmpty!16045 lt!868022)))))

(declare-fun l!9164 () List!28197)

(declare-fun tail!3460 (List!28197) List!28197)

(assert (=> b!2380079 (= lt!868022 (tail!3460 l!9164))))

(declare-fun b!2380080 () Bool)

(declare-fun res!1010737 () Bool)

(declare-fun e!1518148 () Bool)

(assert (=> b!2380080 (=> (not res!1010737) (not e!1518148))))

(declare-fun generalisedConcat!80 (List!28197) Regex!6979)

(assert (=> b!2380080 (= res!1010737 (= r!13927 (generalisedConcat!80 l!9164)))))

(declare-fun b!2380081 () Bool)

(declare-fun e!1518147 () Bool)

(assert (=> b!2380081 (= e!1518141 e!1518147)))

(declare-fun res!1010744 () Bool)

(assert (=> b!2380081 (=> res!1010744 e!1518147)))

(assert (=> b!2380081 (= res!1010744 (not (= lt!868020 EmptyExpr!6979)))))

(assert (=> b!2380081 (= lt!868020 (generalisedConcat!80 lt!868022))))

(declare-fun b!2380083 () Bool)

(declare-fun e!1518144 () Bool)

(declare-fun tp!759904 () Bool)

(declare-fun tp!759903 () Bool)

(assert (=> b!2380083 (= e!1518144 (and tp!759904 tp!759903))))

(declare-fun b!2380084 () Bool)

(declare-fun e!1518142 () Bool)

(declare-fun tp_is_empty!11371 () Bool)

(declare-fun tp!759898 () Bool)

(assert (=> b!2380084 (= e!1518142 (and tp_is_empty!11371 tp!759898))))

(declare-fun b!2380085 () Bool)

(assert (=> b!2380085 (= e!1518148 (not e!1518137))))

(declare-fun res!1010739 () Bool)

(assert (=> b!2380085 (=> res!1010739 e!1518137)))

(get-info :version)

(assert (=> b!2380085 (= res!1010739 (not ((_ is Concat!11615) r!13927)))))

(declare-fun lt!868025 () Bool)

(assert (=> b!2380085 (= lt!868025 lt!868016)))

(declare-fun matchRSpec!828 (Regex!6979 List!28196) Bool)

(assert (=> b!2380085 (= lt!868016 (matchRSpec!828 r!13927 s!9460))))

(assert (=> b!2380085 (= lt!868025 (matchR!3096 r!13927 s!9460))))

(declare-fun lt!868028 () Unit!41011)

(declare-fun mainMatchTheorem!828 (Regex!6979 List!28196) Unit!41011)

(assert (=> b!2380085 (= lt!868028 (mainMatchTheorem!828 r!13927 s!9460))))

(declare-fun b!2380086 () Bool)

(assert (=> b!2380086 (= e!1518140 (= (++!6934 Nil!28098 s!9460) s!9460))))

(declare-fun b!2380087 () Bool)

(assert (=> b!2380087 (= e!1518147 e!1518145)))

(declare-fun res!1010742 () Bool)

(assert (=> b!2380087 (=> res!1010742 e!1518145)))

(assert (=> b!2380087 (= res!1010742 (matchR!3096 lt!868015 s!9460))))

(declare-fun head!5190 (List!28197) Regex!6979)

(assert (=> b!2380087 (= lt!868015 (head!5190 l!9164))))

(declare-fun b!2380088 () Bool)

(assert (=> b!2380088 (= e!1518139 tp_is_empty!11371)))

(declare-fun res!1010740 () Bool)

(assert (=> start!233540 (=> (not res!1010740) (not e!1518148))))

(declare-fun lambda!88625 () Int)

(declare-fun forall!5613 (List!28197 Int) Bool)

(assert (=> start!233540 (= res!1010740 (forall!5613 l!9164 lambda!88625))))

(assert (=> start!233540 e!1518148))

(assert (=> start!233540 e!1518144))

(assert (=> start!233540 e!1518139))

(assert (=> start!233540 e!1518142))

(declare-fun b!2380082 () Bool)

(declare-fun res!1010741 () Bool)

(assert (=> b!2380082 (=> res!1010741 e!1518146)))

(assert (=> b!2380082 (= res!1010741 (isEmpty!16045 l!9164))))

(assert (= (and start!233540 res!1010740) b!2380080))

(assert (= (and b!2380080 res!1010737) b!2380085))

(assert (= (and b!2380085 (not res!1010739)) b!2380072))

(assert (= (and b!2380072 (not res!1010745)) b!2380082))

(assert (= (and b!2380082 (not res!1010741)) b!2380079))

(assert (= (and b!2380079 (not res!1010736)) b!2380081))

(assert (= (and b!2380081 (not res!1010744)) b!2380087))

(assert (= (and b!2380087 (not res!1010742)) b!2380078))

(assert (= (and b!2380078 c!378348) b!2380077))

(assert (= (and b!2380078 (not c!378348)) b!2380076))

(assert (= (and b!2380077 res!1010743) b!2380071))

(assert (= (and b!2380078 (not res!1010746)) b!2380074))

(assert (= (and b!2380074 (not res!1010738)) b!2380086))

(assert (= (and start!233540 ((_ is Cons!28099) l!9164)) b!2380083))

(assert (= (and start!233540 ((_ is ElementMatch!6979) r!13927)) b!2380088))

(assert (= (and start!233540 ((_ is Concat!11615) r!13927)) b!2380075))

(assert (= (and start!233540 ((_ is Star!6979) r!13927)) b!2380073))

(assert (= (and start!233540 ((_ is Union!6979) r!13927)) b!2380070))

(assert (= (and start!233540 ((_ is Cons!28098) s!9460)) b!2380084))

(declare-fun m!2784131 () Bool)

(assert (=> b!2380080 m!2784131))

(declare-fun m!2784133 () Bool)

(assert (=> b!2380085 m!2784133))

(declare-fun m!2784135 () Bool)

(assert (=> b!2380085 m!2784135))

(declare-fun m!2784137 () Bool)

(assert (=> b!2380085 m!2784137))

(declare-fun m!2784139 () Bool)

(assert (=> b!2380082 m!2784139))

(declare-fun m!2784141 () Bool)

(assert (=> b!2380086 m!2784141))

(declare-fun m!2784143 () Bool)

(assert (=> b!2380078 m!2784143))

(declare-fun m!2784145 () Bool)

(assert (=> b!2380078 m!2784145))

(declare-fun m!2784147 () Bool)

(assert (=> b!2380078 m!2784147))

(declare-fun m!2784149 () Bool)

(assert (=> start!233540 m!2784149))

(declare-fun m!2784151 () Bool)

(assert (=> b!2380077 m!2784151))

(declare-fun m!2784153 () Bool)

(assert (=> b!2380077 m!2784153))

(declare-fun m!2784155 () Bool)

(assert (=> b!2380077 m!2784155))

(assert (=> b!2380077 m!2784155))

(declare-fun m!2784157 () Bool)

(assert (=> b!2380077 m!2784157))

(declare-fun m!2784159 () Bool)

(assert (=> b!2380087 m!2784159))

(declare-fun m!2784161 () Bool)

(assert (=> b!2380087 m!2784161))

(declare-fun m!2784163 () Bool)

(assert (=> b!2380074 m!2784163))

(declare-fun m!2784165 () Bool)

(assert (=> b!2380072 m!2784165))

(declare-fun m!2784167 () Bool)

(assert (=> b!2380072 m!2784167))

(declare-fun m!2784169 () Bool)

(assert (=> b!2380072 m!2784169))

(assert (=> b!2380072 m!2784165))

(declare-fun m!2784171 () Bool)

(assert (=> b!2380072 m!2784171))

(declare-fun m!2784173 () Bool)

(assert (=> b!2380072 m!2784173))

(declare-fun m!2784175 () Bool)

(assert (=> b!2380072 m!2784175))

(assert (=> b!2380072 m!2784171))

(declare-fun m!2784177 () Bool)

(assert (=> b!2380081 m!2784177))

(declare-fun m!2784179 () Bool)

(assert (=> b!2380079 m!2784179))

(declare-fun m!2784181 () Bool)

(assert (=> b!2380079 m!2784181))

(check-sat (not b!2380075) (not b!2380080) (not b!2380087) (not start!233540) (not b!2380070) (not b!2380085) (not b!2380082) (not b!2380079) (not b!2380081) (not b!2380074) tp_is_empty!11371 (not b!2380084) (not b!2380073) (not b!2380077) (not b!2380086) (not b!2380072) (not b!2380078) (not b!2380083))
(check-sat)
(get-model)

(declare-fun d!696562 () Bool)

(assert (=> d!696562 (= (isEmpty!16045 l!9164) ((_ is Nil!28099) l!9164))))

(assert (=> b!2380082 d!696562))

(declare-fun d!696564 () Bool)

(declare-fun isEmpty!16048 (Option!5522) Bool)

(assert (=> d!696564 (= (isDefined!4350 (findConcatSeparation!630 (regOne!14470 r!13927) (regTwo!14470 r!13927) Nil!28098 s!9460 s!9460)) (not (isEmpty!16048 (findConcatSeparation!630 (regOne!14470 r!13927) (regTwo!14470 r!13927) Nil!28098 s!9460 s!9460))))))

(declare-fun bs!461817 () Bool)

(assert (= bs!461817 d!696564))

(assert (=> bs!461817 m!2784165))

(declare-fun m!2784183 () Bool)

(assert (=> bs!461817 m!2784183))

(assert (=> b!2380072 d!696564))

(declare-fun bs!461818 () Bool)

(declare-fun d!696566 () Bool)

(assert (= bs!461818 (and d!696566 b!2380072)))

(declare-fun lambda!88634 () Int)

(assert (=> bs!461818 (= lambda!88634 lambda!88626)))

(assert (=> bs!461818 (not (= lambda!88634 lambda!88627))))

(assert (=> d!696566 true))

(assert (=> d!696566 true))

(assert (=> d!696566 true))

(assert (=> d!696566 (= (isDefined!4350 (findConcatSeparation!630 (regOne!14470 r!13927) (regTwo!14470 r!13927) Nil!28098 s!9460 s!9460)) (Exists!1041 lambda!88634))))

(declare-fun lt!868031 () Unit!41011)

(declare-fun choose!13911 (Regex!6979 Regex!6979 List!28196) Unit!41011)

(assert (=> d!696566 (= lt!868031 (choose!13911 (regOne!14470 r!13927) (regTwo!14470 r!13927) s!9460))))

(assert (=> d!696566 (validRegex!2704 (regOne!14470 r!13927))))

(assert (=> d!696566 (= (lemmaFindConcatSeparationEquivalentToExists!630 (regOne!14470 r!13927) (regTwo!14470 r!13927) s!9460) lt!868031)))

(declare-fun bs!461819 () Bool)

(assert (= bs!461819 d!696566))

(assert (=> bs!461819 m!2784165))

(assert (=> bs!461819 m!2784167))

(assert (=> bs!461819 m!2784165))

(declare-fun m!2784185 () Bool)

(assert (=> bs!461819 m!2784185))

(declare-fun m!2784187 () Bool)

(assert (=> bs!461819 m!2784187))

(declare-fun m!2784189 () Bool)

(assert (=> bs!461819 m!2784189))

(assert (=> b!2380072 d!696566))

(declare-fun bs!461823 () Bool)

(declare-fun d!696570 () Bool)

(assert (= bs!461823 (and d!696570 b!2380072)))

(declare-fun lambda!88641 () Int)

(assert (=> bs!461823 (= lambda!88641 lambda!88626)))

(assert (=> bs!461823 (not (= lambda!88641 lambda!88627))))

(declare-fun bs!461824 () Bool)

(assert (= bs!461824 (and d!696570 d!696566)))

(assert (=> bs!461824 (= lambda!88641 lambda!88634)))

(assert (=> d!696570 true))

(assert (=> d!696570 true))

(assert (=> d!696570 true))

(declare-fun lambda!88642 () Int)

(assert (=> bs!461823 (not (= lambda!88642 lambda!88626))))

(assert (=> bs!461823 (= lambda!88642 lambda!88627)))

(assert (=> bs!461824 (not (= lambda!88642 lambda!88634))))

(declare-fun bs!461825 () Bool)

(assert (= bs!461825 d!696570))

(assert (=> bs!461825 (not (= lambda!88642 lambda!88641))))

(assert (=> d!696570 true))

(assert (=> d!696570 true))

(assert (=> d!696570 true))

(assert (=> d!696570 (= (Exists!1041 lambda!88641) (Exists!1041 lambda!88642))))

(declare-fun lt!868037 () Unit!41011)

(declare-fun choose!13912 (Regex!6979 Regex!6979 List!28196) Unit!41011)

(assert (=> d!696570 (= lt!868037 (choose!13912 (regOne!14470 r!13927) (regTwo!14470 r!13927) s!9460))))

(assert (=> d!696570 (validRegex!2704 (regOne!14470 r!13927))))

(assert (=> d!696570 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!380 (regOne!14470 r!13927) (regTwo!14470 r!13927) s!9460) lt!868037)))

(declare-fun m!2784215 () Bool)

(assert (=> bs!461825 m!2784215))

(declare-fun m!2784217 () Bool)

(assert (=> bs!461825 m!2784217))

(declare-fun m!2784219 () Bool)

(assert (=> bs!461825 m!2784219))

(assert (=> bs!461825 m!2784185))

(assert (=> b!2380072 d!696570))

(declare-fun d!696578 () Bool)

(declare-fun choose!13913 (Int) Bool)

(assert (=> d!696578 (= (Exists!1041 lambda!88627) (choose!13913 lambda!88627))))

(declare-fun bs!461827 () Bool)

(assert (= bs!461827 d!696578))

(declare-fun m!2784221 () Bool)

(assert (=> bs!461827 m!2784221))

(assert (=> b!2380072 d!696578))

(declare-fun d!696580 () Bool)

(assert (=> d!696580 (= (Exists!1041 lambda!88626) (choose!13913 lambda!88626))))

(declare-fun bs!461828 () Bool)

(assert (= bs!461828 d!696580))

(declare-fun m!2784223 () Bool)

(assert (=> bs!461828 m!2784223))

(assert (=> b!2380072 d!696580))

(declare-fun b!2380277 () Bool)

(declare-fun res!1010854 () Bool)

(declare-fun e!1518260 () Bool)

(assert (=> b!2380277 (=> (not res!1010854) (not e!1518260))))

(declare-fun lt!868058 () Option!5522)

(assert (=> b!2380277 (= res!1010854 (matchR!3096 (regOne!14470 r!13927) (_1!16452 (get!8567 lt!868058))))))

(declare-fun b!2380278 () Bool)

(declare-fun e!1518264 () Option!5522)

(assert (=> b!2380278 (= e!1518264 (Some!5521 (tuple2!27823 Nil!28098 s!9460)))))

(declare-fun b!2380279 () Bool)

(declare-fun e!1518261 () Option!5522)

(assert (=> b!2380279 (= e!1518261 None!5521)))

(declare-fun b!2380280 () Bool)

(declare-fun e!1518263 () Bool)

(assert (=> b!2380280 (= e!1518263 (not (isDefined!4350 lt!868058)))))

(declare-fun b!2380281 () Bool)

(assert (=> b!2380281 (= e!1518260 (= (++!6934 (_1!16452 (get!8567 lt!868058)) (_2!16452 (get!8567 lt!868058))) s!9460))))

(declare-fun b!2380282 () Bool)

(declare-fun res!1010857 () Bool)

(assert (=> b!2380282 (=> (not res!1010857) (not e!1518260))))

(assert (=> b!2380282 (= res!1010857 (matchR!3096 (regTwo!14470 r!13927) (_2!16452 (get!8567 lt!868058))))))

(declare-fun b!2380283 () Bool)

(assert (=> b!2380283 (= e!1518264 e!1518261)))

(declare-fun c!378390 () Bool)

(assert (=> b!2380283 (= c!378390 ((_ is Nil!28098) s!9460))))

(declare-fun b!2380284 () Bool)

(declare-fun lt!868056 () Unit!41011)

(declare-fun lt!868057 () Unit!41011)

(assert (=> b!2380284 (= lt!868056 lt!868057)))

(assert (=> b!2380284 (= (++!6934 (++!6934 Nil!28098 (Cons!28098 (h!33499 s!9460) Nil!28098)) (t!208173 s!9460)) s!9460)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!576 (List!28196 C!14116 List!28196 List!28196) Unit!41011)

(assert (=> b!2380284 (= lt!868057 (lemmaMoveElementToOtherListKeepsConcatEq!576 Nil!28098 (h!33499 s!9460) (t!208173 s!9460) s!9460))))

(assert (=> b!2380284 (= e!1518261 (findConcatSeparation!630 (regOne!14470 r!13927) (regTwo!14470 r!13927) (++!6934 Nil!28098 (Cons!28098 (h!33499 s!9460) Nil!28098)) (t!208173 s!9460) s!9460))))

(declare-fun d!696582 () Bool)

(assert (=> d!696582 e!1518263))

(declare-fun res!1010856 () Bool)

(assert (=> d!696582 (=> res!1010856 e!1518263)))

(assert (=> d!696582 (= res!1010856 e!1518260)))

(declare-fun res!1010853 () Bool)

(assert (=> d!696582 (=> (not res!1010853) (not e!1518260))))

(assert (=> d!696582 (= res!1010853 (isDefined!4350 lt!868058))))

(assert (=> d!696582 (= lt!868058 e!1518264)))

(declare-fun c!378389 () Bool)

(declare-fun e!1518262 () Bool)

(assert (=> d!696582 (= c!378389 e!1518262)))

(declare-fun res!1010855 () Bool)

(assert (=> d!696582 (=> (not res!1010855) (not e!1518262))))

(assert (=> d!696582 (= res!1010855 (matchR!3096 (regOne!14470 r!13927) Nil!28098))))

(assert (=> d!696582 (validRegex!2704 (regOne!14470 r!13927))))

(assert (=> d!696582 (= (findConcatSeparation!630 (regOne!14470 r!13927) (regTwo!14470 r!13927) Nil!28098 s!9460 s!9460) lt!868058)))

(declare-fun b!2380285 () Bool)

(assert (=> b!2380285 (= e!1518262 (matchR!3096 (regTwo!14470 r!13927) s!9460))))

(assert (= (and d!696582 res!1010855) b!2380285))

(assert (= (and d!696582 c!378389) b!2380278))

(assert (= (and d!696582 (not c!378389)) b!2380283))

(assert (= (and b!2380283 c!378390) b!2380279))

(assert (= (and b!2380283 (not c!378390)) b!2380284))

(assert (= (and d!696582 res!1010853) b!2380277))

(assert (= (and b!2380277 res!1010854) b!2380282))

(assert (= (and b!2380282 res!1010857) b!2380281))

(assert (= (and d!696582 (not res!1010856)) b!2380280))

(declare-fun m!2784265 () Bool)

(assert (=> b!2380284 m!2784265))

(assert (=> b!2380284 m!2784265))

(declare-fun m!2784267 () Bool)

(assert (=> b!2380284 m!2784267))

(declare-fun m!2784269 () Bool)

(assert (=> b!2380284 m!2784269))

(assert (=> b!2380284 m!2784265))

(declare-fun m!2784271 () Bool)

(assert (=> b!2380284 m!2784271))

(declare-fun m!2784273 () Bool)

(assert (=> b!2380282 m!2784273))

(declare-fun m!2784275 () Bool)

(assert (=> b!2380282 m!2784275))

(declare-fun m!2784277 () Bool)

(assert (=> d!696582 m!2784277))

(declare-fun m!2784279 () Bool)

(assert (=> d!696582 m!2784279))

(assert (=> d!696582 m!2784185))

(declare-fun m!2784281 () Bool)

(assert (=> b!2380285 m!2784281))

(assert (=> b!2380281 m!2784273))

(declare-fun m!2784283 () Bool)

(assert (=> b!2380281 m!2784283))

(assert (=> b!2380280 m!2784277))

(assert (=> b!2380277 m!2784273))

(declare-fun m!2784287 () Bool)

(assert (=> b!2380277 m!2784287))

(assert (=> b!2380072 d!696582))

(declare-fun d!696596 () Bool)

(assert (=> d!696596 (= (isEmpty!16045 lt!868022) ((_ is Nil!28099) lt!868022))))

(assert (=> b!2380079 d!696596))

(declare-fun d!696600 () Bool)

(assert (=> d!696600 (= (tail!3460 l!9164) (t!208174 l!9164))))

(assert (=> b!2380079 d!696600))

(declare-fun bs!461834 () Bool)

(declare-fun d!696602 () Bool)

(assert (= bs!461834 (and d!696602 start!233540)))

(declare-fun lambda!88649 () Int)

(assert (=> bs!461834 (= lambda!88649 lambda!88625)))

(declare-fun b!2380372 () Bool)

(declare-fun e!1518316 () Bool)

(declare-fun e!1518314 () Bool)

(assert (=> b!2380372 (= e!1518316 e!1518314)))

(declare-fun c!378424 () Bool)

(assert (=> b!2380372 (= c!378424 (isEmpty!16045 l!9164))))

(declare-fun b!2380373 () Bool)

(declare-fun lt!868072 () Regex!6979)

(declare-fun isEmptyExpr!49 (Regex!6979) Bool)

(assert (=> b!2380373 (= e!1518314 (isEmptyExpr!49 lt!868072))))

(declare-fun b!2380374 () Bool)

(declare-fun e!1518319 () Regex!6979)

(assert (=> b!2380374 (= e!1518319 EmptyExpr!6979)))

(declare-fun b!2380375 () Bool)

(declare-fun e!1518317 () Bool)

(declare-fun isConcat!49 (Regex!6979) Bool)

(assert (=> b!2380375 (= e!1518317 (isConcat!49 lt!868072))))

(declare-fun b!2380376 () Bool)

(declare-fun e!1518318 () Regex!6979)

(assert (=> b!2380376 (= e!1518318 (h!33500 l!9164))))

(assert (=> d!696602 e!1518316))

(declare-fun res!1010885 () Bool)

(assert (=> d!696602 (=> (not res!1010885) (not e!1518316))))

(assert (=> d!696602 (= res!1010885 (validRegex!2704 lt!868072))))

(assert (=> d!696602 (= lt!868072 e!1518318)))

(declare-fun c!378421 () Bool)

(declare-fun e!1518315 () Bool)

(assert (=> d!696602 (= c!378421 e!1518315)))

(declare-fun res!1010884 () Bool)

(assert (=> d!696602 (=> (not res!1010884) (not e!1518315))))

(assert (=> d!696602 (= res!1010884 ((_ is Cons!28099) l!9164))))

(assert (=> d!696602 (forall!5613 l!9164 lambda!88649)))

(assert (=> d!696602 (= (generalisedConcat!80 l!9164) lt!868072)))

(declare-fun b!2380377 () Bool)

(assert (=> b!2380377 (= e!1518319 (Concat!11615 (h!33500 l!9164) (generalisedConcat!80 (t!208174 l!9164))))))

(declare-fun b!2380378 () Bool)

(assert (=> b!2380378 (= e!1518315 (isEmpty!16045 (t!208174 l!9164)))))

(declare-fun b!2380379 () Bool)

(assert (=> b!2380379 (= e!1518318 e!1518319)))

(declare-fun c!378422 () Bool)

(assert (=> b!2380379 (= c!378422 ((_ is Cons!28099) l!9164))))

(declare-fun b!2380380 () Bool)

(assert (=> b!2380380 (= e!1518314 e!1518317)))

(declare-fun c!378423 () Bool)

(assert (=> b!2380380 (= c!378423 (isEmpty!16045 (tail!3460 l!9164)))))

(declare-fun b!2380381 () Bool)

(assert (=> b!2380381 (= e!1518317 (= lt!868072 (head!5190 l!9164)))))

(assert (= (and d!696602 res!1010884) b!2380378))

(assert (= (and d!696602 c!378421) b!2380376))

(assert (= (and d!696602 (not c!378421)) b!2380379))

(assert (= (and b!2380379 c!378422) b!2380377))

(assert (= (and b!2380379 (not c!378422)) b!2380374))

(assert (= (and d!696602 res!1010885) b!2380372))

(assert (= (and b!2380372 c!378424) b!2380373))

(assert (= (and b!2380372 (not c!378424)) b!2380380))

(assert (= (and b!2380380 c!378423) b!2380381))

(assert (= (and b!2380380 (not c!378423)) b!2380375))

(assert (=> b!2380372 m!2784139))

(declare-fun m!2784355 () Bool)

(assert (=> d!696602 m!2784355))

(declare-fun m!2784357 () Bool)

(assert (=> d!696602 m!2784357))

(assert (=> b!2380381 m!2784161))

(declare-fun m!2784361 () Bool)

(assert (=> b!2380373 m!2784361))

(assert (=> b!2380380 m!2784181))

(assert (=> b!2380380 m!2784181))

(declare-fun m!2784363 () Bool)

(assert (=> b!2380380 m!2784363))

(declare-fun m!2784365 () Bool)

(assert (=> b!2380375 m!2784365))

(declare-fun m!2784367 () Bool)

(assert (=> b!2380378 m!2784367))

(declare-fun m!2784369 () Bool)

(assert (=> b!2380377 m!2784369))

(assert (=> b!2380080 d!696602))

(declare-fun bs!461835 () Bool)

(declare-fun d!696618 () Bool)

(assert (= bs!461835 (and d!696618 start!233540)))

(declare-fun lambda!88650 () Int)

(assert (=> bs!461835 (= lambda!88650 lambda!88625)))

(declare-fun bs!461836 () Bool)

(assert (= bs!461836 (and d!696618 d!696602)))

(assert (=> bs!461836 (= lambda!88650 lambda!88649)))

(declare-fun b!2380400 () Bool)

(declare-fun e!1518331 () Bool)

(declare-fun e!1518329 () Bool)

(assert (=> b!2380400 (= e!1518331 e!1518329)))

(declare-fun c!378432 () Bool)

(assert (=> b!2380400 (= c!378432 (isEmpty!16045 lt!868022))))

(declare-fun b!2380401 () Bool)

(declare-fun lt!868075 () Regex!6979)

(assert (=> b!2380401 (= e!1518329 (isEmptyExpr!49 lt!868075))))

(declare-fun b!2380402 () Bool)

(declare-fun e!1518334 () Regex!6979)

(assert (=> b!2380402 (= e!1518334 EmptyExpr!6979)))

(declare-fun b!2380403 () Bool)

(declare-fun e!1518332 () Bool)

(assert (=> b!2380403 (= e!1518332 (isConcat!49 lt!868075))))

(declare-fun b!2380404 () Bool)

(declare-fun e!1518333 () Regex!6979)

(assert (=> b!2380404 (= e!1518333 (h!33500 lt!868022))))

(assert (=> d!696618 e!1518331))

(declare-fun res!1010897 () Bool)

(assert (=> d!696618 (=> (not res!1010897) (not e!1518331))))

(assert (=> d!696618 (= res!1010897 (validRegex!2704 lt!868075))))

(assert (=> d!696618 (= lt!868075 e!1518333)))

(declare-fun c!378429 () Bool)

(declare-fun e!1518330 () Bool)

(assert (=> d!696618 (= c!378429 e!1518330)))

(declare-fun res!1010896 () Bool)

(assert (=> d!696618 (=> (not res!1010896) (not e!1518330))))

(assert (=> d!696618 (= res!1010896 ((_ is Cons!28099) lt!868022))))

(assert (=> d!696618 (forall!5613 lt!868022 lambda!88650)))

(assert (=> d!696618 (= (generalisedConcat!80 lt!868022) lt!868075)))

(declare-fun b!2380405 () Bool)

(assert (=> b!2380405 (= e!1518334 (Concat!11615 (h!33500 lt!868022) (generalisedConcat!80 (t!208174 lt!868022))))))

(declare-fun b!2380406 () Bool)

(assert (=> b!2380406 (= e!1518330 (isEmpty!16045 (t!208174 lt!868022)))))

(declare-fun b!2380407 () Bool)

(assert (=> b!2380407 (= e!1518333 e!1518334)))

(declare-fun c!378430 () Bool)

(assert (=> b!2380407 (= c!378430 ((_ is Cons!28099) lt!868022))))

(declare-fun b!2380408 () Bool)

(assert (=> b!2380408 (= e!1518329 e!1518332)))

(declare-fun c!378431 () Bool)

(assert (=> b!2380408 (= c!378431 (isEmpty!16045 (tail!3460 lt!868022)))))

(declare-fun b!2380409 () Bool)

(assert (=> b!2380409 (= e!1518332 (= lt!868075 (head!5190 lt!868022)))))

(assert (= (and d!696618 res!1010896) b!2380406))

(assert (= (and d!696618 c!378429) b!2380404))

(assert (= (and d!696618 (not c!378429)) b!2380407))

(assert (= (and b!2380407 c!378430) b!2380405))

(assert (= (and b!2380407 (not c!378430)) b!2380402))

(assert (= (and d!696618 res!1010897) b!2380400))

(assert (= (and b!2380400 c!378432) b!2380401))

(assert (= (and b!2380400 (not c!378432)) b!2380408))

(assert (= (and b!2380408 c!378431) b!2380409))

(assert (= (and b!2380408 (not c!378431)) b!2380403))

(assert (=> b!2380400 m!2784179))

(declare-fun m!2784387 () Bool)

(assert (=> d!696618 m!2784387))

(declare-fun m!2784389 () Bool)

(assert (=> d!696618 m!2784389))

(declare-fun m!2784391 () Bool)

(assert (=> b!2380409 m!2784391))

(declare-fun m!2784393 () Bool)

(assert (=> b!2380401 m!2784393))

(declare-fun m!2784395 () Bool)

(assert (=> b!2380408 m!2784395))

(assert (=> b!2380408 m!2784395))

(declare-fun m!2784397 () Bool)

(assert (=> b!2380408 m!2784397))

(declare-fun m!2784399 () Bool)

(assert (=> b!2380403 m!2784399))

(declare-fun m!2784401 () Bool)

(assert (=> b!2380406 m!2784401))

(declare-fun m!2784403 () Bool)

(assert (=> b!2380405 m!2784403))

(assert (=> b!2380081 d!696618))

(declare-fun b!2380459 () Bool)

(declare-fun e!1518366 () Bool)

(declare-fun e!1518363 () Bool)

(assert (=> b!2380459 (= e!1518366 e!1518363)))

(declare-fun res!1010936 () Bool)

(assert (=> b!2380459 (=> res!1010936 e!1518363)))

(declare-fun call!144594 () Bool)

(assert (=> b!2380459 (= res!1010936 call!144594)))

(declare-fun b!2380460 () Bool)

(declare-fun res!1010932 () Bool)

(declare-fun e!1518365 () Bool)

(assert (=> b!2380460 (=> (not res!1010932) (not e!1518365))))

(declare-fun isEmpty!16049 (List!28196) Bool)

(declare-fun tail!3462 (List!28196) List!28196)

(assert (=> b!2380460 (= res!1010932 (isEmpty!16049 (tail!3462 s!9460)))))

(declare-fun b!2380461 () Bool)

(declare-fun e!1518360 () Bool)

(declare-fun derivativeStep!1687 (Regex!6979 C!14116) Regex!6979)

(declare-fun head!5192 (List!28196) C!14116)

(assert (=> b!2380461 (= e!1518360 (matchR!3096 (derivativeStep!1687 lt!868015 (head!5192 s!9460)) (tail!3462 s!9460)))))

(declare-fun b!2380462 () Bool)

(declare-fun res!1010938 () Bool)

(declare-fun e!1518361 () Bool)

(assert (=> b!2380462 (=> res!1010938 e!1518361)))

(assert (=> b!2380462 (= res!1010938 e!1518365)))

(declare-fun res!1010937 () Bool)

(assert (=> b!2380462 (=> (not res!1010937) (not e!1518365))))

(declare-fun lt!868086 () Bool)

(assert (=> b!2380462 (= res!1010937 lt!868086)))

(declare-fun b!2380463 () Bool)

(declare-fun res!1010931 () Bool)

(assert (=> b!2380463 (=> res!1010931 e!1518363)))

(assert (=> b!2380463 (= res!1010931 (not (isEmpty!16049 (tail!3462 s!9460))))))

(declare-fun b!2380464 () Bool)

(declare-fun res!1010933 () Bool)

(assert (=> b!2380464 (=> (not res!1010933) (not e!1518365))))

(assert (=> b!2380464 (= res!1010933 (not call!144594))))

(declare-fun d!696628 () Bool)

(declare-fun e!1518362 () Bool)

(assert (=> d!696628 e!1518362))

(declare-fun c!378443 () Bool)

(assert (=> d!696628 (= c!378443 ((_ is EmptyExpr!6979) lt!868015))))

(assert (=> d!696628 (= lt!868086 e!1518360)))

(declare-fun c!378442 () Bool)

(assert (=> d!696628 (= c!378442 (isEmpty!16049 s!9460))))

(assert (=> d!696628 (validRegex!2704 lt!868015)))

(assert (=> d!696628 (= (matchR!3096 lt!868015 s!9460) lt!868086)))

(declare-fun b!2380465 () Bool)

(declare-fun res!1010935 () Bool)

(assert (=> b!2380465 (=> res!1010935 e!1518361)))

(assert (=> b!2380465 (= res!1010935 (not ((_ is ElementMatch!6979) lt!868015)))))

(declare-fun e!1518364 () Bool)

(assert (=> b!2380465 (= e!1518364 e!1518361)))

(declare-fun b!2380466 () Bool)

(assert (=> b!2380466 (= e!1518361 e!1518366)))

(declare-fun res!1010934 () Bool)

(assert (=> b!2380466 (=> (not res!1010934) (not e!1518366))))

(assert (=> b!2380466 (= res!1010934 (not lt!868086))))

(declare-fun b!2380467 () Bool)

(assert (=> b!2380467 (= e!1518362 (= lt!868086 call!144594))))

(declare-fun bm!144589 () Bool)

(assert (=> bm!144589 (= call!144594 (isEmpty!16049 s!9460))))

(declare-fun b!2380468 () Bool)

(assert (=> b!2380468 (= e!1518364 (not lt!868086))))

(declare-fun b!2380469 () Bool)

(declare-fun nullable!2029 (Regex!6979) Bool)

(assert (=> b!2380469 (= e!1518360 (nullable!2029 lt!868015))))

(declare-fun b!2380470 () Bool)

(assert (=> b!2380470 (= e!1518365 (= (head!5192 s!9460) (c!378349 lt!868015)))))

(declare-fun b!2380471 () Bool)

(assert (=> b!2380471 (= e!1518362 e!1518364)))

(declare-fun c!378441 () Bool)

(assert (=> b!2380471 (= c!378441 ((_ is EmptyLang!6979) lt!868015))))

(declare-fun b!2380472 () Bool)

(assert (=> b!2380472 (= e!1518363 (not (= (head!5192 s!9460) (c!378349 lt!868015))))))

(assert (= (and d!696628 c!378442) b!2380469))

(assert (= (and d!696628 (not c!378442)) b!2380461))

(assert (= (and d!696628 c!378443) b!2380467))

(assert (= (and d!696628 (not c!378443)) b!2380471))

(assert (= (and b!2380471 c!378441) b!2380468))

(assert (= (and b!2380471 (not c!378441)) b!2380465))

(assert (= (and b!2380465 (not res!1010935)) b!2380462))

(assert (= (and b!2380462 res!1010937) b!2380464))

(assert (= (and b!2380464 res!1010933) b!2380460))

(assert (= (and b!2380460 res!1010932) b!2380470))

(assert (= (and b!2380462 (not res!1010938)) b!2380466))

(assert (= (and b!2380466 res!1010934) b!2380459))

(assert (= (and b!2380459 (not res!1010936)) b!2380463))

(assert (= (and b!2380463 (not res!1010931)) b!2380472))

(assert (= (or b!2380467 b!2380459 b!2380464) bm!144589))

(declare-fun m!2784431 () Bool)

(assert (=> b!2380461 m!2784431))

(assert (=> b!2380461 m!2784431))

(declare-fun m!2784433 () Bool)

(assert (=> b!2380461 m!2784433))

(declare-fun m!2784435 () Bool)

(assert (=> b!2380461 m!2784435))

(assert (=> b!2380461 m!2784433))

(assert (=> b!2380461 m!2784435))

(declare-fun m!2784437 () Bool)

(assert (=> b!2380461 m!2784437))

(assert (=> b!2380460 m!2784435))

(assert (=> b!2380460 m!2784435))

(declare-fun m!2784439 () Bool)

(assert (=> b!2380460 m!2784439))

(declare-fun m!2784441 () Bool)

(assert (=> d!696628 m!2784441))

(assert (=> d!696628 m!2784143))

(assert (=> b!2380472 m!2784431))

(assert (=> bm!144589 m!2784441))

(assert (=> b!2380470 m!2784431))

(declare-fun m!2784443 () Bool)

(assert (=> b!2380469 m!2784443))

(assert (=> b!2380463 m!2784435))

(assert (=> b!2380463 m!2784435))

(assert (=> b!2380463 m!2784439))

(assert (=> b!2380087 d!696628))

(declare-fun d!696636 () Bool)

(assert (=> d!696636 (= (head!5190 l!9164) (h!33500 l!9164))))

(assert (=> b!2380087 d!696636))

(declare-fun d!696640 () Bool)

(assert (=> d!696640 (= (get!8567 lt!868026) (v!30929 lt!868026))))

(assert (=> b!2380077 d!696640))

(declare-fun d!696642 () Bool)

(assert (=> d!696642 (matchR!3096 (Concat!11615 lt!868015 EmptyExpr!6979) (++!6934 (_1!16452 lt!868019) (_2!16452 lt!868019)))))

(declare-fun lt!868090 () Unit!41011)

(declare-fun choose!13915 (Regex!6979 Regex!6979 List!28196 List!28196 List!28196) Unit!41011)

(assert (=> d!696642 (= lt!868090 (choose!13915 lt!868015 EmptyExpr!6979 (_1!16452 lt!868019) (_2!16452 lt!868019) s!9460))))

(assert (=> d!696642 (validRegex!2704 lt!868015)))

(assert (=> d!696642 (= (lemmaFindSeparationIsDefinedThenConcatMatches!10 lt!868015 EmptyExpr!6979 (_1!16452 lt!868019) (_2!16452 lt!868019) s!9460) lt!868090)))

(declare-fun bs!461850 () Bool)

(assert (= bs!461850 d!696642))

(assert (=> bs!461850 m!2784155))

(assert (=> bs!461850 m!2784155))

(assert (=> bs!461850 m!2784157))

(declare-fun m!2784453 () Bool)

(assert (=> bs!461850 m!2784453))

(assert (=> bs!461850 m!2784143))

(assert (=> b!2380077 d!696642))

(declare-fun b!2380517 () Bool)

(declare-fun e!1518387 () Bool)

(declare-fun e!1518384 () Bool)

(assert (=> b!2380517 (= e!1518387 e!1518384)))

(declare-fun res!1010944 () Bool)

(assert (=> b!2380517 (=> res!1010944 e!1518384)))

(declare-fun call!144595 () Bool)

(assert (=> b!2380517 (= res!1010944 call!144595)))

(declare-fun b!2380518 () Bool)

(declare-fun res!1010940 () Bool)

(declare-fun e!1518386 () Bool)

(assert (=> b!2380518 (=> (not res!1010940) (not e!1518386))))

(assert (=> b!2380518 (= res!1010940 (isEmpty!16049 (tail!3462 (++!6934 (_1!16452 lt!868019) (_2!16452 lt!868019)))))))

(declare-fun b!2380519 () Bool)

(declare-fun e!1518381 () Bool)

(assert (=> b!2380519 (= e!1518381 (matchR!3096 (derivativeStep!1687 (Concat!11615 lt!868015 EmptyExpr!6979) (head!5192 (++!6934 (_1!16452 lt!868019) (_2!16452 lt!868019)))) (tail!3462 (++!6934 (_1!16452 lt!868019) (_2!16452 lt!868019)))))))

(declare-fun b!2380520 () Bool)

(declare-fun res!1010946 () Bool)

(declare-fun e!1518382 () Bool)

(assert (=> b!2380520 (=> res!1010946 e!1518382)))

(assert (=> b!2380520 (= res!1010946 e!1518386)))

(declare-fun res!1010945 () Bool)

(assert (=> b!2380520 (=> (not res!1010945) (not e!1518386))))

(declare-fun lt!868091 () Bool)

(assert (=> b!2380520 (= res!1010945 lt!868091)))

(declare-fun b!2380521 () Bool)

(declare-fun res!1010939 () Bool)

(assert (=> b!2380521 (=> res!1010939 e!1518384)))

(assert (=> b!2380521 (= res!1010939 (not (isEmpty!16049 (tail!3462 (++!6934 (_1!16452 lt!868019) (_2!16452 lt!868019))))))))

(declare-fun b!2380522 () Bool)

(declare-fun res!1010941 () Bool)

(assert (=> b!2380522 (=> (not res!1010941) (not e!1518386))))

(assert (=> b!2380522 (= res!1010941 (not call!144595))))

(declare-fun d!696646 () Bool)

(declare-fun e!1518383 () Bool)

(assert (=> d!696646 e!1518383))

(declare-fun c!378446 () Bool)

(assert (=> d!696646 (= c!378446 ((_ is EmptyExpr!6979) (Concat!11615 lt!868015 EmptyExpr!6979)))))

(assert (=> d!696646 (= lt!868091 e!1518381)))

(declare-fun c!378445 () Bool)

(assert (=> d!696646 (= c!378445 (isEmpty!16049 (++!6934 (_1!16452 lt!868019) (_2!16452 lt!868019))))))

(assert (=> d!696646 (validRegex!2704 (Concat!11615 lt!868015 EmptyExpr!6979))))

(assert (=> d!696646 (= (matchR!3096 (Concat!11615 lt!868015 EmptyExpr!6979) (++!6934 (_1!16452 lt!868019) (_2!16452 lt!868019))) lt!868091)))

(declare-fun b!2380523 () Bool)

(declare-fun res!1010943 () Bool)

(assert (=> b!2380523 (=> res!1010943 e!1518382)))

(assert (=> b!2380523 (= res!1010943 (not ((_ is ElementMatch!6979) (Concat!11615 lt!868015 EmptyExpr!6979))))))

(declare-fun e!1518385 () Bool)

(assert (=> b!2380523 (= e!1518385 e!1518382)))

(declare-fun b!2380524 () Bool)

(assert (=> b!2380524 (= e!1518382 e!1518387)))

(declare-fun res!1010942 () Bool)

(assert (=> b!2380524 (=> (not res!1010942) (not e!1518387))))

(assert (=> b!2380524 (= res!1010942 (not lt!868091))))

(declare-fun b!2380525 () Bool)

(assert (=> b!2380525 (= e!1518383 (= lt!868091 call!144595))))

(declare-fun bm!144590 () Bool)

(assert (=> bm!144590 (= call!144595 (isEmpty!16049 (++!6934 (_1!16452 lt!868019) (_2!16452 lt!868019))))))

(declare-fun b!2380526 () Bool)

(assert (=> b!2380526 (= e!1518385 (not lt!868091))))

(declare-fun b!2380527 () Bool)

(assert (=> b!2380527 (= e!1518381 (nullable!2029 (Concat!11615 lt!868015 EmptyExpr!6979)))))

(declare-fun b!2380528 () Bool)

(assert (=> b!2380528 (= e!1518386 (= (head!5192 (++!6934 (_1!16452 lt!868019) (_2!16452 lt!868019))) (c!378349 (Concat!11615 lt!868015 EmptyExpr!6979))))))

(declare-fun b!2380529 () Bool)

(assert (=> b!2380529 (= e!1518383 e!1518385)))

(declare-fun c!378444 () Bool)

(assert (=> b!2380529 (= c!378444 ((_ is EmptyLang!6979) (Concat!11615 lt!868015 EmptyExpr!6979)))))

(declare-fun b!2380530 () Bool)

(assert (=> b!2380530 (= e!1518384 (not (= (head!5192 (++!6934 (_1!16452 lt!868019) (_2!16452 lt!868019))) (c!378349 (Concat!11615 lt!868015 EmptyExpr!6979)))))))

(assert (= (and d!696646 c!378445) b!2380527))

(assert (= (and d!696646 (not c!378445)) b!2380519))

(assert (= (and d!696646 c!378446) b!2380525))

(assert (= (and d!696646 (not c!378446)) b!2380529))

(assert (= (and b!2380529 c!378444) b!2380526))

(assert (= (and b!2380529 (not c!378444)) b!2380523))

(assert (= (and b!2380523 (not res!1010943)) b!2380520))

(assert (= (and b!2380520 res!1010945) b!2380522))

(assert (= (and b!2380522 res!1010941) b!2380518))

(assert (= (and b!2380518 res!1010940) b!2380528))

(assert (= (and b!2380520 (not res!1010946)) b!2380524))

(assert (= (and b!2380524 res!1010942) b!2380517))

(assert (= (and b!2380517 (not res!1010944)) b!2380521))

(assert (= (and b!2380521 (not res!1010939)) b!2380530))

(assert (= (or b!2380525 b!2380517 b!2380522) bm!144590))

(assert (=> b!2380519 m!2784155))

(declare-fun m!2784455 () Bool)

(assert (=> b!2380519 m!2784455))

(assert (=> b!2380519 m!2784455))

(declare-fun m!2784457 () Bool)

(assert (=> b!2380519 m!2784457))

(assert (=> b!2380519 m!2784155))

(declare-fun m!2784459 () Bool)

(assert (=> b!2380519 m!2784459))

(assert (=> b!2380519 m!2784457))

(assert (=> b!2380519 m!2784459))

(declare-fun m!2784461 () Bool)

(assert (=> b!2380519 m!2784461))

(assert (=> b!2380518 m!2784155))

(assert (=> b!2380518 m!2784459))

(assert (=> b!2380518 m!2784459))

(declare-fun m!2784463 () Bool)

(assert (=> b!2380518 m!2784463))

(assert (=> d!696646 m!2784155))

(declare-fun m!2784465 () Bool)

(assert (=> d!696646 m!2784465))

(declare-fun m!2784467 () Bool)

(assert (=> d!696646 m!2784467))

(assert (=> b!2380530 m!2784155))

(assert (=> b!2380530 m!2784455))

(assert (=> bm!144590 m!2784155))

(assert (=> bm!144590 m!2784465))

(assert (=> b!2380528 m!2784155))

(assert (=> b!2380528 m!2784455))

(declare-fun m!2784469 () Bool)

(assert (=> b!2380527 m!2784469))

(assert (=> b!2380521 m!2784155))

(assert (=> b!2380521 m!2784459))

(assert (=> b!2380521 m!2784459))

(assert (=> b!2380521 m!2784463))

(assert (=> b!2380077 d!696646))

(declare-fun d!696648 () Bool)

(declare-fun e!1518393 () Bool)

(assert (=> d!696648 e!1518393))

(declare-fun res!1010951 () Bool)

(assert (=> d!696648 (=> (not res!1010951) (not e!1518393))))

(declare-fun lt!868094 () List!28196)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3828 (List!28196) (InoxSet C!14116))

(assert (=> d!696648 (= res!1010951 (= (content!3828 lt!868094) ((_ map or) (content!3828 (_1!16452 lt!868019)) (content!3828 (_2!16452 lt!868019)))))))

(declare-fun e!1518392 () List!28196)

(assert (=> d!696648 (= lt!868094 e!1518392)))

(declare-fun c!378449 () Bool)

(assert (=> d!696648 (= c!378449 ((_ is Nil!28098) (_1!16452 lt!868019)))))

(assert (=> d!696648 (= (++!6934 (_1!16452 lt!868019) (_2!16452 lt!868019)) lt!868094)))

(declare-fun b!2380539 () Bool)

(assert (=> b!2380539 (= e!1518392 (_2!16452 lt!868019))))

(declare-fun b!2380540 () Bool)

(assert (=> b!2380540 (= e!1518392 (Cons!28098 (h!33499 (_1!16452 lt!868019)) (++!6934 (t!208173 (_1!16452 lt!868019)) (_2!16452 lt!868019))))))

(declare-fun b!2380541 () Bool)

(declare-fun res!1010952 () Bool)

(assert (=> b!2380541 (=> (not res!1010952) (not e!1518393))))

(declare-fun size!22166 (List!28196) Int)

(assert (=> b!2380541 (= res!1010952 (= (size!22166 lt!868094) (+ (size!22166 (_1!16452 lt!868019)) (size!22166 (_2!16452 lt!868019)))))))

(declare-fun b!2380542 () Bool)

(assert (=> b!2380542 (= e!1518393 (or (not (= (_2!16452 lt!868019) Nil!28098)) (= lt!868094 (_1!16452 lt!868019))))))

(assert (= (and d!696648 c!378449) b!2380539))

(assert (= (and d!696648 (not c!378449)) b!2380540))

(assert (= (and d!696648 res!1010951) b!2380541))

(assert (= (and b!2380541 res!1010952) b!2380542))

(declare-fun m!2784471 () Bool)

(assert (=> d!696648 m!2784471))

(declare-fun m!2784473 () Bool)

(assert (=> d!696648 m!2784473))

(declare-fun m!2784475 () Bool)

(assert (=> d!696648 m!2784475))

(declare-fun m!2784477 () Bool)

(assert (=> b!2380540 m!2784477))

(declare-fun m!2784479 () Bool)

(assert (=> b!2380541 m!2784479))

(declare-fun m!2784481 () Bool)

(assert (=> b!2380541 m!2784481))

(declare-fun m!2784483 () Bool)

(assert (=> b!2380541 m!2784483))

(assert (=> b!2380077 d!696648))

(declare-fun b!2380561 () Bool)

(declare-fun res!1010966 () Bool)

(declare-fun e!1518410 () Bool)

(assert (=> b!2380561 (=> (not res!1010966) (not e!1518410))))

(declare-fun call!144602 () Bool)

(assert (=> b!2380561 (= res!1010966 call!144602)))

(declare-fun e!1518413 () Bool)

(assert (=> b!2380561 (= e!1518413 e!1518410)))

(declare-fun b!2380562 () Bool)

(declare-fun call!144604 () Bool)

(assert (=> b!2380562 (= e!1518410 call!144604)))

(declare-fun b!2380563 () Bool)

(declare-fun e!1518409 () Bool)

(assert (=> b!2380563 (= e!1518409 e!1518413)))

(declare-fun c!378454 () Bool)

(assert (=> b!2380563 (= c!378454 ((_ is Union!6979) lt!868015))))

(declare-fun b!2380565 () Bool)

(declare-fun e!1518408 () Bool)

(declare-fun e!1518411 () Bool)

(assert (=> b!2380565 (= e!1518408 e!1518411)))

(declare-fun res!1010967 () Bool)

(assert (=> b!2380565 (=> (not res!1010967) (not e!1518411))))

(assert (=> b!2380565 (= res!1010967 call!144604)))

(declare-fun b!2380566 () Bool)

(declare-fun e!1518414 () Bool)

(declare-fun call!144603 () Bool)

(assert (=> b!2380566 (= e!1518414 call!144603)))

(declare-fun b!2380567 () Bool)

(assert (=> b!2380567 (= e!1518409 e!1518414)))

(declare-fun res!1010965 () Bool)

(assert (=> b!2380567 (= res!1010965 (not (nullable!2029 (reg!7308 lt!868015))))))

(assert (=> b!2380567 (=> (not res!1010965) (not e!1518414))))

(declare-fun bm!144597 () Bool)

(assert (=> bm!144597 (= call!144604 (validRegex!2704 (ite c!378454 (regTwo!14471 lt!868015) (regOne!14470 lt!868015))))))

(declare-fun b!2380568 () Bool)

(assert (=> b!2380568 (= e!1518411 call!144602)))

(declare-fun bm!144598 () Bool)

(assert (=> bm!144598 (= call!144602 call!144603)))

(declare-fun bm!144599 () Bool)

(declare-fun c!378455 () Bool)

(assert (=> bm!144599 (= call!144603 (validRegex!2704 (ite c!378455 (reg!7308 lt!868015) (ite c!378454 (regOne!14471 lt!868015) (regTwo!14470 lt!868015)))))))

(declare-fun b!2380569 () Bool)

(declare-fun e!1518412 () Bool)

(assert (=> b!2380569 (= e!1518412 e!1518409)))

(assert (=> b!2380569 (= c!378455 ((_ is Star!6979) lt!868015))))

(declare-fun b!2380564 () Bool)

(declare-fun res!1010964 () Bool)

(assert (=> b!2380564 (=> res!1010964 e!1518408)))

(assert (=> b!2380564 (= res!1010964 (not ((_ is Concat!11615) lt!868015)))))

(assert (=> b!2380564 (= e!1518413 e!1518408)))

(declare-fun d!696650 () Bool)

(declare-fun res!1010963 () Bool)

(assert (=> d!696650 (=> res!1010963 e!1518412)))

(assert (=> d!696650 (= res!1010963 ((_ is ElementMatch!6979) lt!868015))))

(assert (=> d!696650 (= (validRegex!2704 lt!868015) e!1518412)))

(assert (= (and d!696650 (not res!1010963)) b!2380569))

(assert (= (and b!2380569 c!378455) b!2380567))

(assert (= (and b!2380569 (not c!378455)) b!2380563))

(assert (= (and b!2380567 res!1010965) b!2380566))

(assert (= (and b!2380563 c!378454) b!2380561))

(assert (= (and b!2380563 (not c!378454)) b!2380564))

(assert (= (and b!2380561 res!1010966) b!2380562))

(assert (= (and b!2380564 (not res!1010964)) b!2380565))

(assert (= (and b!2380565 res!1010967) b!2380568))

(assert (= (or b!2380561 b!2380568) bm!144598))

(assert (= (or b!2380562 b!2380565) bm!144597))

(assert (= (or b!2380566 bm!144598) bm!144599))

(declare-fun m!2784485 () Bool)

(assert (=> b!2380567 m!2784485))

(declare-fun m!2784487 () Bool)

(assert (=> bm!144597 m!2784487))

(declare-fun m!2784489 () Bool)

(assert (=> bm!144599 m!2784489))

(assert (=> b!2380078 d!696650))

(declare-fun d!696652 () Bool)

(assert (=> d!696652 (= (isDefined!4350 lt!868026) (not (isEmpty!16048 lt!868026)))))

(declare-fun bs!461851 () Bool)

(assert (= bs!461851 d!696652))

(declare-fun m!2784491 () Bool)

(assert (=> bs!461851 m!2784491))

(assert (=> b!2380078 d!696652))

(declare-fun b!2380570 () Bool)

(declare-fun res!1010969 () Bool)

(declare-fun e!1518415 () Bool)

(assert (=> b!2380570 (=> (not res!1010969) (not e!1518415))))

(declare-fun lt!868097 () Option!5522)

(assert (=> b!2380570 (= res!1010969 (matchR!3096 lt!868015 (_1!16452 (get!8567 lt!868097))))))

(declare-fun b!2380571 () Bool)

(declare-fun e!1518419 () Option!5522)

(assert (=> b!2380571 (= e!1518419 (Some!5521 (tuple2!27823 Nil!28098 s!9460)))))

(declare-fun b!2380572 () Bool)

(declare-fun e!1518416 () Option!5522)

(assert (=> b!2380572 (= e!1518416 None!5521)))

(declare-fun b!2380573 () Bool)

(declare-fun e!1518418 () Bool)

(assert (=> b!2380573 (= e!1518418 (not (isDefined!4350 lt!868097)))))

(declare-fun b!2380574 () Bool)

(assert (=> b!2380574 (= e!1518415 (= (++!6934 (_1!16452 (get!8567 lt!868097)) (_2!16452 (get!8567 lt!868097))) s!9460))))

(declare-fun b!2380575 () Bool)

(declare-fun res!1010972 () Bool)

(assert (=> b!2380575 (=> (not res!1010972) (not e!1518415))))

(assert (=> b!2380575 (= res!1010972 (matchR!3096 EmptyExpr!6979 (_2!16452 (get!8567 lt!868097))))))

(declare-fun b!2380576 () Bool)

(assert (=> b!2380576 (= e!1518419 e!1518416)))

(declare-fun c!378457 () Bool)

(assert (=> b!2380576 (= c!378457 ((_ is Nil!28098) s!9460))))

(declare-fun b!2380577 () Bool)

(declare-fun lt!868095 () Unit!41011)

(declare-fun lt!868096 () Unit!41011)

(assert (=> b!2380577 (= lt!868095 lt!868096)))

(assert (=> b!2380577 (= (++!6934 (++!6934 Nil!28098 (Cons!28098 (h!33499 s!9460) Nil!28098)) (t!208173 s!9460)) s!9460)))

(assert (=> b!2380577 (= lt!868096 (lemmaMoveElementToOtherListKeepsConcatEq!576 Nil!28098 (h!33499 s!9460) (t!208173 s!9460) s!9460))))

(assert (=> b!2380577 (= e!1518416 (findConcatSeparation!630 lt!868015 EmptyExpr!6979 (++!6934 Nil!28098 (Cons!28098 (h!33499 s!9460) Nil!28098)) (t!208173 s!9460) s!9460))))

(declare-fun d!696654 () Bool)

(assert (=> d!696654 e!1518418))

(declare-fun res!1010971 () Bool)

(assert (=> d!696654 (=> res!1010971 e!1518418)))

(assert (=> d!696654 (= res!1010971 e!1518415)))

(declare-fun res!1010968 () Bool)

(assert (=> d!696654 (=> (not res!1010968) (not e!1518415))))

(assert (=> d!696654 (= res!1010968 (isDefined!4350 lt!868097))))

(assert (=> d!696654 (= lt!868097 e!1518419)))

(declare-fun c!378456 () Bool)

(declare-fun e!1518417 () Bool)

(assert (=> d!696654 (= c!378456 e!1518417)))

(declare-fun res!1010970 () Bool)

(assert (=> d!696654 (=> (not res!1010970) (not e!1518417))))

(assert (=> d!696654 (= res!1010970 (matchR!3096 lt!868015 Nil!28098))))

(assert (=> d!696654 (validRegex!2704 lt!868015)))

(assert (=> d!696654 (= (findConcatSeparation!630 lt!868015 EmptyExpr!6979 Nil!28098 s!9460 s!9460) lt!868097)))

(declare-fun b!2380578 () Bool)

(assert (=> b!2380578 (= e!1518417 (matchR!3096 EmptyExpr!6979 s!9460))))

(assert (= (and d!696654 res!1010970) b!2380578))

(assert (= (and d!696654 c!378456) b!2380571))

(assert (= (and d!696654 (not c!378456)) b!2380576))

(assert (= (and b!2380576 c!378457) b!2380572))

(assert (= (and b!2380576 (not c!378457)) b!2380577))

(assert (= (and d!696654 res!1010968) b!2380570))

(assert (= (and b!2380570 res!1010969) b!2380575))

(assert (= (and b!2380575 res!1010972) b!2380574))

(assert (= (and d!696654 (not res!1010971)) b!2380573))

(assert (=> b!2380577 m!2784265))

(assert (=> b!2380577 m!2784265))

(assert (=> b!2380577 m!2784267))

(assert (=> b!2380577 m!2784269))

(assert (=> b!2380577 m!2784265))

(declare-fun m!2784493 () Bool)

(assert (=> b!2380577 m!2784493))

(declare-fun m!2784495 () Bool)

(assert (=> b!2380575 m!2784495))

(declare-fun m!2784497 () Bool)

(assert (=> b!2380575 m!2784497))

(declare-fun m!2784499 () Bool)

(assert (=> d!696654 m!2784499))

(declare-fun m!2784501 () Bool)

(assert (=> d!696654 m!2784501))

(assert (=> d!696654 m!2784143))

(declare-fun m!2784503 () Bool)

(assert (=> b!2380578 m!2784503))

(assert (=> b!2380574 m!2784495))

(declare-fun m!2784505 () Bool)

(assert (=> b!2380574 m!2784505))

(assert (=> b!2380573 m!2784499))

(assert (=> b!2380570 m!2784495))

(declare-fun m!2784507 () Bool)

(assert (=> b!2380570 m!2784507))

(assert (=> b!2380078 d!696654))

(declare-fun d!696656 () Bool)

(declare-fun res!1010977 () Bool)

(declare-fun e!1518424 () Bool)

(assert (=> d!696656 (=> res!1010977 e!1518424)))

(assert (=> d!696656 (= res!1010977 ((_ is Nil!28099) l!9164))))

(assert (=> d!696656 (= (forall!5613 l!9164 lambda!88625) e!1518424)))

(declare-fun b!2380583 () Bool)

(declare-fun e!1518425 () Bool)

(assert (=> b!2380583 (= e!1518424 e!1518425)))

(declare-fun res!1010978 () Bool)

(assert (=> b!2380583 (=> (not res!1010978) (not e!1518425))))

(declare-fun dynLambda!12096 (Int Regex!6979) Bool)

(assert (=> b!2380583 (= res!1010978 (dynLambda!12096 lambda!88625 (h!33500 l!9164)))))

(declare-fun b!2380584 () Bool)

(assert (=> b!2380584 (= e!1518425 (forall!5613 (t!208174 l!9164) lambda!88625))))

(assert (= (and d!696656 (not res!1010977)) b!2380583))

(assert (= (and b!2380583 res!1010978) b!2380584))

(declare-fun b_lambda!74055 () Bool)

(assert (=> (not b_lambda!74055) (not b!2380583)))

(declare-fun m!2784509 () Bool)

(assert (=> b!2380583 m!2784509))

(declare-fun m!2784511 () Bool)

(assert (=> b!2380584 m!2784511))

(assert (=> start!233540 d!696656))

(declare-fun b!2380585 () Bool)

(declare-fun res!1010982 () Bool)

(declare-fun e!1518428 () Bool)

(assert (=> b!2380585 (=> (not res!1010982) (not e!1518428))))

(declare-fun call!144605 () Bool)

(assert (=> b!2380585 (= res!1010982 call!144605)))

(declare-fun e!1518431 () Bool)

(assert (=> b!2380585 (= e!1518431 e!1518428)))

(declare-fun b!2380586 () Bool)

(declare-fun call!144607 () Bool)

(assert (=> b!2380586 (= e!1518428 call!144607)))

(declare-fun b!2380587 () Bool)

(declare-fun e!1518427 () Bool)

(assert (=> b!2380587 (= e!1518427 e!1518431)))

(declare-fun c!378458 () Bool)

(assert (=> b!2380587 (= c!378458 ((_ is Union!6979) lt!868020))))

(declare-fun b!2380589 () Bool)

(declare-fun e!1518426 () Bool)

(declare-fun e!1518429 () Bool)

(assert (=> b!2380589 (= e!1518426 e!1518429)))

(declare-fun res!1010983 () Bool)

(assert (=> b!2380589 (=> (not res!1010983) (not e!1518429))))

(assert (=> b!2380589 (= res!1010983 call!144607)))

(declare-fun b!2380590 () Bool)

(declare-fun e!1518432 () Bool)

(declare-fun call!144606 () Bool)

(assert (=> b!2380590 (= e!1518432 call!144606)))

(declare-fun b!2380591 () Bool)

(assert (=> b!2380591 (= e!1518427 e!1518432)))

(declare-fun res!1010981 () Bool)

(assert (=> b!2380591 (= res!1010981 (not (nullable!2029 (reg!7308 lt!868020))))))

(assert (=> b!2380591 (=> (not res!1010981) (not e!1518432))))

(declare-fun bm!144600 () Bool)

(assert (=> bm!144600 (= call!144607 (validRegex!2704 (ite c!378458 (regTwo!14471 lt!868020) (regOne!14470 lt!868020))))))

(declare-fun b!2380592 () Bool)

(assert (=> b!2380592 (= e!1518429 call!144605)))

(declare-fun bm!144601 () Bool)

(assert (=> bm!144601 (= call!144605 call!144606)))

(declare-fun c!378459 () Bool)

(declare-fun bm!144602 () Bool)

(assert (=> bm!144602 (= call!144606 (validRegex!2704 (ite c!378459 (reg!7308 lt!868020) (ite c!378458 (regOne!14471 lt!868020) (regTwo!14470 lt!868020)))))))

(declare-fun b!2380593 () Bool)

(declare-fun e!1518430 () Bool)

(assert (=> b!2380593 (= e!1518430 e!1518427)))

(assert (=> b!2380593 (= c!378459 ((_ is Star!6979) lt!868020))))

(declare-fun b!2380588 () Bool)

(declare-fun res!1010980 () Bool)

(assert (=> b!2380588 (=> res!1010980 e!1518426)))

(assert (=> b!2380588 (= res!1010980 (not ((_ is Concat!11615) lt!868020)))))

(assert (=> b!2380588 (= e!1518431 e!1518426)))

(declare-fun d!696658 () Bool)

(declare-fun res!1010979 () Bool)

(assert (=> d!696658 (=> res!1010979 e!1518430)))

(assert (=> d!696658 (= res!1010979 ((_ is ElementMatch!6979) lt!868020))))

(assert (=> d!696658 (= (validRegex!2704 lt!868020) e!1518430)))

(assert (= (and d!696658 (not res!1010979)) b!2380593))

(assert (= (and b!2380593 c!378459) b!2380591))

(assert (= (and b!2380593 (not c!378459)) b!2380587))

(assert (= (and b!2380591 res!1010981) b!2380590))

(assert (= (and b!2380587 c!378458) b!2380585))

(assert (= (and b!2380587 (not c!378458)) b!2380588))

(assert (= (and b!2380585 res!1010982) b!2380586))

(assert (= (and b!2380588 (not res!1010980)) b!2380589))

(assert (= (and b!2380589 res!1010983) b!2380592))

(assert (= (or b!2380585 b!2380592) bm!144601))

(assert (= (or b!2380586 b!2380589) bm!144600))

(assert (= (or b!2380590 bm!144601) bm!144602))

(declare-fun m!2784513 () Bool)

(assert (=> b!2380591 m!2784513))

(declare-fun m!2784515 () Bool)

(assert (=> bm!144600 m!2784515))

(declare-fun m!2784517 () Bool)

(assert (=> bm!144602 m!2784517))

(assert (=> b!2380074 d!696658))

(declare-fun bs!461852 () Bool)

(declare-fun b!2380636 () Bool)

(assert (= bs!461852 (and b!2380636 b!2380072)))

(declare-fun lambda!88664 () Int)

(assert (=> bs!461852 (not (= lambda!88664 lambda!88627))))

(assert (=> bs!461852 (not (= lambda!88664 lambda!88626))))

(declare-fun bs!461853 () Bool)

(assert (= bs!461853 (and b!2380636 d!696566)))

(assert (=> bs!461853 (not (= lambda!88664 lambda!88634))))

(declare-fun bs!461854 () Bool)

(assert (= bs!461854 (and b!2380636 d!696570)))

(assert (=> bs!461854 (not (= lambda!88664 lambda!88641))))

(assert (=> bs!461854 (not (= lambda!88664 lambda!88642))))

(assert (=> b!2380636 true))

(assert (=> b!2380636 true))

(declare-fun bs!461855 () Bool)

(declare-fun b!2380627 () Bool)

(assert (= bs!461855 (and b!2380627 b!2380072)))

(declare-fun lambda!88665 () Int)

(assert (=> bs!461855 (= lambda!88665 lambda!88627)))

(assert (=> bs!461855 (not (= lambda!88665 lambda!88626))))

(declare-fun bs!461856 () Bool)

(assert (= bs!461856 (and b!2380627 d!696566)))

(assert (=> bs!461856 (not (= lambda!88665 lambda!88634))))

(declare-fun bs!461857 () Bool)

(assert (= bs!461857 (and b!2380627 d!696570)))

(assert (=> bs!461857 (not (= lambda!88665 lambda!88641))))

(declare-fun bs!461858 () Bool)

(assert (= bs!461858 (and b!2380627 b!2380636)))

(assert (=> bs!461858 (not (= lambda!88665 lambda!88664))))

(assert (=> bs!461857 (= lambda!88665 lambda!88642)))

(assert (=> b!2380627 true))

(assert (=> b!2380627 true))

(declare-fun b!2380626 () Bool)

(declare-fun e!1518454 () Bool)

(assert (=> b!2380626 (= e!1518454 (matchRSpec!828 (regTwo!14471 r!13927) s!9460))))

(declare-fun e!1518455 () Bool)

(declare-fun call!144613 () Bool)

(assert (=> b!2380627 (= e!1518455 call!144613)))

(declare-fun b!2380628 () Bool)

(declare-fun c!378470 () Bool)

(assert (=> b!2380628 (= c!378470 ((_ is Union!6979) r!13927))))

(declare-fun e!1518457 () Bool)

(declare-fun e!1518456 () Bool)

(assert (=> b!2380628 (= e!1518457 e!1518456)))

(declare-fun c!378471 () Bool)

(declare-fun bm!144607 () Bool)

(assert (=> bm!144607 (= call!144613 (Exists!1041 (ite c!378471 lambda!88664 lambda!88665)))))

(declare-fun b!2380630 () Bool)

(declare-fun e!1518453 () Bool)

(declare-fun call!144612 () Bool)

(assert (=> b!2380630 (= e!1518453 call!144612)))

(declare-fun b!2380631 () Bool)

(declare-fun e!1518451 () Bool)

(assert (=> b!2380631 (= e!1518453 e!1518451)))

(declare-fun res!1011000 () Bool)

(assert (=> b!2380631 (= res!1011000 (not ((_ is EmptyLang!6979) r!13927)))))

(assert (=> b!2380631 (=> (not res!1011000) (not e!1518451))))

(declare-fun b!2380632 () Bool)

(assert (=> b!2380632 (= e!1518456 e!1518455)))

(assert (=> b!2380632 (= c!378471 ((_ is Star!6979) r!13927))))

(declare-fun b!2380633 () Bool)

(assert (=> b!2380633 (= e!1518456 e!1518454)))

(declare-fun res!1011002 () Bool)

(assert (=> b!2380633 (= res!1011002 (matchRSpec!828 (regOne!14471 r!13927) s!9460))))

(assert (=> b!2380633 (=> res!1011002 e!1518454)))

(declare-fun b!2380634 () Bool)

(declare-fun c!378469 () Bool)

(assert (=> b!2380634 (= c!378469 ((_ is ElementMatch!6979) r!13927))))

(assert (=> b!2380634 (= e!1518451 e!1518457)))

(declare-fun bm!144608 () Bool)

(assert (=> bm!144608 (= call!144612 (isEmpty!16049 s!9460))))

(declare-fun d!696660 () Bool)

(declare-fun c!378468 () Bool)

(assert (=> d!696660 (= c!378468 ((_ is EmptyExpr!6979) r!13927))))

(assert (=> d!696660 (= (matchRSpec!828 r!13927 s!9460) e!1518453)))

(declare-fun b!2380629 () Bool)

(declare-fun res!1011001 () Bool)

(declare-fun e!1518452 () Bool)

(assert (=> b!2380629 (=> res!1011001 e!1518452)))

(assert (=> b!2380629 (= res!1011001 call!144612)))

(assert (=> b!2380629 (= e!1518455 e!1518452)))

(declare-fun b!2380635 () Bool)

(assert (=> b!2380635 (= e!1518457 (= s!9460 (Cons!28098 (c!378349 r!13927) Nil!28098)))))

(assert (=> b!2380636 (= e!1518452 call!144613)))

(assert (= (and d!696660 c!378468) b!2380630))

(assert (= (and d!696660 (not c!378468)) b!2380631))

(assert (= (and b!2380631 res!1011000) b!2380634))

(assert (= (and b!2380634 c!378469) b!2380635))

(assert (= (and b!2380634 (not c!378469)) b!2380628))

(assert (= (and b!2380628 c!378470) b!2380633))

(assert (= (and b!2380628 (not c!378470)) b!2380632))

(assert (= (and b!2380633 (not res!1011002)) b!2380626))

(assert (= (and b!2380632 c!378471) b!2380629))

(assert (= (and b!2380632 (not c!378471)) b!2380627))

(assert (= (and b!2380629 (not res!1011001)) b!2380636))

(assert (= (or b!2380636 b!2380627) bm!144607))

(assert (= (or b!2380630 b!2380629) bm!144608))

(declare-fun m!2784519 () Bool)

(assert (=> b!2380626 m!2784519))

(declare-fun m!2784521 () Bool)

(assert (=> bm!144607 m!2784521))

(declare-fun m!2784523 () Bool)

(assert (=> b!2380633 m!2784523))

(assert (=> bm!144608 m!2784441))

(assert (=> b!2380085 d!696660))

(declare-fun b!2380637 () Bool)

(declare-fun e!1518464 () Bool)

(declare-fun e!1518461 () Bool)

(assert (=> b!2380637 (= e!1518464 e!1518461)))

(declare-fun res!1011008 () Bool)

(assert (=> b!2380637 (=> res!1011008 e!1518461)))

(declare-fun call!144614 () Bool)

(assert (=> b!2380637 (= res!1011008 call!144614)))

(declare-fun b!2380638 () Bool)

(declare-fun res!1011004 () Bool)

(declare-fun e!1518463 () Bool)

(assert (=> b!2380638 (=> (not res!1011004) (not e!1518463))))

(assert (=> b!2380638 (= res!1011004 (isEmpty!16049 (tail!3462 s!9460)))))

(declare-fun b!2380639 () Bool)

(declare-fun e!1518458 () Bool)

(assert (=> b!2380639 (= e!1518458 (matchR!3096 (derivativeStep!1687 r!13927 (head!5192 s!9460)) (tail!3462 s!9460)))))

(declare-fun b!2380640 () Bool)

(declare-fun res!1011010 () Bool)

(declare-fun e!1518459 () Bool)

(assert (=> b!2380640 (=> res!1011010 e!1518459)))

(assert (=> b!2380640 (= res!1011010 e!1518463)))

(declare-fun res!1011009 () Bool)

(assert (=> b!2380640 (=> (not res!1011009) (not e!1518463))))

(declare-fun lt!868098 () Bool)

(assert (=> b!2380640 (= res!1011009 lt!868098)))

(declare-fun b!2380641 () Bool)

(declare-fun res!1011003 () Bool)

(assert (=> b!2380641 (=> res!1011003 e!1518461)))

(assert (=> b!2380641 (= res!1011003 (not (isEmpty!16049 (tail!3462 s!9460))))))

(declare-fun b!2380642 () Bool)

(declare-fun res!1011005 () Bool)

(assert (=> b!2380642 (=> (not res!1011005) (not e!1518463))))

(assert (=> b!2380642 (= res!1011005 (not call!144614))))

(declare-fun d!696662 () Bool)

(declare-fun e!1518460 () Bool)

(assert (=> d!696662 e!1518460))

(declare-fun c!378474 () Bool)

(assert (=> d!696662 (= c!378474 ((_ is EmptyExpr!6979) r!13927))))

(assert (=> d!696662 (= lt!868098 e!1518458)))

(declare-fun c!378473 () Bool)

(assert (=> d!696662 (= c!378473 (isEmpty!16049 s!9460))))

(assert (=> d!696662 (validRegex!2704 r!13927)))

(assert (=> d!696662 (= (matchR!3096 r!13927 s!9460) lt!868098)))

(declare-fun b!2380643 () Bool)

(declare-fun res!1011007 () Bool)

(assert (=> b!2380643 (=> res!1011007 e!1518459)))

(assert (=> b!2380643 (= res!1011007 (not ((_ is ElementMatch!6979) r!13927)))))

(declare-fun e!1518462 () Bool)

(assert (=> b!2380643 (= e!1518462 e!1518459)))

(declare-fun b!2380644 () Bool)

(assert (=> b!2380644 (= e!1518459 e!1518464)))

(declare-fun res!1011006 () Bool)

(assert (=> b!2380644 (=> (not res!1011006) (not e!1518464))))

(assert (=> b!2380644 (= res!1011006 (not lt!868098))))

(declare-fun b!2380645 () Bool)

(assert (=> b!2380645 (= e!1518460 (= lt!868098 call!144614))))

(declare-fun bm!144609 () Bool)

(assert (=> bm!144609 (= call!144614 (isEmpty!16049 s!9460))))

(declare-fun b!2380646 () Bool)

(assert (=> b!2380646 (= e!1518462 (not lt!868098))))

(declare-fun b!2380647 () Bool)

(assert (=> b!2380647 (= e!1518458 (nullable!2029 r!13927))))

(declare-fun b!2380648 () Bool)

(assert (=> b!2380648 (= e!1518463 (= (head!5192 s!9460) (c!378349 r!13927)))))

(declare-fun b!2380649 () Bool)

(assert (=> b!2380649 (= e!1518460 e!1518462)))

(declare-fun c!378472 () Bool)

(assert (=> b!2380649 (= c!378472 ((_ is EmptyLang!6979) r!13927))))

(declare-fun b!2380650 () Bool)

(assert (=> b!2380650 (= e!1518461 (not (= (head!5192 s!9460) (c!378349 r!13927))))))

(assert (= (and d!696662 c!378473) b!2380647))

(assert (= (and d!696662 (not c!378473)) b!2380639))

(assert (= (and d!696662 c!378474) b!2380645))

(assert (= (and d!696662 (not c!378474)) b!2380649))

(assert (= (and b!2380649 c!378472) b!2380646))

(assert (= (and b!2380649 (not c!378472)) b!2380643))

(assert (= (and b!2380643 (not res!1011007)) b!2380640))

(assert (= (and b!2380640 res!1011009) b!2380642))

(assert (= (and b!2380642 res!1011005) b!2380638))

(assert (= (and b!2380638 res!1011004) b!2380648))

(assert (= (and b!2380640 (not res!1011010)) b!2380644))

(assert (= (and b!2380644 res!1011006) b!2380637))

(assert (= (and b!2380637 (not res!1011008)) b!2380641))

(assert (= (and b!2380641 (not res!1011003)) b!2380650))

(assert (= (or b!2380645 b!2380637 b!2380642) bm!144609))

(assert (=> b!2380639 m!2784431))

(assert (=> b!2380639 m!2784431))

(declare-fun m!2784525 () Bool)

(assert (=> b!2380639 m!2784525))

(assert (=> b!2380639 m!2784435))

(assert (=> b!2380639 m!2784525))

(assert (=> b!2380639 m!2784435))

(declare-fun m!2784527 () Bool)

(assert (=> b!2380639 m!2784527))

(assert (=> b!2380638 m!2784435))

(assert (=> b!2380638 m!2784435))

(assert (=> b!2380638 m!2784439))

(assert (=> d!696662 m!2784441))

(declare-fun m!2784529 () Bool)

(assert (=> d!696662 m!2784529))

(assert (=> b!2380650 m!2784431))

(assert (=> bm!144609 m!2784441))

(assert (=> b!2380648 m!2784431))

(declare-fun m!2784531 () Bool)

(assert (=> b!2380647 m!2784531))

(assert (=> b!2380641 m!2784435))

(assert (=> b!2380641 m!2784435))

(assert (=> b!2380641 m!2784439))

(assert (=> b!2380085 d!696662))

(declare-fun d!696664 () Bool)

(assert (=> d!696664 (= (matchR!3096 r!13927 s!9460) (matchRSpec!828 r!13927 s!9460))))

(declare-fun lt!868101 () Unit!41011)

(declare-fun choose!13919 (Regex!6979 List!28196) Unit!41011)

(assert (=> d!696664 (= lt!868101 (choose!13919 r!13927 s!9460))))

(assert (=> d!696664 (validRegex!2704 r!13927)))

(assert (=> d!696664 (= (mainMatchTheorem!828 r!13927 s!9460) lt!868101)))

(declare-fun bs!461859 () Bool)

(assert (= bs!461859 d!696664))

(assert (=> bs!461859 m!2784135))

(assert (=> bs!461859 m!2784133))

(declare-fun m!2784533 () Bool)

(assert (=> bs!461859 m!2784533))

(assert (=> bs!461859 m!2784529))

(assert (=> b!2380085 d!696664))

(declare-fun d!696666 () Bool)

(declare-fun e!1518466 () Bool)

(assert (=> d!696666 e!1518466))

(declare-fun res!1011011 () Bool)

(assert (=> d!696666 (=> (not res!1011011) (not e!1518466))))

(declare-fun lt!868102 () List!28196)

(assert (=> d!696666 (= res!1011011 (= (content!3828 lt!868102) ((_ map or) (content!3828 Nil!28098) (content!3828 s!9460))))))

(declare-fun e!1518465 () List!28196)

(assert (=> d!696666 (= lt!868102 e!1518465)))

(declare-fun c!378475 () Bool)

(assert (=> d!696666 (= c!378475 ((_ is Nil!28098) Nil!28098))))

(assert (=> d!696666 (= (++!6934 Nil!28098 s!9460) lt!868102)))

(declare-fun b!2380651 () Bool)

(assert (=> b!2380651 (= e!1518465 s!9460)))

(declare-fun b!2380652 () Bool)

(assert (=> b!2380652 (= e!1518465 (Cons!28098 (h!33499 Nil!28098) (++!6934 (t!208173 Nil!28098) s!9460)))))

(declare-fun b!2380653 () Bool)

(declare-fun res!1011012 () Bool)

(assert (=> b!2380653 (=> (not res!1011012) (not e!1518466))))

(assert (=> b!2380653 (= res!1011012 (= (size!22166 lt!868102) (+ (size!22166 Nil!28098) (size!22166 s!9460))))))

(declare-fun b!2380654 () Bool)

(assert (=> b!2380654 (= e!1518466 (or (not (= s!9460 Nil!28098)) (= lt!868102 Nil!28098)))))

(assert (= (and d!696666 c!378475) b!2380651))

(assert (= (and d!696666 (not c!378475)) b!2380652))

(assert (= (and d!696666 res!1011011) b!2380653))

(assert (= (and b!2380653 res!1011012) b!2380654))

(declare-fun m!2784535 () Bool)

(assert (=> d!696666 m!2784535))

(declare-fun m!2784537 () Bool)

(assert (=> d!696666 m!2784537))

(declare-fun m!2784539 () Bool)

(assert (=> d!696666 m!2784539))

(declare-fun m!2784541 () Bool)

(assert (=> b!2380652 m!2784541))

(declare-fun m!2784543 () Bool)

(assert (=> b!2380653 m!2784543))

(declare-fun m!2784545 () Bool)

(assert (=> b!2380653 m!2784545))

(declare-fun m!2784547 () Bool)

(assert (=> b!2380653 m!2784547))

(assert (=> b!2380086 d!696666))

(declare-fun b!2380668 () Bool)

(declare-fun e!1518469 () Bool)

(declare-fun tp!759968 () Bool)

(declare-fun tp!759965 () Bool)

(assert (=> b!2380668 (= e!1518469 (and tp!759968 tp!759965))))

(declare-fun b!2380667 () Bool)

(declare-fun tp!759967 () Bool)

(assert (=> b!2380667 (= e!1518469 tp!759967)))

(assert (=> b!2380083 (= tp!759904 e!1518469)))

(declare-fun b!2380666 () Bool)

(declare-fun tp!759969 () Bool)

(declare-fun tp!759966 () Bool)

(assert (=> b!2380666 (= e!1518469 (and tp!759969 tp!759966))))

(declare-fun b!2380665 () Bool)

(assert (=> b!2380665 (= e!1518469 tp_is_empty!11371)))

(assert (= (and b!2380083 ((_ is ElementMatch!6979) (h!33500 l!9164))) b!2380665))

(assert (= (and b!2380083 ((_ is Concat!11615) (h!33500 l!9164))) b!2380666))

(assert (= (and b!2380083 ((_ is Star!6979) (h!33500 l!9164))) b!2380667))

(assert (= (and b!2380083 ((_ is Union!6979) (h!33500 l!9164))) b!2380668))

(declare-fun b!2380673 () Bool)

(declare-fun e!1518472 () Bool)

(declare-fun tp!759974 () Bool)

(declare-fun tp!759975 () Bool)

(assert (=> b!2380673 (= e!1518472 (and tp!759974 tp!759975))))

(assert (=> b!2380083 (= tp!759903 e!1518472)))

(assert (= (and b!2380083 ((_ is Cons!28099) (t!208174 l!9164))) b!2380673))

(declare-fun b!2380677 () Bool)

(declare-fun e!1518473 () Bool)

(declare-fun tp!759979 () Bool)

(declare-fun tp!759976 () Bool)

(assert (=> b!2380677 (= e!1518473 (and tp!759979 tp!759976))))

(declare-fun b!2380676 () Bool)

(declare-fun tp!759978 () Bool)

(assert (=> b!2380676 (= e!1518473 tp!759978)))

(assert (=> b!2380073 (= tp!759905 e!1518473)))

(declare-fun b!2380675 () Bool)

(declare-fun tp!759980 () Bool)

(declare-fun tp!759977 () Bool)

(assert (=> b!2380675 (= e!1518473 (and tp!759980 tp!759977))))

(declare-fun b!2380674 () Bool)

(assert (=> b!2380674 (= e!1518473 tp_is_empty!11371)))

(assert (= (and b!2380073 ((_ is ElementMatch!6979) (reg!7308 r!13927))) b!2380674))

(assert (= (and b!2380073 ((_ is Concat!11615) (reg!7308 r!13927))) b!2380675))

(assert (= (and b!2380073 ((_ is Star!6979) (reg!7308 r!13927))) b!2380676))

(assert (= (and b!2380073 ((_ is Union!6979) (reg!7308 r!13927))) b!2380677))

(declare-fun b!2380682 () Bool)

(declare-fun e!1518476 () Bool)

(declare-fun tp!759983 () Bool)

(assert (=> b!2380682 (= e!1518476 (and tp_is_empty!11371 tp!759983))))

(assert (=> b!2380084 (= tp!759898 e!1518476)))

(assert (= (and b!2380084 ((_ is Cons!28098) (t!208173 s!9460))) b!2380682))

(declare-fun b!2380686 () Bool)

(declare-fun e!1518477 () Bool)

(declare-fun tp!759987 () Bool)

(declare-fun tp!759984 () Bool)

(assert (=> b!2380686 (= e!1518477 (and tp!759987 tp!759984))))

(declare-fun b!2380685 () Bool)

(declare-fun tp!759986 () Bool)

(assert (=> b!2380685 (= e!1518477 tp!759986)))

(assert (=> b!2380075 (= tp!759899 e!1518477)))

(declare-fun b!2380684 () Bool)

(declare-fun tp!759988 () Bool)

(declare-fun tp!759985 () Bool)

(assert (=> b!2380684 (= e!1518477 (and tp!759988 tp!759985))))

(declare-fun b!2380683 () Bool)

(assert (=> b!2380683 (= e!1518477 tp_is_empty!11371)))

(assert (= (and b!2380075 ((_ is ElementMatch!6979) (regOne!14470 r!13927))) b!2380683))

(assert (= (and b!2380075 ((_ is Concat!11615) (regOne!14470 r!13927))) b!2380684))

(assert (= (and b!2380075 ((_ is Star!6979) (regOne!14470 r!13927))) b!2380685))

(assert (= (and b!2380075 ((_ is Union!6979) (regOne!14470 r!13927))) b!2380686))

(declare-fun b!2380690 () Bool)

(declare-fun e!1518478 () Bool)

(declare-fun tp!759992 () Bool)

(declare-fun tp!759989 () Bool)

(assert (=> b!2380690 (= e!1518478 (and tp!759992 tp!759989))))

(declare-fun b!2380689 () Bool)

(declare-fun tp!759991 () Bool)

(assert (=> b!2380689 (= e!1518478 tp!759991)))

(assert (=> b!2380075 (= tp!759901 e!1518478)))

(declare-fun b!2380688 () Bool)

(declare-fun tp!759993 () Bool)

(declare-fun tp!759990 () Bool)

(assert (=> b!2380688 (= e!1518478 (and tp!759993 tp!759990))))

(declare-fun b!2380687 () Bool)

(assert (=> b!2380687 (= e!1518478 tp_is_empty!11371)))

(assert (= (and b!2380075 ((_ is ElementMatch!6979) (regTwo!14470 r!13927))) b!2380687))

(assert (= (and b!2380075 ((_ is Concat!11615) (regTwo!14470 r!13927))) b!2380688))

(assert (= (and b!2380075 ((_ is Star!6979) (regTwo!14470 r!13927))) b!2380689))

(assert (= (and b!2380075 ((_ is Union!6979) (regTwo!14470 r!13927))) b!2380690))

(declare-fun b!2380694 () Bool)

(declare-fun e!1518479 () Bool)

(declare-fun tp!759997 () Bool)

(declare-fun tp!759994 () Bool)

(assert (=> b!2380694 (= e!1518479 (and tp!759997 tp!759994))))

(declare-fun b!2380693 () Bool)

(declare-fun tp!759996 () Bool)

(assert (=> b!2380693 (= e!1518479 tp!759996)))

(assert (=> b!2380070 (= tp!759902 e!1518479)))

(declare-fun b!2380692 () Bool)

(declare-fun tp!759998 () Bool)

(declare-fun tp!759995 () Bool)

(assert (=> b!2380692 (= e!1518479 (and tp!759998 tp!759995))))

(declare-fun b!2380691 () Bool)

(assert (=> b!2380691 (= e!1518479 tp_is_empty!11371)))

(assert (= (and b!2380070 ((_ is ElementMatch!6979) (regOne!14471 r!13927))) b!2380691))

(assert (= (and b!2380070 ((_ is Concat!11615) (regOne!14471 r!13927))) b!2380692))

(assert (= (and b!2380070 ((_ is Star!6979) (regOne!14471 r!13927))) b!2380693))

(assert (= (and b!2380070 ((_ is Union!6979) (regOne!14471 r!13927))) b!2380694))

(declare-fun b!2380698 () Bool)

(declare-fun e!1518480 () Bool)

(declare-fun tp!760002 () Bool)

(declare-fun tp!759999 () Bool)

(assert (=> b!2380698 (= e!1518480 (and tp!760002 tp!759999))))

(declare-fun b!2380697 () Bool)

(declare-fun tp!760001 () Bool)

(assert (=> b!2380697 (= e!1518480 tp!760001)))

(assert (=> b!2380070 (= tp!759900 e!1518480)))

(declare-fun b!2380696 () Bool)

(declare-fun tp!760003 () Bool)

(declare-fun tp!760000 () Bool)

(assert (=> b!2380696 (= e!1518480 (and tp!760003 tp!760000))))

(declare-fun b!2380695 () Bool)

(assert (=> b!2380695 (= e!1518480 tp_is_empty!11371)))

(assert (= (and b!2380070 ((_ is ElementMatch!6979) (regTwo!14471 r!13927))) b!2380695))

(assert (= (and b!2380070 ((_ is Concat!11615) (regTwo!14471 r!13927))) b!2380696))

(assert (= (and b!2380070 ((_ is Star!6979) (regTwo!14471 r!13927))) b!2380697))

(assert (= (and b!2380070 ((_ is Union!6979) (regTwo!14471 r!13927))) b!2380698))

(declare-fun b_lambda!74057 () Bool)

(assert (= b_lambda!74055 (or start!233540 b_lambda!74057)))

(declare-fun bs!461860 () Bool)

(declare-fun d!696668 () Bool)

(assert (= bs!461860 (and d!696668 start!233540)))

(assert (=> bs!461860 (= (dynLambda!12096 lambda!88625 (h!33500 l!9164)) (validRegex!2704 (h!33500 l!9164)))))

(declare-fun m!2784549 () Bool)

(assert (=> bs!461860 m!2784549))

(assert (=> b!2380583 d!696668))

(check-sat (not d!696566) (not b!2380567) (not b!2380281) (not b!2380282) (not b!2380378) (not b!2380652) (not b!2380375) (not bm!144609) (not b!2380647) (not b!2380676) (not d!696662) (not b!2380403) (not b!2380372) (not b!2380666) (not b!2380541) (not d!696580) (not b!2380641) (not b!2380639) (not d!696648) (not b!2380677) (not b!2380400) (not b!2380682) (not b!2380584) (not b!2380689) (not d!696578) (not b!2380381) (not b_lambda!74057) (not b!2380668) (not b!2380570) (not b!2380697) (not b!2380470) (not d!696618) (not b!2380401) (not b!2380540) (not b!2380692) (not b!2380693) (not b!2380463) (not b!2380698) (not b!2380527) (not b!2380284) (not d!696666) (not d!696582) (not bm!144602) (not b!2380675) (not b!2380648) (not d!696564) (not b!2380277) (not b!2380626) (not d!696642) (not b!2380575) (not b!2380460) (not bm!144600) (not b!2380638) (not bm!144590) (not bm!144607) (not bm!144589) (not b!2380686) (not b!2380377) (not bm!144608) (not b!2380285) (not b!2380690) (not b!2380577) (not d!696570) (not d!696602) (not b!2380373) (not d!696664) (not b!2380408) (not b!2380406) (not b!2380472) (not b!2380380) (not d!696628) (not b!2380667) (not b!2380650) (not b!2380461) (not bm!144597) (not b!2380591) (not d!696652) (not b!2380409) (not d!696654) (not b!2380280) (not b!2380573) (not b!2380405) (not b!2380688) (not d!696646) (not b!2380696) (not b!2380653) (not b!2380578) (not b!2380519) (not b!2380530) (not b!2380521) (not b!2380673) (not b!2380574) (not bm!144599) (not b!2380528) (not b!2380685) tp_is_empty!11371 (not b!2380469) (not b!2380694) (not b!2380633) (not bs!461860) (not b!2380518) (not b!2380684))
(check-sat)
