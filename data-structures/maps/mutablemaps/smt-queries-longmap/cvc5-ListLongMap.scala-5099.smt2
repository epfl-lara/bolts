; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69220 () Bool)

(assert start!69220)

(declare-fun b!806975 () Bool)

(declare-fun res!551275 () Bool)

(declare-fun e!446851 () Bool)

(assert (=> b!806975 (=> (not res!551275) (not e!446851))))

(declare-datatypes ((array!43871 0))(
  ( (array!43872 (arr!21009 (Array (_ BitVec 32) (_ BitVec 64))) (size!21430 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43871)

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!43871 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!806975 (= res!551275 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!806976 () Bool)

(declare-fun res!551273 () Bool)

(assert (=> b!806976 (=> (not res!551273) (not e!446851))))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!806976 (= res!551273 (validKeyInArray!0 (select (arr!21009 a!3170) j!153)))))

(declare-fun b!806977 () Bool)

(declare-fun e!446853 () Bool)

(declare-fun e!446850 () Bool)

(assert (=> b!806977 (= e!446853 e!446850)))

(declare-fun res!551271 () Bool)

(assert (=> b!806977 (=> (not res!551271) (not e!446850))))

(declare-datatypes ((SeekEntryResult!8607 0))(
  ( (MissingZero!8607 (index!36795 (_ BitVec 32))) (Found!8607 (index!36796 (_ BitVec 32))) (Intermediate!8607 (undefined!9419 Bool) (index!36797 (_ BitVec 32)) (x!67636 (_ BitVec 32))) (Undefined!8607) (MissingVacant!8607 (index!36798 (_ BitVec 32))) )
))
(declare-fun lt!361513 () SeekEntryResult!8607)

(declare-fun lt!361511 () SeekEntryResult!8607)

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!806977 (= res!551271 (and (= lt!361511 lt!361513) (= lt!361513 (Found!8607 j!153)) (not (= (select (arr!21009 a!3170) index!1236) (select (arr!21009 a!3170) j!153)))))))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43871 (_ BitVec 32)) SeekEntryResult!8607)

(assert (=> b!806977 (= lt!361513 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21009 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43871 (_ BitVec 32)) SeekEntryResult!8607)

(assert (=> b!806977 (= lt!361511 (seekEntryOrOpen!0 (select (arr!21009 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!806978 () Bool)

(declare-fun e!446852 () Bool)

(assert (=> b!806978 (= e!446852 e!446853)))

(declare-fun res!551277 () Bool)

(assert (=> b!806978 (=> (not res!551277) (not e!446853))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun lt!361512 () (_ BitVec 64))

(declare-fun lt!361515 () array!43871)

(assert (=> b!806978 (= res!551277 (= (seekEntryOrOpen!0 lt!361512 lt!361515 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!361512 lt!361515 mask!3266)))))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!806978 (= lt!361512 (select (store (arr!21009 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!806978 (= lt!361515 (array!43872 (store (arr!21009 a!3170) i!1163 k!2044) (size!21430 a!3170)))))

(declare-fun b!806979 () Bool)

(assert (=> b!806979 (= e!446851 e!446852)))

(declare-fun res!551268 () Bool)

(assert (=> b!806979 (=> (not res!551268) (not e!446852))))

(declare-fun lt!361516 () SeekEntryResult!8607)

(assert (=> b!806979 (= res!551268 (or (= lt!361516 (MissingZero!8607 i!1163)) (= lt!361516 (MissingVacant!8607 i!1163))))))

(assert (=> b!806979 (= lt!361516 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun res!551274 () Bool)

(assert (=> start!69220 (=> (not res!551274) (not e!446851))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69220 (= res!551274 (validMask!0 mask!3266))))

(assert (=> start!69220 e!446851))

(assert (=> start!69220 true))

(declare-fun array_inv!16783 (array!43871) Bool)

(assert (=> start!69220 (array_inv!16783 a!3170)))

(declare-fun b!806980 () Bool)

(declare-fun res!551270 () Bool)

(assert (=> b!806980 (=> (not res!551270) (not e!446851))))

(assert (=> b!806980 (= res!551270 (and (= (size!21430 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21430 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21430 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!806981 () Bool)

(declare-fun res!551272 () Bool)

(assert (=> b!806981 (=> (not res!551272) (not e!446852))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43871 (_ BitVec 32)) Bool)

(assert (=> b!806981 (= res!551272 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!806982 () Bool)

(declare-fun res!551276 () Bool)

(assert (=> b!806982 (=> (not res!551276) (not e!446851))))

(assert (=> b!806982 (= res!551276 (validKeyInArray!0 k!2044))))

(declare-fun b!806983 () Bool)

(assert (=> b!806983 (= e!446850 false)))

(declare-fun lt!361514 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!806983 (= lt!361514 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!806984 () Bool)

(declare-fun res!551278 () Bool)

(assert (=> b!806984 (=> (not res!551278) (not e!446852))))

(declare-datatypes ((List!15025 0))(
  ( (Nil!15022) (Cons!15021 (h!16150 (_ BitVec 64)) (t!21348 List!15025)) )
))
(declare-fun arrayNoDuplicates!0 (array!43871 (_ BitVec 32) List!15025) Bool)

(assert (=> b!806984 (= res!551278 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15022))))

(declare-fun b!806985 () Bool)

(declare-fun res!551269 () Bool)

(assert (=> b!806985 (=> (not res!551269) (not e!446852))))

(assert (=> b!806985 (= res!551269 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21430 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!21009 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21430 a!3170)) (= (select (arr!21009 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(assert (= (and start!69220 res!551274) b!806980))

(assert (= (and b!806980 res!551270) b!806976))

(assert (= (and b!806976 res!551273) b!806982))

(assert (= (and b!806982 res!551276) b!806975))

(assert (= (and b!806975 res!551275) b!806979))

(assert (= (and b!806979 res!551268) b!806981))

(assert (= (and b!806981 res!551272) b!806984))

(assert (= (and b!806984 res!551278) b!806985))

(assert (= (and b!806985 res!551269) b!806978))

(assert (= (and b!806978 res!551277) b!806977))

(assert (= (and b!806977 res!551271) b!806983))

(declare-fun m!749059 () Bool)

(assert (=> b!806976 m!749059))

(assert (=> b!806976 m!749059))

(declare-fun m!749061 () Bool)

(assert (=> b!806976 m!749061))

(declare-fun m!749063 () Bool)

(assert (=> b!806975 m!749063))

(declare-fun m!749065 () Bool)

(assert (=> b!806982 m!749065))

(declare-fun m!749067 () Bool)

(assert (=> b!806983 m!749067))

(declare-fun m!749069 () Bool)

(assert (=> b!806985 m!749069))

(declare-fun m!749071 () Bool)

(assert (=> b!806985 m!749071))

(declare-fun m!749073 () Bool)

(assert (=> b!806984 m!749073))

(declare-fun m!749075 () Bool)

(assert (=> start!69220 m!749075))

(declare-fun m!749077 () Bool)

(assert (=> start!69220 m!749077))

(declare-fun m!749079 () Bool)

(assert (=> b!806977 m!749079))

(assert (=> b!806977 m!749059))

(assert (=> b!806977 m!749059))

(declare-fun m!749081 () Bool)

(assert (=> b!806977 m!749081))

(assert (=> b!806977 m!749059))

(declare-fun m!749083 () Bool)

(assert (=> b!806977 m!749083))

(declare-fun m!749085 () Bool)

(assert (=> b!806978 m!749085))

(declare-fun m!749087 () Bool)

(assert (=> b!806978 m!749087))

(declare-fun m!749089 () Bool)

(assert (=> b!806978 m!749089))

(declare-fun m!749091 () Bool)

(assert (=> b!806978 m!749091))

(declare-fun m!749093 () Bool)

(assert (=> b!806981 m!749093))

(declare-fun m!749095 () Bool)

(assert (=> b!806979 m!749095))

(push 1)

