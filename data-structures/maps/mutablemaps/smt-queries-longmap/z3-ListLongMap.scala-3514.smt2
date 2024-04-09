; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48672 () Bool)

(assert start!48672)

(declare-fun b!534341 () Bool)

(declare-fun res!329696 () Bool)

(declare-fun e!310635 () Bool)

(assert (=> b!534341 (=> (not res!329696) (not e!310635))))

(declare-datatypes ((array!33840 0))(
  ( (array!33841 (arr!16255 (Array (_ BitVec 32) (_ BitVec 64))) (size!16619 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33840)

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33840 (_ BitVec 32)) Bool)

(assert (=> b!534341 (= res!329696 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!534342 () Bool)

(declare-fun res!329700 () Bool)

(declare-fun e!310634 () Bool)

(assert (=> b!534342 (=> (not res!329700) (not e!310634))))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!534342 (= res!329700 (validKeyInArray!0 (select (arr!16255 a!3154) j!147)))))

(declare-fun b!534343 () Bool)

(declare-fun res!329702 () Bool)

(assert (=> b!534343 (=> (not res!329702) (not e!310634))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!534343 (= res!329702 (and (= (size!16619 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16619 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16619 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!534344 () Bool)

(assert (=> b!534344 (= e!310635 false)))

(declare-datatypes ((SeekEntryResult!4720 0))(
  ( (MissingZero!4720 (index!21104 (_ BitVec 32))) (Found!4720 (index!21105 (_ BitVec 32))) (Intermediate!4720 (undefined!5532 Bool) (index!21106 (_ BitVec 32)) (x!50090 (_ BitVec 32))) (Undefined!4720) (MissingVacant!4720 (index!21107 (_ BitVec 32))) )
))
(declare-fun lt!245615 () SeekEntryResult!4720)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33840 (_ BitVec 32)) SeekEntryResult!4720)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!534344 (= lt!245615 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16255 a!3154) j!147) mask!3216) (select (arr!16255 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!534345 () Bool)

(declare-fun res!329704 () Bool)

(assert (=> b!534345 (=> (not res!329704) (not e!310635))))

(declare-datatypes ((List!10427 0))(
  ( (Nil!10424) (Cons!10423 (h!11366 (_ BitVec 64)) (t!16663 List!10427)) )
))
(declare-fun arrayNoDuplicates!0 (array!33840 (_ BitVec 32) List!10427) Bool)

(assert (=> b!534345 (= res!329704 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10424))))

(declare-fun res!329698 () Bool)

(assert (=> start!48672 (=> (not res!329698) (not e!310634))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48672 (= res!329698 (validMask!0 mask!3216))))

(assert (=> start!48672 e!310634))

(assert (=> start!48672 true))

(declare-fun array_inv!12029 (array!33840) Bool)

(assert (=> start!48672 (array_inv!12029 a!3154)))

(declare-fun b!534346 () Bool)

(declare-fun res!329703 () Bool)

(assert (=> b!534346 (=> (not res!329703) (not e!310634))))

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33840 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!534346 (= res!329703 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!534347 () Bool)

(declare-fun res!329701 () Bool)

(assert (=> b!534347 (=> (not res!329701) (not e!310635))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!534347 (= res!329701 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16619 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16619 a!3154)) (= (select (arr!16255 a!3154) resIndex!32) (select (arr!16255 a!3154) j!147))))))

(declare-fun b!534348 () Bool)

(assert (=> b!534348 (= e!310634 e!310635)))

(declare-fun res!329699 () Bool)

(assert (=> b!534348 (=> (not res!329699) (not e!310635))))

(declare-fun lt!245614 () SeekEntryResult!4720)

(assert (=> b!534348 (= res!329699 (or (= lt!245614 (MissingZero!4720 i!1153)) (= lt!245614 (MissingVacant!4720 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33840 (_ BitVec 32)) SeekEntryResult!4720)

(assert (=> b!534348 (= lt!245614 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun b!534349 () Bool)

(declare-fun res!329697 () Bool)

(assert (=> b!534349 (=> (not res!329697) (not e!310634))))

(assert (=> b!534349 (= res!329697 (validKeyInArray!0 k0!1998))))

(declare-fun b!534350 () Bool)

(declare-fun res!329705 () Bool)

(assert (=> b!534350 (=> (not res!329705) (not e!310635))))

(assert (=> b!534350 (= res!329705 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16255 a!3154) j!147) a!3154 mask!3216) (Intermediate!4720 false resIndex!32 resX!32)))))

(assert (= (and start!48672 res!329698) b!534343))

(assert (= (and b!534343 res!329702) b!534342))

(assert (= (and b!534342 res!329700) b!534349))

(assert (= (and b!534349 res!329697) b!534346))

(assert (= (and b!534346 res!329703) b!534348))

(assert (= (and b!534348 res!329699) b!534341))

(assert (= (and b!534341 res!329696) b!534345))

(assert (= (and b!534345 res!329704) b!534347))

(assert (= (and b!534347 res!329701) b!534350))

(assert (= (and b!534350 res!329705) b!534344))

(declare-fun m!514083 () Bool)

(assert (=> b!534346 m!514083))

(declare-fun m!514085 () Bool)

(assert (=> b!534347 m!514085))

(declare-fun m!514087 () Bool)

(assert (=> b!534347 m!514087))

(declare-fun m!514089 () Bool)

(assert (=> b!534349 m!514089))

(assert (=> b!534350 m!514087))

(assert (=> b!534350 m!514087))

(declare-fun m!514091 () Bool)

(assert (=> b!534350 m!514091))

(declare-fun m!514093 () Bool)

(assert (=> b!534348 m!514093))

(declare-fun m!514095 () Bool)

(assert (=> start!48672 m!514095))

(declare-fun m!514097 () Bool)

(assert (=> start!48672 m!514097))

(assert (=> b!534342 m!514087))

(assert (=> b!534342 m!514087))

(declare-fun m!514099 () Bool)

(assert (=> b!534342 m!514099))

(assert (=> b!534344 m!514087))

(assert (=> b!534344 m!514087))

(declare-fun m!514101 () Bool)

(assert (=> b!534344 m!514101))

(assert (=> b!534344 m!514101))

(assert (=> b!534344 m!514087))

(declare-fun m!514103 () Bool)

(assert (=> b!534344 m!514103))

(declare-fun m!514105 () Bool)

(assert (=> b!534341 m!514105))

(declare-fun m!514107 () Bool)

(assert (=> b!534345 m!514107))

(check-sat (not b!534341) (not b!534348) (not b!534344) (not b!534342) (not b!534349) (not start!48672) (not b!534345) (not b!534350) (not b!534346))
(check-sat)
