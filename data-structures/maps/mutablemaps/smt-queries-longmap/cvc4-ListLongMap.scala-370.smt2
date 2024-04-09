; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7076 () Bool)

(assert start!7076)

(declare-fun res!26659 () Bool)

(declare-fun e!28948 () Bool)

(assert (=> start!7076 (=> (not res!26659) (not e!28948))))

(declare-datatypes ((array!3047 0))(
  ( (array!3048 (arr!1464 (Array (_ BitVec 32) (_ BitVec 64))) (size!1686 (_ BitVec 32))) )
))
(declare-fun a!4401 () array!3047)

(declare-fun i!1488 () (_ BitVec 32))

(declare-fun k!2989 () (_ BitVec 64))

(assert (=> start!7076 (= res!26659 (and (bvslt (size!1686 a!4401) #b01111111111111111111111111111111) (bvsge i!1488 #b00000000000000000000000000000000) (bvslt i!1488 (size!1686 a!4401)) (= (select (arr!1464 a!4401) i!1488) k!2989)))))

(assert (=> start!7076 e!28948))

(declare-fun array_inv!828 (array!3047) Bool)

(assert (=> start!7076 (array_inv!828 a!4401)))

(assert (=> start!7076 true))

(declare-fun b!45496 () Bool)

(declare-fun arrayContainsKey!0 (array!3047 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!45496 (= e!28948 (not (arrayContainsKey!0 a!4401 k!2989 i!1488)))))

(assert (= (and start!7076 res!26659) b!45496))

(declare-fun m!40067 () Bool)

(assert (=> start!7076 m!40067))

(declare-fun m!40069 () Bool)

(assert (=> start!7076 m!40069))

(declare-fun m!40071 () Bool)

(assert (=> b!45496 m!40071))

(push 1)

(assert (not start!7076))

(assert (not b!45496))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

