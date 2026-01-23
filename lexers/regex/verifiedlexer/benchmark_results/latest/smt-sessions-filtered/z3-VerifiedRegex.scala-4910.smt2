; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!251236 () Bool)

(assert start!251236)

(declare-fun b!2592332 () Bool)

(declare-fun e!1635436 () Bool)

(assert (=> b!2592332 (= e!1635436 true)))

(declare-datatypes ((Unit!43791 0))(
  ( (Unit!43792) )
))
(declare-fun lt!912066 () Unit!43791)

(declare-datatypes ((B!2061 0))(
  ( (B!2062 (val!9498 Int)) )
))
(declare-datatypes ((List!29931 0))(
  ( (Nil!29831) (Cons!29831 (h!35251 B!2061) (t!212944 List!29931)) )
))
(declare-fun lt!912065 () List!29931)

(declare-fun l!3230 () List!29931)

(declare-fun subsetContains!54 (List!29931 List!29931) Unit!43791)

(assert (=> b!2592332 (= lt!912066 (subsetContains!54 lt!912065 l!3230))))

(declare-fun b!2592333 () Bool)

(declare-fun e!1635434 () Bool)

(assert (=> b!2592333 (= e!1635434 e!1635436)))

(declare-fun res!1090245 () Bool)

(assert (=> b!2592333 (=> res!1090245 e!1635436)))

(declare-fun lt!912063 () Int)

(declare-fun size!23138 (List!29931) Int)

(assert (=> b!2592333 (= res!1090245 (>= (size!23138 lt!912065) lt!912063))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!912068 () (InoxSet B!2061))

(declare-fun toList!1776 ((InoxSet B!2061)) List!29931)

(assert (=> b!2592333 (= lt!912065 (toList!1776 lt!912068))))

(declare-fun b!2592334 () Bool)

(declare-fun res!1090246 () Bool)

(declare-fun e!1635438 () Bool)

(assert (=> b!2592334 (=> res!1090246 e!1635438)))

(declare-fun lt!912069 () (InoxSet B!2061))

(assert (=> b!2592334 (= res!1090246 (select lt!912069 (h!35251 l!3230)))))

(declare-fun b!2592335 () Bool)

(declare-fun res!1090244 () Bool)

(assert (=> b!2592335 (=> res!1090244 e!1635438)))

(declare-fun contains!5381 (List!29931 B!2061) Bool)

(assert (=> b!2592335 (= res!1090244 (contains!5381 (t!212944 l!3230) (h!35251 l!3230)))))

(declare-fun res!1090247 () Bool)

(declare-fun e!1635435 () Bool)

(assert (=> start!251236 (=> (not res!1090247) (not e!1635435))))

(declare-fun noDuplicate!379 (List!29931) Bool)

(assert (=> start!251236 (= res!1090247 (noDuplicate!379 l!3230))))

(assert (=> start!251236 e!1635435))

(declare-fun e!1635437 () Bool)

(assert (=> start!251236 e!1635437))

(declare-fun b!2592336 () Bool)

(assert (=> b!2592336 (= e!1635435 (not e!1635438))))

(declare-fun res!1090248 () Bool)

(assert (=> b!2592336 (=> res!1090248 e!1635438)))

(declare-fun lt!912067 () Int)

(assert (=> b!2592336 (= res!1090248 (>= lt!912067 (size!23138 l!3230)))))

(declare-fun lt!912064 () Int)

(assert (=> b!2592336 (= lt!912067 lt!912064)))

(assert (=> b!2592336 (= lt!912064 (size!23138 (t!212944 l!3230)))))

(assert (=> b!2592336 (= lt!912067 (size!23138 (toList!1776 lt!912069)))))

(declare-fun content!4166 (List!29931) (InoxSet B!2061))

(assert (=> b!2592336 (= lt!912069 (content!4166 (t!212944 l!3230)))))

(declare-fun lt!912062 () Unit!43791)

(declare-fun lemmaNoDuplicateThenContentToListSameSize!66 (List!29931) Unit!43791)

(assert (=> b!2592336 (= lt!912062 (lemmaNoDuplicateThenContentToListSameSize!66 (t!212944 l!3230)))))

(declare-fun b!2592337 () Bool)

(declare-fun e!1635439 () Bool)

(assert (=> b!2592337 (= e!1635439 e!1635434)))

(declare-fun res!1090243 () Bool)

(assert (=> b!2592337 (=> res!1090243 e!1635434)))

(assert (=> b!2592337 (= res!1090243 (not (= (content!4166 l!3230) lt!912068)))))

(assert (=> b!2592337 (= lt!912068 ((_ map or) lt!912069 (store ((as const (Array B!2061 Bool)) false) (h!35251 l!3230) true)))))

(declare-fun b!2592338 () Bool)

(declare-fun res!1090250 () Bool)

(assert (=> b!2592338 (=> (not res!1090250) (not e!1635435))))

(get-info :version)

(assert (=> b!2592338 (= res!1090250 ((_ is Cons!29831) l!3230))))

(declare-fun b!2592339 () Bool)

(declare-fun res!1090249 () Bool)

(assert (=> b!2592339 (=> res!1090249 e!1635436)))

(assert (=> b!2592339 (= res!1090249 (not (= lt!912068 (content!4166 l!3230))))))

(declare-fun b!2592340 () Bool)

(declare-fun tp_is_empty!13341 () Bool)

(declare-fun tp!822782 () Bool)

(assert (=> b!2592340 (= e!1635437 (and tp_is_empty!13341 tp!822782))))

(declare-fun b!2592341 () Bool)

(assert (=> b!2592341 (= e!1635438 e!1635439)))

(declare-fun res!1090251 () Bool)

(assert (=> b!2592341 (=> res!1090251 e!1635439)))

(assert (=> b!2592341 (= res!1090251 (not (= (size!23138 l!3230) lt!912063)))))

(assert (=> b!2592341 (= lt!912063 (+ 1 lt!912064))))

(assert (= (and start!251236 res!1090247) b!2592338))

(assert (= (and b!2592338 res!1090250) b!2592336))

(assert (= (and b!2592336 (not res!1090248)) b!2592334))

(assert (= (and b!2592334 (not res!1090246)) b!2592335))

(assert (= (and b!2592335 (not res!1090244)) b!2592341))

(assert (= (and b!2592341 (not res!1090251)) b!2592337))

(assert (= (and b!2592337 (not res!1090243)) b!2592333))

(assert (= (and b!2592333 (not res!1090245)) b!2592339))

(assert (= (and b!2592339 (not res!1090249)) b!2592332))

(assert (= (and start!251236 ((_ is Cons!29831) l!3230)) b!2592340))

(declare-fun m!2928385 () Bool)

(assert (=> b!2592341 m!2928385))

(declare-fun m!2928387 () Bool)

(assert (=> b!2592335 m!2928387))

(declare-fun m!2928389 () Bool)

(assert (=> b!2592332 m!2928389))

(declare-fun m!2928391 () Bool)

(assert (=> b!2592333 m!2928391))

(declare-fun m!2928393 () Bool)

(assert (=> b!2592333 m!2928393))

(declare-fun m!2928395 () Bool)

(assert (=> b!2592337 m!2928395))

(declare-fun m!2928397 () Bool)

(assert (=> b!2592337 m!2928397))

(declare-fun m!2928399 () Bool)

(assert (=> b!2592334 m!2928399))

(assert (=> b!2592339 m!2928395))

(declare-fun m!2928401 () Bool)

(assert (=> start!251236 m!2928401))

(declare-fun m!2928403 () Bool)

(assert (=> b!2592336 m!2928403))

(declare-fun m!2928405 () Bool)

(assert (=> b!2592336 m!2928405))

(assert (=> b!2592336 m!2928385))

(declare-fun m!2928407 () Bool)

(assert (=> b!2592336 m!2928407))

(declare-fun m!2928409 () Bool)

(assert (=> b!2592336 m!2928409))

(assert (=> b!2592336 m!2928403))

(declare-fun m!2928411 () Bool)

(assert (=> b!2592336 m!2928411))

(check-sat (not b!2592335) (not b!2592333) (not b!2592340) tp_is_empty!13341 (not start!251236) (not b!2592332) (not b!2592337) (not b!2592341) (not b!2592336) (not b!2592339))
(check-sat)
