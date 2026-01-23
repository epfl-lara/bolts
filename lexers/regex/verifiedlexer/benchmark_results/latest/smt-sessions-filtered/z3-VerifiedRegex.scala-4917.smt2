; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!251404 () Bool)

(assert start!251404)

(declare-fun b!2593272 () Bool)

(assert (=> b!2593272 true))

(declare-fun b!2593266 () Bool)

(declare-fun e!1636094 () Bool)

(declare-fun tp_is_empty!13369 () Bool)

(declare-fun tp!822848 () Bool)

(assert (=> b!2593266 (= e!1636094 (and tp_is_empty!13369 tp!822848))))

(declare-fun b!2593267 () Bool)

(declare-fun e!1636093 () Bool)

(declare-fun e!1636096 () Bool)

(assert (=> b!2593267 (= e!1636093 e!1636096)))

(declare-fun res!1090830 () Bool)

(assert (=> b!2593267 (=> res!1090830 e!1636096)))

(declare-datatypes ((B!2089 0))(
  ( (B!2090 (val!9512 Int)) )
))
(declare-datatypes ((List!29945 0))(
  ( (Nil!29845) (Cons!29845 (h!35265 B!2089) (t!212958 List!29945)) )
))
(declare-fun l!3230 () List!29945)

(declare-fun lt!912725 () Int)

(declare-fun size!23152 (List!29945) Int)

(assert (=> b!2593267 (= res!1090830 (not (= (size!23152 l!3230) lt!912725)))))

(declare-fun lt!912728 () Int)

(assert (=> b!2593267 (= lt!912725 (+ 1 lt!912728))))

(declare-fun res!1090823 () Bool)

(declare-fun e!1636099 () Bool)

(assert (=> start!251404 (=> (not res!1090823) (not e!1636099))))

(declare-fun noDuplicate!393 (List!29945) Bool)

(assert (=> start!251404 (= res!1090823 (noDuplicate!393 l!3230))))

(assert (=> start!251404 e!1636099))

(assert (=> start!251404 e!1636094))

(declare-fun b!2593268 () Bool)

(declare-fun e!1636095 () Bool)

(declare-fun e!1636092 () Bool)

(assert (=> b!2593268 (= e!1636095 e!1636092)))

(declare-fun res!1090829 () Bool)

(assert (=> b!2593268 (=> res!1090829 e!1636092)))

(declare-fun lt!912737 () List!29945)

(assert (=> b!2593268 (= res!1090829 (not (noDuplicate!393 lt!912737)))))

(declare-datatypes ((Unit!43832 0))(
  ( (Unit!43833) )
))
(declare-fun lt!912734 () Unit!43832)

(declare-fun subsetContains!68 (List!29945 List!29945) Unit!43832)

(assert (=> b!2593268 (= lt!912734 (subsetContains!68 l!3230 lt!912737))))

(declare-fun b!2593269 () Bool)

(declare-fun res!1090825 () Bool)

(assert (=> b!2593269 (=> (not res!1090825) (not e!1636099))))

(get-info :version)

(assert (=> b!2593269 (= res!1090825 ((_ is Cons!29845) l!3230))))

(declare-fun b!2593270 () Bool)

(declare-fun e!1636098 () Unit!43832)

(declare-fun Unit!43834 () Unit!43832)

(assert (=> b!2593270 (= e!1636098 Unit!43834)))

(declare-fun b!2593271 () Bool)

(assert (=> b!2593271 (= e!1636099 (not e!1636093))))

(declare-fun res!1090827 () Bool)

(assert (=> b!2593271 (=> res!1090827 e!1636093)))

(declare-fun lt!912732 () Int)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!912726 () (InoxSet B!2089))

(declare-fun lt!912735 () Int)

(assert (=> b!2593271 (= res!1090827 (or (>= lt!912732 lt!912735) (select lt!912726 (h!35265 l!3230))))))

(assert (=> b!2593271 (= lt!912735 (size!23152 l!3230))))

(assert (=> b!2593271 (= lt!912732 lt!912728)))

(assert (=> b!2593271 (= lt!912728 (size!23152 (t!212958 l!3230)))))

(declare-fun toList!1790 ((InoxSet B!2089)) List!29945)

(assert (=> b!2593271 (= lt!912732 (size!23152 (toList!1790 lt!912726)))))

(declare-fun content!4180 (List!29945) (InoxSet B!2089))

(assert (=> b!2593271 (= lt!912726 (content!4180 (t!212958 l!3230)))))

(declare-fun lt!912730 () Unit!43832)

(declare-fun lemmaNoDuplicateThenContentToListSameSize!80 (List!29945) Unit!43832)

(assert (=> b!2593271 (= lt!912730 (lemmaNoDuplicateThenContentToListSameSize!80 (t!212958 l!3230)))))

(declare-fun Unit!43835 () Unit!43832)

(assert (=> b!2593272 (= e!1636098 Unit!43835)))

(declare-fun lt!912724 () Unit!43832)

(assert (=> b!2593272 (= lt!912724 (subsetContains!68 lt!912737 l!3230))))

(declare-fun lt!912729 () Unit!43832)

(declare-fun lemmaNoDuplicateSmallerListExistsElmtNotInOther!34 (List!29945 List!29945) Unit!43832)

(assert (=> b!2593272 (= lt!912729 (lemmaNoDuplicateSmallerListExistsElmtNotInOther!34 l!3230 lt!912737))))

(declare-fun lambda!96294 () Int)

(declare-fun exists!918 (List!29945 Int) Bool)

(assert (=> b!2593272 (exists!918 l!3230 lambda!96294)))

(declare-fun lt!912733 () B!2089)

(declare-fun getWitness!544 (List!29945 Int) B!2089)

(assert (=> b!2593272 (= lt!912733 (getWitness!544 l!3230 lambda!96294))))

(assert (=> b!2593272 false))

(declare-fun b!2593273 () Bool)

(declare-fun e!1636097 () Bool)

(assert (=> b!2593273 (= e!1636097 e!1636095)))

(declare-fun res!1090826 () Bool)

(assert (=> b!2593273 (=> res!1090826 e!1636095)))

(declare-fun lt!912736 () Int)

(assert (=> b!2593273 (= res!1090826 (<= lt!912736 lt!912725))))

(declare-fun lt!912727 () Unit!43832)

(assert (=> b!2593273 (= lt!912727 e!1636098)))

(declare-fun c!418010 () Bool)

(assert (=> b!2593273 (= c!418010 (< lt!912736 lt!912725))))

(assert (=> b!2593273 (= lt!912736 (size!23152 lt!912737))))

(declare-fun lt!912731 () (InoxSet B!2089))

(assert (=> b!2593273 (= lt!912737 (toList!1790 lt!912731))))

(declare-fun b!2593274 () Bool)

(assert (=> b!2593274 (= e!1636096 e!1636097)))

(declare-fun res!1090824 () Bool)

(assert (=> b!2593274 (=> res!1090824 e!1636097)))

(assert (=> b!2593274 (= res!1090824 (not (= (content!4180 l!3230) lt!912731)))))

(assert (=> b!2593274 (= lt!912731 ((_ map or) lt!912726 (store ((as const (Array B!2089 Bool)) false) (h!35265 l!3230) true)))))

(declare-fun b!2593275 () Bool)

(assert (=> b!2593275 (= e!1636092 (> lt!912736 lt!912735))))

(declare-fun b!2593276 () Bool)

(declare-fun res!1090828 () Bool)

(assert (=> b!2593276 (=> res!1090828 e!1636095)))

(assert (=> b!2593276 (= res!1090828 (not (= lt!912731 (content!4180 l!3230))))))

(declare-fun b!2593277 () Bool)

(declare-fun res!1090831 () Bool)

(assert (=> b!2593277 (=> res!1090831 e!1636093)))

(declare-fun contains!5395 (List!29945 B!2089) Bool)

(assert (=> b!2593277 (= res!1090831 (contains!5395 (t!212958 l!3230) (h!35265 l!3230)))))

(assert (= (and start!251404 res!1090823) b!2593269))

(assert (= (and b!2593269 res!1090825) b!2593271))

(assert (= (and b!2593271 (not res!1090827)) b!2593277))

(assert (= (and b!2593277 (not res!1090831)) b!2593267))

(assert (= (and b!2593267 (not res!1090830)) b!2593274))

(assert (= (and b!2593274 (not res!1090824)) b!2593273))

(assert (= (and b!2593273 c!418010) b!2593272))

(assert (= (and b!2593273 (not c!418010)) b!2593270))

(assert (= (and b!2593273 (not res!1090826)) b!2593276))

(assert (= (and b!2593276 (not res!1090828)) b!2593268))

(assert (= (and b!2593268 (not res!1090829)) b!2593275))

(assert (= (and start!251404 ((_ is Cons!29845) l!3230)) b!2593266))

(declare-fun m!2929323 () Bool)

(assert (=> b!2593274 m!2929323))

(declare-fun m!2929325 () Bool)

(assert (=> b!2593274 m!2929325))

(declare-fun m!2929327 () Bool)

(assert (=> b!2593268 m!2929327))

(declare-fun m!2929329 () Bool)

(assert (=> b!2593268 m!2929329))

(assert (=> b!2593276 m!2929323))

(declare-fun m!2929331 () Bool)

(assert (=> b!2593272 m!2929331))

(declare-fun m!2929333 () Bool)

(assert (=> b!2593272 m!2929333))

(declare-fun m!2929335 () Bool)

(assert (=> b!2593272 m!2929335))

(declare-fun m!2929337 () Bool)

(assert (=> b!2593272 m!2929337))

(declare-fun m!2929339 () Bool)

(assert (=> b!2593267 m!2929339))

(declare-fun m!2929341 () Bool)

(assert (=> b!2593273 m!2929341))

(declare-fun m!2929343 () Bool)

(assert (=> b!2593273 m!2929343))

(declare-fun m!2929345 () Bool)

(assert (=> b!2593277 m!2929345))

(assert (=> b!2593271 m!2929339))

(declare-fun m!2929347 () Bool)

(assert (=> b!2593271 m!2929347))

(declare-fun m!2929349 () Bool)

(assert (=> b!2593271 m!2929349))

(declare-fun m!2929351 () Bool)

(assert (=> b!2593271 m!2929351))

(assert (=> b!2593271 m!2929347))

(declare-fun m!2929353 () Bool)

(assert (=> b!2593271 m!2929353))

(declare-fun m!2929355 () Bool)

(assert (=> b!2593271 m!2929355))

(declare-fun m!2929357 () Bool)

(assert (=> b!2593271 m!2929357))

(declare-fun m!2929359 () Bool)

(assert (=> start!251404 m!2929359))

(check-sat (not b!2593271) (not b!2593268) (not b!2593272) (not b!2593276) (not b!2593273) (not b!2593267) (not b!2593266) tp_is_empty!13369 (not b!2593277) (not start!251404) (not b!2593274))
(check-sat)
