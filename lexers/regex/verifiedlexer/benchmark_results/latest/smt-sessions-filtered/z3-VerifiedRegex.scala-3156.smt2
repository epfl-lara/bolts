; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!185286 () Bool)

(assert start!185286)

(declare-fun b!1856070 () Bool)

(declare-fun e!1185705 () Bool)

(declare-fun tp!527983 () Bool)

(declare-fun tp!527987 () Bool)

(assert (=> b!1856070 (= e!1185705 (and tp!527983 tp!527987))))

(declare-fun b!1856072 () Bool)

(declare-fun tp!527984 () Bool)

(assert (=> b!1856072 (= e!1185705 tp!527984)))

(declare-fun b!1856073 () Bool)

(declare-fun res!831998 () Bool)

(declare-fun e!1185708 () Bool)

(assert (=> b!1856073 (=> (not res!831998) (not e!1185708))))

(declare-datatypes ((C!10260 0))(
  ( (C!10261 (val!5866 Int)) )
))
(declare-datatypes ((List!20669 0))(
  ( (Nil!20591) (Cons!20591 (h!25992 C!10260) (t!172536 List!20669)) )
))
(declare-fun prefix!1439 () List!20669)

(declare-fun s!13412 () List!20669)

(declare-fun isPrefix!1905 (List!20669 List!20669) Bool)

(assert (=> b!1856073 (= res!831998 (isPrefix!1905 prefix!1439 s!13412))))

(declare-fun b!1856074 () Bool)

(declare-fun e!1185707 () Bool)

(declare-fun tp_is_empty!8531 () Bool)

(declare-fun tp!527986 () Bool)

(assert (=> b!1856074 (= e!1185707 (and tp_is_empty!8531 tp!527986))))

(declare-fun b!1856075 () Bool)

(declare-fun res!831997 () Bool)

(assert (=> b!1856075 (=> (not res!831997) (not e!1185708))))

(declare-datatypes ((Regex!5055 0))(
  ( (ElementMatch!5055 (c!302391 C!10260)) (Concat!8854 (regOne!10622 Regex!5055) (regTwo!10622 Regex!5055)) (EmptyExpr!5055) (Star!5055 (reg!5384 Regex!5055)) (EmptyLang!5055) (Union!5055 (regOne!10623 Regex!5055) (regTwo!10623 Regex!5055)) )
))
(declare-fun r!19073 () Regex!5055)

(declare-fun matchR!2466 (Regex!5055 List!20669) Bool)

(assert (=> b!1856075 (= res!831997 (matchR!2466 r!19073 s!13412))))

(declare-fun b!1856076 () Bool)

(assert (=> b!1856076 (= e!1185705 tp_is_empty!8531)))

(declare-fun b!1856071 () Bool)

(declare-fun tp!527988 () Bool)

(declare-fun tp!527982 () Bool)

(assert (=> b!1856071 (= e!1185705 (and tp!527988 tp!527982))))

(declare-fun res!831999 () Bool)

(assert (=> start!185286 (=> (not res!831999) (not e!1185708))))

(declare-fun validRegex!2077 (Regex!5055) Bool)

(assert (=> start!185286 (= res!831999 (validRegex!2077 r!19073))))

(assert (=> start!185286 e!1185708))

(assert (=> start!185286 e!1185705))

(assert (=> start!185286 e!1185707))

(declare-fun e!1185706 () Bool)

(assert (=> start!185286 e!1185706))

(declare-fun b!1856077 () Bool)

(declare-fun size!16264 (List!20669) Int)

(assert (=> b!1856077 (= e!1185708 (< (size!16264 prefix!1439) 0))))

(declare-fun b!1856078 () Bool)

(declare-fun tp!527985 () Bool)

(assert (=> b!1856078 (= e!1185706 (and tp_is_empty!8531 tp!527985))))

(assert (= (and start!185286 res!831999) b!1856073))

(assert (= (and b!1856073 res!831998) b!1856075))

(assert (= (and b!1856075 res!831997) b!1856077))

(get-info :version)

(assert (= (and start!185286 ((_ is ElementMatch!5055) r!19073)) b!1856076))

(assert (= (and start!185286 ((_ is Concat!8854) r!19073)) b!1856071))

(assert (= (and start!185286 ((_ is Star!5055) r!19073)) b!1856072))

(assert (= (and start!185286 ((_ is Union!5055) r!19073)) b!1856070))

(assert (= (and start!185286 ((_ is Cons!20591) prefix!1439)) b!1856074))

(assert (= (and start!185286 ((_ is Cons!20591) s!13412)) b!1856078))

(declare-fun m!2281327 () Bool)

(assert (=> b!1856073 m!2281327))

(declare-fun m!2281329 () Bool)

(assert (=> b!1856075 m!2281329))

(declare-fun m!2281331 () Bool)

(assert (=> start!185286 m!2281331))

(declare-fun m!2281333 () Bool)

(assert (=> b!1856077 m!2281333))

(check-sat (not b!1856077) (not start!185286) (not b!1856073) (not b!1856075) (not b!1856078) (not b!1856070) tp_is_empty!8531 (not b!1856072) (not b!1856074) (not b!1856071))
(check-sat)
(get-model)

(declare-fun b!1856143 () Bool)

(declare-fun e!1185745 () Bool)

(declare-fun lt!716923 () Bool)

(assert (=> b!1856143 (= e!1185745 (not lt!716923))))

(declare-fun b!1856144 () Bool)

(declare-fun res!832035 () Bool)

(declare-fun e!1185749 () Bool)

(assert (=> b!1856144 (=> res!832035 e!1185749)))

(assert (=> b!1856144 (= res!832035 (not ((_ is ElementMatch!5055) r!19073)))))

(assert (=> b!1856144 (= e!1185745 e!1185749)))

(declare-fun b!1856145 () Bool)

(declare-fun res!832034 () Bool)

(declare-fun e!1185751 () Bool)

(assert (=> b!1856145 (=> (not res!832034) (not e!1185751))))

(declare-fun isEmpty!12830 (List!20669) Bool)

(declare-fun tail!2799 (List!20669) List!20669)

(assert (=> b!1856145 (= res!832034 (isEmpty!12830 (tail!2799 s!13412)))))

(declare-fun d!566811 () Bool)

(declare-fun e!1185747 () Bool)

(assert (=> d!566811 e!1185747))

(declare-fun c!302409 () Bool)

(assert (=> d!566811 (= c!302409 ((_ is EmptyExpr!5055) r!19073))))

(declare-fun e!1185748 () Bool)

(assert (=> d!566811 (= lt!716923 e!1185748)))

(declare-fun c!302408 () Bool)

(assert (=> d!566811 (= c!302408 (isEmpty!12830 s!13412))))

(assert (=> d!566811 (validRegex!2077 r!19073)))

(assert (=> d!566811 (= (matchR!2466 r!19073 s!13412) lt!716923)))

(declare-fun b!1856146 () Bool)

(declare-fun head!4344 (List!20669) C!10260)

(assert (=> b!1856146 (= e!1185751 (= (head!4344 s!13412) (c!302391 r!19073)))))

(declare-fun b!1856147 () Bool)

(declare-fun res!832040 () Bool)

(declare-fun e!1185750 () Bool)

(assert (=> b!1856147 (=> res!832040 e!1185750)))

(assert (=> b!1856147 (= res!832040 (not (isEmpty!12830 (tail!2799 s!13412))))))

(declare-fun b!1856148 () Bool)

(declare-fun nullable!1566 (Regex!5055) Bool)

(assert (=> b!1856148 (= e!1185748 (nullable!1566 r!19073))))

(declare-fun b!1856149 () Bool)

(assert (=> b!1856149 (= e!1185747 e!1185745)))

(declare-fun c!302407 () Bool)

(assert (=> b!1856149 (= c!302407 ((_ is EmptyLang!5055) r!19073))))

(declare-fun b!1856150 () Bool)

(declare-fun e!1185746 () Bool)

(assert (=> b!1856150 (= e!1185749 e!1185746)))

(declare-fun res!832043 () Bool)

(assert (=> b!1856150 (=> (not res!832043) (not e!1185746))))

(assert (=> b!1856150 (= res!832043 (not lt!716923))))

(declare-fun b!1856151 () Bool)

(declare-fun res!832041 () Bool)

(assert (=> b!1856151 (=> res!832041 e!1185749)))

(assert (=> b!1856151 (= res!832041 e!1185751)))

(declare-fun res!832042 () Bool)

(assert (=> b!1856151 (=> (not res!832042) (not e!1185751))))

(assert (=> b!1856151 (= res!832042 lt!716923)))

(declare-fun b!1856154 () Bool)

(declare-fun call!115401 () Bool)

(assert (=> b!1856154 (= e!1185747 (= lt!716923 call!115401))))

(declare-fun b!1856155 () Bool)

(assert (=> b!1856155 (= e!1185746 e!1185750)))

(declare-fun res!832038 () Bool)

(assert (=> b!1856155 (=> res!832038 e!1185750)))

(assert (=> b!1856155 (= res!832038 call!115401)))

(declare-fun b!1856156 () Bool)

(assert (=> b!1856156 (= e!1185750 (not (= (head!4344 s!13412) (c!302391 r!19073))))))

(declare-fun b!1856157 () Bool)

(declare-fun res!832039 () Bool)

(assert (=> b!1856157 (=> (not res!832039) (not e!1185751))))

(assert (=> b!1856157 (= res!832039 (not call!115401))))

(declare-fun bm!115396 () Bool)

(assert (=> bm!115396 (= call!115401 (isEmpty!12830 s!13412))))

(declare-fun b!1856158 () Bool)

(declare-fun derivativeStep!1329 (Regex!5055 C!10260) Regex!5055)

(assert (=> b!1856158 (= e!1185748 (matchR!2466 (derivativeStep!1329 r!19073 (head!4344 s!13412)) (tail!2799 s!13412)))))

(assert (= (and d!566811 c!302408) b!1856148))

(assert (= (and d!566811 (not c!302408)) b!1856158))

(assert (= (and d!566811 c!302409) b!1856154))

(assert (= (and d!566811 (not c!302409)) b!1856149))

(assert (= (and b!1856149 c!302407) b!1856143))

(assert (= (and b!1856149 (not c!302407)) b!1856144))

(assert (= (and b!1856144 (not res!832035)) b!1856151))

(assert (= (and b!1856151 res!832042) b!1856157))

(assert (= (and b!1856157 res!832039) b!1856145))

(assert (= (and b!1856145 res!832034) b!1856146))

(assert (= (and b!1856151 (not res!832041)) b!1856150))

(assert (= (and b!1856150 res!832043) b!1856155))

(assert (= (and b!1856155 (not res!832038)) b!1856147))

(assert (= (and b!1856147 (not res!832040)) b!1856156))

(assert (= (or b!1856154 b!1856155 b!1856157) bm!115396))

(declare-fun m!2281349 () Bool)

(assert (=> b!1856145 m!2281349))

(assert (=> b!1856145 m!2281349))

(declare-fun m!2281351 () Bool)

(assert (=> b!1856145 m!2281351))

(declare-fun m!2281353 () Bool)

(assert (=> b!1856148 m!2281353))

(declare-fun m!2281355 () Bool)

(assert (=> d!566811 m!2281355))

(assert (=> d!566811 m!2281331))

(assert (=> bm!115396 m!2281355))

(declare-fun m!2281357 () Bool)

(assert (=> b!1856146 m!2281357))

(assert (=> b!1856156 m!2281357))

(assert (=> b!1856147 m!2281349))

(assert (=> b!1856147 m!2281349))

(assert (=> b!1856147 m!2281351))

(assert (=> b!1856158 m!2281357))

(assert (=> b!1856158 m!2281357))

(declare-fun m!2281359 () Bool)

(assert (=> b!1856158 m!2281359))

(assert (=> b!1856158 m!2281349))

(assert (=> b!1856158 m!2281359))

(assert (=> b!1856158 m!2281349))

(declare-fun m!2281361 () Bool)

(assert (=> b!1856158 m!2281361))

(assert (=> b!1856075 d!566811))

(declare-fun d!566817 () Bool)

(declare-fun res!832070 () Bool)

(declare-fun e!1185778 () Bool)

(assert (=> d!566817 (=> res!832070 e!1185778)))

(assert (=> d!566817 (= res!832070 ((_ is ElementMatch!5055) r!19073))))

(assert (=> d!566817 (= (validRegex!2077 r!19073) e!1185778)))

(declare-fun b!1856199 () Bool)

(declare-fun e!1185782 () Bool)

(declare-fun call!115413 () Bool)

(assert (=> b!1856199 (= e!1185782 call!115413)))

(declare-fun b!1856200 () Bool)

(declare-fun e!1185777 () Bool)

(declare-fun e!1185780 () Bool)

(assert (=> b!1856200 (= e!1185777 e!1185780)))

(declare-fun res!832072 () Bool)

(assert (=> b!1856200 (=> (not res!832072) (not e!1185780))))

(declare-fun call!115412 () Bool)

(assert (=> b!1856200 (= res!832072 call!115412)))

(declare-fun b!1856201 () Bool)

(declare-fun e!1185783 () Bool)

(assert (=> b!1856201 (= e!1185783 e!1185782)))

(declare-fun res!832071 () Bool)

(assert (=> b!1856201 (= res!832071 (not (nullable!1566 (reg!5384 r!19073))))))

(assert (=> b!1856201 (=> (not res!832071) (not e!1185782))))

(declare-fun b!1856202 () Bool)

(declare-fun res!832073 () Bool)

(declare-fun e!1185779 () Bool)

(assert (=> b!1856202 (=> (not res!832073) (not e!1185779))))

(assert (=> b!1856202 (= res!832073 call!115412)))

(declare-fun e!1185781 () Bool)

(assert (=> b!1856202 (= e!1185781 e!1185779)))

(declare-fun b!1856203 () Bool)

(declare-fun call!115411 () Bool)

(assert (=> b!1856203 (= e!1185780 call!115411)))

(declare-fun bm!115406 () Bool)

(assert (=> bm!115406 (= call!115411 call!115413)))

(declare-fun c!302417 () Bool)

(declare-fun bm!115407 () Bool)

(declare-fun c!302418 () Bool)

(assert (=> bm!115407 (= call!115413 (validRegex!2077 (ite c!302417 (reg!5384 r!19073) (ite c!302418 (regTwo!10623 r!19073) (regTwo!10622 r!19073)))))))

(declare-fun b!1856204 () Bool)

(assert (=> b!1856204 (= e!1185779 call!115411)))

(declare-fun b!1856205 () Bool)

(assert (=> b!1856205 (= e!1185783 e!1185781)))

(assert (=> b!1856205 (= c!302418 ((_ is Union!5055) r!19073))))

(declare-fun bm!115408 () Bool)

(assert (=> bm!115408 (= call!115412 (validRegex!2077 (ite c!302418 (regOne!10623 r!19073) (regOne!10622 r!19073))))))

(declare-fun b!1856206 () Bool)

(assert (=> b!1856206 (= e!1185778 e!1185783)))

(assert (=> b!1856206 (= c!302417 ((_ is Star!5055) r!19073))))

(declare-fun b!1856207 () Bool)

(declare-fun res!832074 () Bool)

(assert (=> b!1856207 (=> res!832074 e!1185777)))

(assert (=> b!1856207 (= res!832074 (not ((_ is Concat!8854) r!19073)))))

(assert (=> b!1856207 (= e!1185781 e!1185777)))

(assert (= (and d!566817 (not res!832070)) b!1856206))

(assert (= (and b!1856206 c!302417) b!1856201))

(assert (= (and b!1856206 (not c!302417)) b!1856205))

(assert (= (and b!1856201 res!832071) b!1856199))

(assert (= (and b!1856205 c!302418) b!1856202))

(assert (= (and b!1856205 (not c!302418)) b!1856207))

(assert (= (and b!1856202 res!832073) b!1856204))

(assert (= (and b!1856207 (not res!832074)) b!1856200))

(assert (= (and b!1856200 res!832072) b!1856203))

(assert (= (or b!1856202 b!1856200) bm!115408))

(assert (= (or b!1856204 b!1856203) bm!115406))

(assert (= (or b!1856199 bm!115406) bm!115407))

(declare-fun m!2281373 () Bool)

(assert (=> b!1856201 m!2281373))

(declare-fun m!2281375 () Bool)

(assert (=> bm!115407 m!2281375))

(declare-fun m!2281377 () Bool)

(assert (=> bm!115408 m!2281377))

(assert (=> start!185286 d!566817))

(declare-fun d!566821 () Bool)

(declare-fun lt!716927 () Int)

(assert (=> d!566821 (>= lt!716927 0)))

(declare-fun e!1185800 () Int)

(assert (=> d!566821 (= lt!716927 e!1185800)))

(declare-fun c!302425 () Bool)

(assert (=> d!566821 (= c!302425 ((_ is Nil!20591) prefix!1439))))

(assert (=> d!566821 (= (size!16264 prefix!1439) lt!716927)))

(declare-fun b!1856230 () Bool)

(assert (=> b!1856230 (= e!1185800 0)))

(declare-fun b!1856231 () Bool)

(assert (=> b!1856231 (= e!1185800 (+ 1 (size!16264 (t!172536 prefix!1439))))))

(assert (= (and d!566821 c!302425) b!1856230))

(assert (= (and d!566821 (not c!302425)) b!1856231))

(declare-fun m!2281379 () Bool)

(assert (=> b!1856231 m!2281379))

(assert (=> b!1856077 d!566821))

(declare-fun b!1856268 () Bool)

(declare-fun res!832099 () Bool)

(declare-fun e!1185820 () Bool)

(assert (=> b!1856268 (=> (not res!832099) (not e!1185820))))

(assert (=> b!1856268 (= res!832099 (= (head!4344 prefix!1439) (head!4344 s!13412)))))

(declare-fun d!566823 () Bool)

(declare-fun e!1185818 () Bool)

(assert (=> d!566823 e!1185818))

(declare-fun res!832098 () Bool)

(assert (=> d!566823 (=> res!832098 e!1185818)))

(declare-fun lt!716930 () Bool)

(assert (=> d!566823 (= res!832098 (not lt!716930))))

(declare-fun e!1185819 () Bool)

(assert (=> d!566823 (= lt!716930 e!1185819)))

(declare-fun res!832101 () Bool)

(assert (=> d!566823 (=> res!832101 e!1185819)))

(assert (=> d!566823 (= res!832101 ((_ is Nil!20591) prefix!1439))))

(assert (=> d!566823 (= (isPrefix!1905 prefix!1439 s!13412) lt!716930)))

(declare-fun b!1856270 () Bool)

(assert (=> b!1856270 (= e!1185818 (>= (size!16264 s!13412) (size!16264 prefix!1439)))))

(declare-fun b!1856269 () Bool)

(assert (=> b!1856269 (= e!1185820 (isPrefix!1905 (tail!2799 prefix!1439) (tail!2799 s!13412)))))

(declare-fun b!1856267 () Bool)

(assert (=> b!1856267 (= e!1185819 e!1185820)))

(declare-fun res!832100 () Bool)

(assert (=> b!1856267 (=> (not res!832100) (not e!1185820))))

(assert (=> b!1856267 (= res!832100 (not ((_ is Nil!20591) s!13412)))))

(assert (= (and d!566823 (not res!832101)) b!1856267))

(assert (= (and b!1856267 res!832100) b!1856268))

(assert (= (and b!1856268 res!832099) b!1856269))

(assert (= (and d!566823 (not res!832098)) b!1856270))

(declare-fun m!2281387 () Bool)

(assert (=> b!1856268 m!2281387))

(assert (=> b!1856268 m!2281357))

(declare-fun m!2281389 () Bool)

(assert (=> b!1856270 m!2281389))

(assert (=> b!1856270 m!2281333))

(declare-fun m!2281391 () Bool)

(assert (=> b!1856269 m!2281391))

(assert (=> b!1856269 m!2281349))

(assert (=> b!1856269 m!2281391))

(assert (=> b!1856269 m!2281349))

(declare-fun m!2281393 () Bool)

(assert (=> b!1856269 m!2281393))

(assert (=> b!1856073 d!566823))

(declare-fun b!1856293 () Bool)

(declare-fun e!1185830 () Bool)

(declare-fun tp!528030 () Bool)

(assert (=> b!1856293 (= e!1185830 (and tp_is_empty!8531 tp!528030))))

(assert (=> b!1856074 (= tp!527986 e!1185830)))

(assert (= (and b!1856074 ((_ is Cons!20591) (t!172536 prefix!1439))) b!1856293))

(declare-fun b!1856304 () Bool)

(declare-fun e!1185833 () Bool)

(assert (=> b!1856304 (= e!1185833 tp_is_empty!8531)))

(declare-fun b!1856305 () Bool)

(declare-fun tp!528044 () Bool)

(declare-fun tp!528045 () Bool)

(assert (=> b!1856305 (= e!1185833 (and tp!528044 tp!528045))))

(declare-fun b!1856306 () Bool)

(declare-fun tp!528041 () Bool)

(assert (=> b!1856306 (= e!1185833 tp!528041)))

(declare-fun b!1856307 () Bool)

(declare-fun tp!528043 () Bool)

(declare-fun tp!528042 () Bool)

(assert (=> b!1856307 (= e!1185833 (and tp!528043 tp!528042))))

(assert (=> b!1856071 (= tp!527988 e!1185833)))

(assert (= (and b!1856071 ((_ is ElementMatch!5055) (regOne!10622 r!19073))) b!1856304))

(assert (= (and b!1856071 ((_ is Concat!8854) (regOne!10622 r!19073))) b!1856305))

(assert (= (and b!1856071 ((_ is Star!5055) (regOne!10622 r!19073))) b!1856306))

(assert (= (and b!1856071 ((_ is Union!5055) (regOne!10622 r!19073))) b!1856307))

(declare-fun b!1856308 () Bool)

(declare-fun e!1185834 () Bool)

(assert (=> b!1856308 (= e!1185834 tp_is_empty!8531)))

(declare-fun b!1856309 () Bool)

(declare-fun tp!528049 () Bool)

(declare-fun tp!528050 () Bool)

(assert (=> b!1856309 (= e!1185834 (and tp!528049 tp!528050))))

(declare-fun b!1856310 () Bool)

(declare-fun tp!528046 () Bool)

(assert (=> b!1856310 (= e!1185834 tp!528046)))

(declare-fun b!1856311 () Bool)

(declare-fun tp!528048 () Bool)

(declare-fun tp!528047 () Bool)

(assert (=> b!1856311 (= e!1185834 (and tp!528048 tp!528047))))

(assert (=> b!1856071 (= tp!527982 e!1185834)))

(assert (= (and b!1856071 ((_ is ElementMatch!5055) (regTwo!10622 r!19073))) b!1856308))

(assert (= (and b!1856071 ((_ is Concat!8854) (regTwo!10622 r!19073))) b!1856309))

(assert (= (and b!1856071 ((_ is Star!5055) (regTwo!10622 r!19073))) b!1856310))

(assert (= (and b!1856071 ((_ is Union!5055) (regTwo!10622 r!19073))) b!1856311))

(declare-fun b!1856312 () Bool)

(declare-fun e!1185835 () Bool)

(assert (=> b!1856312 (= e!1185835 tp_is_empty!8531)))

(declare-fun b!1856313 () Bool)

(declare-fun tp!528054 () Bool)

(declare-fun tp!528055 () Bool)

(assert (=> b!1856313 (= e!1185835 (and tp!528054 tp!528055))))

(declare-fun b!1856314 () Bool)

(declare-fun tp!528051 () Bool)

(assert (=> b!1856314 (= e!1185835 tp!528051)))

(declare-fun b!1856315 () Bool)

(declare-fun tp!528053 () Bool)

(declare-fun tp!528052 () Bool)

(assert (=> b!1856315 (= e!1185835 (and tp!528053 tp!528052))))

(assert (=> b!1856070 (= tp!527983 e!1185835)))

(assert (= (and b!1856070 ((_ is ElementMatch!5055) (regOne!10623 r!19073))) b!1856312))

(assert (= (and b!1856070 ((_ is Concat!8854) (regOne!10623 r!19073))) b!1856313))

(assert (= (and b!1856070 ((_ is Star!5055) (regOne!10623 r!19073))) b!1856314))

(assert (= (and b!1856070 ((_ is Union!5055) (regOne!10623 r!19073))) b!1856315))

(declare-fun b!1856316 () Bool)

(declare-fun e!1185836 () Bool)

(assert (=> b!1856316 (= e!1185836 tp_is_empty!8531)))

(declare-fun b!1856317 () Bool)

(declare-fun tp!528059 () Bool)

(declare-fun tp!528060 () Bool)

(assert (=> b!1856317 (= e!1185836 (and tp!528059 tp!528060))))

(declare-fun b!1856318 () Bool)

(declare-fun tp!528056 () Bool)

(assert (=> b!1856318 (= e!1185836 tp!528056)))

(declare-fun b!1856319 () Bool)

(declare-fun tp!528058 () Bool)

(declare-fun tp!528057 () Bool)

(assert (=> b!1856319 (= e!1185836 (and tp!528058 tp!528057))))

(assert (=> b!1856070 (= tp!527987 e!1185836)))

(assert (= (and b!1856070 ((_ is ElementMatch!5055) (regTwo!10623 r!19073))) b!1856316))

(assert (= (and b!1856070 ((_ is Concat!8854) (regTwo!10623 r!19073))) b!1856317))

(assert (= (and b!1856070 ((_ is Star!5055) (regTwo!10623 r!19073))) b!1856318))

(assert (= (and b!1856070 ((_ is Union!5055) (regTwo!10623 r!19073))) b!1856319))

(declare-fun b!1856320 () Bool)

(declare-fun e!1185837 () Bool)

(assert (=> b!1856320 (= e!1185837 tp_is_empty!8531)))

(declare-fun b!1856321 () Bool)

(declare-fun tp!528064 () Bool)

(declare-fun tp!528065 () Bool)

(assert (=> b!1856321 (= e!1185837 (and tp!528064 tp!528065))))

(declare-fun b!1856322 () Bool)

(declare-fun tp!528061 () Bool)

(assert (=> b!1856322 (= e!1185837 tp!528061)))

(declare-fun b!1856323 () Bool)

(declare-fun tp!528063 () Bool)

(declare-fun tp!528062 () Bool)

(assert (=> b!1856323 (= e!1185837 (and tp!528063 tp!528062))))

(assert (=> b!1856072 (= tp!527984 e!1185837)))

(assert (= (and b!1856072 ((_ is ElementMatch!5055) (reg!5384 r!19073))) b!1856320))

(assert (= (and b!1856072 ((_ is Concat!8854) (reg!5384 r!19073))) b!1856321))

(assert (= (and b!1856072 ((_ is Star!5055) (reg!5384 r!19073))) b!1856322))

(assert (= (and b!1856072 ((_ is Union!5055) (reg!5384 r!19073))) b!1856323))

(declare-fun b!1856324 () Bool)

(declare-fun e!1185838 () Bool)

(declare-fun tp!528066 () Bool)

(assert (=> b!1856324 (= e!1185838 (and tp_is_empty!8531 tp!528066))))

(assert (=> b!1856078 (= tp!527985 e!1185838)))

(assert (= (and b!1856078 ((_ is Cons!20591) (t!172536 s!13412))) b!1856324))

(check-sat (not b!1856146) (not bm!115408) (not b!1856201) (not b!1856147) (not b!1856313) (not b!1856148) (not b!1856318) (not b!1856310) (not b!1856311) (not b!1856156) (not b!1856322) (not b!1856315) (not b!1856317) (not b!1856270) (not b!1856293) (not b!1856268) (not bm!115396) (not b!1856307) (not b!1856305) (not b!1856158) (not b!1856269) (not b!1856314) (not b!1856309) (not b!1856145) (not b!1856231) (not bm!115407) (not b!1856306) (not b!1856323) tp_is_empty!8531 (not b!1856321) (not b!1856324) (not d!566811) (not b!1856319))
(check-sat)
