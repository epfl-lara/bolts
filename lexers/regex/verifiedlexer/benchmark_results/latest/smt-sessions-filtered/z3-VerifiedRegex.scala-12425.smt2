; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!694048 () Bool)

(assert start!694048)

(declare-fun b_free!133805 () Bool)

(declare-fun b_next!134595 () Bool)

(assert (=> start!694048 (= b_free!133805 (not b_next!134595))))

(declare-fun tp!1962067 () Bool)

(declare-fun b_and!350955 () Bool)

(assert (=> start!694048 (= tp!1962067 b_and!350955)))

(declare-fun res!2906991 () Bool)

(declare-fun e!4281185 () Bool)

(assert (=> start!694048 (=> (not res!2906991) (not e!4281185))))

(declare-datatypes ((B!3369 0))(
  ( (B!3370 (val!28037 Int)) )
))
(declare-fun b!25321 () B!3369)

(declare-fun f!518 () Int)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((A!711 0))(
  ( (A!712 (val!28038 Int)) )
))
(declare-fun s1!413 () (InoxSet A!711))

(declare-fun map!16479 ((InoxSet A!711) Int) (InoxSet B!3369))

(assert (=> start!694048 (= res!2906991 (not (select (map!16479 s1!413 f!518) b!25321)))))

(assert (=> start!694048 e!4281185))

(declare-fun tp_is_empty!45573 () Bool)

(assert (=> start!694048 tp_is_empty!45573))

(declare-fun condSetEmpty!51530 () Bool)

(assert (=> start!694048 (= condSetEmpty!51530 (= s1!413 ((as const (Array A!711 Bool)) false)))))

(declare-fun setRes!51530 () Bool)

(assert (=> start!694048 setRes!51530))

(assert (=> start!694048 tp!1962067))

(declare-fun condSetEmpty!51531 () Bool)

(declare-fun s2!384 () (InoxSet A!711))

(assert (=> start!694048 (= condSetEmpty!51531 (= s2!384 ((as const (Array A!711 Bool)) false)))))

(declare-fun setRes!51531 () Bool)

(assert (=> start!694048 setRes!51531))

(declare-fun b!7124254 () Bool)

(declare-fun e!4281186 () Bool)

(assert (=> b!7124254 (= e!4281186 (not false))))

(declare-fun lt!2562818 () A!711)

(declare-datatypes ((Unit!162819 0))(
  ( (Unit!162820) )
))
(declare-fun empty!2855 () Unit!162819)

(declare-fun mapPost1!18 ((InoxSet A!711) Int A!711) Unit!162819)

(assert (=> b!7124254 (= (mapPost1!18 s1!413 f!518 lt!2562818) empty!2855)))

(assert (=> b!7124254 true))

(declare-fun setIsEmpty!51530 () Bool)

(assert (=> setIsEmpty!51530 setRes!51531))

(declare-fun b!7124255 () Bool)

(declare-fun e!4281184 () Bool)

(assert (=> b!7124255 (= e!4281185 e!4281184)))

(declare-fun res!2906988 () Bool)

(assert (=> b!7124255 (=> (not res!2906988) (not e!4281184))))

(declare-fun lt!2562816 () (InoxSet A!711))

(assert (=> b!7124255 (= res!2906988 (select (map!16479 lt!2562816 f!518) b!25321))))

(assert (=> b!7124255 (= lt!2562816 ((_ map or) s1!413 s2!384))))

(declare-fun setNonEmpty!51530 () Bool)

(declare-fun tp!1962066 () Bool)

(declare-fun tp_is_empty!45575 () Bool)

(assert (=> setNonEmpty!51530 (= setRes!51530 (and tp!1962066 tp_is_empty!45575))))

(declare-fun setElem!51530 () A!711)

(declare-fun setRest!51530 () (InoxSet A!711))

(assert (=> setNonEmpty!51530 (= s1!413 ((_ map or) (store ((as const (Array A!711 Bool)) false) setElem!51530 true) setRest!51530))))

(declare-fun b!7124256 () Bool)

(declare-fun res!2906990 () Bool)

(assert (=> b!7124256 (=> (not res!2906990) (not e!4281185))))

(assert (=> b!7124256 (= res!2906990 (not (select (map!16479 s2!384 f!518) b!25321)))))

(declare-fun b!7124257 () Bool)

(assert (=> b!7124257 (= e!4281184 e!4281186)))

(declare-fun res!2906989 () Bool)

(assert (=> b!7124257 (=> (not res!2906989) (not e!4281186))))

(declare-fun lt!2562817 () Bool)

(assert (=> b!7124257 (= res!2906989 (and (or lt!2562817 (select s2!384 lt!2562818)) lt!2562817))))

(assert (=> b!7124257 (= lt!2562817 (select s1!413 lt!2562818))))

(declare-fun mapPost2!584 ((InoxSet A!711) Int B!3369) A!711)

(assert (=> b!7124257 (= lt!2562818 (mapPost2!584 lt!2562816 f!518 b!25321))))

(declare-fun setIsEmpty!51531 () Bool)

(assert (=> setIsEmpty!51531 setRes!51530))

(declare-fun setNonEmpty!51531 () Bool)

(declare-fun tp!1962065 () Bool)

(assert (=> setNonEmpty!51531 (= setRes!51531 (and tp!1962065 tp_is_empty!45575))))

(declare-fun setElem!51531 () A!711)

(declare-fun setRest!51531 () (InoxSet A!711))

(assert (=> setNonEmpty!51531 (= s2!384 ((_ map or) (store ((as const (Array A!711 Bool)) false) setElem!51531 true) setRest!51531))))

(assert (= (and start!694048 res!2906991) b!7124256))

(assert (= (and b!7124256 res!2906990) b!7124255))

(assert (= (and b!7124255 res!2906988) b!7124257))

(assert (= (and b!7124257 res!2906989) b!7124254))

(assert (= (and start!694048 condSetEmpty!51530) setIsEmpty!51531))

(assert (= (and start!694048 (not condSetEmpty!51530)) setNonEmpty!51530))

(assert (= (and start!694048 condSetEmpty!51531) setIsEmpty!51530))

(assert (= (and start!694048 (not condSetEmpty!51531)) setNonEmpty!51531))

(declare-fun m!7841766 () Bool)

(assert (=> b!7124257 m!7841766))

(declare-fun m!7841768 () Bool)

(assert (=> b!7124257 m!7841768))

(declare-fun m!7841770 () Bool)

(assert (=> b!7124257 m!7841770))

(declare-fun m!7841772 () Bool)

(assert (=> b!7124255 m!7841772))

(declare-fun m!7841774 () Bool)

(assert (=> b!7124255 m!7841774))

(declare-fun m!7841776 () Bool)

(assert (=> b!7124254 m!7841776))

(declare-fun m!7841778 () Bool)

(assert (=> b!7124256 m!7841778))

(declare-fun m!7841780 () Bool)

(assert (=> b!7124256 m!7841780))

(declare-fun m!7841782 () Bool)

(assert (=> start!694048 m!7841782))

(declare-fun m!7841784 () Bool)

(assert (=> start!694048 m!7841784))

(check-sat (not setNonEmpty!51530) (not b!7124255) (not b!7124256) (not b_next!134595) b_and!350955 (not setNonEmpty!51531) (not b!7124257) (not b!7124254) tp_is_empty!45573 (not start!694048) tp_is_empty!45575)
(check-sat b_and!350955 (not b_next!134595))
(get-model)

(declare-fun d!2223308 () Bool)

(declare-fun choose!55078 ((InoxSet A!711) Int) (InoxSet B!3369))

(assert (=> d!2223308 (= (map!16479 s2!384 f!518) (choose!55078 s2!384 f!518))))

(declare-fun bs!1886245 () Bool)

(assert (= bs!1886245 d!2223308))

(declare-fun m!7841786 () Bool)

(assert (=> bs!1886245 m!7841786))

(assert (=> b!7124256 d!2223308))

(declare-fun d!2223312 () Bool)

(assert (=> d!2223312 (= (map!16479 s1!413 f!518) (choose!55078 s1!413 f!518))))

(declare-fun bs!1886246 () Bool)

(assert (= bs!1886246 d!2223312))

(declare-fun m!7841788 () Bool)

(assert (=> bs!1886246 m!7841788))

(assert (=> start!694048 d!2223312))

(declare-fun d!2223314 () Bool)

(assert (=> d!2223314 (= (map!16479 lt!2562816 f!518) (choose!55078 lt!2562816 f!518))))

(declare-fun bs!1886247 () Bool)

(assert (= bs!1886247 d!2223314))

(declare-fun m!7841790 () Bool)

(assert (=> bs!1886247 m!7841790))

(assert (=> b!7124255 d!2223314))

(declare-fun d!2223316 () Bool)

(declare-fun e!4281191 () Bool)

(assert (=> d!2223316 e!4281191))

(declare-fun res!2906996 () Bool)

(assert (=> d!2223316 (=> res!2906996 e!4281191)))

(assert (=> d!2223316 (= res!2906996 (not (select s1!413 lt!2562818)))))

(declare-fun lt!2562823 () Unit!162819)

(declare-fun choose!55080 ((InoxSet A!711) Int A!711) Unit!162819)

(assert (=> d!2223316 (= lt!2562823 (choose!55080 s1!413 f!518 lt!2562818))))

(assert (=> d!2223316 (= (mapPost1!18 s1!413 f!518 lt!2562818) lt!2562823)))

(declare-fun b!7124262 () Bool)

(declare-fun dynLambda!28101 (Int A!711) B!3369)

(assert (=> b!7124262 (= e!4281191 (select (map!16479 s1!413 f!518) (dynLambda!28101 f!518 lt!2562818)))))

(assert (= (and d!2223316 (not res!2906996)) b!7124262))

(declare-fun b_lambda!271885 () Bool)

(assert (=> (not b_lambda!271885) (not b!7124262)))

(declare-fun t!382989 () Bool)

(declare-fun tb!262039 () Bool)

(assert (=> (and start!694048 (= f!518 f!518) t!382989) tb!262039))

(declare-fun result!349374 () Bool)

(assert (=> tb!262039 (= result!349374 tp_is_empty!45573)))

(assert (=> b!7124262 t!382989))

(declare-fun b_and!350957 () Bool)

(assert (= b_and!350955 (and (=> t!382989 result!349374) b_and!350957)))

(assert (=> d!2223316 m!7841768))

(declare-fun m!7841798 () Bool)

(assert (=> d!2223316 m!7841798))

(declare-fun m!7841800 () Bool)

(assert (=> b!7124262 m!7841800))

(assert (=> b!7124262 m!7841782))

(assert (=> b!7124262 m!7841800))

(declare-fun m!7841802 () Bool)

(assert (=> b!7124262 m!7841802))

(assert (=> b!7124254 d!2223316))

(declare-fun d!2223324 () Bool)

(declare-fun e!4281197 () Bool)

(assert (=> d!2223324 e!4281197))

(declare-fun res!2907002 () Bool)

(assert (=> d!2223324 (=> (not res!2907002) (not e!4281197))))

(declare-fun lt!2562829 () A!711)

(assert (=> d!2223324 (= res!2907002 (= b!25321 (dynLambda!28101 f!518 lt!2562829)))))

(declare-fun choose!55082 ((InoxSet A!711) Int B!3369) A!711)

(assert (=> d!2223324 (= lt!2562829 (choose!55082 lt!2562816 f!518 b!25321))))

(assert (=> d!2223324 (select (map!16479 lt!2562816 f!518) b!25321)))

(assert (=> d!2223324 (= (mapPost2!584 lt!2562816 f!518 b!25321) lt!2562829)))

(declare-fun b!7124274 () Bool)

(assert (=> b!7124274 (= e!4281197 (select lt!2562816 lt!2562829))))

(assert (= (and d!2223324 res!2907002) b!7124274))

(declare-fun b_lambda!271889 () Bool)

(assert (=> (not b_lambda!271889) (not d!2223324)))

(declare-fun t!382993 () Bool)

(declare-fun tb!262043 () Bool)

(assert (=> (and start!694048 (= f!518 f!518) t!382993) tb!262043))

(declare-fun result!349382 () Bool)

(assert (=> tb!262043 (= result!349382 tp_is_empty!45573)))

(assert (=> d!2223324 t!382993))

(declare-fun b_and!350961 () Bool)

(assert (= b_and!350957 (and (=> t!382993 result!349382) b_and!350961)))

(declare-fun m!7841810 () Bool)

(assert (=> d!2223324 m!7841810))

(declare-fun m!7841812 () Bool)

(assert (=> d!2223324 m!7841812))

(assert (=> d!2223324 m!7841772))

(assert (=> d!2223324 m!7841774))

(declare-fun m!7841814 () Bool)

(assert (=> b!7124274 m!7841814))

(assert (=> b!7124257 d!2223324))

(declare-fun condSetEmpty!51536 () Bool)

(assert (=> setNonEmpty!51530 (= condSetEmpty!51536 (= setRest!51530 ((as const (Array A!711 Bool)) false)))))

(declare-fun setRes!51536 () Bool)

(assert (=> setNonEmpty!51530 (= tp!1962066 setRes!51536)))

(declare-fun setIsEmpty!51536 () Bool)

(assert (=> setIsEmpty!51536 setRes!51536))

(declare-fun setNonEmpty!51536 () Bool)

(declare-fun tp!1962072 () Bool)

(assert (=> setNonEmpty!51536 (= setRes!51536 (and tp!1962072 tp_is_empty!45575))))

(declare-fun setElem!51536 () A!711)

(declare-fun setRest!51536 () (InoxSet A!711))

(assert (=> setNonEmpty!51536 (= setRest!51530 ((_ map or) (store ((as const (Array A!711 Bool)) false) setElem!51536 true) setRest!51536))))

(assert (= (and setNonEmpty!51530 condSetEmpty!51536) setIsEmpty!51536))

(assert (= (and setNonEmpty!51530 (not condSetEmpty!51536)) setNonEmpty!51536))

(declare-fun condSetEmpty!51537 () Bool)

(assert (=> setNonEmpty!51531 (= condSetEmpty!51537 (= setRest!51531 ((as const (Array A!711 Bool)) false)))))

(declare-fun setRes!51537 () Bool)

(assert (=> setNonEmpty!51531 (= tp!1962065 setRes!51537)))

(declare-fun setIsEmpty!51537 () Bool)

(assert (=> setIsEmpty!51537 setRes!51537))

(declare-fun setNonEmpty!51537 () Bool)

(declare-fun tp!1962073 () Bool)

(assert (=> setNonEmpty!51537 (= setRes!51537 (and tp!1962073 tp_is_empty!45575))))

(declare-fun setElem!51537 () A!711)

(declare-fun setRest!51537 () (InoxSet A!711))

(assert (=> setNonEmpty!51537 (= setRest!51531 ((_ map or) (store ((as const (Array A!711 Bool)) false) setElem!51537 true) setRest!51537))))

(assert (= (and setNonEmpty!51531 condSetEmpty!51537) setIsEmpty!51537))

(assert (= (and setNonEmpty!51531 (not condSetEmpty!51537)) setNonEmpty!51537))

(declare-fun b_lambda!271893 () Bool)

(assert (= b_lambda!271885 (or (and start!694048 b_free!133805) b_lambda!271893)))

(declare-fun b_lambda!271895 () Bool)

(assert (= b_lambda!271889 (or (and start!694048 b_free!133805) b_lambda!271895)))

(check-sat (not b_lambda!271893) b_and!350961 (not setNonEmpty!51536) (not b_lambda!271895) (not d!2223312) (not b_next!134595) tp_is_empty!45575 (not d!2223324) (not d!2223316) (not setNonEmpty!51537) (not d!2223314) (not b!7124262) (not d!2223308) tp_is_empty!45573)
(check-sat b_and!350961 (not b_next!134595))
