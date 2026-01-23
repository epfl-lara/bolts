; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!744040 () Bool)

(assert start!744040)

(declare-fun b!7871185 () Bool)

(declare-fun e!4649927 () Bool)

(declare-fun tp!2335574 () Bool)

(assert (=> b!7871185 (= e!4649927 tp!2335574)))

(declare-fun b!7871186 () Bool)

(declare-fun tp_is_empty!52723 () Bool)

(assert (=> b!7871186 (= e!4649927 tp_is_empty!52723)))

(declare-fun b!7871187 () Bool)

(declare-fun res!3127622 () Bool)

(declare-fun e!4649926 () Bool)

(assert (=> b!7871187 (=> (not res!3127622) (not e!4649926))))

(declare-datatypes ((C!42650 0))(
  ( (C!42651 (val!31787 Int)) )
))
(declare-datatypes ((List!74021 0))(
  ( (Nil!73897) (Cons!73897 (h!80345 C!42650) (t!388756 List!74021)) )
))
(declare-fun s!14219 () List!74021)

(assert (=> b!7871187 (= res!3127622 (is-Cons!73897 s!14219))))

(declare-fun res!3127623 () Bool)

(assert (=> start!744040 (=> (not res!3127623) (not e!4649926))))

(declare-datatypes ((Regex!21162 0))(
  ( (ElementMatch!21162 (c!1445978 C!42650)) (Concat!30007 (regOne!42836 Regex!21162) (regTwo!42836 Regex!21162)) (EmptyExpr!21162) (Star!21162 (reg!21491 Regex!21162)) (EmptyLang!21162) (Union!21162 (regOne!42837 Regex!21162) (regTwo!42837 Regex!21162)) )
))
(declare-fun r1!6200 () Regex!21162)

(declare-fun validRegex!11572 (Regex!21162) Bool)

(assert (=> start!744040 (= res!3127623 (validRegex!11572 r1!6200))))

(assert (=> start!744040 e!4649926))

(assert (=> start!744040 e!4649927))

(declare-fun e!4649924 () Bool)

(assert (=> start!744040 e!4649924))

(declare-fun e!4649925 () Bool)

(assert (=> start!744040 e!4649925))

(declare-fun b!7871188 () Bool)

(declare-fun tp!2335573 () Bool)

(assert (=> b!7871188 (= e!4649925 (and tp_is_empty!52723 tp!2335573))))

(declare-fun b!7871189 () Bool)

(declare-fun tp!2335582 () Bool)

(assert (=> b!7871189 (= e!4649924 tp!2335582)))

(declare-fun b!7871190 () Bool)

(assert (=> b!7871190 (= e!4649924 tp_is_empty!52723)))

(declare-fun b!7871191 () Bool)

(declare-fun res!3127624 () Bool)

(assert (=> b!7871191 (=> (not res!3127624) (not e!4649926))))

(declare-fun r2!6138 () Regex!21162)

(assert (=> b!7871191 (= res!3127624 (validRegex!11572 r2!6138))))

(declare-fun b!7871192 () Bool)

(declare-fun tp!2335579 () Bool)

(declare-fun tp!2335576 () Bool)

(assert (=> b!7871192 (= e!4649924 (and tp!2335579 tp!2335576))))

(declare-fun b!7871193 () Bool)

(declare-fun tp!2335577 () Bool)

(declare-fun tp!2335581 () Bool)

(assert (=> b!7871193 (= e!4649927 (and tp!2335577 tp!2335581))))

(declare-fun b!7871194 () Bool)

(declare-fun res!3127621 () Bool)

(assert (=> b!7871194 (=> (not res!3127621) (not e!4649926))))

(declare-fun matchR!10598 (Regex!21162 List!74021) Bool)

(assert (=> b!7871194 (= res!3127621 (matchR!10598 r1!6200 s!14219))))

(declare-fun b!7871195 () Bool)

(declare-fun tp!2335583 () Bool)

(declare-fun tp!2335578 () Bool)

(assert (=> b!7871195 (= e!4649924 (and tp!2335583 tp!2335578))))

(declare-fun b!7871196 () Bool)

(assert (=> b!7871196 (= e!4649926 (not (matchR!10598 (Union!21162 r1!6200 r2!6138) s!14219)))))

(declare-fun lt!2680897 () Regex!21162)

(declare-fun lt!2680898 () Regex!21162)

(assert (=> b!7871196 (matchR!10598 (Union!21162 lt!2680897 lt!2680898) (t!388756 s!14219))))

(declare-datatypes ((Unit!168978 0))(
  ( (Unit!168979) )
))
(declare-fun lt!2680896 () Unit!168978)

(declare-fun lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!145 (Regex!21162 Regex!21162 List!74021) Unit!168978)

(assert (=> b!7871196 (= lt!2680896 (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!145 lt!2680897 lt!2680898 (t!388756 s!14219)))))

(declare-fun derivativeStep!6393 (Regex!21162 C!42650) Regex!21162)

(assert (=> b!7871196 (= lt!2680898 (derivativeStep!6393 r2!6138 (h!80345 s!14219)))))

(assert (=> b!7871196 (= lt!2680897 (derivativeStep!6393 r1!6200 (h!80345 s!14219)))))

(declare-fun b!7871197 () Bool)

(declare-fun tp!2335575 () Bool)

(declare-fun tp!2335580 () Bool)

(assert (=> b!7871197 (= e!4649927 (and tp!2335575 tp!2335580))))

(assert (= (and start!744040 res!3127623) b!7871191))

(assert (= (and b!7871191 res!3127624) b!7871194))

(assert (= (and b!7871194 res!3127621) b!7871187))

(assert (= (and b!7871187 res!3127622) b!7871196))

(assert (= (and start!744040 (is-ElementMatch!21162 r1!6200)) b!7871186))

(assert (= (and start!744040 (is-Concat!30007 r1!6200)) b!7871197))

(assert (= (and start!744040 (is-Star!21162 r1!6200)) b!7871185))

(assert (= (and start!744040 (is-Union!21162 r1!6200)) b!7871193))

(assert (= (and start!744040 (is-ElementMatch!21162 r2!6138)) b!7871190))

(assert (= (and start!744040 (is-Concat!30007 r2!6138)) b!7871192))

(assert (= (and start!744040 (is-Star!21162 r2!6138)) b!7871189))

(assert (= (and start!744040 (is-Union!21162 r2!6138)) b!7871195))

(assert (= (and start!744040 (is-Cons!73897 s!14219)) b!7871188))

(declare-fun m!8265200 () Bool)

(assert (=> start!744040 m!8265200))

(declare-fun m!8265202 () Bool)

(assert (=> b!7871191 m!8265202))

(declare-fun m!8265204 () Bool)

(assert (=> b!7871194 m!8265204))

(declare-fun m!8265206 () Bool)

(assert (=> b!7871196 m!8265206))

(declare-fun m!8265208 () Bool)

(assert (=> b!7871196 m!8265208))

(declare-fun m!8265210 () Bool)

(assert (=> b!7871196 m!8265210))

(declare-fun m!8265212 () Bool)

(assert (=> b!7871196 m!8265212))

(declare-fun m!8265214 () Bool)

(assert (=> b!7871196 m!8265214))

(push 1)

(assert (not b!7871196))

(assert (not b!7871192))

(assert (not b!7871185))

(assert (not b!7871195))

(assert (not b!7871191))

(assert (not b!7871193))

(assert tp_is_empty!52723)

(assert (not b!7871188))

(assert (not b!7871194))

(assert (not start!744040))

(assert (not b!7871197))

(assert (not b!7871189))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7871255 () Bool)

(declare-fun res!3127648 () Bool)

(declare-fun e!4649959 () Bool)

(assert (=> b!7871255 (=> res!3127648 e!4649959)))

(assert (=> b!7871255 (= res!3127648 (not (is-Concat!30007 r1!6200)))))

(declare-fun e!4649960 () Bool)

(assert (=> b!7871255 (= e!4649960 e!4649959)))

(declare-fun bm!729932 () Bool)

(declare-fun call!729939 () Bool)

(declare-fun c!1445985 () Bool)

(declare-fun c!1445984 () Bool)

(assert (=> bm!729932 (= call!729939 (validRegex!11572 (ite c!1445984 (reg!21491 r1!6200) (ite c!1445985 (regTwo!42837 r1!6200) (regOne!42836 r1!6200)))))))

(declare-fun b!7871256 () Bool)

(declare-fun res!3127647 () Bool)

(declare-fun e!4649956 () Bool)

(assert (=> b!7871256 (=> (not res!3127647) (not e!4649956))))

(declare-fun call!729937 () Bool)

(assert (=> b!7871256 (= res!3127647 call!729937)))

(assert (=> b!7871256 (= e!4649960 e!4649956)))

(declare-fun bm!729933 () Bool)

(assert (=> bm!729933 (= call!729937 (validRegex!11572 (ite c!1445985 (regOne!42837 r1!6200) (regTwo!42836 r1!6200))))))

(declare-fun d!2355236 () Bool)

(declare-fun res!3127649 () Bool)

(declare-fun e!4649955 () Bool)

(assert (=> d!2355236 (=> res!3127649 e!4649955)))

(assert (=> d!2355236 (= res!3127649 (is-ElementMatch!21162 r1!6200))))

(assert (=> d!2355236 (= (validRegex!11572 r1!6200) e!4649955)))

(declare-fun b!7871257 () Bool)

(declare-fun e!4649954 () Bool)

(declare-fun e!4649957 () Bool)

(assert (=> b!7871257 (= e!4649954 e!4649957)))

(declare-fun res!3127651 () Bool)

(declare-fun nullable!9426 (Regex!21162) Bool)

(assert (=> b!7871257 (= res!3127651 (not (nullable!9426 (reg!21491 r1!6200))))))

(assert (=> b!7871257 (=> (not res!3127651) (not e!4649957))))

(declare-fun bm!729934 () Bool)

(declare-fun call!729938 () Bool)

(assert (=> bm!729934 (= call!729938 call!729939)))

(declare-fun b!7871258 () Bool)

(assert (=> b!7871258 (= e!4649957 call!729939)))

(declare-fun b!7871259 () Bool)

(assert (=> b!7871259 (= e!4649954 e!4649960)))

(assert (=> b!7871259 (= c!1445985 (is-Union!21162 r1!6200))))

(declare-fun b!7871260 () Bool)

(declare-fun e!4649958 () Bool)

(assert (=> b!7871260 (= e!4649958 call!729937)))

(declare-fun b!7871261 () Bool)

(assert (=> b!7871261 (= e!4649956 call!729938)))

(declare-fun b!7871262 () Bool)

(assert (=> b!7871262 (= e!4649955 e!4649954)))

(assert (=> b!7871262 (= c!1445984 (is-Star!21162 r1!6200))))

(declare-fun b!7871263 () Bool)

(assert (=> b!7871263 (= e!4649959 e!4649958)))

(declare-fun res!3127650 () Bool)

(assert (=> b!7871263 (=> (not res!3127650) (not e!4649958))))

(assert (=> b!7871263 (= res!3127650 call!729938)))

(assert (= (and d!2355236 (not res!3127649)) b!7871262))

(assert (= (and b!7871262 c!1445984) b!7871257))

(assert (= (and b!7871262 (not c!1445984)) b!7871259))

(assert (= (and b!7871257 res!3127651) b!7871258))

(assert (= (and b!7871259 c!1445985) b!7871256))

(assert (= (and b!7871259 (not c!1445985)) b!7871255))

(assert (= (and b!7871256 res!3127647) b!7871261))

(assert (= (and b!7871255 (not res!3127648)) b!7871263))

(assert (= (and b!7871263 res!3127650) b!7871260))

(assert (= (or b!7871261 b!7871263) bm!729934))

(assert (= (or b!7871256 b!7871260) bm!729933))

(assert (= (or b!7871258 bm!729934) bm!729932))

(declare-fun m!8265232 () Bool)

(assert (=> bm!729932 m!8265232))

(declare-fun m!8265234 () Bool)

(assert (=> bm!729933 m!8265234))

(declare-fun m!8265236 () Bool)

(assert (=> b!7871257 m!8265236))

(assert (=> start!744040 d!2355236))

(declare-fun b!7871264 () Bool)

(declare-fun res!3127653 () Bool)

(declare-fun e!4649966 () Bool)

(assert (=> b!7871264 (=> res!3127653 e!4649966)))

(assert (=> b!7871264 (= res!3127653 (not (is-Concat!30007 r2!6138)))))

(declare-fun e!4649967 () Bool)

(assert (=> b!7871264 (= e!4649967 e!4649966)))

(declare-fun bm!729935 () Bool)

(declare-fun call!729942 () Bool)

(declare-fun c!1445987 () Bool)

(declare-fun c!1445986 () Bool)

(assert (=> bm!729935 (= call!729942 (validRegex!11572 (ite c!1445986 (reg!21491 r2!6138) (ite c!1445987 (regTwo!42837 r2!6138) (regOne!42836 r2!6138)))))))

(declare-fun b!7871265 () Bool)

(declare-fun res!3127652 () Bool)

(declare-fun e!4649963 () Bool)

(assert (=> b!7871265 (=> (not res!3127652) (not e!4649963))))

(declare-fun call!729940 () Bool)

(assert (=> b!7871265 (= res!3127652 call!729940)))

(assert (=> b!7871265 (= e!4649967 e!4649963)))

(declare-fun bm!729936 () Bool)

(assert (=> bm!729936 (= call!729940 (validRegex!11572 (ite c!1445987 (regOne!42837 r2!6138) (regTwo!42836 r2!6138))))))

(declare-fun d!2355240 () Bool)

(declare-fun res!3127654 () Bool)

(declare-fun e!4649962 () Bool)

(assert (=> d!2355240 (=> res!3127654 e!4649962)))

(assert (=> d!2355240 (= res!3127654 (is-ElementMatch!21162 r2!6138))))

(assert (=> d!2355240 (= (validRegex!11572 r2!6138) e!4649962)))

(declare-fun b!7871266 () Bool)

(declare-fun e!4649961 () Bool)

(declare-fun e!4649964 () Bool)

(assert (=> b!7871266 (= e!4649961 e!4649964)))

(declare-fun res!3127656 () Bool)

(assert (=> b!7871266 (= res!3127656 (not (nullable!9426 (reg!21491 r2!6138))))))

(assert (=> b!7871266 (=> (not res!3127656) (not e!4649964))))

(declare-fun bm!729937 () Bool)

(declare-fun call!729941 () Bool)

(assert (=> bm!729937 (= call!729941 call!729942)))

(declare-fun b!7871267 () Bool)

(assert (=> b!7871267 (= e!4649964 call!729942)))

(declare-fun b!7871268 () Bool)

(assert (=> b!7871268 (= e!4649961 e!4649967)))

(assert (=> b!7871268 (= c!1445987 (is-Union!21162 r2!6138))))

(declare-fun b!7871269 () Bool)

(declare-fun e!4649965 () Bool)

(assert (=> b!7871269 (= e!4649965 call!729940)))

(declare-fun b!7871270 () Bool)

(assert (=> b!7871270 (= e!4649963 call!729941)))

(declare-fun b!7871271 () Bool)

(assert (=> b!7871271 (= e!4649962 e!4649961)))

(assert (=> b!7871271 (= c!1445986 (is-Star!21162 r2!6138))))

(declare-fun b!7871272 () Bool)

(assert (=> b!7871272 (= e!4649966 e!4649965)))

(declare-fun res!3127655 () Bool)

(assert (=> b!7871272 (=> (not res!3127655) (not e!4649965))))

(assert (=> b!7871272 (= res!3127655 call!729941)))

(assert (= (and d!2355240 (not res!3127654)) b!7871271))

(assert (= (and b!7871271 c!1445986) b!7871266))

(assert (= (and b!7871271 (not c!1445986)) b!7871268))

(assert (= (and b!7871266 res!3127656) b!7871267))

(assert (= (and b!7871268 c!1445987) b!7871265))

(assert (= (and b!7871268 (not c!1445987)) b!7871264))

(assert (= (and b!7871265 res!3127652) b!7871270))

(assert (= (and b!7871264 (not res!3127653)) b!7871272))

(assert (= (and b!7871272 res!3127655) b!7871269))

(assert (= (or b!7871270 b!7871272) bm!729937))

(assert (= (or b!7871265 b!7871269) bm!729936))

(assert (= (or b!7871267 bm!729937) bm!729935))

(declare-fun m!8265238 () Bool)

(assert (=> bm!729935 m!8265238))

(declare-fun m!8265240 () Bool)

(assert (=> bm!729936 m!8265240))

(declare-fun m!8265242 () Bool)

(assert (=> b!7871266 m!8265242))

(assert (=> b!7871191 d!2355240))

(declare-fun b!7871309 () Bool)

(declare-fun e!4649991 () Bool)

(declare-fun lt!2680912 () Bool)

(declare-fun call!729945 () Bool)

(assert (=> b!7871309 (= e!4649991 (= lt!2680912 call!729945))))

(declare-fun d!2355242 () Bool)

(assert (=> d!2355242 e!4649991))

(declare-fun c!1446000 () Bool)

(assert (=> d!2355242 (= c!1446000 (is-EmptyExpr!21162 (Union!21162 r1!6200 r2!6138)))))

(declare-fun e!4649987 () Bool)

(assert (=> d!2355242 (= lt!2680912 e!4649987)))

(declare-fun c!1445999 () Bool)

(declare-fun isEmpty!42393 (List!74021) Bool)

(assert (=> d!2355242 (= c!1445999 (isEmpty!42393 s!14219))))

(assert (=> d!2355242 (validRegex!11572 (Union!21162 r1!6200 r2!6138))))

(assert (=> d!2355242 (= (matchR!10598 (Union!21162 r1!6200 r2!6138) s!14219) lt!2680912)))

(declare-fun b!7871310 () Bool)

(declare-fun res!3127678 () Bool)

(declare-fun e!4649988 () Bool)

(assert (=> b!7871310 (=> res!3127678 e!4649988)))

(declare-fun e!4649990 () Bool)

(assert (=> b!7871310 (= res!3127678 e!4649990)))

(declare-fun res!3127680 () Bool)

(assert (=> b!7871310 (=> (not res!3127680) (not e!4649990))))

(assert (=> b!7871310 (= res!3127680 lt!2680912)))

(declare-fun b!7871311 () Bool)

(declare-fun head!16104 (List!74021) C!42650)

(declare-fun tail!15647 (List!74021) List!74021)

(assert (=> b!7871311 (= e!4649987 (matchR!10598 (derivativeStep!6393 (Union!21162 r1!6200 r2!6138) (head!16104 s!14219)) (tail!15647 s!14219)))))

(declare-fun b!7871312 () Bool)

(declare-fun e!4649989 () Bool)

(assert (=> b!7871312 (= e!4649991 e!4649989)))

(declare-fun c!1445998 () Bool)

(assert (=> b!7871312 (= c!1445998 (is-EmptyLang!21162 (Union!21162 r1!6200 r2!6138)))))

(declare-fun b!7871313 () Bool)

(assert (=> b!7871313 (= e!4649989 (not lt!2680912))))

(declare-fun b!7871314 () Bool)

(declare-fun res!3127677 () Bool)

(assert (=> b!7871314 (=> (not res!3127677) (not e!4649990))))

(assert (=> b!7871314 (= res!3127677 (isEmpty!42393 (tail!15647 s!14219)))))

(declare-fun b!7871315 () Bool)

(declare-fun e!4649992 () Bool)

(assert (=> b!7871315 (= e!4649988 e!4649992)))

(declare-fun res!3127673 () Bool)

(assert (=> b!7871315 (=> (not res!3127673) (not e!4649992))))

(assert (=> b!7871315 (= res!3127673 (not lt!2680912))))

(declare-fun e!4649986 () Bool)

(declare-fun b!7871316 () Bool)

(assert (=> b!7871316 (= e!4649986 (not (= (head!16104 s!14219) (c!1445978 (Union!21162 r1!6200 r2!6138)))))))

(declare-fun b!7871317 () Bool)

(declare-fun res!3127679 () Bool)

(assert (=> b!7871317 (=> res!3127679 e!4649988)))

(assert (=> b!7871317 (= res!3127679 (not (is-ElementMatch!21162 (Union!21162 r1!6200 r2!6138))))))

(assert (=> b!7871317 (= e!4649989 e!4649988)))

(declare-fun bm!729940 () Bool)

(assert (=> bm!729940 (= call!729945 (isEmpty!42393 s!14219))))

(declare-fun b!7871318 () Bool)

(declare-fun res!3127675 () Bool)

(assert (=> b!7871318 (=> (not res!3127675) (not e!4649990))))

(assert (=> b!7871318 (= res!3127675 (not call!729945))))

(declare-fun b!7871319 () Bool)

(assert (=> b!7871319 (= e!4649992 e!4649986)))

(declare-fun res!3127674 () Bool)

(assert (=> b!7871319 (=> res!3127674 e!4649986)))

(assert (=> b!7871319 (= res!3127674 call!729945)))

(declare-fun b!7871320 () Bool)

(assert (=> b!7871320 (= e!4649990 (= (head!16104 s!14219) (c!1445978 (Union!21162 r1!6200 r2!6138))))))

(declare-fun b!7871321 () Bool)

(declare-fun res!3127676 () Bool)

(assert (=> b!7871321 (=> res!3127676 e!4649986)))

(assert (=> b!7871321 (= res!3127676 (not (isEmpty!42393 (tail!15647 s!14219))))))

(declare-fun b!7871322 () Bool)

(assert (=> b!7871322 (= e!4649987 (nullable!9426 (Union!21162 r1!6200 r2!6138)))))

(assert (= (and d!2355242 c!1445999) b!7871322))

(assert (= (and d!2355242 (not c!1445999)) b!7871311))

(assert (= (and d!2355242 c!1446000) b!7871309))

(assert (= (and d!2355242 (not c!1446000)) b!7871312))

(assert (= (and b!7871312 c!1445998) b!7871313))

(assert (= (and b!7871312 (not c!1445998)) b!7871317))

(assert (= (and b!7871317 (not res!3127679)) b!7871310))

(assert (= (and b!7871310 res!3127680) b!7871318))

(assert (= (and b!7871318 res!3127675) b!7871314))

(assert (= (and b!7871314 res!3127677) b!7871320))

(assert (= (and b!7871310 (not res!3127678)) b!7871315))

(assert (= (and b!7871315 res!3127673) b!7871319))

(assert (= (and b!7871319 (not res!3127674)) b!7871321))

(assert (= (and b!7871321 (not res!3127676)) b!7871316))

(assert (= (or b!7871309 b!7871318 b!7871319) bm!729940))

(declare-fun m!8265244 () Bool)

(assert (=> b!7871320 m!8265244))

(assert (=> b!7871311 m!8265244))

(assert (=> b!7871311 m!8265244))

(declare-fun m!8265246 () Bool)

(assert (=> b!7871311 m!8265246))

(declare-fun m!8265248 () Bool)

(assert (=> b!7871311 m!8265248))

(assert (=> b!7871311 m!8265246))

(assert (=> b!7871311 m!8265248))

(declare-fun m!8265250 () Bool)

(assert (=> b!7871311 m!8265250))

(declare-fun m!8265252 () Bool)

(assert (=> b!7871322 m!8265252))

(declare-fun m!8265254 () Bool)

(assert (=> d!2355242 m!8265254))

(declare-fun m!8265256 () Bool)

(assert (=> d!2355242 m!8265256))

(assert (=> bm!729940 m!8265254))

(assert (=> b!7871316 m!8265244))

(assert (=> b!7871314 m!8265248))

(assert (=> b!7871314 m!8265248))

(declare-fun m!8265258 () Bool)

(assert (=> b!7871314 m!8265258))

(assert (=> b!7871321 m!8265248))

(assert (=> b!7871321 m!8265248))

(assert (=> b!7871321 m!8265258))

(assert (=> b!7871196 d!2355242))

(declare-fun b!7871363 () Bool)

(declare-fun e!4650014 () Regex!21162)

(assert (=> b!7871363 (= e!4650014 (ite (= (h!80345 s!14219) (c!1445978 r1!6200)) EmptyExpr!21162 EmptyLang!21162))))

(declare-fun b!7871364 () Bool)

(declare-fun e!4650013 () Regex!21162)

(assert (=> b!7871364 (= e!4650013 e!4650014)))

(declare-fun c!1446016 () Bool)

(assert (=> b!7871364 (= c!1446016 (is-ElementMatch!21162 r1!6200))))

(declare-fun b!7871365 () Bool)

(declare-fun c!1446014 () Bool)

(assert (=> b!7871365 (= c!1446014 (nullable!9426 (regOne!42836 r1!6200)))))

(declare-fun e!4650016 () Regex!21162)

(declare-fun e!4650015 () Regex!21162)

(assert (=> b!7871365 (= e!4650016 e!4650015)))

(declare-fun bm!729951 () Bool)

(declare-fun call!729957 () Regex!21162)

(declare-fun call!729956 () Regex!21162)

(assert (=> bm!729951 (= call!729957 call!729956)))

(declare-fun b!7871366 () Bool)

(declare-fun e!4650017 () Regex!21162)

(assert (=> b!7871366 (= e!4650017 e!4650016)))

(declare-fun c!1446013 () Bool)

(assert (=> b!7871366 (= c!1446013 (is-Star!21162 r1!6200))))

(declare-fun b!7871367 () Bool)

(declare-fun call!729959 () Regex!21162)

(assert (=> b!7871367 (= e!4650015 (Union!21162 (Concat!30007 call!729959 (regTwo!42836 r1!6200)) EmptyLang!21162))))

(declare-fun call!729958 () Regex!21162)

(declare-fun c!1446017 () Bool)

(declare-fun bm!729952 () Bool)

(assert (=> bm!729952 (= call!729958 (derivativeStep!6393 (ite c!1446017 (regOne!42837 r1!6200) (regTwo!42836 r1!6200)) (h!80345 s!14219)))))

(declare-fun b!7871368 () Bool)

(assert (=> b!7871368 (= e!4650015 (Union!21162 (Concat!30007 call!729959 (regTwo!42836 r1!6200)) call!729958))))

(declare-fun b!7871369 () Bool)

(assert (=> b!7871369 (= e!4650013 EmptyLang!21162)))

(declare-fun b!7871370 () Bool)

(assert (=> b!7871370 (= e!4650016 (Concat!30007 call!729957 r1!6200))))

(declare-fun d!2355244 () Bool)

(declare-fun lt!2680915 () Regex!21162)

(assert (=> d!2355244 (validRegex!11572 lt!2680915)))

(assert (=> d!2355244 (= lt!2680915 e!4650013)))

(declare-fun c!1446015 () Bool)

(assert (=> d!2355244 (= c!1446015 (or (is-EmptyExpr!21162 r1!6200) (is-EmptyLang!21162 r1!6200)))))

(assert (=> d!2355244 (validRegex!11572 r1!6200)))

(assert (=> d!2355244 (= (derivativeStep!6393 r1!6200 (h!80345 s!14219)) lt!2680915)))

(declare-fun b!7871371 () Bool)

(assert (=> b!7871371 (= e!4650017 (Union!21162 call!729958 call!729956))))

(declare-fun bm!729953 () Bool)

(assert (=> bm!729953 (= call!729959 call!729957)))

(declare-fun bm!729954 () Bool)

(assert (=> bm!729954 (= call!729956 (derivativeStep!6393 (ite c!1446017 (regTwo!42837 r1!6200) (ite c!1446013 (reg!21491 r1!6200) (regOne!42836 r1!6200))) (h!80345 s!14219)))))

(declare-fun b!7871372 () Bool)

(assert (=> b!7871372 (= c!1446017 (is-Union!21162 r1!6200))))

(assert (=> b!7871372 (= e!4650014 e!4650017)))

(assert (= (and d!2355244 c!1446015) b!7871369))

(assert (= (and d!2355244 (not c!1446015)) b!7871364))

(assert (= (and b!7871364 c!1446016) b!7871363))

(assert (= (and b!7871364 (not c!1446016)) b!7871372))

(assert (= (and b!7871372 c!1446017) b!7871371))

(assert (= (and b!7871372 (not c!1446017)) b!7871366))

(assert (= (and b!7871366 c!1446013) b!7871370))

(assert (= (and b!7871366 (not c!1446013)) b!7871365))

(assert (= (and b!7871365 c!1446014) b!7871368))

(assert (= (and b!7871365 (not c!1446014)) b!7871367))

(assert (= (or b!7871368 b!7871367) bm!729953))

(assert (= (or b!7871370 bm!729953) bm!729951))

(assert (= (or b!7871371 bm!729951) bm!729954))

(assert (= (or b!7871371 b!7871368) bm!729952))

(declare-fun m!8265260 () Bool)

(assert (=> b!7871365 m!8265260))

(declare-fun m!8265262 () Bool)

(assert (=> bm!729952 m!8265262))

(declare-fun m!8265264 () Bool)

(assert (=> d!2355244 m!8265264))

(assert (=> d!2355244 m!8265200))

(declare-fun m!8265266 () Bool)

(assert (=> bm!729954 m!8265266))

(assert (=> b!7871196 d!2355244))

(declare-fun b!7871387 () Bool)

(declare-fun e!4650030 () Bool)

(declare-fun lt!2680917 () Bool)

(declare-fun call!729961 () Bool)

(assert (=> b!7871387 (= e!4650030 (= lt!2680917 call!729961))))

(declare-fun d!2355246 () Bool)

(assert (=> d!2355246 e!4650030))

(declare-fun c!1446023 () Bool)

(assert (=> d!2355246 (= c!1446023 (is-EmptyExpr!21162 (Union!21162 lt!2680897 lt!2680898)))))

(declare-fun e!4650026 () Bool)

(assert (=> d!2355246 (= lt!2680917 e!4650026)))

(declare-fun c!1446022 () Bool)

(assert (=> d!2355246 (= c!1446022 (isEmpty!42393 (t!388756 s!14219)))))

(assert (=> d!2355246 (validRegex!11572 (Union!21162 lt!2680897 lt!2680898))))

(assert (=> d!2355246 (= (matchR!10598 (Union!21162 lt!2680897 lt!2680898) (t!388756 s!14219)) lt!2680917)))

(declare-fun b!7871388 () Bool)

(declare-fun res!3127710 () Bool)

(declare-fun e!4650027 () Bool)

(assert (=> b!7871388 (=> res!3127710 e!4650027)))

(declare-fun e!4650029 () Bool)

(assert (=> b!7871388 (= res!3127710 e!4650029)))

(declare-fun res!3127712 () Bool)

(assert (=> b!7871388 (=> (not res!3127712) (not e!4650029))))

(assert (=> b!7871388 (= res!3127712 lt!2680917)))

(declare-fun b!7871389 () Bool)

(assert (=> b!7871389 (= e!4650026 (matchR!10598 (derivativeStep!6393 (Union!21162 lt!2680897 lt!2680898) (head!16104 (t!388756 s!14219))) (tail!15647 (t!388756 s!14219))))))

(declare-fun b!7871390 () Bool)

(declare-fun e!4650028 () Bool)

(assert (=> b!7871390 (= e!4650030 e!4650028)))

(declare-fun c!1446021 () Bool)

(assert (=> b!7871390 (= c!1446021 (is-EmptyLang!21162 (Union!21162 lt!2680897 lt!2680898)))))

(declare-fun b!7871391 () Bool)

(assert (=> b!7871391 (= e!4650028 (not lt!2680917))))

(declare-fun b!7871392 () Bool)

(declare-fun res!3127709 () Bool)

(assert (=> b!7871392 (=> (not res!3127709) (not e!4650029))))

(assert (=> b!7871392 (= res!3127709 (isEmpty!42393 (tail!15647 (t!388756 s!14219))))))

(declare-fun b!7871393 () Bool)

(declare-fun e!4650031 () Bool)

(assert (=> b!7871393 (= e!4650027 e!4650031)))

(declare-fun res!3127705 () Bool)

(assert (=> b!7871393 (=> (not res!3127705) (not e!4650031))))

(assert (=> b!7871393 (= res!3127705 (not lt!2680917))))

(declare-fun e!4650025 () Bool)

(declare-fun b!7871394 () Bool)

(assert (=> b!7871394 (= e!4650025 (not (= (head!16104 (t!388756 s!14219)) (c!1445978 (Union!21162 lt!2680897 lt!2680898)))))))

(declare-fun b!7871395 () Bool)

(declare-fun res!3127711 () Bool)

(assert (=> b!7871395 (=> res!3127711 e!4650027)))

(assert (=> b!7871395 (= res!3127711 (not (is-ElementMatch!21162 (Union!21162 lt!2680897 lt!2680898))))))

(assert (=> b!7871395 (= e!4650028 e!4650027)))

(declare-fun bm!729956 () Bool)

(assert (=> bm!729956 (= call!729961 (isEmpty!42393 (t!388756 s!14219)))))

(declare-fun b!7871396 () Bool)

(declare-fun res!3127707 () Bool)

(assert (=> b!7871396 (=> (not res!3127707) (not e!4650029))))

(assert (=> b!7871396 (= res!3127707 (not call!729961))))

(declare-fun b!7871397 () Bool)

(assert (=> b!7871397 (= e!4650031 e!4650025)))

(declare-fun res!3127706 () Bool)

(assert (=> b!7871397 (=> res!3127706 e!4650025)))

(assert (=> b!7871397 (= res!3127706 call!729961)))

(declare-fun b!7871398 () Bool)

(assert (=> b!7871398 (= e!4650029 (= (head!16104 (t!388756 s!14219)) (c!1445978 (Union!21162 lt!2680897 lt!2680898))))))

(declare-fun b!7871399 () Bool)

(declare-fun res!3127708 () Bool)

(assert (=> b!7871399 (=> res!3127708 e!4650025)))

(assert (=> b!7871399 (= res!3127708 (not (isEmpty!42393 (tail!15647 (t!388756 s!14219)))))))

(declare-fun b!7871400 () Bool)

(assert (=> b!7871400 (= e!4650026 (nullable!9426 (Union!21162 lt!2680897 lt!2680898)))))

(assert (= (and d!2355246 c!1446022) b!7871400))

(assert (= (and d!2355246 (not c!1446022)) b!7871389))

(assert (= (and d!2355246 c!1446023) b!7871387))

(assert (= (and d!2355246 (not c!1446023)) b!7871390))

(assert (= (and b!7871390 c!1446021) b!7871391))

(assert (= (and b!7871390 (not c!1446021)) b!7871395))

(assert (= (and b!7871395 (not res!3127711)) b!7871388))

(assert (= (and b!7871388 res!3127712) b!7871396))

(assert (= (and b!7871396 res!3127707) b!7871392))

(assert (= (and b!7871392 res!3127709) b!7871398))

(assert (= (and b!7871388 (not res!3127710)) b!7871393))

(assert (= (and b!7871393 res!3127705) b!7871397))

(assert (= (and b!7871397 (not res!3127706)) b!7871399))

(assert (= (and b!7871399 (not res!3127708)) b!7871394))

(assert (= (or b!7871387 b!7871396 b!7871397) bm!729956))

(declare-fun m!8265268 () Bool)

(assert (=> b!7871398 m!8265268))

(assert (=> b!7871389 m!8265268))

(assert (=> b!7871389 m!8265268))

(declare-fun m!8265270 () Bool)

(assert (=> b!7871389 m!8265270))

(declare-fun m!8265272 () Bool)

(assert (=> b!7871389 m!8265272))

(assert (=> b!7871389 m!8265270))

(assert (=> b!7871389 m!8265272))

(declare-fun m!8265274 () Bool)

(assert (=> b!7871389 m!8265274))

(declare-fun m!8265276 () Bool)

(assert (=> b!7871400 m!8265276))

(declare-fun m!8265278 () Bool)

(assert (=> d!2355246 m!8265278))

(declare-fun m!8265280 () Bool)

(assert (=> d!2355246 m!8265280))

(assert (=> bm!729956 m!8265278))

(assert (=> b!7871394 m!8265268))

(assert (=> b!7871392 m!8265272))

(assert (=> b!7871392 m!8265272))

(declare-fun m!8265282 () Bool)

(assert (=> b!7871392 m!8265282))

(assert (=> b!7871399 m!8265272))

(assert (=> b!7871399 m!8265272))

(assert (=> b!7871399 m!8265282))

(assert (=> b!7871196 d!2355246))

(declare-fun b!7871401 () Bool)

(declare-fun e!4650033 () Regex!21162)

(assert (=> b!7871401 (= e!4650033 (ite (= (h!80345 s!14219) (c!1445978 r2!6138)) EmptyExpr!21162 EmptyLang!21162))))

(declare-fun b!7871402 () Bool)

(declare-fun e!4650032 () Regex!21162)

(assert (=> b!7871402 (= e!4650032 e!4650033)))

(declare-fun c!1446027 () Bool)

(assert (=> b!7871402 (= c!1446027 (is-ElementMatch!21162 r2!6138))))

(declare-fun b!7871403 () Bool)

(declare-fun c!1446025 () Bool)

(assert (=> b!7871403 (= c!1446025 (nullable!9426 (regOne!42836 r2!6138)))))

(declare-fun e!4650035 () Regex!21162)

(declare-fun e!4650034 () Regex!21162)

(assert (=> b!7871403 (= e!4650035 e!4650034)))

(declare-fun bm!729957 () Bool)

(declare-fun call!729963 () Regex!21162)

(declare-fun call!729962 () Regex!21162)

(assert (=> bm!729957 (= call!729963 call!729962)))

(declare-fun b!7871404 () Bool)

(declare-fun e!4650036 () Regex!21162)

(assert (=> b!7871404 (= e!4650036 e!4650035)))

(declare-fun c!1446024 () Bool)

(assert (=> b!7871404 (= c!1446024 (is-Star!21162 r2!6138))))

(declare-fun b!7871405 () Bool)

(declare-fun call!729965 () Regex!21162)

(assert (=> b!7871405 (= e!4650034 (Union!21162 (Concat!30007 call!729965 (regTwo!42836 r2!6138)) EmptyLang!21162))))

(declare-fun call!729964 () Regex!21162)

(declare-fun bm!729958 () Bool)

(declare-fun c!1446028 () Bool)

(assert (=> bm!729958 (= call!729964 (derivativeStep!6393 (ite c!1446028 (regOne!42837 r2!6138) (regTwo!42836 r2!6138)) (h!80345 s!14219)))))

(declare-fun b!7871406 () Bool)

(assert (=> b!7871406 (= e!4650034 (Union!21162 (Concat!30007 call!729965 (regTwo!42836 r2!6138)) call!729964))))

(declare-fun b!7871407 () Bool)

(assert (=> b!7871407 (= e!4650032 EmptyLang!21162)))

(declare-fun b!7871408 () Bool)

(assert (=> b!7871408 (= e!4650035 (Concat!30007 call!729963 r2!6138))))

(declare-fun d!2355248 () Bool)

(declare-fun lt!2680918 () Regex!21162)

(assert (=> d!2355248 (validRegex!11572 lt!2680918)))

(assert (=> d!2355248 (= lt!2680918 e!4650032)))

(declare-fun c!1446026 () Bool)

(assert (=> d!2355248 (= c!1446026 (or (is-EmptyExpr!21162 r2!6138) (is-EmptyLang!21162 r2!6138)))))

(assert (=> d!2355248 (validRegex!11572 r2!6138)))

(assert (=> d!2355248 (= (derivativeStep!6393 r2!6138 (h!80345 s!14219)) lt!2680918)))

(declare-fun b!7871409 () Bool)

(assert (=> b!7871409 (= e!4650036 (Union!21162 call!729964 call!729962))))

(declare-fun bm!729959 () Bool)

(assert (=> bm!729959 (= call!729965 call!729963)))

(declare-fun bm!729960 () Bool)

(assert (=> bm!729960 (= call!729962 (derivativeStep!6393 (ite c!1446028 (regTwo!42837 r2!6138) (ite c!1446024 (reg!21491 r2!6138) (regOne!42836 r2!6138))) (h!80345 s!14219)))))

(declare-fun b!7871410 () Bool)

(assert (=> b!7871410 (= c!1446028 (is-Union!21162 r2!6138))))

(assert (=> b!7871410 (= e!4650033 e!4650036)))

(assert (= (and d!2355248 c!1446026) b!7871407))

(assert (= (and d!2355248 (not c!1446026)) b!7871402))

(assert (= (and b!7871402 c!1446027) b!7871401))

(assert (= (and b!7871402 (not c!1446027)) b!7871410))

(assert (= (and b!7871410 c!1446028) b!7871409))

(assert (= (and b!7871410 (not c!1446028)) b!7871404))

(assert (= (and b!7871404 c!1446024) b!7871408))

(assert (= (and b!7871404 (not c!1446024)) b!7871403))

(assert (= (and b!7871403 c!1446025) b!7871406))

(assert (= (and b!7871403 (not c!1446025)) b!7871405))

(assert (= (or b!7871406 b!7871405) bm!729959))

(assert (= (or b!7871408 bm!729959) bm!729957))

(assert (= (or b!7871409 bm!729957) bm!729960))

(assert (= (or b!7871409 b!7871406) bm!729958))

(declare-fun m!8265292 () Bool)

(assert (=> b!7871403 m!8265292))

(declare-fun m!8265296 () Bool)

(assert (=> bm!729958 m!8265296))

(declare-fun m!8265298 () Bool)

(assert (=> d!2355248 m!8265298))

(assert (=> d!2355248 m!8265202))

(declare-fun m!8265302 () Bool)

(assert (=> bm!729960 m!8265302))

(assert (=> b!7871196 d!2355248))

(declare-fun d!2355250 () Bool)

(assert (=> d!2355250 (matchR!10598 (Union!21162 lt!2680897 lt!2680898) (t!388756 s!14219))))

(declare-fun lt!2680921 () Unit!168978)

(declare-fun choose!59689 (Regex!21162 Regex!21162 List!74021) Unit!168978)

(assert (=> d!2355250 (= lt!2680921 (choose!59689 lt!2680897 lt!2680898 (t!388756 s!14219)))))

(declare-fun e!4650039 () Bool)

(assert (=> d!2355250 e!4650039))

(declare-fun res!3127715 () Bool)

(assert (=> d!2355250 (=> (not res!3127715) (not e!4650039))))

(assert (=> d!2355250 (= res!3127715 (validRegex!11572 lt!2680897))))

(assert (=> d!2355250 (= (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!145 lt!2680897 lt!2680898 (t!388756 s!14219)) lt!2680921)))

(declare-fun b!7871413 () Bool)

(assert (=> b!7871413 (= e!4650039 (validRegex!11572 lt!2680898))))

(assert (= (and d!2355250 res!3127715) b!7871413))

(assert (=> d!2355250 m!8265206))

(declare-fun m!8265306 () Bool)

(assert (=> d!2355250 m!8265306))

(declare-fun m!8265308 () Bool)

(assert (=> d!2355250 m!8265308))

(declare-fun m!8265310 () Bool)

(assert (=> b!7871413 m!8265310))

(assert (=> b!7871196 d!2355250))

(declare-fun b!7871414 () Bool)

(declare-fun e!4650045 () Bool)

(declare-fun lt!2680922 () Bool)

(declare-fun call!729966 () Bool)

(assert (=> b!7871414 (= e!4650045 (= lt!2680922 call!729966))))

(declare-fun d!2355254 () Bool)

(assert (=> d!2355254 e!4650045))

(declare-fun c!1446031 () Bool)

(assert (=> d!2355254 (= c!1446031 (is-EmptyExpr!21162 r1!6200))))

(declare-fun e!4650041 () Bool)

(assert (=> d!2355254 (= lt!2680922 e!4650041)))

(declare-fun c!1446030 () Bool)

(assert (=> d!2355254 (= c!1446030 (isEmpty!42393 s!14219))))

(assert (=> d!2355254 (validRegex!11572 r1!6200)))

(assert (=> d!2355254 (= (matchR!10598 r1!6200 s!14219) lt!2680922)))

(declare-fun b!7871415 () Bool)

(declare-fun res!3127721 () Bool)

(declare-fun e!4650042 () Bool)

(assert (=> b!7871415 (=> res!3127721 e!4650042)))

(declare-fun e!4650044 () Bool)

(assert (=> b!7871415 (= res!3127721 e!4650044)))

(declare-fun res!3127723 () Bool)

(assert (=> b!7871415 (=> (not res!3127723) (not e!4650044))))

(assert (=> b!7871415 (= res!3127723 lt!2680922)))

(declare-fun b!7871416 () Bool)

(assert (=> b!7871416 (= e!4650041 (matchR!10598 (derivativeStep!6393 r1!6200 (head!16104 s!14219)) (tail!15647 s!14219)))))

(declare-fun b!7871417 () Bool)

(declare-fun e!4650043 () Bool)

(assert (=> b!7871417 (= e!4650045 e!4650043)))

(declare-fun c!1446029 () Bool)

(assert (=> b!7871417 (= c!1446029 (is-EmptyLang!21162 r1!6200))))

(declare-fun b!7871418 () Bool)

(assert (=> b!7871418 (= e!4650043 (not lt!2680922))))

(declare-fun b!7871419 () Bool)

(declare-fun res!3127720 () Bool)

(assert (=> b!7871419 (=> (not res!3127720) (not e!4650044))))

(assert (=> b!7871419 (= res!3127720 (isEmpty!42393 (tail!15647 s!14219)))))

(declare-fun b!7871420 () Bool)

(declare-fun e!4650046 () Bool)

(assert (=> b!7871420 (= e!4650042 e!4650046)))

(declare-fun res!3127716 () Bool)

(assert (=> b!7871420 (=> (not res!3127716) (not e!4650046))))

(assert (=> b!7871420 (= res!3127716 (not lt!2680922))))

(declare-fun b!7871421 () Bool)

(declare-fun e!4650040 () Bool)

(assert (=> b!7871421 (= e!4650040 (not (= (head!16104 s!14219) (c!1445978 r1!6200))))))

(declare-fun b!7871422 () Bool)

(declare-fun res!3127722 () Bool)

(assert (=> b!7871422 (=> res!3127722 e!4650042)))

(assert (=> b!7871422 (= res!3127722 (not (is-ElementMatch!21162 r1!6200)))))

(assert (=> b!7871422 (= e!4650043 e!4650042)))

(declare-fun bm!729961 () Bool)

(assert (=> bm!729961 (= call!729966 (isEmpty!42393 s!14219))))

(declare-fun b!7871423 () Bool)

(declare-fun res!3127718 () Bool)

(assert (=> b!7871423 (=> (not res!3127718) (not e!4650044))))

(assert (=> b!7871423 (= res!3127718 (not call!729966))))

(declare-fun b!7871424 () Bool)

(assert (=> b!7871424 (= e!4650046 e!4650040)))

(declare-fun res!3127717 () Bool)

(assert (=> b!7871424 (=> res!3127717 e!4650040)))

(assert (=> b!7871424 (= res!3127717 call!729966)))

(declare-fun b!7871425 () Bool)

(assert (=> b!7871425 (= e!4650044 (= (head!16104 s!14219) (c!1445978 r1!6200)))))

(declare-fun b!7871426 () Bool)

(declare-fun res!3127719 () Bool)

(assert (=> b!7871426 (=> res!3127719 e!4650040)))

(assert (=> b!7871426 (= res!3127719 (not (isEmpty!42393 (tail!15647 s!14219))))))

(declare-fun b!7871427 () Bool)

(assert (=> b!7871427 (= e!4650041 (nullable!9426 r1!6200))))

(assert (= (and d!2355254 c!1446030) b!7871427))

(assert (= (and d!2355254 (not c!1446030)) b!7871416))

(assert (= (and d!2355254 c!1446031) b!7871414))

(assert (= (and d!2355254 (not c!1446031)) b!7871417))

(assert (= (and b!7871417 c!1446029) b!7871418))

(assert (= (and b!7871417 (not c!1446029)) b!7871422))

(assert (= (and b!7871422 (not res!3127722)) b!7871415))

(assert (= (and b!7871415 res!3127723) b!7871423))

(assert (= (and b!7871423 res!3127718) b!7871419))

(assert (= (and b!7871419 res!3127720) b!7871425))

(assert (= (and b!7871415 (not res!3127721)) b!7871420))

(assert (= (and b!7871420 res!3127716) b!7871424))

(assert (= (and b!7871424 (not res!3127717)) b!7871426))

(assert (= (and b!7871426 (not res!3127719)) b!7871421))

(assert (= (or b!7871414 b!7871423 b!7871424) bm!729961))

(assert (=> b!7871425 m!8265244))

(assert (=> b!7871416 m!8265244))

(assert (=> b!7871416 m!8265244))

(declare-fun m!8265312 () Bool)

(assert (=> b!7871416 m!8265312))

(assert (=> b!7871416 m!8265248))

(assert (=> b!7871416 m!8265312))

(assert (=> b!7871416 m!8265248))

(declare-fun m!8265314 () Bool)

(assert (=> b!7871416 m!8265314))

(declare-fun m!8265316 () Bool)

(assert (=> b!7871427 m!8265316))

(assert (=> d!2355254 m!8265254))

(assert (=> d!2355254 m!8265200))

(assert (=> bm!729961 m!8265254))

(assert (=> b!7871421 m!8265244))

(assert (=> b!7871419 m!8265248))

(assert (=> b!7871419 m!8265248))

(assert (=> b!7871419 m!8265258))

(assert (=> b!7871426 m!8265248))

(assert (=> b!7871426 m!8265248))

(assert (=> b!7871426 m!8265258))

(assert (=> b!7871194 d!2355254))

(declare-fun e!4650063 () Bool)

(assert (=> b!7871197 (= tp!2335575 e!4650063)))

(declare-fun b!7871459 () Bool)

(declare-fun tp!2335630 () Bool)

(declare-fun tp!2335631 () Bool)

(assert (=> b!7871459 (= e!4650063 (and tp!2335630 tp!2335631))))

(declare-fun b!7871456 () Bool)

(assert (=> b!7871456 (= e!4650063 tp_is_empty!52723)))

(declare-fun b!7871458 () Bool)

(declare-fun tp!2335628 () Bool)

(assert (=> b!7871458 (= e!4650063 tp!2335628)))

(declare-fun b!7871457 () Bool)

(declare-fun tp!2335629 () Bool)

(declare-fun tp!2335627 () Bool)

(assert (=> b!7871457 (= e!4650063 (and tp!2335629 tp!2335627))))

(assert (= (and b!7871197 (is-ElementMatch!21162 (regOne!42836 r1!6200))) b!7871456))

(assert (= (and b!7871197 (is-Concat!30007 (regOne!42836 r1!6200))) b!7871457))

(assert (= (and b!7871197 (is-Star!21162 (regOne!42836 r1!6200))) b!7871458))

(assert (= (and b!7871197 (is-Union!21162 (regOne!42836 r1!6200))) b!7871459))

(declare-fun e!4650064 () Bool)

(assert (=> b!7871197 (= tp!2335580 e!4650064)))

(declare-fun b!7871463 () Bool)

(declare-fun tp!2335635 () Bool)

(declare-fun tp!2335636 () Bool)

(assert (=> b!7871463 (= e!4650064 (and tp!2335635 tp!2335636))))

(declare-fun b!7871460 () Bool)

(assert (=> b!7871460 (= e!4650064 tp_is_empty!52723)))

(declare-fun b!7871462 () Bool)

(declare-fun tp!2335633 () Bool)

(assert (=> b!7871462 (= e!4650064 tp!2335633)))

(declare-fun b!7871461 () Bool)

(declare-fun tp!2335634 () Bool)

(declare-fun tp!2335632 () Bool)

(assert (=> b!7871461 (= e!4650064 (and tp!2335634 tp!2335632))))

(assert (= (and b!7871197 (is-ElementMatch!21162 (regTwo!42836 r1!6200))) b!7871460))

(assert (= (and b!7871197 (is-Concat!30007 (regTwo!42836 r1!6200))) b!7871461))

(assert (= (and b!7871197 (is-Star!21162 (regTwo!42836 r1!6200))) b!7871462))

(assert (= (and b!7871197 (is-Union!21162 (regTwo!42836 r1!6200))) b!7871463))

(declare-fun e!4650065 () Bool)

(assert (=> b!7871192 (= tp!2335579 e!4650065)))

(declare-fun b!7871467 () Bool)

(declare-fun tp!2335640 () Bool)

(declare-fun tp!2335641 () Bool)

(assert (=> b!7871467 (= e!4650065 (and tp!2335640 tp!2335641))))

(declare-fun b!7871464 () Bool)

(assert (=> b!7871464 (= e!4650065 tp_is_empty!52723)))

(declare-fun b!7871466 () Bool)

(declare-fun tp!2335638 () Bool)

(assert (=> b!7871466 (= e!4650065 tp!2335638)))

(declare-fun b!7871465 () Bool)

(declare-fun tp!2335639 () Bool)

(declare-fun tp!2335637 () Bool)

(assert (=> b!7871465 (= e!4650065 (and tp!2335639 tp!2335637))))

(assert (= (and b!7871192 (is-ElementMatch!21162 (regOne!42836 r2!6138))) b!7871464))

(assert (= (and b!7871192 (is-Concat!30007 (regOne!42836 r2!6138))) b!7871465))

(assert (= (and b!7871192 (is-Star!21162 (regOne!42836 r2!6138))) b!7871466))

(assert (= (and b!7871192 (is-Union!21162 (regOne!42836 r2!6138))) b!7871467))

(declare-fun e!4650066 () Bool)

(assert (=> b!7871192 (= tp!2335576 e!4650066)))

(declare-fun b!7871471 () Bool)

(declare-fun tp!2335645 () Bool)

(declare-fun tp!2335646 () Bool)

(assert (=> b!7871471 (= e!4650066 (and tp!2335645 tp!2335646))))

(declare-fun b!7871468 () Bool)

(assert (=> b!7871468 (= e!4650066 tp_is_empty!52723)))

(declare-fun b!7871470 () Bool)

(declare-fun tp!2335643 () Bool)

(assert (=> b!7871470 (= e!4650066 tp!2335643)))

(declare-fun b!7871469 () Bool)

(declare-fun tp!2335644 () Bool)

(declare-fun tp!2335642 () Bool)

(assert (=> b!7871469 (= e!4650066 (and tp!2335644 tp!2335642))))

(assert (= (and b!7871192 (is-ElementMatch!21162 (regTwo!42836 r2!6138))) b!7871468))

(assert (= (and b!7871192 (is-Concat!30007 (regTwo!42836 r2!6138))) b!7871469))

(assert (= (and b!7871192 (is-Star!21162 (regTwo!42836 r2!6138))) b!7871470))

(assert (= (and b!7871192 (is-Union!21162 (regTwo!42836 r2!6138))) b!7871471))

(declare-fun e!4650067 () Bool)

(assert (=> b!7871195 (= tp!2335583 e!4650067)))

(declare-fun b!7871475 () Bool)

(declare-fun tp!2335650 () Bool)

(declare-fun tp!2335651 () Bool)

(assert (=> b!7871475 (= e!4650067 (and tp!2335650 tp!2335651))))

(declare-fun b!7871472 () Bool)

(assert (=> b!7871472 (= e!4650067 tp_is_empty!52723)))

(declare-fun b!7871474 () Bool)

(declare-fun tp!2335648 () Bool)

(assert (=> b!7871474 (= e!4650067 tp!2335648)))

(declare-fun b!7871473 () Bool)

(declare-fun tp!2335649 () Bool)

(declare-fun tp!2335647 () Bool)

(assert (=> b!7871473 (= e!4650067 (and tp!2335649 tp!2335647))))

(assert (= (and b!7871195 (is-ElementMatch!21162 (regOne!42837 r2!6138))) b!7871472))

(assert (= (and b!7871195 (is-Concat!30007 (regOne!42837 r2!6138))) b!7871473))

(assert (= (and b!7871195 (is-Star!21162 (regOne!42837 r2!6138))) b!7871474))

(assert (= (and b!7871195 (is-Union!21162 (regOne!42837 r2!6138))) b!7871475))

(declare-fun e!4650068 () Bool)

(assert (=> b!7871195 (= tp!2335578 e!4650068)))

(declare-fun b!7871479 () Bool)

(declare-fun tp!2335655 () Bool)

(declare-fun tp!2335656 () Bool)

(assert (=> b!7871479 (= e!4650068 (and tp!2335655 tp!2335656))))

(declare-fun b!7871476 () Bool)

(assert (=> b!7871476 (= e!4650068 tp_is_empty!52723)))

(declare-fun b!7871478 () Bool)

(declare-fun tp!2335653 () Bool)

(assert (=> b!7871478 (= e!4650068 tp!2335653)))

(declare-fun b!7871477 () Bool)

(declare-fun tp!2335654 () Bool)

(declare-fun tp!2335652 () Bool)

(assert (=> b!7871477 (= e!4650068 (and tp!2335654 tp!2335652))))

(assert (= (and b!7871195 (is-ElementMatch!21162 (regTwo!42837 r2!6138))) b!7871476))

(assert (= (and b!7871195 (is-Concat!30007 (regTwo!42837 r2!6138))) b!7871477))

(assert (= (and b!7871195 (is-Star!21162 (regTwo!42837 r2!6138))) b!7871478))

(assert (= (and b!7871195 (is-Union!21162 (regTwo!42837 r2!6138))) b!7871479))

(declare-fun e!4650069 () Bool)

(assert (=> b!7871185 (= tp!2335574 e!4650069)))

(declare-fun b!7871483 () Bool)

(declare-fun tp!2335660 () Bool)

(declare-fun tp!2335661 () Bool)

(assert (=> b!7871483 (= e!4650069 (and tp!2335660 tp!2335661))))

(declare-fun b!7871480 () Bool)

(assert (=> b!7871480 (= e!4650069 tp_is_empty!52723)))

(declare-fun b!7871482 () Bool)

(declare-fun tp!2335658 () Bool)

(assert (=> b!7871482 (= e!4650069 tp!2335658)))

(declare-fun b!7871481 () Bool)

(declare-fun tp!2335659 () Bool)

(declare-fun tp!2335657 () Bool)

(assert (=> b!7871481 (= e!4650069 (and tp!2335659 tp!2335657))))

(assert (= (and b!7871185 (is-ElementMatch!21162 (reg!21491 r1!6200))) b!7871480))

(assert (= (and b!7871185 (is-Concat!30007 (reg!21491 r1!6200))) b!7871481))

(assert (= (and b!7871185 (is-Star!21162 (reg!21491 r1!6200))) b!7871482))

(assert (= (and b!7871185 (is-Union!21162 (reg!21491 r1!6200))) b!7871483))

(declare-fun e!4650070 () Bool)

(assert (=> b!7871189 (= tp!2335582 e!4650070)))

(declare-fun b!7871487 () Bool)

(declare-fun tp!2335665 () Bool)

(declare-fun tp!2335666 () Bool)

(assert (=> b!7871487 (= e!4650070 (and tp!2335665 tp!2335666))))

(declare-fun b!7871484 () Bool)

(assert (=> b!7871484 (= e!4650070 tp_is_empty!52723)))

(declare-fun b!7871486 () Bool)

(declare-fun tp!2335663 () Bool)

(assert (=> b!7871486 (= e!4650070 tp!2335663)))

(declare-fun b!7871485 () Bool)

(declare-fun tp!2335664 () Bool)

(declare-fun tp!2335662 () Bool)

(assert (=> b!7871485 (= e!4650070 (and tp!2335664 tp!2335662))))

(assert (= (and b!7871189 (is-ElementMatch!21162 (reg!21491 r2!6138))) b!7871484))

(assert (= (and b!7871189 (is-Concat!30007 (reg!21491 r2!6138))) b!7871485))

(assert (= (and b!7871189 (is-Star!21162 (reg!21491 r2!6138))) b!7871486))

(assert (= (and b!7871189 (is-Union!21162 (reg!21491 r2!6138))) b!7871487))

(declare-fun e!4650071 () Bool)

(assert (=> b!7871193 (= tp!2335577 e!4650071)))

(declare-fun b!7871491 () Bool)

(declare-fun tp!2335670 () Bool)

(declare-fun tp!2335671 () Bool)

(assert (=> b!7871491 (= e!4650071 (and tp!2335670 tp!2335671))))

(declare-fun b!7871488 () Bool)

(assert (=> b!7871488 (= e!4650071 tp_is_empty!52723)))

(declare-fun b!7871490 () Bool)

(declare-fun tp!2335668 () Bool)

(assert (=> b!7871490 (= e!4650071 tp!2335668)))

(declare-fun b!7871489 () Bool)

(declare-fun tp!2335669 () Bool)

(declare-fun tp!2335667 () Bool)

(assert (=> b!7871489 (= e!4650071 (and tp!2335669 tp!2335667))))

(assert (= (and b!7871193 (is-ElementMatch!21162 (regOne!42837 r1!6200))) b!7871488))

(assert (= (and b!7871193 (is-Concat!30007 (regOne!42837 r1!6200))) b!7871489))

(assert (= (and b!7871193 (is-Star!21162 (regOne!42837 r1!6200))) b!7871490))

(assert (= (and b!7871193 (is-Union!21162 (regOne!42837 r1!6200))) b!7871491))

(declare-fun e!4650072 () Bool)

(assert (=> b!7871193 (= tp!2335581 e!4650072)))

(declare-fun b!7871495 () Bool)

(declare-fun tp!2335675 () Bool)

(declare-fun tp!2335676 () Bool)

(assert (=> b!7871495 (= e!4650072 (and tp!2335675 tp!2335676))))

(declare-fun b!7871492 () Bool)

(assert (=> b!7871492 (= e!4650072 tp_is_empty!52723)))

(declare-fun b!7871494 () Bool)

(declare-fun tp!2335673 () Bool)

(assert (=> b!7871494 (= e!4650072 tp!2335673)))

(declare-fun b!7871493 () Bool)

(declare-fun tp!2335674 () Bool)

(declare-fun tp!2335672 () Bool)

(assert (=> b!7871493 (= e!4650072 (and tp!2335674 tp!2335672))))

(assert (= (and b!7871193 (is-ElementMatch!21162 (regTwo!42837 r1!6200))) b!7871492))

(assert (= (and b!7871193 (is-Concat!30007 (regTwo!42837 r1!6200))) b!7871493))

(assert (= (and b!7871193 (is-Star!21162 (regTwo!42837 r1!6200))) b!7871494))

(assert (= (and b!7871193 (is-Union!21162 (regTwo!42837 r1!6200))) b!7871495))

(declare-fun b!7871500 () Bool)

(declare-fun e!4650075 () Bool)

(declare-fun tp!2335679 () Bool)

(assert (=> b!7871500 (= e!4650075 (and tp_is_empty!52723 tp!2335679))))

(assert (=> b!7871188 (= tp!2335573 e!4650075)))

(assert (= (and b!7871188 (is-Cons!73897 (t!388756 s!14219))) b!7871500))

(push 1)

(assert (not b!7871458))

(assert (not bm!729961))

(assert (not b!7871320))

(assert (not b!7871321))

(assert (not b!7871419))

(assert (not b!7871489))

(assert (not bm!729940))

(assert tp_is_empty!52723)

(assert (not b!7871477))

(assert (not d!2355248))

(assert (not b!7871487))

(assert (not b!7871400))

(assert (not bm!729936))

(assert (not b!7871316))

(assert (not b!7871491))

(assert (not b!7871494))

(assert (not b!7871493))

(assert (not b!7871413))

(assert (not b!7871392))

(assert (not b!7871482))

(assert (not bm!729933))

(assert (not bm!729935))

(assert (not b!7871479))

(assert (not bm!729956))

(assert (not d!2355242))

(assert (not d!2355250))

(assert (not bm!729960))

(assert (not b!7871416))

(assert (not bm!729932))

(assert (not b!7871469))

(assert (not b!7871461))

(assert (not b!7871481))

(assert (not b!7871457))

(assert (not b!7871425))

(assert (not b!7871389))

(assert (not b!7871467))

(assert (not b!7871471))

(assert (not b!7871495))

(assert (not b!7871462))

(assert (not b!7871470))

(assert (not b!7871483))

(assert (not bm!729958))

(assert (not b!7871421))

(assert (not b!7871473))

(assert (not b!7871403))

(assert (not b!7871314))

(assert (not d!2355246))

(assert (not b!7871466))

(assert (not bm!729954))

(assert (not b!7871475))

(assert (not b!7871465))

(assert (not b!7871427))

(assert (not d!2355244))

(assert (not b!7871478))

(assert (not b!7871257))

(assert (not b!7871474))

(assert (not b!7871426))

(assert (not b!7871486))

(assert (not bm!729952))

(assert (not b!7871500))

(assert (not b!7871399))

(assert (not b!7871485))

(assert (not b!7871311))

(assert (not b!7871463))

(assert (not b!7871365))

(assert (not b!7871398))

(assert (not b!7871322))

(assert (not b!7871490))

(assert (not b!7871266))

(assert (not b!7871394))

(assert (not d!2355254))

(assert (not b!7871459))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2355268 () Bool)

(assert (=> d!2355268 (= (isEmpty!42393 (tail!15647 s!14219)) (is-Nil!73897 (tail!15647 s!14219)))))

(assert (=> b!7871321 d!2355268))

(declare-fun d!2355270 () Bool)

(assert (=> d!2355270 (= (tail!15647 s!14219) (t!388756 s!14219))))

(assert (=> b!7871321 d!2355270))

(declare-fun d!2355272 () Bool)

(assert (=> d!2355272 (= (head!16104 (t!388756 s!14219)) (h!80345 (t!388756 s!14219)))))

(assert (=> b!7871394 d!2355272))

(declare-fun b!7871645 () Bool)

(declare-fun e!4650147 () Bool)

(declare-fun lt!2680932 () Bool)

(declare-fun call!729997 () Bool)

(assert (=> b!7871645 (= e!4650147 (= lt!2680932 call!729997))))

(declare-fun d!2355274 () Bool)

(assert (=> d!2355274 e!4650147))

(declare-fun c!1446068 () Bool)

(assert (=> d!2355274 (= c!1446068 (is-EmptyExpr!21162 (derivativeStep!6393 r1!6200 (head!16104 s!14219))))))

(declare-fun e!4650143 () Bool)

(assert (=> d!2355274 (= lt!2680932 e!4650143)))

(declare-fun c!1446067 () Bool)

(assert (=> d!2355274 (= c!1446067 (isEmpty!42393 (tail!15647 s!14219)))))

(assert (=> d!2355274 (validRegex!11572 (derivativeStep!6393 r1!6200 (head!16104 s!14219)))))

(assert (=> d!2355274 (= (matchR!10598 (derivativeStep!6393 r1!6200 (head!16104 s!14219)) (tail!15647 s!14219)) lt!2680932)))

(declare-fun b!7871646 () Bool)

(declare-fun res!3127768 () Bool)

(declare-fun e!4650144 () Bool)

(assert (=> b!7871646 (=> res!3127768 e!4650144)))

(declare-fun e!4650146 () Bool)

(assert (=> b!7871646 (= res!3127768 e!4650146)))

(declare-fun res!3127770 () Bool)

(assert (=> b!7871646 (=> (not res!3127770) (not e!4650146))))

(assert (=> b!7871646 (= res!3127770 lt!2680932)))

(declare-fun b!7871647 () Bool)

(assert (=> b!7871647 (= e!4650143 (matchR!10598 (derivativeStep!6393 (derivativeStep!6393 r1!6200 (head!16104 s!14219)) (head!16104 (tail!15647 s!14219))) (tail!15647 (tail!15647 s!14219))))))

(declare-fun b!7871648 () Bool)

(declare-fun e!4650145 () Bool)

(assert (=> b!7871648 (= e!4650147 e!4650145)))

(declare-fun c!1446066 () Bool)

(assert (=> b!7871648 (= c!1446066 (is-EmptyLang!21162 (derivativeStep!6393 r1!6200 (head!16104 s!14219))))))

(declare-fun b!7871649 () Bool)

(assert (=> b!7871649 (= e!4650145 (not lt!2680932))))

(declare-fun b!7871650 () Bool)

(declare-fun res!3127767 () Bool)

(assert (=> b!7871650 (=> (not res!3127767) (not e!4650146))))

(assert (=> b!7871650 (= res!3127767 (isEmpty!42393 (tail!15647 (tail!15647 s!14219))))))

(declare-fun b!7871651 () Bool)

(declare-fun e!4650148 () Bool)

(assert (=> b!7871651 (= e!4650144 e!4650148)))

(declare-fun res!3127763 () Bool)

(assert (=> b!7871651 (=> (not res!3127763) (not e!4650148))))

(assert (=> b!7871651 (= res!3127763 (not lt!2680932))))

(declare-fun b!7871652 () Bool)

(declare-fun e!4650142 () Bool)

(assert (=> b!7871652 (= e!4650142 (not (= (head!16104 (tail!15647 s!14219)) (c!1445978 (derivativeStep!6393 r1!6200 (head!16104 s!14219))))))))

(declare-fun b!7871653 () Bool)

(declare-fun res!3127769 () Bool)

(assert (=> b!7871653 (=> res!3127769 e!4650144)))

(assert (=> b!7871653 (= res!3127769 (not (is-ElementMatch!21162 (derivativeStep!6393 r1!6200 (head!16104 s!14219)))))))

(assert (=> b!7871653 (= e!4650145 e!4650144)))

(declare-fun bm!729992 () Bool)

(assert (=> bm!729992 (= call!729997 (isEmpty!42393 (tail!15647 s!14219)))))

(declare-fun b!7871654 () Bool)

(declare-fun res!3127765 () Bool)

(assert (=> b!7871654 (=> (not res!3127765) (not e!4650146))))

(assert (=> b!7871654 (= res!3127765 (not call!729997))))

(declare-fun b!7871655 () Bool)

(assert (=> b!7871655 (= e!4650148 e!4650142)))

(declare-fun res!3127764 () Bool)

(assert (=> b!7871655 (=> res!3127764 e!4650142)))

(assert (=> b!7871655 (= res!3127764 call!729997)))

(declare-fun b!7871656 () Bool)

(assert (=> b!7871656 (= e!4650146 (= (head!16104 (tail!15647 s!14219)) (c!1445978 (derivativeStep!6393 r1!6200 (head!16104 s!14219)))))))

(declare-fun b!7871657 () Bool)

(declare-fun res!3127766 () Bool)

(assert (=> b!7871657 (=> res!3127766 e!4650142)))

(assert (=> b!7871657 (= res!3127766 (not (isEmpty!42393 (tail!15647 (tail!15647 s!14219)))))))

(declare-fun b!7871658 () Bool)

(assert (=> b!7871658 (= e!4650143 (nullable!9426 (derivativeStep!6393 r1!6200 (head!16104 s!14219))))))

(assert (= (and d!2355274 c!1446067) b!7871658))

(assert (= (and d!2355274 (not c!1446067)) b!7871647))

(assert (= (and d!2355274 c!1446068) b!7871645))

(assert (= (and d!2355274 (not c!1446068)) b!7871648))

(assert (= (and b!7871648 c!1446066) b!7871649))

(assert (= (and b!7871648 (not c!1446066)) b!7871653))

(assert (= (and b!7871653 (not res!3127769)) b!7871646))

(assert (= (and b!7871646 res!3127770) b!7871654))

(assert (= (and b!7871654 res!3127765) b!7871650))

(assert (= (and b!7871650 res!3127767) b!7871656))

(assert (= (and b!7871646 (not res!3127768)) b!7871651))

(assert (= (and b!7871651 res!3127763) b!7871655))

(assert (= (and b!7871655 (not res!3127764)) b!7871657))

(assert (= (and b!7871657 (not res!3127766)) b!7871652))

(assert (= (or b!7871645 b!7871654 b!7871655) bm!729992))

(assert (=> b!7871656 m!8265248))

(declare-fun m!8265376 () Bool)

(assert (=> b!7871656 m!8265376))

(assert (=> b!7871647 m!8265248))

(assert (=> b!7871647 m!8265376))

(assert (=> b!7871647 m!8265312))

(assert (=> b!7871647 m!8265376))

(declare-fun m!8265378 () Bool)

(assert (=> b!7871647 m!8265378))

(assert (=> b!7871647 m!8265248))

(declare-fun m!8265380 () Bool)

(assert (=> b!7871647 m!8265380))

(assert (=> b!7871647 m!8265378))

(assert (=> b!7871647 m!8265380))

(declare-fun m!8265382 () Bool)

(assert (=> b!7871647 m!8265382))

(assert (=> b!7871658 m!8265312))

(declare-fun m!8265384 () Bool)

(assert (=> b!7871658 m!8265384))

(assert (=> d!2355274 m!8265248))

(assert (=> d!2355274 m!8265258))

(assert (=> d!2355274 m!8265312))

(declare-fun m!8265386 () Bool)

(assert (=> d!2355274 m!8265386))

(assert (=> bm!729992 m!8265248))

(assert (=> bm!729992 m!8265258))

(assert (=> b!7871652 m!8265248))

(assert (=> b!7871652 m!8265376))

(assert (=> b!7871650 m!8265248))

(assert (=> b!7871650 m!8265380))

(assert (=> b!7871650 m!8265380))

(declare-fun m!8265388 () Bool)

(assert (=> b!7871650 m!8265388))

(assert (=> b!7871657 m!8265248))

(assert (=> b!7871657 m!8265380))

(assert (=> b!7871657 m!8265380))

(assert (=> b!7871657 m!8265388))

(assert (=> b!7871416 d!2355274))

(declare-fun b!7871659 () Bool)

(declare-fun e!4650150 () Regex!21162)

(assert (=> b!7871659 (= e!4650150 (ite (= (head!16104 s!14219) (c!1445978 r1!6200)) EmptyExpr!21162 EmptyLang!21162))))

(declare-fun b!7871660 () Bool)

(declare-fun e!4650149 () Regex!21162)

(assert (=> b!7871660 (= e!4650149 e!4650150)))

(declare-fun c!1446072 () Bool)

(assert (=> b!7871660 (= c!1446072 (is-ElementMatch!21162 r1!6200))))

(declare-fun b!7871661 () Bool)

(declare-fun c!1446070 () Bool)

(assert (=> b!7871661 (= c!1446070 (nullable!9426 (regOne!42836 r1!6200)))))

(declare-fun e!4650152 () Regex!21162)

(declare-fun e!4650151 () Regex!21162)

(assert (=> b!7871661 (= e!4650152 e!4650151)))

(declare-fun bm!729993 () Bool)

(declare-fun call!729999 () Regex!21162)

(declare-fun call!729998 () Regex!21162)

(assert (=> bm!729993 (= call!729999 call!729998)))

(declare-fun b!7871662 () Bool)

(declare-fun e!4650153 () Regex!21162)

(assert (=> b!7871662 (= e!4650153 e!4650152)))

(declare-fun c!1446069 () Bool)

(assert (=> b!7871662 (= c!1446069 (is-Star!21162 r1!6200))))

(declare-fun b!7871663 () Bool)

(declare-fun call!730001 () Regex!21162)

(assert (=> b!7871663 (= e!4650151 (Union!21162 (Concat!30007 call!730001 (regTwo!42836 r1!6200)) EmptyLang!21162))))

(declare-fun c!1446073 () Bool)

(declare-fun call!730000 () Regex!21162)

(declare-fun bm!729994 () Bool)

(assert (=> bm!729994 (= call!730000 (derivativeStep!6393 (ite c!1446073 (regOne!42837 r1!6200) (regTwo!42836 r1!6200)) (head!16104 s!14219)))))

(declare-fun b!7871664 () Bool)

(assert (=> b!7871664 (= e!4650151 (Union!21162 (Concat!30007 call!730001 (regTwo!42836 r1!6200)) call!730000))))

(declare-fun b!7871665 () Bool)

(assert (=> b!7871665 (= e!4650149 EmptyLang!21162)))

(declare-fun b!7871666 () Bool)

(assert (=> b!7871666 (= e!4650152 (Concat!30007 call!729999 r1!6200))))

(declare-fun d!2355276 () Bool)

(declare-fun lt!2680933 () Regex!21162)

(assert (=> d!2355276 (validRegex!11572 lt!2680933)))

(assert (=> d!2355276 (= lt!2680933 e!4650149)))

(declare-fun c!1446071 () Bool)

(assert (=> d!2355276 (= c!1446071 (or (is-EmptyExpr!21162 r1!6200) (is-EmptyLang!21162 r1!6200)))))

(assert (=> d!2355276 (validRegex!11572 r1!6200)))

(assert (=> d!2355276 (= (derivativeStep!6393 r1!6200 (head!16104 s!14219)) lt!2680933)))

(declare-fun b!7871667 () Bool)

(assert (=> b!7871667 (= e!4650153 (Union!21162 call!730000 call!729998))))

(declare-fun bm!729995 () Bool)

(assert (=> bm!729995 (= call!730001 call!729999)))

(declare-fun bm!729996 () Bool)

(assert (=> bm!729996 (= call!729998 (derivativeStep!6393 (ite c!1446073 (regTwo!42837 r1!6200) (ite c!1446069 (reg!21491 r1!6200) (regOne!42836 r1!6200))) (head!16104 s!14219)))))

(declare-fun b!7871668 () Bool)

(assert (=> b!7871668 (= c!1446073 (is-Union!21162 r1!6200))))

(assert (=> b!7871668 (= e!4650150 e!4650153)))

(assert (= (and d!2355276 c!1446071) b!7871665))

(assert (= (and d!2355276 (not c!1446071)) b!7871660))

(assert (= (and b!7871660 c!1446072) b!7871659))

(assert (= (and b!7871660 (not c!1446072)) b!7871668))

(assert (= (and b!7871668 c!1446073) b!7871667))

(assert (= (and b!7871668 (not c!1446073)) b!7871662))

(assert (= (and b!7871662 c!1446069) b!7871666))

(assert (= (and b!7871662 (not c!1446069)) b!7871661))

(assert (= (and b!7871661 c!1446070) b!7871664))

(assert (= (and b!7871661 (not c!1446070)) b!7871663))

(assert (= (or b!7871664 b!7871663) bm!729995))

(assert (= (or b!7871666 bm!729995) bm!729993))

(assert (= (or b!7871667 bm!729993) bm!729996))

(assert (= (or b!7871667 b!7871664) bm!729994))

(assert (=> b!7871661 m!8265260))

(assert (=> bm!729994 m!8265244))

(declare-fun m!8265390 () Bool)

(assert (=> bm!729994 m!8265390))

(declare-fun m!8265392 () Bool)

(assert (=> d!2355276 m!8265392))

(assert (=> d!2355276 m!8265200))

(assert (=> bm!729996 m!8265244))

(declare-fun m!8265394 () Bool)

(assert (=> bm!729996 m!8265394))

(assert (=> b!7871416 d!2355276))

(declare-fun d!2355278 () Bool)

(assert (=> d!2355278 (= (head!16104 s!14219) (h!80345 s!14219))))

(assert (=> b!7871416 d!2355278))

(assert (=> b!7871416 d!2355270))

(declare-fun d!2355280 () Bool)

(assert (=> d!2355280 (= (isEmpty!42393 s!14219) (is-Nil!73897 s!14219))))

(assert (=> d!2355242 d!2355280))

(declare-fun b!7871669 () Bool)

(declare-fun res!3127772 () Bool)

(declare-fun e!4650159 () Bool)

(assert (=> b!7871669 (=> res!3127772 e!4650159)))

(assert (=> b!7871669 (= res!3127772 (not (is-Concat!30007 (Union!21162 r1!6200 r2!6138))))))

(declare-fun e!4650160 () Bool)

(assert (=> b!7871669 (= e!4650160 e!4650159)))

(declare-fun bm!729997 () Bool)

(declare-fun c!1446075 () Bool)

(declare-fun call!730004 () Bool)

(declare-fun c!1446074 () Bool)

(assert (=> bm!729997 (= call!730004 (validRegex!11572 (ite c!1446074 (reg!21491 (Union!21162 r1!6200 r2!6138)) (ite c!1446075 (regTwo!42837 (Union!21162 r1!6200 r2!6138)) (regOne!42836 (Union!21162 r1!6200 r2!6138))))))))

(declare-fun b!7871670 () Bool)

(declare-fun res!3127771 () Bool)

(declare-fun e!4650156 () Bool)

(assert (=> b!7871670 (=> (not res!3127771) (not e!4650156))))

(declare-fun call!730002 () Bool)

(assert (=> b!7871670 (= res!3127771 call!730002)))

(assert (=> b!7871670 (= e!4650160 e!4650156)))

(declare-fun bm!729998 () Bool)

(assert (=> bm!729998 (= call!730002 (validRegex!11572 (ite c!1446075 (regOne!42837 (Union!21162 r1!6200 r2!6138)) (regTwo!42836 (Union!21162 r1!6200 r2!6138)))))))

(declare-fun d!2355282 () Bool)

(declare-fun res!3127773 () Bool)

(declare-fun e!4650155 () Bool)

(assert (=> d!2355282 (=> res!3127773 e!4650155)))

(assert (=> d!2355282 (= res!3127773 (is-ElementMatch!21162 (Union!21162 r1!6200 r2!6138)))))

(assert (=> d!2355282 (= (validRegex!11572 (Union!21162 r1!6200 r2!6138)) e!4650155)))

(declare-fun b!7871671 () Bool)

(declare-fun e!4650154 () Bool)

(declare-fun e!4650157 () Bool)

(assert (=> b!7871671 (= e!4650154 e!4650157)))

(declare-fun res!3127775 () Bool)

(assert (=> b!7871671 (= res!3127775 (not (nullable!9426 (reg!21491 (Union!21162 r1!6200 r2!6138)))))))

(assert (=> b!7871671 (=> (not res!3127775) (not e!4650157))))

(declare-fun bm!729999 () Bool)

(declare-fun call!730003 () Bool)

(assert (=> bm!729999 (= call!730003 call!730004)))

(declare-fun b!7871672 () Bool)

(assert (=> b!7871672 (= e!4650157 call!730004)))

(declare-fun b!7871673 () Bool)

(assert (=> b!7871673 (= e!4650154 e!4650160)))

(assert (=> b!7871673 (= c!1446075 (is-Union!21162 (Union!21162 r1!6200 r2!6138)))))

(declare-fun b!7871674 () Bool)

(declare-fun e!4650158 () Bool)

(assert (=> b!7871674 (= e!4650158 call!730002)))

(declare-fun b!7871675 () Bool)

(assert (=> b!7871675 (= e!4650156 call!730003)))

(declare-fun b!7871676 () Bool)

(assert (=> b!7871676 (= e!4650155 e!4650154)))

(assert (=> b!7871676 (= c!1446074 (is-Star!21162 (Union!21162 r1!6200 r2!6138)))))

(declare-fun b!7871677 () Bool)

(assert (=> b!7871677 (= e!4650159 e!4650158)))

(declare-fun res!3127774 () Bool)

(assert (=> b!7871677 (=> (not res!3127774) (not e!4650158))))

(assert (=> b!7871677 (= res!3127774 call!730003)))

(assert (= (and d!2355282 (not res!3127773)) b!7871676))

(assert (= (and b!7871676 c!1446074) b!7871671))

(assert (= (and b!7871676 (not c!1446074)) b!7871673))

(assert (= (and b!7871671 res!3127775) b!7871672))

(assert (= (and b!7871673 c!1446075) b!7871670))

(assert (= (and b!7871673 (not c!1446075)) b!7871669))

(assert (= (and b!7871670 res!3127771) b!7871675))

(assert (= (and b!7871669 (not res!3127772)) b!7871677))

(assert (= (and b!7871677 res!3127774) b!7871674))

(assert (= (or b!7871675 b!7871677) bm!729999))

(assert (= (or b!7871670 b!7871674) bm!729998))

(assert (= (or b!7871672 bm!729999) bm!729997))

(declare-fun m!8265396 () Bool)

(assert (=> bm!729997 m!8265396))

(declare-fun m!8265398 () Bool)

(assert (=> bm!729998 m!8265398))

(declare-fun m!8265400 () Bool)

(assert (=> b!7871671 m!8265400))

(assert (=> d!2355242 d!2355282))

(declare-fun d!2355284 () Bool)

(assert (=> d!2355284 (= (isEmpty!42393 (tail!15647 (t!388756 s!14219))) (is-Nil!73897 (tail!15647 (t!388756 s!14219))))))

(assert (=> b!7871392 d!2355284))

(declare-fun d!2355286 () Bool)

(assert (=> d!2355286 (= (tail!15647 (t!388756 s!14219)) (t!388756 (t!388756 s!14219)))))

(assert (=> b!7871392 d!2355286))

(assert (=> d!2355254 d!2355280))

(assert (=> d!2355254 d!2355236))

(assert (=> b!7871320 d!2355278))

(declare-fun d!2355288 () Bool)

(assert (=> d!2355288 (= (isEmpty!42393 (t!388756 s!14219)) (is-Nil!73897 (t!388756 s!14219)))))

(assert (=> bm!729956 d!2355288))

(declare-fun b!7871678 () Bool)

(declare-fun res!3127777 () Bool)

(declare-fun e!4650166 () Bool)

(assert (=> b!7871678 (=> res!3127777 e!4650166)))

(assert (=> b!7871678 (= res!3127777 (not (is-Concat!30007 lt!2680915)))))

(declare-fun e!4650167 () Bool)

(assert (=> b!7871678 (= e!4650167 e!4650166)))

(declare-fun bm!730000 () Bool)

(declare-fun call!730007 () Bool)

(declare-fun c!1446077 () Bool)

(declare-fun c!1446076 () Bool)

(assert (=> bm!730000 (= call!730007 (validRegex!11572 (ite c!1446076 (reg!21491 lt!2680915) (ite c!1446077 (regTwo!42837 lt!2680915) (regOne!42836 lt!2680915)))))))

(declare-fun b!7871679 () Bool)

(declare-fun res!3127776 () Bool)

(declare-fun e!4650163 () Bool)

(assert (=> b!7871679 (=> (not res!3127776) (not e!4650163))))

(declare-fun call!730005 () Bool)

(assert (=> b!7871679 (= res!3127776 call!730005)))

(assert (=> b!7871679 (= e!4650167 e!4650163)))

(declare-fun bm!730001 () Bool)

(assert (=> bm!730001 (= call!730005 (validRegex!11572 (ite c!1446077 (regOne!42837 lt!2680915) (regTwo!42836 lt!2680915))))))

(declare-fun d!2355290 () Bool)

(declare-fun res!3127778 () Bool)

(declare-fun e!4650162 () Bool)

(assert (=> d!2355290 (=> res!3127778 e!4650162)))

(assert (=> d!2355290 (= res!3127778 (is-ElementMatch!21162 lt!2680915))))

(assert (=> d!2355290 (= (validRegex!11572 lt!2680915) e!4650162)))

(declare-fun b!7871680 () Bool)

(declare-fun e!4650161 () Bool)

(declare-fun e!4650164 () Bool)

(assert (=> b!7871680 (= e!4650161 e!4650164)))

(declare-fun res!3127780 () Bool)

(assert (=> b!7871680 (= res!3127780 (not (nullable!9426 (reg!21491 lt!2680915))))))

(assert (=> b!7871680 (=> (not res!3127780) (not e!4650164))))

(declare-fun bm!730002 () Bool)

(declare-fun call!730006 () Bool)

(assert (=> bm!730002 (= call!730006 call!730007)))

(declare-fun b!7871681 () Bool)

(assert (=> b!7871681 (= e!4650164 call!730007)))

(declare-fun b!7871682 () Bool)

(assert (=> b!7871682 (= e!4650161 e!4650167)))

(assert (=> b!7871682 (= c!1446077 (is-Union!21162 lt!2680915))))

(declare-fun b!7871683 () Bool)

(declare-fun e!4650165 () Bool)

(assert (=> b!7871683 (= e!4650165 call!730005)))

(declare-fun b!7871684 () Bool)

(assert (=> b!7871684 (= e!4650163 call!730006)))

(declare-fun b!7871685 () Bool)

(assert (=> b!7871685 (= e!4650162 e!4650161)))

(assert (=> b!7871685 (= c!1446076 (is-Star!21162 lt!2680915))))

(declare-fun b!7871686 () Bool)

(assert (=> b!7871686 (= e!4650166 e!4650165)))

(declare-fun res!3127779 () Bool)

(assert (=> b!7871686 (=> (not res!3127779) (not e!4650165))))

(assert (=> b!7871686 (= res!3127779 call!730006)))

(assert (= (and d!2355290 (not res!3127778)) b!7871685))

(assert (= (and b!7871685 c!1446076) b!7871680))

(assert (= (and b!7871685 (not c!1446076)) b!7871682))

(assert (= (and b!7871680 res!3127780) b!7871681))

(assert (= (and b!7871682 c!1446077) b!7871679))

(assert (= (and b!7871682 (not c!1446077)) b!7871678))

(assert (= (and b!7871679 res!3127776) b!7871684))

(assert (= (and b!7871678 (not res!3127777)) b!7871686))

(assert (= (and b!7871686 res!3127779) b!7871683))

(assert (= (or b!7871684 b!7871686) bm!730002))

(assert (= (or b!7871679 b!7871683) bm!730001))

(assert (= (or b!7871681 bm!730002) bm!730000))

(declare-fun m!8265402 () Bool)

(assert (=> bm!730000 m!8265402))

(declare-fun m!8265404 () Bool)

(assert (=> bm!730001 m!8265404))

(declare-fun m!8265406 () Bool)

(assert (=> b!7871680 m!8265406))

(assert (=> d!2355244 d!2355290))

(assert (=> d!2355244 d!2355236))

(declare-fun d!2355292 () Bool)

(declare-fun nullableFct!3724 (Regex!21162) Bool)

(assert (=> d!2355292 (= (nullable!9426 (regOne!42836 r2!6138)) (nullableFct!3724 (regOne!42836 r2!6138)))))

(declare-fun bs!1967291 () Bool)

(assert (= bs!1967291 d!2355292))

(declare-fun m!8265408 () Bool)

(assert (=> bs!1967291 m!8265408))

(assert (=> b!7871403 d!2355292))

(declare-fun d!2355294 () Bool)

(assert (=> d!2355294 (= (nullable!9426 (Union!21162 r1!6200 r2!6138)) (nullableFct!3724 (Union!21162 r1!6200 r2!6138)))))

(declare-fun bs!1967292 () Bool)

(assert (= bs!1967292 d!2355294))

(declare-fun m!8265410 () Bool)

(assert (=> bs!1967292 m!8265410))

(assert (=> b!7871322 d!2355294))

(declare-fun b!7871687 () Bool)

(declare-fun res!3127782 () Bool)

(declare-fun e!4650173 () Bool)

(assert (=> b!7871687 (=> res!3127782 e!4650173)))

(assert (=> b!7871687 (= res!3127782 (not (is-Concat!30007 (ite c!1445986 (reg!21491 r2!6138) (ite c!1445987 (regTwo!42837 r2!6138) (regOne!42836 r2!6138))))))))

(declare-fun e!4650174 () Bool)

(assert (=> b!7871687 (= e!4650174 e!4650173)))

(declare-fun c!1446078 () Bool)

(declare-fun bm!730003 () Bool)

(declare-fun call!730010 () Bool)

(declare-fun c!1446079 () Bool)

(assert (=> bm!730003 (= call!730010 (validRegex!11572 (ite c!1446078 (reg!21491 (ite c!1445986 (reg!21491 r2!6138) (ite c!1445987 (regTwo!42837 r2!6138) (regOne!42836 r2!6138)))) (ite c!1446079 (regTwo!42837 (ite c!1445986 (reg!21491 r2!6138) (ite c!1445987 (regTwo!42837 r2!6138) (regOne!42836 r2!6138)))) (regOne!42836 (ite c!1445986 (reg!21491 r2!6138) (ite c!1445987 (regTwo!42837 r2!6138) (regOne!42836 r2!6138))))))))))

(declare-fun b!7871688 () Bool)

(declare-fun res!3127781 () Bool)

(declare-fun e!4650170 () Bool)

(assert (=> b!7871688 (=> (not res!3127781) (not e!4650170))))

(declare-fun call!730008 () Bool)

(assert (=> b!7871688 (= res!3127781 call!730008)))

(assert (=> b!7871688 (= e!4650174 e!4650170)))

(declare-fun bm!730004 () Bool)

(assert (=> bm!730004 (= call!730008 (validRegex!11572 (ite c!1446079 (regOne!42837 (ite c!1445986 (reg!21491 r2!6138) (ite c!1445987 (regTwo!42837 r2!6138) (regOne!42836 r2!6138)))) (regTwo!42836 (ite c!1445986 (reg!21491 r2!6138) (ite c!1445987 (regTwo!42837 r2!6138) (regOne!42836 r2!6138)))))))))

(declare-fun d!2355296 () Bool)

(declare-fun res!3127783 () Bool)

(declare-fun e!4650169 () Bool)

(assert (=> d!2355296 (=> res!3127783 e!4650169)))

(assert (=> d!2355296 (= res!3127783 (is-ElementMatch!21162 (ite c!1445986 (reg!21491 r2!6138) (ite c!1445987 (regTwo!42837 r2!6138) (regOne!42836 r2!6138)))))))

(assert (=> d!2355296 (= (validRegex!11572 (ite c!1445986 (reg!21491 r2!6138) (ite c!1445987 (regTwo!42837 r2!6138) (regOne!42836 r2!6138)))) e!4650169)))

(declare-fun b!7871689 () Bool)

(declare-fun e!4650168 () Bool)

(declare-fun e!4650171 () Bool)

(assert (=> b!7871689 (= e!4650168 e!4650171)))

(declare-fun res!3127785 () Bool)

(assert (=> b!7871689 (= res!3127785 (not (nullable!9426 (reg!21491 (ite c!1445986 (reg!21491 r2!6138) (ite c!1445987 (regTwo!42837 r2!6138) (regOne!42836 r2!6138)))))))))

(assert (=> b!7871689 (=> (not res!3127785) (not e!4650171))))

(declare-fun bm!730005 () Bool)

(declare-fun call!730009 () Bool)

(assert (=> bm!730005 (= call!730009 call!730010)))

(declare-fun b!7871690 () Bool)

(assert (=> b!7871690 (= e!4650171 call!730010)))

(declare-fun b!7871691 () Bool)

(assert (=> b!7871691 (= e!4650168 e!4650174)))

(assert (=> b!7871691 (= c!1446079 (is-Union!21162 (ite c!1445986 (reg!21491 r2!6138) (ite c!1445987 (regTwo!42837 r2!6138) (regOne!42836 r2!6138)))))))

(declare-fun b!7871692 () Bool)

(declare-fun e!4650172 () Bool)

(assert (=> b!7871692 (= e!4650172 call!730008)))

(declare-fun b!7871693 () Bool)

(assert (=> b!7871693 (= e!4650170 call!730009)))

(declare-fun b!7871694 () Bool)

(assert (=> b!7871694 (= e!4650169 e!4650168)))

(assert (=> b!7871694 (= c!1446078 (is-Star!21162 (ite c!1445986 (reg!21491 r2!6138) (ite c!1445987 (regTwo!42837 r2!6138) (regOne!42836 r2!6138)))))))

(declare-fun b!7871695 () Bool)

(assert (=> b!7871695 (= e!4650173 e!4650172)))

(declare-fun res!3127784 () Bool)

(assert (=> b!7871695 (=> (not res!3127784) (not e!4650172))))

(assert (=> b!7871695 (= res!3127784 call!730009)))

(assert (= (and d!2355296 (not res!3127783)) b!7871694))

(assert (= (and b!7871694 c!1446078) b!7871689))

(assert (= (and b!7871694 (not c!1446078)) b!7871691))

(assert (= (and b!7871689 res!3127785) b!7871690))

(assert (= (and b!7871691 c!1446079) b!7871688))

(assert (= (and b!7871691 (not c!1446079)) b!7871687))

(assert (= (and b!7871688 res!3127781) b!7871693))

(assert (= (and b!7871687 (not res!3127782)) b!7871695))

(assert (= (and b!7871695 res!3127784) b!7871692))

(assert (= (or b!7871693 b!7871695) bm!730005))

(assert (= (or b!7871688 b!7871692) bm!730004))

(assert (= (or b!7871690 bm!730005) bm!730003))

(declare-fun m!8265412 () Bool)

(assert (=> bm!730003 m!8265412))

(declare-fun m!8265414 () Bool)

(assert (=> bm!730004 m!8265414))

(declare-fun m!8265416 () Bool)

(assert (=> b!7871689 m!8265416))

(assert (=> bm!729935 d!2355296))

(declare-fun d!2355298 () Bool)

(assert (=> d!2355298 (= (nullable!9426 (regOne!42836 r1!6200)) (nullableFct!3724 (regOne!42836 r1!6200)))))

(declare-fun bs!1967293 () Bool)

(assert (= bs!1967293 d!2355298))

(declare-fun m!8265418 () Bool)

(assert (=> bs!1967293 m!8265418))

(assert (=> b!7871365 d!2355298))

(declare-fun b!7871696 () Bool)

(declare-fun e!4650176 () Regex!21162)

(assert (=> b!7871696 (= e!4650176 (ite (= (h!80345 s!14219) (c!1445978 (ite c!1446028 (regOne!42837 r2!6138) (regTwo!42836 r2!6138)))) EmptyExpr!21162 EmptyLang!21162))))

(declare-fun b!7871697 () Bool)

(declare-fun e!4650175 () Regex!21162)

(assert (=> b!7871697 (= e!4650175 e!4650176)))

(declare-fun c!1446083 () Bool)

(assert (=> b!7871697 (= c!1446083 (is-ElementMatch!21162 (ite c!1446028 (regOne!42837 r2!6138) (regTwo!42836 r2!6138))))))

(declare-fun b!7871698 () Bool)

(declare-fun c!1446081 () Bool)

(assert (=> b!7871698 (= c!1446081 (nullable!9426 (regOne!42836 (ite c!1446028 (regOne!42837 r2!6138) (regTwo!42836 r2!6138)))))))

(declare-fun e!4650178 () Regex!21162)

(declare-fun e!4650177 () Regex!21162)

(assert (=> b!7871698 (= e!4650178 e!4650177)))

(declare-fun bm!730006 () Bool)

(declare-fun call!730012 () Regex!21162)

(declare-fun call!730011 () Regex!21162)

(assert (=> bm!730006 (= call!730012 call!730011)))

(declare-fun b!7871699 () Bool)

(declare-fun e!4650179 () Regex!21162)

(assert (=> b!7871699 (= e!4650179 e!4650178)))

(declare-fun c!1446080 () Bool)

(assert (=> b!7871699 (= c!1446080 (is-Star!21162 (ite c!1446028 (regOne!42837 r2!6138) (regTwo!42836 r2!6138))))))

(declare-fun b!7871700 () Bool)

(declare-fun call!730014 () Regex!21162)

(assert (=> b!7871700 (= e!4650177 (Union!21162 (Concat!30007 call!730014 (regTwo!42836 (ite c!1446028 (regOne!42837 r2!6138) (regTwo!42836 r2!6138)))) EmptyLang!21162))))

(declare-fun call!730013 () Regex!21162)

(declare-fun c!1446084 () Bool)

(declare-fun bm!730007 () Bool)

(assert (=> bm!730007 (= call!730013 (derivativeStep!6393 (ite c!1446084 (regOne!42837 (ite c!1446028 (regOne!42837 r2!6138) (regTwo!42836 r2!6138))) (regTwo!42836 (ite c!1446028 (regOne!42837 r2!6138) (regTwo!42836 r2!6138)))) (h!80345 s!14219)))))

(declare-fun b!7871701 () Bool)

(assert (=> b!7871701 (= e!4650177 (Union!21162 (Concat!30007 call!730014 (regTwo!42836 (ite c!1446028 (regOne!42837 r2!6138) (regTwo!42836 r2!6138)))) call!730013))))

(declare-fun b!7871702 () Bool)

(assert (=> b!7871702 (= e!4650175 EmptyLang!21162)))

(declare-fun b!7871703 () Bool)

(assert (=> b!7871703 (= e!4650178 (Concat!30007 call!730012 (ite c!1446028 (regOne!42837 r2!6138) (regTwo!42836 r2!6138))))))

(declare-fun d!2355300 () Bool)

(declare-fun lt!2680934 () Regex!21162)

(assert (=> d!2355300 (validRegex!11572 lt!2680934)))

(assert (=> d!2355300 (= lt!2680934 e!4650175)))

(declare-fun c!1446082 () Bool)

(assert (=> d!2355300 (= c!1446082 (or (is-EmptyExpr!21162 (ite c!1446028 (regOne!42837 r2!6138) (regTwo!42836 r2!6138))) (is-EmptyLang!21162 (ite c!1446028 (regOne!42837 r2!6138) (regTwo!42836 r2!6138)))))))

(assert (=> d!2355300 (validRegex!11572 (ite c!1446028 (regOne!42837 r2!6138) (regTwo!42836 r2!6138)))))

(assert (=> d!2355300 (= (derivativeStep!6393 (ite c!1446028 (regOne!42837 r2!6138) (regTwo!42836 r2!6138)) (h!80345 s!14219)) lt!2680934)))

(declare-fun b!7871704 () Bool)

(assert (=> b!7871704 (= e!4650179 (Union!21162 call!730013 call!730011))))

(declare-fun bm!730008 () Bool)

(assert (=> bm!730008 (= call!730014 call!730012)))

(declare-fun bm!730009 () Bool)

(assert (=> bm!730009 (= call!730011 (derivativeStep!6393 (ite c!1446084 (regTwo!42837 (ite c!1446028 (regOne!42837 r2!6138) (regTwo!42836 r2!6138))) (ite c!1446080 (reg!21491 (ite c!1446028 (regOne!42837 r2!6138) (regTwo!42836 r2!6138))) (regOne!42836 (ite c!1446028 (regOne!42837 r2!6138) (regTwo!42836 r2!6138))))) (h!80345 s!14219)))))

(declare-fun b!7871705 () Bool)

(assert (=> b!7871705 (= c!1446084 (is-Union!21162 (ite c!1446028 (regOne!42837 r2!6138) (regTwo!42836 r2!6138))))))

(assert (=> b!7871705 (= e!4650176 e!4650179)))

(assert (= (and d!2355300 c!1446082) b!7871702))

(assert (= (and d!2355300 (not c!1446082)) b!7871697))

(assert (= (and b!7871697 c!1446083) b!7871696))

(assert (= (and b!7871697 (not c!1446083)) b!7871705))

(assert (= (and b!7871705 c!1446084) b!7871704))

(assert (= (and b!7871705 (not c!1446084)) b!7871699))

(assert (= (and b!7871699 c!1446080) b!7871703))

(assert (= (and b!7871699 (not c!1446080)) b!7871698))

(assert (= (and b!7871698 c!1446081) b!7871701))

(assert (= (and b!7871698 (not c!1446081)) b!7871700))

(assert (= (or b!7871701 b!7871700) bm!730008))

(assert (= (or b!7871703 bm!730008) bm!730006))

(assert (= (or b!7871704 bm!730006) bm!730009))

(assert (= (or b!7871704 b!7871701) bm!730007))

(declare-fun m!8265420 () Bool)

(assert (=> b!7871698 m!8265420))

(declare-fun m!8265422 () Bool)

(assert (=> bm!730007 m!8265422))

(declare-fun m!8265424 () Bool)

(assert (=> d!2355300 m!8265424))

(declare-fun m!8265426 () Bool)

(assert (=> d!2355300 m!8265426))

(declare-fun m!8265428 () Bool)

(assert (=> bm!730009 m!8265428))

(assert (=> bm!729958 d!2355300))

(assert (=> b!7871398 d!2355272))

(assert (=> b!7871421 d!2355278))

(declare-fun e!4650181 () Regex!21162)

(declare-fun b!7871706 () Bool)

(assert (=> b!7871706 (= e!4650181 (ite (= (h!80345 s!14219) (c!1445978 (ite c!1446017 (regOne!42837 r1!6200) (regTwo!42836 r1!6200)))) EmptyExpr!21162 EmptyLang!21162))))

(declare-fun b!7871707 () Bool)

(declare-fun e!4650180 () Regex!21162)

(assert (=> b!7871707 (= e!4650180 e!4650181)))

(declare-fun c!1446088 () Bool)

(assert (=> b!7871707 (= c!1446088 (is-ElementMatch!21162 (ite c!1446017 (regOne!42837 r1!6200) (regTwo!42836 r1!6200))))))

(declare-fun b!7871708 () Bool)

(declare-fun c!1446086 () Bool)

(assert (=> b!7871708 (= c!1446086 (nullable!9426 (regOne!42836 (ite c!1446017 (regOne!42837 r1!6200) (regTwo!42836 r1!6200)))))))

(declare-fun e!4650183 () Regex!21162)

(declare-fun e!4650182 () Regex!21162)

(assert (=> b!7871708 (= e!4650183 e!4650182)))

(declare-fun bm!730010 () Bool)

(declare-fun call!730016 () Regex!21162)

(declare-fun call!730015 () Regex!21162)

(assert (=> bm!730010 (= call!730016 call!730015)))

(declare-fun b!7871709 () Bool)

(declare-fun e!4650184 () Regex!21162)

(assert (=> b!7871709 (= e!4650184 e!4650183)))

(declare-fun c!1446085 () Bool)

(assert (=> b!7871709 (= c!1446085 (is-Star!21162 (ite c!1446017 (regOne!42837 r1!6200) (regTwo!42836 r1!6200))))))

(declare-fun call!730018 () Regex!21162)

(declare-fun b!7871710 () Bool)

(assert (=> b!7871710 (= e!4650182 (Union!21162 (Concat!30007 call!730018 (regTwo!42836 (ite c!1446017 (regOne!42837 r1!6200) (regTwo!42836 r1!6200)))) EmptyLang!21162))))

(declare-fun bm!730011 () Bool)

(declare-fun call!730017 () Regex!21162)

(declare-fun c!1446089 () Bool)

(assert (=> bm!730011 (= call!730017 (derivativeStep!6393 (ite c!1446089 (regOne!42837 (ite c!1446017 (regOne!42837 r1!6200) (regTwo!42836 r1!6200))) (regTwo!42836 (ite c!1446017 (regOne!42837 r1!6200) (regTwo!42836 r1!6200)))) (h!80345 s!14219)))))

(declare-fun b!7871711 () Bool)

(assert (=> b!7871711 (= e!4650182 (Union!21162 (Concat!30007 call!730018 (regTwo!42836 (ite c!1446017 (regOne!42837 r1!6200) (regTwo!42836 r1!6200)))) call!730017))))

(declare-fun b!7871712 () Bool)

(assert (=> b!7871712 (= e!4650180 EmptyLang!21162)))

(declare-fun b!7871713 () Bool)

(assert (=> b!7871713 (= e!4650183 (Concat!30007 call!730016 (ite c!1446017 (regOne!42837 r1!6200) (regTwo!42836 r1!6200))))))

(declare-fun d!2355302 () Bool)

(declare-fun lt!2680935 () Regex!21162)

(assert (=> d!2355302 (validRegex!11572 lt!2680935)))

(assert (=> d!2355302 (= lt!2680935 e!4650180)))

(declare-fun c!1446087 () Bool)

(assert (=> d!2355302 (= c!1446087 (or (is-EmptyExpr!21162 (ite c!1446017 (regOne!42837 r1!6200) (regTwo!42836 r1!6200))) (is-EmptyLang!21162 (ite c!1446017 (regOne!42837 r1!6200) (regTwo!42836 r1!6200)))))))

(assert (=> d!2355302 (validRegex!11572 (ite c!1446017 (regOne!42837 r1!6200) (regTwo!42836 r1!6200)))))

(assert (=> d!2355302 (= (derivativeStep!6393 (ite c!1446017 (regOne!42837 r1!6200) (regTwo!42836 r1!6200)) (h!80345 s!14219)) lt!2680935)))

(declare-fun b!7871714 () Bool)

(assert (=> b!7871714 (= e!4650184 (Union!21162 call!730017 call!730015))))

(declare-fun bm!730012 () Bool)

(assert (=> bm!730012 (= call!730018 call!730016)))

(declare-fun bm!730013 () Bool)

(assert (=> bm!730013 (= call!730015 (derivativeStep!6393 (ite c!1446089 (regTwo!42837 (ite c!1446017 (regOne!42837 r1!6200) (regTwo!42836 r1!6200))) (ite c!1446085 (reg!21491 (ite c!1446017 (regOne!42837 r1!6200) (regTwo!42836 r1!6200))) (regOne!42836 (ite c!1446017 (regOne!42837 r1!6200) (regTwo!42836 r1!6200))))) (h!80345 s!14219)))))

(declare-fun b!7871715 () Bool)

(assert (=> b!7871715 (= c!1446089 (is-Union!21162 (ite c!1446017 (regOne!42837 r1!6200) (regTwo!42836 r1!6200))))))

(assert (=> b!7871715 (= e!4650181 e!4650184)))

(assert (= (and d!2355302 c!1446087) b!7871712))

(assert (= (and d!2355302 (not c!1446087)) b!7871707))

(assert (= (and b!7871707 c!1446088) b!7871706))

(assert (= (and b!7871707 (not c!1446088)) b!7871715))

(assert (= (and b!7871715 c!1446089) b!7871714))

(assert (= (and b!7871715 (not c!1446089)) b!7871709))

(assert (= (and b!7871709 c!1446085) b!7871713))

(assert (= (and b!7871709 (not c!1446085)) b!7871708))

(assert (= (and b!7871708 c!1446086) b!7871711))

(assert (= (and b!7871708 (not c!1446086)) b!7871710))

(assert (= (or b!7871711 b!7871710) bm!730012))

(assert (= (or b!7871713 bm!730012) bm!730010))

(assert (= (or b!7871714 bm!730010) bm!730013))

(assert (= (or b!7871714 b!7871711) bm!730011))

(declare-fun m!8265430 () Bool)

(assert (=> b!7871708 m!8265430))

(declare-fun m!8265432 () Bool)

(assert (=> bm!730011 m!8265432))

(declare-fun m!8265434 () Bool)

(assert (=> d!2355302 m!8265434))

(declare-fun m!8265436 () Bool)

(assert (=> d!2355302 m!8265436))

(declare-fun m!8265438 () Bool)

(assert (=> bm!730013 m!8265438))

(assert (=> bm!729952 d!2355302))

(assert (=> b!7871419 d!2355268))

(assert (=> b!7871419 d!2355270))

(declare-fun b!7871726 () Bool)

(declare-fun res!3127787 () Bool)

(declare-fun e!4650195 () Bool)

(assert (=> b!7871726 (=> res!3127787 e!4650195)))

(assert (=> b!7871726 (= res!3127787 (not (is-Concat!30007 (ite c!1445987 (regOne!42837 r2!6138) (regTwo!42836 r2!6138)))))))

(declare-fun e!4650196 () Bool)

(assert (=> b!7871726 (= e!4650196 e!4650195)))

(declare-fun bm!730018 () Bool)

(declare-fun c!1446095 () Bool)

(declare-fun c!1446096 () Bool)

(declare-fun call!730025 () Bool)

(assert (=> bm!730018 (= call!730025 (validRegex!11572 (ite c!1446095 (reg!21491 (ite c!1445987 (regOne!42837 r2!6138) (regTwo!42836 r2!6138))) (ite c!1446096 (regTwo!42837 (ite c!1445987 (regOne!42837 r2!6138) (regTwo!42836 r2!6138))) (regOne!42836 (ite c!1445987 (regOne!42837 r2!6138) (regTwo!42836 r2!6138)))))))))

(declare-fun b!7871727 () Bool)

(declare-fun res!3127786 () Bool)

(declare-fun e!4650192 () Bool)

(assert (=> b!7871727 (=> (not res!3127786) (not e!4650192))))

(declare-fun call!730023 () Bool)

(assert (=> b!7871727 (= res!3127786 call!730023)))

(assert (=> b!7871727 (= e!4650196 e!4650192)))

(declare-fun bm!730019 () Bool)

(assert (=> bm!730019 (= call!730023 (validRegex!11572 (ite c!1446096 (regOne!42837 (ite c!1445987 (regOne!42837 r2!6138) (regTwo!42836 r2!6138))) (regTwo!42836 (ite c!1445987 (regOne!42837 r2!6138) (regTwo!42836 r2!6138))))))))

(declare-fun d!2355306 () Bool)

(declare-fun res!3127788 () Bool)

(declare-fun e!4650191 () Bool)

(assert (=> d!2355306 (=> res!3127788 e!4650191)))

(assert (=> d!2355306 (= res!3127788 (is-ElementMatch!21162 (ite c!1445987 (regOne!42837 r2!6138) (regTwo!42836 r2!6138))))))

(assert (=> d!2355306 (= (validRegex!11572 (ite c!1445987 (regOne!42837 r2!6138) (regTwo!42836 r2!6138))) e!4650191)))

(declare-fun b!7871728 () Bool)

(declare-fun e!4650190 () Bool)

(declare-fun e!4650193 () Bool)

(assert (=> b!7871728 (= e!4650190 e!4650193)))

(declare-fun res!3127790 () Bool)

(assert (=> b!7871728 (= res!3127790 (not (nullable!9426 (reg!21491 (ite c!1445987 (regOne!42837 r2!6138) (regTwo!42836 r2!6138))))))))

(assert (=> b!7871728 (=> (not res!3127790) (not e!4650193))))

(declare-fun bm!730020 () Bool)

(declare-fun call!730024 () Bool)

(assert (=> bm!730020 (= call!730024 call!730025)))

(declare-fun b!7871729 () Bool)

(assert (=> b!7871729 (= e!4650193 call!730025)))

(declare-fun b!7871730 () Bool)

(assert (=> b!7871730 (= e!4650190 e!4650196)))

(assert (=> b!7871730 (= c!1446096 (is-Union!21162 (ite c!1445987 (regOne!42837 r2!6138) (regTwo!42836 r2!6138))))))

(declare-fun b!7871731 () Bool)

(declare-fun e!4650194 () Bool)

(assert (=> b!7871731 (= e!4650194 call!730023)))

(declare-fun b!7871732 () Bool)

(assert (=> b!7871732 (= e!4650192 call!730024)))

(declare-fun b!7871733 () Bool)

(assert (=> b!7871733 (= e!4650191 e!4650190)))

(assert (=> b!7871733 (= c!1446095 (is-Star!21162 (ite c!1445987 (regOne!42837 r2!6138) (regTwo!42836 r2!6138))))))

(declare-fun b!7871734 () Bool)

(assert (=> b!7871734 (= e!4650195 e!4650194)))

(declare-fun res!3127789 () Bool)

(assert (=> b!7871734 (=> (not res!3127789) (not e!4650194))))

(assert (=> b!7871734 (= res!3127789 call!730024)))

(assert (= (and d!2355306 (not res!3127788)) b!7871733))

(assert (= (and b!7871733 c!1446095) b!7871728))

(assert (= (and b!7871733 (not c!1446095)) b!7871730))

(assert (= (and b!7871728 res!3127790) b!7871729))

(assert (= (and b!7871730 c!1446096) b!7871727))

(assert (= (and b!7871730 (not c!1446096)) b!7871726))

(assert (= (and b!7871727 res!3127786) b!7871732))

(assert (= (and b!7871726 (not res!3127787)) b!7871734))

(assert (= (and b!7871734 res!3127789) b!7871731))

(assert (= (or b!7871732 b!7871734) bm!730020))

(assert (= (or b!7871727 b!7871731) bm!730019))

(assert (= (or b!7871729 bm!730020) bm!730018))

(declare-fun m!8265440 () Bool)

(assert (=> bm!730018 m!8265440))

(declare-fun m!8265442 () Bool)

(assert (=> bm!730019 m!8265442))

(declare-fun m!8265444 () Bool)

(assert (=> b!7871728 m!8265444))

(assert (=> bm!729936 d!2355306))

(declare-fun b!7871735 () Bool)

(declare-fun res!3127792 () Bool)

(declare-fun e!4650202 () Bool)

(assert (=> b!7871735 (=> res!3127792 e!4650202)))

(assert (=> b!7871735 (= res!3127792 (not (is-Concat!30007 lt!2680918)))))

(declare-fun e!4650203 () Bool)

(assert (=> b!7871735 (= e!4650203 e!4650202)))

(declare-fun bm!730021 () Bool)

(declare-fun c!1446098 () Bool)

(declare-fun c!1446097 () Bool)

(declare-fun call!730028 () Bool)

(assert (=> bm!730021 (= call!730028 (validRegex!11572 (ite c!1446097 (reg!21491 lt!2680918) (ite c!1446098 (regTwo!42837 lt!2680918) (regOne!42836 lt!2680918)))))))

(declare-fun b!7871736 () Bool)

(declare-fun res!3127791 () Bool)

(declare-fun e!4650199 () Bool)

(assert (=> b!7871736 (=> (not res!3127791) (not e!4650199))))

(declare-fun call!730026 () Bool)

(assert (=> b!7871736 (= res!3127791 call!730026)))

(assert (=> b!7871736 (= e!4650203 e!4650199)))

(declare-fun bm!730022 () Bool)

(assert (=> bm!730022 (= call!730026 (validRegex!11572 (ite c!1446098 (regOne!42837 lt!2680918) (regTwo!42836 lt!2680918))))))

(declare-fun d!2355308 () Bool)

(declare-fun res!3127793 () Bool)

(declare-fun e!4650198 () Bool)

(assert (=> d!2355308 (=> res!3127793 e!4650198)))

(assert (=> d!2355308 (= res!3127793 (is-ElementMatch!21162 lt!2680918))))

(assert (=> d!2355308 (= (validRegex!11572 lt!2680918) e!4650198)))

(declare-fun b!7871737 () Bool)

(declare-fun e!4650197 () Bool)

(declare-fun e!4650200 () Bool)

(assert (=> b!7871737 (= e!4650197 e!4650200)))

(declare-fun res!3127795 () Bool)

(assert (=> b!7871737 (= res!3127795 (not (nullable!9426 (reg!21491 lt!2680918))))))

(assert (=> b!7871737 (=> (not res!3127795) (not e!4650200))))

(declare-fun bm!730023 () Bool)

(declare-fun call!730027 () Bool)

(assert (=> bm!730023 (= call!730027 call!730028)))

(declare-fun b!7871738 () Bool)

(assert (=> b!7871738 (= e!4650200 call!730028)))

(declare-fun b!7871739 () Bool)

(assert (=> b!7871739 (= e!4650197 e!4650203)))

(assert (=> b!7871739 (= c!1446098 (is-Union!21162 lt!2680918))))

(declare-fun b!7871740 () Bool)

(declare-fun e!4650201 () Bool)

(assert (=> b!7871740 (= e!4650201 call!730026)))

(declare-fun b!7871741 () Bool)

(assert (=> b!7871741 (= e!4650199 call!730027)))

(declare-fun b!7871742 () Bool)

(assert (=> b!7871742 (= e!4650198 e!4650197)))

(assert (=> b!7871742 (= c!1446097 (is-Star!21162 lt!2680918))))

(declare-fun b!7871743 () Bool)

(assert (=> b!7871743 (= e!4650202 e!4650201)))

(declare-fun res!3127794 () Bool)

(assert (=> b!7871743 (=> (not res!3127794) (not e!4650201))))

(assert (=> b!7871743 (= res!3127794 call!730027)))

(assert (= (and d!2355308 (not res!3127793)) b!7871742))

(assert (= (and b!7871742 c!1446097) b!7871737))

(assert (= (and b!7871742 (not c!1446097)) b!7871739))

(assert (= (and b!7871737 res!3127795) b!7871738))

(assert (= (and b!7871739 c!1446098) b!7871736))

(assert (= (and b!7871739 (not c!1446098)) b!7871735))

(assert (= (and b!7871736 res!3127791) b!7871741))

(assert (= (and b!7871735 (not res!3127792)) b!7871743))

(assert (= (and b!7871743 res!3127794) b!7871740))

(assert (= (or b!7871741 b!7871743) bm!730023))

(assert (= (or b!7871736 b!7871740) bm!730022))

(assert (= (or b!7871738 bm!730023) bm!730021))

(declare-fun m!8265446 () Bool)

(assert (=> bm!730021 m!8265446))

(declare-fun m!8265448 () Bool)

(assert (=> bm!730022 m!8265448))

(declare-fun m!8265450 () Bool)

(assert (=> b!7871737 m!8265450))

(assert (=> d!2355248 d!2355308))

(assert (=> d!2355248 d!2355240))

(declare-fun d!2355310 () Bool)

(assert (=> d!2355310 (= (nullable!9426 (reg!21491 r2!6138)) (nullableFct!3724 (reg!21491 r2!6138)))))

(declare-fun bs!1967294 () Bool)

(assert (= bs!1967294 d!2355310))

(declare-fun m!8265452 () Bool)

(assert (=> bs!1967294 m!8265452))

(assert (=> b!7871266 d!2355310))

(declare-fun d!2355312 () Bool)

(assert (=> d!2355312 (= (nullable!9426 (Union!21162 lt!2680897 lt!2680898)) (nullableFct!3724 (Union!21162 lt!2680897 lt!2680898)))))

(declare-fun bs!1967295 () Bool)

(assert (= bs!1967295 d!2355312))

(declare-fun m!8265454 () Bool)

(assert (=> bs!1967295 m!8265454))

(assert (=> b!7871400 d!2355312))

(assert (=> bm!729961 d!2355280))

(assert (=> b!7871399 d!2355284))

(assert (=> b!7871399 d!2355286))

(declare-fun b!7871744 () Bool)

(declare-fun res!3127797 () Bool)

(declare-fun e!4650209 () Bool)

(assert (=> b!7871744 (=> res!3127797 e!4650209)))

(assert (=> b!7871744 (= res!3127797 (not (is-Concat!30007 (ite c!1445984 (reg!21491 r1!6200) (ite c!1445985 (regTwo!42837 r1!6200) (regOne!42836 r1!6200))))))))

(declare-fun e!4650210 () Bool)

(assert (=> b!7871744 (= e!4650210 e!4650209)))

(declare-fun c!1446099 () Bool)

(declare-fun bm!730024 () Bool)

(declare-fun call!730031 () Bool)

(declare-fun c!1446100 () Bool)

(assert (=> bm!730024 (= call!730031 (validRegex!11572 (ite c!1446099 (reg!21491 (ite c!1445984 (reg!21491 r1!6200) (ite c!1445985 (regTwo!42837 r1!6200) (regOne!42836 r1!6200)))) (ite c!1446100 (regTwo!42837 (ite c!1445984 (reg!21491 r1!6200) (ite c!1445985 (regTwo!42837 r1!6200) (regOne!42836 r1!6200)))) (regOne!42836 (ite c!1445984 (reg!21491 r1!6200) (ite c!1445985 (regTwo!42837 r1!6200) (regOne!42836 r1!6200))))))))))

(declare-fun b!7871745 () Bool)

(declare-fun res!3127796 () Bool)

(declare-fun e!4650206 () Bool)

(assert (=> b!7871745 (=> (not res!3127796) (not e!4650206))))

(declare-fun call!730029 () Bool)

(assert (=> b!7871745 (= res!3127796 call!730029)))

(assert (=> b!7871745 (= e!4650210 e!4650206)))

(declare-fun bm!730025 () Bool)

(assert (=> bm!730025 (= call!730029 (validRegex!11572 (ite c!1446100 (regOne!42837 (ite c!1445984 (reg!21491 r1!6200) (ite c!1445985 (regTwo!42837 r1!6200) (regOne!42836 r1!6200)))) (regTwo!42836 (ite c!1445984 (reg!21491 r1!6200) (ite c!1445985 (regTwo!42837 r1!6200) (regOne!42836 r1!6200)))))))))

(declare-fun d!2355314 () Bool)

(declare-fun res!3127798 () Bool)

(declare-fun e!4650205 () Bool)

(assert (=> d!2355314 (=> res!3127798 e!4650205)))

(assert (=> d!2355314 (= res!3127798 (is-ElementMatch!21162 (ite c!1445984 (reg!21491 r1!6200) (ite c!1445985 (regTwo!42837 r1!6200) (regOne!42836 r1!6200)))))))

(assert (=> d!2355314 (= (validRegex!11572 (ite c!1445984 (reg!21491 r1!6200) (ite c!1445985 (regTwo!42837 r1!6200) (regOne!42836 r1!6200)))) e!4650205)))

(declare-fun b!7871746 () Bool)

(declare-fun e!4650204 () Bool)

(declare-fun e!4650207 () Bool)

(assert (=> b!7871746 (= e!4650204 e!4650207)))

(declare-fun res!3127800 () Bool)

(assert (=> b!7871746 (= res!3127800 (not (nullable!9426 (reg!21491 (ite c!1445984 (reg!21491 r1!6200) (ite c!1445985 (regTwo!42837 r1!6200) (regOne!42836 r1!6200)))))))))

(assert (=> b!7871746 (=> (not res!3127800) (not e!4650207))))

(declare-fun bm!730026 () Bool)

(declare-fun call!730030 () Bool)

(assert (=> bm!730026 (= call!730030 call!730031)))

(declare-fun b!7871747 () Bool)

(assert (=> b!7871747 (= e!4650207 call!730031)))

(declare-fun b!7871748 () Bool)

(assert (=> b!7871748 (= e!4650204 e!4650210)))

(assert (=> b!7871748 (= c!1446100 (is-Union!21162 (ite c!1445984 (reg!21491 r1!6200) (ite c!1445985 (regTwo!42837 r1!6200) (regOne!42836 r1!6200)))))))

(declare-fun b!7871749 () Bool)

(declare-fun e!4650208 () Bool)

(assert (=> b!7871749 (= e!4650208 call!730029)))

(declare-fun b!7871750 () Bool)

(assert (=> b!7871750 (= e!4650206 call!730030)))

(declare-fun b!7871751 () Bool)

(assert (=> b!7871751 (= e!4650205 e!4650204)))

(assert (=> b!7871751 (= c!1446099 (is-Star!21162 (ite c!1445984 (reg!21491 r1!6200) (ite c!1445985 (regTwo!42837 r1!6200) (regOne!42836 r1!6200)))))))

(declare-fun b!7871752 () Bool)

(assert (=> b!7871752 (= e!4650209 e!4650208)))

(declare-fun res!3127799 () Bool)

(assert (=> b!7871752 (=> (not res!3127799) (not e!4650208))))

(assert (=> b!7871752 (= res!3127799 call!730030)))

(assert (= (and d!2355314 (not res!3127798)) b!7871751))

(assert (= (and b!7871751 c!1446099) b!7871746))

(assert (= (and b!7871751 (not c!1446099)) b!7871748))

(assert (= (and b!7871746 res!3127800) b!7871747))

(assert (= (and b!7871748 c!1446100) b!7871745))

(assert (= (and b!7871748 (not c!1446100)) b!7871744))

(assert (= (and b!7871745 res!3127796) b!7871750))

(assert (= (and b!7871744 (not res!3127797)) b!7871752))

(assert (= (and b!7871752 res!3127799) b!7871749))

(assert (= (or b!7871750 b!7871752) bm!730026))

(assert (= (or b!7871745 b!7871749) bm!730025))

(assert (= (or b!7871747 bm!730026) bm!730024))

(declare-fun m!8265466 () Bool)

(assert (=> bm!730024 m!8265466))

(declare-fun m!8265468 () Bool)

(assert (=> bm!730025 m!8265468))

(declare-fun m!8265470 () Bool)

(assert (=> b!7871746 m!8265470))

(assert (=> bm!729932 d!2355314))

(declare-fun d!2355318 () Bool)

(assert (=> d!2355318 (= (nullable!9426 (reg!21491 r1!6200)) (nullableFct!3724 (reg!21491 r1!6200)))))

(declare-fun bs!1967296 () Bool)

(assert (= bs!1967296 d!2355318))

(declare-fun m!8265472 () Bool)

(assert (=> bs!1967296 m!8265472))

(assert (=> b!7871257 d!2355318))

(assert (=> b!7871425 d!2355278))

(declare-fun b!7871762 () Bool)

(declare-fun e!4650223 () Bool)

(declare-fun lt!2680937 () Bool)

(declare-fun call!730035 () Bool)

(assert (=> b!7871762 (= e!4650223 (= lt!2680937 call!730035))))

(declare-fun d!2355320 () Bool)

(assert (=> d!2355320 e!4650223))

(declare-fun c!1446105 () Bool)

(assert (=> d!2355320 (= c!1446105 (is-EmptyExpr!21162 (derivativeStep!6393 (Union!21162 r1!6200 r2!6138) (head!16104 s!14219))))))

(declare-fun e!4650219 () Bool)

(assert (=> d!2355320 (= lt!2680937 e!4650219)))

(declare-fun c!1446104 () Bool)

(assert (=> d!2355320 (= c!1446104 (isEmpty!42393 (tail!15647 s!14219)))))

(assert (=> d!2355320 (validRegex!11572 (derivativeStep!6393 (Union!21162 r1!6200 r2!6138) (head!16104 s!14219)))))

(assert (=> d!2355320 (= (matchR!10598 (derivativeStep!6393 (Union!21162 r1!6200 r2!6138) (head!16104 s!14219)) (tail!15647 s!14219)) lt!2680937)))

(declare-fun b!7871763 () Bool)

(declare-fun res!3127811 () Bool)

(declare-fun e!4650220 () Bool)

(assert (=> b!7871763 (=> res!3127811 e!4650220)))

(declare-fun e!4650222 () Bool)

(assert (=> b!7871763 (= res!3127811 e!4650222)))

(declare-fun res!3127813 () Bool)

(assert (=> b!7871763 (=> (not res!3127813) (not e!4650222))))

(assert (=> b!7871763 (= res!3127813 lt!2680937)))

(declare-fun b!7871764 () Bool)

(assert (=> b!7871764 (= e!4650219 (matchR!10598 (derivativeStep!6393 (derivativeStep!6393 (Union!21162 r1!6200 r2!6138) (head!16104 s!14219)) (head!16104 (tail!15647 s!14219))) (tail!15647 (tail!15647 s!14219))))))

(declare-fun b!7871765 () Bool)

(declare-fun e!4650221 () Bool)

(assert (=> b!7871765 (= e!4650223 e!4650221)))

(declare-fun c!1446103 () Bool)

(assert (=> b!7871765 (= c!1446103 (is-EmptyLang!21162 (derivativeStep!6393 (Union!21162 r1!6200 r2!6138) (head!16104 s!14219))))))

(declare-fun b!7871766 () Bool)

(assert (=> b!7871766 (= e!4650221 (not lt!2680937))))

(declare-fun b!7871767 () Bool)

(declare-fun res!3127810 () Bool)

(assert (=> b!7871767 (=> (not res!3127810) (not e!4650222))))

(assert (=> b!7871767 (= res!3127810 (isEmpty!42393 (tail!15647 (tail!15647 s!14219))))))

(declare-fun b!7871768 () Bool)

(declare-fun e!4650224 () Bool)

(assert (=> b!7871768 (= e!4650220 e!4650224)))

(declare-fun res!3127806 () Bool)

(assert (=> b!7871768 (=> (not res!3127806) (not e!4650224))))

(assert (=> b!7871768 (= res!3127806 (not lt!2680937))))

(declare-fun b!7871769 () Bool)

(declare-fun e!4650218 () Bool)

(assert (=> b!7871769 (= e!4650218 (not (= (head!16104 (tail!15647 s!14219)) (c!1445978 (derivativeStep!6393 (Union!21162 r1!6200 r2!6138) (head!16104 s!14219))))))))

(declare-fun b!7871770 () Bool)

(declare-fun res!3127812 () Bool)

(assert (=> b!7871770 (=> res!3127812 e!4650220)))

(assert (=> b!7871770 (= res!3127812 (not (is-ElementMatch!21162 (derivativeStep!6393 (Union!21162 r1!6200 r2!6138) (head!16104 s!14219)))))))

(assert (=> b!7871770 (= e!4650221 e!4650220)))

(declare-fun bm!730030 () Bool)

(assert (=> bm!730030 (= call!730035 (isEmpty!42393 (tail!15647 s!14219)))))

(declare-fun b!7871771 () Bool)

(declare-fun res!3127808 () Bool)

(assert (=> b!7871771 (=> (not res!3127808) (not e!4650222))))

(assert (=> b!7871771 (= res!3127808 (not call!730035))))

(declare-fun b!7871772 () Bool)

(assert (=> b!7871772 (= e!4650224 e!4650218)))

(declare-fun res!3127807 () Bool)

(assert (=> b!7871772 (=> res!3127807 e!4650218)))

(assert (=> b!7871772 (= res!3127807 call!730035)))

(declare-fun b!7871773 () Bool)

(assert (=> b!7871773 (= e!4650222 (= (head!16104 (tail!15647 s!14219)) (c!1445978 (derivativeStep!6393 (Union!21162 r1!6200 r2!6138) (head!16104 s!14219)))))))

(declare-fun b!7871774 () Bool)

(declare-fun res!3127809 () Bool)

(assert (=> b!7871774 (=> res!3127809 e!4650218)))

(assert (=> b!7871774 (= res!3127809 (not (isEmpty!42393 (tail!15647 (tail!15647 s!14219)))))))

(declare-fun b!7871775 () Bool)

(assert (=> b!7871775 (= e!4650219 (nullable!9426 (derivativeStep!6393 (Union!21162 r1!6200 r2!6138) (head!16104 s!14219))))))

(assert (= (and d!2355320 c!1446104) b!7871775))

(assert (= (and d!2355320 (not c!1446104)) b!7871764))

(assert (= (and d!2355320 c!1446105) b!7871762))

(assert (= (and d!2355320 (not c!1446105)) b!7871765))

(assert (= (and b!7871765 c!1446103) b!7871766))

(assert (= (and b!7871765 (not c!1446103)) b!7871770))

(assert (= (and b!7871770 (not res!3127812)) b!7871763))

(assert (= (and b!7871763 res!3127813) b!7871771))

(assert (= (and b!7871771 res!3127808) b!7871767))

(assert (= (and b!7871767 res!3127810) b!7871773))

(assert (= (and b!7871763 (not res!3127811)) b!7871768))

(assert (= (and b!7871768 res!3127806) b!7871772))

(assert (= (and b!7871772 (not res!3127807)) b!7871774))

(assert (= (and b!7871774 (not res!3127809)) b!7871769))

(assert (= (or b!7871762 b!7871771 b!7871772) bm!730030))

(assert (=> b!7871773 m!8265248))

(assert (=> b!7871773 m!8265376))

(assert (=> b!7871764 m!8265248))

(assert (=> b!7871764 m!8265376))

(assert (=> b!7871764 m!8265246))

(assert (=> b!7871764 m!8265376))

(declare-fun m!8265480 () Bool)

(assert (=> b!7871764 m!8265480))

(assert (=> b!7871764 m!8265248))

(assert (=> b!7871764 m!8265380))

(assert (=> b!7871764 m!8265480))

(assert (=> b!7871764 m!8265380))

(declare-fun m!8265482 () Bool)

(assert (=> b!7871764 m!8265482))

(assert (=> b!7871775 m!8265246))

(declare-fun m!8265484 () Bool)

(assert (=> b!7871775 m!8265484))

(assert (=> d!2355320 m!8265248))

(assert (=> d!2355320 m!8265258))

(assert (=> d!2355320 m!8265246))

(declare-fun m!8265486 () Bool)

(assert (=> d!2355320 m!8265486))

(assert (=> bm!730030 m!8265248))

(assert (=> bm!730030 m!8265258))

(assert (=> b!7871769 m!8265248))

(assert (=> b!7871769 m!8265376))

(assert (=> b!7871767 m!8265248))

(assert (=> b!7871767 m!8265380))

(assert (=> b!7871767 m!8265380))

(assert (=> b!7871767 m!8265388))

(assert (=> b!7871774 m!8265248))

(assert (=> b!7871774 m!8265380))

(assert (=> b!7871774 m!8265380))

(assert (=> b!7871774 m!8265388))

(assert (=> b!7871311 d!2355320))

(declare-fun b!7871776 () Bool)

(declare-fun e!4650226 () Regex!21162)

(assert (=> b!7871776 (= e!4650226 (ite (= (head!16104 s!14219) (c!1445978 (Union!21162 r1!6200 r2!6138))) EmptyExpr!21162 EmptyLang!21162))))

(declare-fun b!7871777 () Bool)

(declare-fun e!4650225 () Regex!21162)

(assert (=> b!7871777 (= e!4650225 e!4650226)))

(declare-fun c!1446109 () Bool)

(assert (=> b!7871777 (= c!1446109 (is-ElementMatch!21162 (Union!21162 r1!6200 r2!6138)))))

(declare-fun b!7871778 () Bool)

(declare-fun c!1446107 () Bool)

(assert (=> b!7871778 (= c!1446107 (nullable!9426 (regOne!42836 (Union!21162 r1!6200 r2!6138))))))

(declare-fun e!4650228 () Regex!21162)

(declare-fun e!4650227 () Regex!21162)

(assert (=> b!7871778 (= e!4650228 e!4650227)))

(declare-fun bm!730031 () Bool)

(declare-fun call!730037 () Regex!21162)

(declare-fun call!730036 () Regex!21162)

(assert (=> bm!730031 (= call!730037 call!730036)))

(declare-fun b!7871779 () Bool)

(declare-fun e!4650229 () Regex!21162)

(assert (=> b!7871779 (= e!4650229 e!4650228)))

(declare-fun c!1446106 () Bool)

(assert (=> b!7871779 (= c!1446106 (is-Star!21162 (Union!21162 r1!6200 r2!6138)))))

(declare-fun b!7871780 () Bool)

(declare-fun call!730039 () Regex!21162)

(assert (=> b!7871780 (= e!4650227 (Union!21162 (Concat!30007 call!730039 (regTwo!42836 (Union!21162 r1!6200 r2!6138))) EmptyLang!21162))))

(declare-fun c!1446110 () Bool)

(declare-fun bm!730032 () Bool)

(declare-fun call!730038 () Regex!21162)

(assert (=> bm!730032 (= call!730038 (derivativeStep!6393 (ite c!1446110 (regOne!42837 (Union!21162 r1!6200 r2!6138)) (regTwo!42836 (Union!21162 r1!6200 r2!6138))) (head!16104 s!14219)))))

(declare-fun b!7871781 () Bool)

(assert (=> b!7871781 (= e!4650227 (Union!21162 (Concat!30007 call!730039 (regTwo!42836 (Union!21162 r1!6200 r2!6138))) call!730038))))

(declare-fun b!7871782 () Bool)

(assert (=> b!7871782 (= e!4650225 EmptyLang!21162)))

(declare-fun b!7871783 () Bool)

(assert (=> b!7871783 (= e!4650228 (Concat!30007 call!730037 (Union!21162 r1!6200 r2!6138)))))

(declare-fun d!2355324 () Bool)

(declare-fun lt!2680938 () Regex!21162)

(assert (=> d!2355324 (validRegex!11572 lt!2680938)))

(assert (=> d!2355324 (= lt!2680938 e!4650225)))

(declare-fun c!1446108 () Bool)

(assert (=> d!2355324 (= c!1446108 (or (is-EmptyExpr!21162 (Union!21162 r1!6200 r2!6138)) (is-EmptyLang!21162 (Union!21162 r1!6200 r2!6138))))))

(assert (=> d!2355324 (validRegex!11572 (Union!21162 r1!6200 r2!6138))))

(assert (=> d!2355324 (= (derivativeStep!6393 (Union!21162 r1!6200 r2!6138) (head!16104 s!14219)) lt!2680938)))

(declare-fun b!7871784 () Bool)

(assert (=> b!7871784 (= e!4650229 (Union!21162 call!730038 call!730036))))

(declare-fun bm!730033 () Bool)

(assert (=> bm!730033 (= call!730039 call!730037)))

(declare-fun bm!730034 () Bool)

(assert (=> bm!730034 (= call!730036 (derivativeStep!6393 (ite c!1446110 (regTwo!42837 (Union!21162 r1!6200 r2!6138)) (ite c!1446106 (reg!21491 (Union!21162 r1!6200 r2!6138)) (regOne!42836 (Union!21162 r1!6200 r2!6138)))) (head!16104 s!14219)))))

(declare-fun b!7871785 () Bool)

(assert (=> b!7871785 (= c!1446110 (is-Union!21162 (Union!21162 r1!6200 r2!6138)))))

(assert (=> b!7871785 (= e!4650226 e!4650229)))

(assert (= (and d!2355324 c!1446108) b!7871782))

(assert (= (and d!2355324 (not c!1446108)) b!7871777))

(assert (= (and b!7871777 c!1446109) b!7871776))

(assert (= (and b!7871777 (not c!1446109)) b!7871785))

(assert (= (and b!7871785 c!1446110) b!7871784))

(assert (= (and b!7871785 (not c!1446110)) b!7871779))

(assert (= (and b!7871779 c!1446106) b!7871783))

(assert (= (and b!7871779 (not c!1446106)) b!7871778))

(assert (= (and b!7871778 c!1446107) b!7871781))

(assert (= (and b!7871778 (not c!1446107)) b!7871780))

(assert (= (or b!7871781 b!7871780) bm!730033))

(assert (= (or b!7871783 bm!730033) bm!730031))

(assert (= (or b!7871784 bm!730031) bm!730034))

(assert (= (or b!7871784 b!7871781) bm!730032))

(declare-fun m!8265488 () Bool)

(assert (=> b!7871778 m!8265488))

(assert (=> bm!730032 m!8265244))

(declare-fun m!8265490 () Bool)

(assert (=> bm!730032 m!8265490))

(declare-fun m!8265492 () Bool)

(assert (=> d!2355324 m!8265492))

(assert (=> d!2355324 m!8265256))

(assert (=> bm!730034 m!8265244))

(declare-fun m!8265494 () Bool)

(assert (=> bm!730034 m!8265494))

(assert (=> b!7871311 d!2355324))

(assert (=> b!7871311 d!2355278))

(assert (=> b!7871311 d!2355270))

(declare-fun e!4650231 () Regex!21162)

(declare-fun b!7871786 () Bool)

(assert (=> b!7871786 (= e!4650231 (ite (= (h!80345 s!14219) (c!1445978 (ite c!1446028 (regTwo!42837 r2!6138) (ite c!1446024 (reg!21491 r2!6138) (regOne!42836 r2!6138))))) EmptyExpr!21162 EmptyLang!21162))))

(declare-fun b!7871787 () Bool)

(declare-fun e!4650230 () Regex!21162)

(assert (=> b!7871787 (= e!4650230 e!4650231)))

(declare-fun c!1446114 () Bool)

(assert (=> b!7871787 (= c!1446114 (is-ElementMatch!21162 (ite c!1446028 (regTwo!42837 r2!6138) (ite c!1446024 (reg!21491 r2!6138) (regOne!42836 r2!6138)))))))

(declare-fun c!1446112 () Bool)

(declare-fun b!7871788 () Bool)

(assert (=> b!7871788 (= c!1446112 (nullable!9426 (regOne!42836 (ite c!1446028 (regTwo!42837 r2!6138) (ite c!1446024 (reg!21491 r2!6138) (regOne!42836 r2!6138))))))))

(declare-fun e!4650233 () Regex!21162)

(declare-fun e!4650232 () Regex!21162)

(assert (=> b!7871788 (= e!4650233 e!4650232)))

(declare-fun bm!730035 () Bool)

(declare-fun call!730041 () Regex!21162)

(declare-fun call!730040 () Regex!21162)

(assert (=> bm!730035 (= call!730041 call!730040)))

(declare-fun b!7871789 () Bool)

(declare-fun e!4650234 () Regex!21162)

(assert (=> b!7871789 (= e!4650234 e!4650233)))

(declare-fun c!1446111 () Bool)

(assert (=> b!7871789 (= c!1446111 (is-Star!21162 (ite c!1446028 (regTwo!42837 r2!6138) (ite c!1446024 (reg!21491 r2!6138) (regOne!42836 r2!6138)))))))

(declare-fun b!7871790 () Bool)

(declare-fun call!730043 () Regex!21162)

(assert (=> b!7871790 (= e!4650232 (Union!21162 (Concat!30007 call!730043 (regTwo!42836 (ite c!1446028 (regTwo!42837 r2!6138) (ite c!1446024 (reg!21491 r2!6138) (regOne!42836 r2!6138))))) EmptyLang!21162))))

(declare-fun bm!730036 () Bool)

(declare-fun call!730042 () Regex!21162)

(declare-fun c!1446115 () Bool)

(assert (=> bm!730036 (= call!730042 (derivativeStep!6393 (ite c!1446115 (regOne!42837 (ite c!1446028 (regTwo!42837 r2!6138) (ite c!1446024 (reg!21491 r2!6138) (regOne!42836 r2!6138)))) (regTwo!42836 (ite c!1446028 (regTwo!42837 r2!6138) (ite c!1446024 (reg!21491 r2!6138) (regOne!42836 r2!6138))))) (h!80345 s!14219)))))

(declare-fun b!7871791 () Bool)

(assert (=> b!7871791 (= e!4650232 (Union!21162 (Concat!30007 call!730043 (regTwo!42836 (ite c!1446028 (regTwo!42837 r2!6138) (ite c!1446024 (reg!21491 r2!6138) (regOne!42836 r2!6138))))) call!730042))))

(declare-fun b!7871792 () Bool)

(assert (=> b!7871792 (= e!4650230 EmptyLang!21162)))

(declare-fun b!7871793 () Bool)

(assert (=> b!7871793 (= e!4650233 (Concat!30007 call!730041 (ite c!1446028 (regTwo!42837 r2!6138) (ite c!1446024 (reg!21491 r2!6138) (regOne!42836 r2!6138)))))))

(declare-fun d!2355328 () Bool)

(declare-fun lt!2680939 () Regex!21162)

(assert (=> d!2355328 (validRegex!11572 lt!2680939)))

(assert (=> d!2355328 (= lt!2680939 e!4650230)))

(declare-fun c!1446113 () Bool)

(assert (=> d!2355328 (= c!1446113 (or (is-EmptyExpr!21162 (ite c!1446028 (regTwo!42837 r2!6138) (ite c!1446024 (reg!21491 r2!6138) (regOne!42836 r2!6138)))) (is-EmptyLang!21162 (ite c!1446028 (regTwo!42837 r2!6138) (ite c!1446024 (reg!21491 r2!6138) (regOne!42836 r2!6138))))))))

(assert (=> d!2355328 (validRegex!11572 (ite c!1446028 (regTwo!42837 r2!6138) (ite c!1446024 (reg!21491 r2!6138) (regOne!42836 r2!6138))))))

(assert (=> d!2355328 (= (derivativeStep!6393 (ite c!1446028 (regTwo!42837 r2!6138) (ite c!1446024 (reg!21491 r2!6138) (regOne!42836 r2!6138))) (h!80345 s!14219)) lt!2680939)))

(declare-fun b!7871794 () Bool)

(assert (=> b!7871794 (= e!4650234 (Union!21162 call!730042 call!730040))))

(declare-fun bm!730037 () Bool)

(assert (=> bm!730037 (= call!730043 call!730041)))

(declare-fun bm!730038 () Bool)

(assert (=> bm!730038 (= call!730040 (derivativeStep!6393 (ite c!1446115 (regTwo!42837 (ite c!1446028 (regTwo!42837 r2!6138) (ite c!1446024 (reg!21491 r2!6138) (regOne!42836 r2!6138)))) (ite c!1446111 (reg!21491 (ite c!1446028 (regTwo!42837 r2!6138) (ite c!1446024 (reg!21491 r2!6138) (regOne!42836 r2!6138)))) (regOne!42836 (ite c!1446028 (regTwo!42837 r2!6138) (ite c!1446024 (reg!21491 r2!6138) (regOne!42836 r2!6138)))))) (h!80345 s!14219)))))

(declare-fun b!7871795 () Bool)

(assert (=> b!7871795 (= c!1446115 (is-Union!21162 (ite c!1446028 (regTwo!42837 r2!6138) (ite c!1446024 (reg!21491 r2!6138) (regOne!42836 r2!6138)))))))

(assert (=> b!7871795 (= e!4650231 e!4650234)))

(assert (= (and d!2355328 c!1446113) b!7871792))

(assert (= (and d!2355328 (not c!1446113)) b!7871787))

(assert (= (and b!7871787 c!1446114) b!7871786))

(assert (= (and b!7871787 (not c!1446114)) b!7871795))

(assert (= (and b!7871795 c!1446115) b!7871794))

(assert (= (and b!7871795 (not c!1446115)) b!7871789))

(assert (= (and b!7871789 c!1446111) b!7871793))

(assert (= (and b!7871789 (not c!1446111)) b!7871788))

(assert (= (and b!7871788 c!1446112) b!7871791))

(assert (= (and b!7871788 (not c!1446112)) b!7871790))

(assert (= (or b!7871791 b!7871790) bm!730037))

(assert (= (or b!7871793 bm!730037) bm!730035))

(assert (= (or b!7871794 bm!730035) bm!730038))

(assert (= (or b!7871794 b!7871791) bm!730036))

(declare-fun m!8265496 () Bool)

(assert (=> b!7871788 m!8265496))

(declare-fun m!8265498 () Bool)

(assert (=> bm!730036 m!8265498))

(declare-fun m!8265500 () Bool)

(assert (=> d!2355328 m!8265500))

(declare-fun m!8265502 () Bool)

(assert (=> d!2355328 m!8265502))

(declare-fun m!8265504 () Bool)

(assert (=> bm!730038 m!8265504))

(assert (=> bm!729960 d!2355328))

(declare-fun b!7871796 () Bool)

(declare-fun res!3127815 () Bool)

(declare-fun e!4650240 () Bool)

(assert (=> b!7871796 (=> res!3127815 e!4650240)))

(assert (=> b!7871796 (= res!3127815 (not (is-Concat!30007 (ite c!1445985 (regOne!42837 r1!6200) (regTwo!42836 r1!6200)))))))

(declare-fun e!4650241 () Bool)

(assert (=> b!7871796 (= e!4650241 e!4650240)))

(declare-fun bm!730039 () Bool)

(declare-fun c!1446117 () Bool)

(declare-fun call!730046 () Bool)

(declare-fun c!1446116 () Bool)

(assert (=> bm!730039 (= call!730046 (validRegex!11572 (ite c!1446116 (reg!21491 (ite c!1445985 (regOne!42837 r1!6200) (regTwo!42836 r1!6200))) (ite c!1446117 (regTwo!42837 (ite c!1445985 (regOne!42837 r1!6200) (regTwo!42836 r1!6200))) (regOne!42836 (ite c!1445985 (regOne!42837 r1!6200) (regTwo!42836 r1!6200)))))))))

(declare-fun b!7871797 () Bool)

(declare-fun res!3127814 () Bool)

(declare-fun e!4650237 () Bool)

(assert (=> b!7871797 (=> (not res!3127814) (not e!4650237))))

(declare-fun call!730044 () Bool)

(assert (=> b!7871797 (= res!3127814 call!730044)))

(assert (=> b!7871797 (= e!4650241 e!4650237)))

(declare-fun bm!730040 () Bool)

(assert (=> bm!730040 (= call!730044 (validRegex!11572 (ite c!1446117 (regOne!42837 (ite c!1445985 (regOne!42837 r1!6200) (regTwo!42836 r1!6200))) (regTwo!42836 (ite c!1445985 (regOne!42837 r1!6200) (regTwo!42836 r1!6200))))))))

(declare-fun d!2355330 () Bool)

(declare-fun res!3127816 () Bool)

(declare-fun e!4650236 () Bool)

(assert (=> d!2355330 (=> res!3127816 e!4650236)))

(assert (=> d!2355330 (= res!3127816 (is-ElementMatch!21162 (ite c!1445985 (regOne!42837 r1!6200) (regTwo!42836 r1!6200))))))

(assert (=> d!2355330 (= (validRegex!11572 (ite c!1445985 (regOne!42837 r1!6200) (regTwo!42836 r1!6200))) e!4650236)))

(declare-fun b!7871798 () Bool)

(declare-fun e!4650235 () Bool)

(declare-fun e!4650238 () Bool)

(assert (=> b!7871798 (= e!4650235 e!4650238)))

(declare-fun res!3127818 () Bool)

(assert (=> b!7871798 (= res!3127818 (not (nullable!9426 (reg!21491 (ite c!1445985 (regOne!42837 r1!6200) (regTwo!42836 r1!6200))))))))

(assert (=> b!7871798 (=> (not res!3127818) (not e!4650238))))

(declare-fun bm!730041 () Bool)

(declare-fun call!730045 () Bool)

(assert (=> bm!730041 (= call!730045 call!730046)))

(declare-fun b!7871799 () Bool)

(assert (=> b!7871799 (= e!4650238 call!730046)))

(declare-fun b!7871800 () Bool)

(assert (=> b!7871800 (= e!4650235 e!4650241)))

(assert (=> b!7871800 (= c!1446117 (is-Union!21162 (ite c!1445985 (regOne!42837 r1!6200) (regTwo!42836 r1!6200))))))

(declare-fun b!7871801 () Bool)

(declare-fun e!4650239 () Bool)

(assert (=> b!7871801 (= e!4650239 call!730044)))

(declare-fun b!7871802 () Bool)

(assert (=> b!7871802 (= e!4650237 call!730045)))

(declare-fun b!7871803 () Bool)

(assert (=> b!7871803 (= e!4650236 e!4650235)))

(assert (=> b!7871803 (= c!1446116 (is-Star!21162 (ite c!1445985 (regOne!42837 r1!6200) (regTwo!42836 r1!6200))))))

(declare-fun b!7871804 () Bool)

(assert (=> b!7871804 (= e!4650240 e!4650239)))

(declare-fun res!3127817 () Bool)

(assert (=> b!7871804 (=> (not res!3127817) (not e!4650239))))

(assert (=> b!7871804 (= res!3127817 call!730045)))

(assert (= (and d!2355330 (not res!3127816)) b!7871803))

(assert (= (and b!7871803 c!1446116) b!7871798))

(assert (= (and b!7871803 (not c!1446116)) b!7871800))

(assert (= (and b!7871798 res!3127818) b!7871799))

(assert (= (and b!7871800 c!1446117) b!7871797))

(assert (= (and b!7871800 (not c!1446117)) b!7871796))

(assert (= (and b!7871797 res!3127814) b!7871802))

(assert (= (and b!7871796 (not res!3127815)) b!7871804))

(assert (= (and b!7871804 res!3127817) b!7871801))

(assert (= (or b!7871802 b!7871804) bm!730041))

(assert (= (or b!7871797 b!7871801) bm!730040))

(assert (= (or b!7871799 bm!730041) bm!730039))

(declare-fun m!8265508 () Bool)

(assert (=> bm!730039 m!8265508))

(declare-fun m!8265510 () Bool)

(assert (=> bm!730040 m!8265510))

(declare-fun m!8265512 () Bool)

(assert (=> b!7871798 m!8265512))

(assert (=> bm!729933 d!2355330))

(assert (=> b!7871314 d!2355268))

(assert (=> b!7871314 d!2355270))

(assert (=> b!7871426 d!2355268))

(assert (=> b!7871426 d!2355270))

(declare-fun b!7871805 () Bool)

(declare-fun e!4650243 () Regex!21162)

(assert (=> b!7871805 (= e!4650243 (ite (= (h!80345 s!14219) (c!1445978 (ite c!1446017 (regTwo!42837 r1!6200) (ite c!1446013 (reg!21491 r1!6200) (regOne!42836 r1!6200))))) EmptyExpr!21162 EmptyLang!21162))))

(declare-fun b!7871806 () Bool)

(declare-fun e!4650242 () Regex!21162)

(assert (=> b!7871806 (= e!4650242 e!4650243)))

(declare-fun c!1446121 () Bool)

(assert (=> b!7871806 (= c!1446121 (is-ElementMatch!21162 (ite c!1446017 (regTwo!42837 r1!6200) (ite c!1446013 (reg!21491 r1!6200) (regOne!42836 r1!6200)))))))

(declare-fun b!7871807 () Bool)

(declare-fun c!1446119 () Bool)

(assert (=> b!7871807 (= c!1446119 (nullable!9426 (regOne!42836 (ite c!1446017 (regTwo!42837 r1!6200) (ite c!1446013 (reg!21491 r1!6200) (regOne!42836 r1!6200))))))))

(declare-fun e!4650245 () Regex!21162)

(declare-fun e!4650244 () Regex!21162)

(assert (=> b!7871807 (= e!4650245 e!4650244)))

(declare-fun bm!730042 () Bool)

(declare-fun call!730048 () Regex!21162)

(declare-fun call!730047 () Regex!21162)

(assert (=> bm!730042 (= call!730048 call!730047)))

(declare-fun b!7871808 () Bool)

(declare-fun e!4650246 () Regex!21162)

(assert (=> b!7871808 (= e!4650246 e!4650245)))

(declare-fun c!1446118 () Bool)

(assert (=> b!7871808 (= c!1446118 (is-Star!21162 (ite c!1446017 (regTwo!42837 r1!6200) (ite c!1446013 (reg!21491 r1!6200) (regOne!42836 r1!6200)))))))

(declare-fun call!730050 () Regex!21162)

(declare-fun b!7871809 () Bool)

(assert (=> b!7871809 (= e!4650244 (Union!21162 (Concat!30007 call!730050 (regTwo!42836 (ite c!1446017 (regTwo!42837 r1!6200) (ite c!1446013 (reg!21491 r1!6200) (regOne!42836 r1!6200))))) EmptyLang!21162))))

(declare-fun c!1446122 () Bool)

(declare-fun bm!730043 () Bool)

(declare-fun call!730049 () Regex!21162)

(assert (=> bm!730043 (= call!730049 (derivativeStep!6393 (ite c!1446122 (regOne!42837 (ite c!1446017 (regTwo!42837 r1!6200) (ite c!1446013 (reg!21491 r1!6200) (regOne!42836 r1!6200)))) (regTwo!42836 (ite c!1446017 (regTwo!42837 r1!6200) (ite c!1446013 (reg!21491 r1!6200) (regOne!42836 r1!6200))))) (h!80345 s!14219)))))

(declare-fun b!7871810 () Bool)

(assert (=> b!7871810 (= e!4650244 (Union!21162 (Concat!30007 call!730050 (regTwo!42836 (ite c!1446017 (regTwo!42837 r1!6200) (ite c!1446013 (reg!21491 r1!6200) (regOne!42836 r1!6200))))) call!730049))))

(declare-fun b!7871811 () Bool)

(assert (=> b!7871811 (= e!4650242 EmptyLang!21162)))

(declare-fun b!7871812 () Bool)

(assert (=> b!7871812 (= e!4650245 (Concat!30007 call!730048 (ite c!1446017 (regTwo!42837 r1!6200) (ite c!1446013 (reg!21491 r1!6200) (regOne!42836 r1!6200)))))))

(declare-fun d!2355334 () Bool)

(declare-fun lt!2680940 () Regex!21162)

(assert (=> d!2355334 (validRegex!11572 lt!2680940)))

(assert (=> d!2355334 (= lt!2680940 e!4650242)))

(declare-fun c!1446120 () Bool)

(assert (=> d!2355334 (= c!1446120 (or (is-EmptyExpr!21162 (ite c!1446017 (regTwo!42837 r1!6200) (ite c!1446013 (reg!21491 r1!6200) (regOne!42836 r1!6200)))) (is-EmptyLang!21162 (ite c!1446017 (regTwo!42837 r1!6200) (ite c!1446013 (reg!21491 r1!6200) (regOne!42836 r1!6200))))))))

(assert (=> d!2355334 (validRegex!11572 (ite c!1446017 (regTwo!42837 r1!6200) (ite c!1446013 (reg!21491 r1!6200) (regOne!42836 r1!6200))))))

(assert (=> d!2355334 (= (derivativeStep!6393 (ite c!1446017 (regTwo!42837 r1!6200) (ite c!1446013 (reg!21491 r1!6200) (regOne!42836 r1!6200))) (h!80345 s!14219)) lt!2680940)))

(declare-fun b!7871813 () Bool)

(assert (=> b!7871813 (= e!4650246 (Union!21162 call!730049 call!730047))))

(declare-fun bm!730044 () Bool)

(assert (=> bm!730044 (= call!730050 call!730048)))

(declare-fun bm!730045 () Bool)

(assert (=> bm!730045 (= call!730047 (derivativeStep!6393 (ite c!1446122 (regTwo!42837 (ite c!1446017 (regTwo!42837 r1!6200) (ite c!1446013 (reg!21491 r1!6200) (regOne!42836 r1!6200)))) (ite c!1446118 (reg!21491 (ite c!1446017 (regTwo!42837 r1!6200) (ite c!1446013 (reg!21491 r1!6200) (regOne!42836 r1!6200)))) (regOne!42836 (ite c!1446017 (regTwo!42837 r1!6200) (ite c!1446013 (reg!21491 r1!6200) (regOne!42836 r1!6200)))))) (h!80345 s!14219)))))

(declare-fun b!7871814 () Bool)

(assert (=> b!7871814 (= c!1446122 (is-Union!21162 (ite c!1446017 (regTwo!42837 r1!6200) (ite c!1446013 (reg!21491 r1!6200) (regOne!42836 r1!6200)))))))

(assert (=> b!7871814 (= e!4650243 e!4650246)))

(assert (= (and d!2355334 c!1446120) b!7871811))

(assert (= (and d!2355334 (not c!1446120)) b!7871806))

(assert (= (and b!7871806 c!1446121) b!7871805))

(assert (= (and b!7871806 (not c!1446121)) b!7871814))

(assert (= (and b!7871814 c!1446122) b!7871813))

(assert (= (and b!7871814 (not c!1446122)) b!7871808))

(assert (= (and b!7871808 c!1446118) b!7871812))

(assert (= (and b!7871808 (not c!1446118)) b!7871807))

(assert (= (and b!7871807 c!1446119) b!7871810))

(assert (= (and b!7871807 (not c!1446119)) b!7871809))

(assert (= (or b!7871810 b!7871809) bm!730044))

(assert (= (or b!7871812 bm!730044) bm!730042))

(assert (= (or b!7871813 bm!730042) bm!730045))

(assert (= (or b!7871813 b!7871810) bm!730043))

(declare-fun m!8265514 () Bool)

(assert (=> b!7871807 m!8265514))

(declare-fun m!8265516 () Bool)

(assert (=> bm!730043 m!8265516))

(declare-fun m!8265518 () Bool)

(assert (=> d!2355334 m!8265518))

(declare-fun m!8265520 () Bool)

(assert (=> d!2355334 m!8265520))

(declare-fun m!8265522 () Bool)

(assert (=> bm!730045 m!8265522))

(assert (=> bm!729954 d!2355334))

(declare-fun b!7871815 () Bool)

(declare-fun res!3127820 () Bool)

(declare-fun e!4650252 () Bool)

(assert (=> b!7871815 (=> res!3127820 e!4650252)))

(assert (=> b!7871815 (= res!3127820 (not (is-Concat!30007 lt!2680898)))))

(declare-fun e!4650253 () Bool)

(assert (=> b!7871815 (= e!4650253 e!4650252)))

(declare-fun bm!730046 () Bool)

(declare-fun c!1446124 () Bool)

(declare-fun call!730053 () Bool)

(declare-fun c!1446123 () Bool)

(assert (=> bm!730046 (= call!730053 (validRegex!11572 (ite c!1446123 (reg!21491 lt!2680898) (ite c!1446124 (regTwo!42837 lt!2680898) (regOne!42836 lt!2680898)))))))

(declare-fun b!7871816 () Bool)

(declare-fun res!3127819 () Bool)

(declare-fun e!4650249 () Bool)

(assert (=> b!7871816 (=> (not res!3127819) (not e!4650249))))

(declare-fun call!730051 () Bool)

(assert (=> b!7871816 (= res!3127819 call!730051)))

(assert (=> b!7871816 (= e!4650253 e!4650249)))

(declare-fun bm!730047 () Bool)

(assert (=> bm!730047 (= call!730051 (validRegex!11572 (ite c!1446124 (regOne!42837 lt!2680898) (regTwo!42836 lt!2680898))))))

(declare-fun d!2355342 () Bool)

(declare-fun res!3127821 () Bool)

(declare-fun e!4650248 () Bool)

(assert (=> d!2355342 (=> res!3127821 e!4650248)))

(assert (=> d!2355342 (= res!3127821 (is-ElementMatch!21162 lt!2680898))))

(assert (=> d!2355342 (= (validRegex!11572 lt!2680898) e!4650248)))

(declare-fun b!7871817 () Bool)

(declare-fun e!4650247 () Bool)

(declare-fun e!4650250 () Bool)

(assert (=> b!7871817 (= e!4650247 e!4650250)))

(declare-fun res!3127823 () Bool)

(assert (=> b!7871817 (= res!3127823 (not (nullable!9426 (reg!21491 lt!2680898))))))

(assert (=> b!7871817 (=> (not res!3127823) (not e!4650250))))

(declare-fun bm!730048 () Bool)

(declare-fun call!730052 () Bool)

(assert (=> bm!730048 (= call!730052 call!730053)))

(declare-fun b!7871818 () Bool)

(assert (=> b!7871818 (= e!4650250 call!730053)))

(declare-fun b!7871819 () Bool)

(assert (=> b!7871819 (= e!4650247 e!4650253)))

(assert (=> b!7871819 (= c!1446124 (is-Union!21162 lt!2680898))))

(declare-fun b!7871820 () Bool)

(declare-fun e!4650251 () Bool)

(assert (=> b!7871820 (= e!4650251 call!730051)))

(declare-fun b!7871821 () Bool)

(assert (=> b!7871821 (= e!4650249 call!730052)))

(declare-fun b!7871822 () Bool)

(assert (=> b!7871822 (= e!4650248 e!4650247)))

(assert (=> b!7871822 (= c!1446123 (is-Star!21162 lt!2680898))))

(declare-fun b!7871823 () Bool)

(assert (=> b!7871823 (= e!4650252 e!4650251)))

(declare-fun res!3127822 () Bool)

(assert (=> b!7871823 (=> (not res!3127822) (not e!4650251))))

(assert (=> b!7871823 (= res!3127822 call!730052)))

(assert (= (and d!2355342 (not res!3127821)) b!7871822))

(assert (= (and b!7871822 c!1446123) b!7871817))

(assert (= (and b!7871822 (not c!1446123)) b!7871819))

(assert (= (and b!7871817 res!3127823) b!7871818))

(assert (= (and b!7871819 c!1446124) b!7871816))

(assert (= (and b!7871819 (not c!1446124)) b!7871815))

(assert (= (and b!7871816 res!3127819) b!7871821))

(assert (= (and b!7871815 (not res!3127820)) b!7871823))

(assert (= (and b!7871823 res!3127822) b!7871820))

(assert (= (or b!7871821 b!7871823) bm!730048))

(assert (= (or b!7871816 b!7871820) bm!730047))

(assert (= (or b!7871818 bm!730048) bm!730046))

(declare-fun m!8265526 () Bool)

(assert (=> bm!730046 m!8265526))

(declare-fun m!8265528 () Bool)

(assert (=> bm!730047 m!8265528))

(declare-fun m!8265530 () Bool)

(assert (=> b!7871817 m!8265530))

(assert (=> b!7871413 d!2355342))

(declare-fun d!2355348 () Bool)

(assert (=> d!2355348 (= (nullable!9426 r1!6200) (nullableFct!3724 r1!6200))))

(declare-fun bs!1967299 () Bool)

(assert (= bs!1967299 d!2355348))

(declare-fun m!8265532 () Bool)

(assert (=> bs!1967299 m!8265532))

(assert (=> b!7871427 d!2355348))

(assert (=> d!2355250 d!2355246))

(declare-fun d!2355350 () Bool)

(assert (=> d!2355350 (matchR!10598 (Union!21162 lt!2680897 lt!2680898) (t!388756 s!14219))))

(assert (=> d!2355350 true))

(declare-fun _$115!525 () Unit!168978)

(assert (=> d!2355350 (= (choose!59689 lt!2680897 lt!2680898 (t!388756 s!14219)) _$115!525)))

(declare-fun bs!1967300 () Bool)

(assert (= bs!1967300 d!2355350))

(assert (=> bs!1967300 m!8265206))

(assert (=> d!2355250 d!2355350))

(declare-fun b!7871833 () Bool)

(declare-fun res!3127830 () Bool)

(declare-fun e!4650266 () Bool)

(assert (=> b!7871833 (=> res!3127830 e!4650266)))

(assert (=> b!7871833 (= res!3127830 (not (is-Concat!30007 lt!2680897)))))

(declare-fun e!4650267 () Bool)

(assert (=> b!7871833 (= e!4650267 e!4650266)))

(declare-fun c!1446127 () Bool)

(declare-fun c!1446128 () Bool)

(declare-fun call!730059 () Bool)

(declare-fun bm!730052 () Bool)

(assert (=> bm!730052 (= call!730059 (validRegex!11572 (ite c!1446127 (reg!21491 lt!2680897) (ite c!1446128 (regTwo!42837 lt!2680897) (regOne!42836 lt!2680897)))))))

(declare-fun b!7871834 () Bool)

(declare-fun res!3127829 () Bool)

(declare-fun e!4650263 () Bool)

(assert (=> b!7871834 (=> (not res!3127829) (not e!4650263))))

(declare-fun call!730057 () Bool)

(assert (=> b!7871834 (= res!3127829 call!730057)))

(assert (=> b!7871834 (= e!4650267 e!4650263)))

(declare-fun bm!730053 () Bool)

(assert (=> bm!730053 (= call!730057 (validRegex!11572 (ite c!1446128 (regOne!42837 lt!2680897) (regTwo!42836 lt!2680897))))))

(declare-fun d!2355354 () Bool)

(declare-fun res!3127831 () Bool)

(declare-fun e!4650262 () Bool)

(assert (=> d!2355354 (=> res!3127831 e!4650262)))

(assert (=> d!2355354 (= res!3127831 (is-ElementMatch!21162 lt!2680897))))

(assert (=> d!2355354 (= (validRegex!11572 lt!2680897) e!4650262)))

(declare-fun b!7871835 () Bool)

(declare-fun e!4650261 () Bool)

(declare-fun e!4650264 () Bool)

(assert (=> b!7871835 (= e!4650261 e!4650264)))

(declare-fun res!3127833 () Bool)

(assert (=> b!7871835 (= res!3127833 (not (nullable!9426 (reg!21491 lt!2680897))))))

(assert (=> b!7871835 (=> (not res!3127833) (not e!4650264))))

(declare-fun bm!730054 () Bool)

(declare-fun call!730058 () Bool)

(assert (=> bm!730054 (= call!730058 call!730059)))

(declare-fun b!7871836 () Bool)

(assert (=> b!7871836 (= e!4650264 call!730059)))

(declare-fun b!7871837 () Bool)

(assert (=> b!7871837 (= e!4650261 e!4650267)))

(assert (=> b!7871837 (= c!1446128 (is-Union!21162 lt!2680897))))

(declare-fun b!7871838 () Bool)

(declare-fun e!4650265 () Bool)

(assert (=> b!7871838 (= e!4650265 call!730057)))

(declare-fun b!7871839 () Bool)

(assert (=> b!7871839 (= e!4650263 call!730058)))

(declare-fun b!7871840 () Bool)

(assert (=> b!7871840 (= e!4650262 e!4650261)))

(assert (=> b!7871840 (= c!1446127 (is-Star!21162 lt!2680897))))

(declare-fun b!7871841 () Bool)

(assert (=> b!7871841 (= e!4650266 e!4650265)))

(declare-fun res!3127832 () Bool)

(assert (=> b!7871841 (=> (not res!3127832) (not e!4650265))))

(assert (=> b!7871841 (= res!3127832 call!730058)))

(assert (= (and d!2355354 (not res!3127831)) b!7871840))

(assert (= (and b!7871840 c!1446127) b!7871835))

(assert (= (and b!7871840 (not c!1446127)) b!7871837))

(assert (= (and b!7871835 res!3127833) b!7871836))

(assert (= (and b!7871837 c!1446128) b!7871834))

(assert (= (and b!7871837 (not c!1446128)) b!7871833))

(assert (= (and b!7871834 res!3127829) b!7871839))

(assert (= (and b!7871833 (not res!3127830)) b!7871841))

(assert (= (and b!7871841 res!3127832) b!7871838))

(assert (= (or b!7871839 b!7871841) bm!730054))

(assert (= (or b!7871834 b!7871838) bm!730053))

(assert (= (or b!7871836 bm!730054) bm!730052))

(declare-fun m!8265540 () Bool)

(assert (=> bm!730052 m!8265540))

(declare-fun m!8265542 () Bool)

(assert (=> bm!730053 m!8265542))

(declare-fun m!8265544 () Bool)

(assert (=> b!7871835 m!8265544))

(assert (=> d!2355250 d!2355354))

(assert (=> b!7871316 d!2355278))

(assert (=> d!2355246 d!2355288))

(declare-fun b!7871842 () Bool)

(declare-fun res!3127835 () Bool)

(declare-fun e!4650273 () Bool)

(assert (=> b!7871842 (=> res!3127835 e!4650273)))

(assert (=> b!7871842 (= res!3127835 (not (is-Concat!30007 (Union!21162 lt!2680897 lt!2680898))))))

(declare-fun e!4650274 () Bool)

(assert (=> b!7871842 (= e!4650274 e!4650273)))

(declare-fun bm!730055 () Bool)

(declare-fun c!1446129 () Bool)

(declare-fun call!730062 () Bool)

(declare-fun c!1446130 () Bool)

(assert (=> bm!730055 (= call!730062 (validRegex!11572 (ite c!1446129 (reg!21491 (Union!21162 lt!2680897 lt!2680898)) (ite c!1446130 (regTwo!42837 (Union!21162 lt!2680897 lt!2680898)) (regOne!42836 (Union!21162 lt!2680897 lt!2680898))))))))

(declare-fun b!7871843 () Bool)

(declare-fun res!3127834 () Bool)

(declare-fun e!4650270 () Bool)

(assert (=> b!7871843 (=> (not res!3127834) (not e!4650270))))

(declare-fun call!730060 () Bool)

(assert (=> b!7871843 (= res!3127834 call!730060)))

(assert (=> b!7871843 (= e!4650274 e!4650270)))

(declare-fun bm!730056 () Bool)

(assert (=> bm!730056 (= call!730060 (validRegex!11572 (ite c!1446130 (regOne!42837 (Union!21162 lt!2680897 lt!2680898)) (regTwo!42836 (Union!21162 lt!2680897 lt!2680898)))))))

(declare-fun d!2355356 () Bool)

(declare-fun res!3127836 () Bool)

(declare-fun e!4650269 () Bool)

(assert (=> d!2355356 (=> res!3127836 e!4650269)))

(assert (=> d!2355356 (= res!3127836 (is-ElementMatch!21162 (Union!21162 lt!2680897 lt!2680898)))))

(assert (=> d!2355356 (= (validRegex!11572 (Union!21162 lt!2680897 lt!2680898)) e!4650269)))

(declare-fun b!7871844 () Bool)

(declare-fun e!4650268 () Bool)

(declare-fun e!4650271 () Bool)

(assert (=> b!7871844 (= e!4650268 e!4650271)))

(declare-fun res!3127838 () Bool)

(assert (=> b!7871844 (= res!3127838 (not (nullable!9426 (reg!21491 (Union!21162 lt!2680897 lt!2680898)))))))

(assert (=> b!7871844 (=> (not res!3127838) (not e!4650271))))

(declare-fun bm!730057 () Bool)

(declare-fun call!730061 () Bool)

(assert (=> bm!730057 (= call!730061 call!730062)))

(declare-fun b!7871845 () Bool)

(assert (=> b!7871845 (= e!4650271 call!730062)))

(declare-fun b!7871846 () Bool)

(assert (=> b!7871846 (= e!4650268 e!4650274)))

(assert (=> b!7871846 (= c!1446130 (is-Union!21162 (Union!21162 lt!2680897 lt!2680898)))))

(declare-fun b!7871847 () Bool)

(declare-fun e!4650272 () Bool)

(assert (=> b!7871847 (= e!4650272 call!730060)))

(declare-fun b!7871848 () Bool)

(assert (=> b!7871848 (= e!4650270 call!730061)))

(declare-fun b!7871849 () Bool)

(assert (=> b!7871849 (= e!4650269 e!4650268)))

(assert (=> b!7871849 (= c!1446129 (is-Star!21162 (Union!21162 lt!2680897 lt!2680898)))))

(declare-fun b!7871850 () Bool)

(assert (=> b!7871850 (= e!4650273 e!4650272)))

(declare-fun res!3127837 () Bool)

(assert (=> b!7871850 (=> (not res!3127837) (not e!4650272))))

(assert (=> b!7871850 (= res!3127837 call!730061)))

(assert (= (and d!2355356 (not res!3127836)) b!7871849))

(assert (= (and b!7871849 c!1446129) b!7871844))

(assert (= (and b!7871849 (not c!1446129)) b!7871846))

(assert (= (and b!7871844 res!3127838) b!7871845))

(assert (= (and b!7871846 c!1446130) b!7871843))

(assert (= (and b!7871846 (not c!1446130)) b!7871842))

(assert (= (and b!7871843 res!3127834) b!7871848))

(assert (= (and b!7871842 (not res!3127835)) b!7871850))

(assert (= (and b!7871850 res!3127837) b!7871847))

(assert (= (or b!7871848 b!7871850) bm!730057))

(assert (= (or b!7871843 b!7871847) bm!730056))

(assert (= (or b!7871845 bm!730057) bm!730055))

(declare-fun m!8265546 () Bool)

(assert (=> bm!730055 m!8265546))

(declare-fun m!8265548 () Bool)

(assert (=> bm!730056 m!8265548))

(declare-fun m!8265550 () Bool)

(assert (=> b!7871844 m!8265550))

(assert (=> d!2355246 d!2355356))

(declare-fun b!7871851 () Bool)

(declare-fun e!4650280 () Bool)

(declare-fun lt!2680941 () Bool)

(declare-fun call!730063 () Bool)

(assert (=> b!7871851 (= e!4650280 (= lt!2680941 call!730063))))

(declare-fun d!2355358 () Bool)

(assert (=> d!2355358 e!4650280))

(declare-fun c!1446133 () Bool)

(assert (=> d!2355358 (= c!1446133 (is-EmptyExpr!21162 (derivativeStep!6393 (Union!21162 lt!2680897 lt!2680898) (head!16104 (t!388756 s!14219)))))))

(declare-fun e!4650276 () Bool)

(assert (=> d!2355358 (= lt!2680941 e!4650276)))

(declare-fun c!1446132 () Bool)

(assert (=> d!2355358 (= c!1446132 (isEmpty!42393 (tail!15647 (t!388756 s!14219))))))

(assert (=> d!2355358 (validRegex!11572 (derivativeStep!6393 (Union!21162 lt!2680897 lt!2680898) (head!16104 (t!388756 s!14219))))))

(assert (=> d!2355358 (= (matchR!10598 (derivativeStep!6393 (Union!21162 lt!2680897 lt!2680898) (head!16104 (t!388756 s!14219))) (tail!15647 (t!388756 s!14219))) lt!2680941)))

(declare-fun b!7871852 () Bool)

(declare-fun res!3127844 () Bool)

(declare-fun e!4650277 () Bool)

(assert (=> b!7871852 (=> res!3127844 e!4650277)))

(declare-fun e!4650279 () Bool)

(assert (=> b!7871852 (= res!3127844 e!4650279)))

(declare-fun res!3127846 () Bool)

(assert (=> b!7871852 (=> (not res!3127846) (not e!4650279))))

(assert (=> b!7871852 (= res!3127846 lt!2680941)))

(declare-fun b!7871853 () Bool)

(assert (=> b!7871853 (= e!4650276 (matchR!10598 (derivativeStep!6393 (derivativeStep!6393 (Union!21162 lt!2680897 lt!2680898) (head!16104 (t!388756 s!14219))) (head!16104 (tail!15647 (t!388756 s!14219)))) (tail!15647 (tail!15647 (t!388756 s!14219)))))))

(declare-fun b!7871854 () Bool)

(declare-fun e!4650278 () Bool)

(assert (=> b!7871854 (= e!4650280 e!4650278)))

(declare-fun c!1446131 () Bool)

(assert (=> b!7871854 (= c!1446131 (is-EmptyLang!21162 (derivativeStep!6393 (Union!21162 lt!2680897 lt!2680898) (head!16104 (t!388756 s!14219)))))))

(declare-fun b!7871855 () Bool)

(assert (=> b!7871855 (= e!4650278 (not lt!2680941))))

(declare-fun b!7871856 () Bool)

(declare-fun res!3127843 () Bool)

(assert (=> b!7871856 (=> (not res!3127843) (not e!4650279))))

(assert (=> b!7871856 (= res!3127843 (isEmpty!42393 (tail!15647 (tail!15647 (t!388756 s!14219)))))))

(declare-fun b!7871857 () Bool)

(declare-fun e!4650281 () Bool)

(assert (=> b!7871857 (= e!4650277 e!4650281)))

(declare-fun res!3127839 () Bool)

(assert (=> b!7871857 (=> (not res!3127839) (not e!4650281))))

(assert (=> b!7871857 (= res!3127839 (not lt!2680941))))

(declare-fun e!4650275 () Bool)

(declare-fun b!7871858 () Bool)

(assert (=> b!7871858 (= e!4650275 (not (= (head!16104 (tail!15647 (t!388756 s!14219))) (c!1445978 (derivativeStep!6393 (Union!21162 lt!2680897 lt!2680898) (head!16104 (t!388756 s!14219)))))))))

(declare-fun b!7871859 () Bool)

(declare-fun res!3127845 () Bool)

(assert (=> b!7871859 (=> res!3127845 e!4650277)))

(assert (=> b!7871859 (= res!3127845 (not (is-ElementMatch!21162 (derivativeStep!6393 (Union!21162 lt!2680897 lt!2680898) (head!16104 (t!388756 s!14219))))))))

(assert (=> b!7871859 (= e!4650278 e!4650277)))

(declare-fun bm!730058 () Bool)

(assert (=> bm!730058 (= call!730063 (isEmpty!42393 (tail!15647 (t!388756 s!14219))))))

(declare-fun b!7871860 () Bool)

(declare-fun res!3127841 () Bool)

(assert (=> b!7871860 (=> (not res!3127841) (not e!4650279))))

(assert (=> b!7871860 (= res!3127841 (not call!730063))))

(declare-fun b!7871861 () Bool)

(assert (=> b!7871861 (= e!4650281 e!4650275)))

(declare-fun res!3127840 () Bool)

(assert (=> b!7871861 (=> res!3127840 e!4650275)))

(assert (=> b!7871861 (= res!3127840 call!730063)))

(declare-fun b!7871862 () Bool)

(assert (=> b!7871862 (= e!4650279 (= (head!16104 (tail!15647 (t!388756 s!14219))) (c!1445978 (derivativeStep!6393 (Union!21162 lt!2680897 lt!2680898) (head!16104 (t!388756 s!14219))))))))

(declare-fun b!7871863 () Bool)

(declare-fun res!3127842 () Bool)

(assert (=> b!7871863 (=> res!3127842 e!4650275)))

(assert (=> b!7871863 (= res!3127842 (not (isEmpty!42393 (tail!15647 (tail!15647 (t!388756 s!14219))))))))

(declare-fun b!7871864 () Bool)

(assert (=> b!7871864 (= e!4650276 (nullable!9426 (derivativeStep!6393 (Union!21162 lt!2680897 lt!2680898) (head!16104 (t!388756 s!14219)))))))

(assert (= (and d!2355358 c!1446132) b!7871864))

(assert (= (and d!2355358 (not c!1446132)) b!7871853))

(assert (= (and d!2355358 c!1446133) b!7871851))

(assert (= (and d!2355358 (not c!1446133)) b!7871854))

(assert (= (and b!7871854 c!1446131) b!7871855))

(assert (= (and b!7871854 (not c!1446131)) b!7871859))

(assert (= (and b!7871859 (not res!3127845)) b!7871852))

(assert (= (and b!7871852 res!3127846) b!7871860))

(assert (= (and b!7871860 res!3127841) b!7871856))

(assert (= (and b!7871856 res!3127843) b!7871862))

(assert (= (and b!7871852 (not res!3127844)) b!7871857))

(assert (= (and b!7871857 res!3127839) b!7871861))

(assert (= (and b!7871861 (not res!3127840)) b!7871863))

(assert (= (and b!7871863 (not res!3127842)) b!7871858))

(assert (= (or b!7871851 b!7871860 b!7871861) bm!730058))

(assert (=> b!7871862 m!8265272))

(declare-fun m!8265552 () Bool)

(assert (=> b!7871862 m!8265552))

(assert (=> b!7871853 m!8265272))

(assert (=> b!7871853 m!8265552))

(assert (=> b!7871853 m!8265270))

(assert (=> b!7871853 m!8265552))

(declare-fun m!8265554 () Bool)

(assert (=> b!7871853 m!8265554))

(assert (=> b!7871853 m!8265272))

(declare-fun m!8265556 () Bool)

(assert (=> b!7871853 m!8265556))

(assert (=> b!7871853 m!8265554))

(assert (=> b!7871853 m!8265556))

(declare-fun m!8265558 () Bool)

(assert (=> b!7871853 m!8265558))

(assert (=> b!7871864 m!8265270))

(declare-fun m!8265560 () Bool)

(assert (=> b!7871864 m!8265560))

(assert (=> d!2355358 m!8265272))

(assert (=> d!2355358 m!8265282))

(assert (=> d!2355358 m!8265270))

(declare-fun m!8265562 () Bool)

(assert (=> d!2355358 m!8265562))

(assert (=> bm!730058 m!8265272))

(assert (=> bm!730058 m!8265282))

(assert (=> b!7871858 m!8265272))

(assert (=> b!7871858 m!8265552))

(assert (=> b!7871856 m!8265272))

(assert (=> b!7871856 m!8265556))

(assert (=> b!7871856 m!8265556))

(declare-fun m!8265564 () Bool)

(assert (=> b!7871856 m!8265564))

(assert (=> b!7871863 m!8265272))

(assert (=> b!7871863 m!8265556))

(assert (=> b!7871863 m!8265556))

(assert (=> b!7871863 m!8265564))

(assert (=> b!7871389 d!2355358))

(declare-fun b!7871874 () Bool)

(declare-fun e!4650290 () Regex!21162)

(assert (=> b!7871874 (= e!4650290 (ite (= (head!16104 (t!388756 s!14219)) (c!1445978 (Union!21162 lt!2680897 lt!2680898))) EmptyExpr!21162 EmptyLang!21162))))

(declare-fun b!7871875 () Bool)

(declare-fun e!4650289 () Regex!21162)

(assert (=> b!7871875 (= e!4650289 e!4650290)))

(declare-fun c!1446139 () Bool)

(assert (=> b!7871875 (= c!1446139 (is-ElementMatch!21162 (Union!21162 lt!2680897 lt!2680898)))))

(declare-fun b!7871876 () Bool)

(declare-fun c!1446137 () Bool)

(assert (=> b!7871876 (= c!1446137 (nullable!9426 (regOne!42836 (Union!21162 lt!2680897 lt!2680898))))))

(declare-fun e!4650292 () Regex!21162)

(declare-fun e!4650291 () Regex!21162)

(assert (=> b!7871876 (= e!4650292 e!4650291)))

(declare-fun bm!730062 () Bool)

(declare-fun call!730068 () Regex!21162)

(declare-fun call!730067 () Regex!21162)

(assert (=> bm!730062 (= call!730068 call!730067)))

(declare-fun b!7871877 () Bool)

(declare-fun e!4650293 () Regex!21162)

(assert (=> b!7871877 (= e!4650293 e!4650292)))

(declare-fun c!1446136 () Bool)

(assert (=> b!7871877 (= c!1446136 (is-Star!21162 (Union!21162 lt!2680897 lt!2680898)))))

(declare-fun call!730070 () Regex!21162)

(declare-fun b!7871878 () Bool)

(assert (=> b!7871878 (= e!4650291 (Union!21162 (Concat!30007 call!730070 (regTwo!42836 (Union!21162 lt!2680897 lt!2680898))) EmptyLang!21162))))

(declare-fun call!730069 () Regex!21162)

(declare-fun c!1446140 () Bool)

(declare-fun bm!730063 () Bool)

(assert (=> bm!730063 (= call!730069 (derivativeStep!6393 (ite c!1446140 (regOne!42837 (Union!21162 lt!2680897 lt!2680898)) (regTwo!42836 (Union!21162 lt!2680897 lt!2680898))) (head!16104 (t!388756 s!14219))))))

(declare-fun b!7871879 () Bool)

(assert (=> b!7871879 (= e!4650291 (Union!21162 (Concat!30007 call!730070 (regTwo!42836 (Union!21162 lt!2680897 lt!2680898))) call!730069))))

(declare-fun b!7871880 () Bool)

(assert (=> b!7871880 (= e!4650289 EmptyLang!21162)))

(declare-fun b!7871881 () Bool)

(assert (=> b!7871881 (= e!4650292 (Concat!30007 call!730068 (Union!21162 lt!2680897 lt!2680898)))))

(declare-fun d!2355362 () Bool)

(declare-fun lt!2680942 () Regex!21162)

(assert (=> d!2355362 (validRegex!11572 lt!2680942)))

(assert (=> d!2355362 (= lt!2680942 e!4650289)))

(declare-fun c!1446138 () Bool)

(assert (=> d!2355362 (= c!1446138 (or (is-EmptyExpr!21162 (Union!21162 lt!2680897 lt!2680898)) (is-EmptyLang!21162 (Union!21162 lt!2680897 lt!2680898))))))

(assert (=> d!2355362 (validRegex!11572 (Union!21162 lt!2680897 lt!2680898))))

(assert (=> d!2355362 (= (derivativeStep!6393 (Union!21162 lt!2680897 lt!2680898) (head!16104 (t!388756 s!14219))) lt!2680942)))

(declare-fun b!7871882 () Bool)

(assert (=> b!7871882 (= e!4650293 (Union!21162 call!730069 call!730067))))

(declare-fun bm!730064 () Bool)

(assert (=> bm!730064 (= call!730070 call!730068)))

(declare-fun bm!730065 () Bool)

(assert (=> bm!730065 (= call!730067 (derivativeStep!6393 (ite c!1446140 (regTwo!42837 (Union!21162 lt!2680897 lt!2680898)) (ite c!1446136 (reg!21491 (Union!21162 lt!2680897 lt!2680898)) (regOne!42836 (Union!21162 lt!2680897 lt!2680898)))) (head!16104 (t!388756 s!14219))))))

(declare-fun b!7871883 () Bool)

(assert (=> b!7871883 (= c!1446140 (is-Union!21162 (Union!21162 lt!2680897 lt!2680898)))))

(assert (=> b!7871883 (= e!4650290 e!4650293)))

(assert (= (and d!2355362 c!1446138) b!7871880))

(assert (= (and d!2355362 (not c!1446138)) b!7871875))

(assert (= (and b!7871875 c!1446139) b!7871874))

(assert (= (and b!7871875 (not c!1446139)) b!7871883))

(assert (= (and b!7871883 c!1446140) b!7871882))

(assert (= (and b!7871883 (not c!1446140)) b!7871877))

(assert (= (and b!7871877 c!1446136) b!7871881))

(assert (= (and b!7871877 (not c!1446136)) b!7871876))

(assert (= (and b!7871876 c!1446137) b!7871879))

(assert (= (and b!7871876 (not c!1446137)) b!7871878))

(assert (= (or b!7871879 b!7871878) bm!730064))

(assert (= (or b!7871881 bm!730064) bm!730062))

(assert (= (or b!7871882 bm!730062) bm!730065))

(assert (= (or b!7871882 b!7871879) bm!730063))

(declare-fun m!8265568 () Bool)

(assert (=> b!7871876 m!8265568))

(assert (=> bm!730063 m!8265268))

(declare-fun m!8265572 () Bool)

(assert (=> bm!730063 m!8265572))

(declare-fun m!8265574 () Bool)

(assert (=> d!2355362 m!8265574))

(assert (=> d!2355362 m!8265280))

(assert (=> bm!730065 m!8265268))

(declare-fun m!8265578 () Bool)

(assert (=> bm!730065 m!8265578))

(assert (=> b!7871389 d!2355362))

(assert (=> b!7871389 d!2355272))

(assert (=> b!7871389 d!2355286))

(assert (=> bm!729940 d!2355280))

(declare-fun e!4650301 () Bool)

(assert (=> b!7871482 (= tp!2335658 e!4650301)))

(declare-fun b!7871890 () Bool)

(declare-fun tp!2335746 () Bool)

(declare-fun tp!2335747 () Bool)

(assert (=> b!7871890 (= e!4650301 (and tp!2335746 tp!2335747))))

(declare-fun b!7871884 () Bool)

(assert (=> b!7871884 (= e!4650301 tp_is_empty!52723)))

(declare-fun b!7871888 () Bool)

(declare-fun tp!2335744 () Bool)

(assert (=> b!7871888 (= e!4650301 tp!2335744)))

(declare-fun b!7871886 () Bool)

(declare-fun tp!2335745 () Bool)

(declare-fun tp!2335743 () Bool)

(assert (=> b!7871886 (= e!4650301 (and tp!2335745 tp!2335743))))

(assert (= (and b!7871482 (is-ElementMatch!21162 (reg!21491 (reg!21491 r1!6200)))) b!7871884))

(assert (= (and b!7871482 (is-Concat!30007 (reg!21491 (reg!21491 r1!6200)))) b!7871886))

(assert (= (and b!7871482 (is-Star!21162 (reg!21491 (reg!21491 r1!6200)))) b!7871888))

(assert (= (and b!7871482 (is-Union!21162 (reg!21491 (reg!21491 r1!6200)))) b!7871890))

(declare-fun e!4650302 () Bool)

(assert (=> b!7871475 (= tp!2335650 e!4650302)))

(declare-fun b!7871905 () Bool)

(declare-fun tp!2335751 () Bool)

(declare-fun tp!2335752 () Bool)

(assert (=> b!7871905 (= e!4650302 (and tp!2335751 tp!2335752))))

(declare-fun b!7871902 () Bool)

(assert (=> b!7871902 (= e!4650302 tp_is_empty!52723)))

(declare-fun b!7871904 () Bool)

(declare-fun tp!2335749 () Bool)

(assert (=> b!7871904 (= e!4650302 tp!2335749)))

(declare-fun b!7871903 () Bool)

(declare-fun tp!2335750 () Bool)

(declare-fun tp!2335748 () Bool)

(assert (=> b!7871903 (= e!4650302 (and tp!2335750 tp!2335748))))

(assert (= (and b!7871475 (is-ElementMatch!21162 (regOne!42837 (regOne!42837 r2!6138)))) b!7871902))

(assert (= (and b!7871475 (is-Concat!30007 (regOne!42837 (regOne!42837 r2!6138)))) b!7871903))

(assert (= (and b!7871475 (is-Star!21162 (regOne!42837 (regOne!42837 r2!6138)))) b!7871904))

(assert (= (and b!7871475 (is-Union!21162 (regOne!42837 (regOne!42837 r2!6138)))) b!7871905))

(declare-fun e!4650303 () Bool)

(assert (=> b!7871475 (= tp!2335651 e!4650303)))

(declare-fun b!7871909 () Bool)

(declare-fun tp!2335756 () Bool)

(declare-fun tp!2335757 () Bool)

(assert (=> b!7871909 (= e!4650303 (and tp!2335756 tp!2335757))))

(declare-fun b!7871906 () Bool)

(assert (=> b!7871906 (= e!4650303 tp_is_empty!52723)))

(declare-fun b!7871908 () Bool)

(declare-fun tp!2335754 () Bool)

(assert (=> b!7871908 (= e!4650303 tp!2335754)))

(declare-fun b!7871907 () Bool)

(declare-fun tp!2335755 () Bool)

(declare-fun tp!2335753 () Bool)

(assert (=> b!7871907 (= e!4650303 (and tp!2335755 tp!2335753))))

(assert (= (and b!7871475 (is-ElementMatch!21162 (regTwo!42837 (regOne!42837 r2!6138)))) b!7871906))

(assert (= (and b!7871475 (is-Concat!30007 (regTwo!42837 (regOne!42837 r2!6138)))) b!7871907))

(assert (= (and b!7871475 (is-Star!21162 (regTwo!42837 (regOne!42837 r2!6138)))) b!7871908))

(assert (= (and b!7871475 (is-Union!21162 (regTwo!42837 (regOne!42837 r2!6138)))) b!7871909))

(declare-fun e!4650304 () Bool)

(assert (=> b!7871490 (= tp!2335668 e!4650304)))

(declare-fun b!7871913 () Bool)

(declare-fun tp!2335761 () Bool)

(declare-fun tp!2335762 () Bool)

(assert (=> b!7871913 (= e!4650304 (and tp!2335761 tp!2335762))))

(declare-fun b!7871910 () Bool)

(assert (=> b!7871910 (= e!4650304 tp_is_empty!52723)))

(declare-fun b!7871912 () Bool)

(declare-fun tp!2335759 () Bool)

(assert (=> b!7871912 (= e!4650304 tp!2335759)))

(declare-fun b!7871911 () Bool)

(declare-fun tp!2335760 () Bool)

(declare-fun tp!2335758 () Bool)

(assert (=> b!7871911 (= e!4650304 (and tp!2335760 tp!2335758))))

(assert (= (and b!7871490 (is-ElementMatch!21162 (reg!21491 (regOne!42837 r1!6200)))) b!7871910))

(assert (= (and b!7871490 (is-Concat!30007 (reg!21491 (regOne!42837 r1!6200)))) b!7871911))

(assert (= (and b!7871490 (is-Star!21162 (reg!21491 (regOne!42837 r1!6200)))) b!7871912))

(assert (= (and b!7871490 (is-Union!21162 (reg!21491 (regOne!42837 r1!6200)))) b!7871913))

(declare-fun e!4650305 () Bool)

(assert (=> b!7871473 (= tp!2335649 e!4650305)))

(declare-fun b!7871917 () Bool)

(declare-fun tp!2335766 () Bool)

(declare-fun tp!2335767 () Bool)

(assert (=> b!7871917 (= e!4650305 (and tp!2335766 tp!2335767))))

(declare-fun b!7871914 () Bool)

(assert (=> b!7871914 (= e!4650305 tp_is_empty!52723)))

(declare-fun b!7871916 () Bool)

(declare-fun tp!2335764 () Bool)

(assert (=> b!7871916 (= e!4650305 tp!2335764)))

(declare-fun b!7871915 () Bool)

(declare-fun tp!2335765 () Bool)

(declare-fun tp!2335763 () Bool)

(assert (=> b!7871915 (= e!4650305 (and tp!2335765 tp!2335763))))

(assert (= (and b!7871473 (is-ElementMatch!21162 (regOne!42836 (regOne!42837 r2!6138)))) b!7871914))

(assert (= (and b!7871473 (is-Concat!30007 (regOne!42836 (regOne!42837 r2!6138)))) b!7871915))

(assert (= (and b!7871473 (is-Star!21162 (regOne!42836 (regOne!42837 r2!6138)))) b!7871916))

(assert (= (and b!7871473 (is-Union!21162 (regOne!42836 (regOne!42837 r2!6138)))) b!7871917))

(declare-fun e!4650306 () Bool)

(assert (=> b!7871473 (= tp!2335647 e!4650306)))

(declare-fun b!7871921 () Bool)

(declare-fun tp!2335771 () Bool)

(declare-fun tp!2335772 () Bool)

(assert (=> b!7871921 (= e!4650306 (and tp!2335771 tp!2335772))))

(declare-fun b!7871918 () Bool)

(assert (=> b!7871918 (= e!4650306 tp_is_empty!52723)))

(declare-fun b!7871920 () Bool)

(declare-fun tp!2335769 () Bool)

(assert (=> b!7871920 (= e!4650306 tp!2335769)))

(declare-fun b!7871919 () Bool)

(declare-fun tp!2335770 () Bool)

(declare-fun tp!2335768 () Bool)

(assert (=> b!7871919 (= e!4650306 (and tp!2335770 tp!2335768))))

(assert (= (and b!7871473 (is-ElementMatch!21162 (regTwo!42836 (regOne!42837 r2!6138)))) b!7871918))

(assert (= (and b!7871473 (is-Concat!30007 (regTwo!42836 (regOne!42837 r2!6138)))) b!7871919))

(assert (= (and b!7871473 (is-Star!21162 (regTwo!42836 (regOne!42837 r2!6138)))) b!7871920))

(assert (= (and b!7871473 (is-Union!21162 (regTwo!42836 (regOne!42837 r2!6138)))) b!7871921))

(declare-fun e!4650307 () Bool)

(assert (=> b!7871481 (= tp!2335659 e!4650307)))

(declare-fun b!7871925 () Bool)

(declare-fun tp!2335776 () Bool)

(declare-fun tp!2335777 () Bool)

(assert (=> b!7871925 (= e!4650307 (and tp!2335776 tp!2335777))))

(declare-fun b!7871922 () Bool)

(assert (=> b!7871922 (= e!4650307 tp_is_empty!52723)))

(declare-fun b!7871924 () Bool)

(declare-fun tp!2335774 () Bool)

(assert (=> b!7871924 (= e!4650307 tp!2335774)))

(declare-fun b!7871923 () Bool)

(declare-fun tp!2335775 () Bool)

(declare-fun tp!2335773 () Bool)

(assert (=> b!7871923 (= e!4650307 (and tp!2335775 tp!2335773))))

(assert (= (and b!7871481 (is-ElementMatch!21162 (regOne!42836 (reg!21491 r1!6200)))) b!7871922))

(assert (= (and b!7871481 (is-Concat!30007 (regOne!42836 (reg!21491 r1!6200)))) b!7871923))

(assert (= (and b!7871481 (is-Star!21162 (regOne!42836 (reg!21491 r1!6200)))) b!7871924))

(assert (= (and b!7871481 (is-Union!21162 (regOne!42836 (reg!21491 r1!6200)))) b!7871925))

(declare-fun e!4650308 () Bool)

(assert (=> b!7871481 (= tp!2335657 e!4650308)))

(declare-fun b!7871929 () Bool)

(declare-fun tp!2335781 () Bool)

(declare-fun tp!2335782 () Bool)

(assert (=> b!7871929 (= e!4650308 (and tp!2335781 tp!2335782))))

(declare-fun b!7871926 () Bool)

(assert (=> b!7871926 (= e!4650308 tp_is_empty!52723)))

(declare-fun b!7871928 () Bool)

(declare-fun tp!2335779 () Bool)

(assert (=> b!7871928 (= e!4650308 tp!2335779)))

(declare-fun b!7871927 () Bool)

(declare-fun tp!2335780 () Bool)

(declare-fun tp!2335778 () Bool)

(assert (=> b!7871927 (= e!4650308 (and tp!2335780 tp!2335778))))

(assert (= (and b!7871481 (is-ElementMatch!21162 (regTwo!42836 (reg!21491 r1!6200)))) b!7871926))

(assert (= (and b!7871481 (is-Concat!30007 (regTwo!42836 (reg!21491 r1!6200)))) b!7871927))

(assert (= (and b!7871481 (is-Star!21162 (regTwo!42836 (reg!21491 r1!6200)))) b!7871928))

(assert (= (and b!7871481 (is-Union!21162 (regTwo!42836 (reg!21491 r1!6200)))) b!7871929))

(declare-fun e!4650309 () Bool)

(assert (=> b!7871474 (= tp!2335648 e!4650309)))

(declare-fun b!7871933 () Bool)

(declare-fun tp!2335786 () Bool)

(declare-fun tp!2335787 () Bool)

(assert (=> b!7871933 (= e!4650309 (and tp!2335786 tp!2335787))))

(declare-fun b!7871930 () Bool)

(assert (=> b!7871930 (= e!4650309 tp_is_empty!52723)))

(declare-fun b!7871932 () Bool)

(declare-fun tp!2335784 () Bool)

(assert (=> b!7871932 (= e!4650309 tp!2335784)))

(declare-fun b!7871931 () Bool)

(declare-fun tp!2335785 () Bool)

(declare-fun tp!2335783 () Bool)

(assert (=> b!7871931 (= e!4650309 (and tp!2335785 tp!2335783))))

(assert (= (and b!7871474 (is-ElementMatch!21162 (reg!21491 (regOne!42837 r2!6138)))) b!7871930))

(assert (= (and b!7871474 (is-Concat!30007 (reg!21491 (regOne!42837 r2!6138)))) b!7871931))

(assert (= (and b!7871474 (is-Star!21162 (reg!21491 (regOne!42837 r2!6138)))) b!7871932))

(assert (= (and b!7871474 (is-Union!21162 (reg!21491 (regOne!42837 r2!6138)))) b!7871933))

(declare-fun e!4650310 () Bool)

(assert (=> b!7871491 (= tp!2335670 e!4650310)))

(declare-fun b!7871937 () Bool)

(declare-fun tp!2335791 () Bool)

(declare-fun tp!2335792 () Bool)

(assert (=> b!7871937 (= e!4650310 (and tp!2335791 tp!2335792))))

(declare-fun b!7871934 () Bool)

(assert (=> b!7871934 (= e!4650310 tp_is_empty!52723)))

(declare-fun b!7871936 () Bool)

(declare-fun tp!2335789 () Bool)

(assert (=> b!7871936 (= e!4650310 tp!2335789)))

(declare-fun b!7871935 () Bool)

(declare-fun tp!2335790 () Bool)

(declare-fun tp!2335788 () Bool)

(assert (=> b!7871935 (= e!4650310 (and tp!2335790 tp!2335788))))

(assert (= (and b!7871491 (is-ElementMatch!21162 (regOne!42837 (regOne!42837 r1!6200)))) b!7871934))

(assert (= (and b!7871491 (is-Concat!30007 (regOne!42837 (regOne!42837 r1!6200)))) b!7871935))

(assert (= (and b!7871491 (is-Star!21162 (regOne!42837 (regOne!42837 r1!6200)))) b!7871936))

(assert (= (and b!7871491 (is-Union!21162 (regOne!42837 (regOne!42837 r1!6200)))) b!7871937))

(declare-fun e!4650311 () Bool)

(assert (=> b!7871491 (= tp!2335671 e!4650311)))

(declare-fun b!7871941 () Bool)

(declare-fun tp!2335796 () Bool)

(declare-fun tp!2335797 () Bool)

(assert (=> b!7871941 (= e!4650311 (and tp!2335796 tp!2335797))))

(declare-fun b!7871938 () Bool)

(assert (=> b!7871938 (= e!4650311 tp_is_empty!52723)))

(declare-fun b!7871940 () Bool)

(declare-fun tp!2335794 () Bool)

(assert (=> b!7871940 (= e!4650311 tp!2335794)))

(declare-fun b!7871939 () Bool)

(declare-fun tp!2335795 () Bool)

(declare-fun tp!2335793 () Bool)

(assert (=> b!7871939 (= e!4650311 (and tp!2335795 tp!2335793))))

(assert (= (and b!7871491 (is-ElementMatch!21162 (regTwo!42837 (regOne!42837 r1!6200)))) b!7871938))

(assert (= (and b!7871491 (is-Concat!30007 (regTwo!42837 (regOne!42837 r1!6200)))) b!7871939))

(assert (= (and b!7871491 (is-Star!21162 (regTwo!42837 (regOne!42837 r1!6200)))) b!7871940))

(assert (= (and b!7871491 (is-Union!21162 (regTwo!42837 (regOne!42837 r1!6200)))) b!7871941))

(declare-fun e!4650312 () Bool)

(assert (=> b!7871483 (= tp!2335660 e!4650312)))

(declare-fun b!7871945 () Bool)

(declare-fun tp!2335801 () Bool)

(declare-fun tp!2335802 () Bool)

(assert (=> b!7871945 (= e!4650312 (and tp!2335801 tp!2335802))))

(declare-fun b!7871942 () Bool)

(assert (=> b!7871942 (= e!4650312 tp_is_empty!52723)))

(declare-fun b!7871944 () Bool)

(declare-fun tp!2335799 () Bool)

(assert (=> b!7871944 (= e!4650312 tp!2335799)))

(declare-fun b!7871943 () Bool)

(declare-fun tp!2335800 () Bool)

(declare-fun tp!2335798 () Bool)

(assert (=> b!7871943 (= e!4650312 (and tp!2335800 tp!2335798))))

(assert (= (and b!7871483 (is-ElementMatch!21162 (regOne!42837 (reg!21491 r1!6200)))) b!7871942))

(assert (= (and b!7871483 (is-Concat!30007 (regOne!42837 (reg!21491 r1!6200)))) b!7871943))

(assert (= (and b!7871483 (is-Star!21162 (regOne!42837 (reg!21491 r1!6200)))) b!7871944))

(assert (= (and b!7871483 (is-Union!21162 (regOne!42837 (reg!21491 r1!6200)))) b!7871945))

(declare-fun e!4650313 () Bool)

(assert (=> b!7871483 (= tp!2335661 e!4650313)))

(declare-fun b!7871949 () Bool)

(declare-fun tp!2335806 () Bool)

(declare-fun tp!2335807 () Bool)

(assert (=> b!7871949 (= e!4650313 (and tp!2335806 tp!2335807))))

(declare-fun b!7871946 () Bool)

(assert (=> b!7871946 (= e!4650313 tp_is_empty!52723)))

(declare-fun b!7871948 () Bool)

(declare-fun tp!2335804 () Bool)

(assert (=> b!7871948 (= e!4650313 tp!2335804)))

(declare-fun b!7871947 () Bool)

(declare-fun tp!2335805 () Bool)

(declare-fun tp!2335803 () Bool)

(assert (=> b!7871947 (= e!4650313 (and tp!2335805 tp!2335803))))

(assert (= (and b!7871483 (is-ElementMatch!21162 (regTwo!42837 (reg!21491 r1!6200)))) b!7871946))

(assert (= (and b!7871483 (is-Concat!30007 (regTwo!42837 (reg!21491 r1!6200)))) b!7871947))

(assert (= (and b!7871483 (is-Star!21162 (regTwo!42837 (reg!21491 r1!6200)))) b!7871948))

(assert (= (and b!7871483 (is-Union!21162 (regTwo!42837 (reg!21491 r1!6200)))) b!7871949))

(declare-fun e!4650314 () Bool)

(assert (=> b!7871461 (= tp!2335634 e!4650314)))

(declare-fun b!7871953 () Bool)

(declare-fun tp!2335811 () Bool)

(declare-fun tp!2335812 () Bool)

(assert (=> b!7871953 (= e!4650314 (and tp!2335811 tp!2335812))))

(declare-fun b!7871950 () Bool)

(assert (=> b!7871950 (= e!4650314 tp_is_empty!52723)))

(declare-fun b!7871952 () Bool)

(declare-fun tp!2335809 () Bool)

(assert (=> b!7871952 (= e!4650314 tp!2335809)))

(declare-fun b!7871951 () Bool)

(declare-fun tp!2335810 () Bool)

(declare-fun tp!2335808 () Bool)

(assert (=> b!7871951 (= e!4650314 (and tp!2335810 tp!2335808))))

(assert (= (and b!7871461 (is-ElementMatch!21162 (regOne!42836 (regTwo!42836 r1!6200)))) b!7871950))

(assert (= (and b!7871461 (is-Concat!30007 (regOne!42836 (regTwo!42836 r1!6200)))) b!7871951))

(assert (= (and b!7871461 (is-Star!21162 (regOne!42836 (regTwo!42836 r1!6200)))) b!7871952))

(assert (= (and b!7871461 (is-Union!21162 (regOne!42836 (regTwo!42836 r1!6200)))) b!7871953))

(declare-fun e!4650320 () Bool)

(assert (=> b!7871461 (= tp!2335632 e!4650320)))

(declare-fun b!7871967 () Bool)

(declare-fun tp!2335816 () Bool)

(declare-fun tp!2335817 () Bool)

(assert (=> b!7871967 (= e!4650320 (and tp!2335816 tp!2335817))))

(declare-fun b!7871964 () Bool)

(assert (=> b!7871964 (= e!4650320 tp_is_empty!52723)))

(declare-fun b!7871966 () Bool)

(declare-fun tp!2335814 () Bool)

(assert (=> b!7871966 (= e!4650320 tp!2335814)))

(declare-fun b!7871965 () Bool)

(declare-fun tp!2335815 () Bool)

(declare-fun tp!2335813 () Bool)

(assert (=> b!7871965 (= e!4650320 (and tp!2335815 tp!2335813))))

(assert (= (and b!7871461 (is-ElementMatch!21162 (regTwo!42836 (regTwo!42836 r1!6200)))) b!7871964))

(assert (= (and b!7871461 (is-Concat!30007 (regTwo!42836 (regTwo!42836 r1!6200)))) b!7871965))

(assert (= (and b!7871461 (is-Star!21162 (regTwo!42836 (regTwo!42836 r1!6200)))) b!7871966))

(assert (= (and b!7871461 (is-Union!21162 (regTwo!42836 (regTwo!42836 r1!6200)))) b!7871967))

(declare-fun e!4650321 () Bool)

(assert (=> b!7871462 (= tp!2335633 e!4650321)))

(declare-fun b!7871971 () Bool)

(declare-fun tp!2335821 () Bool)

(declare-fun tp!2335822 () Bool)

(assert (=> b!7871971 (= e!4650321 (and tp!2335821 tp!2335822))))

(declare-fun b!7871968 () Bool)

(assert (=> b!7871968 (= e!4650321 tp_is_empty!52723)))

(declare-fun b!7871970 () Bool)

(declare-fun tp!2335819 () Bool)

(assert (=> b!7871970 (= e!4650321 tp!2335819)))

(declare-fun b!7871969 () Bool)

(declare-fun tp!2335820 () Bool)

(declare-fun tp!2335818 () Bool)

(assert (=> b!7871969 (= e!4650321 (and tp!2335820 tp!2335818))))

(assert (= (and b!7871462 (is-ElementMatch!21162 (reg!21491 (regTwo!42836 r1!6200)))) b!7871968))

(assert (= (and b!7871462 (is-Concat!30007 (reg!21491 (regTwo!42836 r1!6200)))) b!7871969))

(assert (= (and b!7871462 (is-Star!21162 (reg!21491 (regTwo!42836 r1!6200)))) b!7871970))

(assert (= (and b!7871462 (is-Union!21162 (reg!21491 (regTwo!42836 r1!6200)))) b!7871971))

(declare-fun e!4650322 () Bool)

(assert (=> b!7871469 (= tp!2335644 e!4650322)))

(declare-fun b!7871975 () Bool)

(declare-fun tp!2335826 () Bool)

(declare-fun tp!2335827 () Bool)

(assert (=> b!7871975 (= e!4650322 (and tp!2335826 tp!2335827))))

(declare-fun b!7871972 () Bool)

(assert (=> b!7871972 (= e!4650322 tp_is_empty!52723)))

(declare-fun b!7871974 () Bool)

(declare-fun tp!2335824 () Bool)

(assert (=> b!7871974 (= e!4650322 tp!2335824)))

(declare-fun b!7871973 () Bool)

(declare-fun tp!2335825 () Bool)

(declare-fun tp!2335823 () Bool)

(assert (=> b!7871973 (= e!4650322 (and tp!2335825 tp!2335823))))

(assert (= (and b!7871469 (is-ElementMatch!21162 (regOne!42836 (regTwo!42836 r2!6138)))) b!7871972))

(assert (= (and b!7871469 (is-Concat!30007 (regOne!42836 (regTwo!42836 r2!6138)))) b!7871973))

(assert (= (and b!7871469 (is-Star!21162 (regOne!42836 (regTwo!42836 r2!6138)))) b!7871974))

(assert (= (and b!7871469 (is-Union!21162 (regOne!42836 (regTwo!42836 r2!6138)))) b!7871975))

(declare-fun e!4650323 () Bool)

(assert (=> b!7871469 (= tp!2335642 e!4650323)))

(declare-fun b!7871979 () Bool)

(declare-fun tp!2335831 () Bool)

(declare-fun tp!2335832 () Bool)

(assert (=> b!7871979 (= e!4650323 (and tp!2335831 tp!2335832))))

(declare-fun b!7871976 () Bool)

(assert (=> b!7871976 (= e!4650323 tp_is_empty!52723)))

(declare-fun b!7871978 () Bool)

(declare-fun tp!2335829 () Bool)

(assert (=> b!7871978 (= e!4650323 tp!2335829)))

(declare-fun b!7871977 () Bool)

(declare-fun tp!2335830 () Bool)

(declare-fun tp!2335828 () Bool)

(assert (=> b!7871977 (= e!4650323 (and tp!2335830 tp!2335828))))

(assert (= (and b!7871469 (is-ElementMatch!21162 (regTwo!42836 (regTwo!42836 r2!6138)))) b!7871976))

(assert (= (and b!7871469 (is-Concat!30007 (regTwo!42836 (regTwo!42836 r2!6138)))) b!7871977))

(assert (= (and b!7871469 (is-Star!21162 (regTwo!42836 (regTwo!42836 r2!6138)))) b!7871978))

(assert (= (and b!7871469 (is-Union!21162 (regTwo!42836 (regTwo!42836 r2!6138)))) b!7871979))

(declare-fun b!7871980 () Bool)

(declare-fun e!4650324 () Bool)

(declare-fun tp!2335833 () Bool)

(assert (=> b!7871980 (= e!4650324 (and tp_is_empty!52723 tp!2335833))))

(assert (=> b!7871500 (= tp!2335679 e!4650324)))

(assert (= (and b!7871500 (is-Cons!73897 (t!388756 (t!388756 s!14219)))) b!7871980))

(declare-fun e!4650325 () Bool)

(assert (=> b!7871470 (= tp!2335643 e!4650325)))

(declare-fun b!7871984 () Bool)

(declare-fun tp!2335837 () Bool)

(declare-fun tp!2335838 () Bool)

(assert (=> b!7871984 (= e!4650325 (and tp!2335837 tp!2335838))))

(declare-fun b!7871981 () Bool)

(assert (=> b!7871981 (= e!4650325 tp_is_empty!52723)))

(declare-fun b!7871983 () Bool)

(declare-fun tp!2335835 () Bool)

(assert (=> b!7871983 (= e!4650325 tp!2335835)))

(declare-fun b!7871982 () Bool)

(declare-fun tp!2335836 () Bool)

(declare-fun tp!2335834 () Bool)

(assert (=> b!7871982 (= e!4650325 (and tp!2335836 tp!2335834))))

(assert (= (and b!7871470 (is-ElementMatch!21162 (reg!21491 (regTwo!42836 r2!6138)))) b!7871981))

(assert (= (and b!7871470 (is-Concat!30007 (reg!21491 (regTwo!42836 r2!6138)))) b!7871982))

(assert (= (and b!7871470 (is-Star!21162 (reg!21491 (regTwo!42836 r2!6138)))) b!7871983))

(assert (= (and b!7871470 (is-Union!21162 (reg!21491 (regTwo!42836 r2!6138)))) b!7871984))

(declare-fun e!4650326 () Bool)

(assert (=> b!7871494 (= tp!2335673 e!4650326)))

(declare-fun b!7871988 () Bool)

(declare-fun tp!2335842 () Bool)

(declare-fun tp!2335843 () Bool)

(assert (=> b!7871988 (= e!4650326 (and tp!2335842 tp!2335843))))

(declare-fun b!7871985 () Bool)

(assert (=> b!7871985 (= e!4650326 tp_is_empty!52723)))

(declare-fun b!7871987 () Bool)

(declare-fun tp!2335840 () Bool)

(assert (=> b!7871987 (= e!4650326 tp!2335840)))

(declare-fun b!7871986 () Bool)

(declare-fun tp!2335841 () Bool)

(declare-fun tp!2335839 () Bool)

(assert (=> b!7871986 (= e!4650326 (and tp!2335841 tp!2335839))))

(assert (= (and b!7871494 (is-ElementMatch!21162 (reg!21491 (regTwo!42837 r1!6200)))) b!7871985))

(assert (= (and b!7871494 (is-Concat!30007 (reg!21491 (regTwo!42837 r1!6200)))) b!7871986))

(assert (= (and b!7871494 (is-Star!21162 (reg!21491 (regTwo!42837 r1!6200)))) b!7871987))

(assert (= (and b!7871494 (is-Union!21162 (reg!21491 (regTwo!42837 r1!6200)))) b!7871988))

(declare-fun e!4650327 () Bool)

(assert (=> b!7871463 (= tp!2335635 e!4650327)))

(declare-fun b!7871992 () Bool)

(declare-fun tp!2335847 () Bool)

(declare-fun tp!2335848 () Bool)

(assert (=> b!7871992 (= e!4650327 (and tp!2335847 tp!2335848))))

(declare-fun b!7871989 () Bool)

(assert (=> b!7871989 (= e!4650327 tp_is_empty!52723)))

(declare-fun b!7871991 () Bool)

(declare-fun tp!2335845 () Bool)

(assert (=> b!7871991 (= e!4650327 tp!2335845)))

(declare-fun b!7871990 () Bool)

(declare-fun tp!2335846 () Bool)

(declare-fun tp!2335844 () Bool)

(assert (=> b!7871990 (= e!4650327 (and tp!2335846 tp!2335844))))

(assert (= (and b!7871463 (is-ElementMatch!21162 (regOne!42837 (regTwo!42836 r1!6200)))) b!7871989))

(assert (= (and b!7871463 (is-Concat!30007 (regOne!42837 (regTwo!42836 r1!6200)))) b!7871990))

(assert (= (and b!7871463 (is-Star!21162 (regOne!42837 (regTwo!42836 r1!6200)))) b!7871991))

(assert (= (and b!7871463 (is-Union!21162 (regOne!42837 (regTwo!42836 r1!6200)))) b!7871992))

(declare-fun e!4650328 () Bool)

(assert (=> b!7871463 (= tp!2335636 e!4650328)))

(declare-fun b!7871996 () Bool)

(declare-fun tp!2335852 () Bool)

(declare-fun tp!2335853 () Bool)

(assert (=> b!7871996 (= e!4650328 (and tp!2335852 tp!2335853))))

(declare-fun b!7871993 () Bool)

(assert (=> b!7871993 (= e!4650328 tp_is_empty!52723)))

(declare-fun b!7871995 () Bool)

(declare-fun tp!2335850 () Bool)

(assert (=> b!7871995 (= e!4650328 tp!2335850)))

(declare-fun b!7871994 () Bool)

(declare-fun tp!2335851 () Bool)

(declare-fun tp!2335849 () Bool)

(assert (=> b!7871994 (= e!4650328 (and tp!2335851 tp!2335849))))

(assert (= (and b!7871463 (is-ElementMatch!21162 (regTwo!42837 (regTwo!42836 r1!6200)))) b!7871993))

(assert (= (and b!7871463 (is-Concat!30007 (regTwo!42837 (regTwo!42836 r1!6200)))) b!7871994))

(assert (= (and b!7871463 (is-Star!21162 (regTwo!42837 (regTwo!42836 r1!6200)))) b!7871995))

(assert (= (and b!7871463 (is-Union!21162 (regTwo!42837 (regTwo!42836 r1!6200)))) b!7871996))

(declare-fun e!4650334 () Bool)

(assert (=> b!7871493 (= tp!2335674 e!4650334)))

(declare-fun b!7872002 () Bool)

(declare-fun tp!2335857 () Bool)

(declare-fun tp!2335858 () Bool)

(assert (=> b!7872002 (= e!4650334 (and tp!2335857 tp!2335858))))

(declare-fun b!7871997 () Bool)

(assert (=> b!7871997 (= e!4650334 tp_is_empty!52723)))

(declare-fun b!7872000 () Bool)

(declare-fun tp!2335855 () Bool)

(assert (=> b!7872000 (= e!4650334 tp!2335855)))

(declare-fun b!7871998 () Bool)

(declare-fun tp!2335856 () Bool)

(declare-fun tp!2335854 () Bool)

(assert (=> b!7871998 (= e!4650334 (and tp!2335856 tp!2335854))))

(assert (= (and b!7871493 (is-ElementMatch!21162 (regOne!42836 (regTwo!42837 r1!6200)))) b!7871997))

(assert (= (and b!7871493 (is-Concat!30007 (regOne!42836 (regTwo!42837 r1!6200)))) b!7871998))

(assert (= (and b!7871493 (is-Star!21162 (regOne!42836 (regTwo!42837 r1!6200)))) b!7872000))

(assert (= (and b!7871493 (is-Union!21162 (regOne!42836 (regTwo!42837 r1!6200)))) b!7872002))

(declare-fun e!4650335 () Bool)

(assert (=> b!7871493 (= tp!2335672 e!4650335)))

(declare-fun b!7872014 () Bool)

(declare-fun tp!2335862 () Bool)

(declare-fun tp!2335863 () Bool)

(assert (=> b!7872014 (= e!4650335 (and tp!2335862 tp!2335863))))

(declare-fun b!7872011 () Bool)

(assert (=> b!7872011 (= e!4650335 tp_is_empty!52723)))

(declare-fun b!7872013 () Bool)

(declare-fun tp!2335860 () Bool)

(assert (=> b!7872013 (= e!4650335 tp!2335860)))

(declare-fun b!7872012 () Bool)

(declare-fun tp!2335861 () Bool)

(declare-fun tp!2335859 () Bool)

(assert (=> b!7872012 (= e!4650335 (and tp!2335861 tp!2335859))))

(assert (= (and b!7871493 (is-ElementMatch!21162 (regTwo!42836 (regTwo!42837 r1!6200)))) b!7872011))

(assert (= (and b!7871493 (is-Concat!30007 (regTwo!42836 (regTwo!42837 r1!6200)))) b!7872012))

(assert (= (and b!7871493 (is-Star!21162 (regTwo!42836 (regTwo!42837 r1!6200)))) b!7872013))

(assert (= (and b!7871493 (is-Union!21162 (regTwo!42836 (regTwo!42837 r1!6200)))) b!7872014))

(declare-fun e!4650336 () Bool)

(assert (=> b!7871477 (= tp!2335654 e!4650336)))

(declare-fun b!7872018 () Bool)

(declare-fun tp!2335867 () Bool)

(declare-fun tp!2335868 () Bool)

(assert (=> b!7872018 (= e!4650336 (and tp!2335867 tp!2335868))))

(declare-fun b!7872015 () Bool)

(assert (=> b!7872015 (= e!4650336 tp_is_empty!52723)))

(declare-fun b!7872017 () Bool)

(declare-fun tp!2335865 () Bool)

(assert (=> b!7872017 (= e!4650336 tp!2335865)))

(declare-fun b!7872016 () Bool)

(declare-fun tp!2335866 () Bool)

(declare-fun tp!2335864 () Bool)

(assert (=> b!7872016 (= e!4650336 (and tp!2335866 tp!2335864))))

(assert (= (and b!7871477 (is-ElementMatch!21162 (regOne!42836 (regTwo!42837 r2!6138)))) b!7872015))

(assert (= (and b!7871477 (is-Concat!30007 (regOne!42836 (regTwo!42837 r2!6138)))) b!7872016))

(assert (= (and b!7871477 (is-Star!21162 (regOne!42836 (regTwo!42837 r2!6138)))) b!7872017))

(assert (= (and b!7871477 (is-Union!21162 (regOne!42836 (regTwo!42837 r2!6138)))) b!7872018))

(declare-fun e!4650337 () Bool)

(assert (=> b!7871477 (= tp!2335652 e!4650337)))

(declare-fun b!7872022 () Bool)

(declare-fun tp!2335872 () Bool)

(declare-fun tp!2335873 () Bool)

(assert (=> b!7872022 (= e!4650337 (and tp!2335872 tp!2335873))))

(declare-fun b!7872019 () Bool)

(assert (=> b!7872019 (= e!4650337 tp_is_empty!52723)))

(declare-fun b!7872021 () Bool)

(declare-fun tp!2335870 () Bool)

(assert (=> b!7872021 (= e!4650337 tp!2335870)))

(declare-fun b!7872020 () Bool)

(declare-fun tp!2335871 () Bool)

(declare-fun tp!2335869 () Bool)

(assert (=> b!7872020 (= e!4650337 (and tp!2335871 tp!2335869))))

(assert (= (and b!7871477 (is-ElementMatch!21162 (regTwo!42836 (regTwo!42837 r2!6138)))) b!7872019))

(assert (= (and b!7871477 (is-Concat!30007 (regTwo!42836 (regTwo!42837 r2!6138)))) b!7872020))

(assert (= (and b!7871477 (is-Star!21162 (regTwo!42836 (regTwo!42837 r2!6138)))) b!7872021))

(assert (= (and b!7871477 (is-Union!21162 (regTwo!42836 (regTwo!42837 r2!6138)))) b!7872022))

(declare-fun e!4650338 () Bool)

(assert (=> b!7871486 (= tp!2335663 e!4650338)))

(declare-fun b!7872026 () Bool)

(declare-fun tp!2335877 () Bool)

(declare-fun tp!2335878 () Bool)

(assert (=> b!7872026 (= e!4650338 (and tp!2335877 tp!2335878))))

(declare-fun b!7872023 () Bool)

(assert (=> b!7872023 (= e!4650338 tp_is_empty!52723)))

(declare-fun b!7872025 () Bool)

(declare-fun tp!2335875 () Bool)

(assert (=> b!7872025 (= e!4650338 tp!2335875)))

(declare-fun b!7872024 () Bool)

(declare-fun tp!2335876 () Bool)

(declare-fun tp!2335874 () Bool)

(assert (=> b!7872024 (= e!4650338 (and tp!2335876 tp!2335874))))

(assert (= (and b!7871486 (is-ElementMatch!21162 (reg!21491 (reg!21491 r2!6138)))) b!7872023))

(assert (= (and b!7871486 (is-Concat!30007 (reg!21491 (reg!21491 r2!6138)))) b!7872024))

(assert (= (and b!7871486 (is-Star!21162 (reg!21491 (reg!21491 r2!6138)))) b!7872025))

(assert (= (and b!7871486 (is-Union!21162 (reg!21491 (reg!21491 r2!6138)))) b!7872026))

(declare-fun e!4650339 () Bool)

(assert (=> b!7871495 (= tp!2335675 e!4650339)))

(declare-fun b!7872030 () Bool)

(declare-fun tp!2335882 () Bool)

(declare-fun tp!2335883 () Bool)

(assert (=> b!7872030 (= e!4650339 (and tp!2335882 tp!2335883))))

(declare-fun b!7872027 () Bool)

(assert (=> b!7872027 (= e!4650339 tp_is_empty!52723)))

(declare-fun b!7872029 () Bool)

(declare-fun tp!2335880 () Bool)

(assert (=> b!7872029 (= e!4650339 tp!2335880)))

(declare-fun b!7872028 () Bool)

(declare-fun tp!2335881 () Bool)

(declare-fun tp!2335879 () Bool)

(assert (=> b!7872028 (= e!4650339 (and tp!2335881 tp!2335879))))

(assert (= (and b!7871495 (is-ElementMatch!21162 (regOne!42837 (regTwo!42837 r1!6200)))) b!7872027))

(assert (= (and b!7871495 (is-Concat!30007 (regOne!42837 (regTwo!42837 r1!6200)))) b!7872028))

(assert (= (and b!7871495 (is-Star!21162 (regOne!42837 (regTwo!42837 r1!6200)))) b!7872029))

(assert (= (and b!7871495 (is-Union!21162 (regOne!42837 (regTwo!42837 r1!6200)))) b!7872030))

(declare-fun e!4650340 () Bool)

(assert (=> b!7871495 (= tp!2335676 e!4650340)))

(declare-fun b!7872034 () Bool)

(declare-fun tp!2335887 () Bool)

(declare-fun tp!2335888 () Bool)

(assert (=> b!7872034 (= e!4650340 (and tp!2335887 tp!2335888))))

(declare-fun b!7872031 () Bool)

(assert (=> b!7872031 (= e!4650340 tp_is_empty!52723)))

(declare-fun b!7872033 () Bool)

(declare-fun tp!2335885 () Bool)

(assert (=> b!7872033 (= e!4650340 tp!2335885)))

(declare-fun b!7872032 () Bool)

(declare-fun tp!2335886 () Bool)

(declare-fun tp!2335884 () Bool)

(assert (=> b!7872032 (= e!4650340 (and tp!2335886 tp!2335884))))

(assert (= (and b!7871495 (is-ElementMatch!21162 (regTwo!42837 (regTwo!42837 r1!6200)))) b!7872031))

(assert (= (and b!7871495 (is-Concat!30007 (regTwo!42837 (regTwo!42837 r1!6200)))) b!7872032))

(assert (= (and b!7871495 (is-Star!21162 (regTwo!42837 (regTwo!42837 r1!6200)))) b!7872033))

(assert (= (and b!7871495 (is-Union!21162 (regTwo!42837 (regTwo!42837 r1!6200)))) b!7872034))

(declare-fun e!4650341 () Bool)

(assert (=> b!7871478 (= tp!2335653 e!4650341)))

(declare-fun b!7872038 () Bool)

(declare-fun tp!2335892 () Bool)

(declare-fun tp!2335893 () Bool)

(assert (=> b!7872038 (= e!4650341 (and tp!2335892 tp!2335893))))

(declare-fun b!7872035 () Bool)

(assert (=> b!7872035 (= e!4650341 tp_is_empty!52723)))

(declare-fun b!7872037 () Bool)

(declare-fun tp!2335890 () Bool)

(assert (=> b!7872037 (= e!4650341 tp!2335890)))

(declare-fun b!7872036 () Bool)

(declare-fun tp!2335891 () Bool)

(declare-fun tp!2335889 () Bool)

(assert (=> b!7872036 (= e!4650341 (and tp!2335891 tp!2335889))))

(assert (= (and b!7871478 (is-ElementMatch!21162 (reg!21491 (regTwo!42837 r2!6138)))) b!7872035))

(assert (= (and b!7871478 (is-Concat!30007 (reg!21491 (regTwo!42837 r2!6138)))) b!7872036))

(assert (= (and b!7871478 (is-Star!21162 (reg!21491 (regTwo!42837 r2!6138)))) b!7872037))

(assert (= (and b!7871478 (is-Union!21162 (reg!21491 (regTwo!42837 r2!6138)))) b!7872038))

(declare-fun e!4650342 () Bool)

(assert (=> b!7871485 (= tp!2335664 e!4650342)))

(declare-fun b!7872042 () Bool)

(declare-fun tp!2335897 () Bool)

(declare-fun tp!2335898 () Bool)

(assert (=> b!7872042 (= e!4650342 (and tp!2335897 tp!2335898))))

(declare-fun b!7872039 () Bool)

(assert (=> b!7872039 (= e!4650342 tp_is_empty!52723)))

(declare-fun b!7872041 () Bool)

(declare-fun tp!2335895 () Bool)

(assert (=> b!7872041 (= e!4650342 tp!2335895)))

(declare-fun b!7872040 () Bool)

(declare-fun tp!2335896 () Bool)

(declare-fun tp!2335894 () Bool)

(assert (=> b!7872040 (= e!4650342 (and tp!2335896 tp!2335894))))

(assert (= (and b!7871485 (is-ElementMatch!21162 (regOne!42836 (reg!21491 r2!6138)))) b!7872039))

(assert (= (and b!7871485 (is-Concat!30007 (regOne!42836 (reg!21491 r2!6138)))) b!7872040))

(assert (= (and b!7871485 (is-Star!21162 (regOne!42836 (reg!21491 r2!6138)))) b!7872041))

(assert (= (and b!7871485 (is-Union!21162 (regOne!42836 (reg!21491 r2!6138)))) b!7872042))

(declare-fun e!4650343 () Bool)

(assert (=> b!7871485 (= tp!2335662 e!4650343)))

(declare-fun b!7872046 () Bool)

(declare-fun tp!2335902 () Bool)

(declare-fun tp!2335903 () Bool)

(assert (=> b!7872046 (= e!4650343 (and tp!2335902 tp!2335903))))

(declare-fun b!7872043 () Bool)

(assert (=> b!7872043 (= e!4650343 tp_is_empty!52723)))

(declare-fun b!7872045 () Bool)

(declare-fun tp!2335900 () Bool)

(assert (=> b!7872045 (= e!4650343 tp!2335900)))

(declare-fun b!7872044 () Bool)

(declare-fun tp!2335901 () Bool)

(declare-fun tp!2335899 () Bool)

(assert (=> b!7872044 (= e!4650343 (and tp!2335901 tp!2335899))))

(assert (= (and b!7871485 (is-ElementMatch!21162 (regTwo!42836 (reg!21491 r2!6138)))) b!7872043))

(assert (= (and b!7871485 (is-Concat!30007 (regTwo!42836 (reg!21491 r2!6138)))) b!7872044))

(assert (= (and b!7871485 (is-Star!21162 (regTwo!42836 (reg!21491 r2!6138)))) b!7872045))

(assert (= (and b!7871485 (is-Union!21162 (regTwo!42836 (reg!21491 r2!6138)))) b!7872046))

(declare-fun e!4650351 () Bool)

(assert (=> b!7871487 (= tp!2335665 e!4650351)))

(declare-fun b!7872059 () Bool)

(declare-fun tp!2335907 () Bool)

(declare-fun tp!2335908 () Bool)

(assert (=> b!7872059 (= e!4650351 (and tp!2335907 tp!2335908))))

(declare-fun b!7872056 () Bool)

(assert (=> b!7872056 (= e!4650351 tp_is_empty!52723)))

(declare-fun b!7872058 () Bool)

(declare-fun tp!2335905 () Bool)

(assert (=> b!7872058 (= e!4650351 tp!2335905)))

(declare-fun b!7872057 () Bool)

(declare-fun tp!2335906 () Bool)

(declare-fun tp!2335904 () Bool)

(assert (=> b!7872057 (= e!4650351 (and tp!2335906 tp!2335904))))

(assert (= (and b!7871487 (is-ElementMatch!21162 (regOne!42837 (reg!21491 r2!6138)))) b!7872056))

(assert (= (and b!7871487 (is-Concat!30007 (regOne!42837 (reg!21491 r2!6138)))) b!7872057))

(assert (= (and b!7871487 (is-Star!21162 (regOne!42837 (reg!21491 r2!6138)))) b!7872058))

(assert (= (and b!7871487 (is-Union!21162 (regOne!42837 (reg!21491 r2!6138)))) b!7872059))

(declare-fun e!4650352 () Bool)

(assert (=> b!7871487 (= tp!2335666 e!4650352)))

(declare-fun b!7872063 () Bool)

(declare-fun tp!2335912 () Bool)

(declare-fun tp!2335913 () Bool)

(assert (=> b!7872063 (= e!4650352 (and tp!2335912 tp!2335913))))

(declare-fun b!7872060 () Bool)

(assert (=> b!7872060 (= e!4650352 tp_is_empty!52723)))

(declare-fun b!7872062 () Bool)

(declare-fun tp!2335910 () Bool)

(assert (=> b!7872062 (= e!4650352 tp!2335910)))

(declare-fun b!7872061 () Bool)

(declare-fun tp!2335911 () Bool)

(declare-fun tp!2335909 () Bool)

(assert (=> b!7872061 (= e!4650352 (and tp!2335911 tp!2335909))))

(assert (= (and b!7871487 (is-ElementMatch!21162 (regTwo!42837 (reg!21491 r2!6138)))) b!7872060))

(assert (= (and b!7871487 (is-Concat!30007 (regTwo!42837 (reg!21491 r2!6138)))) b!7872061))

(assert (= (and b!7871487 (is-Star!21162 (regTwo!42837 (reg!21491 r2!6138)))) b!7872062))

(assert (= (and b!7871487 (is-Union!21162 (regTwo!42837 (reg!21491 r2!6138)))) b!7872063))

(declare-fun e!4650353 () Bool)

(assert (=> b!7871471 (= tp!2335645 e!4650353)))

(declare-fun b!7872067 () Bool)

(declare-fun tp!2335917 () Bool)

(declare-fun tp!2335918 () Bool)

(assert (=> b!7872067 (= e!4650353 (and tp!2335917 tp!2335918))))

(declare-fun b!7872064 () Bool)

(assert (=> b!7872064 (= e!4650353 tp_is_empty!52723)))

(declare-fun b!7872066 () Bool)

(declare-fun tp!2335915 () Bool)

(assert (=> b!7872066 (= e!4650353 tp!2335915)))

(declare-fun b!7872065 () Bool)

(declare-fun tp!2335916 () Bool)

(declare-fun tp!2335914 () Bool)

(assert (=> b!7872065 (= e!4650353 (and tp!2335916 tp!2335914))))

(assert (= (and b!7871471 (is-ElementMatch!21162 (regOne!42837 (regTwo!42836 r2!6138)))) b!7872064))

(assert (= (and b!7871471 (is-Concat!30007 (regOne!42837 (regTwo!42836 r2!6138)))) b!7872065))

(assert (= (and b!7871471 (is-Star!21162 (regOne!42837 (regTwo!42836 r2!6138)))) b!7872066))

(assert (= (and b!7871471 (is-Union!21162 (regOne!42837 (regTwo!42836 r2!6138)))) b!7872067))

(declare-fun e!4650354 () Bool)

(assert (=> b!7871471 (= tp!2335646 e!4650354)))

(declare-fun b!7872071 () Bool)

(declare-fun tp!2335922 () Bool)

(declare-fun tp!2335923 () Bool)

(assert (=> b!7872071 (= e!4650354 (and tp!2335922 tp!2335923))))

(declare-fun b!7872068 () Bool)

(assert (=> b!7872068 (= e!4650354 tp_is_empty!52723)))

(declare-fun b!7872070 () Bool)

(declare-fun tp!2335920 () Bool)

(assert (=> b!7872070 (= e!4650354 tp!2335920)))

(declare-fun b!7872069 () Bool)

(declare-fun tp!2335921 () Bool)

(declare-fun tp!2335919 () Bool)

(assert (=> b!7872069 (= e!4650354 (and tp!2335921 tp!2335919))))

(assert (= (and b!7871471 (is-ElementMatch!21162 (regTwo!42837 (regTwo!42836 r2!6138)))) b!7872068))

(assert (= (and b!7871471 (is-Concat!30007 (regTwo!42837 (regTwo!42836 r2!6138)))) b!7872069))

(assert (= (and b!7871471 (is-Star!21162 (regTwo!42837 (regTwo!42836 r2!6138)))) b!7872070))

(assert (= (and b!7871471 (is-Union!21162 (regTwo!42837 (regTwo!42836 r2!6138)))) b!7872071))

(declare-fun e!4650355 () Bool)

(assert (=> b!7871479 (= tp!2335655 e!4650355)))

(declare-fun b!7872075 () Bool)

(declare-fun tp!2335927 () Bool)

(declare-fun tp!2335928 () Bool)

(assert (=> b!7872075 (= e!4650355 (and tp!2335927 tp!2335928))))

(declare-fun b!7872072 () Bool)

(assert (=> b!7872072 (= e!4650355 tp_is_empty!52723)))

(declare-fun b!7872074 () Bool)

(declare-fun tp!2335925 () Bool)

(assert (=> b!7872074 (= e!4650355 tp!2335925)))

(declare-fun b!7872073 () Bool)

(declare-fun tp!2335926 () Bool)

(declare-fun tp!2335924 () Bool)

(assert (=> b!7872073 (= e!4650355 (and tp!2335926 tp!2335924))))

(assert (= (and b!7871479 (is-ElementMatch!21162 (regOne!42837 (regTwo!42837 r2!6138)))) b!7872072))

(assert (= (and b!7871479 (is-Concat!30007 (regOne!42837 (regTwo!42837 r2!6138)))) b!7872073))

(assert (= (and b!7871479 (is-Star!21162 (regOne!42837 (regTwo!42837 r2!6138)))) b!7872074))

(assert (= (and b!7871479 (is-Union!21162 (regOne!42837 (regTwo!42837 r2!6138)))) b!7872075))

(declare-fun e!4650356 () Bool)

(assert (=> b!7871479 (= tp!2335656 e!4650356)))

(declare-fun b!7872079 () Bool)

(declare-fun tp!2335932 () Bool)

(declare-fun tp!2335933 () Bool)

(assert (=> b!7872079 (= e!4650356 (and tp!2335932 tp!2335933))))

(declare-fun b!7872076 () Bool)

(assert (=> b!7872076 (= e!4650356 tp_is_empty!52723)))

(declare-fun b!7872078 () Bool)

(declare-fun tp!2335930 () Bool)

(assert (=> b!7872078 (= e!4650356 tp!2335930)))

(declare-fun b!7872077 () Bool)

(declare-fun tp!2335931 () Bool)

(declare-fun tp!2335929 () Bool)

(assert (=> b!7872077 (= e!4650356 (and tp!2335931 tp!2335929))))

(assert (= (and b!7871479 (is-ElementMatch!21162 (regTwo!42837 (regTwo!42837 r2!6138)))) b!7872076))

(assert (= (and b!7871479 (is-Concat!30007 (regTwo!42837 (regTwo!42837 r2!6138)))) b!7872077))

(assert (= (and b!7871479 (is-Star!21162 (regTwo!42837 (regTwo!42837 r2!6138)))) b!7872078))

(assert (= (and b!7871479 (is-Union!21162 (regTwo!42837 (regTwo!42837 r2!6138)))) b!7872079))

(declare-fun e!4650357 () Bool)

(assert (=> b!7871457 (= tp!2335629 e!4650357)))

(declare-fun b!7872083 () Bool)

(declare-fun tp!2335937 () Bool)

(declare-fun tp!2335938 () Bool)

(assert (=> b!7872083 (= e!4650357 (and tp!2335937 tp!2335938))))

(declare-fun b!7872080 () Bool)

(assert (=> b!7872080 (= e!4650357 tp_is_empty!52723)))

(declare-fun b!7872082 () Bool)

(declare-fun tp!2335935 () Bool)

(assert (=> b!7872082 (= e!4650357 tp!2335935)))

(declare-fun b!7872081 () Bool)

(declare-fun tp!2335936 () Bool)

(declare-fun tp!2335934 () Bool)

(assert (=> b!7872081 (= e!4650357 (and tp!2335936 tp!2335934))))

(assert (= (and b!7871457 (is-ElementMatch!21162 (regOne!42836 (regOne!42836 r1!6200)))) b!7872080))

(assert (= (and b!7871457 (is-Concat!30007 (regOne!42836 (regOne!42836 r1!6200)))) b!7872081))

(assert (= (and b!7871457 (is-Star!21162 (regOne!42836 (regOne!42836 r1!6200)))) b!7872082))

(assert (= (and b!7871457 (is-Union!21162 (regOne!42836 (regOne!42836 r1!6200)))) b!7872083))

(declare-fun e!4650358 () Bool)

(assert (=> b!7871457 (= tp!2335627 e!4650358)))

(declare-fun b!7872087 () Bool)

(declare-fun tp!2335942 () Bool)

(declare-fun tp!2335943 () Bool)

(assert (=> b!7872087 (= e!4650358 (and tp!2335942 tp!2335943))))

(declare-fun b!7872084 () Bool)

(assert (=> b!7872084 (= e!4650358 tp_is_empty!52723)))

(declare-fun b!7872086 () Bool)

(declare-fun tp!2335940 () Bool)

(assert (=> b!7872086 (= e!4650358 tp!2335940)))

(declare-fun b!7872085 () Bool)

(declare-fun tp!2335941 () Bool)

(declare-fun tp!2335939 () Bool)

(assert (=> b!7872085 (= e!4650358 (and tp!2335941 tp!2335939))))

(assert (= (and b!7871457 (is-ElementMatch!21162 (regTwo!42836 (regOne!42836 r1!6200)))) b!7872084))

(assert (= (and b!7871457 (is-Concat!30007 (regTwo!42836 (regOne!42836 r1!6200)))) b!7872085))

(assert (= (and b!7871457 (is-Star!21162 (regTwo!42836 (regOne!42836 r1!6200)))) b!7872086))

(assert (= (and b!7871457 (is-Union!21162 (regTwo!42836 (regOne!42836 r1!6200)))) b!7872087))

(declare-fun e!4650365 () Bool)

(assert (=> b!7871459 (= tp!2335630 e!4650365)))

(declare-fun b!7872096 () Bool)

(declare-fun tp!2335947 () Bool)

(declare-fun tp!2335948 () Bool)

(assert (=> b!7872096 (= e!4650365 (and tp!2335947 tp!2335948))))

(declare-fun b!7872088 () Bool)

(assert (=> b!7872088 (= e!4650365 tp_is_empty!52723)))

(declare-fun b!7872095 () Bool)

(declare-fun tp!2335945 () Bool)

(assert (=> b!7872095 (= e!4650365 tp!2335945)))

(declare-fun b!7872089 () Bool)

(declare-fun tp!2335946 () Bool)

(declare-fun tp!2335944 () Bool)

(assert (=> b!7872089 (= e!4650365 (and tp!2335946 tp!2335944))))

(assert (= (and b!7871459 (is-ElementMatch!21162 (regOne!42837 (regOne!42836 r1!6200)))) b!7872088))

(assert (= (and b!7871459 (is-Concat!30007 (regOne!42837 (regOne!42836 r1!6200)))) b!7872089))

(assert (= (and b!7871459 (is-Star!21162 (regOne!42837 (regOne!42836 r1!6200)))) b!7872095))

(assert (= (and b!7871459 (is-Union!21162 (regOne!42837 (regOne!42836 r1!6200)))) b!7872096))

(declare-fun e!4650367 () Bool)

(assert (=> b!7871459 (= tp!2335631 e!4650367)))

(declare-fun b!7872104 () Bool)

(declare-fun tp!2335952 () Bool)

(declare-fun tp!2335953 () Bool)

(assert (=> b!7872104 (= e!4650367 (and tp!2335952 tp!2335953))))

(declare-fun b!7872101 () Bool)

(assert (=> b!7872101 (= e!4650367 tp_is_empty!52723)))

(declare-fun b!7872103 () Bool)

(declare-fun tp!2335950 () Bool)

(assert (=> b!7872103 (= e!4650367 tp!2335950)))

(declare-fun b!7872102 () Bool)

(declare-fun tp!2335951 () Bool)

(declare-fun tp!2335949 () Bool)

(assert (=> b!7872102 (= e!4650367 (and tp!2335951 tp!2335949))))

(assert (= (and b!7871459 (is-ElementMatch!21162 (regTwo!42837 (regOne!42836 r1!6200)))) b!7872101))

(assert (= (and b!7871459 (is-Concat!30007 (regTwo!42837 (regOne!42836 r1!6200)))) b!7872102))

(assert (= (and b!7871459 (is-Star!21162 (regTwo!42837 (regOne!42836 r1!6200)))) b!7872103))

(assert (= (and b!7871459 (is-Union!21162 (regTwo!42837 (regOne!42836 r1!6200)))) b!7872104))

(declare-fun e!4650368 () Bool)

(assert (=> b!7871467 (= tp!2335640 e!4650368)))

(declare-fun b!7872108 () Bool)

(declare-fun tp!2335957 () Bool)

(declare-fun tp!2335958 () Bool)

(assert (=> b!7872108 (= e!4650368 (and tp!2335957 tp!2335958))))

(declare-fun b!7872105 () Bool)

(assert (=> b!7872105 (= e!4650368 tp_is_empty!52723)))

(declare-fun b!7872107 () Bool)

(declare-fun tp!2335955 () Bool)

(assert (=> b!7872107 (= e!4650368 tp!2335955)))

(declare-fun b!7872106 () Bool)

(declare-fun tp!2335956 () Bool)

(declare-fun tp!2335954 () Bool)

(assert (=> b!7872106 (= e!4650368 (and tp!2335956 tp!2335954))))

(assert (= (and b!7871467 (is-ElementMatch!21162 (regOne!42837 (regOne!42836 r2!6138)))) b!7872105))

(assert (= (and b!7871467 (is-Concat!30007 (regOne!42837 (regOne!42836 r2!6138)))) b!7872106))

(assert (= (and b!7871467 (is-Star!21162 (regOne!42837 (regOne!42836 r2!6138)))) b!7872107))

(assert (= (and b!7871467 (is-Union!21162 (regOne!42837 (regOne!42836 r2!6138)))) b!7872108))

(declare-fun e!4650369 () Bool)

(assert (=> b!7871467 (= tp!2335641 e!4650369)))

(declare-fun b!7872112 () Bool)

(declare-fun tp!2335962 () Bool)

(declare-fun tp!2335963 () Bool)

(assert (=> b!7872112 (= e!4650369 (and tp!2335962 tp!2335963))))

(declare-fun b!7872109 () Bool)

(assert (=> b!7872109 (= e!4650369 tp_is_empty!52723)))

(declare-fun b!7872111 () Bool)

(declare-fun tp!2335960 () Bool)

(assert (=> b!7872111 (= e!4650369 tp!2335960)))

(declare-fun b!7872110 () Bool)

(declare-fun tp!2335961 () Bool)

(declare-fun tp!2335959 () Bool)

(assert (=> b!7872110 (= e!4650369 (and tp!2335961 tp!2335959))))

(assert (= (and b!7871467 (is-ElementMatch!21162 (regTwo!42837 (regOne!42836 r2!6138)))) b!7872109))

(assert (= (and b!7871467 (is-Concat!30007 (regTwo!42837 (regOne!42836 r2!6138)))) b!7872110))

(assert (= (and b!7871467 (is-Star!21162 (regTwo!42837 (regOne!42836 r2!6138)))) b!7872111))

(assert (= (and b!7871467 (is-Union!21162 (regTwo!42837 (regOne!42836 r2!6138)))) b!7872112))

(declare-fun e!4650370 () Bool)

(assert (=> b!7871465 (= tp!2335639 e!4650370)))

(declare-fun b!7872116 () Bool)

(declare-fun tp!2335967 () Bool)

(declare-fun tp!2335968 () Bool)

(assert (=> b!7872116 (= e!4650370 (and tp!2335967 tp!2335968))))

(declare-fun b!7872113 () Bool)

(assert (=> b!7872113 (= e!4650370 tp_is_empty!52723)))

(declare-fun b!7872115 () Bool)

(declare-fun tp!2335965 () Bool)

(assert (=> b!7872115 (= e!4650370 tp!2335965)))

(declare-fun b!7872114 () Bool)

(declare-fun tp!2335966 () Bool)

(declare-fun tp!2335964 () Bool)

(assert (=> b!7872114 (= e!4650370 (and tp!2335966 tp!2335964))))

(assert (= (and b!7871465 (is-ElementMatch!21162 (regOne!42836 (regOne!42836 r2!6138)))) b!7872113))

(assert (= (and b!7871465 (is-Concat!30007 (regOne!42836 (regOne!42836 r2!6138)))) b!7872114))

(assert (= (and b!7871465 (is-Star!21162 (regOne!42836 (regOne!42836 r2!6138)))) b!7872115))

(assert (= (and b!7871465 (is-Union!21162 (regOne!42836 (regOne!42836 r2!6138)))) b!7872116))

(declare-fun e!4650371 () Bool)

(assert (=> b!7871465 (= tp!2335637 e!4650371)))

(declare-fun b!7872120 () Bool)

(declare-fun tp!2335972 () Bool)

(declare-fun tp!2335973 () Bool)

(assert (=> b!7872120 (= e!4650371 (and tp!2335972 tp!2335973))))

(declare-fun b!7872117 () Bool)

(assert (=> b!7872117 (= e!4650371 tp_is_empty!52723)))

(declare-fun b!7872119 () Bool)

(declare-fun tp!2335970 () Bool)

(assert (=> b!7872119 (= e!4650371 tp!2335970)))

(declare-fun b!7872118 () Bool)

(declare-fun tp!2335971 () Bool)

(declare-fun tp!2335969 () Bool)

(assert (=> b!7872118 (= e!4650371 (and tp!2335971 tp!2335969))))

(assert (= (and b!7871465 (is-ElementMatch!21162 (regTwo!42836 (regOne!42836 r2!6138)))) b!7872117))

(assert (= (and b!7871465 (is-Concat!30007 (regTwo!42836 (regOne!42836 r2!6138)))) b!7872118))

(assert (= (and b!7871465 (is-Star!21162 (regTwo!42836 (regOne!42836 r2!6138)))) b!7872119))

(assert (= (and b!7871465 (is-Union!21162 (regTwo!42836 (regOne!42836 r2!6138)))) b!7872120))

(declare-fun e!4650372 () Bool)

(assert (=> b!7871458 (= tp!2335628 e!4650372)))

(declare-fun b!7872124 () Bool)

(declare-fun tp!2335977 () Bool)

(declare-fun tp!2335978 () Bool)

(assert (=> b!7872124 (= e!4650372 (and tp!2335977 tp!2335978))))

(declare-fun b!7872121 () Bool)

(assert (=> b!7872121 (= e!4650372 tp_is_empty!52723)))

(declare-fun b!7872123 () Bool)

(declare-fun tp!2335975 () Bool)

(assert (=> b!7872123 (= e!4650372 tp!2335975)))

(declare-fun b!7872122 () Bool)

(declare-fun tp!2335976 () Bool)

(declare-fun tp!2335974 () Bool)

(assert (=> b!7872122 (= e!4650372 (and tp!2335976 tp!2335974))))

(assert (= (and b!7871458 (is-ElementMatch!21162 (reg!21491 (regOne!42836 r1!6200)))) b!7872121))

(assert (= (and b!7871458 (is-Concat!30007 (reg!21491 (regOne!42836 r1!6200)))) b!7872122))

(assert (= (and b!7871458 (is-Star!21162 (reg!21491 (regOne!42836 r1!6200)))) b!7872123))

(assert (= (and b!7871458 (is-Union!21162 (reg!21491 (regOne!42836 r1!6200)))) b!7872124))

(declare-fun e!4650373 () Bool)

(assert (=> b!7871489 (= tp!2335669 e!4650373)))

(declare-fun b!7872128 () Bool)

(declare-fun tp!2335982 () Bool)

(declare-fun tp!2335983 () Bool)

(assert (=> b!7872128 (= e!4650373 (and tp!2335982 tp!2335983))))

(declare-fun b!7872125 () Bool)

(assert (=> b!7872125 (= e!4650373 tp_is_empty!52723)))

(declare-fun b!7872127 () Bool)

(declare-fun tp!2335980 () Bool)

(assert (=> b!7872127 (= e!4650373 tp!2335980)))

(declare-fun b!7872126 () Bool)

(declare-fun tp!2335981 () Bool)

(declare-fun tp!2335979 () Bool)

(assert (=> b!7872126 (= e!4650373 (and tp!2335981 tp!2335979))))

(assert (= (and b!7871489 (is-ElementMatch!21162 (regOne!42836 (regOne!42837 r1!6200)))) b!7872125))

(assert (= (and b!7871489 (is-Concat!30007 (regOne!42836 (regOne!42837 r1!6200)))) b!7872126))

(assert (= (and b!7871489 (is-Star!21162 (regOne!42836 (regOne!42837 r1!6200)))) b!7872127))

(assert (= (and b!7871489 (is-Union!21162 (regOne!42836 (regOne!42837 r1!6200)))) b!7872128))

(declare-fun e!4650374 () Bool)

(assert (=> b!7871489 (= tp!2335667 e!4650374)))

(declare-fun b!7872132 () Bool)

(declare-fun tp!2335987 () Bool)

(declare-fun tp!2335988 () Bool)

(assert (=> b!7872132 (= e!4650374 (and tp!2335987 tp!2335988))))

(declare-fun b!7872129 () Bool)

(assert (=> b!7872129 (= e!4650374 tp_is_empty!52723)))

(declare-fun b!7872131 () Bool)

(declare-fun tp!2335985 () Bool)

(assert (=> b!7872131 (= e!4650374 tp!2335985)))

(declare-fun b!7872130 () Bool)

(declare-fun tp!2335986 () Bool)

(declare-fun tp!2335984 () Bool)

(assert (=> b!7872130 (= e!4650374 (and tp!2335986 tp!2335984))))

(assert (= (and b!7871489 (is-ElementMatch!21162 (regTwo!42836 (regOne!42837 r1!6200)))) b!7872129))

(assert (= (and b!7871489 (is-Concat!30007 (regTwo!42836 (regOne!42837 r1!6200)))) b!7872130))

(assert (= (and b!7871489 (is-Star!21162 (regTwo!42836 (regOne!42837 r1!6200)))) b!7872131))

(assert (= (and b!7871489 (is-Union!21162 (regTwo!42836 (regOne!42837 r1!6200)))) b!7872132))

(declare-fun e!4650382 () Bool)

(assert (=> b!7871466 (= tp!2335638 e!4650382)))

(declare-fun b!7872145 () Bool)

(declare-fun tp!2335992 () Bool)

(declare-fun tp!2335993 () Bool)

(assert (=> b!7872145 (= e!4650382 (and tp!2335992 tp!2335993))))

(declare-fun b!7872142 () Bool)

(assert (=> b!7872142 (= e!4650382 tp_is_empty!52723)))

(declare-fun b!7872144 () Bool)

(declare-fun tp!2335990 () Bool)

(assert (=> b!7872144 (= e!4650382 tp!2335990)))

(declare-fun b!7872143 () Bool)

(declare-fun tp!2335991 () Bool)

(declare-fun tp!2335989 () Bool)

(assert (=> b!7872143 (= e!4650382 (and tp!2335991 tp!2335989))))

(assert (= (and b!7871466 (is-ElementMatch!21162 (reg!21491 (regOne!42836 r2!6138)))) b!7872142))

(assert (= (and b!7871466 (is-Concat!30007 (reg!21491 (regOne!42836 r2!6138)))) b!7872143))

(assert (= (and b!7871466 (is-Star!21162 (reg!21491 (regOne!42836 r2!6138)))) b!7872144))

(assert (= (and b!7871466 (is-Union!21162 (reg!21491 (regOne!42836 r2!6138)))) b!7872145))

(push 1)

(assert (not b!7871807))

(assert (not b!7871952))

(assert (not b!7871953))

(assert (not b!7871931))

(assert (not b!7872095))

(assert (not bm!730043))

(assert (not b!7872145))

(assert (not b!7871966))

(assert (not b!7872112))

(assert (not b!7872083))

(assert (not b!7871863))

(assert (not b!7871767))

(assert (not b!7871656))

(assert (not bm!729992))

(assert (not b!7871937))

(assert (not b!7871917))

(assert (not b!7872122))

(assert (not b!7871911))

(assert (not b!7872046))

(assert (not bm!730047))

(assert (not b!7872016))

(assert (not b!7871775))

(assert (not b!7872017))

(assert (not bm!729994))

(assert (not b!7872038))

(assert (not d!2355310))

(assert (not b!7872012))

(assert (not b!7871965))

(assert (not b!7872057))

(assert (not b!7871647))

(assert (not b!7872044))

(assert (not b!7872025))

(assert (not bm!730011))

(assert (not b!7872119))

(assert (not bm!730063))

(assert (not d!2355350))

(assert (not b!7871890))

(assert (not b!7872124))

(assert (not b!7872118))

(assert (not b!7871817))

(assert (not b!7871650))

(assert (not b!7871971))

(assert (not b!7871909))

(assert (not bm!730046))

(assert (not b!7871973))

(assert (not b!7871991))

(assert (not b!7872104))

(assert (not b!7872089))

(assert (not b!7871927))

(assert (not b!7871974))

(assert (not b!7872024))

(assert (not b!7871982))

(assert (not b!7872081))

(assert (not b!7871935))

(assert (not b!7871943))

(assert (not d!2355362))

(assert (not b!7872021))

(assert (not b!7871924))

(assert (not b!7871986))

(assert (not b!7872128))

(assert (not bm!730000))

(assert (not b!7871933))

(assert (not b!7872028))

(assert (not b!7872110))

(assert (not b!7871988))

(assert (not b!7871994))

(assert (not b!7871990))

(assert (not b!7872143))

(assert (not b!7872075))

(assert (not b!7871941))

(assert (not b!7872014))

(assert (not b!7871904))

(assert (not b!7872127))

(assert (not b!7872040))

(assert (not b!7871969))

(assert (not b!7872120))

(assert (not b!7872058))

(assert (not b!7872041))

(assert (not b!7871936))

(assert (not bm!730052))

(assert (not b!7871658))

(assert (not d!2355274))

(assert (not b!7872034))

(assert (not bm!730053))

(assert (not b!7871680))

(assert (not d!2355294))

(assert (not b!7872111))

(assert (not b!7871919))

(assert (not b!7872069))

(assert (not bm!730007))

(assert (not b!7872059))

(assert (not d!2355298))

(assert (not bm!730019))

(assert (not b!7872106))

(assert (not b!7871908))

(assert (not b!7872063))

(assert (not b!7871998))

(assert (not b!7871856))

(assert (not b!7872102))

(assert (not b!7871671))

(assert (not b!7871689))

(assert (not b!7871939))

(assert (not b!7871951))

(assert (not bm!730018))

(assert (not bm!730039))

(assert (not b!7871862))

(assert (not b!7871920))

(assert (not bm!730001))

(assert (not b!7872000))

(assert (not bm!730022))

(assert (not b!7872086))

(assert (not b!7871945))

(assert (not b!7872144))

(assert (not bm!729998))

(assert (not bm!730009))

(assert (not b!7872032))

(assert (not b!7871728))

(assert (not b!7872130))

(assert (not b!7871657))

(assert (not b!7872022))

(assert (not b!7871977))

(assert (not b!7871652))

(assert (not b!7872042))

(assert (not b!7871996))

(assert (not bm!730056))

(assert (not d!2355312))

(assert (not b!7871987))

(assert (not b!7871844))

(assert (not b!7872037))

(assert (not b!7871737))

(assert (not bm!730013))

(assert (not b!7872103))

(assert (not b!7871947))

(assert (not d!2355320))

(assert (not d!2355324))

(assert (not b!7872107))

(assert (not b!7872131))

(assert (not d!2355318))

(assert (not b!7871888))

(assert (not b!7872073))

(assert (not bm!729996))

(assert (not b!7872078))

(assert (not b!7871932))

(assert (not d!2355348))

(assert (not b!7872067))

(assert (not b!7872030))

(assert (not b!7872108))

(assert (not b!7871746))

(assert (not d!2355358))

(assert (not b!7872074))

(assert (not b!7871944))

(assert (not bm!730038))

(assert (not b!7871980))

(assert (not b!7871798))

(assert (not b!7871979))

(assert (not b!7871912))

(assert (not b!7871708))

(assert (not b!7871907))

(assert (not b!7872066))

(assert (not bm!730024))

(assert (not b!7872132))

(assert (not b!7871778))

(assert (not b!7871967))

(assert (not b!7872116))

(assert (not b!7871929))

(assert (not b!7872036))

(assert (not d!2355300))

(assert (not b!7871940))

(assert (not b!7872115))

(assert (not b!7871773))

(assert (not bm!730065))

(assert (not bm!730032))

(assert (not b!7871905))

(assert (not b!7872062))

(assert (not bm!730021))

(assert (not b!7872126))

(assert (not b!7872026))

(assert (not b!7871983))

(assert (not b!7871916))

(assert (not bm!730058))

(assert (not b!7872079))

(assert (not b!7871835))

(assert (not bm!730003))

(assert (not b!7871864))

(assert (not bm!730055))

(assert (not b!7872033))

(assert (not b!7872045))

(assert (not b!7872020))

(assert (not b!7872071))

(assert (not b!7871921))

(assert (not d!2355328))

(assert (not b!7871975))

(assert (not b!7871764))

(assert (not b!7871788))

(assert (not b!7871774))

(assert (not b!7871769))

(assert (not b!7871915))

(assert (not bm!730045))

(assert (not b!7872077))

(assert (not b!7872085))

(assert (not b!7871876))

(assert (not b!7871978))

(assert (not b!7871923))

(assert tp_is_empty!52723)

(assert (not b!7871925))

(assert (not b!7871970))

(assert (not bm!730034))

(assert (not bm!730040))

(assert (not b!7872096))

(assert (not b!7872002))

(assert (not b!7871949))

(assert (not bm!730030))

(assert (not b!7871886))

(assert (not d!2355302))

(assert (not b!7872065))

(assert (not b!7871853))

(assert (not b!7871984))

(assert (not b!7871928))

(assert (not b!7872018))

(assert (not b!7872123))

(assert (not b!7871698))

(assert (not b!7871948))

(assert (not b!7872114))

(assert (not b!7871903))

(assert (not b!7871858))

(assert (not bm!729997))

(assert (not b!7872070))

(assert (not b!7871992))

(assert (not b!7872029))

(assert (not b!7871661))

(assert (not d!2355334))

(assert (not b!7872087))

(assert (not bm!730036))

(assert (not b!7872082))

(assert (not bm!730004))

(assert (not b!7871913))

(assert (not bm!730025))

(assert (not b!7871995))

(assert (not d!2355276))

(assert (not b!7872013))

(assert (not b!7872061))

(assert (not d!2355292))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

