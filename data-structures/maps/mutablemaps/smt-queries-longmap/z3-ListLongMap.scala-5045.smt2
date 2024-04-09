; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68802 () Bool)

(assert start!68802)

(declare-fun b!801411 () Bool)

(declare-fun e!444252 () Bool)

(assert (=> b!801411 (= e!444252 false)))

(declare-datatypes ((SeekEntryResult!8446 0))(
  ( (MissingZero!8446 (index!36151 (_ BitVec 32))) (Found!8446 (index!36152 (_ BitVec 32))) (Intermediate!8446 (undefined!9258 Bool) (index!36153 (_ BitVec 32)) (x!67037 (_ BitVec 32))) (Undefined!8446) (MissingVacant!8446 (index!36154 (_ BitVec 32))) )
))
(declare-fun lt!358257 () SeekEntryResult!8446)

(declare-fun x!1077 () (_ BitVec 32))

(declare-datatypes ((array!43543 0))(
  ( (array!43544 (arr!20848 (Array (_ BitVec 32) (_ BitVec 64))) (size!21269 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43543)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun lt!358252 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43543 (_ BitVec 32)) SeekEntryResult!8446)

(assert (=> b!801411 (= lt!358257 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!358252 vacantBefore!23 (select (arr!20848 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!801412 () Bool)

(declare-fun e!444253 () Bool)

(assert (=> b!801412 (= e!444253 e!444252)))

(declare-fun res!546110 () Bool)

(assert (=> b!801412 (=> (not res!546110) (not e!444252))))

(assert (=> b!801412 (= res!546110 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1077) #b01111111111111111111111111111110) (bvsge (bvadd #b00000000000000000000000000000001 x!1077) #b00000000000000000000000000000000) (bvsge lt!358252 #b00000000000000000000000000000000) (bvslt lt!358252 (size!21269 a!3170))))))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!801412 (= lt!358252 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!801413 () Bool)

(declare-fun res!546112 () Bool)

(declare-fun e!444255 () Bool)

(assert (=> b!801413 (=> (not res!546112) (not e!444255))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43543 (_ BitVec 32)) Bool)

(assert (=> b!801413 (= res!546112 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!801414 () Bool)

(declare-fun e!444251 () Bool)

(assert (=> b!801414 (= e!444251 e!444253)))

(declare-fun res!546108 () Bool)

(assert (=> b!801414 (=> (not res!546108) (not e!444253))))

(declare-fun lt!358251 () SeekEntryResult!8446)

(declare-fun lt!358253 () SeekEntryResult!8446)

(assert (=> b!801414 (= res!546108 (and (= lt!358251 lt!358253) (= lt!358253 (Found!8446 j!153)) (not (= (select (arr!20848 a!3170) index!1236) (select (arr!20848 a!3170) j!153)))))))

(assert (=> b!801414 (= lt!358253 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20848 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43543 (_ BitVec 32)) SeekEntryResult!8446)

(assert (=> b!801414 (= lt!358251 (seekEntryOrOpen!0 (select (arr!20848 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!801415 () Bool)

(declare-fun res!546101 () Bool)

(declare-fun e!444254 () Bool)

(assert (=> b!801415 (=> (not res!546101) (not e!444254))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!801415 (= res!546101 (validKeyInArray!0 k0!2044))))

(declare-fun b!801416 () Bool)

(declare-fun res!546102 () Bool)

(assert (=> b!801416 (=> (not res!546102) (not e!444254))))

(assert (=> b!801416 (= res!546102 (validKeyInArray!0 (select (arr!20848 a!3170) j!153)))))

(declare-fun b!801418 () Bool)

(declare-fun res!546111 () Bool)

(assert (=> b!801418 (=> (not res!546111) (not e!444254))))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!801418 (= res!546111 (and (= (size!21269 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21269 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21269 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!801419 () Bool)

(declare-fun res!546109 () Bool)

(assert (=> b!801419 (=> (not res!546109) (not e!444255))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(assert (=> b!801419 (= res!546109 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21269 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20848 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21269 a!3170)) (= (select (arr!20848 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!801420 () Bool)

(assert (=> b!801420 (= e!444254 e!444255)))

(declare-fun res!546107 () Bool)

(assert (=> b!801420 (=> (not res!546107) (not e!444255))))

(declare-fun lt!358254 () SeekEntryResult!8446)

(assert (=> b!801420 (= res!546107 (or (= lt!358254 (MissingZero!8446 i!1163)) (= lt!358254 (MissingVacant!8446 i!1163))))))

(assert (=> b!801420 (= lt!358254 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!801421 () Bool)

(declare-fun res!546100 () Bool)

(assert (=> b!801421 (=> (not res!546100) (not e!444252))))

(declare-fun lt!358258 () array!43543)

(declare-fun lt!358256 () (_ BitVec 64))

(declare-fun lt!358255 () SeekEntryResult!8446)

(assert (=> b!801421 (= res!546100 (= lt!358255 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!358252 vacantAfter!23 lt!358256 lt!358258 mask!3266)))))

(declare-fun b!801422 () Bool)

(declare-fun res!546105 () Bool)

(assert (=> b!801422 (=> (not res!546105) (not e!444254))))

(declare-fun arrayContainsKey!0 (array!43543 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!801422 (= res!546105 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!801423 () Bool)

(assert (=> b!801423 (= e!444255 e!444251)))

(declare-fun res!546103 () Bool)

(assert (=> b!801423 (=> (not res!546103) (not e!444251))))

(assert (=> b!801423 (= res!546103 (= lt!358255 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!358256 lt!358258 mask!3266)))))

(assert (=> b!801423 (= lt!358255 (seekEntryOrOpen!0 lt!358256 lt!358258 mask!3266))))

(assert (=> b!801423 (= lt!358256 (select (store (arr!20848 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!801423 (= lt!358258 (array!43544 (store (arr!20848 a!3170) i!1163 k0!2044) (size!21269 a!3170)))))

(declare-fun b!801417 () Bool)

(declare-fun res!546104 () Bool)

(assert (=> b!801417 (=> (not res!546104) (not e!444255))))

(declare-datatypes ((List!14864 0))(
  ( (Nil!14861) (Cons!14860 (h!15989 (_ BitVec 64)) (t!21187 List!14864)) )
))
(declare-fun arrayNoDuplicates!0 (array!43543 (_ BitVec 32) List!14864) Bool)

(assert (=> b!801417 (= res!546104 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14861))))

(declare-fun res!546106 () Bool)

(assert (=> start!68802 (=> (not res!546106) (not e!444254))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68802 (= res!546106 (validMask!0 mask!3266))))

(assert (=> start!68802 e!444254))

(assert (=> start!68802 true))

(declare-fun array_inv!16622 (array!43543) Bool)

(assert (=> start!68802 (array_inv!16622 a!3170)))

(assert (= (and start!68802 res!546106) b!801418))

(assert (= (and b!801418 res!546111) b!801416))

(assert (= (and b!801416 res!546102) b!801415))

(assert (= (and b!801415 res!546101) b!801422))

(assert (= (and b!801422 res!546105) b!801420))

(assert (= (and b!801420 res!546107) b!801413))

(assert (= (and b!801413 res!546112) b!801417))

(assert (= (and b!801417 res!546104) b!801419))

(assert (= (and b!801419 res!546109) b!801423))

(assert (= (and b!801423 res!546103) b!801414))

(assert (= (and b!801414 res!546108) b!801412))

(assert (= (and b!801412 res!546110) b!801421))

(assert (= (and b!801421 res!546100) b!801411))

(declare-fun m!742681 () Bool)

(assert (=> b!801419 m!742681))

(declare-fun m!742683 () Bool)

(assert (=> b!801419 m!742683))

(declare-fun m!742685 () Bool)

(assert (=> b!801423 m!742685))

(declare-fun m!742687 () Bool)

(assert (=> b!801423 m!742687))

(declare-fun m!742689 () Bool)

(assert (=> b!801423 m!742689))

(declare-fun m!742691 () Bool)

(assert (=> b!801423 m!742691))

(declare-fun m!742693 () Bool)

(assert (=> b!801420 m!742693))

(declare-fun m!742695 () Bool)

(assert (=> start!68802 m!742695))

(declare-fun m!742697 () Bool)

(assert (=> start!68802 m!742697))

(declare-fun m!742699 () Bool)

(assert (=> b!801411 m!742699))

(assert (=> b!801411 m!742699))

(declare-fun m!742701 () Bool)

(assert (=> b!801411 m!742701))

(declare-fun m!742703 () Bool)

(assert (=> b!801413 m!742703))

(assert (=> b!801416 m!742699))

(assert (=> b!801416 m!742699))

(declare-fun m!742705 () Bool)

(assert (=> b!801416 m!742705))

(declare-fun m!742707 () Bool)

(assert (=> b!801412 m!742707))

(declare-fun m!742709 () Bool)

(assert (=> b!801417 m!742709))

(declare-fun m!742711 () Bool)

(assert (=> b!801414 m!742711))

(assert (=> b!801414 m!742699))

(assert (=> b!801414 m!742699))

(declare-fun m!742713 () Bool)

(assert (=> b!801414 m!742713))

(assert (=> b!801414 m!742699))

(declare-fun m!742715 () Bool)

(assert (=> b!801414 m!742715))

(declare-fun m!742717 () Bool)

(assert (=> b!801415 m!742717))

(declare-fun m!742719 () Bool)

(assert (=> b!801422 m!742719))

(declare-fun m!742721 () Bool)

(assert (=> b!801421 m!742721))

(check-sat (not b!801421) (not b!801417) (not b!801412) (not start!68802) (not b!801416) (not b!801415) (not b!801411) (not b!801422) (not b!801413) (not b!801423) (not b!801420) (not b!801414))
(check-sat)
