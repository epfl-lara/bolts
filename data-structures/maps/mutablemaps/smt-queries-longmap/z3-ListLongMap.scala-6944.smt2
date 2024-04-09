; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!87498 () Bool)

(assert start!87498)

(declare-fun b!1013052 () Bool)

(assert (=> b!1013052 true))

(assert (=> b!1013052 true))

(declare-fun b!1013050 () Bool)

(declare-datatypes ((Unit!33066 0))(
  ( (Unit!33067) )
))
(declare-fun e!569901 () Unit!33066)

(declare-fun Unit!33068 () Unit!33066)

(assert (=> b!1013050 (= e!569901 Unit!33068)))

(declare-fun b!1013051 () Bool)

(declare-fun e!569902 () Bool)

(assert (=> b!1013051 (= e!569902 false)))

(declare-fun lt!447845 () Unit!33066)

(assert (=> b!1013051 (= lt!447845 e!569901)))

(declare-fun c!102351 () Bool)

(declare-datatypes ((List!21501 0))(
  ( (Nil!21498) (Cons!21497 (h!22695 (_ BitVec 64)) (t!30510 List!21501)) )
))
(declare-fun lt!447846 () List!21501)

(declare-fun isEmpty!814 (List!21501) Bool)

(assert (=> b!1013051 (= c!102351 (not (isEmpty!814 lt!447846)))))

(declare-datatypes ((B!1372 0))(
  ( (B!1373 (val!11770 Int)) )
))
(declare-datatypes ((tuple2!15176 0))(
  ( (tuple2!15177 (_1!7598 (_ BitVec 64)) (_2!7598 B!1372)) )
))
(declare-datatypes ((List!21502 0))(
  ( (Nil!21499) (Cons!21498 (h!22696 tuple2!15176) (t!30511 List!21502)) )
))
(declare-fun l!412 () List!21502)

(declare-fun value!115 () B!1372)

(declare-fun getKeysOf!32 (List!21502 B!1372) List!21501)

(assert (=> b!1013051 (= lt!447846 (getKeysOf!32 (t!30511 l!412) value!115))))

(declare-fun lt!447844 () Unit!33066)

(assert (=> b!1013052 (= e!569901 lt!447844)))

(declare-fun lemmaForallGetValueByKeySameWithASmallerHead!23 (List!21502 List!21501 B!1372 tuple2!15176) Unit!33066)

(assert (=> b!1013052 (= lt!447844 (lemmaForallGetValueByKeySameWithASmallerHead!23 (t!30511 l!412) lt!447846 value!115 (h!22696 l!412)))))

(declare-fun lambda!476 () Int)

(declare-fun forall!228 (List!21501 Int) Bool)

(assert (=> b!1013052 (forall!228 lt!447846 lambda!476)))

(declare-fun res!680346 () Bool)

(assert (=> start!87498 (=> (not res!680346) (not e!569902))))

(declare-fun isStrictlySorted!546 (List!21502) Bool)

(assert (=> start!87498 (= res!680346 (isStrictlySorted!546 l!412))))

(assert (=> start!87498 e!569902))

(declare-fun e!569903 () Bool)

(assert (=> start!87498 e!569903))

(declare-fun tp_is_empty!23439 () Bool)

(assert (=> start!87498 tp_is_empty!23439))

(declare-fun b!1013053 () Bool)

(declare-fun tp!70368 () Bool)

(assert (=> b!1013053 (= e!569903 (and tp_is_empty!23439 tp!70368))))

(declare-fun b!1013054 () Bool)

(declare-fun res!680347 () Bool)

(assert (=> b!1013054 (=> (not res!680347) (not e!569902))))

(get-info :version)

(assert (=> b!1013054 (= res!680347 (and (not (= (_2!7598 (h!22696 l!412)) value!115)) ((_ is Cons!21498) l!412)))))

(assert (= (and start!87498 res!680346) b!1013054))

(assert (= (and b!1013054 res!680347) b!1013051))

(assert (= (and b!1013051 c!102351) b!1013052))

(assert (= (and b!1013051 (not c!102351)) b!1013050))

(assert (= (and start!87498 ((_ is Cons!21498) l!412)) b!1013053))

(declare-fun m!936397 () Bool)

(assert (=> b!1013051 m!936397))

(declare-fun m!936399 () Bool)

(assert (=> b!1013051 m!936399))

(declare-fun m!936401 () Bool)

(assert (=> b!1013052 m!936401))

(declare-fun m!936403 () Bool)

(assert (=> b!1013052 m!936403))

(declare-fun m!936405 () Bool)

(assert (=> start!87498 m!936405))

(check-sat tp_is_empty!23439 (not start!87498) (not b!1013053) (not b!1013052) (not b!1013051))
(check-sat)
