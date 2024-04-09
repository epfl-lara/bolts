; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48604 () Bool)

(assert start!48604)

(declare-fun b!533330 () Bool)

(declare-fun res!328689 () Bool)

(declare-fun e!310328 () Bool)

(assert (=> b!533330 (=> (not res!328689) (not e!310328))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-datatypes ((array!33772 0))(
  ( (array!33773 (arr!16221 (Array (_ BitVec 32) (_ BitVec 64))) (size!16585 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33772)

(declare-fun resX!32 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4686 0))(
  ( (MissingZero!4686 (index!20968 (_ BitVec 32))) (Found!4686 (index!20969 (_ BitVec 32))) (Intermediate!4686 (undefined!5498 Bool) (index!20970 (_ BitVec 32)) (x!49968 (_ BitVec 32))) (Undefined!4686) (MissingVacant!4686 (index!20971 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33772 (_ BitVec 32)) SeekEntryResult!4686)

(assert (=> b!533330 (= res!328689 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16221 a!3154) j!147) a!3154 mask!3216) (Intermediate!4686 false resIndex!32 resX!32)))))

(declare-fun b!533331 () Bool)

(declare-fun res!328692 () Bool)

(assert (=> b!533331 (=> (not res!328692) (not e!310328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33772 (_ BitVec 32)) Bool)

(assert (=> b!533331 (= res!328692 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!533332 () Bool)

(declare-fun res!328687 () Bool)

(declare-fun e!310329 () Bool)

(assert (=> b!533332 (=> (not res!328687) (not e!310329))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33772 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!533332 (= res!328687 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun res!328686 () Bool)

(assert (=> start!48604 (=> (not res!328686) (not e!310329))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48604 (= res!328686 (validMask!0 mask!3216))))

(assert (=> start!48604 e!310329))

(assert (=> start!48604 true))

(declare-fun array_inv!11995 (array!33772) Bool)

(assert (=> start!48604 (array_inv!11995 a!3154)))

(declare-fun b!533333 () Bool)

(declare-fun res!328685 () Bool)

(assert (=> b!533333 (=> (not res!328685) (not e!310329))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!533333 (= res!328685 (validKeyInArray!0 (select (arr!16221 a!3154) j!147)))))

(declare-fun b!533334 () Bool)

(assert (=> b!533334 (= e!310329 e!310328)))

(declare-fun res!328693 () Bool)

(assert (=> b!533334 (=> (not res!328693) (not e!310328))))

(declare-fun lt!245417 () SeekEntryResult!4686)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!533334 (= res!328693 (or (= lt!245417 (MissingZero!4686 i!1153)) (= lt!245417 (MissingVacant!4686 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33772 (_ BitVec 32)) SeekEntryResult!4686)

(assert (=> b!533334 (= lt!245417 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!533335 () Bool)

(declare-fun res!328694 () Bool)

(assert (=> b!533335 (=> (not res!328694) (not e!310329))))

(assert (=> b!533335 (= res!328694 (validKeyInArray!0 k!1998))))

(declare-fun b!533336 () Bool)

(declare-fun res!328691 () Bool)

(assert (=> b!533336 (=> (not res!328691) (not e!310328))))

(assert (=> b!533336 (= res!328691 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16585 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16585 a!3154)) (= (select (arr!16221 a!3154) resIndex!32) (select (arr!16221 a!3154) j!147))))))

(declare-fun b!533337 () Bool)

(assert (=> b!533337 (= e!310328 (and (bvsge mask!3216 #b00000000000000000000000000000000) (bvslt index!1177 (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsgt x!1030 #b01111111111111111111111111111110)))))

(declare-fun b!533338 () Bool)

(declare-fun res!328690 () Bool)

(assert (=> b!533338 (=> (not res!328690) (not e!310329))))

(assert (=> b!533338 (= res!328690 (and (= (size!16585 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16585 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16585 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!533339 () Bool)

(declare-fun res!328688 () Bool)

(assert (=> b!533339 (=> (not res!328688) (not e!310328))))

(declare-datatypes ((List!10393 0))(
  ( (Nil!10390) (Cons!10389 (h!11332 (_ BitVec 64)) (t!16629 List!10393)) )
))
(declare-fun arrayNoDuplicates!0 (array!33772 (_ BitVec 32) List!10393) Bool)

(assert (=> b!533339 (= res!328688 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10390))))

(assert (= (and start!48604 res!328686) b!533338))

(assert (= (and b!533338 res!328690) b!533333))

(assert (= (and b!533333 res!328685) b!533335))

(assert (= (and b!533335 res!328694) b!533332))

(assert (= (and b!533332 res!328687) b!533334))

(assert (= (and b!533334 res!328693) b!533331))

(assert (= (and b!533331 res!328692) b!533339))

(assert (= (and b!533339 res!328688) b!533336))

(assert (= (and b!533336 res!328691) b!533330))

(assert (= (and b!533330 res!328689) b!533337))

(declare-fun m!513223 () Bool)

(assert (=> b!533330 m!513223))

(assert (=> b!533330 m!513223))

(declare-fun m!513225 () Bool)

(assert (=> b!533330 m!513225))

(declare-fun m!513227 () Bool)

(assert (=> start!48604 m!513227))

(declare-fun m!513229 () Bool)

(assert (=> start!48604 m!513229))

(declare-fun m!513231 () Bool)

(assert (=> b!533334 m!513231))

(assert (=> b!533333 m!513223))

(assert (=> b!533333 m!513223))

(declare-fun m!513233 () Bool)

(assert (=> b!533333 m!513233))

(declare-fun m!513235 () Bool)

(assert (=> b!533339 m!513235))

(declare-fun m!513237 () Bool)

(assert (=> b!533336 m!513237))

(assert (=> b!533336 m!513223))

(declare-fun m!513239 () Bool)

(assert (=> b!533335 m!513239))

(declare-fun m!513241 () Bool)

(assert (=> b!533332 m!513241))

(declare-fun m!513243 () Bool)

(assert (=> b!533331 m!513243))

(push 1)

(assert (not start!48604))

(assert (not b!533330))

(assert (not b!533331))

(assert (not b!533335))

(assert (not b!533339))

(assert (not b!533334))

(assert (not b!533333))

(assert (not b!533332))

(check-sat)

(pop 1)

(push 1)

(check-sat)

