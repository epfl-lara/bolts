; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!252026 () Bool)

(assert start!252026)

(declare-fun b!2596821 () Bool)

(assert (=> b!2596821 true))

(declare-fun b!2596824 () Bool)

(declare-fun m!2933133 () Bool)

(assert (=> b!2596824 m!2933133))

(declare-fun bs!472966 () Bool)

(assert (= bs!472966 (and b!2596824 b!2596821)))

(declare-datatypes ((B!2207 0))(
  ( (B!2208 (val!9571 Int)) )
))
(declare-datatypes ((List!30004 0))(
  ( (Nil!29904) (Cons!29904 (h!35324 B!2207) (t!213017 List!30004)) )
))
(declare-fun l1!1546 () List!30004)

(declare-fun lambda!97022 () Int)

(declare-fun lambda!97021 () Int)

(declare-fun tail!4156 (List!30004) List!30004)

(assert (=> bs!472966 (= (= (tail!4156 l1!1546) l1!1546) (= lambda!97022 lambda!97021))))

(assert (=> b!2596824 true))

(declare-fun lambda!97023 () Int)

(assert (=> bs!472966 (= (= (t!213017 l1!1546) l1!1546) (= lambda!97023 lambda!97021))))

(assert (=> b!2596824 (= (= (t!213017 l1!1546) (tail!4156 l1!1546)) (= lambda!97023 lambda!97022))))

(assert (=> b!2596824 true))

(declare-fun b!2596816 () Bool)

(declare-fun e!1638903 () Bool)

(declare-fun e!1638905 () Bool)

(assert (=> b!2596816 (= e!1638903 (not e!1638905))))

(declare-fun res!1093053 () Bool)

(assert (=> b!2596816 (=> res!1093053 e!1638905)))

(declare-fun lt!914486 () List!30004)

(declare-fun forall!6141 (List!30004 Int) Bool)

(assert (=> b!2596816 (= res!1093053 (not (forall!6141 lt!914486 lambda!97021)))))

(declare-fun lt!914488 () Int)

(declare-fun size!23209 (List!30004) Int)

(assert (=> b!2596816 (= (size!23209 lt!914486) (- lt!914488 1))))

(declare-datatypes ((Unit!43965 0))(
  ( (Unit!43966) )
))
(declare-fun lt!914485 () Unit!43965)

(declare-fun l2!1515 () List!30004)

(declare-fun lemmaRemoveElmtNoDuplicateRemoveOne!37 (List!30004 B!2207) Unit!43965)

(assert (=> b!2596816 (= lt!914485 (lemmaRemoveElmtNoDuplicateRemoveOne!37 l2!1515 (h!35324 l1!1546)))))

(assert (=> b!2596816 (forall!6141 lt!914486 lambda!97021)))

(declare-fun lt!914490 () Unit!43965)

(declare-fun lemmaRemoveElmtMaintainsForall!39 (List!30004 B!2207 Int) Unit!43965)

(assert (=> b!2596816 (= lt!914490 (lemmaRemoveElmtMaintainsForall!39 l2!1515 (h!35324 l1!1546) lambda!97021))))

(declare-fun noDuplicate!452 (List!30004) Bool)

(assert (=> b!2596816 (noDuplicate!452 lt!914486)))

(declare-fun -!179 (List!30004 B!2207) List!30004)

(assert (=> b!2596816 (= lt!914486 (-!179 l2!1515 (h!35324 l1!1546)))))

(declare-fun lt!914484 () Unit!43965)

(declare-fun lemmaRemoveElmtMaintainsNoDuplicate!45 (List!30004 B!2207) Unit!43965)

(assert (=> b!2596816 (= lt!914484 (lemmaRemoveElmtMaintainsNoDuplicate!45 l2!1515 (h!35324 l1!1546)))))

(declare-fun res!1093051 () Bool)

(declare-fun e!1638901 () Bool)

(assert (=> start!252026 (=> (not res!1093051) (not e!1638901))))

(assert (=> start!252026 (= res!1093051 (noDuplicate!452 l1!1546))))

(assert (=> start!252026 e!1638901))

(declare-fun e!1638904 () Bool)

(assert (=> start!252026 e!1638904))

(declare-fun e!1638902 () Bool)

(assert (=> start!252026 e!1638902))

(declare-fun b!2596817 () Bool)

(declare-fun e!1638900 () Bool)

(assert (=> b!2596817 (= e!1638900 true)))

(declare-fun lt!914491 () Bool)

(assert (=> b!2596817 (= lt!914491 (noDuplicate!452 (t!213017 l1!1546)))))

(declare-fun b!2596818 () Bool)

(declare-fun tp_is_empty!13487 () Bool)

(declare-fun tp!823274 () Bool)

(assert (=> b!2596818 (= e!1638904 (and tp_is_empty!13487 tp!823274))))

(declare-fun b!2596819 () Bool)

(declare-fun res!1093057 () Bool)

(assert (=> b!2596819 (=> (not res!1093057) (not e!1638903))))

(assert (=> b!2596819 (= res!1093057 (is-Cons!29904 l1!1546))))

(declare-fun b!2596820 () Bool)

(assert (=> b!2596820 (= e!1638901 e!1638903)))

(declare-fun res!1093050 () Bool)

(assert (=> b!2596820 (=> (not res!1093050) (not e!1638903))))

(declare-fun lt!914487 () Int)

(assert (=> b!2596820 (= res!1093050 (> lt!914487 lt!914488))))

(assert (=> b!2596820 (= lt!914488 (size!23209 l2!1515))))

(assert (=> b!2596820 (= lt!914487 (size!23209 l1!1546))))

(declare-fun res!1093056 () Bool)

(assert (=> b!2596821 (=> (not res!1093056) (not e!1638903))))

(assert (=> b!2596821 (= res!1093056 (forall!6141 l2!1515 lambda!97021))))

(declare-fun b!2596822 () Bool)

(declare-fun res!1093052 () Bool)

(assert (=> b!2596822 (=> (not res!1093052) (not e!1638903))))

(declare-fun contains!5452 (List!30004 B!2207) Bool)

(assert (=> b!2596822 (= res!1093052 (contains!5452 l2!1515 (h!35324 l1!1546)))))

(declare-fun b!2596823 () Bool)

(declare-fun res!1093055 () Bool)

(assert (=> b!2596823 (=> (not res!1093055) (not e!1638901))))

(assert (=> b!2596823 (= res!1093055 (noDuplicate!452 l2!1515))))

(assert (=> b!2596824 (= e!1638905 e!1638900)))

(declare-fun res!1093054 () Bool)

(assert (=> b!2596824 (=> res!1093054 e!1638900)))

(assert (=> b!2596824 (= res!1093054 (not (forall!6141 lt!914486 lambda!97023)))))

(assert (=> b!2596824 (forall!6141 lt!914486 lambda!97022)))

(declare-fun lt!914489 () Unit!43965)

(declare-fun lemmaForallContainsThenForTailIfContainsNotHead!21 (List!30004 List!30004 B!2207) Unit!43965)

(assert (=> b!2596824 (= lt!914489 (lemmaForallContainsThenForTailIfContainsNotHead!21 lt!914486 l1!1546 (h!35324 l1!1546)))))

(declare-fun b!2596825 () Bool)

(declare-fun tp!823273 () Bool)

(assert (=> b!2596825 (= e!1638902 (and tp_is_empty!13487 tp!823273))))

(assert (= (and start!252026 res!1093051) b!2596823))

(assert (= (and b!2596823 res!1093055) b!2596820))

(assert (= (and b!2596820 res!1093050) b!2596821))

(assert (= (and b!2596821 res!1093056) b!2596819))

(assert (= (and b!2596819 res!1093057) b!2596822))

(assert (= (and b!2596822 res!1093052) b!2596816))

(assert (= (and b!2596816 (not res!1093053)) b!2596824))

(assert (= (and b!2596824 (not res!1093054)) b!2596817))

(assert (= (and start!252026 (is-Cons!29904 l1!1546)) b!2596818))

(assert (= (and start!252026 (is-Cons!29904 l2!1515)) b!2596825))

(declare-fun m!2933135 () Bool)

(assert (=> b!2596823 m!2933135))

(declare-fun m!2933137 () Bool)

(assert (=> b!2596824 m!2933137))

(declare-fun m!2933139 () Bool)

(assert (=> b!2596824 m!2933139))

(declare-fun m!2933141 () Bool)

(assert (=> b!2596824 m!2933141))

(declare-fun m!2933143 () Bool)

(assert (=> b!2596822 m!2933143))

(declare-fun m!2933145 () Bool)

(assert (=> b!2596821 m!2933145))

(declare-fun m!2933147 () Bool)

(assert (=> b!2596816 m!2933147))

(declare-fun m!2933149 () Bool)

(assert (=> b!2596816 m!2933149))

(declare-fun m!2933151 () Bool)

(assert (=> b!2596816 m!2933151))

(declare-fun m!2933153 () Bool)

(assert (=> b!2596816 m!2933153))

(declare-fun m!2933155 () Bool)

(assert (=> b!2596816 m!2933155))

(assert (=> b!2596816 m!2933151))

(declare-fun m!2933157 () Bool)

(assert (=> b!2596816 m!2933157))

(declare-fun m!2933159 () Bool)

(assert (=> b!2596816 m!2933159))

(declare-fun m!2933161 () Bool)

(assert (=> start!252026 m!2933161))

(declare-fun m!2933163 () Bool)

(assert (=> b!2596817 m!2933163))

(declare-fun m!2933165 () Bool)

(assert (=> b!2596820 m!2933165))

(declare-fun m!2933167 () Bool)

(assert (=> b!2596820 m!2933167))

(push 1)

(assert (not b!2596818))

(assert (not b!2596816))

(assert (not b!2596821))

(assert (not b!2596824))

(assert (not b!2596823))

(assert tp_is_empty!13487)

(assert (not b!2596825))

(assert (not b!2596817))

(assert (not b!2596822))

(assert (not b!2596820))

(assert (not start!252026))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

