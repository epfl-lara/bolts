; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48600 () Bool)

(assert start!48600)

(declare-fun b!533270 () Bool)

(declare-fun e!310311 () Bool)

(declare-fun e!310312 () Bool)

(assert (=> b!533270 (= e!310311 e!310312)))

(declare-fun res!328634 () Bool)

(assert (=> b!533270 (=> (not res!328634) (not e!310312))))

(declare-datatypes ((SeekEntryResult!4684 0))(
  ( (MissingZero!4684 (index!20960 (_ BitVec 32))) (Found!4684 (index!20961 (_ BitVec 32))) (Intermediate!4684 (undefined!5496 Bool) (index!20962 (_ BitVec 32)) (x!49958 (_ BitVec 32))) (Undefined!4684) (MissingVacant!4684 (index!20963 (_ BitVec 32))) )
))
(declare-fun lt!245411 () SeekEntryResult!4684)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!533270 (= res!328634 (or (= lt!245411 (MissingZero!4684 i!1153)) (= lt!245411 (MissingVacant!4684 i!1153))))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun k0!1998 () (_ BitVec 64))

(declare-datatypes ((array!33768 0))(
  ( (array!33769 (arr!16219 (Array (_ BitVec 32) (_ BitVec 64))) (size!16583 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33768)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33768 (_ BitVec 32)) SeekEntryResult!4684)

(assert (=> b!533270 (= lt!245411 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun b!533271 () Bool)

(declare-fun res!328627 () Bool)

(assert (=> b!533271 (=> (not res!328627) (not e!310312))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33768 (_ BitVec 32)) Bool)

(assert (=> b!533271 (= res!328627 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!533272 () Bool)

(declare-fun res!328625 () Bool)

(assert (=> b!533272 (=> (not res!328625) (not e!310312))))

(declare-datatypes ((List!10391 0))(
  ( (Nil!10388) (Cons!10387 (h!11330 (_ BitVec 64)) (t!16627 List!10391)) )
))
(declare-fun arrayNoDuplicates!0 (array!33768 (_ BitVec 32) List!10391) Bool)

(assert (=> b!533272 (= res!328625 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10388))))

(declare-fun b!533273 () Bool)

(declare-fun index!1177 () (_ BitVec 32))

(assert (=> b!533273 (= e!310312 (and (bvsge mask!3216 #b00000000000000000000000000000000) (bvsge index!1177 (bvadd #b00000000000000000000000000000001 mask!3216))))))

(declare-fun res!328626 () Bool)

(assert (=> start!48600 (=> (not res!328626) (not e!310311))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48600 (= res!328626 (validMask!0 mask!3216))))

(assert (=> start!48600 e!310311))

(assert (=> start!48600 true))

(declare-fun array_inv!11993 (array!33768) Bool)

(assert (=> start!48600 (array_inv!11993 a!3154)))

(declare-fun b!533274 () Bool)

(declare-fun res!328630 () Bool)

(assert (=> b!533274 (=> (not res!328630) (not e!310311))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!533274 (= res!328630 (validKeyInArray!0 k0!1998))))

(declare-fun b!533275 () Bool)

(declare-fun res!328633 () Bool)

(assert (=> b!533275 (=> (not res!328633) (not e!310311))))

(declare-fun j!147 () (_ BitVec 32))

(assert (=> b!533275 (= res!328633 (and (= (size!16583 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16583 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16583 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!533276 () Bool)

(declare-fun res!328629 () Bool)

(assert (=> b!533276 (=> (not res!328629) (not e!310312))))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!533276 (= res!328629 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16583 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16583 a!3154)) (= (select (arr!16219 a!3154) resIndex!32) (select (arr!16219 a!3154) j!147))))))

(declare-fun b!533277 () Bool)

(declare-fun res!328631 () Bool)

(assert (=> b!533277 (=> (not res!328631) (not e!310311))))

(declare-fun arrayContainsKey!0 (array!33768 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!533277 (= res!328631 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!533278 () Bool)

(declare-fun res!328632 () Bool)

(assert (=> b!533278 (=> (not res!328632) (not e!310311))))

(assert (=> b!533278 (= res!328632 (validKeyInArray!0 (select (arr!16219 a!3154) j!147)))))

(declare-fun b!533279 () Bool)

(declare-fun res!328628 () Bool)

(assert (=> b!533279 (=> (not res!328628) (not e!310312))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33768 (_ BitVec 32)) SeekEntryResult!4684)

(assert (=> b!533279 (= res!328628 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16219 a!3154) j!147) a!3154 mask!3216) (Intermediate!4684 false resIndex!32 resX!32)))))

(assert (= (and start!48600 res!328626) b!533275))

(assert (= (and b!533275 res!328633) b!533278))

(assert (= (and b!533278 res!328632) b!533274))

(assert (= (and b!533274 res!328630) b!533277))

(assert (= (and b!533277 res!328631) b!533270))

(assert (= (and b!533270 res!328634) b!533271))

(assert (= (and b!533271 res!328627) b!533272))

(assert (= (and b!533272 res!328625) b!533276))

(assert (= (and b!533276 res!328629) b!533279))

(assert (= (and b!533279 res!328628) b!533273))

(declare-fun m!513179 () Bool)

(assert (=> b!533270 m!513179))

(declare-fun m!513181 () Bool)

(assert (=> start!48600 m!513181))

(declare-fun m!513183 () Bool)

(assert (=> start!48600 m!513183))

(declare-fun m!513185 () Bool)

(assert (=> b!533276 m!513185))

(declare-fun m!513187 () Bool)

(assert (=> b!533276 m!513187))

(assert (=> b!533279 m!513187))

(assert (=> b!533279 m!513187))

(declare-fun m!513189 () Bool)

(assert (=> b!533279 m!513189))

(declare-fun m!513191 () Bool)

(assert (=> b!533272 m!513191))

(declare-fun m!513193 () Bool)

(assert (=> b!533274 m!513193))

(assert (=> b!533278 m!513187))

(assert (=> b!533278 m!513187))

(declare-fun m!513195 () Bool)

(assert (=> b!533278 m!513195))

(declare-fun m!513197 () Bool)

(assert (=> b!533271 m!513197))

(declare-fun m!513199 () Bool)

(assert (=> b!533277 m!513199))

(check-sat (not b!533279) (not b!533270) (not b!533277) (not b!533272) (not b!533274) (not b!533271) (not start!48600) (not b!533278))
(check-sat)
