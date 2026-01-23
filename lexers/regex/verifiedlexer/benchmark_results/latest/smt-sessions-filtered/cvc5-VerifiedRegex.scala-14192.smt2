; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!743996 () Bool)

(assert start!743996)

(declare-fun b!7869919 () Bool)

(declare-fun e!4649328 () Bool)

(declare-fun tp_is_empty!52711 () Bool)

(declare-fun tp!2335003 () Bool)

(assert (=> b!7869919 (= e!4649328 (and tp_is_empty!52711 tp!2335003))))

(declare-fun b!7869920 () Bool)

(declare-fun e!4649329 () Bool)

(declare-fun tp!2335000 () Bool)

(assert (=> b!7869920 (= e!4649329 tp!2335000)))

(declare-fun b!7869921 () Bool)

(declare-fun res!3127191 () Bool)

(declare-fun e!4649332 () Bool)

(assert (=> b!7869921 (=> (not res!3127191) (not e!4649332))))

(declare-datatypes ((C!42638 0))(
  ( (C!42639 (val!31781 Int)) )
))
(declare-datatypes ((Regex!21156 0))(
  ( (ElementMatch!21156 (c!1445800 C!42638)) (Concat!30001 (regOne!42824 Regex!21156) (regTwo!42824 Regex!21156)) (EmptyExpr!21156) (Star!21156 (reg!21485 Regex!21156)) (EmptyLang!21156) (Union!21156 (regOne!42825 Regex!21156) (regTwo!42825 Regex!21156)) )
))
(declare-fun r1!6200 () Regex!21156)

(declare-datatypes ((List!74015 0))(
  ( (Nil!73891) (Cons!73891 (h!80339 C!42638) (t!388750 List!74015)) )
))
(declare-fun s!14219 () List!74015)

(declare-fun matchR!10592 (Regex!21156 List!74015) Bool)

(assert (=> b!7869921 (= res!3127191 (matchR!10592 r1!6200 s!14219))))

(declare-fun b!7869922 () Bool)

(declare-fun tp!2335007 () Bool)

(declare-fun tp!2334997 () Bool)

(assert (=> b!7869922 (= e!4649329 (and tp!2335007 tp!2334997))))

(declare-fun b!7869923 () Bool)

(declare-fun e!4649331 () Bool)

(declare-fun tp!2335006 () Bool)

(declare-fun tp!2334999 () Bool)

(assert (=> b!7869923 (= e!4649331 (and tp!2335006 tp!2334999))))

(declare-fun b!7869924 () Bool)

(declare-fun e!4649330 () Bool)

(declare-fun lt!2680832 () Regex!21156)

(declare-fun validRegex!11566 (Regex!21156) Bool)

(assert (=> b!7869924 (= e!4649330 (validRegex!11566 lt!2680832))))

(declare-fun b!7869925 () Bool)

(declare-fun res!3127192 () Bool)

(assert (=> b!7869925 (=> (not res!3127192) (not e!4649332))))

(declare-fun r2!6138 () Regex!21156)

(assert (=> b!7869925 (= res!3127192 (validRegex!11566 r2!6138))))

(declare-fun res!3127193 () Bool)

(assert (=> start!743996 (=> (not res!3127193) (not e!4649332))))

(assert (=> start!743996 (= res!3127193 (validRegex!11566 r1!6200))))

(assert (=> start!743996 e!4649332))

(assert (=> start!743996 e!4649329))

(assert (=> start!743996 e!4649331))

(assert (=> start!743996 e!4649328))

(declare-fun b!7869926 () Bool)

(declare-fun tp!2335005 () Bool)

(declare-fun tp!2335001 () Bool)

(assert (=> b!7869926 (= e!4649331 (and tp!2335005 tp!2335001))))

(declare-fun b!7869927 () Bool)

(assert (=> b!7869927 (= e!4649331 tp_is_empty!52711)))

(declare-fun b!7869928 () Bool)

(declare-fun tp!2334998 () Bool)

(declare-fun tp!2335004 () Bool)

(assert (=> b!7869928 (= e!4649329 (and tp!2334998 tp!2335004))))

(declare-fun b!7869929 () Bool)

(declare-fun tp!2335002 () Bool)

(assert (=> b!7869929 (= e!4649331 tp!2335002)))

(declare-fun b!7869930 () Bool)

(assert (=> b!7869930 (= e!4649329 tp_is_empty!52711)))

(declare-fun b!7869931 () Bool)

(declare-fun res!3127195 () Bool)

(assert (=> b!7869931 (=> (not res!3127195) (not e!4649332))))

(assert (=> b!7869931 (= res!3127195 (is-Cons!73891 s!14219))))

(declare-fun b!7869932 () Bool)

(assert (=> b!7869932 (= e!4649332 (not e!4649330))))

(declare-fun res!3127194 () Bool)

(assert (=> b!7869932 (=> res!3127194 e!4649330)))

(assert (=> b!7869932 (= res!3127194 (not (matchR!10592 lt!2680832 s!14219)))))

(assert (=> b!7869932 (= lt!2680832 (Union!21156 r1!6200 r2!6138))))

(declare-fun lt!2680830 () Regex!21156)

(declare-fun lt!2680833 () Regex!21156)

(assert (=> b!7869932 (matchR!10592 (Union!21156 lt!2680830 lt!2680833) (t!388750 s!14219))))

(declare-datatypes ((Unit!168974 0))(
  ( (Unit!168975) )
))
(declare-fun lt!2680831 () Unit!168974)

(declare-fun lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!143 (Regex!21156 Regex!21156 List!74015) Unit!168974)

(assert (=> b!7869932 (= lt!2680831 (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!143 lt!2680830 lt!2680833 (t!388750 s!14219)))))

(declare-fun derivativeStep!6387 (Regex!21156 C!42638) Regex!21156)

(assert (=> b!7869932 (= lt!2680833 (derivativeStep!6387 r2!6138 (h!80339 s!14219)))))

(assert (=> b!7869932 (= lt!2680830 (derivativeStep!6387 r1!6200 (h!80339 s!14219)))))

(assert (= (and start!743996 res!3127193) b!7869925))

(assert (= (and b!7869925 res!3127192) b!7869921))

(assert (= (and b!7869921 res!3127191) b!7869931))

(assert (= (and b!7869931 res!3127195) b!7869932))

(assert (= (and b!7869932 (not res!3127194)) b!7869924))

(assert (= (and start!743996 (is-ElementMatch!21156 r1!6200)) b!7869930))

(assert (= (and start!743996 (is-Concat!30001 r1!6200)) b!7869922))

(assert (= (and start!743996 (is-Star!21156 r1!6200)) b!7869920))

(assert (= (and start!743996 (is-Union!21156 r1!6200)) b!7869928))

(assert (= (and start!743996 (is-ElementMatch!21156 r2!6138)) b!7869927))

(assert (= (and start!743996 (is-Concat!30001 r2!6138)) b!7869923))

(assert (= (and start!743996 (is-Star!21156 r2!6138)) b!7869929))

(assert (= (and start!743996 (is-Union!21156 r2!6138)) b!7869926))

(assert (= (and start!743996 (is-Cons!73891 s!14219)) b!7869919))

(declare-fun m!8264836 () Bool)

(assert (=> b!7869924 m!8264836))

(declare-fun m!8264838 () Bool)

(assert (=> b!7869921 m!8264838))

(declare-fun m!8264840 () Bool)

(assert (=> b!7869932 m!8264840))

(declare-fun m!8264842 () Bool)

(assert (=> b!7869932 m!8264842))

(declare-fun m!8264844 () Bool)

(assert (=> b!7869932 m!8264844))

(declare-fun m!8264846 () Bool)

(assert (=> b!7869932 m!8264846))

(declare-fun m!8264848 () Bool)

(assert (=> b!7869932 m!8264848))

(declare-fun m!8264850 () Bool)

(assert (=> start!743996 m!8264850))

(declare-fun m!8264852 () Bool)

(assert (=> b!7869925 m!8264852))

(push 1)

(assert (not b!7869925))

(assert (not b!7869932))

(assert (not b!7869923))

(assert (not start!743996))

(assert (not b!7869926))

(assert (not b!7869921))

(assert tp_is_empty!52711)

(assert (not b!7869928))

(assert (not b!7869922))

(assert (not b!7869919))

(assert (not b!7869920))

(assert (not b!7869929))

(assert (not b!7869924))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2355161 () Bool)

(declare-fun res!3127221 () Bool)

(declare-fun e!4649367 () Bool)

(assert (=> d!2355161 (=> res!3127221 e!4649367)))

(assert (=> d!2355161 (= res!3127221 (is-ElementMatch!21156 lt!2680832))))

(assert (=> d!2355161 (= (validRegex!11566 lt!2680832) e!4649367)))

(declare-fun b!7869993 () Bool)

(declare-fun e!4649364 () Bool)

(declare-fun call!729791 () Bool)

(assert (=> b!7869993 (= e!4649364 call!729791)))

(declare-fun b!7869994 () Bool)

(declare-fun e!4649365 () Bool)

(declare-fun e!4649362 () Bool)

(assert (=> b!7869994 (= e!4649365 e!4649362)))

(declare-fun c!1445806 () Bool)

(assert (=> b!7869994 (= c!1445806 (is-Union!21156 lt!2680832))))

(declare-fun bm!729786 () Bool)

(declare-fun call!729792 () Bool)

(declare-fun call!729793 () Bool)

(assert (=> bm!729786 (= call!729792 call!729793)))

(declare-fun b!7869995 () Bool)

(declare-fun e!4649363 () Bool)

(assert (=> b!7869995 (= e!4649365 e!4649363)))

(declare-fun res!3127222 () Bool)

(declare-fun nullable!9420 (Regex!21156) Bool)

(assert (=> b!7869995 (= res!3127222 (not (nullable!9420 (reg!21485 lt!2680832))))))

(assert (=> b!7869995 (=> (not res!3127222) (not e!4649363))))

(declare-fun b!7869996 () Bool)

(declare-fun e!4649368 () Bool)

(assert (=> b!7869996 (= e!4649368 e!4649364)))

(declare-fun res!3127224 () Bool)

(assert (=> b!7869996 (=> (not res!3127224) (not e!4649364))))

(assert (=> b!7869996 (= res!3127224 call!729792)))

(declare-fun b!7869997 () Bool)

(declare-fun res!3127225 () Bool)

(declare-fun e!4649366 () Bool)

(assert (=> b!7869997 (=> (not res!3127225) (not e!4649366))))

(assert (=> b!7869997 (= res!3127225 call!729791)))

(assert (=> b!7869997 (= e!4649362 e!4649366)))

(declare-fun b!7869998 () Bool)

(assert (=> b!7869998 (= e!4649366 call!729792)))

(declare-fun c!1445807 () Bool)

(declare-fun bm!729787 () Bool)

(assert (=> bm!729787 (= call!729793 (validRegex!11566 (ite c!1445807 (reg!21485 lt!2680832) (ite c!1445806 (regTwo!42825 lt!2680832) (regOne!42824 lt!2680832)))))))

(declare-fun bm!729788 () Bool)

(assert (=> bm!729788 (= call!729791 (validRegex!11566 (ite c!1445806 (regOne!42825 lt!2680832) (regTwo!42824 lt!2680832))))))

(declare-fun b!7869999 () Bool)

(assert (=> b!7869999 (= e!4649363 call!729793)))

(declare-fun b!7870000 () Bool)

(declare-fun res!3127223 () Bool)

(assert (=> b!7870000 (=> res!3127223 e!4649368)))

(assert (=> b!7870000 (= res!3127223 (not (is-Concat!30001 lt!2680832)))))

(assert (=> b!7870000 (= e!4649362 e!4649368)))

(declare-fun b!7870001 () Bool)

(assert (=> b!7870001 (= e!4649367 e!4649365)))

(assert (=> b!7870001 (= c!1445807 (is-Star!21156 lt!2680832))))

(assert (= (and d!2355161 (not res!3127221)) b!7870001))

(assert (= (and b!7870001 c!1445807) b!7869995))

(assert (= (and b!7870001 (not c!1445807)) b!7869994))

(assert (= (and b!7869995 res!3127222) b!7869999))

(assert (= (and b!7869994 c!1445806) b!7869997))

(assert (= (and b!7869994 (not c!1445806)) b!7870000))

(assert (= (and b!7869997 res!3127225) b!7869998))

(assert (= (and b!7870000 (not res!3127223)) b!7869996))

(assert (= (and b!7869996 res!3127224) b!7869993))

(assert (= (or b!7869998 b!7869996) bm!729786))

(assert (= (or b!7869997 b!7869993) bm!729788))

(assert (= (or b!7869999 bm!729786) bm!729787))

(declare-fun m!8264872 () Bool)

(assert (=> b!7869995 m!8264872))

(declare-fun m!8264874 () Bool)

(assert (=> bm!729787 m!8264874))

(declare-fun m!8264876 () Bool)

(assert (=> bm!729788 m!8264876))

(assert (=> b!7869924 d!2355161))

(declare-fun d!2355165 () Bool)

(declare-fun res!3127226 () Bool)

(declare-fun e!4649374 () Bool)

(assert (=> d!2355165 (=> res!3127226 e!4649374)))

(assert (=> d!2355165 (= res!3127226 (is-ElementMatch!21156 r2!6138))))

(assert (=> d!2355165 (= (validRegex!11566 r2!6138) e!4649374)))

(declare-fun b!7870002 () Bool)

(declare-fun e!4649371 () Bool)

(declare-fun call!729794 () Bool)

(assert (=> b!7870002 (= e!4649371 call!729794)))

(declare-fun b!7870003 () Bool)

(declare-fun e!4649372 () Bool)

(declare-fun e!4649369 () Bool)

(assert (=> b!7870003 (= e!4649372 e!4649369)))

(declare-fun c!1445808 () Bool)

(assert (=> b!7870003 (= c!1445808 (is-Union!21156 r2!6138))))

(declare-fun bm!729789 () Bool)

(declare-fun call!729795 () Bool)

(declare-fun call!729796 () Bool)

(assert (=> bm!729789 (= call!729795 call!729796)))

(declare-fun b!7870004 () Bool)

(declare-fun e!4649370 () Bool)

(assert (=> b!7870004 (= e!4649372 e!4649370)))

(declare-fun res!3127227 () Bool)

(assert (=> b!7870004 (= res!3127227 (not (nullable!9420 (reg!21485 r2!6138))))))

(assert (=> b!7870004 (=> (not res!3127227) (not e!4649370))))

(declare-fun b!7870005 () Bool)

(declare-fun e!4649375 () Bool)

(assert (=> b!7870005 (= e!4649375 e!4649371)))

(declare-fun res!3127229 () Bool)

(assert (=> b!7870005 (=> (not res!3127229) (not e!4649371))))

(assert (=> b!7870005 (= res!3127229 call!729795)))

(declare-fun b!7870006 () Bool)

(declare-fun res!3127230 () Bool)

(declare-fun e!4649373 () Bool)

(assert (=> b!7870006 (=> (not res!3127230) (not e!4649373))))

(assert (=> b!7870006 (= res!3127230 call!729794)))

(assert (=> b!7870006 (= e!4649369 e!4649373)))

(declare-fun b!7870007 () Bool)

(assert (=> b!7870007 (= e!4649373 call!729795)))

(declare-fun bm!729790 () Bool)

(declare-fun c!1445809 () Bool)

(assert (=> bm!729790 (= call!729796 (validRegex!11566 (ite c!1445809 (reg!21485 r2!6138) (ite c!1445808 (regTwo!42825 r2!6138) (regOne!42824 r2!6138)))))))

(declare-fun bm!729791 () Bool)

(assert (=> bm!729791 (= call!729794 (validRegex!11566 (ite c!1445808 (regOne!42825 r2!6138) (regTwo!42824 r2!6138))))))

(declare-fun b!7870008 () Bool)

(assert (=> b!7870008 (= e!4649370 call!729796)))

(declare-fun b!7870009 () Bool)

(declare-fun res!3127228 () Bool)

(assert (=> b!7870009 (=> res!3127228 e!4649375)))

(assert (=> b!7870009 (= res!3127228 (not (is-Concat!30001 r2!6138)))))

(assert (=> b!7870009 (= e!4649369 e!4649375)))

(declare-fun b!7870010 () Bool)

(assert (=> b!7870010 (= e!4649374 e!4649372)))

(assert (=> b!7870010 (= c!1445809 (is-Star!21156 r2!6138))))

(assert (= (and d!2355165 (not res!3127226)) b!7870010))

(assert (= (and b!7870010 c!1445809) b!7870004))

(assert (= (and b!7870010 (not c!1445809)) b!7870003))

(assert (= (and b!7870004 res!3127227) b!7870008))

(assert (= (and b!7870003 c!1445808) b!7870006))

(assert (= (and b!7870003 (not c!1445808)) b!7870009))

(assert (= (and b!7870006 res!3127230) b!7870007))

(assert (= (and b!7870009 (not res!3127228)) b!7870005))

(assert (= (and b!7870005 res!3127229) b!7870002))

(assert (= (or b!7870007 b!7870005) bm!729789))

(assert (= (or b!7870006 b!7870002) bm!729791))

(assert (= (or b!7870008 bm!729789) bm!729790))

(declare-fun m!8264878 () Bool)

(assert (=> b!7870004 m!8264878))

(declare-fun m!8264880 () Bool)

(assert (=> bm!729790 m!8264880))

(declare-fun m!8264882 () Bool)

(assert (=> bm!729791 m!8264882))

(assert (=> b!7869925 d!2355165))

(declare-fun d!2355167 () Bool)

(declare-fun res!3127231 () Bool)

(declare-fun e!4649381 () Bool)

(assert (=> d!2355167 (=> res!3127231 e!4649381)))

(assert (=> d!2355167 (= res!3127231 (is-ElementMatch!21156 r1!6200))))

(assert (=> d!2355167 (= (validRegex!11566 r1!6200) e!4649381)))

(declare-fun b!7870011 () Bool)

(declare-fun e!4649378 () Bool)

(declare-fun call!729797 () Bool)

(assert (=> b!7870011 (= e!4649378 call!729797)))

(declare-fun b!7870012 () Bool)

(declare-fun e!4649379 () Bool)

(declare-fun e!4649376 () Bool)

(assert (=> b!7870012 (= e!4649379 e!4649376)))

(declare-fun c!1445810 () Bool)

(assert (=> b!7870012 (= c!1445810 (is-Union!21156 r1!6200))))

(declare-fun bm!729792 () Bool)

(declare-fun call!729798 () Bool)

(declare-fun call!729799 () Bool)

(assert (=> bm!729792 (= call!729798 call!729799)))

(declare-fun b!7870013 () Bool)

(declare-fun e!4649377 () Bool)

(assert (=> b!7870013 (= e!4649379 e!4649377)))

(declare-fun res!3127232 () Bool)

(assert (=> b!7870013 (= res!3127232 (not (nullable!9420 (reg!21485 r1!6200))))))

(assert (=> b!7870013 (=> (not res!3127232) (not e!4649377))))

(declare-fun b!7870014 () Bool)

(declare-fun e!4649382 () Bool)

(assert (=> b!7870014 (= e!4649382 e!4649378)))

(declare-fun res!3127234 () Bool)

(assert (=> b!7870014 (=> (not res!3127234) (not e!4649378))))

(assert (=> b!7870014 (= res!3127234 call!729798)))

(declare-fun b!7870015 () Bool)

(declare-fun res!3127235 () Bool)

(declare-fun e!4649380 () Bool)

(assert (=> b!7870015 (=> (not res!3127235) (not e!4649380))))

(assert (=> b!7870015 (= res!3127235 call!729797)))

(assert (=> b!7870015 (= e!4649376 e!4649380)))

(declare-fun b!7870016 () Bool)

(assert (=> b!7870016 (= e!4649380 call!729798)))

(declare-fun bm!729793 () Bool)

(declare-fun c!1445811 () Bool)

(assert (=> bm!729793 (= call!729799 (validRegex!11566 (ite c!1445811 (reg!21485 r1!6200) (ite c!1445810 (regTwo!42825 r1!6200) (regOne!42824 r1!6200)))))))

(declare-fun bm!729794 () Bool)

(assert (=> bm!729794 (= call!729797 (validRegex!11566 (ite c!1445810 (regOne!42825 r1!6200) (regTwo!42824 r1!6200))))))

(declare-fun b!7870017 () Bool)

(assert (=> b!7870017 (= e!4649377 call!729799)))

(declare-fun b!7870018 () Bool)

(declare-fun res!3127233 () Bool)

(assert (=> b!7870018 (=> res!3127233 e!4649382)))

(assert (=> b!7870018 (= res!3127233 (not (is-Concat!30001 r1!6200)))))

(assert (=> b!7870018 (= e!4649376 e!4649382)))

(declare-fun b!7870019 () Bool)

(assert (=> b!7870019 (= e!4649381 e!4649379)))

(assert (=> b!7870019 (= c!1445811 (is-Star!21156 r1!6200))))

(assert (= (and d!2355167 (not res!3127231)) b!7870019))

(assert (= (and b!7870019 c!1445811) b!7870013))

(assert (= (and b!7870019 (not c!1445811)) b!7870012))

(assert (= (and b!7870013 res!3127232) b!7870017))

(assert (= (and b!7870012 c!1445810) b!7870015))

(assert (= (and b!7870012 (not c!1445810)) b!7870018))

(assert (= (and b!7870015 res!3127235) b!7870016))

(assert (= (and b!7870018 (not res!3127233)) b!7870014))

(assert (= (and b!7870014 res!3127234) b!7870011))

(assert (= (or b!7870016 b!7870014) bm!729792))

(assert (= (or b!7870015 b!7870011) bm!729794))

(assert (= (or b!7870017 bm!729792) bm!729793))

(declare-fun m!8264884 () Bool)

(assert (=> b!7870013 m!8264884))

(declare-fun m!8264886 () Bool)

(assert (=> bm!729793 m!8264886))

(declare-fun m!8264888 () Bool)

(assert (=> bm!729794 m!8264888))

(assert (=> start!743996 d!2355167))

(declare-fun b!7870076 () Bool)

(declare-fun e!4649417 () Bool)

(declare-fun head!16098 (List!74015) C!42638)

(assert (=> b!7870076 (= e!4649417 (not (= (head!16098 s!14219) (c!1445800 r1!6200))))))

(declare-fun d!2355169 () Bool)

(declare-fun e!4649415 () Bool)

(assert (=> d!2355169 e!4649415))

(declare-fun c!1445825 () Bool)

(assert (=> d!2355169 (= c!1445825 (is-EmptyExpr!21156 r1!6200))))

(declare-fun lt!2680850 () Bool)

(declare-fun e!4649412 () Bool)

(assert (=> d!2355169 (= lt!2680850 e!4649412)))

(declare-fun c!1445824 () Bool)

(declare-fun isEmpty!42387 (List!74015) Bool)

(assert (=> d!2355169 (= c!1445824 (isEmpty!42387 s!14219))))

(assert (=> d!2355169 (validRegex!11566 r1!6200)))

(assert (=> d!2355169 (= (matchR!10592 r1!6200 s!14219) lt!2680850)))

(declare-fun b!7870077 () Bool)

(declare-fun res!3127275 () Bool)

(declare-fun e!4649414 () Bool)

(assert (=> b!7870077 (=> (not res!3127275) (not e!4649414))))

(declare-fun call!729804 () Bool)

(assert (=> b!7870077 (= res!3127275 (not call!729804))))

(declare-fun b!7870078 () Bool)

(assert (=> b!7870078 (= e!4649412 (nullable!9420 r1!6200))))

(declare-fun b!7870079 () Bool)

(declare-fun e!4649416 () Bool)

(assert (=> b!7870079 (= e!4649416 (not lt!2680850))))

(declare-fun b!7870080 () Bool)

(assert (=> b!7870080 (= e!4649414 (= (head!16098 s!14219) (c!1445800 r1!6200)))))

(declare-fun b!7870081 () Bool)

(declare-fun res!3127273 () Bool)

(assert (=> b!7870081 (=> res!3127273 e!4649417)))

(declare-fun tail!15641 (List!74015) List!74015)

(assert (=> b!7870081 (= res!3127273 (not (isEmpty!42387 (tail!15641 s!14219))))))

(declare-fun b!7870082 () Bool)

(assert (=> b!7870082 (= e!4649412 (matchR!10592 (derivativeStep!6387 r1!6200 (head!16098 s!14219)) (tail!15641 s!14219)))))

(declare-fun b!7870083 () Bool)

(declare-fun e!4649413 () Bool)

(assert (=> b!7870083 (= e!4649413 e!4649417)))

(declare-fun res!3127270 () Bool)

(assert (=> b!7870083 (=> res!3127270 e!4649417)))

(assert (=> b!7870083 (= res!3127270 call!729804)))

(declare-fun b!7870084 () Bool)

(assert (=> b!7870084 (= e!4649415 e!4649416)))

(declare-fun c!1445826 () Bool)

(assert (=> b!7870084 (= c!1445826 (is-EmptyLang!21156 r1!6200))))

(declare-fun bm!729799 () Bool)

(assert (=> bm!729799 (= call!729804 (isEmpty!42387 s!14219))))

(declare-fun b!7870085 () Bool)

(declare-fun res!3127268 () Bool)

(declare-fun e!4649411 () Bool)

(assert (=> b!7870085 (=> res!3127268 e!4649411)))

(assert (=> b!7870085 (= res!3127268 (not (is-ElementMatch!21156 r1!6200)))))

(assert (=> b!7870085 (= e!4649416 e!4649411)))

(declare-fun b!7870086 () Bool)

(assert (=> b!7870086 (= e!4649411 e!4649413)))

(declare-fun res!3127274 () Bool)

(assert (=> b!7870086 (=> (not res!3127274) (not e!4649413))))

(assert (=> b!7870086 (= res!3127274 (not lt!2680850))))

(declare-fun b!7870087 () Bool)

(assert (=> b!7870087 (= e!4649415 (= lt!2680850 call!729804))))

(declare-fun b!7870088 () Bool)

(declare-fun res!3127272 () Bool)

(assert (=> b!7870088 (=> res!3127272 e!4649411)))

(assert (=> b!7870088 (= res!3127272 e!4649414)))

(declare-fun res!3127271 () Bool)

(assert (=> b!7870088 (=> (not res!3127271) (not e!4649414))))

(assert (=> b!7870088 (= res!3127271 lt!2680850)))

(declare-fun b!7870089 () Bool)

(declare-fun res!3127269 () Bool)

(assert (=> b!7870089 (=> (not res!3127269) (not e!4649414))))

(assert (=> b!7870089 (= res!3127269 (isEmpty!42387 (tail!15641 s!14219)))))

(assert (= (and d!2355169 c!1445824) b!7870078))

(assert (= (and d!2355169 (not c!1445824)) b!7870082))

(assert (= (and d!2355169 c!1445825) b!7870087))

(assert (= (and d!2355169 (not c!1445825)) b!7870084))

(assert (= (and b!7870084 c!1445826) b!7870079))

(assert (= (and b!7870084 (not c!1445826)) b!7870085))

(assert (= (and b!7870085 (not res!3127268)) b!7870088))

(assert (= (and b!7870088 res!3127271) b!7870077))

(assert (= (and b!7870077 res!3127275) b!7870089))

(assert (= (and b!7870089 res!3127269) b!7870080))

(assert (= (and b!7870088 (not res!3127272)) b!7870086))

(assert (= (and b!7870086 res!3127274) b!7870083))

(assert (= (and b!7870083 (not res!3127270)) b!7870081))

(assert (= (and b!7870081 (not res!3127273)) b!7870076))

(assert (= (or b!7870087 b!7870083 b!7870077) bm!729799))

(declare-fun m!8264890 () Bool)

(assert (=> b!7870078 m!8264890))

(declare-fun m!8264892 () Bool)

(assert (=> b!7870089 m!8264892))

(assert (=> b!7870089 m!8264892))

(declare-fun m!8264894 () Bool)

(assert (=> b!7870089 m!8264894))

(declare-fun m!8264896 () Bool)

(assert (=> b!7870076 m!8264896))

(assert (=> b!7870082 m!8264896))

(assert (=> b!7870082 m!8264896))

(declare-fun m!8264898 () Bool)

(assert (=> b!7870082 m!8264898))

(assert (=> b!7870082 m!8264892))

(assert (=> b!7870082 m!8264898))

(assert (=> b!7870082 m!8264892))

(declare-fun m!8264900 () Bool)

(assert (=> b!7870082 m!8264900))

(declare-fun m!8264902 () Bool)

(assert (=> bm!729799 m!8264902))

(assert (=> b!7870080 m!8264896))

(assert (=> d!2355169 m!8264902))

(assert (=> d!2355169 m!8264850))

(assert (=> b!7870081 m!8264892))

(assert (=> b!7870081 m!8264892))

(assert (=> b!7870081 m!8264894))

(assert (=> b!7869921 d!2355169))

(declare-fun b!7870124 () Bool)

(declare-fun e!4649437 () Regex!21156)

(assert (=> b!7870124 (= e!4649437 (ite (= (h!80339 s!14219) (c!1445800 r1!6200)) EmptyExpr!21156 EmptyLang!21156))))

(declare-fun d!2355171 () Bool)

(declare-fun lt!2680854 () Regex!21156)

(assert (=> d!2355171 (validRegex!11566 lt!2680854)))

(declare-fun e!4649438 () Regex!21156)

(assert (=> d!2355171 (= lt!2680854 e!4649438)))

(declare-fun c!1445841 () Bool)

(assert (=> d!2355171 (= c!1445841 (or (is-EmptyExpr!21156 r1!6200) (is-EmptyLang!21156 r1!6200)))))

(assert (=> d!2355171 (validRegex!11566 r1!6200)))

(assert (=> d!2355171 (= (derivativeStep!6387 r1!6200 (h!80339 s!14219)) lt!2680854)))

(declare-fun b!7870125 () Bool)

(declare-fun e!4649435 () Regex!21156)

(declare-fun e!4649439 () Regex!21156)

(assert (=> b!7870125 (= e!4649435 e!4649439)))

(declare-fun c!1445843 () Bool)

(assert (=> b!7870125 (= c!1445843 (is-Star!21156 r1!6200))))

(declare-fun bm!729809 () Bool)

(declare-fun call!729816 () Regex!21156)

(declare-fun call!729815 () Regex!21156)

(assert (=> bm!729809 (= call!729816 call!729815)))

(declare-fun b!7870126 () Bool)

(assert (=> b!7870126 (= e!4649439 (Concat!30001 call!729815 r1!6200))))

(declare-fun b!7870127 () Bool)

(assert (=> b!7870127 (= e!4649438 e!4649437)))

(declare-fun c!1445840 () Bool)

(assert (=> b!7870127 (= c!1445840 (is-ElementMatch!21156 r1!6200))))

(declare-fun b!7870128 () Bool)

(declare-fun c!1445844 () Bool)

(assert (=> b!7870128 (= c!1445844 (is-Union!21156 r1!6200))))

(assert (=> b!7870128 (= e!4649437 e!4649435)))

(declare-fun b!7870129 () Bool)

(assert (=> b!7870129 (= e!4649438 EmptyLang!21156)))

(declare-fun bm!729810 () Bool)

(declare-fun call!729814 () Regex!21156)

(assert (=> bm!729810 (= call!729815 call!729814)))

(declare-fun call!729817 () Regex!21156)

(declare-fun bm!729811 () Bool)

(assert (=> bm!729811 (= call!729817 (derivativeStep!6387 (ite c!1445844 (regTwo!42825 r1!6200) (regTwo!42824 r1!6200)) (h!80339 s!14219)))))

(declare-fun bm!729812 () Bool)

(assert (=> bm!729812 (= call!729814 (derivativeStep!6387 (ite c!1445844 (regOne!42825 r1!6200) (ite c!1445843 (reg!21485 r1!6200) (regOne!42824 r1!6200))) (h!80339 s!14219)))))

(declare-fun b!7870130 () Bool)

(declare-fun c!1445842 () Bool)

(assert (=> b!7870130 (= c!1445842 (nullable!9420 (regOne!42824 r1!6200)))))

(declare-fun e!4649436 () Regex!21156)

(assert (=> b!7870130 (= e!4649439 e!4649436)))

(declare-fun b!7870131 () Bool)

(assert (=> b!7870131 (= e!4649436 (Union!21156 (Concat!30001 call!729816 (regTwo!42824 r1!6200)) call!729817))))

(declare-fun b!7870132 () Bool)

(assert (=> b!7870132 (= e!4649436 (Union!21156 (Concat!30001 call!729816 (regTwo!42824 r1!6200)) EmptyLang!21156))))

(declare-fun b!7870133 () Bool)

(assert (=> b!7870133 (= e!4649435 (Union!21156 call!729814 call!729817))))

(assert (= (and d!2355171 c!1445841) b!7870129))

(assert (= (and d!2355171 (not c!1445841)) b!7870127))

(assert (= (and b!7870127 c!1445840) b!7870124))

(assert (= (and b!7870127 (not c!1445840)) b!7870128))

(assert (= (and b!7870128 c!1445844) b!7870133))

(assert (= (and b!7870128 (not c!1445844)) b!7870125))

(assert (= (and b!7870125 c!1445843) b!7870126))

(assert (= (and b!7870125 (not c!1445843)) b!7870130))

(assert (= (and b!7870130 c!1445842) b!7870131))

(assert (= (and b!7870130 (not c!1445842)) b!7870132))

(assert (= (or b!7870131 b!7870132) bm!729809))

(assert (= (or b!7870126 bm!729809) bm!729810))

(assert (= (or b!7870133 b!7870131) bm!729811))

(assert (= (or b!7870133 bm!729810) bm!729812))

(declare-fun m!8264918 () Bool)

(assert (=> d!2355171 m!8264918))

(assert (=> d!2355171 m!8264850))

(declare-fun m!8264920 () Bool)

(assert (=> bm!729811 m!8264920))

(declare-fun m!8264922 () Bool)

(assert (=> bm!729812 m!8264922))

(declare-fun m!8264924 () Bool)

(assert (=> b!7870130 m!8264924))

(assert (=> b!7869932 d!2355171))

(declare-fun b!7870134 () Bool)

(declare-fun e!4649442 () Regex!21156)

(assert (=> b!7870134 (= e!4649442 (ite (= (h!80339 s!14219) (c!1445800 r2!6138)) EmptyExpr!21156 EmptyLang!21156))))

(declare-fun d!2355175 () Bool)

(declare-fun lt!2680855 () Regex!21156)

(assert (=> d!2355175 (validRegex!11566 lt!2680855)))

(declare-fun e!4649443 () Regex!21156)

(assert (=> d!2355175 (= lt!2680855 e!4649443)))

(declare-fun c!1445846 () Bool)

(assert (=> d!2355175 (= c!1445846 (or (is-EmptyExpr!21156 r2!6138) (is-EmptyLang!21156 r2!6138)))))

(assert (=> d!2355175 (validRegex!11566 r2!6138)))

(assert (=> d!2355175 (= (derivativeStep!6387 r2!6138 (h!80339 s!14219)) lt!2680855)))

(declare-fun b!7870135 () Bool)

(declare-fun e!4649440 () Regex!21156)

(declare-fun e!4649444 () Regex!21156)

(assert (=> b!7870135 (= e!4649440 e!4649444)))

(declare-fun c!1445848 () Bool)

(assert (=> b!7870135 (= c!1445848 (is-Star!21156 r2!6138))))

(declare-fun bm!729813 () Bool)

(declare-fun call!729820 () Regex!21156)

(declare-fun call!729819 () Regex!21156)

(assert (=> bm!729813 (= call!729820 call!729819)))

(declare-fun b!7870136 () Bool)

(assert (=> b!7870136 (= e!4649444 (Concat!30001 call!729819 r2!6138))))

(declare-fun b!7870137 () Bool)

(assert (=> b!7870137 (= e!4649443 e!4649442)))

(declare-fun c!1445845 () Bool)

(assert (=> b!7870137 (= c!1445845 (is-ElementMatch!21156 r2!6138))))

(declare-fun b!7870138 () Bool)

(declare-fun c!1445849 () Bool)

(assert (=> b!7870138 (= c!1445849 (is-Union!21156 r2!6138))))

(assert (=> b!7870138 (= e!4649442 e!4649440)))

(declare-fun b!7870139 () Bool)

(assert (=> b!7870139 (= e!4649443 EmptyLang!21156)))

(declare-fun bm!729814 () Bool)

(declare-fun call!729818 () Regex!21156)

(assert (=> bm!729814 (= call!729819 call!729818)))

(declare-fun call!729821 () Regex!21156)

(declare-fun bm!729815 () Bool)

(assert (=> bm!729815 (= call!729821 (derivativeStep!6387 (ite c!1445849 (regTwo!42825 r2!6138) (regTwo!42824 r2!6138)) (h!80339 s!14219)))))

(declare-fun bm!729816 () Bool)

(assert (=> bm!729816 (= call!729818 (derivativeStep!6387 (ite c!1445849 (regOne!42825 r2!6138) (ite c!1445848 (reg!21485 r2!6138) (regOne!42824 r2!6138))) (h!80339 s!14219)))))

(declare-fun b!7870140 () Bool)

(declare-fun c!1445847 () Bool)

(assert (=> b!7870140 (= c!1445847 (nullable!9420 (regOne!42824 r2!6138)))))

(declare-fun e!4649441 () Regex!21156)

(assert (=> b!7870140 (= e!4649444 e!4649441)))

(declare-fun b!7870141 () Bool)

(assert (=> b!7870141 (= e!4649441 (Union!21156 (Concat!30001 call!729820 (regTwo!42824 r2!6138)) call!729821))))

(declare-fun b!7870142 () Bool)

(assert (=> b!7870142 (= e!4649441 (Union!21156 (Concat!30001 call!729820 (regTwo!42824 r2!6138)) EmptyLang!21156))))

(declare-fun b!7870143 () Bool)

(assert (=> b!7870143 (= e!4649440 (Union!21156 call!729818 call!729821))))

(assert (= (and d!2355175 c!1445846) b!7870139))

(assert (= (and d!2355175 (not c!1445846)) b!7870137))

(assert (= (and b!7870137 c!1445845) b!7870134))

(assert (= (and b!7870137 (not c!1445845)) b!7870138))

(assert (= (and b!7870138 c!1445849) b!7870143))

(assert (= (and b!7870138 (not c!1445849)) b!7870135))

(assert (= (and b!7870135 c!1445848) b!7870136))

(assert (= (and b!7870135 (not c!1445848)) b!7870140))

(assert (= (and b!7870140 c!1445847) b!7870141))

(assert (= (and b!7870140 (not c!1445847)) b!7870142))

(assert (= (or b!7870141 b!7870142) bm!729813))

(assert (= (or b!7870136 bm!729813) bm!729814))

(assert (= (or b!7870143 b!7870141) bm!729815))

(assert (= (or b!7870143 bm!729814) bm!729816))

(declare-fun m!8264926 () Bool)

(assert (=> d!2355175 m!8264926))

(assert (=> d!2355175 m!8264852))

(declare-fun m!8264928 () Bool)

(assert (=> bm!729815 m!8264928))

(declare-fun m!8264930 () Bool)

(assert (=> bm!729816 m!8264930))

(declare-fun m!8264932 () Bool)

(assert (=> b!7870140 m!8264932))

(assert (=> b!7869932 d!2355175))

(declare-fun b!7870144 () Bool)

(declare-fun e!4649451 () Bool)

(assert (=> b!7870144 (= e!4649451 (not (= (head!16098 s!14219) (c!1445800 lt!2680832))))))

(declare-fun d!2355177 () Bool)

(declare-fun e!4649449 () Bool)

(assert (=> d!2355177 e!4649449))

(declare-fun c!1445851 () Bool)

(assert (=> d!2355177 (= c!1445851 (is-EmptyExpr!21156 lt!2680832))))

(declare-fun lt!2680856 () Bool)

(declare-fun e!4649446 () Bool)

(assert (=> d!2355177 (= lt!2680856 e!4649446)))

(declare-fun c!1445850 () Bool)

(assert (=> d!2355177 (= c!1445850 (isEmpty!42387 s!14219))))

(assert (=> d!2355177 (validRegex!11566 lt!2680832)))

(assert (=> d!2355177 (= (matchR!10592 lt!2680832 s!14219) lt!2680856)))

(declare-fun b!7870145 () Bool)

(declare-fun res!3127291 () Bool)

(declare-fun e!4649448 () Bool)

(assert (=> b!7870145 (=> (not res!3127291) (not e!4649448))))

(declare-fun call!729822 () Bool)

(assert (=> b!7870145 (= res!3127291 (not call!729822))))

(declare-fun b!7870146 () Bool)

(assert (=> b!7870146 (= e!4649446 (nullable!9420 lt!2680832))))

(declare-fun b!7870147 () Bool)

(declare-fun e!4649450 () Bool)

(assert (=> b!7870147 (= e!4649450 (not lt!2680856))))

(declare-fun b!7870148 () Bool)

(assert (=> b!7870148 (= e!4649448 (= (head!16098 s!14219) (c!1445800 lt!2680832)))))

(declare-fun b!7870149 () Bool)

(declare-fun res!3127289 () Bool)

(assert (=> b!7870149 (=> res!3127289 e!4649451)))

(assert (=> b!7870149 (= res!3127289 (not (isEmpty!42387 (tail!15641 s!14219))))))

(declare-fun b!7870150 () Bool)

(assert (=> b!7870150 (= e!4649446 (matchR!10592 (derivativeStep!6387 lt!2680832 (head!16098 s!14219)) (tail!15641 s!14219)))))

(declare-fun b!7870151 () Bool)

(declare-fun e!4649447 () Bool)

(assert (=> b!7870151 (= e!4649447 e!4649451)))

(declare-fun res!3127286 () Bool)

(assert (=> b!7870151 (=> res!3127286 e!4649451)))

(assert (=> b!7870151 (= res!3127286 call!729822)))

(declare-fun b!7870152 () Bool)

(assert (=> b!7870152 (= e!4649449 e!4649450)))

(declare-fun c!1445852 () Bool)

(assert (=> b!7870152 (= c!1445852 (is-EmptyLang!21156 lt!2680832))))

(declare-fun bm!729817 () Bool)

(assert (=> bm!729817 (= call!729822 (isEmpty!42387 s!14219))))

(declare-fun b!7870153 () Bool)

(declare-fun res!3127284 () Bool)

(declare-fun e!4649445 () Bool)

(assert (=> b!7870153 (=> res!3127284 e!4649445)))

(assert (=> b!7870153 (= res!3127284 (not (is-ElementMatch!21156 lt!2680832)))))

(assert (=> b!7870153 (= e!4649450 e!4649445)))

(declare-fun b!7870154 () Bool)

(assert (=> b!7870154 (= e!4649445 e!4649447)))

(declare-fun res!3127290 () Bool)

(assert (=> b!7870154 (=> (not res!3127290) (not e!4649447))))

(assert (=> b!7870154 (= res!3127290 (not lt!2680856))))

(declare-fun b!7870155 () Bool)

(assert (=> b!7870155 (= e!4649449 (= lt!2680856 call!729822))))

(declare-fun b!7870156 () Bool)

(declare-fun res!3127288 () Bool)

(assert (=> b!7870156 (=> res!3127288 e!4649445)))

(assert (=> b!7870156 (= res!3127288 e!4649448)))

(declare-fun res!3127287 () Bool)

(assert (=> b!7870156 (=> (not res!3127287) (not e!4649448))))

(assert (=> b!7870156 (= res!3127287 lt!2680856)))

(declare-fun b!7870157 () Bool)

(declare-fun res!3127285 () Bool)

(assert (=> b!7870157 (=> (not res!3127285) (not e!4649448))))

(assert (=> b!7870157 (= res!3127285 (isEmpty!42387 (tail!15641 s!14219)))))

(assert (= (and d!2355177 c!1445850) b!7870146))

(assert (= (and d!2355177 (not c!1445850)) b!7870150))

(assert (= (and d!2355177 c!1445851) b!7870155))

(assert (= (and d!2355177 (not c!1445851)) b!7870152))

(assert (= (and b!7870152 c!1445852) b!7870147))

(assert (= (and b!7870152 (not c!1445852)) b!7870153))

(assert (= (and b!7870153 (not res!3127284)) b!7870156))

(assert (= (and b!7870156 res!3127287) b!7870145))

(assert (= (and b!7870145 res!3127291) b!7870157))

(assert (= (and b!7870157 res!3127285) b!7870148))

(assert (= (and b!7870156 (not res!3127288)) b!7870154))

(assert (= (and b!7870154 res!3127290) b!7870151))

(assert (= (and b!7870151 (not res!3127286)) b!7870149))

(assert (= (and b!7870149 (not res!3127289)) b!7870144))

(assert (= (or b!7870155 b!7870151 b!7870145) bm!729817))

(declare-fun m!8264934 () Bool)

(assert (=> b!7870146 m!8264934))

(assert (=> b!7870157 m!8264892))

(assert (=> b!7870157 m!8264892))

(assert (=> b!7870157 m!8264894))

(assert (=> b!7870144 m!8264896))

(assert (=> b!7870150 m!8264896))

(assert (=> b!7870150 m!8264896))

(declare-fun m!8264936 () Bool)

(assert (=> b!7870150 m!8264936))

(assert (=> b!7870150 m!8264892))

(assert (=> b!7870150 m!8264936))

(assert (=> b!7870150 m!8264892))

(declare-fun m!8264938 () Bool)

(assert (=> b!7870150 m!8264938))

(assert (=> bm!729817 m!8264902))

(assert (=> b!7870148 m!8264896))

(assert (=> d!2355177 m!8264902))

(assert (=> d!2355177 m!8264836))

(assert (=> b!7870149 m!8264892))

(assert (=> b!7870149 m!8264892))

(assert (=> b!7870149 m!8264894))

(assert (=> b!7869932 d!2355177))

(declare-fun b!7870158 () Bool)

(declare-fun e!4649458 () Bool)

(assert (=> b!7870158 (= e!4649458 (not (= (head!16098 (t!388750 s!14219)) (c!1445800 (Union!21156 lt!2680830 lt!2680833)))))))

(declare-fun d!2355179 () Bool)

(declare-fun e!4649456 () Bool)

(assert (=> d!2355179 e!4649456))

(declare-fun c!1445854 () Bool)

(assert (=> d!2355179 (= c!1445854 (is-EmptyExpr!21156 (Union!21156 lt!2680830 lt!2680833)))))

(declare-fun lt!2680857 () Bool)

(declare-fun e!4649453 () Bool)

(assert (=> d!2355179 (= lt!2680857 e!4649453)))

(declare-fun c!1445853 () Bool)

(assert (=> d!2355179 (= c!1445853 (isEmpty!42387 (t!388750 s!14219)))))

(assert (=> d!2355179 (validRegex!11566 (Union!21156 lt!2680830 lt!2680833))))

(assert (=> d!2355179 (= (matchR!10592 (Union!21156 lt!2680830 lt!2680833) (t!388750 s!14219)) lt!2680857)))

(declare-fun b!7870159 () Bool)

(declare-fun res!3127299 () Bool)

(declare-fun e!4649455 () Bool)

(assert (=> b!7870159 (=> (not res!3127299) (not e!4649455))))

(declare-fun call!729823 () Bool)

(assert (=> b!7870159 (= res!3127299 (not call!729823))))

(declare-fun b!7870160 () Bool)

(assert (=> b!7870160 (= e!4649453 (nullable!9420 (Union!21156 lt!2680830 lt!2680833)))))

(declare-fun b!7870161 () Bool)

(declare-fun e!4649457 () Bool)

(assert (=> b!7870161 (= e!4649457 (not lt!2680857))))

(declare-fun b!7870162 () Bool)

(assert (=> b!7870162 (= e!4649455 (= (head!16098 (t!388750 s!14219)) (c!1445800 (Union!21156 lt!2680830 lt!2680833))))))

(declare-fun b!7870163 () Bool)

(declare-fun res!3127297 () Bool)

(assert (=> b!7870163 (=> res!3127297 e!4649458)))

(assert (=> b!7870163 (= res!3127297 (not (isEmpty!42387 (tail!15641 (t!388750 s!14219)))))))

(declare-fun b!7870164 () Bool)

(assert (=> b!7870164 (= e!4649453 (matchR!10592 (derivativeStep!6387 (Union!21156 lt!2680830 lt!2680833) (head!16098 (t!388750 s!14219))) (tail!15641 (t!388750 s!14219))))))

(declare-fun b!7870165 () Bool)

(declare-fun e!4649454 () Bool)

(assert (=> b!7870165 (= e!4649454 e!4649458)))

(declare-fun res!3127294 () Bool)

(assert (=> b!7870165 (=> res!3127294 e!4649458)))

(assert (=> b!7870165 (= res!3127294 call!729823)))

(declare-fun b!7870166 () Bool)

(assert (=> b!7870166 (= e!4649456 e!4649457)))

(declare-fun c!1445855 () Bool)

(assert (=> b!7870166 (= c!1445855 (is-EmptyLang!21156 (Union!21156 lt!2680830 lt!2680833)))))

(declare-fun bm!729818 () Bool)

(assert (=> bm!729818 (= call!729823 (isEmpty!42387 (t!388750 s!14219)))))

(declare-fun b!7870167 () Bool)

(declare-fun res!3127292 () Bool)

(declare-fun e!4649452 () Bool)

(assert (=> b!7870167 (=> res!3127292 e!4649452)))

(assert (=> b!7870167 (= res!3127292 (not (is-ElementMatch!21156 (Union!21156 lt!2680830 lt!2680833))))))

(assert (=> b!7870167 (= e!4649457 e!4649452)))

(declare-fun b!7870168 () Bool)

(assert (=> b!7870168 (= e!4649452 e!4649454)))

(declare-fun res!3127298 () Bool)

(assert (=> b!7870168 (=> (not res!3127298) (not e!4649454))))

(assert (=> b!7870168 (= res!3127298 (not lt!2680857))))

(declare-fun b!7870169 () Bool)

(assert (=> b!7870169 (= e!4649456 (= lt!2680857 call!729823))))

(declare-fun b!7870170 () Bool)

(declare-fun res!3127296 () Bool)

(assert (=> b!7870170 (=> res!3127296 e!4649452)))

(assert (=> b!7870170 (= res!3127296 e!4649455)))

(declare-fun res!3127295 () Bool)

(assert (=> b!7870170 (=> (not res!3127295) (not e!4649455))))

(assert (=> b!7870170 (= res!3127295 lt!2680857)))

(declare-fun b!7870171 () Bool)

(declare-fun res!3127293 () Bool)

(assert (=> b!7870171 (=> (not res!3127293) (not e!4649455))))

(assert (=> b!7870171 (= res!3127293 (isEmpty!42387 (tail!15641 (t!388750 s!14219))))))

(assert (= (and d!2355179 c!1445853) b!7870160))

(assert (= (and d!2355179 (not c!1445853)) b!7870164))

(assert (= (and d!2355179 c!1445854) b!7870169))

(assert (= (and d!2355179 (not c!1445854)) b!7870166))

(assert (= (and b!7870166 c!1445855) b!7870161))

(assert (= (and b!7870166 (not c!1445855)) b!7870167))

(assert (= (and b!7870167 (not res!3127292)) b!7870170))

(assert (= (and b!7870170 res!3127295) b!7870159))

(assert (= (and b!7870159 res!3127299) b!7870171))

(assert (= (and b!7870171 res!3127293) b!7870162))

(assert (= (and b!7870170 (not res!3127296)) b!7870168))

(assert (= (and b!7870168 res!3127298) b!7870165))

(assert (= (and b!7870165 (not res!3127294)) b!7870163))

(assert (= (and b!7870163 (not res!3127297)) b!7870158))

(assert (= (or b!7870169 b!7870165 b!7870159) bm!729818))

(declare-fun m!8264940 () Bool)

(assert (=> b!7870160 m!8264940))

(declare-fun m!8264942 () Bool)

(assert (=> b!7870171 m!8264942))

(assert (=> b!7870171 m!8264942))

(declare-fun m!8264944 () Bool)

(assert (=> b!7870171 m!8264944))

(declare-fun m!8264946 () Bool)

(assert (=> b!7870158 m!8264946))

(assert (=> b!7870164 m!8264946))

(assert (=> b!7870164 m!8264946))

(declare-fun m!8264948 () Bool)

(assert (=> b!7870164 m!8264948))

(assert (=> b!7870164 m!8264942))

(assert (=> b!7870164 m!8264948))

(assert (=> b!7870164 m!8264942))

(declare-fun m!8264950 () Bool)

(assert (=> b!7870164 m!8264950))

(declare-fun m!8264952 () Bool)

(assert (=> bm!729818 m!8264952))

(assert (=> b!7870162 m!8264946))

(assert (=> d!2355179 m!8264952))

(declare-fun m!8264954 () Bool)

(assert (=> d!2355179 m!8264954))

(assert (=> b!7870163 m!8264942))

(assert (=> b!7870163 m!8264942))

(assert (=> b!7870163 m!8264944))

(assert (=> b!7869932 d!2355179))

(declare-fun d!2355181 () Bool)

(assert (=> d!2355181 (matchR!10592 (Union!21156 lt!2680830 lt!2680833) (t!388750 s!14219))))

(declare-fun lt!2680860 () Unit!168974)

(declare-fun choose!59687 (Regex!21156 Regex!21156 List!74015) Unit!168974)

(assert (=> d!2355181 (= lt!2680860 (choose!59687 lt!2680830 lt!2680833 (t!388750 s!14219)))))

(declare-fun e!4649461 () Bool)

(assert (=> d!2355181 e!4649461))

(declare-fun res!3127302 () Bool)

(assert (=> d!2355181 (=> (not res!3127302) (not e!4649461))))

(assert (=> d!2355181 (= res!3127302 (validRegex!11566 lt!2680830))))

(assert (=> d!2355181 (= (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!143 lt!2680830 lt!2680833 (t!388750 s!14219)) lt!2680860)))

(declare-fun b!7870174 () Bool)

(assert (=> b!7870174 (= e!4649461 (validRegex!11566 lt!2680833))))

(assert (= (and d!2355181 res!3127302) b!7870174))

(assert (=> d!2355181 m!8264842))

(declare-fun m!8264956 () Bool)

(assert (=> d!2355181 m!8264956))

(declare-fun m!8264958 () Bool)

(assert (=> d!2355181 m!8264958))

(declare-fun m!8264960 () Bool)

(assert (=> b!7870174 m!8264960))

(assert (=> b!7869932 d!2355181))

(declare-fun b!7870188 () Bool)

(declare-fun e!4649464 () Bool)

(declare-fun tp!2335055 () Bool)

(declare-fun tp!2335054 () Bool)

(assert (=> b!7870188 (= e!4649464 (and tp!2335055 tp!2335054))))

(declare-fun b!7870187 () Bool)

(declare-fun tp!2335053 () Bool)

(assert (=> b!7870187 (= e!4649464 tp!2335053)))

(declare-fun b!7870185 () Bool)

(assert (=> b!7870185 (= e!4649464 tp_is_empty!52711)))

(assert (=> b!7869929 (= tp!2335002 e!4649464)))

(declare-fun b!7870186 () Bool)

(declare-fun tp!2335051 () Bool)

(declare-fun tp!2335052 () Bool)

(assert (=> b!7870186 (= e!4649464 (and tp!2335051 tp!2335052))))

(assert (= (and b!7869929 (is-ElementMatch!21156 (reg!21485 r2!6138))) b!7870185))

(assert (= (and b!7869929 (is-Concat!30001 (reg!21485 r2!6138))) b!7870186))

(assert (= (and b!7869929 (is-Star!21156 (reg!21485 r2!6138))) b!7870187))

(assert (= (and b!7869929 (is-Union!21156 (reg!21485 r2!6138))) b!7870188))

(declare-fun b!7870193 () Bool)

(declare-fun e!4649467 () Bool)

(declare-fun tp!2335058 () Bool)

(assert (=> b!7870193 (= e!4649467 (and tp_is_empty!52711 tp!2335058))))

(assert (=> b!7869919 (= tp!2335003 e!4649467)))

(assert (= (and b!7869919 (is-Cons!73891 (t!388750 s!14219))) b!7870193))

(declare-fun b!7870197 () Bool)

(declare-fun e!4649468 () Bool)

(declare-fun tp!2335063 () Bool)

(declare-fun tp!2335062 () Bool)

(assert (=> b!7870197 (= e!4649468 (and tp!2335063 tp!2335062))))

(declare-fun b!7870196 () Bool)

(declare-fun tp!2335061 () Bool)

(assert (=> b!7870196 (= e!4649468 tp!2335061)))

(declare-fun b!7870194 () Bool)

(assert (=> b!7870194 (= e!4649468 tp_is_empty!52711)))

(assert (=> b!7869920 (= tp!2335000 e!4649468)))

(declare-fun b!7870195 () Bool)

(declare-fun tp!2335059 () Bool)

(declare-fun tp!2335060 () Bool)

(assert (=> b!7870195 (= e!4649468 (and tp!2335059 tp!2335060))))

(assert (= (and b!7869920 (is-ElementMatch!21156 (reg!21485 r1!6200))) b!7870194))

(assert (= (and b!7869920 (is-Concat!30001 (reg!21485 r1!6200))) b!7870195))

(assert (= (and b!7869920 (is-Star!21156 (reg!21485 r1!6200))) b!7870196))

(assert (= (and b!7869920 (is-Union!21156 (reg!21485 r1!6200))) b!7870197))

(declare-fun b!7870201 () Bool)

(declare-fun e!4649469 () Bool)

(declare-fun tp!2335068 () Bool)

(declare-fun tp!2335067 () Bool)

(assert (=> b!7870201 (= e!4649469 (and tp!2335068 tp!2335067))))

(declare-fun b!7870200 () Bool)

(declare-fun tp!2335066 () Bool)

(assert (=> b!7870200 (= e!4649469 tp!2335066)))

(declare-fun b!7870198 () Bool)

(assert (=> b!7870198 (= e!4649469 tp_is_empty!52711)))

(assert (=> b!7869926 (= tp!2335005 e!4649469)))

(declare-fun b!7870199 () Bool)

(declare-fun tp!2335064 () Bool)

(declare-fun tp!2335065 () Bool)

(assert (=> b!7870199 (= e!4649469 (and tp!2335064 tp!2335065))))

(assert (= (and b!7869926 (is-ElementMatch!21156 (regOne!42825 r2!6138))) b!7870198))

(assert (= (and b!7869926 (is-Concat!30001 (regOne!42825 r2!6138))) b!7870199))

(assert (= (and b!7869926 (is-Star!21156 (regOne!42825 r2!6138))) b!7870200))

(assert (= (and b!7869926 (is-Union!21156 (regOne!42825 r2!6138))) b!7870201))

(declare-fun b!7870205 () Bool)

(declare-fun e!4649470 () Bool)

(declare-fun tp!2335073 () Bool)

(declare-fun tp!2335072 () Bool)

(assert (=> b!7870205 (= e!4649470 (and tp!2335073 tp!2335072))))

(declare-fun b!7870204 () Bool)

(declare-fun tp!2335071 () Bool)

(assert (=> b!7870204 (= e!4649470 tp!2335071)))

(declare-fun b!7870202 () Bool)

(assert (=> b!7870202 (= e!4649470 tp_is_empty!52711)))

(assert (=> b!7869926 (= tp!2335001 e!4649470)))

(declare-fun b!7870203 () Bool)

(declare-fun tp!2335069 () Bool)

(declare-fun tp!2335070 () Bool)

(assert (=> b!7870203 (= e!4649470 (and tp!2335069 tp!2335070))))

(assert (= (and b!7869926 (is-ElementMatch!21156 (regTwo!42825 r2!6138))) b!7870202))

(assert (= (and b!7869926 (is-Concat!30001 (regTwo!42825 r2!6138))) b!7870203))

(assert (= (and b!7869926 (is-Star!21156 (regTwo!42825 r2!6138))) b!7870204))

(assert (= (and b!7869926 (is-Union!21156 (regTwo!42825 r2!6138))) b!7870205))

(declare-fun b!7870209 () Bool)

(declare-fun e!4649471 () Bool)

(declare-fun tp!2335078 () Bool)

(declare-fun tp!2335077 () Bool)

(assert (=> b!7870209 (= e!4649471 (and tp!2335078 tp!2335077))))

(declare-fun b!7870208 () Bool)

(declare-fun tp!2335076 () Bool)

(assert (=> b!7870208 (= e!4649471 tp!2335076)))

(declare-fun b!7870206 () Bool)

(assert (=> b!7870206 (= e!4649471 tp_is_empty!52711)))

(assert (=> b!7869922 (= tp!2335007 e!4649471)))

(declare-fun b!7870207 () Bool)

(declare-fun tp!2335074 () Bool)

(declare-fun tp!2335075 () Bool)

(assert (=> b!7870207 (= e!4649471 (and tp!2335074 tp!2335075))))

(assert (= (and b!7869922 (is-ElementMatch!21156 (regOne!42824 r1!6200))) b!7870206))

(assert (= (and b!7869922 (is-Concat!30001 (regOne!42824 r1!6200))) b!7870207))

(assert (= (and b!7869922 (is-Star!21156 (regOne!42824 r1!6200))) b!7870208))

(assert (= (and b!7869922 (is-Union!21156 (regOne!42824 r1!6200))) b!7870209))

(declare-fun b!7870213 () Bool)

(declare-fun e!4649472 () Bool)

(declare-fun tp!2335083 () Bool)

(declare-fun tp!2335082 () Bool)

(assert (=> b!7870213 (= e!4649472 (and tp!2335083 tp!2335082))))

(declare-fun b!7870212 () Bool)

(declare-fun tp!2335081 () Bool)

(assert (=> b!7870212 (= e!4649472 tp!2335081)))

(declare-fun b!7870210 () Bool)

(assert (=> b!7870210 (= e!4649472 tp_is_empty!52711)))

(assert (=> b!7869922 (= tp!2334997 e!4649472)))

(declare-fun b!7870211 () Bool)

(declare-fun tp!2335079 () Bool)

(declare-fun tp!2335080 () Bool)

(assert (=> b!7870211 (= e!4649472 (and tp!2335079 tp!2335080))))

(assert (= (and b!7869922 (is-ElementMatch!21156 (regTwo!42824 r1!6200))) b!7870210))

(assert (= (and b!7869922 (is-Concat!30001 (regTwo!42824 r1!6200))) b!7870211))

(assert (= (and b!7869922 (is-Star!21156 (regTwo!42824 r1!6200))) b!7870212))

(assert (= (and b!7869922 (is-Union!21156 (regTwo!42824 r1!6200))) b!7870213))

(declare-fun b!7870217 () Bool)

(declare-fun e!4649473 () Bool)

(declare-fun tp!2335088 () Bool)

(declare-fun tp!2335087 () Bool)

(assert (=> b!7870217 (= e!4649473 (and tp!2335088 tp!2335087))))

(declare-fun b!7870216 () Bool)

(declare-fun tp!2335086 () Bool)

(assert (=> b!7870216 (= e!4649473 tp!2335086)))

(declare-fun b!7870214 () Bool)

(assert (=> b!7870214 (= e!4649473 tp_is_empty!52711)))

(assert (=> b!7869928 (= tp!2334998 e!4649473)))

(declare-fun b!7870215 () Bool)

(declare-fun tp!2335084 () Bool)

(declare-fun tp!2335085 () Bool)

(assert (=> b!7870215 (= e!4649473 (and tp!2335084 tp!2335085))))

(assert (= (and b!7869928 (is-ElementMatch!21156 (regOne!42825 r1!6200))) b!7870214))

(assert (= (and b!7869928 (is-Concat!30001 (regOne!42825 r1!6200))) b!7870215))

(assert (= (and b!7869928 (is-Star!21156 (regOne!42825 r1!6200))) b!7870216))

(assert (= (and b!7869928 (is-Union!21156 (regOne!42825 r1!6200))) b!7870217))

(declare-fun b!7870223 () Bool)

(declare-fun e!4649474 () Bool)

(declare-fun tp!2335093 () Bool)

(declare-fun tp!2335092 () Bool)

(assert (=> b!7870223 (= e!4649474 (and tp!2335093 tp!2335092))))

(declare-fun b!7870222 () Bool)

(declare-fun tp!2335091 () Bool)

(assert (=> b!7870222 (= e!4649474 tp!2335091)))

(declare-fun b!7870220 () Bool)

(assert (=> b!7870220 (= e!4649474 tp_is_empty!52711)))

(assert (=> b!7869928 (= tp!2335004 e!4649474)))

(declare-fun b!7870221 () Bool)

(declare-fun tp!2335089 () Bool)

(declare-fun tp!2335090 () Bool)

(assert (=> b!7870221 (= e!4649474 (and tp!2335089 tp!2335090))))

(assert (= (and b!7869928 (is-ElementMatch!21156 (regTwo!42825 r1!6200))) b!7870220))

(assert (= (and b!7869928 (is-Concat!30001 (regTwo!42825 r1!6200))) b!7870221))

(assert (= (and b!7869928 (is-Star!21156 (regTwo!42825 r1!6200))) b!7870222))

(assert (= (and b!7869928 (is-Union!21156 (regTwo!42825 r1!6200))) b!7870223))

(declare-fun b!7870227 () Bool)

(declare-fun e!4649475 () Bool)

(declare-fun tp!2335098 () Bool)

(declare-fun tp!2335097 () Bool)

(assert (=> b!7870227 (= e!4649475 (and tp!2335098 tp!2335097))))

(declare-fun b!7870226 () Bool)

(declare-fun tp!2335096 () Bool)

(assert (=> b!7870226 (= e!4649475 tp!2335096)))

(declare-fun b!7870224 () Bool)

(assert (=> b!7870224 (= e!4649475 tp_is_empty!52711)))

(assert (=> b!7869923 (= tp!2335006 e!4649475)))

(declare-fun b!7870225 () Bool)

(declare-fun tp!2335094 () Bool)

(declare-fun tp!2335095 () Bool)

(assert (=> b!7870225 (= e!4649475 (and tp!2335094 tp!2335095))))

(assert (= (and b!7869923 (is-ElementMatch!21156 (regOne!42824 r2!6138))) b!7870224))

(assert (= (and b!7869923 (is-Concat!30001 (regOne!42824 r2!6138))) b!7870225))

(assert (= (and b!7869923 (is-Star!21156 (regOne!42824 r2!6138))) b!7870226))

(assert (= (and b!7869923 (is-Union!21156 (regOne!42824 r2!6138))) b!7870227))

(declare-fun b!7870233 () Bool)

(declare-fun e!4649478 () Bool)

(declare-fun tp!2335103 () Bool)

(declare-fun tp!2335102 () Bool)

(assert (=> b!7870233 (= e!4649478 (and tp!2335103 tp!2335102))))

(declare-fun b!7870232 () Bool)

(declare-fun tp!2335101 () Bool)

(assert (=> b!7870232 (= e!4649478 tp!2335101)))

(declare-fun b!7870230 () Bool)

(assert (=> b!7870230 (= e!4649478 tp_is_empty!52711)))

(assert (=> b!7869923 (= tp!2334999 e!4649478)))

(declare-fun b!7870231 () Bool)

(declare-fun tp!2335099 () Bool)

(declare-fun tp!2335100 () Bool)

(assert (=> b!7870231 (= e!4649478 (and tp!2335099 tp!2335100))))

(assert (= (and b!7869923 (is-ElementMatch!21156 (regTwo!42824 r2!6138))) b!7870230))

(assert (= (and b!7869923 (is-Concat!30001 (regTwo!42824 r2!6138))) b!7870231))

(assert (= (and b!7869923 (is-Star!21156 (regTwo!42824 r2!6138))) b!7870232))

(assert (= (and b!7869923 (is-Union!21156 (regTwo!42824 r2!6138))) b!7870233))

(push 1)

(assert (not bm!729799))

(assert (not d!2355175))

(assert (not bm!729818))

(assert (not bm!729793))

(assert (not b!7870211))

(assert (not b!7870187))

(assert (not b!7870076))

(assert tp_is_empty!52711)

(assert (not b!7870082))

(assert (not d!2355169))

(assert (not bm!729811))

(assert (not b!7870148))

(assert (not b!7870208))

(assert (not bm!729812))

(assert (not b!7870231))

(assert (not b!7870150))

(assert (not bm!729816))

(assert (not b!7870193))

(assert (not d!2355181))

(assert (not d!2355179))

(assert (not b!7870013))

(assert (not b!7870163))

(assert (not b!7870171))

(assert (not b!7870205))

(assert (not b!7870221))

(assert (not b!7870209))

(assert (not b!7869995))

(assert (not d!2355171))

(assert (not b!7870140))

(assert (not b!7870081))

(assert (not b!7870212))

(assert (not bm!729794))

(assert (not b!7870188))

(assert (not b!7870200))

(assert (not bm!729817))

(assert (not b!7870199))

(assert (not b!7870157))

(assert (not b!7870204))

(assert (not b!7870144))

(assert (not bm!729815))

(assert (not bm!729791))

(assert (not b!7870186))

(assert (not b!7870201))

(assert (not b!7870203))

(assert (not b!7870216))

(assert (not b!7870197))

(assert (not b!7870222))

(assert (not b!7870004))

(assert (not b!7870089))

(assert (not b!7870223))

(assert (not b!7870226))

(assert (not b!7870215))

(assert (not b!7870225))

(assert (not bm!729788))

(assert (not d!2355177))

(assert (not b!7870160))

(assert (not b!7870217))

(assert (not b!7870213))

(assert (not b!7870080))

(assert (not b!7870164))

(assert (not b!7870078))

(assert (not b!7870174))

(assert (not b!7870207))

(assert (not b!7870233))

(assert (not b!7870232))

(assert (not b!7870162))

(assert (not b!7870195))

(assert (not b!7870149))

(assert (not bm!729787))

(assert (not b!7870196))

(assert (not bm!729790))

(assert (not b!7870130))

(assert (not b!7870158))

(assert (not b!7870227))

(assert (not b!7870146))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

