; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!7056 () Bool)

(assert start!7056)

(declare-fun res!26607 () Bool)

(declare-fun e!28889 () Bool)

(assert (=> start!7056 (=> (not res!26607) (not e!28889))))

(declare-datatypes ((array!3027 0))(
  ( (array!3028 (arr!1454 (Array (_ BitVec 32) (_ BitVec 64))) (size!1676 (_ BitVec 32))) )
))
(declare-fun a!4401 () array!3027)

(declare-fun i!1488 () (_ BitVec 32))

(declare-fun k0!2989 () (_ BitVec 64))

(assert (=> start!7056 (= res!26607 (and (bvslt (size!1676 a!4401) #b01111111111111111111111111111111) (bvsge i!1488 #b00000000000000000000000000000000) (bvslt i!1488 (size!1676 a!4401)) (= (select (arr!1454 a!4401) i!1488) k0!2989)))))

(assert (=> start!7056 e!28889))

(declare-fun array_inv!818 (array!3027) Bool)

(assert (=> start!7056 (array_inv!818 a!4401)))

(assert (=> start!7056 true))

(declare-fun b!45444 () Bool)

(declare-fun res!26608 () Bool)

(assert (=> b!45444 (=> (not res!26608) (not e!28889))))

(declare-fun arrayContainsKey!0 (array!3027 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!45444 (= res!26608 (arrayContainsKey!0 a!4401 k0!2989 i!1488))))

(declare-fun b!45445 () Bool)

(assert (=> b!45445 (= e!28889 (not true))))

(assert (=> b!45445 (arrayContainsKey!0 a!4401 k0!2989 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!1275 0))(
  ( (Unit!1276) )
))
(declare-fun lt!20144 () Unit!1275)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!3027 (_ BitVec 64) (_ BitVec 32)) Unit!1275)

(assert (=> b!45445 (= lt!20144 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!4401 k0!2989 i!1488))))

(assert (= (and start!7056 res!26607) b!45444))

(assert (= (and b!45444 res!26608) b!45445))

(declare-fun m!39975 () Bool)

(assert (=> start!7056 m!39975))

(declare-fun m!39977 () Bool)

(assert (=> start!7056 m!39977))

(declare-fun m!39979 () Bool)

(assert (=> b!45444 m!39979))

(declare-fun m!39981 () Bool)

(assert (=> b!45445 m!39981))

(declare-fun m!39983 () Bool)

(assert (=> b!45445 m!39983))

(check-sat (not b!45444) (not b!45445) (not start!7056))
(check-sat)
