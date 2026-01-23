; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!251848 () Bool)

(assert start!251848)

(declare-fun b!2596005 () Bool)

(assert (=> b!2596005 true))

(declare-fun b!2595998 () Bool)

(declare-fun e!1638253 () Bool)

(declare-fun tp_is_empty!13465 () Bool)

(declare-fun tp!823176 () Bool)

(assert (=> b!2595998 (= e!1638253 (and tp_is_empty!13465 tp!823176))))

(declare-fun b!2595999 () Bool)

(declare-fun e!1638252 () Bool)

(declare-fun tp!823175 () Bool)

(assert (=> b!2595999 (= e!1638252 (and tp_is_empty!13465 tp!823175))))

(declare-fun b!2596000 () Bool)

(declare-fun res!1092549 () Bool)

(declare-fun e!1638251 () Bool)

(assert (=> b!2596000 (=> (not res!1092549) (not e!1638251))))

(declare-datatypes ((B!2185 0))(
  ( (B!2186 (val!9560 Int)) )
))
(declare-datatypes ((List!29993 0))(
  ( (Nil!29893) (Cons!29893 (h!35313 B!2185) (t!213006 List!29993)) )
))
(declare-fun l2!1515 () List!29993)

(declare-fun noDuplicate!441 (List!29993) Bool)

(assert (=> b!2596000 (= res!1092549 (noDuplicate!441 l2!1515))))

(declare-fun b!2596001 () Bool)

(declare-fun res!1092547 () Bool)

(assert (=> b!2596001 (=> (not res!1092547) (not e!1638251))))

(declare-fun l1!1546 () List!29993)

(get-info :version)

(assert (=> b!2596001 (= res!1092547 ((_ is Cons!29893) l1!1546))))

(declare-fun b!2596002 () Bool)

(declare-fun lambda!96910 () Int)

(declare-fun forall!6130 (List!29993 Int) Bool)

(assert (=> b!2596002 (= e!1638251 (not (forall!6130 l2!1515 lambda!96910)))))

(declare-fun -!168 (List!29993 B!2185) List!29993)

(assert (=> b!2596002 (noDuplicate!441 (-!168 l2!1515 (h!35313 l1!1546)))))

(declare-datatypes ((Unit!43943 0))(
  ( (Unit!43944) )
))
(declare-fun lt!914113 () Unit!43943)

(declare-fun lemmaRemoveElmtMaintainsNoDuplicate!34 (List!29993 B!2185) Unit!43943)

(assert (=> b!2596002 (= lt!914113 (lemmaRemoveElmtMaintainsNoDuplicate!34 l2!1515 (h!35313 l1!1546)))))

(declare-fun b!2596003 () Bool)

(declare-fun res!1092548 () Bool)

(assert (=> b!2596003 (=> (not res!1092548) (not e!1638251))))

(declare-fun size!23198 (List!29993) Int)

(assert (=> b!2596003 (= res!1092548 (> (size!23198 l1!1546) (size!23198 l2!1515)))))

(declare-fun b!2596004 () Bool)

(declare-fun res!1092545 () Bool)

(assert (=> b!2596004 (=> (not res!1092545) (not e!1638251))))

(declare-fun contains!5441 (List!29993 B!2185) Bool)

(assert (=> b!2596004 (= res!1092545 (contains!5441 l2!1515 (h!35313 l1!1546)))))

(declare-fun res!1092546 () Bool)

(assert (=> b!2596005 (=> (not res!1092546) (not e!1638251))))

(assert (=> b!2596005 (= res!1092546 (forall!6130 l2!1515 lambda!96910))))

(declare-fun res!1092544 () Bool)

(assert (=> start!251848 (=> (not res!1092544) (not e!1638251))))

(assert (=> start!251848 (= res!1092544 (noDuplicate!441 l1!1546))))

(assert (=> start!251848 e!1638251))

(assert (=> start!251848 e!1638252))

(assert (=> start!251848 e!1638253))

(assert (= (and start!251848 res!1092544) b!2596000))

(assert (= (and b!2596000 res!1092549) b!2596003))

(assert (= (and b!2596003 res!1092548) b!2596005))

(assert (= (and b!2596005 res!1092546) b!2596001))

(assert (= (and b!2596001 res!1092547) b!2596004))

(assert (= (and b!2596004 res!1092545) b!2596002))

(assert (= (and start!251848 ((_ is Cons!29893) l1!1546)) b!2595999))

(assert (= (and start!251848 ((_ is Cons!29893) l2!1515)) b!2595998))

(declare-fun m!2932307 () Bool)

(assert (=> b!2596004 m!2932307))

(declare-fun m!2932309 () Bool)

(assert (=> b!2596000 m!2932309))

(declare-fun m!2932311 () Bool)

(assert (=> b!2596005 m!2932311))

(declare-fun m!2932313 () Bool)

(assert (=> start!251848 m!2932313))

(declare-fun m!2932315 () Bool)

(assert (=> b!2596003 m!2932315))

(declare-fun m!2932317 () Bool)

(assert (=> b!2596003 m!2932317))

(assert (=> b!2596002 m!2932311))

(declare-fun m!2932319 () Bool)

(assert (=> b!2596002 m!2932319))

(assert (=> b!2596002 m!2932319))

(declare-fun m!2932321 () Bool)

(assert (=> b!2596002 m!2932321))

(declare-fun m!2932323 () Bool)

(assert (=> b!2596002 m!2932323))

(check-sat (not b!2596005) (not b!2595998) (not b!2595999) tp_is_empty!13465 (not b!2596003) (not start!251848) (not b!2596004) (not b!2596000) (not b!2596002))
(check-sat)
