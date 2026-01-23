; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!693412 () Bool)

(assert start!693412)

(declare-fun b_free!133685 () Bool)

(declare-fun b_next!134475 () Bool)

(assert (=> start!693412 (= b_free!133685 (not b_next!134475))))

(declare-fun tp!1960942 () Bool)

(declare-fun b_and!350781 () Bool)

(assert (=> start!693412 (= tp!1960942 b_and!350781)))

(declare-fun setNonEmpty!50956 () Bool)

(declare-fun setRes!50957 () Bool)

(declare-fun tp!1960944 () Bool)

(declare-fun tp_is_empty!45335 () Bool)

(assert (=> setNonEmpty!50956 (= setRes!50957 (and tp!1960944 tp_is_empty!45335))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((A!591 0))(
  ( (A!592 (val!27917 Int)) )
))
(declare-fun s2!385 () (InoxSet A!591))

(declare-fun setElem!50957 () A!591)

(declare-fun setRest!50956 () (InoxSet A!591))

(assert (=> setNonEmpty!50956 (= s2!385 ((_ map or) (store ((as const (Array A!591 Bool)) false) setElem!50957 true) setRest!50956))))

(declare-fun res!2905411 () Bool)

(declare-fun e!4279215 () Bool)

(assert (=> start!693412 (=> (not res!2905411) (not e!4279215))))

(declare-datatypes ((B!3249 0))(
  ( (B!3250 (val!27918 Int)) )
))
(declare-datatypes ((List!68994 0))(
  ( (Nil!68870) (Cons!68870 (h!75318 B!3249) (t!382901 List!68994)) )
))
(declare-fun l1!756 () List!68994)

(declare-fun lt!2561862 () (InoxSet B!3249))

(declare-fun subseq!733 (List!68994 List!68994) Bool)

(declare-fun toList!11097 ((InoxSet B!3249)) List!68994)

(assert (=> start!693412 (= res!2905411 (subseq!733 l1!756 (toList!11097 lt!2561862)))))

(declare-fun s1!414 () (InoxSet A!591))

(declare-fun f!567 () Int)

(declare-fun map!16389 ((InoxSet A!591) Int) (InoxSet B!3249))

(assert (=> start!693412 (= lt!2561862 ((_ map or) (map!16389 s1!414 f!567) (map!16389 s2!385 f!567)))))

(assert (=> start!693412 e!4279215))

(declare-fun e!4279217 () Bool)

(assert (=> start!693412 e!4279217))

(declare-fun condSetEmpty!50956 () Bool)

(assert (=> start!693412 (= condSetEmpty!50956 (= s1!414 ((as const (Array A!591 Bool)) false)))))

(declare-fun setRes!50956 () Bool)

(assert (=> start!693412 setRes!50956))

(declare-fun condSetEmpty!50957 () Bool)

(assert (=> start!693412 (= condSetEmpty!50957 (= s2!385 ((as const (Array A!591 Bool)) false)))))

(assert (=> start!693412 setRes!50957))

(declare-fun e!4279216 () Bool)

(assert (=> start!693412 e!4279216))

(assert (=> start!693412 tp!1960942))

(declare-fun setIsEmpty!50956 () Bool)

(assert (=> setIsEmpty!50956 setRes!50956))

(declare-fun b!7121660 () Bool)

(declare-fun e!4279218 () Bool)

(assert (=> b!7121660 (= e!4279215 e!4279218)))

(declare-fun res!2905410 () Bool)

(assert (=> b!7121660 (=> (not res!2905410) (not e!4279218))))

(declare-fun l2!745 () List!68994)

(declare-fun lt!2561861 () (InoxSet B!3249))

(assert (=> b!7121660 (= res!2905410 (= l2!745 (toList!11097 lt!2561861)))))

(assert (=> b!7121660 (= lt!2561861 (map!16389 ((_ map or) s1!414 s2!385) f!567))))

(declare-fun b!7121661 () Bool)

(declare-fun tp_is_empty!45333 () Bool)

(declare-fun tp!1960943 () Bool)

(assert (=> b!7121661 (= e!4279217 (and tp_is_empty!45333 tp!1960943))))

(declare-fun setIsEmpty!50957 () Bool)

(assert (=> setIsEmpty!50957 setRes!50957))

(declare-fun b!7121662 () Bool)

(declare-fun tp!1960940 () Bool)

(assert (=> b!7121662 (= e!4279216 (and tp_is_empty!45333 tp!1960940))))

(declare-fun b!7121663 () Bool)

(declare-fun isEmpty!39997 (List!68994) Bool)

(assert (=> b!7121663 (= e!4279218 (not (not (isEmpty!39997 l1!756))))))

(assert (=> b!7121663 (= (select lt!2561862 (h!75318 l1!756)) (select lt!2561861 (h!75318 l1!756)))))

(declare-datatypes ((Unit!162689 0))(
  ( (Unit!162690) )
))
(declare-fun lt!2561860 () Unit!162689)

(declare-fun lemmaMapAssociativeElem!2 ((InoxSet A!591) (InoxSet A!591) Int B!3249) Unit!162689)

(assert (=> b!7121663 (= lt!2561860 (lemmaMapAssociativeElem!2 s1!414 s2!385 f!567 (h!75318 l1!756)))))

(declare-fun setNonEmpty!50957 () Bool)

(declare-fun tp!1960941 () Bool)

(assert (=> setNonEmpty!50957 (= setRes!50956 (and tp!1960941 tp_is_empty!45335))))

(declare-fun setElem!50956 () A!591)

(declare-fun setRest!50957 () (InoxSet A!591))

(assert (=> setNonEmpty!50957 (= s1!414 ((_ map or) (store ((as const (Array A!591 Bool)) false) setElem!50956 true) setRest!50957))))

(declare-fun b!7121664 () Bool)

(declare-fun res!2905412 () Bool)

(assert (=> b!7121664 (=> (not res!2905412) (not e!4279218))))

(get-info :version)

(assert (=> b!7121664 (= res!2905412 ((_ is Cons!68870) l1!756))))

(assert (= (and start!693412 res!2905411) b!7121660))

(assert (= (and b!7121660 res!2905410) b!7121664))

(assert (= (and b!7121664 res!2905412) b!7121663))

(assert (= (and start!693412 ((_ is Cons!68870) l1!756)) b!7121661))

(assert (= (and start!693412 condSetEmpty!50956) setIsEmpty!50956))

(assert (= (and start!693412 (not condSetEmpty!50956)) setNonEmpty!50957))

(assert (= (and start!693412 condSetEmpty!50957) setIsEmpty!50957))

(assert (= (and start!693412 (not condSetEmpty!50957)) setNonEmpty!50956))

(assert (= (and start!693412 ((_ is Cons!68870) l2!745)) b!7121662))

(declare-fun m!7838872 () Bool)

(assert (=> start!693412 m!7838872))

(assert (=> start!693412 m!7838872))

(declare-fun m!7838874 () Bool)

(assert (=> start!693412 m!7838874))

(declare-fun m!7838876 () Bool)

(assert (=> start!693412 m!7838876))

(declare-fun m!7838878 () Bool)

(assert (=> start!693412 m!7838878))

(declare-fun m!7838880 () Bool)

(assert (=> b!7121660 m!7838880))

(declare-fun m!7838882 () Bool)

(assert (=> b!7121660 m!7838882))

(declare-fun m!7838884 () Bool)

(assert (=> b!7121663 m!7838884))

(declare-fun m!7838886 () Bool)

(assert (=> b!7121663 m!7838886))

(declare-fun m!7838888 () Bool)

(assert (=> b!7121663 m!7838888))

(declare-fun m!7838890 () Bool)

(assert (=> b!7121663 m!7838890))

(check-sat (not start!693412) tp_is_empty!45335 (not b_next!134475) (not b!7121663) tp_is_empty!45333 (not b!7121660) (not b!7121662) (not setNonEmpty!50957) b_and!350781 (not b!7121661) (not setNonEmpty!50956))
(check-sat b_and!350781 (not b_next!134475))
(get-model)

(declare-fun d!2222298 () Bool)

(declare-fun e!4279236 () Bool)

(assert (=> d!2222298 e!4279236))

(declare-fun res!2905430 () Bool)

(assert (=> d!2222298 (=> (not res!2905430) (not e!4279236))))

(declare-fun lt!2561868 () List!68994)

(declare-fun noDuplicate!2781 (List!68994) Bool)

(assert (=> d!2222298 (= res!2905430 (noDuplicate!2781 lt!2561868))))

(declare-fun choose!54979 ((InoxSet B!3249)) List!68994)

(assert (=> d!2222298 (= lt!2561868 (choose!54979 lt!2561861))))

(assert (=> d!2222298 (= (toList!11097 lt!2561861) lt!2561868)))

(declare-fun b!7121682 () Bool)

(declare-fun content!14079 (List!68994) (InoxSet B!3249))

(assert (=> b!7121682 (= e!4279236 (= (content!14079 lt!2561868) lt!2561861))))

(assert (= (and d!2222298 res!2905430) b!7121682))

(declare-fun m!7838906 () Bool)

(assert (=> d!2222298 m!7838906))

(declare-fun m!7838908 () Bool)

(assert (=> d!2222298 m!7838908))

(declare-fun m!7838910 () Bool)

(assert (=> b!7121682 m!7838910))

(assert (=> b!7121660 d!2222298))

(declare-fun d!2222306 () Bool)

(declare-fun choose!54980 ((InoxSet A!591) Int) (InoxSet B!3249))

(assert (=> d!2222306 (= (map!16389 ((_ map or) s1!414 s2!385) f!567) (choose!54980 ((_ map or) s1!414 s2!385) f!567))))

(declare-fun bs!1885998 () Bool)

(assert (= bs!1885998 d!2222306))

(declare-fun m!7838920 () Bool)

(assert (=> bs!1885998 m!7838920))

(assert (=> b!7121660 d!2222306))

(declare-fun b!7121702 () Bool)

(declare-fun e!4279250 () Bool)

(declare-fun e!4279252 () Bool)

(assert (=> b!7121702 (= e!4279250 e!4279252)))

(declare-fun res!2905442 () Bool)

(assert (=> b!7121702 (=> res!2905442 e!4279252)))

(declare-fun e!4279251 () Bool)

(assert (=> b!7121702 (= res!2905442 e!4279251)))

(declare-fun res!2905440 () Bool)

(assert (=> b!7121702 (=> (not res!2905440) (not e!4279251))))

(assert (=> b!7121702 (= res!2905440 (= (h!75318 l1!756) (h!75318 (toList!11097 lt!2561862))))))

(declare-fun b!7121704 () Bool)

(assert (=> b!7121704 (= e!4279252 (subseq!733 l1!756 (t!382901 (toList!11097 lt!2561862))))))

(declare-fun b!7121701 () Bool)

(declare-fun e!4279253 () Bool)

(assert (=> b!7121701 (= e!4279253 e!4279250)))

(declare-fun res!2905441 () Bool)

(assert (=> b!7121701 (=> (not res!2905441) (not e!4279250))))

(assert (=> b!7121701 (= res!2905441 ((_ is Cons!68870) (toList!11097 lt!2561862)))))

(declare-fun b!7121703 () Bool)

(assert (=> b!7121703 (= e!4279251 (subseq!733 (t!382901 l1!756) (t!382901 (toList!11097 lt!2561862))))))

(declare-fun d!2222314 () Bool)

(declare-fun res!2905443 () Bool)

(assert (=> d!2222314 (=> res!2905443 e!4279253)))

(assert (=> d!2222314 (= res!2905443 ((_ is Nil!68870) l1!756))))

(assert (=> d!2222314 (= (subseq!733 l1!756 (toList!11097 lt!2561862)) e!4279253)))

(assert (= (and d!2222314 (not res!2905443)) b!7121701))

(assert (= (and b!7121701 res!2905441) b!7121702))

(assert (= (and b!7121702 res!2905440) b!7121703))

(assert (= (and b!7121702 (not res!2905442)) b!7121704))

(declare-fun m!7838928 () Bool)

(assert (=> b!7121704 m!7838928))

(declare-fun m!7838930 () Bool)

(assert (=> b!7121703 m!7838930))

(assert (=> start!693412 d!2222314))

(declare-fun d!2222316 () Bool)

(declare-fun e!4279254 () Bool)

(assert (=> d!2222316 e!4279254))

(declare-fun res!2905444 () Bool)

(assert (=> d!2222316 (=> (not res!2905444) (not e!4279254))))

(declare-fun lt!2561873 () List!68994)

(assert (=> d!2222316 (= res!2905444 (noDuplicate!2781 lt!2561873))))

(assert (=> d!2222316 (= lt!2561873 (choose!54979 lt!2561862))))

(assert (=> d!2222316 (= (toList!11097 lt!2561862) lt!2561873)))

(declare-fun b!7121705 () Bool)

(assert (=> b!7121705 (= e!4279254 (= (content!14079 lt!2561873) lt!2561862))))

(assert (= (and d!2222316 res!2905444) b!7121705))

(declare-fun m!7838932 () Bool)

(assert (=> d!2222316 m!7838932))

(declare-fun m!7838934 () Bool)

(assert (=> d!2222316 m!7838934))

(declare-fun m!7838936 () Bool)

(assert (=> b!7121705 m!7838936))

(assert (=> start!693412 d!2222316))

(declare-fun d!2222318 () Bool)

(assert (=> d!2222318 (= (map!16389 s1!414 f!567) (choose!54980 s1!414 f!567))))

(declare-fun bs!1886000 () Bool)

(assert (= bs!1886000 d!2222318))

(declare-fun m!7838938 () Bool)

(assert (=> bs!1886000 m!7838938))

(assert (=> start!693412 d!2222318))

(declare-fun d!2222320 () Bool)

(assert (=> d!2222320 (= (map!16389 s2!385 f!567) (choose!54980 s2!385 f!567))))

(declare-fun bs!1886001 () Bool)

(assert (= bs!1886001 d!2222320))

(declare-fun m!7838940 () Bool)

(assert (=> bs!1886001 m!7838940))

(assert (=> start!693412 d!2222320))

(declare-fun d!2222322 () Bool)

(assert (=> d!2222322 (= (isEmpty!39997 l1!756) ((_ is Nil!68870) l1!756))))

(assert (=> b!7121663 d!2222322))

(declare-fun d!2222324 () Bool)

(assert (=> d!2222324 (= (select ((_ map or) (map!16389 s1!414 f!567) (map!16389 s2!385 f!567)) (h!75318 l1!756)) (select (map!16389 ((_ map or) s1!414 s2!385) f!567) (h!75318 l1!756)))))

(declare-fun lt!2561876 () Unit!162689)

(declare-fun choose!54982 ((InoxSet A!591) (InoxSet A!591) Int B!3249) Unit!162689)

(assert (=> d!2222324 (= lt!2561876 (choose!54982 s1!414 s2!385 f!567 (h!75318 l1!756)))))

(assert (=> d!2222324 (= (lemmaMapAssociativeElem!2 s1!414 s2!385 f!567 (h!75318 l1!756)) lt!2561876)))

(declare-fun bs!1886002 () Bool)

(assert (= bs!1886002 d!2222324))

(declare-fun m!7838942 () Bool)

(assert (=> bs!1886002 m!7838942))

(assert (=> bs!1886002 m!7838878))

(assert (=> bs!1886002 m!7838882))

(assert (=> bs!1886002 m!7838876))

(declare-fun m!7838944 () Bool)

(assert (=> bs!1886002 m!7838944))

(declare-fun m!7838946 () Bool)

(assert (=> bs!1886002 m!7838946))

(assert (=> b!7121663 d!2222324))

(declare-fun condSetEmpty!50964 () Bool)

(assert (=> setNonEmpty!50957 (= condSetEmpty!50964 (= setRest!50957 ((as const (Array A!591 Bool)) false)))))

(declare-fun setRes!50964 () Bool)

(assert (=> setNonEmpty!50957 (= tp!1960941 setRes!50964)))

(declare-fun setIsEmpty!50964 () Bool)

(assert (=> setIsEmpty!50964 setRes!50964))

(declare-fun setNonEmpty!50964 () Bool)

(declare-fun tp!1960955 () Bool)

(assert (=> setNonEmpty!50964 (= setRes!50964 (and tp!1960955 tp_is_empty!45335))))

(declare-fun setElem!50964 () A!591)

(declare-fun setRest!50964 () (InoxSet A!591))

(assert (=> setNonEmpty!50964 (= setRest!50957 ((_ map or) (store ((as const (Array A!591 Bool)) false) setElem!50964 true) setRest!50964))))

(assert (= (and setNonEmpty!50957 condSetEmpty!50964) setIsEmpty!50964))

(assert (= (and setNonEmpty!50957 (not condSetEmpty!50964)) setNonEmpty!50964))

(declare-fun b!7121713 () Bool)

(declare-fun e!4279257 () Bool)

(declare-fun tp!1960958 () Bool)

(assert (=> b!7121713 (= e!4279257 (and tp_is_empty!45333 tp!1960958))))

(assert (=> b!7121661 (= tp!1960943 e!4279257)))

(assert (= (and b!7121661 ((_ is Cons!68870) (t!382901 l1!756))) b!7121713))

(declare-fun b!7121714 () Bool)

(declare-fun e!4279258 () Bool)

(declare-fun tp!1960959 () Bool)

(assert (=> b!7121714 (= e!4279258 (and tp_is_empty!45333 tp!1960959))))

(assert (=> b!7121662 (= tp!1960940 e!4279258)))

(assert (= (and b!7121662 ((_ is Cons!68870) (t!382901 l2!745))) b!7121714))

(declare-fun condSetEmpty!50965 () Bool)

(assert (=> setNonEmpty!50956 (= condSetEmpty!50965 (= setRest!50956 ((as const (Array A!591 Bool)) false)))))

(declare-fun setRes!50965 () Bool)

(assert (=> setNonEmpty!50956 (= tp!1960944 setRes!50965)))

(declare-fun setIsEmpty!50965 () Bool)

(assert (=> setIsEmpty!50965 setRes!50965))

(declare-fun setNonEmpty!50965 () Bool)

(declare-fun tp!1960960 () Bool)

(assert (=> setNonEmpty!50965 (= setRes!50965 (and tp!1960960 tp_is_empty!45335))))

(declare-fun setElem!50965 () A!591)

(declare-fun setRest!50965 () (InoxSet A!591))

(assert (=> setNonEmpty!50965 (= setRest!50956 ((_ map or) (store ((as const (Array A!591 Bool)) false) setElem!50965 true) setRest!50965))))

(assert (= (and setNonEmpty!50956 condSetEmpty!50965) setIsEmpty!50965))

(assert (= (and setNonEmpty!50956 (not condSetEmpty!50965)) setNonEmpty!50965))

(check-sat (not d!2222324) (not b!7121714) (not b!7121682) tp_is_empty!45335 (not b_next!134475) (not b!7121713) (not b!7121703) (not setNonEmpty!50965) (not d!2222320) (not d!2222318) (not d!2222298) (not d!2222316) tp_is_empty!45333 (not b!7121705) (not b!7121704) b_and!350781 (not setNonEmpty!50964) (not d!2222306))
(check-sat b_and!350781 (not b_next!134475))
