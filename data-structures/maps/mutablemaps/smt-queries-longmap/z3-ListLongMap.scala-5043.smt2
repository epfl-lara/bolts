; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68790 () Bool)

(assert start!68790)

(declare-fun b!801177 () Bool)

(declare-fun e!444143 () Bool)

(declare-fun e!444148 () Bool)

(assert (=> b!801177 (= e!444143 e!444148)))

(declare-fun res!545866 () Bool)

(assert (=> b!801177 (=> (not res!545866) (not e!444148))))

(declare-datatypes ((SeekEntryResult!8440 0))(
  ( (MissingZero!8440 (index!36127 (_ BitVec 32))) (Found!8440 (index!36128 (_ BitVec 32))) (Intermediate!8440 (undefined!9252 Bool) (index!36129 (_ BitVec 32)) (x!67015 (_ BitVec 32))) (Undefined!8440) (MissingVacant!8440 (index!36130 (_ BitVec 32))) )
))
(declare-fun lt!358114 () SeekEntryResult!8440)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!801177 (= res!545866 (or (= lt!358114 (MissingZero!8440 i!1163)) (= lt!358114 (MissingVacant!8440 i!1163))))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-datatypes ((array!43531 0))(
  ( (array!43532 (arr!20842 (Array (_ BitVec 32) (_ BitVec 64))) (size!21263 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43531)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43531 (_ BitVec 32)) SeekEntryResult!8440)

(assert (=> b!801177 (= lt!358114 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!801178 () Bool)

(declare-fun res!545874 () Bool)

(assert (=> b!801178 (=> (not res!545874) (not e!444143))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!801178 (= res!545874 (validKeyInArray!0 k0!2044))))

(declare-fun b!801179 () Bool)

(declare-fun e!444145 () Bool)

(declare-fun e!444147 () Bool)

(assert (=> b!801179 (= e!444145 e!444147)))

(declare-fun res!545867 () Bool)

(assert (=> b!801179 (=> (not res!545867) (not e!444147))))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!358108 () (_ BitVec 32))

(assert (=> b!801179 (= res!545867 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1077) #b01111111111111111111111111111110) (bvsge (bvadd #b00000000000000000000000000000001 x!1077) #b00000000000000000000000000000000) (bvsge lt!358108 #b00000000000000000000000000000000) (bvslt lt!358108 (size!21263 a!3170))))))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!801179 (= lt!358108 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!801180 () Bool)

(declare-fun e!444144 () Bool)

(assert (=> b!801180 (= e!444144 e!444145)))

(declare-fun res!545875 () Bool)

(assert (=> b!801180 (=> (not res!545875) (not e!444145))))

(declare-fun lt!358109 () SeekEntryResult!8440)

(declare-fun lt!358112 () SeekEntryResult!8440)

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!801180 (= res!545875 (and (= lt!358109 lt!358112) (= lt!358112 (Found!8440 j!153)) (not (= (select (arr!20842 a!3170) index!1236) (select (arr!20842 a!3170) j!153)))))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43531 (_ BitVec 32)) SeekEntryResult!8440)

(assert (=> b!801180 (= lt!358112 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20842 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!801180 (= lt!358109 (seekEntryOrOpen!0 (select (arr!20842 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!801181 () Bool)

(declare-fun res!545869 () Bool)

(assert (=> b!801181 (=> (not res!545869) (not e!444148))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(assert (=> b!801181 (= res!545869 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21263 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20842 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21263 a!3170)) (= (select (arr!20842 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!801182 () Bool)

(assert (=> b!801182 (= e!444148 e!444144)))

(declare-fun res!545878 () Bool)

(assert (=> b!801182 (=> (not res!545878) (not e!444144))))

(declare-fun lt!358111 () (_ BitVec 64))

(declare-fun lt!358113 () array!43531)

(declare-fun lt!358107 () SeekEntryResult!8440)

(assert (=> b!801182 (= res!545878 (= lt!358107 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!358111 lt!358113 mask!3266)))))

(assert (=> b!801182 (= lt!358107 (seekEntryOrOpen!0 lt!358111 lt!358113 mask!3266))))

(assert (=> b!801182 (= lt!358111 (select (store (arr!20842 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!801182 (= lt!358113 (array!43532 (store (arr!20842 a!3170) i!1163 k0!2044) (size!21263 a!3170)))))

(declare-fun res!545871 () Bool)

(assert (=> start!68790 (=> (not res!545871) (not e!444143))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68790 (= res!545871 (validMask!0 mask!3266))))

(assert (=> start!68790 e!444143))

(assert (=> start!68790 true))

(declare-fun array_inv!16616 (array!43531) Bool)

(assert (=> start!68790 (array_inv!16616 a!3170)))

(declare-fun b!801183 () Bool)

(declare-fun res!545870 () Bool)

(assert (=> b!801183 (=> (not res!545870) (not e!444143))))

(assert (=> b!801183 (= res!545870 (validKeyInArray!0 (select (arr!20842 a!3170) j!153)))))

(declare-fun b!801184 () Bool)

(assert (=> b!801184 (= e!444147 false)))

(declare-fun lt!358110 () SeekEntryResult!8440)

(assert (=> b!801184 (= lt!358110 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!358108 vacantBefore!23 (select (arr!20842 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!801185 () Bool)

(declare-fun res!545872 () Bool)

(assert (=> b!801185 (=> (not res!545872) (not e!444143))))

(declare-fun arrayContainsKey!0 (array!43531 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!801185 (= res!545872 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!801186 () Bool)

(declare-fun res!545868 () Bool)

(assert (=> b!801186 (=> (not res!545868) (not e!444147))))

(assert (=> b!801186 (= res!545868 (= lt!358107 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!358108 vacantAfter!23 lt!358111 lt!358113 mask!3266)))))

(declare-fun b!801187 () Bool)

(declare-fun res!545877 () Bool)

(assert (=> b!801187 (=> (not res!545877) (not e!444148))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43531 (_ BitVec 32)) Bool)

(assert (=> b!801187 (= res!545877 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!801188 () Bool)

(declare-fun res!545873 () Bool)

(assert (=> b!801188 (=> (not res!545873) (not e!444148))))

(declare-datatypes ((List!14858 0))(
  ( (Nil!14855) (Cons!14854 (h!15983 (_ BitVec 64)) (t!21181 List!14858)) )
))
(declare-fun arrayNoDuplicates!0 (array!43531 (_ BitVec 32) List!14858) Bool)

(assert (=> b!801188 (= res!545873 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14855))))

(declare-fun b!801189 () Bool)

(declare-fun res!545876 () Bool)

(assert (=> b!801189 (=> (not res!545876) (not e!444143))))

(assert (=> b!801189 (= res!545876 (and (= (size!21263 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21263 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21263 a!3170)) (not (= i!1163 j!153))))))

(assert (= (and start!68790 res!545871) b!801189))

(assert (= (and b!801189 res!545876) b!801183))

(assert (= (and b!801183 res!545870) b!801178))

(assert (= (and b!801178 res!545874) b!801185))

(assert (= (and b!801185 res!545872) b!801177))

(assert (= (and b!801177 res!545866) b!801187))

(assert (= (and b!801187 res!545877) b!801188))

(assert (= (and b!801188 res!545873) b!801181))

(assert (= (and b!801181 res!545869) b!801182))

(assert (= (and b!801182 res!545878) b!801180))

(assert (= (and b!801180 res!545875) b!801179))

(assert (= (and b!801179 res!545867) b!801186))

(assert (= (and b!801186 res!545868) b!801184))

(declare-fun m!742429 () Bool)

(assert (=> b!801178 m!742429))

(declare-fun m!742431 () Bool)

(assert (=> b!801181 m!742431))

(declare-fun m!742433 () Bool)

(assert (=> b!801181 m!742433))

(declare-fun m!742435 () Bool)

(assert (=> b!801177 m!742435))

(declare-fun m!742437 () Bool)

(assert (=> b!801184 m!742437))

(assert (=> b!801184 m!742437))

(declare-fun m!742439 () Bool)

(assert (=> b!801184 m!742439))

(declare-fun m!742441 () Bool)

(assert (=> b!801180 m!742441))

(assert (=> b!801180 m!742437))

(assert (=> b!801180 m!742437))

(declare-fun m!742443 () Bool)

(assert (=> b!801180 m!742443))

(assert (=> b!801180 m!742437))

(declare-fun m!742445 () Bool)

(assert (=> b!801180 m!742445))

(declare-fun m!742447 () Bool)

(assert (=> b!801187 m!742447))

(declare-fun m!742449 () Bool)

(assert (=> b!801188 m!742449))

(declare-fun m!742451 () Bool)

(assert (=> b!801185 m!742451))

(declare-fun m!742453 () Bool)

(assert (=> start!68790 m!742453))

(declare-fun m!742455 () Bool)

(assert (=> start!68790 m!742455))

(assert (=> b!801183 m!742437))

(assert (=> b!801183 m!742437))

(declare-fun m!742457 () Bool)

(assert (=> b!801183 m!742457))

(declare-fun m!742459 () Bool)

(assert (=> b!801182 m!742459))

(declare-fun m!742461 () Bool)

(assert (=> b!801182 m!742461))

(declare-fun m!742463 () Bool)

(assert (=> b!801182 m!742463))

(declare-fun m!742465 () Bool)

(assert (=> b!801182 m!742465))

(declare-fun m!742467 () Bool)

(assert (=> b!801186 m!742467))

(declare-fun m!742469 () Bool)

(assert (=> b!801179 m!742469))

(check-sat (not b!801184) (not start!68790) (not b!801182) (not b!801177) (not b!801186) (not b!801185) (not b!801188) (not b!801183) (not b!801180) (not b!801178) (not b!801179) (not b!801187))
(check-sat)
