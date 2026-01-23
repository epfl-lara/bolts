; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!693476 () Bool)

(assert start!693476)

(declare-fun b_free!133697 () Bool)

(declare-fun b_next!134487 () Bool)

(assert (=> start!693476 (= b_free!133697 (not b_next!134487))))

(declare-fun tp!1961063 () Bool)

(declare-fun b_and!350793 () Bool)

(assert (=> start!693476 (= tp!1961063 b_and!350793)))

(declare-fun res!2905554 () Bool)

(declare-fun e!4279411 () Bool)

(assert (=> start!693476 (=> (not res!2905554) (not e!4279411))))

(declare-datatypes ((B!3261 0))(
  ( (B!3262 (val!27929 Int)) )
))
(declare-datatypes ((List!69000 0))(
  ( (Nil!68876) (Cons!68876 (h!75324 B!3261) (t!382907 List!69000)) )
))
(declare-fun l1!756 () List!69000)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((A!603 0))(
  ( (A!604 (val!27930 Int)) )
))
(declare-fun s1!414 () (InoxSet A!603))

(declare-fun s2!385 () (InoxSet A!603))

(declare-fun f!567 () Int)

(declare-fun subseq!739 (List!69000 List!69000) Bool)

(declare-fun toList!11103 ((InoxSet B!3261)) List!69000)

(declare-fun map!16398 ((InoxSet A!603) Int) (InoxSet B!3261))

(assert (=> start!693476 (= res!2905554 (subseq!739 l1!756 (toList!11103 ((_ map or) (map!16398 s1!414 f!567) (map!16398 s2!385 f!567)))))))

(assert (=> start!693476 e!4279411))

(declare-fun e!4279410 () Bool)

(assert (=> start!693476 e!4279410))

(declare-fun condSetEmpty!51008 () Bool)

(assert (=> start!693476 (= condSetEmpty!51008 (= s1!414 ((as const (Array A!603 Bool)) false)))))

(declare-fun setRes!51008 () Bool)

(assert (=> start!693476 setRes!51008))

(declare-fun condSetEmpty!51009 () Bool)

(assert (=> start!693476 (= condSetEmpty!51009 (= s2!385 ((as const (Array A!603 Bool)) false)))))

(declare-fun setRes!51009 () Bool)

(assert (=> start!693476 setRes!51009))

(declare-fun e!4279412 () Bool)

(assert (=> start!693476 e!4279412))

(assert (=> start!693476 tp!1961063))

(declare-fun setNonEmpty!51008 () Bool)

(declare-fun tp!1961065 () Bool)

(declare-fun tp_is_empty!45359 () Bool)

(assert (=> setNonEmpty!51008 (= setRes!51008 (and tp!1961065 tp_is_empty!45359))))

(declare-fun setElem!51009 () A!603)

(declare-fun setRest!51008 () (InoxSet A!603))

(assert (=> setNonEmpty!51008 (= s1!414 ((_ map or) (store ((as const (Array A!603 Bool)) false) setElem!51009 true) setRest!51008))))

(declare-fun setIsEmpty!51008 () Bool)

(assert (=> setIsEmpty!51008 setRes!51008))

(declare-fun setIsEmpty!51009 () Bool)

(assert (=> setIsEmpty!51009 setRes!51009))

(declare-fun b!7121915 () Bool)

(declare-fun res!2905553 () Bool)

(assert (=> b!7121915 (=> (not res!2905553) (not e!4279411))))

(declare-fun l2!745 () List!69000)

(assert (=> b!7121915 (= res!2905553 (= l2!745 (toList!11103 (map!16398 ((_ map or) s1!414 s2!385) f!567))))))

(declare-fun b!7121916 () Bool)

(declare-fun tp_is_empty!45357 () Bool)

(declare-fun tp!1961064 () Bool)

(assert (=> b!7121916 (= e!4279410 (and tp_is_empty!45357 tp!1961064))))

(declare-fun setNonEmpty!51009 () Bool)

(declare-fun tp!1961066 () Bool)

(assert (=> setNonEmpty!51009 (= setRes!51009 (and tp!1961066 tp_is_empty!45359))))

(declare-fun setElem!51008 () A!603)

(declare-fun setRest!51009 () (InoxSet A!603))

(assert (=> setNonEmpty!51009 (= s2!385 ((_ map or) (store ((as const (Array A!603 Bool)) false) setElem!51008 true) setRest!51009))))

(declare-fun b!7121917 () Bool)

(declare-fun tp!1961062 () Bool)

(assert (=> b!7121917 (= e!4279412 (and tp_is_empty!45357 tp!1961062))))

(declare-fun b!7121918 () Bool)

(declare-fun size!41436 (List!69000) Int)

(assert (=> b!7121918 (= e!4279411 (< (size!41436 l1!756) 0))))

(assert (= (and start!693476 res!2905554) b!7121915))

(assert (= (and b!7121915 res!2905553) b!7121918))

(get-info :version)

(assert (= (and start!693476 ((_ is Cons!68876) l1!756)) b!7121916))

(assert (= (and start!693476 condSetEmpty!51008) setIsEmpty!51008))

(assert (= (and start!693476 (not condSetEmpty!51008)) setNonEmpty!51008))

(assert (= (and start!693476 condSetEmpty!51009) setIsEmpty!51009))

(assert (= (and start!693476 (not condSetEmpty!51009)) setNonEmpty!51009))

(assert (= (and start!693476 ((_ is Cons!68876) l2!745)) b!7121917))

(declare-fun m!7839170 () Bool)

(assert (=> start!693476 m!7839170))

(declare-fun m!7839172 () Bool)

(assert (=> start!693476 m!7839172))

(declare-fun m!7839174 () Bool)

(assert (=> start!693476 m!7839174))

(assert (=> start!693476 m!7839174))

(declare-fun m!7839176 () Bool)

(assert (=> start!693476 m!7839176))

(declare-fun m!7839178 () Bool)

(assert (=> b!7121915 m!7839178))

(assert (=> b!7121915 m!7839178))

(declare-fun m!7839180 () Bool)

(assert (=> b!7121915 m!7839180))

(declare-fun m!7839182 () Bool)

(assert (=> b!7121918 m!7839182))

(check-sat b_and!350793 (not b!7121918) (not setNonEmpty!51009) (not start!693476) (not b!7121917) (not b_next!134487) (not b!7121915) tp_is_empty!45357 tp_is_empty!45359 (not b!7121916) (not setNonEmpty!51008))
(check-sat b_and!350793 (not b_next!134487))
(get-model)

(declare-fun d!2222379 () Bool)

(declare-fun e!4279427 () Bool)

(assert (=> d!2222379 e!4279427))

(declare-fun res!2905569 () Bool)

(assert (=> d!2222379 (=> (not res!2905569) (not e!4279427))))

(declare-fun lt!2561977 () List!69000)

(declare-fun noDuplicate!2783 (List!69000) Bool)

(assert (=> d!2222379 (= res!2905569 (noDuplicate!2783 lt!2561977))))

(declare-fun choose!54988 ((InoxSet B!3261)) List!69000)

(assert (=> d!2222379 (= lt!2561977 (choose!54988 (map!16398 ((_ map or) s1!414 s2!385) f!567)))))

(assert (=> d!2222379 (= (toList!11103 (map!16398 ((_ map or) s1!414 s2!385) f!567)) lt!2561977)))

(declare-fun b!7121933 () Bool)

(declare-fun content!14082 (List!69000) (InoxSet B!3261))

(assert (=> b!7121933 (= e!4279427 (= (content!14082 lt!2561977) (map!16398 ((_ map or) s1!414 s2!385) f!567)))))

(assert (= (and d!2222379 res!2905569) b!7121933))

(declare-fun m!7839188 () Bool)

(assert (=> d!2222379 m!7839188))

(assert (=> d!2222379 m!7839178))

(declare-fun m!7839190 () Bool)

(assert (=> d!2222379 m!7839190))

(declare-fun m!7839192 () Bool)

(assert (=> b!7121933 m!7839192))

(assert (=> b!7121915 d!2222379))

(declare-fun d!2222383 () Bool)

(declare-fun choose!54990 ((InoxSet A!603) Int) (InoxSet B!3261))

(assert (=> d!2222383 (= (map!16398 ((_ map or) s1!414 s2!385) f!567) (choose!54990 ((_ map or) s1!414 s2!385) f!567))))

(declare-fun bs!1886023 () Bool)

(assert (= bs!1886023 d!2222383))

(declare-fun m!7839194 () Bool)

(assert (=> bs!1886023 m!7839194))

(assert (=> b!7121915 d!2222383))

(declare-fun b!7121954 () Bool)

(declare-fun e!4279446 () Bool)

(declare-fun e!4279445 () Bool)

(assert (=> b!7121954 (= e!4279446 e!4279445)))

(declare-fun res!2905584 () Bool)

(assert (=> b!7121954 (=> (not res!2905584) (not e!4279445))))

(assert (=> b!7121954 (= res!2905584 ((_ is Cons!68876) (toList!11103 ((_ map or) (map!16398 s1!414 f!567) (map!16398 s2!385 f!567)))))))

(declare-fun b!7121955 () Bool)

(declare-fun e!4279444 () Bool)

(assert (=> b!7121955 (= e!4279445 e!4279444)))

(declare-fun res!2905583 () Bool)

(assert (=> b!7121955 (=> res!2905583 e!4279444)))

(declare-fun e!4279443 () Bool)

(assert (=> b!7121955 (= res!2905583 e!4279443)))

(declare-fun res!2905582 () Bool)

(assert (=> b!7121955 (=> (not res!2905582) (not e!4279443))))

(assert (=> b!7121955 (= res!2905582 (= (h!75324 l1!756) (h!75324 (toList!11103 ((_ map or) (map!16398 s1!414 f!567) (map!16398 s2!385 f!567))))))))

(declare-fun b!7121957 () Bool)

(assert (=> b!7121957 (= e!4279444 (subseq!739 l1!756 (t!382907 (toList!11103 ((_ map or) (map!16398 s1!414 f!567) (map!16398 s2!385 f!567))))))))

(declare-fun d!2222385 () Bool)

(declare-fun res!2905585 () Bool)

(assert (=> d!2222385 (=> res!2905585 e!4279446)))

(assert (=> d!2222385 (= res!2905585 ((_ is Nil!68876) l1!756))))

(assert (=> d!2222385 (= (subseq!739 l1!756 (toList!11103 ((_ map or) (map!16398 s1!414 f!567) (map!16398 s2!385 f!567)))) e!4279446)))

(declare-fun b!7121956 () Bool)

(assert (=> b!7121956 (= e!4279443 (subseq!739 (t!382907 l1!756) (t!382907 (toList!11103 ((_ map or) (map!16398 s1!414 f!567) (map!16398 s2!385 f!567))))))))

(assert (= (and d!2222385 (not res!2905585)) b!7121954))

(assert (= (and b!7121954 res!2905584) b!7121955))

(assert (= (and b!7121955 res!2905582) b!7121956))

(assert (= (and b!7121955 (not res!2905583)) b!7121957))

(declare-fun m!7839216 () Bool)

(assert (=> b!7121957 m!7839216))

(declare-fun m!7839218 () Bool)

(assert (=> b!7121956 m!7839218))

(assert (=> start!693476 d!2222385))

(declare-fun d!2222397 () Bool)

(declare-fun e!4279447 () Bool)

(assert (=> d!2222397 e!4279447))

(declare-fun res!2905586 () Bool)

(assert (=> d!2222397 (=> (not res!2905586) (not e!4279447))))

(declare-fun lt!2561985 () List!69000)

(assert (=> d!2222397 (= res!2905586 (noDuplicate!2783 lt!2561985))))

(assert (=> d!2222397 (= lt!2561985 (choose!54988 ((_ map or) (map!16398 s1!414 f!567) (map!16398 s2!385 f!567))))))

(assert (=> d!2222397 (= (toList!11103 ((_ map or) (map!16398 s1!414 f!567) (map!16398 s2!385 f!567))) lt!2561985)))

(declare-fun b!7121958 () Bool)

(assert (=> b!7121958 (= e!4279447 (= (content!14082 lt!2561985) ((_ map or) (map!16398 s1!414 f!567) (map!16398 s2!385 f!567))))))

(assert (= (and d!2222397 res!2905586) b!7121958))

(declare-fun m!7839220 () Bool)

(assert (=> d!2222397 m!7839220))

(declare-fun m!7839222 () Bool)

(assert (=> d!2222397 m!7839222))

(declare-fun m!7839224 () Bool)

(assert (=> b!7121958 m!7839224))

(assert (=> start!693476 d!2222397))

(declare-fun d!2222399 () Bool)

(assert (=> d!2222399 (= (map!16398 s1!414 f!567) (choose!54990 s1!414 f!567))))

(declare-fun bs!1886027 () Bool)

(assert (= bs!1886027 d!2222399))

(declare-fun m!7839226 () Bool)

(assert (=> bs!1886027 m!7839226))

(assert (=> start!693476 d!2222399))

(declare-fun d!2222401 () Bool)

(assert (=> d!2222401 (= (map!16398 s2!385 f!567) (choose!54990 s2!385 f!567))))

(declare-fun bs!1886028 () Bool)

(assert (= bs!1886028 d!2222401))

(declare-fun m!7839228 () Bool)

(assert (=> bs!1886028 m!7839228))

(assert (=> start!693476 d!2222401))

(declare-fun d!2222403 () Bool)

(declare-fun lt!2561988 () Int)

(assert (=> d!2222403 (>= lt!2561988 0)))

(declare-fun e!4279454 () Int)

(assert (=> d!2222403 (= lt!2561988 e!4279454)))

(declare-fun c!1328980 () Bool)

(assert (=> d!2222403 (= c!1328980 ((_ is Nil!68876) l1!756))))

(assert (=> d!2222403 (= (size!41436 l1!756) lt!2561988)))

(declare-fun b!7121969 () Bool)

(assert (=> b!7121969 (= e!4279454 0)))

(declare-fun b!7121970 () Bool)

(assert (=> b!7121970 (= e!4279454 (+ 1 (size!41436 (t!382907 l1!756))))))

(assert (= (and d!2222403 c!1328980) b!7121969))

(assert (= (and d!2222403 (not c!1328980)) b!7121970))

(declare-fun m!7839230 () Bool)

(assert (=> b!7121970 m!7839230))

(assert (=> b!7121918 d!2222403))

(declare-fun b!7121975 () Bool)

(declare-fun e!4279457 () Bool)

(declare-fun tp!1961077 () Bool)

(assert (=> b!7121975 (= e!4279457 (and tp_is_empty!45357 tp!1961077))))

(assert (=> b!7121916 (= tp!1961064 e!4279457)))

(assert (= (and b!7121916 ((_ is Cons!68876) (t!382907 l1!756))) b!7121975))

(declare-fun condSetEmpty!51016 () Bool)

(assert (=> setNonEmpty!51009 (= condSetEmpty!51016 (= setRest!51009 ((as const (Array A!603 Bool)) false)))))

(declare-fun setRes!51016 () Bool)

(assert (=> setNonEmpty!51009 (= tp!1961066 setRes!51016)))

(declare-fun setIsEmpty!51016 () Bool)

(assert (=> setIsEmpty!51016 setRes!51016))

(declare-fun setNonEmpty!51016 () Bool)

(declare-fun tp!1961080 () Bool)

(assert (=> setNonEmpty!51016 (= setRes!51016 (and tp!1961080 tp_is_empty!45359))))

(declare-fun setElem!51016 () A!603)

(declare-fun setRest!51016 () (InoxSet A!603))

(assert (=> setNonEmpty!51016 (= setRest!51009 ((_ map or) (store ((as const (Array A!603 Bool)) false) setElem!51016 true) setRest!51016))))

(assert (= (and setNonEmpty!51009 condSetEmpty!51016) setIsEmpty!51016))

(assert (= (and setNonEmpty!51009 (not condSetEmpty!51016)) setNonEmpty!51016))

(declare-fun condSetEmpty!51017 () Bool)

(assert (=> setNonEmpty!51008 (= condSetEmpty!51017 (= setRest!51008 ((as const (Array A!603 Bool)) false)))))

(declare-fun setRes!51017 () Bool)

(assert (=> setNonEmpty!51008 (= tp!1961065 setRes!51017)))

(declare-fun setIsEmpty!51017 () Bool)

(assert (=> setIsEmpty!51017 setRes!51017))

(declare-fun setNonEmpty!51017 () Bool)

(declare-fun tp!1961081 () Bool)

(assert (=> setNonEmpty!51017 (= setRes!51017 (and tp!1961081 tp_is_empty!45359))))

(declare-fun setElem!51017 () A!603)

(declare-fun setRest!51017 () (InoxSet A!603))

(assert (=> setNonEmpty!51017 (= setRest!51008 ((_ map or) (store ((as const (Array A!603 Bool)) false) setElem!51017 true) setRest!51017))))

(assert (= (and setNonEmpty!51008 condSetEmpty!51017) setIsEmpty!51017))

(assert (= (and setNonEmpty!51008 (not condSetEmpty!51017)) setNonEmpty!51017))

(declare-fun b!7121978 () Bool)

(declare-fun e!4279458 () Bool)

(declare-fun tp!1961082 () Bool)

(assert (=> b!7121978 (= e!4279458 (and tp_is_empty!45357 tp!1961082))))

(assert (=> b!7121917 (= tp!1961062 e!4279458)))

(assert (= (and b!7121917 ((_ is Cons!68876) (t!382907 l2!745))) b!7121978))

(check-sat (not b!7121970) (not d!2222401) (not b!7121975) (not setNonEmpty!51017) (not setNonEmpty!51016) (not b!7121978) (not d!2222379) (not b!7121933) (not b!7121958) (not b_next!134487) b_and!350793 (not d!2222399) tp_is_empty!45357 tp_is_empty!45359 (not b!7121957) (not b!7121956) (not d!2222383) (not d!2222397))
(check-sat b_and!350793 (not b_next!134487))
