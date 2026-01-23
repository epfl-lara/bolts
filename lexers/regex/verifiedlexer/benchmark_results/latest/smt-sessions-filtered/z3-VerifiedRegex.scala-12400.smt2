; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!693546 () Bool)

(assert start!693546)

(declare-fun b_free!133705 () Bool)

(declare-fun b_next!134495 () Bool)

(assert (=> start!693546 (= b_free!133705 (not b_next!134495))))

(declare-fun tp!1961181 () Bool)

(declare-fun b_and!350801 () Bool)

(assert (=> start!693546 (= tp!1961181 b_and!350801)))

(declare-fun setNonEmpty!51060 () Bool)

(declare-fun setRes!51061 () Bool)

(declare-fun tp!1961178 () Bool)

(declare-fun tp_is_empty!45375 () Bool)

(assert (=> setNonEmpty!51060 (= setRes!51061 (and tp!1961178 tp_is_empty!45375))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((A!611 0))(
  ( (A!612 (val!27937 Int)) )
))
(declare-fun s1!414 () (InoxSet A!611))

(declare-fun setElem!51060 () A!611)

(declare-fun setRest!51061 () (InoxSet A!611))

(assert (=> setNonEmpty!51060 (= s1!414 ((_ map or) (store ((as const (Array A!611 Bool)) false) setElem!51060 true) setRest!51061))))

(declare-fun b!7122212 () Bool)

(declare-fun e!4279644 () Bool)

(declare-fun e!4279647 () Bool)

(assert (=> b!7122212 (= e!4279644 e!4279647)))

(declare-fun res!2905734 () Bool)

(assert (=> b!7122212 (=> (not res!2905734) (not e!4279647))))

(declare-datatypes ((B!3269 0))(
  ( (B!3270 (val!27938 Int)) )
))
(declare-datatypes ((List!69004 0))(
  ( (Nil!68880) (Cons!68880 (h!75328 B!3269) (t!382911 List!69004)) )
))
(declare-fun l2!745 () List!69004)

(declare-fun lt!2562066 () (InoxSet B!3269))

(declare-fun toList!11107 ((InoxSet B!3269)) List!69004)

(assert (=> b!7122212 (= res!2905734 (= l2!745 (toList!11107 lt!2562066)))))

(declare-fun s2!385 () (InoxSet A!611))

(declare-fun f!567 () Int)

(declare-fun map!16404 ((InoxSet A!611) Int) (InoxSet B!3269))

(assert (=> b!7122212 (= lt!2562066 (map!16404 ((_ map or) s1!414 s2!385) f!567))))

(declare-fun b!7122213 () Bool)

(declare-fun res!2905735 () Bool)

(assert (=> b!7122213 (=> (not res!2905735) (not e!4279647))))

(declare-fun l1!756 () List!69004)

(get-info :version)

(assert (=> b!7122213 (= res!2905735 ((_ is Cons!68880) l1!756))))

(declare-fun res!2905733 () Bool)

(assert (=> start!693546 (=> (not res!2905733) (not e!4279644))))

(declare-fun lt!2562067 () List!69004)

(declare-fun subseq!743 (List!69004 List!69004) Bool)

(assert (=> start!693546 (= res!2905733 (subseq!743 l1!756 lt!2562067))))

(declare-fun lt!2562065 () (InoxSet B!3269))

(assert (=> start!693546 (= lt!2562067 (toList!11107 lt!2562065))))

(assert (=> start!693546 (= lt!2562065 ((_ map or) (map!16404 s1!414 f!567) (map!16404 s2!385 f!567)))))

(assert (=> start!693546 e!4279644))

(declare-fun e!4279648 () Bool)

(assert (=> start!693546 e!4279648))

(declare-fun condSetEmpty!51060 () Bool)

(assert (=> start!693546 (= condSetEmpty!51060 (= s1!414 ((as const (Array A!611 Bool)) false)))))

(assert (=> start!693546 setRes!51061))

(declare-fun condSetEmpty!51061 () Bool)

(assert (=> start!693546 (= condSetEmpty!51061 (= s2!385 ((as const (Array A!611 Bool)) false)))))

(declare-fun setRes!51060 () Bool)

(assert (=> start!693546 setRes!51060))

(declare-fun e!4279646 () Bool)

(assert (=> start!693546 e!4279646))

(assert (=> start!693546 tp!1961181))

(declare-fun setIsEmpty!51060 () Bool)

(assert (=> setIsEmpty!51060 setRes!51061))

(declare-fun b!7122214 () Bool)

(declare-fun tp_is_empty!45373 () Bool)

(declare-fun tp!1961180 () Bool)

(assert (=> b!7122214 (= e!4279648 (and tp_is_empty!45373 tp!1961180))))

(declare-fun b!7122215 () Bool)

(declare-fun e!4279645 () Bool)

(declare-fun size!41438 (List!69004) Int)

(assert (=> b!7122215 (= e!4279645 (< (size!41438 (t!382911 l1!756)) (size!41438 l1!756)))))

(declare-fun b!7122216 () Bool)

(assert (=> b!7122216 (= e!4279647 (not e!4279645))))

(declare-fun res!2905732 () Bool)

(assert (=> b!7122216 (=> res!2905732 e!4279645)))

(assert (=> b!7122216 (= res!2905732 (not (subseq!743 (t!382911 l1!756) lt!2562067)))))

(declare-datatypes ((Unit!162715 0))(
  ( (Unit!162716) )
))
(declare-fun lt!2562068 () Unit!162715)

(declare-fun subseqTail!24 (List!69004 List!69004) Unit!162715)

(assert (=> b!7122216 (= lt!2562068 (subseqTail!24 l1!756 lt!2562067))))

(assert (=> b!7122216 (= (select lt!2562065 (h!75328 l1!756)) (select lt!2562066 (h!75328 l1!756)))))

(declare-fun lt!2562069 () Unit!162715)

(declare-fun lemmaMapAssociativeElem!10 ((InoxSet A!611) (InoxSet A!611) Int B!3269) Unit!162715)

(assert (=> b!7122216 (= lt!2562069 (lemmaMapAssociativeElem!10 s1!414 s2!385 f!567 (h!75328 l1!756)))))

(declare-fun setNonEmpty!51061 () Bool)

(declare-fun tp!1961177 () Bool)

(assert (=> setNonEmpty!51061 (= setRes!51060 (and tp!1961177 tp_is_empty!45375))))

(declare-fun setElem!51061 () A!611)

(declare-fun setRest!51060 () (InoxSet A!611))

(assert (=> setNonEmpty!51061 (= s2!385 ((_ map or) (store ((as const (Array A!611 Bool)) false) setElem!51061 true) setRest!51060))))

(declare-fun setIsEmpty!51061 () Bool)

(assert (=> setIsEmpty!51061 setRes!51060))

(declare-fun b!7122217 () Bool)

(declare-fun tp!1961179 () Bool)

(assert (=> b!7122217 (= e!4279646 (and tp_is_empty!45373 tp!1961179))))

(assert (= (and start!693546 res!2905733) b!7122212))

(assert (= (and b!7122212 res!2905734) b!7122213))

(assert (= (and b!7122213 res!2905735) b!7122216))

(assert (= (and b!7122216 (not res!2905732)) b!7122215))

(assert (= (and start!693546 ((_ is Cons!68880) l1!756)) b!7122214))

(assert (= (and start!693546 condSetEmpty!51060) setIsEmpty!51060))

(assert (= (and start!693546 (not condSetEmpty!51060)) setNonEmpty!51060))

(assert (= (and start!693546 condSetEmpty!51061) setIsEmpty!51061))

(assert (= (and start!693546 (not condSetEmpty!51061)) setNonEmpty!51061))

(assert (= (and start!693546 ((_ is Cons!68880) l2!745)) b!7122217))

(declare-fun m!7839448 () Bool)

(assert (=> b!7122212 m!7839448))

(declare-fun m!7839450 () Bool)

(assert (=> b!7122212 m!7839450))

(declare-fun m!7839452 () Bool)

(assert (=> start!693546 m!7839452))

(declare-fun m!7839454 () Bool)

(assert (=> start!693546 m!7839454))

(declare-fun m!7839456 () Bool)

(assert (=> start!693546 m!7839456))

(declare-fun m!7839458 () Bool)

(assert (=> start!693546 m!7839458))

(declare-fun m!7839460 () Bool)

(assert (=> b!7122215 m!7839460))

(declare-fun m!7839462 () Bool)

(assert (=> b!7122215 m!7839462))

(declare-fun m!7839464 () Bool)

(assert (=> b!7122216 m!7839464))

(declare-fun m!7839466 () Bool)

(assert (=> b!7122216 m!7839466))

(declare-fun m!7839468 () Bool)

(assert (=> b!7122216 m!7839468))

(declare-fun m!7839470 () Bool)

(assert (=> b!7122216 m!7839470))

(declare-fun m!7839472 () Bool)

(assert (=> b!7122216 m!7839472))

(check-sat b_and!350801 (not b!7122217) (not setNonEmpty!51061) (not b!7122212) tp_is_empty!45375 tp_is_empty!45373 (not b_next!134495) (not start!693546) (not b!7122216) (not b!7122215) (not b!7122214) (not setNonEmpty!51060))
(check-sat b_and!350801 (not b_next!134495))
(get-model)

(declare-fun d!2222501 () Bool)

(declare-fun e!4279662 () Bool)

(assert (=> d!2222501 e!4279662))

(declare-fun res!2905749 () Bool)

(assert (=> d!2222501 (=> (not res!2905749) (not e!4279662))))

(declare-fun lt!2562075 () List!69004)

(declare-fun noDuplicate!2788 (List!69004) Bool)

(assert (=> d!2222501 (= res!2905749 (noDuplicate!2788 lt!2562075))))

(declare-fun choose!55000 ((InoxSet B!3269)) List!69004)

(assert (=> d!2222501 (= lt!2562075 (choose!55000 lt!2562066))))

(assert (=> d!2222501 (= (toList!11107 lt!2562066) lt!2562075)))

(declare-fun b!7122231 () Bool)

(declare-fun content!14087 (List!69004) (InoxSet B!3269))

(assert (=> b!7122231 (= e!4279662 (= (content!14087 lt!2562075) lt!2562066))))

(assert (= (and d!2222501 res!2905749) b!7122231))

(declare-fun m!7839482 () Bool)

(assert (=> d!2222501 m!7839482))

(declare-fun m!7839484 () Bool)

(assert (=> d!2222501 m!7839484))

(declare-fun m!7839486 () Bool)

(assert (=> b!7122231 m!7839486))

(assert (=> b!7122212 d!2222501))

(declare-fun d!2222503 () Bool)

(declare-fun choose!55001 ((InoxSet A!611) Int) (InoxSet B!3269))

(assert (=> d!2222503 (= (map!16404 ((_ map or) s1!414 s2!385) f!567) (choose!55001 ((_ map or) s1!414 s2!385) f!567))))

(declare-fun bs!1886044 () Bool)

(assert (= bs!1886044 d!2222503))

(declare-fun m!7839500 () Bool)

(assert (=> bs!1886044 m!7839500))

(assert (=> b!7122212 d!2222503))

(declare-fun b!7122257 () Bool)

(declare-fun e!4279685 () Bool)

(declare-fun e!4279686 () Bool)

(assert (=> b!7122257 (= e!4279685 e!4279686)))

(declare-fun res!2905768 () Bool)

(assert (=> b!7122257 (=> (not res!2905768) (not e!4279686))))

(assert (=> b!7122257 (= res!2905768 ((_ is Cons!68880) lt!2562067))))

(declare-fun b!7122260 () Bool)

(declare-fun e!4279684 () Bool)

(assert (=> b!7122260 (= e!4279684 (subseq!743 l1!756 (t!382911 lt!2562067)))))

(declare-fun d!2222511 () Bool)

(declare-fun res!2905770 () Bool)

(assert (=> d!2222511 (=> res!2905770 e!4279685)))

(assert (=> d!2222511 (= res!2905770 ((_ is Nil!68880) l1!756))))

(assert (=> d!2222511 (= (subseq!743 l1!756 lt!2562067) e!4279685)))

(declare-fun b!7122259 () Bool)

(declare-fun e!4279687 () Bool)

(assert (=> b!7122259 (= e!4279687 (subseq!743 (t!382911 l1!756) (t!382911 lt!2562067)))))

(declare-fun b!7122258 () Bool)

(assert (=> b!7122258 (= e!4279686 e!4279684)))

(declare-fun res!2905769 () Bool)

(assert (=> b!7122258 (=> res!2905769 e!4279684)))

(assert (=> b!7122258 (= res!2905769 e!4279687)))

(declare-fun res!2905767 () Bool)

(assert (=> b!7122258 (=> (not res!2905767) (not e!4279687))))

(assert (=> b!7122258 (= res!2905767 (= (h!75328 l1!756) (h!75328 lt!2562067)))))

(assert (= (and d!2222511 (not res!2905770)) b!7122257))

(assert (= (and b!7122257 res!2905768) b!7122258))

(assert (= (and b!7122258 res!2905767) b!7122259))

(assert (= (and b!7122258 (not res!2905769)) b!7122260))

(declare-fun m!7839508 () Bool)

(assert (=> b!7122260 m!7839508))

(declare-fun m!7839510 () Bool)

(assert (=> b!7122259 m!7839510))

(assert (=> start!693546 d!2222511))

(declare-fun d!2222521 () Bool)

(declare-fun e!4279688 () Bool)

(assert (=> d!2222521 e!4279688))

(declare-fun res!2905771 () Bool)

(assert (=> d!2222521 (=> (not res!2905771) (not e!4279688))))

(declare-fun lt!2562081 () List!69004)

(assert (=> d!2222521 (= res!2905771 (noDuplicate!2788 lt!2562081))))

(assert (=> d!2222521 (= lt!2562081 (choose!55000 lt!2562065))))

(assert (=> d!2222521 (= (toList!11107 lt!2562065) lt!2562081)))

(declare-fun b!7122261 () Bool)

(assert (=> b!7122261 (= e!4279688 (= (content!14087 lt!2562081) lt!2562065))))

(assert (= (and d!2222521 res!2905771) b!7122261))

(declare-fun m!7839512 () Bool)

(assert (=> d!2222521 m!7839512))

(declare-fun m!7839514 () Bool)

(assert (=> d!2222521 m!7839514))

(declare-fun m!7839516 () Bool)

(assert (=> b!7122261 m!7839516))

(assert (=> start!693546 d!2222521))

(declare-fun d!2222523 () Bool)

(assert (=> d!2222523 (= (map!16404 s1!414 f!567) (choose!55001 s1!414 f!567))))

(declare-fun bs!1886046 () Bool)

(assert (= bs!1886046 d!2222523))

(declare-fun m!7839518 () Bool)

(assert (=> bs!1886046 m!7839518))

(assert (=> start!693546 d!2222523))

(declare-fun d!2222525 () Bool)

(assert (=> d!2222525 (= (map!16404 s2!385 f!567) (choose!55001 s2!385 f!567))))

(declare-fun bs!1886047 () Bool)

(assert (= bs!1886047 d!2222525))

(declare-fun m!7839520 () Bool)

(assert (=> bs!1886047 m!7839520))

(assert (=> start!693546 d!2222525))

(declare-fun b!7122262 () Bool)

(declare-fun e!4279690 () Bool)

(declare-fun e!4279691 () Bool)

(assert (=> b!7122262 (= e!4279690 e!4279691)))

(declare-fun res!2905773 () Bool)

(assert (=> b!7122262 (=> (not res!2905773) (not e!4279691))))

(assert (=> b!7122262 (= res!2905773 ((_ is Cons!68880) lt!2562067))))

(declare-fun b!7122265 () Bool)

(declare-fun e!4279689 () Bool)

(assert (=> b!7122265 (= e!4279689 (subseq!743 (t!382911 l1!756) (t!382911 lt!2562067)))))

(declare-fun d!2222527 () Bool)

(declare-fun res!2905775 () Bool)

(assert (=> d!2222527 (=> res!2905775 e!4279690)))

(assert (=> d!2222527 (= res!2905775 ((_ is Nil!68880) (t!382911 l1!756)))))

(assert (=> d!2222527 (= (subseq!743 (t!382911 l1!756) lt!2562067) e!4279690)))

(declare-fun b!7122264 () Bool)

(declare-fun e!4279692 () Bool)

(assert (=> b!7122264 (= e!4279692 (subseq!743 (t!382911 (t!382911 l1!756)) (t!382911 lt!2562067)))))

(declare-fun b!7122263 () Bool)

(assert (=> b!7122263 (= e!4279691 e!4279689)))

(declare-fun res!2905774 () Bool)

(assert (=> b!7122263 (=> res!2905774 e!4279689)))

(assert (=> b!7122263 (= res!2905774 e!4279692)))

(declare-fun res!2905772 () Bool)

(assert (=> b!7122263 (=> (not res!2905772) (not e!4279692))))

(assert (=> b!7122263 (= res!2905772 (= (h!75328 (t!382911 l1!756)) (h!75328 lt!2562067)))))

(assert (= (and d!2222527 (not res!2905775)) b!7122262))

(assert (= (and b!7122262 res!2905773) b!7122263))

(assert (= (and b!7122263 res!2905772) b!7122264))

(assert (= (and b!7122263 (not res!2905774)) b!7122265))

(assert (=> b!7122265 m!7839510))

(declare-fun m!7839522 () Bool)

(assert (=> b!7122264 m!7839522))

(assert (=> b!7122216 d!2222527))

(declare-fun b!7122301 () Bool)

(declare-fun e!4279715 () Bool)

(assert (=> b!7122301 (= e!4279715 (subseq!743 l1!756 lt!2562067))))

(declare-fun call!650748 () Unit!162715)

(declare-fun c!1329025 () Bool)

(declare-fun bm!650743 () Bool)

(assert (=> bm!650743 (= call!650748 (subseqTail!24 (ite c!1329025 l1!756 (t!382911 l1!756)) (t!382911 lt!2562067)))))

(declare-fun b!7122302 () Bool)

(declare-fun e!4279716 () Unit!162715)

(declare-fun e!4279714 () Unit!162715)

(assert (=> b!7122302 (= e!4279716 e!4279714)))

(assert (=> b!7122302 (= c!1329025 (subseq!743 l1!756 (t!382911 lt!2562067)))))

(declare-fun b!7122303 () Bool)

(declare-fun e!4279713 () Unit!162715)

(assert (=> b!7122303 (= e!4279713 call!650748)))

(declare-fun b!7122304 () Bool)

(assert (=> b!7122304 (= e!4279714 call!650748)))

(declare-fun d!2222529 () Bool)

(declare-fun tail!13920 (List!69004) List!69004)

(assert (=> d!2222529 (subseq!743 (tail!13920 l1!756) lt!2562067)))

(declare-fun lt!2562087 () Unit!162715)

(assert (=> d!2222529 (= lt!2562087 e!4279716)))

(declare-fun c!1329026 () Bool)

(assert (=> d!2222529 (= c!1329026 (and ((_ is Cons!68880) l1!756) ((_ is Cons!68880) lt!2562067)))))

(assert (=> d!2222529 e!4279715))

(declare-fun res!2905781 () Bool)

(assert (=> d!2222529 (=> (not res!2905781) (not e!4279715))))

(declare-fun isEmpty!40003 (List!69004) Bool)

(assert (=> d!2222529 (= res!2905781 (not (isEmpty!40003 l1!756)))))

(assert (=> d!2222529 (= (subseqTail!24 l1!756 lt!2562067) lt!2562087)))

(declare-fun b!7122305 () Bool)

(declare-fun c!1329027 () Bool)

(assert (=> b!7122305 (= c!1329027 (not (isEmpty!40003 (t!382911 l1!756))))))

(assert (=> b!7122305 (= e!4279714 e!4279713)))

(declare-fun b!7122306 () Bool)

(declare-fun Unit!162719 () Unit!162715)

(assert (=> b!7122306 (= e!4279716 Unit!162719)))

(declare-fun b!7122307 () Bool)

(declare-fun Unit!162720 () Unit!162715)

(assert (=> b!7122307 (= e!4279713 Unit!162720)))

(assert (= (and d!2222529 res!2905781) b!7122301))

(assert (= (and d!2222529 c!1329026) b!7122302))

(assert (= (and d!2222529 (not c!1329026)) b!7122306))

(assert (= (and b!7122302 c!1329025) b!7122304))

(assert (= (and b!7122302 (not c!1329025)) b!7122305))

(assert (= (and b!7122305 c!1329027) b!7122303))

(assert (= (and b!7122305 (not c!1329027)) b!7122307))

(assert (= (or b!7122304 b!7122303) bm!650743))

(declare-fun m!7839534 () Bool)

(assert (=> d!2222529 m!7839534))

(assert (=> d!2222529 m!7839534))

(declare-fun m!7839536 () Bool)

(assert (=> d!2222529 m!7839536))

(declare-fun m!7839538 () Bool)

(assert (=> d!2222529 m!7839538))

(declare-fun m!7839540 () Bool)

(assert (=> b!7122305 m!7839540))

(assert (=> b!7122302 m!7839508))

(assert (=> b!7122301 m!7839452))

(declare-fun m!7839542 () Bool)

(assert (=> bm!650743 m!7839542))

(assert (=> b!7122216 d!2222529))

(declare-fun d!2222533 () Bool)

(assert (=> d!2222533 (= (select ((_ map or) (map!16404 s1!414 f!567) (map!16404 s2!385 f!567)) (h!75328 l1!756)) (select (map!16404 ((_ map or) s1!414 s2!385) f!567) (h!75328 l1!756)))))

(declare-fun lt!2562093 () Unit!162715)

(declare-fun choose!55002 ((InoxSet A!611) (InoxSet A!611) Int B!3269) Unit!162715)

(assert (=> d!2222533 (= lt!2562093 (choose!55002 s1!414 s2!385 f!567 (h!75328 l1!756)))))

(assert (=> d!2222533 (= (lemmaMapAssociativeElem!10 s1!414 s2!385 f!567 (h!75328 l1!756)) lt!2562093)))

(declare-fun bs!1886049 () Bool)

(assert (= bs!1886049 d!2222533))

(declare-fun m!7839550 () Bool)

(assert (=> bs!1886049 m!7839550))

(assert (=> bs!1886049 m!7839450))

(declare-fun m!7839552 () Bool)

(assert (=> bs!1886049 m!7839552))

(assert (=> bs!1886049 m!7839458))

(declare-fun m!7839554 () Bool)

(assert (=> bs!1886049 m!7839554))

(assert (=> bs!1886049 m!7839456))

(assert (=> b!7122216 d!2222533))

(declare-fun d!2222535 () Bool)

(declare-fun lt!2562096 () Int)

(assert (=> d!2222535 (>= lt!2562096 0)))

(declare-fun e!4279723 () Int)

(assert (=> d!2222535 (= lt!2562096 e!4279723)))

(declare-fun c!1329030 () Bool)

(assert (=> d!2222535 (= c!1329030 ((_ is Nil!68880) (t!382911 l1!756)))))

(assert (=> d!2222535 (= (size!41438 (t!382911 l1!756)) lt!2562096)))

(declare-fun b!7122322 () Bool)

(assert (=> b!7122322 (= e!4279723 0)))

(declare-fun b!7122323 () Bool)

(assert (=> b!7122323 (= e!4279723 (+ 1 (size!41438 (t!382911 (t!382911 l1!756)))))))

(assert (= (and d!2222535 c!1329030) b!7122322))

(assert (= (and d!2222535 (not c!1329030)) b!7122323))

(declare-fun m!7839556 () Bool)

(assert (=> b!7122323 m!7839556))

(assert (=> b!7122215 d!2222535))

(declare-fun d!2222537 () Bool)

(declare-fun lt!2562097 () Int)

(assert (=> d!2222537 (>= lt!2562097 0)))

(declare-fun e!4279724 () Int)

(assert (=> d!2222537 (= lt!2562097 e!4279724)))

(declare-fun c!1329031 () Bool)

(assert (=> d!2222537 (= c!1329031 ((_ is Nil!68880) l1!756))))

(assert (=> d!2222537 (= (size!41438 l1!756) lt!2562097)))

(declare-fun b!7122324 () Bool)

(assert (=> b!7122324 (= e!4279724 0)))

(declare-fun b!7122325 () Bool)

(assert (=> b!7122325 (= e!4279724 (+ 1 (size!41438 (t!382911 l1!756))))))

(assert (= (and d!2222537 c!1329031) b!7122324))

(assert (= (and d!2222537 (not c!1329031)) b!7122325))

(assert (=> b!7122325 m!7839460))

(assert (=> b!7122215 d!2222537))

(declare-fun b!7122330 () Bool)

(declare-fun e!4279727 () Bool)

(declare-fun tp!1961192 () Bool)

(assert (=> b!7122330 (= e!4279727 (and tp_is_empty!45373 tp!1961192))))

(assert (=> b!7122217 (= tp!1961179 e!4279727)))

(assert (= (and b!7122217 ((_ is Cons!68880) (t!382911 l2!745))) b!7122330))

(declare-fun b!7122331 () Bool)

(declare-fun e!4279728 () Bool)

(declare-fun tp!1961193 () Bool)

(assert (=> b!7122331 (= e!4279728 (and tp_is_empty!45373 tp!1961193))))

(assert (=> b!7122214 (= tp!1961180 e!4279728)))

(assert (= (and b!7122214 ((_ is Cons!68880) (t!382911 l1!756))) b!7122331))

(declare-fun condSetEmpty!51068 () Bool)

(assert (=> setNonEmpty!51061 (= condSetEmpty!51068 (= setRest!51060 ((as const (Array A!611 Bool)) false)))))

(declare-fun setRes!51068 () Bool)

(assert (=> setNonEmpty!51061 (= tp!1961177 setRes!51068)))

(declare-fun setIsEmpty!51068 () Bool)

(assert (=> setIsEmpty!51068 setRes!51068))

(declare-fun setNonEmpty!51068 () Bool)

(declare-fun tp!1961196 () Bool)

(assert (=> setNonEmpty!51068 (= setRes!51068 (and tp!1961196 tp_is_empty!45375))))

(declare-fun setElem!51068 () A!611)

(declare-fun setRest!51068 () (InoxSet A!611))

(assert (=> setNonEmpty!51068 (= setRest!51060 ((_ map or) (store ((as const (Array A!611 Bool)) false) setElem!51068 true) setRest!51068))))

(assert (= (and setNonEmpty!51061 condSetEmpty!51068) setIsEmpty!51068))

(assert (= (and setNonEmpty!51061 (not condSetEmpty!51068)) setNonEmpty!51068))

(declare-fun condSetEmpty!51069 () Bool)

(assert (=> setNonEmpty!51060 (= condSetEmpty!51069 (= setRest!51061 ((as const (Array A!611 Bool)) false)))))

(declare-fun setRes!51069 () Bool)

(assert (=> setNonEmpty!51060 (= tp!1961178 setRes!51069)))

(declare-fun setIsEmpty!51069 () Bool)

(assert (=> setIsEmpty!51069 setRes!51069))

(declare-fun setNonEmpty!51069 () Bool)

(declare-fun tp!1961197 () Bool)

(assert (=> setNonEmpty!51069 (= setRes!51069 (and tp!1961197 tp_is_empty!45375))))

(declare-fun setElem!51069 () A!611)

(declare-fun setRest!51069 () (InoxSet A!611))

(assert (=> setNonEmpty!51069 (= setRest!51061 ((_ map or) (store ((as const (Array A!611 Bool)) false) setElem!51069 true) setRest!51069))))

(assert (= (and setNonEmpty!51060 condSetEmpty!51069) setIsEmpty!51069))

(assert (= (and setNonEmpty!51060 (not condSetEmpty!51069)) setNonEmpty!51069))

(check-sat (not b!7122265) (not b!7122261) tp_is_empty!45373 (not b!7122260) (not b!7122325) (not bm!650743) (not b!7122331) (not d!2222523) (not d!2222529) (not setNonEmpty!51069) (not b!7122301) (not b!7122264) b_and!350801 (not setNonEmpty!51068) (not d!2222521) (not b!7122323) (not b!7122305) (not d!2222533) (not b!7122330) (not b!7122231) tp_is_empty!45375 (not b!7122259) (not d!2222525) (not d!2222503) (not b_next!134495) (not b!7122302) (not d!2222501))
(check-sat b_and!350801 (not b_next!134495))
