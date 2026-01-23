; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!251200 () Bool)

(assert start!251200)

(declare-fun b!2592113 () Bool)

(assert (=> b!2592113 true))

(declare-fun bs!472362 () Bool)

(declare-fun b!2592119 () Bool)

(assert (= bs!472362 (and b!2592119 b!2592113)))

(declare-datatypes ((B!2045 0))(
  ( (B!2046 (val!9490 Int)) )
))
(declare-datatypes ((List!29923 0))(
  ( (Nil!29823) (Cons!29823 (h!35243 B!2045) (t!212936 List!29923)) )
))
(declare-fun l!3230 () List!29923)

(declare-fun lambda!96193 () Int)

(declare-fun lambda!96194 () Int)

(declare-fun lt!911993 () List!29923)

(assert (=> bs!472362 (= (= l!3230 lt!911993) (= lambda!96194 lambda!96193))))

(assert (=> b!2592119 true))

(declare-fun b!2592112 () Bool)

(declare-fun e!1635287 () Bool)

(declare-fun e!1635285 () Bool)

(assert (=> b!2592112 (= e!1635287 e!1635285)))

(declare-fun res!1090114 () Bool)

(assert (=> b!2592112 (=> res!1090114 e!1635285)))

(declare-fun lt!912006 () Int)

(declare-fun size!23136 (List!29923) Int)

(assert (=> b!2592112 (= res!1090114 (not (= (size!23136 l!3230) lt!912006)))))

(declare-fun lt!911992 () Int)

(assert (=> b!2592112 (= lt!912006 (+ 1 lt!911992))))

(declare-fun res!1090113 () Bool)

(declare-fun e!1635289 () Bool)

(assert (=> start!251200 (=> (not res!1090113) (not e!1635289))))

(declare-fun noDuplicate!371 (List!29923) Bool)

(assert (=> start!251200 (= res!1090113 (noDuplicate!371 l!3230))))

(assert (=> start!251200 e!1635289))

(declare-fun e!1635286 () Bool)

(assert (=> start!251200 e!1635286))

(declare-datatypes ((Unit!43783 0))(
  ( (Unit!43784) )
))
(declare-fun e!1635288 () Unit!43783)

(declare-fun Unit!43785 () Unit!43783)

(assert (=> b!2592113 (= e!1635288 Unit!43785)))

(declare-fun lt!911998 () Unit!43783)

(declare-fun subsetContains!52 (List!29923 List!29923) Unit!43783)

(assert (=> b!2592113 (= lt!911998 (subsetContains!52 lt!911993 l!3230))))

(declare-fun lt!911995 () Unit!43783)

(declare-fun lemmaNoDuplicateSmallerListExistsElmtNotInOther!26 (List!29923 List!29923) Unit!43783)

(assert (=> b!2592113 (= lt!911995 (lemmaNoDuplicateSmallerListExistsElmtNotInOther!26 l!3230 lt!911993))))

(declare-fun exists!910 (List!29923 Int) Bool)

(assert (=> b!2592113 (exists!910 l!3230 lambda!96193)))

(declare-fun lt!912004 () B!2045)

(declare-fun getWitness!536 (List!29923 Int) B!2045)

(assert (=> b!2592113 (= lt!912004 (getWitness!536 l!3230 lambda!96193))))

(assert (=> b!2592113 false))

(declare-fun b!2592114 () Bool)

(declare-fun e!1635290 () Bool)

(assert (=> b!2592114 (= e!1635285 e!1635290)))

(declare-fun res!1090117 () Bool)

(assert (=> b!2592114 (=> res!1090117 e!1635290)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!912003 () (InoxSet B!2045))

(declare-fun content!4164 (List!29923) (InoxSet B!2045))

(assert (=> b!2592114 (= res!1090117 (not (= (content!4164 l!3230) lt!912003)))))

(declare-fun lt!912007 () (InoxSet B!2045))

(assert (=> b!2592114 (= lt!912003 ((_ map or) lt!912007 (store ((as const (Array B!2045 Bool)) false) (h!35243 l!3230) true)))))

(declare-fun b!2592115 () Bool)

(declare-fun res!1090116 () Bool)

(assert (=> b!2592115 (=> res!1090116 e!1635287)))

(assert (=> b!2592115 (= res!1090116 (select lt!912007 (h!35243 l!3230)))))

(declare-fun b!2592116 () Bool)

(declare-fun e!1635291 () Unit!43783)

(declare-fun Unit!43786 () Unit!43783)

(assert (=> b!2592116 (= e!1635291 Unit!43786)))

(declare-fun b!2592117 () Bool)

(declare-fun lt!912001 () Int)

(assert (=> b!2592117 (= e!1635290 (= lt!912001 lt!912006))))

(declare-fun lt!911999 () Unit!43783)

(assert (=> b!2592117 (= lt!911999 e!1635291)))

(declare-fun c!417873 () Bool)

(assert (=> b!2592117 (= c!417873 (> lt!912001 lt!912006))))

(declare-fun lt!911996 () Unit!43783)

(assert (=> b!2592117 (= lt!911996 e!1635288)))

(declare-fun c!417874 () Bool)

(assert (=> b!2592117 (= c!417874 (< lt!912001 lt!912006))))

(assert (=> b!2592117 (= lt!912001 (size!23136 lt!911993))))

(declare-fun toList!1774 ((InoxSet B!2045)) List!29923)

(assert (=> b!2592117 (= lt!911993 (toList!1774 lt!912003))))

(declare-fun b!2592118 () Bool)

(declare-fun Unit!43787 () Unit!43783)

(assert (=> b!2592118 (= e!1635288 Unit!43787)))

(declare-fun Unit!43788 () Unit!43783)

(assert (=> b!2592119 (= e!1635291 Unit!43788)))

(declare-fun lt!912002 () Unit!43783)

(assert (=> b!2592119 (= lt!912002 (subsetContains!52 l!3230 lt!911993))))

(declare-fun lt!911997 () Unit!43783)

(assert (=> b!2592119 (= lt!911997 (lemmaNoDuplicateSmallerListExistsElmtNotInOther!26 lt!911993 l!3230))))

(assert (=> b!2592119 (exists!910 lt!911993 lambda!96194)))

(declare-fun lt!912005 () B!2045)

(assert (=> b!2592119 (= lt!912005 (getWitness!536 lt!911993 lambda!96194))))

(assert (=> b!2592119 false))

(declare-fun b!2592120 () Bool)

(declare-fun res!1090115 () Bool)

(assert (=> b!2592120 (=> res!1090115 e!1635287)))

(declare-fun contains!5373 (List!29923 B!2045) Bool)

(assert (=> b!2592120 (= res!1090115 (contains!5373 (t!212936 l!3230) (h!35243 l!3230)))))

(declare-fun b!2592121 () Bool)

(declare-fun res!1090112 () Bool)

(assert (=> b!2592121 (=> (not res!1090112) (not e!1635289))))

(get-info :version)

(assert (=> b!2592121 (= res!1090112 ((_ is Cons!29823) l!3230))))

(declare-fun b!2592122 () Bool)

(assert (=> b!2592122 (= e!1635289 (not e!1635287))))

(declare-fun res!1090111 () Bool)

(assert (=> b!2592122 (=> res!1090111 e!1635287)))

(declare-fun lt!911994 () Int)

(assert (=> b!2592122 (= res!1090111 (>= lt!911994 (size!23136 l!3230)))))

(assert (=> b!2592122 (= lt!911994 lt!911992)))

(assert (=> b!2592122 (= lt!911992 (size!23136 (t!212936 l!3230)))))

(assert (=> b!2592122 (= lt!911994 (size!23136 (toList!1774 lt!912007)))))

(assert (=> b!2592122 (= lt!912007 (content!4164 (t!212936 l!3230)))))

(declare-fun lt!912000 () Unit!43783)

(declare-fun lemmaNoDuplicateThenContentToListSameSize!64 (List!29923) Unit!43783)

(assert (=> b!2592122 (= lt!912000 (lemmaNoDuplicateThenContentToListSameSize!64 (t!212936 l!3230)))))

(declare-fun b!2592123 () Bool)

(declare-fun tp_is_empty!13325 () Bool)

(declare-fun tp!822740 () Bool)

(assert (=> b!2592123 (= e!1635286 (and tp_is_empty!13325 tp!822740))))

(assert (= (and start!251200 res!1090113) b!2592121))

(assert (= (and b!2592121 res!1090112) b!2592122))

(assert (= (and b!2592122 (not res!1090111)) b!2592115))

(assert (= (and b!2592115 (not res!1090116)) b!2592120))

(assert (= (and b!2592120 (not res!1090115)) b!2592112))

(assert (= (and b!2592112 (not res!1090114)) b!2592114))

(assert (= (and b!2592114 (not res!1090117)) b!2592117))

(assert (= (and b!2592117 c!417874) b!2592113))

(assert (= (and b!2592117 (not c!417874)) b!2592118))

(assert (= (and b!2592117 c!417873) b!2592119))

(assert (= (and b!2592117 (not c!417873)) b!2592116))

(assert (= (and start!251200 ((_ is Cons!29823) l!3230)) b!2592123))

(declare-fun m!2928243 () Bool)

(assert (=> b!2592114 m!2928243))

(declare-fun m!2928245 () Bool)

(assert (=> b!2592114 m!2928245))

(declare-fun m!2928247 () Bool)

(assert (=> b!2592117 m!2928247))

(declare-fun m!2928249 () Bool)

(assert (=> b!2592117 m!2928249))

(declare-fun m!2928251 () Bool)

(assert (=> b!2592122 m!2928251))

(declare-fun m!2928253 () Bool)

(assert (=> b!2592122 m!2928253))

(declare-fun m!2928255 () Bool)

(assert (=> b!2592122 m!2928255))

(declare-fun m!2928257 () Bool)

(assert (=> b!2592122 m!2928257))

(declare-fun m!2928259 () Bool)

(assert (=> b!2592122 m!2928259))

(declare-fun m!2928261 () Bool)

(assert (=> b!2592122 m!2928261))

(assert (=> b!2592122 m!2928251))

(declare-fun m!2928263 () Bool)

(assert (=> b!2592113 m!2928263))

(declare-fun m!2928265 () Bool)

(assert (=> b!2592113 m!2928265))

(declare-fun m!2928267 () Bool)

(assert (=> b!2592113 m!2928267))

(declare-fun m!2928269 () Bool)

(assert (=> b!2592113 m!2928269))

(declare-fun m!2928271 () Bool)

(assert (=> b!2592120 m!2928271))

(declare-fun m!2928273 () Bool)

(assert (=> b!2592119 m!2928273))

(declare-fun m!2928275 () Bool)

(assert (=> b!2592119 m!2928275))

(declare-fun m!2928277 () Bool)

(assert (=> b!2592119 m!2928277))

(declare-fun m!2928279 () Bool)

(assert (=> b!2592119 m!2928279))

(declare-fun m!2928281 () Bool)

(assert (=> b!2592115 m!2928281))

(assert (=> b!2592112 m!2928255))

(declare-fun m!2928283 () Bool)

(assert (=> start!251200 m!2928283))

(check-sat (not b!2592123) (not b!2592117) (not start!251200) (not b!2592113) (not b!2592119) (not b!2592114) (not b!2592122) tp_is_empty!13325 (not b!2592120) (not b!2592112))
(check-sat)
