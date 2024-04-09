; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7054 () Bool)

(assert start!7054)

(declare-fun res!26601 () Bool)

(declare-fun e!28882 () Bool)

(assert (=> start!7054 (=> (not res!26601) (not e!28882))))

(declare-fun i!1488 () (_ BitVec 32))

(declare-fun k!2989 () (_ BitVec 64))

(declare-datatypes ((array!3025 0))(
  ( (array!3026 (arr!1453 (Array (_ BitVec 32) (_ BitVec 64))) (size!1675 (_ BitVec 32))) )
))
(declare-fun a!4401 () array!3025)

(assert (=> start!7054 (= res!26601 (and (bvslt (size!1675 a!4401) #b01111111111111111111111111111111) (bvsge i!1488 #b00000000000000000000000000000000) (bvslt i!1488 (size!1675 a!4401)) (= (select (arr!1453 a!4401) i!1488) k!2989)))))

(assert (=> start!7054 e!28882))

(declare-fun array_inv!817 (array!3025) Bool)

(assert (=> start!7054 (array_inv!817 a!4401)))

(assert (=> start!7054 true))

(declare-fun b!45438 () Bool)

(declare-fun res!26602 () Bool)

(assert (=> b!45438 (=> (not res!26602) (not e!28882))))

(declare-fun arrayContainsKey!0 (array!3025 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!45438 (= res!26602 (arrayContainsKey!0 a!4401 k!2989 i!1488))))

(declare-fun b!45439 () Bool)

(assert (=> b!45439 (= e!28882 (not true))))

(assert (=> b!45439 (arrayContainsKey!0 a!4401 k!2989 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!1273 0))(
  ( (Unit!1274) )
))
(declare-fun lt!20141 () Unit!1273)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!3025 (_ BitVec 64) (_ BitVec 32)) Unit!1273)

(assert (=> b!45439 (= lt!20141 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!4401 k!2989 i!1488))))

(assert (= (and start!7054 res!26601) b!45438))

(assert (= (and b!45438 res!26602) b!45439))

(declare-fun m!39965 () Bool)

(assert (=> start!7054 m!39965))

(declare-fun m!39967 () Bool)

(assert (=> start!7054 m!39967))

(declare-fun m!39969 () Bool)

(assert (=> b!45438 m!39969))

(declare-fun m!39971 () Bool)

(assert (=> b!45439 m!39971))

(declare-fun m!39973 () Bool)

(assert (=> b!45439 m!39973))

(push 1)

(assert (not b!45438))

(assert (not b!45439))

(assert (not start!7054))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

