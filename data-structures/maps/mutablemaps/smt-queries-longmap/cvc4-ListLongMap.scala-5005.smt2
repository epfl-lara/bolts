; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68564 () Bool)

(assert start!68564)

(declare-fun b!797032 () Bool)

(declare-fun e!442226 () Bool)

(declare-fun e!442230 () Bool)

(assert (=> b!797032 (= e!442226 e!442230)))

(declare-fun res!541722 () Bool)

(assert (=> b!797032 (=> (not res!541722) (not e!442230))))

(declare-datatypes ((SeekEntryResult!8327 0))(
  ( (MissingZero!8327 (index!35675 (_ BitVec 32))) (Found!8327 (index!35676 (_ BitVec 32))) (Intermediate!8327 (undefined!9139 Bool) (index!35677 (_ BitVec 32)) (x!66598 (_ BitVec 32))) (Undefined!8327) (MissingVacant!8327 (index!35678 (_ BitVec 32))) )
))
(declare-fun lt!355562 () SeekEntryResult!8327)

(declare-fun lt!355560 () SeekEntryResult!8327)

(assert (=> b!797032 (= res!541722 (= lt!355562 lt!355560))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun lt!355559 () (_ BitVec 64))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-datatypes ((array!43305 0))(
  ( (array!43306 (arr!20729 (Array (_ BitVec 32) (_ BitVec 64))) (size!21150 (_ BitVec 32))) )
))
(declare-fun lt!355558 () array!43305)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43305 (_ BitVec 32)) SeekEntryResult!8327)

(assert (=> b!797032 (= lt!355560 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!355559 lt!355558 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43305 (_ BitVec 32)) SeekEntryResult!8327)

(assert (=> b!797032 (= lt!355562 (seekEntryOrOpen!0 lt!355559 lt!355558 mask!3266))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun a!3170 () array!43305)

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!797032 (= lt!355559 (select (store (arr!20729 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!797032 (= lt!355558 (array!43306 (store (arr!20729 a!3170) i!1163 k!2044) (size!21150 a!3170)))))

(declare-fun b!797033 () Bool)

(declare-fun res!541724 () Bool)

(declare-fun e!442231 () Bool)

(assert (=> b!797033 (=> (not res!541724) (not e!442231))))

(declare-fun arrayContainsKey!0 (array!43305 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!797033 (= res!541724 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!797034 () Bool)

(declare-fun res!541732 () Bool)

(assert (=> b!797034 (=> (not res!541732) (not e!442231))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!797034 (= res!541732 (validKeyInArray!0 k!2044))))

(declare-fun res!541723 () Bool)

(assert (=> start!68564 (=> (not res!541723) (not e!442231))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68564 (= res!541723 (validMask!0 mask!3266))))

(assert (=> start!68564 e!442231))

(assert (=> start!68564 true))

(declare-fun array_inv!16503 (array!43305) Bool)

(assert (=> start!68564 (array_inv!16503 a!3170)))

(declare-fun b!797035 () Bool)

(declare-fun e!442228 () Bool)

(declare-fun e!442229 () Bool)

(assert (=> b!797035 (= e!442228 e!442229)))

(declare-fun res!541721 () Bool)

(assert (=> b!797035 (=> (not res!541721) (not e!442229))))

(declare-fun lt!355561 () SeekEntryResult!8327)

(declare-fun lt!355563 () SeekEntryResult!8327)

(assert (=> b!797035 (= res!541721 (and (= lt!355561 lt!355563) (= (select (arr!20729 a!3170) index!1236) (select (arr!20729 a!3170) j!153))))))

(assert (=> b!797035 (= lt!355563 (Found!8327 j!153))))

(declare-fun b!797036 () Bool)

(declare-fun res!541726 () Bool)

(assert (=> b!797036 (=> (not res!541726) (not e!442226))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!797036 (= res!541726 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21150 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20729 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21150 a!3170)) (= (select (arr!20729 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!797037 () Bool)

(assert (=> b!797037 (= e!442229 (not (or (not (= lt!355560 lt!355563)) (bvslt mask!3266 #b00000000000000000000000000000000) (bvslt index!1236 (bvadd #b00000000000000000000000000000001 mask!3266)))))))

(assert (=> b!797037 (= lt!355560 (Found!8327 index!1236))))

(declare-fun b!797038 () Bool)

(declare-fun res!541731 () Bool)

(assert (=> b!797038 (=> (not res!541731) (not e!442231))))

(assert (=> b!797038 (= res!541731 (and (= (size!21150 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21150 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21150 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!797039 () Bool)

(declare-fun res!541725 () Bool)

(assert (=> b!797039 (=> (not res!541725) (not e!442231))))

(assert (=> b!797039 (= res!541725 (validKeyInArray!0 (select (arr!20729 a!3170) j!153)))))

(declare-fun b!797040 () Bool)

(assert (=> b!797040 (= e!442231 e!442226)))

(declare-fun res!541728 () Bool)

(assert (=> b!797040 (=> (not res!541728) (not e!442226))))

(declare-fun lt!355564 () SeekEntryResult!8327)

(assert (=> b!797040 (= res!541728 (or (= lt!355564 (MissingZero!8327 i!1163)) (= lt!355564 (MissingVacant!8327 i!1163))))))

(assert (=> b!797040 (= lt!355564 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!797041 () Bool)

(declare-fun res!541727 () Bool)

(assert (=> b!797041 (=> (not res!541727) (not e!442226))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43305 (_ BitVec 32)) Bool)

(assert (=> b!797041 (= res!541727 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!797042 () Bool)

(assert (=> b!797042 (= e!442230 e!442228)))

(declare-fun res!541729 () Bool)

(assert (=> b!797042 (=> (not res!541729) (not e!442228))))

(declare-fun lt!355557 () SeekEntryResult!8327)

(assert (=> b!797042 (= res!541729 (= lt!355557 lt!355561))))

(assert (=> b!797042 (= lt!355561 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20729 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!797042 (= lt!355557 (seekEntryOrOpen!0 (select (arr!20729 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!797043 () Bool)

(declare-fun res!541730 () Bool)

(assert (=> b!797043 (=> (not res!541730) (not e!442226))))

(declare-datatypes ((List!14745 0))(
  ( (Nil!14742) (Cons!14741 (h!15870 (_ BitVec 64)) (t!21068 List!14745)) )
))
(declare-fun arrayNoDuplicates!0 (array!43305 (_ BitVec 32) List!14745) Bool)

(assert (=> b!797043 (= res!541730 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14742))))

(assert (= (and start!68564 res!541723) b!797038))

(assert (= (and b!797038 res!541731) b!797039))

(assert (= (and b!797039 res!541725) b!797034))

(assert (= (and b!797034 res!541732) b!797033))

(assert (= (and b!797033 res!541724) b!797040))

(assert (= (and b!797040 res!541728) b!797041))

(assert (= (and b!797041 res!541727) b!797043))

(assert (= (and b!797043 res!541730) b!797036))

(assert (= (and b!797036 res!541726) b!797032))

(assert (= (and b!797032 res!541722) b!797042))

(assert (= (and b!797042 res!541729) b!797035))

(assert (= (and b!797035 res!541721) b!797037))

(declare-fun m!737971 () Bool)

(assert (=> b!797034 m!737971))

(declare-fun m!737973 () Bool)

(assert (=> b!797039 m!737973))

(assert (=> b!797039 m!737973))

(declare-fun m!737975 () Bool)

(assert (=> b!797039 m!737975))

(declare-fun m!737977 () Bool)

(assert (=> b!797041 m!737977))

(declare-fun m!737979 () Bool)

(assert (=> b!797035 m!737979))

(assert (=> b!797035 m!737973))

(declare-fun m!737981 () Bool)

(assert (=> b!797033 m!737981))

(declare-fun m!737983 () Bool)

(assert (=> b!797043 m!737983))

(declare-fun m!737985 () Bool)

(assert (=> start!68564 m!737985))

(declare-fun m!737987 () Bool)

(assert (=> start!68564 m!737987))

(declare-fun m!737989 () Bool)

(assert (=> b!797036 m!737989))

(declare-fun m!737991 () Bool)

(assert (=> b!797036 m!737991))

(assert (=> b!797042 m!737973))

(assert (=> b!797042 m!737973))

(declare-fun m!737993 () Bool)

(assert (=> b!797042 m!737993))

(assert (=> b!797042 m!737973))

(declare-fun m!737995 () Bool)

(assert (=> b!797042 m!737995))

(declare-fun m!737997 () Bool)

(assert (=> b!797032 m!737997))

(declare-fun m!737999 () Bool)

(assert (=> b!797032 m!737999))

(declare-fun m!738001 () Bool)

(assert (=> b!797032 m!738001))

(declare-fun m!738003 () Bool)

(assert (=> b!797032 m!738003))

(declare-fun m!738005 () Bool)

(assert (=> b!797040 m!738005))

(push 1)

(assert (not b!797040))

(assert (not b!797043))

(assert (not b!797034))

(assert (not b!797042))

(assert (not b!797041))

(assert (not b!797039))

(assert (not b!797033))

(assert (not b!797032))

(assert (not start!68564))

(check-sat)

(pop 1)

(push 1)

(check-sat)

