; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!251538 () Bool)

(assert start!251538)

(declare-fun b!2594000 () Bool)

(assert (=> b!2594000 true))

(declare-fun b!2593998 () Bool)

(declare-fun res!1091222 () Bool)

(declare-fun e!1636631 () Bool)

(assert (=> b!2593998 (=> (not res!1091222) (not e!1636631))))

(declare-datatypes ((B!2115 0))(
  ( (B!2116 (val!9525 Int)) )
))
(declare-datatypes ((List!29958 0))(
  ( (Nil!29858) (Cons!29858 (h!35278 B!2115) (t!212971 List!29958)) )
))
(declare-fun l2!1515 () List!29958)

(declare-fun noDuplicate!406 (List!29958) Bool)

(assert (=> b!2593998 (= res!1091222 (noDuplicate!406 l2!1515))))

(declare-fun b!2593999 () Bool)

(declare-fun e!1636630 () Bool)

(declare-fun tp_is_empty!13395 () Bool)

(declare-fun tp!822921 () Bool)

(assert (=> b!2593999 (= e!1636630 (and tp_is_empty!13395 tp!822921))))

(declare-fun res!1091224 () Bool)

(assert (=> b!2594000 (=> (not res!1091224) (not e!1636631))))

(declare-fun lambda!96407 () Int)

(declare-fun forall!6095 (List!29958 Int) Bool)

(assert (=> b!2594000 (= res!1091224 (forall!6095 l2!1515 lambda!96407))))

(declare-fun b!2594001 () Bool)

(declare-fun res!1091225 () Bool)

(assert (=> b!2594001 (=> (not res!1091225) (not e!1636631))))

(declare-fun l1!1546 () List!29958)

(declare-fun size!23163 (List!29958) Int)

(assert (=> b!2594001 (= res!1091225 (> (size!23163 l1!1546) (size!23163 l2!1515)))))

(declare-fun b!2594002 () Bool)

(assert (=> b!2594002 (= e!1636631 (not true))))

(declare-fun -!135 (List!29958 B!2115) List!29958)

(assert (=> b!2594002 (noDuplicate!406 (-!135 l2!1515 (h!35278 l1!1546)))))

(declare-datatypes ((Unit!43870 0))(
  ( (Unit!43871) )
))
(declare-fun lt!913178 () Unit!43870)

(declare-fun lemmaRemoveElmtMaintainsNoDuplicate!1 (List!29958 B!2115) Unit!43870)

(assert (=> b!2594002 (= lt!913178 (lemmaRemoveElmtMaintainsNoDuplicate!1 l2!1515 (h!35278 l1!1546)))))

(declare-fun b!2594003 () Bool)

(declare-fun res!1091223 () Bool)

(assert (=> b!2594003 (=> (not res!1091223) (not e!1636631))))

(assert (=> b!2594003 (= res!1091223 (is-Cons!29858 l1!1546))))

(declare-fun b!2594004 () Bool)

(declare-fun res!1091220 () Bool)

(assert (=> b!2594004 (=> (not res!1091220) (not e!1636631))))

(declare-fun contains!5406 (List!29958 B!2115) Bool)

(assert (=> b!2594004 (= res!1091220 (contains!5406 l2!1515 (h!35278 l1!1546)))))

(declare-fun b!2594005 () Bool)

(declare-fun e!1636632 () Bool)

(declare-fun tp!822922 () Bool)

(assert (=> b!2594005 (= e!1636632 (and tp_is_empty!13395 tp!822922))))

(declare-fun res!1091221 () Bool)

(assert (=> start!251538 (=> (not res!1091221) (not e!1636631))))

(assert (=> start!251538 (= res!1091221 (noDuplicate!406 l1!1546))))

(assert (=> start!251538 e!1636631))

(assert (=> start!251538 e!1636632))

(assert (=> start!251538 e!1636630))

(assert (= (and start!251538 res!1091221) b!2593998))

(assert (= (and b!2593998 res!1091222) b!2594001))

(assert (= (and b!2594001 res!1091225) b!2594000))

(assert (= (and b!2594000 res!1091224) b!2594003))

(assert (= (and b!2594003 res!1091223) b!2594004))

(assert (= (and b!2594004 res!1091220) b!2594002))

(assert (= (and start!251538 (is-Cons!29858 l1!1546)) b!2594005))

(assert (= (and start!251538 (is-Cons!29858 l2!1515)) b!2593999))

(declare-fun m!2930097 () Bool)

(assert (=> b!2594001 m!2930097))

(declare-fun m!2930099 () Bool)

(assert (=> b!2594001 m!2930099))

(declare-fun m!2930101 () Bool)

(assert (=> start!251538 m!2930101))

(declare-fun m!2930103 () Bool)

(assert (=> b!2594000 m!2930103))

(declare-fun m!2930105 () Bool)

(assert (=> b!2594004 m!2930105))

(declare-fun m!2930107 () Bool)

(assert (=> b!2593998 m!2930107))

(declare-fun m!2930109 () Bool)

(assert (=> b!2594002 m!2930109))

(assert (=> b!2594002 m!2930109))

(declare-fun m!2930111 () Bool)

(assert (=> b!2594002 m!2930111))

(declare-fun m!2930113 () Bool)

(assert (=> b!2594002 m!2930113))

(push 1)

(assert (not b!2593998))

(assert (not b!2593999))

(assert tp_is_empty!13395)

(assert (not start!251538))

(assert (not b!2594004))

(assert (not b!2594000))

(assert (not b!2594005))

(assert (not b!2594001))

(assert (not b!2594002))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

