; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!693672 () Bool)

(assert start!693672)

(declare-fun b_free!133721 () Bool)

(declare-fun b_next!134511 () Bool)

(assert (=> start!693672 (= b_free!133721 (not b_next!134511))))

(declare-fun tp!1961365 () Bool)

(declare-fun b_and!350817 () Bool)

(assert (=> start!693672 (= tp!1961365 b_and!350817)))

(declare-fun setNonEmpty!51146 () Bool)

(declare-fun setRes!51147 () Bool)

(declare-fun tp!1961367 () Bool)

(declare-fun tp_is_empty!45405 () Bool)

(assert (=> setNonEmpty!51146 (= setRes!51147 (and tp!1961367 tp_is_empty!45405))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((A!627 0))(
  ( (A!628 (val!27953 Int)) )
))
(declare-fun s1!424 () (InoxSet A!627))

(declare-fun setElem!51147 () A!627)

(declare-fun setRest!51147 () (InoxSet A!627))

(assert (=> setNonEmpty!51146 (= s1!424 ((_ map or) (store ((as const (Array A!627 Bool)) false) setElem!51147 true) setRest!51147))))

(declare-fun b!7122740 () Bool)

(declare-fun e!4280052 () Bool)

(declare-fun tp_is_empty!45407 () Bool)

(declare-fun tp!1961369 () Bool)

(assert (=> b!7122740 (= e!4280052 (and tp_is_empty!45407 tp!1961369))))

(declare-fun setIsEmpty!51146 () Bool)

(assert (=> setIsEmpty!51146 setRes!51147))

(declare-fun b!7122741 () Bool)

(declare-fun e!4280055 () Bool)

(declare-fun tp!1961368 () Bool)

(assert (=> b!7122741 (= e!4280055 (and tp_is_empty!45407 tp!1961368))))

(declare-fun b!7122742 () Bool)

(declare-fun res!2906048 () Bool)

(declare-fun e!4280054 () Bool)

(assert (=> b!7122742 (=> (not res!2906048) (not e!4280054))))

(declare-datatypes ((B!3285 0))(
  ( (B!3286 (val!27954 Int)) )
))
(declare-datatypes ((List!69012 0))(
  ( (Nil!68888) (Cons!68888 (h!75336 B!3285) (t!382923 List!69012)) )
))
(declare-fun l2!759 () List!69012)

(get-info :version)

(assert (=> b!7122742 (= res!2906048 ((_ is Cons!68888) l2!759))))

(declare-fun setNonEmpty!51147 () Bool)

(declare-fun setRes!51146 () Bool)

(declare-fun tp!1961366 () Bool)

(assert (=> setNonEmpty!51147 (= setRes!51146 (and tp!1961366 tp_is_empty!45405))))

(declare-fun s2!395 () (InoxSet A!627))

(declare-fun setElem!51146 () A!627)

(declare-fun setRest!51146 () (InoxSet A!627))

(assert (=> setNonEmpty!51147 (= s2!395 ((_ map or) (store ((as const (Array A!627 Bool)) false) setElem!51146 true) setRest!51146))))

(declare-fun setIsEmpty!51147 () Bool)

(assert (=> setIsEmpty!51147 setRes!51146))

(declare-fun res!2906047 () Bool)

(declare-fun e!4280053 () Bool)

(assert (=> start!693672 (=> (not res!2906047) (not e!4280053))))

(declare-fun l1!770 () List!69012)

(declare-fun lt!2562218 () (InoxSet B!3285))

(declare-fun toList!11115 ((InoxSet B!3285)) List!69012)

(assert (=> start!693672 (= res!2906047 (= l1!770 (toList!11115 lt!2562218)))))

(declare-fun f!607 () Int)

(declare-fun map!16416 ((InoxSet A!627) Int) (InoxSet B!3285))

(assert (=> start!693672 (= lt!2562218 ((_ map or) (map!16416 s1!424 f!607) (map!16416 s2!395 f!607)))))

(assert (=> start!693672 e!4280053))

(declare-fun condSetEmpty!51146 () Bool)

(assert (=> start!693672 (= condSetEmpty!51146 (= s1!424 ((as const (Array A!627 Bool)) false)))))

(assert (=> start!693672 setRes!51147))

(assert (=> start!693672 e!4280055))

(assert (=> start!693672 e!4280052))

(declare-fun condSetEmpty!51147 () Bool)

(assert (=> start!693672 (= condSetEmpty!51147 (= s2!395 ((as const (Array A!627 Bool)) false)))))

(assert (=> start!693672 setRes!51146))

(assert (=> start!693672 tp!1961365))

(declare-fun b!7122743 () Bool)

(assert (=> b!7122743 (= e!4280053 e!4280054)))

(declare-fun res!2906046 () Bool)

(assert (=> b!7122743 (=> (not res!2906046) (not e!4280054))))

(declare-fun lt!2562216 () (InoxSet B!3285))

(declare-fun subseq!751 (List!69012 List!69012) Bool)

(assert (=> b!7122743 (= res!2906046 (subseq!751 l2!759 (toList!11115 lt!2562216)))))

(assert (=> b!7122743 (= lt!2562216 (map!16416 ((_ map or) s1!424 s2!395) f!607))))

(declare-fun b!7122744 () Bool)

(declare-fun isEmpty!40007 (List!69012) Bool)

(assert (=> b!7122744 (= e!4280054 (not (not (isEmpty!40007 l2!759))))))

(assert (=> b!7122744 (= (select lt!2562218 (h!75336 l2!759)) (select lt!2562216 (h!75336 l2!759)))))

(declare-datatypes ((Unit!162733 0))(
  ( (Unit!162734) )
))
(declare-fun lt!2562217 () Unit!162733)

(declare-fun lemmaMapAssociativeElem!14 ((InoxSet A!627) (InoxSet A!627) Int B!3285) Unit!162733)

(assert (=> b!7122744 (= lt!2562217 (lemmaMapAssociativeElem!14 s1!424 s2!395 f!607 (h!75336 l2!759)))))

(assert (= (and start!693672 res!2906047) b!7122743))

(assert (= (and b!7122743 res!2906046) b!7122742))

(assert (= (and b!7122742 res!2906048) b!7122744))

(assert (= (and start!693672 condSetEmpty!51146) setIsEmpty!51146))

(assert (= (and start!693672 (not condSetEmpty!51146)) setNonEmpty!51146))

(assert (= (and start!693672 ((_ is Cons!68888) l2!759)) b!7122741))

(assert (= (and start!693672 ((_ is Cons!68888) l1!770)) b!7122740))

(assert (= (and start!693672 condSetEmpty!51147) setIsEmpty!51147))

(assert (= (and start!693672 (not condSetEmpty!51147)) setNonEmpty!51147))

(declare-fun m!7840030 () Bool)

(assert (=> start!693672 m!7840030))

(declare-fun m!7840032 () Bool)

(assert (=> start!693672 m!7840032))

(declare-fun m!7840034 () Bool)

(assert (=> start!693672 m!7840034))

(declare-fun m!7840036 () Bool)

(assert (=> b!7122743 m!7840036))

(assert (=> b!7122743 m!7840036))

(declare-fun m!7840038 () Bool)

(assert (=> b!7122743 m!7840038))

(declare-fun m!7840040 () Bool)

(assert (=> b!7122743 m!7840040))

(declare-fun m!7840042 () Bool)

(assert (=> b!7122744 m!7840042))

(declare-fun m!7840044 () Bool)

(assert (=> b!7122744 m!7840044))

(declare-fun m!7840046 () Bool)

(assert (=> b!7122744 m!7840046))

(declare-fun m!7840048 () Bool)

(assert (=> b!7122744 m!7840048))

(check-sat tp_is_empty!45407 (not b!7122741) (not b!7122743) (not start!693672) (not b_next!134511) (not b!7122740) (not setNonEmpty!51147) tp_is_empty!45405 (not b!7122744) (not setNonEmpty!51146) b_and!350817)
(check-sat b_and!350817 (not b_next!134511))
(get-model)

(declare-fun d!2222741 () Bool)

(declare-fun res!2906059 () Bool)

(declare-fun e!4280065 () Bool)

(assert (=> d!2222741 (=> res!2906059 e!4280065)))

(assert (=> d!2222741 (= res!2906059 ((_ is Nil!68888) l2!759))))

(assert (=> d!2222741 (= (subseq!751 l2!759 (toList!11115 lt!2562216)) e!4280065)))

(declare-fun b!7122757 () Bool)

(declare-fun e!4280066 () Bool)

(assert (=> b!7122757 (= e!4280066 (subseq!751 l2!759 (t!382923 (toList!11115 lt!2562216))))))

(declare-fun b!7122754 () Bool)

(declare-fun e!4280064 () Bool)

(assert (=> b!7122754 (= e!4280065 e!4280064)))

(declare-fun res!2906058 () Bool)

(assert (=> b!7122754 (=> (not res!2906058) (not e!4280064))))

(assert (=> b!7122754 (= res!2906058 ((_ is Cons!68888) (toList!11115 lt!2562216)))))

(declare-fun b!7122755 () Bool)

(assert (=> b!7122755 (= e!4280064 e!4280066)))

(declare-fun res!2906057 () Bool)

(assert (=> b!7122755 (=> res!2906057 e!4280066)))

(declare-fun e!4280067 () Bool)

(assert (=> b!7122755 (= res!2906057 e!4280067)))

(declare-fun res!2906060 () Bool)

(assert (=> b!7122755 (=> (not res!2906060) (not e!4280067))))

(assert (=> b!7122755 (= res!2906060 (= (h!75336 l2!759) (h!75336 (toList!11115 lt!2562216))))))

(declare-fun b!7122756 () Bool)

(assert (=> b!7122756 (= e!4280067 (subseq!751 (t!382923 l2!759) (t!382923 (toList!11115 lt!2562216))))))

(assert (= (and d!2222741 (not res!2906059)) b!7122754))

(assert (= (and b!7122754 res!2906058) b!7122755))

(assert (= (and b!7122755 res!2906060) b!7122756))

(assert (= (and b!7122755 (not res!2906057)) b!7122757))

(declare-fun m!7840056 () Bool)

(assert (=> b!7122757 m!7840056))

(declare-fun m!7840058 () Bool)

(assert (=> b!7122756 m!7840058))

(assert (=> b!7122743 d!2222741))

(declare-fun d!2222745 () Bool)

(declare-fun e!4280072 () Bool)

(assert (=> d!2222745 e!4280072))

(declare-fun res!2906065 () Bool)

(assert (=> d!2222745 (=> (not res!2906065) (not e!4280072))))

(declare-fun lt!2562226 () List!69012)

(declare-fun noDuplicate!2792 (List!69012) Bool)

(assert (=> d!2222745 (= res!2906065 (noDuplicate!2792 lt!2562226))))

(declare-fun choose!55016 ((InoxSet B!3285)) List!69012)

(assert (=> d!2222745 (= lt!2562226 (choose!55016 lt!2562216))))

(assert (=> d!2222745 (= (toList!11115 lt!2562216) lt!2562226)))

(declare-fun b!7122762 () Bool)

(declare-fun content!14091 (List!69012) (InoxSet B!3285))

(assert (=> b!7122762 (= e!4280072 (= (content!14091 lt!2562226) lt!2562216))))

(assert (= (and d!2222745 res!2906065) b!7122762))

(declare-fun m!7840060 () Bool)

(assert (=> d!2222745 m!7840060))

(declare-fun m!7840062 () Bool)

(assert (=> d!2222745 m!7840062))

(declare-fun m!7840064 () Bool)

(assert (=> b!7122762 m!7840064))

(assert (=> b!7122743 d!2222745))

(declare-fun d!2222747 () Bool)

(declare-fun choose!55017 ((InoxSet A!627) Int) (InoxSet B!3285))

(assert (=> d!2222747 (= (map!16416 ((_ map or) s1!424 s2!395) f!607) (choose!55017 ((_ map or) s1!424 s2!395) f!607))))

(declare-fun bs!1886094 () Bool)

(assert (= bs!1886094 d!2222747))

(declare-fun m!7840072 () Bool)

(assert (=> bs!1886094 m!7840072))

(assert (=> b!7122743 d!2222747))

(declare-fun d!2222751 () Bool)

(assert (=> d!2222751 (= (isEmpty!40007 l2!759) ((_ is Nil!68888) l2!759))))

(assert (=> b!7122744 d!2222751))

(declare-fun d!2222753 () Bool)

(assert (=> d!2222753 (= (select ((_ map or) (map!16416 s1!424 f!607) (map!16416 s2!395 f!607)) (h!75336 l2!759)) (select (map!16416 ((_ map or) s1!424 s2!395) f!607) (h!75336 l2!759)))))

(declare-fun lt!2562230 () Unit!162733)

(declare-fun choose!55019 ((InoxSet A!627) (InoxSet A!627) Int B!3285) Unit!162733)

(assert (=> d!2222753 (= lt!2562230 (choose!55019 s1!424 s2!395 f!607 (h!75336 l2!759)))))

(assert (=> d!2222753 (= (lemmaMapAssociativeElem!14 s1!424 s2!395 f!607 (h!75336 l2!759)) lt!2562230)))

(declare-fun bs!1886097 () Bool)

(assert (= bs!1886097 d!2222753))

(declare-fun m!7840078 () Bool)

(assert (=> bs!1886097 m!7840078))

(declare-fun m!7840080 () Bool)

(assert (=> bs!1886097 m!7840080))

(assert (=> bs!1886097 m!7840032))

(declare-fun m!7840082 () Bool)

(assert (=> bs!1886097 m!7840082))

(assert (=> bs!1886097 m!7840034))

(assert (=> bs!1886097 m!7840040))

(assert (=> b!7122744 d!2222753))

(declare-fun d!2222759 () Bool)

(declare-fun e!4280074 () Bool)

(assert (=> d!2222759 e!4280074))

(declare-fun res!2906067 () Bool)

(assert (=> d!2222759 (=> (not res!2906067) (not e!4280074))))

(declare-fun lt!2562231 () List!69012)

(assert (=> d!2222759 (= res!2906067 (noDuplicate!2792 lt!2562231))))

(assert (=> d!2222759 (= lt!2562231 (choose!55016 lt!2562218))))

(assert (=> d!2222759 (= (toList!11115 lt!2562218) lt!2562231)))

(declare-fun b!7122765 () Bool)

(assert (=> b!7122765 (= e!4280074 (= (content!14091 lt!2562231) lt!2562218))))

(assert (= (and d!2222759 res!2906067) b!7122765))

(declare-fun m!7840084 () Bool)

(assert (=> d!2222759 m!7840084))

(declare-fun m!7840086 () Bool)

(assert (=> d!2222759 m!7840086))

(declare-fun m!7840088 () Bool)

(assert (=> b!7122765 m!7840088))

(assert (=> start!693672 d!2222759))

(declare-fun d!2222761 () Bool)

(assert (=> d!2222761 (= (map!16416 s1!424 f!607) (choose!55017 s1!424 f!607))))

(declare-fun bs!1886098 () Bool)

(assert (= bs!1886098 d!2222761))

(declare-fun m!7840090 () Bool)

(assert (=> bs!1886098 m!7840090))

(assert (=> start!693672 d!2222761))

(declare-fun d!2222763 () Bool)

(assert (=> d!2222763 (= (map!16416 s2!395 f!607) (choose!55017 s2!395 f!607))))

(declare-fun bs!1886099 () Bool)

(assert (= bs!1886099 d!2222763))

(declare-fun m!7840092 () Bool)

(assert (=> bs!1886099 m!7840092))

(assert (=> start!693672 d!2222763))

(declare-fun condSetEmpty!51150 () Bool)

(assert (=> setNonEmpty!51146 (= condSetEmpty!51150 (= setRest!51147 ((as const (Array A!627 Bool)) false)))))

(declare-fun setRes!51150 () Bool)

(assert (=> setNonEmpty!51146 (= tp!1961367 setRes!51150)))

(declare-fun setIsEmpty!51150 () Bool)

(assert (=> setIsEmpty!51150 setRes!51150))

(declare-fun setNonEmpty!51150 () Bool)

(declare-fun tp!1961372 () Bool)

(assert (=> setNonEmpty!51150 (= setRes!51150 (and tp!1961372 tp_is_empty!45405))))

(declare-fun setElem!51150 () A!627)

(declare-fun setRest!51150 () (InoxSet A!627))

(assert (=> setNonEmpty!51150 (= setRest!51147 ((_ map or) (store ((as const (Array A!627 Bool)) false) setElem!51150 true) setRest!51150))))

(assert (= (and setNonEmpty!51146 condSetEmpty!51150) setIsEmpty!51150))

(assert (= (and setNonEmpty!51146 (not condSetEmpty!51150)) setNonEmpty!51150))

(declare-fun condSetEmpty!51151 () Bool)

(assert (=> setNonEmpty!51147 (= condSetEmpty!51151 (= setRest!51146 ((as const (Array A!627 Bool)) false)))))

(declare-fun setRes!51151 () Bool)

(assert (=> setNonEmpty!51147 (= tp!1961366 setRes!51151)))

(declare-fun setIsEmpty!51151 () Bool)

(assert (=> setIsEmpty!51151 setRes!51151))

(declare-fun setNonEmpty!51151 () Bool)

(declare-fun tp!1961373 () Bool)

(assert (=> setNonEmpty!51151 (= setRes!51151 (and tp!1961373 tp_is_empty!45405))))

(declare-fun setElem!51151 () A!627)

(declare-fun setRest!51151 () (InoxSet A!627))

(assert (=> setNonEmpty!51151 (= setRest!51146 ((_ map or) (store ((as const (Array A!627 Bool)) false) setElem!51151 true) setRest!51151))))

(assert (= (and setNonEmpty!51147 condSetEmpty!51151) setIsEmpty!51151))

(assert (= (and setNonEmpty!51147 (not condSetEmpty!51151)) setNonEmpty!51151))

(declare-fun b!7122780 () Bool)

(declare-fun e!4280085 () Bool)

(declare-fun tp!1961376 () Bool)

(assert (=> b!7122780 (= e!4280085 (and tp_is_empty!45407 tp!1961376))))

(assert (=> b!7122740 (= tp!1961369 e!4280085)))

(assert (= (and b!7122740 ((_ is Cons!68888) (t!382923 l1!770))) b!7122780))

(declare-fun b!7122781 () Bool)

(declare-fun e!4280086 () Bool)

(declare-fun tp!1961377 () Bool)

(assert (=> b!7122781 (= e!4280086 (and tp_is_empty!45407 tp!1961377))))

(assert (=> b!7122741 (= tp!1961368 e!4280086)))

(assert (= (and b!7122741 ((_ is Cons!68888) (t!382923 l2!759))) b!7122781))

(check-sat tp_is_empty!45407 (not b!7122756) (not setNonEmpty!51150) (not d!2222753) (not d!2222745) (not d!2222747) (not b_next!134511) (not b!7122781) (not d!2222763) (not d!2222761) (not b!7122780) b_and!350817 (not b!7122765) (not d!2222759) (not b!7122757) (not b!7122762) tp_is_empty!45405 (not setNonEmpty!51151))
(check-sat b_and!350817 (not b_next!134511))
