; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!384188 () Bool)

(assert start!384188)

(declare-fun res!1662320 () Bool)

(declare-fun e!2526515 () Bool)

(assert (=> start!384188 (=> (not res!1662320) (not e!2526515))))

(declare-datatypes ((B!2593 0))(
  ( (B!2594 (val!14082 Int)) )
))
(declare-datatypes ((List!43605 0))(
  ( (Nil!43481) (Cons!43481 (h!48901 B!2593) (t!337052 List!43605)) )
))
(declare-fun p!1991 () List!43605)

(declare-fun l!3332 () List!43605)

(declare-fun isPrefix!4077 (List!43605 List!43605) Bool)

(assert (=> start!384188 (= res!1662320 (isPrefix!4077 p!1991 l!3332))))

(assert (=> start!384188 e!2526515))

(declare-fun e!2526516 () Bool)

(assert (=> start!384188 e!2526516))

(declare-fun e!2526514 () Bool)

(assert (=> start!384188 e!2526514))

(declare-fun b!4071012 () Bool)

(get-info :version)

(assert (=> b!4071012 (= e!2526515 (and ((_ is Cons!43481) p!1991) (= l!3332 Nil!43481)))))

(declare-fun b!4071013 () Bool)

(declare-fun tp_is_empty!20761 () Bool)

(declare-fun tp!1231881 () Bool)

(assert (=> b!4071013 (= e!2526516 (and tp_is_empty!20761 tp!1231881))))

(declare-fun b!4071014 () Bool)

(declare-fun tp!1231882 () Bool)

(assert (=> b!4071014 (= e!2526514 (and tp_is_empty!20761 tp!1231882))))

(assert (= (and start!384188 res!1662320) b!4071012))

(assert (= (and start!384188 ((_ is Cons!43481) p!1991)) b!4071013))

(assert (= (and start!384188 ((_ is Cons!43481) l!3332)) b!4071014))

(declare-fun m!4680319 () Bool)

(assert (=> start!384188 m!4680319))

(check-sat (not start!384188) (not b!4071014) (not b!4071013) tp_is_empty!20761)
(check-sat)
(get-model)

(declare-fun b!4071035 () Bool)

(declare-fun e!2526532 () Bool)

(declare-fun e!2526533 () Bool)

(assert (=> b!4071035 (= e!2526532 e!2526533)))

(declare-fun res!1662343 () Bool)

(assert (=> b!4071035 (=> (not res!1662343) (not e!2526533))))

(assert (=> b!4071035 (= res!1662343 (not ((_ is Nil!43481) l!3332)))))

(declare-fun b!4071036 () Bool)

(declare-fun res!1662341 () Bool)

(assert (=> b!4071036 (=> (not res!1662341) (not e!2526533))))

(declare-fun head!8591 (List!43605) B!2593)

(assert (=> b!4071036 (= res!1662341 (= (head!8591 p!1991) (head!8591 l!3332)))))

(declare-fun d!1210096 () Bool)

(declare-fun e!2526534 () Bool)

(assert (=> d!1210096 e!2526534))

(declare-fun res!1662342 () Bool)

(assert (=> d!1210096 (=> res!1662342 e!2526534)))

(declare-fun lt!1457415 () Bool)

(assert (=> d!1210096 (= res!1662342 (not lt!1457415))))

(assert (=> d!1210096 (= lt!1457415 e!2526532)))

(declare-fun res!1662344 () Bool)

(assert (=> d!1210096 (=> res!1662344 e!2526532)))

(assert (=> d!1210096 (= res!1662344 ((_ is Nil!43481) p!1991))))

(assert (=> d!1210096 (= (isPrefix!4077 p!1991 l!3332) lt!1457415)))

(declare-fun b!4071038 () Bool)

(declare-fun size!32507 (List!43605) Int)

(assert (=> b!4071038 (= e!2526534 (>= (size!32507 l!3332) (size!32507 p!1991)))))

(declare-fun b!4071037 () Bool)

(declare-fun tail!6323 (List!43605) List!43605)

(assert (=> b!4071037 (= e!2526533 (isPrefix!4077 (tail!6323 p!1991) (tail!6323 l!3332)))))

(assert (= (and d!1210096 (not res!1662344)) b!4071035))

(assert (= (and b!4071035 res!1662343) b!4071036))

(assert (= (and b!4071036 res!1662341) b!4071037))

(assert (= (and d!1210096 (not res!1662342)) b!4071038))

(declare-fun m!4680335 () Bool)

(assert (=> b!4071036 m!4680335))

(declare-fun m!4680337 () Bool)

(assert (=> b!4071036 m!4680337))

(declare-fun m!4680339 () Bool)

(assert (=> b!4071038 m!4680339))

(declare-fun m!4680341 () Bool)

(assert (=> b!4071038 m!4680341))

(declare-fun m!4680343 () Bool)

(assert (=> b!4071037 m!4680343))

(declare-fun m!4680345 () Bool)

(assert (=> b!4071037 m!4680345))

(assert (=> b!4071037 m!4680343))

(assert (=> b!4071037 m!4680345))

(declare-fun m!4680347 () Bool)

(assert (=> b!4071037 m!4680347))

(assert (=> start!384188 d!1210096))

(declare-fun b!4071049 () Bool)

(declare-fun e!2526541 () Bool)

(declare-fun tp!1231889 () Bool)

(assert (=> b!4071049 (= e!2526541 (and tp_is_empty!20761 tp!1231889))))

(assert (=> b!4071014 (= tp!1231882 e!2526541)))

(assert (= (and b!4071014 ((_ is Cons!43481) (t!337052 l!3332))) b!4071049))

(declare-fun b!4071050 () Bool)

(declare-fun e!2526542 () Bool)

(declare-fun tp!1231890 () Bool)

(assert (=> b!4071050 (= e!2526542 (and tp_is_empty!20761 tp!1231890))))

(assert (=> b!4071013 (= tp!1231881 e!2526542)))

(assert (= (and b!4071013 ((_ is Cons!43481) (t!337052 p!1991))) b!4071050))

(check-sat tp_is_empty!20761 (not b!4071050) (not b!4071038) (not b!4071036) (not b!4071049) (not b!4071037))
(check-sat)
