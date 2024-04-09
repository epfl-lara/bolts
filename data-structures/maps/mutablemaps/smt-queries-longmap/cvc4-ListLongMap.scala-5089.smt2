; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69116 () Bool)

(assert start!69116)

(declare-fun b!805772 () Bool)

(declare-fun res!550264 () Bool)

(declare-fun e!446253 () Bool)

(assert (=> b!805772 (=> (not res!550264) (not e!446253))))

(declare-datatypes ((array!43812 0))(
  ( (array!43813 (arr!20981 (Array (_ BitVec 32) (_ BitVec 64))) (size!21402 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43812)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43812 (_ BitVec 32)) Bool)

(assert (=> b!805772 (= res!550264 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!805773 () Bool)

(declare-fun res!550265 () Bool)

(assert (=> b!805773 (=> (not res!550265) (not e!446253))))

(declare-datatypes ((List!14997 0))(
  ( (Nil!14994) (Cons!14993 (h!16122 (_ BitVec 64)) (t!21320 List!14997)) )
))
(declare-fun arrayNoDuplicates!0 (array!43812 (_ BitVec 32) List!14997) Bool)

(assert (=> b!805773 (= res!550265 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14994))))

(declare-fun b!805774 () Bool)

(declare-fun res!550270 () Bool)

(declare-fun e!446252 () Bool)

(assert (=> b!805774 (=> (not res!550270) (not e!446252))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!805774 (= res!550270 (and (= (size!21402 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21402 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21402 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!805775 () Bool)

(declare-fun res!550273 () Bool)

(assert (=> b!805775 (=> (not res!550273) (not e!446252))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!805775 (= res!550273 (validKeyInArray!0 (select (arr!20981 a!3170) j!153)))))

(declare-fun b!805776 () Bool)

(declare-fun res!550272 () Bool)

(assert (=> b!805776 (=> (not res!550272) (not e!446252))))

(declare-fun k!2044 () (_ BitVec 64))

(assert (=> b!805776 (= res!550272 (validKeyInArray!0 k!2044))))

(declare-fun b!805777 () Bool)

(declare-fun res!550263 () Bool)

(assert (=> b!805777 (=> (not res!550263) (not e!446253))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!805777 (= res!550263 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21402 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20981 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21402 a!3170)) (= (select (arr!20981 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!805779 () Bool)

(declare-fun res!550268 () Bool)

(assert (=> b!805779 (=> (not res!550268) (not e!446252))))

(declare-fun arrayContainsKey!0 (array!43812 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!805779 (= res!550268 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!805780 () Bool)

(declare-fun e!446254 () Bool)

(assert (=> b!805780 (= e!446253 e!446254)))

(declare-fun res!550269 () Bool)

(assert (=> b!805780 (=> (not res!550269) (not e!446254))))

(declare-datatypes ((SeekEntryResult!8579 0))(
  ( (MissingZero!8579 (index!36683 (_ BitVec 32))) (Found!8579 (index!36684 (_ BitVec 32))) (Intermediate!8579 (undefined!9391 Bool) (index!36685 (_ BitVec 32)) (x!67525 (_ BitVec 32))) (Undefined!8579) (MissingVacant!8579 (index!36686 (_ BitVec 32))) )
))
(declare-fun lt!360834 () SeekEntryResult!8579)

(declare-fun lt!360833 () SeekEntryResult!8579)

(assert (=> b!805780 (= res!550269 (= lt!360834 lt!360833))))

(declare-fun lt!360831 () (_ BitVec 64))

(declare-fun lt!360835 () array!43812)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43812 (_ BitVec 32)) SeekEntryResult!8579)

(assert (=> b!805780 (= lt!360833 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!360831 lt!360835 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43812 (_ BitVec 32)) SeekEntryResult!8579)

(assert (=> b!805780 (= lt!360834 (seekEntryOrOpen!0 lt!360831 lt!360835 mask!3266))))

(assert (=> b!805780 (= lt!360831 (select (store (arr!20981 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!805780 (= lt!360835 (array!43813 (store (arr!20981 a!3170) i!1163 k!2044) (size!21402 a!3170)))))

(declare-fun b!805781 () Bool)

(assert (=> b!805781 (= e!446252 e!446253)))

(declare-fun res!550271 () Bool)

(assert (=> b!805781 (=> (not res!550271) (not e!446253))))

(declare-fun lt!360832 () SeekEntryResult!8579)

(assert (=> b!805781 (= res!550271 (or (= lt!360832 (MissingZero!8579 i!1163)) (= lt!360832 (MissingVacant!8579 i!1163))))))

(assert (=> b!805781 (= lt!360832 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!805782 () Bool)

(declare-fun e!446250 () Bool)

(assert (=> b!805782 (= e!446254 e!446250)))

(declare-fun res!550266 () Bool)

(assert (=> b!805782 (=> (not res!550266) (not e!446250))))

(declare-fun lt!360829 () SeekEntryResult!8579)

(declare-fun lt!360830 () SeekEntryResult!8579)

(assert (=> b!805782 (= res!550266 (and (= lt!360830 lt!360829) (= lt!360829 (Found!8579 j!153)) (= (select (arr!20981 a!3170) index!1236) (select (arr!20981 a!3170) j!153))))))

(assert (=> b!805782 (= lt!360829 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20981 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!805782 (= lt!360830 (seekEntryOrOpen!0 (select (arr!20981 a!3170) j!153) a!3170 mask!3266))))

(declare-fun res!550267 () Bool)

(assert (=> start!69116 (=> (not res!550267) (not e!446252))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69116 (= res!550267 (validMask!0 mask!3266))))

(assert (=> start!69116 e!446252))

(assert (=> start!69116 true))

(declare-fun array_inv!16755 (array!43812) Bool)

(assert (=> start!69116 (array_inv!16755 a!3170)))

(declare-fun b!805778 () Bool)

(assert (=> b!805778 (= e!446250 (not true))))

(assert (=> b!805778 (= lt!360833 (Found!8579 index!1236))))

(assert (= (and start!69116 res!550267) b!805774))

(assert (= (and b!805774 res!550270) b!805775))

(assert (= (and b!805775 res!550273) b!805776))

(assert (= (and b!805776 res!550272) b!805779))

(assert (= (and b!805779 res!550268) b!805781))

(assert (= (and b!805781 res!550271) b!805772))

(assert (= (and b!805772 res!550264) b!805773))

(assert (= (and b!805773 res!550265) b!805777))

(assert (= (and b!805777 res!550263) b!805780))

(assert (= (and b!805780 res!550269) b!805782))

(assert (= (and b!805782 res!550266) b!805778))

(declare-fun m!747811 () Bool)

(assert (=> b!805780 m!747811))

(declare-fun m!747813 () Bool)

(assert (=> b!805780 m!747813))

(declare-fun m!747815 () Bool)

(assert (=> b!805780 m!747815))

(declare-fun m!747817 () Bool)

(assert (=> b!805780 m!747817))

(declare-fun m!747819 () Bool)

(assert (=> b!805772 m!747819))

(declare-fun m!747821 () Bool)

(assert (=> b!805773 m!747821))

(declare-fun m!747823 () Bool)

(assert (=> b!805779 m!747823))

(declare-fun m!747825 () Bool)

(assert (=> b!805777 m!747825))

(declare-fun m!747827 () Bool)

(assert (=> b!805777 m!747827))

(declare-fun m!747829 () Bool)

(assert (=> b!805775 m!747829))

(assert (=> b!805775 m!747829))

(declare-fun m!747831 () Bool)

(assert (=> b!805775 m!747831))

(declare-fun m!747833 () Bool)

(assert (=> start!69116 m!747833))

(declare-fun m!747835 () Bool)

(assert (=> start!69116 m!747835))

(declare-fun m!747837 () Bool)

(assert (=> b!805781 m!747837))

(declare-fun m!747839 () Bool)

(assert (=> b!805782 m!747839))

(assert (=> b!805782 m!747829))

(assert (=> b!805782 m!747829))

(declare-fun m!747841 () Bool)

(assert (=> b!805782 m!747841))

(assert (=> b!805782 m!747829))

(declare-fun m!747843 () Bool)

(assert (=> b!805782 m!747843))

(declare-fun m!747845 () Bool)

(assert (=> b!805776 m!747845))

(push 1)

