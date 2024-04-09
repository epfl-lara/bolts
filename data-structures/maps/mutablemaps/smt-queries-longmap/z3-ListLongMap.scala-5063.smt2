; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68910 () Bool)

(assert start!68910)

(declare-fun res!547964 () Bool)

(declare-fun e!445138 () Bool)

(assert (=> start!68910 (=> (not res!547964) (not e!445138))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68910 (= res!547964 (validMask!0 mask!3266))))

(assert (=> start!68910 e!445138))

(assert (=> start!68910 true))

(declare-datatypes ((array!43651 0))(
  ( (array!43652 (arr!20902 (Array (_ BitVec 32) (_ BitVec 64))) (size!21323 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43651)

(declare-fun array_inv!16676 (array!43651) Bool)

(assert (=> start!68910 (array_inv!16676 a!3170)))

(declare-fun b!803269 () Bool)

(declare-fun res!547961 () Bool)

(assert (=> b!803269 (=> (not res!547961) (not e!445138))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!43651 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!803269 (= res!547961 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!803270 () Bool)

(declare-fun res!547968 () Bool)

(declare-fun e!445136 () Bool)

(assert (=> b!803270 (=> (not res!547968) (not e!445136))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!803270 (= res!547968 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21323 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20902 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21323 a!3170)) (= (select (arr!20902 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!803271 () Bool)

(declare-fun e!445135 () Bool)

(declare-fun e!445134 () Bool)

(assert (=> b!803271 (= e!445135 e!445134)))

(declare-fun res!547963 () Bool)

(assert (=> b!803271 (=> (not res!547963) (not e!445134))))

(declare-datatypes ((SeekEntryResult!8500 0))(
  ( (MissingZero!8500 (index!36367 (_ BitVec 32))) (Found!8500 (index!36368 (_ BitVec 32))) (Intermediate!8500 (undefined!9312 Bool) (index!36369 (_ BitVec 32)) (x!67235 (_ BitVec 32))) (Undefined!8500) (MissingVacant!8500 (index!36370 (_ BitVec 32))) )
))
(declare-fun lt!359546 () SeekEntryResult!8500)

(declare-fun lt!359543 () SeekEntryResult!8500)

(assert (=> b!803271 (= res!547963 (= lt!359546 lt!359543))))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43651 (_ BitVec 32)) SeekEntryResult!8500)

(assert (=> b!803271 (= lt!359543 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20902 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43651 (_ BitVec 32)) SeekEntryResult!8500)

(assert (=> b!803271 (= lt!359546 (seekEntryOrOpen!0 (select (arr!20902 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!803272 () Bool)

(assert (=> b!803272 (= e!445136 e!445135)))

(declare-fun res!547959 () Bool)

(assert (=> b!803272 (=> (not res!547959) (not e!445135))))

(declare-fun lt!359548 () SeekEntryResult!8500)

(declare-fun lt!359541 () SeekEntryResult!8500)

(assert (=> b!803272 (= res!547959 (= lt!359548 lt!359541))))

(declare-fun lt!359547 () (_ BitVec 64))

(declare-fun lt!359539 () array!43651)

(assert (=> b!803272 (= lt!359541 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!359547 lt!359539 mask!3266))))

(assert (=> b!803272 (= lt!359548 (seekEntryOrOpen!0 lt!359547 lt!359539 mask!3266))))

(assert (=> b!803272 (= lt!359547 (select (store (arr!20902 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!803272 (= lt!359539 (array!43652 (store (arr!20902 a!3170) i!1163 k0!2044) (size!21323 a!3170)))))

(declare-fun b!803273 () Bool)

(assert (=> b!803273 (= e!445138 e!445136)))

(declare-fun res!547969 () Bool)

(assert (=> b!803273 (=> (not res!547969) (not e!445136))))

(declare-fun lt!359544 () SeekEntryResult!8500)

(assert (=> b!803273 (= res!547969 (or (= lt!359544 (MissingZero!8500 i!1163)) (= lt!359544 (MissingVacant!8500 i!1163))))))

(assert (=> b!803273 (= lt!359544 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!803274 () Bool)

(declare-fun e!445137 () Bool)

(assert (=> b!803274 (= e!445134 e!445137)))

(declare-fun res!547967 () Bool)

(assert (=> b!803274 (=> (not res!547967) (not e!445137))))

(declare-fun lt!359545 () SeekEntryResult!8500)

(assert (=> b!803274 (= res!547967 (and (= lt!359543 lt!359545) (not (= (select (arr!20902 a!3170) index!1236) (select (arr!20902 a!3170) j!153)))))))

(assert (=> b!803274 (= lt!359545 (Found!8500 j!153))))

(declare-fun b!803275 () Bool)

(declare-fun res!547960 () Bool)

(assert (=> b!803275 (=> (not res!547960) (not e!445138))))

(assert (=> b!803275 (= res!547960 (and (= (size!21323 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21323 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21323 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!803276 () Bool)

(assert (=> b!803276 (= e!445137 (not (or (not (= lt!359541 lt!359545)) (bvsge mask!3266 #b00000000000000000000000000000000))))))

(declare-fun lt!359542 () (_ BitVec 32))

(assert (=> b!803276 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!359542 vacantAfter!23 lt!359547 lt!359539 mask!3266) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!359542 vacantBefore!23 (select (arr!20902 a!3170) j!153) a!3170 mask!3266))))

(declare-datatypes ((Unit!27542 0))(
  ( (Unit!27543) )
))
(declare-fun lt!359540 () Unit!27542)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!43651 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27542)

(assert (=> b!803276 (= lt!359540 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3170 i!1163 k0!2044 j!153 lt!359542 (bvadd #b00000000000000000000000000000001 x!1077) vacantBefore!23 vacantAfter!23 mask!3266))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!803276 (= lt!359542 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!803277 () Bool)

(declare-fun res!547966 () Bool)

(assert (=> b!803277 (=> (not res!547966) (not e!445136))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43651 (_ BitVec 32)) Bool)

(assert (=> b!803277 (= res!547966 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!803278 () Bool)

(declare-fun res!547962 () Bool)

(assert (=> b!803278 (=> (not res!547962) (not e!445136))))

(declare-datatypes ((List!14918 0))(
  ( (Nil!14915) (Cons!14914 (h!16043 (_ BitVec 64)) (t!21241 List!14918)) )
))
(declare-fun arrayNoDuplicates!0 (array!43651 (_ BitVec 32) List!14918) Bool)

(assert (=> b!803278 (= res!547962 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14915))))

(declare-fun b!803279 () Bool)

(declare-fun res!547965 () Bool)

(assert (=> b!803279 (=> (not res!547965) (not e!445138))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!803279 (= res!547965 (validKeyInArray!0 k0!2044))))

(declare-fun b!803280 () Bool)

(declare-fun res!547958 () Bool)

(assert (=> b!803280 (=> (not res!547958) (not e!445138))))

(assert (=> b!803280 (= res!547958 (validKeyInArray!0 (select (arr!20902 a!3170) j!153)))))

(assert (= (and start!68910 res!547964) b!803275))

(assert (= (and b!803275 res!547960) b!803280))

(assert (= (and b!803280 res!547958) b!803279))

(assert (= (and b!803279 res!547965) b!803269))

(assert (= (and b!803269 res!547961) b!803273))

(assert (= (and b!803273 res!547969) b!803277))

(assert (= (and b!803277 res!547966) b!803278))

(assert (= (and b!803278 res!547962) b!803270))

(assert (= (and b!803270 res!547968) b!803272))

(assert (= (and b!803272 res!547959) b!803271))

(assert (= (and b!803271 res!547963) b!803274))

(assert (= (and b!803274 res!547967) b!803276))

(declare-fun m!745089 () Bool)

(assert (=> b!803276 m!745089))

(declare-fun m!745091 () Bool)

(assert (=> b!803276 m!745091))

(declare-fun m!745093 () Bool)

(assert (=> b!803276 m!745093))

(declare-fun m!745095 () Bool)

(assert (=> b!803276 m!745095))

(assert (=> b!803276 m!745089))

(declare-fun m!745097 () Bool)

(assert (=> b!803276 m!745097))

(declare-fun m!745099 () Bool)

(assert (=> b!803274 m!745099))

(assert (=> b!803274 m!745089))

(assert (=> b!803280 m!745089))

(assert (=> b!803280 m!745089))

(declare-fun m!745101 () Bool)

(assert (=> b!803280 m!745101))

(declare-fun m!745103 () Bool)

(assert (=> b!803272 m!745103))

(declare-fun m!745105 () Bool)

(assert (=> b!803272 m!745105))

(declare-fun m!745107 () Bool)

(assert (=> b!803272 m!745107))

(declare-fun m!745109 () Bool)

(assert (=> b!803272 m!745109))

(declare-fun m!745111 () Bool)

(assert (=> b!803277 m!745111))

(declare-fun m!745113 () Bool)

(assert (=> b!803270 m!745113))

(declare-fun m!745115 () Bool)

(assert (=> b!803270 m!745115))

(assert (=> b!803271 m!745089))

(assert (=> b!803271 m!745089))

(declare-fun m!745117 () Bool)

(assert (=> b!803271 m!745117))

(assert (=> b!803271 m!745089))

(declare-fun m!745119 () Bool)

(assert (=> b!803271 m!745119))

(declare-fun m!745121 () Bool)

(assert (=> b!803278 m!745121))

(declare-fun m!745123 () Bool)

(assert (=> b!803279 m!745123))

(declare-fun m!745125 () Bool)

(assert (=> start!68910 m!745125))

(declare-fun m!745127 () Bool)

(assert (=> start!68910 m!745127))

(declare-fun m!745129 () Bool)

(assert (=> b!803269 m!745129))

(declare-fun m!745131 () Bool)

(assert (=> b!803273 m!745131))

(check-sat (not b!803273) (not b!803278) (not b!803272) (not b!803277) (not b!803271) (not b!803280) (not b!803279) (not start!68910) (not b!803269) (not b!803276))
(check-sat)
