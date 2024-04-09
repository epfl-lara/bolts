; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48224 () Bool)

(assert start!48224)

(declare-fun res!326419 () Bool)

(declare-fun e!309081 () Bool)

(assert (=> start!48224 (=> (not res!326419) (not e!309081))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48224 (= res!326419 (validMask!0 mask!3216))))

(assert (=> start!48224 e!309081))

(assert (=> start!48224 true))

(declare-datatypes ((array!33605 0))(
  ( (array!33606 (arr!16145 (Array (_ BitVec 32) (_ BitVec 64))) (size!16509 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33605)

(declare-fun array_inv!11919 (array!33605) Bool)

(assert (=> start!48224 (array_inv!11919 a!3154)))

(declare-fun b!530563 () Bool)

(assert (=> b!530563 (= e!309081 false)))

(declare-datatypes ((SeekEntryResult!4610 0))(
  ( (MissingZero!4610 (index!20664 (_ BitVec 32))) (Found!4610 (index!20665 (_ BitVec 32))) (Intermediate!4610 (undefined!5422 Bool) (index!20666 (_ BitVec 32)) (x!49675 (_ BitVec 32))) (Undefined!4610) (MissingVacant!4610 (index!20667 (_ BitVec 32))) )
))
(declare-fun lt!244754 () SeekEntryResult!4610)

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33605 (_ BitVec 32)) SeekEntryResult!4610)

(assert (=> b!530563 (= lt!244754 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!530564 () Bool)

(declare-fun res!326420 () Bool)

(assert (=> b!530564 (=> (not res!326420) (not e!309081))))

(declare-fun arrayContainsKey!0 (array!33605 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!530564 (= res!326420 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!530565 () Bool)

(declare-fun res!326422 () Bool)

(assert (=> b!530565 (=> (not res!326422) (not e!309081))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!530565 (= res!326422 (validKeyInArray!0 k!1998))))

(declare-fun b!530566 () Bool)

(declare-fun res!326423 () Bool)

(assert (=> b!530566 (=> (not res!326423) (not e!309081))))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!530566 (= res!326423 (and (= (size!16509 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16509 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16509 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!530567 () Bool)

(declare-fun res!326421 () Bool)

(assert (=> b!530567 (=> (not res!326421) (not e!309081))))

(assert (=> b!530567 (= res!326421 (validKeyInArray!0 (select (arr!16145 a!3154) j!147)))))

(assert (= (and start!48224 res!326419) b!530566))

(assert (= (and b!530566 res!326423) b!530567))

(assert (= (and b!530567 res!326421) b!530565))

(assert (= (and b!530565 res!326422) b!530564))

(assert (= (and b!530564 res!326420) b!530563))

(declare-fun m!511151 () Bool)

(assert (=> b!530567 m!511151))

(assert (=> b!530567 m!511151))

(declare-fun m!511153 () Bool)

(assert (=> b!530567 m!511153))

(declare-fun m!511155 () Bool)

(assert (=> b!530564 m!511155))

(declare-fun m!511157 () Bool)

(assert (=> start!48224 m!511157))

(declare-fun m!511159 () Bool)

(assert (=> start!48224 m!511159))

(declare-fun m!511161 () Bool)

(assert (=> b!530563 m!511161))

(declare-fun m!511163 () Bool)

(assert (=> b!530565 m!511163))

(push 1)

(assert (not start!48224))

(assert (not b!530563))

(assert (not b!530564))

