; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!49344 () Bool)

(assert start!49344)

(declare-fun b!543207 () Bool)

(declare-fun res!337909 () Bool)

(declare-fun e!314181 () Bool)

(assert (=> b!543207 (=> (not res!337909) (not e!314181))))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!34308 0))(
  ( (array!34309 (arr!16483 (Array (_ BitVec 32) (_ BitVec 64))) (size!16847 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34308)

(declare-fun mask!3216 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4948 0))(
  ( (MissingZero!4948 (index!22016 (_ BitVec 32))) (Found!4948 (index!22017 (_ BitVec 32))) (Intermediate!4948 (undefined!5760 Bool) (index!22018 (_ BitVec 32)) (x!50950 (_ BitVec 32))) (Undefined!4948) (MissingVacant!4948 (index!22019 (_ BitVec 32))) )
))
(declare-fun lt!248126 () SeekEntryResult!4948)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34308 (_ BitVec 32)) SeekEntryResult!4948)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!543207 (= res!337909 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16483 a!3154) j!147) mask!3216) (select (arr!16483 a!3154) j!147) a!3154 mask!3216) lt!248126))))

(declare-fun b!543208 () Bool)

(declare-fun res!337915 () Bool)

(declare-fun e!314182 () Bool)

(assert (=> b!543208 (=> (not res!337915) (not e!314182))))

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!543208 (= res!337915 (validKeyInArray!0 k0!1998))))

(declare-fun b!543209 () Bool)

(declare-fun res!337919 () Bool)

(declare-fun e!314179 () Bool)

(assert (=> b!543209 (=> (not res!337919) (not e!314179))))

(declare-datatypes ((List!10655 0))(
  ( (Nil!10652) (Cons!10651 (h!11606 (_ BitVec 64)) (t!16891 List!10655)) )
))
(declare-fun arrayNoDuplicates!0 (array!34308 (_ BitVec 32) List!10655) Bool)

(assert (=> b!543209 (= res!337919 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10652))))

(declare-fun res!337917 () Bool)

(assert (=> start!49344 (=> (not res!337917) (not e!314182))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49344 (= res!337917 (validMask!0 mask!3216))))

(assert (=> start!49344 e!314182))

(assert (=> start!49344 true))

(declare-fun array_inv!12257 (array!34308) Bool)

(assert (=> start!49344 (array_inv!12257 a!3154)))

(declare-fun b!543210 () Bool)

(declare-fun res!337918 () Bool)

(assert (=> b!543210 (=> (not res!337918) (not e!314182))))

(declare-fun arrayContainsKey!0 (array!34308 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!543210 (= res!337918 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!543211 () Bool)

(assert (=> b!543211 (= e!314179 e!314181)))

(declare-fun res!337912 () Bool)

(assert (=> b!543211 (=> (not res!337912) (not e!314181))))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!543211 (= res!337912 (= lt!248126 (Intermediate!4948 false resIndex!32 resX!32)))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(assert (=> b!543211 (= lt!248126 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16483 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!543212 () Bool)

(declare-fun res!337910 () Bool)

(assert (=> b!543212 (=> (not res!337910) (not e!314182))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!543212 (= res!337910 (and (= (size!16847 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16847 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16847 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!543213 () Bool)

(assert (=> b!543213 (= e!314181 false)))

(declare-fun lt!248125 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!543213 (= lt!248125 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!543214 () Bool)

(declare-fun res!337908 () Bool)

(assert (=> b!543214 (=> (not res!337908) (not e!314179))))

(assert (=> b!543214 (= res!337908 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16847 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16847 a!3154)) (= (select (arr!16483 a!3154) resIndex!32) (select (arr!16483 a!3154) j!147))))))

(declare-fun b!543215 () Bool)

(declare-fun res!337914 () Bool)

(assert (=> b!543215 (=> (not res!337914) (not e!314181))))

(assert (=> b!543215 (= res!337914 (and (not (= (select (arr!16483 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16483 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16483 a!3154) index!1177) (select (arr!16483 a!3154) j!147)))))))

(declare-fun b!543216 () Bool)

(assert (=> b!543216 (= e!314182 e!314179)))

(declare-fun res!337911 () Bool)

(assert (=> b!543216 (=> (not res!337911) (not e!314179))))

(declare-fun lt!248124 () SeekEntryResult!4948)

(assert (=> b!543216 (= res!337911 (or (= lt!248124 (MissingZero!4948 i!1153)) (= lt!248124 (MissingVacant!4948 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34308 (_ BitVec 32)) SeekEntryResult!4948)

(assert (=> b!543216 (= lt!248124 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun b!543217 () Bool)

(declare-fun res!337913 () Bool)

(assert (=> b!543217 (=> (not res!337913) (not e!314182))))

(assert (=> b!543217 (= res!337913 (validKeyInArray!0 (select (arr!16483 a!3154) j!147)))))

(declare-fun b!543218 () Bool)

(declare-fun res!337916 () Bool)

(assert (=> b!543218 (=> (not res!337916) (not e!314179))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34308 (_ BitVec 32)) Bool)

(assert (=> b!543218 (= res!337916 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(assert (= (and start!49344 res!337917) b!543212))

(assert (= (and b!543212 res!337910) b!543217))

(assert (= (and b!543217 res!337913) b!543208))

(assert (= (and b!543208 res!337915) b!543210))

(assert (= (and b!543210 res!337918) b!543216))

(assert (= (and b!543216 res!337911) b!543218))

(assert (= (and b!543218 res!337916) b!543209))

(assert (= (and b!543209 res!337919) b!543214))

(assert (= (and b!543214 res!337908) b!543211))

(assert (= (and b!543211 res!337912) b!543207))

(assert (= (and b!543207 res!337909) b!543215))

(assert (= (and b!543215 res!337914) b!543213))

(declare-fun m!521341 () Bool)

(assert (=> b!543216 m!521341))

(declare-fun m!521343 () Bool)

(assert (=> b!543210 m!521343))

(declare-fun m!521345 () Bool)

(assert (=> b!543209 m!521345))

(declare-fun m!521347 () Bool)

(assert (=> b!543211 m!521347))

(assert (=> b!543211 m!521347))

(declare-fun m!521349 () Bool)

(assert (=> b!543211 m!521349))

(declare-fun m!521351 () Bool)

(assert (=> b!543208 m!521351))

(assert (=> b!543217 m!521347))

(assert (=> b!543217 m!521347))

(declare-fun m!521353 () Bool)

(assert (=> b!543217 m!521353))

(declare-fun m!521355 () Bool)

(assert (=> b!543213 m!521355))

(assert (=> b!543207 m!521347))

(assert (=> b!543207 m!521347))

(declare-fun m!521357 () Bool)

(assert (=> b!543207 m!521357))

(assert (=> b!543207 m!521357))

(assert (=> b!543207 m!521347))

(declare-fun m!521359 () Bool)

(assert (=> b!543207 m!521359))

(declare-fun m!521361 () Bool)

(assert (=> b!543214 m!521361))

(assert (=> b!543214 m!521347))

(declare-fun m!521363 () Bool)

(assert (=> b!543218 m!521363))

(declare-fun m!521365 () Bool)

(assert (=> b!543215 m!521365))

(assert (=> b!543215 m!521347))

(declare-fun m!521367 () Bool)

(assert (=> start!49344 m!521367))

(declare-fun m!521369 () Bool)

(assert (=> start!49344 m!521369))

(check-sat (not b!543207) (not b!543213) (not b!543209) (not b!543210) (not start!49344) (not b!543216) (not b!543208) (not b!543211) (not b!543218) (not b!543217))
(check-sat)
