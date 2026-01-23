; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!251552 () Bool)

(assert start!251552)

(declare-fun b!2594236 () Bool)

(assert (=> b!2594236 true))

(declare-fun b!2594229 () Bool)

(declare-fun res!1091404 () Bool)

(declare-fun e!1636765 () Bool)

(assert (=> b!2594229 (=> (not res!1091404) (not e!1636765))))

(declare-datatypes ((B!2129 0))(
  ( (B!2130 (val!9532 Int)) )
))
(declare-datatypes ((List!29965 0))(
  ( (Nil!29865) (Cons!29865 (h!35285 B!2129) (t!212978 List!29965)) )
))
(declare-fun l2!1515 () List!29965)

(declare-fun noDuplicate!413 (List!29965) Bool)

(assert (=> b!2594229 (= res!1091404 (noDuplicate!413 l2!1515))))

(declare-fun b!2594230 () Bool)

(declare-fun res!1091396 () Bool)

(declare-fun e!1636763 () Bool)

(assert (=> b!2594230 (=> res!1091396 e!1636763)))

(declare-fun lt!913276 () List!29965)

(declare-fun l1!1546 () List!29965)

(declare-fun contains!5413 (List!29965 B!2129) Bool)

(assert (=> b!2594230 (= res!1091396 (contains!5413 lt!913276 (h!35285 l1!1546)))))

(declare-fun b!2594231 () Bool)

(declare-fun e!1636762 () Bool)

(declare-fun tp_is_empty!13409 () Bool)

(declare-fun tp!822963 () Bool)

(assert (=> b!2594231 (= e!1636762 (and tp_is_empty!13409 tp!822963))))

(declare-fun b!2594232 () Bool)

(declare-fun res!1091395 () Bool)

(assert (=> b!2594232 (=> res!1091395 e!1636763)))

(declare-fun head!5882 (List!29965) B!2129)

(assert (=> b!2594232 (= res!1091395 (not (= (h!35285 l1!1546) (head!5882 l1!1546))))))

(declare-fun b!2594233 () Bool)

(declare-fun e!1636761 () Bool)

(assert (=> b!2594233 (= e!1636761 (not e!1636763))))

(declare-fun res!1091400 () Bool)

(assert (=> b!2594233 (=> res!1091400 e!1636763)))

(declare-fun lambda!96460 () Int)

(declare-fun forall!6102 (List!29965 Int) Bool)

(assert (=> b!2594233 (= res!1091400 (not (forall!6102 lt!913276 lambda!96460)))))

(declare-fun lt!913277 () Int)

(declare-fun size!23170 (List!29965) Int)

(assert (=> b!2594233 (= (size!23170 lt!913276) (- lt!913277 1))))

(declare-datatypes ((Unit!43884 0))(
  ( (Unit!43885) )
))
(declare-fun lt!913273 () Unit!43884)

(declare-fun lemmaRemoveElmtNoDuplicateRemoveOne!4 (List!29965 B!2129) Unit!43884)

(assert (=> b!2594233 (= lt!913273 (lemmaRemoveElmtNoDuplicateRemoveOne!4 l2!1515 (h!35285 l1!1546)))))

(assert (=> b!2594233 (forall!6102 lt!913276 lambda!96460)))

(declare-fun lt!913274 () Unit!43884)

(declare-fun lemmaRemoveElmtMaintainsForall!6 (List!29965 B!2129 Int) Unit!43884)

(assert (=> b!2594233 (= lt!913274 (lemmaRemoveElmtMaintainsForall!6 l2!1515 (h!35285 l1!1546) lambda!96460))))

(assert (=> b!2594233 (noDuplicate!413 lt!913276)))

(declare-fun -!142 (List!29965 B!2129) List!29965)

(assert (=> b!2594233 (= lt!913276 (-!142 l2!1515 (h!35285 l1!1546)))))

(declare-fun lt!913272 () Unit!43884)

(declare-fun lemmaRemoveElmtMaintainsNoDuplicate!8 (List!29965 B!2129) Unit!43884)

(assert (=> b!2594233 (= lt!913272 (lemmaRemoveElmtMaintainsNoDuplicate!8 l2!1515 (h!35285 l1!1546)))))

(declare-fun b!2594234 () Bool)

(declare-fun res!1091398 () Bool)

(assert (=> b!2594234 (=> res!1091398 e!1636763)))

(assert (=> b!2594234 (= res!1091398 (not (forall!6102 lt!913276 lambda!96460)))))

(declare-fun b!2594235 () Bool)

(declare-fun res!1091399 () Bool)

(assert (=> b!2594235 (=> (not res!1091399) (not e!1636761))))

(assert (=> b!2594235 (= res!1091399 (contains!5413 l2!1515 (h!35285 l1!1546)))))

(declare-fun res!1091401 () Bool)

(assert (=> b!2594236 (=> (not res!1091401) (not e!1636761))))

(assert (=> b!2594236 (= res!1091401 (forall!6102 l2!1515 lambda!96460))))

(declare-fun b!2594237 () Bool)

(declare-fun e!1636764 () Bool)

(declare-fun tp!822964 () Bool)

(assert (=> b!2594237 (= e!1636764 (and tp_is_empty!13409 tp!822964))))

(declare-fun b!2594238 () Bool)

(assert (=> b!2594238 (= e!1636763 (forall!6102 lt!913276 lambda!96460))))

(declare-fun b!2594239 () Bool)

(declare-fun res!1091405 () Bool)

(assert (=> b!2594239 (=> (not res!1091405) (not e!1636761))))

(get-info :version)

(assert (=> b!2594239 (= res!1091405 ((_ is Cons!29865) l1!1546))))

(declare-fun res!1091397 () Bool)

(assert (=> start!251552 (=> (not res!1091397) (not e!1636765))))

(assert (=> start!251552 (= res!1091397 (noDuplicate!413 l1!1546))))

(assert (=> start!251552 e!1636765))

(assert (=> start!251552 e!1636764))

(assert (=> start!251552 e!1636762))

(declare-fun b!2594240 () Bool)

(assert (=> b!2594240 (= e!1636765 e!1636761)))

(declare-fun res!1091403 () Bool)

(assert (=> b!2594240 (=> (not res!1091403) (not e!1636761))))

(declare-fun lt!913275 () Int)

(assert (=> b!2594240 (= res!1091403 (> lt!913275 lt!913277))))

(assert (=> b!2594240 (= lt!913277 (size!23170 l2!1515))))

(assert (=> b!2594240 (= lt!913275 (size!23170 l1!1546))))

(declare-fun b!2594241 () Bool)

(declare-fun res!1091402 () Bool)

(assert (=> b!2594241 (=> res!1091402 e!1636763)))

(declare-fun isEmpty!17121 (List!29965) Bool)

(assert (=> b!2594241 (= res!1091402 (isEmpty!17121 l1!1546))))

(assert (= (and start!251552 res!1091397) b!2594229))

(assert (= (and b!2594229 res!1091404) b!2594240))

(assert (= (and b!2594240 res!1091403) b!2594236))

(assert (= (and b!2594236 res!1091401) b!2594239))

(assert (= (and b!2594239 res!1091405) b!2594235))

(assert (= (and b!2594235 res!1091399) b!2594233))

(assert (= (and b!2594233 (not res!1091400)) b!2594241))

(assert (= (and b!2594241 (not res!1091402)) b!2594234))

(assert (= (and b!2594234 (not res!1091398)) b!2594232))

(assert (= (and b!2594232 (not res!1091395)) b!2594230))

(assert (= (and b!2594230 (not res!1091396)) b!2594238))

(assert (= (and start!251552 ((_ is Cons!29865) l1!1546)) b!2594237))

(assert (= (and start!251552 ((_ is Cons!29865) l2!1515)) b!2594231))

(declare-fun m!2930273 () Bool)

(assert (=> b!2594232 m!2930273))

(declare-fun m!2930275 () Bool)

(assert (=> b!2594235 m!2930275))

(declare-fun m!2930277 () Bool)

(assert (=> b!2594238 m!2930277))

(declare-fun m!2930279 () Bool)

(assert (=> start!251552 m!2930279))

(declare-fun m!2930281 () Bool)

(assert (=> b!2594233 m!2930281))

(declare-fun m!2930283 () Bool)

(assert (=> b!2594233 m!2930283))

(declare-fun m!2930285 () Bool)

(assert (=> b!2594233 m!2930285))

(declare-fun m!2930287 () Bool)

(assert (=> b!2594233 m!2930287))

(assert (=> b!2594233 m!2930277))

(declare-fun m!2930289 () Bool)

(assert (=> b!2594233 m!2930289))

(declare-fun m!2930291 () Bool)

(assert (=> b!2594233 m!2930291))

(assert (=> b!2594233 m!2930277))

(declare-fun m!2930293 () Bool)

(assert (=> b!2594229 m!2930293))

(declare-fun m!2930295 () Bool)

(assert (=> b!2594230 m!2930295))

(assert (=> b!2594234 m!2930277))

(declare-fun m!2930297 () Bool)

(assert (=> b!2594236 m!2930297))

(declare-fun m!2930299 () Bool)

(assert (=> b!2594240 m!2930299))

(declare-fun m!2930301 () Bool)

(assert (=> b!2594240 m!2930301))

(declare-fun m!2930303 () Bool)

(assert (=> b!2594241 m!2930303))

(check-sat (not start!251552) (not b!2594235) (not b!2594232) (not b!2594236) (not b!2594230) (not b!2594237) (not b!2594234) (not b!2594233) (not b!2594231) (not b!2594241) (not b!2594240) (not b!2594238) (not b!2594229) tp_is_empty!13409)
(check-sat)
