; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!244532 () Bool)

(assert start!244532)

(declare-fun b!2506097 () Bool)

(declare-fun e!1588926 () Bool)

(declare-fun tp_is_empty!12717 () Bool)

(declare-fun tp!801802 () Bool)

(assert (=> b!2506097 (= e!1588926 (and tp_is_empty!12717 tp!801802))))

(declare-fun b!2506098 () Bool)

(declare-fun e!1588923 () Bool)

(declare-fun tp!801801 () Bool)

(declare-fun tp!801805 () Bool)

(assert (=> b!2506098 (= e!1588923 (and tp!801801 tp!801805))))

(declare-fun b!2506099 () Bool)

(declare-fun res!1059554 () Bool)

(declare-fun e!1588925 () Bool)

(assert (=> b!2506099 (=> (not res!1059554) (not e!1588925))))

(declare-datatypes ((C!15020 0))(
  ( (C!15021 (val!9162 Int)) )
))
(declare-datatypes ((Regex!7431 0))(
  ( (ElementMatch!7431 (c!399033 C!15020)) (Concat!12127 (regOne!15374 Regex!7431) (regTwo!15374 Regex!7431)) (EmptyExpr!7431) (Star!7431 (reg!7760 Regex!7431)) (EmptyLang!7431) (Union!7431 (regOne!15375 Regex!7431) (regTwo!15375 Regex!7431)) )
))
(declare-fun r!27340 () Regex!7431)

(declare-fun nullable!2348 (Regex!7431) Bool)

(assert (=> b!2506099 (= res!1059554 (nullable!2348 (regOne!15374 r!27340)))))

(declare-fun b!2506100 () Bool)

(declare-fun res!1059553 () Bool)

(assert (=> b!2506100 (=> (not res!1059553) (not e!1588925))))

(get-info :version)

(assert (=> b!2506100 (= res!1059553 (and (not ((_ is EmptyExpr!7431) r!27340)) (not ((_ is EmptyLang!7431) r!27340)) (not ((_ is ElementMatch!7431) r!27340)) (not ((_ is Union!7431) r!27340)) (not ((_ is Star!7431) r!27340))))))

(declare-fun b!2506101 () Bool)

(declare-fun e!1588927 () Bool)

(declare-fun validRegex!3057 (Regex!7431) Bool)

(assert (=> b!2506101 (= e!1588927 (validRegex!3057 (regOne!15374 r!27340)))))

(declare-fun b!2506102 () Bool)

(declare-fun e!1588924 () Bool)

(declare-fun lt!896733 () Regex!7431)

(declare-datatypes ((List!29496 0))(
  ( (Nil!29396) (Cons!29396 (h!34816 C!15020) (t!211195 List!29496)) )
))
(declare-fun tl!4068 () List!29496)

(declare-fun matchR!3434 (Regex!7431 List!29496) Bool)

(assert (=> b!2506102 (= e!1588924 (matchR!3434 lt!896733 tl!4068))))

(declare-fun b!2506103 () Bool)

(assert (=> b!2506103 (= e!1588923 tp_is_empty!12717)))

(declare-fun b!2506104 () Bool)

(declare-fun tp!801804 () Bool)

(declare-fun tp!801803 () Bool)

(assert (=> b!2506104 (= e!1588923 (and tp!801804 tp!801803))))

(declare-fun b!2506106 () Bool)

(declare-fun res!1059551 () Bool)

(assert (=> b!2506106 (=> (not res!1059551) (not e!1588925))))

(declare-fun c!14016 () C!15020)

(declare-fun derivative!126 (Regex!7431 List!29496) Regex!7431)

(declare-fun derivativeStep!2000 (Regex!7431 C!15020) Regex!7431)

(assert (=> b!2506106 (= res!1059551 (nullable!2348 (derivative!126 (derivativeStep!2000 r!27340 c!14016) tl!4068)))))

(declare-fun b!2506107 () Bool)

(declare-fun res!1059558 () Bool)

(assert (=> b!2506107 (=> res!1059558 e!1588927)))

(declare-datatypes ((tuple2!29440 0))(
  ( (tuple2!29441 (_1!17262 List!29496) (_2!17262 List!29496)) )
))
(declare-fun lt!896740 () tuple2!29440)

(assert (=> b!2506107 (= res!1059558 (not (matchR!3434 (regTwo!15374 r!27340) (_2!17262 lt!896740))))))

(declare-fun b!2506108 () Bool)

(declare-fun res!1059550 () Bool)

(assert (=> b!2506108 (=> res!1059550 e!1588927)))

(declare-fun lt!896735 () Regex!7431)

(assert (=> b!2506108 (= res!1059550 (not (matchR!3434 lt!896735 (_1!17262 lt!896740))))))

(declare-fun res!1059557 () Bool)

(assert (=> start!244532 (=> (not res!1059557) (not e!1588925))))

(assert (=> start!244532 (= res!1059557 (validRegex!3057 r!27340))))

(assert (=> start!244532 e!1588925))

(assert (=> start!244532 e!1588923))

(assert (=> start!244532 tp_is_empty!12717))

(assert (=> start!244532 e!1588926))

(declare-fun b!2506105 () Bool)

(declare-fun tp!801806 () Bool)

(assert (=> b!2506105 (= e!1588923 tp!801806)))

(declare-fun b!2506109 () Bool)

(declare-fun e!1588928 () Bool)

(assert (=> b!2506109 (= e!1588928 e!1588927)))

(declare-fun res!1059555 () Bool)

(assert (=> b!2506109 (=> res!1059555 e!1588927)))

(declare-fun ++!7191 (List!29496 List!29496) List!29496)

(assert (=> b!2506109 (= res!1059555 (not (= (++!7191 (_1!17262 lt!896740) (_2!17262 lt!896740)) tl!4068)))))

(declare-datatypes ((Option!5840 0))(
  ( (None!5839) (Some!5839 (v!31770 tuple2!29440)) )
))
(declare-fun lt!896736 () Option!5840)

(declare-fun get!9136 (Option!5840) tuple2!29440)

(assert (=> b!2506109 (= lt!896740 (get!9136 lt!896736))))

(declare-fun isDefined!4662 (Option!5840) Bool)

(assert (=> b!2506109 (isDefined!4662 lt!896736)))

(declare-fun findConcatSeparation!862 (Regex!7431 Regex!7431 List!29496 List!29496 List!29496) Option!5840)

(assert (=> b!2506109 (= lt!896736 (findConcatSeparation!862 lt!896735 (regTwo!15374 r!27340) Nil!29396 tl!4068 tl!4068))))

(declare-datatypes ((Unit!43119 0))(
  ( (Unit!43120) )
))
(declare-fun lt!896737 () Unit!43119)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!144 (Regex!7431 Regex!7431 List!29496) Unit!43119)

(assert (=> b!2506109 (= lt!896737 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!144 lt!896735 (regTwo!15374 r!27340) tl!4068))))

(declare-fun b!2506110 () Bool)

(assert (=> b!2506110 (= e!1588925 (not e!1588928))))

(declare-fun res!1059552 () Bool)

(assert (=> b!2506110 (=> res!1059552 e!1588928)))

(declare-fun lt!896739 () Bool)

(assert (=> b!2506110 (= res!1059552 (not lt!896739))))

(assert (=> b!2506110 e!1588924))

(declare-fun res!1059556 () Bool)

(assert (=> b!2506110 (=> res!1059556 e!1588924)))

(assert (=> b!2506110 (= res!1059556 lt!896739)))

(declare-fun lt!896738 () Regex!7431)

(assert (=> b!2506110 (= lt!896739 (matchR!3434 lt!896738 tl!4068))))

(declare-fun lt!896741 () Unit!43119)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!126 (Regex!7431 Regex!7431 List!29496) Unit!43119)

(assert (=> b!2506110 (= lt!896741 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!126 lt!896738 lt!896733 tl!4068))))

(declare-fun lt!896734 () Regex!7431)

(assert (=> b!2506110 (= (matchR!3434 lt!896734 tl!4068) (matchR!3434 (derivative!126 lt!896734 tl!4068) Nil!29396))))

(declare-fun lt!896742 () Unit!43119)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!80 (Regex!7431 List!29496) Unit!43119)

(assert (=> b!2506110 (= lt!896742 (lemmaMatchRIsSameAsWholeDerivativeAndNil!80 lt!896734 tl!4068))))

(assert (=> b!2506110 (= lt!896734 (Union!7431 lt!896738 lt!896733))))

(assert (=> b!2506110 (= lt!896733 (derivativeStep!2000 (regTwo!15374 r!27340) c!14016))))

(assert (=> b!2506110 (= lt!896738 (Concat!12127 lt!896735 (regTwo!15374 r!27340)))))

(assert (=> b!2506110 (= lt!896735 (derivativeStep!2000 (regOne!15374 r!27340) c!14016))))

(assert (= (and start!244532 res!1059557) b!2506106))

(assert (= (and b!2506106 res!1059551) b!2506100))

(assert (= (and b!2506100 res!1059553) b!2506099))

(assert (= (and b!2506099 res!1059554) b!2506110))

(assert (= (and b!2506110 (not res!1059556)) b!2506102))

(assert (= (and b!2506110 (not res!1059552)) b!2506109))

(assert (= (and b!2506109 (not res!1059555)) b!2506108))

(assert (= (and b!2506108 (not res!1059550)) b!2506107))

(assert (= (and b!2506107 (not res!1059558)) b!2506101))

(assert (= (and start!244532 ((_ is ElementMatch!7431) r!27340)) b!2506103))

(assert (= (and start!244532 ((_ is Concat!12127) r!27340)) b!2506104))

(assert (= (and start!244532 ((_ is Star!7431) r!27340)) b!2506105))

(assert (= (and start!244532 ((_ is Union!7431) r!27340)) b!2506098))

(assert (= (and start!244532 ((_ is Cons!29396) tl!4068)) b!2506097))

(declare-fun m!2866673 () Bool)

(assert (=> b!2506102 m!2866673))

(declare-fun m!2866675 () Bool)

(assert (=> b!2506109 m!2866675))

(declare-fun m!2866677 () Bool)

(assert (=> b!2506109 m!2866677))

(declare-fun m!2866679 () Bool)

(assert (=> b!2506109 m!2866679))

(declare-fun m!2866681 () Bool)

(assert (=> b!2506109 m!2866681))

(declare-fun m!2866683 () Bool)

(assert (=> b!2506109 m!2866683))

(declare-fun m!2866685 () Bool)

(assert (=> b!2506107 m!2866685))

(declare-fun m!2866687 () Bool)

(assert (=> b!2506106 m!2866687))

(assert (=> b!2506106 m!2866687))

(declare-fun m!2866689 () Bool)

(assert (=> b!2506106 m!2866689))

(assert (=> b!2506106 m!2866689))

(declare-fun m!2866691 () Bool)

(assert (=> b!2506106 m!2866691))

(declare-fun m!2866693 () Bool)

(assert (=> b!2506110 m!2866693))

(declare-fun m!2866695 () Bool)

(assert (=> b!2506110 m!2866695))

(declare-fun m!2866697 () Bool)

(assert (=> b!2506110 m!2866697))

(assert (=> b!2506110 m!2866695))

(declare-fun m!2866699 () Bool)

(assert (=> b!2506110 m!2866699))

(declare-fun m!2866701 () Bool)

(assert (=> b!2506110 m!2866701))

(declare-fun m!2866703 () Bool)

(assert (=> b!2506110 m!2866703))

(declare-fun m!2866705 () Bool)

(assert (=> b!2506110 m!2866705))

(declare-fun m!2866707 () Bool)

(assert (=> b!2506110 m!2866707))

(declare-fun m!2866709 () Bool)

(assert (=> b!2506099 m!2866709))

(declare-fun m!2866711 () Bool)

(assert (=> b!2506108 m!2866711))

(declare-fun m!2866713 () Bool)

(assert (=> start!244532 m!2866713))

(declare-fun m!2866715 () Bool)

(assert (=> b!2506101 m!2866715))

(check-sat (not b!2506104) (not b!2506109) (not b!2506106) (not b!2506101) (not b!2506098) (not b!2506099) (not b!2506108) (not b!2506105) (not b!2506110) (not start!244532) (not b!2506102) (not b!2506107) (not b!2506097) tp_is_empty!12717)
(check-sat)
(get-model)

(declare-fun b!2506158 () Bool)

(declare-fun res!1059589 () Bool)

(declare-fun e!1588957 () Bool)

(assert (=> b!2506158 (=> res!1059589 e!1588957)))

(assert (=> b!2506158 (= res!1059589 (not ((_ is Concat!12127) (regOne!15374 r!27340))))))

(declare-fun e!1588960 () Bool)

(assert (=> b!2506158 (= e!1588960 e!1588957)))

(declare-fun b!2506159 () Bool)

(declare-fun e!1588963 () Bool)

(assert (=> b!2506159 (= e!1588957 e!1588963)))

(declare-fun res!1059587 () Bool)

(assert (=> b!2506159 (=> (not res!1059587) (not e!1588963))))

(declare-fun call!155159 () Bool)

(assert (=> b!2506159 (= res!1059587 call!155159)))

(declare-fun b!2506160 () Bool)

(declare-fun e!1588961 () Bool)

(declare-fun call!155158 () Bool)

(assert (=> b!2506160 (= e!1588961 call!155158)))

(declare-fun b!2506161 () Bool)

(declare-fun res!1059586 () Bool)

(declare-fun e!1588962 () Bool)

(assert (=> b!2506161 (=> (not res!1059586) (not e!1588962))))

(declare-fun call!155160 () Bool)

(assert (=> b!2506161 (= res!1059586 call!155160)))

(assert (=> b!2506161 (= e!1588960 e!1588962)))

(declare-fun bm!155153 () Bool)

(declare-fun c!399044 () Bool)

(assert (=> bm!155153 (= call!155160 (validRegex!3057 (ite c!399044 (regOne!15375 (regOne!15374 r!27340)) (regTwo!15374 (regOne!15374 r!27340)))))))

(declare-fun b!2506162 () Bool)

(declare-fun e!1588959 () Bool)

(assert (=> b!2506162 (= e!1588959 e!1588960)))

(assert (=> b!2506162 (= c!399044 ((_ is Union!7431) (regOne!15374 r!27340)))))

(declare-fun bm!155154 () Bool)

(assert (=> bm!155154 (= call!155159 call!155158)))

(declare-fun b!2506163 () Bool)

(assert (=> b!2506163 (= e!1588963 call!155160)))

(declare-fun b!2506164 () Bool)

(declare-fun e!1588958 () Bool)

(assert (=> b!2506164 (= e!1588958 e!1588959)))

(declare-fun c!399045 () Bool)

(assert (=> b!2506164 (= c!399045 ((_ is Star!7431) (regOne!15374 r!27340)))))

(declare-fun b!2506157 () Bool)

(assert (=> b!2506157 (= e!1588959 e!1588961)))

(declare-fun res!1059585 () Bool)

(assert (=> b!2506157 (= res!1059585 (not (nullable!2348 (reg!7760 (regOne!15374 r!27340)))))))

(assert (=> b!2506157 (=> (not res!1059585) (not e!1588961))))

(declare-fun d!716087 () Bool)

(declare-fun res!1059588 () Bool)

(assert (=> d!716087 (=> res!1059588 e!1588958)))

(assert (=> d!716087 (= res!1059588 ((_ is ElementMatch!7431) (regOne!15374 r!27340)))))

(assert (=> d!716087 (= (validRegex!3057 (regOne!15374 r!27340)) e!1588958)))

(declare-fun b!2506165 () Bool)

(assert (=> b!2506165 (= e!1588962 call!155159)))

(declare-fun bm!155155 () Bool)

(assert (=> bm!155155 (= call!155158 (validRegex!3057 (ite c!399045 (reg!7760 (regOne!15374 r!27340)) (ite c!399044 (regTwo!15375 (regOne!15374 r!27340)) (regOne!15374 (regOne!15374 r!27340))))))))

(assert (= (and d!716087 (not res!1059588)) b!2506164))

(assert (= (and b!2506164 c!399045) b!2506157))

(assert (= (and b!2506164 (not c!399045)) b!2506162))

(assert (= (and b!2506157 res!1059585) b!2506160))

(assert (= (and b!2506162 c!399044) b!2506161))

(assert (= (and b!2506162 (not c!399044)) b!2506158))

(assert (= (and b!2506161 res!1059586) b!2506165))

(assert (= (and b!2506158 (not res!1059589)) b!2506159))

(assert (= (and b!2506159 res!1059587) b!2506163))

(assert (= (or b!2506161 b!2506163) bm!155153))

(assert (= (or b!2506165 b!2506159) bm!155154))

(assert (= (or b!2506160 bm!155154) bm!155155))

(declare-fun m!2866717 () Bool)

(assert (=> bm!155153 m!2866717))

(declare-fun m!2866719 () Bool)

(assert (=> b!2506157 m!2866719))

(declare-fun m!2866721 () Bool)

(assert (=> bm!155155 m!2866721))

(assert (=> b!2506101 d!716087))

(declare-fun b!2506167 () Bool)

(declare-fun res!1059594 () Bool)

(declare-fun e!1588964 () Bool)

(assert (=> b!2506167 (=> res!1059594 e!1588964)))

(assert (=> b!2506167 (= res!1059594 (not ((_ is Concat!12127) r!27340)))))

(declare-fun e!1588967 () Bool)

(assert (=> b!2506167 (= e!1588967 e!1588964)))

(declare-fun b!2506168 () Bool)

(declare-fun e!1588970 () Bool)

(assert (=> b!2506168 (= e!1588964 e!1588970)))

(declare-fun res!1059592 () Bool)

(assert (=> b!2506168 (=> (not res!1059592) (not e!1588970))))

(declare-fun call!155162 () Bool)

(assert (=> b!2506168 (= res!1059592 call!155162)))

(declare-fun b!2506169 () Bool)

(declare-fun e!1588968 () Bool)

(declare-fun call!155161 () Bool)

(assert (=> b!2506169 (= e!1588968 call!155161)))

(declare-fun b!2506170 () Bool)

(declare-fun res!1059591 () Bool)

(declare-fun e!1588969 () Bool)

(assert (=> b!2506170 (=> (not res!1059591) (not e!1588969))))

(declare-fun call!155163 () Bool)

(assert (=> b!2506170 (= res!1059591 call!155163)))

(assert (=> b!2506170 (= e!1588967 e!1588969)))

(declare-fun bm!155156 () Bool)

(declare-fun c!399046 () Bool)

(assert (=> bm!155156 (= call!155163 (validRegex!3057 (ite c!399046 (regOne!15375 r!27340) (regTwo!15374 r!27340))))))

(declare-fun b!2506171 () Bool)

(declare-fun e!1588966 () Bool)

(assert (=> b!2506171 (= e!1588966 e!1588967)))

(assert (=> b!2506171 (= c!399046 ((_ is Union!7431) r!27340))))

(declare-fun bm!155157 () Bool)

(assert (=> bm!155157 (= call!155162 call!155161)))

(declare-fun b!2506172 () Bool)

(assert (=> b!2506172 (= e!1588970 call!155163)))

(declare-fun b!2506173 () Bool)

(declare-fun e!1588965 () Bool)

(assert (=> b!2506173 (= e!1588965 e!1588966)))

(declare-fun c!399047 () Bool)

(assert (=> b!2506173 (= c!399047 ((_ is Star!7431) r!27340))))

(declare-fun b!2506166 () Bool)

(assert (=> b!2506166 (= e!1588966 e!1588968)))

(declare-fun res!1059590 () Bool)

(assert (=> b!2506166 (= res!1059590 (not (nullable!2348 (reg!7760 r!27340))))))

(assert (=> b!2506166 (=> (not res!1059590) (not e!1588968))))

(declare-fun d!716089 () Bool)

(declare-fun res!1059593 () Bool)

(assert (=> d!716089 (=> res!1059593 e!1588965)))

(assert (=> d!716089 (= res!1059593 ((_ is ElementMatch!7431) r!27340))))

(assert (=> d!716089 (= (validRegex!3057 r!27340) e!1588965)))

(declare-fun b!2506174 () Bool)

(assert (=> b!2506174 (= e!1588969 call!155162)))

(declare-fun bm!155158 () Bool)

(assert (=> bm!155158 (= call!155161 (validRegex!3057 (ite c!399047 (reg!7760 r!27340) (ite c!399046 (regTwo!15375 r!27340) (regOne!15374 r!27340)))))))

(assert (= (and d!716089 (not res!1059593)) b!2506173))

(assert (= (and b!2506173 c!399047) b!2506166))

(assert (= (and b!2506173 (not c!399047)) b!2506171))

(assert (= (and b!2506166 res!1059590) b!2506169))

(assert (= (and b!2506171 c!399046) b!2506170))

(assert (= (and b!2506171 (not c!399046)) b!2506167))

(assert (= (and b!2506170 res!1059591) b!2506174))

(assert (= (and b!2506167 (not res!1059594)) b!2506168))

(assert (= (and b!2506168 res!1059592) b!2506172))

(assert (= (or b!2506170 b!2506172) bm!155156))

(assert (= (or b!2506174 b!2506168) bm!155157))

(assert (= (or b!2506169 bm!155157) bm!155158))

(declare-fun m!2866723 () Bool)

(assert (=> bm!155156 m!2866723))

(declare-fun m!2866725 () Bool)

(assert (=> b!2506166 m!2866725))

(declare-fun m!2866727 () Bool)

(assert (=> bm!155158 m!2866727))

(assert (=> start!244532 d!716089))

(declare-fun d!716091 () Bool)

(declare-fun nullableFct!612 (Regex!7431) Bool)

(assert (=> d!716091 (= (nullable!2348 (derivative!126 (derivativeStep!2000 r!27340 c!14016) tl!4068)) (nullableFct!612 (derivative!126 (derivativeStep!2000 r!27340 c!14016) tl!4068)))))

(declare-fun bs!468672 () Bool)

(assert (= bs!468672 d!716091))

(assert (=> bs!468672 m!2866689))

(declare-fun m!2866729 () Bool)

(assert (=> bs!468672 m!2866729))

(assert (=> b!2506106 d!716091))

(declare-fun d!716093 () Bool)

(declare-fun lt!896749 () Regex!7431)

(assert (=> d!716093 (validRegex!3057 lt!896749)))

(declare-fun e!1588987 () Regex!7431)

(assert (=> d!716093 (= lt!896749 e!1588987)))

(declare-fun c!399056 () Bool)

(assert (=> d!716093 (= c!399056 ((_ is Cons!29396) tl!4068))))

(assert (=> d!716093 (validRegex!3057 (derivativeStep!2000 r!27340 c!14016))))

(assert (=> d!716093 (= (derivative!126 (derivativeStep!2000 r!27340 c!14016) tl!4068) lt!896749)))

(declare-fun b!2506207 () Bool)

(assert (=> b!2506207 (= e!1588987 (derivative!126 (derivativeStep!2000 (derivativeStep!2000 r!27340 c!14016) (h!34816 tl!4068)) (t!211195 tl!4068)))))

(declare-fun b!2506208 () Bool)

(assert (=> b!2506208 (= e!1588987 (derivativeStep!2000 r!27340 c!14016))))

(assert (= (and d!716093 c!399056) b!2506207))

(assert (= (and d!716093 (not c!399056)) b!2506208))

(declare-fun m!2866765 () Bool)

(assert (=> d!716093 m!2866765))

(assert (=> d!716093 m!2866687))

(declare-fun m!2866767 () Bool)

(assert (=> d!716093 m!2866767))

(assert (=> b!2506207 m!2866687))

(declare-fun m!2866769 () Bool)

(assert (=> b!2506207 m!2866769))

(assert (=> b!2506207 m!2866769))

(declare-fun m!2866771 () Bool)

(assert (=> b!2506207 m!2866771))

(assert (=> b!2506106 d!716093))

(declare-fun b!2506279 () Bool)

(declare-fun e!1589026 () Regex!7431)

(declare-fun call!155187 () Regex!7431)

(assert (=> b!2506279 (= e!1589026 (Union!7431 (Concat!12127 call!155187 (regTwo!15374 r!27340)) EmptyLang!7431))))

(declare-fun b!2506280 () Bool)

(declare-fun c!399090 () Bool)

(assert (=> b!2506280 (= c!399090 ((_ is Union!7431) r!27340))))

(declare-fun e!1589025 () Regex!7431)

(declare-fun e!1589027 () Regex!7431)

(assert (=> b!2506280 (= e!1589025 e!1589027)))

(declare-fun bm!155182 () Bool)

(declare-fun call!155190 () Regex!7431)

(declare-fun call!155189 () Regex!7431)

(assert (=> bm!155182 (= call!155190 call!155189)))

(declare-fun b!2506281 () Bool)

(declare-fun e!1589024 () Regex!7431)

(assert (=> b!2506281 (= e!1589024 EmptyLang!7431)))

(declare-fun b!2506283 () Bool)

(declare-fun e!1589023 () Regex!7431)

(assert (=> b!2506283 (= e!1589027 e!1589023)))

(declare-fun c!399088 () Bool)

(assert (=> b!2506283 (= c!399088 ((_ is Star!7431) r!27340))))

(declare-fun bm!155183 () Bool)

(assert (=> bm!155183 (= call!155187 call!155190)))

(declare-fun b!2506284 () Bool)

(assert (=> b!2506284 (= e!1589024 e!1589025)))

(declare-fun c!399089 () Bool)

(assert (=> b!2506284 (= c!399089 ((_ is ElementMatch!7431) r!27340))))

(declare-fun b!2506285 () Bool)

(assert (=> b!2506285 (= e!1589025 (ite (= c!14016 (c!399033 r!27340)) EmptyExpr!7431 EmptyLang!7431))))

(declare-fun b!2506286 () Bool)

(declare-fun call!155188 () Regex!7431)

(assert (=> b!2506286 (= e!1589027 (Union!7431 call!155188 call!155189))))

(declare-fun b!2506287 () Bool)

(assert (=> b!2506287 (= e!1589026 (Union!7431 (Concat!12127 call!155187 (regTwo!15374 r!27340)) call!155188))))

(declare-fun b!2506288 () Bool)

(declare-fun c!399091 () Bool)

(assert (=> b!2506288 (= c!399091 (nullable!2348 (regOne!15374 r!27340)))))

(assert (=> b!2506288 (= e!1589023 e!1589026)))

(declare-fun bm!155184 () Bool)

(assert (=> bm!155184 (= call!155188 (derivativeStep!2000 (ite c!399090 (regOne!15375 r!27340) (regTwo!15374 r!27340)) c!14016))))

(declare-fun bm!155185 () Bool)

(assert (=> bm!155185 (= call!155189 (derivativeStep!2000 (ite c!399090 (regTwo!15375 r!27340) (ite c!399088 (reg!7760 r!27340) (regOne!15374 r!27340))) c!14016))))

(declare-fun b!2506282 () Bool)

(assert (=> b!2506282 (= e!1589023 (Concat!12127 call!155190 r!27340))))

(declare-fun d!716101 () Bool)

(declare-fun lt!896759 () Regex!7431)

(assert (=> d!716101 (validRegex!3057 lt!896759)))

(assert (=> d!716101 (= lt!896759 e!1589024)))

(declare-fun c!399092 () Bool)

(assert (=> d!716101 (= c!399092 (or ((_ is EmptyExpr!7431) r!27340) ((_ is EmptyLang!7431) r!27340)))))

(assert (=> d!716101 (validRegex!3057 r!27340)))

(assert (=> d!716101 (= (derivativeStep!2000 r!27340 c!14016) lt!896759)))

(assert (= (and d!716101 c!399092) b!2506281))

(assert (= (and d!716101 (not c!399092)) b!2506284))

(assert (= (and b!2506284 c!399089) b!2506285))

(assert (= (and b!2506284 (not c!399089)) b!2506280))

(assert (= (and b!2506280 c!399090) b!2506286))

(assert (= (and b!2506280 (not c!399090)) b!2506283))

(assert (= (and b!2506283 c!399088) b!2506282))

(assert (= (and b!2506283 (not c!399088)) b!2506288))

(assert (= (and b!2506288 c!399091) b!2506287))

(assert (= (and b!2506288 (not c!399091)) b!2506279))

(assert (= (or b!2506287 b!2506279) bm!155183))

(assert (= (or b!2506282 bm!155183) bm!155182))

(assert (= (or b!2506286 bm!155182) bm!155185))

(assert (= (or b!2506286 b!2506287) bm!155184))

(assert (=> b!2506288 m!2866709))

(declare-fun m!2866803 () Bool)

(assert (=> bm!155184 m!2866803))

(declare-fun m!2866805 () Bool)

(assert (=> bm!155185 m!2866805))

(declare-fun m!2866807 () Bool)

(assert (=> d!716101 m!2866807))

(assert (=> d!716101 m!2866713))

(assert (=> b!2506106 d!716101))

(declare-fun d!716109 () Bool)

(declare-fun e!1589085 () Bool)

(assert (=> d!716109 e!1589085))

(declare-fun c!399121 () Bool)

(assert (=> d!716109 (= c!399121 ((_ is EmptyExpr!7431) (regTwo!15374 r!27340)))))

(declare-fun lt!896777 () Bool)

(declare-fun e!1589084 () Bool)

(assert (=> d!716109 (= lt!896777 e!1589084)))

(declare-fun c!399120 () Bool)

(declare-fun isEmpty!16866 (List!29496) Bool)

(assert (=> d!716109 (= c!399120 (isEmpty!16866 (_2!17262 lt!896740)))))

(assert (=> d!716109 (validRegex!3057 (regTwo!15374 r!27340))))

(assert (=> d!716109 (= (matchR!3434 (regTwo!15374 r!27340) (_2!17262 lt!896740)) lt!896777)))

(declare-fun b!2506387 () Bool)

(declare-fun e!1589083 () Bool)

(declare-fun e!1589081 () Bool)

(assert (=> b!2506387 (= e!1589083 e!1589081)))

(declare-fun res!1059672 () Bool)

(assert (=> b!2506387 (=> (not res!1059672) (not e!1589081))))

(assert (=> b!2506387 (= res!1059672 (not lt!896777))))

(declare-fun b!2506388 () Bool)

(declare-fun e!1589080 () Bool)

(assert (=> b!2506388 (= e!1589085 e!1589080)))

(declare-fun c!399119 () Bool)

(assert (=> b!2506388 (= c!399119 ((_ is EmptyLang!7431) (regTwo!15374 r!27340)))))

(declare-fun b!2506389 () Bool)

(declare-fun e!1589082 () Bool)

(assert (=> b!2506389 (= e!1589081 e!1589082)))

(declare-fun res!1059668 () Bool)

(assert (=> b!2506389 (=> res!1059668 e!1589082)))

(declare-fun call!155204 () Bool)

(assert (=> b!2506389 (= res!1059668 call!155204)))

(declare-fun bm!155199 () Bool)

(assert (=> bm!155199 (= call!155204 (isEmpty!16866 (_2!17262 lt!896740)))))

(declare-fun b!2506390 () Bool)

(assert (=> b!2506390 (= e!1589080 (not lt!896777))))

(declare-fun b!2506391 () Bool)

(declare-fun res!1059670 () Bool)

(declare-fun e!1589086 () Bool)

(assert (=> b!2506391 (=> (not res!1059670) (not e!1589086))))

(declare-fun tail!3993 (List!29496) List!29496)

(assert (=> b!2506391 (= res!1059670 (isEmpty!16866 (tail!3993 (_2!17262 lt!896740))))))

(declare-fun b!2506392 () Bool)

(declare-fun head!5716 (List!29496) C!15020)

(assert (=> b!2506392 (= e!1589086 (= (head!5716 (_2!17262 lt!896740)) (c!399033 (regTwo!15374 r!27340))))))

(declare-fun b!2506393 () Bool)

(declare-fun res!1059669 () Bool)

(assert (=> b!2506393 (=> (not res!1059669) (not e!1589086))))

(assert (=> b!2506393 (= res!1059669 (not call!155204))))

(declare-fun b!2506394 () Bool)

(assert (=> b!2506394 (= e!1589084 (nullable!2348 (regTwo!15374 r!27340)))))

(declare-fun b!2506395 () Bool)

(declare-fun res!1059671 () Bool)

(assert (=> b!2506395 (=> res!1059671 e!1589082)))

(assert (=> b!2506395 (= res!1059671 (not (isEmpty!16866 (tail!3993 (_2!17262 lt!896740)))))))

(declare-fun b!2506396 () Bool)

(assert (=> b!2506396 (= e!1589084 (matchR!3434 (derivativeStep!2000 (regTwo!15374 r!27340) (head!5716 (_2!17262 lt!896740))) (tail!3993 (_2!17262 lt!896740))))))

(declare-fun b!2506397 () Bool)

(assert (=> b!2506397 (= e!1589082 (not (= (head!5716 (_2!17262 lt!896740)) (c!399033 (regTwo!15374 r!27340)))))))

(declare-fun b!2506398 () Bool)

(assert (=> b!2506398 (= e!1589085 (= lt!896777 call!155204))))

(declare-fun b!2506399 () Bool)

(declare-fun res!1059665 () Bool)

(assert (=> b!2506399 (=> res!1059665 e!1589083)))

(assert (=> b!2506399 (= res!1059665 (not ((_ is ElementMatch!7431) (regTwo!15374 r!27340))))))

(assert (=> b!2506399 (= e!1589080 e!1589083)))

(declare-fun b!2506400 () Bool)

(declare-fun res!1059666 () Bool)

(assert (=> b!2506400 (=> res!1059666 e!1589083)))

(assert (=> b!2506400 (= res!1059666 e!1589086)))

(declare-fun res!1059667 () Bool)

(assert (=> b!2506400 (=> (not res!1059667) (not e!1589086))))

(assert (=> b!2506400 (= res!1059667 lt!896777)))

(assert (= (and d!716109 c!399120) b!2506394))

(assert (= (and d!716109 (not c!399120)) b!2506396))

(assert (= (and d!716109 c!399121) b!2506398))

(assert (= (and d!716109 (not c!399121)) b!2506388))

(assert (= (and b!2506388 c!399119) b!2506390))

(assert (= (and b!2506388 (not c!399119)) b!2506399))

(assert (= (and b!2506399 (not res!1059665)) b!2506400))

(assert (= (and b!2506400 res!1059667) b!2506393))

(assert (= (and b!2506393 res!1059669) b!2506391))

(assert (= (and b!2506391 res!1059670) b!2506392))

(assert (= (and b!2506400 (not res!1059666)) b!2506387))

(assert (= (and b!2506387 res!1059672) b!2506389))

(assert (= (and b!2506389 (not res!1059668)) b!2506395))

(assert (= (and b!2506395 (not res!1059671)) b!2506397))

(assert (= (or b!2506398 b!2506389 b!2506393) bm!155199))

(declare-fun m!2866875 () Bool)

(assert (=> bm!155199 m!2866875))

(assert (=> d!716109 m!2866875))

(declare-fun m!2866877 () Bool)

(assert (=> d!716109 m!2866877))

(declare-fun m!2866879 () Bool)

(assert (=> b!2506392 m!2866879))

(assert (=> b!2506396 m!2866879))

(assert (=> b!2506396 m!2866879))

(declare-fun m!2866881 () Bool)

(assert (=> b!2506396 m!2866881))

(declare-fun m!2866883 () Bool)

(assert (=> b!2506396 m!2866883))

(assert (=> b!2506396 m!2866881))

(assert (=> b!2506396 m!2866883))

(declare-fun m!2866885 () Bool)

(assert (=> b!2506396 m!2866885))

(assert (=> b!2506395 m!2866883))

(assert (=> b!2506395 m!2866883))

(declare-fun m!2866887 () Bool)

(assert (=> b!2506395 m!2866887))

(assert (=> b!2506391 m!2866883))

(assert (=> b!2506391 m!2866883))

(assert (=> b!2506391 m!2866887))

(assert (=> b!2506397 m!2866879))

(declare-fun m!2866889 () Bool)

(assert (=> b!2506394 m!2866889))

(assert (=> b!2506107 d!716109))

(declare-fun d!716133 () Bool)

(declare-fun e!1589092 () Bool)

(assert (=> d!716133 e!1589092))

(declare-fun c!399124 () Bool)

(assert (=> d!716133 (= c!399124 ((_ is EmptyExpr!7431) lt!896733))))

(declare-fun lt!896778 () Bool)

(declare-fun e!1589091 () Bool)

(assert (=> d!716133 (= lt!896778 e!1589091)))

(declare-fun c!399123 () Bool)

(assert (=> d!716133 (= c!399123 (isEmpty!16866 tl!4068))))

(assert (=> d!716133 (validRegex!3057 lt!896733)))

(assert (=> d!716133 (= (matchR!3434 lt!896733 tl!4068) lt!896778)))

(declare-fun b!2506401 () Bool)

(declare-fun e!1589090 () Bool)

(declare-fun e!1589088 () Bool)

(assert (=> b!2506401 (= e!1589090 e!1589088)))

(declare-fun res!1059680 () Bool)

(assert (=> b!2506401 (=> (not res!1059680) (not e!1589088))))

(assert (=> b!2506401 (= res!1059680 (not lt!896778))))

(declare-fun b!2506402 () Bool)

(declare-fun e!1589087 () Bool)

(assert (=> b!2506402 (= e!1589092 e!1589087)))

(declare-fun c!399122 () Bool)

(assert (=> b!2506402 (= c!399122 ((_ is EmptyLang!7431) lt!896733))))

(declare-fun b!2506403 () Bool)

(declare-fun e!1589089 () Bool)

(assert (=> b!2506403 (= e!1589088 e!1589089)))

(declare-fun res!1059676 () Bool)

(assert (=> b!2506403 (=> res!1059676 e!1589089)))

(declare-fun call!155205 () Bool)

(assert (=> b!2506403 (= res!1059676 call!155205)))

(declare-fun bm!155200 () Bool)

(assert (=> bm!155200 (= call!155205 (isEmpty!16866 tl!4068))))

(declare-fun b!2506404 () Bool)

(assert (=> b!2506404 (= e!1589087 (not lt!896778))))

(declare-fun b!2506405 () Bool)

(declare-fun res!1059678 () Bool)

(declare-fun e!1589093 () Bool)

(assert (=> b!2506405 (=> (not res!1059678) (not e!1589093))))

(assert (=> b!2506405 (= res!1059678 (isEmpty!16866 (tail!3993 tl!4068)))))

(declare-fun b!2506406 () Bool)

(assert (=> b!2506406 (= e!1589093 (= (head!5716 tl!4068) (c!399033 lt!896733)))))

(declare-fun b!2506407 () Bool)

(declare-fun res!1059677 () Bool)

(assert (=> b!2506407 (=> (not res!1059677) (not e!1589093))))

(assert (=> b!2506407 (= res!1059677 (not call!155205))))

(declare-fun b!2506408 () Bool)

(assert (=> b!2506408 (= e!1589091 (nullable!2348 lt!896733))))

(declare-fun b!2506409 () Bool)

(declare-fun res!1059679 () Bool)

(assert (=> b!2506409 (=> res!1059679 e!1589089)))

(assert (=> b!2506409 (= res!1059679 (not (isEmpty!16866 (tail!3993 tl!4068))))))

(declare-fun b!2506410 () Bool)

(assert (=> b!2506410 (= e!1589091 (matchR!3434 (derivativeStep!2000 lt!896733 (head!5716 tl!4068)) (tail!3993 tl!4068)))))

(declare-fun b!2506411 () Bool)

(assert (=> b!2506411 (= e!1589089 (not (= (head!5716 tl!4068) (c!399033 lt!896733))))))

(declare-fun b!2506412 () Bool)

(assert (=> b!2506412 (= e!1589092 (= lt!896778 call!155205))))

(declare-fun b!2506413 () Bool)

(declare-fun res!1059673 () Bool)

(assert (=> b!2506413 (=> res!1059673 e!1589090)))

(assert (=> b!2506413 (= res!1059673 (not ((_ is ElementMatch!7431) lt!896733)))))

(assert (=> b!2506413 (= e!1589087 e!1589090)))

(declare-fun b!2506414 () Bool)

(declare-fun res!1059674 () Bool)

(assert (=> b!2506414 (=> res!1059674 e!1589090)))

(assert (=> b!2506414 (= res!1059674 e!1589093)))

(declare-fun res!1059675 () Bool)

(assert (=> b!2506414 (=> (not res!1059675) (not e!1589093))))

(assert (=> b!2506414 (= res!1059675 lt!896778)))

(assert (= (and d!716133 c!399123) b!2506408))

(assert (= (and d!716133 (not c!399123)) b!2506410))

(assert (= (and d!716133 c!399124) b!2506412))

(assert (= (and d!716133 (not c!399124)) b!2506402))

(assert (= (and b!2506402 c!399122) b!2506404))

(assert (= (and b!2506402 (not c!399122)) b!2506413))

(assert (= (and b!2506413 (not res!1059673)) b!2506414))

(assert (= (and b!2506414 res!1059675) b!2506407))

(assert (= (and b!2506407 res!1059677) b!2506405))

(assert (= (and b!2506405 res!1059678) b!2506406))

(assert (= (and b!2506414 (not res!1059674)) b!2506401))

(assert (= (and b!2506401 res!1059680) b!2506403))

(assert (= (and b!2506403 (not res!1059676)) b!2506409))

(assert (= (and b!2506409 (not res!1059679)) b!2506411))

(assert (= (or b!2506412 b!2506403 b!2506407) bm!155200))

(declare-fun m!2866891 () Bool)

(assert (=> bm!155200 m!2866891))

(assert (=> d!716133 m!2866891))

(declare-fun m!2866893 () Bool)

(assert (=> d!716133 m!2866893))

(declare-fun m!2866895 () Bool)

(assert (=> b!2506406 m!2866895))

(assert (=> b!2506410 m!2866895))

(assert (=> b!2506410 m!2866895))

(declare-fun m!2866897 () Bool)

(assert (=> b!2506410 m!2866897))

(declare-fun m!2866899 () Bool)

(assert (=> b!2506410 m!2866899))

(assert (=> b!2506410 m!2866897))

(assert (=> b!2506410 m!2866899))

(declare-fun m!2866901 () Bool)

(assert (=> b!2506410 m!2866901))

(assert (=> b!2506409 m!2866899))

(assert (=> b!2506409 m!2866899))

(declare-fun m!2866903 () Bool)

(assert (=> b!2506409 m!2866903))

(assert (=> b!2506405 m!2866899))

(assert (=> b!2506405 m!2866899))

(assert (=> b!2506405 m!2866903))

(assert (=> b!2506411 m!2866895))

(declare-fun m!2866905 () Bool)

(assert (=> b!2506408 m!2866905))

(assert (=> b!2506102 d!716133))

(declare-fun d!716135 () Bool)

(declare-fun e!1589099 () Bool)

(assert (=> d!716135 e!1589099))

(declare-fun c!399127 () Bool)

(assert (=> d!716135 (= c!399127 ((_ is EmptyExpr!7431) lt!896735))))

(declare-fun lt!896779 () Bool)

(declare-fun e!1589098 () Bool)

(assert (=> d!716135 (= lt!896779 e!1589098)))

(declare-fun c!399126 () Bool)

(assert (=> d!716135 (= c!399126 (isEmpty!16866 (_1!17262 lt!896740)))))

(assert (=> d!716135 (validRegex!3057 lt!896735)))

(assert (=> d!716135 (= (matchR!3434 lt!896735 (_1!17262 lt!896740)) lt!896779)))

(declare-fun b!2506415 () Bool)

(declare-fun e!1589097 () Bool)

(declare-fun e!1589095 () Bool)

(assert (=> b!2506415 (= e!1589097 e!1589095)))

(declare-fun res!1059688 () Bool)

(assert (=> b!2506415 (=> (not res!1059688) (not e!1589095))))

(assert (=> b!2506415 (= res!1059688 (not lt!896779))))

(declare-fun b!2506416 () Bool)

(declare-fun e!1589094 () Bool)

(assert (=> b!2506416 (= e!1589099 e!1589094)))

(declare-fun c!399125 () Bool)

(assert (=> b!2506416 (= c!399125 ((_ is EmptyLang!7431) lt!896735))))

(declare-fun b!2506417 () Bool)

(declare-fun e!1589096 () Bool)

(assert (=> b!2506417 (= e!1589095 e!1589096)))

(declare-fun res!1059684 () Bool)

(assert (=> b!2506417 (=> res!1059684 e!1589096)))

(declare-fun call!155206 () Bool)

(assert (=> b!2506417 (= res!1059684 call!155206)))

(declare-fun bm!155201 () Bool)

(assert (=> bm!155201 (= call!155206 (isEmpty!16866 (_1!17262 lt!896740)))))

(declare-fun b!2506418 () Bool)

(assert (=> b!2506418 (= e!1589094 (not lt!896779))))

(declare-fun b!2506419 () Bool)

(declare-fun res!1059686 () Bool)

(declare-fun e!1589100 () Bool)

(assert (=> b!2506419 (=> (not res!1059686) (not e!1589100))))

(assert (=> b!2506419 (= res!1059686 (isEmpty!16866 (tail!3993 (_1!17262 lt!896740))))))

(declare-fun b!2506420 () Bool)

(assert (=> b!2506420 (= e!1589100 (= (head!5716 (_1!17262 lt!896740)) (c!399033 lt!896735)))))

(declare-fun b!2506421 () Bool)

(declare-fun res!1059685 () Bool)

(assert (=> b!2506421 (=> (not res!1059685) (not e!1589100))))

(assert (=> b!2506421 (= res!1059685 (not call!155206))))

(declare-fun b!2506422 () Bool)

(assert (=> b!2506422 (= e!1589098 (nullable!2348 lt!896735))))

(declare-fun b!2506423 () Bool)

(declare-fun res!1059687 () Bool)

(assert (=> b!2506423 (=> res!1059687 e!1589096)))

(assert (=> b!2506423 (= res!1059687 (not (isEmpty!16866 (tail!3993 (_1!17262 lt!896740)))))))

(declare-fun b!2506424 () Bool)

(assert (=> b!2506424 (= e!1589098 (matchR!3434 (derivativeStep!2000 lt!896735 (head!5716 (_1!17262 lt!896740))) (tail!3993 (_1!17262 lt!896740))))))

(declare-fun b!2506425 () Bool)

(assert (=> b!2506425 (= e!1589096 (not (= (head!5716 (_1!17262 lt!896740)) (c!399033 lt!896735))))))

(declare-fun b!2506426 () Bool)

(assert (=> b!2506426 (= e!1589099 (= lt!896779 call!155206))))

(declare-fun b!2506427 () Bool)

(declare-fun res!1059681 () Bool)

(assert (=> b!2506427 (=> res!1059681 e!1589097)))

(assert (=> b!2506427 (= res!1059681 (not ((_ is ElementMatch!7431) lt!896735)))))

(assert (=> b!2506427 (= e!1589094 e!1589097)))

(declare-fun b!2506428 () Bool)

(declare-fun res!1059682 () Bool)

(assert (=> b!2506428 (=> res!1059682 e!1589097)))

(assert (=> b!2506428 (= res!1059682 e!1589100)))

(declare-fun res!1059683 () Bool)

(assert (=> b!2506428 (=> (not res!1059683) (not e!1589100))))

(assert (=> b!2506428 (= res!1059683 lt!896779)))

(assert (= (and d!716135 c!399126) b!2506422))

(assert (= (and d!716135 (not c!399126)) b!2506424))

(assert (= (and d!716135 c!399127) b!2506426))

(assert (= (and d!716135 (not c!399127)) b!2506416))

(assert (= (and b!2506416 c!399125) b!2506418))

(assert (= (and b!2506416 (not c!399125)) b!2506427))

(assert (= (and b!2506427 (not res!1059681)) b!2506428))

(assert (= (and b!2506428 res!1059683) b!2506421))

(assert (= (and b!2506421 res!1059685) b!2506419))

(assert (= (and b!2506419 res!1059686) b!2506420))

(assert (= (and b!2506428 (not res!1059682)) b!2506415))

(assert (= (and b!2506415 res!1059688) b!2506417))

(assert (= (and b!2506417 (not res!1059684)) b!2506423))

(assert (= (and b!2506423 (not res!1059687)) b!2506425))

(assert (= (or b!2506426 b!2506417 b!2506421) bm!155201))

(declare-fun m!2866907 () Bool)

(assert (=> bm!155201 m!2866907))

(assert (=> d!716135 m!2866907))

(declare-fun m!2866909 () Bool)

(assert (=> d!716135 m!2866909))

(declare-fun m!2866911 () Bool)

(assert (=> b!2506420 m!2866911))

(assert (=> b!2506424 m!2866911))

(assert (=> b!2506424 m!2866911))

(declare-fun m!2866913 () Bool)

(assert (=> b!2506424 m!2866913))

(declare-fun m!2866915 () Bool)

(assert (=> b!2506424 m!2866915))

(assert (=> b!2506424 m!2866913))

(assert (=> b!2506424 m!2866915))

(declare-fun m!2866917 () Bool)

(assert (=> b!2506424 m!2866917))

(assert (=> b!2506423 m!2866915))

(assert (=> b!2506423 m!2866915))

(declare-fun m!2866919 () Bool)

(assert (=> b!2506423 m!2866919))

(assert (=> b!2506419 m!2866915))

(assert (=> b!2506419 m!2866915))

(assert (=> b!2506419 m!2866919))

(assert (=> b!2506425 m!2866911))

(declare-fun m!2866921 () Bool)

(assert (=> b!2506422 m!2866921))

(assert (=> b!2506108 d!716135))

(declare-fun b!2506467 () Bool)

(declare-fun e!1589121 () Bool)

(declare-fun lt!896791 () List!29496)

(assert (=> b!2506467 (= e!1589121 (or (not (= (_2!17262 lt!896740) Nil!29396)) (= lt!896791 (_1!17262 lt!896740))))))

(declare-fun b!2506465 () Bool)

(declare-fun e!1589120 () List!29496)

(assert (=> b!2506465 (= e!1589120 (Cons!29396 (h!34816 (_1!17262 lt!896740)) (++!7191 (t!211195 (_1!17262 lt!896740)) (_2!17262 lt!896740))))))

(declare-fun b!2506466 () Bool)

(declare-fun res!1059708 () Bool)

(assert (=> b!2506466 (=> (not res!1059708) (not e!1589121))))

(declare-fun size!22896 (List!29496) Int)

(assert (=> b!2506466 (= res!1059708 (= (size!22896 lt!896791) (+ (size!22896 (_1!17262 lt!896740)) (size!22896 (_2!17262 lt!896740)))))))

(declare-fun b!2506464 () Bool)

(assert (=> b!2506464 (= e!1589120 (_2!17262 lt!896740))))

(declare-fun d!716137 () Bool)

(assert (=> d!716137 e!1589121))

(declare-fun res!1059709 () Bool)

(assert (=> d!716137 (=> (not res!1059709) (not e!1589121))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4012 (List!29496) (InoxSet C!15020))

(assert (=> d!716137 (= res!1059709 (= (content!4012 lt!896791) ((_ map or) (content!4012 (_1!17262 lt!896740)) (content!4012 (_2!17262 lt!896740)))))))

(assert (=> d!716137 (= lt!896791 e!1589120)))

(declare-fun c!399136 () Bool)

(assert (=> d!716137 (= c!399136 ((_ is Nil!29396) (_1!17262 lt!896740)))))

(assert (=> d!716137 (= (++!7191 (_1!17262 lt!896740) (_2!17262 lt!896740)) lt!896791)))

(assert (= (and d!716137 c!399136) b!2506464))

(assert (= (and d!716137 (not c!399136)) b!2506465))

(assert (= (and d!716137 res!1059709) b!2506466))

(assert (= (and b!2506466 res!1059708) b!2506467))

(declare-fun m!2866945 () Bool)

(assert (=> b!2506465 m!2866945))

(declare-fun m!2866947 () Bool)

(assert (=> b!2506466 m!2866947))

(declare-fun m!2866949 () Bool)

(assert (=> b!2506466 m!2866949))

(declare-fun m!2866951 () Bool)

(assert (=> b!2506466 m!2866951))

(declare-fun m!2866953 () Bool)

(assert (=> d!716137 m!2866953))

(declare-fun m!2866955 () Bool)

(assert (=> d!716137 m!2866955))

(declare-fun m!2866957 () Bool)

(assert (=> d!716137 m!2866957))

(assert (=> b!2506109 d!716137))

(declare-fun b!2506569 () Bool)

(declare-fun e!1589179 () Bool)

(declare-fun lt!896801 () Option!5840)

(assert (=> b!2506569 (= e!1589179 (= (++!7191 (_1!17262 (get!9136 lt!896801)) (_2!17262 (get!9136 lt!896801))) tl!4068))))

(declare-fun b!2506570 () Bool)

(declare-fun res!1059750 () Bool)

(assert (=> b!2506570 (=> (not res!1059750) (not e!1589179))))

(assert (=> b!2506570 (= res!1059750 (matchR!3434 lt!896735 (_1!17262 (get!9136 lt!896801))))))

(declare-fun b!2506571 () Bool)

(declare-fun e!1589176 () Option!5840)

(declare-fun e!1589177 () Option!5840)

(assert (=> b!2506571 (= e!1589176 e!1589177)))

(declare-fun c!399153 () Bool)

(assert (=> b!2506571 (= c!399153 ((_ is Nil!29396) tl!4068))))

(declare-fun b!2506572 () Bool)

(declare-fun e!1589180 () Bool)

(assert (=> b!2506572 (= e!1589180 (matchR!3434 (regTwo!15374 r!27340) tl!4068))))

(declare-fun b!2506573 () Bool)

(declare-fun res!1059748 () Bool)

(assert (=> b!2506573 (=> (not res!1059748) (not e!1589179))))

(assert (=> b!2506573 (= res!1059748 (matchR!3434 (regTwo!15374 r!27340) (_2!17262 (get!9136 lt!896801))))))

(declare-fun b!2506574 () Bool)

(assert (=> b!2506574 (= e!1589177 None!5839)))

(declare-fun b!2506576 () Bool)

(declare-fun lt!896803 () Unit!43119)

(declare-fun lt!896802 () Unit!43119)

(assert (=> b!2506576 (= lt!896803 lt!896802)))

(assert (=> b!2506576 (= (++!7191 (++!7191 Nil!29396 (Cons!29396 (h!34816 tl!4068) Nil!29396)) (t!211195 tl!4068)) tl!4068)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!741 (List!29496 C!15020 List!29496 List!29496) Unit!43119)

(assert (=> b!2506576 (= lt!896802 (lemmaMoveElementToOtherListKeepsConcatEq!741 Nil!29396 (h!34816 tl!4068) (t!211195 tl!4068) tl!4068))))

(assert (=> b!2506576 (= e!1589177 (findConcatSeparation!862 lt!896735 (regTwo!15374 r!27340) (++!7191 Nil!29396 (Cons!29396 (h!34816 tl!4068) Nil!29396)) (t!211195 tl!4068) tl!4068))))

(declare-fun b!2506577 () Bool)

(assert (=> b!2506577 (= e!1589176 (Some!5839 (tuple2!29441 Nil!29396 tl!4068)))))

(declare-fun b!2506575 () Bool)

(declare-fun e!1589178 () Bool)

(assert (=> b!2506575 (= e!1589178 (not (isDefined!4662 lt!896801)))))

(declare-fun d!716143 () Bool)

(assert (=> d!716143 e!1589178))

(declare-fun res!1059746 () Bool)

(assert (=> d!716143 (=> res!1059746 e!1589178)))

(assert (=> d!716143 (= res!1059746 e!1589179)))

(declare-fun res!1059747 () Bool)

(assert (=> d!716143 (=> (not res!1059747) (not e!1589179))))

(assert (=> d!716143 (= res!1059747 (isDefined!4662 lt!896801))))

(assert (=> d!716143 (= lt!896801 e!1589176)))

(declare-fun c!399152 () Bool)

(assert (=> d!716143 (= c!399152 e!1589180)))

(declare-fun res!1059749 () Bool)

(assert (=> d!716143 (=> (not res!1059749) (not e!1589180))))

(assert (=> d!716143 (= res!1059749 (matchR!3434 lt!896735 Nil!29396))))

(assert (=> d!716143 (validRegex!3057 lt!896735)))

(assert (=> d!716143 (= (findConcatSeparation!862 lt!896735 (regTwo!15374 r!27340) Nil!29396 tl!4068 tl!4068) lt!896801)))

(assert (= (and d!716143 res!1059749) b!2506572))

(assert (= (and d!716143 c!399152) b!2506577))

(assert (= (and d!716143 (not c!399152)) b!2506571))

(assert (= (and b!2506571 c!399153) b!2506574))

(assert (= (and b!2506571 (not c!399153)) b!2506576))

(assert (= (and d!716143 res!1059747) b!2506570))

(assert (= (and b!2506570 res!1059750) b!2506573))

(assert (= (and b!2506573 res!1059748) b!2506569))

(assert (= (and d!716143 (not res!1059746)) b!2506575))

(declare-fun m!2866985 () Bool)

(assert (=> b!2506573 m!2866985))

(declare-fun m!2866987 () Bool)

(assert (=> b!2506573 m!2866987))

(declare-fun m!2866989 () Bool)

(assert (=> d!716143 m!2866989))

(declare-fun m!2866991 () Bool)

(assert (=> d!716143 m!2866991))

(assert (=> d!716143 m!2866909))

(declare-fun m!2866993 () Bool)

(assert (=> b!2506576 m!2866993))

(assert (=> b!2506576 m!2866993))

(declare-fun m!2866995 () Bool)

(assert (=> b!2506576 m!2866995))

(declare-fun m!2866997 () Bool)

(assert (=> b!2506576 m!2866997))

(assert (=> b!2506576 m!2866993))

(declare-fun m!2866999 () Bool)

(assert (=> b!2506576 m!2866999))

(assert (=> b!2506575 m!2866989))

(assert (=> b!2506569 m!2866985))

(declare-fun m!2867001 () Bool)

(assert (=> b!2506569 m!2867001))

(declare-fun m!2867003 () Bool)

(assert (=> b!2506572 m!2867003))

(assert (=> b!2506570 m!2866985))

(declare-fun m!2867005 () Bool)

(assert (=> b!2506570 m!2867005))

(assert (=> b!2506109 d!716143))

(declare-fun d!716149 () Bool)

(assert (=> d!716149 (isDefined!4662 (findConcatSeparation!862 lt!896735 (regTwo!15374 r!27340) Nil!29396 tl!4068 tl!4068))))

(declare-fun lt!896806 () Unit!43119)

(declare-fun choose!14818 (Regex!7431 Regex!7431 List!29496) Unit!43119)

(assert (=> d!716149 (= lt!896806 (choose!14818 lt!896735 (regTwo!15374 r!27340) tl!4068))))

(assert (=> d!716149 (validRegex!3057 lt!896735)))

(assert (=> d!716149 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!144 lt!896735 (regTwo!15374 r!27340) tl!4068) lt!896806)))

(declare-fun bs!468678 () Bool)

(assert (= bs!468678 d!716149))

(assert (=> bs!468678 m!2866683))

(assert (=> bs!468678 m!2866683))

(declare-fun m!2867007 () Bool)

(assert (=> bs!468678 m!2867007))

(declare-fun m!2867009 () Bool)

(assert (=> bs!468678 m!2867009))

(assert (=> bs!468678 m!2866909))

(assert (=> b!2506109 d!716149))

(declare-fun d!716151 () Bool)

(assert (=> d!716151 (= (get!9136 lt!896736) (v!31770 lt!896736))))

(assert (=> b!2506109 d!716151))

(declare-fun d!716153 () Bool)

(declare-fun isEmpty!16868 (Option!5840) Bool)

(assert (=> d!716153 (= (isDefined!4662 lt!896736) (not (isEmpty!16868 lt!896736)))))

(declare-fun bs!468679 () Bool)

(assert (= bs!468679 d!716153))

(declare-fun m!2867011 () Bool)

(assert (=> bs!468679 m!2867011))

(assert (=> b!2506109 d!716153))

(declare-fun d!716155 () Bool)

(assert (=> d!716155 (= (nullable!2348 (regOne!15374 r!27340)) (nullableFct!612 (regOne!15374 r!27340)))))

(declare-fun bs!468680 () Bool)

(assert (= bs!468680 d!716155))

(declare-fun m!2867013 () Bool)

(assert (=> bs!468680 m!2867013))

(assert (=> b!2506099 d!716155))

(declare-fun d!716157 () Bool)

(declare-fun e!1589186 () Bool)

(assert (=> d!716157 e!1589186))

(declare-fun c!399156 () Bool)

(assert (=> d!716157 (= c!399156 ((_ is EmptyExpr!7431) lt!896738))))

(declare-fun lt!896807 () Bool)

(declare-fun e!1589185 () Bool)

(assert (=> d!716157 (= lt!896807 e!1589185)))

(declare-fun c!399155 () Bool)

(assert (=> d!716157 (= c!399155 (isEmpty!16866 tl!4068))))

(assert (=> d!716157 (validRegex!3057 lt!896738)))

(assert (=> d!716157 (= (matchR!3434 lt!896738 tl!4068) lt!896807)))

(declare-fun b!2506578 () Bool)

(declare-fun e!1589184 () Bool)

(declare-fun e!1589182 () Bool)

(assert (=> b!2506578 (= e!1589184 e!1589182)))

(declare-fun res!1059758 () Bool)

(assert (=> b!2506578 (=> (not res!1059758) (not e!1589182))))

(assert (=> b!2506578 (= res!1059758 (not lt!896807))))

(declare-fun b!2506579 () Bool)

(declare-fun e!1589181 () Bool)

(assert (=> b!2506579 (= e!1589186 e!1589181)))

(declare-fun c!399154 () Bool)

(assert (=> b!2506579 (= c!399154 ((_ is EmptyLang!7431) lt!896738))))

(declare-fun b!2506580 () Bool)

(declare-fun e!1589183 () Bool)

(assert (=> b!2506580 (= e!1589182 e!1589183)))

(declare-fun res!1059754 () Bool)

(assert (=> b!2506580 (=> res!1059754 e!1589183)))

(declare-fun call!155219 () Bool)

(assert (=> b!2506580 (= res!1059754 call!155219)))

(declare-fun bm!155214 () Bool)

(assert (=> bm!155214 (= call!155219 (isEmpty!16866 tl!4068))))

(declare-fun b!2506581 () Bool)

(assert (=> b!2506581 (= e!1589181 (not lt!896807))))

(declare-fun b!2506582 () Bool)

(declare-fun res!1059756 () Bool)

(declare-fun e!1589187 () Bool)

(assert (=> b!2506582 (=> (not res!1059756) (not e!1589187))))

(assert (=> b!2506582 (= res!1059756 (isEmpty!16866 (tail!3993 tl!4068)))))

(declare-fun b!2506583 () Bool)

(assert (=> b!2506583 (= e!1589187 (= (head!5716 tl!4068) (c!399033 lt!896738)))))

(declare-fun b!2506584 () Bool)

(declare-fun res!1059755 () Bool)

(assert (=> b!2506584 (=> (not res!1059755) (not e!1589187))))

(assert (=> b!2506584 (= res!1059755 (not call!155219))))

(declare-fun b!2506585 () Bool)

(assert (=> b!2506585 (= e!1589185 (nullable!2348 lt!896738))))

(declare-fun b!2506586 () Bool)

(declare-fun res!1059757 () Bool)

(assert (=> b!2506586 (=> res!1059757 e!1589183)))

(assert (=> b!2506586 (= res!1059757 (not (isEmpty!16866 (tail!3993 tl!4068))))))

(declare-fun b!2506587 () Bool)

(assert (=> b!2506587 (= e!1589185 (matchR!3434 (derivativeStep!2000 lt!896738 (head!5716 tl!4068)) (tail!3993 tl!4068)))))

(declare-fun b!2506588 () Bool)

(assert (=> b!2506588 (= e!1589183 (not (= (head!5716 tl!4068) (c!399033 lt!896738))))))

(declare-fun b!2506589 () Bool)

(assert (=> b!2506589 (= e!1589186 (= lt!896807 call!155219))))

(declare-fun b!2506590 () Bool)

(declare-fun res!1059751 () Bool)

(assert (=> b!2506590 (=> res!1059751 e!1589184)))

(assert (=> b!2506590 (= res!1059751 (not ((_ is ElementMatch!7431) lt!896738)))))

(assert (=> b!2506590 (= e!1589181 e!1589184)))

(declare-fun b!2506591 () Bool)

(declare-fun res!1059752 () Bool)

(assert (=> b!2506591 (=> res!1059752 e!1589184)))

(assert (=> b!2506591 (= res!1059752 e!1589187)))

(declare-fun res!1059753 () Bool)

(assert (=> b!2506591 (=> (not res!1059753) (not e!1589187))))

(assert (=> b!2506591 (= res!1059753 lt!896807)))

(assert (= (and d!716157 c!399155) b!2506585))

(assert (= (and d!716157 (not c!399155)) b!2506587))

(assert (= (and d!716157 c!399156) b!2506589))

(assert (= (and d!716157 (not c!399156)) b!2506579))

(assert (= (and b!2506579 c!399154) b!2506581))

(assert (= (and b!2506579 (not c!399154)) b!2506590))

(assert (= (and b!2506590 (not res!1059751)) b!2506591))

(assert (= (and b!2506591 res!1059753) b!2506584))

(assert (= (and b!2506584 res!1059755) b!2506582))

(assert (= (and b!2506582 res!1059756) b!2506583))

(assert (= (and b!2506591 (not res!1059752)) b!2506578))

(assert (= (and b!2506578 res!1059758) b!2506580))

(assert (= (and b!2506580 (not res!1059754)) b!2506586))

(assert (= (and b!2506586 (not res!1059757)) b!2506588))

(assert (= (or b!2506589 b!2506580 b!2506584) bm!155214))

(assert (=> bm!155214 m!2866891))

(assert (=> d!716157 m!2866891))

(declare-fun m!2867015 () Bool)

(assert (=> d!716157 m!2867015))

(assert (=> b!2506583 m!2866895))

(assert (=> b!2506587 m!2866895))

(assert (=> b!2506587 m!2866895))

(declare-fun m!2867017 () Bool)

(assert (=> b!2506587 m!2867017))

(assert (=> b!2506587 m!2866899))

(assert (=> b!2506587 m!2867017))

(assert (=> b!2506587 m!2866899))

(declare-fun m!2867019 () Bool)

(assert (=> b!2506587 m!2867019))

(assert (=> b!2506586 m!2866899))

(assert (=> b!2506586 m!2866899))

(assert (=> b!2506586 m!2866903))

(assert (=> b!2506582 m!2866899))

(assert (=> b!2506582 m!2866899))

(assert (=> b!2506582 m!2866903))

(assert (=> b!2506588 m!2866895))

(declare-fun m!2867021 () Bool)

(assert (=> b!2506585 m!2867021))

(assert (=> b!2506110 d!716157))

(declare-fun d!716159 () Bool)

(declare-fun lt!896808 () Regex!7431)

(assert (=> d!716159 (validRegex!3057 lt!896808)))

(declare-fun e!1589188 () Regex!7431)

(assert (=> d!716159 (= lt!896808 e!1589188)))

(declare-fun c!399157 () Bool)

(assert (=> d!716159 (= c!399157 ((_ is Cons!29396) tl!4068))))

(assert (=> d!716159 (validRegex!3057 lt!896734)))

(assert (=> d!716159 (= (derivative!126 lt!896734 tl!4068) lt!896808)))

(declare-fun b!2506592 () Bool)

(assert (=> b!2506592 (= e!1589188 (derivative!126 (derivativeStep!2000 lt!896734 (h!34816 tl!4068)) (t!211195 tl!4068)))))

(declare-fun b!2506593 () Bool)

(assert (=> b!2506593 (= e!1589188 lt!896734)))

(assert (= (and d!716159 c!399157) b!2506592))

(assert (= (and d!716159 (not c!399157)) b!2506593))

(declare-fun m!2867023 () Bool)

(assert (=> d!716159 m!2867023))

(declare-fun m!2867025 () Bool)

(assert (=> d!716159 m!2867025))

(declare-fun m!2867027 () Bool)

(assert (=> b!2506592 m!2867027))

(assert (=> b!2506592 m!2867027))

(declare-fun m!2867029 () Bool)

(assert (=> b!2506592 m!2867029))

(assert (=> b!2506110 d!716159))

(declare-fun d!716161 () Bool)

(declare-fun e!1589194 () Bool)

(assert (=> d!716161 e!1589194))

(declare-fun c!399160 () Bool)

(assert (=> d!716161 (= c!399160 ((_ is EmptyExpr!7431) lt!896734))))

(declare-fun lt!896809 () Bool)

(declare-fun e!1589193 () Bool)

(assert (=> d!716161 (= lt!896809 e!1589193)))

(declare-fun c!399159 () Bool)

(assert (=> d!716161 (= c!399159 (isEmpty!16866 tl!4068))))

(assert (=> d!716161 (validRegex!3057 lt!896734)))

(assert (=> d!716161 (= (matchR!3434 lt!896734 tl!4068) lt!896809)))

(declare-fun b!2506594 () Bool)

(declare-fun e!1589192 () Bool)

(declare-fun e!1589190 () Bool)

(assert (=> b!2506594 (= e!1589192 e!1589190)))

(declare-fun res!1059766 () Bool)

(assert (=> b!2506594 (=> (not res!1059766) (not e!1589190))))

(assert (=> b!2506594 (= res!1059766 (not lt!896809))))

(declare-fun b!2506595 () Bool)

(declare-fun e!1589189 () Bool)

(assert (=> b!2506595 (= e!1589194 e!1589189)))

(declare-fun c!399158 () Bool)

(assert (=> b!2506595 (= c!399158 ((_ is EmptyLang!7431) lt!896734))))

(declare-fun b!2506596 () Bool)

(declare-fun e!1589191 () Bool)

(assert (=> b!2506596 (= e!1589190 e!1589191)))

(declare-fun res!1059762 () Bool)

(assert (=> b!2506596 (=> res!1059762 e!1589191)))

(declare-fun call!155220 () Bool)

(assert (=> b!2506596 (= res!1059762 call!155220)))

(declare-fun bm!155215 () Bool)

(assert (=> bm!155215 (= call!155220 (isEmpty!16866 tl!4068))))

(declare-fun b!2506597 () Bool)

(assert (=> b!2506597 (= e!1589189 (not lt!896809))))

(declare-fun b!2506598 () Bool)

(declare-fun res!1059764 () Bool)

(declare-fun e!1589195 () Bool)

(assert (=> b!2506598 (=> (not res!1059764) (not e!1589195))))

(assert (=> b!2506598 (= res!1059764 (isEmpty!16866 (tail!3993 tl!4068)))))

(declare-fun b!2506599 () Bool)

(assert (=> b!2506599 (= e!1589195 (= (head!5716 tl!4068) (c!399033 lt!896734)))))

(declare-fun b!2506600 () Bool)

(declare-fun res!1059763 () Bool)

(assert (=> b!2506600 (=> (not res!1059763) (not e!1589195))))

(assert (=> b!2506600 (= res!1059763 (not call!155220))))

(declare-fun b!2506601 () Bool)

(assert (=> b!2506601 (= e!1589193 (nullable!2348 lt!896734))))

(declare-fun b!2506602 () Bool)

(declare-fun res!1059765 () Bool)

(assert (=> b!2506602 (=> res!1059765 e!1589191)))

(assert (=> b!2506602 (= res!1059765 (not (isEmpty!16866 (tail!3993 tl!4068))))))

(declare-fun b!2506603 () Bool)

(assert (=> b!2506603 (= e!1589193 (matchR!3434 (derivativeStep!2000 lt!896734 (head!5716 tl!4068)) (tail!3993 tl!4068)))))

(declare-fun b!2506604 () Bool)

(assert (=> b!2506604 (= e!1589191 (not (= (head!5716 tl!4068) (c!399033 lt!896734))))))

(declare-fun b!2506605 () Bool)

(assert (=> b!2506605 (= e!1589194 (= lt!896809 call!155220))))

(declare-fun b!2506606 () Bool)

(declare-fun res!1059759 () Bool)

(assert (=> b!2506606 (=> res!1059759 e!1589192)))

(assert (=> b!2506606 (= res!1059759 (not ((_ is ElementMatch!7431) lt!896734)))))

(assert (=> b!2506606 (= e!1589189 e!1589192)))

(declare-fun b!2506607 () Bool)

(declare-fun res!1059760 () Bool)

(assert (=> b!2506607 (=> res!1059760 e!1589192)))

(assert (=> b!2506607 (= res!1059760 e!1589195)))

(declare-fun res!1059761 () Bool)

(assert (=> b!2506607 (=> (not res!1059761) (not e!1589195))))

(assert (=> b!2506607 (= res!1059761 lt!896809)))

(assert (= (and d!716161 c!399159) b!2506601))

(assert (= (and d!716161 (not c!399159)) b!2506603))

(assert (= (and d!716161 c!399160) b!2506605))

(assert (= (and d!716161 (not c!399160)) b!2506595))

(assert (= (and b!2506595 c!399158) b!2506597))

(assert (= (and b!2506595 (not c!399158)) b!2506606))

(assert (= (and b!2506606 (not res!1059759)) b!2506607))

(assert (= (and b!2506607 res!1059761) b!2506600))

(assert (= (and b!2506600 res!1059763) b!2506598))

(assert (= (and b!2506598 res!1059764) b!2506599))

(assert (= (and b!2506607 (not res!1059760)) b!2506594))

(assert (= (and b!2506594 res!1059766) b!2506596))

(assert (= (and b!2506596 (not res!1059762)) b!2506602))

(assert (= (and b!2506602 (not res!1059765)) b!2506604))

(assert (= (or b!2506605 b!2506596 b!2506600) bm!155215))

(assert (=> bm!155215 m!2866891))

(assert (=> d!716161 m!2866891))

(assert (=> d!716161 m!2867025))

(assert (=> b!2506599 m!2866895))

(assert (=> b!2506603 m!2866895))

(assert (=> b!2506603 m!2866895))

(declare-fun m!2867031 () Bool)

(assert (=> b!2506603 m!2867031))

(assert (=> b!2506603 m!2866899))

(assert (=> b!2506603 m!2867031))

(assert (=> b!2506603 m!2866899))

(declare-fun m!2867033 () Bool)

(assert (=> b!2506603 m!2867033))

(assert (=> b!2506602 m!2866899))

(assert (=> b!2506602 m!2866899))

(assert (=> b!2506602 m!2866903))

(assert (=> b!2506598 m!2866899))

(assert (=> b!2506598 m!2866899))

(assert (=> b!2506598 m!2866903))

(assert (=> b!2506604 m!2866895))

(declare-fun m!2867035 () Bool)

(assert (=> b!2506601 m!2867035))

(assert (=> b!2506110 d!716161))

(declare-fun d!716163 () Bool)

(declare-fun e!1589200 () Bool)

(assert (=> d!716163 e!1589200))

(declare-fun res!1059772 () Bool)

(assert (=> d!716163 (=> res!1059772 e!1589200)))

(assert (=> d!716163 (= res!1059772 (matchR!3434 lt!896738 tl!4068))))

(declare-fun lt!896812 () Unit!43119)

(declare-fun choose!14819 (Regex!7431 Regex!7431 List!29496) Unit!43119)

(assert (=> d!716163 (= lt!896812 (choose!14819 lt!896738 lt!896733 tl!4068))))

(declare-fun e!1589201 () Bool)

(assert (=> d!716163 e!1589201))

(declare-fun res!1059771 () Bool)

(assert (=> d!716163 (=> (not res!1059771) (not e!1589201))))

(assert (=> d!716163 (= res!1059771 (validRegex!3057 lt!896738))))

(assert (=> d!716163 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!126 lt!896738 lt!896733 tl!4068) lt!896812)))

(declare-fun b!2506612 () Bool)

(assert (=> b!2506612 (= e!1589201 (validRegex!3057 lt!896733))))

(declare-fun b!2506613 () Bool)

(assert (=> b!2506613 (= e!1589200 (matchR!3434 lt!896733 tl!4068))))

(assert (= (and d!716163 res!1059771) b!2506612))

(assert (= (and d!716163 (not res!1059772)) b!2506613))

(assert (=> d!716163 m!2866693))

(declare-fun m!2867037 () Bool)

(assert (=> d!716163 m!2867037))

(assert (=> d!716163 m!2867015))

(assert (=> b!2506612 m!2866893))

(assert (=> b!2506613 m!2866673))

(assert (=> b!2506110 d!716163))

(declare-fun d!716165 () Bool)

(assert (=> d!716165 (= (matchR!3434 lt!896734 tl!4068) (matchR!3434 (derivative!126 lt!896734 tl!4068) Nil!29396))))

(declare-fun lt!896815 () Unit!43119)

(declare-fun choose!14820 (Regex!7431 List!29496) Unit!43119)

(assert (=> d!716165 (= lt!896815 (choose!14820 lt!896734 tl!4068))))

(assert (=> d!716165 (validRegex!3057 lt!896734)))

(assert (=> d!716165 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!80 lt!896734 tl!4068) lt!896815)))

(declare-fun bs!468681 () Bool)

(assert (= bs!468681 d!716165))

(assert (=> bs!468681 m!2866707))

(declare-fun m!2867039 () Bool)

(assert (=> bs!468681 m!2867039))

(assert (=> bs!468681 m!2866695))

(assert (=> bs!468681 m!2866699))

(assert (=> bs!468681 m!2867025))

(assert (=> bs!468681 m!2866695))

(assert (=> b!2506110 d!716165))

(declare-fun d!716167 () Bool)

(declare-fun e!1589207 () Bool)

(assert (=> d!716167 e!1589207))

(declare-fun c!399163 () Bool)

(assert (=> d!716167 (= c!399163 ((_ is EmptyExpr!7431) (derivative!126 lt!896734 tl!4068)))))

(declare-fun lt!896816 () Bool)

(declare-fun e!1589206 () Bool)

(assert (=> d!716167 (= lt!896816 e!1589206)))

(declare-fun c!399162 () Bool)

(assert (=> d!716167 (= c!399162 (isEmpty!16866 Nil!29396))))

(assert (=> d!716167 (validRegex!3057 (derivative!126 lt!896734 tl!4068))))

(assert (=> d!716167 (= (matchR!3434 (derivative!126 lt!896734 tl!4068) Nil!29396) lt!896816)))

(declare-fun b!2506614 () Bool)

(declare-fun e!1589205 () Bool)

(declare-fun e!1589203 () Bool)

(assert (=> b!2506614 (= e!1589205 e!1589203)))

(declare-fun res!1059780 () Bool)

(assert (=> b!2506614 (=> (not res!1059780) (not e!1589203))))

(assert (=> b!2506614 (= res!1059780 (not lt!896816))))

(declare-fun b!2506615 () Bool)

(declare-fun e!1589202 () Bool)

(assert (=> b!2506615 (= e!1589207 e!1589202)))

(declare-fun c!399161 () Bool)

(assert (=> b!2506615 (= c!399161 ((_ is EmptyLang!7431) (derivative!126 lt!896734 tl!4068)))))

(declare-fun b!2506616 () Bool)

(declare-fun e!1589204 () Bool)

(assert (=> b!2506616 (= e!1589203 e!1589204)))

(declare-fun res!1059776 () Bool)

(assert (=> b!2506616 (=> res!1059776 e!1589204)))

(declare-fun call!155221 () Bool)

(assert (=> b!2506616 (= res!1059776 call!155221)))

(declare-fun bm!155216 () Bool)

(assert (=> bm!155216 (= call!155221 (isEmpty!16866 Nil!29396))))

(declare-fun b!2506617 () Bool)

(assert (=> b!2506617 (= e!1589202 (not lt!896816))))

(declare-fun b!2506618 () Bool)

(declare-fun res!1059778 () Bool)

(declare-fun e!1589208 () Bool)

(assert (=> b!2506618 (=> (not res!1059778) (not e!1589208))))

(assert (=> b!2506618 (= res!1059778 (isEmpty!16866 (tail!3993 Nil!29396)))))

(declare-fun b!2506619 () Bool)

(assert (=> b!2506619 (= e!1589208 (= (head!5716 Nil!29396) (c!399033 (derivative!126 lt!896734 tl!4068))))))

(declare-fun b!2506620 () Bool)

(declare-fun res!1059777 () Bool)

(assert (=> b!2506620 (=> (not res!1059777) (not e!1589208))))

(assert (=> b!2506620 (= res!1059777 (not call!155221))))

(declare-fun b!2506621 () Bool)

(assert (=> b!2506621 (= e!1589206 (nullable!2348 (derivative!126 lt!896734 tl!4068)))))

(declare-fun b!2506622 () Bool)

(declare-fun res!1059779 () Bool)

(assert (=> b!2506622 (=> res!1059779 e!1589204)))

(assert (=> b!2506622 (= res!1059779 (not (isEmpty!16866 (tail!3993 Nil!29396))))))

(declare-fun b!2506623 () Bool)

(assert (=> b!2506623 (= e!1589206 (matchR!3434 (derivativeStep!2000 (derivative!126 lt!896734 tl!4068) (head!5716 Nil!29396)) (tail!3993 Nil!29396)))))

(declare-fun b!2506624 () Bool)

(assert (=> b!2506624 (= e!1589204 (not (= (head!5716 Nil!29396) (c!399033 (derivative!126 lt!896734 tl!4068)))))))

(declare-fun b!2506625 () Bool)

(assert (=> b!2506625 (= e!1589207 (= lt!896816 call!155221))))

(declare-fun b!2506626 () Bool)

(declare-fun res!1059773 () Bool)

(assert (=> b!2506626 (=> res!1059773 e!1589205)))

(assert (=> b!2506626 (= res!1059773 (not ((_ is ElementMatch!7431) (derivative!126 lt!896734 tl!4068))))))

(assert (=> b!2506626 (= e!1589202 e!1589205)))

(declare-fun b!2506627 () Bool)

(declare-fun res!1059774 () Bool)

(assert (=> b!2506627 (=> res!1059774 e!1589205)))

(assert (=> b!2506627 (= res!1059774 e!1589208)))

(declare-fun res!1059775 () Bool)

(assert (=> b!2506627 (=> (not res!1059775) (not e!1589208))))

(assert (=> b!2506627 (= res!1059775 lt!896816)))

(assert (= (and d!716167 c!399162) b!2506621))

(assert (= (and d!716167 (not c!399162)) b!2506623))

(assert (= (and d!716167 c!399163) b!2506625))

(assert (= (and d!716167 (not c!399163)) b!2506615))

(assert (= (and b!2506615 c!399161) b!2506617))

(assert (= (and b!2506615 (not c!399161)) b!2506626))

(assert (= (and b!2506626 (not res!1059773)) b!2506627))

(assert (= (and b!2506627 res!1059775) b!2506620))

(assert (= (and b!2506620 res!1059777) b!2506618))

(assert (= (and b!2506618 res!1059778) b!2506619))

(assert (= (and b!2506627 (not res!1059774)) b!2506614))

(assert (= (and b!2506614 res!1059780) b!2506616))

(assert (= (and b!2506616 (not res!1059776)) b!2506622))

(assert (= (and b!2506622 (not res!1059779)) b!2506624))

(assert (= (or b!2506625 b!2506616 b!2506620) bm!155216))

(declare-fun m!2867041 () Bool)

(assert (=> bm!155216 m!2867041))

(assert (=> d!716167 m!2867041))

(assert (=> d!716167 m!2866695))

(declare-fun m!2867043 () Bool)

(assert (=> d!716167 m!2867043))

(declare-fun m!2867045 () Bool)

(assert (=> b!2506619 m!2867045))

(assert (=> b!2506623 m!2867045))

(assert (=> b!2506623 m!2866695))

(assert (=> b!2506623 m!2867045))

(declare-fun m!2867047 () Bool)

(assert (=> b!2506623 m!2867047))

(declare-fun m!2867049 () Bool)

(assert (=> b!2506623 m!2867049))

(assert (=> b!2506623 m!2867047))

(assert (=> b!2506623 m!2867049))

(declare-fun m!2867051 () Bool)

(assert (=> b!2506623 m!2867051))

(assert (=> b!2506622 m!2867049))

(assert (=> b!2506622 m!2867049))

(declare-fun m!2867053 () Bool)

(assert (=> b!2506622 m!2867053))

(assert (=> b!2506618 m!2867049))

(assert (=> b!2506618 m!2867049))

(assert (=> b!2506618 m!2867053))

(assert (=> b!2506624 m!2867045))

(assert (=> b!2506621 m!2866695))

(declare-fun m!2867055 () Bool)

(assert (=> b!2506621 m!2867055))

(assert (=> b!2506110 d!716167))

(declare-fun b!2506628 () Bool)

(declare-fun e!1589212 () Regex!7431)

(declare-fun call!155222 () Regex!7431)

(assert (=> b!2506628 (= e!1589212 (Union!7431 (Concat!12127 call!155222 (regTwo!15374 (regTwo!15374 r!27340))) EmptyLang!7431))))

(declare-fun b!2506629 () Bool)

(declare-fun c!399166 () Bool)

(assert (=> b!2506629 (= c!399166 ((_ is Union!7431) (regTwo!15374 r!27340)))))

(declare-fun e!1589211 () Regex!7431)

(declare-fun e!1589213 () Regex!7431)

(assert (=> b!2506629 (= e!1589211 e!1589213)))

(declare-fun bm!155217 () Bool)

(declare-fun call!155225 () Regex!7431)

(declare-fun call!155224 () Regex!7431)

(assert (=> bm!155217 (= call!155225 call!155224)))

(declare-fun b!2506630 () Bool)

(declare-fun e!1589210 () Regex!7431)

(assert (=> b!2506630 (= e!1589210 EmptyLang!7431)))

(declare-fun b!2506632 () Bool)

(declare-fun e!1589209 () Regex!7431)

(assert (=> b!2506632 (= e!1589213 e!1589209)))

(declare-fun c!399164 () Bool)

(assert (=> b!2506632 (= c!399164 ((_ is Star!7431) (regTwo!15374 r!27340)))))

(declare-fun bm!155218 () Bool)

(assert (=> bm!155218 (= call!155222 call!155225)))

(declare-fun b!2506633 () Bool)

(assert (=> b!2506633 (= e!1589210 e!1589211)))

(declare-fun c!399165 () Bool)

(assert (=> b!2506633 (= c!399165 ((_ is ElementMatch!7431) (regTwo!15374 r!27340)))))

(declare-fun b!2506634 () Bool)

(assert (=> b!2506634 (= e!1589211 (ite (= c!14016 (c!399033 (regTwo!15374 r!27340))) EmptyExpr!7431 EmptyLang!7431))))

(declare-fun b!2506635 () Bool)

(declare-fun call!155223 () Regex!7431)

(assert (=> b!2506635 (= e!1589213 (Union!7431 call!155223 call!155224))))

(declare-fun b!2506636 () Bool)

(assert (=> b!2506636 (= e!1589212 (Union!7431 (Concat!12127 call!155222 (regTwo!15374 (regTwo!15374 r!27340))) call!155223))))

(declare-fun b!2506637 () Bool)

(declare-fun c!399167 () Bool)

(assert (=> b!2506637 (= c!399167 (nullable!2348 (regOne!15374 (regTwo!15374 r!27340))))))

(assert (=> b!2506637 (= e!1589209 e!1589212)))

(declare-fun bm!155219 () Bool)

(assert (=> bm!155219 (= call!155223 (derivativeStep!2000 (ite c!399166 (regOne!15375 (regTwo!15374 r!27340)) (regTwo!15374 (regTwo!15374 r!27340))) c!14016))))

(declare-fun bm!155220 () Bool)

(assert (=> bm!155220 (= call!155224 (derivativeStep!2000 (ite c!399166 (regTwo!15375 (regTwo!15374 r!27340)) (ite c!399164 (reg!7760 (regTwo!15374 r!27340)) (regOne!15374 (regTwo!15374 r!27340)))) c!14016))))

(declare-fun b!2506631 () Bool)

(assert (=> b!2506631 (= e!1589209 (Concat!12127 call!155225 (regTwo!15374 r!27340)))))

(declare-fun d!716169 () Bool)

(declare-fun lt!896817 () Regex!7431)

(assert (=> d!716169 (validRegex!3057 lt!896817)))

(assert (=> d!716169 (= lt!896817 e!1589210)))

(declare-fun c!399168 () Bool)

(assert (=> d!716169 (= c!399168 (or ((_ is EmptyExpr!7431) (regTwo!15374 r!27340)) ((_ is EmptyLang!7431) (regTwo!15374 r!27340))))))

(assert (=> d!716169 (validRegex!3057 (regTwo!15374 r!27340))))

(assert (=> d!716169 (= (derivativeStep!2000 (regTwo!15374 r!27340) c!14016) lt!896817)))

(assert (= (and d!716169 c!399168) b!2506630))

(assert (= (and d!716169 (not c!399168)) b!2506633))

(assert (= (and b!2506633 c!399165) b!2506634))

(assert (= (and b!2506633 (not c!399165)) b!2506629))

(assert (= (and b!2506629 c!399166) b!2506635))

(assert (= (and b!2506629 (not c!399166)) b!2506632))

(assert (= (and b!2506632 c!399164) b!2506631))

(assert (= (and b!2506632 (not c!399164)) b!2506637))

(assert (= (and b!2506637 c!399167) b!2506636))

(assert (= (and b!2506637 (not c!399167)) b!2506628))

(assert (= (or b!2506636 b!2506628) bm!155218))

(assert (= (or b!2506631 bm!155218) bm!155217))

(assert (= (or b!2506635 bm!155217) bm!155220))

(assert (= (or b!2506635 b!2506636) bm!155219))

(declare-fun m!2867057 () Bool)

(assert (=> b!2506637 m!2867057))

(declare-fun m!2867059 () Bool)

(assert (=> bm!155219 m!2867059))

(declare-fun m!2867061 () Bool)

(assert (=> bm!155220 m!2867061))

(declare-fun m!2867063 () Bool)

(assert (=> d!716169 m!2867063))

(assert (=> d!716169 m!2866877))

(assert (=> b!2506110 d!716169))

(declare-fun b!2506638 () Bool)

(declare-fun e!1589217 () Regex!7431)

(declare-fun call!155226 () Regex!7431)

(assert (=> b!2506638 (= e!1589217 (Union!7431 (Concat!12127 call!155226 (regTwo!15374 (regOne!15374 r!27340))) EmptyLang!7431))))

(declare-fun b!2506639 () Bool)

(declare-fun c!399171 () Bool)

(assert (=> b!2506639 (= c!399171 ((_ is Union!7431) (regOne!15374 r!27340)))))

(declare-fun e!1589216 () Regex!7431)

(declare-fun e!1589218 () Regex!7431)

(assert (=> b!2506639 (= e!1589216 e!1589218)))

(declare-fun bm!155221 () Bool)

(declare-fun call!155229 () Regex!7431)

(declare-fun call!155228 () Regex!7431)

(assert (=> bm!155221 (= call!155229 call!155228)))

(declare-fun b!2506640 () Bool)

(declare-fun e!1589215 () Regex!7431)

(assert (=> b!2506640 (= e!1589215 EmptyLang!7431)))

(declare-fun b!2506642 () Bool)

(declare-fun e!1589214 () Regex!7431)

(assert (=> b!2506642 (= e!1589218 e!1589214)))

(declare-fun c!399169 () Bool)

(assert (=> b!2506642 (= c!399169 ((_ is Star!7431) (regOne!15374 r!27340)))))

(declare-fun bm!155222 () Bool)

(assert (=> bm!155222 (= call!155226 call!155229)))

(declare-fun b!2506643 () Bool)

(assert (=> b!2506643 (= e!1589215 e!1589216)))

(declare-fun c!399170 () Bool)

(assert (=> b!2506643 (= c!399170 ((_ is ElementMatch!7431) (regOne!15374 r!27340)))))

(declare-fun b!2506644 () Bool)

(assert (=> b!2506644 (= e!1589216 (ite (= c!14016 (c!399033 (regOne!15374 r!27340))) EmptyExpr!7431 EmptyLang!7431))))

(declare-fun b!2506645 () Bool)

(declare-fun call!155227 () Regex!7431)

(assert (=> b!2506645 (= e!1589218 (Union!7431 call!155227 call!155228))))

(declare-fun b!2506646 () Bool)

(assert (=> b!2506646 (= e!1589217 (Union!7431 (Concat!12127 call!155226 (regTwo!15374 (regOne!15374 r!27340))) call!155227))))

(declare-fun b!2506647 () Bool)

(declare-fun c!399172 () Bool)

(assert (=> b!2506647 (= c!399172 (nullable!2348 (regOne!15374 (regOne!15374 r!27340))))))

(assert (=> b!2506647 (= e!1589214 e!1589217)))

(declare-fun bm!155223 () Bool)

(assert (=> bm!155223 (= call!155227 (derivativeStep!2000 (ite c!399171 (regOne!15375 (regOne!15374 r!27340)) (regTwo!15374 (regOne!15374 r!27340))) c!14016))))

(declare-fun bm!155224 () Bool)

(assert (=> bm!155224 (= call!155228 (derivativeStep!2000 (ite c!399171 (regTwo!15375 (regOne!15374 r!27340)) (ite c!399169 (reg!7760 (regOne!15374 r!27340)) (regOne!15374 (regOne!15374 r!27340)))) c!14016))))

(declare-fun b!2506641 () Bool)

(assert (=> b!2506641 (= e!1589214 (Concat!12127 call!155229 (regOne!15374 r!27340)))))

(declare-fun d!716171 () Bool)

(declare-fun lt!896818 () Regex!7431)

(assert (=> d!716171 (validRegex!3057 lt!896818)))

(assert (=> d!716171 (= lt!896818 e!1589215)))

(declare-fun c!399173 () Bool)

(assert (=> d!716171 (= c!399173 (or ((_ is EmptyExpr!7431) (regOne!15374 r!27340)) ((_ is EmptyLang!7431) (regOne!15374 r!27340))))))

(assert (=> d!716171 (validRegex!3057 (regOne!15374 r!27340))))

(assert (=> d!716171 (= (derivativeStep!2000 (regOne!15374 r!27340) c!14016) lt!896818)))

(assert (= (and d!716171 c!399173) b!2506640))

(assert (= (and d!716171 (not c!399173)) b!2506643))

(assert (= (and b!2506643 c!399170) b!2506644))

(assert (= (and b!2506643 (not c!399170)) b!2506639))

(assert (= (and b!2506639 c!399171) b!2506645))

(assert (= (and b!2506639 (not c!399171)) b!2506642))

(assert (= (and b!2506642 c!399169) b!2506641))

(assert (= (and b!2506642 (not c!399169)) b!2506647))

(assert (= (and b!2506647 c!399172) b!2506646))

(assert (= (and b!2506647 (not c!399172)) b!2506638))

(assert (= (or b!2506646 b!2506638) bm!155222))

(assert (= (or b!2506641 bm!155222) bm!155221))

(assert (= (or b!2506645 bm!155221) bm!155224))

(assert (= (or b!2506645 b!2506646) bm!155223))

(declare-fun m!2867065 () Bool)

(assert (=> b!2506647 m!2867065))

(declare-fun m!2867067 () Bool)

(assert (=> bm!155223 m!2867067))

(declare-fun m!2867069 () Bool)

(assert (=> bm!155224 m!2867069))

(declare-fun m!2867071 () Bool)

(assert (=> d!716171 m!2867071))

(assert (=> d!716171 m!2866715))

(assert (=> b!2506110 d!716171))

(declare-fun b!2506652 () Bool)

(declare-fun e!1589221 () Bool)

(declare-fun tp!801847 () Bool)

(assert (=> b!2506652 (= e!1589221 (and tp_is_empty!12717 tp!801847))))

(assert (=> b!2506097 (= tp!801802 e!1589221)))

(assert (= (and b!2506097 ((_ is Cons!29396) (t!211195 tl!4068))) b!2506652))

(declare-fun b!2506666 () Bool)

(declare-fun e!1589224 () Bool)

(declare-fun tp!801860 () Bool)

(declare-fun tp!801858 () Bool)

(assert (=> b!2506666 (= e!1589224 (and tp!801860 tp!801858))))

(assert (=> b!2506098 (= tp!801801 e!1589224)))

(declare-fun b!2506665 () Bool)

(declare-fun tp!801859 () Bool)

(assert (=> b!2506665 (= e!1589224 tp!801859)))

(declare-fun b!2506663 () Bool)

(assert (=> b!2506663 (= e!1589224 tp_is_empty!12717)))

(declare-fun b!2506664 () Bool)

(declare-fun tp!801861 () Bool)

(declare-fun tp!801862 () Bool)

(assert (=> b!2506664 (= e!1589224 (and tp!801861 tp!801862))))

(assert (= (and b!2506098 ((_ is ElementMatch!7431) (regOne!15375 r!27340))) b!2506663))

(assert (= (and b!2506098 ((_ is Concat!12127) (regOne!15375 r!27340))) b!2506664))

(assert (= (and b!2506098 ((_ is Star!7431) (regOne!15375 r!27340))) b!2506665))

(assert (= (and b!2506098 ((_ is Union!7431) (regOne!15375 r!27340))) b!2506666))

(declare-fun b!2506670 () Bool)

(declare-fun e!1589225 () Bool)

(declare-fun tp!801865 () Bool)

(declare-fun tp!801863 () Bool)

(assert (=> b!2506670 (= e!1589225 (and tp!801865 tp!801863))))

(assert (=> b!2506098 (= tp!801805 e!1589225)))

(declare-fun b!2506669 () Bool)

(declare-fun tp!801864 () Bool)

(assert (=> b!2506669 (= e!1589225 tp!801864)))

(declare-fun b!2506667 () Bool)

(assert (=> b!2506667 (= e!1589225 tp_is_empty!12717)))

(declare-fun b!2506668 () Bool)

(declare-fun tp!801866 () Bool)

(declare-fun tp!801867 () Bool)

(assert (=> b!2506668 (= e!1589225 (and tp!801866 tp!801867))))

(assert (= (and b!2506098 ((_ is ElementMatch!7431) (regTwo!15375 r!27340))) b!2506667))

(assert (= (and b!2506098 ((_ is Concat!12127) (regTwo!15375 r!27340))) b!2506668))

(assert (= (and b!2506098 ((_ is Star!7431) (regTwo!15375 r!27340))) b!2506669))

(assert (= (and b!2506098 ((_ is Union!7431) (regTwo!15375 r!27340))) b!2506670))

(declare-fun b!2506674 () Bool)

(declare-fun e!1589226 () Bool)

(declare-fun tp!801870 () Bool)

(declare-fun tp!801868 () Bool)

(assert (=> b!2506674 (= e!1589226 (and tp!801870 tp!801868))))

(assert (=> b!2506104 (= tp!801804 e!1589226)))

(declare-fun b!2506673 () Bool)

(declare-fun tp!801869 () Bool)

(assert (=> b!2506673 (= e!1589226 tp!801869)))

(declare-fun b!2506671 () Bool)

(assert (=> b!2506671 (= e!1589226 tp_is_empty!12717)))

(declare-fun b!2506672 () Bool)

(declare-fun tp!801871 () Bool)

(declare-fun tp!801872 () Bool)

(assert (=> b!2506672 (= e!1589226 (and tp!801871 tp!801872))))

(assert (= (and b!2506104 ((_ is ElementMatch!7431) (regOne!15374 r!27340))) b!2506671))

(assert (= (and b!2506104 ((_ is Concat!12127) (regOne!15374 r!27340))) b!2506672))

(assert (= (and b!2506104 ((_ is Star!7431) (regOne!15374 r!27340))) b!2506673))

(assert (= (and b!2506104 ((_ is Union!7431) (regOne!15374 r!27340))) b!2506674))

(declare-fun b!2506678 () Bool)

(declare-fun e!1589227 () Bool)

(declare-fun tp!801875 () Bool)

(declare-fun tp!801873 () Bool)

(assert (=> b!2506678 (= e!1589227 (and tp!801875 tp!801873))))

(assert (=> b!2506104 (= tp!801803 e!1589227)))

(declare-fun b!2506677 () Bool)

(declare-fun tp!801874 () Bool)

(assert (=> b!2506677 (= e!1589227 tp!801874)))

(declare-fun b!2506675 () Bool)

(assert (=> b!2506675 (= e!1589227 tp_is_empty!12717)))

(declare-fun b!2506676 () Bool)

(declare-fun tp!801876 () Bool)

(declare-fun tp!801877 () Bool)

(assert (=> b!2506676 (= e!1589227 (and tp!801876 tp!801877))))

(assert (= (and b!2506104 ((_ is ElementMatch!7431) (regTwo!15374 r!27340))) b!2506675))

(assert (= (and b!2506104 ((_ is Concat!12127) (regTwo!15374 r!27340))) b!2506676))

(assert (= (and b!2506104 ((_ is Star!7431) (regTwo!15374 r!27340))) b!2506677))

(assert (= (and b!2506104 ((_ is Union!7431) (regTwo!15374 r!27340))) b!2506678))

(declare-fun b!2506682 () Bool)

(declare-fun e!1589228 () Bool)

(declare-fun tp!801880 () Bool)

(declare-fun tp!801878 () Bool)

(assert (=> b!2506682 (= e!1589228 (and tp!801880 tp!801878))))

(assert (=> b!2506105 (= tp!801806 e!1589228)))

(declare-fun b!2506681 () Bool)

(declare-fun tp!801879 () Bool)

(assert (=> b!2506681 (= e!1589228 tp!801879)))

(declare-fun b!2506679 () Bool)

(assert (=> b!2506679 (= e!1589228 tp_is_empty!12717)))

(declare-fun b!2506680 () Bool)

(declare-fun tp!801881 () Bool)

(declare-fun tp!801882 () Bool)

(assert (=> b!2506680 (= e!1589228 (and tp!801881 tp!801882))))

(assert (= (and b!2506105 ((_ is ElementMatch!7431) (reg!7760 r!27340))) b!2506679))

(assert (= (and b!2506105 ((_ is Concat!12127) (reg!7760 r!27340))) b!2506680))

(assert (= (and b!2506105 ((_ is Star!7431) (reg!7760 r!27340))) b!2506681))

(assert (= (and b!2506105 ((_ is Union!7431) (reg!7760 r!27340))) b!2506682))

(check-sat (not bm!155156) (not d!716171) (not bm!155153) (not b!2506676) (not bm!155185) (not d!716157) (not bm!155200) (not d!716101) (not d!716155) (not d!716165) (not bm!155199) (not b!2506422) (not b!2506673) (not b!2506592) (not b!2506668) (not b!2506409) (not b!2506603) (not b!2506410) (not d!716109) (not bm!155215) (not d!716153) (not b!2506573) (not d!716135) (not b!2506575) (not b!2506423) (not bm!155219) (not b!2506622) (not b!2506395) (not b!2506619) (not b!2506569) (not b!2506665) (not d!716149) (not b!2506391) (not b!2506647) (not b!2506572) (not b!2506582) (not b!2506411) (not b!2506570) (not b!2506652) (not b!2506598) (not bm!155224) (not b!2506678) (not b!2506424) (not b!2506166) (not d!716133) (not b!2506604) (not bm!155201) (not b!2506587) (not b!2506680) (not b!2506465) (not b!2506618) (not d!716091) (not b!2506613) (not b!2506677) (not b!2506585) (not bm!155155) (not d!716169) (not bm!155223) (not b!2506157) tp_is_empty!12717 (not b!2506681) (not b!2506583) (not bm!155216) (not b!2506207) (not b!2506666) (not b!2506670) (not b!2506664) (not d!716163) (not b!2506602) (not b!2506672) (not d!716137) (not d!716167) (not b!2506425) (not b!2506396) (not d!716143) (not b!2506288) (not b!2506674) (not d!716093) (not b!2506682) (not bm!155214) (not b!2506588) (not b!2506392) (not b!2506669) (not b!2506621) (not b!2506624) (not bm!155220) (not b!2506576) (not b!2506406) (not b!2506405) (not d!716161) (not d!716159) (not b!2506623) (not b!2506466) (not b!2506419) (not b!2506637) (not b!2506397) (not b!2506420) (not b!2506586) (not b!2506599) (not b!2506601) (not bm!155184) (not b!2506394) (not b!2506408) (not bm!155158) (not b!2506612))
(check-sat)
