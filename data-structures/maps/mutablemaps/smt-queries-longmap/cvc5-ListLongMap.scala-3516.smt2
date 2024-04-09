; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48682 () Bool)

(assert start!48682)

(declare-fun b!534491 () Bool)

(declare-fun res!329850 () Bool)

(declare-fun e!310679 () Bool)

(assert (=> b!534491 (=> (not res!329850) (not e!310679))))

(declare-datatypes ((array!33850 0))(
  ( (array!33851 (arr!16260 (Array (_ BitVec 32) (_ BitVec 64))) (size!16624 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33850)

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33850 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!534491 (= res!329850 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!534492 () Bool)

(declare-fun e!310680 () Bool)

(assert (=> b!534492 (= e!310679 e!310680)))

(declare-fun res!329848 () Bool)

(assert (=> b!534492 (=> (not res!329848) (not e!310680))))

(declare-datatypes ((SeekEntryResult!4725 0))(
  ( (MissingZero!4725 (index!21124 (_ BitVec 32))) (Found!4725 (index!21125 (_ BitVec 32))) (Intermediate!4725 (undefined!5537 Bool) (index!21126 (_ BitVec 32)) (x!50111 (_ BitVec 32))) (Undefined!4725) (MissingVacant!4725 (index!21127 (_ BitVec 32))) )
))
(declare-fun lt!245644 () SeekEntryResult!4725)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!534492 (= res!329848 (or (= lt!245644 (MissingZero!4725 i!1153)) (= lt!245644 (MissingVacant!4725 i!1153))))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33850 (_ BitVec 32)) SeekEntryResult!4725)

(assert (=> b!534492 (= lt!245644 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!534493 () Bool)

(assert (=> b!534493 (= e!310680 false)))

(declare-fun lt!245645 () SeekEntryResult!4725)

(declare-fun j!147 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33850 (_ BitVec 32)) SeekEntryResult!4725)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!534493 (= lt!245645 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16260 a!3154) j!147) mask!3216) (select (arr!16260 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!534494 () Bool)

(declare-fun res!329849 () Bool)

(assert (=> b!534494 (=> (not res!329849) (not e!310680))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!534494 (= res!329849 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16624 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16624 a!3154)) (= (select (arr!16260 a!3154) resIndex!32) (select (arr!16260 a!3154) j!147))))))

(declare-fun res!329852 () Bool)

(assert (=> start!48682 (=> (not res!329852) (not e!310679))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48682 (= res!329852 (validMask!0 mask!3216))))

(assert (=> start!48682 e!310679))

(assert (=> start!48682 true))

(declare-fun array_inv!12034 (array!33850) Bool)

(assert (=> start!48682 (array_inv!12034 a!3154)))

(declare-fun b!534495 () Bool)

(declare-fun res!329846 () Bool)

(assert (=> b!534495 (=> (not res!329846) (not e!310679))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!534495 (= res!329846 (validKeyInArray!0 (select (arr!16260 a!3154) j!147)))))

(declare-fun b!534496 () Bool)

(declare-fun res!329855 () Bool)

(assert (=> b!534496 (=> (not res!329855) (not e!310680))))

(declare-datatypes ((List!10432 0))(
  ( (Nil!10429) (Cons!10428 (h!11371 (_ BitVec 64)) (t!16668 List!10432)) )
))
(declare-fun arrayNoDuplicates!0 (array!33850 (_ BitVec 32) List!10432) Bool)

(assert (=> b!534496 (= res!329855 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10429))))

(declare-fun b!534497 () Bool)

(declare-fun res!329853 () Bool)

(assert (=> b!534497 (=> (not res!329853) (not e!310679))))

(assert (=> b!534497 (= res!329853 (validKeyInArray!0 k!1998))))

(declare-fun b!534498 () Bool)

(declare-fun res!329851 () Bool)

(assert (=> b!534498 (=> (not res!329851) (not e!310680))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33850 (_ BitVec 32)) Bool)

(assert (=> b!534498 (= res!329851 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!534499 () Bool)

(declare-fun res!329854 () Bool)

(assert (=> b!534499 (=> (not res!329854) (not e!310679))))

(assert (=> b!534499 (= res!329854 (and (= (size!16624 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16624 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16624 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!534500 () Bool)

(declare-fun res!329847 () Bool)

(assert (=> b!534500 (=> (not res!329847) (not e!310680))))

(assert (=> b!534500 (= res!329847 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16260 a!3154) j!147) a!3154 mask!3216) (Intermediate!4725 false resIndex!32 resX!32)))))

(assert (= (and start!48682 res!329852) b!534499))

(assert (= (and b!534499 res!329854) b!534495))

(assert (= (and b!534495 res!329846) b!534497))

(assert (= (and b!534497 res!329853) b!534491))

(assert (= (and b!534491 res!329850) b!534492))

(assert (= (and b!534492 res!329848) b!534498))

(assert (= (and b!534498 res!329851) b!534496))

(assert (= (and b!534496 res!329855) b!534494))

(assert (= (and b!534494 res!329849) b!534500))

(assert (= (and b!534500 res!329847) b!534493))

(declare-fun m!514213 () Bool)

(assert (=> b!534494 m!514213))

(declare-fun m!514215 () Bool)

(assert (=> b!534494 m!514215))

(declare-fun m!514217 () Bool)

(assert (=> b!534492 m!514217))

(assert (=> b!534493 m!514215))

(assert (=> b!534493 m!514215))

(declare-fun m!514219 () Bool)

(assert (=> b!534493 m!514219))

(assert (=> b!534493 m!514219))

(assert (=> b!534493 m!514215))

(declare-fun m!514221 () Bool)

(assert (=> b!534493 m!514221))

(declare-fun m!514223 () Bool)

(assert (=> b!534497 m!514223))

(declare-fun m!514225 () Bool)

(assert (=> start!48682 m!514225))

(declare-fun m!514227 () Bool)

(assert (=> start!48682 m!514227))

(declare-fun m!514229 () Bool)

(assert (=> b!534496 m!514229))

(assert (=> b!534500 m!514215))

(assert (=> b!534500 m!514215))

(declare-fun m!514231 () Bool)

(assert (=> b!534500 m!514231))

(declare-fun m!514233 () Bool)

(assert (=> b!534491 m!514233))

(declare-fun m!514235 () Bool)

(assert (=> b!534498 m!514235))

(assert (=> b!534495 m!514215))

(assert (=> b!534495 m!514215))

(declare-fun m!514237 () Bool)

(assert (=> b!534495 m!514237))

(push 1)

