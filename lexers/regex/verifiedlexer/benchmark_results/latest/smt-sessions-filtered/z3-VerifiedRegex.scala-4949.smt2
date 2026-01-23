; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!252076 () Bool)

(assert start!252076)

(declare-fun b!2597122 () Bool)

(assert (=> b!2597122 true))

(declare-fun b!2597118 () Bool)

(declare-fun m!2933471 () Bool)

(assert (=> b!2597118 m!2933471))

(declare-fun bs!472995 () Bool)

(assert (= bs!472995 (and b!2597118 b!2597122)))

(declare-datatypes ((B!2217 0))(
  ( (B!2218 (val!9576 Int)) )
))
(declare-datatypes ((List!30009 0))(
  ( (Nil!29909) (Cons!29909 (h!35329 B!2217) (t!213022 List!30009)) )
))
(declare-fun l1!1546 () List!30009)

(declare-fun lambda!97097 () Int)

(declare-fun lambda!97096 () Int)

(declare-fun tail!4161 (List!30009) List!30009)

(assert (=> bs!472995 (= (= (tail!4161 l1!1546) l1!1546) (= lambda!97097 lambda!97096))))

(assert (=> b!2597118 true))

(declare-fun lambda!97098 () Int)

(assert (=> bs!472995 (= (= (t!213022 l1!1546) l1!1546) (= lambda!97098 lambda!97096))))

(assert (=> b!2597118 (= (= (t!213022 l1!1546) (tail!4161 l1!1546)) (= lambda!97098 lambda!97097))))

(assert (=> b!2597118 true))

(declare-fun e!1639158 () Bool)

(declare-fun e!1639157 () Bool)

(assert (=> b!2597118 (= e!1639158 e!1639157)))

(declare-fun res!1093255 () Bool)

(assert (=> b!2597118 (=> res!1093255 e!1639157)))

(declare-fun lt!914657 () List!30009)

(declare-fun forall!6146 (List!30009 Int) Bool)

(assert (=> b!2597118 (= res!1093255 (not (forall!6146 lt!914657 lambda!97098)))))

(assert (=> b!2597118 (forall!6146 lt!914657 lambda!97097)))

(declare-datatypes ((Unit!43975 0))(
  ( (Unit!43976) )
))
(declare-fun lt!914653 () Unit!43975)

(declare-fun lemmaForallContainsThenForTailIfContainsNotHead!26 (List!30009 List!30009 B!2217) Unit!43975)

(assert (=> b!2597118 (= lt!914653 (lemmaForallContainsThenForTailIfContainsNotHead!26 lt!914657 l1!1546 (h!35329 l1!1546)))))

(declare-fun res!1093253 () Bool)

(declare-fun e!1639156 () Bool)

(assert (=> start!252076 (=> (not res!1093253) (not e!1639156))))

(declare-fun noDuplicate!457 (List!30009) Bool)

(assert (=> start!252076 (= res!1093253 (noDuplicate!457 l1!1546))))

(assert (=> start!252076 e!1639156))

(declare-fun e!1639159 () Bool)

(assert (=> start!252076 e!1639159))

(declare-fun e!1639154 () Bool)

(assert (=> start!252076 e!1639154))

(declare-fun b!2597119 () Bool)

(declare-fun res!1093256 () Bool)

(declare-fun e!1639155 () Bool)

(assert (=> b!2597119 (=> (not res!1093256) (not e!1639155))))

(declare-fun l2!1515 () List!30009)

(declare-fun contains!5457 (List!30009 B!2217) Bool)

(assert (=> b!2597119 (= res!1093256 (contains!5457 l2!1515 (h!35329 l1!1546)))))

(declare-fun b!2597120 () Bool)

(declare-fun tp_is_empty!13497 () Bool)

(declare-fun tp!823312 () Bool)

(assert (=> b!2597120 (= e!1639159 (and tp_is_empty!13497 tp!823312))))

(declare-fun b!2597121 () Bool)

(declare-fun res!1093259 () Bool)

(assert (=> b!2597121 (=> (not res!1093259) (not e!1639155))))

(get-info :version)

(assert (=> b!2597121 (= res!1093259 ((_ is Cons!29909) l1!1546))))

(declare-fun res!1093260 () Bool)

(assert (=> b!2597122 (=> (not res!1093260) (not e!1639155))))

(assert (=> b!2597122 (= res!1093260 (forall!6146 l2!1515 lambda!97096))))

(declare-fun b!2597123 () Bool)

(declare-fun tp!823311 () Bool)

(assert (=> b!2597123 (= e!1639154 (and tp_is_empty!13497 tp!823311))))

(declare-fun b!2597124 () Bool)

(declare-fun res!1093258 () Bool)

(assert (=> b!2597124 (=> res!1093258 e!1639157)))

(declare-fun lt!914656 () Int)

(declare-fun size!23214 (List!30009) Int)

(assert (=> b!2597124 (= res!1093258 (<= (size!23214 (t!213022 l1!1546)) lt!914656))))

(declare-fun b!2597125 () Bool)

(assert (=> b!2597125 (= e!1639155 (not e!1639158))))

(declare-fun res!1093261 () Bool)

(assert (=> b!2597125 (=> res!1093261 e!1639158)))

(assert (=> b!2597125 (= res!1093261 (not (forall!6146 lt!914657 lambda!97096)))))

(declare-fun lt!914658 () Int)

(assert (=> b!2597125 (= lt!914656 (- lt!914658 1))))

(assert (=> b!2597125 (= lt!914656 (size!23214 lt!914657))))

(declare-fun lt!914655 () Unit!43975)

(declare-fun lemmaRemoveElmtNoDuplicateRemoveOne!42 (List!30009 B!2217) Unit!43975)

(assert (=> b!2597125 (= lt!914655 (lemmaRemoveElmtNoDuplicateRemoveOne!42 l2!1515 (h!35329 l1!1546)))))

(assert (=> b!2597125 (forall!6146 lt!914657 lambda!97096)))

(declare-fun lt!914654 () Unit!43975)

(declare-fun lemmaRemoveElmtMaintainsForall!44 (List!30009 B!2217 Int) Unit!43975)

(assert (=> b!2597125 (= lt!914654 (lemmaRemoveElmtMaintainsForall!44 l2!1515 (h!35329 l1!1546) lambda!97096))))

(assert (=> b!2597125 (noDuplicate!457 lt!914657)))

(declare-fun -!184 (List!30009 B!2217) List!30009)

(assert (=> b!2597125 (= lt!914657 (-!184 l2!1515 (h!35329 l1!1546)))))

(declare-fun lt!914652 () Unit!43975)

(declare-fun lemmaRemoveElmtMaintainsNoDuplicate!50 (List!30009 B!2217) Unit!43975)

(assert (=> b!2597125 (= lt!914652 (lemmaRemoveElmtMaintainsNoDuplicate!50 l2!1515 (h!35329 l1!1546)))))

(declare-fun b!2597126 () Bool)

(declare-fun res!1093254 () Bool)

(assert (=> b!2597126 (=> (not res!1093254) (not e!1639156))))

(assert (=> b!2597126 (= res!1093254 (noDuplicate!457 l2!1515))))

(declare-fun b!2597127 () Bool)

(assert (=> b!2597127 (= e!1639157 (forall!6146 lt!914657 lambda!97098))))

(declare-fun b!2597128 () Bool)

(assert (=> b!2597128 (= e!1639156 e!1639155)))

(declare-fun res!1093252 () Bool)

(assert (=> b!2597128 (=> (not res!1093252) (not e!1639155))))

(declare-fun lt!914659 () Int)

(assert (=> b!2597128 (= res!1093252 (> lt!914659 lt!914658))))

(assert (=> b!2597128 (= lt!914658 (size!23214 l2!1515))))

(assert (=> b!2597128 (= lt!914659 (size!23214 l1!1546))))

(declare-fun b!2597129 () Bool)

(declare-fun res!1093257 () Bool)

(assert (=> b!2597129 (=> res!1093257 e!1639157)))

(assert (=> b!2597129 (= res!1093257 (not (noDuplicate!457 (t!213022 l1!1546))))))

(assert (= (and start!252076 res!1093253) b!2597126))

(assert (= (and b!2597126 res!1093254) b!2597128))

(assert (= (and b!2597128 res!1093252) b!2597122))

(assert (= (and b!2597122 res!1093260) b!2597121))

(assert (= (and b!2597121 res!1093259) b!2597119))

(assert (= (and b!2597119 res!1093256) b!2597125))

(assert (= (and b!2597125 (not res!1093261)) b!2597118))

(assert (= (and b!2597118 (not res!1093255)) b!2597129))

(assert (= (and b!2597129 (not res!1093257)) b!2597124))

(assert (= (and b!2597124 (not res!1093258)) b!2597127))

(assert (= (and start!252076 ((_ is Cons!29909) l1!1546)) b!2597120))

(assert (= (and start!252076 ((_ is Cons!29909) l2!1515)) b!2597123))

(declare-fun m!2933473 () Bool)

(assert (=> b!2597125 m!2933473))

(declare-fun m!2933475 () Bool)

(assert (=> b!2597125 m!2933475))

(declare-fun m!2933477 () Bool)

(assert (=> b!2597125 m!2933477))

(declare-fun m!2933479 () Bool)

(assert (=> b!2597125 m!2933479))

(declare-fun m!2933481 () Bool)

(assert (=> b!2597125 m!2933481))

(declare-fun m!2933483 () Bool)

(assert (=> b!2597125 m!2933483))

(declare-fun m!2933485 () Bool)

(assert (=> b!2597125 m!2933485))

(assert (=> b!2597125 m!2933479))

(declare-fun m!2933487 () Bool)

(assert (=> b!2597122 m!2933487))

(declare-fun m!2933489 () Bool)

(assert (=> start!252076 m!2933489))

(declare-fun m!2933491 () Bool)

(assert (=> b!2597119 m!2933491))

(declare-fun m!2933493 () Bool)

(assert (=> b!2597129 m!2933493))

(declare-fun m!2933495 () Bool)

(assert (=> b!2597118 m!2933495))

(declare-fun m!2933497 () Bool)

(assert (=> b!2597118 m!2933497))

(declare-fun m!2933499 () Bool)

(assert (=> b!2597118 m!2933499))

(assert (=> b!2597127 m!2933495))

(declare-fun m!2933501 () Bool)

(assert (=> b!2597128 m!2933501))

(declare-fun m!2933503 () Bool)

(assert (=> b!2597128 m!2933503))

(declare-fun m!2933505 () Bool)

(assert (=> b!2597126 m!2933505))

(declare-fun m!2933507 () Bool)

(assert (=> b!2597124 m!2933507))

(check-sat (not start!252076) (not b!2597123) (not b!2597125) (not b!2597119) (not b!2597124) (not b!2597127) (not b!2597118) (not b!2597122) (not b!2597126) (not b!2597120) (not b!2597128) tp_is_empty!13497 (not b!2597129))
(check-sat)
