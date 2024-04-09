; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68712 () Bool)

(assert start!68712)

(declare-fun b!799656 () Bool)

(declare-fun e!443446 () Bool)

(assert (=> b!799656 (= e!443446 false)))

(declare-fun lt!357171 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8401 0))(
  ( (MissingZero!8401 (index!35971 (_ BitVec 32))) (Found!8401 (index!35972 (_ BitVec 32))) (Intermediate!8401 (undefined!9213 Bool) (index!35973 (_ BitVec 32)) (x!66872 (_ BitVec 32))) (Undefined!8401) (MissingVacant!8401 (index!35974 (_ BitVec 32))) )
))
(declare-fun lt!357175 () SeekEntryResult!8401)

(declare-datatypes ((array!43453 0))(
  ( (array!43454 (arr!20803 (Array (_ BitVec 32) (_ BitVec 64))) (size!21224 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43453)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43453 (_ BitVec 32)) SeekEntryResult!8401)

(assert (=> b!799656 (= lt!357175 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!357171 vacantBefore!23 (select (arr!20803 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!799657 () Bool)

(declare-fun e!443445 () Bool)

(declare-fun e!443441 () Bool)

(assert (=> b!799657 (= e!443445 e!443441)))

(declare-fun res!544352 () Bool)

(assert (=> b!799657 (=> (not res!544352) (not e!443441))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun lt!357173 () SeekEntryResult!8401)

(declare-fun lt!357177 () array!43453)

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun lt!357172 () (_ BitVec 64))

(assert (=> b!799657 (= res!544352 (= lt!357173 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!357172 lt!357177 mask!3266)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43453 (_ BitVec 32)) SeekEntryResult!8401)

(assert (=> b!799657 (= lt!357173 (seekEntryOrOpen!0 lt!357172 lt!357177 mask!3266))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!799657 (= lt!357172 (select (store (arr!20803 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!799657 (= lt!357177 (array!43454 (store (arr!20803 a!3170) i!1163 k0!2044) (size!21224 a!3170)))))

(declare-fun b!799658 () Bool)

(declare-fun res!544354 () Bool)

(declare-fun e!443442 () Bool)

(assert (=> b!799658 (=> (not res!544354) (not e!443442))))

(declare-fun arrayContainsKey!0 (array!43453 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!799658 (= res!544354 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!799659 () Bool)

(declare-fun res!544349 () Bool)

(assert (=> b!799659 (=> (not res!544349) (not e!443445))))

(declare-datatypes ((List!14819 0))(
  ( (Nil!14816) (Cons!14815 (h!15944 (_ BitVec 64)) (t!21142 List!14819)) )
))
(declare-fun arrayNoDuplicates!0 (array!43453 (_ BitVec 32) List!14819) Bool)

(assert (=> b!799659 (= res!544349 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14816))))

(declare-fun b!799660 () Bool)

(declare-fun res!544347 () Bool)

(assert (=> b!799660 (=> (not res!544347) (not e!443445))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43453 (_ BitVec 32)) Bool)

(assert (=> b!799660 (= res!544347 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!799661 () Bool)

(assert (=> b!799661 (= e!443442 e!443445)))

(declare-fun res!544356 () Bool)

(assert (=> b!799661 (=> (not res!544356) (not e!443445))))

(declare-fun lt!357176 () SeekEntryResult!8401)

(assert (=> b!799661 (= res!544356 (or (= lt!357176 (MissingZero!8401 i!1163)) (= lt!357176 (MissingVacant!8401 i!1163))))))

(assert (=> b!799661 (= lt!357176 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!799662 () Bool)

(declare-fun e!443443 () Bool)

(assert (=> b!799662 (= e!443441 e!443443)))

(declare-fun res!544351 () Bool)

(assert (=> b!799662 (=> (not res!544351) (not e!443443))))

(declare-fun lt!357174 () SeekEntryResult!8401)

(declare-fun lt!357178 () SeekEntryResult!8401)

(assert (=> b!799662 (= res!544351 (and (= lt!357174 lt!357178) (= lt!357178 (Found!8401 j!153)) (not (= (select (arr!20803 a!3170) index!1236) (select (arr!20803 a!3170) j!153)))))))

(assert (=> b!799662 (= lt!357178 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20803 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!799662 (= lt!357174 (seekEntryOrOpen!0 (select (arr!20803 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!799663 () Bool)

(declare-fun res!544350 () Bool)

(assert (=> b!799663 (=> (not res!544350) (not e!443446))))

(assert (=> b!799663 (= res!544350 (= lt!357173 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!357171 vacantAfter!23 lt!357172 lt!357177 mask!3266)))))

(declare-fun res!544353 () Bool)

(assert (=> start!68712 (=> (not res!544353) (not e!443442))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68712 (= res!544353 (validMask!0 mask!3266))))

(assert (=> start!68712 e!443442))

(assert (=> start!68712 true))

(declare-fun array_inv!16577 (array!43453) Bool)

(assert (=> start!68712 (array_inv!16577 a!3170)))

(declare-fun b!799664 () Bool)

(declare-fun res!544357 () Bool)

(assert (=> b!799664 (=> (not res!544357) (not e!443442))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!799664 (= res!544357 (validKeyInArray!0 k0!2044))))

(declare-fun b!799665 () Bool)

(assert (=> b!799665 (= e!443443 e!443446)))

(declare-fun res!544355 () Bool)

(assert (=> b!799665 (=> (not res!544355) (not e!443446))))

(assert (=> b!799665 (= res!544355 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1077) #b01111111111111111111111111111110) (bvsge (bvadd #b00000000000000000000000000000001 x!1077) #b00000000000000000000000000000000) (bvsge lt!357171 #b00000000000000000000000000000000) (bvslt lt!357171 (size!21224 a!3170))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!799665 (= lt!357171 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!799666 () Bool)

(declare-fun res!544345 () Bool)

(assert (=> b!799666 (=> (not res!544345) (not e!443442))))

(assert (=> b!799666 (= res!544345 (and (= (size!21224 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21224 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21224 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!799667 () Bool)

(declare-fun res!544348 () Bool)

(assert (=> b!799667 (=> (not res!544348) (not e!443442))))

(assert (=> b!799667 (= res!544348 (validKeyInArray!0 (select (arr!20803 a!3170) j!153)))))

(declare-fun b!799668 () Bool)

(declare-fun res!544346 () Bool)

(assert (=> b!799668 (=> (not res!544346) (not e!443445))))

(assert (=> b!799668 (= res!544346 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21224 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20803 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21224 a!3170)) (= (select (arr!20803 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(assert (= (and start!68712 res!544353) b!799666))

(assert (= (and b!799666 res!544345) b!799667))

(assert (= (and b!799667 res!544348) b!799664))

(assert (= (and b!799664 res!544357) b!799658))

(assert (= (and b!799658 res!544354) b!799661))

(assert (= (and b!799661 res!544356) b!799660))

(assert (= (and b!799660 res!544347) b!799659))

(assert (= (and b!799659 res!544349) b!799668))

(assert (= (and b!799668 res!544346) b!799657))

(assert (= (and b!799657 res!544352) b!799662))

(assert (= (and b!799662 res!544351) b!799665))

(assert (= (and b!799665 res!544355) b!799663))

(assert (= (and b!799663 res!544350) b!799656))

(declare-fun m!740791 () Bool)

(assert (=> b!799664 m!740791))

(declare-fun m!740793 () Bool)

(assert (=> b!799663 m!740793))

(declare-fun m!740795 () Bool)

(assert (=> b!799657 m!740795))

(declare-fun m!740797 () Bool)

(assert (=> b!799657 m!740797))

(declare-fun m!740799 () Bool)

(assert (=> b!799657 m!740799))

(declare-fun m!740801 () Bool)

(assert (=> b!799657 m!740801))

(declare-fun m!740803 () Bool)

(assert (=> start!68712 m!740803))

(declare-fun m!740805 () Bool)

(assert (=> start!68712 m!740805))

(declare-fun m!740807 () Bool)

(assert (=> b!799656 m!740807))

(assert (=> b!799656 m!740807))

(declare-fun m!740809 () Bool)

(assert (=> b!799656 m!740809))

(declare-fun m!740811 () Bool)

(assert (=> b!799659 m!740811))

(declare-fun m!740813 () Bool)

(assert (=> b!799661 m!740813))

(assert (=> b!799667 m!740807))

(assert (=> b!799667 m!740807))

(declare-fun m!740815 () Bool)

(assert (=> b!799667 m!740815))

(declare-fun m!740817 () Bool)

(assert (=> b!799662 m!740817))

(assert (=> b!799662 m!740807))

(assert (=> b!799662 m!740807))

(declare-fun m!740819 () Bool)

(assert (=> b!799662 m!740819))

(assert (=> b!799662 m!740807))

(declare-fun m!740821 () Bool)

(assert (=> b!799662 m!740821))

(declare-fun m!740823 () Bool)

(assert (=> b!799658 m!740823))

(declare-fun m!740825 () Bool)

(assert (=> b!799665 m!740825))

(declare-fun m!740827 () Bool)

(assert (=> b!799660 m!740827))

(declare-fun m!740829 () Bool)

(assert (=> b!799668 m!740829))

(declare-fun m!740831 () Bool)

(assert (=> b!799668 m!740831))

(check-sat (not b!799663) (not b!799661) (not b!799659) (not b!799658) (not b!799657) (not b!799660) (not b!799665) (not b!799664) (not b!799656) (not start!68712) (not b!799662) (not b!799667))
(check-sat)
