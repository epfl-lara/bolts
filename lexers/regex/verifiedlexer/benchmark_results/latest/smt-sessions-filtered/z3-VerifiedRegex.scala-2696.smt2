; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!145184 () Bool)

(assert start!145184)

(declare-fun b_free!41765 () Bool)

(declare-fun b_next!42469 () Bool)

(assert (=> start!145184 (= b_free!41765 (not b_next!42469))))

(declare-fun tp!460470 () Bool)

(declare-fun b_and!109103 () Bool)

(assert (=> start!145184 (= tp!460470 b_and!109103)))

(declare-datatypes ((List!17030 0) (Conc!5591 0) (BalanceConc!11126 0) (IArray!11187 0) (Object!3130 0))(
  ( (Nil!16960) (Cons!16960 (h!22361 Object!3130) (t!141597 List!17030)) )
  ( (Node!5591 (left!13757 Conc!5591) (right!14087 Conc!5591) (csize!11412 Int) (cheight!5802 Int)) (Leaf!8288 (xs!8391 IArray!11187) (csize!11413 Int)) (Empty!5591) )
  ( (BalanceConc!11127 (c!253378 Conc!5591)) )
  ( (IArray!11188 (innerList!5651 List!17030)) )
  ( (BalanceConc!11125 (value!94316 BalanceConc!11126)) (List!17029 (value!94317 List!17030)) (Character!68 (value!94318 (_ BitVec 16))) (Open!68 (value!94319 Int)) )
))
(declare-datatypes ((T!27894 0))(
  ( (T!27895 (val!4964 Int)) )
))
(declare-datatypes ((List!17031 0))(
  ( (Nil!16961) (Cons!16961 (h!22362 T!27894) (t!141598 List!17031)) )
))
(declare-datatypes ((Vector!140 0))(
  ( (Vector!141 (underlying!3938 Object!3130) (overflowing!127 List!17031)) )
))
(declare-fun thiss!9406 () Vector!140)

(declare-fun f!1097 () Int)

(declare-fun list!6525 (Vector!140) List!17031)

(declare-fun choose!9335 (Vector!140 Int) Vector!140)

(declare-fun filter!426 (List!17031 Int) List!17031)

(assert (=> start!145184 (not (= (list!6525 (choose!9335 thiss!9406 f!1097)) (filter!426 (list!6525 thiss!9406) f!1097)))))

(declare-fun e!1003834 () Bool)

(assert (=> start!145184 e!1003834))

(assert (=> start!145184 tp!460470))

(declare-fun b!1563113 () Bool)

(declare-fun tp!460468 () Bool)

(declare-fun tp!460469 () Bool)

(assert (=> b!1563113 (= e!1003834 (and tp!460468 tp!460469))))

(assert (= start!145184 b!1563113))

(declare-fun m!1834595 () Bool)

(assert (=> start!145184 m!1834595))

(assert (=> start!145184 m!1834595))

(declare-fun m!1834597 () Bool)

(assert (=> start!145184 m!1834597))

(declare-fun m!1834599 () Bool)

(assert (=> start!145184 m!1834599))

(assert (=> start!145184 m!1834599))

(declare-fun m!1834601 () Bool)

(assert (=> start!145184 m!1834601))

(check-sat (not start!145184) (not b!1563113) b_and!109103 (not b_next!42469))
(check-sat b_and!109103 (not b_next!42469))
(get-model)

(declare-fun d!462885 () Bool)

(declare-fun choose!9338 (Vector!140) List!17031)

(assert (=> d!462885 (= (list!6525 (choose!9335 thiss!9406 f!1097)) (choose!9338 (choose!9335 thiss!9406 f!1097)))))

(declare-fun bs!389470 () Bool)

(assert (= bs!389470 d!462885))

(assert (=> bs!389470 m!1834595))

(declare-fun m!1834607 () Bool)

(assert (=> bs!389470 m!1834607))

(assert (=> start!145184 d!462885))

(declare-fun d!462889 () Bool)

(declare-fun choose!9339 (Vector!140 Int) Vector!140)

(assert (=> d!462889 (= (choose!9335 thiss!9406 f!1097) (choose!9339 thiss!9406 f!1097))))

(declare-fun bs!389471 () Bool)

(assert (= bs!389471 d!462889))

(declare-fun m!1834609 () Bool)

(assert (=> bs!389471 m!1834609))

(assert (=> start!145184 d!462889))

(declare-fun b!1563160 () Bool)

(declare-fun e!1003859 () List!17031)

(declare-fun call!102360 () List!17031)

(assert (=> b!1563160 (= e!1003859 (Cons!16961 (h!22362 (list!6525 thiss!9406)) call!102360))))

(declare-fun b!1563161 () Bool)

(declare-fun res!696728 () Bool)

(declare-fun e!1003860 () Bool)

(assert (=> b!1563161 (=> (not res!696728) (not e!1003860))))

(declare-fun lt!541346 () List!17031)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2345 (List!17031) (InoxSet T!27894))

(assert (=> b!1563161 (= res!696728 (= ((_ map implies) (content!2345 lt!541346) (content!2345 (list!6525 thiss!9406))) ((as const (InoxSet T!27894)) true)))))

(declare-fun b!1563162 () Bool)

(declare-fun forall!3936 (List!17031 Int) Bool)

(assert (=> b!1563162 (= e!1003860 (forall!3936 lt!541346 f!1097))))

(declare-fun b!1563163 () Bool)

(declare-fun e!1003861 () List!17031)

(assert (=> b!1563163 (= e!1003861 Nil!16961)))

(declare-fun b!1563164 () Bool)

(assert (=> b!1563164 (= e!1003859 call!102360)))

(declare-fun bm!102355 () Bool)

(assert (=> bm!102355 (= call!102360 (filter!426 (t!141598 (list!6525 thiss!9406)) f!1097))))

(declare-fun d!462891 () Bool)

(assert (=> d!462891 e!1003860))

(declare-fun res!696729 () Bool)

(assert (=> d!462891 (=> (not res!696729) (not e!1003860))))

(declare-fun size!13766 (List!17031) Int)

(assert (=> d!462891 (= res!696729 (<= (size!13766 lt!541346) (size!13766 (list!6525 thiss!9406))))))

(assert (=> d!462891 (= lt!541346 e!1003861)))

(declare-fun c!253390 () Bool)

(get-info :version)

(assert (=> d!462891 (= c!253390 ((_ is Nil!16961) (list!6525 thiss!9406)))))

(assert (=> d!462891 (= (filter!426 (list!6525 thiss!9406) f!1097) lt!541346)))

(declare-fun b!1563165 () Bool)

(assert (=> b!1563165 (= e!1003861 e!1003859)))

(declare-fun c!253389 () Bool)

(declare-fun dynLambda!7565 (Int T!27894) Bool)

(assert (=> b!1563165 (= c!253389 (dynLambda!7565 f!1097 (h!22362 (list!6525 thiss!9406))))))

(assert (= (and d!462891 c!253390) b!1563163))

(assert (= (and d!462891 (not c!253390)) b!1563165))

(assert (= (and b!1563165 c!253389) b!1563160))

(assert (= (and b!1563165 (not c!253389)) b!1563164))

(assert (= (or b!1563160 b!1563164) bm!102355))

(assert (= (and d!462891 res!696729) b!1563161))

(assert (= (and b!1563161 res!696728) b!1563162))

(declare-fun b_lambda!49209 () Bool)

(assert (=> (not b_lambda!49209) (not b!1563165)))

(declare-fun t!141602 () Bool)

(declare-fun tb!87417 () Bool)

(assert (=> (and start!145184 (= f!1097 f!1097) t!141602) tb!87417))

(declare-fun result!105760 () Bool)

(assert (=> tb!87417 (= result!105760 true)))

(assert (=> b!1563165 t!141602))

(declare-fun b_and!109107 () Bool)

(assert (= b_and!109103 (and (=> t!141602 result!105760) b_and!109107)))

(declare-fun m!1834631 () Bool)

(assert (=> b!1563165 m!1834631))

(declare-fun m!1834633 () Bool)

(assert (=> bm!102355 m!1834633))

(declare-fun m!1834635 () Bool)

(assert (=> d!462891 m!1834635))

(assert (=> d!462891 m!1834599))

(declare-fun m!1834637 () Bool)

(assert (=> d!462891 m!1834637))

(declare-fun m!1834639 () Bool)

(assert (=> b!1563162 m!1834639))

(declare-fun m!1834641 () Bool)

(assert (=> b!1563161 m!1834641))

(assert (=> b!1563161 m!1834599))

(declare-fun m!1834643 () Bool)

(assert (=> b!1563161 m!1834643))

(assert (=> start!145184 d!462891))

(declare-fun d!462895 () Bool)

(assert (=> d!462895 (= (list!6525 thiss!9406) (choose!9338 thiss!9406))))

(declare-fun bs!389473 () Bool)

(assert (= bs!389473 d!462895))

(declare-fun m!1834645 () Bool)

(assert (=> bs!389473 m!1834645))

(assert (=> start!145184 d!462895))

(declare-fun b!1563175 () Bool)

(declare-fun e!1003867 () Bool)

(declare-fun tp!460484 () Bool)

(declare-fun inv!22278 (Conc!5591) Bool)

(assert (=> b!1563175 (= e!1003867 (and (inv!22278 (c!253378 (value!94316 (underlying!3938 thiss!9406)))) tp!460484))))

(declare-fun b!1563174 () Bool)

(declare-fun e!1003866 () Bool)

(declare-fun inv!22279 (BalanceConc!11126) Bool)

(assert (=> b!1563174 (= e!1003866 (and (inv!22279 (value!94316 (underlying!3938 thiss!9406))) e!1003867))))

(declare-fun b!1563176 () Bool)

(declare-fun tp!460485 () Bool)

(assert (=> b!1563176 (= e!1003866 tp!460485)))

(assert (=> b!1563113 (= tp!460468 e!1003866)))

(assert (= b!1563174 b!1563175))

(assert (= (and b!1563113 ((_ is BalanceConc!11125) (underlying!3938 thiss!9406))) b!1563174))

(assert (= (and b!1563113 ((_ is List!17029) (underlying!3938 thiss!9406))) b!1563176))

(declare-fun m!1834647 () Bool)

(assert (=> b!1563175 m!1834647))

(declare-fun m!1834649 () Bool)

(assert (=> b!1563174 m!1834649))

(declare-fun b!1563181 () Bool)

(declare-fun e!1003870 () Bool)

(declare-fun tp_is_empty!7097 () Bool)

(declare-fun tp!460488 () Bool)

(assert (=> b!1563181 (= e!1003870 (and tp_is_empty!7097 tp!460488))))

(assert (=> b!1563113 (= tp!460469 e!1003870)))

(assert (= (and b!1563113 ((_ is Cons!16961) (overflowing!127 thiss!9406))) b!1563181))

(declare-fun b_lambda!49211 () Bool)

(assert (= b_lambda!49209 (or (and start!145184 b_free!41765) b_lambda!49211)))

(check-sat (not b_lambda!49211) (not d!462891) (not d!462895) (not b!1563161) (not d!462885) b_and!109107 tp_is_empty!7097 (not b!1563181) (not b_next!42469) (not b!1563162) (not bm!102355) (not b!1563174) (not b!1563176) (not b!1563175) (not d!462889))
(check-sat b_and!109107 (not b_next!42469))
(get-model)

(declare-fun d!462897 () Bool)

(declare-fun res!696732 () Vector!140)

(assert (=> d!462897 (= (list!6525 res!696732) (filter!426 (list!6525 thiss!9406) f!1097))))

(declare-fun e!1003873 () Bool)

(assert (=> d!462897 e!1003873))

(assert (=> d!462897 (= (choose!9339 thiss!9406 f!1097) res!696732)))

(declare-fun b!1563184 () Bool)

(declare-fun tp!460493 () Bool)

(declare-fun tp!460494 () Bool)

(assert (=> b!1563184 (= e!1003873 (and tp!460493 tp!460494))))

(assert (= d!462897 b!1563184))

(declare-fun m!1834651 () Bool)

(assert (=> d!462897 m!1834651))

(assert (=> d!462897 m!1834599))

(assert (=> d!462897 m!1834599))

(assert (=> d!462897 m!1834601))

(assert (=> d!462889 d!462897))

(declare-fun b!1563185 () Bool)

(declare-fun e!1003874 () List!17031)

(declare-fun call!102361 () List!17031)

(assert (=> b!1563185 (= e!1003874 (Cons!16961 (h!22362 (t!141598 (list!6525 thiss!9406))) call!102361))))

(declare-fun b!1563186 () Bool)

(declare-fun res!696733 () Bool)

(declare-fun e!1003875 () Bool)

(assert (=> b!1563186 (=> (not res!696733) (not e!1003875))))

(declare-fun lt!541347 () List!17031)

(assert (=> b!1563186 (= res!696733 (= ((_ map implies) (content!2345 lt!541347) (content!2345 (t!141598 (list!6525 thiss!9406)))) ((as const (InoxSet T!27894)) true)))))

(declare-fun b!1563187 () Bool)

(assert (=> b!1563187 (= e!1003875 (forall!3936 lt!541347 f!1097))))

(declare-fun b!1563188 () Bool)

(declare-fun e!1003876 () List!17031)

(assert (=> b!1563188 (= e!1003876 Nil!16961)))

(declare-fun b!1563189 () Bool)

(assert (=> b!1563189 (= e!1003874 call!102361)))

(declare-fun bm!102356 () Bool)

(assert (=> bm!102356 (= call!102361 (filter!426 (t!141598 (t!141598 (list!6525 thiss!9406))) f!1097))))

(declare-fun d!462899 () Bool)

(assert (=> d!462899 e!1003875))

(declare-fun res!696734 () Bool)

(assert (=> d!462899 (=> (not res!696734) (not e!1003875))))

(assert (=> d!462899 (= res!696734 (<= (size!13766 lt!541347) (size!13766 (t!141598 (list!6525 thiss!9406)))))))

(assert (=> d!462899 (= lt!541347 e!1003876)))

(declare-fun c!253392 () Bool)

(assert (=> d!462899 (= c!253392 ((_ is Nil!16961) (t!141598 (list!6525 thiss!9406))))))

(assert (=> d!462899 (= (filter!426 (t!141598 (list!6525 thiss!9406)) f!1097) lt!541347)))

(declare-fun b!1563190 () Bool)

(assert (=> b!1563190 (= e!1003876 e!1003874)))

(declare-fun c!253391 () Bool)

(assert (=> b!1563190 (= c!253391 (dynLambda!7565 f!1097 (h!22362 (t!141598 (list!6525 thiss!9406)))))))

(assert (= (and d!462899 c!253392) b!1563188))

(assert (= (and d!462899 (not c!253392)) b!1563190))

(assert (= (and b!1563190 c!253391) b!1563185))

(assert (= (and b!1563190 (not c!253391)) b!1563189))

(assert (= (or b!1563185 b!1563189) bm!102356))

(assert (= (and d!462899 res!696734) b!1563186))

(assert (= (and b!1563186 res!696733) b!1563187))

(declare-fun b_lambda!49213 () Bool)

(assert (=> (not b_lambda!49213) (not b!1563190)))

(declare-fun t!141604 () Bool)

(declare-fun tb!87419 () Bool)

(assert (=> (and start!145184 (= f!1097 f!1097) t!141604) tb!87419))

(declare-fun result!105766 () Bool)

(assert (=> tb!87419 (= result!105766 true)))

(assert (=> b!1563190 t!141604))

(declare-fun b_and!109109 () Bool)

(assert (= b_and!109107 (and (=> t!141604 result!105766) b_and!109109)))

(declare-fun m!1834653 () Bool)

(assert (=> b!1563190 m!1834653))

(declare-fun m!1834655 () Bool)

(assert (=> bm!102356 m!1834655))

(declare-fun m!1834657 () Bool)

(assert (=> d!462899 m!1834657))

(declare-fun m!1834659 () Bool)

(assert (=> d!462899 m!1834659))

(declare-fun m!1834661 () Bool)

(assert (=> b!1563187 m!1834661))

(declare-fun m!1834663 () Bool)

(assert (=> b!1563186 m!1834663))

(declare-fun m!1834665 () Bool)

(assert (=> b!1563186 m!1834665))

(assert (=> bm!102355 d!462899))

(declare-fun d!462901 () Bool)

(declare-fun lt!541350 () Int)

(assert (=> d!462901 (>= lt!541350 0)))

(declare-fun e!1003879 () Int)

(assert (=> d!462901 (= lt!541350 e!1003879)))

(declare-fun c!253395 () Bool)

(assert (=> d!462901 (= c!253395 ((_ is Nil!16961) lt!541346))))

(assert (=> d!462901 (= (size!13766 lt!541346) lt!541350)))

(declare-fun b!1563195 () Bool)

(assert (=> b!1563195 (= e!1003879 0)))

(declare-fun b!1563196 () Bool)

(assert (=> b!1563196 (= e!1003879 (+ 1 (size!13766 (t!141598 lt!541346))))))

(assert (= (and d!462901 c!253395) b!1563195))

(assert (= (and d!462901 (not c!253395)) b!1563196))

(declare-fun m!1834667 () Bool)

(assert (=> b!1563196 m!1834667))

(assert (=> d!462891 d!462901))

(declare-fun d!462903 () Bool)

(declare-fun lt!541351 () Int)

(assert (=> d!462903 (>= lt!541351 0)))

(declare-fun e!1003880 () Int)

(assert (=> d!462903 (= lt!541351 e!1003880)))

(declare-fun c!253396 () Bool)

(assert (=> d!462903 (= c!253396 ((_ is Nil!16961) (list!6525 thiss!9406)))))

(assert (=> d!462903 (= (size!13766 (list!6525 thiss!9406)) lt!541351)))

(declare-fun b!1563197 () Bool)

(assert (=> b!1563197 (= e!1003880 0)))

(declare-fun b!1563198 () Bool)

(assert (=> b!1563198 (= e!1003880 (+ 1 (size!13766 (t!141598 (list!6525 thiss!9406)))))))

(assert (= (and d!462903 c!253396) b!1563197))

(assert (= (and d!462903 (not c!253396)) b!1563198))

(assert (=> b!1563198 m!1834659))

(assert (=> d!462891 d!462903))

(declare-fun d!462905 () Bool)

(declare-fun isBalanced!1655 (Conc!5591) Bool)

(assert (=> d!462905 (= (inv!22279 (value!94316 (underlying!3938 thiss!9406))) (isBalanced!1655 (c!253378 (value!94316 (underlying!3938 thiss!9406)))))))

(declare-fun bs!389474 () Bool)

(assert (= bs!389474 d!462905))

(declare-fun m!1834669 () Bool)

(assert (=> bs!389474 m!1834669))

(assert (=> b!1563174 d!462905))

(declare-fun d!462909 () Bool)

(assert (=> d!462909 true))

(declare-fun e!1003886 () Bool)

(assert (=> d!462909 e!1003886))

(declare-fun res!696737 () List!17031)

(assert (=> d!462909 (= (choose!9338 (choose!9335 thiss!9406 f!1097)) res!696737)))

(declare-fun b!1563207 () Bool)

(declare-fun tp!460497 () Bool)

(assert (=> b!1563207 (= e!1003886 (and tp_is_empty!7097 tp!460497))))

(assert (= (and d!462909 ((_ is Cons!16961) res!696737)) b!1563207))

(assert (=> d!462885 d!462909))

(declare-fun d!462913 () Bool)

(declare-fun c!253403 () Bool)

(assert (=> d!462913 (= c!253403 ((_ is Node!5591) (c!253378 (value!94316 (underlying!3938 thiss!9406)))))))

(declare-fun e!1003900 () Bool)

(assert (=> d!462913 (= (inv!22278 (c!253378 (value!94316 (underlying!3938 thiss!9406)))) e!1003900)))

(declare-fun b!1563224 () Bool)

(declare-fun inv!22280 (Conc!5591) Bool)

(assert (=> b!1563224 (= e!1003900 (inv!22280 (c!253378 (value!94316 (underlying!3938 thiss!9406)))))))

(declare-fun b!1563225 () Bool)

(declare-fun e!1003901 () Bool)

(assert (=> b!1563225 (= e!1003900 e!1003901)))

(declare-fun res!696748 () Bool)

(assert (=> b!1563225 (= res!696748 (not ((_ is Leaf!8288) (c!253378 (value!94316 (underlying!3938 thiss!9406))))))))

(assert (=> b!1563225 (=> res!696748 e!1003901)))

(declare-fun b!1563226 () Bool)

(declare-fun inv!22281 (Conc!5591) Bool)

(assert (=> b!1563226 (= e!1003901 (inv!22281 (c!253378 (value!94316 (underlying!3938 thiss!9406)))))))

(assert (= (and d!462913 c!253403) b!1563224))

(assert (= (and d!462913 (not c!253403)) b!1563225))

(assert (= (and b!1563225 (not res!696748)) b!1563226))

(declare-fun m!1834679 () Bool)

(assert (=> b!1563224 m!1834679))

(declare-fun m!1834681 () Bool)

(assert (=> b!1563226 m!1834681))

(assert (=> b!1563175 d!462913))

(declare-fun d!462919 () Bool)

(declare-fun res!696758 () Bool)

(declare-fun e!1003910 () Bool)

(assert (=> d!462919 (=> res!696758 e!1003910)))

(assert (=> d!462919 (= res!696758 ((_ is Nil!16961) lt!541346))))

(assert (=> d!462919 (= (forall!3936 lt!541346 f!1097) e!1003910)))

(declare-fun b!1563238 () Bool)

(declare-fun e!1003911 () Bool)

(assert (=> b!1563238 (= e!1003910 e!1003911)))

(declare-fun res!696759 () Bool)

(assert (=> b!1563238 (=> (not res!696759) (not e!1003911))))

(assert (=> b!1563238 (= res!696759 (dynLambda!7565 f!1097 (h!22362 lt!541346)))))

(declare-fun b!1563239 () Bool)

(assert (=> b!1563239 (= e!1003911 (forall!3936 (t!141598 lt!541346) f!1097))))

(assert (= (and d!462919 (not res!696758)) b!1563238))

(assert (= (and b!1563238 res!696759) b!1563239))

(declare-fun b_lambda!49219 () Bool)

(assert (=> (not b_lambda!49219) (not b!1563238)))

(declare-fun t!141610 () Bool)

(declare-fun tb!87425 () Bool)

(assert (=> (and start!145184 (= f!1097 f!1097) t!141610) tb!87425))

(declare-fun result!105772 () Bool)

(assert (=> tb!87425 (= result!105772 true)))

(assert (=> b!1563238 t!141610))

(declare-fun b_and!109115 () Bool)

(assert (= b_and!109109 (and (=> t!141610 result!105772) b_and!109115)))

(declare-fun m!1834695 () Bool)

(assert (=> b!1563238 m!1834695))

(declare-fun m!1834697 () Bool)

(assert (=> b!1563239 m!1834697))

(assert (=> b!1563162 d!462919))

(declare-fun d!462925 () Bool)

(assert (=> d!462925 true))

(declare-fun e!1003914 () Bool)

(assert (=> d!462925 e!1003914))

(declare-fun res!696760 () List!17031)

(assert (=> d!462925 (= (choose!9338 thiss!9406) res!696760)))

(declare-fun b!1563242 () Bool)

(declare-fun tp!460505 () Bool)

(assert (=> b!1563242 (= e!1003914 (and tp_is_empty!7097 tp!460505))))

(assert (= (and d!462925 ((_ is Cons!16961) res!696760)) b!1563242))

(assert (=> d!462895 d!462925))

(declare-fun d!462927 () Bool)

(declare-fun c!253408 () Bool)

(assert (=> d!462927 (= c!253408 ((_ is Nil!16961) lt!541346))))

(declare-fun e!1003918 () (InoxSet T!27894))

(assert (=> d!462927 (= (content!2345 lt!541346) e!1003918)))

(declare-fun b!1563248 () Bool)

(assert (=> b!1563248 (= e!1003918 ((as const (Array T!27894 Bool)) false))))

(declare-fun b!1563249 () Bool)

(assert (=> b!1563249 (= e!1003918 ((_ map or) (store ((as const (Array T!27894 Bool)) false) (h!22362 lt!541346) true) (content!2345 (t!141598 lt!541346))))))

(assert (= (and d!462927 c!253408) b!1563248))

(assert (= (and d!462927 (not c!253408)) b!1563249))

(declare-fun m!1834701 () Bool)

(assert (=> b!1563249 m!1834701))

(declare-fun m!1834703 () Bool)

(assert (=> b!1563249 m!1834703))

(assert (=> b!1563161 d!462927))

(declare-fun d!462931 () Bool)

(declare-fun c!253409 () Bool)

(assert (=> d!462931 (= c!253409 ((_ is Nil!16961) (list!6525 thiss!9406)))))

(declare-fun e!1003919 () (InoxSet T!27894))

(assert (=> d!462931 (= (content!2345 (list!6525 thiss!9406)) e!1003919)))

(declare-fun b!1563250 () Bool)

(assert (=> b!1563250 (= e!1003919 ((as const (Array T!27894 Bool)) false))))

(declare-fun b!1563251 () Bool)

(assert (=> b!1563251 (= e!1003919 ((_ map or) (store ((as const (Array T!27894 Bool)) false) (h!22362 (list!6525 thiss!9406)) true) (content!2345 (t!141598 (list!6525 thiss!9406)))))))

(assert (= (and d!462931 c!253409) b!1563250))

(assert (= (and d!462931 (not c!253409)) b!1563251))

(declare-fun m!1834705 () Bool)

(assert (=> b!1563251 m!1834705))

(assert (=> b!1563251 m!1834665))

(assert (=> b!1563161 d!462931))

(declare-fun b!1563256 () Bool)

(declare-fun e!1003922 () Bool)

(declare-fun tp!460512 () Bool)

(declare-fun tp!460513 () Bool)

(assert (=> b!1563256 (= e!1003922 (and tp!460512 tp!460513))))

(assert (=> b!1563176 (= tp!460485 e!1003922)))

(assert (= (and b!1563176 ((_ is Cons!16960) (value!94317 (underlying!3938 thiss!9406)))) b!1563256))

(declare-fun b!1563271 () Bool)

(declare-fun tp!460521 () Bool)

(declare-fun e!1003932 () Bool)

(declare-fun tp!460520 () Bool)

(assert (=> b!1563271 (= e!1003932 (and (inv!22278 (left!13757 (c!253378 (value!94316 (underlying!3938 thiss!9406))))) tp!460521 (inv!22278 (right!14087 (c!253378 (value!94316 (underlying!3938 thiss!9406))))) tp!460520))))

(declare-fun b!1563273 () Bool)

(declare-fun e!1003931 () Bool)

(declare-fun tp!460522 () Bool)

(assert (=> b!1563273 (= e!1003931 tp!460522)))

(declare-fun b!1563272 () Bool)

(declare-fun inv!22283 (IArray!11187) Bool)

(assert (=> b!1563272 (= e!1003932 (and (inv!22283 (xs!8391 (c!253378 (value!94316 (underlying!3938 thiss!9406))))) e!1003931))))

(assert (=> b!1563175 (= tp!460484 (and (inv!22278 (c!253378 (value!94316 (underlying!3938 thiss!9406)))) e!1003932))))

(assert (= (and b!1563175 ((_ is Node!5591) (c!253378 (value!94316 (underlying!3938 thiss!9406))))) b!1563271))

(assert (= b!1563272 b!1563273))

(assert (= (and b!1563175 ((_ is Leaf!8288) (c!253378 (value!94316 (underlying!3938 thiss!9406))))) b!1563272))

(declare-fun m!1834707 () Bool)

(assert (=> b!1563271 m!1834707))

(declare-fun m!1834709 () Bool)

(assert (=> b!1563271 m!1834709))

(declare-fun m!1834713 () Bool)

(assert (=> b!1563272 m!1834713))

(assert (=> b!1563175 m!1834647))

(declare-fun b!1563277 () Bool)

(declare-fun e!1003935 () Bool)

(declare-fun tp!460523 () Bool)

(assert (=> b!1563277 (= e!1003935 (and tp_is_empty!7097 tp!460523))))

(assert (=> b!1563181 (= tp!460488 e!1003935)))

(assert (= (and b!1563181 ((_ is Cons!16961) (t!141598 (overflowing!127 thiss!9406)))) b!1563277))

(declare-fun b_lambda!49221 () Bool)

(assert (= b_lambda!49213 (or (and start!145184 b_free!41765) b_lambda!49221)))

(declare-fun b_lambda!49223 () Bool)

(assert (= b_lambda!49219 (or (and start!145184 b_free!41765) b_lambda!49223)))

(check-sat (not b_lambda!49211) (not b!1563187) (not b!1563249) (not b!1563271) (not b!1563198) (not b!1563277) (not b!1563196) (not b!1563207) (not d!462905) (not b_next!42469) (not bm!102356) (not b!1563242) (not b!1563256) (not b!1563184) (not d!462899) (not b!1563175) (not b_lambda!49221) (not b!1563272) b_and!109115 (not b!1563224) (not d!462897) (not b!1563186) (not b!1563226) (not b_lambda!49223) tp_is_empty!7097 (not b!1563239) (not b!1563251) (not b!1563273))
(check-sat b_and!109115 (not b_next!42469))
