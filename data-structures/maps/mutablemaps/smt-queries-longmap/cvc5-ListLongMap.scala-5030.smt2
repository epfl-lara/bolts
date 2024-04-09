; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68710 () Bool)

(assert start!68710)

(declare-fun b!799617 () Bool)

(declare-fun e!443425 () Bool)

(assert (=> b!799617 (= e!443425 false)))

(declare-fun lt!357152 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-datatypes ((array!43451 0))(
  ( (array!43452 (arr!20802 (Array (_ BitVec 32) (_ BitVec 64))) (size!21223 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43451)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8400 0))(
  ( (MissingZero!8400 (index!35967 (_ BitVec 32))) (Found!8400 (index!35968 (_ BitVec 32))) (Intermediate!8400 (undefined!9212 Bool) (index!35969 (_ BitVec 32)) (x!66871 (_ BitVec 32))) (Undefined!8400) (MissingVacant!8400 (index!35970 (_ BitVec 32))) )
))
(declare-fun lt!357151 () SeekEntryResult!8400)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43451 (_ BitVec 32)) SeekEntryResult!8400)

(assert (=> b!799617 (= lt!357151 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!357152 vacantBefore!23 (select (arr!20802 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!799618 () Bool)

(declare-fun res!544308 () Bool)

(declare-fun e!443423 () Bool)

(assert (=> b!799618 (=> (not res!544308) (not e!443423))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!799618 (= res!544308 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21223 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20802 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21223 a!3170)) (= (select (arr!20802 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!799619 () Bool)

(declare-fun res!544318 () Bool)

(declare-fun e!443424 () Bool)

(assert (=> b!799619 (=> (not res!544318) (not e!443424))))

(assert (=> b!799619 (= res!544318 (and (= (size!21223 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21223 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21223 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!799620 () Bool)

(assert (=> b!799620 (= e!443424 e!443423)))

(declare-fun res!544316 () Bool)

(assert (=> b!799620 (=> (not res!544316) (not e!443423))))

(declare-fun lt!357148 () SeekEntryResult!8400)

(assert (=> b!799620 (= res!544316 (or (= lt!357148 (MissingZero!8400 i!1163)) (= lt!357148 (MissingVacant!8400 i!1163))))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43451 (_ BitVec 32)) SeekEntryResult!8400)

(assert (=> b!799620 (= lt!357148 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!799622 () Bool)

(declare-fun res!544312 () Bool)

(assert (=> b!799622 (=> (not res!544312) (not e!443423))))

(declare-datatypes ((List!14818 0))(
  ( (Nil!14815) (Cons!14814 (h!15943 (_ BitVec 64)) (t!21141 List!14818)) )
))
(declare-fun arrayNoDuplicates!0 (array!43451 (_ BitVec 32) List!14818) Bool)

(assert (=> b!799622 (= res!544312 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14815))))

(declare-fun b!799623 () Bool)

(declare-fun res!544314 () Bool)

(assert (=> b!799623 (=> (not res!544314) (not e!443424))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!799623 (= res!544314 (validKeyInArray!0 (select (arr!20802 a!3170) j!153)))))

(declare-fun b!799624 () Bool)

(declare-fun res!544311 () Bool)

(assert (=> b!799624 (=> (not res!544311) (not e!443423))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43451 (_ BitVec 32)) Bool)

(assert (=> b!799624 (= res!544311 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!799625 () Bool)

(declare-fun e!443428 () Bool)

(declare-fun e!443427 () Bool)

(assert (=> b!799625 (= e!443428 e!443427)))

(declare-fun res!544306 () Bool)

(assert (=> b!799625 (=> (not res!544306) (not e!443427))))

(declare-fun lt!357149 () SeekEntryResult!8400)

(declare-fun lt!357153 () SeekEntryResult!8400)

(assert (=> b!799625 (= res!544306 (and (= lt!357153 lt!357149) (= lt!357149 (Found!8400 j!153)) (not (= (select (arr!20802 a!3170) index!1236) (select (arr!20802 a!3170) j!153)))))))

(assert (=> b!799625 (= lt!357149 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20802 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!799625 (= lt!357153 (seekEntryOrOpen!0 (select (arr!20802 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!799626 () Bool)

(declare-fun res!544310 () Bool)

(assert (=> b!799626 (=> (not res!544310) (not e!443424))))

(assert (=> b!799626 (= res!544310 (validKeyInArray!0 k!2044))))

(declare-fun b!799627 () Bool)

(assert (=> b!799627 (= e!443427 e!443425)))

(declare-fun res!544309 () Bool)

(assert (=> b!799627 (=> (not res!544309) (not e!443425))))

(assert (=> b!799627 (= res!544309 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1077) #b01111111111111111111111111111110) (bvsge (bvadd #b00000000000000000000000000000001 x!1077) #b00000000000000000000000000000000) (bvsge lt!357152 #b00000000000000000000000000000000) (bvslt lt!357152 (size!21223 a!3170))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!799627 (= lt!357152 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!799621 () Bool)

(declare-fun res!544315 () Bool)

(assert (=> b!799621 (=> (not res!544315) (not e!443424))))

(declare-fun arrayContainsKey!0 (array!43451 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!799621 (= res!544315 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun res!544313 () Bool)

(assert (=> start!68710 (=> (not res!544313) (not e!443424))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68710 (= res!544313 (validMask!0 mask!3266))))

(assert (=> start!68710 e!443424))

(assert (=> start!68710 true))

(declare-fun array_inv!16576 (array!43451) Bool)

(assert (=> start!68710 (array_inv!16576 a!3170)))

(declare-fun b!799628 () Bool)

(assert (=> b!799628 (= e!443423 e!443428)))

(declare-fun res!544307 () Bool)

(assert (=> b!799628 (=> (not res!544307) (not e!443428))))

(declare-fun lt!357154 () SeekEntryResult!8400)

(declare-fun lt!357147 () (_ BitVec 64))

(declare-fun lt!357150 () array!43451)

(assert (=> b!799628 (= res!544307 (= lt!357154 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!357147 lt!357150 mask!3266)))))

(assert (=> b!799628 (= lt!357154 (seekEntryOrOpen!0 lt!357147 lt!357150 mask!3266))))

(assert (=> b!799628 (= lt!357147 (select (store (arr!20802 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!799628 (= lt!357150 (array!43452 (store (arr!20802 a!3170) i!1163 k!2044) (size!21223 a!3170)))))

(declare-fun b!799629 () Bool)

(declare-fun res!544317 () Bool)

(assert (=> b!799629 (=> (not res!544317) (not e!443425))))

(assert (=> b!799629 (= res!544317 (= lt!357154 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!357152 vacantAfter!23 lt!357147 lt!357150 mask!3266)))))

(assert (= (and start!68710 res!544313) b!799619))

(assert (= (and b!799619 res!544318) b!799623))

(assert (= (and b!799623 res!544314) b!799626))

(assert (= (and b!799626 res!544310) b!799621))

(assert (= (and b!799621 res!544315) b!799620))

(assert (= (and b!799620 res!544316) b!799624))

(assert (= (and b!799624 res!544311) b!799622))

(assert (= (and b!799622 res!544312) b!799618))

(assert (= (and b!799618 res!544308) b!799628))

(assert (= (and b!799628 res!544307) b!799625))

(assert (= (and b!799625 res!544306) b!799627))

(assert (= (and b!799627 res!544309) b!799629))

(assert (= (and b!799629 res!544317) b!799617))

(declare-fun m!740749 () Bool)

(assert (=> b!799623 m!740749))

(assert (=> b!799623 m!740749))

(declare-fun m!740751 () Bool)

(assert (=> b!799623 m!740751))

(declare-fun m!740753 () Bool)

(assert (=> b!799618 m!740753))

(declare-fun m!740755 () Bool)

(assert (=> b!799618 m!740755))

(declare-fun m!740757 () Bool)

(assert (=> b!799620 m!740757))

(assert (=> b!799617 m!740749))

(assert (=> b!799617 m!740749))

(declare-fun m!740759 () Bool)

(assert (=> b!799617 m!740759))

(declare-fun m!740761 () Bool)

(assert (=> b!799621 m!740761))

(declare-fun m!740763 () Bool)

(assert (=> start!68710 m!740763))

(declare-fun m!740765 () Bool)

(assert (=> start!68710 m!740765))

(declare-fun m!740767 () Bool)

(assert (=> b!799628 m!740767))

(declare-fun m!740769 () Bool)

(assert (=> b!799628 m!740769))

(declare-fun m!740771 () Bool)

(assert (=> b!799628 m!740771))

(declare-fun m!740773 () Bool)

(assert (=> b!799628 m!740773))

(declare-fun m!740775 () Bool)

(assert (=> b!799627 m!740775))

(declare-fun m!740777 () Bool)

(assert (=> b!799626 m!740777))

(declare-fun m!740779 () Bool)

(assert (=> b!799625 m!740779))

(assert (=> b!799625 m!740749))

(assert (=> b!799625 m!740749))

(declare-fun m!740781 () Bool)

(assert (=> b!799625 m!740781))

(assert (=> b!799625 m!740749))

(declare-fun m!740783 () Bool)

(assert (=> b!799625 m!740783))

(declare-fun m!740785 () Bool)

(assert (=> b!799629 m!740785))

(declare-fun m!740787 () Bool)

(assert (=> b!799622 m!740787))

(declare-fun m!740789 () Bool)

(assert (=> b!799624 m!740789))

(push 1)

