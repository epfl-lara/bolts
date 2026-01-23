; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!534334 () Bool)

(assert start!534334)

(declare-fun b!5052294 () Bool)

(declare-fun e!3154211 () Bool)

(declare-datatypes ((T!104866 0))(
  ( (T!104867 (val!23612 Int)) )
))
(declare-datatypes ((List!58522 0))(
  ( (Nil!58398) (Cons!58398 (h!64846 T!104866) (t!371161 List!58522)) )
))
(declare-datatypes ((tuple2!63286 0))(
  ( (tuple2!63287 (_1!34946 List!58522) (_2!34946 List!58522)) )
))
(declare-fun lt!2086931 () tuple2!63286)

(declare-fun e!3154207 () tuple2!63286)

(assert (=> b!5052294 (= e!3154211 (not (= lt!2086931 e!3154207)))))

(declare-fun c!866861 () Bool)

(declare-fun i!652 () Int)

(declare-fun lt!2086928 () Int)

(assert (=> b!5052294 (= c!866861 (< i!652 lt!2086928))))

(declare-fun b!5052295 () Bool)

(declare-fun lt!2086930 () tuple2!63286)

(declare-fun call!351992 () tuple2!63286)

(assert (=> b!5052295 (= lt!2086930 call!351992)))

(declare-fun call!351993 () List!58522)

(assert (=> b!5052295 (= e!3154207 (tuple2!63287 (_1!34946 lt!2086930) call!351993))))

(declare-fun b!5052296 () Bool)

(declare-fun res!2151314 () Bool)

(declare-fun e!3154212 () Bool)

(assert (=> b!5052296 (=> (not res!2151314) (not e!3154212))))

(assert (=> b!5052296 (= res!2151314 (<= i!652 0))))

(declare-fun b!5052297 () Bool)

(declare-fun lt!2086929 () tuple2!63286)

(assert (=> b!5052297 (= lt!2086929 call!351992)))

(assert (=> b!5052297 (= e!3154207 (tuple2!63287 call!351993 (_2!34946 lt!2086929)))))

(declare-fun bm!351987 () Bool)

(declare-fun r!2041 () List!58522)

(declare-fun l!2757 () List!58522)

(declare-fun splitAtIndex!229 (List!58522 Int) tuple2!63286)

(assert (=> bm!351987 (= call!351992 (splitAtIndex!229 (ite c!866861 l!2757 r!2041) (ite c!866861 i!652 (- i!652 lt!2086928))))))

(declare-fun res!2151316 () Bool)

(declare-fun e!3154209 () Bool)

(assert (=> start!534334 (=> (not res!2151316) (not e!3154209))))

(assert (=> start!534334 (= res!2151316 (<= 0 i!652))))

(assert (=> start!534334 e!3154209))

(assert (=> start!534334 true))

(declare-fun e!3154208 () Bool)

(assert (=> start!534334 e!3154208))

(declare-fun e!3154210 () Bool)

(assert (=> start!534334 e!3154210))

(declare-fun b!5052298 () Bool)

(declare-fun tp_is_empty!36979 () Bool)

(declare-fun tp!1412340 () Bool)

(assert (=> b!5052298 (= e!3154210 (and tp_is_empty!36979 tp!1412340))))

(declare-fun b!5052299 () Bool)

(assert (=> b!5052299 (= e!3154212 e!3154211)))

(declare-fun c!866860 () Bool)

(assert (=> b!5052299 (= c!866860 (= lt!2086928 i!652))))

(declare-fun ++!12761 (List!58522 List!58522) List!58522)

(assert (=> b!5052299 (= lt!2086931 (splitAtIndex!229 (++!12761 l!2757 r!2041) i!652))))

(declare-fun b!5052300 () Bool)

(declare-fun tp!1412341 () Bool)

(assert (=> b!5052300 (= e!3154208 (and tp_is_empty!36979 tp!1412341))))

(declare-fun b!5052301 () Bool)

(declare-fun res!2151312 () Bool)

(assert (=> b!5052301 (=> (not res!2151312) (not e!3154212))))

(declare-fun isEmpty!31577 (List!58522) Bool)

(assert (=> b!5052301 (= res!2151312 (not (isEmpty!31577 r!2041)))))

(declare-fun b!5052302 () Bool)

(assert (=> b!5052302 (= e!3154211 (not (= lt!2086931 (tuple2!63287 l!2757 r!2041))))))

(declare-fun b!5052303 () Bool)

(assert (=> b!5052303 (= e!3154209 e!3154212)))

(declare-fun res!2151317 () Bool)

(assert (=> b!5052303 (=> (not res!2151317) (not e!3154212))))

(declare-fun size!39021 (List!58522) Int)

(assert (=> b!5052303 (= res!2151317 (<= i!652 (+ lt!2086928 (size!39021 r!2041))))))

(assert (=> b!5052303 (= lt!2086928 (size!39021 l!2757))))

(declare-fun b!5052304 () Bool)

(declare-fun res!2151315 () Bool)

(assert (=> b!5052304 (=> (not res!2151315) (not e!3154212))))

(assert (=> b!5052304 (= res!2151315 (and (not (= l!2757 Nil!58398)) (not (= r!2041 Nil!58398))))))

(declare-fun bm!351988 () Bool)

(assert (=> bm!351988 (= call!351993 (++!12761 (ite c!866861 (_2!34946 lt!2086930) l!2757) (ite c!866861 r!2041 (_1!34946 lt!2086929))))))

(declare-fun b!5052305 () Bool)

(declare-fun res!2151313 () Bool)

(assert (=> b!5052305 (=> (not res!2151313) (not e!3154212))))

(assert (=> b!5052305 (= res!2151313 (not (isEmpty!31577 l!2757)))))

(assert (= (and start!534334 res!2151316) b!5052303))

(assert (= (and b!5052303 res!2151317) b!5052304))

(assert (= (and b!5052304 res!2151315) b!5052305))

(assert (= (and b!5052305 res!2151313) b!5052301))

(assert (= (and b!5052301 res!2151312) b!5052296))

(assert (= (and b!5052296 res!2151314) b!5052299))

(assert (= (and b!5052299 c!866860) b!5052302))

(assert (= (and b!5052299 (not c!866860)) b!5052294))

(assert (= (and b!5052294 c!866861) b!5052295))

(assert (= (and b!5052294 (not c!866861)) b!5052297))

(assert (= (or b!5052295 b!5052297) bm!351987))

(assert (= (or b!5052295 b!5052297) bm!351988))

(get-info :version)

(assert (= (and start!534334 ((_ is Cons!58398) l!2757)) b!5052300))

(assert (= (and start!534334 ((_ is Cons!58398) r!2041)) b!5052298))

(declare-fun m!6086506 () Bool)

(assert (=> b!5052301 m!6086506))

(declare-fun m!6086508 () Bool)

(assert (=> bm!351987 m!6086508))

(declare-fun m!6086510 () Bool)

(assert (=> b!5052303 m!6086510))

(declare-fun m!6086512 () Bool)

(assert (=> b!5052303 m!6086512))

(declare-fun m!6086514 () Bool)

(assert (=> bm!351988 m!6086514))

(declare-fun m!6086516 () Bool)

(assert (=> b!5052305 m!6086516))

(declare-fun m!6086518 () Bool)

(assert (=> b!5052299 m!6086518))

(assert (=> b!5052299 m!6086518))

(declare-fun m!6086520 () Bool)

(assert (=> b!5052299 m!6086520))

(check-sat (not bm!351988) (not b!5052305) (not b!5052299) (not b!5052300) (not b!5052301) (not b!5052303) (not b!5052298) (not bm!351987) tp_is_empty!36979)
(check-sat)
(get-model)

(declare-fun lt!2086941 () tuple2!63286)

(declare-fun b!5052330 () Bool)

(assert (=> b!5052330 (= lt!2086941 (splitAtIndex!229 (t!371161 (ite c!866861 l!2757 r!2041)) (- (ite c!866861 i!652 (- i!652 lt!2086928)) 1)))))

(declare-fun e!3154226 () tuple2!63286)

(assert (=> b!5052330 (= e!3154226 (tuple2!63287 (Cons!58398 (h!64846 (ite c!866861 l!2757 r!2041)) (_1!34946 lt!2086941)) (_2!34946 lt!2086941)))))

(declare-fun b!5052331 () Bool)

(declare-fun e!3154227 () tuple2!63286)

(assert (=> b!5052331 (= e!3154227 (tuple2!63287 Nil!58398 Nil!58398))))

(declare-fun b!5052332 () Bool)

(declare-fun res!2151327 () Bool)

(declare-fun e!3154225 () Bool)

(assert (=> b!5052332 (=> (not res!2151327) (not e!3154225))))

(declare-fun lt!2086940 () tuple2!63286)

(declare-fun take!888 (List!58522 Int) List!58522)

(assert (=> b!5052332 (= res!2151327 (= (_1!34946 lt!2086940) (take!888 (ite c!866861 l!2757 r!2041) (ite c!866861 i!652 (- i!652 lt!2086928)))))))

(declare-fun b!5052333 () Bool)

(declare-fun drop!2688 (List!58522 Int) List!58522)

(assert (=> b!5052333 (= e!3154225 (= (_2!34946 lt!2086940) (drop!2688 (ite c!866861 l!2757 r!2041) (ite c!866861 i!652 (- i!652 lt!2086928)))))))

(declare-fun d!1625793 () Bool)

(assert (=> d!1625793 e!3154225))

(declare-fun res!2151326 () Bool)

(assert (=> d!1625793 (=> (not res!2151326) (not e!3154225))))

(assert (=> d!1625793 (= res!2151326 (= (++!12761 (_1!34946 lt!2086940) (_2!34946 lt!2086940)) (ite c!866861 l!2757 r!2041)))))

(assert (=> d!1625793 (= lt!2086940 e!3154227)))

(declare-fun c!866870 () Bool)

(assert (=> d!1625793 (= c!866870 ((_ is Nil!58398) (ite c!866861 l!2757 r!2041)))))

(assert (=> d!1625793 (= (splitAtIndex!229 (ite c!866861 l!2757 r!2041) (ite c!866861 i!652 (- i!652 lt!2086928))) lt!2086940)))

(declare-fun b!5052334 () Bool)

(assert (=> b!5052334 (= e!3154226 (tuple2!63287 Nil!58398 (ite c!866861 l!2757 r!2041)))))

(declare-fun b!5052335 () Bool)

(assert (=> b!5052335 (= e!3154227 e!3154226)))

(declare-fun c!866871 () Bool)

(assert (=> b!5052335 (= c!866871 (<= (ite c!866861 i!652 (- i!652 lt!2086928)) 0))))

(assert (= (and d!1625793 c!866870) b!5052331))

(assert (= (and d!1625793 (not c!866870)) b!5052335))

(assert (= (and b!5052335 c!866871) b!5052334))

(assert (= (and b!5052335 (not c!866871)) b!5052330))

(assert (= (and d!1625793 res!2151326) b!5052332))

(assert (= (and b!5052332 res!2151327) b!5052333))

(declare-fun m!6086522 () Bool)

(assert (=> b!5052330 m!6086522))

(declare-fun m!6086524 () Bool)

(assert (=> b!5052332 m!6086524))

(declare-fun m!6086526 () Bool)

(assert (=> b!5052333 m!6086526))

(declare-fun m!6086528 () Bool)

(assert (=> d!1625793 m!6086528))

(assert (=> bm!351987 d!1625793))

(declare-fun d!1625797 () Bool)

(declare-fun lt!2086946 () Int)

(assert (=> d!1625797 (>= lt!2086946 0)))

(declare-fun e!3154233 () Int)

(assert (=> d!1625797 (= lt!2086946 e!3154233)))

(declare-fun c!866876 () Bool)

(assert (=> d!1625797 (= c!866876 ((_ is Nil!58398) r!2041))))

(assert (=> d!1625797 (= (size!39021 r!2041) lt!2086946)))

(declare-fun b!5052346 () Bool)

(assert (=> b!5052346 (= e!3154233 0)))

(declare-fun b!5052347 () Bool)

(assert (=> b!5052347 (= e!3154233 (+ 1 (size!39021 (t!371161 r!2041))))))

(assert (= (and d!1625797 c!866876) b!5052346))

(assert (= (and d!1625797 (not c!866876)) b!5052347))

(declare-fun m!6086538 () Bool)

(assert (=> b!5052347 m!6086538))

(assert (=> b!5052303 d!1625797))

(declare-fun d!1625801 () Bool)

(declare-fun lt!2086947 () Int)

(assert (=> d!1625801 (>= lt!2086947 0)))

(declare-fun e!3154234 () Int)

(assert (=> d!1625801 (= lt!2086947 e!3154234)))

(declare-fun c!866877 () Bool)

(assert (=> d!1625801 (= c!866877 ((_ is Nil!58398) l!2757))))

(assert (=> d!1625801 (= (size!39021 l!2757) lt!2086947)))

(declare-fun b!5052348 () Bool)

(assert (=> b!5052348 (= e!3154234 0)))

(declare-fun b!5052349 () Bool)

(assert (=> b!5052349 (= e!3154234 (+ 1 (size!39021 (t!371161 l!2757))))))

(assert (= (and d!1625801 c!866877) b!5052348))

(assert (= (and d!1625801 (not c!866877)) b!5052349))

(declare-fun m!6086540 () Bool)

(assert (=> b!5052349 m!6086540))

(assert (=> b!5052303 d!1625801))

(declare-fun b!5052350 () Bool)

(declare-fun lt!2086949 () tuple2!63286)

(assert (=> b!5052350 (= lt!2086949 (splitAtIndex!229 (t!371161 (++!12761 l!2757 r!2041)) (- i!652 1)))))

(declare-fun e!3154236 () tuple2!63286)

(assert (=> b!5052350 (= e!3154236 (tuple2!63287 (Cons!58398 (h!64846 (++!12761 l!2757 r!2041)) (_1!34946 lt!2086949)) (_2!34946 lt!2086949)))))

(declare-fun b!5052351 () Bool)

(declare-fun e!3154237 () tuple2!63286)

(assert (=> b!5052351 (= e!3154237 (tuple2!63287 Nil!58398 Nil!58398))))

(declare-fun b!5052352 () Bool)

(declare-fun res!2151331 () Bool)

(declare-fun e!3154235 () Bool)

(assert (=> b!5052352 (=> (not res!2151331) (not e!3154235))))

(declare-fun lt!2086948 () tuple2!63286)

(assert (=> b!5052352 (= res!2151331 (= (_1!34946 lt!2086948) (take!888 (++!12761 l!2757 r!2041) i!652)))))

(declare-fun b!5052353 () Bool)

(assert (=> b!5052353 (= e!3154235 (= (_2!34946 lt!2086948) (drop!2688 (++!12761 l!2757 r!2041) i!652)))))

(declare-fun d!1625803 () Bool)

(assert (=> d!1625803 e!3154235))

(declare-fun res!2151330 () Bool)

(assert (=> d!1625803 (=> (not res!2151330) (not e!3154235))))

(assert (=> d!1625803 (= res!2151330 (= (++!12761 (_1!34946 lt!2086948) (_2!34946 lt!2086948)) (++!12761 l!2757 r!2041)))))

(assert (=> d!1625803 (= lt!2086948 e!3154237)))

(declare-fun c!866878 () Bool)

(assert (=> d!1625803 (= c!866878 ((_ is Nil!58398) (++!12761 l!2757 r!2041)))))

(assert (=> d!1625803 (= (splitAtIndex!229 (++!12761 l!2757 r!2041) i!652) lt!2086948)))

(declare-fun b!5052354 () Bool)

(assert (=> b!5052354 (= e!3154236 (tuple2!63287 Nil!58398 (++!12761 l!2757 r!2041)))))

(declare-fun b!5052355 () Bool)

(assert (=> b!5052355 (= e!3154237 e!3154236)))

(declare-fun c!866879 () Bool)

(assert (=> b!5052355 (= c!866879 (<= i!652 0))))

(assert (= (and d!1625803 c!866878) b!5052351))

(assert (= (and d!1625803 (not c!866878)) b!5052355))

(assert (= (and b!5052355 c!866879) b!5052354))

(assert (= (and b!5052355 (not c!866879)) b!5052350))

(assert (= (and d!1625803 res!2151330) b!5052352))

(assert (= (and b!5052352 res!2151331) b!5052353))

(declare-fun m!6086542 () Bool)

(assert (=> b!5052350 m!6086542))

(assert (=> b!5052352 m!6086518))

(declare-fun m!6086544 () Bool)

(assert (=> b!5052352 m!6086544))

(assert (=> b!5052353 m!6086518))

(declare-fun m!6086546 () Bool)

(assert (=> b!5052353 m!6086546))

(declare-fun m!6086548 () Bool)

(assert (=> d!1625803 m!6086548))

(assert (=> b!5052299 d!1625803))

(declare-fun d!1625805 () Bool)

(declare-fun e!3154252 () Bool)

(assert (=> d!1625805 e!3154252))

(declare-fun res!2151344 () Bool)

(assert (=> d!1625805 (=> (not res!2151344) (not e!3154252))))

(declare-fun lt!2086957 () List!58522)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!10400 (List!58522) (InoxSet T!104866))

(assert (=> d!1625805 (= res!2151344 (= (content!10400 lt!2086957) ((_ map or) (content!10400 l!2757) (content!10400 r!2041))))))

(declare-fun e!3154251 () List!58522)

(assert (=> d!1625805 (= lt!2086957 e!3154251)))

(declare-fun c!866887 () Bool)

(assert (=> d!1625805 (= c!866887 ((_ is Nil!58398) l!2757))))

(assert (=> d!1625805 (= (++!12761 l!2757 r!2041) lt!2086957)))

(declare-fun b!5052383 () Bool)

(assert (=> b!5052383 (= e!3154251 (Cons!58398 (h!64846 l!2757) (++!12761 (t!371161 l!2757) r!2041)))))

(declare-fun b!5052385 () Bool)

(assert (=> b!5052385 (= e!3154252 (or (not (= r!2041 Nil!58398)) (= lt!2086957 l!2757)))))

(declare-fun b!5052384 () Bool)

(declare-fun res!2151345 () Bool)

(assert (=> b!5052384 (=> (not res!2151345) (not e!3154252))))

(assert (=> b!5052384 (= res!2151345 (= (size!39021 lt!2086957) (+ (size!39021 l!2757) (size!39021 r!2041))))))

(declare-fun b!5052382 () Bool)

(assert (=> b!5052382 (= e!3154251 r!2041)))

(assert (= (and d!1625805 c!866887) b!5052382))

(assert (= (and d!1625805 (not c!866887)) b!5052383))

(assert (= (and d!1625805 res!2151344) b!5052384))

(assert (= (and b!5052384 res!2151345) b!5052385))

(declare-fun m!6086568 () Bool)

(assert (=> d!1625805 m!6086568))

(declare-fun m!6086570 () Bool)

(assert (=> d!1625805 m!6086570))

(declare-fun m!6086572 () Bool)

(assert (=> d!1625805 m!6086572))

(declare-fun m!6086574 () Bool)

(assert (=> b!5052383 m!6086574))

(declare-fun m!6086576 () Bool)

(assert (=> b!5052384 m!6086576))

(assert (=> b!5052384 m!6086512))

(assert (=> b!5052384 m!6086510))

(assert (=> b!5052299 d!1625805))

(declare-fun d!1625815 () Bool)

(declare-fun e!3154254 () Bool)

(assert (=> d!1625815 e!3154254))

(declare-fun res!2151346 () Bool)

(assert (=> d!1625815 (=> (not res!2151346) (not e!3154254))))

(declare-fun lt!2086958 () List!58522)

(assert (=> d!1625815 (= res!2151346 (= (content!10400 lt!2086958) ((_ map or) (content!10400 (ite c!866861 (_2!34946 lt!2086930) l!2757)) (content!10400 (ite c!866861 r!2041 (_1!34946 lt!2086929))))))))

(declare-fun e!3154253 () List!58522)

(assert (=> d!1625815 (= lt!2086958 e!3154253)))

(declare-fun c!866888 () Bool)

(assert (=> d!1625815 (= c!866888 ((_ is Nil!58398) (ite c!866861 (_2!34946 lt!2086930) l!2757)))))

(assert (=> d!1625815 (= (++!12761 (ite c!866861 (_2!34946 lt!2086930) l!2757) (ite c!866861 r!2041 (_1!34946 lt!2086929))) lt!2086958)))

(declare-fun b!5052387 () Bool)

(assert (=> b!5052387 (= e!3154253 (Cons!58398 (h!64846 (ite c!866861 (_2!34946 lt!2086930) l!2757)) (++!12761 (t!371161 (ite c!866861 (_2!34946 lt!2086930) l!2757)) (ite c!866861 r!2041 (_1!34946 lt!2086929)))))))

(declare-fun b!5052389 () Bool)

(assert (=> b!5052389 (= e!3154254 (or (not (= (ite c!866861 r!2041 (_1!34946 lt!2086929)) Nil!58398)) (= lt!2086958 (ite c!866861 (_2!34946 lt!2086930) l!2757))))))

(declare-fun b!5052388 () Bool)

(declare-fun res!2151347 () Bool)

(assert (=> b!5052388 (=> (not res!2151347) (not e!3154254))))

(assert (=> b!5052388 (= res!2151347 (= (size!39021 lt!2086958) (+ (size!39021 (ite c!866861 (_2!34946 lt!2086930) l!2757)) (size!39021 (ite c!866861 r!2041 (_1!34946 lt!2086929))))))))

(declare-fun b!5052386 () Bool)

(assert (=> b!5052386 (= e!3154253 (ite c!866861 r!2041 (_1!34946 lt!2086929)))))

(assert (= (and d!1625815 c!866888) b!5052386))

(assert (= (and d!1625815 (not c!866888)) b!5052387))

(assert (= (and d!1625815 res!2151346) b!5052388))

(assert (= (and b!5052388 res!2151347) b!5052389))

(declare-fun m!6086578 () Bool)

(assert (=> d!1625815 m!6086578))

(declare-fun m!6086580 () Bool)

(assert (=> d!1625815 m!6086580))

(declare-fun m!6086582 () Bool)

(assert (=> d!1625815 m!6086582))

(declare-fun m!6086584 () Bool)

(assert (=> b!5052387 m!6086584))

(declare-fun m!6086586 () Bool)

(assert (=> b!5052388 m!6086586))

(declare-fun m!6086588 () Bool)

(assert (=> b!5052388 m!6086588))

(declare-fun m!6086590 () Bool)

(assert (=> b!5052388 m!6086590))

(assert (=> bm!351988 d!1625815))

(declare-fun d!1625817 () Bool)

(assert (=> d!1625817 (= (isEmpty!31577 l!2757) ((_ is Nil!58398) l!2757))))

(assert (=> b!5052305 d!1625817))

(declare-fun d!1625819 () Bool)

(assert (=> d!1625819 (= (isEmpty!31577 r!2041) ((_ is Nil!58398) r!2041))))

(assert (=> b!5052301 d!1625819))

(declare-fun b!5052402 () Bool)

(declare-fun e!3154261 () Bool)

(declare-fun tp!1412344 () Bool)

(assert (=> b!5052402 (= e!3154261 (and tp_is_empty!36979 tp!1412344))))

(assert (=> b!5052298 (= tp!1412340 e!3154261)))

(assert (= (and b!5052298 ((_ is Cons!58398) (t!371161 r!2041))) b!5052402))

(declare-fun b!5052407 () Bool)

(declare-fun e!3154264 () Bool)

(declare-fun tp!1412345 () Bool)

(assert (=> b!5052407 (= e!3154264 (and tp_is_empty!36979 tp!1412345))))

(assert (=> b!5052300 (= tp!1412341 e!3154264)))

(assert (= (and b!5052300 ((_ is Cons!58398) (t!371161 l!2757))) b!5052407))

(check-sat (not b!5052333) (not b!5052383) (not d!1625815) (not b!5052352) (not b!5052388) (not d!1625803) (not b!5052330) tp_is_empty!36979 (not d!1625793) (not b!5052332) (not b!5052350) (not b!5052347) (not b!5052407) (not b!5052353) (not b!5052402) (not b!5052387) (not d!1625805) (not b!5052384) (not b!5052349))
(check-sat)
(get-model)

(declare-fun d!1625825 () Bool)

(declare-fun e!3154270 () Bool)

(assert (=> d!1625825 e!3154270))

(declare-fun res!2151350 () Bool)

(assert (=> d!1625825 (=> (not res!2151350) (not e!3154270))))

(declare-fun lt!2086964 () List!58522)

(assert (=> d!1625825 (= res!2151350 (= (content!10400 lt!2086964) ((_ map or) (content!10400 (_1!34946 lt!2086940)) (content!10400 (_2!34946 lt!2086940)))))))

(declare-fun e!3154269 () List!58522)

(assert (=> d!1625825 (= lt!2086964 e!3154269)))

(declare-fun c!866894 () Bool)

(assert (=> d!1625825 (= c!866894 ((_ is Nil!58398) (_1!34946 lt!2086940)))))

(assert (=> d!1625825 (= (++!12761 (_1!34946 lt!2086940) (_2!34946 lt!2086940)) lt!2086964)))

(declare-fun b!5052415 () Bool)

(assert (=> b!5052415 (= e!3154269 (Cons!58398 (h!64846 (_1!34946 lt!2086940)) (++!12761 (t!371161 (_1!34946 lt!2086940)) (_2!34946 lt!2086940))))))

(declare-fun b!5052417 () Bool)

(assert (=> b!5052417 (= e!3154270 (or (not (= (_2!34946 lt!2086940) Nil!58398)) (= lt!2086964 (_1!34946 lt!2086940))))))

(declare-fun b!5052416 () Bool)

(declare-fun res!2151351 () Bool)

(assert (=> b!5052416 (=> (not res!2151351) (not e!3154270))))

(assert (=> b!5052416 (= res!2151351 (= (size!39021 lt!2086964) (+ (size!39021 (_1!34946 lt!2086940)) (size!39021 (_2!34946 lt!2086940)))))))

(declare-fun b!5052414 () Bool)

(assert (=> b!5052414 (= e!3154269 (_2!34946 lt!2086940))))

(assert (= (and d!1625825 c!866894) b!5052414))

(assert (= (and d!1625825 (not c!866894)) b!5052415))

(assert (= (and d!1625825 res!2151350) b!5052416))

(assert (= (and b!5052416 res!2151351) b!5052417))

(declare-fun m!6086610 () Bool)

(assert (=> d!1625825 m!6086610))

(declare-fun m!6086612 () Bool)

(assert (=> d!1625825 m!6086612))

(declare-fun m!6086614 () Bool)

(assert (=> d!1625825 m!6086614))

(declare-fun m!6086616 () Bool)

(assert (=> b!5052415 m!6086616))

(declare-fun m!6086618 () Bool)

(assert (=> b!5052416 m!6086618))

(declare-fun m!6086620 () Bool)

(assert (=> b!5052416 m!6086620))

(declare-fun m!6086622 () Bool)

(assert (=> b!5052416 m!6086622))

(assert (=> d!1625793 d!1625825))

(declare-fun d!1625827 () Bool)

(declare-fun lt!2086965 () Int)

(assert (=> d!1625827 (>= lt!2086965 0)))

(declare-fun e!3154271 () Int)

(assert (=> d!1625827 (= lt!2086965 e!3154271)))

(declare-fun c!866895 () Bool)

(assert (=> d!1625827 (= c!866895 ((_ is Nil!58398) lt!2086958))))

(assert (=> d!1625827 (= (size!39021 lt!2086958) lt!2086965)))

(declare-fun b!5052418 () Bool)

(assert (=> b!5052418 (= e!3154271 0)))

(declare-fun b!5052419 () Bool)

(assert (=> b!5052419 (= e!3154271 (+ 1 (size!39021 (t!371161 lt!2086958))))))

(assert (= (and d!1625827 c!866895) b!5052418))

(assert (= (and d!1625827 (not c!866895)) b!5052419))

(declare-fun m!6086624 () Bool)

(assert (=> b!5052419 m!6086624))

(assert (=> b!5052388 d!1625827))

(declare-fun d!1625829 () Bool)

(declare-fun lt!2086966 () Int)

(assert (=> d!1625829 (>= lt!2086966 0)))

(declare-fun e!3154272 () Int)

(assert (=> d!1625829 (= lt!2086966 e!3154272)))

(declare-fun c!866896 () Bool)

(assert (=> d!1625829 (= c!866896 ((_ is Nil!58398) (ite c!866861 (_2!34946 lt!2086930) l!2757)))))

(assert (=> d!1625829 (= (size!39021 (ite c!866861 (_2!34946 lt!2086930) l!2757)) lt!2086966)))

(declare-fun b!5052420 () Bool)

(assert (=> b!5052420 (= e!3154272 0)))

(declare-fun b!5052421 () Bool)

(assert (=> b!5052421 (= e!3154272 (+ 1 (size!39021 (t!371161 (ite c!866861 (_2!34946 lt!2086930) l!2757)))))))

(assert (= (and d!1625829 c!866896) b!5052420))

(assert (= (and d!1625829 (not c!866896)) b!5052421))

(declare-fun m!6086626 () Bool)

(assert (=> b!5052421 m!6086626))

(assert (=> b!5052388 d!1625829))

(declare-fun d!1625831 () Bool)

(declare-fun lt!2086967 () Int)

(assert (=> d!1625831 (>= lt!2086967 0)))

(declare-fun e!3154273 () Int)

(assert (=> d!1625831 (= lt!2086967 e!3154273)))

(declare-fun c!866897 () Bool)

(assert (=> d!1625831 (= c!866897 ((_ is Nil!58398) (ite c!866861 r!2041 (_1!34946 lt!2086929))))))

(assert (=> d!1625831 (= (size!39021 (ite c!866861 r!2041 (_1!34946 lt!2086929))) lt!2086967)))

(declare-fun b!5052422 () Bool)

(assert (=> b!5052422 (= e!3154273 0)))

(declare-fun b!5052423 () Bool)

(assert (=> b!5052423 (= e!3154273 (+ 1 (size!39021 (t!371161 (ite c!866861 r!2041 (_1!34946 lt!2086929))))))))

(assert (= (and d!1625831 c!866897) b!5052422))

(assert (= (and d!1625831 (not c!866897)) b!5052423))

(declare-fun m!6086628 () Bool)

(assert (=> b!5052423 m!6086628))

(assert (=> b!5052388 d!1625831))

(declare-fun d!1625833 () Bool)

(declare-fun c!866900 () Bool)

(assert (=> d!1625833 (= c!866900 ((_ is Nil!58398) lt!2086958))))

(declare-fun e!3154276 () (InoxSet T!104866))

(assert (=> d!1625833 (= (content!10400 lt!2086958) e!3154276)))

(declare-fun b!5052428 () Bool)

(assert (=> b!5052428 (= e!3154276 ((as const (Array T!104866 Bool)) false))))

(declare-fun b!5052429 () Bool)

(assert (=> b!5052429 (= e!3154276 ((_ map or) (store ((as const (Array T!104866 Bool)) false) (h!64846 lt!2086958) true) (content!10400 (t!371161 lt!2086958))))))

(assert (= (and d!1625833 c!866900) b!5052428))

(assert (= (and d!1625833 (not c!866900)) b!5052429))

(declare-fun m!6086630 () Bool)

(assert (=> b!5052429 m!6086630))

(declare-fun m!6086632 () Bool)

(assert (=> b!5052429 m!6086632))

(assert (=> d!1625815 d!1625833))

(declare-fun c!866901 () Bool)

(declare-fun d!1625835 () Bool)

(assert (=> d!1625835 (= c!866901 ((_ is Nil!58398) (ite c!866861 (_2!34946 lt!2086930) l!2757)))))

(declare-fun e!3154277 () (InoxSet T!104866))

(assert (=> d!1625835 (= (content!10400 (ite c!866861 (_2!34946 lt!2086930) l!2757)) e!3154277)))

(declare-fun b!5052430 () Bool)

(assert (=> b!5052430 (= e!3154277 ((as const (Array T!104866 Bool)) false))))

(declare-fun b!5052431 () Bool)

(assert (=> b!5052431 (= e!3154277 ((_ map or) (store ((as const (Array T!104866 Bool)) false) (h!64846 (ite c!866861 (_2!34946 lt!2086930) l!2757)) true) (content!10400 (t!371161 (ite c!866861 (_2!34946 lt!2086930) l!2757)))))))

(assert (= (and d!1625835 c!866901) b!5052430))

(assert (= (and d!1625835 (not c!866901)) b!5052431))

(declare-fun m!6086634 () Bool)

(assert (=> b!5052431 m!6086634))

(declare-fun m!6086636 () Bool)

(assert (=> b!5052431 m!6086636))

(assert (=> d!1625815 d!1625835))

(declare-fun d!1625837 () Bool)

(declare-fun c!866902 () Bool)

(assert (=> d!1625837 (= c!866902 ((_ is Nil!58398) (ite c!866861 r!2041 (_1!34946 lt!2086929))))))

(declare-fun e!3154278 () (InoxSet T!104866))

(assert (=> d!1625837 (= (content!10400 (ite c!866861 r!2041 (_1!34946 lt!2086929))) e!3154278)))

(declare-fun b!5052432 () Bool)

(assert (=> b!5052432 (= e!3154278 ((as const (Array T!104866 Bool)) false))))

(declare-fun b!5052433 () Bool)

(assert (=> b!5052433 (= e!3154278 ((_ map or) (store ((as const (Array T!104866 Bool)) false) (h!64846 (ite c!866861 r!2041 (_1!34946 lt!2086929))) true) (content!10400 (t!371161 (ite c!866861 r!2041 (_1!34946 lt!2086929))))))))

(assert (= (and d!1625837 c!866902) b!5052432))

(assert (= (and d!1625837 (not c!866902)) b!5052433))

(declare-fun m!6086638 () Bool)

(assert (=> b!5052433 m!6086638))

(declare-fun m!6086640 () Bool)

(assert (=> b!5052433 m!6086640))

(assert (=> d!1625815 d!1625837))

(declare-fun b!5052434 () Bool)

(declare-fun lt!2086969 () tuple2!63286)

(assert (=> b!5052434 (= lt!2086969 (splitAtIndex!229 (t!371161 (t!371161 (++!12761 l!2757 r!2041))) (- (- i!652 1) 1)))))

(declare-fun e!3154280 () tuple2!63286)

(assert (=> b!5052434 (= e!3154280 (tuple2!63287 (Cons!58398 (h!64846 (t!371161 (++!12761 l!2757 r!2041))) (_1!34946 lt!2086969)) (_2!34946 lt!2086969)))))

(declare-fun b!5052435 () Bool)

(declare-fun e!3154281 () tuple2!63286)

(assert (=> b!5052435 (= e!3154281 (tuple2!63287 Nil!58398 Nil!58398))))

(declare-fun b!5052436 () Bool)

(declare-fun res!2151353 () Bool)

(declare-fun e!3154279 () Bool)

(assert (=> b!5052436 (=> (not res!2151353) (not e!3154279))))

(declare-fun lt!2086968 () tuple2!63286)

(assert (=> b!5052436 (= res!2151353 (= (_1!34946 lt!2086968) (take!888 (t!371161 (++!12761 l!2757 r!2041)) (- i!652 1))))))

(declare-fun b!5052437 () Bool)

(assert (=> b!5052437 (= e!3154279 (= (_2!34946 lt!2086968) (drop!2688 (t!371161 (++!12761 l!2757 r!2041)) (- i!652 1))))))

(declare-fun d!1625839 () Bool)

(assert (=> d!1625839 e!3154279))

(declare-fun res!2151352 () Bool)

(assert (=> d!1625839 (=> (not res!2151352) (not e!3154279))))

(assert (=> d!1625839 (= res!2151352 (= (++!12761 (_1!34946 lt!2086968) (_2!34946 lt!2086968)) (t!371161 (++!12761 l!2757 r!2041))))))

(assert (=> d!1625839 (= lt!2086968 e!3154281)))

(declare-fun c!866903 () Bool)

(assert (=> d!1625839 (= c!866903 ((_ is Nil!58398) (t!371161 (++!12761 l!2757 r!2041))))))

(assert (=> d!1625839 (= (splitAtIndex!229 (t!371161 (++!12761 l!2757 r!2041)) (- i!652 1)) lt!2086968)))

(declare-fun b!5052438 () Bool)

(assert (=> b!5052438 (= e!3154280 (tuple2!63287 Nil!58398 (t!371161 (++!12761 l!2757 r!2041))))))

(declare-fun b!5052439 () Bool)

(assert (=> b!5052439 (= e!3154281 e!3154280)))

(declare-fun c!866904 () Bool)

(assert (=> b!5052439 (= c!866904 (<= (- i!652 1) 0))))

(assert (= (and d!1625839 c!866903) b!5052435))

(assert (= (and d!1625839 (not c!866903)) b!5052439))

(assert (= (and b!5052439 c!866904) b!5052438))

(assert (= (and b!5052439 (not c!866904)) b!5052434))

(assert (= (and d!1625839 res!2151352) b!5052436))

(assert (= (and b!5052436 res!2151353) b!5052437))

(declare-fun m!6086642 () Bool)

(assert (=> b!5052434 m!6086642))

(declare-fun m!6086644 () Bool)

(assert (=> b!5052436 m!6086644))

(declare-fun m!6086646 () Bool)

(assert (=> b!5052437 m!6086646))

(declare-fun m!6086648 () Bool)

(assert (=> d!1625839 m!6086648))

(assert (=> b!5052350 d!1625839))

(declare-fun d!1625841 () Bool)

(declare-fun e!3154283 () Bool)

(assert (=> d!1625841 e!3154283))

(declare-fun res!2151354 () Bool)

(assert (=> d!1625841 (=> (not res!2151354) (not e!3154283))))

(declare-fun lt!2086970 () List!58522)

(assert (=> d!1625841 (= res!2151354 (= (content!10400 lt!2086970) ((_ map or) (content!10400 (_1!34946 lt!2086948)) (content!10400 (_2!34946 lt!2086948)))))))

(declare-fun e!3154282 () List!58522)

(assert (=> d!1625841 (= lt!2086970 e!3154282)))

(declare-fun c!866905 () Bool)

(assert (=> d!1625841 (= c!866905 ((_ is Nil!58398) (_1!34946 lt!2086948)))))

(assert (=> d!1625841 (= (++!12761 (_1!34946 lt!2086948) (_2!34946 lt!2086948)) lt!2086970)))

(declare-fun b!5052441 () Bool)

(assert (=> b!5052441 (= e!3154282 (Cons!58398 (h!64846 (_1!34946 lt!2086948)) (++!12761 (t!371161 (_1!34946 lt!2086948)) (_2!34946 lt!2086948))))))

(declare-fun b!5052443 () Bool)

(assert (=> b!5052443 (= e!3154283 (or (not (= (_2!34946 lt!2086948) Nil!58398)) (= lt!2086970 (_1!34946 lt!2086948))))))

(declare-fun b!5052442 () Bool)

(declare-fun res!2151355 () Bool)

(assert (=> b!5052442 (=> (not res!2151355) (not e!3154283))))

(assert (=> b!5052442 (= res!2151355 (= (size!39021 lt!2086970) (+ (size!39021 (_1!34946 lt!2086948)) (size!39021 (_2!34946 lt!2086948)))))))

(declare-fun b!5052440 () Bool)

(assert (=> b!5052440 (= e!3154282 (_2!34946 lt!2086948))))

(assert (= (and d!1625841 c!866905) b!5052440))

(assert (= (and d!1625841 (not c!866905)) b!5052441))

(assert (= (and d!1625841 res!2151354) b!5052442))

(assert (= (and b!5052442 res!2151355) b!5052443))

(declare-fun m!6086650 () Bool)

(assert (=> d!1625841 m!6086650))

(declare-fun m!6086652 () Bool)

(assert (=> d!1625841 m!6086652))

(declare-fun m!6086654 () Bool)

(assert (=> d!1625841 m!6086654))

(declare-fun m!6086656 () Bool)

(assert (=> b!5052441 m!6086656))

(declare-fun m!6086658 () Bool)

(assert (=> b!5052442 m!6086658))

(declare-fun m!6086660 () Bool)

(assert (=> b!5052442 m!6086660))

(declare-fun m!6086662 () Bool)

(assert (=> b!5052442 m!6086662))

(assert (=> d!1625803 d!1625841))

(declare-fun d!1625843 () Bool)

(declare-fun e!3154285 () Bool)

(assert (=> d!1625843 e!3154285))

(declare-fun res!2151356 () Bool)

(assert (=> d!1625843 (=> (not res!2151356) (not e!3154285))))

(declare-fun lt!2086971 () List!58522)

(assert (=> d!1625843 (= res!2151356 (= (content!10400 lt!2086971) ((_ map or) (content!10400 (t!371161 l!2757)) (content!10400 r!2041))))))

(declare-fun e!3154284 () List!58522)

(assert (=> d!1625843 (= lt!2086971 e!3154284)))

(declare-fun c!866906 () Bool)

(assert (=> d!1625843 (= c!866906 ((_ is Nil!58398) (t!371161 l!2757)))))

(assert (=> d!1625843 (= (++!12761 (t!371161 l!2757) r!2041) lt!2086971)))

(declare-fun b!5052445 () Bool)

(assert (=> b!5052445 (= e!3154284 (Cons!58398 (h!64846 (t!371161 l!2757)) (++!12761 (t!371161 (t!371161 l!2757)) r!2041)))))

(declare-fun b!5052447 () Bool)

(assert (=> b!5052447 (= e!3154285 (or (not (= r!2041 Nil!58398)) (= lt!2086971 (t!371161 l!2757))))))

(declare-fun b!5052446 () Bool)

(declare-fun res!2151357 () Bool)

(assert (=> b!5052446 (=> (not res!2151357) (not e!3154285))))

(assert (=> b!5052446 (= res!2151357 (= (size!39021 lt!2086971) (+ (size!39021 (t!371161 l!2757)) (size!39021 r!2041))))))

(declare-fun b!5052444 () Bool)

(assert (=> b!5052444 (= e!3154284 r!2041)))

(assert (= (and d!1625843 c!866906) b!5052444))

(assert (= (and d!1625843 (not c!866906)) b!5052445))

(assert (= (and d!1625843 res!2151356) b!5052446))

(assert (= (and b!5052446 res!2151357) b!5052447))

(declare-fun m!6086664 () Bool)

(assert (=> d!1625843 m!6086664))

(declare-fun m!6086666 () Bool)

(assert (=> d!1625843 m!6086666))

(assert (=> d!1625843 m!6086572))

(declare-fun m!6086668 () Bool)

(assert (=> b!5052445 m!6086668))

(declare-fun m!6086670 () Bool)

(assert (=> b!5052446 m!6086670))

(assert (=> b!5052446 m!6086540))

(assert (=> b!5052446 m!6086510))

(assert (=> b!5052383 d!1625843))

(declare-fun b!5052472 () Bool)

(declare-fun e!3154302 () Int)

(assert (=> b!5052472 (= e!3154302 0)))

(declare-fun b!5052473 () Bool)

(declare-fun e!3154301 () List!58522)

(assert (=> b!5052473 (= e!3154301 Nil!58398)))

(declare-fun b!5052474 () Bool)

(declare-fun e!3154300 () Bool)

(declare-fun lt!2086974 () List!58522)

(assert (=> b!5052474 (= e!3154300 (= (size!39021 lt!2086974) e!3154302))))

(declare-fun c!866918 () Bool)

(assert (=> b!5052474 (= c!866918 (<= i!652 0))))

(declare-fun b!5052475 () Bool)

(declare-fun e!3154299 () Int)

(assert (=> b!5052475 (= e!3154302 e!3154299)))

(declare-fun c!866919 () Bool)

(assert (=> b!5052475 (= c!866919 (>= i!652 (size!39021 (++!12761 l!2757 r!2041))))))

(declare-fun b!5052476 () Bool)

(assert (=> b!5052476 (= e!3154299 (size!39021 (++!12761 l!2757 r!2041)))))

(declare-fun b!5052477 () Bool)

(assert (=> b!5052477 (= e!3154299 i!652)))

(declare-fun b!5052478 () Bool)

(assert (=> b!5052478 (= e!3154301 (Cons!58398 (h!64846 (++!12761 l!2757 r!2041)) (take!888 (t!371161 (++!12761 l!2757 r!2041)) (- i!652 1))))))

(declare-fun d!1625845 () Bool)

(assert (=> d!1625845 e!3154300))

(declare-fun res!2151360 () Bool)

(assert (=> d!1625845 (=> (not res!2151360) (not e!3154300))))

(assert (=> d!1625845 (= res!2151360 (= ((_ map implies) (content!10400 lt!2086974) (content!10400 (++!12761 l!2757 r!2041))) ((as const (InoxSet T!104866)) true)))))

(assert (=> d!1625845 (= lt!2086974 e!3154301)))

(declare-fun c!866920 () Bool)

(assert (=> d!1625845 (= c!866920 (or ((_ is Nil!58398) (++!12761 l!2757 r!2041)) (<= i!652 0)))))

(assert (=> d!1625845 (= (take!888 (++!12761 l!2757 r!2041) i!652) lt!2086974)))

(assert (= (and d!1625845 c!866920) b!5052473))

(assert (= (and d!1625845 (not c!866920)) b!5052478))

(assert (= (and d!1625845 res!2151360) b!5052474))

(assert (= (and b!5052474 c!866918) b!5052472))

(assert (= (and b!5052474 (not c!866918)) b!5052475))

(assert (= (and b!5052475 c!866919) b!5052476))

(assert (= (and b!5052475 (not c!866919)) b!5052477))

(assert (=> b!5052478 m!6086644))

(declare-fun m!6086684 () Bool)

(assert (=> d!1625845 m!6086684))

(assert (=> d!1625845 m!6086518))

(declare-fun m!6086686 () Bool)

(assert (=> d!1625845 m!6086686))

(assert (=> b!5052476 m!6086518))

(declare-fun m!6086688 () Bool)

(assert (=> b!5052476 m!6086688))

(assert (=> b!5052475 m!6086518))

(assert (=> b!5052475 m!6086688))

(declare-fun m!6086690 () Bool)

(assert (=> b!5052474 m!6086690))

(assert (=> b!5052352 d!1625845))

(declare-fun b!5052532 () Bool)

(declare-fun e!3154335 () List!58522)

(assert (=> b!5052532 (= e!3154335 Nil!58398)))

(declare-fun b!5052533 () Bool)

(declare-fun e!3154336 () Int)

(declare-fun call!351996 () Int)

(assert (=> b!5052533 (= e!3154336 call!351996)))

(declare-fun b!5052534 () Bool)

(declare-fun e!3154333 () Bool)

(declare-fun lt!2086985 () List!58522)

(assert (=> b!5052534 (= e!3154333 (= (size!39021 lt!2086985) e!3154336))))

(declare-fun c!866945 () Bool)

(assert (=> b!5052534 (= c!866945 (<= i!652 0))))

(declare-fun bm!351991 () Bool)

(assert (=> bm!351991 (= call!351996 (size!39021 (++!12761 l!2757 r!2041)))))

(declare-fun b!5052535 () Bool)

(declare-fun e!3154334 () Int)

(assert (=> b!5052535 (= e!3154334 (- call!351996 i!652))))

(declare-fun d!1625855 () Bool)

(assert (=> d!1625855 e!3154333))

(declare-fun res!2151370 () Bool)

(assert (=> d!1625855 (=> (not res!2151370) (not e!3154333))))

(assert (=> d!1625855 (= res!2151370 (= ((_ map implies) (content!10400 lt!2086985) (content!10400 (++!12761 l!2757 r!2041))) ((as const (InoxSet T!104866)) true)))))

(assert (=> d!1625855 (= lt!2086985 e!3154335)))

(declare-fun c!866944 () Bool)

(assert (=> d!1625855 (= c!866944 ((_ is Nil!58398) (++!12761 l!2757 r!2041)))))

(assert (=> d!1625855 (= (drop!2688 (++!12761 l!2757 r!2041) i!652) lt!2086985)))

(declare-fun b!5052536 () Bool)

(declare-fun e!3154332 () List!58522)

(assert (=> b!5052536 (= e!3154335 e!3154332)))

(declare-fun c!866943 () Bool)

(assert (=> b!5052536 (= c!866943 (<= i!652 0))))

(declare-fun b!5052537 () Bool)

(assert (=> b!5052537 (= e!3154332 (++!12761 l!2757 r!2041))))

(declare-fun b!5052538 () Bool)

(assert (=> b!5052538 (= e!3154334 0)))

(declare-fun b!5052539 () Bool)

(assert (=> b!5052539 (= e!3154332 (drop!2688 (t!371161 (++!12761 l!2757 r!2041)) (- i!652 1)))))

(declare-fun b!5052540 () Bool)

(assert (=> b!5052540 (= e!3154336 e!3154334)))

(declare-fun c!866946 () Bool)

(assert (=> b!5052540 (= c!866946 (>= i!652 call!351996))))

(assert (= (and d!1625855 c!866944) b!5052532))

(assert (= (and d!1625855 (not c!866944)) b!5052536))

(assert (= (and b!5052536 c!866943) b!5052537))

(assert (= (and b!5052536 (not c!866943)) b!5052539))

(assert (= (and d!1625855 res!2151370) b!5052534))

(assert (= (and b!5052534 c!866945) b!5052533))

(assert (= (and b!5052534 (not c!866945)) b!5052540))

(assert (= (and b!5052540 c!866946) b!5052538))

(assert (= (and b!5052540 (not c!866946)) b!5052535))

(assert (= (or b!5052533 b!5052540 b!5052535) bm!351991))

(declare-fun m!6086730 () Bool)

(assert (=> b!5052534 m!6086730))

(assert (=> bm!351991 m!6086518))

(assert (=> bm!351991 m!6086688))

(declare-fun m!6086732 () Bool)

(assert (=> d!1625855 m!6086732))

(assert (=> d!1625855 m!6086518))

(assert (=> d!1625855 m!6086686))

(assert (=> b!5052539 m!6086646))

(assert (=> b!5052353 d!1625855))

(declare-fun lt!2086987 () tuple2!63286)

(declare-fun b!5052541 () Bool)

(assert (=> b!5052541 (= lt!2086987 (splitAtIndex!229 (t!371161 (t!371161 (ite c!866861 l!2757 r!2041))) (- (- (ite c!866861 i!652 (- i!652 lt!2086928)) 1) 1)))))

(declare-fun e!3154338 () tuple2!63286)

(assert (=> b!5052541 (= e!3154338 (tuple2!63287 (Cons!58398 (h!64846 (t!371161 (ite c!866861 l!2757 r!2041))) (_1!34946 lt!2086987)) (_2!34946 lt!2086987)))))

(declare-fun b!5052542 () Bool)

(declare-fun e!3154339 () tuple2!63286)

(assert (=> b!5052542 (= e!3154339 (tuple2!63287 Nil!58398 Nil!58398))))

(declare-fun b!5052543 () Bool)

(declare-fun res!2151372 () Bool)

(declare-fun e!3154337 () Bool)

(assert (=> b!5052543 (=> (not res!2151372) (not e!3154337))))

(declare-fun lt!2086986 () tuple2!63286)

(assert (=> b!5052543 (= res!2151372 (= (_1!34946 lt!2086986) (take!888 (t!371161 (ite c!866861 l!2757 r!2041)) (- (ite c!866861 i!652 (- i!652 lt!2086928)) 1))))))

(declare-fun b!5052544 () Bool)

(assert (=> b!5052544 (= e!3154337 (= (_2!34946 lt!2086986) (drop!2688 (t!371161 (ite c!866861 l!2757 r!2041)) (- (ite c!866861 i!652 (- i!652 lt!2086928)) 1))))))

(declare-fun d!1625869 () Bool)

(assert (=> d!1625869 e!3154337))

(declare-fun res!2151371 () Bool)

(assert (=> d!1625869 (=> (not res!2151371) (not e!3154337))))

(assert (=> d!1625869 (= res!2151371 (= (++!12761 (_1!34946 lt!2086986) (_2!34946 lt!2086986)) (t!371161 (ite c!866861 l!2757 r!2041))))))

(assert (=> d!1625869 (= lt!2086986 e!3154339)))

(declare-fun c!866947 () Bool)

(assert (=> d!1625869 (= c!866947 ((_ is Nil!58398) (t!371161 (ite c!866861 l!2757 r!2041))))))

(assert (=> d!1625869 (= (splitAtIndex!229 (t!371161 (ite c!866861 l!2757 r!2041)) (- (ite c!866861 i!652 (- i!652 lt!2086928)) 1)) lt!2086986)))

(declare-fun b!5052545 () Bool)

(assert (=> b!5052545 (= e!3154338 (tuple2!63287 Nil!58398 (t!371161 (ite c!866861 l!2757 r!2041))))))

(declare-fun b!5052546 () Bool)

(assert (=> b!5052546 (= e!3154339 e!3154338)))

(declare-fun c!866948 () Bool)

(assert (=> b!5052546 (= c!866948 (<= (- (ite c!866861 i!652 (- i!652 lt!2086928)) 1) 0))))

(assert (= (and d!1625869 c!866947) b!5052542))

(assert (= (and d!1625869 (not c!866947)) b!5052546))

(assert (= (and b!5052546 c!866948) b!5052545))

(assert (= (and b!5052546 (not c!866948)) b!5052541))

(assert (= (and d!1625869 res!2151371) b!5052543))

(assert (= (and b!5052543 res!2151372) b!5052544))

(declare-fun m!6086734 () Bool)

(assert (=> b!5052541 m!6086734))

(declare-fun m!6086736 () Bool)

(assert (=> b!5052543 m!6086736))

(declare-fun m!6086738 () Bool)

(assert (=> b!5052544 m!6086738))

(declare-fun m!6086740 () Bool)

(assert (=> d!1625869 m!6086740))

(assert (=> b!5052330 d!1625869))

(declare-fun d!1625871 () Bool)

(declare-fun c!866951 () Bool)

(assert (=> d!1625871 (= c!866951 ((_ is Nil!58398) lt!2086957))))

(declare-fun e!3154342 () (InoxSet T!104866))

(assert (=> d!1625871 (= (content!10400 lt!2086957) e!3154342)))

(declare-fun b!5052551 () Bool)

(assert (=> b!5052551 (= e!3154342 ((as const (Array T!104866 Bool)) false))))

(declare-fun b!5052552 () Bool)

(assert (=> b!5052552 (= e!3154342 ((_ map or) (store ((as const (Array T!104866 Bool)) false) (h!64846 lt!2086957) true) (content!10400 (t!371161 lt!2086957))))))

(assert (= (and d!1625871 c!866951) b!5052551))

(assert (= (and d!1625871 (not c!866951)) b!5052552))

(declare-fun m!6086742 () Bool)

(assert (=> b!5052552 m!6086742))

(declare-fun m!6086744 () Bool)

(assert (=> b!5052552 m!6086744))

(assert (=> d!1625805 d!1625871))

(declare-fun d!1625873 () Bool)

(declare-fun c!866954 () Bool)

(assert (=> d!1625873 (= c!866954 ((_ is Nil!58398) l!2757))))

(declare-fun e!3154345 () (InoxSet T!104866))

(assert (=> d!1625873 (= (content!10400 l!2757) e!3154345)))

(declare-fun b!5052557 () Bool)

(assert (=> b!5052557 (= e!3154345 ((as const (Array T!104866 Bool)) false))))

(declare-fun b!5052558 () Bool)

(assert (=> b!5052558 (= e!3154345 ((_ map or) (store ((as const (Array T!104866 Bool)) false) (h!64846 l!2757) true) (content!10400 (t!371161 l!2757))))))

(assert (= (and d!1625873 c!866954) b!5052557))

(assert (= (and d!1625873 (not c!866954)) b!5052558))

(declare-fun m!6086746 () Bool)

(assert (=> b!5052558 m!6086746))

(assert (=> b!5052558 m!6086666))

(assert (=> d!1625805 d!1625873))

(declare-fun d!1625875 () Bool)

(declare-fun c!866955 () Bool)

(assert (=> d!1625875 (= c!866955 ((_ is Nil!58398) r!2041))))

(declare-fun e!3154346 () (InoxSet T!104866))

(assert (=> d!1625875 (= (content!10400 r!2041) e!3154346)))

(declare-fun b!5052559 () Bool)

(assert (=> b!5052559 (= e!3154346 ((as const (Array T!104866 Bool)) false))))

(declare-fun b!5052560 () Bool)

(assert (=> b!5052560 (= e!3154346 ((_ map or) (store ((as const (Array T!104866 Bool)) false) (h!64846 r!2041) true) (content!10400 (t!371161 r!2041))))))

(assert (= (and d!1625875 c!866955) b!5052559))

(assert (= (and d!1625875 (not c!866955)) b!5052560))

(declare-fun m!6086748 () Bool)

(assert (=> b!5052560 m!6086748))

(declare-fun m!6086750 () Bool)

(assert (=> b!5052560 m!6086750))

(assert (=> d!1625805 d!1625875))

(declare-fun d!1625877 () Bool)

(declare-fun lt!2086990 () Int)

(assert (=> d!1625877 (>= lt!2086990 0)))

(declare-fun e!3154351 () Int)

(assert (=> d!1625877 (= lt!2086990 e!3154351)))

(declare-fun c!866958 () Bool)

(assert (=> d!1625877 (= c!866958 ((_ is Nil!58398) (t!371161 r!2041)))))

(assert (=> d!1625877 (= (size!39021 (t!371161 r!2041)) lt!2086990)))

(declare-fun b!5052567 () Bool)

(assert (=> b!5052567 (= e!3154351 0)))

(declare-fun b!5052568 () Bool)

(assert (=> b!5052568 (= e!3154351 (+ 1 (size!39021 (t!371161 (t!371161 r!2041)))))))

(assert (= (and d!1625877 c!866958) b!5052567))

(assert (= (and d!1625877 (not c!866958)) b!5052568))

(declare-fun m!6086752 () Bool)

(assert (=> b!5052568 m!6086752))

(assert (=> b!5052347 d!1625877))

(declare-fun d!1625879 () Bool)

(declare-fun lt!2086991 () Int)

(assert (=> d!1625879 (>= lt!2086991 0)))

(declare-fun e!3154354 () Int)

(assert (=> d!1625879 (= lt!2086991 e!3154354)))

(declare-fun c!866961 () Bool)

(assert (=> d!1625879 (= c!866961 ((_ is Nil!58398) lt!2086957))))

(assert (=> d!1625879 (= (size!39021 lt!2086957) lt!2086991)))

(declare-fun b!5052573 () Bool)

(assert (=> b!5052573 (= e!3154354 0)))

(declare-fun b!5052574 () Bool)

(assert (=> b!5052574 (= e!3154354 (+ 1 (size!39021 (t!371161 lt!2086957))))))

(assert (= (and d!1625879 c!866961) b!5052573))

(assert (= (and d!1625879 (not c!866961)) b!5052574))

(declare-fun m!6086754 () Bool)

(assert (=> b!5052574 m!6086754))

(assert (=> b!5052384 d!1625879))

(assert (=> b!5052384 d!1625801))

(assert (=> b!5052384 d!1625797))

(declare-fun b!5052575 () Bool)

(declare-fun e!3154358 () Int)

(assert (=> b!5052575 (= e!3154358 0)))

(declare-fun b!5052576 () Bool)

(declare-fun e!3154357 () List!58522)

(assert (=> b!5052576 (= e!3154357 Nil!58398)))

(declare-fun b!5052577 () Bool)

(declare-fun e!3154356 () Bool)

(declare-fun lt!2086992 () List!58522)

(assert (=> b!5052577 (= e!3154356 (= (size!39021 lt!2086992) e!3154358))))

(declare-fun c!866962 () Bool)

(assert (=> b!5052577 (= c!866962 (<= (ite c!866861 i!652 (- i!652 lt!2086928)) 0))))

(declare-fun b!5052578 () Bool)

(declare-fun e!3154355 () Int)

(assert (=> b!5052578 (= e!3154358 e!3154355)))

(declare-fun c!866963 () Bool)

(assert (=> b!5052578 (= c!866963 (>= (ite c!866861 i!652 (- i!652 lt!2086928)) (size!39021 (ite c!866861 l!2757 r!2041))))))

(declare-fun b!5052579 () Bool)

(assert (=> b!5052579 (= e!3154355 (size!39021 (ite c!866861 l!2757 r!2041)))))

(declare-fun b!5052580 () Bool)

(assert (=> b!5052580 (= e!3154355 (ite c!866861 i!652 (- i!652 lt!2086928)))))

(declare-fun b!5052581 () Bool)

(assert (=> b!5052581 (= e!3154357 (Cons!58398 (h!64846 (ite c!866861 l!2757 r!2041)) (take!888 (t!371161 (ite c!866861 l!2757 r!2041)) (- (ite c!866861 i!652 (- i!652 lt!2086928)) 1))))))

(declare-fun d!1625881 () Bool)

(assert (=> d!1625881 e!3154356))

(declare-fun res!2151375 () Bool)

(assert (=> d!1625881 (=> (not res!2151375) (not e!3154356))))

(assert (=> d!1625881 (= res!2151375 (= ((_ map implies) (content!10400 lt!2086992) (content!10400 (ite c!866861 l!2757 r!2041))) ((as const (InoxSet T!104866)) true)))))

(assert (=> d!1625881 (= lt!2086992 e!3154357)))

(declare-fun c!866964 () Bool)

(assert (=> d!1625881 (= c!866964 (or ((_ is Nil!58398) (ite c!866861 l!2757 r!2041)) (<= (ite c!866861 i!652 (- i!652 lt!2086928)) 0)))))

(assert (=> d!1625881 (= (take!888 (ite c!866861 l!2757 r!2041) (ite c!866861 i!652 (- i!652 lt!2086928))) lt!2086992)))

(assert (= (and d!1625881 c!866964) b!5052576))

(assert (= (and d!1625881 (not c!866964)) b!5052581))

(assert (= (and d!1625881 res!2151375) b!5052577))

(assert (= (and b!5052577 c!866962) b!5052575))

(assert (= (and b!5052577 (not c!866962)) b!5052578))

(assert (= (and b!5052578 c!866963) b!5052579))

(assert (= (and b!5052578 (not c!866963)) b!5052580))

(assert (=> b!5052581 m!6086736))

(declare-fun m!6086756 () Bool)

(assert (=> d!1625881 m!6086756))

(declare-fun m!6086758 () Bool)

(assert (=> d!1625881 m!6086758))

(declare-fun m!6086760 () Bool)

(assert (=> b!5052579 m!6086760))

(assert (=> b!5052578 m!6086760))

(declare-fun m!6086762 () Bool)

(assert (=> b!5052577 m!6086762))

(assert (=> b!5052332 d!1625881))

(declare-fun b!5052582 () Bool)

(declare-fun e!3154362 () List!58522)

(assert (=> b!5052582 (= e!3154362 Nil!58398)))

(declare-fun b!5052583 () Bool)

(declare-fun e!3154363 () Int)

(declare-fun call!351999 () Int)

(assert (=> b!5052583 (= e!3154363 call!351999)))

(declare-fun b!5052584 () Bool)

(declare-fun e!3154360 () Bool)

(declare-fun lt!2086993 () List!58522)

(assert (=> b!5052584 (= e!3154360 (= (size!39021 lt!2086993) e!3154363))))

(declare-fun c!866967 () Bool)

(assert (=> b!5052584 (= c!866967 (<= (ite c!866861 i!652 (- i!652 lt!2086928)) 0))))

(declare-fun bm!351994 () Bool)

(assert (=> bm!351994 (= call!351999 (size!39021 (ite c!866861 l!2757 r!2041)))))

(declare-fun e!3154361 () Int)

(declare-fun b!5052585 () Bool)

(assert (=> b!5052585 (= e!3154361 (- call!351999 (ite c!866861 i!652 (- i!652 lt!2086928))))))

(declare-fun d!1625883 () Bool)

(assert (=> d!1625883 e!3154360))

(declare-fun res!2151376 () Bool)

(assert (=> d!1625883 (=> (not res!2151376) (not e!3154360))))

(assert (=> d!1625883 (= res!2151376 (= ((_ map implies) (content!10400 lt!2086993) (content!10400 (ite c!866861 l!2757 r!2041))) ((as const (InoxSet T!104866)) true)))))

(assert (=> d!1625883 (= lt!2086993 e!3154362)))

(declare-fun c!866966 () Bool)

(assert (=> d!1625883 (= c!866966 ((_ is Nil!58398) (ite c!866861 l!2757 r!2041)))))

(assert (=> d!1625883 (= (drop!2688 (ite c!866861 l!2757 r!2041) (ite c!866861 i!652 (- i!652 lt!2086928))) lt!2086993)))

(declare-fun b!5052586 () Bool)

(declare-fun e!3154359 () List!58522)

(assert (=> b!5052586 (= e!3154362 e!3154359)))

(declare-fun c!866965 () Bool)

(assert (=> b!5052586 (= c!866965 (<= (ite c!866861 i!652 (- i!652 lt!2086928)) 0))))

(declare-fun b!5052587 () Bool)

(assert (=> b!5052587 (= e!3154359 (ite c!866861 l!2757 r!2041))))

(declare-fun b!5052588 () Bool)

(assert (=> b!5052588 (= e!3154361 0)))

(declare-fun b!5052589 () Bool)

(assert (=> b!5052589 (= e!3154359 (drop!2688 (t!371161 (ite c!866861 l!2757 r!2041)) (- (ite c!866861 i!652 (- i!652 lt!2086928)) 1)))))

(declare-fun b!5052590 () Bool)

(assert (=> b!5052590 (= e!3154363 e!3154361)))

(declare-fun c!866968 () Bool)

(assert (=> b!5052590 (= c!866968 (>= (ite c!866861 i!652 (- i!652 lt!2086928)) call!351999))))

(assert (= (and d!1625883 c!866966) b!5052582))

(assert (= (and d!1625883 (not c!866966)) b!5052586))

(assert (= (and b!5052586 c!866965) b!5052587))

(assert (= (and b!5052586 (not c!866965)) b!5052589))

(assert (= (and d!1625883 res!2151376) b!5052584))

(assert (= (and b!5052584 c!866967) b!5052583))

(assert (= (and b!5052584 (not c!866967)) b!5052590))

(assert (= (and b!5052590 c!866968) b!5052588))

(assert (= (and b!5052590 (not c!866968)) b!5052585))

(assert (= (or b!5052583 b!5052590 b!5052585) bm!351994))

(declare-fun m!6086764 () Bool)

(assert (=> b!5052584 m!6086764))

(assert (=> bm!351994 m!6086760))

(declare-fun m!6086766 () Bool)

(assert (=> d!1625883 m!6086766))

(assert (=> d!1625883 m!6086758))

(assert (=> b!5052589 m!6086738))

(assert (=> b!5052333 d!1625883))

(declare-fun d!1625885 () Bool)

(declare-fun lt!2086994 () Int)

(assert (=> d!1625885 (>= lt!2086994 0)))

(declare-fun e!3154364 () Int)

(assert (=> d!1625885 (= lt!2086994 e!3154364)))

(declare-fun c!866969 () Bool)

(assert (=> d!1625885 (= c!866969 ((_ is Nil!58398) (t!371161 l!2757)))))

(assert (=> d!1625885 (= (size!39021 (t!371161 l!2757)) lt!2086994)))

(declare-fun b!5052591 () Bool)

(assert (=> b!5052591 (= e!3154364 0)))

(declare-fun b!5052592 () Bool)

(assert (=> b!5052592 (= e!3154364 (+ 1 (size!39021 (t!371161 (t!371161 l!2757)))))))

(assert (= (and d!1625885 c!866969) b!5052591))

(assert (= (and d!1625885 (not c!866969)) b!5052592))

(declare-fun m!6086768 () Bool)

(assert (=> b!5052592 m!6086768))

(assert (=> b!5052349 d!1625885))

(declare-fun d!1625887 () Bool)

(declare-fun e!3154366 () Bool)

(assert (=> d!1625887 e!3154366))

(declare-fun res!2151377 () Bool)

(assert (=> d!1625887 (=> (not res!2151377) (not e!3154366))))

(declare-fun lt!2086995 () List!58522)

(assert (=> d!1625887 (= res!2151377 (= (content!10400 lt!2086995) ((_ map or) (content!10400 (t!371161 (ite c!866861 (_2!34946 lt!2086930) l!2757))) (content!10400 (ite c!866861 r!2041 (_1!34946 lt!2086929))))))))

(declare-fun e!3154365 () List!58522)

(assert (=> d!1625887 (= lt!2086995 e!3154365)))

(declare-fun c!866970 () Bool)

(assert (=> d!1625887 (= c!866970 ((_ is Nil!58398) (t!371161 (ite c!866861 (_2!34946 lt!2086930) l!2757))))))

(assert (=> d!1625887 (= (++!12761 (t!371161 (ite c!866861 (_2!34946 lt!2086930) l!2757)) (ite c!866861 r!2041 (_1!34946 lt!2086929))) lt!2086995)))

(declare-fun b!5052594 () Bool)

(assert (=> b!5052594 (= e!3154365 (Cons!58398 (h!64846 (t!371161 (ite c!866861 (_2!34946 lt!2086930) l!2757))) (++!12761 (t!371161 (t!371161 (ite c!866861 (_2!34946 lt!2086930) l!2757))) (ite c!866861 r!2041 (_1!34946 lt!2086929)))))))

(declare-fun b!5052596 () Bool)

(assert (=> b!5052596 (= e!3154366 (or (not (= (ite c!866861 r!2041 (_1!34946 lt!2086929)) Nil!58398)) (= lt!2086995 (t!371161 (ite c!866861 (_2!34946 lt!2086930) l!2757)))))))

(declare-fun b!5052595 () Bool)

(declare-fun res!2151378 () Bool)

(assert (=> b!5052595 (=> (not res!2151378) (not e!3154366))))

(assert (=> b!5052595 (= res!2151378 (= (size!39021 lt!2086995) (+ (size!39021 (t!371161 (ite c!866861 (_2!34946 lt!2086930) l!2757))) (size!39021 (ite c!866861 r!2041 (_1!34946 lt!2086929))))))))

(declare-fun b!5052593 () Bool)

(assert (=> b!5052593 (= e!3154365 (ite c!866861 r!2041 (_1!34946 lt!2086929)))))

(assert (= (and d!1625887 c!866970) b!5052593))

(assert (= (and d!1625887 (not c!866970)) b!5052594))

(assert (= (and d!1625887 res!2151377) b!5052595))

(assert (= (and b!5052595 res!2151378) b!5052596))

(declare-fun m!6086770 () Bool)

(assert (=> d!1625887 m!6086770))

(assert (=> d!1625887 m!6086636))

(assert (=> d!1625887 m!6086582))

(declare-fun m!6086772 () Bool)

(assert (=> b!5052594 m!6086772))

(declare-fun m!6086774 () Bool)

(assert (=> b!5052595 m!6086774))

(assert (=> b!5052595 m!6086626))

(assert (=> b!5052595 m!6086590))

(assert (=> b!5052387 d!1625887))

(declare-fun b!5052597 () Bool)

(declare-fun e!3154367 () Bool)

(declare-fun tp!1412350 () Bool)

(assert (=> b!5052597 (= e!3154367 (and tp_is_empty!36979 tp!1412350))))

(assert (=> b!5052402 (= tp!1412344 e!3154367)))

(assert (= (and b!5052402 ((_ is Cons!58398) (t!371161 (t!371161 r!2041)))) b!5052597))

(declare-fun b!5052598 () Bool)

(declare-fun e!3154368 () Bool)

(declare-fun tp!1412351 () Bool)

(assert (=> b!5052598 (= e!3154368 (and tp_is_empty!36979 tp!1412351))))

(assert (=> b!5052407 (= tp!1412345 e!3154368)))

(assert (= (and b!5052407 ((_ is Cons!58398) (t!371161 (t!371161 l!2757)))) b!5052598))

(check-sat (not b!5052419) (not b!5052594) (not b!5052541) (not d!1625887) (not b!5052441) (not b!5052595) (not d!1625841) (not b!5052543) (not b!5052558) tp_is_empty!36979 (not b!5052597) (not b!5052544) (not b!5052474) (not b!5052475) (not d!1625825) (not b!5052423) (not b!5052442) (not b!5052534) (not b!5052446) (not b!5052589) (not b!5052434) (not b!5052577) (not b!5052415) (not d!1625855) (not b!5052579) (not b!5052433) (not b!5052568) (not d!1625845) (not b!5052436) (not d!1625881) (not b!5052478) (not b!5052560) (not b!5052429) (not bm!351994) (not b!5052476) (not b!5052539) (not d!1625883) (not b!5052581) (not bm!351991) (not b!5052416) (not b!5052592) (not b!5052421) (not d!1625869) (not b!5052578) (not b!5052445) (not b!5052437) (not d!1625843) (not b!5052598) (not b!5052431) (not d!1625839) (not b!5052552) (not b!5052584) (not b!5052574))
(check-sat)
