; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!87354 () Bool)

(assert start!87354)

(declare-fun b!1012017 () Bool)

(assert (=> b!1012017 true))

(assert (=> b!1012017 true))

(declare-fun res!679918 () Bool)

(declare-fun e!569350 () Bool)

(assert (=> start!87354 (=> (not res!679918) (not e!569350))))

(declare-datatypes ((B!1324 0))(
  ( (B!1325 (val!11746 Int)) )
))
(declare-datatypes ((tuple2!15128 0))(
  ( (tuple2!15129 (_1!7574 (_ BitVec 64)) (_2!7574 B!1324)) )
))
(declare-datatypes ((List!21456 0))(
  ( (Nil!21453) (Cons!21452 (h!22650 tuple2!15128) (t!30465 List!21456)) )
))
(declare-fun l!412 () List!21456)

(declare-fun isStrictlySorted!522 (List!21456) Bool)

(assert (=> start!87354 (= res!679918 (isStrictlySorted!522 l!412))))

(assert (=> start!87354 e!569350))

(declare-fun e!569349 () Bool)

(assert (=> start!87354 e!569349))

(declare-fun tp_is_empty!23391 () Bool)

(assert (=> start!87354 tp_is_empty!23391))

(declare-fun b!1012015 () Bool)

(declare-fun res!679919 () Bool)

(assert (=> b!1012015 (=> (not res!679919) (not e!569350))))

(declare-fun value!115 () B!1324)

(get-info :version)

(assert (=> b!1012015 (= res!679919 (and ((_ is Cons!21452) l!412) (= (_2!7574 (h!22650 l!412)) value!115)))))

(declare-fun b!1012016 () Bool)

(declare-fun tp!70251 () Bool)

(assert (=> b!1012016 (= e!569349 (and tp_is_empty!23391 tp!70251))))

(declare-fun res!679922 () Bool)

(declare-fun e!569351 () Bool)

(assert (=> b!1012017 (=> (not res!679922) (not e!569351))))

(declare-datatypes ((List!21457 0))(
  ( (Nil!21454) (Cons!21453 (h!22651 (_ BitVec 64)) (t!30466 List!21457)) )
))
(declare-fun lt!447276 () List!21457)

(declare-fun lambda!279 () Int)

(declare-fun forall!207 (List!21457 Int) Bool)

(assert (=> b!1012017 (= res!679922 (forall!207 lt!447276 lambda!279))))

(declare-fun b!1012018 () Bool)

(declare-fun res!679924 () Bool)

(assert (=> b!1012018 (=> (not res!679924) (not e!569351))))

(declare-fun isEmpty!784 (List!21456) Bool)

(assert (=> b!1012018 (= res!679924 (not (isEmpty!784 (t!30465 l!412))))))

(declare-fun b!1012019 () Bool)

(declare-fun res!679921 () Bool)

(assert (=> b!1012019 (=> (not res!679921) (not e!569351))))

(assert (=> b!1012019 (= res!679921 (isStrictlySorted!522 (t!30465 l!412)))))

(declare-fun b!1012020 () Bool)

(assert (=> b!1012020 (= e!569351 (not (forall!207 lt!447276 lambda!279)))))

(declare-fun b!1012021 () Bool)

(declare-fun res!679923 () Bool)

(assert (=> b!1012021 (=> (not res!679923) (not e!569351))))

(declare-fun head!921 (List!21456) tuple2!15128)

(assert (=> b!1012021 (= res!679923 (bvslt (_1!7574 (h!22650 l!412)) (_1!7574 (head!921 (t!30465 l!412)))))))

(declare-fun b!1012022 () Bool)

(assert (=> b!1012022 (= e!569350 e!569351)))

(declare-fun res!679920 () Bool)

(assert (=> b!1012022 (=> (not res!679920) (not e!569351))))

(declare-fun isEmpty!785 (List!21457) Bool)

(assert (=> b!1012022 (= res!679920 (not (isEmpty!785 lt!447276)))))

(declare-fun getKeysOf!11 (List!21456 B!1324) List!21457)

(assert (=> b!1012022 (= lt!447276 (getKeysOf!11 (t!30465 l!412) value!115))))

(assert (= (and start!87354 res!679918) b!1012015))

(assert (= (and b!1012015 res!679919) b!1012022))

(assert (= (and b!1012022 res!679920) b!1012019))

(assert (= (and b!1012019 res!679921) b!1012018))

(assert (= (and b!1012018 res!679924) b!1012017))

(assert (= (and b!1012017 res!679922) b!1012021))

(assert (= (and b!1012021 res!679923) b!1012020))

(assert (= (and start!87354 ((_ is Cons!21452) l!412)) b!1012016))

(declare-fun m!935915 () Bool)

(assert (=> b!1012018 m!935915))

(declare-fun m!935917 () Bool)

(assert (=> b!1012019 m!935917))

(declare-fun m!935919 () Bool)

(assert (=> start!87354 m!935919))

(declare-fun m!935921 () Bool)

(assert (=> b!1012020 m!935921))

(declare-fun m!935923 () Bool)

(assert (=> b!1012022 m!935923))

(declare-fun m!935925 () Bool)

(assert (=> b!1012022 m!935925))

(declare-fun m!935927 () Bool)

(assert (=> b!1012021 m!935927))

(assert (=> b!1012017 m!935921))

(check-sat (not b!1012022) (not b!1012019) (not b!1012016) (not b!1012021) tp_is_empty!23391 (not b!1012017) (not start!87354) (not b!1012018) (not b!1012020))
(check-sat)
