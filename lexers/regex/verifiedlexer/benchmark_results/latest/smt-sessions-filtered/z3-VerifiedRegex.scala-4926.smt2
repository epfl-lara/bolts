; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!251548 () Bool)

(assert start!251548)

(declare-fun b!2594155 () Bool)

(assert (=> b!2594155 true))

(declare-fun b!2594148 () Bool)

(declare-fun e!1636714 () Bool)

(declare-fun e!1636712 () Bool)

(assert (=> b!2594148 (= e!1636714 (not e!1636712))))

(declare-fun res!1091334 () Bool)

(assert (=> b!2594148 (=> res!1091334 e!1636712)))

(declare-datatypes ((B!2125 0))(
  ( (B!2126 (val!9530 Int)) )
))
(declare-datatypes ((List!29963 0))(
  ( (Nil!29863) (Cons!29863 (h!35283 B!2125) (t!212976 List!29963)) )
))
(declare-fun lt!913241 () List!29963)

(declare-fun lambda!96438 () Int)

(declare-fun forall!6100 (List!29963 Int) Bool)

(assert (=> b!2594148 (= res!1091334 (not (forall!6100 lt!913241 lambda!96438)))))

(declare-fun lt!913240 () Int)

(declare-fun size!23168 (List!29963) Int)

(assert (=> b!2594148 (= (size!23168 lt!913241) (- lt!913240 1))))

(declare-datatypes ((Unit!43880 0))(
  ( (Unit!43881) )
))
(declare-fun lt!913238 () Unit!43880)

(declare-fun l2!1515 () List!29963)

(declare-fun l1!1546 () List!29963)

(declare-fun lemmaRemoveElmtNoDuplicateRemoveOne!2 (List!29963 B!2125) Unit!43880)

(assert (=> b!2594148 (= lt!913238 (lemmaRemoveElmtNoDuplicateRemoveOne!2 l2!1515 (h!35283 l1!1546)))))

(assert (=> b!2594148 (forall!6100 lt!913241 lambda!96438)))

(declare-fun lt!913239 () Unit!43880)

(declare-fun lemmaRemoveElmtMaintainsForall!4 (List!29963 B!2125 Int) Unit!43880)

(assert (=> b!2594148 (= lt!913239 (lemmaRemoveElmtMaintainsForall!4 l2!1515 (h!35283 l1!1546) lambda!96438))))

(declare-fun noDuplicate!411 (List!29963) Bool)

(assert (=> b!2594148 (noDuplicate!411 lt!913241)))

(declare-fun -!140 (List!29963 B!2125) List!29963)

(assert (=> b!2594148 (= lt!913241 (-!140 l2!1515 (h!35283 l1!1546)))))

(declare-fun lt!913237 () Unit!43880)

(declare-fun lemmaRemoveElmtMaintainsNoDuplicate!6 (List!29963 B!2125) Unit!43880)

(assert (=> b!2594148 (= lt!913237 (lemmaRemoveElmtMaintainsNoDuplicate!6 l2!1515 (h!35283 l1!1546)))))

(declare-fun b!2594149 () Bool)

(declare-fun e!1636715 () Bool)

(declare-fun tp_is_empty!13405 () Bool)

(declare-fun tp!822952 () Bool)

(assert (=> b!2594149 (= e!1636715 (and tp_is_empty!13405 tp!822952))))

(declare-fun res!1091338 () Bool)

(declare-fun e!1636711 () Bool)

(assert (=> start!251548 (=> (not res!1091338) (not e!1636711))))

(assert (=> start!251548 (= res!1091338 (noDuplicate!411 l1!1546))))

(assert (=> start!251548 e!1636711))

(assert (=> start!251548 e!1636715))

(declare-fun e!1636713 () Bool)

(assert (=> start!251548 e!1636713))

(declare-fun b!2594150 () Bool)

(assert (=> b!2594150 (= e!1636712 true)))

(declare-fun lt!913236 () Bool)

(declare-fun contains!5411 (List!29963 B!2125) Bool)

(assert (=> b!2594150 (= lt!913236 (contains!5411 lt!913241 (h!35283 l1!1546)))))

(declare-fun b!2594151 () Bool)

(declare-fun res!1091331 () Bool)

(assert (=> b!2594151 (=> (not res!1091331) (not e!1636711))))

(assert (=> b!2594151 (= res!1091331 (noDuplicate!411 l2!1515))))

(declare-fun b!2594152 () Bool)

(declare-fun res!1091332 () Bool)

(assert (=> b!2594152 (=> (not res!1091332) (not e!1636714))))

(assert (=> b!2594152 (= res!1091332 (contains!5411 l2!1515 (h!35283 l1!1546)))))

(declare-fun b!2594153 () Bool)

(declare-fun res!1091333 () Bool)

(assert (=> b!2594153 (=> (not res!1091333) (not e!1636714))))

(get-info :version)

(assert (=> b!2594153 (= res!1091333 ((_ is Cons!29863) l1!1546))))

(declare-fun b!2594154 () Bool)

(declare-fun tp!822951 () Bool)

(assert (=> b!2594154 (= e!1636713 (and tp_is_empty!13405 tp!822951))))

(declare-fun res!1091330 () Bool)

(assert (=> b!2594155 (=> (not res!1091330) (not e!1636714))))

(assert (=> b!2594155 (= res!1091330 (forall!6100 l2!1515 lambda!96438))))

(declare-fun b!2594156 () Bool)

(declare-fun res!1091336 () Bool)

(assert (=> b!2594156 (=> res!1091336 e!1636712)))

(declare-fun head!5880 (List!29963) B!2125)

(assert (=> b!2594156 (= res!1091336 (not (= (h!35283 l1!1546) (head!5880 l1!1546))))))

(declare-fun b!2594157 () Bool)

(declare-fun res!1091335 () Bool)

(assert (=> b!2594157 (=> res!1091335 e!1636712)))

(assert (=> b!2594157 (= res!1091335 (not (forall!6100 lt!913241 lambda!96438)))))

(declare-fun b!2594158 () Bool)

(declare-fun res!1091339 () Bool)

(assert (=> b!2594158 (=> res!1091339 e!1636712)))

(declare-fun isEmpty!17119 (List!29963) Bool)

(assert (=> b!2594158 (= res!1091339 (isEmpty!17119 l1!1546))))

(declare-fun b!2594159 () Bool)

(assert (=> b!2594159 (= e!1636711 e!1636714)))

(declare-fun res!1091337 () Bool)

(assert (=> b!2594159 (=> (not res!1091337) (not e!1636714))))

(declare-fun lt!913235 () Int)

(assert (=> b!2594159 (= res!1091337 (> lt!913235 lt!913240))))

(assert (=> b!2594159 (= lt!913240 (size!23168 l2!1515))))

(assert (=> b!2594159 (= lt!913235 (size!23168 l1!1546))))

(assert (= (and start!251548 res!1091338) b!2594151))

(assert (= (and b!2594151 res!1091331) b!2594159))

(assert (= (and b!2594159 res!1091337) b!2594155))

(assert (= (and b!2594155 res!1091330) b!2594153))

(assert (= (and b!2594153 res!1091333) b!2594152))

(assert (= (and b!2594152 res!1091332) b!2594148))

(assert (= (and b!2594148 (not res!1091334)) b!2594158))

(assert (= (and b!2594158 (not res!1091339)) b!2594157))

(assert (= (and b!2594157 (not res!1091335)) b!2594156))

(assert (= (and b!2594156 (not res!1091336)) b!2594150))

(assert (= (and start!251548 ((_ is Cons!29863) l1!1546)) b!2594149))

(assert (= (and start!251548 ((_ is Cons!29863) l2!1515)) b!2594154))

(declare-fun m!2930209 () Bool)

(assert (=> start!251548 m!2930209))

(declare-fun m!2930211 () Bool)

(assert (=> b!2594158 m!2930211))

(declare-fun m!2930213 () Bool)

(assert (=> b!2594155 m!2930213))

(declare-fun m!2930215 () Bool)

(assert (=> b!2594148 m!2930215))

(assert (=> b!2594148 m!2930215))

(declare-fun m!2930217 () Bool)

(assert (=> b!2594148 m!2930217))

(declare-fun m!2930219 () Bool)

(assert (=> b!2594148 m!2930219))

(declare-fun m!2930221 () Bool)

(assert (=> b!2594148 m!2930221))

(declare-fun m!2930223 () Bool)

(assert (=> b!2594148 m!2930223))

(declare-fun m!2930225 () Bool)

(assert (=> b!2594148 m!2930225))

(declare-fun m!2930227 () Bool)

(assert (=> b!2594148 m!2930227))

(declare-fun m!2930229 () Bool)

(assert (=> b!2594159 m!2930229))

(declare-fun m!2930231 () Bool)

(assert (=> b!2594159 m!2930231))

(declare-fun m!2930233 () Bool)

(assert (=> b!2594156 m!2930233))

(declare-fun m!2930235 () Bool)

(assert (=> b!2594151 m!2930235))

(declare-fun m!2930237 () Bool)

(assert (=> b!2594150 m!2930237))

(assert (=> b!2594157 m!2930215))

(declare-fun m!2930239 () Bool)

(assert (=> b!2594152 m!2930239))

(check-sat (not b!2594148) (not b!2594156) (not b!2594152) (not b!2594149) (not b!2594154) tp_is_empty!13405 (not b!2594158) (not b!2594155) (not b!2594157) (not b!2594159) (not b!2594150) (not start!251548) (not b!2594151))
(check-sat)
