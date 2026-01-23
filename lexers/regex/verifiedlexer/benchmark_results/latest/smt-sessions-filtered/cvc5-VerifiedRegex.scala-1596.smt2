; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!82200 () Bool)

(assert start!82200)

(declare-fun b!914264 () Bool)

(assert (=> b!914264 true))

(assert (=> b!914264 true))

(declare-fun lambda!29338 () Int)

(declare-fun lambda!29337 () Int)

(assert (=> b!914264 (not (= lambda!29338 lambda!29337))))

(assert (=> b!914264 true))

(assert (=> b!914264 true))

(declare-fun b!914260 () Bool)

(declare-fun e!596016 () Bool)

(declare-fun tp!285654 () Bool)

(assert (=> b!914260 (= e!596016 tp!285654)))

(declare-fun b!914261 () Bool)

(declare-fun e!596012 () Bool)

(declare-datatypes ((C!5470 0))(
  ( (C!5471 (val!2983 Int)) )
))
(declare-datatypes ((Regex!2450 0))(
  ( (ElementMatch!2450 (c!148115 C!5470)) (Concat!4283 (regOne!5412 Regex!2450) (regTwo!5412 Regex!2450)) (EmptyExpr!2450) (Star!2450 (reg!2779 Regex!2450)) (EmptyLang!2450) (Union!2450 (regOne!5413 Regex!2450) (regTwo!5413 Regex!2450)) )
))
(declare-fun r!15766 () Regex!2450)

(declare-fun validRegex!919 (Regex!2450) Bool)

(declare-fun removeUselessConcat!127 (Regex!2450) Regex!2450)

(assert (=> b!914261 (= e!596012 (validRegex!919 (Concat!4283 (removeUselessConcat!127 (regOne!5412 r!15766)) (removeUselessConcat!127 (regTwo!5412 r!15766)))))))

(declare-fun b!914262 () Bool)

(declare-fun tp_is_empty!4543 () Bool)

(assert (=> b!914262 (= e!596016 tp_is_empty!4543)))

(declare-fun e!596013 () Bool)

(assert (=> b!914264 (= e!596013 e!596012)))

(declare-fun res!415740 () Bool)

(assert (=> b!914264 (=> res!415740 e!596012)))

(declare-datatypes ((List!9680 0))(
  ( (Nil!9664) (Cons!9664 (h!15065 C!5470) (t!100726 List!9680)) )
))
(declare-fun s!10566 () List!9680)

(declare-fun isEmpty!5889 (List!9680) Bool)

(assert (=> b!914264 (= res!415740 (isEmpty!5889 s!10566))))

(declare-fun Exists!221 (Int) Bool)

(assert (=> b!914264 (= (Exists!221 lambda!29337) (Exists!221 lambda!29338))))

(declare-datatypes ((Unit!14519 0))(
  ( (Unit!14520) )
))
(declare-fun lt!337259 () Unit!14519)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!133 (Regex!2450 Regex!2450 List!9680) Unit!14519)

(assert (=> b!914264 (= lt!337259 (lemmaExistCutMatchRandMatchRSpecEquivalent!133 (regOne!5412 r!15766) (regTwo!5412 r!15766) s!10566))))

(declare-datatypes ((tuple2!10886 0))(
  ( (tuple2!10887 (_1!6269 List!9680) (_2!6269 List!9680)) )
))
(declare-datatypes ((Option!2085 0))(
  ( (None!2084) (Some!2084 (v!19501 tuple2!10886)) )
))
(declare-fun isDefined!1727 (Option!2085) Bool)

(declare-fun findConcatSeparation!191 (Regex!2450 Regex!2450 List!9680 List!9680 List!9680) Option!2085)

(assert (=> b!914264 (= (isDefined!1727 (findConcatSeparation!191 (regOne!5412 r!15766) (regTwo!5412 r!15766) Nil!9664 s!10566 s!10566)) (Exists!221 lambda!29337))))

(declare-fun lt!337257 () Unit!14519)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!191 (Regex!2450 Regex!2450 List!9680) Unit!14519)

(assert (=> b!914264 (= lt!337257 (lemmaFindConcatSeparationEquivalentToExists!191 (regOne!5412 r!15766) (regTwo!5412 r!15766) s!10566))))

(declare-fun b!914265 () Bool)

(declare-fun e!596015 () Bool)

(assert (=> b!914265 (= e!596015 (not e!596013))))

(declare-fun res!415739 () Bool)

(assert (=> b!914265 (=> res!415739 e!596013)))

(declare-fun lt!337256 () Bool)

(assert (=> b!914265 (= res!415739 (or lt!337256 (and (is-Concat!4283 r!15766) (is-EmptyExpr!2450 (regOne!5412 r!15766))) (and (is-Concat!4283 r!15766) (is-EmptyExpr!2450 (regTwo!5412 r!15766))) (not (is-Concat!4283 r!15766))))))

(declare-fun matchRSpec!251 (Regex!2450 List!9680) Bool)

(assert (=> b!914265 (= lt!337256 (matchRSpec!251 r!15766 s!10566))))

(declare-fun matchR!988 (Regex!2450 List!9680) Bool)

(assert (=> b!914265 (= lt!337256 (matchR!988 r!15766 s!10566))))

(declare-fun lt!337258 () Unit!14519)

(declare-fun mainMatchTheorem!251 (Regex!2450 List!9680) Unit!14519)

(assert (=> b!914265 (= lt!337258 (mainMatchTheorem!251 r!15766 s!10566))))

(declare-fun b!914266 () Bool)

(declare-fun e!596014 () Bool)

(declare-fun tp!285649 () Bool)

(assert (=> b!914266 (= e!596014 (and tp_is_empty!4543 tp!285649))))

(declare-fun b!914267 () Bool)

(declare-fun tp!285650 () Bool)

(declare-fun tp!285652 () Bool)

(assert (=> b!914267 (= e!596016 (and tp!285650 tp!285652))))

(declare-fun b!914263 () Bool)

(declare-fun tp!285651 () Bool)

(declare-fun tp!285653 () Bool)

(assert (=> b!914263 (= e!596016 (and tp!285651 tp!285653))))

(declare-fun res!415741 () Bool)

(assert (=> start!82200 (=> (not res!415741) (not e!596015))))

(assert (=> start!82200 (= res!415741 (validRegex!919 r!15766))))

(assert (=> start!82200 e!596015))

(assert (=> start!82200 e!596016))

(assert (=> start!82200 e!596014))

(assert (= (and start!82200 res!415741) b!914265))

(assert (= (and b!914265 (not res!415739)) b!914264))

(assert (= (and b!914264 (not res!415740)) b!914261))

(assert (= (and start!82200 (is-ElementMatch!2450 r!15766)) b!914262))

(assert (= (and start!82200 (is-Concat!4283 r!15766)) b!914267))

(assert (= (and start!82200 (is-Star!2450 r!15766)) b!914260))

(assert (= (and start!82200 (is-Union!2450 r!15766)) b!914263))

(assert (= (and start!82200 (is-Cons!9664 s!10566)) b!914266))

(declare-fun m!1144717 () Bool)

(assert (=> b!914261 m!1144717))

(declare-fun m!1144719 () Bool)

(assert (=> b!914261 m!1144719))

(declare-fun m!1144721 () Bool)

(assert (=> b!914261 m!1144721))

(declare-fun m!1144723 () Bool)

(assert (=> b!914264 m!1144723))

(declare-fun m!1144725 () Bool)

(assert (=> b!914264 m!1144725))

(declare-fun m!1144727 () Bool)

(assert (=> b!914264 m!1144727))

(declare-fun m!1144729 () Bool)

(assert (=> b!914264 m!1144729))

(declare-fun m!1144731 () Bool)

(assert (=> b!914264 m!1144731))

(declare-fun m!1144733 () Bool)

(assert (=> b!914264 m!1144733))

(assert (=> b!914264 m!1144733))

(declare-fun m!1144735 () Bool)

(assert (=> b!914264 m!1144735))

(assert (=> b!914264 m!1144729))

(declare-fun m!1144737 () Bool)

(assert (=> b!914265 m!1144737))

(declare-fun m!1144739 () Bool)

(assert (=> b!914265 m!1144739))

(declare-fun m!1144741 () Bool)

(assert (=> b!914265 m!1144741))

(declare-fun m!1144743 () Bool)

(assert (=> start!82200 m!1144743))

(push 1)

(assert (not b!914260))

(assert (not b!914263))

(assert (not b!914264))

(assert (not b!914265))

(assert (not b!914266))

(assert (not b!914267))

(assert (not b!914261))

(assert (not start!82200))

(assert tp_is_empty!4543)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!914330 () Bool)

(declare-fun e!596057 () Bool)

(declare-fun e!596054 () Bool)

(assert (=> b!914330 (= e!596057 e!596054)))

(declare-fun c!148121 () Bool)

(assert (=> b!914330 (= c!148121 (is-Union!2450 (Concat!4283 (removeUselessConcat!127 (regOne!5412 r!15766)) (removeUselessConcat!127 (regTwo!5412 r!15766)))))))

(declare-fun b!914331 () Bool)

(declare-fun e!596055 () Bool)

(declare-fun e!596056 () Bool)

(assert (=> b!914331 (= e!596055 e!596056)))

(declare-fun res!415776 () Bool)

(assert (=> b!914331 (=> (not res!415776) (not e!596056))))

(declare-fun call!55119 () Bool)

(assert (=> b!914331 (= res!415776 call!55119)))

(declare-fun b!914332 () Bool)

(declare-fun e!596053 () Bool)

(assert (=> b!914332 (= e!596057 e!596053)))

(declare-fun res!415775 () Bool)

(declare-fun nullable!668 (Regex!2450) Bool)

(assert (=> b!914332 (= res!415775 (not (nullable!668 (reg!2779 (Concat!4283 (removeUselessConcat!127 (regOne!5412 r!15766)) (removeUselessConcat!127 (regTwo!5412 r!15766)))))))))

(assert (=> b!914332 (=> (not res!415775) (not e!596053))))

(declare-fun bm!55113 () Bool)

(declare-fun call!55118 () Bool)

(declare-fun call!55120 () Bool)

(assert (=> bm!55113 (= call!55118 call!55120)))

(declare-fun b!914333 () Bool)

(assert (=> b!914333 (= e!596056 call!55118)))

(declare-fun b!914334 () Bool)

(declare-fun res!415777 () Bool)

(assert (=> b!914334 (=> res!415777 e!596055)))

(assert (=> b!914334 (= res!415777 (not (is-Concat!4283 (Concat!4283 (removeUselessConcat!127 (regOne!5412 r!15766)) (removeUselessConcat!127 (regTwo!5412 r!15766))))))))

(assert (=> b!914334 (= e!596054 e!596055)))

(declare-fun b!914335 () Bool)

(declare-fun e!596058 () Bool)

(assert (=> b!914335 (= e!596058 e!596057)))

(declare-fun c!148122 () Bool)

(assert (=> b!914335 (= c!148122 (is-Star!2450 (Concat!4283 (removeUselessConcat!127 (regOne!5412 r!15766)) (removeUselessConcat!127 (regTwo!5412 r!15766)))))))

(declare-fun d!279621 () Bool)

(declare-fun res!415773 () Bool)

(assert (=> d!279621 (=> res!415773 e!596058)))

(assert (=> d!279621 (= res!415773 (is-ElementMatch!2450 (Concat!4283 (removeUselessConcat!127 (regOne!5412 r!15766)) (removeUselessConcat!127 (regTwo!5412 r!15766)))))))

(assert (=> d!279621 (= (validRegex!919 (Concat!4283 (removeUselessConcat!127 (regOne!5412 r!15766)) (removeUselessConcat!127 (regTwo!5412 r!15766)))) e!596058)))

(declare-fun bm!55114 () Bool)

(assert (=> bm!55114 (= call!55120 (validRegex!919 (ite c!148122 (reg!2779 (Concat!4283 (removeUselessConcat!127 (regOne!5412 r!15766)) (removeUselessConcat!127 (regTwo!5412 r!15766)))) (ite c!148121 (regTwo!5413 (Concat!4283 (removeUselessConcat!127 (regOne!5412 r!15766)) (removeUselessConcat!127 (regTwo!5412 r!15766)))) (regTwo!5412 (Concat!4283 (removeUselessConcat!127 (regOne!5412 r!15766)) (removeUselessConcat!127 (regTwo!5412 r!15766))))))))))

(declare-fun b!914336 () Bool)

(assert (=> b!914336 (= e!596053 call!55120)))

(declare-fun b!914337 () Bool)

(declare-fun res!415774 () Bool)

(declare-fun e!596052 () Bool)

(assert (=> b!914337 (=> (not res!415774) (not e!596052))))

(assert (=> b!914337 (= res!415774 call!55119)))

(assert (=> b!914337 (= e!596054 e!596052)))

(declare-fun b!914338 () Bool)

(assert (=> b!914338 (= e!596052 call!55118)))

(declare-fun bm!55115 () Bool)

(assert (=> bm!55115 (= call!55119 (validRegex!919 (ite c!148121 (regOne!5413 (Concat!4283 (removeUselessConcat!127 (regOne!5412 r!15766)) (removeUselessConcat!127 (regTwo!5412 r!15766)))) (regOne!5412 (Concat!4283 (removeUselessConcat!127 (regOne!5412 r!15766)) (removeUselessConcat!127 (regTwo!5412 r!15766)))))))))

(assert (= (and d!279621 (not res!415773)) b!914335))

(assert (= (and b!914335 c!148122) b!914332))

(assert (= (and b!914335 (not c!148122)) b!914330))

(assert (= (and b!914332 res!415775) b!914336))

(assert (= (and b!914330 c!148121) b!914337))

(assert (= (and b!914330 (not c!148121)) b!914334))

(assert (= (and b!914337 res!415774) b!914338))

(assert (= (and b!914334 (not res!415777)) b!914331))

(assert (= (and b!914331 res!415776) b!914333))

(assert (= (or b!914338 b!914333) bm!55113))

(assert (= (or b!914337 b!914331) bm!55115))

(assert (= (or b!914336 bm!55113) bm!55114))

(declare-fun m!1144773 () Bool)

(assert (=> b!914332 m!1144773))

(declare-fun m!1144775 () Bool)

(assert (=> bm!55114 m!1144775))

(declare-fun m!1144777 () Bool)

(assert (=> bm!55115 m!1144777))

(assert (=> b!914261 d!279621))

(declare-fun bm!55126 () Bool)

(declare-fun call!55131 () Regex!2450)

(declare-fun call!55134 () Regex!2450)

(assert (=> bm!55126 (= call!55131 call!55134)))

(declare-fun b!914361 () Bool)

(declare-fun e!596073 () Regex!2450)

(assert (=> b!914361 (= e!596073 (regOne!5412 r!15766))))

(declare-fun b!914362 () Bool)

(declare-fun e!596074 () Regex!2450)

(declare-fun call!55133 () Regex!2450)

(assert (=> b!914362 (= e!596074 call!55133)))

(declare-fun d!279623 () Bool)

(declare-fun e!596072 () Bool)

(assert (=> d!279623 e!596072))

(declare-fun res!415780 () Bool)

(assert (=> d!279623 (=> (not res!415780) (not e!596072))))

(declare-fun lt!337274 () Regex!2450)

(assert (=> d!279623 (= res!415780 (validRegex!919 lt!337274))))

(declare-fun e!596075 () Regex!2450)

(assert (=> d!279623 (= lt!337274 e!596075)))

(declare-fun c!148137 () Bool)

(assert (=> d!279623 (= c!148137 (and (is-Concat!4283 (regOne!5412 r!15766)) (is-EmptyExpr!2450 (regOne!5412 (regOne!5412 r!15766)))))))

(assert (=> d!279623 (validRegex!919 (regOne!5412 r!15766))))

(assert (=> d!279623 (= (removeUselessConcat!127 (regOne!5412 r!15766)) lt!337274)))

(declare-fun b!914363 () Bool)

(assert (=> b!914363 (= e!596073 (Star!2450 call!55131))))

(declare-fun bm!55127 () Bool)

(declare-fun call!55132 () Regex!2450)

(declare-fun c!148135 () Bool)

(declare-fun c!148136 () Bool)

(declare-fun c!148133 () Bool)

(assert (=> bm!55127 (= call!55132 (removeUselessConcat!127 (ite c!148137 (regTwo!5412 (regOne!5412 r!15766)) (ite c!148136 (regOne!5412 (regOne!5412 r!15766)) (ite c!148133 (regTwo!5412 (regOne!5412 r!15766)) (ite c!148135 (regTwo!5413 (regOne!5412 r!15766)) (reg!2779 (regOne!5412 r!15766))))))))))

(declare-fun bm!55128 () Bool)

(declare-fun call!55135 () Regex!2450)

(assert (=> bm!55128 (= call!55135 (removeUselessConcat!127 (ite c!148133 (regOne!5412 (regOne!5412 r!15766)) (regOne!5413 (regOne!5412 r!15766)))))))

(declare-fun b!914364 () Bool)

(declare-fun e!596076 () Regex!2450)

(assert (=> b!914364 (= e!596076 (Union!2450 call!55135 call!55131))))

(declare-fun b!914365 () Bool)

(declare-fun e!596071 () Regex!2450)

(assert (=> b!914365 (= e!596071 e!596076)))

(assert (=> b!914365 (= c!148135 (is-Union!2450 (regOne!5412 r!15766)))))

(declare-fun bm!55129 () Bool)

(assert (=> bm!55129 (= call!55134 call!55133)))

(declare-fun b!914366 () Bool)

(assert (=> b!914366 (= e!596075 call!55132)))

(declare-fun b!914367 () Bool)

(declare-fun c!148134 () Bool)

(assert (=> b!914367 (= c!148134 (is-Star!2450 (regOne!5412 r!15766)))))

(assert (=> b!914367 (= e!596076 e!596073)))

(declare-fun b!914368 () Bool)

(assert (=> b!914368 (= e!596071 (Concat!4283 call!55135 call!55134))))

(declare-fun bm!55130 () Bool)

(assert (=> bm!55130 (= call!55133 call!55132)))

(declare-fun b!914369 () Bool)

(assert (=> b!914369 (= e!596075 e!596074)))

(assert (=> b!914369 (= c!148136 (and (is-Concat!4283 (regOne!5412 r!15766)) (is-EmptyExpr!2450 (regTwo!5412 (regOne!5412 r!15766)))))))

(declare-fun b!914370 () Bool)

(assert (=> b!914370 (= e!596072 (= (nullable!668 lt!337274) (nullable!668 (regOne!5412 r!15766))))))

(declare-fun b!914371 () Bool)

(assert (=> b!914371 (= c!148133 (is-Concat!4283 (regOne!5412 r!15766)))))

(assert (=> b!914371 (= e!596074 e!596071)))

(assert (= (and d!279623 c!148137) b!914366))

(assert (= (and d!279623 (not c!148137)) b!914369))

(assert (= (and b!914369 c!148136) b!914362))

(assert (= (and b!914369 (not c!148136)) b!914371))

(assert (= (and b!914371 c!148133) b!914368))

(assert (= (and b!914371 (not c!148133)) b!914365))

(assert (= (and b!914365 c!148135) b!914364))

(assert (= (and b!914365 (not c!148135)) b!914367))

(assert (= (and b!914367 c!148134) b!914363))

(assert (= (and b!914367 (not c!148134)) b!914361))

(assert (= (or b!914364 b!914363) bm!55126))

(assert (= (or b!914368 bm!55126) bm!55129))

(assert (= (or b!914368 b!914364) bm!55128))

(assert (= (or b!914362 bm!55129) bm!55130))

(assert (= (or b!914366 bm!55130) bm!55127))

(assert (= (and d!279623 res!415780) b!914370))

(declare-fun m!1144779 () Bool)

(assert (=> d!279623 m!1144779))

(declare-fun m!1144781 () Bool)

(assert (=> d!279623 m!1144781))

(declare-fun m!1144783 () Bool)

(assert (=> bm!55127 m!1144783))

(declare-fun m!1144785 () Bool)

(assert (=> bm!55128 m!1144785))

(declare-fun m!1144787 () Bool)

(assert (=> b!914370 m!1144787))

(declare-fun m!1144789 () Bool)

(assert (=> b!914370 m!1144789))

(assert (=> b!914261 d!279623))

(declare-fun bm!55131 () Bool)

(declare-fun call!55136 () Regex!2450)

(declare-fun call!55139 () Regex!2450)

(assert (=> bm!55131 (= call!55136 call!55139)))

(declare-fun b!914372 () Bool)

(declare-fun e!596079 () Regex!2450)

(assert (=> b!914372 (= e!596079 (regTwo!5412 r!15766))))

(declare-fun b!914373 () Bool)

(declare-fun e!596080 () Regex!2450)

(declare-fun call!55138 () Regex!2450)

(assert (=> b!914373 (= e!596080 call!55138)))

(declare-fun d!279627 () Bool)

(declare-fun e!596078 () Bool)

(assert (=> d!279627 e!596078))

(declare-fun res!415781 () Bool)

(assert (=> d!279627 (=> (not res!415781) (not e!596078))))

(declare-fun lt!337275 () Regex!2450)

(assert (=> d!279627 (= res!415781 (validRegex!919 lt!337275))))

(declare-fun e!596081 () Regex!2450)

(assert (=> d!279627 (= lt!337275 e!596081)))

(declare-fun c!148142 () Bool)

(assert (=> d!279627 (= c!148142 (and (is-Concat!4283 (regTwo!5412 r!15766)) (is-EmptyExpr!2450 (regOne!5412 (regTwo!5412 r!15766)))))))

(assert (=> d!279627 (validRegex!919 (regTwo!5412 r!15766))))

(assert (=> d!279627 (= (removeUselessConcat!127 (regTwo!5412 r!15766)) lt!337275)))

(declare-fun b!914374 () Bool)

(assert (=> b!914374 (= e!596079 (Star!2450 call!55136))))

(declare-fun c!148138 () Bool)

(declare-fun c!148140 () Bool)

(declare-fun c!148141 () Bool)

(declare-fun call!55137 () Regex!2450)

(declare-fun bm!55132 () Bool)

(assert (=> bm!55132 (= call!55137 (removeUselessConcat!127 (ite c!148142 (regTwo!5412 (regTwo!5412 r!15766)) (ite c!148141 (regOne!5412 (regTwo!5412 r!15766)) (ite c!148138 (regTwo!5412 (regTwo!5412 r!15766)) (ite c!148140 (regTwo!5413 (regTwo!5412 r!15766)) (reg!2779 (regTwo!5412 r!15766))))))))))

(declare-fun bm!55133 () Bool)

(declare-fun call!55140 () Regex!2450)

(assert (=> bm!55133 (= call!55140 (removeUselessConcat!127 (ite c!148138 (regOne!5412 (regTwo!5412 r!15766)) (regOne!5413 (regTwo!5412 r!15766)))))))

(declare-fun b!914375 () Bool)

(declare-fun e!596082 () Regex!2450)

(assert (=> b!914375 (= e!596082 (Union!2450 call!55140 call!55136))))

(declare-fun b!914376 () Bool)

(declare-fun e!596077 () Regex!2450)

(assert (=> b!914376 (= e!596077 e!596082)))

(assert (=> b!914376 (= c!148140 (is-Union!2450 (regTwo!5412 r!15766)))))

(declare-fun bm!55134 () Bool)

(assert (=> bm!55134 (= call!55139 call!55138)))

(declare-fun b!914377 () Bool)

(assert (=> b!914377 (= e!596081 call!55137)))

(declare-fun b!914378 () Bool)

(declare-fun c!148139 () Bool)

(assert (=> b!914378 (= c!148139 (is-Star!2450 (regTwo!5412 r!15766)))))

(assert (=> b!914378 (= e!596082 e!596079)))

(declare-fun b!914379 () Bool)

(assert (=> b!914379 (= e!596077 (Concat!4283 call!55140 call!55139))))

(declare-fun bm!55135 () Bool)

(assert (=> bm!55135 (= call!55138 call!55137)))

(declare-fun b!914380 () Bool)

(assert (=> b!914380 (= e!596081 e!596080)))

(assert (=> b!914380 (= c!148141 (and (is-Concat!4283 (regTwo!5412 r!15766)) (is-EmptyExpr!2450 (regTwo!5412 (regTwo!5412 r!15766)))))))

(declare-fun b!914381 () Bool)

(assert (=> b!914381 (= e!596078 (= (nullable!668 lt!337275) (nullable!668 (regTwo!5412 r!15766))))))

(declare-fun b!914382 () Bool)

(assert (=> b!914382 (= c!148138 (is-Concat!4283 (regTwo!5412 r!15766)))))

(assert (=> b!914382 (= e!596080 e!596077)))

(assert (= (and d!279627 c!148142) b!914377))

(assert (= (and d!279627 (not c!148142)) b!914380))

(assert (= (and b!914380 c!148141) b!914373))

(assert (= (and b!914380 (not c!148141)) b!914382))

(assert (= (and b!914382 c!148138) b!914379))

(assert (= (and b!914382 (not c!148138)) b!914376))

(assert (= (and b!914376 c!148140) b!914375))

(assert (= (and b!914376 (not c!148140)) b!914378))

(assert (= (and b!914378 c!148139) b!914374))

(assert (= (and b!914378 (not c!148139)) b!914372))

(assert (= (or b!914375 b!914374) bm!55131))

(assert (= (or b!914379 bm!55131) bm!55134))

(assert (= (or b!914379 b!914375) bm!55133))

(assert (= (or b!914373 bm!55134) bm!55135))

(assert (= (or b!914377 bm!55135) bm!55132))

(assert (= (and d!279627 res!415781) b!914381))

(declare-fun m!1144791 () Bool)

(assert (=> d!279627 m!1144791))

(declare-fun m!1144793 () Bool)

(assert (=> d!279627 m!1144793))

(declare-fun m!1144795 () Bool)

(assert (=> bm!55132 m!1144795))

(declare-fun m!1144797 () Bool)

(assert (=> bm!55133 m!1144797))

(declare-fun m!1144799 () Bool)

(assert (=> b!914381 m!1144799))

(declare-fun m!1144801 () Bool)

(assert (=> b!914381 m!1144801))

(assert (=> b!914261 d!279627))

(declare-fun b!914383 () Bool)

(declare-fun e!596088 () Bool)

(declare-fun e!596085 () Bool)

(assert (=> b!914383 (= e!596088 e!596085)))

(declare-fun c!148143 () Bool)

(assert (=> b!914383 (= c!148143 (is-Union!2450 r!15766))))

(declare-fun b!914384 () Bool)

(declare-fun e!596086 () Bool)

(declare-fun e!596087 () Bool)

(assert (=> b!914384 (= e!596086 e!596087)))

(declare-fun res!415785 () Bool)

(assert (=> b!914384 (=> (not res!415785) (not e!596087))))

(declare-fun call!55142 () Bool)

(assert (=> b!914384 (= res!415785 call!55142)))

(declare-fun b!914385 () Bool)

(declare-fun e!596084 () Bool)

(assert (=> b!914385 (= e!596088 e!596084)))

(declare-fun res!415784 () Bool)

(assert (=> b!914385 (= res!415784 (not (nullable!668 (reg!2779 r!15766))))))

(assert (=> b!914385 (=> (not res!415784) (not e!596084))))

(declare-fun bm!55136 () Bool)

(declare-fun call!55141 () Bool)

(declare-fun call!55143 () Bool)

(assert (=> bm!55136 (= call!55141 call!55143)))

(declare-fun b!914386 () Bool)

(assert (=> b!914386 (= e!596087 call!55141)))

(declare-fun b!914387 () Bool)

(declare-fun res!415786 () Bool)

(assert (=> b!914387 (=> res!415786 e!596086)))

(assert (=> b!914387 (= res!415786 (not (is-Concat!4283 r!15766)))))

(assert (=> b!914387 (= e!596085 e!596086)))

(declare-fun b!914388 () Bool)

(declare-fun e!596089 () Bool)

(assert (=> b!914388 (= e!596089 e!596088)))

(declare-fun c!148144 () Bool)

(assert (=> b!914388 (= c!148144 (is-Star!2450 r!15766))))

(declare-fun d!279629 () Bool)

(declare-fun res!415782 () Bool)

(assert (=> d!279629 (=> res!415782 e!596089)))

(assert (=> d!279629 (= res!415782 (is-ElementMatch!2450 r!15766))))

(assert (=> d!279629 (= (validRegex!919 r!15766) e!596089)))

(declare-fun bm!55137 () Bool)

(assert (=> bm!55137 (= call!55143 (validRegex!919 (ite c!148144 (reg!2779 r!15766) (ite c!148143 (regTwo!5413 r!15766) (regTwo!5412 r!15766)))))))

(declare-fun b!914389 () Bool)

(assert (=> b!914389 (= e!596084 call!55143)))

(declare-fun b!914390 () Bool)

(declare-fun res!415783 () Bool)

(declare-fun e!596083 () Bool)

(assert (=> b!914390 (=> (not res!415783) (not e!596083))))

(assert (=> b!914390 (= res!415783 call!55142)))

(assert (=> b!914390 (= e!596085 e!596083)))

(declare-fun b!914391 () Bool)

(assert (=> b!914391 (= e!596083 call!55141)))

(declare-fun bm!55138 () Bool)

(assert (=> bm!55138 (= call!55142 (validRegex!919 (ite c!148143 (regOne!5413 r!15766) (regOne!5412 r!15766))))))

(assert (= (and d!279629 (not res!415782)) b!914388))

(assert (= (and b!914388 c!148144) b!914385))

(assert (= (and b!914388 (not c!148144)) b!914383))

(assert (= (and b!914385 res!415784) b!914389))

(assert (= (and b!914383 c!148143) b!914390))

(assert (= (and b!914383 (not c!148143)) b!914387))

(assert (= (and b!914390 res!415783) b!914391))

(assert (= (and b!914387 (not res!415786)) b!914384))

(assert (= (and b!914384 res!415785) b!914386))

(assert (= (or b!914391 b!914386) bm!55136))

(assert (= (or b!914390 b!914384) bm!55138))

(assert (= (or b!914389 bm!55136) bm!55137))

(declare-fun m!1144803 () Bool)

(assert (=> b!914385 m!1144803))

(declare-fun m!1144805 () Bool)

(assert (=> bm!55137 m!1144805))

(declare-fun m!1144807 () Bool)

(assert (=> bm!55138 m!1144807))

(assert (=> start!82200 d!279629))

(declare-fun bs!235959 () Bool)

(declare-fun b!914461 () Bool)

(assert (= bs!235959 (and b!914461 b!914264)))

(declare-fun lambda!29351 () Int)

(assert (=> bs!235959 (not (= lambda!29351 lambda!29337))))

(assert (=> bs!235959 (not (= lambda!29351 lambda!29338))))

(assert (=> b!914461 true))

(assert (=> b!914461 true))

(declare-fun bs!235961 () Bool)

(declare-fun b!914455 () Bool)

(assert (= bs!235961 (and b!914455 b!914264)))

(declare-fun lambda!29352 () Int)

(assert (=> bs!235961 (not (= lambda!29352 lambda!29337))))

(assert (=> bs!235961 (= lambda!29352 lambda!29338)))

(declare-fun bs!235962 () Bool)

(assert (= bs!235962 (and b!914455 b!914461)))

(assert (=> bs!235962 (not (= lambda!29352 lambda!29351))))

(assert (=> b!914455 true))

(assert (=> b!914455 true))

(declare-fun b!914451 () Bool)

(declare-fun e!596134 () Bool)

(declare-fun e!596129 () Bool)

(assert (=> b!914451 (= e!596134 e!596129)))

(declare-fun c!148162 () Bool)

(assert (=> b!914451 (= c!148162 (is-Star!2450 r!15766))))

(declare-fun b!914452 () Bool)

(declare-fun e!596130 () Bool)

(assert (=> b!914452 (= e!596130 (= s!10566 (Cons!9664 (c!148115 r!15766) Nil!9664)))))

(declare-fun b!914453 () Bool)

(declare-fun res!415819 () Bool)

(declare-fun e!596132 () Bool)

(assert (=> b!914453 (=> res!415819 e!596132)))

(declare-fun call!55158 () Bool)

(assert (=> b!914453 (= res!415819 call!55158)))

(assert (=> b!914453 (= e!596129 e!596132)))

(declare-fun b!914454 () Bool)

(declare-fun e!596133 () Bool)

(declare-fun e!596131 () Bool)

(assert (=> b!914454 (= e!596133 e!596131)))

(declare-fun res!415818 () Bool)

(assert (=> b!914454 (= res!415818 (not (is-EmptyLang!2450 r!15766)))))

(assert (=> b!914454 (=> (not res!415818) (not e!596131))))

(declare-fun d!279631 () Bool)

(declare-fun c!148161 () Bool)

(assert (=> d!279631 (= c!148161 (is-EmptyExpr!2450 r!15766))))

(assert (=> d!279631 (= (matchRSpec!251 r!15766 s!10566) e!596133)))

(declare-fun call!55157 () Bool)

(assert (=> b!914455 (= e!596129 call!55157)))

(declare-fun b!914456 () Bool)

(assert (=> b!914456 (= e!596133 call!55158)))

(declare-fun b!914457 () Bool)

(declare-fun e!596135 () Bool)

(assert (=> b!914457 (= e!596135 (matchRSpec!251 (regTwo!5413 r!15766) s!10566))))

(declare-fun b!914458 () Bool)

(assert (=> b!914458 (= e!596134 e!596135)))

(declare-fun res!415820 () Bool)

(assert (=> b!914458 (= res!415820 (matchRSpec!251 (regOne!5413 r!15766) s!10566))))

(assert (=> b!914458 (=> res!415820 e!596135)))

(declare-fun bm!55152 () Bool)

(assert (=> bm!55152 (= call!55157 (Exists!221 (ite c!148162 lambda!29351 lambda!29352)))))

(declare-fun b!914459 () Bool)

(declare-fun c!148160 () Bool)

(assert (=> b!914459 (= c!148160 (is-ElementMatch!2450 r!15766))))

(assert (=> b!914459 (= e!596131 e!596130)))

(declare-fun bm!55153 () Bool)

(assert (=> bm!55153 (= call!55158 (isEmpty!5889 s!10566))))

(declare-fun b!914460 () Bool)

(declare-fun c!148159 () Bool)

(assert (=> b!914460 (= c!148159 (is-Union!2450 r!15766))))

(assert (=> b!914460 (= e!596130 e!596134)))

(assert (=> b!914461 (= e!596132 call!55157)))

(assert (= (and d!279631 c!148161) b!914456))

(assert (= (and d!279631 (not c!148161)) b!914454))

(assert (= (and b!914454 res!415818) b!914459))

(assert (= (and b!914459 c!148160) b!914452))

(assert (= (and b!914459 (not c!148160)) b!914460))

(assert (= (and b!914460 c!148159) b!914458))

(assert (= (and b!914460 (not c!148159)) b!914451))

(assert (= (and b!914458 (not res!415820)) b!914457))

(assert (= (and b!914451 c!148162) b!914453))

(assert (= (and b!914451 (not c!148162)) b!914455))

(assert (= (and b!914453 (not res!415819)) b!914461))

(assert (= (or b!914461 b!914455) bm!55152))

(assert (= (or b!914456 b!914453) bm!55153))

(declare-fun m!1144819 () Bool)

(assert (=> b!914457 m!1144819))

(declare-fun m!1144821 () Bool)

(assert (=> b!914458 m!1144821))

(declare-fun m!1144823 () Bool)

(assert (=> bm!55152 m!1144823))

(assert (=> bm!55153 m!1144727))

(assert (=> b!914265 d!279631))

(declare-fun b!914491 () Bool)

(declare-fun res!415842 () Bool)

(declare-fun e!596152 () Bool)

(assert (=> b!914491 (=> res!415842 e!596152)))

(assert (=> b!914491 (= res!415842 (not (is-ElementMatch!2450 r!15766)))))

(declare-fun e!596150 () Bool)

(assert (=> b!914491 (= e!596150 e!596152)))

(declare-fun b!914492 () Bool)

(declare-fun res!415844 () Bool)

(assert (=> b!914492 (=> res!415844 e!596152)))

(declare-fun e!596151 () Bool)

(assert (=> b!914492 (= res!415844 e!596151)))

(declare-fun res!415837 () Bool)

(assert (=> b!914492 (=> (not res!415837) (not e!596151))))

(declare-fun lt!337280 () Bool)

(assert (=> b!914492 (= res!415837 lt!337280)))

(declare-fun b!914493 () Bool)

(declare-fun e!596153 () Bool)

(declare-fun e!596154 () Bool)

(assert (=> b!914493 (= e!596153 e!596154)))

(declare-fun res!415840 () Bool)

(assert (=> b!914493 (=> res!415840 e!596154)))

(declare-fun call!55161 () Bool)

(assert (=> b!914493 (= res!415840 call!55161)))

(declare-fun b!914494 () Bool)

(declare-fun e!596156 () Bool)

(declare-fun derivativeStep!478 (Regex!2450 C!5470) Regex!2450)

(declare-fun head!1631 (List!9680) C!5470)

(declare-fun tail!1193 (List!9680) List!9680)

(assert (=> b!914494 (= e!596156 (matchR!988 (derivativeStep!478 r!15766 (head!1631 s!10566)) (tail!1193 s!10566)))))

(declare-fun b!914495 () Bool)

(assert (=> b!914495 (= e!596156 (nullable!668 r!15766))))

(declare-fun b!914496 () Bool)

(declare-fun res!415841 () Bool)

(assert (=> b!914496 (=> (not res!415841) (not e!596151))))

(assert (=> b!914496 (= res!415841 (isEmpty!5889 (tail!1193 s!10566)))))

(declare-fun bm!55156 () Bool)

(assert (=> bm!55156 (= call!55161 (isEmpty!5889 s!10566))))

(declare-fun b!914497 () Bool)

(assert (=> b!914497 (= e!596150 (not lt!337280))))

(declare-fun d!279641 () Bool)

(declare-fun e!596155 () Bool)

(assert (=> d!279641 e!596155))

(declare-fun c!148170 () Bool)

(assert (=> d!279641 (= c!148170 (is-EmptyExpr!2450 r!15766))))

(assert (=> d!279641 (= lt!337280 e!596156)))

(declare-fun c!148171 () Bool)

(assert (=> d!279641 (= c!148171 (isEmpty!5889 s!10566))))

(assert (=> d!279641 (validRegex!919 r!15766)))

(assert (=> d!279641 (= (matchR!988 r!15766 s!10566) lt!337280)))

(declare-fun b!914490 () Bool)

(assert (=> b!914490 (= e!596155 e!596150)))

(declare-fun c!148169 () Bool)

(assert (=> b!914490 (= c!148169 (is-EmptyLang!2450 r!15766))))

(declare-fun b!914498 () Bool)

(declare-fun res!415838 () Bool)

(assert (=> b!914498 (=> (not res!415838) (not e!596151))))

(assert (=> b!914498 (= res!415838 (not call!55161))))

(declare-fun b!914499 () Bool)

(declare-fun res!415843 () Bool)

(assert (=> b!914499 (=> res!415843 e!596154)))

(assert (=> b!914499 (= res!415843 (not (isEmpty!5889 (tail!1193 s!10566))))))

(declare-fun b!914500 () Bool)

(assert (=> b!914500 (= e!596154 (not (= (head!1631 s!10566) (c!148115 r!15766))))))

(declare-fun b!914501 () Bool)

(assert (=> b!914501 (= e!596155 (= lt!337280 call!55161))))

(declare-fun b!914502 () Bool)

(assert (=> b!914502 (= e!596151 (= (head!1631 s!10566) (c!148115 r!15766)))))

(declare-fun b!914503 () Bool)

(assert (=> b!914503 (= e!596152 e!596153)))

(declare-fun res!415839 () Bool)

(assert (=> b!914503 (=> (not res!415839) (not e!596153))))

(assert (=> b!914503 (= res!415839 (not lt!337280))))

(assert (= (and d!279641 c!148171) b!914495))

(assert (= (and d!279641 (not c!148171)) b!914494))

(assert (= (and d!279641 c!148170) b!914501))

(assert (= (and d!279641 (not c!148170)) b!914490))

(assert (= (and b!914490 c!148169) b!914497))

(assert (= (and b!914490 (not c!148169)) b!914491))

(assert (= (and b!914491 (not res!415842)) b!914492))

(assert (= (and b!914492 res!415837) b!914498))

(assert (= (and b!914498 res!415838) b!914496))

(assert (= (and b!914496 res!415841) b!914502))

(assert (= (and b!914492 (not res!415844)) b!914503))

(assert (= (and b!914503 res!415839) b!914493))

(assert (= (and b!914493 (not res!415840)) b!914499))

(assert (= (and b!914499 (not res!415843)) b!914500))

(assert (= (or b!914501 b!914493 b!914498) bm!55156))

(assert (=> bm!55156 m!1144727))

(declare-fun m!1144825 () Bool)

(assert (=> b!914502 m!1144825))

(declare-fun m!1144827 () Bool)

(assert (=> b!914496 m!1144827))

(assert (=> b!914496 m!1144827))

(declare-fun m!1144829 () Bool)

(assert (=> b!914496 m!1144829))

(assert (=> b!914494 m!1144825))

(assert (=> b!914494 m!1144825))

(declare-fun m!1144831 () Bool)

(assert (=> b!914494 m!1144831))

(assert (=> b!914494 m!1144827))

(assert (=> b!914494 m!1144831))

(assert (=> b!914494 m!1144827))

(declare-fun m!1144833 () Bool)

(assert (=> b!914494 m!1144833))

(assert (=> d!279641 m!1144727))

(assert (=> d!279641 m!1144743))

(assert (=> b!914500 m!1144825))

(assert (=> b!914499 m!1144827))

(assert (=> b!914499 m!1144827))

(assert (=> b!914499 m!1144829))

(declare-fun m!1144835 () Bool)

(assert (=> b!914495 m!1144835))

(assert (=> b!914265 d!279641))

(declare-fun d!279643 () Bool)

(assert (=> d!279643 (= (matchR!988 r!15766 s!10566) (matchRSpec!251 r!15766 s!10566))))

(declare-fun lt!337283 () Unit!14519)

(declare-fun choose!5569 (Regex!2450 List!9680) Unit!14519)

(assert (=> d!279643 (= lt!337283 (choose!5569 r!15766 s!10566))))

(assert (=> d!279643 (validRegex!919 r!15766)))

(assert (=> d!279643 (= (mainMatchTheorem!251 r!15766 s!10566) lt!337283)))

(declare-fun bs!235963 () Bool)

(assert (= bs!235963 d!279643))

(assert (=> bs!235963 m!1144739))

(assert (=> bs!235963 m!1144737))

(declare-fun m!1144837 () Bool)

(assert (=> bs!235963 m!1144837))

(assert (=> bs!235963 m!1144743))

(assert (=> b!914265 d!279643))

(declare-fun d!279645 () Bool)

(assert (=> d!279645 (= (isEmpty!5889 s!10566) (is-Nil!9664 s!10566))))

(assert (=> b!914264 d!279645))

(declare-fun d!279647 () Bool)

(declare-fun isEmpty!5891 (Option!2085) Bool)

(assert (=> d!279647 (= (isDefined!1727 (findConcatSeparation!191 (regOne!5412 r!15766) (regTwo!5412 r!15766) Nil!9664 s!10566 s!10566)) (not (isEmpty!5891 (findConcatSeparation!191 (regOne!5412 r!15766) (regTwo!5412 r!15766) Nil!9664 s!10566 s!10566))))))

(declare-fun bs!235964 () Bool)

(assert (= bs!235964 d!279647))

(assert (=> bs!235964 m!1144733))

(declare-fun m!1144839 () Bool)

(assert (=> bs!235964 m!1144839))

(assert (=> b!914264 d!279647))

(declare-fun d!279649 () Bool)

(declare-fun choose!5570 (Int) Bool)

(assert (=> d!279649 (= (Exists!221 lambda!29338) (choose!5570 lambda!29338))))

(declare-fun bs!235965 () Bool)

(assert (= bs!235965 d!279649))

(declare-fun m!1144841 () Bool)

(assert (=> bs!235965 m!1144841))

(assert (=> b!914264 d!279649))

(declare-fun bs!235968 () Bool)

(declare-fun d!279651 () Bool)

(assert (= bs!235968 (and d!279651 b!914264)))

(declare-fun lambda!29358 () Int)

(assert (=> bs!235968 (= lambda!29358 lambda!29337)))

(assert (=> bs!235968 (not (= lambda!29358 lambda!29338))))

(declare-fun bs!235969 () Bool)

(assert (= bs!235969 (and d!279651 b!914461)))

(assert (=> bs!235969 (not (= lambda!29358 lambda!29351))))

(declare-fun bs!235970 () Bool)

(assert (= bs!235970 (and d!279651 b!914455)))

(assert (=> bs!235970 (not (= lambda!29358 lambda!29352))))

(assert (=> d!279651 true))

(assert (=> d!279651 true))

(assert (=> d!279651 true))

(assert (=> d!279651 (= (isDefined!1727 (findConcatSeparation!191 (regOne!5412 r!15766) (regTwo!5412 r!15766) Nil!9664 s!10566 s!10566)) (Exists!221 lambda!29358))))

(declare-fun lt!337287 () Unit!14519)

(declare-fun choose!5571 (Regex!2450 Regex!2450 List!9680) Unit!14519)

(assert (=> d!279651 (= lt!337287 (choose!5571 (regOne!5412 r!15766) (regTwo!5412 r!15766) s!10566))))

(assert (=> d!279651 (validRegex!919 (regOne!5412 r!15766))))

(assert (=> d!279651 (= (lemmaFindConcatSeparationEquivalentToExists!191 (regOne!5412 r!15766) (regTwo!5412 r!15766) s!10566) lt!337287)))

(declare-fun bs!235971 () Bool)

(assert (= bs!235971 d!279651))

(declare-fun m!1144849 () Bool)

(assert (=> bs!235971 m!1144849))

(assert (=> bs!235971 m!1144733))

(assert (=> bs!235971 m!1144735))

(assert (=> bs!235971 m!1144781))

(declare-fun m!1144851 () Bool)

(assert (=> bs!235971 m!1144851))

(assert (=> bs!235971 m!1144733))

(assert (=> b!914264 d!279651))

(declare-fun b!914538 () Bool)

(declare-fun e!596175 () Bool)

(declare-fun lt!337296 () Option!2085)

(declare-fun ++!2546 (List!9680 List!9680) List!9680)

(declare-fun get!3127 (Option!2085) tuple2!10886)

(assert (=> b!914538 (= e!596175 (= (++!2546 (_1!6269 (get!3127 lt!337296)) (_2!6269 (get!3127 lt!337296))) s!10566))))

(declare-fun d!279655 () Bool)

(declare-fun e!596178 () Bool)

(assert (=> d!279655 e!596178))

(declare-fun res!415875 () Bool)

(assert (=> d!279655 (=> res!415875 e!596178)))

(assert (=> d!279655 (= res!415875 e!596175)))

(declare-fun res!415874 () Bool)

(assert (=> d!279655 (=> (not res!415874) (not e!596175))))

(assert (=> d!279655 (= res!415874 (isDefined!1727 lt!337296))))

(declare-fun e!596177 () Option!2085)

(assert (=> d!279655 (= lt!337296 e!596177)))

(declare-fun c!148177 () Bool)

(declare-fun e!596179 () Bool)

(assert (=> d!279655 (= c!148177 e!596179)))

(declare-fun res!415873 () Bool)

(assert (=> d!279655 (=> (not res!415873) (not e!596179))))

(assert (=> d!279655 (= res!415873 (matchR!988 (regOne!5412 r!15766) Nil!9664))))

(assert (=> d!279655 (validRegex!919 (regOne!5412 r!15766))))

(assert (=> d!279655 (= (findConcatSeparation!191 (regOne!5412 r!15766) (regTwo!5412 r!15766) Nil!9664 s!10566 s!10566) lt!337296)))

(declare-fun b!914539 () Bool)

(declare-fun res!415871 () Bool)

(assert (=> b!914539 (=> (not res!415871) (not e!596175))))

(assert (=> b!914539 (= res!415871 (matchR!988 (regTwo!5412 r!15766) (_2!6269 (get!3127 lt!337296))))))

(declare-fun b!914540 () Bool)

(declare-fun e!596176 () Option!2085)

(assert (=> b!914540 (= e!596176 None!2084)))

(declare-fun b!914541 () Bool)

(assert (=> b!914541 (= e!596179 (matchR!988 (regTwo!5412 r!15766) s!10566))))

(declare-fun b!914542 () Bool)

(declare-fun res!415872 () Bool)

(assert (=> b!914542 (=> (not res!415872) (not e!596175))))

(assert (=> b!914542 (= res!415872 (matchR!988 (regOne!5412 r!15766) (_1!6269 (get!3127 lt!337296))))))

(declare-fun b!914543 () Bool)

(assert (=> b!914543 (= e!596178 (not (isDefined!1727 lt!337296)))))

(declare-fun b!914544 () Bool)

(assert (=> b!914544 (= e!596177 e!596176)))

(declare-fun c!148176 () Bool)

(assert (=> b!914544 (= c!148176 (is-Nil!9664 s!10566))))

(declare-fun b!914545 () Bool)

(assert (=> b!914545 (= e!596177 (Some!2084 (tuple2!10887 Nil!9664 s!10566)))))

(declare-fun b!914546 () Bool)

(declare-fun lt!337297 () Unit!14519)

(declare-fun lt!337298 () Unit!14519)

(assert (=> b!914546 (= lt!337297 lt!337298)))

(assert (=> b!914546 (= (++!2546 (++!2546 Nil!9664 (Cons!9664 (h!15065 s!10566) Nil!9664)) (t!100726 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!161 (List!9680 C!5470 List!9680 List!9680) Unit!14519)

(assert (=> b!914546 (= lt!337298 (lemmaMoveElementToOtherListKeepsConcatEq!161 Nil!9664 (h!15065 s!10566) (t!100726 s!10566) s!10566))))

(assert (=> b!914546 (= e!596176 (findConcatSeparation!191 (regOne!5412 r!15766) (regTwo!5412 r!15766) (++!2546 Nil!9664 (Cons!9664 (h!15065 s!10566) Nil!9664)) (t!100726 s!10566) s!10566))))

(assert (= (and d!279655 res!415873) b!914541))

(assert (= (and d!279655 c!148177) b!914545))

(assert (= (and d!279655 (not c!148177)) b!914544))

(assert (= (and b!914544 c!148176) b!914540))

(assert (= (and b!914544 (not c!148176)) b!914546))

(assert (= (and d!279655 res!415874) b!914542))

(assert (= (and b!914542 res!415872) b!914539))

(assert (= (and b!914539 res!415871) b!914538))

(assert (= (and d!279655 (not res!415875)) b!914543))

(declare-fun m!1144853 () Bool)

(assert (=> b!914543 m!1144853))

(assert (=> d!279655 m!1144853))

(declare-fun m!1144855 () Bool)

(assert (=> d!279655 m!1144855))

(assert (=> d!279655 m!1144781))

(declare-fun m!1144857 () Bool)

(assert (=> b!914546 m!1144857))

(assert (=> b!914546 m!1144857))

(declare-fun m!1144859 () Bool)

(assert (=> b!914546 m!1144859))

(declare-fun m!1144861 () Bool)

(assert (=> b!914546 m!1144861))

(assert (=> b!914546 m!1144857))

(declare-fun m!1144863 () Bool)

(assert (=> b!914546 m!1144863))

(declare-fun m!1144865 () Bool)

(assert (=> b!914541 m!1144865))

(declare-fun m!1144867 () Bool)

(assert (=> b!914542 m!1144867))

(declare-fun m!1144869 () Bool)

(assert (=> b!914542 m!1144869))

(assert (=> b!914539 m!1144867))

(declare-fun m!1144871 () Bool)

(assert (=> b!914539 m!1144871))

(assert (=> b!914538 m!1144867))

(declare-fun m!1144873 () Bool)

(assert (=> b!914538 m!1144873))

(assert (=> b!914264 d!279655))

(declare-fun bs!235976 () Bool)

(declare-fun d!279657 () Bool)

(assert (= bs!235976 (and d!279657 d!279651)))

(declare-fun lambda!29369 () Int)

(assert (=> bs!235976 (= lambda!29369 lambda!29358)))

(declare-fun bs!235977 () Bool)

(assert (= bs!235977 (and d!279657 b!914455)))

(assert (=> bs!235977 (not (= lambda!29369 lambda!29352))))

(declare-fun bs!235978 () Bool)

(assert (= bs!235978 (and d!279657 b!914264)))

(assert (=> bs!235978 (not (= lambda!29369 lambda!29338))))

(declare-fun bs!235979 () Bool)

(assert (= bs!235979 (and d!279657 b!914461)))

(assert (=> bs!235979 (not (= lambda!29369 lambda!29351))))

(assert (=> bs!235978 (= lambda!29369 lambda!29337)))

(assert (=> d!279657 true))

(assert (=> d!279657 true))

(assert (=> d!279657 true))

(declare-fun lambda!29370 () Int)

(assert (=> bs!235976 (not (= lambda!29370 lambda!29358))))

(declare-fun bs!235980 () Bool)

(assert (= bs!235980 d!279657))

(assert (=> bs!235980 (not (= lambda!29370 lambda!29369))))

(assert (=> bs!235977 (= lambda!29370 lambda!29352)))

(assert (=> bs!235978 (= lambda!29370 lambda!29338)))

(assert (=> bs!235979 (not (= lambda!29370 lambda!29351))))

(assert (=> bs!235978 (not (= lambda!29370 lambda!29337))))

(assert (=> d!279657 true))

(assert (=> d!279657 true))

(assert (=> d!279657 true))

(assert (=> d!279657 (= (Exists!221 lambda!29369) (Exists!221 lambda!29370))))

(declare-fun lt!337302 () Unit!14519)

(declare-fun choose!5572 (Regex!2450 Regex!2450 List!9680) Unit!14519)

(assert (=> d!279657 (= lt!337302 (choose!5572 (regOne!5412 r!15766) (regTwo!5412 r!15766) s!10566))))

(assert (=> d!279657 (validRegex!919 (regOne!5412 r!15766))))

(assert (=> d!279657 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!133 (regOne!5412 r!15766) (regTwo!5412 r!15766) s!10566) lt!337302)))

(declare-fun m!1144883 () Bool)

(assert (=> bs!235980 m!1144883))

(declare-fun m!1144885 () Bool)

(assert (=> bs!235980 m!1144885))

(declare-fun m!1144887 () Bool)

(assert (=> bs!235980 m!1144887))

(assert (=> bs!235980 m!1144781))

(assert (=> b!914264 d!279657))

(declare-fun d!279663 () Bool)

(assert (=> d!279663 (= (Exists!221 lambda!29337) (choose!5570 lambda!29337))))

(declare-fun bs!235981 () Bool)

(assert (= bs!235981 d!279663))

(declare-fun m!1144889 () Bool)

(assert (=> bs!235981 m!1144889))

(assert (=> b!914264 d!279663))

(declare-fun b!914559 () Bool)

(declare-fun e!596186 () Bool)

(declare-fun tp!285675 () Bool)

(assert (=> b!914559 (= e!596186 (and tp_is_empty!4543 tp!285675))))

(assert (=> b!914266 (= tp!285649 e!596186)))

(assert (= (and b!914266 (is-Cons!9664 (t!100726 s!10566))) b!914559))

(declare-fun b!914573 () Bool)

(declare-fun e!596189 () Bool)

(declare-fun tp!285689 () Bool)

(declare-fun tp!285686 () Bool)

(assert (=> b!914573 (= e!596189 (and tp!285689 tp!285686))))

(declare-fun b!914570 () Bool)

(assert (=> b!914570 (= e!596189 tp_is_empty!4543)))

(declare-fun b!914572 () Bool)

(declare-fun tp!285690 () Bool)

(assert (=> b!914572 (= e!596189 tp!285690)))

(assert (=> b!914260 (= tp!285654 e!596189)))

(declare-fun b!914571 () Bool)

(declare-fun tp!285688 () Bool)

(declare-fun tp!285687 () Bool)

(assert (=> b!914571 (= e!596189 (and tp!285688 tp!285687))))

(assert (= (and b!914260 (is-ElementMatch!2450 (reg!2779 r!15766))) b!914570))

(assert (= (and b!914260 (is-Concat!4283 (reg!2779 r!15766))) b!914571))

(assert (= (and b!914260 (is-Star!2450 (reg!2779 r!15766))) b!914572))

(assert (= (and b!914260 (is-Union!2450 (reg!2779 r!15766))) b!914573))

(declare-fun b!914577 () Bool)

(declare-fun e!596190 () Bool)

(declare-fun tp!285694 () Bool)

(declare-fun tp!285691 () Bool)

(assert (=> b!914577 (= e!596190 (and tp!285694 tp!285691))))

(declare-fun b!914574 () Bool)

(assert (=> b!914574 (= e!596190 tp_is_empty!4543)))

(declare-fun b!914576 () Bool)

(declare-fun tp!285695 () Bool)

(assert (=> b!914576 (= e!596190 tp!285695)))

(assert (=> b!914267 (= tp!285650 e!596190)))

(declare-fun b!914575 () Bool)

(declare-fun tp!285693 () Bool)

(declare-fun tp!285692 () Bool)

(assert (=> b!914575 (= e!596190 (and tp!285693 tp!285692))))

(assert (= (and b!914267 (is-ElementMatch!2450 (regOne!5412 r!15766))) b!914574))

(assert (= (and b!914267 (is-Concat!4283 (regOne!5412 r!15766))) b!914575))

(assert (= (and b!914267 (is-Star!2450 (regOne!5412 r!15766))) b!914576))

(assert (= (and b!914267 (is-Union!2450 (regOne!5412 r!15766))) b!914577))

(declare-fun b!914581 () Bool)

(declare-fun e!596191 () Bool)

(declare-fun tp!285699 () Bool)

(declare-fun tp!285696 () Bool)

(assert (=> b!914581 (= e!596191 (and tp!285699 tp!285696))))

(declare-fun b!914578 () Bool)

(assert (=> b!914578 (= e!596191 tp_is_empty!4543)))

(declare-fun b!914580 () Bool)

(declare-fun tp!285700 () Bool)

(assert (=> b!914580 (= e!596191 tp!285700)))

(assert (=> b!914267 (= tp!285652 e!596191)))

(declare-fun b!914579 () Bool)

(declare-fun tp!285698 () Bool)

(declare-fun tp!285697 () Bool)

(assert (=> b!914579 (= e!596191 (and tp!285698 tp!285697))))

(assert (= (and b!914267 (is-ElementMatch!2450 (regTwo!5412 r!15766))) b!914578))

(assert (= (and b!914267 (is-Concat!4283 (regTwo!5412 r!15766))) b!914579))

(assert (= (and b!914267 (is-Star!2450 (regTwo!5412 r!15766))) b!914580))

(assert (= (and b!914267 (is-Union!2450 (regTwo!5412 r!15766))) b!914581))

(declare-fun b!914585 () Bool)

(declare-fun e!596192 () Bool)

(declare-fun tp!285704 () Bool)

(declare-fun tp!285701 () Bool)

(assert (=> b!914585 (= e!596192 (and tp!285704 tp!285701))))

(declare-fun b!914582 () Bool)

(assert (=> b!914582 (= e!596192 tp_is_empty!4543)))

(declare-fun b!914584 () Bool)

(declare-fun tp!285705 () Bool)

(assert (=> b!914584 (= e!596192 tp!285705)))

(assert (=> b!914263 (= tp!285651 e!596192)))

(declare-fun b!914583 () Bool)

(declare-fun tp!285703 () Bool)

(declare-fun tp!285702 () Bool)

(assert (=> b!914583 (= e!596192 (and tp!285703 tp!285702))))

(assert (= (and b!914263 (is-ElementMatch!2450 (regOne!5413 r!15766))) b!914582))

(assert (= (and b!914263 (is-Concat!4283 (regOne!5413 r!15766))) b!914583))

(assert (= (and b!914263 (is-Star!2450 (regOne!5413 r!15766))) b!914584))

(assert (= (and b!914263 (is-Union!2450 (regOne!5413 r!15766))) b!914585))

(declare-fun b!914589 () Bool)

(declare-fun e!596193 () Bool)

(declare-fun tp!285709 () Bool)

(declare-fun tp!285706 () Bool)

(assert (=> b!914589 (= e!596193 (and tp!285709 tp!285706))))

(declare-fun b!914586 () Bool)

(assert (=> b!914586 (= e!596193 tp_is_empty!4543)))

(declare-fun b!914588 () Bool)

(declare-fun tp!285710 () Bool)

(assert (=> b!914588 (= e!596193 tp!285710)))

(assert (=> b!914263 (= tp!285653 e!596193)))

(declare-fun b!914587 () Bool)

(declare-fun tp!285708 () Bool)

(declare-fun tp!285707 () Bool)

(assert (=> b!914587 (= e!596193 (and tp!285708 tp!285707))))

(assert (= (and b!914263 (is-ElementMatch!2450 (regTwo!5413 r!15766))) b!914586))

(assert (= (and b!914263 (is-Concat!4283 (regTwo!5413 r!15766))) b!914587))

(assert (= (and b!914263 (is-Star!2450 (regTwo!5413 r!15766))) b!914588))

(assert (= (and b!914263 (is-Union!2450 (regTwo!5413 r!15766))) b!914589))

(push 1)

(assert (not b!914588))

(assert (not d!279623))

(assert (not b!914458))

(assert (not b!914573))

(assert (not b!914385))

(assert (not d!279655))

(assert (not b!914370))

(assert (not b!914381))

(assert (not b!914495))

(assert (not bm!55153))

(assert (not d!279643))

(assert (not b!914575))

(assert (not bm!55152))

(assert (not bm!55138))

(assert (not d!279649))

(assert (not bm!55137))

(assert (not d!279657))

(assert (not b!914539))

(assert (not d!279641))

(assert (not bm!55133))

(assert (not b!914571))

(assert (not b!914589))

(assert (not bm!55128))

(assert (not bm!55132))

(assert (not b!914546))

(assert (not bm!55156))

(assert (not d!279651))

(assert (not b!914496))

(assert (not bm!55114))

(assert (not b!914332))

(assert (not b!914572))

(assert (not b!914584))

(assert (not b!914587))

(assert (not d!279663))

(assert (not b!914580))

(assert (not d!279647))

(assert (not b!914581))

(assert (not b!914577))

(assert (not b!914502))

(assert (not d!279627))

(assert (not b!914541))

(assert (not b!914583))

(assert (not b!914542))

(assert (not b!914457))

(assert (not b!914500))

(assert (not b!914579))

(assert (not b!914559))

(assert (not bm!55127))

(assert (not b!914543))

(assert (not bm!55115))

(assert (not b!914585))

(assert (not b!914576))

(assert tp_is_empty!4543)

(assert (not b!914494))

(assert (not b!914499))

(assert (not b!914538))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

