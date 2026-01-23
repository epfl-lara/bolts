; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!47176 () Bool)

(assert start!47176)

(assert (=> start!47176 true))

(declare-fun b!518204 () Bool)

(declare-fun e!310260 () Bool)

(declare-fun tp_is_empty!2673 () Bool)

(declare-fun tp!161592 () Bool)

(assert (=> b!518204 (= e!310260 (and tp_is_empty!2673 tp!161592))))

(declare-fun b!518205 () Bool)

(declare-fun e!310261 () Bool)

(declare-fun e!310263 () Bool)

(assert (=> b!518205 (= e!310261 e!310263)))

(declare-fun res!219763 () Bool)

(assert (=> b!518205 (=> (not res!219763) (not e!310263))))

(declare-datatypes ((B!1077 0))(
  ( (B!1078 (val!1826 Int)) )
))
(declare-datatypes ((List!4766 0))(
  ( (Nil!4756) (Cons!4756 (h!10157 B!1077) (t!73356 List!4766)) )
))
(declare-fun lIn!3 () List!4766)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!216099 () (InoxSet B!1077))

(declare-fun content!841 (List!4766) (InoxSet B!1077))

(assert (=> b!518205 (= res!219763 (= ((_ map implies) (content!841 lIn!3) lt!216099) ((as const (InoxSet B!1077)) true)))))

(declare-fun l!3695 () List!4766)

(assert (=> b!518205 (= lt!216099 (content!841 l!3695))))

(declare-datatypes ((Unit!8716 0))(
  ( (Unit!8717) )
))
(declare-fun lt!216098 () Unit!8716)

(declare-fun forallContainsSubset!2 (List!4766 List!4766) Unit!8716)

(assert (=> b!518205 (= lt!216098 (forallContainsSubset!2 lIn!3 l!3695))))

(declare-fun b!518206 () Bool)

(declare-fun e!310264 () Bool)

(declare-fun tp!161593 () Bool)

(assert (=> b!518206 (= e!310264 (and tp_is_empty!2673 tp!161593))))

(declare-fun res!219765 () Bool)

(assert (=> start!47176 (=> (not res!219765) (not e!310261))))

(declare-fun lambda!14681 () Int)

(declare-fun forall!1425 (List!4766 Int) Bool)

(assert (=> start!47176 (= res!219765 (forall!1425 lIn!3 lambda!14681))))

(assert (=> start!47176 e!310261))

(assert (=> start!47176 e!310260))

(assert (=> start!47176 e!310264))

(declare-fun b!518207 () Bool)

(declare-fun res!219768 () Bool)

(assert (=> b!518207 (=> (not res!219768) (not e!310261))))

(get-info :version)

(assert (=> b!518207 (= res!219768 ((_ is Cons!4756) lIn!3))))

(declare-fun b!518208 () Bool)

(declare-fun res!219766 () Bool)

(assert (=> b!518208 (=> (not res!219766) (not e!310263))))

(declare-fun contains!1116 (List!4766 B!1077) Bool)

(assert (=> b!518208 (= res!219766 (not (contains!1116 (t!73356 lIn!3) (h!10157 lIn!3))))))

(declare-fun b!518209 () Bool)

(declare-fun e!310262 () Bool)

(assert (=> b!518209 (= e!310263 e!310262)))

(declare-fun res!219767 () Bool)

(assert (=> b!518209 (=> (not res!219767) (not e!310262))))

(declare-fun lt!216097 () (InoxSet B!1077))

(assert (=> b!518209 (= res!219767 (= lt!216097 ((_ map and) lt!216099 ((_ map not) (store ((as const (Array B!1077 Bool)) false) (h!10157 lIn!3) true)))))))

(declare-fun -!48 (List!4766 B!1077) List!4766)

(assert (=> b!518209 (= lt!216097 (content!841 (-!48 l!3695 (h!10157 lIn!3))))))

(declare-fun b!518210 () Bool)

(assert (=> b!518210 (= e!310262 (not (= ((_ map implies) (content!841 (t!73356 lIn!3)) lt!216097) ((as const (InoxSet B!1077)) true))))))

(declare-fun b!518211 () Bool)

(declare-fun res!219764 () Bool)

(assert (=> b!518211 (=> (not res!219764) (not e!310261))))

(declare-fun noDuplicate!117 (List!4766) Bool)

(assert (=> b!518211 (= res!219764 (noDuplicate!117 lIn!3))))

(assert (= (and start!47176 res!219765) b!518211))

(assert (= (and b!518211 res!219764) b!518207))

(assert (= (and b!518207 res!219768) b!518205))

(assert (= (and b!518205 res!219763) b!518208))

(assert (= (and b!518208 res!219766) b!518209))

(assert (= (and b!518209 res!219767) b!518210))

(assert (= (and start!47176 ((_ is Cons!4756) lIn!3)) b!518204))

(assert (= (and start!47176 ((_ is Cons!4756) l!3695)) b!518206))

(declare-fun m!765245 () Bool)

(assert (=> b!518208 m!765245))

(declare-fun m!765247 () Bool)

(assert (=> b!518210 m!765247))

(declare-fun m!765249 () Bool)

(assert (=> start!47176 m!765249))

(declare-fun m!765251 () Bool)

(assert (=> b!518205 m!765251))

(declare-fun m!765253 () Bool)

(assert (=> b!518205 m!765253))

(declare-fun m!765255 () Bool)

(assert (=> b!518205 m!765255))

(declare-fun m!765257 () Bool)

(assert (=> b!518209 m!765257))

(declare-fun m!765259 () Bool)

(assert (=> b!518209 m!765259))

(assert (=> b!518209 m!765259))

(declare-fun m!765261 () Bool)

(assert (=> b!518209 m!765261))

(declare-fun m!765263 () Bool)

(assert (=> b!518211 m!765263))

(check-sat (not b!518206) tp_is_empty!2673 (not b!518211) (not b!518210) (not b!518205) (not b!518208) (not b!518204) (not b!518209) (not start!47176))
(check-sat)
(get-model)

(declare-fun d!185249 () Bool)

(declare-fun lt!216108 () Bool)

(assert (=> d!185249 (= lt!216108 (select (content!841 (t!73356 lIn!3)) (h!10157 lIn!3)))))

(declare-fun e!310280 () Bool)

(assert (=> d!185249 (= lt!216108 e!310280)))

(declare-fun res!219779 () Bool)

(assert (=> d!185249 (=> (not res!219779) (not e!310280))))

(assert (=> d!185249 (= res!219779 ((_ is Cons!4756) (t!73356 lIn!3)))))

(assert (=> d!185249 (= (contains!1116 (t!73356 lIn!3) (h!10157 lIn!3)) lt!216108)))

(declare-fun b!518232 () Bool)

(declare-fun e!310279 () Bool)

(assert (=> b!518232 (= e!310280 e!310279)))

(declare-fun res!219780 () Bool)

(assert (=> b!518232 (=> res!219780 e!310279)))

(assert (=> b!518232 (= res!219780 (= (h!10157 (t!73356 lIn!3)) (h!10157 lIn!3)))))

(declare-fun b!518233 () Bool)

(assert (=> b!518233 (= e!310279 (contains!1116 (t!73356 (t!73356 lIn!3)) (h!10157 lIn!3)))))

(assert (= (and d!185249 res!219779) b!518232))

(assert (= (and b!518232 (not res!219780)) b!518233))

(assert (=> d!185249 m!765247))

(declare-fun m!765277 () Bool)

(assert (=> d!185249 m!765277))

(declare-fun m!765279 () Bool)

(assert (=> b!518233 m!765279))

(assert (=> b!518208 d!185249))

(declare-fun d!185259 () Bool)

(declare-fun res!219791 () Bool)

(declare-fun e!310297 () Bool)

(assert (=> d!185259 (=> res!219791 e!310297)))

(assert (=> d!185259 (= res!219791 ((_ is Nil!4756) lIn!3))))

(assert (=> d!185259 (= (forall!1425 lIn!3 lambda!14681) e!310297)))

(declare-fun b!518254 () Bool)

(declare-fun e!310298 () Bool)

(assert (=> b!518254 (= e!310297 e!310298)))

(declare-fun res!219792 () Bool)

(assert (=> b!518254 (=> (not res!219792) (not e!310298))))

(declare-fun dynLambda!2992 (Int B!1077) Bool)

(assert (=> b!518254 (= res!219792 (dynLambda!2992 lambda!14681 (h!10157 lIn!3)))))

(declare-fun b!518255 () Bool)

(assert (=> b!518255 (= e!310298 (forall!1425 (t!73356 lIn!3) lambda!14681))))

(assert (= (and d!185259 (not res!219791)) b!518254))

(assert (= (and b!518254 res!219792) b!518255))

(declare-fun b_lambda!20181 () Bool)

(assert (=> (not b_lambda!20181) (not b!518254)))

(declare-fun m!765287 () Bool)

(assert (=> b!518254 m!765287))

(declare-fun m!765289 () Bool)

(assert (=> b!518255 m!765289))

(assert (=> start!47176 d!185259))

(declare-fun d!185265 () Bool)

(declare-fun c!100344 () Bool)

(assert (=> d!185265 (= c!100344 ((_ is Nil!4756) (-!48 l!3695 (h!10157 lIn!3))))))

(declare-fun e!310315 () (InoxSet B!1077))

(assert (=> d!185265 (= (content!841 (-!48 l!3695 (h!10157 lIn!3))) e!310315)))

(declare-fun b!518279 () Bool)

(assert (=> b!518279 (= e!310315 ((as const (Array B!1077 Bool)) false))))

(declare-fun b!518280 () Bool)

(assert (=> b!518280 (= e!310315 ((_ map or) (store ((as const (Array B!1077 Bool)) false) (h!10157 (-!48 l!3695 (h!10157 lIn!3))) true) (content!841 (t!73356 (-!48 l!3695 (h!10157 lIn!3))))))))

(assert (= (and d!185265 c!100344) b!518279))

(assert (= (and d!185265 (not c!100344)) b!518280))

(declare-fun m!765307 () Bool)

(assert (=> b!518280 m!765307))

(declare-fun m!765309 () Bool)

(assert (=> b!518280 m!765309))

(assert (=> b!518209 d!185265))

(declare-fun lt!216114 () List!4766)

(declare-fun e!310325 () Bool)

(declare-fun b!518293 () Bool)

(assert (=> b!518293 (= e!310325 (= (content!841 lt!216114) ((_ map and) (content!841 l!3695) ((_ map not) (store ((as const (Array B!1077 Bool)) false) (h!10157 lIn!3) true)))))))

(declare-fun bm!37989 () Bool)

(declare-fun call!37994 () List!4766)

(assert (=> bm!37989 (= call!37994 (-!48 (t!73356 l!3695) (h!10157 lIn!3)))))

(declare-fun b!518294 () Bool)

(declare-fun e!310326 () List!4766)

(declare-fun e!310327 () List!4766)

(assert (=> b!518294 (= e!310326 e!310327)))

(declare-fun c!100350 () Bool)

(assert (=> b!518294 (= c!100350 (= (h!10157 lIn!3) (h!10157 l!3695)))))

(declare-fun b!518295 () Bool)

(assert (=> b!518295 (= e!310327 call!37994)))

(declare-fun b!518296 () Bool)

(assert (=> b!518296 (= e!310327 (Cons!4756 (h!10157 l!3695) call!37994))))

(declare-fun b!518297 () Bool)

(assert (=> b!518297 (= e!310326 Nil!4756)))

(declare-fun d!185273 () Bool)

(assert (=> d!185273 e!310325))

(declare-fun res!219804 () Bool)

(assert (=> d!185273 (=> (not res!219804) (not e!310325))))

(declare-fun size!3887 (List!4766) Int)

(assert (=> d!185273 (= res!219804 (<= (size!3887 lt!216114) (size!3887 l!3695)))))

(assert (=> d!185273 (= lt!216114 e!310326)))

(declare-fun c!100349 () Bool)

(assert (=> d!185273 (= c!100349 ((_ is Cons!4756) l!3695))))

(assert (=> d!185273 (= (-!48 l!3695 (h!10157 lIn!3)) lt!216114)))

(assert (= (and d!185273 c!100349) b!518294))

(assert (= (and d!185273 (not c!100349)) b!518297))

(assert (= (and b!518294 c!100350) b!518295))

(assert (= (and b!518294 (not c!100350)) b!518296))

(assert (= (or b!518295 b!518296) bm!37989))

(assert (= (and d!185273 res!219804) b!518293))

(declare-fun m!765313 () Bool)

(assert (=> b!518293 m!765313))

(assert (=> b!518293 m!765253))

(assert (=> b!518293 m!765257))

(declare-fun m!765315 () Bool)

(assert (=> bm!37989 m!765315))

(declare-fun m!765317 () Bool)

(assert (=> d!185273 m!765317))

(declare-fun m!765319 () Bool)

(assert (=> d!185273 m!765319))

(assert (=> b!518209 d!185273))

(declare-fun d!185275 () Bool)

(declare-fun res!219809 () Bool)

(declare-fun e!310332 () Bool)

(assert (=> d!185275 (=> res!219809 e!310332)))

(assert (=> d!185275 (= res!219809 ((_ is Nil!4756) lIn!3))))

(assert (=> d!185275 (= (noDuplicate!117 lIn!3) e!310332)))

(declare-fun b!518302 () Bool)

(declare-fun e!310333 () Bool)

(assert (=> b!518302 (= e!310332 e!310333)))

(declare-fun res!219810 () Bool)

(assert (=> b!518302 (=> (not res!219810) (not e!310333))))

(assert (=> b!518302 (= res!219810 (not (contains!1116 (t!73356 lIn!3) (h!10157 lIn!3))))))

(declare-fun b!518303 () Bool)

(assert (=> b!518303 (= e!310333 (noDuplicate!117 (t!73356 lIn!3)))))

(assert (= (and d!185275 (not res!219809)) b!518302))

(assert (= (and b!518302 res!219810) b!518303))

(assert (=> b!518302 m!765245))

(declare-fun m!765321 () Bool)

(assert (=> b!518303 m!765321))

(assert (=> b!518211 d!185275))

(declare-fun d!185277 () Bool)

(declare-fun c!100351 () Bool)

(assert (=> d!185277 (= c!100351 ((_ is Nil!4756) (t!73356 lIn!3)))))

(declare-fun e!310334 () (InoxSet B!1077))

(assert (=> d!185277 (= (content!841 (t!73356 lIn!3)) e!310334)))

(declare-fun b!518304 () Bool)

(assert (=> b!518304 (= e!310334 ((as const (Array B!1077 Bool)) false))))

(declare-fun b!518305 () Bool)

(assert (=> b!518305 (= e!310334 ((_ map or) (store ((as const (Array B!1077 Bool)) false) (h!10157 (t!73356 lIn!3)) true) (content!841 (t!73356 (t!73356 lIn!3)))))))

(assert (= (and d!185277 c!100351) b!518304))

(assert (= (and d!185277 (not c!100351)) b!518305))

(declare-fun m!765323 () Bool)

(assert (=> b!518305 m!765323))

(declare-fun m!765325 () Bool)

(assert (=> b!518305 m!765325))

(assert (=> b!518210 d!185277))

(declare-fun d!185279 () Bool)

(declare-fun c!100352 () Bool)

(assert (=> d!185279 (= c!100352 ((_ is Nil!4756) lIn!3))))

(declare-fun e!310335 () (InoxSet B!1077))

(assert (=> d!185279 (= (content!841 lIn!3) e!310335)))

(declare-fun b!518306 () Bool)

(assert (=> b!518306 (= e!310335 ((as const (Array B!1077 Bool)) false))))

(declare-fun b!518307 () Bool)

(assert (=> b!518307 (= e!310335 ((_ map or) (store ((as const (Array B!1077 Bool)) false) (h!10157 lIn!3) true) (content!841 (t!73356 lIn!3))))))

(assert (= (and d!185279 c!100352) b!518306))

(assert (= (and d!185279 (not c!100352)) b!518307))

(assert (=> b!518307 m!765257))

(assert (=> b!518307 m!765247))

(assert (=> b!518205 d!185279))

(declare-fun d!185281 () Bool)

(declare-fun c!100353 () Bool)

(assert (=> d!185281 (= c!100353 ((_ is Nil!4756) l!3695))))

(declare-fun e!310336 () (InoxSet B!1077))

(assert (=> d!185281 (= (content!841 l!3695) e!310336)))

(declare-fun b!518308 () Bool)

(assert (=> b!518308 (= e!310336 ((as const (Array B!1077 Bool)) false))))

(declare-fun b!518309 () Bool)

(assert (=> b!518309 (= e!310336 ((_ map or) (store ((as const (Array B!1077 Bool)) false) (h!10157 l!3695) true) (content!841 (t!73356 l!3695))))))

(assert (= (and d!185281 c!100353) b!518308))

(assert (= (and d!185281 (not c!100353)) b!518309))

(declare-fun m!765327 () Bool)

(assert (=> b!518309 m!765327))

(declare-fun m!765329 () Bool)

(assert (=> b!518309 m!765329))

(assert (=> b!518205 d!185281))

(declare-fun bs!60330 () Bool)

(declare-fun d!185283 () Bool)

(assert (= bs!60330 (and d!185283 start!47176)))

(declare-fun lambda!14687 () Int)

(assert (=> bs!60330 (= lambda!14687 lambda!14681)))

(assert (=> d!185283 true))

(assert (=> d!185283 (= ((_ map implies) (content!841 lIn!3) (content!841 l!3695)) ((as const (InoxSet B!1077)) true))))

(declare-fun lt!216117 () Unit!8716)

(declare-fun choose!3702 (List!4766 List!4766) Unit!8716)

(assert (=> d!185283 (= lt!216117 (choose!3702 lIn!3 l!3695))))

(assert (=> d!185283 (forall!1425 lIn!3 lambda!14687)))

(assert (=> d!185283 (= (forallContainsSubset!2 lIn!3 l!3695) lt!216117)))

(declare-fun bs!60331 () Bool)

(assert (= bs!60331 d!185283))

(assert (=> bs!60331 m!765251))

(assert (=> bs!60331 m!765253))

(declare-fun m!765331 () Bool)

(assert (=> bs!60331 m!765331))

(declare-fun m!765333 () Bool)

(assert (=> bs!60331 m!765333))

(assert (=> b!518205 d!185283))

(declare-fun b!518314 () Bool)

(declare-fun e!310339 () Bool)

(declare-fun tp!161600 () Bool)

(assert (=> b!518314 (= e!310339 (and tp_is_empty!2673 tp!161600))))

(assert (=> b!518206 (= tp!161593 e!310339)))

(assert (= (and b!518206 ((_ is Cons!4756) (t!73356 l!3695))) b!518314))

(declare-fun b!518315 () Bool)

(declare-fun e!310340 () Bool)

(declare-fun tp!161601 () Bool)

(assert (=> b!518315 (= e!310340 (and tp_is_empty!2673 tp!161601))))

(assert (=> b!518204 (= tp!161592 e!310340)))

(assert (= (and b!518204 ((_ is Cons!4756) (t!73356 lIn!3))) b!518315))

(declare-fun b_lambda!20187 () Bool)

(assert (= b_lambda!20181 (or start!47176 b_lambda!20187)))

(declare-fun bs!60332 () Bool)

(declare-fun d!185285 () Bool)

(assert (= bs!60332 (and d!185285 start!47176)))

(assert (=> bs!60332 (= (dynLambda!2992 lambda!14681 (h!10157 lIn!3)) (contains!1116 l!3695 (h!10157 lIn!3)))))

(declare-fun m!765335 () Bool)

(assert (=> bs!60332 m!765335))

(assert (=> b!518254 d!185285))

(check-sat (not b!518309) (not b!518280) (not b!518233) (not d!185283) tp_is_empty!2673 (not bs!60332) (not b!518307) (not b!518302) (not b!518303) (not b!518315) (not bm!37989) (not b!518305) (not b!518314) (not d!185249) (not d!185273) (not b!518293) (not b!518255) (not b_lambda!20187))
(check-sat)
