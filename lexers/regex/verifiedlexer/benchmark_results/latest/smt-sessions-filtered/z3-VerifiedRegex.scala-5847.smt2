; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!287244 () Bool)

(assert start!287244)

(declare-fun b!2967999 () Bool)

(declare-fun e!1867684 () Bool)

(declare-datatypes ((C!18676 0))(
  ( (C!18677 (val!11374 Int)) )
))
(declare-datatypes ((Regex!9245 0))(
  ( (ElementMatch!9245 (c!486823 C!18676)) (Concat!14566 (regOne!19002 Regex!9245) (regTwo!19002 Regex!9245)) (EmptyExpr!9245) (Star!9245 (reg!9574 Regex!9245)) (EmptyLang!9245) (Union!9245 (regOne!19003 Regex!9245) (regTwo!19003 Regex!9245)) )
))
(declare-fun r!17423 () Regex!9245)

(declare-fun validRegex!3978 (Regex!9245) Bool)

(assert (=> b!2967999 (= e!1867684 (validRegex!3978 (reg!9574 r!17423)))))

(declare-fun b!2968000 () Bool)

(declare-fun e!1867686 () Bool)

(declare-fun tp_is_empty!16053 () Bool)

(assert (=> b!2968000 (= e!1867686 tp_is_empty!16053)))

(declare-fun b!2968001 () Bool)

(declare-fun e!1867687 () Bool)

(declare-fun tp!946593 () Bool)

(assert (=> b!2968001 (= e!1867687 (and tp_is_empty!16053 tp!946593))))

(declare-fun b!2968002 () Bool)

(declare-fun tp!946592 () Bool)

(assert (=> b!2968002 (= e!1867686 tp!946592)))

(declare-fun res!1224155 () Bool)

(declare-fun e!1867685 () Bool)

(assert (=> start!287244 (=> (not res!1224155) (not e!1867685))))

(assert (=> start!287244 (= res!1224155 (validRegex!3978 r!17423))))

(assert (=> start!287244 e!1867685))

(assert (=> start!287244 e!1867686))

(assert (=> start!287244 e!1867687))

(declare-fun b!2968003 () Bool)

(declare-fun tp!946597 () Bool)

(declare-fun tp!946594 () Bool)

(assert (=> b!2968003 (= e!1867686 (and tp!946597 tp!946594))))

(declare-fun b!2968004 () Bool)

(assert (=> b!2968004 (= e!1867685 (not e!1867684))))

(declare-fun res!1224156 () Bool)

(assert (=> b!2968004 (=> res!1224156 e!1867684)))

(declare-fun lt!1035679 () Bool)

(get-info :version)

(assert (=> b!2968004 (= res!1224156 (or lt!1035679 ((_ is Concat!14566) r!17423) ((_ is Union!9245) r!17423) (not ((_ is Star!9245) r!17423))))))

(declare-datatypes ((List!35110 0))(
  ( (Nil!34986) (Cons!34986 (h!40406 C!18676) (t!234175 List!35110)) )
))
(declare-fun s!11993 () List!35110)

(declare-fun matchRSpec!1382 (Regex!9245 List!35110) Bool)

(assert (=> b!2968004 (= lt!1035679 (matchRSpec!1382 r!17423 s!11993))))

(declare-fun matchR!4127 (Regex!9245 List!35110) Bool)

(assert (=> b!2968004 (= lt!1035679 (matchR!4127 r!17423 s!11993))))

(declare-datatypes ((Unit!48869 0))(
  ( (Unit!48870) )
))
(declare-fun lt!1035680 () Unit!48869)

(declare-fun mainMatchTheorem!1382 (Regex!9245 List!35110) Unit!48869)

(assert (=> b!2968004 (= lt!1035680 (mainMatchTheorem!1382 r!17423 s!11993))))

(declare-fun b!2968005 () Bool)

(declare-fun tp!946595 () Bool)

(declare-fun tp!946596 () Bool)

(assert (=> b!2968005 (= e!1867686 (and tp!946595 tp!946596))))

(assert (= (and start!287244 res!1224155) b!2968004))

(assert (= (and b!2968004 (not res!1224156)) b!2967999))

(assert (= (and start!287244 ((_ is ElementMatch!9245) r!17423)) b!2968000))

(assert (= (and start!287244 ((_ is Concat!14566) r!17423)) b!2968003))

(assert (= (and start!287244 ((_ is Star!9245) r!17423)) b!2968002))

(assert (= (and start!287244 ((_ is Union!9245) r!17423)) b!2968005))

(assert (= (and start!287244 ((_ is Cons!34986) s!11993)) b!2968001))

(declare-fun m!3337243 () Bool)

(assert (=> b!2967999 m!3337243))

(declare-fun m!3337245 () Bool)

(assert (=> start!287244 m!3337245))

(declare-fun m!3337247 () Bool)

(assert (=> b!2968004 m!3337247))

(declare-fun m!3337249 () Bool)

(assert (=> b!2968004 m!3337249))

(declare-fun m!3337251 () Bool)

(assert (=> b!2968004 m!3337251))

(check-sat (not b!2968005) tp_is_empty!16053 (not b!2968003) (not start!287244) (not b!2968001) (not b!2967999) (not b!2968004) (not b!2968002))
(check-sat)
(get-model)

(declare-fun b!2968024 () Bool)

(declare-fun e!1867708 () Bool)

(declare-fun call!197373 () Bool)

(assert (=> b!2968024 (= e!1867708 call!197373)))

(declare-fun b!2968025 () Bool)

(declare-fun e!1867705 () Bool)

(declare-fun call!197371 () Bool)

(assert (=> b!2968025 (= e!1867705 call!197371)))

(declare-fun d!842486 () Bool)

(declare-fun res!1224171 () Bool)

(declare-fun e!1867707 () Bool)

(assert (=> d!842486 (=> res!1224171 e!1867707)))

(assert (=> d!842486 (= res!1224171 ((_ is ElementMatch!9245) r!17423))))

(assert (=> d!842486 (= (validRegex!3978 r!17423) e!1867707)))

(declare-fun b!2968026 () Bool)

(declare-fun e!1867702 () Bool)

(assert (=> b!2968026 (= e!1867707 e!1867702)))

(declare-fun c!486829 () Bool)

(assert (=> b!2968026 (= c!486829 ((_ is Star!9245) r!17423))))

(declare-fun b!2968027 () Bool)

(declare-fun res!1224168 () Bool)

(declare-fun e!1867706 () Bool)

(assert (=> b!2968027 (=> res!1224168 e!1867706)))

(assert (=> b!2968027 (= res!1224168 (not ((_ is Concat!14566) r!17423)))))

(declare-fun e!1867703 () Bool)

(assert (=> b!2968027 (= e!1867703 e!1867706)))

(declare-fun b!2968028 () Bool)

(declare-fun res!1224169 () Bool)

(assert (=> b!2968028 (=> (not res!1224169) (not e!1867708))))

(assert (=> b!2968028 (= res!1224169 call!197371)))

(assert (=> b!2968028 (= e!1867703 e!1867708)))

(declare-fun call!197372 () Bool)

(declare-fun c!486828 () Bool)

(declare-fun bm!197366 () Bool)

(assert (=> bm!197366 (= call!197372 (validRegex!3978 (ite c!486829 (reg!9574 r!17423) (ite c!486828 (regTwo!19003 r!17423) (regOne!19002 r!17423)))))))

(declare-fun bm!197367 () Bool)

(assert (=> bm!197367 (= call!197371 (validRegex!3978 (ite c!486828 (regOne!19003 r!17423) (regTwo!19002 r!17423))))))

(declare-fun b!2968029 () Bool)

(assert (=> b!2968029 (= e!1867702 e!1867703)))

(assert (=> b!2968029 (= c!486828 ((_ is Union!9245) r!17423))))

(declare-fun b!2968030 () Bool)

(declare-fun e!1867704 () Bool)

(assert (=> b!2968030 (= e!1867704 call!197372)))

(declare-fun bm!197368 () Bool)

(assert (=> bm!197368 (= call!197373 call!197372)))

(declare-fun b!2968031 () Bool)

(assert (=> b!2968031 (= e!1867702 e!1867704)))

(declare-fun res!1224170 () Bool)

(declare-fun nullable!2953 (Regex!9245) Bool)

(assert (=> b!2968031 (= res!1224170 (not (nullable!2953 (reg!9574 r!17423))))))

(assert (=> b!2968031 (=> (not res!1224170) (not e!1867704))))

(declare-fun b!2968032 () Bool)

(assert (=> b!2968032 (= e!1867706 e!1867705)))

(declare-fun res!1224167 () Bool)

(assert (=> b!2968032 (=> (not res!1224167) (not e!1867705))))

(assert (=> b!2968032 (= res!1224167 call!197373)))

(assert (= (and d!842486 (not res!1224171)) b!2968026))

(assert (= (and b!2968026 c!486829) b!2968031))

(assert (= (and b!2968026 (not c!486829)) b!2968029))

(assert (= (and b!2968031 res!1224170) b!2968030))

(assert (= (and b!2968029 c!486828) b!2968028))

(assert (= (and b!2968029 (not c!486828)) b!2968027))

(assert (= (and b!2968028 res!1224169) b!2968024))

(assert (= (and b!2968027 (not res!1224168)) b!2968032))

(assert (= (and b!2968032 res!1224167) b!2968025))

(assert (= (or b!2968028 b!2968025) bm!197367))

(assert (= (or b!2968024 b!2968032) bm!197368))

(assert (= (or b!2968030 bm!197368) bm!197366))

(declare-fun m!3337253 () Bool)

(assert (=> bm!197366 m!3337253))

(declare-fun m!3337255 () Bool)

(assert (=> bm!197367 m!3337255))

(declare-fun m!3337257 () Bool)

(assert (=> b!2968031 m!3337257))

(assert (=> start!287244 d!842486))

(declare-fun b!2968127 () Bool)

(assert (=> b!2968127 true))

(assert (=> b!2968127 true))

(declare-fun bs!526438 () Bool)

(declare-fun b!2968129 () Bool)

(assert (= bs!526438 (and b!2968129 b!2968127)))

(declare-fun lambda!110488 () Int)

(declare-fun lambda!110487 () Int)

(assert (=> bs!526438 (not (= lambda!110488 lambda!110487))))

(assert (=> b!2968129 true))

(assert (=> b!2968129 true))

(declare-fun b!2968123 () Bool)

(declare-fun e!1867769 () Bool)

(declare-fun e!1867771 () Bool)

(assert (=> b!2968123 (= e!1867769 e!1867771)))

(declare-fun res!1224214 () Bool)

(assert (=> b!2968123 (= res!1224214 (not ((_ is EmptyLang!9245) r!17423)))))

(assert (=> b!2968123 (=> (not res!1224214) (not e!1867771))))

(declare-fun b!2968124 () Bool)

(declare-fun e!1867770 () Bool)

(declare-fun e!1867775 () Bool)

(assert (=> b!2968124 (= e!1867770 e!1867775)))

(declare-fun res!1224216 () Bool)

(assert (=> b!2968124 (= res!1224216 (matchRSpec!1382 (regOne!19003 r!17423) s!11993))))

(assert (=> b!2968124 (=> res!1224216 e!1867775)))

(declare-fun b!2968125 () Bool)

(declare-fun c!486854 () Bool)

(assert (=> b!2968125 (= c!486854 ((_ is ElementMatch!9245) r!17423))))

(declare-fun e!1867774 () Bool)

(assert (=> b!2968125 (= e!1867771 e!1867774)))

(declare-fun b!2968126 () Bool)

(declare-fun call!197390 () Bool)

(assert (=> b!2968126 (= e!1867769 call!197390)))

(declare-fun e!1867772 () Bool)

(declare-fun call!197391 () Bool)

(assert (=> b!2968127 (= e!1867772 call!197391)))

(declare-fun b!2968128 () Bool)

(declare-fun e!1867773 () Bool)

(assert (=> b!2968128 (= e!1867770 e!1867773)))

(declare-fun c!486857 () Bool)

(assert (=> b!2968128 (= c!486857 ((_ is Star!9245) r!17423))))

(declare-fun bm!197386 () Bool)

(declare-fun Exists!1538 (Int) Bool)

(assert (=> bm!197386 (= call!197391 (Exists!1538 (ite c!486857 lambda!110487 lambda!110488)))))

(assert (=> b!2968129 (= e!1867773 call!197391)))

(declare-fun b!2968130 () Bool)

(declare-fun res!1224215 () Bool)

(assert (=> b!2968130 (=> res!1224215 e!1867772)))

(assert (=> b!2968130 (= res!1224215 call!197390)))

(assert (=> b!2968130 (= e!1867773 e!1867772)))

(declare-fun b!2968131 () Bool)

(declare-fun c!486856 () Bool)

(assert (=> b!2968131 (= c!486856 ((_ is Union!9245) r!17423))))

(assert (=> b!2968131 (= e!1867774 e!1867770)))

(declare-fun b!2968132 () Bool)

(assert (=> b!2968132 (= e!1867774 (= s!11993 (Cons!34986 (c!486823 r!17423) Nil!34986)))))

(declare-fun b!2968133 () Bool)

(assert (=> b!2968133 (= e!1867775 (matchRSpec!1382 (regTwo!19003 r!17423) s!11993))))

(declare-fun bm!197385 () Bool)

(declare-fun isEmpty!19234 (List!35110) Bool)

(assert (=> bm!197385 (= call!197390 (isEmpty!19234 s!11993))))

(declare-fun d!842490 () Bool)

(declare-fun c!486855 () Bool)

(assert (=> d!842490 (= c!486855 ((_ is EmptyExpr!9245) r!17423))))

(assert (=> d!842490 (= (matchRSpec!1382 r!17423 s!11993) e!1867769)))

(assert (= (and d!842490 c!486855) b!2968126))

(assert (= (and d!842490 (not c!486855)) b!2968123))

(assert (= (and b!2968123 res!1224214) b!2968125))

(assert (= (and b!2968125 c!486854) b!2968132))

(assert (= (and b!2968125 (not c!486854)) b!2968131))

(assert (= (and b!2968131 c!486856) b!2968124))

(assert (= (and b!2968131 (not c!486856)) b!2968128))

(assert (= (and b!2968124 (not res!1224216)) b!2968133))

(assert (= (and b!2968128 c!486857) b!2968130))

(assert (= (and b!2968128 (not c!486857)) b!2968129))

(assert (= (and b!2968130 (not res!1224215)) b!2968127))

(assert (= (or b!2968127 b!2968129) bm!197386))

(assert (= (or b!2968126 b!2968130) bm!197385))

(declare-fun m!3337271 () Bool)

(assert (=> b!2968124 m!3337271))

(declare-fun m!3337273 () Bool)

(assert (=> bm!197386 m!3337273))

(declare-fun m!3337275 () Bool)

(assert (=> b!2968133 m!3337275))

(declare-fun m!3337277 () Bool)

(assert (=> bm!197385 m!3337277))

(assert (=> b!2968004 d!842490))

(declare-fun b!2968191 () Bool)

(declare-fun res!1224248 () Bool)

(declare-fun e!1867806 () Bool)

(assert (=> b!2968191 (=> res!1224248 e!1867806)))

(declare-fun e!1867801 () Bool)

(assert (=> b!2968191 (= res!1224248 e!1867801)))

(declare-fun res!1224247 () Bool)

(assert (=> b!2968191 (=> (not res!1224247) (not e!1867801))))

(declare-fun lt!1035683 () Bool)

(assert (=> b!2968191 (= res!1224247 lt!1035683)))

(declare-fun b!2968192 () Bool)

(declare-fun res!1224253 () Bool)

(assert (=> b!2968192 (=> (not res!1224253) (not e!1867801))))

(declare-fun tail!4840 (List!35110) List!35110)

(assert (=> b!2968192 (= res!1224253 (isEmpty!19234 (tail!4840 s!11993)))))

(declare-fun b!2968193 () Bool)

(declare-fun head!6614 (List!35110) C!18676)

(assert (=> b!2968193 (= e!1867801 (= (head!6614 s!11993) (c!486823 r!17423)))))

(declare-fun b!2968194 () Bool)

(declare-fun e!1867807 () Bool)

(declare-fun derivativeStep!2555 (Regex!9245 C!18676) Regex!9245)

(assert (=> b!2968194 (= e!1867807 (matchR!4127 (derivativeStep!2555 r!17423 (head!6614 s!11993)) (tail!4840 s!11993)))))

(declare-fun b!2968196 () Bool)

(assert (=> b!2968196 (= e!1867807 (nullable!2953 r!17423))))

(declare-fun b!2968197 () Bool)

(declare-fun e!1867802 () Bool)

(assert (=> b!2968197 (= e!1867802 (not (= (head!6614 s!11993) (c!486823 r!17423))))))

(declare-fun b!2968198 () Bool)

(declare-fun res!1224252 () Bool)

(assert (=> b!2968198 (=> res!1224252 e!1867806)))

(assert (=> b!2968198 (= res!1224252 (not ((_ is ElementMatch!9245) r!17423)))))

(declare-fun e!1867803 () Bool)

(assert (=> b!2968198 (= e!1867803 e!1867806)))

(declare-fun b!2968199 () Bool)

(declare-fun e!1867805 () Bool)

(assert (=> b!2968199 (= e!1867806 e!1867805)))

(declare-fun res!1224250 () Bool)

(assert (=> b!2968199 (=> (not res!1224250) (not e!1867805))))

(assert (=> b!2968199 (= res!1224250 (not lt!1035683))))

(declare-fun b!2968200 () Bool)

(assert (=> b!2968200 (= e!1867803 (not lt!1035683))))

(declare-fun bm!197395 () Bool)

(declare-fun call!197400 () Bool)

(assert (=> bm!197395 (= call!197400 (isEmpty!19234 s!11993))))

(declare-fun b!2968201 () Bool)

(declare-fun res!1224246 () Bool)

(assert (=> b!2968201 (=> (not res!1224246) (not e!1867801))))

(assert (=> b!2968201 (= res!1224246 (not call!197400))))

(declare-fun b!2968202 () Bool)

(declare-fun e!1867804 () Bool)

(assert (=> b!2968202 (= e!1867804 (= lt!1035683 call!197400))))

(declare-fun b!2968195 () Bool)

(declare-fun res!1224251 () Bool)

(assert (=> b!2968195 (=> res!1224251 e!1867802)))

(assert (=> b!2968195 (= res!1224251 (not (isEmpty!19234 (tail!4840 s!11993))))))

(declare-fun d!842496 () Bool)

(assert (=> d!842496 e!1867804))

(declare-fun c!486870 () Bool)

(assert (=> d!842496 (= c!486870 ((_ is EmptyExpr!9245) r!17423))))

(assert (=> d!842496 (= lt!1035683 e!1867807)))

(declare-fun c!486869 () Bool)

(assert (=> d!842496 (= c!486869 (isEmpty!19234 s!11993))))

(assert (=> d!842496 (validRegex!3978 r!17423)))

(assert (=> d!842496 (= (matchR!4127 r!17423 s!11993) lt!1035683)))

(declare-fun b!2968203 () Bool)

(assert (=> b!2968203 (= e!1867805 e!1867802)))

(declare-fun res!1224249 () Bool)

(assert (=> b!2968203 (=> res!1224249 e!1867802)))

(assert (=> b!2968203 (= res!1224249 call!197400)))

(declare-fun b!2968204 () Bool)

(assert (=> b!2968204 (= e!1867804 e!1867803)))

(declare-fun c!486868 () Bool)

(assert (=> b!2968204 (= c!486868 ((_ is EmptyLang!9245) r!17423))))

(assert (= (and d!842496 c!486869) b!2968196))

(assert (= (and d!842496 (not c!486869)) b!2968194))

(assert (= (and d!842496 c!486870) b!2968202))

(assert (= (and d!842496 (not c!486870)) b!2968204))

(assert (= (and b!2968204 c!486868) b!2968200))

(assert (= (and b!2968204 (not c!486868)) b!2968198))

(assert (= (and b!2968198 (not res!1224252)) b!2968191))

(assert (= (and b!2968191 res!1224247) b!2968201))

(assert (= (and b!2968201 res!1224246) b!2968192))

(assert (= (and b!2968192 res!1224253) b!2968193))

(assert (= (and b!2968191 (not res!1224248)) b!2968199))

(assert (= (and b!2968199 res!1224250) b!2968203))

(assert (= (and b!2968203 (not res!1224249)) b!2968195))

(assert (= (and b!2968195 (not res!1224251)) b!2968197))

(assert (= (or b!2968202 b!2968201 b!2968203) bm!197395))

(assert (=> d!842496 m!3337277))

(assert (=> d!842496 m!3337245))

(declare-fun m!3337287 () Bool)

(assert (=> b!2968195 m!3337287))

(assert (=> b!2968195 m!3337287))

(declare-fun m!3337289 () Bool)

(assert (=> b!2968195 m!3337289))

(assert (=> b!2968192 m!3337287))

(assert (=> b!2968192 m!3337287))

(assert (=> b!2968192 m!3337289))

(assert (=> bm!197395 m!3337277))

(declare-fun m!3337291 () Bool)

(assert (=> b!2968196 m!3337291))

(declare-fun m!3337293 () Bool)

(assert (=> b!2968194 m!3337293))

(assert (=> b!2968194 m!3337293))

(declare-fun m!3337295 () Bool)

(assert (=> b!2968194 m!3337295))

(assert (=> b!2968194 m!3337287))

(assert (=> b!2968194 m!3337295))

(assert (=> b!2968194 m!3337287))

(declare-fun m!3337297 () Bool)

(assert (=> b!2968194 m!3337297))

(assert (=> b!2968193 m!3337293))

(assert (=> b!2968197 m!3337293))

(assert (=> b!2968004 d!842496))

(declare-fun d!842500 () Bool)

(assert (=> d!842500 (= (matchR!4127 r!17423 s!11993) (matchRSpec!1382 r!17423 s!11993))))

(declare-fun lt!1035688 () Unit!48869)

(declare-fun choose!17553 (Regex!9245 List!35110) Unit!48869)

(assert (=> d!842500 (= lt!1035688 (choose!17553 r!17423 s!11993))))

(assert (=> d!842500 (validRegex!3978 r!17423)))

(assert (=> d!842500 (= (mainMatchTheorem!1382 r!17423 s!11993) lt!1035688)))

(declare-fun bs!526440 () Bool)

(assert (= bs!526440 d!842500))

(assert (=> bs!526440 m!3337249))

(assert (=> bs!526440 m!3337247))

(declare-fun m!3337299 () Bool)

(assert (=> bs!526440 m!3337299))

(assert (=> bs!526440 m!3337245))

(assert (=> b!2968004 d!842500))

(declare-fun b!2968217 () Bool)

(declare-fun e!1867820 () Bool)

(declare-fun call!197403 () Bool)

(assert (=> b!2968217 (= e!1867820 call!197403)))

(declare-fun b!2968218 () Bool)

(declare-fun e!1867815 () Bool)

(declare-fun call!197401 () Bool)

(assert (=> b!2968218 (= e!1867815 call!197401)))

(declare-fun d!842502 () Bool)

(declare-fun res!1224258 () Bool)

(declare-fun e!1867817 () Bool)

(assert (=> d!842502 (=> res!1224258 e!1867817)))

(assert (=> d!842502 (= res!1224258 ((_ is ElementMatch!9245) (reg!9574 r!17423)))))

(assert (=> d!842502 (= (validRegex!3978 (reg!9574 r!17423)) e!1867817)))

(declare-fun b!2968219 () Bool)

(declare-fun e!1867812 () Bool)

(assert (=> b!2968219 (= e!1867817 e!1867812)))

(declare-fun c!486876 () Bool)

(assert (=> b!2968219 (= c!486876 ((_ is Star!9245) (reg!9574 r!17423)))))

(declare-fun b!2968220 () Bool)

(declare-fun res!1224255 () Bool)

(declare-fun e!1867816 () Bool)

(assert (=> b!2968220 (=> res!1224255 e!1867816)))

(assert (=> b!2968220 (= res!1224255 (not ((_ is Concat!14566) (reg!9574 r!17423))))))

(declare-fun e!1867813 () Bool)

(assert (=> b!2968220 (= e!1867813 e!1867816)))

(declare-fun b!2968221 () Bool)

(declare-fun res!1224256 () Bool)

(assert (=> b!2968221 (=> (not res!1224256) (not e!1867820))))

(assert (=> b!2968221 (= res!1224256 call!197401)))

(assert (=> b!2968221 (= e!1867813 e!1867820)))

(declare-fun bm!197396 () Bool)

(declare-fun call!197402 () Bool)

(declare-fun c!486875 () Bool)

(assert (=> bm!197396 (= call!197402 (validRegex!3978 (ite c!486876 (reg!9574 (reg!9574 r!17423)) (ite c!486875 (regTwo!19003 (reg!9574 r!17423)) (regOne!19002 (reg!9574 r!17423))))))))

(declare-fun bm!197397 () Bool)

(assert (=> bm!197397 (= call!197401 (validRegex!3978 (ite c!486875 (regOne!19003 (reg!9574 r!17423)) (regTwo!19002 (reg!9574 r!17423)))))))

(declare-fun b!2968222 () Bool)

(assert (=> b!2968222 (= e!1867812 e!1867813)))

(assert (=> b!2968222 (= c!486875 ((_ is Union!9245) (reg!9574 r!17423)))))

(declare-fun b!2968223 () Bool)

(declare-fun e!1867814 () Bool)

(assert (=> b!2968223 (= e!1867814 call!197402)))

(declare-fun bm!197398 () Bool)

(assert (=> bm!197398 (= call!197403 call!197402)))

(declare-fun b!2968224 () Bool)

(assert (=> b!2968224 (= e!1867812 e!1867814)))

(declare-fun res!1224257 () Bool)

(assert (=> b!2968224 (= res!1224257 (not (nullable!2953 (reg!9574 (reg!9574 r!17423)))))))

(assert (=> b!2968224 (=> (not res!1224257) (not e!1867814))))

(declare-fun b!2968225 () Bool)

(assert (=> b!2968225 (= e!1867816 e!1867815)))

(declare-fun res!1224254 () Bool)

(assert (=> b!2968225 (=> (not res!1224254) (not e!1867815))))

(assert (=> b!2968225 (= res!1224254 call!197403)))

(assert (= (and d!842502 (not res!1224258)) b!2968219))

(assert (= (and b!2968219 c!486876) b!2968224))

(assert (= (and b!2968219 (not c!486876)) b!2968222))

(assert (= (and b!2968224 res!1224257) b!2968223))

(assert (= (and b!2968222 c!486875) b!2968221))

(assert (= (and b!2968222 (not c!486875)) b!2968220))

(assert (= (and b!2968221 res!1224256) b!2968217))

(assert (= (and b!2968220 (not res!1224255)) b!2968225))

(assert (= (and b!2968225 res!1224254) b!2968218))

(assert (= (or b!2968221 b!2968218) bm!197397))

(assert (= (or b!2968217 b!2968225) bm!197398))

(assert (= (or b!2968223 bm!197398) bm!197396))

(declare-fun m!3337301 () Bool)

(assert (=> bm!197396 m!3337301))

(declare-fun m!3337303 () Bool)

(assert (=> bm!197397 m!3337303))

(declare-fun m!3337305 () Bool)

(assert (=> b!2968224 m!3337305))

(assert (=> b!2967999 d!842502))

(declare-fun e!1867831 () Bool)

(assert (=> b!2968003 (= tp!946597 e!1867831)))

(declare-fun b!2968255 () Bool)

(declare-fun tp!946609 () Bool)

(declare-fun tp!946612 () Bool)

(assert (=> b!2968255 (= e!1867831 (and tp!946609 tp!946612))))

(declare-fun b!2968253 () Bool)

(declare-fun tp!946610 () Bool)

(declare-fun tp!946608 () Bool)

(assert (=> b!2968253 (= e!1867831 (and tp!946610 tp!946608))))

(declare-fun b!2968252 () Bool)

(assert (=> b!2968252 (= e!1867831 tp_is_empty!16053)))

(declare-fun b!2968254 () Bool)

(declare-fun tp!946611 () Bool)

(assert (=> b!2968254 (= e!1867831 tp!946611)))

(assert (= (and b!2968003 ((_ is ElementMatch!9245) (regOne!19002 r!17423))) b!2968252))

(assert (= (and b!2968003 ((_ is Concat!14566) (regOne!19002 r!17423))) b!2968253))

(assert (= (and b!2968003 ((_ is Star!9245) (regOne!19002 r!17423))) b!2968254))

(assert (= (and b!2968003 ((_ is Union!9245) (regOne!19002 r!17423))) b!2968255))

(declare-fun e!1867832 () Bool)

(assert (=> b!2968003 (= tp!946594 e!1867832)))

(declare-fun b!2968259 () Bool)

(declare-fun tp!946614 () Bool)

(declare-fun tp!946617 () Bool)

(assert (=> b!2968259 (= e!1867832 (and tp!946614 tp!946617))))

(declare-fun b!2968257 () Bool)

(declare-fun tp!946615 () Bool)

(declare-fun tp!946613 () Bool)

(assert (=> b!2968257 (= e!1867832 (and tp!946615 tp!946613))))

(declare-fun b!2968256 () Bool)

(assert (=> b!2968256 (= e!1867832 tp_is_empty!16053)))

(declare-fun b!2968258 () Bool)

(declare-fun tp!946616 () Bool)

(assert (=> b!2968258 (= e!1867832 tp!946616)))

(assert (= (and b!2968003 ((_ is ElementMatch!9245) (regTwo!19002 r!17423))) b!2968256))

(assert (= (and b!2968003 ((_ is Concat!14566) (regTwo!19002 r!17423))) b!2968257))

(assert (= (and b!2968003 ((_ is Star!9245) (regTwo!19002 r!17423))) b!2968258))

(assert (= (and b!2968003 ((_ is Union!9245) (regTwo!19002 r!17423))) b!2968259))

(declare-fun e!1867833 () Bool)

(assert (=> b!2968002 (= tp!946592 e!1867833)))

(declare-fun b!2968263 () Bool)

(declare-fun tp!946619 () Bool)

(declare-fun tp!946622 () Bool)

(assert (=> b!2968263 (= e!1867833 (and tp!946619 tp!946622))))

(declare-fun b!2968261 () Bool)

(declare-fun tp!946620 () Bool)

(declare-fun tp!946618 () Bool)

(assert (=> b!2968261 (= e!1867833 (and tp!946620 tp!946618))))

(declare-fun b!2968260 () Bool)

(assert (=> b!2968260 (= e!1867833 tp_is_empty!16053)))

(declare-fun b!2968262 () Bool)

(declare-fun tp!946621 () Bool)

(assert (=> b!2968262 (= e!1867833 tp!946621)))

(assert (= (and b!2968002 ((_ is ElementMatch!9245) (reg!9574 r!17423))) b!2968260))

(assert (= (and b!2968002 ((_ is Concat!14566) (reg!9574 r!17423))) b!2968261))

(assert (= (and b!2968002 ((_ is Star!9245) (reg!9574 r!17423))) b!2968262))

(assert (= (and b!2968002 ((_ is Union!9245) (reg!9574 r!17423))) b!2968263))

(declare-fun b!2968268 () Bool)

(declare-fun e!1867836 () Bool)

(declare-fun tp!946625 () Bool)

(assert (=> b!2968268 (= e!1867836 (and tp_is_empty!16053 tp!946625))))

(assert (=> b!2968001 (= tp!946593 e!1867836)))

(assert (= (and b!2968001 ((_ is Cons!34986) (t!234175 s!11993))) b!2968268))

(declare-fun e!1867837 () Bool)

(assert (=> b!2968005 (= tp!946595 e!1867837)))

(declare-fun b!2968272 () Bool)

(declare-fun tp!946627 () Bool)

(declare-fun tp!946630 () Bool)

(assert (=> b!2968272 (= e!1867837 (and tp!946627 tp!946630))))

(declare-fun b!2968270 () Bool)

(declare-fun tp!946628 () Bool)

(declare-fun tp!946626 () Bool)

(assert (=> b!2968270 (= e!1867837 (and tp!946628 tp!946626))))

(declare-fun b!2968269 () Bool)

(assert (=> b!2968269 (= e!1867837 tp_is_empty!16053)))

(declare-fun b!2968271 () Bool)

(declare-fun tp!946629 () Bool)

(assert (=> b!2968271 (= e!1867837 tp!946629)))

(assert (= (and b!2968005 ((_ is ElementMatch!9245) (regOne!19003 r!17423))) b!2968269))

(assert (= (and b!2968005 ((_ is Concat!14566) (regOne!19003 r!17423))) b!2968270))

(assert (= (and b!2968005 ((_ is Star!9245) (regOne!19003 r!17423))) b!2968271))

(assert (= (and b!2968005 ((_ is Union!9245) (regOne!19003 r!17423))) b!2968272))

(declare-fun e!1867838 () Bool)

(assert (=> b!2968005 (= tp!946596 e!1867838)))

(declare-fun b!2968276 () Bool)

(declare-fun tp!946632 () Bool)

(declare-fun tp!946635 () Bool)

(assert (=> b!2968276 (= e!1867838 (and tp!946632 tp!946635))))

(declare-fun b!2968274 () Bool)

(declare-fun tp!946633 () Bool)

(declare-fun tp!946631 () Bool)

(assert (=> b!2968274 (= e!1867838 (and tp!946633 tp!946631))))

(declare-fun b!2968273 () Bool)

(assert (=> b!2968273 (= e!1867838 tp_is_empty!16053)))

(declare-fun b!2968275 () Bool)

(declare-fun tp!946634 () Bool)

(assert (=> b!2968275 (= e!1867838 tp!946634)))

(assert (= (and b!2968005 ((_ is ElementMatch!9245) (regTwo!19003 r!17423))) b!2968273))

(assert (= (and b!2968005 ((_ is Concat!14566) (regTwo!19003 r!17423))) b!2968274))

(assert (= (and b!2968005 ((_ is Star!9245) (regTwo!19003 r!17423))) b!2968275))

(assert (= (and b!2968005 ((_ is Union!9245) (regTwo!19003 r!17423))) b!2968276))

(check-sat (not b!2968258) tp_is_empty!16053 (not b!2968124) (not b!2968195) (not bm!197397) (not bm!197367) (not b!2968031) (not b!2968254) (not b!2968272) (not b!2968255) (not b!2968224) (not b!2968197) (not b!2968274) (not b!2968133) (not b!2968263) (not bm!197366) (not b!2968270) (not b!2968194) (not d!842500) (not b!2968268) (not d!842496) (not bm!197395) (not b!2968259) (not b!2968275) (not b!2968261) (not bm!197386) (not b!2968253) (not b!2968192) (not b!2968193) (not b!2968271) (not bm!197385) (not bm!197396) (not b!2968257) (not b!2968276) (not b!2968196) (not b!2968262))
(check-sat)
