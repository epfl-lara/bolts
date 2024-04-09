; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48232 () Bool)

(assert start!48232)

(declare-fun b!530623 () Bool)

(declare-fun res!326481 () Bool)

(declare-fun e!309105 () Bool)

(assert (=> b!530623 (=> (not res!326481) (not e!309105))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!530623 (= res!326481 (validKeyInArray!0 k!1998))))

(declare-fun b!530624 () Bool)

(declare-fun res!326483 () Bool)

(assert (=> b!530624 (=> (not res!326483) (not e!309105))))

(declare-datatypes ((array!33613 0))(
  ( (array!33614 (arr!16149 (Array (_ BitVec 32) (_ BitVec 64))) (size!16513 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33613)

(declare-fun j!147 () (_ BitVec 32))

(assert (=> b!530624 (= res!326483 (validKeyInArray!0 (select (arr!16149 a!3154) j!147)))))

(declare-fun res!326482 () Bool)

(assert (=> start!48232 (=> (not res!326482) (not e!309105))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48232 (= res!326482 (validMask!0 mask!3216))))

(assert (=> start!48232 e!309105))

(assert (=> start!48232 true))

(declare-fun array_inv!11923 (array!33613) Bool)

(assert (=> start!48232 (array_inv!11923 a!3154)))

(declare-fun b!530625 () Bool)

(declare-fun res!326479 () Bool)

(assert (=> b!530625 (=> (not res!326479) (not e!309105))))

(declare-fun arrayContainsKey!0 (array!33613 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!530625 (= res!326479 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!530626 () Bool)

(assert (=> b!530626 (= e!309105 false)))

(declare-datatypes ((SeekEntryResult!4614 0))(
  ( (MissingZero!4614 (index!20680 (_ BitVec 32))) (Found!4614 (index!20681 (_ BitVec 32))) (Intermediate!4614 (undefined!5426 Bool) (index!20682 (_ BitVec 32)) (x!49695 (_ BitVec 32))) (Undefined!4614) (MissingVacant!4614 (index!20683 (_ BitVec 32))) )
))
(declare-fun lt!244766 () SeekEntryResult!4614)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33613 (_ BitVec 32)) SeekEntryResult!4614)

(assert (=> b!530626 (= lt!244766 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!530627 () Bool)

(declare-fun res!326480 () Bool)

(assert (=> b!530627 (=> (not res!326480) (not e!309105))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!530627 (= res!326480 (and (= (size!16513 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16513 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16513 a!3154)) (not (= i!1153 j!147))))))

(assert (= (and start!48232 res!326482) b!530627))

(assert (= (and b!530627 res!326480) b!530624))

(assert (= (and b!530624 res!326483) b!530623))

(assert (= (and b!530623 res!326481) b!530625))

(assert (= (and b!530625 res!326479) b!530626))

(declare-fun m!511207 () Bool)

(assert (=> start!48232 m!511207))

(declare-fun m!511209 () Bool)

(assert (=> start!48232 m!511209))

(declare-fun m!511211 () Bool)

(assert (=> b!530624 m!511211))

(assert (=> b!530624 m!511211))

(declare-fun m!511213 () Bool)

(assert (=> b!530624 m!511213))

(declare-fun m!511215 () Bool)

(assert (=> b!530626 m!511215))

(declare-fun m!511217 () Bool)

(assert (=> b!530625 m!511217))

(declare-fun m!511219 () Bool)

(assert (=> b!530623 m!511219))

(push 1)

(assert (not start!48232))

(assert (not b!530625))

(assert (not b!530626))

(assert (not b!530623))

(assert (not b!530624))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

