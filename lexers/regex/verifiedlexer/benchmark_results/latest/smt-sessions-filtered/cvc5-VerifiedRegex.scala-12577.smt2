; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!697410 () Bool)

(assert start!697410)

(declare-fun bs!1889810 () Bool)

(declare-fun b!7155146 () Bool)

(assert (= bs!1889810 (and b!7155146 start!697410)))

(declare-fun lambda!436328 () Int)

(declare-fun lambda!436327 () Int)

(assert (=> bs!1889810 (not (= lambda!436328 lambda!436327))))

(declare-fun b!7155140 () Bool)

(declare-fun e!4298373 () Bool)

(declare-fun tp!1978155 () Bool)

(declare-fun tp!1978154 () Bool)

(assert (=> b!7155140 (= e!4298373 (and tp!1978155 tp!1978154))))

(declare-fun b!7155141 () Bool)

(declare-fun res!2917661 () Bool)

(declare-fun e!4298374 () Bool)

(assert (=> b!7155141 (=> (not res!2917661) (not e!4298374))))

(declare-datatypes ((C!36798 0))(
  ( (C!36799 (val!28347 Int)) )
))
(declare-datatypes ((Regex!18262 0))(
  ( (ElementMatch!18262 (c!1333497 C!36798)) (Concat!27107 (regOne!37036 Regex!18262) (regTwo!37036 Regex!18262)) (EmptyExpr!18262) (Star!18262 (reg!18591 Regex!18262)) (EmptyLang!18262) (Union!18262 (regOne!37037 Regex!18262) (regTwo!37037 Regex!18262)) )
))
(declare-fun r!13749 () Regex!18262)

(declare-datatypes ((List!69566 0))(
  ( (Nil!69442) (Cons!69442 (h!75890 Regex!18262) (t!383583 List!69566)) )
))
(declare-fun l!9132 () List!69566)

(declare-fun generalisedUnion!2725 (List!69566) Regex!18262)

(assert (=> b!7155141 (= res!2917661 (= r!13749 (generalisedUnion!2725 l!9132)))))

(declare-fun b!7155142 () Bool)

(declare-fun e!4298371 () Bool)

(declare-fun tp!1978156 () Bool)

(declare-fun tp!1978157 () Bool)

(assert (=> b!7155142 (= e!4298371 (and tp!1978156 tp!1978157))))

(declare-fun b!7155143 () Bool)

(declare-fun res!2917660 () Bool)

(assert (=> b!7155143 (=> (not res!2917660) (not e!4298374))))

(assert (=> b!7155143 (= res!2917660 (and (is-Cons!69442 l!9132) (not (is-Union!18262 r!13749))))))

(declare-fun b!7155144 () Bool)

(declare-fun res!2917664 () Bool)

(assert (=> b!7155144 (=> (not res!2917664) (not e!4298374))))

(declare-fun e!4298372 () Bool)

(assert (=> b!7155144 (= res!2917664 e!4298372)))

(declare-fun res!2917662 () Bool)

(assert (=> b!7155144 (=> res!2917662 e!4298372)))

(assert (=> b!7155144 (= res!2917662 (not (is-Cons!69442 l!9132)))))

(declare-fun b!7155145 () Bool)

(declare-fun isEmpty!40130 (List!69566) Bool)

(assert (=> b!7155145 (= e!4298372 (not (isEmpty!40130 (t!383583 l!9132))))))

(declare-fun nullable!7739 (Regex!18262) Bool)

(declare-fun exists!4050 (List!69566 Int) Bool)

(assert (=> b!7155146 (= e!4298374 (not (= (nullable!7739 r!13749) (exists!4050 l!9132 lambda!436328))))))

(declare-fun b!7155147 () Bool)

(declare-fun tp!1978160 () Bool)

(assert (=> b!7155147 (= e!4298373 tp!1978160)))

(declare-fun b!7155148 () Bool)

(declare-fun tp_is_empty!46157 () Bool)

(assert (=> b!7155148 (= e!4298373 tp_is_empty!46157)))

(declare-fun b!7155149 () Bool)

(declare-fun tp!1978158 () Bool)

(declare-fun tp!1978159 () Bool)

(assert (=> b!7155149 (= e!4298373 (and tp!1978158 tp!1978159))))

(declare-fun res!2917663 () Bool)

(assert (=> start!697410 (=> (not res!2917663) (not e!4298374))))

(declare-fun forall!17102 (List!69566 Int) Bool)

(assert (=> start!697410 (= res!2917663 (forall!17102 l!9132 lambda!436327))))

(assert (=> start!697410 e!4298374))

(assert (=> start!697410 e!4298371))

(assert (=> start!697410 e!4298373))

(assert (= (and start!697410 res!2917663) b!7155141))

(assert (= (and b!7155141 res!2917661) b!7155144))

(assert (= (and b!7155144 (not res!2917662)) b!7155145))

(assert (= (and b!7155144 res!2917664) b!7155143))

(assert (= (and b!7155143 res!2917660) b!7155146))

(assert (= (and start!697410 (is-Cons!69442 l!9132)) b!7155142))

(assert (= (and start!697410 (is-ElementMatch!18262 r!13749)) b!7155148))

(assert (= (and start!697410 (is-Concat!27107 r!13749)) b!7155140))

(assert (= (and start!697410 (is-Star!18262 r!13749)) b!7155147))

(assert (= (and start!697410 (is-Union!18262 r!13749)) b!7155149))

(declare-fun m!7862476 () Bool)

(assert (=> b!7155141 m!7862476))

(declare-fun m!7862478 () Bool)

(assert (=> b!7155145 m!7862478))

(declare-fun m!7862480 () Bool)

(assert (=> b!7155146 m!7862480))

(declare-fun m!7862482 () Bool)

(assert (=> b!7155146 m!7862482))

(declare-fun m!7862484 () Bool)

(assert (=> start!697410 m!7862484))

(push 1)

(assert (not b!7155149))

(assert (not b!7155145))

(assert (not b!7155141))

(assert (not start!697410))

(assert (not b!7155146))

(assert (not b!7155147))

(assert (not b!7155142))

(assert tp_is_empty!46157)

(assert (not b!7155140))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2229500 () Bool)

(assert (=> d!2229500 (= (isEmpty!40130 (t!383583 l!9132)) (is-Nil!69442 (t!383583 l!9132)))))

(assert (=> b!7155145 d!2229500))

(declare-fun bs!1889813 () Bool)

(declare-fun d!2229502 () Bool)

(assert (= bs!1889813 (and d!2229502 start!697410)))

(declare-fun lambda!436340 () Int)

(assert (=> bs!1889813 (= lambda!436340 lambda!436327)))

(declare-fun bs!1889814 () Bool)

(assert (= bs!1889814 (and d!2229502 b!7155146)))

(assert (=> bs!1889814 (not (= lambda!436340 lambda!436328))))

(declare-fun b!7155200 () Bool)

(declare-fun e!4298402 () Bool)

(declare-fun lt!2569173 () Regex!18262)

(declare-fun isEmptyLang!2126 (Regex!18262) Bool)

(assert (=> b!7155200 (= e!4298402 (isEmptyLang!2126 lt!2569173))))

(declare-fun b!7155201 () Bool)

(declare-fun e!4298404 () Bool)

(declare-fun head!14562 (List!69566) Regex!18262)

(assert (=> b!7155201 (= e!4298404 (= lt!2569173 (head!14562 l!9132)))))

(declare-fun e!4298399 () Bool)

(assert (=> d!2229502 e!4298399))

(declare-fun res!2917684 () Bool)

(assert (=> d!2229502 (=> (not res!2917684) (not e!4298399))))

(declare-fun validRegex!9410 (Regex!18262) Bool)

(assert (=> d!2229502 (= res!2917684 (validRegex!9410 lt!2569173))))

(declare-fun e!4298403 () Regex!18262)

(assert (=> d!2229502 (= lt!2569173 e!4298403)))

(declare-fun c!1333508 () Bool)

(declare-fun e!4298400 () Bool)

(assert (=> d!2229502 (= c!1333508 e!4298400)))

(declare-fun res!2917685 () Bool)

(assert (=> d!2229502 (=> (not res!2917685) (not e!4298400))))

(assert (=> d!2229502 (= res!2917685 (is-Cons!69442 l!9132))))

(assert (=> d!2229502 (forall!17102 l!9132 lambda!436340)))

(assert (=> d!2229502 (= (generalisedUnion!2725 l!9132) lt!2569173)))

(declare-fun b!7155202 () Bool)

(declare-fun e!4298401 () Regex!18262)

(assert (=> b!7155202 (= e!4298401 EmptyLang!18262)))

(declare-fun b!7155203 () Bool)

(assert (=> b!7155203 (= e!4298403 (h!75890 l!9132))))

(declare-fun b!7155204 () Bool)

(assert (=> b!7155204 (= e!4298402 e!4298404)))

(declare-fun c!1333510 () Bool)

(declare-fun tail!14031 (List!69566) List!69566)

(assert (=> b!7155204 (= c!1333510 (isEmpty!40130 (tail!14031 l!9132)))))

(declare-fun b!7155205 () Bool)

(assert (=> b!7155205 (= e!4298401 (Union!18262 (h!75890 l!9132) (generalisedUnion!2725 (t!383583 l!9132))))))

(declare-fun b!7155206 () Bool)

(assert (=> b!7155206 (= e!4298403 e!4298401)))

(declare-fun c!1333507 () Bool)

(assert (=> b!7155206 (= c!1333507 (is-Cons!69442 l!9132))))

(declare-fun b!7155207 () Bool)

(assert (=> b!7155207 (= e!4298399 e!4298402)))

(declare-fun c!1333509 () Bool)

(assert (=> b!7155207 (= c!1333509 (isEmpty!40130 l!9132))))

(declare-fun b!7155208 () Bool)

(assert (=> b!7155208 (= e!4298400 (isEmpty!40130 (t!383583 l!9132)))))

(declare-fun b!7155209 () Bool)

(declare-fun isUnion!1554 (Regex!18262) Bool)

(assert (=> b!7155209 (= e!4298404 (isUnion!1554 lt!2569173))))

(assert (= (and d!2229502 res!2917685) b!7155208))

(assert (= (and d!2229502 c!1333508) b!7155203))

(assert (= (and d!2229502 (not c!1333508)) b!7155206))

(assert (= (and b!7155206 c!1333507) b!7155205))

(assert (= (and b!7155206 (not c!1333507)) b!7155202))

(assert (= (and d!2229502 res!2917684) b!7155207))

(assert (= (and b!7155207 c!1333509) b!7155200))

(assert (= (and b!7155207 (not c!1333509)) b!7155204))

(assert (= (and b!7155204 c!1333510) b!7155201))

(assert (= (and b!7155204 (not c!1333510)) b!7155209))

(declare-fun m!7862498 () Bool)

(assert (=> b!7155201 m!7862498))

(declare-fun m!7862500 () Bool)

(assert (=> b!7155207 m!7862500))

(declare-fun m!7862502 () Bool)

(assert (=> b!7155204 m!7862502))

(assert (=> b!7155204 m!7862502))

(declare-fun m!7862504 () Bool)

(assert (=> b!7155204 m!7862504))

(declare-fun m!7862506 () Bool)

(assert (=> b!7155200 m!7862506))

(assert (=> b!7155208 m!7862478))

(declare-fun m!7862508 () Bool)

(assert (=> d!2229502 m!7862508))

(declare-fun m!7862510 () Bool)

(assert (=> d!2229502 m!7862510))

(declare-fun m!7862512 () Bool)

(assert (=> b!7155209 m!7862512))

(declare-fun m!7862514 () Bool)

(assert (=> b!7155205 m!7862514))

(assert (=> b!7155141 d!2229502))

(declare-fun d!2229510 () Bool)

(declare-fun nullableFct!3017 (Regex!18262) Bool)

(assert (=> d!2229510 (= (nullable!7739 r!13749) (nullableFct!3017 r!13749))))

(declare-fun bs!1889818 () Bool)

(assert (= bs!1889818 d!2229510))

(declare-fun m!7862518 () Bool)

(assert (=> bs!1889818 m!7862518))

(assert (=> b!7155146 d!2229510))

(declare-fun bs!1889819 () Bool)

(declare-fun d!2229514 () Bool)

(assert (= bs!1889819 (and d!2229514 start!697410)))

(declare-fun lambda!436343 () Int)

(assert (=> bs!1889819 (not (= lambda!436343 lambda!436327))))

(declare-fun bs!1889820 () Bool)

(assert (= bs!1889820 (and d!2229514 b!7155146)))

(assert (=> bs!1889820 (not (= lambda!436343 lambda!436328))))

(declare-fun bs!1889821 () Bool)

(assert (= bs!1889821 (and d!2229514 d!2229502)))

(assert (=> bs!1889821 (not (= lambda!436343 lambda!436340))))

(assert (=> d!2229514 true))

(declare-fun order!28633 () Int)

(declare-fun dynLambda!28299 (Int Int) Int)

(assert (=> d!2229514 (< (dynLambda!28299 order!28633 lambda!436328) (dynLambda!28299 order!28633 lambda!436343))))

(assert (=> d!2229514 (= (exists!4050 l!9132 lambda!436328) (not (forall!17102 l!9132 lambda!436343)))))

(declare-fun bs!1889822 () Bool)

(assert (= bs!1889822 d!2229514))

(declare-fun m!7862520 () Bool)

(assert (=> bs!1889822 m!7862520))

(assert (=> b!7155146 d!2229514))

(declare-fun d!2229516 () Bool)

(declare-fun res!2917696 () Bool)

(declare-fun e!4298415 () Bool)

(assert (=> d!2229516 (=> res!2917696 e!4298415)))

(assert (=> d!2229516 (= res!2917696 (is-Nil!69442 l!9132))))

(assert (=> d!2229516 (= (forall!17102 l!9132 lambda!436327) e!4298415)))

(declare-fun b!7155224 () Bool)

(declare-fun e!4298416 () Bool)

(assert (=> b!7155224 (= e!4298415 e!4298416)))

(declare-fun res!2917697 () Bool)

(assert (=> b!7155224 (=> (not res!2917697) (not e!4298416))))

(declare-fun dynLambda!28300 (Int Regex!18262) Bool)

(assert (=> b!7155224 (= res!2917697 (dynLambda!28300 lambda!436327 (h!75890 l!9132)))))

(declare-fun b!7155225 () Bool)

(assert (=> b!7155225 (= e!4298416 (forall!17102 (t!383583 l!9132) lambda!436327))))

(assert (= (and d!2229516 (not res!2917696)) b!7155224))

(assert (= (and b!7155224 res!2917697) b!7155225))

(declare-fun b_lambda!273291 () Bool)

(assert (=> (not b_lambda!273291) (not b!7155224)))

(declare-fun m!7862522 () Bool)

(assert (=> b!7155224 m!7862522))

(declare-fun m!7862524 () Bool)

(assert (=> b!7155225 m!7862524))

(assert (=> start!697410 d!2229516))

(declare-fun e!4298419 () Bool)

(assert (=> b!7155140 (= tp!1978155 e!4298419)))

(declare-fun b!7155236 () Bool)

(assert (=> b!7155236 (= e!4298419 tp_is_empty!46157)))

(declare-fun b!7155237 () Bool)

(declare-fun tp!1978192 () Bool)

(declare-fun tp!1978196 () Bool)

(assert (=> b!7155237 (= e!4298419 (and tp!1978192 tp!1978196))))

(declare-fun b!7155239 () Bool)

(declare-fun tp!1978194 () Bool)

(declare-fun tp!1978195 () Bool)

(assert (=> b!7155239 (= e!4298419 (and tp!1978194 tp!1978195))))

(declare-fun b!7155238 () Bool)

(declare-fun tp!1978193 () Bool)

(assert (=> b!7155238 (= e!4298419 tp!1978193)))

(assert (= (and b!7155140 (is-ElementMatch!18262 (regOne!37036 r!13749))) b!7155236))

(assert (= (and b!7155140 (is-Concat!27107 (regOne!37036 r!13749))) b!7155237))

(assert (= (and b!7155140 (is-Star!18262 (regOne!37036 r!13749))) b!7155238))

(assert (= (and b!7155140 (is-Union!18262 (regOne!37036 r!13749))) b!7155239))

(declare-fun e!4298420 () Bool)

(assert (=> b!7155140 (= tp!1978154 e!4298420)))

(declare-fun b!7155240 () Bool)

(assert (=> b!7155240 (= e!4298420 tp_is_empty!46157)))

(declare-fun b!7155241 () Bool)

(declare-fun tp!1978197 () Bool)

(declare-fun tp!1978201 () Bool)

(assert (=> b!7155241 (= e!4298420 (and tp!1978197 tp!1978201))))

(declare-fun b!7155243 () Bool)

(declare-fun tp!1978199 () Bool)

(declare-fun tp!1978200 () Bool)

(assert (=> b!7155243 (= e!4298420 (and tp!1978199 tp!1978200))))

(declare-fun b!7155242 () Bool)

(declare-fun tp!1978198 () Bool)

(assert (=> b!7155242 (= e!4298420 tp!1978198)))

(assert (= (and b!7155140 (is-ElementMatch!18262 (regTwo!37036 r!13749))) b!7155240))

(assert (= (and b!7155140 (is-Concat!27107 (regTwo!37036 r!13749))) b!7155241))

(assert (= (and b!7155140 (is-Star!18262 (regTwo!37036 r!13749))) b!7155242))

(assert (= (and b!7155140 (is-Union!18262 (regTwo!37036 r!13749))) b!7155243))

(declare-fun e!4298421 () Bool)

(assert (=> b!7155147 (= tp!1978160 e!4298421)))

(declare-fun b!7155244 () Bool)

(assert (=> b!7155244 (= e!4298421 tp_is_empty!46157)))

(declare-fun b!7155245 () Bool)

(declare-fun tp!1978202 () Bool)

(declare-fun tp!1978206 () Bool)

(assert (=> b!7155245 (= e!4298421 (and tp!1978202 tp!1978206))))

(declare-fun b!7155247 () Bool)

(declare-fun tp!1978204 () Bool)

(declare-fun tp!1978205 () Bool)

(assert (=> b!7155247 (= e!4298421 (and tp!1978204 tp!1978205))))

(declare-fun b!7155246 () Bool)

(declare-fun tp!1978203 () Bool)

(assert (=> b!7155246 (= e!4298421 tp!1978203)))

(assert (= (and b!7155147 (is-ElementMatch!18262 (reg!18591 r!13749))) b!7155244))

(assert (= (and b!7155147 (is-Concat!27107 (reg!18591 r!13749))) b!7155245))

(assert (= (and b!7155147 (is-Star!18262 (reg!18591 r!13749))) b!7155246))

(assert (= (and b!7155147 (is-Union!18262 (reg!18591 r!13749))) b!7155247))

(declare-fun e!4298422 () Bool)

(assert (=> b!7155142 (= tp!1978156 e!4298422)))

(declare-fun b!7155248 () Bool)

(assert (=> b!7155248 (= e!4298422 tp_is_empty!46157)))

(declare-fun b!7155249 () Bool)

(declare-fun tp!1978207 () Bool)

(declare-fun tp!1978211 () Bool)

(assert (=> b!7155249 (= e!4298422 (and tp!1978207 tp!1978211))))

(declare-fun b!7155251 () Bool)

(declare-fun tp!1978209 () Bool)

(declare-fun tp!1978210 () Bool)

(assert (=> b!7155251 (= e!4298422 (and tp!1978209 tp!1978210))))

(declare-fun b!7155250 () Bool)

(declare-fun tp!1978208 () Bool)

(assert (=> b!7155250 (= e!4298422 tp!1978208)))

(assert (= (and b!7155142 (is-ElementMatch!18262 (h!75890 l!9132))) b!7155248))

(assert (= (and b!7155142 (is-Concat!27107 (h!75890 l!9132))) b!7155249))

(assert (= (and b!7155142 (is-Star!18262 (h!75890 l!9132))) b!7155250))

(assert (= (and b!7155142 (is-Union!18262 (h!75890 l!9132))) b!7155251))

(declare-fun b!7155256 () Bool)

(declare-fun e!4298425 () Bool)

(declare-fun tp!1978216 () Bool)

(declare-fun tp!1978217 () Bool)

(assert (=> b!7155256 (= e!4298425 (and tp!1978216 tp!1978217))))

(assert (=> b!7155142 (= tp!1978157 e!4298425)))

(assert (= (and b!7155142 (is-Cons!69442 (t!383583 l!9132))) b!7155256))

(declare-fun e!4298426 () Bool)

(assert (=> b!7155149 (= tp!1978158 e!4298426)))

(declare-fun b!7155257 () Bool)

(assert (=> b!7155257 (= e!4298426 tp_is_empty!46157)))

(declare-fun b!7155258 () Bool)

(declare-fun tp!1978218 () Bool)

(declare-fun tp!1978222 () Bool)

(assert (=> b!7155258 (= e!4298426 (and tp!1978218 tp!1978222))))

(declare-fun b!7155260 () Bool)

(declare-fun tp!1978220 () Bool)

(declare-fun tp!1978221 () Bool)

(assert (=> b!7155260 (= e!4298426 (and tp!1978220 tp!1978221))))

(declare-fun b!7155259 () Bool)

(declare-fun tp!1978219 () Bool)

(assert (=> b!7155259 (= e!4298426 tp!1978219)))

(assert (= (and b!7155149 (is-ElementMatch!18262 (regOne!37037 r!13749))) b!7155257))

(assert (= (and b!7155149 (is-Concat!27107 (regOne!37037 r!13749))) b!7155258))

(assert (= (and b!7155149 (is-Star!18262 (regOne!37037 r!13749))) b!7155259))

(assert (= (and b!7155149 (is-Union!18262 (regOne!37037 r!13749))) b!7155260))

(declare-fun e!4298427 () Bool)

(assert (=> b!7155149 (= tp!1978159 e!4298427)))

(declare-fun b!7155261 () Bool)

(assert (=> b!7155261 (= e!4298427 tp_is_empty!46157)))

(declare-fun b!7155262 () Bool)

(declare-fun tp!1978223 () Bool)

(declare-fun tp!1978227 () Bool)

(assert (=> b!7155262 (= e!4298427 (and tp!1978223 tp!1978227))))

(declare-fun b!7155264 () Bool)

(declare-fun tp!1978225 () Bool)

(declare-fun tp!1978226 () Bool)

(assert (=> b!7155264 (= e!4298427 (and tp!1978225 tp!1978226))))

(declare-fun b!7155263 () Bool)

(declare-fun tp!1978224 () Bool)

(assert (=> b!7155263 (= e!4298427 tp!1978224)))

(assert (= (and b!7155149 (is-ElementMatch!18262 (regTwo!37037 r!13749))) b!7155261))

(assert (= (and b!7155149 (is-Concat!27107 (regTwo!37037 r!13749))) b!7155262))

(assert (= (and b!7155149 (is-Star!18262 (regTwo!37037 r!13749))) b!7155263))

(assert (= (and b!7155149 (is-Union!18262 (regTwo!37037 r!13749))) b!7155264))

(declare-fun b_lambda!273295 () Bool)

(assert (= b_lambda!273291 (or start!697410 b_lambda!273295)))

(declare-fun bs!1889823 () Bool)

(declare-fun d!2229520 () Bool)

(assert (= bs!1889823 (and d!2229520 start!697410)))

(assert (=> bs!1889823 (= (dynLambda!28300 lambda!436327 (h!75890 l!9132)) (validRegex!9410 (h!75890 l!9132)))))

(declare-fun m!7862530 () Bool)

(assert (=> bs!1889823 m!7862530))

(assert (=> b!7155224 d!2229520))

(push 1)

(assert (not b!7155243))

(assert (not d!2229502))

(assert (not b!7155246))

(assert (not b!7155250))

(assert (not b!7155204))

(assert (not b!7155201))

(assert (not b!7155264))

(assert (not b!7155209))

(assert (not b!7155242))

(assert (not b!7155241))

(assert (not b!7155247))

(assert (not b!7155263))

(assert (not b!7155200))

(assert (not b!7155249))

(assert (not b!7155258))

(assert (not b!7155256))

(assert (not b!7155239))

(assert (not b!7155238))

(assert (not b!7155205))

(assert (not b!7155207))

(assert (not b!7155237))

(assert tp_is_empty!46157)

(assert (not b!7155225))

(assert (not bs!1889823))

(assert (not b!7155251))

(assert (not b!7155262))

(assert (not b_lambda!273295))

(assert (not b!7155259))

(assert (not b!7155260))

(assert (not d!2229510))

(assert (not d!2229514))

(assert (not b!7155245))

(assert (not b!7155208))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

