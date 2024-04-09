; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68880 () Bool)

(assert start!68880)

(declare-fun b!802733 () Bool)

(declare-fun e!444867 () Bool)

(declare-fun e!444868 () Bool)

(assert (=> b!802733 (= e!444867 e!444868)))

(declare-fun res!547425 () Bool)

(assert (=> b!802733 (=> (not res!547425) (not e!444868))))

(declare-datatypes ((SeekEntryResult!8485 0))(
  ( (MissingZero!8485 (index!36307 (_ BitVec 32))) (Found!8485 (index!36308 (_ BitVec 32))) (Intermediate!8485 (undefined!9297 Bool) (index!36309 (_ BitVec 32)) (x!67180 (_ BitVec 32))) (Undefined!8485) (MissingVacant!8485 (index!36310 (_ BitVec 32))) )
))
(declare-fun lt!359128 () SeekEntryResult!8485)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!802733 (= res!547425 (or (= lt!359128 (MissingZero!8485 i!1163)) (= lt!359128 (MissingVacant!8485 i!1163))))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-datatypes ((array!43621 0))(
  ( (array!43622 (arr!20887 (Array (_ BitVec 32) (_ BitVec 64))) (size!21308 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43621)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43621 (_ BitVec 32)) SeekEntryResult!8485)

(assert (=> b!802733 (= lt!359128 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!802735 () Bool)

(declare-fun res!547428 () Bool)

(assert (=> b!802735 (=> (not res!547428) (not e!444868))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!802735 (= res!547428 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21308 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20887 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21308 a!3170)) (= (select (arr!20887 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!802736 () Bool)

(declare-fun res!547423 () Bool)

(assert (=> b!802736 (=> (not res!547423) (not e!444867))))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!802736 (= res!547423 (and (= (size!21308 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21308 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21308 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!802737 () Bool)

(declare-fun e!444871 () Bool)

(assert (=> b!802737 (= e!444871 (not true))))

(declare-fun lt!359130 () array!43621)

(declare-fun lt!359133 () (_ BitVec 64))

(declare-fun lt!359134 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43621 (_ BitVec 32)) SeekEntryResult!8485)

(assert (=> b!802737 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!359134 vacantAfter!23 lt!359133 lt!359130 mask!3266) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!359134 vacantBefore!23 (select (arr!20887 a!3170) j!153) a!3170 mask!3266))))

(declare-datatypes ((Unit!27512 0))(
  ( (Unit!27513) )
))
(declare-fun lt!359131 () Unit!27512)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!43621 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27512)

(assert (=> b!802737 (= lt!359131 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3170 i!1163 k0!2044 j!153 lt!359134 (bvadd #b00000000000000000000000000000001 x!1077) vacantBefore!23 vacantAfter!23 mask!3266))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!802737 (= lt!359134 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun res!547432 () Bool)

(assert (=> start!68880 (=> (not res!547432) (not e!444867))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68880 (= res!547432 (validMask!0 mask!3266))))

(assert (=> start!68880 e!444867))

(assert (=> start!68880 true))

(declare-fun array_inv!16661 (array!43621) Bool)

(assert (=> start!68880 (array_inv!16661 a!3170)))

(declare-fun b!802734 () Bool)

(declare-fun res!547424 () Bool)

(assert (=> b!802734 (=> (not res!547424) (not e!444868))))

(declare-datatypes ((List!14903 0))(
  ( (Nil!14900) (Cons!14899 (h!16028 (_ BitVec 64)) (t!21226 List!14903)) )
))
(declare-fun arrayNoDuplicates!0 (array!43621 (_ BitVec 32) List!14903) Bool)

(assert (=> b!802734 (= res!547424 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14900))))

(declare-fun b!802738 () Bool)

(declare-fun res!547430 () Bool)

(assert (=> b!802738 (=> (not res!547430) (not e!444867))))

(declare-fun arrayContainsKey!0 (array!43621 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!802738 (= res!547430 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!802739 () Bool)

(declare-fun e!444869 () Bool)

(assert (=> b!802739 (= e!444868 e!444869)))

(declare-fun res!547422 () Bool)

(assert (=> b!802739 (=> (not res!547422) (not e!444869))))

(assert (=> b!802739 (= res!547422 (= (seekEntryOrOpen!0 lt!359133 lt!359130 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!359133 lt!359130 mask!3266)))))

(assert (=> b!802739 (= lt!359133 (select (store (arr!20887 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!802739 (= lt!359130 (array!43622 (store (arr!20887 a!3170) i!1163 k0!2044) (size!21308 a!3170)))))

(declare-fun b!802740 () Bool)

(declare-fun res!547429 () Bool)

(assert (=> b!802740 (=> (not res!547429) (not e!444867))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!802740 (= res!547429 (validKeyInArray!0 (select (arr!20887 a!3170) j!153)))))

(declare-fun b!802741 () Bool)

(assert (=> b!802741 (= e!444869 e!444871)))

(declare-fun res!547431 () Bool)

(assert (=> b!802741 (=> (not res!547431) (not e!444871))))

(declare-fun lt!359132 () SeekEntryResult!8485)

(declare-fun lt!359129 () SeekEntryResult!8485)

(assert (=> b!802741 (= res!547431 (and (= lt!359129 lt!359132) (= lt!359132 (Found!8485 j!153)) (not (= (select (arr!20887 a!3170) index!1236) (select (arr!20887 a!3170) j!153)))))))

(assert (=> b!802741 (= lt!359132 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20887 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!802741 (= lt!359129 (seekEntryOrOpen!0 (select (arr!20887 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!802742 () Bool)

(declare-fun res!547427 () Bool)

(assert (=> b!802742 (=> (not res!547427) (not e!444867))))

(assert (=> b!802742 (= res!547427 (validKeyInArray!0 k0!2044))))

(declare-fun b!802743 () Bool)

(declare-fun res!547426 () Bool)

(assert (=> b!802743 (=> (not res!547426) (not e!444868))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43621 (_ BitVec 32)) Bool)

(assert (=> b!802743 (= res!547426 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(assert (= (and start!68880 res!547432) b!802736))

(assert (= (and b!802736 res!547423) b!802740))

(assert (= (and b!802740 res!547429) b!802742))

(assert (= (and b!802742 res!547427) b!802738))

(assert (= (and b!802738 res!547430) b!802733))

(assert (= (and b!802733 res!547425) b!802743))

(assert (= (and b!802743 res!547426) b!802734))

(assert (= (and b!802734 res!547424) b!802735))

(assert (= (and b!802735 res!547428) b!802739))

(assert (= (and b!802739 res!547422) b!802741))

(assert (= (and b!802741 res!547431) b!802737))

(declare-fun m!744411 () Bool)

(assert (=> start!68880 m!744411))

(declare-fun m!744413 () Bool)

(assert (=> start!68880 m!744413))

(declare-fun m!744415 () Bool)

(assert (=> b!802738 m!744415))

(declare-fun m!744417 () Bool)

(assert (=> b!802739 m!744417))

(declare-fun m!744419 () Bool)

(assert (=> b!802739 m!744419))

(declare-fun m!744421 () Bool)

(assert (=> b!802739 m!744421))

(declare-fun m!744423 () Bool)

(assert (=> b!802739 m!744423))

(declare-fun m!744425 () Bool)

(assert (=> b!802742 m!744425))

(declare-fun m!744427 () Bool)

(assert (=> b!802734 m!744427))

(declare-fun m!744429 () Bool)

(assert (=> b!802740 m!744429))

(assert (=> b!802740 m!744429))

(declare-fun m!744431 () Bool)

(assert (=> b!802740 m!744431))

(declare-fun m!744433 () Bool)

(assert (=> b!802741 m!744433))

(assert (=> b!802741 m!744429))

(assert (=> b!802741 m!744429))

(declare-fun m!744435 () Bool)

(assert (=> b!802741 m!744435))

(assert (=> b!802741 m!744429))

(declare-fun m!744437 () Bool)

(assert (=> b!802741 m!744437))

(declare-fun m!744439 () Bool)

(assert (=> b!802733 m!744439))

(assert (=> b!802737 m!744429))

(declare-fun m!744441 () Bool)

(assert (=> b!802737 m!744441))

(assert (=> b!802737 m!744429))

(declare-fun m!744443 () Bool)

(assert (=> b!802737 m!744443))

(declare-fun m!744445 () Bool)

(assert (=> b!802737 m!744445))

(declare-fun m!744447 () Bool)

(assert (=> b!802737 m!744447))

(declare-fun m!744449 () Bool)

(assert (=> b!802743 m!744449))

(declare-fun m!744451 () Bool)

(assert (=> b!802735 m!744451))

(declare-fun m!744453 () Bool)

(assert (=> b!802735 m!744453))

(check-sat (not start!68880) (not b!802739) (not b!802741) (not b!802738) (not b!802734) (not b!802737) (not b!802740) (not b!802743) (not b!802742) (not b!802733))
(check-sat)
