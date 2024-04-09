; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!69420 () Bool)

(assert start!69420)

(declare-fun b!809015 () Bool)

(declare-fun res!552920 () Bool)

(declare-fun e!447864 () Bool)

(assert (=> b!809015 (=> (not res!552920) (not e!447864))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(declare-datatypes ((array!43969 0))(
  ( (array!43970 (arr!21055 (Array (_ BitVec 32) (_ BitVec 64))) (size!21476 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43969)

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!809015 (= res!552920 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21476 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!21055 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21476 a!3170)) (= (select (arr!21055 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!809016 () Bool)

(declare-fun e!447867 () Bool)

(assert (=> b!809016 (= e!447864 e!447867)))

(declare-fun res!552917 () Bool)

(assert (=> b!809016 (=> (not res!552917) (not e!447867))))

(declare-fun lt!362550 () (_ BitVec 64))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun lt!362549 () array!43969)

(declare-datatypes ((SeekEntryResult!8653 0))(
  ( (MissingZero!8653 (index!36979 (_ BitVec 32))) (Found!8653 (index!36980 (_ BitVec 32))) (Intermediate!8653 (undefined!9465 Bool) (index!36981 (_ BitVec 32)) (x!67814 (_ BitVec 32))) (Undefined!8653) (MissingVacant!8653 (index!36982 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43969 (_ BitVec 32)) SeekEntryResult!8653)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43969 (_ BitVec 32)) SeekEntryResult!8653)

(assert (=> b!809016 (= res!552917 (= (seekEntryOrOpen!0 lt!362550 lt!362549 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!362550 lt!362549 mask!3266)))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!809016 (= lt!362550 (select (store (arr!21055 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!809016 (= lt!362549 (array!43970 (store (arr!21055 a!3170) i!1163 k0!2044) (size!21476 a!3170)))))

(declare-fun b!809017 () Bool)

(declare-fun res!552912 () Bool)

(declare-fun e!447865 () Bool)

(assert (=> b!809017 (=> (not res!552912) (not e!447865))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!809017 (= res!552912 (validKeyInArray!0 (select (arr!21055 a!3170) j!153)))))

(declare-fun b!809018 () Bool)

(assert (=> b!809018 (= e!447865 e!447864)))

(declare-fun res!552915 () Bool)

(assert (=> b!809018 (=> (not res!552915) (not e!447864))))

(declare-fun lt!362551 () SeekEntryResult!8653)

(assert (=> b!809018 (= res!552915 (or (= lt!362551 (MissingZero!8653 i!1163)) (= lt!362551 (MissingVacant!8653 i!1163))))))

(assert (=> b!809018 (= lt!362551 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!809019 () Bool)

(declare-fun res!552921 () Bool)

(assert (=> b!809019 (=> (not res!552921) (not e!447864))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43969 (_ BitVec 32)) Bool)

(assert (=> b!809019 (= res!552921 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!809020 () Bool)

(declare-fun res!552918 () Bool)

(assert (=> b!809020 (=> (not res!552918) (not e!447865))))

(assert (=> b!809020 (= res!552918 (validKeyInArray!0 k0!2044))))

(declare-fun b!809022 () Bool)

(declare-fun res!552922 () Bool)

(assert (=> b!809022 (=> (not res!552922) (not e!447865))))

(assert (=> b!809022 (= res!552922 (and (= (size!21476 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21476 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21476 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!809023 () Bool)

(declare-fun res!552914 () Bool)

(assert (=> b!809023 (=> (not res!552914) (not e!447864))))

(declare-datatypes ((List!15071 0))(
  ( (Nil!15068) (Cons!15067 (h!16196 (_ BitVec 64)) (t!21394 List!15071)) )
))
(declare-fun arrayNoDuplicates!0 (array!43969 (_ BitVec 32) List!15071) Bool)

(assert (=> b!809023 (= res!552914 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15068))))

(declare-fun b!809024 () Bool)

(declare-fun e!447866 () Bool)

(assert (=> b!809024 (= e!447866 false)))

(declare-fun lt!362553 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!809024 (= lt!362553 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!809025 () Bool)

(declare-fun res!552919 () Bool)

(assert (=> b!809025 (=> (not res!552919) (not e!447865))))

(declare-fun arrayContainsKey!0 (array!43969 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!809025 (= res!552919 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun res!552916 () Bool)

(assert (=> start!69420 (=> (not res!552916) (not e!447865))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69420 (= res!552916 (validMask!0 mask!3266))))

(assert (=> start!69420 e!447865))

(assert (=> start!69420 true))

(declare-fun array_inv!16829 (array!43969) Bool)

(assert (=> start!69420 (array_inv!16829 a!3170)))

(declare-fun b!809021 () Bool)

(assert (=> b!809021 (= e!447867 e!447866)))

(declare-fun res!552913 () Bool)

(assert (=> b!809021 (=> (not res!552913) (not e!447866))))

(declare-fun lt!362552 () SeekEntryResult!8653)

(declare-fun lt!362554 () SeekEntryResult!8653)

(assert (=> b!809021 (= res!552913 (and (= lt!362552 lt!362554) (= lt!362554 (Found!8653 j!153)) (not (= (select (arr!21055 a!3170) index!1236) (select (arr!21055 a!3170) j!153)))))))

(assert (=> b!809021 (= lt!362554 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21055 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!809021 (= lt!362552 (seekEntryOrOpen!0 (select (arr!21055 a!3170) j!153) a!3170 mask!3266))))

(assert (= (and start!69420 res!552916) b!809022))

(assert (= (and b!809022 res!552922) b!809017))

(assert (= (and b!809017 res!552912) b!809020))

(assert (= (and b!809020 res!552918) b!809025))

(assert (= (and b!809025 res!552919) b!809018))

(assert (= (and b!809018 res!552915) b!809019))

(assert (= (and b!809019 res!552921) b!809023))

(assert (= (and b!809023 res!552914) b!809015))

(assert (= (and b!809015 res!552920) b!809016))

(assert (= (and b!809016 res!552917) b!809021))

(assert (= (and b!809021 res!552913) b!809024))

(declare-fun m!751263 () Bool)

(assert (=> b!809024 m!751263))

(declare-fun m!751265 () Bool)

(assert (=> b!809017 m!751265))

(assert (=> b!809017 m!751265))

(declare-fun m!751267 () Bool)

(assert (=> b!809017 m!751267))

(declare-fun m!751269 () Bool)

(assert (=> b!809016 m!751269))

(declare-fun m!751271 () Bool)

(assert (=> b!809016 m!751271))

(declare-fun m!751273 () Bool)

(assert (=> b!809016 m!751273))

(declare-fun m!751275 () Bool)

(assert (=> b!809016 m!751275))

(declare-fun m!751277 () Bool)

(assert (=> b!809021 m!751277))

(assert (=> b!809021 m!751265))

(assert (=> b!809021 m!751265))

(declare-fun m!751279 () Bool)

(assert (=> b!809021 m!751279))

(assert (=> b!809021 m!751265))

(declare-fun m!751281 () Bool)

(assert (=> b!809021 m!751281))

(declare-fun m!751283 () Bool)

(assert (=> b!809025 m!751283))

(declare-fun m!751285 () Bool)

(assert (=> b!809023 m!751285))

(declare-fun m!751287 () Bool)

(assert (=> b!809019 m!751287))

(declare-fun m!751289 () Bool)

(assert (=> start!69420 m!751289))

(declare-fun m!751291 () Bool)

(assert (=> start!69420 m!751291))

(declare-fun m!751293 () Bool)

(assert (=> b!809015 m!751293))

(declare-fun m!751295 () Bool)

(assert (=> b!809015 m!751295))

(declare-fun m!751297 () Bool)

(assert (=> b!809020 m!751297))

(declare-fun m!751299 () Bool)

(assert (=> b!809018 m!751299))

(check-sat (not b!809020) (not start!69420) (not b!809016) (not b!809025) (not b!809019) (not b!809023) (not b!809024) (not b!809018) (not b!809017) (not b!809021))
(check-sat)
