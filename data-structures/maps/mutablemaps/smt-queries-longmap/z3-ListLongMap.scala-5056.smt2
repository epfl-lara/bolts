; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68868 () Bool)

(assert start!68868)

(declare-fun b!802526 () Bool)

(declare-fun res!547224 () Bool)

(declare-fun e!444771 () Bool)

(assert (=> b!802526 (=> (not res!547224) (not e!444771))))

(declare-datatypes ((array!43609 0))(
  ( (array!43610 (arr!20881 (Array (_ BitVec 32) (_ BitVec 64))) (size!21302 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43609)

(declare-datatypes ((List!14897 0))(
  ( (Nil!14894) (Cons!14893 (h!16022 (_ BitVec 64)) (t!21220 List!14897)) )
))
(declare-fun arrayNoDuplicates!0 (array!43609 (_ BitVec 32) List!14897) Bool)

(assert (=> b!802526 (= res!547224 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14894))))

(declare-fun b!802527 () Bool)

(declare-fun res!547219 () Bool)

(declare-fun e!444768 () Bool)

(assert (=> b!802527 (=> (not res!547219) (not e!444768))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!802527 (= res!547219 (validKeyInArray!0 k0!2044))))

(declare-fun b!802528 () Bool)

(declare-fun res!547215 () Bool)

(assert (=> b!802528 (=> (not res!547215) (not e!444768))))

(declare-fun arrayContainsKey!0 (array!43609 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!802528 (= res!547215 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!802529 () Bool)

(declare-fun res!547220 () Bool)

(assert (=> b!802529 (=> (not res!547220) (not e!444771))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43609 (_ BitVec 32)) Bool)

(assert (=> b!802529 (= res!547220 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!802530 () Bool)

(declare-fun res!547223 () Bool)

(assert (=> b!802530 (=> (not res!547223) (not e!444768))))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!802530 (= res!547223 (and (= (size!21302 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21302 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21302 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!802531 () Bool)

(declare-fun e!444772 () Bool)

(assert (=> b!802531 (= e!444771 e!444772)))

(declare-fun res!547216 () Bool)

(assert (=> b!802531 (=> (not res!547216) (not e!444772))))

(declare-fun lt!358977 () array!43609)

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!358980 () (_ BitVec 64))

(declare-fun index!1236 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8479 0))(
  ( (MissingZero!8479 (index!36283 (_ BitVec 32))) (Found!8479 (index!36284 (_ BitVec 32))) (Intermediate!8479 (undefined!9291 Bool) (index!36285 (_ BitVec 32)) (x!67158 (_ BitVec 32))) (Undefined!8479) (MissingVacant!8479 (index!36286 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43609 (_ BitVec 32)) SeekEntryResult!8479)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43609 (_ BitVec 32)) SeekEntryResult!8479)

(assert (=> b!802531 (= res!547216 (= (seekEntryOrOpen!0 lt!358980 lt!358977 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!358980 lt!358977 mask!3266)))))

(assert (=> b!802531 (= lt!358980 (select (store (arr!20881 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!802531 (= lt!358977 (array!43610 (store (arr!20881 a!3170) i!1163 k0!2044) (size!21302 a!3170)))))

(declare-fun b!802532 () Bool)

(declare-fun e!444770 () Bool)

(assert (=> b!802532 (= e!444772 e!444770)))

(declare-fun res!547221 () Bool)

(assert (=> b!802532 (=> (not res!547221) (not e!444770))))

(declare-fun lt!358978 () SeekEntryResult!8479)

(declare-fun lt!358979 () SeekEntryResult!8479)

(assert (=> b!802532 (= res!547221 (and (= lt!358978 lt!358979) (= lt!358979 (Found!8479 j!153)) (not (= (select (arr!20881 a!3170) index!1236) (select (arr!20881 a!3170) j!153)))))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!802532 (= lt!358979 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20881 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!802532 (= lt!358978 (seekEntryOrOpen!0 (select (arr!20881 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!802533 () Bool)

(declare-fun res!547222 () Bool)

(assert (=> b!802533 (=> (not res!547222) (not e!444768))))

(assert (=> b!802533 (= res!547222 (validKeyInArray!0 (select (arr!20881 a!3170) j!153)))))

(declare-fun b!802535 () Bool)

(declare-fun res!547218 () Bool)

(assert (=> b!802535 (=> (not res!547218) (not e!444771))))

(assert (=> b!802535 (= res!547218 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21302 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20881 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21302 a!3170)) (= (select (arr!20881 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!802536 () Bool)

(assert (=> b!802536 (= e!444768 e!444771)))

(declare-fun res!547225 () Bool)

(assert (=> b!802536 (=> (not res!547225) (not e!444771))))

(declare-fun lt!358976 () SeekEntryResult!8479)

(assert (=> b!802536 (= res!547225 (or (= lt!358976 (MissingZero!8479 i!1163)) (= lt!358976 (MissingVacant!8479 i!1163))))))

(assert (=> b!802536 (= lt!358976 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!802534 () Bool)

(assert (=> b!802534 (= e!444770 (not true))))

(declare-fun lt!358981 () (_ BitVec 32))

(assert (=> b!802534 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!358981 vacantAfter!23 lt!358980 lt!358977 mask!3266) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!358981 vacantBefore!23 (select (arr!20881 a!3170) j!153) a!3170 mask!3266))))

(declare-datatypes ((Unit!27500 0))(
  ( (Unit!27501) )
))
(declare-fun lt!358975 () Unit!27500)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!43609 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27500)

(assert (=> b!802534 (= lt!358975 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3170 i!1163 k0!2044 j!153 lt!358981 (bvadd #b00000000000000000000000000000001 x!1077) vacantBefore!23 vacantAfter!23 mask!3266))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!802534 (= lt!358981 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun res!547217 () Bool)

(assert (=> start!68868 (=> (not res!547217) (not e!444768))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68868 (= res!547217 (validMask!0 mask!3266))))

(assert (=> start!68868 e!444768))

(assert (=> start!68868 true))

(declare-fun array_inv!16655 (array!43609) Bool)

(assert (=> start!68868 (array_inv!16655 a!3170)))

(assert (= (and start!68868 res!547217) b!802530))

(assert (= (and b!802530 res!547223) b!802533))

(assert (= (and b!802533 res!547222) b!802527))

(assert (= (and b!802527 res!547219) b!802528))

(assert (= (and b!802528 res!547215) b!802536))

(assert (= (and b!802536 res!547225) b!802529))

(assert (= (and b!802529 res!547220) b!802526))

(assert (= (and b!802526 res!547224) b!802535))

(assert (= (and b!802535 res!547218) b!802531))

(assert (= (and b!802531 res!547216) b!802532))

(assert (= (and b!802532 res!547221) b!802534))

(declare-fun m!744147 () Bool)

(assert (=> start!68868 m!744147))

(declare-fun m!744149 () Bool)

(assert (=> start!68868 m!744149))

(declare-fun m!744151 () Bool)

(assert (=> b!802526 m!744151))

(declare-fun m!744153 () Bool)

(assert (=> b!802529 m!744153))

(declare-fun m!744155 () Bool)

(assert (=> b!802531 m!744155))

(declare-fun m!744157 () Bool)

(assert (=> b!802531 m!744157))

(declare-fun m!744159 () Bool)

(assert (=> b!802531 m!744159))

(declare-fun m!744161 () Bool)

(assert (=> b!802531 m!744161))

(declare-fun m!744163 () Bool)

(assert (=> b!802534 m!744163))

(declare-fun m!744165 () Bool)

(assert (=> b!802534 m!744165))

(assert (=> b!802534 m!744163))

(declare-fun m!744167 () Bool)

(assert (=> b!802534 m!744167))

(declare-fun m!744169 () Bool)

(assert (=> b!802534 m!744169))

(declare-fun m!744171 () Bool)

(assert (=> b!802534 m!744171))

(declare-fun m!744173 () Bool)

(assert (=> b!802532 m!744173))

(assert (=> b!802532 m!744163))

(assert (=> b!802532 m!744163))

(declare-fun m!744175 () Bool)

(assert (=> b!802532 m!744175))

(assert (=> b!802532 m!744163))

(declare-fun m!744177 () Bool)

(assert (=> b!802532 m!744177))

(declare-fun m!744179 () Bool)

(assert (=> b!802527 m!744179))

(declare-fun m!744181 () Bool)

(assert (=> b!802535 m!744181))

(declare-fun m!744183 () Bool)

(assert (=> b!802535 m!744183))

(assert (=> b!802533 m!744163))

(assert (=> b!802533 m!744163))

(declare-fun m!744185 () Bool)

(assert (=> b!802533 m!744185))

(declare-fun m!744187 () Bool)

(assert (=> b!802528 m!744187))

(declare-fun m!744189 () Bool)

(assert (=> b!802536 m!744189))

(check-sat (not b!802532) (not start!68868) (not b!802536) (not b!802534) (not b!802531) (not b!802529) (not b!802528) (not b!802526) (not b!802527) (not b!802533))
(check-sat)
