; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68782 () Bool)

(assert start!68782)

(declare-fun b!801021 () Bool)

(declare-fun res!545719 () Bool)

(declare-fun e!444076 () Bool)

(assert (=> b!801021 (=> (not res!545719) (not e!444076))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!801021 (= res!545719 (validKeyInArray!0 k!2044))))

(declare-fun res!545721 () Bool)

(assert (=> start!68782 (=> (not res!545721) (not e!444076))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68782 (= res!545721 (validMask!0 mask!3266))))

(assert (=> start!68782 e!444076))

(assert (=> start!68782 true))

(declare-datatypes ((array!43523 0))(
  ( (array!43524 (arr!20838 (Array (_ BitVec 32) (_ BitVec 64))) (size!21259 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43523)

(declare-fun array_inv!16612 (array!43523) Bool)

(assert (=> start!68782 (array_inv!16612 a!3170)))

(declare-fun b!801022 () Bool)

(declare-fun res!545713 () Bool)

(declare-fun e!444072 () Bool)

(assert (=> b!801022 (=> (not res!545713) (not e!444072))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!801022 (= res!545713 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21259 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20838 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21259 a!3170)) (= (select (arr!20838 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!801023 () Bool)

(declare-fun res!545714 () Bool)

(assert (=> b!801023 (=> (not res!545714) (not e!444076))))

(declare-fun arrayContainsKey!0 (array!43523 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!801023 (= res!545714 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!801024 () Bool)

(declare-fun res!545722 () Bool)

(assert (=> b!801024 (=> (not res!545722) (not e!444072))))

(declare-datatypes ((List!14854 0))(
  ( (Nil!14851) (Cons!14850 (h!15979 (_ BitVec 64)) (t!21177 List!14854)) )
))
(declare-fun arrayNoDuplicates!0 (array!43523 (_ BitVec 32) List!14854) Bool)

(assert (=> b!801024 (= res!545722 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14851))))

(declare-fun b!801025 () Bool)

(declare-fun e!444074 () Bool)

(assert (=> b!801025 (= e!444074 false)))

(declare-fun j!153 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8436 0))(
  ( (MissingZero!8436 (index!36111 (_ BitVec 32))) (Found!8436 (index!36112 (_ BitVec 32))) (Intermediate!8436 (undefined!9248 Bool) (index!36113 (_ BitVec 32)) (x!67003 (_ BitVec 32))) (Undefined!8436) (MissingVacant!8436 (index!36114 (_ BitVec 32))) )
))
(declare-fun lt!358014 () SeekEntryResult!8436)

(declare-fun lt!358015 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43523 (_ BitVec 32)) SeekEntryResult!8436)

(assert (=> b!801025 (= lt!358014 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!358015 vacantBefore!23 (select (arr!20838 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!801026 () Bool)

(declare-fun res!545711 () Bool)

(assert (=> b!801026 (=> (not res!545711) (not e!444076))))

(assert (=> b!801026 (= res!545711 (and (= (size!21259 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21259 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21259 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!801027 () Bool)

(declare-fun e!444073 () Bool)

(declare-fun e!444071 () Bool)

(assert (=> b!801027 (= e!444073 e!444071)))

(declare-fun res!545710 () Bool)

(assert (=> b!801027 (=> (not res!545710) (not e!444071))))

(declare-fun lt!358011 () SeekEntryResult!8436)

(declare-fun lt!358016 () SeekEntryResult!8436)

(assert (=> b!801027 (= res!545710 (and (= lt!358016 lt!358011) (= lt!358011 (Found!8436 j!153)) (not (= (select (arr!20838 a!3170) index!1236) (select (arr!20838 a!3170) j!153)))))))

(assert (=> b!801027 (= lt!358011 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20838 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43523 (_ BitVec 32)) SeekEntryResult!8436)

(assert (=> b!801027 (= lt!358016 (seekEntryOrOpen!0 (select (arr!20838 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!801028 () Bool)

(assert (=> b!801028 (= e!444072 e!444073)))

(declare-fun res!545718 () Bool)

(assert (=> b!801028 (=> (not res!545718) (not e!444073))))

(declare-fun lt!358018 () array!43523)

(declare-fun lt!358013 () (_ BitVec 64))

(declare-fun lt!358012 () SeekEntryResult!8436)

(assert (=> b!801028 (= res!545718 (= lt!358012 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!358013 lt!358018 mask!3266)))))

(assert (=> b!801028 (= lt!358012 (seekEntryOrOpen!0 lt!358013 lt!358018 mask!3266))))

(assert (=> b!801028 (= lt!358013 (select (store (arr!20838 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!801028 (= lt!358018 (array!43524 (store (arr!20838 a!3170) i!1163 k!2044) (size!21259 a!3170)))))

(declare-fun b!801029 () Bool)

(assert (=> b!801029 (= e!444071 e!444074)))

(declare-fun res!545715 () Bool)

(assert (=> b!801029 (=> (not res!545715) (not e!444074))))

(assert (=> b!801029 (= res!545715 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1077) #b01111111111111111111111111111110) (bvsge (bvadd #b00000000000000000000000000000001 x!1077) #b00000000000000000000000000000000) (bvsge lt!358015 #b00000000000000000000000000000000) (bvslt lt!358015 (size!21259 a!3170))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!801029 (= lt!358015 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!801030 () Bool)

(assert (=> b!801030 (= e!444076 e!444072)))

(declare-fun res!545717 () Bool)

(assert (=> b!801030 (=> (not res!545717) (not e!444072))))

(declare-fun lt!358017 () SeekEntryResult!8436)

(assert (=> b!801030 (= res!545717 (or (= lt!358017 (MissingZero!8436 i!1163)) (= lt!358017 (MissingVacant!8436 i!1163))))))

(assert (=> b!801030 (= lt!358017 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!801031 () Bool)

(declare-fun res!545720 () Bool)

(assert (=> b!801031 (=> (not res!545720) (not e!444076))))

(assert (=> b!801031 (= res!545720 (validKeyInArray!0 (select (arr!20838 a!3170) j!153)))))

(declare-fun b!801032 () Bool)

(declare-fun res!545716 () Bool)

(assert (=> b!801032 (=> (not res!545716) (not e!444072))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43523 (_ BitVec 32)) Bool)

(assert (=> b!801032 (= res!545716 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!801033 () Bool)

(declare-fun res!545712 () Bool)

(assert (=> b!801033 (=> (not res!545712) (not e!444074))))

(assert (=> b!801033 (= res!545712 (= lt!358012 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!358015 vacantAfter!23 lt!358013 lt!358018 mask!3266)))))

(assert (= (and start!68782 res!545721) b!801026))

(assert (= (and b!801026 res!545711) b!801031))

(assert (= (and b!801031 res!545720) b!801021))

(assert (= (and b!801021 res!545719) b!801023))

(assert (= (and b!801023 res!545714) b!801030))

(assert (= (and b!801030 res!545717) b!801032))

(assert (= (and b!801032 res!545716) b!801024))

(assert (= (and b!801024 res!545722) b!801022))

(assert (= (and b!801022 res!545713) b!801028))

(assert (= (and b!801028 res!545718) b!801027))

(assert (= (and b!801027 res!545710) b!801029))

(assert (= (and b!801029 res!545715) b!801033))

(assert (= (and b!801033 res!545712) b!801025))

(declare-fun m!742261 () Bool)

(assert (=> b!801030 m!742261))

(declare-fun m!742263 () Bool)

(assert (=> b!801025 m!742263))

(assert (=> b!801025 m!742263))

(declare-fun m!742265 () Bool)

(assert (=> b!801025 m!742265))

(declare-fun m!742267 () Bool)

(assert (=> b!801022 m!742267))

(declare-fun m!742269 () Bool)

(assert (=> b!801022 m!742269))

(declare-fun m!742271 () Bool)

(assert (=> b!801027 m!742271))

(assert (=> b!801027 m!742263))

(assert (=> b!801027 m!742263))

(declare-fun m!742273 () Bool)

(assert (=> b!801027 m!742273))

(assert (=> b!801027 m!742263))

(declare-fun m!742275 () Bool)

(assert (=> b!801027 m!742275))

(declare-fun m!742277 () Bool)

(assert (=> b!801021 m!742277))

(assert (=> b!801031 m!742263))

(assert (=> b!801031 m!742263))

(declare-fun m!742279 () Bool)

(assert (=> b!801031 m!742279))

(declare-fun m!742281 () Bool)

(assert (=> b!801023 m!742281))

(declare-fun m!742283 () Bool)

(assert (=> b!801033 m!742283))

(declare-fun m!742285 () Bool)

(assert (=> b!801024 m!742285))

(declare-fun m!742287 () Bool)

(assert (=> b!801028 m!742287))

(declare-fun m!742289 () Bool)

(assert (=> b!801028 m!742289))

(declare-fun m!742291 () Bool)

(assert (=> b!801028 m!742291))

(declare-fun m!742293 () Bool)

(assert (=> b!801028 m!742293))

(declare-fun m!742295 () Bool)

(assert (=> start!68782 m!742295))

(declare-fun m!742297 () Bool)

(assert (=> start!68782 m!742297))

(declare-fun m!742299 () Bool)

(assert (=> b!801029 m!742299))

(declare-fun m!742301 () Bool)

(assert (=> b!801032 m!742301))

(push 1)

