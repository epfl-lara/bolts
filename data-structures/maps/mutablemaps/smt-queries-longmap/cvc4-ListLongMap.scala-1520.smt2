; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28664 () Bool)

(assert start!28664)

(declare-fun b!292867 () Bool)

(declare-fun res!153963 () Bool)

(declare-fun e!185241 () Bool)

(assert (=> b!292867 (=> (not res!153963) (not e!185241))))

(declare-datatypes ((array!14832 0))(
  ( (array!14833 (arr!7038 (Array (_ BitVec 32) (_ BitVec 64))) (size!7390 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14832)

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14832 (_ BitVec 32)) Bool)

(assert (=> b!292867 (= res!153963 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!292868 () Bool)

(declare-fun res!153961 () Bool)

(declare-fun e!185240 () Bool)

(assert (=> b!292868 (=> (not res!153961) (not e!185240))))

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!292868 (= res!153961 (and (= (size!7390 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7390 a!3312))))))

(declare-fun b!292869 () Bool)

(assert (=> b!292869 (= e!185240 e!185241)))

(declare-fun res!153966 () Bool)

(assert (=> b!292869 (=> (not res!153966) (not e!185241))))

(declare-datatypes ((SeekEntryResult!2198 0))(
  ( (MissingZero!2198 (index!10962 (_ BitVec 32))) (Found!2198 (index!10963 (_ BitVec 32))) (Intermediate!2198 (undefined!3010 Bool) (index!10964 (_ BitVec 32)) (x!29109 (_ BitVec 32))) (Undefined!2198) (MissingVacant!2198 (index!10965 (_ BitVec 32))) )
))
(declare-fun lt!145180 () SeekEntryResult!2198)

(assert (=> b!292869 (= res!153966 (or (= lt!145180 (MissingZero!2198 i!1256)) (= lt!145180 (MissingVacant!2198 i!1256))))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14832 (_ BitVec 32)) SeekEntryResult!2198)

(assert (=> b!292869 (= lt!145180 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!292870 () Bool)

(declare-fun res!153962 () Bool)

(assert (=> b!292870 (=> (not res!153962) (not e!185240))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!292870 (= res!153962 (validKeyInArray!0 k!2524))))

(declare-fun b!292871 () Bool)

(assert (=> b!292871 (= e!185241 false)))

(declare-fun lt!145178 () (_ BitVec 32))

(declare-fun lt!145181 () SeekEntryResult!2198)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14832 (_ BitVec 32)) SeekEntryResult!2198)

(assert (=> b!292871 (= lt!145181 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!145178 k!2524 (array!14833 (store (arr!7038 a!3312) i!1256 k!2524) (size!7390 a!3312)) mask!3809))))

(declare-fun lt!145179 () SeekEntryResult!2198)

(assert (=> b!292871 (= lt!145179 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!145178 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!292871 (= lt!145178 (toIndex!0 k!2524 mask!3809))))

(declare-fun res!153964 () Bool)

(assert (=> start!28664 (=> (not res!153964) (not e!185240))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28664 (= res!153964 (validMask!0 mask!3809))))

(assert (=> start!28664 e!185240))

(assert (=> start!28664 true))

(declare-fun array_inv!4992 (array!14832) Bool)

(assert (=> start!28664 (array_inv!4992 a!3312)))

(declare-fun b!292872 () Bool)

(declare-fun res!153965 () Bool)

(assert (=> b!292872 (=> (not res!153965) (not e!185240))))

(declare-fun arrayContainsKey!0 (array!14832 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!292872 (= res!153965 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(assert (= (and start!28664 res!153964) b!292868))

(assert (= (and b!292868 res!153961) b!292870))

(assert (= (and b!292870 res!153962) b!292872))

(assert (= (and b!292872 res!153965) b!292869))

(assert (= (and b!292869 res!153966) b!292867))

(assert (= (and b!292867 res!153963) b!292871))

(declare-fun m!306695 () Bool)

(assert (=> b!292872 m!306695))

(declare-fun m!306697 () Bool)

(assert (=> b!292869 m!306697))

(declare-fun m!306699 () Bool)

(assert (=> b!292871 m!306699))

(declare-fun m!306701 () Bool)

(assert (=> b!292871 m!306701))

(declare-fun m!306703 () Bool)

(assert (=> b!292871 m!306703))

(declare-fun m!306705 () Bool)

(assert (=> b!292871 m!306705))

(declare-fun m!306707 () Bool)

(assert (=> start!28664 m!306707))

(declare-fun m!306709 () Bool)

(assert (=> start!28664 m!306709))

(declare-fun m!306711 () Bool)

(assert (=> b!292870 m!306711))

(declare-fun m!306713 () Bool)

(assert (=> b!292867 m!306713))

(push 1)

(assert (not b!292871))

(assert (not b!292869))

(assert (not start!28664))

