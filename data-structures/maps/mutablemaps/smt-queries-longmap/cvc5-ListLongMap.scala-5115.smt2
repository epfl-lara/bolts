; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69424 () Bool)

(assert start!69424)

(declare-fun b!809081 () Bool)

(declare-fun e!447897 () Bool)

(declare-fun e!447894 () Bool)

(assert (=> b!809081 (= e!447897 e!447894)))

(declare-fun res!552984 () Bool)

(assert (=> b!809081 (=> (not res!552984) (not e!447894))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-datatypes ((array!43973 0))(
  ( (array!43974 (arr!21057 (Array (_ BitVec 32) (_ BitVec 64))) (size!21478 (_ BitVec 32))) )
))
(declare-fun lt!362590 () array!43973)

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!362587 () (_ BitVec 64))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8655 0))(
  ( (MissingZero!8655 (index!36987 (_ BitVec 32))) (Found!8655 (index!36988 (_ BitVec 32))) (Intermediate!8655 (undefined!9467 Bool) (index!36989 (_ BitVec 32)) (x!67824 (_ BitVec 32))) (Undefined!8655) (MissingVacant!8655 (index!36990 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43973 (_ BitVec 32)) SeekEntryResult!8655)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43973 (_ BitVec 32)) SeekEntryResult!8655)

(assert (=> b!809081 (= res!552984 (= (seekEntryOrOpen!0 lt!362587 lt!362590 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!362587 lt!362590 mask!3266)))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun a!3170 () array!43973)

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!809081 (= lt!362587 (select (store (arr!21057 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!809081 (= lt!362590 (array!43974 (store (arr!21057 a!3170) i!1163 k!2044) (size!21478 a!3170)))))

(declare-fun b!809082 () Bool)

(declare-fun res!552982 () Bool)

(declare-fun e!447896 () Bool)

(assert (=> b!809082 (=> (not res!552982) (not e!447896))))

(assert (=> b!809082 (= res!552982 (and (= (size!21478 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21478 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21478 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!809083 () Bool)

(declare-fun res!552980 () Bool)

(assert (=> b!809083 (=> (not res!552980) (not e!447897))))

(declare-datatypes ((List!15073 0))(
  ( (Nil!15070) (Cons!15069 (h!16198 (_ BitVec 64)) (t!21396 List!15073)) )
))
(declare-fun arrayNoDuplicates!0 (array!43973 (_ BitVec 32) List!15073) Bool)

(assert (=> b!809083 (= res!552980 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15070))))

(declare-fun res!552987 () Bool)

(assert (=> start!69424 (=> (not res!552987) (not e!447896))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69424 (= res!552987 (validMask!0 mask!3266))))

(assert (=> start!69424 e!447896))

(assert (=> start!69424 true))

(declare-fun array_inv!16831 (array!43973) Bool)

(assert (=> start!69424 (array_inv!16831 a!3170)))

(declare-fun b!809084 () Bool)

(declare-fun res!552983 () Bool)

(assert (=> b!809084 (=> (not res!552983) (not e!447897))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43973 (_ BitVec 32)) Bool)

(assert (=> b!809084 (= res!552983 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!809085 () Bool)

(declare-fun res!552985 () Bool)

(assert (=> b!809085 (=> (not res!552985) (not e!447896))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!809085 (= res!552985 (validKeyInArray!0 (select (arr!21057 a!3170) j!153)))))

(declare-fun b!809086 () Bool)

(declare-fun res!552981 () Bool)

(assert (=> b!809086 (=> (not res!552981) (not e!447896))))

(assert (=> b!809086 (= res!552981 (validKeyInArray!0 k!2044))))

(declare-fun b!809087 () Bool)

(declare-fun e!447895 () Bool)

(assert (=> b!809087 (= e!447895 false)))

(declare-fun lt!362589 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!809087 (= lt!362589 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!809088 () Bool)

(declare-fun res!552988 () Bool)

(assert (=> b!809088 (=> (not res!552988) (not e!447897))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!809088 (= res!552988 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21478 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!21057 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21478 a!3170)) (= (select (arr!21057 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!809089 () Bool)

(assert (=> b!809089 (= e!447896 e!447897)))

(declare-fun res!552979 () Bool)

(assert (=> b!809089 (=> (not res!552979) (not e!447897))))

(declare-fun lt!362588 () SeekEntryResult!8655)

(assert (=> b!809089 (= res!552979 (or (= lt!362588 (MissingZero!8655 i!1163)) (= lt!362588 (MissingVacant!8655 i!1163))))))

(assert (=> b!809089 (= lt!362588 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!809090 () Bool)

(assert (=> b!809090 (= e!447894 e!447895)))

(declare-fun res!552978 () Bool)

(assert (=> b!809090 (=> (not res!552978) (not e!447895))))

(declare-fun lt!362585 () SeekEntryResult!8655)

(declare-fun lt!362586 () SeekEntryResult!8655)

(assert (=> b!809090 (= res!552978 (and (= lt!362585 lt!362586) (= lt!362586 (Found!8655 j!153)) (not (= (select (arr!21057 a!3170) index!1236) (select (arr!21057 a!3170) j!153)))))))

(assert (=> b!809090 (= lt!362586 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21057 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!809090 (= lt!362585 (seekEntryOrOpen!0 (select (arr!21057 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!809091 () Bool)

(declare-fun res!552986 () Bool)

(assert (=> b!809091 (=> (not res!552986) (not e!447896))))

(declare-fun arrayContainsKey!0 (array!43973 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!809091 (= res!552986 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(assert (= (and start!69424 res!552987) b!809082))

(assert (= (and b!809082 res!552982) b!809085))

(assert (= (and b!809085 res!552985) b!809086))

(assert (= (and b!809086 res!552981) b!809091))

(assert (= (and b!809091 res!552986) b!809089))

(assert (= (and b!809089 res!552979) b!809084))

(assert (= (and b!809084 res!552983) b!809083))

(assert (= (and b!809083 res!552980) b!809088))

(assert (= (and b!809088 res!552988) b!809081))

(assert (= (and b!809081 res!552984) b!809090))

(assert (= (and b!809090 res!552978) b!809087))

(declare-fun m!751339 () Bool)

(assert (=> b!809088 m!751339))

(declare-fun m!751341 () Bool)

(assert (=> b!809088 m!751341))

(declare-fun m!751343 () Bool)

(assert (=> b!809083 m!751343))

(declare-fun m!751345 () Bool)

(assert (=> b!809081 m!751345))

(declare-fun m!751347 () Bool)

(assert (=> b!809081 m!751347))

(declare-fun m!751349 () Bool)

(assert (=> b!809081 m!751349))

(declare-fun m!751351 () Bool)

(assert (=> b!809081 m!751351))

(declare-fun m!751353 () Bool)

(assert (=> b!809089 m!751353))

(declare-fun m!751355 () Bool)

(assert (=> b!809085 m!751355))

(assert (=> b!809085 m!751355))

(declare-fun m!751357 () Bool)

(assert (=> b!809085 m!751357))

(declare-fun m!751359 () Bool)

(assert (=> start!69424 m!751359))

(declare-fun m!751361 () Bool)

(assert (=> start!69424 m!751361))

(declare-fun m!751363 () Bool)

(assert (=> b!809084 m!751363))

(declare-fun m!751365 () Bool)

(assert (=> b!809090 m!751365))

(assert (=> b!809090 m!751355))

(assert (=> b!809090 m!751355))

(declare-fun m!751367 () Bool)

(assert (=> b!809090 m!751367))

(assert (=> b!809090 m!751355))

(declare-fun m!751369 () Bool)

(assert (=> b!809090 m!751369))

(declare-fun m!751371 () Bool)

(assert (=> b!809087 m!751371))

(declare-fun m!751373 () Bool)

(assert (=> b!809091 m!751373))

(declare-fun m!751375 () Bool)

(assert (=> b!809086 m!751375))

(push 1)

