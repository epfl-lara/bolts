; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68786 () Bool)

(assert start!68786)

(declare-fun res!545788 () Bool)

(declare-fun e!444110 () Bool)

(assert (=> start!68786 (=> (not res!545788) (not e!444110))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68786 (= res!545788 (validMask!0 mask!3266))))

(assert (=> start!68786 e!444110))

(assert (=> start!68786 true))

(declare-datatypes ((array!43527 0))(
  ( (array!43528 (arr!20840 (Array (_ BitVec 32) (_ BitVec 64))) (size!21261 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43527)

(declare-fun array_inv!16614 (array!43527) Bool)

(assert (=> start!68786 (array_inv!16614 a!3170)))

(declare-fun b!801099 () Bool)

(declare-fun res!545800 () Bool)

(declare-fun e!444111 () Bool)

(assert (=> b!801099 (=> (not res!545800) (not e!444111))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun lt!358061 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!358065 () (_ BitVec 64))

(declare-fun lt!358064 () array!43527)

(declare-datatypes ((SeekEntryResult!8438 0))(
  ( (MissingZero!8438 (index!36119 (_ BitVec 32))) (Found!8438 (index!36120 (_ BitVec 32))) (Intermediate!8438 (undefined!9250 Bool) (index!36121 (_ BitVec 32)) (x!67005 (_ BitVec 32))) (Undefined!8438) (MissingVacant!8438 (index!36122 (_ BitVec 32))) )
))
(declare-fun lt!358062 () SeekEntryResult!8438)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43527 (_ BitVec 32)) SeekEntryResult!8438)

(assert (=> b!801099 (= res!545800 (= lt!358062 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!358061 vacantAfter!23 lt!358065 lt!358064 mask!3266)))))

(declare-fun b!801100 () Bool)

(assert (=> b!801100 (= e!444111 false)))

(declare-fun lt!358059 () SeekEntryResult!8438)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!801100 (= lt!358059 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!358061 vacantBefore!23 (select (arr!20840 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!801101 () Bool)

(declare-fun res!545795 () Bool)

(declare-fun e!444107 () Bool)

(assert (=> b!801101 (=> (not res!545795) (not e!444107))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43527 (_ BitVec 32)) Bool)

(assert (=> b!801101 (= res!545795 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!801102 () Bool)

(declare-fun res!545796 () Bool)

(assert (=> b!801102 (=> (not res!545796) (not e!444110))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!43527 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!801102 (= res!545796 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!801103 () Bool)

(declare-fun e!444109 () Bool)

(declare-fun e!444108 () Bool)

(assert (=> b!801103 (= e!444109 e!444108)))

(declare-fun res!545790 () Bool)

(assert (=> b!801103 (=> (not res!545790) (not e!444108))))

(declare-fun lt!358060 () SeekEntryResult!8438)

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun lt!358066 () SeekEntryResult!8438)

(assert (=> b!801103 (= res!545790 (and (= lt!358060 lt!358066) (= lt!358066 (Found!8438 j!153)) (not (= (select (arr!20840 a!3170) index!1236) (select (arr!20840 a!3170) j!153)))))))

(assert (=> b!801103 (= lt!358066 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20840 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43527 (_ BitVec 32)) SeekEntryResult!8438)

(assert (=> b!801103 (= lt!358060 (seekEntryOrOpen!0 (select (arr!20840 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!801104 () Bool)

(declare-fun res!545789 () Bool)

(assert (=> b!801104 (=> (not res!545789) (not e!444110))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!801104 (= res!545789 (validKeyInArray!0 k!2044))))

(declare-fun b!801105 () Bool)

(assert (=> b!801105 (= e!444108 e!444111)))

(declare-fun res!545799 () Bool)

(assert (=> b!801105 (=> (not res!545799) (not e!444111))))

(assert (=> b!801105 (= res!545799 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1077) #b01111111111111111111111111111110) (bvsge (bvadd #b00000000000000000000000000000001 x!1077) #b00000000000000000000000000000000) (bvsge lt!358061 #b00000000000000000000000000000000) (bvslt lt!358061 (size!21261 a!3170))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!801105 (= lt!358061 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!801106 () Bool)

(declare-fun res!545792 () Bool)

(assert (=> b!801106 (=> (not res!545792) (not e!444110))))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!801106 (= res!545792 (and (= (size!21261 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21261 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21261 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!801107 () Bool)

(declare-fun res!545794 () Bool)

(assert (=> b!801107 (=> (not res!545794) (not e!444110))))

(assert (=> b!801107 (= res!545794 (validKeyInArray!0 (select (arr!20840 a!3170) j!153)))))

(declare-fun b!801108 () Bool)

(declare-fun res!545793 () Bool)

(assert (=> b!801108 (=> (not res!545793) (not e!444107))))

(declare-datatypes ((List!14856 0))(
  ( (Nil!14853) (Cons!14852 (h!15981 (_ BitVec 64)) (t!21179 List!14856)) )
))
(declare-fun arrayNoDuplicates!0 (array!43527 (_ BitVec 32) List!14856) Bool)

(assert (=> b!801108 (= res!545793 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14853))))

(declare-fun b!801109 () Bool)

(assert (=> b!801109 (= e!444110 e!444107)))

(declare-fun res!545797 () Bool)

(assert (=> b!801109 (=> (not res!545797) (not e!444107))))

(declare-fun lt!358063 () SeekEntryResult!8438)

(assert (=> b!801109 (= res!545797 (or (= lt!358063 (MissingZero!8438 i!1163)) (= lt!358063 (MissingVacant!8438 i!1163))))))

(assert (=> b!801109 (= lt!358063 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!801110 () Bool)

(assert (=> b!801110 (= e!444107 e!444109)))

(declare-fun res!545798 () Bool)

(assert (=> b!801110 (=> (not res!545798) (not e!444109))))

(assert (=> b!801110 (= res!545798 (= lt!358062 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!358065 lt!358064 mask!3266)))))

(assert (=> b!801110 (= lt!358062 (seekEntryOrOpen!0 lt!358065 lt!358064 mask!3266))))

(assert (=> b!801110 (= lt!358065 (select (store (arr!20840 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!801110 (= lt!358064 (array!43528 (store (arr!20840 a!3170) i!1163 k!2044) (size!21261 a!3170)))))

(declare-fun b!801111 () Bool)

(declare-fun res!545791 () Bool)

(assert (=> b!801111 (=> (not res!545791) (not e!444107))))

(assert (=> b!801111 (= res!545791 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21261 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20840 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21261 a!3170)) (= (select (arr!20840 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(assert (= (and start!68786 res!545788) b!801106))

(assert (= (and b!801106 res!545792) b!801107))

(assert (= (and b!801107 res!545794) b!801104))

(assert (= (and b!801104 res!545789) b!801102))

(assert (= (and b!801102 res!545796) b!801109))

(assert (= (and b!801109 res!545797) b!801101))

(assert (= (and b!801101 res!545795) b!801108))

(assert (= (and b!801108 res!545793) b!801111))

(assert (= (and b!801111 res!545791) b!801110))

(assert (= (and b!801110 res!545798) b!801103))

(assert (= (and b!801103 res!545790) b!801105))

(assert (= (and b!801105 res!545799) b!801099))

(assert (= (and b!801099 res!545800) b!801100))

(declare-fun m!742345 () Bool)

(assert (=> b!801110 m!742345))

(declare-fun m!742347 () Bool)

(assert (=> b!801110 m!742347))

(declare-fun m!742349 () Bool)

(assert (=> b!801110 m!742349))

(declare-fun m!742351 () Bool)

(assert (=> b!801110 m!742351))

(declare-fun m!742353 () Bool)

(assert (=> b!801111 m!742353))

(declare-fun m!742355 () Bool)

(assert (=> b!801111 m!742355))

(declare-fun m!742357 () Bool)

(assert (=> b!801105 m!742357))

(declare-fun m!742359 () Bool)

(assert (=> b!801104 m!742359))

(declare-fun m!742361 () Bool)

(assert (=> b!801107 m!742361))

(assert (=> b!801107 m!742361))

(declare-fun m!742363 () Bool)

(assert (=> b!801107 m!742363))

(assert (=> b!801100 m!742361))

(assert (=> b!801100 m!742361))

(declare-fun m!742365 () Bool)

(assert (=> b!801100 m!742365))

(declare-fun m!742367 () Bool)

(assert (=> b!801108 m!742367))

(declare-fun m!742369 () Bool)

(assert (=> b!801103 m!742369))

(assert (=> b!801103 m!742361))

(assert (=> b!801103 m!742361))

(declare-fun m!742371 () Bool)

(assert (=> b!801103 m!742371))

(assert (=> b!801103 m!742361))

(declare-fun m!742373 () Bool)

(assert (=> b!801103 m!742373))

(declare-fun m!742375 () Bool)

(assert (=> b!801101 m!742375))

(declare-fun m!742377 () Bool)

(assert (=> start!68786 m!742377))

(declare-fun m!742379 () Bool)

(assert (=> start!68786 m!742379))

(declare-fun m!742381 () Bool)

(assert (=> b!801109 m!742381))

(declare-fun m!742383 () Bool)

(assert (=> b!801099 m!742383))

(declare-fun m!742385 () Bool)

(assert (=> b!801102 m!742385))

(push 1)

