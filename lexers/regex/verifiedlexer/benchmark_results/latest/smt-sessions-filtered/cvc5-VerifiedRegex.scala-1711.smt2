; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!85808 () Bool)

(assert start!85808)

(declare-fun b!963886 () Bool)

(assert (=> b!963886 true))

(assert (=> b!963886 true))

(assert (=> b!963886 true))

(declare-fun lambda!33796 () Int)

(declare-fun lambda!33795 () Int)

(assert (=> b!963886 (not (= lambda!33796 lambda!33795))))

(assert (=> b!963886 true))

(assert (=> b!963886 true))

(assert (=> b!963886 true))

(declare-fun bs!241272 () Bool)

(declare-fun b!963890 () Bool)

(assert (= bs!241272 (and b!963890 b!963886)))

(declare-fun lambda!33797 () Int)

(declare-datatypes ((C!5930 0))(
  ( (C!5931 (val!3213 Int)) )
))
(declare-datatypes ((Regex!2680 0))(
  ( (ElementMatch!2680 (c!157009 C!5930)) (Concat!4513 (regOne!5872 Regex!2680) (regTwo!5872 Regex!2680)) (EmptyExpr!2680) (Star!2680 (reg!3009 Regex!2680)) (EmptyLang!2680) (Union!2680 (regOne!5873 Regex!2680) (regTwo!5873 Regex!2680)) )
))
(declare-fun r!15766 () Regex!2680)

(declare-fun lt!347413 () Regex!2680)

(declare-fun lt!347411 () Regex!2680)

(declare-fun lt!347412 () Regex!2680)

(assert (=> bs!241272 (= (and (= lt!347412 (reg!3009 r!15766)) (= lt!347413 lt!347411)) (= lambda!33797 lambda!33795))))

(assert (=> bs!241272 (not (= lambda!33797 lambda!33796))))

(assert (=> b!963890 true))

(assert (=> b!963890 true))

(assert (=> b!963890 true))

(declare-fun lambda!33798 () Int)

(assert (=> bs!241272 (not (= lambda!33798 lambda!33795))))

(assert (=> bs!241272 (= (and (= lt!347412 (reg!3009 r!15766)) (= lt!347413 lt!347411)) (= lambda!33798 lambda!33796))))

(assert (=> b!963890 (not (= lambda!33798 lambda!33797))))

(assert (=> b!963890 true))

(assert (=> b!963890 true))

(assert (=> b!963890 true))

(declare-fun b!963880 () Bool)

(declare-fun e!622256 () Bool)

(declare-fun e!622257 () Bool)

(assert (=> b!963880 (= e!622256 (not e!622257))))

(declare-fun res!438153 () Bool)

(assert (=> b!963880 (=> res!438153 e!622257)))

(declare-fun lt!347415 () Bool)

(assert (=> b!963880 (= res!438153 (or lt!347415 (and (is-Concat!4513 r!15766) (is-EmptyExpr!2680 (regOne!5872 r!15766))) (and (is-Concat!4513 r!15766) (is-EmptyExpr!2680 (regTwo!5872 r!15766))) (is-Concat!4513 r!15766) (is-Union!2680 r!15766) (not (is-Star!2680 r!15766))))))

(declare-datatypes ((List!9910 0))(
  ( (Nil!9894) (Cons!9894 (h!15295 C!5930) (t!100956 List!9910)) )
))
(declare-fun s!10566 () List!9910)

(declare-fun matchRSpec!481 (Regex!2680 List!9910) Bool)

(assert (=> b!963880 (= lt!347415 (matchRSpec!481 r!15766 s!10566))))

(declare-fun matchR!1218 (Regex!2680 List!9910) Bool)

(assert (=> b!963880 (= lt!347415 (matchR!1218 r!15766 s!10566))))

(declare-datatypes ((Unit!15015 0))(
  ( (Unit!15016) )
))
(declare-fun lt!347418 () Unit!15015)

(declare-fun mainMatchTheorem!481 (Regex!2680 List!9910) Unit!15015)

(assert (=> b!963880 (= lt!347418 (mainMatchTheorem!481 r!15766 s!10566))))

(declare-fun b!963881 () Bool)

(declare-fun e!622259 () Bool)

(declare-fun tp!296018 () Bool)

(assert (=> b!963881 (= e!622259 tp!296018)))

(declare-fun b!963882 () Bool)

(declare-fun tp!296017 () Bool)

(declare-fun tp!296019 () Bool)

(assert (=> b!963882 (= e!622259 (and tp!296017 tp!296019))))

(declare-fun b!963883 () Bool)

(declare-fun tp_is_empty!5003 () Bool)

(assert (=> b!963883 (= e!622259 tp_is_empty!5003)))

(declare-fun b!963884 () Bool)

(declare-fun e!622254 () Bool)

(declare-fun e!622260 () Bool)

(assert (=> b!963884 (= e!622254 e!622260)))

(declare-fun res!438151 () Bool)

(assert (=> b!963884 (=> res!438151 e!622260)))

(declare-datatypes ((tuple2!11238 0))(
  ( (tuple2!11239 (_1!6445 List!9910) (_2!6445 List!9910)) )
))
(declare-fun lt!347406 () tuple2!11238)

(declare-fun size!7930 (List!9910) Int)

(assert (=> b!963884 (= res!438151 (not (= (size!7930 (_2!6445 lt!347406)) (size!7930 s!10566))))))

(assert (=> b!963884 (matchR!1218 (reg!3009 r!15766) (_1!6445 lt!347406))))

(declare-fun lt!347407 () Unit!15015)

(declare-fun lemmaRemoveUselessConcatSound!179 (Regex!2680 List!9910) Unit!15015)

(assert (=> b!963884 (= lt!347407 (lemmaRemoveUselessConcatSound!179 (reg!3009 r!15766) (_1!6445 lt!347406)))))

(declare-fun res!438158 () Bool)

(assert (=> start!85808 (=> (not res!438158) (not e!622256))))

(declare-fun validRegex!1149 (Regex!2680) Bool)

(assert (=> start!85808 (= res!438158 (validRegex!1149 r!15766))))

(assert (=> start!85808 e!622256))

(assert (=> start!85808 e!622259))

(declare-fun e!622261 () Bool)

(assert (=> start!85808 e!622261))

(declare-fun b!963885 () Bool)

(declare-fun e!622258 () Bool)

(assert (=> b!963885 (= e!622258 e!622254)))

(declare-fun res!438152 () Bool)

(assert (=> b!963885 (=> res!438152 e!622254)))

(assert (=> b!963885 (= res!438152 (not (matchR!1218 lt!347412 (_1!6445 lt!347406))))))

(declare-datatypes ((Option!2261 0))(
  ( (None!2260) (Some!2260 (v!19677 tuple2!11238)) )
))
(declare-fun lt!347419 () Option!2261)

(declare-fun get!3385 (Option!2261) tuple2!11238)

(assert (=> b!963885 (= lt!347406 (get!3385 lt!347419))))

(declare-fun e!622255 () Bool)

(assert (=> b!963886 (= e!622257 e!622255)))

(declare-fun res!438156 () Bool)

(assert (=> b!963886 (=> res!438156 e!622255)))

(assert (=> b!963886 (= res!438156 (not (matchR!1218 lt!347413 s!10566)))))

(assert (=> b!963886 (= lt!347413 (Star!2680 lt!347412))))

(declare-fun removeUselessConcat!327 (Regex!2680) Regex!2680)

(assert (=> b!963886 (= lt!347412 (removeUselessConcat!327 (reg!3009 r!15766)))))

(declare-fun Exists!423 (Int) Bool)

(assert (=> b!963886 (= (Exists!423 lambda!33795) (Exists!423 lambda!33796))))

(declare-fun lt!347410 () Unit!15015)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!141 (Regex!2680 List!9910) Unit!15015)

(assert (=> b!963886 (= lt!347410 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!141 (reg!3009 r!15766) s!10566))))

(declare-fun isDefined!1903 (Option!2261) Bool)

(declare-fun findConcatSeparation!367 (Regex!2680 Regex!2680 List!9910 List!9910 List!9910) Option!2261)

(assert (=> b!963886 (= (isDefined!1903 (findConcatSeparation!367 (reg!3009 r!15766) lt!347411 Nil!9894 s!10566 s!10566)) (Exists!423 lambda!33795))))

(declare-fun lt!347408 () Unit!15015)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!367 (Regex!2680 Regex!2680 List!9910) Unit!15015)

(assert (=> b!963886 (= lt!347408 (lemmaFindConcatSeparationEquivalentToExists!367 (reg!3009 r!15766) lt!347411 s!10566))))

(assert (=> b!963886 (= lt!347411 (Star!2680 (reg!3009 r!15766)))))

(declare-fun b!963887 () Bool)

(declare-fun res!438157 () Bool)

(assert (=> b!963887 (=> res!438157 e!622258)))

(declare-fun lt!347409 () Bool)

(assert (=> b!963887 (= res!438157 (not lt!347409))))

(declare-fun b!963888 () Bool)

(declare-fun tp!296022 () Bool)

(assert (=> b!963888 (= e!622261 (and tp_is_empty!5003 tp!296022))))

(declare-fun b!963889 () Bool)

(declare-fun res!438154 () Bool)

(assert (=> b!963889 (=> res!438154 e!622254)))

(assert (=> b!963889 (= res!438154 (not (matchR!1218 lt!347413 (_2!6445 lt!347406))))))

(assert (=> b!963890 (= e!622255 e!622258)))

(declare-fun res!438155 () Bool)

(assert (=> b!963890 (=> res!438155 e!622258)))

(declare-fun isEmpty!6194 (List!9910) Bool)

(assert (=> b!963890 (= res!438155 (isEmpty!6194 s!10566))))

(assert (=> b!963890 (= (Exists!423 lambda!33797) (Exists!423 lambda!33798))))

(declare-fun lt!347417 () Unit!15015)

(assert (=> b!963890 (= lt!347417 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!141 lt!347412 s!10566))))

(assert (=> b!963890 (= lt!347409 (Exists!423 lambda!33797))))

(assert (=> b!963890 (= lt!347409 (isDefined!1903 lt!347419))))

(assert (=> b!963890 (= lt!347419 (findConcatSeparation!367 lt!347412 lt!347413 Nil!9894 s!10566 s!10566))))

(declare-fun lt!347416 () Unit!15015)

(assert (=> b!963890 (= lt!347416 (lemmaFindConcatSeparationEquivalentToExists!367 lt!347412 lt!347413 s!10566))))

(assert (=> b!963890 (matchRSpec!481 lt!347413 s!10566)))

(declare-fun lt!347414 () Unit!15015)

(assert (=> b!963890 (= lt!347414 (mainMatchTheorem!481 lt!347413 s!10566))))

(declare-fun b!963891 () Bool)

(declare-fun ++!2668 (List!9910 List!9910) List!9910)

(assert (=> b!963891 (= e!622260 (= (++!2668 (_1!6445 lt!347406) (_2!6445 lt!347406)) s!10566))))

(declare-fun b!963892 () Bool)

(declare-fun tp!296020 () Bool)

(declare-fun tp!296021 () Bool)

(assert (=> b!963892 (= e!622259 (and tp!296020 tp!296021))))

(assert (= (and start!85808 res!438158) b!963880))

(assert (= (and b!963880 (not res!438153)) b!963886))

(assert (= (and b!963886 (not res!438156)) b!963890))

(assert (= (and b!963890 (not res!438155)) b!963887))

(assert (= (and b!963887 (not res!438157)) b!963885))

(assert (= (and b!963885 (not res!438152)) b!963889))

(assert (= (and b!963889 (not res!438154)) b!963884))

(assert (= (and b!963884 (not res!438151)) b!963891))

(assert (= (and start!85808 (is-ElementMatch!2680 r!15766)) b!963883))

(assert (= (and start!85808 (is-Concat!4513 r!15766)) b!963882))

(assert (= (and start!85808 (is-Star!2680 r!15766)) b!963881))

(assert (= (and start!85808 (is-Union!2680 r!15766)) b!963892))

(assert (= (and start!85808 (is-Cons!9894 s!10566)) b!963888))

(declare-fun m!1170777 () Bool)

(assert (=> b!963880 m!1170777))

(declare-fun m!1170779 () Bool)

(assert (=> b!963880 m!1170779))

(declare-fun m!1170781 () Bool)

(assert (=> b!963880 m!1170781))

(declare-fun m!1170783 () Bool)

(assert (=> start!85808 m!1170783))

(declare-fun m!1170785 () Bool)

(assert (=> b!963890 m!1170785))

(declare-fun m!1170787 () Bool)

(assert (=> b!963890 m!1170787))

(assert (=> b!963890 m!1170787))

(declare-fun m!1170789 () Bool)

(assert (=> b!963890 m!1170789))

(declare-fun m!1170791 () Bool)

(assert (=> b!963890 m!1170791))

(declare-fun m!1170793 () Bool)

(assert (=> b!963890 m!1170793))

(declare-fun m!1170795 () Bool)

(assert (=> b!963890 m!1170795))

(declare-fun m!1170797 () Bool)

(assert (=> b!963890 m!1170797))

(declare-fun m!1170799 () Bool)

(assert (=> b!963890 m!1170799))

(declare-fun m!1170801 () Bool)

(assert (=> b!963890 m!1170801))

(declare-fun m!1170803 () Bool)

(assert (=> b!963889 m!1170803))

(declare-fun m!1170805 () Bool)

(assert (=> b!963884 m!1170805))

(declare-fun m!1170807 () Bool)

(assert (=> b!963884 m!1170807))

(declare-fun m!1170809 () Bool)

(assert (=> b!963884 m!1170809))

(declare-fun m!1170811 () Bool)

(assert (=> b!963884 m!1170811))

(declare-fun m!1170813 () Bool)

(assert (=> b!963891 m!1170813))

(declare-fun m!1170815 () Bool)

(assert (=> b!963886 m!1170815))

(declare-fun m!1170817 () Bool)

(assert (=> b!963886 m!1170817))

(declare-fun m!1170819 () Bool)

(assert (=> b!963886 m!1170819))

(declare-fun m!1170821 () Bool)

(assert (=> b!963886 m!1170821))

(declare-fun m!1170823 () Bool)

(assert (=> b!963886 m!1170823))

(declare-fun m!1170825 () Bool)

(assert (=> b!963886 m!1170825))

(declare-fun m!1170827 () Bool)

(assert (=> b!963886 m!1170827))

(assert (=> b!963886 m!1170827))

(declare-fun m!1170829 () Bool)

(assert (=> b!963886 m!1170829))

(assert (=> b!963886 m!1170819))

(declare-fun m!1170831 () Bool)

(assert (=> b!963885 m!1170831))

(declare-fun m!1170833 () Bool)

(assert (=> b!963885 m!1170833))

(push 1)

(assert (not b!963882))

(assert (not b!963885))

(assert (not b!963892))

(assert (not b!963891))

(assert (not b!963888))

(assert (not b!963890))

(assert (not start!85808))

(assert (not b!963884))

(assert (not b!963886))

(assert (not b!963880))

(assert tp_is_empty!5003)

(assert (not b!963889))

(assert (not b!963881))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!963996 () Bool)

(declare-fun e!622314 () Bool)

(declare-fun head!1771 (List!9910) C!5930)

(assert (=> b!963996 (= e!622314 (= (head!1771 (_1!6445 lt!347406)) (c!157009 lt!347412)))))

(declare-fun bm!60851 () Bool)

(declare-fun call!60856 () Bool)

(assert (=> bm!60851 (= call!60856 (isEmpty!6194 (_1!6445 lt!347406)))))

(declare-fun b!963997 () Bool)

(declare-fun e!622312 () Bool)

(declare-fun nullable!810 (Regex!2680) Bool)

(assert (=> b!963997 (= e!622312 (nullable!810 lt!347412))))

(declare-fun b!963998 () Bool)

(declare-fun res!438230 () Bool)

(assert (=> b!963998 (=> (not res!438230) (not e!622314))))

(assert (=> b!963998 (= res!438230 (not call!60856))))

(declare-fun b!963999 () Bool)

(declare-fun e!622317 () Bool)

(declare-fun e!622318 () Bool)

(assert (=> b!963999 (= e!622317 e!622318)))

(declare-fun res!438227 () Bool)

(assert (=> b!963999 (=> res!438227 e!622318)))

(assert (=> b!963999 (= res!438227 call!60856)))

(declare-fun b!964000 () Bool)

(assert (=> b!964000 (= e!622318 (not (= (head!1771 (_1!6445 lt!347406)) (c!157009 lt!347412))))))

(declare-fun b!964002 () Bool)

(declare-fun e!622315 () Bool)

(assert (=> b!964002 (= e!622315 e!622317)))

(declare-fun res!438228 () Bool)

(assert (=> b!964002 (=> (not res!438228) (not e!622317))))

(declare-fun lt!347464 () Bool)

(assert (=> b!964002 (= res!438228 (not lt!347464))))

(declare-fun b!964003 () Bool)

(declare-fun e!622313 () Bool)

(declare-fun e!622316 () Bool)

(assert (=> b!964003 (= e!622313 e!622316)))

(declare-fun c!157018 () Bool)

(assert (=> b!964003 (= c!157018 (is-EmptyLang!2680 lt!347412))))

(declare-fun b!964004 () Bool)

(declare-fun res!438229 () Bool)

(assert (=> b!964004 (=> res!438229 e!622315)))

(assert (=> b!964004 (= res!438229 e!622314)))

(declare-fun res!438232 () Bool)

(assert (=> b!964004 (=> (not res!438232) (not e!622314))))

(assert (=> b!964004 (= res!438232 lt!347464)))

(declare-fun b!964005 () Bool)

(assert (=> b!964005 (= e!622313 (= lt!347464 call!60856))))

(declare-fun b!964006 () Bool)

(declare-fun derivativeStep!618 (Regex!2680 C!5930) Regex!2680)

(declare-fun tail!1333 (List!9910) List!9910)

(assert (=> b!964006 (= e!622312 (matchR!1218 (derivativeStep!618 lt!347412 (head!1771 (_1!6445 lt!347406))) (tail!1333 (_1!6445 lt!347406))))))

(declare-fun b!964007 () Bool)

(declare-fun res!438231 () Bool)

(assert (=> b!964007 (=> res!438231 e!622318)))

(assert (=> b!964007 (= res!438231 (not (isEmpty!6194 (tail!1333 (_1!6445 lt!347406)))))))

(declare-fun d!285504 () Bool)

(assert (=> d!285504 e!622313))

(declare-fun c!157017 () Bool)

(assert (=> d!285504 (= c!157017 (is-EmptyExpr!2680 lt!347412))))

(assert (=> d!285504 (= lt!347464 e!622312)))

(declare-fun c!157019 () Bool)

(assert (=> d!285504 (= c!157019 (isEmpty!6194 (_1!6445 lt!347406)))))

(assert (=> d!285504 (validRegex!1149 lt!347412)))

(assert (=> d!285504 (= (matchR!1218 lt!347412 (_1!6445 lt!347406)) lt!347464)))

(declare-fun b!964001 () Bool)

(declare-fun res!438233 () Bool)

(assert (=> b!964001 (=> (not res!438233) (not e!622314))))

(assert (=> b!964001 (= res!438233 (isEmpty!6194 (tail!1333 (_1!6445 lt!347406))))))

(declare-fun b!964008 () Bool)

(declare-fun res!438234 () Bool)

(assert (=> b!964008 (=> res!438234 e!622315)))

(assert (=> b!964008 (= res!438234 (not (is-ElementMatch!2680 lt!347412)))))

(assert (=> b!964008 (= e!622316 e!622315)))

(declare-fun b!964009 () Bool)

(assert (=> b!964009 (= e!622316 (not lt!347464))))

(assert (= (and d!285504 c!157019) b!963997))

(assert (= (and d!285504 (not c!157019)) b!964006))

(assert (= (and d!285504 c!157017) b!964005))

(assert (= (and d!285504 (not c!157017)) b!964003))

(assert (= (and b!964003 c!157018) b!964009))

(assert (= (and b!964003 (not c!157018)) b!964008))

(assert (= (and b!964008 (not res!438234)) b!964004))

(assert (= (and b!964004 res!438232) b!963998))

(assert (= (and b!963998 res!438230) b!964001))

(assert (= (and b!964001 res!438233) b!963996))

(assert (= (and b!964004 (not res!438229)) b!964002))

(assert (= (and b!964002 res!438228) b!963999))

(assert (= (and b!963999 (not res!438227)) b!964007))

(assert (= (and b!964007 (not res!438231)) b!964000))

(assert (= (or b!964005 b!963998 b!963999) bm!60851))

(declare-fun m!1170893 () Bool)

(assert (=> d!285504 m!1170893))

(declare-fun m!1170895 () Bool)

(assert (=> d!285504 m!1170895))

(declare-fun m!1170897 () Bool)

(assert (=> b!964001 m!1170897))

(assert (=> b!964001 m!1170897))

(declare-fun m!1170899 () Bool)

(assert (=> b!964001 m!1170899))

(assert (=> bm!60851 m!1170893))

(declare-fun m!1170901 () Bool)

(assert (=> b!963996 m!1170901))

(assert (=> b!964007 m!1170897))

(assert (=> b!964007 m!1170897))

(assert (=> b!964007 m!1170899))

(declare-fun m!1170903 () Bool)

(assert (=> b!963997 m!1170903))

(assert (=> b!964000 m!1170901))

(assert (=> b!964006 m!1170901))

(assert (=> b!964006 m!1170901))

(declare-fun m!1170905 () Bool)

(assert (=> b!964006 m!1170905))

(assert (=> b!964006 m!1170897))

(assert (=> b!964006 m!1170905))

(assert (=> b!964006 m!1170897))

(declare-fun m!1170907 () Bool)

(assert (=> b!964006 m!1170907))

(assert (=> b!963885 d!285504))

(declare-fun d!285506 () Bool)

(assert (=> d!285506 (= (get!3385 lt!347419) (v!19677 lt!347419))))

(assert (=> b!963885 d!285506))

(declare-fun bm!60858 () Bool)

(declare-fun call!60863 () Bool)

(declare-fun call!60865 () Bool)

(assert (=> bm!60858 (= call!60863 call!60865)))

(declare-fun b!964028 () Bool)

(declare-fun e!622334 () Bool)

(declare-fun e!622336 () Bool)

(assert (=> b!964028 (= e!622334 e!622336)))

(declare-fun res!438249 () Bool)

(assert (=> b!964028 (=> (not res!438249) (not e!622336))))

(assert (=> b!964028 (= res!438249 call!60863)))

(declare-fun d!285508 () Bool)

(declare-fun res!438245 () Bool)

(declare-fun e!622335 () Bool)

(assert (=> d!285508 (=> res!438245 e!622335)))

(assert (=> d!285508 (= res!438245 (is-ElementMatch!2680 r!15766))))

(assert (=> d!285508 (= (validRegex!1149 r!15766) e!622335)))

(declare-fun b!964029 () Bool)

(declare-fun call!60864 () Bool)

(assert (=> b!964029 (= e!622336 call!60864)))

(declare-fun b!964030 () Bool)

(declare-fun e!622338 () Bool)

(declare-fun e!622333 () Bool)

(assert (=> b!964030 (= e!622338 e!622333)))

(declare-fun c!157024 () Bool)

(assert (=> b!964030 (= c!157024 (is-Union!2680 r!15766))))

(declare-fun b!964031 () Bool)

(declare-fun res!438247 () Bool)

(assert (=> b!964031 (=> res!438247 e!622334)))

(assert (=> b!964031 (= res!438247 (not (is-Concat!4513 r!15766)))))

(assert (=> b!964031 (= e!622333 e!622334)))

(declare-fun b!964032 () Bool)

(declare-fun res!438246 () Bool)

(declare-fun e!622339 () Bool)

(assert (=> b!964032 (=> (not res!438246) (not e!622339))))

(assert (=> b!964032 (= res!438246 call!60863)))

(assert (=> b!964032 (= e!622333 e!622339)))

(declare-fun bm!60859 () Bool)

(assert (=> bm!60859 (= call!60864 (validRegex!1149 (ite c!157024 (regTwo!5873 r!15766) (regTwo!5872 r!15766))))))

(declare-fun b!964033 () Bool)

(declare-fun e!622337 () Bool)

(assert (=> b!964033 (= e!622338 e!622337)))

(declare-fun res!438248 () Bool)

(assert (=> b!964033 (= res!438248 (not (nullable!810 (reg!3009 r!15766))))))

(assert (=> b!964033 (=> (not res!438248) (not e!622337))))

(declare-fun b!964034 () Bool)

(assert (=> b!964034 (= e!622339 call!60864)))

(declare-fun b!964035 () Bool)

(assert (=> b!964035 (= e!622335 e!622338)))

(declare-fun c!157025 () Bool)

(assert (=> b!964035 (= c!157025 (is-Star!2680 r!15766))))

(declare-fun bm!60860 () Bool)

(assert (=> bm!60860 (= call!60865 (validRegex!1149 (ite c!157025 (reg!3009 r!15766) (ite c!157024 (regOne!5873 r!15766) (regOne!5872 r!15766)))))))

(declare-fun b!964036 () Bool)

(assert (=> b!964036 (= e!622337 call!60865)))

(assert (= (and d!285508 (not res!438245)) b!964035))

(assert (= (and b!964035 c!157025) b!964033))

(assert (= (and b!964035 (not c!157025)) b!964030))

(assert (= (and b!964033 res!438248) b!964036))

(assert (= (and b!964030 c!157024) b!964032))

(assert (= (and b!964030 (not c!157024)) b!964031))

(assert (= (and b!964032 res!438246) b!964034))

(assert (= (and b!964031 (not res!438247)) b!964028))

(assert (= (and b!964028 res!438249) b!964029))

(assert (= (or b!964034 b!964029) bm!60859))

(assert (= (or b!964032 b!964028) bm!60858))

(assert (= (or b!964036 bm!60858) bm!60860))

(declare-fun m!1170909 () Bool)

(assert (=> bm!60859 m!1170909))

(declare-fun m!1170911 () Bool)

(assert (=> b!964033 m!1170911))

(declare-fun m!1170913 () Bool)

(assert (=> bm!60860 m!1170913))

(assert (=> start!85808 d!285508))

(declare-fun bs!241274 () Bool)

(declare-fun b!964077 () Bool)

(assert (= bs!241274 (and b!964077 b!963886)))

(declare-fun lambda!33819 () Int)

(assert (=> bs!241274 (not (= lambda!33819 lambda!33795))))

(assert (=> bs!241274 (= (= r!15766 lt!347411) (= lambda!33819 lambda!33796))))

(declare-fun bs!241275 () Bool)

(assert (= bs!241275 (and b!964077 b!963890)))

(assert (=> bs!241275 (not (= lambda!33819 lambda!33797))))

(assert (=> bs!241275 (= (and (= (reg!3009 r!15766) lt!347412) (= r!15766 lt!347413)) (= lambda!33819 lambda!33798))))

(assert (=> b!964077 true))

(assert (=> b!964077 true))

(declare-fun bs!241276 () Bool)

(declare-fun b!964074 () Bool)

(assert (= bs!241276 (and b!964074 b!963890)))

(declare-fun lambda!33820 () Int)

(assert (=> bs!241276 (not (= lambda!33820 lambda!33797))))

(declare-fun bs!241277 () Bool)

(assert (= bs!241277 (and b!964074 b!963886)))

(assert (=> bs!241277 (not (= lambda!33820 lambda!33796))))

(assert (=> bs!241276 (not (= lambda!33820 lambda!33798))))

(declare-fun bs!241278 () Bool)

(assert (= bs!241278 (and b!964074 b!964077)))

(assert (=> bs!241278 (not (= lambda!33820 lambda!33819))))

(assert (=> bs!241277 (not (= lambda!33820 lambda!33795))))

(assert (=> b!964074 true))

(assert (=> b!964074 true))

(declare-fun b!964070 () Bool)

(declare-fun e!622363 () Bool)

(assert (=> b!964070 (= e!622363 (= s!10566 (Cons!9894 (c!157009 r!15766) Nil!9894)))))

(declare-fun b!964071 () Bool)

(declare-fun e!622360 () Bool)

(declare-fun e!622362 () Bool)

(assert (=> b!964071 (= e!622360 e!622362)))

(declare-fun res!438268 () Bool)

(assert (=> b!964071 (= res!438268 (matchRSpec!481 (regOne!5873 r!15766) s!10566))))

(assert (=> b!964071 (=> res!438268 e!622362)))

(declare-fun b!964072 () Bool)

(assert (=> b!964072 (= e!622362 (matchRSpec!481 (regTwo!5873 r!15766) s!10566))))

(declare-fun b!964073 () Bool)

(declare-fun e!622359 () Bool)

(declare-fun e!622361 () Bool)

(assert (=> b!964073 (= e!622359 e!622361)))

(declare-fun res!438266 () Bool)

(assert (=> b!964073 (= res!438266 (not (is-EmptyLang!2680 r!15766)))))

(assert (=> b!964073 (=> (not res!438266) (not e!622361))))

(declare-fun e!622358 () Bool)

(declare-fun call!60870 () Bool)

(assert (=> b!964074 (= e!622358 call!60870)))

(declare-fun b!964075 () Bool)

(declare-fun call!60871 () Bool)

(assert (=> b!964075 (= e!622359 call!60871)))

(declare-fun b!964069 () Bool)

(assert (=> b!964069 (= e!622360 e!622358)))

(declare-fun c!157036 () Bool)

(assert (=> b!964069 (= c!157036 (is-Star!2680 r!15766))))

(declare-fun d!285510 () Bool)

(declare-fun c!157034 () Bool)

(assert (=> d!285510 (= c!157034 (is-EmptyExpr!2680 r!15766))))

(assert (=> d!285510 (= (matchRSpec!481 r!15766 s!10566) e!622359)))

(declare-fun b!964076 () Bool)

(declare-fun res!438267 () Bool)

(declare-fun e!622364 () Bool)

(assert (=> b!964076 (=> res!438267 e!622364)))

(assert (=> b!964076 (= res!438267 call!60871)))

(assert (=> b!964076 (= e!622358 e!622364)))

(assert (=> b!964077 (= e!622364 call!60870)))

(declare-fun b!964078 () Bool)

(declare-fun c!157035 () Bool)

(assert (=> b!964078 (= c!157035 (is-Union!2680 r!15766))))

(assert (=> b!964078 (= e!622363 e!622360)))

(declare-fun bm!60865 () Bool)

(assert (=> bm!60865 (= call!60871 (isEmpty!6194 s!10566))))

(declare-fun b!964079 () Bool)

(declare-fun c!157037 () Bool)

(assert (=> b!964079 (= c!157037 (is-ElementMatch!2680 r!15766))))

(assert (=> b!964079 (= e!622361 e!622363)))

(declare-fun bm!60866 () Bool)

(assert (=> bm!60866 (= call!60870 (Exists!423 (ite c!157036 lambda!33819 lambda!33820)))))

(assert (= (and d!285510 c!157034) b!964075))

(assert (= (and d!285510 (not c!157034)) b!964073))

(assert (= (and b!964073 res!438266) b!964079))

(assert (= (and b!964079 c!157037) b!964070))

(assert (= (and b!964079 (not c!157037)) b!964078))

(assert (= (and b!964078 c!157035) b!964071))

(assert (= (and b!964078 (not c!157035)) b!964069))

(assert (= (and b!964071 (not res!438268)) b!964072))

(assert (= (and b!964069 c!157036) b!964076))

(assert (= (and b!964069 (not c!157036)) b!964074))

(assert (= (and b!964076 (not res!438267)) b!964077))

(assert (= (or b!964077 b!964074) bm!60866))

(assert (= (or b!964075 b!964076) bm!60865))

(declare-fun m!1170915 () Bool)

(assert (=> b!964071 m!1170915))

(declare-fun m!1170917 () Bool)

(assert (=> b!964072 m!1170917))

(assert (=> bm!60865 m!1170799))

(declare-fun m!1170919 () Bool)

(assert (=> bm!60866 m!1170919))

(assert (=> b!963880 d!285510))

(declare-fun b!964080 () Bool)

(declare-fun e!622367 () Bool)

(assert (=> b!964080 (= e!622367 (= (head!1771 s!10566) (c!157009 r!15766)))))

(declare-fun bm!60867 () Bool)

(declare-fun call!60872 () Bool)

(assert (=> bm!60867 (= call!60872 (isEmpty!6194 s!10566))))

(declare-fun b!964081 () Bool)

(declare-fun e!622365 () Bool)

(assert (=> b!964081 (= e!622365 (nullable!810 r!15766))))

(declare-fun b!964082 () Bool)

(declare-fun res!438272 () Bool)

(assert (=> b!964082 (=> (not res!438272) (not e!622367))))

(assert (=> b!964082 (= res!438272 (not call!60872))))

(declare-fun b!964083 () Bool)

(declare-fun e!622370 () Bool)

(declare-fun e!622371 () Bool)

(assert (=> b!964083 (= e!622370 e!622371)))

(declare-fun res!438269 () Bool)

(assert (=> b!964083 (=> res!438269 e!622371)))

(assert (=> b!964083 (= res!438269 call!60872)))

(declare-fun b!964084 () Bool)

(assert (=> b!964084 (= e!622371 (not (= (head!1771 s!10566) (c!157009 r!15766))))))

(declare-fun b!964086 () Bool)

(declare-fun e!622368 () Bool)

(assert (=> b!964086 (= e!622368 e!622370)))

(declare-fun res!438270 () Bool)

(assert (=> b!964086 (=> (not res!438270) (not e!622370))))

(declare-fun lt!347465 () Bool)

(assert (=> b!964086 (= res!438270 (not lt!347465))))

(declare-fun b!964087 () Bool)

(declare-fun e!622366 () Bool)

(declare-fun e!622369 () Bool)

(assert (=> b!964087 (= e!622366 e!622369)))

(declare-fun c!157039 () Bool)

(assert (=> b!964087 (= c!157039 (is-EmptyLang!2680 r!15766))))

(declare-fun b!964088 () Bool)

(declare-fun res!438271 () Bool)

(assert (=> b!964088 (=> res!438271 e!622368)))

(assert (=> b!964088 (= res!438271 e!622367)))

(declare-fun res!438274 () Bool)

(assert (=> b!964088 (=> (not res!438274) (not e!622367))))

(assert (=> b!964088 (= res!438274 lt!347465)))

(declare-fun b!964089 () Bool)

(assert (=> b!964089 (= e!622366 (= lt!347465 call!60872))))

(declare-fun b!964090 () Bool)

(assert (=> b!964090 (= e!622365 (matchR!1218 (derivativeStep!618 r!15766 (head!1771 s!10566)) (tail!1333 s!10566)))))

(declare-fun b!964091 () Bool)

(declare-fun res!438273 () Bool)

(assert (=> b!964091 (=> res!438273 e!622371)))

(assert (=> b!964091 (= res!438273 (not (isEmpty!6194 (tail!1333 s!10566))))))

(declare-fun d!285514 () Bool)

(assert (=> d!285514 e!622366))

(declare-fun c!157038 () Bool)

(assert (=> d!285514 (= c!157038 (is-EmptyExpr!2680 r!15766))))

(assert (=> d!285514 (= lt!347465 e!622365)))

(declare-fun c!157040 () Bool)

(assert (=> d!285514 (= c!157040 (isEmpty!6194 s!10566))))

(assert (=> d!285514 (validRegex!1149 r!15766)))

(assert (=> d!285514 (= (matchR!1218 r!15766 s!10566) lt!347465)))

(declare-fun b!964085 () Bool)

(declare-fun res!438275 () Bool)

(assert (=> b!964085 (=> (not res!438275) (not e!622367))))

(assert (=> b!964085 (= res!438275 (isEmpty!6194 (tail!1333 s!10566)))))

(declare-fun b!964092 () Bool)

(declare-fun res!438276 () Bool)

(assert (=> b!964092 (=> res!438276 e!622368)))

(assert (=> b!964092 (= res!438276 (not (is-ElementMatch!2680 r!15766)))))

(assert (=> b!964092 (= e!622369 e!622368)))

(declare-fun b!964093 () Bool)

(assert (=> b!964093 (= e!622369 (not lt!347465))))

(assert (= (and d!285514 c!157040) b!964081))

(assert (= (and d!285514 (not c!157040)) b!964090))

(assert (= (and d!285514 c!157038) b!964089))

(assert (= (and d!285514 (not c!157038)) b!964087))

(assert (= (and b!964087 c!157039) b!964093))

(assert (= (and b!964087 (not c!157039)) b!964092))

(assert (= (and b!964092 (not res!438276)) b!964088))

(assert (= (and b!964088 res!438274) b!964082))

(assert (= (and b!964082 res!438272) b!964085))

(assert (= (and b!964085 res!438275) b!964080))

(assert (= (and b!964088 (not res!438271)) b!964086))

(assert (= (and b!964086 res!438270) b!964083))

(assert (= (and b!964083 (not res!438269)) b!964091))

(assert (= (and b!964091 (not res!438273)) b!964084))

(assert (= (or b!964089 b!964082 b!964083) bm!60867))

(assert (=> d!285514 m!1170799))

(assert (=> d!285514 m!1170783))

(declare-fun m!1170921 () Bool)

(assert (=> b!964085 m!1170921))

(assert (=> b!964085 m!1170921))

(declare-fun m!1170923 () Bool)

(assert (=> b!964085 m!1170923))

(assert (=> bm!60867 m!1170799))

(declare-fun m!1170925 () Bool)

(assert (=> b!964080 m!1170925))

(assert (=> b!964091 m!1170921))

(assert (=> b!964091 m!1170921))

(assert (=> b!964091 m!1170923))

(declare-fun m!1170927 () Bool)

(assert (=> b!964081 m!1170927))

(assert (=> b!964084 m!1170925))

(assert (=> b!964090 m!1170925))

(assert (=> b!964090 m!1170925))

(declare-fun m!1170929 () Bool)

(assert (=> b!964090 m!1170929))

(assert (=> b!964090 m!1170921))

(assert (=> b!964090 m!1170929))

(assert (=> b!964090 m!1170921))

(declare-fun m!1170931 () Bool)

(assert (=> b!964090 m!1170931))

(assert (=> b!963880 d!285514))

(declare-fun d!285516 () Bool)

(assert (=> d!285516 (= (matchR!1218 r!15766 s!10566) (matchRSpec!481 r!15766 s!10566))))

(declare-fun lt!347470 () Unit!15015)

(declare-fun choose!6079 (Regex!2680 List!9910) Unit!15015)

(assert (=> d!285516 (= lt!347470 (choose!6079 r!15766 s!10566))))

(assert (=> d!285516 (validRegex!1149 r!15766)))

(assert (=> d!285516 (= (mainMatchTheorem!481 r!15766 s!10566) lt!347470)))

(declare-fun bs!241279 () Bool)

(assert (= bs!241279 d!285516))

(assert (=> bs!241279 m!1170779))

(assert (=> bs!241279 m!1170777))

(declare-fun m!1170933 () Bool)

(assert (=> bs!241279 m!1170933))

(assert (=> bs!241279 m!1170783))

(assert (=> b!963880 d!285516))

(declare-fun b!964132 () Bool)

(declare-fun res!438297 () Bool)

(declare-fun e!622391 () Bool)

(assert (=> b!964132 (=> (not res!438297) (not e!622391))))

(declare-fun lt!347473 () List!9910)

(assert (=> b!964132 (= res!438297 (= (size!7930 lt!347473) (+ (size!7930 (_1!6445 lt!347406)) (size!7930 (_2!6445 lt!347406)))))))

(declare-fun b!964130 () Bool)

(declare-fun e!622390 () List!9910)

(assert (=> b!964130 (= e!622390 (_2!6445 lt!347406))))

(declare-fun d!285518 () Bool)

(assert (=> d!285518 e!622391))

(declare-fun res!438298 () Bool)

(assert (=> d!285518 (=> (not res!438298) (not e!622391))))

(declare-fun content!1407 (List!9910) (Set C!5930))

(assert (=> d!285518 (= res!438298 (= (content!1407 lt!347473) (set.union (content!1407 (_1!6445 lt!347406)) (content!1407 (_2!6445 lt!347406)))))))

(assert (=> d!285518 (= lt!347473 e!622390)))

(declare-fun c!157049 () Bool)

(assert (=> d!285518 (= c!157049 (is-Nil!9894 (_1!6445 lt!347406)))))

(assert (=> d!285518 (= (++!2668 (_1!6445 lt!347406) (_2!6445 lt!347406)) lt!347473)))

(declare-fun b!964133 () Bool)

(assert (=> b!964133 (= e!622391 (or (not (= (_2!6445 lt!347406) Nil!9894)) (= lt!347473 (_1!6445 lt!347406))))))

(declare-fun b!964131 () Bool)

(assert (=> b!964131 (= e!622390 (Cons!9894 (h!15295 (_1!6445 lt!347406)) (++!2668 (t!100956 (_1!6445 lt!347406)) (_2!6445 lt!347406))))))

(assert (= (and d!285518 c!157049) b!964130))

(assert (= (and d!285518 (not c!157049)) b!964131))

(assert (= (and d!285518 res!438298) b!964132))

(assert (= (and b!964132 res!438297) b!964133))

(declare-fun m!1170935 () Bool)

(assert (=> b!964132 m!1170935))

(declare-fun m!1170937 () Bool)

(assert (=> b!964132 m!1170937))

(assert (=> b!964132 m!1170805))

(declare-fun m!1170939 () Bool)

(assert (=> d!285518 m!1170939))

(declare-fun m!1170941 () Bool)

(assert (=> d!285518 m!1170941))

(declare-fun m!1170943 () Bool)

(assert (=> d!285518 m!1170943))

(declare-fun m!1170945 () Bool)

(assert (=> b!964131 m!1170945))

(assert (=> b!963891 d!285518))

(declare-fun d!285520 () Bool)

(declare-fun isEmpty!6196 (Option!2261) Bool)

(assert (=> d!285520 (= (isDefined!1903 (findConcatSeparation!367 (reg!3009 r!15766) lt!347411 Nil!9894 s!10566 s!10566)) (not (isEmpty!6196 (findConcatSeparation!367 (reg!3009 r!15766) lt!347411 Nil!9894 s!10566 s!10566))))))

(declare-fun bs!241280 () Bool)

(assert (= bs!241280 d!285520))

(assert (=> bs!241280 m!1170819))

(declare-fun m!1170947 () Bool)

(assert (=> bs!241280 m!1170947))

(assert (=> b!963886 d!285520))

(declare-fun bs!241281 () Bool)

(declare-fun d!285522 () Bool)

(assert (= bs!241281 (and d!285522 b!963890)))

(declare-fun lambda!33823 () Int)

(assert (=> bs!241281 (= (and (= (reg!3009 r!15766) lt!347412) (= lt!347411 lt!347413)) (= lambda!33823 lambda!33797))))

(declare-fun bs!241282 () Bool)

(assert (= bs!241282 (and d!285522 b!963886)))

(assert (=> bs!241282 (not (= lambda!33823 lambda!33796))))

(declare-fun bs!241283 () Bool)

(assert (= bs!241283 (and d!285522 b!964074)))

(assert (=> bs!241283 (not (= lambda!33823 lambda!33820))))

(assert (=> bs!241281 (not (= lambda!33823 lambda!33798))))

(declare-fun bs!241284 () Bool)

(assert (= bs!241284 (and d!285522 b!964077)))

(assert (=> bs!241284 (not (= lambda!33823 lambda!33819))))

(assert (=> bs!241282 (= lambda!33823 lambda!33795)))

(assert (=> d!285522 true))

(assert (=> d!285522 true))

(assert (=> d!285522 true))

(assert (=> d!285522 (= (isDefined!1903 (findConcatSeparation!367 (reg!3009 r!15766) lt!347411 Nil!9894 s!10566 s!10566)) (Exists!423 lambda!33823))))

(declare-fun lt!347477 () Unit!15015)

(declare-fun choose!6080 (Regex!2680 Regex!2680 List!9910) Unit!15015)

(assert (=> d!285522 (= lt!347477 (choose!6080 (reg!3009 r!15766) lt!347411 s!10566))))

(assert (=> d!285522 (validRegex!1149 (reg!3009 r!15766))))

(assert (=> d!285522 (= (lemmaFindConcatSeparationEquivalentToExists!367 (reg!3009 r!15766) lt!347411 s!10566) lt!347477)))

(declare-fun bs!241285 () Bool)

(assert (= bs!241285 d!285522))

(declare-fun m!1170965 () Bool)

(assert (=> bs!241285 m!1170965))

(declare-fun m!1170967 () Bool)

(assert (=> bs!241285 m!1170967))

(assert (=> bs!241285 m!1170819))

(assert (=> bs!241285 m!1170819))

(assert (=> bs!241285 m!1170821))

(declare-fun m!1170969 () Bool)

(assert (=> bs!241285 m!1170969))

(assert (=> b!963886 d!285522))

(declare-fun bs!241286 () Bool)

(declare-fun d!285526 () Bool)

(assert (= bs!241286 (and d!285526 b!963890)))

(declare-fun lambda!33828 () Int)

(assert (=> bs!241286 (= (and (= (reg!3009 r!15766) lt!347412) (= (Star!2680 (reg!3009 r!15766)) lt!347413)) (= lambda!33828 lambda!33797))))

(declare-fun bs!241287 () Bool)

(assert (= bs!241287 (and d!285526 d!285522)))

(assert (=> bs!241287 (= (= (Star!2680 (reg!3009 r!15766)) lt!347411) (= lambda!33828 lambda!33823))))

(declare-fun bs!241288 () Bool)

(assert (= bs!241288 (and d!285526 b!963886)))

(assert (=> bs!241288 (not (= lambda!33828 lambda!33796))))

(declare-fun bs!241289 () Bool)

(assert (= bs!241289 (and d!285526 b!964074)))

(assert (=> bs!241289 (not (= lambda!33828 lambda!33820))))

(assert (=> bs!241286 (not (= lambda!33828 lambda!33798))))

(declare-fun bs!241290 () Bool)

(assert (= bs!241290 (and d!285526 b!964077)))

(assert (=> bs!241290 (not (= lambda!33828 lambda!33819))))

(assert (=> bs!241288 (= (= (Star!2680 (reg!3009 r!15766)) lt!347411) (= lambda!33828 lambda!33795))))

(assert (=> d!285526 true))

(assert (=> d!285526 true))

(declare-fun lambda!33829 () Int)

(assert (=> bs!241286 (not (= lambda!33829 lambda!33797))))

(assert (=> bs!241287 (not (= lambda!33829 lambda!33823))))

(assert (=> bs!241288 (= (= (Star!2680 (reg!3009 r!15766)) lt!347411) (= lambda!33829 lambda!33796))))

(assert (=> bs!241289 (not (= lambda!33829 lambda!33820))))

(declare-fun bs!241291 () Bool)

(assert (= bs!241291 d!285526))

(assert (=> bs!241291 (not (= lambda!33829 lambda!33828))))

(assert (=> bs!241286 (= (and (= (reg!3009 r!15766) lt!347412) (= (Star!2680 (reg!3009 r!15766)) lt!347413)) (= lambda!33829 lambda!33798))))

(assert (=> bs!241290 (= (= (Star!2680 (reg!3009 r!15766)) r!15766) (= lambda!33829 lambda!33819))))

(assert (=> bs!241288 (not (= lambda!33829 lambda!33795))))

(assert (=> d!285526 true))

(assert (=> d!285526 true))

(assert (=> d!285526 (= (Exists!423 lambda!33828) (Exists!423 lambda!33829))))

(declare-fun lt!347486 () Unit!15015)

(declare-fun choose!6081 (Regex!2680 List!9910) Unit!15015)

(assert (=> d!285526 (= lt!347486 (choose!6081 (reg!3009 r!15766) s!10566))))

(assert (=> d!285526 (validRegex!1149 (reg!3009 r!15766))))

(assert (=> d!285526 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!141 (reg!3009 r!15766) s!10566) lt!347486)))

(declare-fun m!1170999 () Bool)

(assert (=> bs!241291 m!1170999))

(declare-fun m!1171001 () Bool)

(assert (=> bs!241291 m!1171001))

(declare-fun m!1171003 () Bool)

(assert (=> bs!241291 m!1171003))

(assert (=> bs!241291 m!1170967))

(assert (=> b!963886 d!285526))

(declare-fun d!285538 () Bool)

(declare-fun choose!6082 (Int) Bool)

(assert (=> d!285538 (= (Exists!423 lambda!33796) (choose!6082 lambda!33796))))

(declare-fun bs!241292 () Bool)

(assert (= bs!241292 d!285538))

(declare-fun m!1171005 () Bool)

(assert (=> bs!241292 m!1171005))

(assert (=> b!963886 d!285538))

(declare-fun b!964198 () Bool)

(declare-fun e!622425 () Bool)

(assert (=> b!964198 (= e!622425 (= (head!1771 s!10566) (c!157009 lt!347413)))))

(declare-fun bm!60873 () Bool)

(declare-fun call!60878 () Bool)

(assert (=> bm!60873 (= call!60878 (isEmpty!6194 s!10566))))

(declare-fun b!964199 () Bool)

(declare-fun e!622423 () Bool)

(assert (=> b!964199 (= e!622423 (nullable!810 lt!347413))))

(declare-fun b!964200 () Bool)

(declare-fun res!438340 () Bool)

(assert (=> b!964200 (=> (not res!438340) (not e!622425))))

(assert (=> b!964200 (= res!438340 (not call!60878))))

(declare-fun b!964201 () Bool)

(declare-fun e!622428 () Bool)

(declare-fun e!622429 () Bool)

(assert (=> b!964201 (= e!622428 e!622429)))

(declare-fun res!438337 () Bool)

(assert (=> b!964201 (=> res!438337 e!622429)))

(assert (=> b!964201 (= res!438337 call!60878)))

(declare-fun b!964202 () Bool)

(assert (=> b!964202 (= e!622429 (not (= (head!1771 s!10566) (c!157009 lt!347413))))))

(declare-fun b!964204 () Bool)

(declare-fun e!622426 () Bool)

(assert (=> b!964204 (= e!622426 e!622428)))

(declare-fun res!438338 () Bool)

(assert (=> b!964204 (=> (not res!438338) (not e!622428))))

(declare-fun lt!347487 () Bool)

(assert (=> b!964204 (= res!438338 (not lt!347487))))

(declare-fun b!964205 () Bool)

(declare-fun e!622424 () Bool)

(declare-fun e!622427 () Bool)

(assert (=> b!964205 (= e!622424 e!622427)))

(declare-fun c!157064 () Bool)

(assert (=> b!964205 (= c!157064 (is-EmptyLang!2680 lt!347413))))

(declare-fun b!964206 () Bool)

(declare-fun res!438339 () Bool)

(assert (=> b!964206 (=> res!438339 e!622426)))

(assert (=> b!964206 (= res!438339 e!622425)))

(declare-fun res!438342 () Bool)

(assert (=> b!964206 (=> (not res!438342) (not e!622425))))

(assert (=> b!964206 (= res!438342 lt!347487)))

(declare-fun b!964207 () Bool)

(assert (=> b!964207 (= e!622424 (= lt!347487 call!60878))))

(declare-fun b!964208 () Bool)

(assert (=> b!964208 (= e!622423 (matchR!1218 (derivativeStep!618 lt!347413 (head!1771 s!10566)) (tail!1333 s!10566)))))

(declare-fun b!964209 () Bool)

(declare-fun res!438341 () Bool)

(assert (=> b!964209 (=> res!438341 e!622429)))

(assert (=> b!964209 (= res!438341 (not (isEmpty!6194 (tail!1333 s!10566))))))

(declare-fun d!285540 () Bool)

(assert (=> d!285540 e!622424))

(declare-fun c!157063 () Bool)

(assert (=> d!285540 (= c!157063 (is-EmptyExpr!2680 lt!347413))))

(assert (=> d!285540 (= lt!347487 e!622423)))

(declare-fun c!157065 () Bool)

(assert (=> d!285540 (= c!157065 (isEmpty!6194 s!10566))))

(assert (=> d!285540 (validRegex!1149 lt!347413)))

(assert (=> d!285540 (= (matchR!1218 lt!347413 s!10566) lt!347487)))

(declare-fun b!964203 () Bool)

(declare-fun res!438343 () Bool)

(assert (=> b!964203 (=> (not res!438343) (not e!622425))))

(assert (=> b!964203 (= res!438343 (isEmpty!6194 (tail!1333 s!10566)))))

(declare-fun b!964210 () Bool)

(declare-fun res!438344 () Bool)

(assert (=> b!964210 (=> res!438344 e!622426)))

(assert (=> b!964210 (= res!438344 (not (is-ElementMatch!2680 lt!347413)))))

(assert (=> b!964210 (= e!622427 e!622426)))

(declare-fun b!964211 () Bool)

(assert (=> b!964211 (= e!622427 (not lt!347487))))

(assert (= (and d!285540 c!157065) b!964199))

(assert (= (and d!285540 (not c!157065)) b!964208))

(assert (= (and d!285540 c!157063) b!964207))

(assert (= (and d!285540 (not c!157063)) b!964205))

(assert (= (and b!964205 c!157064) b!964211))

(assert (= (and b!964205 (not c!157064)) b!964210))

(assert (= (and b!964210 (not res!438344)) b!964206))

(assert (= (and b!964206 res!438342) b!964200))

(assert (= (and b!964200 res!438340) b!964203))

(assert (= (and b!964203 res!438343) b!964198))

(assert (= (and b!964206 (not res!438339)) b!964204))

(assert (= (and b!964204 res!438338) b!964201))

(assert (= (and b!964201 (not res!438337)) b!964209))

(assert (= (and b!964209 (not res!438341)) b!964202))

(assert (= (or b!964207 b!964200 b!964201) bm!60873))

(assert (=> d!285540 m!1170799))

(declare-fun m!1171007 () Bool)

(assert (=> d!285540 m!1171007))

(assert (=> b!964203 m!1170921))

(assert (=> b!964203 m!1170921))

(assert (=> b!964203 m!1170923))

(assert (=> bm!60873 m!1170799))

(assert (=> b!964198 m!1170925))

(assert (=> b!964209 m!1170921))

(assert (=> b!964209 m!1170921))

(assert (=> b!964209 m!1170923))

(declare-fun m!1171009 () Bool)

(assert (=> b!964199 m!1171009))

(assert (=> b!964202 m!1170925))

(assert (=> b!964208 m!1170925))

(assert (=> b!964208 m!1170925))

(declare-fun m!1171011 () Bool)

(assert (=> b!964208 m!1171011))

(assert (=> b!964208 m!1170921))

(assert (=> b!964208 m!1171011))

(assert (=> b!964208 m!1170921))

(declare-fun m!1171013 () Bool)

(assert (=> b!964208 m!1171013))

(assert (=> b!963886 d!285540))

(declare-fun bm!60884 () Bool)

(declare-fun call!60891 () Regex!2680)

(declare-fun call!60890 () Regex!2680)

(assert (=> bm!60884 (= call!60891 call!60890)))

(declare-fun d!285542 () Bool)

(declare-fun e!622443 () Bool)

(assert (=> d!285542 e!622443))

(declare-fun res!438347 () Bool)

(assert (=> d!285542 (=> (not res!438347) (not e!622443))))

(declare-fun lt!347493 () Regex!2680)

(assert (=> d!285542 (= res!438347 (validRegex!1149 lt!347493))))

(declare-fun e!622446 () Regex!2680)

(assert (=> d!285542 (= lt!347493 e!622446)))

(declare-fun c!157077 () Bool)

(assert (=> d!285542 (= c!157077 (and (is-Concat!4513 (reg!3009 r!15766)) (is-EmptyExpr!2680 (regOne!5872 (reg!3009 r!15766)))))))

(assert (=> d!285542 (validRegex!1149 (reg!3009 r!15766))))

(assert (=> d!285542 (= (removeUselessConcat!327 (reg!3009 r!15766)) lt!347493)))

(declare-fun bm!60885 () Bool)

(declare-fun call!60892 () Regex!2680)

(declare-fun call!60889 () Regex!2680)

(assert (=> bm!60885 (= call!60892 call!60889)))

(declare-fun c!157079 () Bool)

(declare-fun bm!60886 () Bool)

(declare-fun c!157080 () Bool)

(assert (=> bm!60886 (= call!60890 (removeUselessConcat!327 (ite c!157079 (regTwo!5872 (reg!3009 r!15766)) (ite c!157080 (regTwo!5873 (reg!3009 r!15766)) (reg!3009 (reg!3009 r!15766))))))))

(declare-fun b!964234 () Bool)

(declare-fun e!622445 () Regex!2680)

(declare-fun call!60893 () Regex!2680)

(assert (=> b!964234 (= e!622445 (Union!2680 call!60893 call!60891))))

(declare-fun b!964235 () Bool)

(declare-fun e!622442 () Regex!2680)

(assert (=> b!964235 (= e!622442 (Concat!4513 call!60893 call!60890))))

(declare-fun b!964236 () Bool)

(assert (=> b!964236 (= c!157079 (is-Concat!4513 (reg!3009 r!15766)))))

(declare-fun e!622447 () Regex!2680)

(assert (=> b!964236 (= e!622447 e!622442)))

(declare-fun b!964237 () Bool)

(assert (=> b!964237 (= e!622442 e!622445)))

(assert (=> b!964237 (= c!157080 (is-Union!2680 (reg!3009 r!15766)))))

(declare-fun b!964238 () Bool)

(declare-fun c!157078 () Bool)

(assert (=> b!964238 (= c!157078 (is-Star!2680 (reg!3009 r!15766)))))

(declare-fun e!622444 () Regex!2680)

(assert (=> b!964238 (= e!622445 e!622444)))

(declare-fun bm!60887 () Bool)

(assert (=> bm!60887 (= call!60893 call!60892)))

(declare-fun b!964239 () Bool)

(assert (=> b!964239 (= e!622444 (Star!2680 call!60891))))

(declare-fun b!964240 () Bool)

(assert (=> b!964240 (= e!622446 e!622447)))

(declare-fun c!157076 () Bool)

(assert (=> b!964240 (= c!157076 (and (is-Concat!4513 (reg!3009 r!15766)) (is-EmptyExpr!2680 (regTwo!5872 (reg!3009 r!15766)))))))

(declare-fun b!964241 () Bool)

(assert (=> b!964241 (= e!622444 (reg!3009 r!15766))))

(declare-fun bm!60888 () Bool)

(assert (=> bm!60888 (= call!60889 (removeUselessConcat!327 (ite c!157077 (regTwo!5872 (reg!3009 r!15766)) (ite (or c!157076 c!157079) (regOne!5872 (reg!3009 r!15766)) (regOne!5873 (reg!3009 r!15766))))))))

(declare-fun b!964242 () Bool)

(assert (=> b!964242 (= e!622447 call!60892)))

(declare-fun b!964243 () Bool)

(assert (=> b!964243 (= e!622443 (= (nullable!810 lt!347493) (nullable!810 (reg!3009 r!15766))))))

(declare-fun b!964244 () Bool)

(assert (=> b!964244 (= e!622446 call!60889)))

(assert (= (and d!285542 c!157077) b!964244))

(assert (= (and d!285542 (not c!157077)) b!964240))

(assert (= (and b!964240 c!157076) b!964242))

(assert (= (and b!964240 (not c!157076)) b!964236))

(assert (= (and b!964236 c!157079) b!964235))

(assert (= (and b!964236 (not c!157079)) b!964237))

(assert (= (and b!964237 c!157080) b!964234))

(assert (= (and b!964237 (not c!157080)) b!964238))

(assert (= (and b!964238 c!157078) b!964239))

(assert (= (and b!964238 (not c!157078)) b!964241))

(assert (= (or b!964234 b!964239) bm!60884))

(assert (= (or b!964235 bm!60884) bm!60886))

(assert (= (or b!964235 b!964234) bm!60887))

(assert (= (or b!964242 bm!60887) bm!60885))

(assert (= (or b!964244 bm!60885) bm!60888))

(assert (= (and d!285542 res!438347) b!964243))

(declare-fun m!1171019 () Bool)

(assert (=> d!285542 m!1171019))

(assert (=> d!285542 m!1170967))

(declare-fun m!1171021 () Bool)

(assert (=> bm!60886 m!1171021))

(declare-fun m!1171023 () Bool)

(assert (=> bm!60888 m!1171023))

(declare-fun m!1171025 () Bool)

(assert (=> b!964243 m!1171025))

(assert (=> b!964243 m!1170911))

(assert (=> b!963886 d!285542))

(declare-fun d!285546 () Bool)

(assert (=> d!285546 (= (Exists!423 lambda!33795) (choose!6082 lambda!33795))))

(declare-fun bs!241294 () Bool)

(assert (= bs!241294 d!285546))

(declare-fun m!1171027 () Bool)

(assert (=> bs!241294 m!1171027))

(assert (=> b!963886 d!285546))

(declare-fun b!964290 () Bool)

(declare-fun e!622481 () Option!2261)

(declare-fun e!622483 () Option!2261)

(assert (=> b!964290 (= e!622481 e!622483)))

(declare-fun c!157092 () Bool)

(assert (=> b!964290 (= c!157092 (is-Nil!9894 s!10566))))

(declare-fun b!964291 () Bool)

(declare-fun res!438376 () Bool)

(declare-fun e!622479 () Bool)

(assert (=> b!964291 (=> (not res!438376) (not e!622479))))

(declare-fun lt!347500 () Option!2261)

(assert (=> b!964291 (= res!438376 (matchR!1218 (reg!3009 r!15766) (_1!6445 (get!3385 lt!347500))))))

(declare-fun b!964292 () Bool)

(assert (=> b!964292 (= e!622483 None!2260)))

(declare-fun d!285548 () Bool)

(declare-fun e!622482 () Bool)

(assert (=> d!285548 e!622482))

(declare-fun res!438375 () Bool)

(assert (=> d!285548 (=> res!438375 e!622482)))

(assert (=> d!285548 (= res!438375 e!622479)))

(declare-fun res!438377 () Bool)

(assert (=> d!285548 (=> (not res!438377) (not e!622479))))

(assert (=> d!285548 (= res!438377 (isDefined!1903 lt!347500))))

(assert (=> d!285548 (= lt!347500 e!622481)))

(declare-fun c!157091 () Bool)

(declare-fun e!622480 () Bool)

(assert (=> d!285548 (= c!157091 e!622480)))

(declare-fun res!438374 () Bool)

(assert (=> d!285548 (=> (not res!438374) (not e!622480))))

(assert (=> d!285548 (= res!438374 (matchR!1218 (reg!3009 r!15766) Nil!9894))))

(assert (=> d!285548 (validRegex!1149 (reg!3009 r!15766))))

(assert (=> d!285548 (= (findConcatSeparation!367 (reg!3009 r!15766) lt!347411 Nil!9894 s!10566 s!10566) lt!347500)))

(declare-fun b!964293 () Bool)

(assert (=> b!964293 (= e!622479 (= (++!2668 (_1!6445 (get!3385 lt!347500)) (_2!6445 (get!3385 lt!347500))) s!10566))))

(declare-fun b!964294 () Bool)

(declare-fun lt!347502 () Unit!15015)

(declare-fun lt!347501 () Unit!15015)

(assert (=> b!964294 (= lt!347502 lt!347501)))

(assert (=> b!964294 (= (++!2668 (++!2668 Nil!9894 (Cons!9894 (h!15295 s!10566) Nil!9894)) (t!100956 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!273 (List!9910 C!5930 List!9910 List!9910) Unit!15015)

(assert (=> b!964294 (= lt!347501 (lemmaMoveElementToOtherListKeepsConcatEq!273 Nil!9894 (h!15295 s!10566) (t!100956 s!10566) s!10566))))

(assert (=> b!964294 (= e!622483 (findConcatSeparation!367 (reg!3009 r!15766) lt!347411 (++!2668 Nil!9894 (Cons!9894 (h!15295 s!10566) Nil!9894)) (t!100956 s!10566) s!10566))))

(declare-fun b!964295 () Bool)

(assert (=> b!964295 (= e!622481 (Some!2260 (tuple2!11239 Nil!9894 s!10566)))))

(declare-fun b!964296 () Bool)

(assert (=> b!964296 (= e!622482 (not (isDefined!1903 lt!347500)))))

(declare-fun b!964297 () Bool)

(assert (=> b!964297 (= e!622480 (matchR!1218 lt!347411 s!10566))))

(declare-fun b!964298 () Bool)

(declare-fun res!438373 () Bool)

(assert (=> b!964298 (=> (not res!438373) (not e!622479))))

(assert (=> b!964298 (= res!438373 (matchR!1218 lt!347411 (_2!6445 (get!3385 lt!347500))))))

(assert (= (and d!285548 res!438374) b!964297))

(assert (= (and d!285548 c!157091) b!964295))

(assert (= (and d!285548 (not c!157091)) b!964290))

(assert (= (and b!964290 c!157092) b!964292))

(assert (= (and b!964290 (not c!157092)) b!964294))

(assert (= (and d!285548 res!438377) b!964291))

(assert (= (and b!964291 res!438376) b!964298))

(assert (= (and b!964298 res!438373) b!964293))

(assert (= (and d!285548 (not res!438375)) b!964296))

(declare-fun m!1171033 () Bool)

(assert (=> b!964294 m!1171033))

(assert (=> b!964294 m!1171033))

(declare-fun m!1171035 () Bool)

(assert (=> b!964294 m!1171035))

(declare-fun m!1171037 () Bool)

(assert (=> b!964294 m!1171037))

(assert (=> b!964294 m!1171033))

(declare-fun m!1171039 () Bool)

(assert (=> b!964294 m!1171039))

(declare-fun m!1171041 () Bool)

(assert (=> b!964297 m!1171041))

(declare-fun m!1171043 () Bool)

(assert (=> b!964298 m!1171043))

(declare-fun m!1171045 () Bool)

(assert (=> b!964298 m!1171045))

(assert (=> b!964291 m!1171043))

(declare-fun m!1171047 () Bool)

(assert (=> b!964291 m!1171047))

(declare-fun m!1171049 () Bool)

(assert (=> b!964296 m!1171049))

(assert (=> d!285548 m!1171049))

(declare-fun m!1171051 () Bool)

(assert (=> d!285548 m!1171051))

(assert (=> d!285548 m!1170967))

(assert (=> b!964293 m!1171043))

(declare-fun m!1171053 () Bool)

(assert (=> b!964293 m!1171053))

(assert (=> b!963886 d!285548))

(declare-fun b!964299 () Bool)

(declare-fun e!622486 () Bool)

(assert (=> b!964299 (= e!622486 (= (head!1771 (_2!6445 lt!347406)) (c!157009 lt!347413)))))

(declare-fun bm!60898 () Bool)

(declare-fun call!60903 () Bool)

(assert (=> bm!60898 (= call!60903 (isEmpty!6194 (_2!6445 lt!347406)))))

(declare-fun b!964300 () Bool)

(declare-fun e!622484 () Bool)

(assert (=> b!964300 (= e!622484 (nullable!810 lt!347413))))

(declare-fun b!964301 () Bool)

(declare-fun res!438381 () Bool)

(assert (=> b!964301 (=> (not res!438381) (not e!622486))))

(assert (=> b!964301 (= res!438381 (not call!60903))))

(declare-fun b!964302 () Bool)

(declare-fun e!622489 () Bool)

(declare-fun e!622490 () Bool)

(assert (=> b!964302 (= e!622489 e!622490)))

(declare-fun res!438378 () Bool)

(assert (=> b!964302 (=> res!438378 e!622490)))

(assert (=> b!964302 (= res!438378 call!60903)))

(declare-fun b!964303 () Bool)

(assert (=> b!964303 (= e!622490 (not (= (head!1771 (_2!6445 lt!347406)) (c!157009 lt!347413))))))

(declare-fun b!964305 () Bool)

(declare-fun e!622487 () Bool)

(assert (=> b!964305 (= e!622487 e!622489)))

(declare-fun res!438379 () Bool)

(assert (=> b!964305 (=> (not res!438379) (not e!622489))))

(declare-fun lt!347503 () Bool)

(assert (=> b!964305 (= res!438379 (not lt!347503))))

(declare-fun b!964306 () Bool)

(declare-fun e!622485 () Bool)

(declare-fun e!622488 () Bool)

(assert (=> b!964306 (= e!622485 e!622488)))

(declare-fun c!157094 () Bool)

(assert (=> b!964306 (= c!157094 (is-EmptyLang!2680 lt!347413))))

(declare-fun b!964307 () Bool)

(declare-fun res!438380 () Bool)

(assert (=> b!964307 (=> res!438380 e!622487)))

(assert (=> b!964307 (= res!438380 e!622486)))

(declare-fun res!438383 () Bool)

(assert (=> b!964307 (=> (not res!438383) (not e!622486))))

(assert (=> b!964307 (= res!438383 lt!347503)))

(declare-fun b!964308 () Bool)

(assert (=> b!964308 (= e!622485 (= lt!347503 call!60903))))

(declare-fun b!964309 () Bool)

(assert (=> b!964309 (= e!622484 (matchR!1218 (derivativeStep!618 lt!347413 (head!1771 (_2!6445 lt!347406))) (tail!1333 (_2!6445 lt!347406))))))

(declare-fun b!964310 () Bool)

(declare-fun res!438382 () Bool)

(assert (=> b!964310 (=> res!438382 e!622490)))

(assert (=> b!964310 (= res!438382 (not (isEmpty!6194 (tail!1333 (_2!6445 lt!347406)))))))

(declare-fun d!285552 () Bool)

(assert (=> d!285552 e!622485))

(declare-fun c!157093 () Bool)

(assert (=> d!285552 (= c!157093 (is-EmptyExpr!2680 lt!347413))))

(assert (=> d!285552 (= lt!347503 e!622484)))

(declare-fun c!157095 () Bool)

(assert (=> d!285552 (= c!157095 (isEmpty!6194 (_2!6445 lt!347406)))))

(assert (=> d!285552 (validRegex!1149 lt!347413)))

(assert (=> d!285552 (= (matchR!1218 lt!347413 (_2!6445 lt!347406)) lt!347503)))

(declare-fun b!964304 () Bool)

(declare-fun res!438384 () Bool)

(assert (=> b!964304 (=> (not res!438384) (not e!622486))))

(assert (=> b!964304 (= res!438384 (isEmpty!6194 (tail!1333 (_2!6445 lt!347406))))))

(declare-fun b!964311 () Bool)

(declare-fun res!438385 () Bool)

(assert (=> b!964311 (=> res!438385 e!622487)))

(assert (=> b!964311 (= res!438385 (not (is-ElementMatch!2680 lt!347413)))))

(assert (=> b!964311 (= e!622488 e!622487)))

(declare-fun b!964312 () Bool)

(assert (=> b!964312 (= e!622488 (not lt!347503))))

(assert (= (and d!285552 c!157095) b!964300))

(assert (= (and d!285552 (not c!157095)) b!964309))

(assert (= (and d!285552 c!157093) b!964308))

(assert (= (and d!285552 (not c!157093)) b!964306))

(assert (= (and b!964306 c!157094) b!964312))

(assert (= (and b!964306 (not c!157094)) b!964311))

(assert (= (and b!964311 (not res!438385)) b!964307))

(assert (= (and b!964307 res!438383) b!964301))

(assert (= (and b!964301 res!438381) b!964304))

(assert (= (and b!964304 res!438384) b!964299))

(assert (= (and b!964307 (not res!438380)) b!964305))

(assert (= (and b!964305 res!438379) b!964302))

(assert (= (and b!964302 (not res!438378)) b!964310))

(assert (= (and b!964310 (not res!438382)) b!964303))

(assert (= (or b!964308 b!964301 b!964302) bm!60898))

(declare-fun m!1171055 () Bool)

(assert (=> d!285552 m!1171055))

(assert (=> d!285552 m!1171007))

(declare-fun m!1171057 () Bool)

(assert (=> b!964304 m!1171057))

(assert (=> b!964304 m!1171057))

(declare-fun m!1171059 () Bool)

(assert (=> b!964304 m!1171059))

(assert (=> bm!60898 m!1171055))

(declare-fun m!1171061 () Bool)

(assert (=> b!964299 m!1171061))

(assert (=> b!964310 m!1171057))

(assert (=> b!964310 m!1171057))

(assert (=> b!964310 m!1171059))

(assert (=> b!964300 m!1171009))

(assert (=> b!964303 m!1171061))

(assert (=> b!964309 m!1171061))

(assert (=> b!964309 m!1171061))

(declare-fun m!1171063 () Bool)

(assert (=> b!964309 m!1171063))

(assert (=> b!964309 m!1171057))

(assert (=> b!964309 m!1171063))

(assert (=> b!964309 m!1171057))

(declare-fun m!1171065 () Bool)

(assert (=> b!964309 m!1171065))

(assert (=> b!963889 d!285552))

(declare-fun d!285554 () Bool)

(declare-fun lt!347508 () Int)

(assert (=> d!285554 (>= lt!347508 0)))

(declare-fun e!622497 () Int)

(assert (=> d!285554 (= lt!347508 e!622497)))

(declare-fun c!157100 () Bool)

(assert (=> d!285554 (= c!157100 (is-Nil!9894 (_2!6445 lt!347406)))))

(assert (=> d!285554 (= (size!7930 (_2!6445 lt!347406)) lt!347508)))

(declare-fun b!964325 () Bool)

(assert (=> b!964325 (= e!622497 0)))

(declare-fun b!964326 () Bool)

(assert (=> b!964326 (= e!622497 (+ 1 (size!7930 (t!100956 (_2!6445 lt!347406)))))))

(assert (= (and d!285554 c!157100) b!964325))

(assert (= (and d!285554 (not c!157100)) b!964326))

(declare-fun m!1171067 () Bool)

(assert (=> b!964326 m!1171067))

(assert (=> b!963884 d!285554))

(declare-fun d!285556 () Bool)

(declare-fun lt!347509 () Int)

(assert (=> d!285556 (>= lt!347509 0)))

(declare-fun e!622498 () Int)

(assert (=> d!285556 (= lt!347509 e!622498)))

(declare-fun c!157101 () Bool)

(assert (=> d!285556 (= c!157101 (is-Nil!9894 s!10566))))

(assert (=> d!285556 (= (size!7930 s!10566) lt!347509)))

(declare-fun b!964327 () Bool)

(assert (=> b!964327 (= e!622498 0)))

(declare-fun b!964328 () Bool)

(assert (=> b!964328 (= e!622498 (+ 1 (size!7930 (t!100956 s!10566))))))

(assert (= (and d!285556 c!157101) b!964327))

(assert (= (and d!285556 (not c!157101)) b!964328))

(declare-fun m!1171069 () Bool)

(assert (=> b!964328 m!1171069))

(assert (=> b!963884 d!285556))

(declare-fun b!964329 () Bool)

(declare-fun e!622501 () Bool)

(assert (=> b!964329 (= e!622501 (= (head!1771 (_1!6445 lt!347406)) (c!157009 (reg!3009 r!15766))))))

(declare-fun bm!60899 () Bool)

(declare-fun call!60904 () Bool)

(assert (=> bm!60899 (= call!60904 (isEmpty!6194 (_1!6445 lt!347406)))))

(declare-fun b!964330 () Bool)

(declare-fun e!622499 () Bool)

(assert (=> b!964330 (= e!622499 (nullable!810 (reg!3009 r!15766)))))

(declare-fun b!964331 () Bool)

(declare-fun res!438393 () Bool)

(assert (=> b!964331 (=> (not res!438393) (not e!622501))))

(assert (=> b!964331 (= res!438393 (not call!60904))))

(declare-fun b!964332 () Bool)

(declare-fun e!622504 () Bool)

(declare-fun e!622505 () Bool)

(assert (=> b!964332 (= e!622504 e!622505)))

(declare-fun res!438390 () Bool)

(assert (=> b!964332 (=> res!438390 e!622505)))

(assert (=> b!964332 (= res!438390 call!60904)))

(declare-fun b!964333 () Bool)

(assert (=> b!964333 (= e!622505 (not (= (head!1771 (_1!6445 lt!347406)) (c!157009 (reg!3009 r!15766)))))))

(declare-fun b!964335 () Bool)

(declare-fun e!622502 () Bool)

(assert (=> b!964335 (= e!622502 e!622504)))

(declare-fun res!438391 () Bool)

(assert (=> b!964335 (=> (not res!438391) (not e!622504))))

(declare-fun lt!347510 () Bool)

(assert (=> b!964335 (= res!438391 (not lt!347510))))

(declare-fun b!964336 () Bool)

(declare-fun e!622500 () Bool)

(declare-fun e!622503 () Bool)

(assert (=> b!964336 (= e!622500 e!622503)))

(declare-fun c!157103 () Bool)

(assert (=> b!964336 (= c!157103 (is-EmptyLang!2680 (reg!3009 r!15766)))))

(declare-fun b!964337 () Bool)

(declare-fun res!438392 () Bool)

(assert (=> b!964337 (=> res!438392 e!622502)))

(assert (=> b!964337 (= res!438392 e!622501)))

(declare-fun res!438395 () Bool)

(assert (=> b!964337 (=> (not res!438395) (not e!622501))))

(assert (=> b!964337 (= res!438395 lt!347510)))

(declare-fun b!964338 () Bool)

(assert (=> b!964338 (= e!622500 (= lt!347510 call!60904))))

(declare-fun b!964339 () Bool)

(assert (=> b!964339 (= e!622499 (matchR!1218 (derivativeStep!618 (reg!3009 r!15766) (head!1771 (_1!6445 lt!347406))) (tail!1333 (_1!6445 lt!347406))))))

(declare-fun b!964340 () Bool)

(declare-fun res!438394 () Bool)

(assert (=> b!964340 (=> res!438394 e!622505)))

(assert (=> b!964340 (= res!438394 (not (isEmpty!6194 (tail!1333 (_1!6445 lt!347406)))))))

(declare-fun d!285558 () Bool)

(assert (=> d!285558 e!622500))

(declare-fun c!157102 () Bool)

(assert (=> d!285558 (= c!157102 (is-EmptyExpr!2680 (reg!3009 r!15766)))))

(assert (=> d!285558 (= lt!347510 e!622499)))

(declare-fun c!157104 () Bool)

(assert (=> d!285558 (= c!157104 (isEmpty!6194 (_1!6445 lt!347406)))))

(assert (=> d!285558 (validRegex!1149 (reg!3009 r!15766))))

(assert (=> d!285558 (= (matchR!1218 (reg!3009 r!15766) (_1!6445 lt!347406)) lt!347510)))

(declare-fun b!964334 () Bool)

(declare-fun res!438396 () Bool)

(assert (=> b!964334 (=> (not res!438396) (not e!622501))))

(assert (=> b!964334 (= res!438396 (isEmpty!6194 (tail!1333 (_1!6445 lt!347406))))))

(declare-fun b!964341 () Bool)

(declare-fun res!438397 () Bool)

(assert (=> b!964341 (=> res!438397 e!622502)))

(assert (=> b!964341 (= res!438397 (not (is-ElementMatch!2680 (reg!3009 r!15766))))))

(assert (=> b!964341 (= e!622503 e!622502)))

(declare-fun b!964342 () Bool)

(assert (=> b!964342 (= e!622503 (not lt!347510))))

(assert (= (and d!285558 c!157104) b!964330))

(assert (= (and d!285558 (not c!157104)) b!964339))

(assert (= (and d!285558 c!157102) b!964338))

(assert (= (and d!285558 (not c!157102)) b!964336))

(assert (= (and b!964336 c!157103) b!964342))

(assert (= (and b!964336 (not c!157103)) b!964341))

(assert (= (and b!964341 (not res!438397)) b!964337))

(assert (= (and b!964337 res!438395) b!964331))

(assert (= (and b!964331 res!438393) b!964334))

(assert (= (and b!964334 res!438396) b!964329))

(assert (= (and b!964337 (not res!438392)) b!964335))

(assert (= (and b!964335 res!438391) b!964332))

(assert (= (and b!964332 (not res!438390)) b!964340))

(assert (= (and b!964340 (not res!438394)) b!964333))

(assert (= (or b!964338 b!964331 b!964332) bm!60899))

(assert (=> d!285558 m!1170893))

(assert (=> d!285558 m!1170967))

(assert (=> b!964334 m!1170897))

(assert (=> b!964334 m!1170897))

(assert (=> b!964334 m!1170899))

(assert (=> bm!60899 m!1170893))

(assert (=> b!964329 m!1170901))

(assert (=> b!964340 m!1170897))

(assert (=> b!964340 m!1170897))

(assert (=> b!964340 m!1170899))

(assert (=> b!964330 m!1170911))

(assert (=> b!964333 m!1170901))

(assert (=> b!964339 m!1170901))

(assert (=> b!964339 m!1170901))

(declare-fun m!1171071 () Bool)

(assert (=> b!964339 m!1171071))

(assert (=> b!964339 m!1170897))

(assert (=> b!964339 m!1171071))

(assert (=> b!964339 m!1170897))

(declare-fun m!1171073 () Bool)

(assert (=> b!964339 m!1171073))

(assert (=> b!963884 d!285558))

(declare-fun d!285560 () Bool)

(assert (=> d!285560 (= (matchR!1218 (reg!3009 r!15766) (_1!6445 lt!347406)) (matchR!1218 (removeUselessConcat!327 (reg!3009 r!15766)) (_1!6445 lt!347406)))))

(declare-fun lt!347514 () Unit!15015)

(declare-fun choose!6083 (Regex!2680 List!9910) Unit!15015)

(assert (=> d!285560 (= lt!347514 (choose!6083 (reg!3009 r!15766) (_1!6445 lt!347406)))))

(assert (=> d!285560 (validRegex!1149 (reg!3009 r!15766))))

(assert (=> d!285560 (= (lemmaRemoveUselessConcatSound!179 (reg!3009 r!15766) (_1!6445 lt!347406)) lt!347514)))

(declare-fun bs!241295 () Bool)

(assert (= bs!241295 d!285560))

(assert (=> bs!241295 m!1170815))

(declare-fun m!1171083 () Bool)

(assert (=> bs!241295 m!1171083))

(declare-fun m!1171087 () Bool)

(assert (=> bs!241295 m!1171087))

(assert (=> bs!241295 m!1170815))

(assert (=> bs!241295 m!1170809))

(assert (=> bs!241295 m!1170967))

(assert (=> b!963884 d!285560))

(declare-fun b!964347 () Bool)

(declare-fun e!622510 () Option!2261)

(declare-fun e!622512 () Option!2261)

(assert (=> b!964347 (= e!622510 e!622512)))

(declare-fun c!157107 () Bool)

(assert (=> b!964347 (= c!157107 (is-Nil!9894 s!10566))))

(declare-fun b!964348 () Bool)

(declare-fun res!438403 () Bool)

(declare-fun e!622508 () Bool)

(assert (=> b!964348 (=> (not res!438403) (not e!622508))))

(declare-fun lt!347515 () Option!2261)

(assert (=> b!964348 (= res!438403 (matchR!1218 lt!347412 (_1!6445 (get!3385 lt!347515))))))

(declare-fun b!964349 () Bool)

(assert (=> b!964349 (= e!622512 None!2260)))

(declare-fun d!285562 () Bool)

(declare-fun e!622511 () Bool)

(assert (=> d!285562 e!622511))

(declare-fun res!438402 () Bool)

(assert (=> d!285562 (=> res!438402 e!622511)))

(assert (=> d!285562 (= res!438402 e!622508)))

(declare-fun res!438404 () Bool)

(assert (=> d!285562 (=> (not res!438404) (not e!622508))))

(assert (=> d!285562 (= res!438404 (isDefined!1903 lt!347515))))

(assert (=> d!285562 (= lt!347515 e!622510)))

(declare-fun c!157106 () Bool)

(declare-fun e!622509 () Bool)

(assert (=> d!285562 (= c!157106 e!622509)))

(declare-fun res!438401 () Bool)

(assert (=> d!285562 (=> (not res!438401) (not e!622509))))

(assert (=> d!285562 (= res!438401 (matchR!1218 lt!347412 Nil!9894))))

(assert (=> d!285562 (validRegex!1149 lt!347412)))

(assert (=> d!285562 (= (findConcatSeparation!367 lt!347412 lt!347413 Nil!9894 s!10566 s!10566) lt!347515)))

(declare-fun b!964350 () Bool)

(assert (=> b!964350 (= e!622508 (= (++!2668 (_1!6445 (get!3385 lt!347515)) (_2!6445 (get!3385 lt!347515))) s!10566))))

(declare-fun b!964351 () Bool)

(declare-fun lt!347517 () Unit!15015)

(declare-fun lt!347516 () Unit!15015)

(assert (=> b!964351 (= lt!347517 lt!347516)))

(assert (=> b!964351 (= (++!2668 (++!2668 Nil!9894 (Cons!9894 (h!15295 s!10566) Nil!9894)) (t!100956 s!10566)) s!10566)))

(assert (=> b!964351 (= lt!347516 (lemmaMoveElementToOtherListKeepsConcatEq!273 Nil!9894 (h!15295 s!10566) (t!100956 s!10566) s!10566))))

(assert (=> b!964351 (= e!622512 (findConcatSeparation!367 lt!347412 lt!347413 (++!2668 Nil!9894 (Cons!9894 (h!15295 s!10566) Nil!9894)) (t!100956 s!10566) s!10566))))

(declare-fun b!964352 () Bool)

(assert (=> b!964352 (= e!622510 (Some!2260 (tuple2!11239 Nil!9894 s!10566)))))

(declare-fun b!964353 () Bool)

(assert (=> b!964353 (= e!622511 (not (isDefined!1903 lt!347515)))))

(declare-fun b!964354 () Bool)

(assert (=> b!964354 (= e!622509 (matchR!1218 lt!347413 s!10566))))

(declare-fun b!964355 () Bool)

(declare-fun res!438400 () Bool)

(assert (=> b!964355 (=> (not res!438400) (not e!622508))))

(assert (=> b!964355 (= res!438400 (matchR!1218 lt!347413 (_2!6445 (get!3385 lt!347515))))))

(assert (= (and d!285562 res!438401) b!964354))

(assert (= (and d!285562 c!157106) b!964352))

(assert (= (and d!285562 (not c!157106)) b!964347))

(assert (= (and b!964347 c!157107) b!964349))

(assert (= (and b!964347 (not c!157107)) b!964351))

(assert (= (and d!285562 res!438404) b!964348))

(assert (= (and b!964348 res!438403) b!964355))

(assert (= (and b!964355 res!438400) b!964350))

(assert (= (and d!285562 (not res!438402)) b!964353))

(assert (=> b!964351 m!1171033))

(assert (=> b!964351 m!1171033))

(assert (=> b!964351 m!1171035))

(assert (=> b!964351 m!1171037))

(assert (=> b!964351 m!1171033))

(declare-fun m!1171091 () Bool)

(assert (=> b!964351 m!1171091))

(assert (=> b!964354 m!1170817))

(declare-fun m!1171093 () Bool)

(assert (=> b!964355 m!1171093))

(declare-fun m!1171095 () Bool)

(assert (=> b!964355 m!1171095))

(assert (=> b!964348 m!1171093))

(declare-fun m!1171097 () Bool)

(assert (=> b!964348 m!1171097))

(declare-fun m!1171099 () Bool)

(assert (=> b!964353 m!1171099))

(assert (=> d!285562 m!1171099))

(declare-fun m!1171101 () Bool)

(assert (=> d!285562 m!1171101))

(assert (=> d!285562 m!1170895))

(assert (=> b!964350 m!1171093))

(declare-fun m!1171103 () Bool)

(assert (=> b!964350 m!1171103))

(assert (=> b!963890 d!285562))

(declare-fun d!285566 () Bool)

(assert (=> d!285566 (= (matchR!1218 lt!347413 s!10566) (matchRSpec!481 lt!347413 s!10566))))

(declare-fun lt!347518 () Unit!15015)

(assert (=> d!285566 (= lt!347518 (choose!6079 lt!347413 s!10566))))

(assert (=> d!285566 (validRegex!1149 lt!347413)))

(assert (=> d!285566 (= (mainMatchTheorem!481 lt!347413 s!10566) lt!347518)))

(declare-fun bs!241296 () Bool)

(assert (= bs!241296 d!285566))

(assert (=> bs!241296 m!1170817))

(assert (=> bs!241296 m!1170789))

(declare-fun m!1171105 () Bool)

(assert (=> bs!241296 m!1171105))

(assert (=> bs!241296 m!1171007))

(assert (=> b!963890 d!285566))

(declare-fun d!285568 () Bool)

(assert (=> d!285568 (= (isEmpty!6194 s!10566) (is-Nil!9894 s!10566))))

(assert (=> b!963890 d!285568))

(declare-fun d!285570 () Bool)

(assert (=> d!285570 (= (Exists!423 lambda!33797) (choose!6082 lambda!33797))))

(declare-fun bs!241297 () Bool)

(assert (= bs!241297 d!285570))

(declare-fun m!1171107 () Bool)

(assert (=> bs!241297 m!1171107))

(assert (=> b!963890 d!285570))

(declare-fun d!285572 () Bool)

(assert (=> d!285572 (= (Exists!423 lambda!33798) (choose!6082 lambda!33798))))

(declare-fun bs!241298 () Bool)

(assert (= bs!241298 d!285572))

(declare-fun m!1171109 () Bool)

(assert (=> bs!241298 m!1171109))

(assert (=> b!963890 d!285572))

(declare-fun bs!241299 () Bool)

(declare-fun b!964364 () Bool)

(assert (= bs!241299 (and b!964364 d!285526)))

(declare-fun lambda!33830 () Int)

(assert (=> bs!241299 (= (and (= (reg!3009 lt!347413) (reg!3009 r!15766)) (= lt!347413 (Star!2680 (reg!3009 r!15766)))) (= lambda!33830 lambda!33829))))

(declare-fun bs!241300 () Bool)

(assert (= bs!241300 (and b!964364 b!963890)))

(assert (=> bs!241300 (not (= lambda!33830 lambda!33797))))

(declare-fun bs!241301 () Bool)

(assert (= bs!241301 (and b!964364 d!285522)))

(assert (=> bs!241301 (not (= lambda!33830 lambda!33823))))

(declare-fun bs!241302 () Bool)

(assert (= bs!241302 (and b!964364 b!963886)))

(assert (=> bs!241302 (= (and (= (reg!3009 lt!347413) (reg!3009 r!15766)) (= lt!347413 lt!347411)) (= lambda!33830 lambda!33796))))

(declare-fun bs!241303 () Bool)

(assert (= bs!241303 (and b!964364 b!964074)))

(assert (=> bs!241303 (not (= lambda!33830 lambda!33820))))

(assert (=> bs!241299 (not (= lambda!33830 lambda!33828))))

(assert (=> bs!241300 (= (= (reg!3009 lt!347413) lt!347412) (= lambda!33830 lambda!33798))))

(declare-fun bs!241304 () Bool)

(assert (= bs!241304 (and b!964364 b!964077)))

(assert (=> bs!241304 (= (and (= (reg!3009 lt!347413) (reg!3009 r!15766)) (= lt!347413 r!15766)) (= lambda!33830 lambda!33819))))

(assert (=> bs!241302 (not (= lambda!33830 lambda!33795))))

(assert (=> b!964364 true))

(assert (=> b!964364 true))

(declare-fun bs!241305 () Bool)

(declare-fun b!964361 () Bool)

(assert (= bs!241305 (and b!964361 d!285526)))

(declare-fun lambda!33831 () Int)

(assert (=> bs!241305 (not (= lambda!33831 lambda!33829))))

(declare-fun bs!241306 () Bool)

(assert (= bs!241306 (and b!964361 b!963890)))

(assert (=> bs!241306 (not (= lambda!33831 lambda!33797))))

(declare-fun bs!241307 () Bool)

(assert (= bs!241307 (and b!964361 d!285522)))

(assert (=> bs!241307 (not (= lambda!33831 lambda!33823))))

(declare-fun bs!241308 () Bool)

(assert (= bs!241308 (and b!964361 b!963886)))

(assert (=> bs!241308 (not (= lambda!33831 lambda!33796))))

(declare-fun bs!241309 () Bool)

(assert (= bs!241309 (and b!964361 b!964364)))

(assert (=> bs!241309 (not (= lambda!33831 lambda!33830))))

(declare-fun bs!241310 () Bool)

(assert (= bs!241310 (and b!964361 b!964074)))

(assert (=> bs!241310 (= (and (= (regOne!5872 lt!347413) (regOne!5872 r!15766)) (= (regTwo!5872 lt!347413) (regTwo!5872 r!15766))) (= lambda!33831 lambda!33820))))

(assert (=> bs!241305 (not (= lambda!33831 lambda!33828))))

(assert (=> bs!241306 (not (= lambda!33831 lambda!33798))))

(declare-fun bs!241311 () Bool)

(assert (= bs!241311 (and b!964361 b!964077)))

(assert (=> bs!241311 (not (= lambda!33831 lambda!33819))))

(assert (=> bs!241308 (not (= lambda!33831 lambda!33795))))

(assert (=> b!964361 true))

(assert (=> b!964361 true))

(declare-fun b!964357 () Bool)

(declare-fun e!622518 () Bool)

(assert (=> b!964357 (= e!622518 (= s!10566 (Cons!9894 (c!157009 lt!347413) Nil!9894)))))

(declare-fun b!964358 () Bool)

(declare-fun e!622515 () Bool)

(declare-fun e!622517 () Bool)

(assert (=> b!964358 (= e!622515 e!622517)))

(declare-fun res!438407 () Bool)

(assert (=> b!964358 (= res!438407 (matchRSpec!481 (regOne!5873 lt!347413) s!10566))))

(assert (=> b!964358 (=> res!438407 e!622517)))

(declare-fun b!964359 () Bool)

(assert (=> b!964359 (= e!622517 (matchRSpec!481 (regTwo!5873 lt!347413) s!10566))))

(declare-fun b!964360 () Bool)

(declare-fun e!622514 () Bool)

(declare-fun e!622516 () Bool)

(assert (=> b!964360 (= e!622514 e!622516)))

(declare-fun res!438405 () Bool)

(assert (=> b!964360 (= res!438405 (not (is-EmptyLang!2680 lt!347413)))))

(assert (=> b!964360 (=> (not res!438405) (not e!622516))))

(declare-fun e!622513 () Bool)

(declare-fun call!60905 () Bool)

(assert (=> b!964361 (= e!622513 call!60905)))

(declare-fun b!964362 () Bool)

(declare-fun call!60906 () Bool)

(assert (=> b!964362 (= e!622514 call!60906)))

(declare-fun b!964356 () Bool)

(assert (=> b!964356 (= e!622515 e!622513)))

(declare-fun c!157110 () Bool)

(assert (=> b!964356 (= c!157110 (is-Star!2680 lt!347413))))

(declare-fun d!285574 () Bool)

(declare-fun c!157108 () Bool)

(assert (=> d!285574 (= c!157108 (is-EmptyExpr!2680 lt!347413))))

(assert (=> d!285574 (= (matchRSpec!481 lt!347413 s!10566) e!622514)))

(declare-fun b!964363 () Bool)

(declare-fun res!438406 () Bool)

(declare-fun e!622519 () Bool)

(assert (=> b!964363 (=> res!438406 e!622519)))

(assert (=> b!964363 (= res!438406 call!60906)))

(assert (=> b!964363 (= e!622513 e!622519)))

(assert (=> b!964364 (= e!622519 call!60905)))

(declare-fun b!964365 () Bool)

(declare-fun c!157109 () Bool)

(assert (=> b!964365 (= c!157109 (is-Union!2680 lt!347413))))

(assert (=> b!964365 (= e!622518 e!622515)))

(declare-fun bm!60900 () Bool)

(assert (=> bm!60900 (= call!60906 (isEmpty!6194 s!10566))))

(declare-fun b!964366 () Bool)

(declare-fun c!157111 () Bool)

(assert (=> b!964366 (= c!157111 (is-ElementMatch!2680 lt!347413))))

(assert (=> b!964366 (= e!622516 e!622518)))

(declare-fun bm!60901 () Bool)

(assert (=> bm!60901 (= call!60905 (Exists!423 (ite c!157110 lambda!33830 lambda!33831)))))

(assert (= (and d!285574 c!157108) b!964362))

(assert (= (and d!285574 (not c!157108)) b!964360))

(assert (= (and b!964360 res!438405) b!964366))

(assert (= (and b!964366 c!157111) b!964357))

(assert (= (and b!964366 (not c!157111)) b!964365))

(assert (= (and b!964365 c!157109) b!964358))

(assert (= (and b!964365 (not c!157109)) b!964356))

(assert (= (and b!964358 (not res!438407)) b!964359))

(assert (= (and b!964356 c!157110) b!964363))

(assert (= (and b!964356 (not c!157110)) b!964361))

(assert (= (and b!964363 (not res!438406)) b!964364))

(assert (= (or b!964364 b!964361) bm!60901))

(assert (= (or b!964362 b!964363) bm!60900))

(declare-fun m!1171111 () Bool)

(assert (=> b!964358 m!1171111))

(declare-fun m!1171113 () Bool)

(assert (=> b!964359 m!1171113))

(assert (=> bm!60900 m!1170799))

(declare-fun m!1171115 () Bool)

(assert (=> bm!60901 m!1171115))

(assert (=> b!963890 d!285574))

(declare-fun bs!241312 () Bool)

(declare-fun d!285576 () Bool)

(assert (= bs!241312 (and d!285576 d!285526)))

(declare-fun lambda!33832 () Int)

(assert (=> bs!241312 (not (= lambda!33832 lambda!33829))))

(declare-fun bs!241313 () Bool)

(assert (= bs!241313 (and d!285576 b!963890)))

(assert (=> bs!241313 (= (= (Star!2680 lt!347412) lt!347413) (= lambda!33832 lambda!33797))))

(declare-fun bs!241314 () Bool)

(assert (= bs!241314 (and d!285576 d!285522)))

(assert (=> bs!241314 (= (and (= lt!347412 (reg!3009 r!15766)) (= (Star!2680 lt!347412) lt!347411)) (= lambda!33832 lambda!33823))))

(declare-fun bs!241315 () Bool)

(assert (= bs!241315 (and d!285576 b!964361)))

(assert (=> bs!241315 (not (= lambda!33832 lambda!33831))))

(declare-fun bs!241316 () Bool)

(assert (= bs!241316 (and d!285576 b!963886)))

(assert (=> bs!241316 (not (= lambda!33832 lambda!33796))))

(declare-fun bs!241317 () Bool)

(assert (= bs!241317 (and d!285576 b!964364)))

(assert (=> bs!241317 (not (= lambda!33832 lambda!33830))))

(declare-fun bs!241318 () Bool)

(assert (= bs!241318 (and d!285576 b!964074)))

(assert (=> bs!241318 (not (= lambda!33832 lambda!33820))))

(assert (=> bs!241312 (= (and (= lt!347412 (reg!3009 r!15766)) (= (Star!2680 lt!347412) (Star!2680 (reg!3009 r!15766)))) (= lambda!33832 lambda!33828))))

(assert (=> bs!241313 (not (= lambda!33832 lambda!33798))))

(declare-fun bs!241319 () Bool)

(assert (= bs!241319 (and d!285576 b!964077)))

(assert (=> bs!241319 (not (= lambda!33832 lambda!33819))))

(assert (=> bs!241316 (= (and (= lt!347412 (reg!3009 r!15766)) (= (Star!2680 lt!347412) lt!347411)) (= lambda!33832 lambda!33795))))

(assert (=> d!285576 true))

(assert (=> d!285576 true))

(declare-fun lambda!33833 () Int)

(assert (=> bs!241312 (= (and (= lt!347412 (reg!3009 r!15766)) (= (Star!2680 lt!347412) (Star!2680 (reg!3009 r!15766)))) (= lambda!33833 lambda!33829))))

(assert (=> bs!241313 (not (= lambda!33833 lambda!33797))))

(assert (=> bs!241314 (not (= lambda!33833 lambda!33823))))

(assert (=> bs!241315 (not (= lambda!33833 lambda!33831))))

(assert (=> bs!241316 (= (and (= lt!347412 (reg!3009 r!15766)) (= (Star!2680 lt!347412) lt!347411)) (= lambda!33833 lambda!33796))))

(assert (=> bs!241317 (= (and (= lt!347412 (reg!3009 lt!347413)) (= (Star!2680 lt!347412) lt!347413)) (= lambda!33833 lambda!33830))))

(assert (=> bs!241318 (not (= lambda!33833 lambda!33820))))

(assert (=> bs!241313 (= (= (Star!2680 lt!347412) lt!347413) (= lambda!33833 lambda!33798))))

(assert (=> bs!241319 (= (and (= lt!347412 (reg!3009 r!15766)) (= (Star!2680 lt!347412) r!15766)) (= lambda!33833 lambda!33819))))

(assert (=> bs!241316 (not (= lambda!33833 lambda!33795))))

(declare-fun bs!241320 () Bool)

(assert (= bs!241320 d!285576))

(assert (=> bs!241320 (not (= lambda!33833 lambda!33832))))

(assert (=> bs!241312 (not (= lambda!33833 lambda!33828))))

(assert (=> d!285576 true))

(assert (=> d!285576 true))

(assert (=> d!285576 (= (Exists!423 lambda!33832) (Exists!423 lambda!33833))))

(declare-fun lt!347519 () Unit!15015)

(assert (=> d!285576 (= lt!347519 (choose!6081 lt!347412 s!10566))))

(assert (=> d!285576 (validRegex!1149 lt!347412)))

(assert (=> d!285576 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!141 lt!347412 s!10566) lt!347519)))

(declare-fun m!1171117 () Bool)

(assert (=> bs!241320 m!1171117))

(declare-fun m!1171119 () Bool)

(assert (=> bs!241320 m!1171119))

(declare-fun m!1171121 () Bool)

(assert (=> bs!241320 m!1171121))

(assert (=> bs!241320 m!1170895))

(assert (=> b!963890 d!285576))

(declare-fun d!285578 () Bool)

(assert (=> d!285578 (= (isDefined!1903 lt!347419) (not (isEmpty!6196 lt!347419)))))

(declare-fun bs!241321 () Bool)

(assert (= bs!241321 d!285578))

(declare-fun m!1171123 () Bool)

(assert (=> bs!241321 m!1171123))

(assert (=> b!963890 d!285578))

(declare-fun bs!241322 () Bool)

(declare-fun d!285580 () Bool)

(assert (= bs!241322 (and d!285580 d!285526)))

(declare-fun lambda!33834 () Int)

(assert (=> bs!241322 (not (= lambda!33834 lambda!33829))))

(declare-fun bs!241323 () Bool)

(assert (= bs!241323 (and d!285580 b!963890)))

(assert (=> bs!241323 (= lambda!33834 lambda!33797)))

(declare-fun bs!241324 () Bool)

(assert (= bs!241324 (and d!285580 d!285522)))

(assert (=> bs!241324 (= (and (= lt!347412 (reg!3009 r!15766)) (= lt!347413 lt!347411)) (= lambda!33834 lambda!33823))))

(declare-fun bs!241325 () Bool)

(assert (= bs!241325 (and d!285580 b!964361)))

(assert (=> bs!241325 (not (= lambda!33834 lambda!33831))))

(declare-fun bs!241326 () Bool)

(assert (= bs!241326 (and d!285580 b!963886)))

(assert (=> bs!241326 (not (= lambda!33834 lambda!33796))))

(declare-fun bs!241327 () Bool)

(assert (= bs!241327 (and d!285580 b!964364)))

(assert (=> bs!241327 (not (= lambda!33834 lambda!33830))))

(declare-fun bs!241328 () Bool)

(assert (= bs!241328 (and d!285580 b!964074)))

(assert (=> bs!241328 (not (= lambda!33834 lambda!33820))))

(declare-fun bs!241329 () Bool)

(assert (= bs!241329 (and d!285580 d!285576)))

(assert (=> bs!241329 (not (= lambda!33834 lambda!33833))))

(assert (=> bs!241323 (not (= lambda!33834 lambda!33798))))

(declare-fun bs!241330 () Bool)

(assert (= bs!241330 (and d!285580 b!964077)))

(assert (=> bs!241330 (not (= lambda!33834 lambda!33819))))

(assert (=> bs!241326 (= (and (= lt!347412 (reg!3009 r!15766)) (= lt!347413 lt!347411)) (= lambda!33834 lambda!33795))))

(assert (=> bs!241329 (= (= lt!347413 (Star!2680 lt!347412)) (= lambda!33834 lambda!33832))))

(assert (=> bs!241322 (= (and (= lt!347412 (reg!3009 r!15766)) (= lt!347413 (Star!2680 (reg!3009 r!15766)))) (= lambda!33834 lambda!33828))))

(assert (=> d!285580 true))

(assert (=> d!285580 true))

(assert (=> d!285580 true))

(assert (=> d!285580 (= (isDefined!1903 (findConcatSeparation!367 lt!347412 lt!347413 Nil!9894 s!10566 s!10566)) (Exists!423 lambda!33834))))

(declare-fun lt!347520 () Unit!15015)

(assert (=> d!285580 (= lt!347520 (choose!6080 lt!347412 lt!347413 s!10566))))

(assert (=> d!285580 (validRegex!1149 lt!347412)))

(assert (=> d!285580 (= (lemmaFindConcatSeparationEquivalentToExists!367 lt!347412 lt!347413 s!10566) lt!347520)))

(declare-fun bs!241331 () Bool)

(assert (= bs!241331 d!285580))

(declare-fun m!1171125 () Bool)

(assert (=> bs!241331 m!1171125))

(assert (=> bs!241331 m!1170895))

(assert (=> bs!241331 m!1170791))

(assert (=> bs!241331 m!1170791))

(declare-fun m!1171127 () Bool)

(assert (=> bs!241331 m!1171127))

(declare-fun m!1171129 () Bool)

(assert (=> bs!241331 m!1171129))

(assert (=> b!963890 d!285580))

(declare-fun b!964399 () Bool)

(declare-fun e!622536 () Bool)

(assert (=> b!964399 (= e!622536 tp_is_empty!5003)))

(declare-fun b!964400 () Bool)

(declare-fun tp!296055 () Bool)

(declare-fun tp!296051 () Bool)

(assert (=> b!964400 (= e!622536 (and tp!296055 tp!296051))))

(declare-fun b!964401 () Bool)

(declare-fun tp!296053 () Bool)

(assert (=> b!964401 (= e!622536 tp!296053)))

(assert (=> b!963881 (= tp!296018 e!622536)))

(declare-fun b!964402 () Bool)

(declare-fun tp!296054 () Bool)

(declare-fun tp!296052 () Bool)

(assert (=> b!964402 (= e!622536 (and tp!296054 tp!296052))))

(assert (= (and b!963881 (is-ElementMatch!2680 (reg!3009 r!15766))) b!964399))

(assert (= (and b!963881 (is-Concat!4513 (reg!3009 r!15766))) b!964400))

(assert (= (and b!963881 (is-Star!2680 (reg!3009 r!15766))) b!964401))

(assert (= (and b!963881 (is-Union!2680 (reg!3009 r!15766))) b!964402))

(declare-fun b!964403 () Bool)

(declare-fun e!622537 () Bool)

(assert (=> b!964403 (= e!622537 tp_is_empty!5003)))

(declare-fun b!964404 () Bool)

(declare-fun tp!296060 () Bool)

(declare-fun tp!296056 () Bool)

(assert (=> b!964404 (= e!622537 (and tp!296060 tp!296056))))

(declare-fun b!964405 () Bool)

(declare-fun tp!296058 () Bool)

(assert (=> b!964405 (= e!622537 tp!296058)))

(assert (=> b!963892 (= tp!296020 e!622537)))

(declare-fun b!964406 () Bool)

(declare-fun tp!296059 () Bool)

(declare-fun tp!296057 () Bool)

(assert (=> b!964406 (= e!622537 (and tp!296059 tp!296057))))

(assert (= (and b!963892 (is-ElementMatch!2680 (regOne!5873 r!15766))) b!964403))

(assert (= (and b!963892 (is-Concat!4513 (regOne!5873 r!15766))) b!964404))

(assert (= (and b!963892 (is-Star!2680 (regOne!5873 r!15766))) b!964405))

(assert (= (and b!963892 (is-Union!2680 (regOne!5873 r!15766))) b!964406))

(declare-fun b!964407 () Bool)

(declare-fun e!622538 () Bool)

(assert (=> b!964407 (= e!622538 tp_is_empty!5003)))

(declare-fun b!964408 () Bool)

(declare-fun tp!296065 () Bool)

(declare-fun tp!296061 () Bool)

(assert (=> b!964408 (= e!622538 (and tp!296065 tp!296061))))

(declare-fun b!964409 () Bool)

(declare-fun tp!296063 () Bool)

(assert (=> b!964409 (= e!622538 tp!296063)))

(assert (=> b!963892 (= tp!296021 e!622538)))

(declare-fun b!964410 () Bool)

(declare-fun tp!296064 () Bool)

(declare-fun tp!296062 () Bool)

(assert (=> b!964410 (= e!622538 (and tp!296064 tp!296062))))

(assert (= (and b!963892 (is-ElementMatch!2680 (regTwo!5873 r!15766))) b!964407))

(assert (= (and b!963892 (is-Concat!4513 (regTwo!5873 r!15766))) b!964408))

(assert (= (and b!963892 (is-Star!2680 (regTwo!5873 r!15766))) b!964409))

(assert (= (and b!963892 (is-Union!2680 (regTwo!5873 r!15766))) b!964410))

(declare-fun b!964411 () Bool)

(declare-fun e!622539 () Bool)

(assert (=> b!964411 (= e!622539 tp_is_empty!5003)))

(declare-fun b!964412 () Bool)

(declare-fun tp!296070 () Bool)

(declare-fun tp!296066 () Bool)

(assert (=> b!964412 (= e!622539 (and tp!296070 tp!296066))))

(declare-fun b!964413 () Bool)

(declare-fun tp!296068 () Bool)

(assert (=> b!964413 (= e!622539 tp!296068)))

(assert (=> b!963882 (= tp!296017 e!622539)))

(declare-fun b!964414 () Bool)

(declare-fun tp!296069 () Bool)

(declare-fun tp!296067 () Bool)

(assert (=> b!964414 (= e!622539 (and tp!296069 tp!296067))))

(assert (= (and b!963882 (is-ElementMatch!2680 (regOne!5872 r!15766))) b!964411))

(assert (= (and b!963882 (is-Concat!4513 (regOne!5872 r!15766))) b!964412))

(assert (= (and b!963882 (is-Star!2680 (regOne!5872 r!15766))) b!964413))

(assert (= (and b!963882 (is-Union!2680 (regOne!5872 r!15766))) b!964414))

(declare-fun b!964415 () Bool)

(declare-fun e!622540 () Bool)

(assert (=> b!964415 (= e!622540 tp_is_empty!5003)))

(declare-fun b!964416 () Bool)

(declare-fun tp!296075 () Bool)

(declare-fun tp!296071 () Bool)

(assert (=> b!964416 (= e!622540 (and tp!296075 tp!296071))))

(declare-fun b!964417 () Bool)

(declare-fun tp!296073 () Bool)

(assert (=> b!964417 (= e!622540 tp!296073)))

(assert (=> b!963882 (= tp!296019 e!622540)))

(declare-fun b!964418 () Bool)

(declare-fun tp!296074 () Bool)

(declare-fun tp!296072 () Bool)

(assert (=> b!964418 (= e!622540 (and tp!296074 tp!296072))))

(assert (= (and b!963882 (is-ElementMatch!2680 (regTwo!5872 r!15766))) b!964415))

(assert (= (and b!963882 (is-Concat!4513 (regTwo!5872 r!15766))) b!964416))

(assert (= (and b!963882 (is-Star!2680 (regTwo!5872 r!15766))) b!964417))

(assert (= (and b!963882 (is-Union!2680 (regTwo!5872 r!15766))) b!964418))

(declare-fun b!964423 () Bool)

(declare-fun e!622543 () Bool)

(declare-fun tp!296078 () Bool)

(assert (=> b!964423 (= e!622543 (and tp_is_empty!5003 tp!296078))))

(assert (=> b!963888 (= tp!296022 e!622543)))

(assert (= (and b!963888 (is-Cons!9894 (t!100956 s!10566))) b!964423))

(push 1)

(assert (not b!964199))

(assert (not b!964299))

(assert (not b!964413))

(assert (not b!963997))

(assert (not b!964330))

(assert (not b!964326))

(assert (not b!964417))

(assert (not b!964293))

(assert (not b!964208))

(assert (not b!964090))

(assert (not b!964310))

(assert (not b!964402))

(assert (not bm!60865))

(assert (not b!964198))

(assert (not b!964303))

(assert (not b!964340))

(assert (not d!285546))

(assert (not b!964006))

(assert (not b!964410))

(assert (not b!964414))

(assert (not d!285522))

(assert (not b!964401))

(assert (not b!964400))

(assert (not b!964339))

(assert (not b!964334))

(assert (not d!285538))

(assert (not b!964304))

(assert (not b!963996))

(assert (not b!964071))

(assert (not b!964406))

(assert (not bm!60900))

(assert (not b!964001))

(assert (not d!285516))

(assert (not b!964084))

(assert (not d!285566))

(assert (not d!285578))

(assert (not b!964033))

(assert (not b!964081))

(assert (not b!964355))

(assert (not bm!60888))

(assert (not b!964132))

(assert (not d!285548))

(assert tp_is_empty!5003)

(assert (not d!285562))

(assert (not b!964243))

(assert (not b!964297))

(assert (not d!285558))

(assert (not b!964354))

(assert (not b!964358))

(assert (not b!964329))

(assert (not b!964291))

(assert (not b!964000))

(assert (not b!964416))

(assert (not bm!60873))

(assert (not b!964131))

(assert (not d!285518))

(assert (not bm!60851))

(assert (not b!964351))

(assert (not b!964298))

(assert (not d!285504))

(assert (not bm!60860))

(assert (not d!285520))

(assert (not b!964348))

(assert (not b!964080))

(assert (not b!964091))

(assert (not b!964353))

(assert (not b!964328))

(assert (not b!964309))

(assert (not b!964296))

(assert (not b!964072))

(assert (not bm!60886))

(assert (not b!964412))

(assert (not d!285576))

(assert (not b!964203))

(assert (not b!964350))

(assert (not d!285570))

(assert (not bm!60899))

(assert (not b!964359))

(assert (not d!285572))

(assert (not bm!60866))

(assert (not b!964423))

(assert (not bm!60901))

(assert (not b!964409))

(assert (not d!285542))

(assert (not b!964294))

(assert (not b!964007))

(assert (not b!964202))

(assert (not b!964300))

(assert (not d!285560))

(assert (not b!964209))

(assert (not b!964408))

(assert (not b!964404))

(assert (not d!285580))

(assert (not d!285526))

(assert (not b!964405))

(assert (not b!964333))

(assert (not d!285514))

(assert (not bm!60867))

(assert (not d!285540))

(assert (not d!285552))

(assert (not b!964418))

(assert (not bm!60898))

(assert (not bm!60859))

(assert (not b!964085))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

