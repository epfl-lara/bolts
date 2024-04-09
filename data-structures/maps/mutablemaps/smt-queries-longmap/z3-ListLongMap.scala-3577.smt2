; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!49212 () Bool)

(assert start!49212)

(declare-fun b!541542 () Bool)

(declare-fun res!336424 () Bool)

(declare-fun e!313542 () Bool)

(assert (=> b!541542 (=> (not res!336424) (not e!313542))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!34227 0))(
  ( (array!34228 (arr!16444 (Array (_ BitVec 32) (_ BitVec 64))) (size!16808 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34227)

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!541542 (= res!336424 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16808 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16808 a!3154)) (= (select (arr!16444 a!3154) resIndex!32) (select (arr!16444 a!3154) j!147))))))

(declare-fun b!541543 () Bool)

(declare-fun res!336427 () Bool)

(assert (=> b!541543 (=> (not res!336427) (not e!313542))))

(declare-datatypes ((List!10616 0))(
  ( (Nil!10613) (Cons!10612 (h!11564 (_ BitVec 64)) (t!16852 List!10616)) )
))
(declare-fun arrayNoDuplicates!0 (array!34227 (_ BitVec 32) List!10616) Bool)

(assert (=> b!541543 (= res!336427 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10613))))

(declare-fun b!541544 () Bool)

(declare-fun e!313543 () Bool)

(assert (=> b!541544 (= e!313543 e!313542)))

(declare-fun res!336422 () Bool)

(assert (=> b!541544 (=> (not res!336422) (not e!313542))))

(declare-datatypes ((SeekEntryResult!4909 0))(
  ( (MissingZero!4909 (index!21860 (_ BitVec 32))) (Found!4909 (index!21861 (_ BitVec 32))) (Intermediate!4909 (undefined!5721 Bool) (index!21862 (_ BitVec 32)) (x!50801 (_ BitVec 32))) (Undefined!4909) (MissingVacant!4909 (index!21863 (_ BitVec 32))) )
))
(declare-fun lt!247684 () SeekEntryResult!4909)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!541544 (= res!336422 (or (= lt!247684 (MissingZero!4909 i!1153)) (= lt!247684 (MissingVacant!4909 i!1153))))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34227 (_ BitVec 32)) SeekEntryResult!4909)

(assert (=> b!541544 (= lt!247684 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun b!541545 () Bool)

(declare-fun res!336426 () Bool)

(assert (=> b!541545 (=> (not res!336426) (not e!313542))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34227 (_ BitVec 32)) Bool)

(assert (=> b!541545 (= res!336426 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!541546 () Bool)

(declare-fun res!336421 () Bool)

(assert (=> b!541546 (=> (not res!336421) (not e!313543))))

(declare-fun arrayContainsKey!0 (array!34227 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!541546 (= res!336421 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!541547 () Bool)

(declare-fun res!336420 () Bool)

(assert (=> b!541547 (=> (not res!336420) (not e!313543))))

(assert (=> b!541547 (= res!336420 (and (= (size!16808 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16808 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16808 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!541548 () Bool)

(declare-fun res!336425 () Bool)

(assert (=> b!541548 (=> (not res!336425) (not e!313543))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!541548 (= res!336425 (validKeyInArray!0 (select (arr!16444 a!3154) j!147)))))

(declare-fun b!541549 () Bool)

(declare-fun res!336419 () Bool)

(assert (=> b!541549 (=> (not res!336419) (not e!313543))))

(assert (=> b!541549 (= res!336419 (validKeyInArray!0 k0!1998))))

(declare-fun b!541550 () Bool)

(assert (=> b!541550 (= e!313542 false)))

(declare-fun lt!247685 () SeekEntryResult!4909)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34227 (_ BitVec 32)) SeekEntryResult!4909)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!541550 (= lt!247685 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16444 a!3154) j!147) mask!3216) (select (arr!16444 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!541541 () Bool)

(declare-fun res!336428 () Bool)

(assert (=> b!541541 (=> (not res!336428) (not e!313542))))

(assert (=> b!541541 (= res!336428 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16444 a!3154) j!147) a!3154 mask!3216) (Intermediate!4909 false resIndex!32 resX!32)))))

(declare-fun res!336423 () Bool)

(assert (=> start!49212 (=> (not res!336423) (not e!313543))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49212 (= res!336423 (validMask!0 mask!3216))))

(assert (=> start!49212 e!313543))

(assert (=> start!49212 true))

(declare-fun array_inv!12218 (array!34227) Bool)

(assert (=> start!49212 (array_inv!12218 a!3154)))

(assert (= (and start!49212 res!336423) b!541547))

(assert (= (and b!541547 res!336420) b!541548))

(assert (= (and b!541548 res!336425) b!541549))

(assert (= (and b!541549 res!336419) b!541546))

(assert (= (and b!541546 res!336421) b!541544))

(assert (= (and b!541544 res!336422) b!541545))

(assert (= (and b!541545 res!336426) b!541543))

(assert (= (and b!541543 res!336427) b!541542))

(assert (= (and b!541542 res!336424) b!541541))

(assert (= (and b!541541 res!336428) b!541550))

(declare-fun m!520023 () Bool)

(assert (=> b!541550 m!520023))

(assert (=> b!541550 m!520023))

(declare-fun m!520025 () Bool)

(assert (=> b!541550 m!520025))

(assert (=> b!541550 m!520025))

(assert (=> b!541550 m!520023))

(declare-fun m!520027 () Bool)

(assert (=> b!541550 m!520027))

(declare-fun m!520029 () Bool)

(assert (=> b!541545 m!520029))

(declare-fun m!520031 () Bool)

(assert (=> start!49212 m!520031))

(declare-fun m!520033 () Bool)

(assert (=> start!49212 m!520033))

(assert (=> b!541548 m!520023))

(assert (=> b!541548 m!520023))

(declare-fun m!520035 () Bool)

(assert (=> b!541548 m!520035))

(declare-fun m!520037 () Bool)

(assert (=> b!541542 m!520037))

(assert (=> b!541542 m!520023))

(assert (=> b!541541 m!520023))

(assert (=> b!541541 m!520023))

(declare-fun m!520039 () Bool)

(assert (=> b!541541 m!520039))

(declare-fun m!520041 () Bool)

(assert (=> b!541546 m!520041))

(declare-fun m!520043 () Bool)

(assert (=> b!541549 m!520043))

(declare-fun m!520045 () Bool)

(assert (=> b!541543 m!520045))

(declare-fun m!520047 () Bool)

(assert (=> b!541544 m!520047))

(check-sat (not b!541541) (not b!541544) (not b!541550) (not b!541548) (not start!49212) (not b!541546) (not b!541549) (not b!541543) (not b!541545))
(check-sat)
