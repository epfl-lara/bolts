; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!69222 () Bool)

(assert start!69222)

(declare-fun b!807008 () Bool)

(declare-fun res!551310 () Bool)

(declare-fun e!446868 () Bool)

(assert (=> b!807008 (=> (not res!551310) (not e!446868))))

(declare-datatypes ((array!43873 0))(
  ( (array!43874 (arr!21010 (Array (_ BitVec 32) (_ BitVec 64))) (size!21431 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43873)

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!43873 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!807008 (= res!551310 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!807009 () Bool)

(declare-fun res!551308 () Bool)

(assert (=> b!807009 (=> (not res!551308) (not e!446868))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!807009 (= res!551308 (validKeyInArray!0 k0!2044))))

(declare-fun b!807010 () Bool)

(declare-fun e!446865 () Bool)

(assert (=> b!807010 (= e!446868 e!446865)))

(declare-fun res!551309 () Bool)

(assert (=> b!807010 (=> (not res!551309) (not e!446865))))

(declare-datatypes ((SeekEntryResult!8608 0))(
  ( (MissingZero!8608 (index!36799 (_ BitVec 32))) (Found!8608 (index!36800 (_ BitVec 32))) (Intermediate!8608 (undefined!9420 Bool) (index!36801 (_ BitVec 32)) (x!67637 (_ BitVec 32))) (Undefined!8608) (MissingVacant!8608 (index!36802 (_ BitVec 32))) )
))
(declare-fun lt!361533 () SeekEntryResult!8608)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!807010 (= res!551309 (or (= lt!361533 (MissingZero!8608 i!1163)) (= lt!361533 (MissingVacant!8608 i!1163))))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43873 (_ BitVec 32)) SeekEntryResult!8608)

(assert (=> b!807010 (= lt!361533 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!807011 () Bool)

(declare-fun res!551307 () Bool)

(assert (=> b!807011 (=> (not res!551307) (not e!446865))))

(declare-datatypes ((List!15026 0))(
  ( (Nil!15023) (Cons!15022 (h!16151 (_ BitVec 64)) (t!21349 List!15026)) )
))
(declare-fun arrayNoDuplicates!0 (array!43873 (_ BitVec 32) List!15026) Bool)

(assert (=> b!807011 (= res!551307 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15023))))

(declare-fun b!807012 () Bool)

(declare-fun e!446866 () Bool)

(assert (=> b!807012 (= e!446866 false)))

(declare-fun lt!361532 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!807012 (= lt!361532 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!807013 () Bool)

(declare-fun e!446869 () Bool)

(assert (=> b!807013 (= e!446865 e!446869)))

(declare-fun res!551306 () Bool)

(assert (=> b!807013 (=> (not res!551306) (not e!446869))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun lt!361530 () array!43873)

(declare-fun lt!361534 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43873 (_ BitVec 32)) SeekEntryResult!8608)

(assert (=> b!807013 (= res!551306 (= (seekEntryOrOpen!0 lt!361534 lt!361530 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!361534 lt!361530 mask!3266)))))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!807013 (= lt!361534 (select (store (arr!21010 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!807013 (= lt!361530 (array!43874 (store (arr!21010 a!3170) i!1163 k0!2044) (size!21431 a!3170)))))

(declare-fun b!807014 () Bool)

(declare-fun res!551303 () Bool)

(assert (=> b!807014 (=> (not res!551303) (not e!446865))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43873 (_ BitVec 32)) Bool)

(assert (=> b!807014 (= res!551303 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!807016 () Bool)

(assert (=> b!807016 (= e!446869 e!446866)))

(declare-fun res!551311 () Bool)

(assert (=> b!807016 (=> (not res!551311) (not e!446866))))

(declare-fun lt!361531 () SeekEntryResult!8608)

(declare-fun lt!361529 () SeekEntryResult!8608)

(assert (=> b!807016 (= res!551311 (and (= lt!361529 lt!361531) (= lt!361531 (Found!8608 j!153)) (not (= (select (arr!21010 a!3170) index!1236) (select (arr!21010 a!3170) j!153)))))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!807016 (= lt!361531 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21010 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!807016 (= lt!361529 (seekEntryOrOpen!0 (select (arr!21010 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!807017 () Bool)

(declare-fun res!551302 () Bool)

(assert (=> b!807017 (=> (not res!551302) (not e!446865))))

(assert (=> b!807017 (= res!551302 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21431 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!21010 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21431 a!3170)) (= (select (arr!21010 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!807018 () Bool)

(declare-fun res!551301 () Bool)

(assert (=> b!807018 (=> (not res!551301) (not e!446868))))

(assert (=> b!807018 (= res!551301 (and (= (size!21431 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21431 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21431 a!3170)) (not (= i!1163 j!153))))))

(declare-fun res!551305 () Bool)

(assert (=> start!69222 (=> (not res!551305) (not e!446868))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69222 (= res!551305 (validMask!0 mask!3266))))

(assert (=> start!69222 e!446868))

(assert (=> start!69222 true))

(declare-fun array_inv!16784 (array!43873) Bool)

(assert (=> start!69222 (array_inv!16784 a!3170)))

(declare-fun b!807015 () Bool)

(declare-fun res!551304 () Bool)

(assert (=> b!807015 (=> (not res!551304) (not e!446868))))

(assert (=> b!807015 (= res!551304 (validKeyInArray!0 (select (arr!21010 a!3170) j!153)))))

(assert (= (and start!69222 res!551305) b!807018))

(assert (= (and b!807018 res!551301) b!807015))

(assert (= (and b!807015 res!551304) b!807009))

(assert (= (and b!807009 res!551308) b!807008))

(assert (= (and b!807008 res!551310) b!807010))

(assert (= (and b!807010 res!551309) b!807014))

(assert (= (and b!807014 res!551303) b!807011))

(assert (= (and b!807011 res!551307) b!807017))

(assert (= (and b!807017 res!551302) b!807013))

(assert (= (and b!807013 res!551306) b!807016))

(assert (= (and b!807016 res!551311) b!807012))

(declare-fun m!749097 () Bool)

(assert (=> b!807010 m!749097))

(declare-fun m!749099 () Bool)

(assert (=> b!807015 m!749099))

(assert (=> b!807015 m!749099))

(declare-fun m!749101 () Bool)

(assert (=> b!807015 m!749101))

(declare-fun m!749103 () Bool)

(assert (=> b!807009 m!749103))

(declare-fun m!749105 () Bool)

(assert (=> b!807008 m!749105))

(declare-fun m!749107 () Bool)

(assert (=> b!807014 m!749107))

(declare-fun m!749109 () Bool)

(assert (=> b!807016 m!749109))

(assert (=> b!807016 m!749099))

(assert (=> b!807016 m!749099))

(declare-fun m!749111 () Bool)

(assert (=> b!807016 m!749111))

(assert (=> b!807016 m!749099))

(declare-fun m!749113 () Bool)

(assert (=> b!807016 m!749113))

(declare-fun m!749115 () Bool)

(assert (=> b!807013 m!749115))

(declare-fun m!749117 () Bool)

(assert (=> b!807013 m!749117))

(declare-fun m!749119 () Bool)

(assert (=> b!807013 m!749119))

(declare-fun m!749121 () Bool)

(assert (=> b!807013 m!749121))

(declare-fun m!749123 () Bool)

(assert (=> b!807012 m!749123))

(declare-fun m!749125 () Bool)

(assert (=> start!69222 m!749125))

(declare-fun m!749127 () Bool)

(assert (=> start!69222 m!749127))

(declare-fun m!749129 () Bool)

(assert (=> b!807017 m!749129))

(declare-fun m!749131 () Bool)

(assert (=> b!807017 m!749131))

(declare-fun m!749133 () Bool)

(assert (=> b!807011 m!749133))

(check-sat (not b!807013) (not b!807010) (not b!807012) (not b!807011) (not b!807009) (not b!807008) (not b!807015) (not b!807016) (not b!807014) (not start!69222))
(check-sat)
