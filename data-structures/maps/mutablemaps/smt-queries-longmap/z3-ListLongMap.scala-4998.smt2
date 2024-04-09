; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68520 () Bool)

(assert start!68520)

(declare-fun b!796280 () Bool)

(declare-fun res!540976 () Bool)

(declare-fun e!441872 () Bool)

(assert (=> b!796280 (=> (not res!540976) (not e!441872))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-datatypes ((array!43261 0))(
  ( (array!43262 (arr!20707 (Array (_ BitVec 32) (_ BitVec 64))) (size!21128 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43261)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(assert (=> b!796280 (= res!540976 (and (= (size!21128 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21128 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21128 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!796281 () Bool)

(declare-fun res!540975 () Bool)

(assert (=> b!796281 (=> (not res!540975) (not e!441872))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!796281 (= res!540975 (validKeyInArray!0 k0!2044))))

(declare-fun b!796282 () Bool)

(declare-fun res!540970 () Bool)

(declare-fun e!441873 () Bool)

(assert (=> b!796282 (=> (not res!540970) (not e!441873))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43261 (_ BitVec 32)) Bool)

(assert (=> b!796282 (= res!540970 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!796283 () Bool)

(declare-fun res!540977 () Bool)

(assert (=> b!796283 (=> (not res!540977) (not e!441872))))

(assert (=> b!796283 (= res!540977 (validKeyInArray!0 (select (arr!20707 a!3170) j!153)))))

(declare-fun b!796284 () Bool)

(declare-fun e!441871 () Bool)

(assert (=> b!796284 (= e!441873 e!441871)))

(declare-fun res!540979 () Bool)

(assert (=> b!796284 (=> (not res!540979) (not e!441871))))

(declare-datatypes ((SeekEntryResult!8305 0))(
  ( (MissingZero!8305 (index!35587 (_ BitVec 32))) (Found!8305 (index!35588 (_ BitVec 32))) (Intermediate!8305 (undefined!9117 Bool) (index!35589 (_ BitVec 32)) (x!66520 (_ BitVec 32))) (Undefined!8305) (MissingVacant!8305 (index!35590 (_ BitVec 32))) )
))
(declare-fun lt!355084 () SeekEntryResult!8305)

(declare-fun lt!355082 () SeekEntryResult!8305)

(assert (=> b!796284 (= res!540979 (= lt!355084 lt!355082))))

(declare-fun lt!355078 () (_ BitVec 64))

(declare-fun lt!355083 () array!43261)

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43261 (_ BitVec 32)) SeekEntryResult!8305)

(assert (=> b!796284 (= lt!355082 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!355078 lt!355083 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43261 (_ BitVec 32)) SeekEntryResult!8305)

(assert (=> b!796284 (= lt!355084 (seekEntryOrOpen!0 lt!355078 lt!355083 mask!3266))))

(assert (=> b!796284 (= lt!355078 (select (store (arr!20707 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!796284 (= lt!355083 (array!43262 (store (arr!20707 a!3170) i!1163 k0!2044) (size!21128 a!3170)))))

(declare-fun b!796285 () Bool)

(declare-fun res!540969 () Bool)

(assert (=> b!796285 (=> (not res!540969) (not e!441873))))

(declare-datatypes ((List!14723 0))(
  ( (Nil!14720) (Cons!14719 (h!15848 (_ BitVec 64)) (t!21046 List!14723)) )
))
(declare-fun arrayNoDuplicates!0 (array!43261 (_ BitVec 32) List!14723) Bool)

(assert (=> b!796285 (= res!540969 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14720))))

(declare-fun b!796286 () Bool)

(declare-fun e!441870 () Bool)

(assert (=> b!796286 (= e!441871 e!441870)))

(declare-fun res!540978 () Bool)

(assert (=> b!796286 (=> (not res!540978) (not e!441870))))

(declare-fun lt!355079 () SeekEntryResult!8305)

(declare-fun lt!355081 () SeekEntryResult!8305)

(assert (=> b!796286 (= res!540978 (and (= lt!355081 lt!355079) (= lt!355079 (Found!8305 j!153)) (= (select (arr!20707 a!3170) index!1236) (select (arr!20707 a!3170) j!153))))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!796286 (= lt!355079 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20707 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!796286 (= lt!355081 (seekEntryOrOpen!0 (select (arr!20707 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!796287 () Bool)

(assert (=> b!796287 (= e!441872 e!441873)))

(declare-fun res!540973 () Bool)

(assert (=> b!796287 (=> (not res!540973) (not e!441873))))

(declare-fun lt!355080 () SeekEntryResult!8305)

(assert (=> b!796287 (= res!540973 (or (= lt!355080 (MissingZero!8305 i!1163)) (= lt!355080 (MissingVacant!8305 i!1163))))))

(assert (=> b!796287 (= lt!355080 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!796288 () Bool)

(assert (=> b!796288 (= e!441870 (not true))))

(assert (=> b!796288 (= lt!355082 (Found!8305 index!1236))))

(declare-fun b!796290 () Bool)

(declare-fun res!540974 () Bool)

(assert (=> b!796290 (=> (not res!540974) (not e!441873))))

(assert (=> b!796290 (= res!540974 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21128 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20707 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21128 a!3170)) (= (select (arr!20707 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun res!540971 () Bool)

(assert (=> start!68520 (=> (not res!540971) (not e!441872))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68520 (= res!540971 (validMask!0 mask!3266))))

(assert (=> start!68520 e!441872))

(assert (=> start!68520 true))

(declare-fun array_inv!16481 (array!43261) Bool)

(assert (=> start!68520 (array_inv!16481 a!3170)))

(declare-fun b!796289 () Bool)

(declare-fun res!540972 () Bool)

(assert (=> b!796289 (=> (not res!540972) (not e!441872))))

(declare-fun arrayContainsKey!0 (array!43261 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!796289 (= res!540972 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(assert (= (and start!68520 res!540971) b!796280))

(assert (= (and b!796280 res!540976) b!796283))

(assert (= (and b!796283 res!540977) b!796281))

(assert (= (and b!796281 res!540975) b!796289))

(assert (= (and b!796289 res!540972) b!796287))

(assert (= (and b!796287 res!540973) b!796282))

(assert (= (and b!796282 res!540970) b!796285))

(assert (= (and b!796285 res!540969) b!796290))

(assert (= (and b!796290 res!540974) b!796284))

(assert (= (and b!796284 res!540979) b!796286))

(assert (= (and b!796286 res!540978) b!796288))

(declare-fun m!737161 () Bool)

(assert (=> b!796287 m!737161))

(declare-fun m!737163 () Bool)

(assert (=> b!796285 m!737163))

(declare-fun m!737165 () Bool)

(assert (=> b!796281 m!737165))

(declare-fun m!737167 () Bool)

(assert (=> b!796286 m!737167))

(declare-fun m!737169 () Bool)

(assert (=> b!796286 m!737169))

(assert (=> b!796286 m!737169))

(declare-fun m!737171 () Bool)

(assert (=> b!796286 m!737171))

(assert (=> b!796286 m!737169))

(declare-fun m!737173 () Bool)

(assert (=> b!796286 m!737173))

(declare-fun m!737175 () Bool)

(assert (=> b!796290 m!737175))

(declare-fun m!737177 () Bool)

(assert (=> b!796290 m!737177))

(assert (=> b!796283 m!737169))

(assert (=> b!796283 m!737169))

(declare-fun m!737179 () Bool)

(assert (=> b!796283 m!737179))

(declare-fun m!737181 () Bool)

(assert (=> b!796282 m!737181))

(declare-fun m!737183 () Bool)

(assert (=> b!796289 m!737183))

(declare-fun m!737185 () Bool)

(assert (=> start!68520 m!737185))

(declare-fun m!737187 () Bool)

(assert (=> start!68520 m!737187))

(declare-fun m!737189 () Bool)

(assert (=> b!796284 m!737189))

(declare-fun m!737191 () Bool)

(assert (=> b!796284 m!737191))

(declare-fun m!737193 () Bool)

(assert (=> b!796284 m!737193))

(declare-fun m!737195 () Bool)

(assert (=> b!796284 m!737195))

(check-sat (not b!796284) (not b!796283) (not start!68520) (not b!796281) (not b!796282) (not b!796287) (not b!796289) (not b!796286) (not b!796285))
(check-sat)
