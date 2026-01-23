; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!251542 () Bool)

(assert start!251542)

(declare-fun b!2594057 () Bool)

(assert (=> b!2594057 true))

(declare-fun b!2594050 () Bool)

(declare-fun e!1636655 () Bool)

(declare-fun tp_is_empty!13399 () Bool)

(declare-fun tp!822934 () Bool)

(assert (=> b!2594050 (= e!1636655 (and tp_is_empty!13399 tp!822934))))

(declare-fun b!2594051 () Bool)

(declare-fun e!1636654 () Bool)

(declare-fun tp!822933 () Bool)

(assert (=> b!2594051 (= e!1636654 (and tp_is_empty!13399 tp!822933))))

(declare-fun b!2594052 () Bool)

(declare-fun res!1091260 () Bool)

(declare-fun e!1636656 () Bool)

(assert (=> b!2594052 (=> (not res!1091260) (not e!1636656))))

(declare-datatypes ((B!2119 0))(
  ( (B!2120 (val!9527 Int)) )
))
(declare-datatypes ((List!29960 0))(
  ( (Nil!29860) (Cons!29860 (h!35280 B!2119) (t!212973 List!29960)) )
))
(declare-fun l1!1546 () List!29960)

(assert (=> b!2594052 (= res!1091260 (is-Cons!29860 l1!1546))))

(declare-fun res!1091257 () Bool)

(assert (=> start!251542 (=> (not res!1091257) (not e!1636656))))

(declare-fun noDuplicate!408 (List!29960) Bool)

(assert (=> start!251542 (= res!1091257 (noDuplicate!408 l1!1546))))

(assert (=> start!251542 e!1636656))

(assert (=> start!251542 e!1636654))

(assert (=> start!251542 e!1636655))

(declare-fun b!2594053 () Bool)

(declare-fun res!1091258 () Bool)

(assert (=> b!2594053 (=> (not res!1091258) (not e!1636656))))

(declare-fun l2!1515 () List!29960)

(assert (=> b!2594053 (= res!1091258 (noDuplicate!408 l2!1515))))

(declare-fun b!2594054 () Bool)

(declare-fun res!1091256 () Bool)

(assert (=> b!2594054 (=> (not res!1091256) (not e!1636656))))

(declare-fun contains!5408 (List!29960 B!2119) Bool)

(assert (=> b!2594054 (= res!1091256 (contains!5408 l2!1515 (h!35280 l1!1546)))))

(declare-fun b!2594055 () Bool)

(declare-fun res!1091259 () Bool)

(assert (=> b!2594055 (=> (not res!1091259) (not e!1636656))))

(declare-fun size!23165 (List!29960) Int)

(assert (=> b!2594055 (= res!1091259 (> (size!23165 l1!1546) (size!23165 l2!1515)))))

(declare-fun b!2594056 () Bool)

(assert (=> b!2594056 (= e!1636656 (not true))))

(declare-fun lt!913188 () List!29960)

(declare-fun lambda!96415 () Int)

(declare-fun forall!6097 (List!29960 Int) Bool)

(assert (=> b!2594056 (forall!6097 lt!913188 lambda!96415)))

(declare-datatypes ((Unit!43874 0))(
  ( (Unit!43875) )
))
(declare-fun lt!913189 () Unit!43874)

(declare-fun lemmaRemoveElmtMaintainsForall!1 (List!29960 B!2119 Int) Unit!43874)

(assert (=> b!2594056 (= lt!913189 (lemmaRemoveElmtMaintainsForall!1 l2!1515 (h!35280 l1!1546) lambda!96415))))

(assert (=> b!2594056 (noDuplicate!408 lt!913188)))

(declare-fun -!137 (List!29960 B!2119) List!29960)

(assert (=> b!2594056 (= lt!913188 (-!137 l2!1515 (h!35280 l1!1546)))))

(declare-fun lt!913190 () Unit!43874)

(declare-fun lemmaRemoveElmtMaintainsNoDuplicate!3 (List!29960 B!2119) Unit!43874)

(assert (=> b!2594056 (= lt!913190 (lemmaRemoveElmtMaintainsNoDuplicate!3 l2!1515 (h!35280 l1!1546)))))

(declare-fun res!1091261 () Bool)

(assert (=> b!2594057 (=> (not res!1091261) (not e!1636656))))

(assert (=> b!2594057 (= res!1091261 (forall!6097 l2!1515 lambda!96415))))

(assert (= (and start!251542 res!1091257) b!2594053))

(assert (= (and b!2594053 res!1091258) b!2594055))

(assert (= (and b!2594055 res!1091259) b!2594057))

(assert (= (and b!2594057 res!1091261) b!2594052))

(assert (= (and b!2594052 res!1091260) b!2594054))

(assert (= (and b!2594054 res!1091256) b!2594056))

(assert (= (and start!251542 (is-Cons!29860 l1!1546)) b!2594051))

(assert (= (and start!251542 (is-Cons!29860 l2!1515)) b!2594050))

(declare-fun m!2930133 () Bool)

(assert (=> b!2594056 m!2930133))

(declare-fun m!2930135 () Bool)

(assert (=> b!2594056 m!2930135))

(declare-fun m!2930137 () Bool)

(assert (=> b!2594056 m!2930137))

(declare-fun m!2930139 () Bool)

(assert (=> b!2594056 m!2930139))

(declare-fun m!2930141 () Bool)

(assert (=> b!2594056 m!2930141))

(declare-fun m!2930143 () Bool)

(assert (=> b!2594053 m!2930143))

(declare-fun m!2930145 () Bool)

(assert (=> start!251542 m!2930145))

(declare-fun m!2930147 () Bool)

(assert (=> b!2594057 m!2930147))

(declare-fun m!2930149 () Bool)

(assert (=> b!2594055 m!2930149))

(declare-fun m!2930151 () Bool)

(assert (=> b!2594055 m!2930151))

(declare-fun m!2930153 () Bool)

(assert (=> b!2594054 m!2930153))

(push 1)

(assert (not b!2594054))

(assert (not b!2594057))

(assert (not b!2594050))

(assert tp_is_empty!13399)

(assert (not start!251542))

(assert (not b!2594055))

(assert (not b!2594051))

(assert (not b!2594056))

(assert (not b!2594053))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

