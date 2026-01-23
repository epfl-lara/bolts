; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83178 () Bool)

(assert start!83178)

(declare-fun b!928036 () Bool)

(declare-fun e!603480 () Bool)

(declare-fun tp!288346 () Bool)

(assert (=> b!928036 (= e!603480 tp!288346)))

(declare-fun b!928037 () Bool)

(declare-fun e!603481 () Bool)

(declare-fun e!603479 () Bool)

(assert (=> b!928037 (= e!603481 (not e!603479))))

(declare-fun res!421842 () Bool)

(assert (=> b!928037 (=> res!421842 e!603479)))

(declare-fun lt!339882 () Bool)

(declare-datatypes ((C!5592 0))(
  ( (C!5593 (val!3044 Int)) )
))
(declare-datatypes ((Regex!2511 0))(
  ( (ElementMatch!2511 (c!150700 C!5592)) (Concat!4344 (regOne!5534 Regex!2511) (regTwo!5534 Regex!2511)) (EmptyExpr!2511) (Star!2511 (reg!2840 Regex!2511)) (EmptyLang!2511) (Union!2511 (regOne!5535 Regex!2511) (regTwo!5535 Regex!2511)) )
))
(declare-fun r!15766 () Regex!2511)

(get-info :version)

(assert (=> b!928037 (= res!421842 (or lt!339882 (and ((_ is Concat!4344) r!15766) ((_ is EmptyExpr!2511) (regOne!5534 r!15766))) (and ((_ is Concat!4344) r!15766) ((_ is EmptyExpr!2511) (regTwo!5534 r!15766))) ((_ is Concat!4344) r!15766) (not ((_ is Union!2511) r!15766))))))

(declare-datatypes ((List!9741 0))(
  ( (Nil!9725) (Cons!9725 (h!15126 C!5592) (t!100787 List!9741)) )
))
(declare-fun s!10566 () List!9741)

(declare-fun matchRSpec!312 (Regex!2511 List!9741) Bool)

(assert (=> b!928037 (= lt!339882 (matchRSpec!312 r!15766 s!10566))))

(declare-fun matchR!1049 (Regex!2511 List!9741) Bool)

(assert (=> b!928037 (= lt!339882 (matchR!1049 r!15766 s!10566))))

(declare-datatypes ((Unit!14641 0))(
  ( (Unit!14642) )
))
(declare-fun lt!339883 () Unit!14641)

(declare-fun mainMatchTheorem!312 (Regex!2511 List!9741) Unit!14641)

(assert (=> b!928037 (= lt!339883 (mainMatchTheorem!312 r!15766 s!10566))))

(declare-fun b!928038 () Bool)

(declare-fun tp_is_empty!4665 () Bool)

(assert (=> b!928038 (= e!603480 tp_is_empty!4665)))

(declare-fun b!928039 () Bool)

(declare-fun validRegex!980 (Regex!2511) Bool)

(assert (=> b!928039 (= e!603479 (validRegex!980 (regOne!5535 r!15766)))))

(declare-fun b!928040 () Bool)

(declare-fun tp!288345 () Bool)

(declare-fun tp!288344 () Bool)

(assert (=> b!928040 (= e!603480 (and tp!288345 tp!288344))))

(declare-fun b!928042 () Bool)

(declare-fun e!603478 () Bool)

(declare-fun tp!288347 () Bool)

(assert (=> b!928042 (= e!603478 (and tp_is_empty!4665 tp!288347))))

(declare-fun b!928043 () Bool)

(declare-fun tp!288348 () Bool)

(declare-fun tp!288343 () Bool)

(assert (=> b!928043 (= e!603480 (and tp!288348 tp!288343))))

(declare-fun b!928041 () Bool)

(declare-fun res!421843 () Bool)

(assert (=> b!928041 (=> res!421843 e!603479)))

(declare-fun removeUselessConcat!186 (Regex!2511) Regex!2511)

(assert (=> b!928041 (= res!421843 (not (matchR!1049 (Union!2511 (removeUselessConcat!186 (regOne!5535 r!15766)) (removeUselessConcat!186 (regTwo!5535 r!15766))) s!10566)))))

(declare-fun res!421844 () Bool)

(assert (=> start!83178 (=> (not res!421844) (not e!603481))))

(assert (=> start!83178 (= res!421844 (validRegex!980 r!15766))))

(assert (=> start!83178 e!603481))

(assert (=> start!83178 e!603480))

(assert (=> start!83178 e!603478))

(assert (= (and start!83178 res!421844) b!928037))

(assert (= (and b!928037 (not res!421842)) b!928041))

(assert (= (and b!928041 (not res!421843)) b!928039))

(assert (= (and start!83178 ((_ is ElementMatch!2511) r!15766)) b!928038))

(assert (= (and start!83178 ((_ is Concat!4344) r!15766)) b!928040))

(assert (= (and start!83178 ((_ is Star!2511) r!15766)) b!928036))

(assert (= (and start!83178 ((_ is Union!2511) r!15766)) b!928043))

(assert (= (and start!83178 ((_ is Cons!9725) s!10566)) b!928042))

(declare-fun m!1152069 () Bool)

(assert (=> b!928037 m!1152069))

(declare-fun m!1152071 () Bool)

(assert (=> b!928037 m!1152071))

(declare-fun m!1152073 () Bool)

(assert (=> b!928037 m!1152073))

(declare-fun m!1152075 () Bool)

(assert (=> b!928039 m!1152075))

(declare-fun m!1152077 () Bool)

(assert (=> b!928041 m!1152077))

(declare-fun m!1152079 () Bool)

(assert (=> b!928041 m!1152079))

(declare-fun m!1152081 () Bool)

(assert (=> b!928041 m!1152081))

(declare-fun m!1152083 () Bool)

(assert (=> start!83178 m!1152083))

(check-sat (not b!928039) tp_is_empty!4665 (not b!928043) (not start!83178) (not b!928042) (not b!928041) (not b!928040) (not b!928036) (not b!928037))
(check-sat)
(get-model)

(declare-fun b!928199 () Bool)

(assert (=> b!928199 true))

(assert (=> b!928199 true))

(declare-fun bs!237608 () Bool)

(declare-fun b!928209 () Bool)

(assert (= bs!237608 (and b!928209 b!928199)))

(declare-fun lambda!30728 () Int)

(declare-fun lambda!30727 () Int)

(assert (=> bs!237608 (not (= lambda!30728 lambda!30727))))

(assert (=> b!928209 true))

(assert (=> b!928209 true))

(declare-fun e!603566 () Bool)

(declare-fun call!56931 () Bool)

(assert (=> b!928199 (= e!603566 call!56931)))

(declare-fun b!928200 () Bool)

(declare-fun e!603565 () Bool)

(declare-fun e!603567 () Bool)

(assert (=> b!928200 (= e!603565 e!603567)))

(declare-fun res!421913 () Bool)

(assert (=> b!928200 (= res!421913 (matchRSpec!312 (regOne!5535 r!15766) s!10566))))

(assert (=> b!928200 (=> res!421913 e!603567)))

(declare-fun b!928201 () Bool)

(declare-fun res!421914 () Bool)

(assert (=> b!928201 (=> res!421914 e!603566)))

(declare-fun call!56930 () Bool)

(assert (=> b!928201 (= res!421914 call!56930)))

(declare-fun e!603569 () Bool)

(assert (=> b!928201 (= e!603569 e!603566)))

(declare-fun b!928202 () Bool)

(declare-fun e!603564 () Bool)

(declare-fun e!603568 () Bool)

(assert (=> b!928202 (= e!603564 e!603568)))

(declare-fun res!421912 () Bool)

(assert (=> b!928202 (= res!421912 (not ((_ is EmptyLang!2511) r!15766)))))

(assert (=> b!928202 (=> (not res!421912) (not e!603568))))

(declare-fun c!150744 () Bool)

(declare-fun bm!56926 () Bool)

(declare-fun Exists!282 (Int) Bool)

(assert (=> bm!56926 (= call!56931 (Exists!282 (ite c!150744 lambda!30727 lambda!30728)))))

(declare-fun b!928203 () Bool)

(declare-fun c!150745 () Bool)

(assert (=> b!928203 (= c!150745 ((_ is Union!2511) r!15766))))

(declare-fun e!603563 () Bool)

(assert (=> b!928203 (= e!603563 e!603565)))

(declare-fun b!928204 () Bool)

(assert (=> b!928204 (= e!603567 (matchRSpec!312 (regTwo!5535 r!15766) s!10566))))

(declare-fun b!928205 () Bool)

(assert (=> b!928205 (= e!603563 (= s!10566 (Cons!9725 (c!150700 r!15766) Nil!9725)))))

(declare-fun d!281211 () Bool)

(declare-fun c!150743 () Bool)

(assert (=> d!281211 (= c!150743 ((_ is EmptyExpr!2511) r!15766))))

(assert (=> d!281211 (= (matchRSpec!312 r!15766 s!10566) e!603564)))

(declare-fun bm!56925 () Bool)

(declare-fun isEmpty!5984 (List!9741) Bool)

(assert (=> bm!56925 (= call!56930 (isEmpty!5984 s!10566))))

(declare-fun b!928206 () Bool)

(assert (=> b!928206 (= e!603565 e!603569)))

(assert (=> b!928206 (= c!150744 ((_ is Star!2511) r!15766))))

(declare-fun b!928207 () Bool)

(assert (=> b!928207 (= e!603564 call!56930)))

(declare-fun b!928208 () Bool)

(declare-fun c!150746 () Bool)

(assert (=> b!928208 (= c!150746 ((_ is ElementMatch!2511) r!15766))))

(assert (=> b!928208 (= e!603568 e!603563)))

(assert (=> b!928209 (= e!603569 call!56931)))

(assert (= (and d!281211 c!150743) b!928207))

(assert (= (and d!281211 (not c!150743)) b!928202))

(assert (= (and b!928202 res!421912) b!928208))

(assert (= (and b!928208 c!150746) b!928205))

(assert (= (and b!928208 (not c!150746)) b!928203))

(assert (= (and b!928203 c!150745) b!928200))

(assert (= (and b!928203 (not c!150745)) b!928206))

(assert (= (and b!928200 (not res!421913)) b!928204))

(assert (= (and b!928206 c!150744) b!928201))

(assert (= (and b!928206 (not c!150744)) b!928209))

(assert (= (and b!928201 (not res!421914)) b!928199))

(assert (= (or b!928199 b!928209) bm!56926))

(assert (= (or b!928207 b!928201) bm!56925))

(declare-fun m!1152115 () Bool)

(assert (=> b!928200 m!1152115))

(declare-fun m!1152117 () Bool)

(assert (=> bm!56926 m!1152117))

(declare-fun m!1152119 () Bool)

(assert (=> b!928204 m!1152119))

(declare-fun m!1152121 () Bool)

(assert (=> bm!56925 m!1152121))

(assert (=> b!928037 d!281211))

(declare-fun b!928302 () Bool)

(declare-fun e!603630 () Bool)

(declare-fun e!603631 () Bool)

(assert (=> b!928302 (= e!603630 e!603631)))

(declare-fun c!150773 () Bool)

(assert (=> b!928302 (= c!150773 ((_ is EmptyLang!2511) r!15766))))

(declare-fun b!928303 () Bool)

(declare-fun e!603628 () Bool)

(declare-fun head!1674 (List!9741) C!5592)

(assert (=> b!928303 (= e!603628 (= (head!1674 s!10566) (c!150700 r!15766)))))

(declare-fun b!928304 () Bool)

(declare-fun e!603632 () Bool)

(declare-fun derivativeStep!521 (Regex!2511 C!5592) Regex!2511)

(declare-fun tail!1236 (List!9741) List!9741)

(assert (=> b!928304 (= e!603632 (matchR!1049 (derivativeStep!521 r!15766 (head!1674 s!10566)) (tail!1236 s!10566)))))

(declare-fun b!928305 () Bool)

(declare-fun res!421959 () Bool)

(declare-fun e!603629 () Bool)

(assert (=> b!928305 (=> res!421959 e!603629)))

(assert (=> b!928305 (= res!421959 (not ((_ is ElementMatch!2511) r!15766)))))

(assert (=> b!928305 (= e!603631 e!603629)))

(declare-fun b!928306 () Bool)

(declare-fun e!603626 () Bool)

(assert (=> b!928306 (= e!603629 e!603626)))

(declare-fun res!421958 () Bool)

(assert (=> b!928306 (=> (not res!421958) (not e!603626))))

(declare-fun lt!339897 () Bool)

(assert (=> b!928306 (= res!421958 (not lt!339897))))

(declare-fun b!928307 () Bool)

(declare-fun nullable!711 (Regex!2511) Bool)

(assert (=> b!928307 (= e!603632 (nullable!711 r!15766))))

(declare-fun b!928308 () Bool)

(declare-fun res!421957 () Bool)

(declare-fun e!603627 () Bool)

(assert (=> b!928308 (=> res!421957 e!603627)))

(assert (=> b!928308 (= res!421957 (not (isEmpty!5984 (tail!1236 s!10566))))))

(declare-fun b!928309 () Bool)

(assert (=> b!928309 (= e!603627 (not (= (head!1674 s!10566) (c!150700 r!15766))))))

(declare-fun bm!56953 () Bool)

(declare-fun call!56958 () Bool)

(assert (=> bm!56953 (= call!56958 (isEmpty!5984 s!10566))))

(declare-fun d!281223 () Bool)

(assert (=> d!281223 e!603630))

(declare-fun c!150771 () Bool)

(assert (=> d!281223 (= c!150771 ((_ is EmptyExpr!2511) r!15766))))

(assert (=> d!281223 (= lt!339897 e!603632)))

(declare-fun c!150772 () Bool)

(assert (=> d!281223 (= c!150772 (isEmpty!5984 s!10566))))

(assert (=> d!281223 (validRegex!980 r!15766)))

(assert (=> d!281223 (= (matchR!1049 r!15766 s!10566) lt!339897)))

(declare-fun b!928310 () Bool)

(declare-fun res!421961 () Bool)

(assert (=> b!928310 (=> (not res!421961) (not e!603628))))

(assert (=> b!928310 (= res!421961 (not call!56958))))

(declare-fun b!928311 () Bool)

(assert (=> b!928311 (= e!603631 (not lt!339897))))

(declare-fun b!928312 () Bool)

(assert (=> b!928312 (= e!603630 (= lt!339897 call!56958))))

(declare-fun b!928313 () Bool)

(declare-fun res!421955 () Bool)

(assert (=> b!928313 (=> res!421955 e!603629)))

(assert (=> b!928313 (= res!421955 e!603628)))

(declare-fun res!421956 () Bool)

(assert (=> b!928313 (=> (not res!421956) (not e!603628))))

(assert (=> b!928313 (= res!421956 lt!339897)))

(declare-fun b!928314 () Bool)

(assert (=> b!928314 (= e!603626 e!603627)))

(declare-fun res!421960 () Bool)

(assert (=> b!928314 (=> res!421960 e!603627)))

(assert (=> b!928314 (= res!421960 call!56958)))

(declare-fun b!928315 () Bool)

(declare-fun res!421962 () Bool)

(assert (=> b!928315 (=> (not res!421962) (not e!603628))))

(assert (=> b!928315 (= res!421962 (isEmpty!5984 (tail!1236 s!10566)))))

(assert (= (and d!281223 c!150772) b!928307))

(assert (= (and d!281223 (not c!150772)) b!928304))

(assert (= (and d!281223 c!150771) b!928312))

(assert (= (and d!281223 (not c!150771)) b!928302))

(assert (= (and b!928302 c!150773) b!928311))

(assert (= (and b!928302 (not c!150773)) b!928305))

(assert (= (and b!928305 (not res!421959)) b!928313))

(assert (= (and b!928313 res!421956) b!928310))

(assert (= (and b!928310 res!421961) b!928315))

(assert (= (and b!928315 res!421962) b!928303))

(assert (= (and b!928313 (not res!421955)) b!928306))

(assert (= (and b!928306 res!421958) b!928314))

(assert (= (and b!928314 (not res!421960)) b!928308))

(assert (= (and b!928308 (not res!421957)) b!928309))

(assert (= (or b!928312 b!928310 b!928314) bm!56953))

(declare-fun m!1152157 () Bool)

(assert (=> b!928315 m!1152157))

(assert (=> b!928315 m!1152157))

(declare-fun m!1152159 () Bool)

(assert (=> b!928315 m!1152159))

(declare-fun m!1152161 () Bool)

(assert (=> b!928307 m!1152161))

(declare-fun m!1152163 () Bool)

(assert (=> b!928309 m!1152163))

(assert (=> b!928308 m!1152157))

(assert (=> b!928308 m!1152157))

(assert (=> b!928308 m!1152159))

(assert (=> b!928303 m!1152163))

(assert (=> d!281223 m!1152121))

(assert (=> d!281223 m!1152083))

(assert (=> b!928304 m!1152163))

(assert (=> b!928304 m!1152163))

(declare-fun m!1152165 () Bool)

(assert (=> b!928304 m!1152165))

(assert (=> b!928304 m!1152157))

(assert (=> b!928304 m!1152165))

(assert (=> b!928304 m!1152157))

(declare-fun m!1152167 () Bool)

(assert (=> b!928304 m!1152167))

(assert (=> bm!56953 m!1152121))

(assert (=> b!928037 d!281223))

(declare-fun d!281231 () Bool)

(assert (=> d!281231 (= (matchR!1049 r!15766 s!10566) (matchRSpec!312 r!15766 s!10566))))

(declare-fun lt!339900 () Unit!14641)

(declare-fun choose!5711 (Regex!2511 List!9741) Unit!14641)

(assert (=> d!281231 (= lt!339900 (choose!5711 r!15766 s!10566))))

(assert (=> d!281231 (validRegex!980 r!15766)))

(assert (=> d!281231 (= (mainMatchTheorem!312 r!15766 s!10566) lt!339900)))

(declare-fun bs!237609 () Bool)

(assert (= bs!237609 d!281231))

(assert (=> bs!237609 m!1152071))

(assert (=> bs!237609 m!1152069))

(declare-fun m!1152169 () Bool)

(assert (=> bs!237609 m!1152169))

(assert (=> bs!237609 m!1152083))

(assert (=> b!928037 d!281231))

(declare-fun b!928369 () Bool)

(declare-fun e!603660 () Bool)

(declare-fun e!603661 () Bool)

(assert (=> b!928369 (= e!603660 e!603661)))

(declare-fun c!150779 () Bool)

(assert (=> b!928369 (= c!150779 ((_ is Star!2511) (regOne!5535 r!15766)))))

(declare-fun b!928370 () Bool)

(declare-fun res!421977 () Bool)

(declare-fun e!603658 () Bool)

(assert (=> b!928370 (=> res!421977 e!603658)))

(assert (=> b!928370 (= res!421977 (not ((_ is Concat!4344) (regOne!5535 r!15766))))))

(declare-fun e!603659 () Bool)

(assert (=> b!928370 (= e!603659 e!603658)))

(declare-fun b!928371 () Bool)

(declare-fun e!603657 () Bool)

(declare-fun call!56966 () Bool)

(assert (=> b!928371 (= e!603657 call!56966)))

(declare-fun b!928372 () Bool)

(declare-fun e!603663 () Bool)

(declare-fun call!56965 () Bool)

(assert (=> b!928372 (= e!603663 call!56965)))

(declare-fun b!928373 () Bool)

(declare-fun e!603662 () Bool)

(assert (=> b!928373 (= e!603662 call!56965)))

(declare-fun b!928374 () Bool)

(assert (=> b!928374 (= e!603658 e!603662)))

(declare-fun res!421973 () Bool)

(assert (=> b!928374 (=> (not res!421973) (not e!603662))))

(declare-fun call!56967 () Bool)

(assert (=> b!928374 (= res!421973 call!56967)))

(declare-fun b!928375 () Bool)

(assert (=> b!928375 (= e!603661 e!603659)))

(declare-fun c!150778 () Bool)

(assert (=> b!928375 (= c!150778 ((_ is Union!2511) (regOne!5535 r!15766)))))

(declare-fun bm!56961 () Bool)

(assert (=> bm!56961 (= call!56966 (validRegex!980 (ite c!150779 (reg!2840 (regOne!5535 r!15766)) (ite c!150778 (regOne!5535 (regOne!5535 r!15766)) (regOne!5534 (regOne!5535 r!15766))))))))

(declare-fun b!928376 () Bool)

(declare-fun res!421976 () Bool)

(assert (=> b!928376 (=> (not res!421976) (not e!603663))))

(assert (=> b!928376 (= res!421976 call!56967)))

(assert (=> b!928376 (= e!603659 e!603663)))

(declare-fun b!928377 () Bool)

(assert (=> b!928377 (= e!603661 e!603657)))

(declare-fun res!421975 () Bool)

(assert (=> b!928377 (= res!421975 (not (nullable!711 (reg!2840 (regOne!5535 r!15766)))))))

(assert (=> b!928377 (=> (not res!421975) (not e!603657))))

(declare-fun bm!56962 () Bool)

(assert (=> bm!56962 (= call!56967 call!56966)))

(declare-fun d!281233 () Bool)

(declare-fun res!421974 () Bool)

(assert (=> d!281233 (=> res!421974 e!603660)))

(assert (=> d!281233 (= res!421974 ((_ is ElementMatch!2511) (regOne!5535 r!15766)))))

(assert (=> d!281233 (= (validRegex!980 (regOne!5535 r!15766)) e!603660)))

(declare-fun bm!56960 () Bool)

(assert (=> bm!56960 (= call!56965 (validRegex!980 (ite c!150778 (regTwo!5535 (regOne!5535 r!15766)) (regTwo!5534 (regOne!5535 r!15766)))))))

(assert (= (and d!281233 (not res!421974)) b!928369))

(assert (= (and b!928369 c!150779) b!928377))

(assert (= (and b!928369 (not c!150779)) b!928375))

(assert (= (and b!928377 res!421975) b!928371))

(assert (= (and b!928375 c!150778) b!928376))

(assert (= (and b!928375 (not c!150778)) b!928370))

(assert (= (and b!928376 res!421976) b!928372))

(assert (= (and b!928370 (not res!421977)) b!928374))

(assert (= (and b!928374 res!421973) b!928373))

(assert (= (or b!928372 b!928373) bm!56960))

(assert (= (or b!928376 b!928374) bm!56962))

(assert (= (or b!928371 bm!56962) bm!56961))

(declare-fun m!1152171 () Bool)

(assert (=> bm!56961 m!1152171))

(declare-fun m!1152173 () Bool)

(assert (=> b!928377 m!1152173))

(declare-fun m!1152175 () Bool)

(assert (=> bm!56960 m!1152175))

(assert (=> b!928039 d!281233))

(declare-fun b!928378 () Bool)

(declare-fun e!603667 () Bool)

(declare-fun e!603668 () Bool)

(assert (=> b!928378 (= e!603667 e!603668)))

(declare-fun c!150781 () Bool)

(assert (=> b!928378 (= c!150781 ((_ is Star!2511) r!15766))))

(declare-fun b!928379 () Bool)

(declare-fun res!421982 () Bool)

(declare-fun e!603665 () Bool)

(assert (=> b!928379 (=> res!421982 e!603665)))

(assert (=> b!928379 (= res!421982 (not ((_ is Concat!4344) r!15766)))))

(declare-fun e!603666 () Bool)

(assert (=> b!928379 (= e!603666 e!603665)))

(declare-fun b!928380 () Bool)

(declare-fun e!603664 () Bool)

(declare-fun call!56969 () Bool)

(assert (=> b!928380 (= e!603664 call!56969)))

(declare-fun b!928381 () Bool)

(declare-fun e!603670 () Bool)

(declare-fun call!56968 () Bool)

(assert (=> b!928381 (= e!603670 call!56968)))

(declare-fun b!928382 () Bool)

(declare-fun e!603669 () Bool)

(assert (=> b!928382 (= e!603669 call!56968)))

(declare-fun b!928383 () Bool)

(assert (=> b!928383 (= e!603665 e!603669)))

(declare-fun res!421978 () Bool)

(assert (=> b!928383 (=> (not res!421978) (not e!603669))))

(declare-fun call!56970 () Bool)

(assert (=> b!928383 (= res!421978 call!56970)))

(declare-fun b!928384 () Bool)

(assert (=> b!928384 (= e!603668 e!603666)))

(declare-fun c!150780 () Bool)

(assert (=> b!928384 (= c!150780 ((_ is Union!2511) r!15766))))

(declare-fun bm!56964 () Bool)

(assert (=> bm!56964 (= call!56969 (validRegex!980 (ite c!150781 (reg!2840 r!15766) (ite c!150780 (regOne!5535 r!15766) (regOne!5534 r!15766)))))))

(declare-fun b!928385 () Bool)

(declare-fun res!421981 () Bool)

(assert (=> b!928385 (=> (not res!421981) (not e!603670))))

(assert (=> b!928385 (= res!421981 call!56970)))

(assert (=> b!928385 (= e!603666 e!603670)))

(declare-fun b!928386 () Bool)

(assert (=> b!928386 (= e!603668 e!603664)))

(declare-fun res!421980 () Bool)

(assert (=> b!928386 (= res!421980 (not (nullable!711 (reg!2840 r!15766))))))

(assert (=> b!928386 (=> (not res!421980) (not e!603664))))

(declare-fun bm!56965 () Bool)

(assert (=> bm!56965 (= call!56970 call!56969)))

(declare-fun d!281235 () Bool)

(declare-fun res!421979 () Bool)

(assert (=> d!281235 (=> res!421979 e!603667)))

(assert (=> d!281235 (= res!421979 ((_ is ElementMatch!2511) r!15766))))

(assert (=> d!281235 (= (validRegex!980 r!15766) e!603667)))

(declare-fun bm!56963 () Bool)

(assert (=> bm!56963 (= call!56968 (validRegex!980 (ite c!150780 (regTwo!5535 r!15766) (regTwo!5534 r!15766))))))

(assert (= (and d!281235 (not res!421979)) b!928378))

(assert (= (and b!928378 c!150781) b!928386))

(assert (= (and b!928378 (not c!150781)) b!928384))

(assert (= (and b!928386 res!421980) b!928380))

(assert (= (and b!928384 c!150780) b!928385))

(assert (= (and b!928384 (not c!150780)) b!928379))

(assert (= (and b!928385 res!421981) b!928381))

(assert (= (and b!928379 (not res!421982)) b!928383))

(assert (= (and b!928383 res!421978) b!928382))

(assert (= (or b!928381 b!928382) bm!56963))

(assert (= (or b!928385 b!928383) bm!56965))

(assert (= (or b!928380 bm!56965) bm!56964))

(declare-fun m!1152177 () Bool)

(assert (=> bm!56964 m!1152177))

(declare-fun m!1152179 () Bool)

(assert (=> b!928386 m!1152179))

(declare-fun m!1152181 () Bool)

(assert (=> bm!56963 m!1152181))

(assert (=> start!83178 d!281235))

(declare-fun b!928387 () Bool)

(declare-fun e!603675 () Bool)

(declare-fun e!603676 () Bool)

(assert (=> b!928387 (= e!603675 e!603676)))

(declare-fun c!150784 () Bool)

(assert (=> b!928387 (= c!150784 ((_ is EmptyLang!2511) (Union!2511 (removeUselessConcat!186 (regOne!5535 r!15766)) (removeUselessConcat!186 (regTwo!5535 r!15766)))))))

(declare-fun b!928388 () Bool)

(declare-fun e!603673 () Bool)

(assert (=> b!928388 (= e!603673 (= (head!1674 s!10566) (c!150700 (Union!2511 (removeUselessConcat!186 (regOne!5535 r!15766)) (removeUselessConcat!186 (regTwo!5535 r!15766))))))))

(declare-fun b!928389 () Bool)

(declare-fun e!603677 () Bool)

(assert (=> b!928389 (= e!603677 (matchR!1049 (derivativeStep!521 (Union!2511 (removeUselessConcat!186 (regOne!5535 r!15766)) (removeUselessConcat!186 (regTwo!5535 r!15766))) (head!1674 s!10566)) (tail!1236 s!10566)))))

(declare-fun b!928390 () Bool)

(declare-fun res!421987 () Bool)

(declare-fun e!603674 () Bool)

(assert (=> b!928390 (=> res!421987 e!603674)))

(assert (=> b!928390 (= res!421987 (not ((_ is ElementMatch!2511) (Union!2511 (removeUselessConcat!186 (regOne!5535 r!15766)) (removeUselessConcat!186 (regTwo!5535 r!15766))))))))

(assert (=> b!928390 (= e!603676 e!603674)))

(declare-fun b!928391 () Bool)

(declare-fun e!603671 () Bool)

(assert (=> b!928391 (= e!603674 e!603671)))

(declare-fun res!421986 () Bool)

(assert (=> b!928391 (=> (not res!421986) (not e!603671))))

(declare-fun lt!339901 () Bool)

(assert (=> b!928391 (= res!421986 (not lt!339901))))

(declare-fun b!928392 () Bool)

(assert (=> b!928392 (= e!603677 (nullable!711 (Union!2511 (removeUselessConcat!186 (regOne!5535 r!15766)) (removeUselessConcat!186 (regTwo!5535 r!15766)))))))

(declare-fun b!928393 () Bool)

(declare-fun res!421985 () Bool)

(declare-fun e!603672 () Bool)

(assert (=> b!928393 (=> res!421985 e!603672)))

(assert (=> b!928393 (= res!421985 (not (isEmpty!5984 (tail!1236 s!10566))))))

(declare-fun b!928394 () Bool)

(assert (=> b!928394 (= e!603672 (not (= (head!1674 s!10566) (c!150700 (Union!2511 (removeUselessConcat!186 (regOne!5535 r!15766)) (removeUselessConcat!186 (regTwo!5535 r!15766)))))))))

(declare-fun bm!56966 () Bool)

(declare-fun call!56971 () Bool)

(assert (=> bm!56966 (= call!56971 (isEmpty!5984 s!10566))))

(declare-fun d!281237 () Bool)

(assert (=> d!281237 e!603675))

(declare-fun c!150782 () Bool)

(assert (=> d!281237 (= c!150782 ((_ is EmptyExpr!2511) (Union!2511 (removeUselessConcat!186 (regOne!5535 r!15766)) (removeUselessConcat!186 (regTwo!5535 r!15766)))))))

(assert (=> d!281237 (= lt!339901 e!603677)))

(declare-fun c!150783 () Bool)

(assert (=> d!281237 (= c!150783 (isEmpty!5984 s!10566))))

(assert (=> d!281237 (validRegex!980 (Union!2511 (removeUselessConcat!186 (regOne!5535 r!15766)) (removeUselessConcat!186 (regTwo!5535 r!15766))))))

(assert (=> d!281237 (= (matchR!1049 (Union!2511 (removeUselessConcat!186 (regOne!5535 r!15766)) (removeUselessConcat!186 (regTwo!5535 r!15766))) s!10566) lt!339901)))

(declare-fun b!928395 () Bool)

(declare-fun res!421989 () Bool)

(assert (=> b!928395 (=> (not res!421989) (not e!603673))))

(assert (=> b!928395 (= res!421989 (not call!56971))))

(declare-fun b!928396 () Bool)

(assert (=> b!928396 (= e!603676 (not lt!339901))))

(declare-fun b!928397 () Bool)

(assert (=> b!928397 (= e!603675 (= lt!339901 call!56971))))

(declare-fun b!928398 () Bool)

(declare-fun res!421983 () Bool)

(assert (=> b!928398 (=> res!421983 e!603674)))

(assert (=> b!928398 (= res!421983 e!603673)))

(declare-fun res!421984 () Bool)

(assert (=> b!928398 (=> (not res!421984) (not e!603673))))

(assert (=> b!928398 (= res!421984 lt!339901)))

(declare-fun b!928399 () Bool)

(assert (=> b!928399 (= e!603671 e!603672)))

(declare-fun res!421988 () Bool)

(assert (=> b!928399 (=> res!421988 e!603672)))

(assert (=> b!928399 (= res!421988 call!56971)))

(declare-fun b!928400 () Bool)

(declare-fun res!421990 () Bool)

(assert (=> b!928400 (=> (not res!421990) (not e!603673))))

(assert (=> b!928400 (= res!421990 (isEmpty!5984 (tail!1236 s!10566)))))

(assert (= (and d!281237 c!150783) b!928392))

(assert (= (and d!281237 (not c!150783)) b!928389))

(assert (= (and d!281237 c!150782) b!928397))

(assert (= (and d!281237 (not c!150782)) b!928387))

(assert (= (and b!928387 c!150784) b!928396))

(assert (= (and b!928387 (not c!150784)) b!928390))

(assert (= (and b!928390 (not res!421987)) b!928398))

(assert (= (and b!928398 res!421984) b!928395))

(assert (= (and b!928395 res!421989) b!928400))

(assert (= (and b!928400 res!421990) b!928388))

(assert (= (and b!928398 (not res!421983)) b!928391))

(assert (= (and b!928391 res!421986) b!928399))

(assert (= (and b!928399 (not res!421988)) b!928393))

(assert (= (and b!928393 (not res!421985)) b!928394))

(assert (= (or b!928397 b!928395 b!928399) bm!56966))

(assert (=> b!928400 m!1152157))

(assert (=> b!928400 m!1152157))

(assert (=> b!928400 m!1152159))

(declare-fun m!1152183 () Bool)

(assert (=> b!928392 m!1152183))

(assert (=> b!928394 m!1152163))

(assert (=> b!928393 m!1152157))

(assert (=> b!928393 m!1152157))

(assert (=> b!928393 m!1152159))

(assert (=> b!928388 m!1152163))

(assert (=> d!281237 m!1152121))

(declare-fun m!1152185 () Bool)

(assert (=> d!281237 m!1152185))

(assert (=> b!928389 m!1152163))

(assert (=> b!928389 m!1152163))

(declare-fun m!1152187 () Bool)

(assert (=> b!928389 m!1152187))

(assert (=> b!928389 m!1152157))

(assert (=> b!928389 m!1152187))

(assert (=> b!928389 m!1152157))

(declare-fun m!1152189 () Bool)

(assert (=> b!928389 m!1152189))

(assert (=> bm!56966 m!1152121))

(assert (=> b!928041 d!281237))

(declare-fun b!928424 () Bool)

(declare-fun c!150799 () Bool)

(assert (=> b!928424 (= c!150799 ((_ is Concat!4344) (regOne!5535 r!15766)))))

(declare-fun e!603690 () Regex!2511)

(declare-fun e!603692 () Regex!2511)

(assert (=> b!928424 (= e!603690 e!603692)))

(declare-fun b!928425 () Bool)

(declare-fun c!150797 () Bool)

(assert (=> b!928425 (= c!150797 ((_ is Star!2511) (regOne!5535 r!15766)))))

(declare-fun e!603691 () Regex!2511)

(declare-fun e!603693 () Regex!2511)

(assert (=> b!928425 (= e!603691 e!603693)))

(declare-fun b!928426 () Bool)

(assert (=> b!928426 (= e!603692 e!603691)))

(declare-fun c!150796 () Bool)

(assert (=> b!928426 (= c!150796 ((_ is Union!2511) (regOne!5535 r!15766)))))

(declare-fun bm!56977 () Bool)

(declare-fun call!56986 () Regex!2511)

(declare-fun call!56982 () Regex!2511)

(assert (=> bm!56977 (= call!56986 call!56982)))

(declare-fun b!928427 () Bool)

(declare-fun call!56983 () Regex!2511)

(declare-fun call!56985 () Regex!2511)

(assert (=> b!928427 (= e!603692 (Concat!4344 call!56983 call!56985))))

(declare-fun b!928428 () Bool)

(declare-fun e!603694 () Regex!2511)

(assert (=> b!928428 (= e!603694 call!56982)))

(declare-fun d!281239 () Bool)

(declare-fun e!603695 () Bool)

(assert (=> d!281239 e!603695))

(declare-fun res!421993 () Bool)

(assert (=> d!281239 (=> (not res!421993) (not e!603695))))

(declare-fun lt!339904 () Regex!2511)

(assert (=> d!281239 (= res!421993 (validRegex!980 lt!339904))))

(assert (=> d!281239 (= lt!339904 e!603694)))

(declare-fun c!150795 () Bool)

(assert (=> d!281239 (= c!150795 (and ((_ is Concat!4344) (regOne!5535 r!15766)) ((_ is EmptyExpr!2511) (regOne!5534 (regOne!5535 r!15766)))))))

(assert (=> d!281239 (validRegex!980 (regOne!5535 r!15766))))

(assert (=> d!281239 (= (removeUselessConcat!186 (regOne!5535 r!15766)) lt!339904)))

(declare-fun b!928423 () Bool)

(assert (=> b!928423 (= e!603690 call!56986)))

(declare-fun bm!56978 () Bool)

(assert (=> bm!56978 (= call!56983 call!56986)))

(declare-fun b!928429 () Bool)

(declare-fun call!56984 () Regex!2511)

(assert (=> b!928429 (= e!603691 (Union!2511 call!56985 call!56984))))

(declare-fun bm!56979 () Bool)

(assert (=> bm!56979 (= call!56984 call!56983)))

(declare-fun b!928430 () Bool)

(assert (=> b!928430 (= e!603695 (= (nullable!711 lt!339904) (nullable!711 (regOne!5535 r!15766))))))

(declare-fun b!928431 () Bool)

(assert (=> b!928431 (= e!603693 (regOne!5535 r!15766))))

(declare-fun b!928432 () Bool)

(assert (=> b!928432 (= e!603694 e!603690)))

(declare-fun c!150798 () Bool)

(assert (=> b!928432 (= c!150798 (and ((_ is Concat!4344) (regOne!5535 r!15766)) ((_ is EmptyExpr!2511) (regTwo!5534 (regOne!5535 r!15766)))))))

(declare-fun bm!56980 () Bool)

(assert (=> bm!56980 (= call!56982 (removeUselessConcat!186 (ite c!150795 (regTwo!5534 (regOne!5535 r!15766)) (ite (or c!150798 c!150799) (regOne!5534 (regOne!5535 r!15766)) (ite c!150796 (regTwo!5535 (regOne!5535 r!15766)) (reg!2840 (regOne!5535 r!15766)))))))))

(declare-fun b!928433 () Bool)

(assert (=> b!928433 (= e!603693 (Star!2511 call!56984))))

(declare-fun bm!56981 () Bool)

(assert (=> bm!56981 (= call!56985 (removeUselessConcat!186 (ite c!150799 (regTwo!5534 (regOne!5535 r!15766)) (regOne!5535 (regOne!5535 r!15766)))))))

(assert (= (and d!281239 c!150795) b!928428))

(assert (= (and d!281239 (not c!150795)) b!928432))

(assert (= (and b!928432 c!150798) b!928423))

(assert (= (and b!928432 (not c!150798)) b!928424))

(assert (= (and b!928424 c!150799) b!928427))

(assert (= (and b!928424 (not c!150799)) b!928426))

(assert (= (and b!928426 c!150796) b!928429))

(assert (= (and b!928426 (not c!150796)) b!928425))

(assert (= (and b!928425 c!150797) b!928433))

(assert (= (and b!928425 (not c!150797)) b!928431))

(assert (= (or b!928429 b!928433) bm!56979))

(assert (= (or b!928427 b!928429) bm!56981))

(assert (= (or b!928427 bm!56979) bm!56978))

(assert (= (or b!928423 bm!56978) bm!56977))

(assert (= (or b!928428 bm!56977) bm!56980))

(assert (= (and d!281239 res!421993) b!928430))

(declare-fun m!1152191 () Bool)

(assert (=> d!281239 m!1152191))

(assert (=> d!281239 m!1152075))

(declare-fun m!1152193 () Bool)

(assert (=> b!928430 m!1152193))

(declare-fun m!1152195 () Bool)

(assert (=> b!928430 m!1152195))

(declare-fun m!1152197 () Bool)

(assert (=> bm!56980 m!1152197))

(declare-fun m!1152199 () Bool)

(assert (=> bm!56981 m!1152199))

(assert (=> b!928041 d!281239))

(declare-fun b!928435 () Bool)

(declare-fun c!150804 () Bool)

(assert (=> b!928435 (= c!150804 ((_ is Concat!4344) (regTwo!5535 r!15766)))))

(declare-fun e!603696 () Regex!2511)

(declare-fun e!603698 () Regex!2511)

(assert (=> b!928435 (= e!603696 e!603698)))

(declare-fun b!928436 () Bool)

(declare-fun c!150802 () Bool)

(assert (=> b!928436 (= c!150802 ((_ is Star!2511) (regTwo!5535 r!15766)))))

(declare-fun e!603697 () Regex!2511)

(declare-fun e!603699 () Regex!2511)

(assert (=> b!928436 (= e!603697 e!603699)))

(declare-fun b!928437 () Bool)

(assert (=> b!928437 (= e!603698 e!603697)))

(declare-fun c!150801 () Bool)

(assert (=> b!928437 (= c!150801 ((_ is Union!2511) (regTwo!5535 r!15766)))))

(declare-fun bm!56982 () Bool)

(declare-fun call!56991 () Regex!2511)

(declare-fun call!56987 () Regex!2511)

(assert (=> bm!56982 (= call!56991 call!56987)))

(declare-fun b!928438 () Bool)

(declare-fun call!56988 () Regex!2511)

(declare-fun call!56990 () Regex!2511)

(assert (=> b!928438 (= e!603698 (Concat!4344 call!56988 call!56990))))

(declare-fun b!928439 () Bool)

(declare-fun e!603700 () Regex!2511)

(assert (=> b!928439 (= e!603700 call!56987)))

(declare-fun d!281241 () Bool)

(declare-fun e!603701 () Bool)

(assert (=> d!281241 e!603701))

(declare-fun res!421994 () Bool)

(assert (=> d!281241 (=> (not res!421994) (not e!603701))))

(declare-fun lt!339905 () Regex!2511)

(assert (=> d!281241 (= res!421994 (validRegex!980 lt!339905))))

(assert (=> d!281241 (= lt!339905 e!603700)))

(declare-fun c!150800 () Bool)

(assert (=> d!281241 (= c!150800 (and ((_ is Concat!4344) (regTwo!5535 r!15766)) ((_ is EmptyExpr!2511) (regOne!5534 (regTwo!5535 r!15766)))))))

(assert (=> d!281241 (validRegex!980 (regTwo!5535 r!15766))))

(assert (=> d!281241 (= (removeUselessConcat!186 (regTwo!5535 r!15766)) lt!339905)))

(declare-fun b!928434 () Bool)

(assert (=> b!928434 (= e!603696 call!56991)))

(declare-fun bm!56983 () Bool)

(assert (=> bm!56983 (= call!56988 call!56991)))

(declare-fun b!928440 () Bool)

(declare-fun call!56989 () Regex!2511)

(assert (=> b!928440 (= e!603697 (Union!2511 call!56990 call!56989))))

(declare-fun bm!56984 () Bool)

(assert (=> bm!56984 (= call!56989 call!56988)))

(declare-fun b!928441 () Bool)

(assert (=> b!928441 (= e!603701 (= (nullable!711 lt!339905) (nullable!711 (regTwo!5535 r!15766))))))

(declare-fun b!928442 () Bool)

(assert (=> b!928442 (= e!603699 (regTwo!5535 r!15766))))

(declare-fun b!928443 () Bool)

(assert (=> b!928443 (= e!603700 e!603696)))

(declare-fun c!150803 () Bool)

(assert (=> b!928443 (= c!150803 (and ((_ is Concat!4344) (regTwo!5535 r!15766)) ((_ is EmptyExpr!2511) (regTwo!5534 (regTwo!5535 r!15766)))))))

(declare-fun bm!56985 () Bool)

(assert (=> bm!56985 (= call!56987 (removeUselessConcat!186 (ite c!150800 (regTwo!5534 (regTwo!5535 r!15766)) (ite (or c!150803 c!150804) (regOne!5534 (regTwo!5535 r!15766)) (ite c!150801 (regTwo!5535 (regTwo!5535 r!15766)) (reg!2840 (regTwo!5535 r!15766)))))))))

(declare-fun b!928444 () Bool)

(assert (=> b!928444 (= e!603699 (Star!2511 call!56989))))

(declare-fun bm!56986 () Bool)

(assert (=> bm!56986 (= call!56990 (removeUselessConcat!186 (ite c!150804 (regTwo!5534 (regTwo!5535 r!15766)) (regOne!5535 (regTwo!5535 r!15766)))))))

(assert (= (and d!281241 c!150800) b!928439))

(assert (= (and d!281241 (not c!150800)) b!928443))

(assert (= (and b!928443 c!150803) b!928434))

(assert (= (and b!928443 (not c!150803)) b!928435))

(assert (= (and b!928435 c!150804) b!928438))

(assert (= (and b!928435 (not c!150804)) b!928437))

(assert (= (and b!928437 c!150801) b!928440))

(assert (= (and b!928437 (not c!150801)) b!928436))

(assert (= (and b!928436 c!150802) b!928444))

(assert (= (and b!928436 (not c!150802)) b!928442))

(assert (= (or b!928440 b!928444) bm!56984))

(assert (= (or b!928438 b!928440) bm!56986))

(assert (= (or b!928438 bm!56984) bm!56983))

(assert (= (or b!928434 bm!56983) bm!56982))

(assert (= (or b!928439 bm!56982) bm!56985))

(assert (= (and d!281241 res!421994) b!928441))

(declare-fun m!1152201 () Bool)

(assert (=> d!281241 m!1152201))

(declare-fun m!1152203 () Bool)

(assert (=> d!281241 m!1152203))

(declare-fun m!1152205 () Bool)

(assert (=> b!928441 m!1152205))

(declare-fun m!1152207 () Bool)

(assert (=> b!928441 m!1152207))

(declare-fun m!1152209 () Bool)

(assert (=> bm!56985 m!1152209))

(declare-fun m!1152211 () Bool)

(assert (=> bm!56986 m!1152211))

(assert (=> b!928041 d!281241))

(declare-fun b!928455 () Bool)

(declare-fun e!603704 () Bool)

(assert (=> b!928455 (= e!603704 tp_is_empty!4665)))

(declare-fun b!928458 () Bool)

(declare-fun tp!288398 () Bool)

(declare-fun tp!288399 () Bool)

(assert (=> b!928458 (= e!603704 (and tp!288398 tp!288399))))

(declare-fun b!928456 () Bool)

(declare-fun tp!288397 () Bool)

(declare-fun tp!288400 () Bool)

(assert (=> b!928456 (= e!603704 (and tp!288397 tp!288400))))

(assert (=> b!928043 (= tp!288348 e!603704)))

(declare-fun b!928457 () Bool)

(declare-fun tp!288401 () Bool)

(assert (=> b!928457 (= e!603704 tp!288401)))

(assert (= (and b!928043 ((_ is ElementMatch!2511) (regOne!5535 r!15766))) b!928455))

(assert (= (and b!928043 ((_ is Concat!4344) (regOne!5535 r!15766))) b!928456))

(assert (= (and b!928043 ((_ is Star!2511) (regOne!5535 r!15766))) b!928457))

(assert (= (and b!928043 ((_ is Union!2511) (regOne!5535 r!15766))) b!928458))

(declare-fun b!928459 () Bool)

(declare-fun e!603705 () Bool)

(assert (=> b!928459 (= e!603705 tp_is_empty!4665)))

(declare-fun b!928462 () Bool)

(declare-fun tp!288403 () Bool)

(declare-fun tp!288404 () Bool)

(assert (=> b!928462 (= e!603705 (and tp!288403 tp!288404))))

(declare-fun b!928460 () Bool)

(declare-fun tp!288402 () Bool)

(declare-fun tp!288405 () Bool)

(assert (=> b!928460 (= e!603705 (and tp!288402 tp!288405))))

(assert (=> b!928043 (= tp!288343 e!603705)))

(declare-fun b!928461 () Bool)

(declare-fun tp!288406 () Bool)

(assert (=> b!928461 (= e!603705 tp!288406)))

(assert (= (and b!928043 ((_ is ElementMatch!2511) (regTwo!5535 r!15766))) b!928459))

(assert (= (and b!928043 ((_ is Concat!4344) (regTwo!5535 r!15766))) b!928460))

(assert (= (and b!928043 ((_ is Star!2511) (regTwo!5535 r!15766))) b!928461))

(assert (= (and b!928043 ((_ is Union!2511) (regTwo!5535 r!15766))) b!928462))

(declare-fun b!928463 () Bool)

(declare-fun e!603706 () Bool)

(assert (=> b!928463 (= e!603706 tp_is_empty!4665)))

(declare-fun b!928466 () Bool)

(declare-fun tp!288408 () Bool)

(declare-fun tp!288409 () Bool)

(assert (=> b!928466 (= e!603706 (and tp!288408 tp!288409))))

(declare-fun b!928464 () Bool)

(declare-fun tp!288407 () Bool)

(declare-fun tp!288410 () Bool)

(assert (=> b!928464 (= e!603706 (and tp!288407 tp!288410))))

(assert (=> b!928040 (= tp!288345 e!603706)))

(declare-fun b!928465 () Bool)

(declare-fun tp!288411 () Bool)

(assert (=> b!928465 (= e!603706 tp!288411)))

(assert (= (and b!928040 ((_ is ElementMatch!2511) (regOne!5534 r!15766))) b!928463))

(assert (= (and b!928040 ((_ is Concat!4344) (regOne!5534 r!15766))) b!928464))

(assert (= (and b!928040 ((_ is Star!2511) (regOne!5534 r!15766))) b!928465))

(assert (= (and b!928040 ((_ is Union!2511) (regOne!5534 r!15766))) b!928466))

(declare-fun b!928467 () Bool)

(declare-fun e!603707 () Bool)

(assert (=> b!928467 (= e!603707 tp_is_empty!4665)))

(declare-fun b!928470 () Bool)

(declare-fun tp!288413 () Bool)

(declare-fun tp!288414 () Bool)

(assert (=> b!928470 (= e!603707 (and tp!288413 tp!288414))))

(declare-fun b!928468 () Bool)

(declare-fun tp!288412 () Bool)

(declare-fun tp!288415 () Bool)

(assert (=> b!928468 (= e!603707 (and tp!288412 tp!288415))))

(assert (=> b!928040 (= tp!288344 e!603707)))

(declare-fun b!928469 () Bool)

(declare-fun tp!288416 () Bool)

(assert (=> b!928469 (= e!603707 tp!288416)))

(assert (= (and b!928040 ((_ is ElementMatch!2511) (regTwo!5534 r!15766))) b!928467))

(assert (= (and b!928040 ((_ is Concat!4344) (regTwo!5534 r!15766))) b!928468))

(assert (= (and b!928040 ((_ is Star!2511) (regTwo!5534 r!15766))) b!928469))

(assert (= (and b!928040 ((_ is Union!2511) (regTwo!5534 r!15766))) b!928470))

(declare-fun b!928471 () Bool)

(declare-fun e!603708 () Bool)

(assert (=> b!928471 (= e!603708 tp_is_empty!4665)))

(declare-fun b!928474 () Bool)

(declare-fun tp!288418 () Bool)

(declare-fun tp!288419 () Bool)

(assert (=> b!928474 (= e!603708 (and tp!288418 tp!288419))))

(declare-fun b!928472 () Bool)

(declare-fun tp!288417 () Bool)

(declare-fun tp!288420 () Bool)

(assert (=> b!928472 (= e!603708 (and tp!288417 tp!288420))))

(assert (=> b!928036 (= tp!288346 e!603708)))

(declare-fun b!928473 () Bool)

(declare-fun tp!288421 () Bool)

(assert (=> b!928473 (= e!603708 tp!288421)))

(assert (= (and b!928036 ((_ is ElementMatch!2511) (reg!2840 r!15766))) b!928471))

(assert (= (and b!928036 ((_ is Concat!4344) (reg!2840 r!15766))) b!928472))

(assert (= (and b!928036 ((_ is Star!2511) (reg!2840 r!15766))) b!928473))

(assert (= (and b!928036 ((_ is Union!2511) (reg!2840 r!15766))) b!928474))

(declare-fun b!928479 () Bool)

(declare-fun e!603711 () Bool)

(declare-fun tp!288424 () Bool)

(assert (=> b!928479 (= e!603711 (and tp_is_empty!4665 tp!288424))))

(assert (=> b!928042 (= tp!288347 e!603711)))

(assert (= (and b!928042 ((_ is Cons!9725) (t!100787 s!10566))) b!928479))

(check-sat (not b!928303) (not b!928462) (not d!281239) (not bm!56964) (not b!928309) (not bm!56953) (not b!928457) (not b!928464) (not d!281237) (not b!928386) (not bm!56986) (not b!928393) (not bm!56960) (not bm!56961) (not b!928400) (not bm!56963) (not b!928461) (not b!928307) (not b!928308) (not bm!56985) (not b!928456) (not b!928200) (not b!928465) (not bm!56981) (not b!928315) (not b!928441) tp_is_empty!4665 (not b!928473) (not d!281241) (not b!928392) (not bm!56966) (not b!928466) (not bm!56980) (not b!928430) (not b!928460) (not b!928388) (not d!281223) (not b!928469) (not bm!56925) (not b!928304) (not b!928470) (not b!928394) (not b!928468) (not b!928204) (not b!928474) (not bm!56926) (not b!928389) (not b!928479) (not b!928377) (not d!281231) (not b!928472) (not b!928458))
(check-sat)
