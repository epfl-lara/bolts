; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110446 () Bool)

(assert start!110446)

(declare-fun b!1253036 () Bool)

(declare-fun e!797680 () Bool)

(declare-fun tp_is_empty!6447 () Bool)

(assert (=> b!1253036 (= e!797680 tp_is_empty!6447)))

(declare-fun b!1253037 () Bool)

(declare-fun tp!369229 () Bool)

(declare-fun tp!369228 () Bool)

(assert (=> b!1253037 (= e!797680 (and tp!369229 tp!369228))))

(declare-fun b!1253039 () Bool)

(declare-fun e!797679 () Bool)

(declare-datatypes ((C!7244 0))(
  ( (C!7245 (val!4152 Int)) )
))
(declare-datatypes ((Regex!3463 0))(
  ( (ElementMatch!3463 (c!207920 C!7244)) (Concat!5693 (regOne!7438 Regex!3463) (regTwo!7438 Regex!3463)) (EmptyExpr!3463) (Star!3463 (reg!3792 Regex!3463)) (EmptyLang!3463) (Union!3463 (regOne!7439 Regex!3463) (regTwo!7439 Regex!3463)) )
))
(declare-fun r!15719 () Regex!3463)

(declare-fun regexDepth!58 (Regex!3463) Int)

(assert (=> b!1253039 (= e!797679 (>= (regexDepth!58 (regOne!7439 r!15719)) (regexDepth!58 r!15719)))))

(declare-fun b!1253040 () Bool)

(declare-fun res!555386 () Bool)

(assert (=> b!1253040 (=> (not res!555386) (not e!797679))))

(get-info :version)

(assert (=> b!1253040 (= res!555386 (and (or (not ((_ is Concat!5693) r!15719)) (not ((_ is EmptyExpr!3463) (regOne!7438 r!15719)))) (or (not ((_ is Concat!5693) r!15719)) (not ((_ is EmptyExpr!3463) (regTwo!7438 r!15719)))) (not ((_ is Concat!5693) r!15719)) ((_ is Union!3463) r!15719)))))

(declare-fun b!1253041 () Bool)

(declare-fun tp!369227 () Bool)

(declare-fun tp!369226 () Bool)

(assert (=> b!1253041 (= e!797680 (and tp!369227 tp!369226))))

(declare-fun b!1253038 () Bool)

(declare-fun tp!369225 () Bool)

(assert (=> b!1253038 (= e!797680 tp!369225)))

(declare-fun res!555385 () Bool)

(assert (=> start!110446 (=> (not res!555385) (not e!797679))))

(declare-fun validRegex!1499 (Regex!3463) Bool)

(assert (=> start!110446 (= res!555385 (validRegex!1499 r!15719))))

(assert (=> start!110446 e!797679))

(assert (=> start!110446 e!797680))

(assert (= (and start!110446 res!555385) b!1253040))

(assert (= (and b!1253040 res!555386) b!1253039))

(assert (= (and start!110446 ((_ is ElementMatch!3463) r!15719)) b!1253036))

(assert (= (and start!110446 ((_ is Concat!5693) r!15719)) b!1253037))

(assert (= (and start!110446 ((_ is Star!3463) r!15719)) b!1253038))

(assert (= (and start!110446 ((_ is Union!3463) r!15719)) b!1253041))

(declare-fun m!1412885 () Bool)

(assert (=> b!1253039 m!1412885))

(declare-fun m!1412887 () Bool)

(assert (=> b!1253039 m!1412887))

(declare-fun m!1412889 () Bool)

(assert (=> start!110446 m!1412889))

(check-sat (not b!1253038) (not b!1253037) (not b!1253041) (not start!110446) tp_is_empty!6447 (not b!1253039))
(check-sat)
(get-model)

(declare-fun b!1253087 () Bool)

(declare-fun res!555415 () Bool)

(declare-fun e!797721 () Bool)

(assert (=> b!1253087 (=> (not res!555415) (not e!797721))))

(declare-fun call!87538 () Bool)

(assert (=> b!1253087 (= res!555415 call!87538)))

(declare-fun e!797717 () Bool)

(assert (=> b!1253087 (= e!797717 e!797721)))

(declare-fun b!1253088 () Bool)

(declare-fun e!797719 () Bool)

(declare-fun e!797716 () Bool)

(assert (=> b!1253088 (= e!797719 e!797716)))

(declare-fun res!555413 () Bool)

(declare-fun nullable!1100 (Regex!3463) Bool)

(assert (=> b!1253088 (= res!555413 (not (nullable!1100 (reg!3792 r!15719))))))

(assert (=> b!1253088 (=> (not res!555413) (not e!797716))))

(declare-fun b!1253089 () Bool)

(declare-fun res!555412 () Bool)

(declare-fun e!797722 () Bool)

(assert (=> b!1253089 (=> res!555412 e!797722)))

(assert (=> b!1253089 (= res!555412 (not ((_ is Concat!5693) r!15719)))))

(assert (=> b!1253089 (= e!797717 e!797722)))

(declare-fun b!1253090 () Bool)

(declare-fun e!797720 () Bool)

(declare-fun call!87539 () Bool)

(assert (=> b!1253090 (= e!797720 call!87539)))

(declare-fun b!1253091 () Bool)

(declare-fun e!797718 () Bool)

(assert (=> b!1253091 (= e!797718 e!797719)))

(declare-fun c!207932 () Bool)

(assert (=> b!1253091 (= c!207932 ((_ is Star!3463) r!15719))))

(declare-fun bm!87532 () Bool)

(declare-fun c!207931 () Bool)

(assert (=> bm!87532 (= call!87539 (validRegex!1499 (ite c!207931 (regTwo!7439 r!15719) (regTwo!7438 r!15719))))))

(declare-fun b!1253093 () Bool)

(assert (=> b!1253093 (= e!797721 call!87539)))

(declare-fun b!1253092 () Bool)

(assert (=> b!1253092 (= e!797722 e!797720)))

(declare-fun res!555416 () Bool)

(assert (=> b!1253092 (=> (not res!555416) (not e!797720))))

(assert (=> b!1253092 (= res!555416 call!87538)))

(declare-fun d!354573 () Bool)

(declare-fun res!555414 () Bool)

(assert (=> d!354573 (=> res!555414 e!797718)))

(assert (=> d!354573 (= res!555414 ((_ is ElementMatch!3463) r!15719))))

(assert (=> d!354573 (= (validRegex!1499 r!15719) e!797718)))

(declare-fun call!87537 () Bool)

(declare-fun bm!87533 () Bool)

(assert (=> bm!87533 (= call!87537 (validRegex!1499 (ite c!207932 (reg!3792 r!15719) (ite c!207931 (regOne!7439 r!15719) (regOne!7438 r!15719)))))))

(declare-fun b!1253094 () Bool)

(assert (=> b!1253094 (= e!797716 call!87537)))

(declare-fun b!1253095 () Bool)

(assert (=> b!1253095 (= e!797719 e!797717)))

(assert (=> b!1253095 (= c!207931 ((_ is Union!3463) r!15719))))

(declare-fun bm!87534 () Bool)

(assert (=> bm!87534 (= call!87538 call!87537)))

(assert (= (and d!354573 (not res!555414)) b!1253091))

(assert (= (and b!1253091 c!207932) b!1253088))

(assert (= (and b!1253091 (not c!207932)) b!1253095))

(assert (= (and b!1253088 res!555413) b!1253094))

(assert (= (and b!1253095 c!207931) b!1253087))

(assert (= (and b!1253095 (not c!207931)) b!1253089))

(assert (= (and b!1253087 res!555415) b!1253093))

(assert (= (and b!1253089 (not res!555412)) b!1253092))

(assert (= (and b!1253092 res!555416) b!1253090))

(assert (= (or b!1253093 b!1253090) bm!87532))

(assert (= (or b!1253087 b!1253092) bm!87534))

(assert (= (or b!1253094 bm!87534) bm!87533))

(declare-fun m!1412897 () Bool)

(assert (=> b!1253088 m!1412897))

(declare-fun m!1412899 () Bool)

(assert (=> bm!87532 m!1412899))

(declare-fun m!1412901 () Bool)

(assert (=> bm!87533 m!1412901))

(assert (=> start!110446 d!354573))

(declare-fun b!1253181 () Bool)

(declare-fun e!797777 () Int)

(assert (=> b!1253181 (= e!797777 1)))

(declare-fun b!1253182 () Bool)

(declare-fun e!797776 () Int)

(assert (=> b!1253182 (= e!797776 1)))

(declare-fun call!87576 () Int)

(declare-fun bm!87570 () Bool)

(declare-fun c!207971 () Bool)

(declare-fun c!207969 () Bool)

(assert (=> bm!87570 (= call!87576 (regexDepth!58 (ite c!207969 (reg!3792 (regOne!7439 r!15719)) (ite c!207971 (regOne!7439 (regOne!7439 r!15719)) (regOne!7438 (regOne!7439 r!15719))))))))

(declare-fun b!1253183 () Bool)

(declare-fun e!797782 () Bool)

(declare-fun e!797775 () Bool)

(assert (=> b!1253183 (= e!797782 e!797775)))

(declare-fun c!207968 () Bool)

(assert (=> b!1253183 (= c!207968 ((_ is Union!3463) (regOne!7439 r!15719)))))

(declare-fun b!1253184 () Bool)

(assert (=> b!1253184 (= c!207971 ((_ is Union!3463) (regOne!7439 r!15719)))))

(declare-fun e!797774 () Int)

(declare-fun e!797779 () Int)

(assert (=> b!1253184 (= e!797774 e!797779)))

(declare-fun b!1253185 () Bool)

(declare-fun e!797780 () Bool)

(declare-fun lt!420259 () Int)

(assert (=> b!1253185 (= e!797780 (= lt!420259 1))))

(declare-fun b!1253186 () Bool)

(declare-fun call!87577 () Int)

(assert (=> b!1253186 (= e!797780 (> lt!420259 call!87577))))

(declare-fun c!207970 () Bool)

(declare-fun call!87578 () Int)

(declare-fun bm!87571 () Bool)

(assert (=> bm!87571 (= call!87578 (regexDepth!58 (ite c!207968 (regTwo!7439 (regOne!7439 r!15719)) (ite c!207970 (regOne!7438 (regOne!7439 r!15719)) (reg!3792 (regOne!7439 r!15719))))))))

(declare-fun bm!87572 () Bool)

(declare-fun call!87579 () Int)

(assert (=> bm!87572 (= call!87579 (regexDepth!58 (ite c!207968 (regOne!7439 (regOne!7439 r!15719)) (regTwo!7438 (regOne!7439 r!15719)))))))

(declare-fun b!1253187 () Bool)

(declare-fun call!87575 () Int)

(assert (=> b!1253187 (= e!797779 (+ 1 call!87575))))

(declare-fun b!1253188 () Bool)

(assert (=> b!1253188 (= e!797779 e!797777)))

(declare-fun c!207973 () Bool)

(assert (=> b!1253188 (= c!207973 ((_ is Concat!5693) (regOne!7439 r!15719)))))

(declare-fun bm!87573 () Bool)

(declare-fun call!87581 () Int)

(declare-fun call!87580 () Int)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!87573 (= call!87575 (maxBigInt!0 call!87581 call!87580))))

(declare-fun b!1253189 () Bool)

(declare-fun e!797778 () Bool)

(assert (=> b!1253189 (= e!797775 e!797778)))

(declare-fun res!555432 () Bool)

(assert (=> b!1253189 (= res!555432 (> lt!420259 call!87579))))

(assert (=> b!1253189 (=> (not res!555432) (not e!797778))))

(declare-fun bm!87574 () Bool)

(assert (=> bm!87574 (= call!87577 call!87578)))

(declare-fun b!1253190 () Bool)

(declare-fun c!207972 () Bool)

(assert (=> b!1253190 (= c!207972 ((_ is Star!3463) (regOne!7439 r!15719)))))

(declare-fun e!797781 () Bool)

(assert (=> b!1253190 (= e!797781 e!797780)))

(declare-fun b!1253191 () Bool)

(declare-fun res!555434 () Bool)

(declare-fun e!797773 () Bool)

(assert (=> b!1253191 (=> (not res!555434) (not e!797773))))

(assert (=> b!1253191 (= res!555434 (> lt!420259 call!87577))))

(assert (=> b!1253191 (= e!797781 e!797773)))

(declare-fun b!1253192 () Bool)

(assert (=> b!1253192 (= e!797776 e!797774)))

(assert (=> b!1253192 (= c!207969 ((_ is Star!3463) (regOne!7439 r!15719)))))

(declare-fun b!1253193 () Bool)

(assert (=> b!1253193 (= e!797775 e!797781)))

(assert (=> b!1253193 (= c!207970 ((_ is Concat!5693) (regOne!7439 r!15719)))))

(declare-fun b!1253194 () Bool)

(assert (=> b!1253194 (= e!797773 (> lt!420259 call!87579))))

(declare-fun b!1253195 () Bool)

(assert (=> b!1253195 (= e!797774 (+ 1 call!87576))))

(declare-fun b!1253196 () Bool)

(assert (=> b!1253196 (= e!797778 (> lt!420259 call!87578))))

(declare-fun b!1253197 () Bool)

(assert (=> b!1253197 (= e!797777 (+ 1 call!87575))))

(declare-fun bm!87575 () Bool)

(assert (=> bm!87575 (= call!87580 (regexDepth!58 (ite c!207971 (regTwo!7439 (regOne!7439 r!15719)) (regTwo!7438 (regOne!7439 r!15719)))))))

(declare-fun d!354577 () Bool)

(assert (=> d!354577 e!797782))

(declare-fun res!555433 () Bool)

(assert (=> d!354577 (=> (not res!555433) (not e!797782))))

(assert (=> d!354577 (= res!555433 (> lt!420259 0))))

(assert (=> d!354577 (= lt!420259 e!797776)))

(declare-fun c!207974 () Bool)

(assert (=> d!354577 (= c!207974 ((_ is ElementMatch!3463) (regOne!7439 r!15719)))))

(assert (=> d!354577 (= (regexDepth!58 (regOne!7439 r!15719)) lt!420259)))

(declare-fun bm!87576 () Bool)

(assert (=> bm!87576 (= call!87581 call!87576)))

(assert (= (and d!354577 c!207974) b!1253182))

(assert (= (and d!354577 (not c!207974)) b!1253192))

(assert (= (and b!1253192 c!207969) b!1253195))

(assert (= (and b!1253192 (not c!207969)) b!1253184))

(assert (= (and b!1253184 c!207971) b!1253187))

(assert (= (and b!1253184 (not c!207971)) b!1253188))

(assert (= (and b!1253188 c!207973) b!1253197))

(assert (= (and b!1253188 (not c!207973)) b!1253181))

(assert (= (or b!1253187 b!1253197) bm!87576))

(assert (= (or b!1253187 b!1253197) bm!87575))

(assert (= (or b!1253187 b!1253197) bm!87573))

(assert (= (or b!1253195 bm!87576) bm!87570))

(assert (= (and d!354577 res!555433) b!1253183))

(assert (= (and b!1253183 c!207968) b!1253189))

(assert (= (and b!1253183 (not c!207968)) b!1253193))

(assert (= (and b!1253189 res!555432) b!1253196))

(assert (= (and b!1253193 c!207970) b!1253191))

(assert (= (and b!1253193 (not c!207970)) b!1253190))

(assert (= (and b!1253191 res!555434) b!1253194))

(assert (= (and b!1253190 c!207972) b!1253186))

(assert (= (and b!1253190 (not c!207972)) b!1253185))

(assert (= (or b!1253191 b!1253186) bm!87574))

(assert (= (or b!1253189 b!1253194) bm!87572))

(assert (= (or b!1253196 bm!87574) bm!87571))

(declare-fun m!1412913 () Bool)

(assert (=> bm!87571 m!1412913))

(declare-fun m!1412917 () Bool)

(assert (=> bm!87570 m!1412917))

(declare-fun m!1412921 () Bool)

(assert (=> bm!87572 m!1412921))

(declare-fun m!1412925 () Bool)

(assert (=> bm!87575 m!1412925))

(declare-fun m!1412929 () Bool)

(assert (=> bm!87573 m!1412929))

(assert (=> b!1253039 d!354577))

(declare-fun b!1253217 () Bool)

(declare-fun e!797797 () Int)

(assert (=> b!1253217 (= e!797797 1)))

(declare-fun b!1253218 () Bool)

(declare-fun e!797796 () Int)

(assert (=> b!1253218 (= e!797796 1)))

(declare-fun c!207983 () Bool)

(declare-fun bm!87584 () Bool)

(declare-fun c!207985 () Bool)

(declare-fun call!87590 () Int)

(assert (=> bm!87584 (= call!87590 (regexDepth!58 (ite c!207983 (reg!3792 r!15719) (ite c!207985 (regOne!7439 r!15719) (regOne!7438 r!15719)))))))

(declare-fun b!1253219 () Bool)

(declare-fun e!797802 () Bool)

(declare-fun e!797795 () Bool)

(assert (=> b!1253219 (= e!797802 e!797795)))

(declare-fun c!207982 () Bool)

(assert (=> b!1253219 (= c!207982 ((_ is Union!3463) r!15719))))

(declare-fun b!1253220 () Bool)

(assert (=> b!1253220 (= c!207985 ((_ is Union!3463) r!15719))))

(declare-fun e!797794 () Int)

(declare-fun e!797799 () Int)

(assert (=> b!1253220 (= e!797794 e!797799)))

(declare-fun b!1253221 () Bool)

(declare-fun e!797800 () Bool)

(declare-fun lt!420261 () Int)

(assert (=> b!1253221 (= e!797800 (= lt!420261 1))))

(declare-fun b!1253222 () Bool)

(declare-fun call!87591 () Int)

(assert (=> b!1253222 (= e!797800 (> lt!420261 call!87591))))

(declare-fun call!87592 () Int)

(declare-fun c!207984 () Bool)

(declare-fun bm!87585 () Bool)

(assert (=> bm!87585 (= call!87592 (regexDepth!58 (ite c!207982 (regTwo!7439 r!15719) (ite c!207984 (regOne!7438 r!15719) (reg!3792 r!15719)))))))

(declare-fun bm!87586 () Bool)

(declare-fun call!87593 () Int)

(assert (=> bm!87586 (= call!87593 (regexDepth!58 (ite c!207982 (regOne!7439 r!15719) (regTwo!7438 r!15719))))))

(declare-fun b!1253223 () Bool)

(declare-fun call!87589 () Int)

(assert (=> b!1253223 (= e!797799 (+ 1 call!87589))))

(declare-fun b!1253224 () Bool)

(assert (=> b!1253224 (= e!797799 e!797797)))

(declare-fun c!207987 () Bool)

(assert (=> b!1253224 (= c!207987 ((_ is Concat!5693) r!15719))))

(declare-fun bm!87587 () Bool)

(declare-fun call!87595 () Int)

(declare-fun call!87594 () Int)

(assert (=> bm!87587 (= call!87589 (maxBigInt!0 call!87595 call!87594))))

(declare-fun b!1253225 () Bool)

(declare-fun e!797798 () Bool)

(assert (=> b!1253225 (= e!797795 e!797798)))

(declare-fun res!555438 () Bool)

(assert (=> b!1253225 (= res!555438 (> lt!420261 call!87593))))

(assert (=> b!1253225 (=> (not res!555438) (not e!797798))))

(declare-fun bm!87588 () Bool)

(assert (=> bm!87588 (= call!87591 call!87592)))

(declare-fun b!1253226 () Bool)

(declare-fun c!207986 () Bool)

(assert (=> b!1253226 (= c!207986 ((_ is Star!3463) r!15719))))

(declare-fun e!797801 () Bool)

(assert (=> b!1253226 (= e!797801 e!797800)))

(declare-fun b!1253227 () Bool)

(declare-fun res!555440 () Bool)

(declare-fun e!797793 () Bool)

(assert (=> b!1253227 (=> (not res!555440) (not e!797793))))

(assert (=> b!1253227 (= res!555440 (> lt!420261 call!87591))))

(assert (=> b!1253227 (= e!797801 e!797793)))

(declare-fun b!1253228 () Bool)

(assert (=> b!1253228 (= e!797796 e!797794)))

(assert (=> b!1253228 (= c!207983 ((_ is Star!3463) r!15719))))

(declare-fun b!1253229 () Bool)

(assert (=> b!1253229 (= e!797795 e!797801)))

(assert (=> b!1253229 (= c!207984 ((_ is Concat!5693) r!15719))))

(declare-fun b!1253230 () Bool)

(assert (=> b!1253230 (= e!797793 (> lt!420261 call!87593))))

(declare-fun b!1253231 () Bool)

(assert (=> b!1253231 (= e!797794 (+ 1 call!87590))))

(declare-fun b!1253232 () Bool)

(assert (=> b!1253232 (= e!797798 (> lt!420261 call!87592))))

(declare-fun b!1253233 () Bool)

(assert (=> b!1253233 (= e!797797 (+ 1 call!87589))))

(declare-fun bm!87589 () Bool)

(assert (=> bm!87589 (= call!87594 (regexDepth!58 (ite c!207985 (regTwo!7439 r!15719) (regTwo!7438 r!15719))))))

(declare-fun d!354581 () Bool)

(assert (=> d!354581 e!797802))

(declare-fun res!555439 () Bool)

(assert (=> d!354581 (=> (not res!555439) (not e!797802))))

(assert (=> d!354581 (= res!555439 (> lt!420261 0))))

(assert (=> d!354581 (= lt!420261 e!797796)))

(declare-fun c!207988 () Bool)

(assert (=> d!354581 (= c!207988 ((_ is ElementMatch!3463) r!15719))))

(assert (=> d!354581 (= (regexDepth!58 r!15719) lt!420261)))

(declare-fun bm!87590 () Bool)

(assert (=> bm!87590 (= call!87595 call!87590)))

(assert (= (and d!354581 c!207988) b!1253218))

(assert (= (and d!354581 (not c!207988)) b!1253228))

(assert (= (and b!1253228 c!207983) b!1253231))

(assert (= (and b!1253228 (not c!207983)) b!1253220))

(assert (= (and b!1253220 c!207985) b!1253223))

(assert (= (and b!1253220 (not c!207985)) b!1253224))

(assert (= (and b!1253224 c!207987) b!1253233))

(assert (= (and b!1253224 (not c!207987)) b!1253217))

(assert (= (or b!1253223 b!1253233) bm!87590))

(assert (= (or b!1253223 b!1253233) bm!87589))

(assert (= (or b!1253223 b!1253233) bm!87587))

(assert (= (or b!1253231 bm!87590) bm!87584))

(assert (= (and d!354581 res!555439) b!1253219))

(assert (= (and b!1253219 c!207982) b!1253225))

(assert (= (and b!1253219 (not c!207982)) b!1253229))

(assert (= (and b!1253225 res!555438) b!1253232))

(assert (= (and b!1253229 c!207984) b!1253227))

(assert (= (and b!1253229 (not c!207984)) b!1253226))

(assert (= (and b!1253227 res!555440) b!1253230))

(assert (= (and b!1253226 c!207986) b!1253222))

(assert (= (and b!1253226 (not c!207986)) b!1253221))

(assert (= (or b!1253227 b!1253222) bm!87588))

(assert (= (or b!1253225 b!1253230) bm!87586))

(assert (= (or b!1253232 bm!87588) bm!87585))

(declare-fun m!1412933 () Bool)

(assert (=> bm!87585 m!1412933))

(declare-fun m!1412935 () Bool)

(assert (=> bm!87584 m!1412935))

(declare-fun m!1412937 () Bool)

(assert (=> bm!87586 m!1412937))

(declare-fun m!1412939 () Bool)

(assert (=> bm!87589 m!1412939))

(declare-fun m!1412941 () Bool)

(assert (=> bm!87587 m!1412941))

(assert (=> b!1253039 d!354581))

(declare-fun b!1253272 () Bool)

(declare-fun e!797812 () Bool)

(assert (=> b!1253272 (= e!797812 tp_is_empty!6447)))

(declare-fun b!1253275 () Bool)

(declare-fun tp!369275 () Bool)

(declare-fun tp!369276 () Bool)

(assert (=> b!1253275 (= e!797812 (and tp!369275 tp!369276))))

(declare-fun b!1253274 () Bool)

(declare-fun tp!369277 () Bool)

(assert (=> b!1253274 (= e!797812 tp!369277)))

(declare-fun b!1253273 () Bool)

(declare-fun tp!369278 () Bool)

(declare-fun tp!369279 () Bool)

(assert (=> b!1253273 (= e!797812 (and tp!369278 tp!369279))))

(assert (=> b!1253038 (= tp!369225 e!797812)))

(assert (= (and b!1253038 ((_ is ElementMatch!3463) (reg!3792 r!15719))) b!1253272))

(assert (= (and b!1253038 ((_ is Concat!5693) (reg!3792 r!15719))) b!1253273))

(assert (= (and b!1253038 ((_ is Star!3463) (reg!3792 r!15719))) b!1253274))

(assert (= (and b!1253038 ((_ is Union!3463) (reg!3792 r!15719))) b!1253275))

(declare-fun b!1253276 () Bool)

(declare-fun e!797813 () Bool)

(assert (=> b!1253276 (= e!797813 tp_is_empty!6447)))

(declare-fun b!1253279 () Bool)

(declare-fun tp!369280 () Bool)

(declare-fun tp!369281 () Bool)

(assert (=> b!1253279 (= e!797813 (and tp!369280 tp!369281))))

(declare-fun b!1253278 () Bool)

(declare-fun tp!369282 () Bool)

(assert (=> b!1253278 (= e!797813 tp!369282)))

(declare-fun b!1253277 () Bool)

(declare-fun tp!369283 () Bool)

(declare-fun tp!369284 () Bool)

(assert (=> b!1253277 (= e!797813 (and tp!369283 tp!369284))))

(assert (=> b!1253037 (= tp!369229 e!797813)))

(assert (= (and b!1253037 ((_ is ElementMatch!3463) (regOne!7438 r!15719))) b!1253276))

(assert (= (and b!1253037 ((_ is Concat!5693) (regOne!7438 r!15719))) b!1253277))

(assert (= (and b!1253037 ((_ is Star!3463) (regOne!7438 r!15719))) b!1253278))

(assert (= (and b!1253037 ((_ is Union!3463) (regOne!7438 r!15719))) b!1253279))

(declare-fun b!1253280 () Bool)

(declare-fun e!797814 () Bool)

(assert (=> b!1253280 (= e!797814 tp_is_empty!6447)))

(declare-fun b!1253283 () Bool)

(declare-fun tp!369285 () Bool)

(declare-fun tp!369286 () Bool)

(assert (=> b!1253283 (= e!797814 (and tp!369285 tp!369286))))

(declare-fun b!1253282 () Bool)

(declare-fun tp!369287 () Bool)

(assert (=> b!1253282 (= e!797814 tp!369287)))

(declare-fun b!1253281 () Bool)

(declare-fun tp!369288 () Bool)

(declare-fun tp!369289 () Bool)

(assert (=> b!1253281 (= e!797814 (and tp!369288 tp!369289))))

(assert (=> b!1253037 (= tp!369228 e!797814)))

(assert (= (and b!1253037 ((_ is ElementMatch!3463) (regTwo!7438 r!15719))) b!1253280))

(assert (= (and b!1253037 ((_ is Concat!5693) (regTwo!7438 r!15719))) b!1253281))

(assert (= (and b!1253037 ((_ is Star!3463) (regTwo!7438 r!15719))) b!1253282))

(assert (= (and b!1253037 ((_ is Union!3463) (regTwo!7438 r!15719))) b!1253283))

(declare-fun b!1253284 () Bool)

(declare-fun e!797815 () Bool)

(assert (=> b!1253284 (= e!797815 tp_is_empty!6447)))

(declare-fun b!1253287 () Bool)

(declare-fun tp!369290 () Bool)

(declare-fun tp!369291 () Bool)

(assert (=> b!1253287 (= e!797815 (and tp!369290 tp!369291))))

(declare-fun b!1253286 () Bool)

(declare-fun tp!369292 () Bool)

(assert (=> b!1253286 (= e!797815 tp!369292)))

(declare-fun b!1253285 () Bool)

(declare-fun tp!369293 () Bool)

(declare-fun tp!369294 () Bool)

(assert (=> b!1253285 (= e!797815 (and tp!369293 tp!369294))))

(assert (=> b!1253041 (= tp!369227 e!797815)))

(assert (= (and b!1253041 ((_ is ElementMatch!3463) (regOne!7439 r!15719))) b!1253284))

(assert (= (and b!1253041 ((_ is Concat!5693) (regOne!7439 r!15719))) b!1253285))

(assert (= (and b!1253041 ((_ is Star!3463) (regOne!7439 r!15719))) b!1253286))

(assert (= (and b!1253041 ((_ is Union!3463) (regOne!7439 r!15719))) b!1253287))

(declare-fun b!1253288 () Bool)

(declare-fun e!797816 () Bool)

(assert (=> b!1253288 (= e!797816 tp_is_empty!6447)))

(declare-fun b!1253291 () Bool)

(declare-fun tp!369295 () Bool)

(declare-fun tp!369296 () Bool)

(assert (=> b!1253291 (= e!797816 (and tp!369295 tp!369296))))

(declare-fun b!1253290 () Bool)

(declare-fun tp!369297 () Bool)

(assert (=> b!1253290 (= e!797816 tp!369297)))

(declare-fun b!1253289 () Bool)

(declare-fun tp!369298 () Bool)

(declare-fun tp!369299 () Bool)

(assert (=> b!1253289 (= e!797816 (and tp!369298 tp!369299))))

(assert (=> b!1253041 (= tp!369226 e!797816)))

(assert (= (and b!1253041 ((_ is ElementMatch!3463) (regTwo!7439 r!15719))) b!1253288))

(assert (= (and b!1253041 ((_ is Concat!5693) (regTwo!7439 r!15719))) b!1253289))

(assert (= (and b!1253041 ((_ is Star!3463) (regTwo!7439 r!15719))) b!1253290))

(assert (= (and b!1253041 ((_ is Union!3463) (regTwo!7439 r!15719))) b!1253291))

(check-sat (not b!1253273) (not b!1253279) (not b!1253283) (not b!1253285) (not b!1253286) (not bm!87573) (not b!1253282) (not bm!87585) (not b!1253274) (not bm!87584) (not bm!87533) (not bm!87570) (not b!1253290) (not b!1253291) tp_is_empty!6447 (not b!1253278) (not bm!87586) (not bm!87589) (not b!1253289) (not bm!87575) (not b!1253287) (not bm!87587) (not b!1253088) (not bm!87572) (not b!1253281) (not bm!87532) (not b!1253277) (not b!1253275) (not bm!87571))
(check-sat)
