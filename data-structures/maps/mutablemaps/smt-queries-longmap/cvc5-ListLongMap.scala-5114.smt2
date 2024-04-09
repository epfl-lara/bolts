; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69418 () Bool)

(assert start!69418)

(declare-fun b!808982 () Bool)

(declare-fun res!552884 () Bool)

(declare-fun e!447850 () Bool)

(assert (=> b!808982 (=> (not res!552884) (not e!447850))))

(declare-datatypes ((array!43967 0))(
  ( (array!43968 (arr!21054 (Array (_ BitVec 32) (_ BitVec 64))) (size!21475 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43967)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43967 (_ BitVec 32)) Bool)

(assert (=> b!808982 (= res!552884 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!808983 () Bool)

(declare-fun res!552885 () Bool)

(declare-fun e!447851 () Bool)

(assert (=> b!808983 (=> (not res!552885) (not e!447851))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!808983 (= res!552885 (and (= (size!21475 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21475 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21475 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!808984 () Bool)

(declare-fun e!447853 () Bool)

(assert (=> b!808984 (= e!447850 e!447853)))

(declare-fun res!552887 () Bool)

(assert (=> b!808984 (=> (not res!552887) (not e!447853))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!362532 () array!43967)

(declare-fun lt!362535 () (_ BitVec 64))

(declare-fun index!1236 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8652 0))(
  ( (MissingZero!8652 (index!36975 (_ BitVec 32))) (Found!8652 (index!36976 (_ BitVec 32))) (Intermediate!8652 (undefined!9464 Bool) (index!36977 (_ BitVec 32)) (x!67813 (_ BitVec 32))) (Undefined!8652) (MissingVacant!8652 (index!36978 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43967 (_ BitVec 32)) SeekEntryResult!8652)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43967 (_ BitVec 32)) SeekEntryResult!8652)

(assert (=> b!808984 (= res!552887 (= (seekEntryOrOpen!0 lt!362535 lt!362532 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!362535 lt!362532 mask!3266)))))

(declare-fun k!2044 () (_ BitVec 64))

(assert (=> b!808984 (= lt!362535 (select (store (arr!21054 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!808984 (= lt!362532 (array!43968 (store (arr!21054 a!3170) i!1163 k!2044) (size!21475 a!3170)))))

(declare-fun b!808985 () Bool)

(declare-fun e!447852 () Bool)

(assert (=> b!808985 (= e!447853 e!447852)))

(declare-fun res!552880 () Bool)

(assert (=> b!808985 (=> (not res!552880) (not e!447852))))

(declare-fun lt!362534 () SeekEntryResult!8652)

(declare-fun lt!362533 () SeekEntryResult!8652)

(assert (=> b!808985 (= res!552880 (and (= lt!362533 lt!362534) (= lt!362534 (Found!8652 j!153)) (not (= (select (arr!21054 a!3170) index!1236) (select (arr!21054 a!3170) j!153)))))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!808985 (= lt!362534 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21054 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!808985 (= lt!362533 (seekEntryOrOpen!0 (select (arr!21054 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!808986 () Bool)

(declare-fun res!552882 () Bool)

(assert (=> b!808986 (=> (not res!552882) (not e!447850))))

(assert (=> b!808986 (= res!552882 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21475 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!21054 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21475 a!3170)) (= (select (arr!21054 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!808987 () Bool)

(declare-fun res!552886 () Bool)

(assert (=> b!808987 (=> (not res!552886) (not e!447850))))

(declare-datatypes ((List!15070 0))(
  ( (Nil!15067) (Cons!15066 (h!16195 (_ BitVec 64)) (t!21393 List!15070)) )
))
(declare-fun arrayNoDuplicates!0 (array!43967 (_ BitVec 32) List!15070) Bool)

(assert (=> b!808987 (= res!552886 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15067))))

(declare-fun res!552889 () Bool)

(assert (=> start!69418 (=> (not res!552889) (not e!447851))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69418 (= res!552889 (validMask!0 mask!3266))))

(assert (=> start!69418 e!447851))

(assert (=> start!69418 true))

(declare-fun array_inv!16828 (array!43967) Bool)

(assert (=> start!69418 (array_inv!16828 a!3170)))

(declare-fun b!808988 () Bool)

(declare-fun res!552888 () Bool)

(assert (=> b!808988 (=> (not res!552888) (not e!447851))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!808988 (= res!552888 (validKeyInArray!0 k!2044))))

(declare-fun b!808989 () Bool)

(assert (=> b!808989 (= e!447851 e!447850)))

(declare-fun res!552883 () Bool)

(assert (=> b!808989 (=> (not res!552883) (not e!447850))))

(declare-fun lt!362531 () SeekEntryResult!8652)

(assert (=> b!808989 (= res!552883 (or (= lt!362531 (MissingZero!8652 i!1163)) (= lt!362531 (MissingVacant!8652 i!1163))))))

(assert (=> b!808989 (= lt!362531 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!808990 () Bool)

(declare-fun res!552881 () Bool)

(assert (=> b!808990 (=> (not res!552881) (not e!447851))))

(assert (=> b!808990 (= res!552881 (validKeyInArray!0 (select (arr!21054 a!3170) j!153)))))

(declare-fun b!808991 () Bool)

(assert (=> b!808991 (= e!447852 false)))

(declare-fun lt!362536 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!808991 (= lt!362536 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!808992 () Bool)

(declare-fun res!552879 () Bool)

(assert (=> b!808992 (=> (not res!552879) (not e!447851))))

(declare-fun arrayContainsKey!0 (array!43967 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!808992 (= res!552879 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(assert (= (and start!69418 res!552889) b!808983))

(assert (= (and b!808983 res!552885) b!808990))

(assert (= (and b!808990 res!552881) b!808988))

(assert (= (and b!808988 res!552888) b!808992))

(assert (= (and b!808992 res!552879) b!808989))

(assert (= (and b!808989 res!552883) b!808982))

(assert (= (and b!808982 res!552884) b!808987))

(assert (= (and b!808987 res!552886) b!808986))

(assert (= (and b!808986 res!552882) b!808984))

(assert (= (and b!808984 res!552887) b!808985))

(assert (= (and b!808985 res!552880) b!808991))

(declare-fun m!751225 () Bool)

(assert (=> b!808987 m!751225))

(declare-fun m!751227 () Bool)

(assert (=> b!808986 m!751227))

(declare-fun m!751229 () Bool)

(assert (=> b!808986 m!751229))

(declare-fun m!751231 () Bool)

(assert (=> b!808985 m!751231))

(declare-fun m!751233 () Bool)

(assert (=> b!808985 m!751233))

(assert (=> b!808985 m!751233))

(declare-fun m!751235 () Bool)

(assert (=> b!808985 m!751235))

(assert (=> b!808985 m!751233))

(declare-fun m!751237 () Bool)

(assert (=> b!808985 m!751237))

(declare-fun m!751239 () Bool)

(assert (=> b!808991 m!751239))

(declare-fun m!751241 () Bool)

(assert (=> start!69418 m!751241))

(declare-fun m!751243 () Bool)

(assert (=> start!69418 m!751243))

(declare-fun m!751245 () Bool)

(assert (=> b!808988 m!751245))

(declare-fun m!751247 () Bool)

(assert (=> b!808989 m!751247))

(assert (=> b!808990 m!751233))

(assert (=> b!808990 m!751233))

(declare-fun m!751249 () Bool)

(assert (=> b!808990 m!751249))

(declare-fun m!751251 () Bool)

(assert (=> b!808992 m!751251))

(declare-fun m!751253 () Bool)

(assert (=> b!808982 m!751253))

(declare-fun m!751255 () Bool)

(assert (=> b!808984 m!751255))

(declare-fun m!751257 () Bool)

(assert (=> b!808984 m!751257))

(declare-fun m!751259 () Bool)

(assert (=> b!808984 m!751259))

(declare-fun m!751261 () Bool)

(assert (=> b!808984 m!751261))

(push 1)

