; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48588 () Bool)

(assert start!48588)

(declare-fun b!533099 () Bool)

(declare-fun e!310257 () Bool)

(declare-fun e!310256 () Bool)

(assert (=> b!533099 (= e!310257 e!310256)))

(declare-fun res!328461 () Bool)

(assert (=> b!533099 (=> (not res!328461) (not e!310256))))

(declare-datatypes ((SeekEntryResult!4678 0))(
  ( (MissingZero!4678 (index!20936 (_ BitVec 32))) (Found!4678 (index!20937 (_ BitVec 32))) (Intermediate!4678 (undefined!5490 Bool) (index!20938 (_ BitVec 32)) (x!49936 (_ BitVec 32))) (Undefined!4678) (MissingVacant!4678 (index!20939 (_ BitVec 32))) )
))
(declare-fun lt!245384 () SeekEntryResult!4678)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!533099 (= res!328461 (or (= lt!245384 (MissingZero!4678 i!1153)) (= lt!245384 (MissingVacant!4678 i!1153))))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun k0!1998 () (_ BitVec 64))

(declare-datatypes ((array!33756 0))(
  ( (array!33757 (arr!16213 (Array (_ BitVec 32) (_ BitVec 64))) (size!16577 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33756)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33756 (_ BitVec 32)) SeekEntryResult!4678)

(assert (=> b!533099 (= lt!245384 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun res!328458 () Bool)

(assert (=> start!48588 (=> (not res!328458) (not e!310257))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48588 (= res!328458 (validMask!0 mask!3216))))

(assert (=> start!48588 e!310257))

(assert (=> start!48588 true))

(declare-fun array_inv!11987 (array!33756) Bool)

(assert (=> start!48588 (array_inv!11987 a!3154)))

(declare-fun b!533100 () Bool)

(declare-fun res!328457 () Bool)

(assert (=> b!533100 (=> (not res!328457) (not e!310257))))

(declare-fun j!147 () (_ BitVec 32))

(assert (=> b!533100 (= res!328457 (and (= (size!16577 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16577 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16577 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!533101 () Bool)

(declare-fun res!328456 () Bool)

(assert (=> b!533101 (=> (not res!328456) (not e!310257))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!533101 (= res!328456 (validKeyInArray!0 (select (arr!16213 a!3154) j!147)))))

(declare-fun b!533102 () Bool)

(declare-fun res!328455 () Bool)

(assert (=> b!533102 (=> (not res!328455) (not e!310257))))

(declare-fun arrayContainsKey!0 (array!33756 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!533102 (= res!328455 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!533103 () Bool)

(declare-fun res!328459 () Bool)

(assert (=> b!533103 (=> (not res!328459) (not e!310256))))

(declare-datatypes ((List!10385 0))(
  ( (Nil!10382) (Cons!10381 (h!11324 (_ BitVec 64)) (t!16621 List!10385)) )
))
(declare-fun arrayNoDuplicates!0 (array!33756 (_ BitVec 32) List!10385) Bool)

(assert (=> b!533103 (= res!328459 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10382))))

(declare-fun b!533104 () Bool)

(declare-fun res!328463 () Bool)

(assert (=> b!533104 (=> (not res!328463) (not e!310256))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33756 (_ BitVec 32)) SeekEntryResult!4678)

(assert (=> b!533104 (= res!328463 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16213 a!3154) j!147) a!3154 mask!3216) (Intermediate!4678 false resIndex!32 resX!32)))))

(declare-fun b!533105 () Bool)

(declare-fun res!328460 () Bool)

(assert (=> b!533105 (=> (not res!328460) (not e!310257))))

(assert (=> b!533105 (= res!328460 (validKeyInArray!0 k0!1998))))

(declare-fun b!533106 () Bool)

(assert (=> b!533106 (= e!310256 (bvslt mask!3216 #b00000000000000000000000000000000))))

(declare-fun b!533107 () Bool)

(declare-fun res!328462 () Bool)

(assert (=> b!533107 (=> (not res!328462) (not e!310256))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33756 (_ BitVec 32)) Bool)

(assert (=> b!533107 (= res!328462 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!533108 () Bool)

(declare-fun res!328454 () Bool)

(assert (=> b!533108 (=> (not res!328454) (not e!310256))))

(assert (=> b!533108 (= res!328454 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16577 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16577 a!3154)) (= (select (arr!16213 a!3154) resIndex!32) (select (arr!16213 a!3154) j!147))))))

(assert (= (and start!48588 res!328458) b!533100))

(assert (= (and b!533100 res!328457) b!533101))

(assert (= (and b!533101 res!328456) b!533105))

(assert (= (and b!533105 res!328460) b!533102))

(assert (= (and b!533102 res!328455) b!533099))

(assert (= (and b!533099 res!328461) b!533107))

(assert (= (and b!533107 res!328462) b!533103))

(assert (= (and b!533103 res!328459) b!533108))

(assert (= (and b!533108 res!328454) b!533104))

(assert (= (and b!533104 res!328463) b!533106))

(declare-fun m!513047 () Bool)

(assert (=> b!533108 m!513047))

(declare-fun m!513049 () Bool)

(assert (=> b!533108 m!513049))

(declare-fun m!513051 () Bool)

(assert (=> b!533103 m!513051))

(declare-fun m!513053 () Bool)

(assert (=> b!533099 m!513053))

(declare-fun m!513055 () Bool)

(assert (=> b!533105 m!513055))

(declare-fun m!513057 () Bool)

(assert (=> b!533107 m!513057))

(assert (=> b!533101 m!513049))

(assert (=> b!533101 m!513049))

(declare-fun m!513059 () Bool)

(assert (=> b!533101 m!513059))

(assert (=> b!533104 m!513049))

(assert (=> b!533104 m!513049))

(declare-fun m!513061 () Bool)

(assert (=> b!533104 m!513061))

(declare-fun m!513063 () Bool)

(assert (=> start!48588 m!513063))

(declare-fun m!513065 () Bool)

(assert (=> start!48588 m!513065))

(declare-fun m!513067 () Bool)

(assert (=> b!533102 m!513067))

(check-sat (not b!533099) (not b!533103) (not start!48588) (not b!533102) (not b!533105) (not b!533101) (not b!533107) (not b!533104))
(check-sat)
