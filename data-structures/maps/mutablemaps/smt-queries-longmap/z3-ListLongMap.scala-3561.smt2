; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48954 () Bool)

(assert start!48954)

(declare-fun b!539291 () Bool)

(declare-fun res!334653 () Bool)

(declare-fun e!312578 () Bool)

(assert (=> b!539291 (=> (not res!334653) (not e!312578))))

(declare-datatypes ((array!34122 0))(
  ( (array!34123 (arr!16396 (Array (_ BitVec 32) (_ BitVec 64))) (size!16760 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34122)

(declare-datatypes ((List!10568 0))(
  ( (Nil!10565) (Cons!10564 (h!11507 (_ BitVec 64)) (t!16804 List!10568)) )
))
(declare-fun arrayNoDuplicates!0 (array!34122 (_ BitVec 32) List!10568) Bool)

(assert (=> b!539291 (= res!334653 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10565))))

(declare-fun b!539293 () Bool)

(declare-fun res!334646 () Bool)

(declare-fun e!312579 () Bool)

(assert (=> b!539293 (=> (not res!334646) (not e!312579))))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!539293 (= res!334646 (validKeyInArray!0 (select (arr!16396 a!3154) j!147)))))

(declare-fun b!539294 () Bool)

(declare-fun res!334651 () Bool)

(assert (=> b!539294 (=> (not res!334651) (not e!312578))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4861 0))(
  ( (MissingZero!4861 (index!21668 (_ BitVec 32))) (Found!4861 (index!21669 (_ BitVec 32))) (Intermediate!4861 (undefined!5673 Bool) (index!21670 (_ BitVec 32)) (x!50607 (_ BitVec 32))) (Undefined!4861) (MissingVacant!4861 (index!21671 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34122 (_ BitVec 32)) SeekEntryResult!4861)

(assert (=> b!539294 (= res!334651 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16396 a!3154) j!147) a!3154 mask!3216) (Intermediate!4861 false resIndex!32 resX!32)))))

(declare-fun b!539295 () Bool)

(declare-fun res!334654 () Bool)

(assert (=> b!539295 (=> (not res!334654) (not e!312579))))

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34122 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!539295 (= res!334654 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!539296 () Bool)

(assert (=> b!539296 (= e!312578 false)))

(declare-fun lt!247108 () SeekEntryResult!4861)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!539296 (= lt!247108 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16396 a!3154) j!147) mask!3216) (select (arr!16396 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!539292 () Bool)

(declare-fun res!334650 () Bool)

(assert (=> b!539292 (=> (not res!334650) (not e!312579))))

(assert (=> b!539292 (= res!334650 (validKeyInArray!0 k0!1998))))

(declare-fun res!334655 () Bool)

(assert (=> start!48954 (=> (not res!334655) (not e!312579))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48954 (= res!334655 (validMask!0 mask!3216))))

(assert (=> start!48954 e!312579))

(assert (=> start!48954 true))

(declare-fun array_inv!12170 (array!34122) Bool)

(assert (=> start!48954 (array_inv!12170 a!3154)))

(declare-fun b!539297 () Bool)

(declare-fun res!334649 () Bool)

(assert (=> b!539297 (=> (not res!334649) (not e!312578))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34122 (_ BitVec 32)) Bool)

(assert (=> b!539297 (= res!334649 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!539298 () Bool)

(declare-fun res!334652 () Bool)

(assert (=> b!539298 (=> (not res!334652) (not e!312579))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!539298 (= res!334652 (and (= (size!16760 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16760 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16760 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!539299 () Bool)

(assert (=> b!539299 (= e!312579 e!312578)))

(declare-fun res!334648 () Bool)

(assert (=> b!539299 (=> (not res!334648) (not e!312578))))

(declare-fun lt!247109 () SeekEntryResult!4861)

(assert (=> b!539299 (= res!334648 (or (= lt!247109 (MissingZero!4861 i!1153)) (= lt!247109 (MissingVacant!4861 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34122 (_ BitVec 32)) SeekEntryResult!4861)

(assert (=> b!539299 (= lt!247109 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun b!539300 () Bool)

(declare-fun res!334647 () Bool)

(assert (=> b!539300 (=> (not res!334647) (not e!312578))))

(assert (=> b!539300 (= res!334647 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16760 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16760 a!3154)) (= (select (arr!16396 a!3154) resIndex!32) (select (arr!16396 a!3154) j!147))))))

(assert (= (and start!48954 res!334655) b!539298))

(assert (= (and b!539298 res!334652) b!539293))

(assert (= (and b!539293 res!334646) b!539292))

(assert (= (and b!539292 res!334650) b!539295))

(assert (= (and b!539295 res!334654) b!539299))

(assert (= (and b!539299 res!334648) b!539297))

(assert (= (and b!539297 res!334649) b!539291))

(assert (= (and b!539291 res!334653) b!539300))

(assert (= (and b!539300 res!334647) b!539294))

(assert (= (and b!539294 res!334651) b!539296))

(declare-fun m!518343 () Bool)

(assert (=> b!539296 m!518343))

(assert (=> b!539296 m!518343))

(declare-fun m!518345 () Bool)

(assert (=> b!539296 m!518345))

(assert (=> b!539296 m!518345))

(assert (=> b!539296 m!518343))

(declare-fun m!518347 () Bool)

(assert (=> b!539296 m!518347))

(declare-fun m!518349 () Bool)

(assert (=> start!48954 m!518349))

(declare-fun m!518351 () Bool)

(assert (=> start!48954 m!518351))

(declare-fun m!518353 () Bool)

(assert (=> b!539297 m!518353))

(declare-fun m!518355 () Bool)

(assert (=> b!539300 m!518355))

(assert (=> b!539300 m!518343))

(declare-fun m!518357 () Bool)

(assert (=> b!539299 m!518357))

(declare-fun m!518359 () Bool)

(assert (=> b!539292 m!518359))

(assert (=> b!539293 m!518343))

(assert (=> b!539293 m!518343))

(declare-fun m!518361 () Bool)

(assert (=> b!539293 m!518361))

(declare-fun m!518363 () Bool)

(assert (=> b!539291 m!518363))

(assert (=> b!539294 m!518343))

(assert (=> b!539294 m!518343))

(declare-fun m!518365 () Bool)

(assert (=> b!539294 m!518365))

(declare-fun m!518367 () Bool)

(assert (=> b!539295 m!518367))

(check-sat (not b!539296) (not b!539294) (not b!539291) (not b!539295) (not start!48954) (not b!539299) (not b!539297) (not b!539292) (not b!539293))
(check-sat)
