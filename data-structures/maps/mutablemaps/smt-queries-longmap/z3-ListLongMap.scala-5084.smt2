; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!69036 () Bool)

(assert start!69036)

(declare-fun b!805014 () Bool)

(declare-fun res!549704 () Bool)

(declare-fun e!445881 () Bool)

(assert (=> b!805014 (=> (not res!549704) (not e!445881))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(declare-datatypes ((array!43777 0))(
  ( (array!43778 (arr!20965 (Array (_ BitVec 32) (_ BitVec 64))) (size!21386 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43777)

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!805014 (= res!549704 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21386 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20965 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21386 a!3170)) (= (select (arr!20965 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!805015 () Bool)

(declare-fun res!549703 () Bool)

(assert (=> b!805015 (=> (not res!549703) (not e!445881))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43777 (_ BitVec 32)) Bool)

(assert (=> b!805015 (= res!549703 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!805016 () Bool)

(declare-fun res!549707 () Bool)

(assert (=> b!805016 (=> (not res!549707) (not e!445881))))

(declare-datatypes ((List!14981 0))(
  ( (Nil!14978) (Cons!14977 (h!16106 (_ BitVec 64)) (t!21304 List!14981)) )
))
(declare-fun arrayNoDuplicates!0 (array!43777 (_ BitVec 32) List!14981) Bool)

(assert (=> b!805016 (= res!549707 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14978))))

(declare-fun b!805017 () Bool)

(declare-fun res!549711 () Bool)

(declare-fun e!445880 () Bool)

(assert (=> b!805017 (=> (not res!549711) (not e!445880))))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!805017 (= res!549711 (and (= (size!21386 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21386 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21386 a!3170)) (not (= i!1163 j!153))))))

(declare-fun res!549710 () Bool)

(assert (=> start!69036 (=> (not res!549710) (not e!445880))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69036 (= res!549710 (validMask!0 mask!3266))))

(assert (=> start!69036 e!445880))

(assert (=> start!69036 true))

(declare-fun array_inv!16739 (array!43777) Bool)

(assert (=> start!69036 (array_inv!16739 a!3170)))

(declare-fun b!805018 () Bool)

(declare-fun e!445882 () Bool)

(assert (=> b!805018 (= e!445881 e!445882)))

(declare-fun res!549708 () Bool)

(assert (=> b!805018 (=> (not res!549708) (not e!445882))))

(declare-fun lt!360442 () (_ BitVec 64))

(declare-fun lt!360443 () array!43777)

(declare-datatypes ((SeekEntryResult!8563 0))(
  ( (MissingZero!8563 (index!36619 (_ BitVec 32))) (Found!8563 (index!36620 (_ BitVec 32))) (Intermediate!8563 (undefined!9375 Bool) (index!36621 (_ BitVec 32)) (x!67466 (_ BitVec 32))) (Undefined!8563) (MissingVacant!8563 (index!36622 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43777 (_ BitVec 32)) SeekEntryResult!8563)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43777 (_ BitVec 32)) SeekEntryResult!8563)

(assert (=> b!805018 (= res!549708 (= (seekEntryOrOpen!0 lt!360442 lt!360443 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!360442 lt!360443 mask!3266)))))

(declare-fun k0!2044 () (_ BitVec 64))

(assert (=> b!805018 (= lt!360442 (select (store (arr!20965 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!805018 (= lt!360443 (array!43778 (store (arr!20965 a!3170) i!1163 k0!2044) (size!21386 a!3170)))))

(declare-fun b!805019 () Bool)

(assert (=> b!805019 (= e!445882 false)))

(declare-fun lt!360441 () SeekEntryResult!8563)

(assert (=> b!805019 (= lt!360441 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20965 a!3170) j!153) a!3170 mask!3266))))

(declare-fun lt!360445 () SeekEntryResult!8563)

(assert (=> b!805019 (= lt!360445 (seekEntryOrOpen!0 (select (arr!20965 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!805020 () Bool)

(declare-fun res!549705 () Bool)

(assert (=> b!805020 (=> (not res!549705) (not e!445880))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!805020 (= res!549705 (validKeyInArray!0 (select (arr!20965 a!3170) j!153)))))

(declare-fun b!805021 () Bool)

(declare-fun res!549712 () Bool)

(assert (=> b!805021 (=> (not res!549712) (not e!445880))))

(assert (=> b!805021 (= res!549712 (validKeyInArray!0 k0!2044))))

(declare-fun b!805022 () Bool)

(assert (=> b!805022 (= e!445880 e!445881)))

(declare-fun res!549709 () Bool)

(assert (=> b!805022 (=> (not res!549709) (not e!445881))))

(declare-fun lt!360444 () SeekEntryResult!8563)

(assert (=> b!805022 (= res!549709 (or (= lt!360444 (MissingZero!8563 i!1163)) (= lt!360444 (MissingVacant!8563 i!1163))))))

(assert (=> b!805022 (= lt!360444 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!805023 () Bool)

(declare-fun res!549706 () Bool)

(assert (=> b!805023 (=> (not res!549706) (not e!445880))))

(declare-fun arrayContainsKey!0 (array!43777 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!805023 (= res!549706 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(assert (= (and start!69036 res!549710) b!805017))

(assert (= (and b!805017 res!549711) b!805020))

(assert (= (and b!805020 res!549705) b!805021))

(assert (= (and b!805021 res!549712) b!805023))

(assert (= (and b!805023 res!549706) b!805022))

(assert (= (and b!805022 res!549709) b!805015))

(assert (= (and b!805015 res!549703) b!805016))

(assert (= (and b!805016 res!549707) b!805014))

(assert (= (and b!805014 res!549704) b!805018))

(assert (= (and b!805018 res!549708) b!805019))

(declare-fun m!747023 () Bool)

(assert (=> start!69036 m!747023))

(declare-fun m!747025 () Bool)

(assert (=> start!69036 m!747025))

(declare-fun m!747027 () Bool)

(assert (=> b!805019 m!747027))

(assert (=> b!805019 m!747027))

(declare-fun m!747029 () Bool)

(assert (=> b!805019 m!747029))

(assert (=> b!805019 m!747027))

(declare-fun m!747031 () Bool)

(assert (=> b!805019 m!747031))

(declare-fun m!747033 () Bool)

(assert (=> b!805021 m!747033))

(assert (=> b!805020 m!747027))

(assert (=> b!805020 m!747027))

(declare-fun m!747035 () Bool)

(assert (=> b!805020 m!747035))

(declare-fun m!747037 () Bool)

(assert (=> b!805018 m!747037))

(declare-fun m!747039 () Bool)

(assert (=> b!805018 m!747039))

(declare-fun m!747041 () Bool)

(assert (=> b!805018 m!747041))

(declare-fun m!747043 () Bool)

(assert (=> b!805018 m!747043))

(declare-fun m!747045 () Bool)

(assert (=> b!805014 m!747045))

(declare-fun m!747047 () Bool)

(assert (=> b!805014 m!747047))

(declare-fun m!747049 () Bool)

(assert (=> b!805016 m!747049))

(declare-fun m!747051 () Bool)

(assert (=> b!805015 m!747051))

(declare-fun m!747053 () Bool)

(assert (=> b!805023 m!747053))

(declare-fun m!747055 () Bool)

(assert (=> b!805022 m!747055))

(check-sat (not b!805016) (not start!69036) (not b!805019) (not b!805020) (not b!805023) (not b!805021) (not b!805015) (not b!805022) (not b!805018))
(check-sat)
