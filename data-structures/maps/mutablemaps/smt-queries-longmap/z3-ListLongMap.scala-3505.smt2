; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48618 () Bool)

(assert start!48618)

(declare-fun b!533531 () Bool)

(declare-fun res!328895 () Bool)

(declare-fun e!310392 () Bool)

(assert (=> b!533531 (=> (not res!328895) (not e!310392))))

(declare-datatypes ((array!33786 0))(
  ( (array!33787 (arr!16228 (Array (_ BitVec 32) (_ BitVec 64))) (size!16592 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33786)

(declare-datatypes ((List!10400 0))(
  ( (Nil!10397) (Cons!10396 (h!11339 (_ BitVec 64)) (t!16636 List!10400)) )
))
(declare-fun arrayNoDuplicates!0 (array!33786 (_ BitVec 32) List!10400) Bool)

(assert (=> b!533531 (= res!328895 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10397))))

(declare-fun b!533533 () Bool)

(declare-fun res!328890 () Bool)

(assert (=> b!533533 (=> (not res!328890) (not e!310392))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33786 (_ BitVec 32)) Bool)

(assert (=> b!533533 (= res!328890 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!533534 () Bool)

(declare-fun e!310393 () Bool)

(assert (=> b!533534 (= e!310393 e!310392)))

(declare-fun res!328891 () Bool)

(assert (=> b!533534 (=> (not res!328891) (not e!310392))))

(declare-datatypes ((SeekEntryResult!4693 0))(
  ( (MissingZero!4693 (index!20996 (_ BitVec 32))) (Found!4693 (index!20997 (_ BitVec 32))) (Intermediate!4693 (undefined!5505 Bool) (index!20998 (_ BitVec 32)) (x!49991 (_ BitVec 32))) (Undefined!4693) (MissingVacant!4693 (index!20999 (_ BitVec 32))) )
))
(declare-fun lt!245453 () SeekEntryResult!4693)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!533534 (= res!328891 (or (= lt!245453 (MissingZero!4693 i!1153)) (= lt!245453 (MissingVacant!4693 i!1153))))))

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33786 (_ BitVec 32)) SeekEntryResult!4693)

(assert (=> b!533534 (= lt!245453 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun b!533535 () Bool)

(declare-fun res!328892 () Bool)

(assert (=> b!533535 (=> (not res!328892) (not e!310393))))

(declare-fun j!147 () (_ BitVec 32))

(assert (=> b!533535 (= res!328892 (and (= (size!16592 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16592 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16592 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!533536 () Bool)

(declare-fun res!328887 () Bool)

(assert (=> b!533536 (=> (not res!328887) (not e!310392))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33786 (_ BitVec 32)) SeekEntryResult!4693)

(assert (=> b!533536 (= res!328887 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16228 a!3154) j!147) a!3154 mask!3216) (Intermediate!4693 false resIndex!32 resX!32)))))

(declare-fun res!328888 () Bool)

(assert (=> start!48618 (=> (not res!328888) (not e!310393))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48618 (= res!328888 (validMask!0 mask!3216))))

(assert (=> start!48618 e!310393))

(assert (=> start!48618 true))

(declare-fun array_inv!12002 (array!33786) Bool)

(assert (=> start!48618 (array_inv!12002 a!3154)))

(declare-fun b!533532 () Bool)

(declare-fun res!328886 () Bool)

(assert (=> b!533532 (=> (not res!328886) (not e!310393))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!533532 (= res!328886 (validKeyInArray!0 k0!1998))))

(declare-fun b!533537 () Bool)

(declare-fun res!328889 () Bool)

(assert (=> b!533537 (=> (not res!328889) (not e!310393))))

(declare-fun arrayContainsKey!0 (array!33786 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!533537 (= res!328889 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!533538 () Bool)

(declare-fun res!328894 () Bool)

(assert (=> b!533538 (=> (not res!328894) (not e!310392))))

(assert (=> b!533538 (= res!328894 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16592 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16592 a!3154)) (= (select (arr!16228 a!3154) resIndex!32) (select (arr!16228 a!3154) j!147))))))

(declare-fun b!533539 () Bool)

(declare-fun res!328893 () Bool)

(assert (=> b!533539 (=> (not res!328893) (not e!310393))))

(assert (=> b!533539 (= res!328893 (validKeyInArray!0 (select (arr!16228 a!3154) j!147)))))

(declare-fun b!533540 () Bool)

(assert (=> b!533540 (= e!310392 false)))

(declare-fun lt!245452 () SeekEntryResult!4693)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!533540 (= lt!245452 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16228 a!3154) j!147) mask!3216) (select (arr!16228 a!3154) j!147) a!3154 mask!3216))))

(assert (= (and start!48618 res!328888) b!533535))

(assert (= (and b!533535 res!328892) b!533539))

(assert (= (and b!533539 res!328893) b!533532))

(assert (= (and b!533532 res!328886) b!533537))

(assert (= (and b!533537 res!328889) b!533534))

(assert (= (and b!533534 res!328891) b!533533))

(assert (= (and b!533533 res!328890) b!533531))

(assert (= (and b!533531 res!328895) b!533538))

(assert (= (and b!533538 res!328894) b!533536))

(assert (= (and b!533536 res!328887) b!533540))

(declare-fun m!513381 () Bool)

(assert (=> b!533536 m!513381))

(assert (=> b!533536 m!513381))

(declare-fun m!513383 () Bool)

(assert (=> b!533536 m!513383))

(assert (=> b!533539 m!513381))

(assert (=> b!533539 m!513381))

(declare-fun m!513385 () Bool)

(assert (=> b!533539 m!513385))

(declare-fun m!513387 () Bool)

(assert (=> b!533538 m!513387))

(assert (=> b!533538 m!513381))

(declare-fun m!513389 () Bool)

(assert (=> b!533531 m!513389))

(declare-fun m!513391 () Bool)

(assert (=> b!533533 m!513391))

(declare-fun m!513393 () Bool)

(assert (=> start!48618 m!513393))

(declare-fun m!513395 () Bool)

(assert (=> start!48618 m!513395))

(declare-fun m!513397 () Bool)

(assert (=> b!533532 m!513397))

(declare-fun m!513399 () Bool)

(assert (=> b!533534 m!513399))

(declare-fun m!513401 () Bool)

(assert (=> b!533537 m!513401))

(assert (=> b!533540 m!513381))

(assert (=> b!533540 m!513381))

(declare-fun m!513403 () Bool)

(assert (=> b!533540 m!513403))

(assert (=> b!533540 m!513403))

(assert (=> b!533540 m!513381))

(declare-fun m!513405 () Bool)

(assert (=> b!533540 m!513405))

(check-sat (not b!533534) (not b!533531) (not b!533539) (not start!48618) (not b!533537) (not b!533532) (not b!533540) (not b!533536) (not b!533533))
(check-sat)
