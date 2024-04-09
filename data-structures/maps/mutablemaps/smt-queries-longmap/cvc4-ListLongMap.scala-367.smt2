; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7058 () Bool)

(assert start!7058)

(declare-fun res!26613 () Bool)

(declare-fun e!28895 () Bool)

(assert (=> start!7058 (=> (not res!26613) (not e!28895))))

(declare-datatypes ((array!3029 0))(
  ( (array!3030 (arr!1455 (Array (_ BitVec 32) (_ BitVec 64))) (size!1677 (_ BitVec 32))) )
))
(declare-fun a!4401 () array!3029)

(declare-fun i!1488 () (_ BitVec 32))

(declare-fun k!2989 () (_ BitVec 64))

(assert (=> start!7058 (= res!26613 (and (bvslt (size!1677 a!4401) #b01111111111111111111111111111111) (bvsge i!1488 #b00000000000000000000000000000000) (bvslt i!1488 (size!1677 a!4401)) (= (select (arr!1455 a!4401) i!1488) k!2989)))))

(assert (=> start!7058 e!28895))

(declare-fun array_inv!819 (array!3029) Bool)

(assert (=> start!7058 (array_inv!819 a!4401)))

(assert (=> start!7058 true))

(declare-fun b!45450 () Bool)

(declare-fun res!26614 () Bool)

(assert (=> b!45450 (=> (not res!26614) (not e!28895))))

(declare-fun arrayContainsKey!0 (array!3029 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!45450 (= res!26614 (arrayContainsKey!0 a!4401 k!2989 i!1488))))

(declare-fun b!45451 () Bool)

(assert (=> b!45451 (= e!28895 (not true))))

(assert (=> b!45451 (arrayContainsKey!0 a!4401 k!2989 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!1277 0))(
  ( (Unit!1278) )
))
(declare-fun lt!20147 () Unit!1277)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!3029 (_ BitVec 64) (_ BitVec 32)) Unit!1277)

(assert (=> b!45451 (= lt!20147 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!4401 k!2989 i!1488))))

(assert (= (and start!7058 res!26613) b!45450))

(assert (= (and b!45450 res!26614) b!45451))

(declare-fun m!39985 () Bool)

(assert (=> start!7058 m!39985))

(declare-fun m!39987 () Bool)

(assert (=> start!7058 m!39987))

(declare-fun m!39989 () Bool)

(assert (=> b!45450 m!39989))

(declare-fun m!39991 () Bool)

(assert (=> b!45451 m!39991))

(declare-fun m!39993 () Bool)

(assert (=> b!45451 m!39993))

(push 1)

(assert (not b!45450))

(assert (not b!45451))

(assert (not start!7058))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

