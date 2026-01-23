; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!251844 () Bool)

(assert start!251844)

(declare-fun b!2595953 () Bool)

(assert (=> b!2595953 true))

(declare-fun b!2595946 () Bool)

(declare-fun e!1638225 () Bool)

(declare-fun tp_is_empty!13461 () Bool)

(declare-fun tp!823164 () Bool)

(assert (=> b!2595946 (= e!1638225 (and tp_is_empty!13461 tp!823164))))

(declare-fun b!2595947 () Bool)

(declare-fun e!1638226 () Bool)

(assert (=> b!2595947 (= e!1638226 (not true))))

(declare-datatypes ((B!2181 0))(
  ( (B!2182 (val!9558 Int)) )
))
(declare-datatypes ((List!29991 0))(
  ( (Nil!29891) (Cons!29891 (h!35311 B!2181) (t!213004 List!29991)) )
))
(declare-fun l2!1515 () List!29991)

(declare-fun l1!1546 () List!29991)

(declare-fun noDuplicate!439 (List!29991) Bool)

(declare-fun -!166 (List!29991 B!2181) List!29991)

(assert (=> b!2595947 (noDuplicate!439 (-!166 l2!1515 (h!35311 l1!1546)))))

(declare-datatypes ((Unit!43939 0))(
  ( (Unit!43940) )
))
(declare-fun lt!914107 () Unit!43939)

(declare-fun lemmaRemoveElmtMaintainsNoDuplicate!32 (List!29991 B!2181) Unit!43939)

(assert (=> b!2595947 (= lt!914107 (lemmaRemoveElmtMaintainsNoDuplicate!32 l2!1515 (h!35311 l1!1546)))))

(declare-fun b!2595948 () Bool)

(declare-fun e!1638227 () Bool)

(declare-fun tp!823163 () Bool)

(assert (=> b!2595948 (= e!1638227 (and tp_is_empty!13461 tp!823163))))

(declare-fun b!2595949 () Bool)

(declare-fun res!1092511 () Bool)

(assert (=> b!2595949 (=> (not res!1092511) (not e!1638226))))

(declare-fun size!23196 (List!29991) Int)

(assert (=> b!2595949 (= res!1092511 (> (size!23196 l1!1546) (size!23196 l2!1515)))))

(declare-fun res!1092508 () Bool)

(assert (=> start!251844 (=> (not res!1092508) (not e!1638226))))

(assert (=> start!251844 (= res!1092508 (noDuplicate!439 l1!1546))))

(assert (=> start!251844 e!1638226))

(assert (=> start!251844 e!1638227))

(assert (=> start!251844 e!1638225))

(declare-fun b!2595950 () Bool)

(declare-fun res!1092512 () Bool)

(assert (=> b!2595950 (=> (not res!1092512) (not e!1638226))))

(declare-fun contains!5439 (List!29991 B!2181) Bool)

(assert (=> b!2595950 (= res!1092512 (contains!5439 l2!1515 (h!35311 l1!1546)))))

(declare-fun b!2595951 () Bool)

(declare-fun res!1092513 () Bool)

(assert (=> b!2595951 (=> (not res!1092513) (not e!1638226))))

(get-info :version)

(assert (=> b!2595951 (= res!1092513 ((_ is Cons!29891) l1!1546))))

(declare-fun b!2595952 () Bool)

(declare-fun res!1092510 () Bool)

(assert (=> b!2595952 (=> (not res!1092510) (not e!1638226))))

(assert (=> b!2595952 (= res!1092510 (noDuplicate!439 l2!1515))))

(declare-fun res!1092509 () Bool)

(assert (=> b!2595953 (=> (not res!1092509) (not e!1638226))))

(declare-fun lambda!96900 () Int)

(declare-fun forall!6128 (List!29991 Int) Bool)

(assert (=> b!2595953 (= res!1092509 (forall!6128 l2!1515 lambda!96900))))

(assert (= (and start!251844 res!1092508) b!2595952))

(assert (= (and b!2595952 res!1092510) b!2595949))

(assert (= (and b!2595949 res!1092511) b!2595953))

(assert (= (and b!2595953 res!1092509) b!2595951))

(assert (= (and b!2595951 res!1092513) b!2595950))

(assert (= (and b!2595950 res!1092512) b!2595947))

(assert (= (and start!251844 ((_ is Cons!29891) l1!1546)) b!2595948))

(assert (= (and start!251844 ((_ is Cons!29891) l2!1515)) b!2595946))

(declare-fun m!2932271 () Bool)

(assert (=> b!2595952 m!2932271))

(declare-fun m!2932273 () Bool)

(assert (=> b!2595949 m!2932273))

(declare-fun m!2932275 () Bool)

(assert (=> b!2595949 m!2932275))

(declare-fun m!2932277 () Bool)

(assert (=> b!2595950 m!2932277))

(declare-fun m!2932279 () Bool)

(assert (=> b!2595953 m!2932279))

(declare-fun m!2932281 () Bool)

(assert (=> start!251844 m!2932281))

(declare-fun m!2932283 () Bool)

(assert (=> b!2595947 m!2932283))

(assert (=> b!2595947 m!2932283))

(declare-fun m!2932285 () Bool)

(assert (=> b!2595947 m!2932285))

(declare-fun m!2932287 () Bool)

(assert (=> b!2595947 m!2932287))

(check-sat (not b!2595952) tp_is_empty!13461 (not start!251844) (not b!2595950) (not b!2595946) (not b!2595947) (not b!2595953) (not b!2595948) (not b!2595949))
(check-sat)
