; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!740842 () Bool)

(assert start!740842)

(declare-fun b!7790225 () Bool)

(declare-fun e!4613052 () Bool)

(declare-fun tp!2293225 () Bool)

(declare-fun tp!2293219 () Bool)

(assert (=> b!7790225 (= e!4613052 (and tp!2293225 tp!2293219))))

(declare-fun b!7790226 () Bool)

(declare-fun res!3103802 () Bool)

(declare-fun e!4613055 () Bool)

(assert (=> b!7790226 (=> (not res!3103802) (not e!4613055))))

(declare-datatypes ((C!42036 0))(
  ( (C!42037 (val!31458 Int)) )
))
(declare-datatypes ((Regex!20855 0))(
  ( (ElementMatch!20855 (c!1434714 C!42036)) (Concat!29700 (regOne!42222 Regex!20855) (regTwo!42222 Regex!20855)) (EmptyExpr!20855) (Star!20855 (reg!21184 Regex!20855)) (EmptyLang!20855) (Union!20855 (regOne!42223 Regex!20855) (regTwo!42223 Regex!20855)) )
))
(declare-fun r2!6217 () Regex!20855)

(declare-fun validRegex!11269 (Regex!20855) Bool)

(assert (=> b!7790226 (= res!3103802 (validRegex!11269 r2!6217))))

(declare-fun b!7790227 () Bool)

(declare-fun e!4613058 () Bool)

(declare-fun e!4613057 () Bool)

(assert (=> b!7790227 (= e!4613058 e!4613057)))

(declare-fun res!3103799 () Bool)

(assert (=> b!7790227 (=> res!3103799 e!4613057)))

(declare-fun lt!2673510 () Regex!20855)

(assert (=> b!7790227 (= res!3103799 (not (validRegex!11269 lt!2673510)))))

(declare-fun b!7790228 () Bool)

(declare-fun lt!2673509 () Regex!20855)

(assert (=> b!7790228 (= e!4613057 (not (validRegex!11269 lt!2673509)))))

(declare-fun b!7790229 () Bool)

(declare-fun e!4613053 () Bool)

(assert (=> b!7790229 (= e!4613055 e!4613053)))

(declare-fun res!3103796 () Bool)

(assert (=> b!7790229 (=> (not res!3103796) (not e!4613053))))

(declare-fun lt!2673511 () Regex!20855)

(declare-datatypes ((List!73694 0))(
  ( (Nil!73570) (Cons!73570 (h!80018 C!42036) (t!388429 List!73694)) )
))
(declare-fun s!14292 () List!73694)

(declare-fun matchR!10315 (Regex!20855 List!73694) Bool)

(assert (=> b!7790229 (= res!3103796 (matchR!10315 lt!2673511 s!14292))))

(declare-fun r1!6279 () Regex!20855)

(assert (=> b!7790229 (= lt!2673511 (Concat!29700 r1!6279 r2!6217))))

(declare-fun b!7790230 () Bool)

(declare-fun tp_is_empty!52065 () Bool)

(assert (=> b!7790230 (= e!4613052 tp_is_empty!52065)))

(declare-fun b!7790231 () Bool)

(declare-fun e!4613059 () Bool)

(assert (=> b!7790231 (= e!4613059 e!4613058)))

(declare-fun res!3103797 () Bool)

(assert (=> b!7790231 (=> (not res!3103797) (not e!4613058))))

(declare-fun lt!2673512 () Regex!20855)

(assert (=> b!7790231 (= res!3103797 (= lt!2673512 (Union!20855 lt!2673510 lt!2673509)))))

(declare-fun derivativeStep!6192 (Regex!20855 C!42036) Regex!20855)

(assert (=> b!7790231 (= lt!2673509 (derivativeStep!6192 r2!6217 (h!80018 s!14292)))))

(assert (=> b!7790231 (= lt!2673510 (Concat!29700 (derivativeStep!6192 r1!6279 (h!80018 s!14292)) r2!6217))))

(declare-fun b!7790232 () Bool)

(declare-fun e!4613054 () Bool)

(declare-fun tp!2293227 () Bool)

(declare-fun tp!2293221 () Bool)

(assert (=> b!7790232 (= e!4613054 (and tp!2293227 tp!2293221))))

(declare-fun b!7790233 () Bool)

(assert (=> b!7790233 (= e!4613053 e!4613059)))

(declare-fun res!3103800 () Bool)

(assert (=> b!7790233 (=> (not res!3103800) (not e!4613059))))

(assert (=> b!7790233 (= res!3103800 (matchR!10315 lt!2673512 (t!388429 s!14292)))))

(assert (=> b!7790233 (= lt!2673512 (derivativeStep!6192 lt!2673511 (h!80018 s!14292)))))

(declare-fun b!7790234 () Bool)

(assert (=> b!7790234 (= e!4613054 tp_is_empty!52065)))

(declare-fun b!7790235 () Bool)

(declare-fun res!3103801 () Bool)

(assert (=> b!7790235 (=> (not res!3103801) (not e!4613059))))

(declare-fun nullable!9239 (Regex!20855) Bool)

(assert (=> b!7790235 (= res!3103801 (nullable!9239 r1!6279))))

(declare-fun b!7790236 () Bool)

(declare-fun e!4613056 () Bool)

(declare-fun tp!2293226 () Bool)

(assert (=> b!7790236 (= e!4613056 (and tp_is_empty!52065 tp!2293226))))

(declare-fun b!7790237 () Bool)

(declare-fun tp!2293222 () Bool)

(assert (=> b!7790237 (= e!4613052 tp!2293222)))

(declare-fun res!3103798 () Bool)

(assert (=> start!740842 (=> (not res!3103798) (not e!4613055))))

(assert (=> start!740842 (= res!3103798 (validRegex!11269 r1!6279))))

(assert (=> start!740842 e!4613055))

(assert (=> start!740842 e!4613054))

(assert (=> start!740842 e!4613052))

(assert (=> start!740842 e!4613056))

(declare-fun b!7790238 () Bool)

(declare-fun tp!2293229 () Bool)

(assert (=> b!7790238 (= e!4613054 tp!2293229)))

(declare-fun b!7790239 () Bool)

(declare-fun res!3103795 () Bool)

(assert (=> b!7790239 (=> (not res!3103795) (not e!4613053))))

(get-info :version)

(assert (=> b!7790239 (= res!3103795 ((_ is Cons!73570) s!14292))))

(declare-fun b!7790240 () Bool)

(declare-fun tp!2293220 () Bool)

(declare-fun tp!2293223 () Bool)

(assert (=> b!7790240 (= e!4613054 (and tp!2293220 tp!2293223))))

(declare-fun b!7790241 () Bool)

(declare-fun tp!2293228 () Bool)

(declare-fun tp!2293224 () Bool)

(assert (=> b!7790241 (= e!4613052 (and tp!2293228 tp!2293224))))

(assert (= (and start!740842 res!3103798) b!7790226))

(assert (= (and b!7790226 res!3103802) b!7790229))

(assert (= (and b!7790229 res!3103796) b!7790239))

(assert (= (and b!7790239 res!3103795) b!7790233))

(assert (= (and b!7790233 res!3103800) b!7790235))

(assert (= (and b!7790235 res!3103801) b!7790231))

(assert (= (and b!7790231 res!3103797) b!7790227))

(assert (= (and b!7790227 (not res!3103799)) b!7790228))

(assert (= (and start!740842 ((_ is ElementMatch!20855) r1!6279)) b!7790234))

(assert (= (and start!740842 ((_ is Concat!29700) r1!6279)) b!7790232))

(assert (= (and start!740842 ((_ is Star!20855) r1!6279)) b!7790238))

(assert (= (and start!740842 ((_ is Union!20855) r1!6279)) b!7790240))

(assert (= (and start!740842 ((_ is ElementMatch!20855) r2!6217)) b!7790230))

(assert (= (and start!740842 ((_ is Concat!29700) r2!6217)) b!7790225))

(assert (= (and start!740842 ((_ is Star!20855) r2!6217)) b!7790237))

(assert (= (and start!740842 ((_ is Union!20855) r2!6217)) b!7790241))

(assert (= (and start!740842 ((_ is Cons!73570) s!14292)) b!7790236))

(declare-fun m!8231674 () Bool)

(assert (=> b!7790233 m!8231674))

(declare-fun m!8231676 () Bool)

(assert (=> b!7790233 m!8231676))

(declare-fun m!8231678 () Bool)

(assert (=> b!7790229 m!8231678))

(declare-fun m!8231680 () Bool)

(assert (=> start!740842 m!8231680))

(declare-fun m!8231682 () Bool)

(assert (=> b!7790227 m!8231682))

(declare-fun m!8231684 () Bool)

(assert (=> b!7790226 m!8231684))

(declare-fun m!8231686 () Bool)

(assert (=> b!7790235 m!8231686))

(declare-fun m!8231688 () Bool)

(assert (=> b!7790228 m!8231688))

(declare-fun m!8231690 () Bool)

(assert (=> b!7790231 m!8231690))

(declare-fun m!8231692 () Bool)

(assert (=> b!7790231 m!8231692))

(check-sat (not b!7790233) (not b!7790232) (not b!7790235) tp_is_empty!52065 (not b!7790226) (not start!740842) (not b!7790228) (not b!7790231) (not b!7790241) (not b!7790240) (not b!7790229) (not b!7790237) (not b!7790227) (not b!7790238) (not b!7790225) (not b!7790236))
(check-sat)
(get-model)

(declare-fun b!7790260 () Bool)

(declare-fun e!4613080 () Bool)

(declare-fun e!4613077 () Bool)

(assert (=> b!7790260 (= e!4613080 e!4613077)))

(declare-fun res!3103815 () Bool)

(assert (=> b!7790260 (=> (not res!3103815) (not e!4613077))))

(declare-fun call!722016 () Bool)

(assert (=> b!7790260 (= res!3103815 call!722016)))

(declare-fun b!7790261 () Bool)

(declare-fun e!4613074 () Bool)

(declare-fun call!722015 () Bool)

(assert (=> b!7790261 (= e!4613074 call!722015)))

(declare-fun b!7790262 () Bool)

(declare-fun e!4613076 () Bool)

(declare-fun e!4613079 () Bool)

(assert (=> b!7790262 (= e!4613076 e!4613079)))

(declare-fun c!1434720 () Bool)

(assert (=> b!7790262 (= c!1434720 ((_ is Union!20855) lt!2673510))))

(declare-fun b!7790263 () Bool)

(declare-fun e!4613075 () Bool)

(declare-fun call!722017 () Bool)

(assert (=> b!7790263 (= e!4613075 call!722017)))

(declare-fun d!2345879 () Bool)

(declare-fun res!3103817 () Bool)

(declare-fun e!4613078 () Bool)

(assert (=> d!2345879 (=> res!3103817 e!4613078)))

(assert (=> d!2345879 (= res!3103817 ((_ is ElementMatch!20855) lt!2673510))))

(assert (=> d!2345879 (= (validRegex!11269 lt!2673510) e!4613078)))

(declare-fun bm!722010 () Bool)

(declare-fun c!1434719 () Bool)

(assert (=> bm!722010 (= call!722015 (validRegex!11269 (ite c!1434719 (reg!21184 lt!2673510) (ite c!1434720 (regOne!42223 lt!2673510) (regOne!42222 lt!2673510)))))))

(declare-fun b!7790264 () Bool)

(assert (=> b!7790264 (= e!4613077 call!722017)))

(declare-fun b!7790265 () Bool)

(declare-fun res!3103813 () Bool)

(assert (=> b!7790265 (=> res!3103813 e!4613080)))

(assert (=> b!7790265 (= res!3103813 (not ((_ is Concat!29700) lt!2673510)))))

(assert (=> b!7790265 (= e!4613079 e!4613080)))

(declare-fun b!7790266 () Bool)

(assert (=> b!7790266 (= e!4613078 e!4613076)))

(assert (=> b!7790266 (= c!1434719 ((_ is Star!20855) lt!2673510))))

(declare-fun b!7790267 () Bool)

(assert (=> b!7790267 (= e!4613076 e!4613074)))

(declare-fun res!3103814 () Bool)

(assert (=> b!7790267 (= res!3103814 (not (nullable!9239 (reg!21184 lt!2673510))))))

(assert (=> b!7790267 (=> (not res!3103814) (not e!4613074))))

(declare-fun bm!722011 () Bool)

(assert (=> bm!722011 (= call!722017 (validRegex!11269 (ite c!1434720 (regTwo!42223 lt!2673510) (regTwo!42222 lt!2673510))))))

(declare-fun bm!722012 () Bool)

(assert (=> bm!722012 (= call!722016 call!722015)))

(declare-fun b!7790268 () Bool)

(declare-fun res!3103816 () Bool)

(assert (=> b!7790268 (=> (not res!3103816) (not e!4613075))))

(assert (=> b!7790268 (= res!3103816 call!722016)))

(assert (=> b!7790268 (= e!4613079 e!4613075)))

(assert (= (and d!2345879 (not res!3103817)) b!7790266))

(assert (= (and b!7790266 c!1434719) b!7790267))

(assert (= (and b!7790266 (not c!1434719)) b!7790262))

(assert (= (and b!7790267 res!3103814) b!7790261))

(assert (= (and b!7790262 c!1434720) b!7790268))

(assert (= (and b!7790262 (not c!1434720)) b!7790265))

(assert (= (and b!7790268 res!3103816) b!7790263))

(assert (= (and b!7790265 (not res!3103813)) b!7790260))

(assert (= (and b!7790260 res!3103815) b!7790264))

(assert (= (or b!7790268 b!7790260) bm!722012))

(assert (= (or b!7790263 b!7790264) bm!722011))

(assert (= (or b!7790261 bm!722012) bm!722010))

(declare-fun m!8231694 () Bool)

(assert (=> bm!722010 m!8231694))

(declare-fun m!8231696 () Bool)

(assert (=> b!7790267 m!8231696))

(declare-fun m!8231698 () Bool)

(assert (=> bm!722011 m!8231698))

(assert (=> b!7790227 d!2345879))

(declare-fun b!7790357 () Bool)

(declare-fun e!4613134 () Bool)

(declare-fun head!15934 (List!73694) C!42036)

(assert (=> b!7790357 (= e!4613134 (not (= (head!15934 (t!388429 s!14292)) (c!1434714 lt!2673512))))))

(declare-fun b!7790358 () Bool)

(declare-fun e!4613132 () Bool)

(declare-fun lt!2673518 () Bool)

(declare-fun call!722027 () Bool)

(assert (=> b!7790358 (= e!4613132 (= lt!2673518 call!722027))))

(declare-fun b!7790359 () Bool)

(declare-fun e!4613130 () Bool)

(declare-fun e!4613136 () Bool)

(assert (=> b!7790359 (= e!4613130 e!4613136)))

(declare-fun res!3103872 () Bool)

(assert (=> b!7790359 (=> (not res!3103872) (not e!4613136))))

(assert (=> b!7790359 (= res!3103872 (not lt!2673518))))

(declare-fun d!2345883 () Bool)

(assert (=> d!2345883 e!4613132))

(declare-fun c!1434742 () Bool)

(assert (=> d!2345883 (= c!1434742 ((_ is EmptyExpr!20855) lt!2673512))))

(declare-fun e!4613135 () Bool)

(assert (=> d!2345883 (= lt!2673518 e!4613135)))

(declare-fun c!1434740 () Bool)

(declare-fun isEmpty!42209 (List!73694) Bool)

(assert (=> d!2345883 (= c!1434740 (isEmpty!42209 (t!388429 s!14292)))))

(assert (=> d!2345883 (validRegex!11269 lt!2673512)))

(assert (=> d!2345883 (= (matchR!10315 lt!2673512 (t!388429 s!14292)) lt!2673518)))

(declare-fun b!7790360 () Bool)

(declare-fun res!3103871 () Bool)

(assert (=> b!7790360 (=> res!3103871 e!4613130)))

(assert (=> b!7790360 (= res!3103871 (not ((_ is ElementMatch!20855) lt!2673512)))))

(declare-fun e!4613131 () Bool)

(assert (=> b!7790360 (= e!4613131 e!4613130)))

(declare-fun b!7790361 () Bool)

(assert (=> b!7790361 (= e!4613135 (nullable!9239 lt!2673512))))

(declare-fun b!7790362 () Bool)

(declare-fun tail!15475 (List!73694) List!73694)

(assert (=> b!7790362 (= e!4613135 (matchR!10315 (derivativeStep!6192 lt!2673512 (head!15934 (t!388429 s!14292))) (tail!15475 (t!388429 s!14292))))))

(declare-fun b!7790363 () Bool)

(declare-fun res!3103869 () Bool)

(declare-fun e!4613133 () Bool)

(assert (=> b!7790363 (=> (not res!3103869) (not e!4613133))))

(assert (=> b!7790363 (= res!3103869 (not call!722027))))

(declare-fun b!7790364 () Bool)

(assert (=> b!7790364 (= e!4613131 (not lt!2673518))))

(declare-fun b!7790365 () Bool)

(assert (=> b!7790365 (= e!4613132 e!4613131)))

(declare-fun c!1434741 () Bool)

(assert (=> b!7790365 (= c!1434741 ((_ is EmptyLang!20855) lt!2673512))))

(declare-fun b!7790366 () Bool)

(declare-fun res!3103875 () Bool)

(assert (=> b!7790366 (=> res!3103875 e!4613130)))

(assert (=> b!7790366 (= res!3103875 e!4613133)))

(declare-fun res!3103868 () Bool)

(assert (=> b!7790366 (=> (not res!3103868) (not e!4613133))))

(assert (=> b!7790366 (= res!3103868 lt!2673518)))

(declare-fun bm!722022 () Bool)

(assert (=> bm!722022 (= call!722027 (isEmpty!42209 (t!388429 s!14292)))))

(declare-fun b!7790367 () Bool)

(declare-fun res!3103870 () Bool)

(assert (=> b!7790367 (=> (not res!3103870) (not e!4613133))))

(assert (=> b!7790367 (= res!3103870 (isEmpty!42209 (tail!15475 (t!388429 s!14292))))))

(declare-fun b!7790368 () Bool)

(assert (=> b!7790368 (= e!4613133 (= (head!15934 (t!388429 s!14292)) (c!1434714 lt!2673512)))))

(declare-fun b!7790369 () Bool)

(assert (=> b!7790369 (= e!4613136 e!4613134)))

(declare-fun res!3103874 () Bool)

(assert (=> b!7790369 (=> res!3103874 e!4613134)))

(assert (=> b!7790369 (= res!3103874 call!722027)))

(declare-fun b!7790370 () Bool)

(declare-fun res!3103873 () Bool)

(assert (=> b!7790370 (=> res!3103873 e!4613134)))

(assert (=> b!7790370 (= res!3103873 (not (isEmpty!42209 (tail!15475 (t!388429 s!14292)))))))

(assert (= (and d!2345883 c!1434740) b!7790361))

(assert (= (and d!2345883 (not c!1434740)) b!7790362))

(assert (= (and d!2345883 c!1434742) b!7790358))

(assert (= (and d!2345883 (not c!1434742)) b!7790365))

(assert (= (and b!7790365 c!1434741) b!7790364))

(assert (= (and b!7790365 (not c!1434741)) b!7790360))

(assert (= (and b!7790360 (not res!3103871)) b!7790366))

(assert (= (and b!7790366 res!3103868) b!7790363))

(assert (= (and b!7790363 res!3103869) b!7790367))

(assert (= (and b!7790367 res!3103870) b!7790368))

(assert (= (and b!7790366 (not res!3103875)) b!7790359))

(assert (= (and b!7790359 res!3103872) b!7790369))

(assert (= (and b!7790369 (not res!3103874)) b!7790370))

(assert (= (and b!7790370 (not res!3103873)) b!7790357))

(assert (= (or b!7790358 b!7790363 b!7790369) bm!722022))

(declare-fun m!8231716 () Bool)

(assert (=> b!7790361 m!8231716))

(declare-fun m!8231718 () Bool)

(assert (=> b!7790370 m!8231718))

(assert (=> b!7790370 m!8231718))

(declare-fun m!8231720 () Bool)

(assert (=> b!7790370 m!8231720))

(assert (=> b!7790367 m!8231718))

(assert (=> b!7790367 m!8231718))

(assert (=> b!7790367 m!8231720))

(declare-fun m!8231722 () Bool)

(assert (=> b!7790357 m!8231722))

(assert (=> b!7790368 m!8231722))

(declare-fun m!8231724 () Bool)

(assert (=> bm!722022 m!8231724))

(assert (=> b!7790362 m!8231722))

(assert (=> b!7790362 m!8231722))

(declare-fun m!8231726 () Bool)

(assert (=> b!7790362 m!8231726))

(assert (=> b!7790362 m!8231718))

(assert (=> b!7790362 m!8231726))

(assert (=> b!7790362 m!8231718))

(declare-fun m!8231728 () Bool)

(assert (=> b!7790362 m!8231728))

(assert (=> d!2345883 m!8231724))

(declare-fun m!8231730 () Bool)

(assert (=> d!2345883 m!8231730))

(assert (=> b!7790233 d!2345883))

(declare-fun c!1434769 () Bool)

(declare-fun c!1434768 () Bool)

(declare-fun c!1434766 () Bool)

(declare-fun bm!722044 () Bool)

(declare-fun call!722049 () Regex!20855)

(assert (=> bm!722044 (= call!722049 (derivativeStep!6192 (ite c!1434769 (regTwo!42223 lt!2673511) (ite c!1434768 (reg!21184 lt!2673511) (ite c!1434766 (regTwo!42222 lt!2673511) (regOne!42222 lt!2673511)))) (h!80018 s!14292)))))

(declare-fun b!7790420 () Bool)

(declare-fun e!4613167 () Regex!20855)

(declare-fun call!722052 () Regex!20855)

(assert (=> b!7790420 (= e!4613167 (Union!20855 (Concat!29700 call!722052 (regTwo!42222 lt!2673511)) EmptyLang!20855))))

(declare-fun b!7790421 () Bool)

(declare-fun e!4613168 () Regex!20855)

(assert (=> b!7790421 (= e!4613168 EmptyLang!20855)))

(declare-fun b!7790422 () Bool)

(assert (=> b!7790422 (= c!1434766 (nullable!9239 (regOne!42222 lt!2673511)))))

(declare-fun e!4613166 () Regex!20855)

(assert (=> b!7790422 (= e!4613166 e!4613167)))

(declare-fun bm!722045 () Bool)

(declare-fun call!722050 () Regex!20855)

(assert (=> bm!722045 (= call!722052 call!722050)))

(declare-fun b!7790423 () Bool)

(assert (=> b!7790423 (= e!4613166 (Concat!29700 call!722050 lt!2673511))))

(declare-fun bm!722046 () Bool)

(assert (=> bm!722046 (= call!722050 call!722049)))

(declare-fun b!7790424 () Bool)

(declare-fun e!4613164 () Regex!20855)

(assert (=> b!7790424 (= e!4613164 (ite (= (h!80018 s!14292) (c!1434714 lt!2673511)) EmptyExpr!20855 EmptyLang!20855))))

(declare-fun b!7790425 () Bool)

(assert (=> b!7790425 (= c!1434769 ((_ is Union!20855) lt!2673511))))

(declare-fun e!4613165 () Regex!20855)

(assert (=> b!7790425 (= e!4613164 e!4613165)))

(declare-fun bm!722047 () Bool)

(declare-fun call!722051 () Regex!20855)

(assert (=> bm!722047 (= call!722051 (derivativeStep!6192 (ite c!1434769 (regOne!42223 lt!2673511) (regOne!42222 lt!2673511)) (h!80018 s!14292)))))

(declare-fun d!2345887 () Bool)

(declare-fun lt!2673523 () Regex!20855)

(assert (=> d!2345887 (validRegex!11269 lt!2673523)))

(assert (=> d!2345887 (= lt!2673523 e!4613168)))

(declare-fun c!1434767 () Bool)

(assert (=> d!2345887 (= c!1434767 (or ((_ is EmptyExpr!20855) lt!2673511) ((_ is EmptyLang!20855) lt!2673511)))))

(assert (=> d!2345887 (validRegex!11269 lt!2673511)))

(assert (=> d!2345887 (= (derivativeStep!6192 lt!2673511 (h!80018 s!14292)) lt!2673523)))

(declare-fun b!7790426 () Bool)

(assert (=> b!7790426 (= e!4613165 (Union!20855 call!722051 call!722049))))

(declare-fun b!7790427 () Bool)

(assert (=> b!7790427 (= e!4613167 (Union!20855 (Concat!29700 call!722051 (regTwo!42222 lt!2673511)) call!722052))))

(declare-fun b!7790428 () Bool)

(assert (=> b!7790428 (= e!4613168 e!4613164)))

(declare-fun c!1434765 () Bool)

(assert (=> b!7790428 (= c!1434765 ((_ is ElementMatch!20855) lt!2673511))))

(declare-fun b!7790429 () Bool)

(assert (=> b!7790429 (= e!4613165 e!4613166)))

(assert (=> b!7790429 (= c!1434768 ((_ is Star!20855) lt!2673511))))

(assert (= (and d!2345887 c!1434767) b!7790421))

(assert (= (and d!2345887 (not c!1434767)) b!7790428))

(assert (= (and b!7790428 c!1434765) b!7790424))

(assert (= (and b!7790428 (not c!1434765)) b!7790425))

(assert (= (and b!7790425 c!1434769) b!7790426))

(assert (= (and b!7790425 (not c!1434769)) b!7790429))

(assert (= (and b!7790429 c!1434768) b!7790423))

(assert (= (and b!7790429 (not c!1434768)) b!7790422))

(assert (= (and b!7790422 c!1434766) b!7790427))

(assert (= (and b!7790422 (not c!1434766)) b!7790420))

(assert (= (or b!7790427 b!7790420) bm!722045))

(assert (= (or b!7790423 bm!722045) bm!722046))

(assert (= (or b!7790426 bm!722046) bm!722044))

(assert (= (or b!7790426 b!7790427) bm!722047))

(declare-fun m!8231738 () Bool)

(assert (=> bm!722044 m!8231738))

(declare-fun m!8231740 () Bool)

(assert (=> b!7790422 m!8231740))

(declare-fun m!8231742 () Bool)

(assert (=> bm!722047 m!8231742))

(declare-fun m!8231744 () Bool)

(assert (=> d!2345887 m!8231744))

(declare-fun m!8231746 () Bool)

(assert (=> d!2345887 m!8231746))

(assert (=> b!7790233 d!2345887))

(declare-fun c!1434771 () Bool)

(declare-fun bm!722048 () Bool)

(declare-fun c!1434774 () Bool)

(declare-fun call!722053 () Regex!20855)

(declare-fun c!1434773 () Bool)

(assert (=> bm!722048 (= call!722053 (derivativeStep!6192 (ite c!1434774 (regTwo!42223 r2!6217) (ite c!1434773 (reg!21184 r2!6217) (ite c!1434771 (regTwo!42222 r2!6217) (regOne!42222 r2!6217)))) (h!80018 s!14292)))))

(declare-fun b!7790430 () Bool)

(declare-fun e!4613172 () Regex!20855)

(declare-fun call!722056 () Regex!20855)

(assert (=> b!7790430 (= e!4613172 (Union!20855 (Concat!29700 call!722056 (regTwo!42222 r2!6217)) EmptyLang!20855))))

(declare-fun b!7790431 () Bool)

(declare-fun e!4613173 () Regex!20855)

(assert (=> b!7790431 (= e!4613173 EmptyLang!20855)))

(declare-fun b!7790432 () Bool)

(assert (=> b!7790432 (= c!1434771 (nullable!9239 (regOne!42222 r2!6217)))))

(declare-fun e!4613171 () Regex!20855)

(assert (=> b!7790432 (= e!4613171 e!4613172)))

(declare-fun bm!722049 () Bool)

(declare-fun call!722054 () Regex!20855)

(assert (=> bm!722049 (= call!722056 call!722054)))

(declare-fun b!7790433 () Bool)

(assert (=> b!7790433 (= e!4613171 (Concat!29700 call!722054 r2!6217))))

(declare-fun bm!722050 () Bool)

(assert (=> bm!722050 (= call!722054 call!722053)))

(declare-fun b!7790434 () Bool)

(declare-fun e!4613169 () Regex!20855)

(assert (=> b!7790434 (= e!4613169 (ite (= (h!80018 s!14292) (c!1434714 r2!6217)) EmptyExpr!20855 EmptyLang!20855))))

(declare-fun b!7790435 () Bool)

(assert (=> b!7790435 (= c!1434774 ((_ is Union!20855) r2!6217))))

(declare-fun e!4613170 () Regex!20855)

(assert (=> b!7790435 (= e!4613169 e!4613170)))

(declare-fun bm!722051 () Bool)

(declare-fun call!722055 () Regex!20855)

(assert (=> bm!722051 (= call!722055 (derivativeStep!6192 (ite c!1434774 (regOne!42223 r2!6217) (regOne!42222 r2!6217)) (h!80018 s!14292)))))

(declare-fun d!2345891 () Bool)

(declare-fun lt!2673524 () Regex!20855)

(assert (=> d!2345891 (validRegex!11269 lt!2673524)))

(assert (=> d!2345891 (= lt!2673524 e!4613173)))

(declare-fun c!1434772 () Bool)

(assert (=> d!2345891 (= c!1434772 (or ((_ is EmptyExpr!20855) r2!6217) ((_ is EmptyLang!20855) r2!6217)))))

(assert (=> d!2345891 (validRegex!11269 r2!6217)))

(assert (=> d!2345891 (= (derivativeStep!6192 r2!6217 (h!80018 s!14292)) lt!2673524)))

(declare-fun b!7790436 () Bool)

(assert (=> b!7790436 (= e!4613170 (Union!20855 call!722055 call!722053))))

(declare-fun b!7790437 () Bool)

(assert (=> b!7790437 (= e!4613172 (Union!20855 (Concat!29700 call!722055 (regTwo!42222 r2!6217)) call!722056))))

(declare-fun b!7790438 () Bool)

(assert (=> b!7790438 (= e!4613173 e!4613169)))

(declare-fun c!1434770 () Bool)

(assert (=> b!7790438 (= c!1434770 ((_ is ElementMatch!20855) r2!6217))))

(declare-fun b!7790439 () Bool)

(assert (=> b!7790439 (= e!4613170 e!4613171)))

(assert (=> b!7790439 (= c!1434773 ((_ is Star!20855) r2!6217))))

(assert (= (and d!2345891 c!1434772) b!7790431))

(assert (= (and d!2345891 (not c!1434772)) b!7790438))

(assert (= (and b!7790438 c!1434770) b!7790434))

(assert (= (and b!7790438 (not c!1434770)) b!7790435))

(assert (= (and b!7790435 c!1434774) b!7790436))

(assert (= (and b!7790435 (not c!1434774)) b!7790439))

(assert (= (and b!7790439 c!1434773) b!7790433))

(assert (= (and b!7790439 (not c!1434773)) b!7790432))

(assert (= (and b!7790432 c!1434771) b!7790437))

(assert (= (and b!7790432 (not c!1434771)) b!7790430))

(assert (= (or b!7790437 b!7790430) bm!722049))

(assert (= (or b!7790433 bm!722049) bm!722050))

(assert (= (or b!7790436 bm!722050) bm!722048))

(assert (= (or b!7790436 b!7790437) bm!722051))

(declare-fun m!8231748 () Bool)

(assert (=> bm!722048 m!8231748))

(declare-fun m!8231750 () Bool)

(assert (=> b!7790432 m!8231750))

(declare-fun m!8231752 () Bool)

(assert (=> bm!722051 m!8231752))

(declare-fun m!8231754 () Bool)

(assert (=> d!2345891 m!8231754))

(assert (=> d!2345891 m!8231684))

(assert (=> b!7790231 d!2345891))

(declare-fun c!1434784 () Bool)

(declare-fun bm!722056 () Bool)

(declare-fun call!722061 () Regex!20855)

(declare-fun c!1434781 () Bool)

(declare-fun c!1434783 () Bool)

(assert (=> bm!722056 (= call!722061 (derivativeStep!6192 (ite c!1434784 (regTwo!42223 r1!6279) (ite c!1434783 (reg!21184 r1!6279) (ite c!1434781 (regTwo!42222 r1!6279) (regOne!42222 r1!6279)))) (h!80018 s!14292)))))

(declare-fun b!7790450 () Bool)

(declare-fun e!4613182 () Regex!20855)

(declare-fun call!722064 () Regex!20855)

(assert (=> b!7790450 (= e!4613182 (Union!20855 (Concat!29700 call!722064 (regTwo!42222 r1!6279)) EmptyLang!20855))))

(declare-fun b!7790451 () Bool)

(declare-fun e!4613183 () Regex!20855)

(assert (=> b!7790451 (= e!4613183 EmptyLang!20855)))

(declare-fun b!7790452 () Bool)

(assert (=> b!7790452 (= c!1434781 (nullable!9239 (regOne!42222 r1!6279)))))

(declare-fun e!4613181 () Regex!20855)

(assert (=> b!7790452 (= e!4613181 e!4613182)))

(declare-fun bm!722057 () Bool)

(declare-fun call!722062 () Regex!20855)

(assert (=> bm!722057 (= call!722064 call!722062)))

(declare-fun b!7790453 () Bool)

(assert (=> b!7790453 (= e!4613181 (Concat!29700 call!722062 r1!6279))))

(declare-fun bm!722058 () Bool)

(assert (=> bm!722058 (= call!722062 call!722061)))

(declare-fun b!7790454 () Bool)

(declare-fun e!4613179 () Regex!20855)

(assert (=> b!7790454 (= e!4613179 (ite (= (h!80018 s!14292) (c!1434714 r1!6279)) EmptyExpr!20855 EmptyLang!20855))))

(declare-fun b!7790455 () Bool)

(assert (=> b!7790455 (= c!1434784 ((_ is Union!20855) r1!6279))))

(declare-fun e!4613180 () Regex!20855)

(assert (=> b!7790455 (= e!4613179 e!4613180)))

(declare-fun call!722063 () Regex!20855)

(declare-fun bm!722059 () Bool)

(assert (=> bm!722059 (= call!722063 (derivativeStep!6192 (ite c!1434784 (regOne!42223 r1!6279) (regOne!42222 r1!6279)) (h!80018 s!14292)))))

(declare-fun d!2345893 () Bool)

(declare-fun lt!2673526 () Regex!20855)

(assert (=> d!2345893 (validRegex!11269 lt!2673526)))

(assert (=> d!2345893 (= lt!2673526 e!4613183)))

(declare-fun c!1434782 () Bool)

(assert (=> d!2345893 (= c!1434782 (or ((_ is EmptyExpr!20855) r1!6279) ((_ is EmptyLang!20855) r1!6279)))))

(assert (=> d!2345893 (validRegex!11269 r1!6279)))

(assert (=> d!2345893 (= (derivativeStep!6192 r1!6279 (h!80018 s!14292)) lt!2673526)))

(declare-fun b!7790456 () Bool)

(assert (=> b!7790456 (= e!4613180 (Union!20855 call!722063 call!722061))))

(declare-fun b!7790457 () Bool)

(assert (=> b!7790457 (= e!4613182 (Union!20855 (Concat!29700 call!722063 (regTwo!42222 r1!6279)) call!722064))))

(declare-fun b!7790458 () Bool)

(assert (=> b!7790458 (= e!4613183 e!4613179)))

(declare-fun c!1434780 () Bool)

(assert (=> b!7790458 (= c!1434780 ((_ is ElementMatch!20855) r1!6279))))

(declare-fun b!7790459 () Bool)

(assert (=> b!7790459 (= e!4613180 e!4613181)))

(assert (=> b!7790459 (= c!1434783 ((_ is Star!20855) r1!6279))))

(assert (= (and d!2345893 c!1434782) b!7790451))

(assert (= (and d!2345893 (not c!1434782)) b!7790458))

(assert (= (and b!7790458 c!1434780) b!7790454))

(assert (= (and b!7790458 (not c!1434780)) b!7790455))

(assert (= (and b!7790455 c!1434784) b!7790456))

(assert (= (and b!7790455 (not c!1434784)) b!7790459))

(assert (= (and b!7790459 c!1434783) b!7790453))

(assert (= (and b!7790459 (not c!1434783)) b!7790452))

(assert (= (and b!7790452 c!1434781) b!7790457))

(assert (= (and b!7790452 (not c!1434781)) b!7790450))

(assert (= (or b!7790457 b!7790450) bm!722057))

(assert (= (or b!7790453 bm!722057) bm!722058))

(assert (= (or b!7790456 bm!722058) bm!722056))

(assert (= (or b!7790456 b!7790457) bm!722059))

(declare-fun m!8231764 () Bool)

(assert (=> bm!722056 m!8231764))

(declare-fun m!8231766 () Bool)

(assert (=> b!7790452 m!8231766))

(declare-fun m!8231768 () Bool)

(assert (=> bm!722059 m!8231768))

(declare-fun m!8231770 () Bool)

(assert (=> d!2345893 m!8231770))

(assert (=> d!2345893 m!8231680))

(assert (=> b!7790231 d!2345893))

(declare-fun b!7790470 () Bool)

(declare-fun e!4613195 () Bool)

(declare-fun e!4613192 () Bool)

(assert (=> b!7790470 (= e!4613195 e!4613192)))

(declare-fun res!3103883 () Bool)

(assert (=> b!7790470 (=> (not res!3103883) (not e!4613192))))

(declare-fun call!722070 () Bool)

(assert (=> b!7790470 (= res!3103883 call!722070)))

(declare-fun b!7790471 () Bool)

(declare-fun e!4613189 () Bool)

(declare-fun call!722069 () Bool)

(assert (=> b!7790471 (= e!4613189 call!722069)))

(declare-fun b!7790472 () Bool)

(declare-fun e!4613191 () Bool)

(declare-fun e!4613194 () Bool)

(assert (=> b!7790472 (= e!4613191 e!4613194)))

(declare-fun c!1434791 () Bool)

(assert (=> b!7790472 (= c!1434791 ((_ is Union!20855) r2!6217))))

(declare-fun b!7790473 () Bool)

(declare-fun e!4613190 () Bool)

(declare-fun call!722071 () Bool)

(assert (=> b!7790473 (= e!4613190 call!722071)))

(declare-fun d!2345897 () Bool)

(declare-fun res!3103885 () Bool)

(declare-fun e!4613193 () Bool)

(assert (=> d!2345897 (=> res!3103885 e!4613193)))

(assert (=> d!2345897 (= res!3103885 ((_ is ElementMatch!20855) r2!6217))))

(assert (=> d!2345897 (= (validRegex!11269 r2!6217) e!4613193)))

(declare-fun bm!722064 () Bool)

(declare-fun c!1434790 () Bool)

(assert (=> bm!722064 (= call!722069 (validRegex!11269 (ite c!1434790 (reg!21184 r2!6217) (ite c!1434791 (regOne!42223 r2!6217) (regOne!42222 r2!6217)))))))

(declare-fun b!7790474 () Bool)

(assert (=> b!7790474 (= e!4613192 call!722071)))

(declare-fun b!7790475 () Bool)

(declare-fun res!3103881 () Bool)

(assert (=> b!7790475 (=> res!3103881 e!4613195)))

(assert (=> b!7790475 (= res!3103881 (not ((_ is Concat!29700) r2!6217)))))

(assert (=> b!7790475 (= e!4613194 e!4613195)))

(declare-fun b!7790476 () Bool)

(assert (=> b!7790476 (= e!4613193 e!4613191)))

(assert (=> b!7790476 (= c!1434790 ((_ is Star!20855) r2!6217))))

(declare-fun b!7790477 () Bool)

(assert (=> b!7790477 (= e!4613191 e!4613189)))

(declare-fun res!3103882 () Bool)

(assert (=> b!7790477 (= res!3103882 (not (nullable!9239 (reg!21184 r2!6217))))))

(assert (=> b!7790477 (=> (not res!3103882) (not e!4613189))))

(declare-fun bm!722065 () Bool)

(assert (=> bm!722065 (= call!722071 (validRegex!11269 (ite c!1434791 (regTwo!42223 r2!6217) (regTwo!42222 r2!6217))))))

(declare-fun bm!722066 () Bool)

(assert (=> bm!722066 (= call!722070 call!722069)))

(declare-fun b!7790478 () Bool)

(declare-fun res!3103884 () Bool)

(assert (=> b!7790478 (=> (not res!3103884) (not e!4613190))))

(assert (=> b!7790478 (= res!3103884 call!722070)))

(assert (=> b!7790478 (= e!4613194 e!4613190)))

(assert (= (and d!2345897 (not res!3103885)) b!7790476))

(assert (= (and b!7790476 c!1434790) b!7790477))

(assert (= (and b!7790476 (not c!1434790)) b!7790472))

(assert (= (and b!7790477 res!3103882) b!7790471))

(assert (= (and b!7790472 c!1434791) b!7790478))

(assert (= (and b!7790472 (not c!1434791)) b!7790475))

(assert (= (and b!7790478 res!3103884) b!7790473))

(assert (= (and b!7790475 (not res!3103881)) b!7790470))

(assert (= (and b!7790470 res!3103883) b!7790474))

(assert (= (or b!7790478 b!7790470) bm!722066))

(assert (= (or b!7790473 b!7790474) bm!722065))

(assert (= (or b!7790471 bm!722066) bm!722064))

(declare-fun m!8231780 () Bool)

(assert (=> bm!722064 m!8231780))

(declare-fun m!8231782 () Bool)

(assert (=> b!7790477 m!8231782))

(declare-fun m!8231784 () Bool)

(assert (=> bm!722065 m!8231784))

(assert (=> b!7790226 d!2345897))

(declare-fun d!2345901 () Bool)

(declare-fun nullableFct!3622 (Regex!20855) Bool)

(assert (=> d!2345901 (= (nullable!9239 r1!6279) (nullableFct!3622 r1!6279))))

(declare-fun bs!1966335 () Bool)

(assert (= bs!1966335 d!2345901))

(declare-fun m!8231792 () Bool)

(assert (=> bs!1966335 m!8231792))

(assert (=> b!7790235 d!2345901))

(declare-fun b!7790497 () Bool)

(declare-fun e!4613216 () Bool)

(declare-fun e!4613213 () Bool)

(assert (=> b!7790497 (= e!4613216 e!4613213)))

(declare-fun res!3103898 () Bool)

(assert (=> b!7790497 (=> (not res!3103898) (not e!4613213))))

(declare-fun call!722079 () Bool)

(assert (=> b!7790497 (= res!3103898 call!722079)))

(declare-fun b!7790498 () Bool)

(declare-fun e!4613210 () Bool)

(declare-fun call!722078 () Bool)

(assert (=> b!7790498 (= e!4613210 call!722078)))

(declare-fun b!7790499 () Bool)

(declare-fun e!4613212 () Bool)

(declare-fun e!4613215 () Bool)

(assert (=> b!7790499 (= e!4613212 e!4613215)))

(declare-fun c!1434797 () Bool)

(assert (=> b!7790499 (= c!1434797 ((_ is Union!20855) r1!6279))))

(declare-fun b!7790500 () Bool)

(declare-fun e!4613211 () Bool)

(declare-fun call!722080 () Bool)

(assert (=> b!7790500 (= e!4613211 call!722080)))

(declare-fun d!2345907 () Bool)

(declare-fun res!3103900 () Bool)

(declare-fun e!4613214 () Bool)

(assert (=> d!2345907 (=> res!3103900 e!4613214)))

(assert (=> d!2345907 (= res!3103900 ((_ is ElementMatch!20855) r1!6279))))

(assert (=> d!2345907 (= (validRegex!11269 r1!6279) e!4613214)))

(declare-fun bm!722073 () Bool)

(declare-fun c!1434796 () Bool)

(assert (=> bm!722073 (= call!722078 (validRegex!11269 (ite c!1434796 (reg!21184 r1!6279) (ite c!1434797 (regOne!42223 r1!6279) (regOne!42222 r1!6279)))))))

(declare-fun b!7790501 () Bool)

(assert (=> b!7790501 (= e!4613213 call!722080)))

(declare-fun b!7790502 () Bool)

(declare-fun res!3103896 () Bool)

(assert (=> b!7790502 (=> res!3103896 e!4613216)))

(assert (=> b!7790502 (= res!3103896 (not ((_ is Concat!29700) r1!6279)))))

(assert (=> b!7790502 (= e!4613215 e!4613216)))

(declare-fun b!7790503 () Bool)

(assert (=> b!7790503 (= e!4613214 e!4613212)))

(assert (=> b!7790503 (= c!1434796 ((_ is Star!20855) r1!6279))))

(declare-fun b!7790504 () Bool)

(assert (=> b!7790504 (= e!4613212 e!4613210)))

(declare-fun res!3103897 () Bool)

(assert (=> b!7790504 (= res!3103897 (not (nullable!9239 (reg!21184 r1!6279))))))

(assert (=> b!7790504 (=> (not res!3103897) (not e!4613210))))

(declare-fun bm!722074 () Bool)

(assert (=> bm!722074 (= call!722080 (validRegex!11269 (ite c!1434797 (regTwo!42223 r1!6279) (regTwo!42222 r1!6279))))))

(declare-fun bm!722075 () Bool)

(assert (=> bm!722075 (= call!722079 call!722078)))

(declare-fun b!7790505 () Bool)

(declare-fun res!3103899 () Bool)

(assert (=> b!7790505 (=> (not res!3103899) (not e!4613211))))

(assert (=> b!7790505 (= res!3103899 call!722079)))

(assert (=> b!7790505 (= e!4613215 e!4613211)))

(assert (= (and d!2345907 (not res!3103900)) b!7790503))

(assert (= (and b!7790503 c!1434796) b!7790504))

(assert (= (and b!7790503 (not c!1434796)) b!7790499))

(assert (= (and b!7790504 res!3103897) b!7790498))

(assert (= (and b!7790499 c!1434797) b!7790505))

(assert (= (and b!7790499 (not c!1434797)) b!7790502))

(assert (= (and b!7790505 res!3103899) b!7790500))

(assert (= (and b!7790502 (not res!3103896)) b!7790497))

(assert (= (and b!7790497 res!3103898) b!7790501))

(assert (= (or b!7790505 b!7790497) bm!722075))

(assert (= (or b!7790500 b!7790501) bm!722074))

(assert (= (or b!7790498 bm!722075) bm!722073))

(declare-fun m!8231802 () Bool)

(assert (=> bm!722073 m!8231802))

(declare-fun m!8231804 () Bool)

(assert (=> b!7790504 m!8231804))

(declare-fun m!8231806 () Bool)

(assert (=> bm!722074 m!8231806))

(assert (=> start!740842 d!2345907))

(declare-fun b!7790520 () Bool)

(declare-fun e!4613230 () Bool)

(declare-fun e!4613227 () Bool)

(assert (=> b!7790520 (= e!4613230 e!4613227)))

(declare-fun res!3103911 () Bool)

(assert (=> b!7790520 (=> (not res!3103911) (not e!4613227))))

(declare-fun call!722083 () Bool)

(assert (=> b!7790520 (= res!3103911 call!722083)))

(declare-fun b!7790521 () Bool)

(declare-fun e!4613224 () Bool)

(declare-fun call!722082 () Bool)

(assert (=> b!7790521 (= e!4613224 call!722082)))

(declare-fun b!7790522 () Bool)

(declare-fun e!4613226 () Bool)

(declare-fun e!4613229 () Bool)

(assert (=> b!7790522 (= e!4613226 e!4613229)))

(declare-fun c!1434802 () Bool)

(assert (=> b!7790522 (= c!1434802 ((_ is Union!20855) lt!2673509))))

(declare-fun b!7790523 () Bool)

(declare-fun e!4613225 () Bool)

(declare-fun call!722084 () Bool)

(assert (=> b!7790523 (= e!4613225 call!722084)))

(declare-fun d!2345911 () Bool)

(declare-fun res!3103913 () Bool)

(declare-fun e!4613228 () Bool)

(assert (=> d!2345911 (=> res!3103913 e!4613228)))

(assert (=> d!2345911 (= res!3103913 ((_ is ElementMatch!20855) lt!2673509))))

(assert (=> d!2345911 (= (validRegex!11269 lt!2673509) e!4613228)))

(declare-fun bm!722077 () Bool)

(declare-fun c!1434801 () Bool)

(assert (=> bm!722077 (= call!722082 (validRegex!11269 (ite c!1434801 (reg!21184 lt!2673509) (ite c!1434802 (regOne!42223 lt!2673509) (regOne!42222 lt!2673509)))))))

(declare-fun b!7790524 () Bool)

(assert (=> b!7790524 (= e!4613227 call!722084)))

(declare-fun b!7790525 () Bool)

(declare-fun res!3103909 () Bool)

(assert (=> b!7790525 (=> res!3103909 e!4613230)))

(assert (=> b!7790525 (= res!3103909 (not ((_ is Concat!29700) lt!2673509)))))

(assert (=> b!7790525 (= e!4613229 e!4613230)))

(declare-fun b!7790526 () Bool)

(assert (=> b!7790526 (= e!4613228 e!4613226)))

(assert (=> b!7790526 (= c!1434801 ((_ is Star!20855) lt!2673509))))

(declare-fun b!7790527 () Bool)

(assert (=> b!7790527 (= e!4613226 e!4613224)))

(declare-fun res!3103910 () Bool)

(assert (=> b!7790527 (= res!3103910 (not (nullable!9239 (reg!21184 lt!2673509))))))

(assert (=> b!7790527 (=> (not res!3103910) (not e!4613224))))

(declare-fun bm!722078 () Bool)

(assert (=> bm!722078 (= call!722084 (validRegex!11269 (ite c!1434802 (regTwo!42223 lt!2673509) (regTwo!42222 lt!2673509))))))

(declare-fun bm!722079 () Bool)

(assert (=> bm!722079 (= call!722083 call!722082)))

(declare-fun b!7790528 () Bool)

(declare-fun res!3103912 () Bool)

(assert (=> b!7790528 (=> (not res!3103912) (not e!4613225))))

(assert (=> b!7790528 (= res!3103912 call!722083)))

(assert (=> b!7790528 (= e!4613229 e!4613225)))

(assert (= (and d!2345911 (not res!3103913)) b!7790526))

(assert (= (and b!7790526 c!1434801) b!7790527))

(assert (= (and b!7790526 (not c!1434801)) b!7790522))

(assert (= (and b!7790527 res!3103910) b!7790521))

(assert (= (and b!7790522 c!1434802) b!7790528))

(assert (= (and b!7790522 (not c!1434802)) b!7790525))

(assert (= (and b!7790528 res!3103912) b!7790523))

(assert (= (and b!7790525 (not res!3103909)) b!7790520))

(assert (= (and b!7790520 res!3103911) b!7790524))

(assert (= (or b!7790528 b!7790520) bm!722079))

(assert (= (or b!7790523 b!7790524) bm!722078))

(assert (= (or b!7790521 bm!722079) bm!722077))

(declare-fun m!8231812 () Bool)

(assert (=> bm!722077 m!8231812))

(declare-fun m!8231818 () Bool)

(assert (=> b!7790527 m!8231818))

(declare-fun m!8231822 () Bool)

(assert (=> bm!722078 m!8231822))

(assert (=> b!7790228 d!2345911))

(declare-fun b!7790529 () Bool)

(declare-fun e!4613235 () Bool)

(assert (=> b!7790529 (= e!4613235 (not (= (head!15934 s!14292) (c!1434714 lt!2673511))))))

(declare-fun b!7790530 () Bool)

(declare-fun e!4613233 () Bool)

(declare-fun lt!2673529 () Bool)

(declare-fun call!722085 () Bool)

(assert (=> b!7790530 (= e!4613233 (= lt!2673529 call!722085))))

(declare-fun b!7790531 () Bool)

(declare-fun e!4613231 () Bool)

(declare-fun e!4613237 () Bool)

(assert (=> b!7790531 (= e!4613231 e!4613237)))

(declare-fun res!3103918 () Bool)

(assert (=> b!7790531 (=> (not res!3103918) (not e!4613237))))

(assert (=> b!7790531 (= res!3103918 (not lt!2673529))))

(declare-fun d!2345913 () Bool)

(assert (=> d!2345913 e!4613233))

(declare-fun c!1434805 () Bool)

(assert (=> d!2345913 (= c!1434805 ((_ is EmptyExpr!20855) lt!2673511))))

(declare-fun e!4613236 () Bool)

(assert (=> d!2345913 (= lt!2673529 e!4613236)))

(declare-fun c!1434803 () Bool)

(assert (=> d!2345913 (= c!1434803 (isEmpty!42209 s!14292))))

(assert (=> d!2345913 (validRegex!11269 lt!2673511)))

(assert (=> d!2345913 (= (matchR!10315 lt!2673511 s!14292) lt!2673529)))

(declare-fun b!7790532 () Bool)

(declare-fun res!3103917 () Bool)

(assert (=> b!7790532 (=> res!3103917 e!4613231)))

(assert (=> b!7790532 (= res!3103917 (not ((_ is ElementMatch!20855) lt!2673511)))))

(declare-fun e!4613232 () Bool)

(assert (=> b!7790532 (= e!4613232 e!4613231)))

(declare-fun b!7790533 () Bool)

(assert (=> b!7790533 (= e!4613236 (nullable!9239 lt!2673511))))

(declare-fun b!7790534 () Bool)

(assert (=> b!7790534 (= e!4613236 (matchR!10315 (derivativeStep!6192 lt!2673511 (head!15934 s!14292)) (tail!15475 s!14292)))))

(declare-fun b!7790535 () Bool)

(declare-fun res!3103915 () Bool)

(declare-fun e!4613234 () Bool)

(assert (=> b!7790535 (=> (not res!3103915) (not e!4613234))))

(assert (=> b!7790535 (= res!3103915 (not call!722085))))

(declare-fun b!7790536 () Bool)

(assert (=> b!7790536 (= e!4613232 (not lt!2673529))))

(declare-fun b!7790537 () Bool)

(assert (=> b!7790537 (= e!4613233 e!4613232)))

(declare-fun c!1434804 () Bool)

(assert (=> b!7790537 (= c!1434804 ((_ is EmptyLang!20855) lt!2673511))))

(declare-fun b!7790538 () Bool)

(declare-fun res!3103921 () Bool)

(assert (=> b!7790538 (=> res!3103921 e!4613231)))

(assert (=> b!7790538 (= res!3103921 e!4613234)))

(declare-fun res!3103914 () Bool)

(assert (=> b!7790538 (=> (not res!3103914) (not e!4613234))))

(assert (=> b!7790538 (= res!3103914 lt!2673529)))

(declare-fun bm!722080 () Bool)

(assert (=> bm!722080 (= call!722085 (isEmpty!42209 s!14292))))

(declare-fun b!7790539 () Bool)

(declare-fun res!3103916 () Bool)

(assert (=> b!7790539 (=> (not res!3103916) (not e!4613234))))

(assert (=> b!7790539 (= res!3103916 (isEmpty!42209 (tail!15475 s!14292)))))

(declare-fun b!7790540 () Bool)

(assert (=> b!7790540 (= e!4613234 (= (head!15934 s!14292) (c!1434714 lt!2673511)))))

(declare-fun b!7790541 () Bool)

(assert (=> b!7790541 (= e!4613237 e!4613235)))

(declare-fun res!3103920 () Bool)

(assert (=> b!7790541 (=> res!3103920 e!4613235)))

(assert (=> b!7790541 (= res!3103920 call!722085)))

(declare-fun b!7790542 () Bool)

(declare-fun res!3103919 () Bool)

(assert (=> b!7790542 (=> res!3103919 e!4613235)))

(assert (=> b!7790542 (= res!3103919 (not (isEmpty!42209 (tail!15475 s!14292))))))

(assert (= (and d!2345913 c!1434803) b!7790533))

(assert (= (and d!2345913 (not c!1434803)) b!7790534))

(assert (= (and d!2345913 c!1434805) b!7790530))

(assert (= (and d!2345913 (not c!1434805)) b!7790537))

(assert (= (and b!7790537 c!1434804) b!7790536))

(assert (= (and b!7790537 (not c!1434804)) b!7790532))

(assert (= (and b!7790532 (not res!3103917)) b!7790538))

(assert (= (and b!7790538 res!3103914) b!7790535))

(assert (= (and b!7790535 res!3103915) b!7790539))

(assert (= (and b!7790539 res!3103916) b!7790540))

(assert (= (and b!7790538 (not res!3103921)) b!7790531))

(assert (= (and b!7790531 res!3103918) b!7790541))

(assert (= (and b!7790541 (not res!3103920)) b!7790542))

(assert (= (and b!7790542 (not res!3103919)) b!7790529))

(assert (= (or b!7790530 b!7790535 b!7790541) bm!722080))

(declare-fun m!8231838 () Bool)

(assert (=> b!7790533 m!8231838))

(declare-fun m!8231840 () Bool)

(assert (=> b!7790542 m!8231840))

(assert (=> b!7790542 m!8231840))

(declare-fun m!8231842 () Bool)

(assert (=> b!7790542 m!8231842))

(assert (=> b!7790539 m!8231840))

(assert (=> b!7790539 m!8231840))

(assert (=> b!7790539 m!8231842))

(declare-fun m!8231844 () Bool)

(assert (=> b!7790529 m!8231844))

(assert (=> b!7790540 m!8231844))

(declare-fun m!8231846 () Bool)

(assert (=> bm!722080 m!8231846))

(assert (=> b!7790534 m!8231844))

(assert (=> b!7790534 m!8231844))

(declare-fun m!8231848 () Bool)

(assert (=> b!7790534 m!8231848))

(assert (=> b!7790534 m!8231840))

(assert (=> b!7790534 m!8231848))

(assert (=> b!7790534 m!8231840))

(declare-fun m!8231850 () Bool)

(assert (=> b!7790534 m!8231850))

(assert (=> d!2345913 m!8231846))

(assert (=> d!2345913 m!8231746))

(assert (=> b!7790229 d!2345913))

(declare-fun b!7790582 () Bool)

(declare-fun e!4613254 () Bool)

(assert (=> b!7790582 (= e!4613254 tp_is_empty!52065)))

(declare-fun b!7790584 () Bool)

(declare-fun tp!2293251 () Bool)

(assert (=> b!7790584 (= e!4613254 tp!2293251)))

(declare-fun b!7790585 () Bool)

(declare-fun tp!2293254 () Bool)

(declare-fun tp!2293250 () Bool)

(assert (=> b!7790585 (= e!4613254 (and tp!2293254 tp!2293250))))

(assert (=> b!7790232 (= tp!2293227 e!4613254)))

(declare-fun b!7790583 () Bool)

(declare-fun tp!2293253 () Bool)

(declare-fun tp!2293252 () Bool)

(assert (=> b!7790583 (= e!4613254 (and tp!2293253 tp!2293252))))

(assert (= (and b!7790232 ((_ is ElementMatch!20855) (regOne!42222 r1!6279))) b!7790582))

(assert (= (and b!7790232 ((_ is Concat!29700) (regOne!42222 r1!6279))) b!7790583))

(assert (= (and b!7790232 ((_ is Star!20855) (regOne!42222 r1!6279))) b!7790584))

(assert (= (and b!7790232 ((_ is Union!20855) (regOne!42222 r1!6279))) b!7790585))

(declare-fun b!7790590 () Bool)

(declare-fun e!4613256 () Bool)

(assert (=> b!7790590 (= e!4613256 tp_is_empty!52065)))

(declare-fun b!7790594 () Bool)

(declare-fun tp!2293263 () Bool)

(assert (=> b!7790594 (= e!4613256 tp!2293263)))

(declare-fun b!7790596 () Bool)

(declare-fun tp!2293268 () Bool)

(declare-fun tp!2293260 () Bool)

(assert (=> b!7790596 (= e!4613256 (and tp!2293268 tp!2293260))))

(assert (=> b!7790232 (= tp!2293221 e!4613256)))

(declare-fun b!7790592 () Bool)

(declare-fun tp!2293266 () Bool)

(declare-fun tp!2293265 () Bool)

(assert (=> b!7790592 (= e!4613256 (and tp!2293266 tp!2293265))))

(assert (= (and b!7790232 ((_ is ElementMatch!20855) (regTwo!42222 r1!6279))) b!7790590))

(assert (= (and b!7790232 ((_ is Concat!29700) (regTwo!42222 r1!6279))) b!7790592))

(assert (= (and b!7790232 ((_ is Star!20855) (regTwo!42222 r1!6279))) b!7790594))

(assert (= (and b!7790232 ((_ is Union!20855) (regTwo!42222 r1!6279))) b!7790596))

(declare-fun b!7790602 () Bool)

(declare-fun e!4613259 () Bool)

(assert (=> b!7790602 (= e!4613259 tp_is_empty!52065)))

(declare-fun b!7790604 () Bool)

(declare-fun tp!2293276 () Bool)

(assert (=> b!7790604 (= e!4613259 tp!2293276)))

(declare-fun b!7790605 () Bool)

(declare-fun tp!2293279 () Bool)

(declare-fun tp!2293275 () Bool)

(assert (=> b!7790605 (= e!4613259 (and tp!2293279 tp!2293275))))

(assert (=> b!7790238 (= tp!2293229 e!4613259)))

(declare-fun b!7790603 () Bool)

(declare-fun tp!2293278 () Bool)

(declare-fun tp!2293277 () Bool)

(assert (=> b!7790603 (= e!4613259 (and tp!2293278 tp!2293277))))

(assert (= (and b!7790238 ((_ is ElementMatch!20855) (reg!21184 r1!6279))) b!7790602))

(assert (= (and b!7790238 ((_ is Concat!29700) (reg!21184 r1!6279))) b!7790603))

(assert (= (and b!7790238 ((_ is Star!20855) (reg!21184 r1!6279))) b!7790604))

(assert (= (and b!7790238 ((_ is Union!20855) (reg!21184 r1!6279))) b!7790605))

(declare-fun b!7790622 () Bool)

(declare-fun e!4613265 () Bool)

(declare-fun tp!2293297 () Bool)

(assert (=> b!7790622 (= e!4613265 (and tp_is_empty!52065 tp!2293297))))

(assert (=> b!7790236 (= tp!2293226 e!4613265)))

(assert (= (and b!7790236 ((_ is Cons!73570) (t!388429 s!14292))) b!7790622))

(declare-fun b!7790627 () Bool)

(declare-fun e!4613267 () Bool)

(assert (=> b!7790627 (= e!4613267 tp_is_empty!52065)))

(declare-fun b!7790629 () Bool)

(declare-fun tp!2293304 () Bool)

(assert (=> b!7790629 (= e!4613267 tp!2293304)))

(declare-fun b!7790630 () Bool)

(declare-fun tp!2293307 () Bool)

(declare-fun tp!2293303 () Bool)

(assert (=> b!7790630 (= e!4613267 (and tp!2293307 tp!2293303))))

(assert (=> b!7790237 (= tp!2293222 e!4613267)))

(declare-fun b!7790628 () Bool)

(declare-fun tp!2293306 () Bool)

(declare-fun tp!2293305 () Bool)

(assert (=> b!7790628 (= e!4613267 (and tp!2293306 tp!2293305))))

(assert (= (and b!7790237 ((_ is ElementMatch!20855) (reg!21184 r2!6217))) b!7790627))

(assert (= (and b!7790237 ((_ is Concat!29700) (reg!21184 r2!6217))) b!7790628))

(assert (= (and b!7790237 ((_ is Star!20855) (reg!21184 r2!6217))) b!7790629))

(assert (= (and b!7790237 ((_ is Union!20855) (reg!21184 r2!6217))) b!7790630))

(declare-fun b!7790635 () Bool)

(declare-fun e!4613269 () Bool)

(assert (=> b!7790635 (= e!4613269 tp_is_empty!52065)))

(declare-fun b!7790637 () Bool)

(declare-fun tp!2293314 () Bool)

(assert (=> b!7790637 (= e!4613269 tp!2293314)))

(declare-fun b!7790638 () Bool)

(declare-fun tp!2293317 () Bool)

(declare-fun tp!2293313 () Bool)

(assert (=> b!7790638 (= e!4613269 (and tp!2293317 tp!2293313))))

(assert (=> b!7790240 (= tp!2293220 e!4613269)))

(declare-fun b!7790636 () Bool)

(declare-fun tp!2293316 () Bool)

(declare-fun tp!2293315 () Bool)

(assert (=> b!7790636 (= e!4613269 (and tp!2293316 tp!2293315))))

(assert (= (and b!7790240 ((_ is ElementMatch!20855) (regOne!42223 r1!6279))) b!7790635))

(assert (= (and b!7790240 ((_ is Concat!29700) (regOne!42223 r1!6279))) b!7790636))

(assert (= (and b!7790240 ((_ is Star!20855) (regOne!42223 r1!6279))) b!7790637))

(assert (= (and b!7790240 ((_ is Union!20855) (regOne!42223 r1!6279))) b!7790638))

(declare-fun b!7790643 () Bool)

(declare-fun e!4613272 () Bool)

(assert (=> b!7790643 (= e!4613272 tp_is_empty!52065)))

(declare-fun b!7790645 () Bool)

(declare-fun tp!2293321 () Bool)

(assert (=> b!7790645 (= e!4613272 tp!2293321)))

(declare-fun b!7790646 () Bool)

(declare-fun tp!2293324 () Bool)

(declare-fun tp!2293320 () Bool)

(assert (=> b!7790646 (= e!4613272 (and tp!2293324 tp!2293320))))

(assert (=> b!7790240 (= tp!2293223 e!4613272)))

(declare-fun b!7790644 () Bool)

(declare-fun tp!2293323 () Bool)

(declare-fun tp!2293322 () Bool)

(assert (=> b!7790644 (= e!4613272 (and tp!2293323 tp!2293322))))

(assert (= (and b!7790240 ((_ is ElementMatch!20855) (regTwo!42223 r1!6279))) b!7790643))

(assert (= (and b!7790240 ((_ is Concat!29700) (regTwo!42223 r1!6279))) b!7790644))

(assert (= (and b!7790240 ((_ is Star!20855) (regTwo!42223 r1!6279))) b!7790645))

(assert (= (and b!7790240 ((_ is Union!20855) (regTwo!42223 r1!6279))) b!7790646))

(declare-fun b!7790648 () Bool)

(declare-fun e!4613274 () Bool)

(assert (=> b!7790648 (= e!4613274 tp_is_empty!52065)))

(declare-fun b!7790650 () Bool)

(declare-fun tp!2293327 () Bool)

(assert (=> b!7790650 (= e!4613274 tp!2293327)))

(declare-fun b!7790651 () Bool)

(declare-fun tp!2293330 () Bool)

(declare-fun tp!2293326 () Bool)

(assert (=> b!7790651 (= e!4613274 (and tp!2293330 tp!2293326))))

(assert (=> b!7790241 (= tp!2293228 e!4613274)))

(declare-fun b!7790649 () Bool)

(declare-fun tp!2293329 () Bool)

(declare-fun tp!2293328 () Bool)

(assert (=> b!7790649 (= e!4613274 (and tp!2293329 tp!2293328))))

(assert (= (and b!7790241 ((_ is ElementMatch!20855) (regOne!42223 r2!6217))) b!7790648))

(assert (= (and b!7790241 ((_ is Concat!29700) (regOne!42223 r2!6217))) b!7790649))

(assert (= (and b!7790241 ((_ is Star!20855) (regOne!42223 r2!6217))) b!7790650))

(assert (= (and b!7790241 ((_ is Union!20855) (regOne!42223 r2!6217))) b!7790651))

(declare-fun b!7790656 () Bool)

(declare-fun e!4613276 () Bool)

(assert (=> b!7790656 (= e!4613276 tp_is_empty!52065)))

(declare-fun b!7790658 () Bool)

(declare-fun tp!2293337 () Bool)

(assert (=> b!7790658 (= e!4613276 tp!2293337)))

(declare-fun b!7790659 () Bool)

(declare-fun tp!2293340 () Bool)

(declare-fun tp!2293336 () Bool)

(assert (=> b!7790659 (= e!4613276 (and tp!2293340 tp!2293336))))

(assert (=> b!7790241 (= tp!2293224 e!4613276)))

(declare-fun b!7790657 () Bool)

(declare-fun tp!2293339 () Bool)

(declare-fun tp!2293338 () Bool)

(assert (=> b!7790657 (= e!4613276 (and tp!2293339 tp!2293338))))

(assert (= (and b!7790241 ((_ is ElementMatch!20855) (regTwo!42223 r2!6217))) b!7790656))

(assert (= (and b!7790241 ((_ is Concat!29700) (regTwo!42223 r2!6217))) b!7790657))

(assert (= (and b!7790241 ((_ is Star!20855) (regTwo!42223 r2!6217))) b!7790658))

(assert (= (and b!7790241 ((_ is Union!20855) (regTwo!42223 r2!6217))) b!7790659))

(declare-fun b!7790664 () Bool)

(declare-fun e!4613278 () Bool)

(assert (=> b!7790664 (= e!4613278 tp_is_empty!52065)))

(declare-fun b!7790666 () Bool)

(declare-fun tp!2293347 () Bool)

(assert (=> b!7790666 (= e!4613278 tp!2293347)))

(declare-fun b!7790667 () Bool)

(declare-fun tp!2293350 () Bool)

(declare-fun tp!2293346 () Bool)

(assert (=> b!7790667 (= e!4613278 (and tp!2293350 tp!2293346))))

(assert (=> b!7790225 (= tp!2293225 e!4613278)))

(declare-fun b!7790665 () Bool)

(declare-fun tp!2293349 () Bool)

(declare-fun tp!2293348 () Bool)

(assert (=> b!7790665 (= e!4613278 (and tp!2293349 tp!2293348))))

(assert (= (and b!7790225 ((_ is ElementMatch!20855) (regOne!42222 r2!6217))) b!7790664))

(assert (= (and b!7790225 ((_ is Concat!29700) (regOne!42222 r2!6217))) b!7790665))

(assert (= (and b!7790225 ((_ is Star!20855) (regOne!42222 r2!6217))) b!7790666))

(assert (= (and b!7790225 ((_ is Union!20855) (regOne!42222 r2!6217))) b!7790667))

(declare-fun b!7790668 () Bool)

(declare-fun e!4613279 () Bool)

(assert (=> b!7790668 (= e!4613279 tp_is_empty!52065)))

(declare-fun b!7790670 () Bool)

(declare-fun tp!2293352 () Bool)

(assert (=> b!7790670 (= e!4613279 tp!2293352)))

(declare-fun b!7790671 () Bool)

(declare-fun tp!2293355 () Bool)

(declare-fun tp!2293351 () Bool)

(assert (=> b!7790671 (= e!4613279 (and tp!2293355 tp!2293351))))

(assert (=> b!7790225 (= tp!2293219 e!4613279)))

(declare-fun b!7790669 () Bool)

(declare-fun tp!2293354 () Bool)

(declare-fun tp!2293353 () Bool)

(assert (=> b!7790669 (= e!4613279 (and tp!2293354 tp!2293353))))

(assert (= (and b!7790225 ((_ is ElementMatch!20855) (regTwo!42222 r2!6217))) b!7790668))

(assert (= (and b!7790225 ((_ is Concat!29700) (regTwo!42222 r2!6217))) b!7790669))

(assert (= (and b!7790225 ((_ is Star!20855) (regTwo!42222 r2!6217))) b!7790670))

(assert (= (and b!7790225 ((_ is Union!20855) (regTwo!42222 r2!6217))) b!7790671))

(check-sat (not b!7790629) (not b!7790504) (not d!2345887) (not bm!722010) (not b!7790432) (not b!7790534) (not b!7790477) (not b!7790671) (not b!7790585) (not b!7790658) (not bm!722074) (not b!7790542) (not bm!722064) (not bm!722022) (not b!7790622) (not bm!722080) (not b!7790650) (not d!2345913) (not b!7790644) (not b!7790605) (not b!7790649) (not b!7790670) (not d!2345901) (not b!7790637) tp_is_empty!52065 (not b!7790630) (not b!7790362) (not bm!722047) (not b!7790527) (not bm!722065) (not b!7790636) (not b!7790646) (not bm!722011) (not b!7790267) (not b!7790540) (not bm!722056) (not b!7790657) (not b!7790603) (not d!2345891) (not b!7790604) (not b!7790594) (not b!7790592) (not b!7790638) (not bm!722051) (not b!7790539) (not bm!722078) (not b!7790596) (not b!7790529) (not bm!722073) (not bm!722059) (not b!7790533) (not b!7790645) (not b!7790452) (not b!7790583) (not b!7790659) (not b!7790422) (not b!7790669) (not b!7790367) (not d!2345893) (not bm!722077) (not b!7790357) (not b!7790667) (not bm!722048) (not b!7790666) (not b!7790651) (not b!7790370) (not b!7790361) (not b!7790368) (not b!7790584) (not b!7790665) (not bm!722044) (not d!2345883) (not b!7790628))
(check-sat)
