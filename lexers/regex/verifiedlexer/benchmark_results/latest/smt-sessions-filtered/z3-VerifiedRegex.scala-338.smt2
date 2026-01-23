; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!10978 () Bool)

(assert start!10978)

(declare-fun b_free!3297 () Bool)

(declare-fun b_next!3297 () Bool)

(assert (=> start!10978 (= b_free!3297 (not b_next!3297))))

(declare-fun tp!59270 () Bool)

(declare-fun b_and!5019 () Bool)

(assert (=> start!10978 (= tp!59270 b_and!5019)))

(declare-fun b_free!3299 () Bool)

(declare-fun b_next!3299 () Bool)

(assert (=> start!10978 (= b_free!3299 (not b_next!3299))))

(declare-fun tp!59268 () Bool)

(declare-fun b_and!5021 () Bool)

(assert (=> start!10978 (= tp!59268 b_and!5021)))

(assert (=> start!10978 true))

(declare-fun lambda!2416 () Int)

(declare-fun order!963 () Int)

(declare-fun f!927 () Int)

(declare-fun order!961 () Int)

(declare-fun dynLambda!622 (Int Int) Int)

(declare-fun dynLambda!623 (Int Int) Int)

(assert (=> start!10978 (< (dynLambda!622 order!961 f!927) (dynLambda!623 order!963 lambda!2416))))

(assert (=> start!10978 true))

(declare-fun g!9 () Int)

(assert (=> start!10978 (< (dynLambda!622 order!961 g!9) (dynLambda!623 order!963 lambda!2416))))

(declare-fun setNonEmpty!1419 () Bool)

(declare-fun setRes!1419 () Bool)

(declare-fun tp!59269 () Bool)

(declare-fun tp_is_empty!841 () Bool)

(assert (=> setNonEmpty!1419 (= setRes!1419 (and tp!59269 tp_is_empty!841))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((A!251 0))(
  ( (A!252 (val!554 Int)) )
))
(declare-fun s!1451 () (InoxSet A!251))

(declare-fun setElem!1419 () A!251)

(declare-fun setRest!1419 () (InoxSet A!251))

(assert (=> setNonEmpty!1419 (= s!1451 ((_ map or) (store ((as const (Array A!251 Bool)) false) setElem!1419 true) setRest!1419))))

(declare-fun res!52458 () Bool)

(declare-fun e!60791 () Bool)

(assert (=> start!10978 (=> (not res!52458) (not e!60791))))

(declare-fun forall!269 ((InoxSet A!251) Int) Bool)

(assert (=> start!10978 (= res!52458 (forall!269 s!1451 lambda!2416))))

(assert (=> start!10978 e!60791))

(declare-fun condSetEmpty!1419 () Bool)

(assert (=> start!10978 (= condSetEmpty!1419 (= s!1451 ((as const (Array A!251 Bool)) false)))))

(assert (=> start!10978 setRes!1419))

(assert (=> start!10978 tp!59270))

(assert (=> start!10978 tp!59268))

(declare-fun b!109267 () Bool)

(declare-fun e!60793 () Bool)

(declare-datatypes ((List!1749 0))(
  ( (Nil!1743) (Cons!1743 (h!7140 A!251) (t!21760 List!1749)) )
))
(declare-fun lt!31162 () List!1749)

(declare-fun forall!270 (List!1749 Int) Bool)

(assert (=> b!109267 (= e!60793 (not (forall!270 (t!21760 lt!31162) lambda!2416)))))

(declare-fun lt!31160 () (InoxSet A!251))

(declare-fun lt!31161 () (InoxSet A!251))

(declare-fun lt!31163 () (InoxSet A!251))

(declare-datatypes ((B!543 0))(
  ( (B!544 (val!555 Int)) )
))
(declare-fun flatMap!31 ((InoxSet A!251) Int) (InoxSet B!543))

(assert (=> b!109267 (= ((_ map or) (flatMap!31 lt!31163 g!9) (flatMap!31 lt!31161 g!9)) (flatMap!31 lt!31160 g!9))))

(declare-datatypes ((Unit!1192 0))(
  ( (Unit!1193) )
))
(declare-fun lt!31164 () Unit!1192)

(declare-fun lemmaFlatMapAssociative!18 ((InoxSet A!251) (InoxSet A!251) Int) Unit!1192)

(assert (=> b!109267 (= lt!31164 (lemmaFlatMapAssociative!18 lt!31163 lt!31161 g!9))))

(assert (=> b!109267 (= ((_ map or) (flatMap!31 lt!31163 f!927) (flatMap!31 lt!31161 f!927)) (flatMap!31 lt!31160 f!927))))

(declare-fun lt!31159 () Unit!1192)

(assert (=> b!109267 (= lt!31159 (lemmaFlatMapAssociative!18 lt!31163 lt!31161 f!927))))

(declare-fun b!109268 () Bool)

(declare-fun e!60792 () Bool)

(assert (=> b!109268 (= e!60792 e!60793)))

(declare-fun res!52457 () Bool)

(assert (=> b!109268 (=> (not res!52457) (not e!60793))))

(assert (=> b!109268 (= res!52457 (= s!1451 lt!31160))))

(assert (=> b!109268 (= lt!31160 ((_ map or) lt!31163 lt!31161))))

(declare-fun content!171 (List!1749) (InoxSet A!251))

(assert (=> b!109268 (= lt!31161 (content!171 (t!21760 lt!31162)))))

(assert (=> b!109268 (= lt!31163 (store ((as const (Array A!251 Bool)) false) (h!7140 lt!31162) true))))

(declare-fun setIsEmpty!1419 () Bool)

(assert (=> setIsEmpty!1419 setRes!1419))

(declare-fun b!109269 () Bool)

(assert (=> b!109269 (= e!60791 e!60792)))

(declare-fun res!52456 () Bool)

(assert (=> b!109269 (=> (not res!52456) (not e!60792))))

(get-info :version)

(assert (=> b!109269 (= res!52456 ((_ is Cons!1743) lt!31162))))

(declare-fun toList!228 ((InoxSet A!251)) List!1749)

(assert (=> b!109269 (= lt!31162 (toList!228 s!1451))))

(assert (= (and start!10978 res!52458) b!109269))

(assert (= (and b!109269 res!52456) b!109268))

(assert (= (and b!109268 res!52457) b!109267))

(assert (= (and start!10978 condSetEmpty!1419) setIsEmpty!1419))

(assert (= (and start!10978 (not condSetEmpty!1419)) setNonEmpty!1419))

(declare-fun m!98424 () Bool)

(assert (=> start!10978 m!98424))

(declare-fun m!98426 () Bool)

(assert (=> b!109267 m!98426))

(declare-fun m!98428 () Bool)

(assert (=> b!109267 m!98428))

(declare-fun m!98430 () Bool)

(assert (=> b!109267 m!98430))

(declare-fun m!98432 () Bool)

(assert (=> b!109267 m!98432))

(declare-fun m!98434 () Bool)

(assert (=> b!109267 m!98434))

(declare-fun m!98436 () Bool)

(assert (=> b!109267 m!98436))

(declare-fun m!98438 () Bool)

(assert (=> b!109267 m!98438))

(declare-fun m!98440 () Bool)

(assert (=> b!109267 m!98440))

(declare-fun m!98442 () Bool)

(assert (=> b!109267 m!98442))

(declare-fun m!98444 () Bool)

(assert (=> b!109268 m!98444))

(declare-fun m!98446 () Bool)

(assert (=> b!109268 m!98446))

(declare-fun m!98448 () Bool)

(assert (=> b!109269 m!98448))

(check-sat (not b!109267) (not b!109269) (not b_next!3297) (not b!109268) b_and!5021 tp_is_empty!841 b_and!5019 (not start!10978) (not setNonEmpty!1419) (not b_next!3299))
(check-sat b_and!5019 b_and!5021 (not b_next!3299) (not b_next!3297))
(get-model)

(declare-fun d!27035 () Bool)

(declare-fun e!60799 () Bool)

(assert (=> d!27035 e!60799))

(declare-fun res!52461 () Bool)

(assert (=> d!27035 (=> (not res!52461) (not e!60799))))

(declare-fun lt!31167 () List!1749)

(declare-fun noDuplicate!10 (List!1749) Bool)

(assert (=> d!27035 (= res!52461 (noDuplicate!10 lt!31167))))

(declare-fun choose!1433 ((InoxSet A!251)) List!1749)

(assert (=> d!27035 (= lt!31167 (choose!1433 s!1451))))

(assert (=> d!27035 (= (toList!228 s!1451) lt!31167)))

(declare-fun b!109280 () Bool)

(assert (=> b!109280 (= e!60799 (= (content!171 lt!31167) s!1451))))

(assert (= (and d!27035 res!52461) b!109280))

(declare-fun m!98454 () Bool)

(assert (=> d!27035 m!98454))

(declare-fun m!98456 () Bool)

(assert (=> d!27035 m!98456))

(declare-fun m!98458 () Bool)

(assert (=> b!109280 m!98458))

(assert (=> b!109269 d!27035))

(declare-fun d!27039 () Bool)

(declare-fun lt!31172 () Bool)

(assert (=> d!27039 (= lt!31172 (forall!270 (toList!228 s!1451) lambda!2416))))

(declare-fun choose!1434 ((InoxSet A!251) Int) Bool)

(assert (=> d!27039 (= lt!31172 (choose!1434 s!1451 lambda!2416))))

(assert (=> d!27039 (= (forall!269 s!1451 lambda!2416) lt!31172)))

(declare-fun bs!10788 () Bool)

(assert (= bs!10788 d!27039))

(assert (=> bs!10788 m!98448))

(assert (=> bs!10788 m!98448))

(declare-fun m!98460 () Bool)

(assert (=> bs!10788 m!98460))

(declare-fun m!98462 () Bool)

(assert (=> bs!10788 m!98462))

(assert (=> start!10978 d!27039))

(declare-fun d!27041 () Bool)

(declare-fun choose!1435 ((InoxSet A!251) Int) (InoxSet B!543))

(assert (=> d!27041 (= (flatMap!31 lt!31160 f!927) (choose!1435 lt!31160 f!927))))

(declare-fun bs!10790 () Bool)

(assert (= bs!10790 d!27041))

(declare-fun m!98468 () Bool)

(assert (=> bs!10790 m!98468))

(assert (=> b!109267 d!27041))

(declare-fun d!27045 () Bool)

(assert (=> d!27045 (= (flatMap!31 lt!31160 g!9) (choose!1435 lt!31160 g!9))))

(declare-fun bs!10791 () Bool)

(assert (= bs!10791 d!27045))

(declare-fun m!98470 () Bool)

(assert (=> bs!10791 m!98470))

(assert (=> b!109267 d!27045))

(declare-fun d!27047 () Bool)

(assert (=> d!27047 (= (flatMap!31 lt!31161 g!9) (choose!1435 lt!31161 g!9))))

(declare-fun bs!10792 () Bool)

(assert (= bs!10792 d!27047))

(declare-fun m!98472 () Bool)

(assert (=> bs!10792 m!98472))

(assert (=> b!109267 d!27047))

(declare-fun d!27049 () Bool)

(declare-fun res!52466 () Bool)

(declare-fun e!60804 () Bool)

(assert (=> d!27049 (=> res!52466 e!60804)))

(assert (=> d!27049 (= res!52466 ((_ is Nil!1743) (t!21760 lt!31162)))))

(assert (=> d!27049 (= (forall!270 (t!21760 lt!31162) lambda!2416) e!60804)))

(declare-fun b!109285 () Bool)

(declare-fun e!60805 () Bool)

(assert (=> b!109285 (= e!60804 e!60805)))

(declare-fun res!52467 () Bool)

(assert (=> b!109285 (=> (not res!52467) (not e!60805))))

(declare-fun dynLambda!624 (Int A!251) Bool)

(assert (=> b!109285 (= res!52467 (dynLambda!624 lambda!2416 (h!7140 (t!21760 lt!31162))))))

(declare-fun b!109286 () Bool)

(assert (=> b!109286 (= e!60805 (forall!270 (t!21760 (t!21760 lt!31162)) lambda!2416))))

(assert (= (and d!27049 (not res!52466)) b!109285))

(assert (= (and b!109285 res!52467) b!109286))

(declare-fun b_lambda!1301 () Bool)

(assert (=> (not b_lambda!1301) (not b!109285)))

(declare-fun m!98474 () Bool)

(assert (=> b!109285 m!98474))

(declare-fun m!98476 () Bool)

(assert (=> b!109286 m!98476))

(assert (=> b!109267 d!27049))

(declare-fun d!27051 () Bool)

(assert (=> d!27051 (= (flatMap!31 lt!31163 f!927) (choose!1435 lt!31163 f!927))))

(declare-fun bs!10793 () Bool)

(assert (= bs!10793 d!27051))

(declare-fun m!98478 () Bool)

(assert (=> bs!10793 m!98478))

(assert (=> b!109267 d!27051))

(declare-fun d!27053 () Bool)

(assert (=> d!27053 (= (flatMap!31 lt!31163 g!9) (choose!1435 lt!31163 g!9))))

(declare-fun bs!10794 () Bool)

(assert (= bs!10794 d!27053))

(declare-fun m!98480 () Bool)

(assert (=> bs!10794 m!98480))

(assert (=> b!109267 d!27053))

(declare-fun d!27055 () Bool)

(assert (=> d!27055 (= (flatMap!31 lt!31161 f!927) (choose!1435 lt!31161 f!927))))

(declare-fun bs!10795 () Bool)

(assert (= bs!10795 d!27055))

(declare-fun m!98482 () Bool)

(assert (=> bs!10795 m!98482))

(assert (=> b!109267 d!27055))

(declare-fun d!27057 () Bool)

(assert (=> d!27057 (= ((_ map or) (flatMap!31 lt!31163 f!927) (flatMap!31 lt!31161 f!927)) (flatMap!31 ((_ map or) lt!31163 lt!31161) f!927))))

(declare-fun lt!31179 () Unit!1192)

(declare-fun choose!1436 ((InoxSet A!251) (InoxSet A!251) Int) Unit!1192)

(assert (=> d!27057 (= lt!31179 (choose!1436 lt!31163 lt!31161 f!927))))

(assert (=> d!27057 (= (lemmaFlatMapAssociative!18 lt!31163 lt!31161 f!927) lt!31179)))

(declare-fun bs!10797 () Bool)

(assert (= bs!10797 d!27057))

(assert (=> bs!10797 m!98426))

(assert (=> bs!10797 m!98436))

(declare-fun m!98488 () Bool)

(assert (=> bs!10797 m!98488))

(declare-fun m!98490 () Bool)

(assert (=> bs!10797 m!98490))

(assert (=> b!109267 d!27057))

(declare-fun d!27061 () Bool)

(assert (=> d!27061 (= ((_ map or) (flatMap!31 lt!31163 g!9) (flatMap!31 lt!31161 g!9)) (flatMap!31 ((_ map or) lt!31163 lt!31161) g!9))))

(declare-fun lt!31180 () Unit!1192)

(assert (=> d!27061 (= lt!31180 (choose!1436 lt!31163 lt!31161 g!9))))

(assert (=> d!27061 (= (lemmaFlatMapAssociative!18 lt!31163 lt!31161 g!9) lt!31180)))

(declare-fun bs!10798 () Bool)

(assert (= bs!10798 d!27061))

(assert (=> bs!10798 m!98434))

(assert (=> bs!10798 m!98438))

(declare-fun m!98492 () Bool)

(assert (=> bs!10798 m!98492))

(declare-fun m!98494 () Bool)

(assert (=> bs!10798 m!98494))

(assert (=> b!109267 d!27061))

(declare-fun d!27063 () Bool)

(declare-fun c!26122 () Bool)

(assert (=> d!27063 (= c!26122 ((_ is Nil!1743) (t!21760 lt!31162)))))

(declare-fun e!60808 () (InoxSet A!251))

(assert (=> d!27063 (= (content!171 (t!21760 lt!31162)) e!60808)))

(declare-fun b!109291 () Bool)

(assert (=> b!109291 (= e!60808 ((as const (Array A!251 Bool)) false))))

(declare-fun b!109292 () Bool)

(assert (=> b!109292 (= e!60808 ((_ map or) (store ((as const (Array A!251 Bool)) false) (h!7140 (t!21760 lt!31162)) true) (content!171 (t!21760 (t!21760 lt!31162)))))))

(assert (= (and d!27063 c!26122) b!109291))

(assert (= (and d!27063 (not c!26122)) b!109292))

(declare-fun m!98500 () Bool)

(assert (=> b!109292 m!98500))

(declare-fun m!98502 () Bool)

(assert (=> b!109292 m!98502))

(assert (=> b!109268 d!27063))

(declare-fun condSetEmpty!1422 () Bool)

(assert (=> setNonEmpty!1419 (= condSetEmpty!1422 (= setRest!1419 ((as const (Array A!251 Bool)) false)))))

(declare-fun setRes!1422 () Bool)

(assert (=> setNonEmpty!1419 (= tp!59269 setRes!1422)))

(declare-fun setIsEmpty!1422 () Bool)

(assert (=> setIsEmpty!1422 setRes!1422))

(declare-fun setNonEmpty!1422 () Bool)

(declare-fun tp!59273 () Bool)

(assert (=> setNonEmpty!1422 (= setRes!1422 (and tp!59273 tp_is_empty!841))))

(declare-fun setElem!1422 () A!251)

(declare-fun setRest!1422 () (InoxSet A!251))

(assert (=> setNonEmpty!1422 (= setRest!1419 ((_ map or) (store ((as const (Array A!251 Bool)) false) setElem!1422 true) setRest!1422))))

(assert (= (and setNonEmpty!1419 condSetEmpty!1422) setIsEmpty!1422))

(assert (= (and setNonEmpty!1419 (not condSetEmpty!1422)) setNonEmpty!1422))

(declare-fun b_lambda!1303 () Bool)

(assert (= b_lambda!1301 (or start!10978 b_lambda!1303)))

(declare-fun bs!10801 () Bool)

(declare-fun d!27069 () Bool)

(assert (= bs!10801 (and d!27069 start!10978)))

(declare-fun dynLambda!625 (Int A!251) (InoxSet B!543))

(assert (=> bs!10801 (= (dynLambda!624 lambda!2416 (h!7140 (t!21760 lt!31162))) (= (dynLambda!625 f!927 (h!7140 (t!21760 lt!31162))) (dynLambda!625 g!9 (h!7140 (t!21760 lt!31162)))))))

(declare-fun b_lambda!1305 () Bool)

(assert (=> (not b_lambda!1305) (not bs!10801)))

(declare-fun t!21762 () Bool)

(declare-fun tb!3279 () Bool)

(assert (=> (and start!10978 (= f!927 f!927) t!21762) tb!3279))

(assert (=> bs!10801 t!21762))

(declare-fun result!4802 () Bool)

(declare-fun b_and!5023 () Bool)

(assert (= b_and!5019 (and (=> t!21762 result!4802) b_and!5023)))

(declare-fun t!21764 () Bool)

(declare-fun tb!3281 () Bool)

(assert (=> (and start!10978 (= g!9 f!927) t!21764) tb!3281))

(assert (=> bs!10801 t!21764))

(declare-fun result!4804 () Bool)

(declare-fun b_and!5025 () Bool)

(assert (= b_and!5021 (and (=> t!21764 result!4804) b_and!5025)))

(declare-fun b_lambda!1307 () Bool)

(assert (=> (not b_lambda!1307) (not bs!10801)))

(declare-fun tb!3283 () Bool)

(declare-fun t!21766 () Bool)

(assert (=> (and start!10978 (= f!927 g!9) t!21766) tb!3283))

(assert (=> bs!10801 t!21766))

(declare-fun result!4806 () Bool)

(declare-fun b_and!5027 () Bool)

(assert (= b_and!5023 (and (=> t!21766 result!4806) b_and!5027)))

(declare-fun t!21768 () Bool)

(declare-fun tb!3285 () Bool)

(assert (=> (and start!10978 (= g!9 g!9) t!21768) tb!3285))

(assert (=> bs!10801 t!21768))

(declare-fun result!4808 () Bool)

(declare-fun b_and!5029 () Bool)

(assert (= b_and!5025 (and (=> t!21768 result!4808) b_and!5029)))

(declare-fun m!98504 () Bool)

(assert (=> bs!10801 m!98504))

(declare-fun m!98506 () Bool)

(assert (=> bs!10801 m!98506))

(assert (=> b!109285 d!27069))

(check-sat (not d!27045) (not tb!3281) (not b_lambda!1303) (not tb!3285) (not tb!3283) (not setNonEmpty!1422) (not d!27055) (not b_next!3297) b_and!5027 tp_is_empty!841 (not b!109292) (not d!27041) (not b!109286) (not b_lambda!1307) (not d!27047) (not d!27035) (not b!109280) b_and!5029 (not d!27051) (not b_lambda!1305) (not d!27039) (not d!27053) (not d!27057) (not b_next!3299) (not d!27061) (not tb!3279))
(check-sat b_and!5027 b_and!5029 (not b_next!3299) (not b_next!3297))
(get-model)

(declare-fun b_lambda!1317 () Bool)

(assert (= b_lambda!1305 (or (and start!10978 b_free!3297) (and start!10978 b_free!3299 (= g!9 f!927)) b_lambda!1317)))

(declare-fun b_lambda!1319 () Bool)

(assert (= b_lambda!1307 (or (and start!10978 b_free!3297 (= f!927 g!9)) (and start!10978 b_free!3299) b_lambda!1319)))

(check-sat (not d!27045) (not tb!3281) (not b_lambda!1303) (not tb!3285) (not b_lambda!1317) (not tb!3283) (not setNonEmpty!1422) (not d!27055) (not b_next!3297) b_and!5027 tp_is_empty!841 (not b!109292) (not d!27039) (not d!27041) (not b!109286) (not d!27035) (not b!109280) b_and!5029 (not d!27051) (not d!27053) (not d!27057) (not d!27047) (not b_lambda!1319) (not b_next!3299) (not d!27061) (not tb!3279))
(check-sat b_and!5027 b_and!5029 (not b_next!3299) (not b_next!3297))
(get-model)

(declare-fun d!27085 () Bool)

(declare-fun res!52477 () Bool)

(declare-fun e!60818 () Bool)

(assert (=> d!27085 (=> res!52477 e!60818)))

(assert (=> d!27085 (= res!52477 ((_ is Nil!1743) (t!21760 (t!21760 lt!31162))))))

(assert (=> d!27085 (= (forall!270 (t!21760 (t!21760 lt!31162)) lambda!2416) e!60818)))

(declare-fun b!109306 () Bool)

(declare-fun e!60819 () Bool)

(assert (=> b!109306 (= e!60818 e!60819)))

(declare-fun res!52478 () Bool)

(assert (=> b!109306 (=> (not res!52478) (not e!60819))))

(assert (=> b!109306 (= res!52478 (dynLambda!624 lambda!2416 (h!7140 (t!21760 (t!21760 lt!31162)))))))

(declare-fun b!109307 () Bool)

(assert (=> b!109307 (= e!60819 (forall!270 (t!21760 (t!21760 (t!21760 lt!31162))) lambda!2416))))

(assert (= (and d!27085 (not res!52477)) b!109306))

(assert (= (and b!109306 res!52478) b!109307))

(declare-fun b_lambda!1321 () Bool)

(assert (=> (not b_lambda!1321) (not b!109306)))

(declare-fun m!98534 () Bool)

(assert (=> b!109306 m!98534))

(declare-fun m!98536 () Bool)

(assert (=> b!109307 m!98536))

(assert (=> b!109286 d!27085))

(declare-fun d!27087 () Bool)

(assert (=> d!27087 true))

(declare-fun setRes!1428 () Bool)

(assert (=> d!27087 setRes!1428))

(declare-fun condSetEmpty!1428 () Bool)

(declare-fun res!52481 () (InoxSet B!543))

(assert (=> d!27087 (= condSetEmpty!1428 (= res!52481 ((as const (Array B!543 Bool)) false)))))

(assert (=> d!27087 (= (choose!1435 lt!31160 g!9) res!52481)))

(declare-fun setIsEmpty!1428 () Bool)

(assert (=> setIsEmpty!1428 setRes!1428))

(declare-fun setNonEmpty!1428 () Bool)

(declare-fun tp!59279 () Bool)

(declare-fun tp_is_empty!843 () Bool)

(assert (=> setNonEmpty!1428 (= setRes!1428 (and tp!59279 tp_is_empty!843))))

(declare-fun setElem!1428 () B!543)

(declare-fun setRest!1428 () (InoxSet B!543))

(assert (=> setNonEmpty!1428 (= res!52481 ((_ map or) (store ((as const (Array B!543 Bool)) false) setElem!1428 true) setRest!1428))))

(assert (= (and d!27087 condSetEmpty!1428) setIsEmpty!1428))

(assert (= (and d!27087 (not condSetEmpty!1428)) setNonEmpty!1428))

(assert (=> d!27045 d!27087))

(assert (=> d!27061 d!27053))

(assert (=> d!27061 d!27047))

(declare-fun d!27089 () Bool)

(assert (=> d!27089 (= (flatMap!31 ((_ map or) lt!31163 lt!31161) g!9) (choose!1435 ((_ map or) lt!31163 lt!31161) g!9))))

(declare-fun bs!10808 () Bool)

(assert (= bs!10808 d!27089))

(declare-fun m!98538 () Bool)

(assert (=> bs!10808 m!98538))

(assert (=> d!27061 d!27089))

(declare-fun d!27091 () Bool)

(assert (=> d!27091 (= ((_ map or) (flatMap!31 lt!31163 g!9) (flatMap!31 lt!31161 g!9)) (flatMap!31 ((_ map or) lt!31163 lt!31161) g!9))))

(assert (=> d!27091 true))

(declare-fun _$9!100 () Unit!1192)

(assert (=> d!27091 (= (choose!1436 lt!31163 lt!31161 g!9) _$9!100)))

(declare-fun bs!10809 () Bool)

(assert (= bs!10809 d!27091))

(assert (=> bs!10809 m!98434))

(assert (=> bs!10809 m!98438))

(assert (=> bs!10809 m!98492))

(assert (=> d!27061 d!27091))

(declare-fun d!27093 () Bool)

(assert (=> d!27093 true))

(declare-fun setRes!1429 () Bool)

(assert (=> d!27093 setRes!1429))

(declare-fun condSetEmpty!1429 () Bool)

(declare-fun res!52482 () (InoxSet B!543))

(assert (=> d!27093 (= condSetEmpty!1429 (= res!52482 ((as const (Array B!543 Bool)) false)))))

(assert (=> d!27093 (= (choose!1435 lt!31161 f!927) res!52482)))

(declare-fun setIsEmpty!1429 () Bool)

(assert (=> setIsEmpty!1429 setRes!1429))

(declare-fun setNonEmpty!1429 () Bool)

(declare-fun tp!59280 () Bool)

(assert (=> setNonEmpty!1429 (= setRes!1429 (and tp!59280 tp_is_empty!843))))

(declare-fun setElem!1429 () B!543)

(declare-fun setRest!1429 () (InoxSet B!543))

(assert (=> setNonEmpty!1429 (= res!52482 ((_ map or) (store ((as const (Array B!543 Bool)) false) setElem!1429 true) setRest!1429))))

(assert (= (and d!27093 condSetEmpty!1429) setIsEmpty!1429))

(assert (= (and d!27093 (not condSetEmpty!1429)) setNonEmpty!1429))

(assert (=> d!27055 d!27093))

(declare-fun d!27095 () Bool)

(declare-fun c!26123 () Bool)

(assert (=> d!27095 (= c!26123 ((_ is Nil!1743) (t!21760 (t!21760 lt!31162))))))

(declare-fun e!60820 () (InoxSet A!251))

(assert (=> d!27095 (= (content!171 (t!21760 (t!21760 lt!31162))) e!60820)))

(declare-fun b!109308 () Bool)

(assert (=> b!109308 (= e!60820 ((as const (Array A!251 Bool)) false))))

(declare-fun b!109309 () Bool)

(assert (=> b!109309 (= e!60820 ((_ map or) (store ((as const (Array A!251 Bool)) false) (h!7140 (t!21760 (t!21760 lt!31162))) true) (content!171 (t!21760 (t!21760 (t!21760 lt!31162))))))))

(assert (= (and d!27095 c!26123) b!109308))

(assert (= (and d!27095 (not c!26123)) b!109309))

(declare-fun m!98540 () Bool)

(assert (=> b!109309 m!98540))

(declare-fun m!98542 () Bool)

(assert (=> b!109309 m!98542))

(assert (=> b!109292 d!27095))

(declare-fun d!27097 () Bool)

(declare-fun res!52487 () Bool)

(declare-fun e!60825 () Bool)

(assert (=> d!27097 (=> res!52487 e!60825)))

(assert (=> d!27097 (= res!52487 ((_ is Nil!1743) lt!31167))))

(assert (=> d!27097 (= (noDuplicate!10 lt!31167) e!60825)))

(declare-fun b!109314 () Bool)

(declare-fun e!60826 () Bool)

(assert (=> b!109314 (= e!60825 e!60826)))

(declare-fun res!52488 () Bool)

(assert (=> b!109314 (=> (not res!52488) (not e!60826))))

(declare-fun contains!284 (List!1749 A!251) Bool)

(assert (=> b!109314 (= res!52488 (not (contains!284 (t!21760 lt!31167) (h!7140 lt!31167))))))

(declare-fun b!109315 () Bool)

(assert (=> b!109315 (= e!60826 (noDuplicate!10 (t!21760 lt!31167)))))

(assert (= (and d!27097 (not res!52487)) b!109314))

(assert (= (and b!109314 res!52488) b!109315))

(declare-fun m!98544 () Bool)

(assert (=> b!109314 m!98544))

(declare-fun m!98546 () Bool)

(assert (=> b!109315 m!98546))

(assert (=> d!27035 d!27097))

(declare-fun d!27099 () Bool)

(declare-fun e!60831 () Bool)

(assert (=> d!27099 e!60831))

(declare-fun res!52493 () Bool)

(assert (=> d!27099 (=> (not res!52493) (not e!60831))))

(declare-fun res!52494 () List!1749)

(assert (=> d!27099 (= res!52493 (noDuplicate!10 res!52494))))

(declare-fun e!60832 () Bool)

(assert (=> d!27099 e!60832))

(assert (=> d!27099 (= (choose!1433 s!1451) res!52494)))

(declare-fun b!109320 () Bool)

(declare-fun tp!59283 () Bool)

(assert (=> b!109320 (= e!60832 (and tp_is_empty!841 tp!59283))))

(declare-fun b!109321 () Bool)

(assert (=> b!109321 (= e!60831 (= (content!171 res!52494) s!1451))))

(assert (= (and d!27099 ((_ is Cons!1743) res!52494)) b!109320))

(assert (= (and d!27099 res!52493) b!109321))

(declare-fun m!98548 () Bool)

(assert (=> d!27099 m!98548))

(declare-fun m!98550 () Bool)

(assert (=> b!109321 m!98550))

(assert (=> d!27035 d!27099))

(declare-fun d!27101 () Bool)

(assert (=> d!27101 true))

(declare-fun setRes!1430 () Bool)

(assert (=> d!27101 setRes!1430))

(declare-fun condSetEmpty!1430 () Bool)

(declare-fun res!52495 () (InoxSet B!543))

(assert (=> d!27101 (= condSetEmpty!1430 (= res!52495 ((as const (Array B!543 Bool)) false)))))

(assert (=> d!27101 (= (choose!1435 lt!31160 f!927) res!52495)))

(declare-fun setIsEmpty!1430 () Bool)

(assert (=> setIsEmpty!1430 setRes!1430))

(declare-fun setNonEmpty!1430 () Bool)

(declare-fun tp!59284 () Bool)

(assert (=> setNonEmpty!1430 (= setRes!1430 (and tp!59284 tp_is_empty!843))))

(declare-fun setElem!1430 () B!543)

(declare-fun setRest!1430 () (InoxSet B!543))

(assert (=> setNonEmpty!1430 (= res!52495 ((_ map or) (store ((as const (Array B!543 Bool)) false) setElem!1430 true) setRest!1430))))

(assert (= (and d!27101 condSetEmpty!1430) setIsEmpty!1430))

(assert (= (and d!27101 (not condSetEmpty!1430)) setNonEmpty!1430))

(assert (=> d!27041 d!27101))

(declare-fun d!27103 () Bool)

(assert (=> d!27103 true))

(declare-fun setRes!1431 () Bool)

(assert (=> d!27103 setRes!1431))

(declare-fun condSetEmpty!1431 () Bool)

(declare-fun res!52496 () (InoxSet B!543))

(assert (=> d!27103 (= condSetEmpty!1431 (= res!52496 ((as const (Array B!543 Bool)) false)))))

(assert (=> d!27103 (= (choose!1435 lt!31161 g!9) res!52496)))

(declare-fun setIsEmpty!1431 () Bool)

(assert (=> setIsEmpty!1431 setRes!1431))

(declare-fun setNonEmpty!1431 () Bool)

(declare-fun tp!59285 () Bool)

(assert (=> setNonEmpty!1431 (= setRes!1431 (and tp!59285 tp_is_empty!843))))

(declare-fun setElem!1431 () B!543)

(declare-fun setRest!1431 () (InoxSet B!543))

(assert (=> setNonEmpty!1431 (= res!52496 ((_ map or) (store ((as const (Array B!543 Bool)) false) setElem!1431 true) setRest!1431))))

(assert (= (and d!27103 condSetEmpty!1431) setIsEmpty!1431))

(assert (= (and d!27103 (not condSetEmpty!1431)) setNonEmpty!1431))

(assert (=> d!27047 d!27103))

(declare-fun d!27105 () Bool)

(declare-fun res!52497 () Bool)

(declare-fun e!60833 () Bool)

(assert (=> d!27105 (=> res!52497 e!60833)))

(assert (=> d!27105 (= res!52497 ((_ is Nil!1743) (toList!228 s!1451)))))

(assert (=> d!27105 (= (forall!270 (toList!228 s!1451) lambda!2416) e!60833)))

(declare-fun b!109322 () Bool)

(declare-fun e!60834 () Bool)

(assert (=> b!109322 (= e!60833 e!60834)))

(declare-fun res!52498 () Bool)

(assert (=> b!109322 (=> (not res!52498) (not e!60834))))

(assert (=> b!109322 (= res!52498 (dynLambda!624 lambda!2416 (h!7140 (toList!228 s!1451))))))

(declare-fun b!109323 () Bool)

(assert (=> b!109323 (= e!60834 (forall!270 (t!21760 (toList!228 s!1451)) lambda!2416))))

(assert (= (and d!27105 (not res!52497)) b!109322))

(assert (= (and b!109322 res!52498) b!109323))

(declare-fun b_lambda!1323 () Bool)

(assert (=> (not b_lambda!1323) (not b!109322)))

(declare-fun m!98552 () Bool)

(assert (=> b!109322 m!98552))

(declare-fun m!98554 () Bool)

(assert (=> b!109323 m!98554))

(assert (=> d!27039 d!27105))

(assert (=> d!27039 d!27035))

(declare-fun d!27107 () Bool)

(declare-fun res!52501 () Bool)

(assert (=> d!27107 (= res!52501 (forall!270 (toList!228 s!1451) lambda!2416))))

(assert (=> d!27107 true))

(assert (=> d!27107 (= (choose!1434 s!1451 lambda!2416) res!52501)))

(declare-fun bs!10810 () Bool)

(assert (= bs!10810 d!27107))

(assert (=> bs!10810 m!98448))

(assert (=> bs!10810 m!98448))

(assert (=> bs!10810 m!98460))

(assert (=> d!27039 d!27107))

(declare-fun d!27109 () Bool)

(assert (=> d!27109 true))

(declare-fun setRes!1432 () Bool)

(assert (=> d!27109 setRes!1432))

(declare-fun condSetEmpty!1432 () Bool)

(declare-fun res!52502 () (InoxSet B!543))

(assert (=> d!27109 (= condSetEmpty!1432 (= res!52502 ((as const (Array B!543 Bool)) false)))))

(assert (=> d!27109 (= (choose!1435 lt!31163 f!927) res!52502)))

(declare-fun setIsEmpty!1432 () Bool)

(assert (=> setIsEmpty!1432 setRes!1432))

(declare-fun setNonEmpty!1432 () Bool)

(declare-fun tp!59286 () Bool)

(assert (=> setNonEmpty!1432 (= setRes!1432 (and tp!59286 tp_is_empty!843))))

(declare-fun setElem!1432 () B!543)

(declare-fun setRest!1432 () (InoxSet B!543))

(assert (=> setNonEmpty!1432 (= res!52502 ((_ map or) (store ((as const (Array B!543 Bool)) false) setElem!1432 true) setRest!1432))))

(assert (= (and d!27109 condSetEmpty!1432) setIsEmpty!1432))

(assert (= (and d!27109 (not condSetEmpty!1432)) setNonEmpty!1432))

(assert (=> d!27051 d!27109))

(assert (=> d!27057 d!27051))

(assert (=> d!27057 d!27055))

(declare-fun d!27111 () Bool)

(assert (=> d!27111 (= (flatMap!31 ((_ map or) lt!31163 lt!31161) f!927) (choose!1435 ((_ map or) lt!31163 lt!31161) f!927))))

(declare-fun bs!10811 () Bool)

(assert (= bs!10811 d!27111))

(declare-fun m!98556 () Bool)

(assert (=> bs!10811 m!98556))

(assert (=> d!27057 d!27111))

(declare-fun d!27113 () Bool)

(assert (=> d!27113 (= ((_ map or) (flatMap!31 lt!31163 f!927) (flatMap!31 lt!31161 f!927)) (flatMap!31 ((_ map or) lt!31163 lt!31161) f!927))))

(assert (=> d!27113 true))

(declare-fun _$9!101 () Unit!1192)

(assert (=> d!27113 (= (choose!1436 lt!31163 lt!31161 f!927) _$9!101)))

(declare-fun bs!10812 () Bool)

(assert (= bs!10812 d!27113))

(assert (=> bs!10812 m!98426))

(assert (=> bs!10812 m!98436))

(assert (=> bs!10812 m!98488))

(assert (=> d!27057 d!27113))

(declare-fun d!27115 () Bool)

(declare-fun c!26124 () Bool)

(assert (=> d!27115 (= c!26124 ((_ is Nil!1743) lt!31167))))

(declare-fun e!60835 () (InoxSet A!251))

(assert (=> d!27115 (= (content!171 lt!31167) e!60835)))

(declare-fun b!109324 () Bool)

(assert (=> b!109324 (= e!60835 ((as const (Array A!251 Bool)) false))))

(declare-fun b!109325 () Bool)

(assert (=> b!109325 (= e!60835 ((_ map or) (store ((as const (Array A!251 Bool)) false) (h!7140 lt!31167) true) (content!171 (t!21760 lt!31167))))))

(assert (= (and d!27115 c!26124) b!109324))

(assert (= (and d!27115 (not c!26124)) b!109325))

(declare-fun m!98558 () Bool)

(assert (=> b!109325 m!98558))

(declare-fun m!98560 () Bool)

(assert (=> b!109325 m!98560))

(assert (=> b!109280 d!27115))

(declare-fun d!27117 () Bool)

(assert (=> d!27117 true))

(declare-fun setRes!1433 () Bool)

(assert (=> d!27117 setRes!1433))

(declare-fun condSetEmpty!1433 () Bool)

(declare-fun res!52503 () (InoxSet B!543))

(assert (=> d!27117 (= condSetEmpty!1433 (= res!52503 ((as const (Array B!543 Bool)) false)))))

(assert (=> d!27117 (= (choose!1435 lt!31163 g!9) res!52503)))

(declare-fun setIsEmpty!1433 () Bool)

(assert (=> setIsEmpty!1433 setRes!1433))

(declare-fun setNonEmpty!1433 () Bool)

(declare-fun tp!59287 () Bool)

(assert (=> setNonEmpty!1433 (= setRes!1433 (and tp!59287 tp_is_empty!843))))

(declare-fun setElem!1433 () B!543)

(declare-fun setRest!1433 () (InoxSet B!543))

(assert (=> setNonEmpty!1433 (= res!52503 ((_ map or) (store ((as const (Array B!543 Bool)) false) setElem!1433 true) setRest!1433))))

(assert (= (and d!27117 condSetEmpty!1433) setIsEmpty!1433))

(assert (= (and d!27117 (not condSetEmpty!1433)) setNonEmpty!1433))

(assert (=> d!27053 d!27117))

(declare-fun condSetEmpty!1436 () Bool)

(assert (=> tb!3285 (= condSetEmpty!1436 (= (dynLambda!625 g!9 (h!7140 (t!21760 lt!31162))) ((as const (Array B!543 Bool)) false)))))

(declare-fun setRes!1436 () Bool)

(assert (=> tb!3285 (= result!4808 setRes!1436)))

(declare-fun setIsEmpty!1436 () Bool)

(assert (=> setIsEmpty!1436 setRes!1436))

(declare-fun setNonEmpty!1436 () Bool)

(declare-fun tp!59290 () Bool)

(assert (=> setNonEmpty!1436 (= setRes!1436 (and tp!59290 tp_is_empty!843))))

(declare-fun setRest!1436 () (InoxSet B!543))

(declare-fun setElem!1436 () B!543)

(assert (=> setNonEmpty!1436 (= (dynLambda!625 g!9 (h!7140 (t!21760 lt!31162))) ((_ map or) (store ((as const (Array B!543 Bool)) false) setElem!1436 true) setRest!1436))))

(assert (= (and tb!3285 condSetEmpty!1436) setIsEmpty!1436))

(assert (= (and tb!3285 (not condSetEmpty!1436)) setNonEmpty!1436))

(assert (= result!4806 result!4808))

(declare-fun condSetEmpty!1437 () Bool)

(assert (=> tb!3281 (= condSetEmpty!1437 (= (dynLambda!625 f!927 (h!7140 (t!21760 lt!31162))) ((as const (Array B!543 Bool)) false)))))

(declare-fun setRes!1437 () Bool)

(assert (=> tb!3281 (= result!4804 setRes!1437)))

(declare-fun setIsEmpty!1437 () Bool)

(assert (=> setIsEmpty!1437 setRes!1437))

(declare-fun setNonEmpty!1437 () Bool)

(declare-fun tp!59291 () Bool)

(assert (=> setNonEmpty!1437 (= setRes!1437 (and tp!59291 tp_is_empty!843))))

(declare-fun setRest!1437 () (InoxSet B!543))

(declare-fun setElem!1437 () B!543)

(assert (=> setNonEmpty!1437 (= (dynLambda!625 f!927 (h!7140 (t!21760 lt!31162))) ((_ map or) (store ((as const (Array B!543 Bool)) false) setElem!1437 true) setRest!1437))))

(assert (= (and tb!3281 condSetEmpty!1437) setIsEmpty!1437))

(assert (= (and tb!3281 (not condSetEmpty!1437)) setNonEmpty!1437))

(declare-fun condSetEmpty!1438 () Bool)

(assert (=> setNonEmpty!1422 (= condSetEmpty!1438 (= setRest!1422 ((as const (Array A!251 Bool)) false)))))

(declare-fun setRes!1438 () Bool)

(assert (=> setNonEmpty!1422 (= tp!59273 setRes!1438)))

(declare-fun setIsEmpty!1438 () Bool)

(assert (=> setIsEmpty!1438 setRes!1438))

(declare-fun setNonEmpty!1438 () Bool)

(declare-fun tp!59292 () Bool)

(assert (=> setNonEmpty!1438 (= setRes!1438 (and tp!59292 tp_is_empty!841))))

(declare-fun setElem!1438 () A!251)

(declare-fun setRest!1438 () (InoxSet A!251))

(assert (=> setNonEmpty!1438 (= setRest!1422 ((_ map or) (store ((as const (Array A!251 Bool)) false) setElem!1438 true) setRest!1438))))

(assert (= (and setNonEmpty!1422 condSetEmpty!1438) setIsEmpty!1438))

(assert (= (and setNonEmpty!1422 (not condSetEmpty!1438)) setNonEmpty!1438))

(assert (= result!4802 result!4804))

(declare-fun b_lambda!1325 () Bool)

(assert (= b_lambda!1323 (or start!10978 b_lambda!1325)))

(declare-fun bs!10813 () Bool)

(declare-fun d!27119 () Bool)

(assert (= bs!10813 (and d!27119 start!10978)))

(assert (=> bs!10813 (= (dynLambda!624 lambda!2416 (h!7140 (toList!228 s!1451))) (= (dynLambda!625 f!927 (h!7140 (toList!228 s!1451))) (dynLambda!625 g!9 (h!7140 (toList!228 s!1451)))))))

(declare-fun b_lambda!1329 () Bool)

(assert (=> (not b_lambda!1329) (not bs!10813)))

(declare-fun t!21778 () Bool)

(declare-fun tb!3295 () Bool)

(assert (=> (and start!10978 (= f!927 f!927) t!21778) tb!3295))

(assert (=> bs!10813 t!21778))

(declare-fun result!4822 () Bool)

(declare-fun b_and!5039 () Bool)

(assert (= b_and!5027 (and (=> t!21778 result!4822) b_and!5039)))

(declare-fun tb!3297 () Bool)

(declare-fun t!21780 () Bool)

(assert (=> (and start!10978 (= g!9 f!927) t!21780) tb!3297))

(assert (=> bs!10813 t!21780))

(declare-fun result!4824 () Bool)

(declare-fun b_and!5041 () Bool)

(assert (= b_and!5029 (and (=> t!21780 result!4824) b_and!5041)))

(declare-fun b_lambda!1335 () Bool)

(assert (=> (not b_lambda!1335) (not bs!10813)))

(declare-fun tb!3299 () Bool)

(declare-fun t!21782 () Bool)

(assert (=> (and start!10978 (= f!927 g!9) t!21782) tb!3299))

(assert (=> bs!10813 t!21782))

(declare-fun result!4826 () Bool)

(declare-fun b_and!5043 () Bool)

(assert (= b_and!5039 (and (=> t!21782 result!4826) b_and!5043)))

(declare-fun t!21784 () Bool)

(declare-fun tb!3301 () Bool)

(assert (=> (and start!10978 (= g!9 g!9) t!21784) tb!3301))

(assert (=> bs!10813 t!21784))

(declare-fun result!4828 () Bool)

(declare-fun b_and!5045 () Bool)

(assert (= b_and!5041 (and (=> t!21784 result!4828) b_and!5045)))

(declare-fun m!98562 () Bool)

(assert (=> bs!10813 m!98562))

(declare-fun m!98564 () Bool)

(assert (=> bs!10813 m!98564))

(assert (=> b!109322 d!27119))

(declare-fun b_lambda!1327 () Bool)

(assert (= b_lambda!1321 (or start!10978 b_lambda!1327)))

(declare-fun bs!10814 () Bool)

(declare-fun d!27121 () Bool)

(assert (= bs!10814 (and d!27121 start!10978)))

(assert (=> bs!10814 (= (dynLambda!624 lambda!2416 (h!7140 (t!21760 (t!21760 lt!31162)))) (= (dynLambda!625 f!927 (h!7140 (t!21760 (t!21760 lt!31162)))) (dynLambda!625 g!9 (h!7140 (t!21760 (t!21760 lt!31162))))))))

(declare-fun b_lambda!1337 () Bool)

(assert (=> (not b_lambda!1337) (not bs!10814)))

(declare-fun t!21786 () Bool)

(declare-fun tb!3303 () Bool)

(assert (=> (and start!10978 (= f!927 f!927) t!21786) tb!3303))

(assert (=> bs!10814 t!21786))

(declare-fun result!4830 () Bool)

(declare-fun b_and!5047 () Bool)

(assert (= b_and!5043 (and (=> t!21786 result!4830) b_and!5047)))

(declare-fun tb!3305 () Bool)

(declare-fun t!21788 () Bool)

(assert (=> (and start!10978 (= g!9 f!927) t!21788) tb!3305))

(assert (=> bs!10814 t!21788))

(declare-fun result!4832 () Bool)

(declare-fun b_and!5049 () Bool)

(assert (= b_and!5045 (and (=> t!21788 result!4832) b_and!5049)))

(declare-fun b_lambda!1339 () Bool)

(assert (=> (not b_lambda!1339) (not bs!10814)))

(declare-fun t!21790 () Bool)

(declare-fun tb!3307 () Bool)

(assert (=> (and start!10978 (= f!927 g!9) t!21790) tb!3307))

(assert (=> bs!10814 t!21790))

(declare-fun result!4834 () Bool)

(declare-fun b_and!5051 () Bool)

(assert (= b_and!5047 (and (=> t!21790 result!4834) b_and!5051)))

(declare-fun t!21792 () Bool)

(declare-fun tb!3309 () Bool)

(assert (=> (and start!10978 (= g!9 g!9) t!21792) tb!3309))

(assert (=> bs!10814 t!21792))

(declare-fun result!4836 () Bool)

(declare-fun b_and!5053 () Bool)

(assert (= b_and!5049 (and (=> t!21792 result!4836) b_and!5053)))

(declare-fun m!98566 () Bool)

(assert (=> bs!10814 m!98566))

(declare-fun m!98568 () Bool)

(assert (=> bs!10814 m!98568))

(assert (=> b!109306 d!27121))

(check-sat (not d!27091) (not setNonEmpty!1430) (not d!27089) (not tb!3305) (not setNonEmpty!1431) (not b_next!3297) b_and!5051 (not setNonEmpty!1433) (not b_lambda!1319) (not b_lambda!1329) (not setNonEmpty!1432) (not tb!3301) (not tb!3307) (not tb!3297) (not b!109314) (not b_lambda!1303) (not b!109321) (not setNonEmpty!1429) (not b!109315) (not d!27113) (not b_lambda!1327) (not b_lambda!1337) (not b_lambda!1317) (not b!109323) (not d!27111) (not b_lambda!1325) (not tb!3295) (not tb!3299) tp_is_empty!843 tp_is_empty!841 (not b!109307) (not b!109309) (not setNonEmpty!1438) (not d!27099) (not setNonEmpty!1436) (not b_lambda!1335) (not b!109325) (not setNonEmpty!1428) (not tb!3303) (not tb!3309) (not setNonEmpty!1437) (not b!109320) (not b_lambda!1339) b_and!5053 (not b_next!3299) (not d!27107))
(check-sat b_and!5051 b_and!5053 (not b_next!3299) (not b_next!3297))
