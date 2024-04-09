; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69272 () Bool)

(assert start!69272)

(declare-fun b!807833 () Bool)

(declare-fun res!552133 () Bool)

(declare-fun e!447241 () Bool)

(assert (=> b!807833 (=> (not res!552133) (not e!447241))))

(declare-datatypes ((array!43923 0))(
  ( (array!43924 (arr!21035 (Array (_ BitVec 32) (_ BitVec 64))) (size!21456 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43923)

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!43923 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!807833 (= res!552133 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun res!552134 () Bool)

(assert (=> start!69272 (=> (not res!552134) (not e!447241))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69272 (= res!552134 (validMask!0 mask!3266))))

(assert (=> start!69272 e!447241))

(assert (=> start!69272 true))

(declare-fun array_inv!16809 (array!43923) Bool)

(assert (=> start!69272 (array_inv!16809 a!3170)))

(declare-fun b!807834 () Bool)

(declare-fun res!552135 () Bool)

(declare-fun e!447244 () Bool)

(assert (=> b!807834 (=> (not res!552135) (not e!447244))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!807834 (= res!552135 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21456 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!21035 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21456 a!3170)) (= (select (arr!21035 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!807835 () Bool)

(declare-fun e!447243 () Bool)

(assert (=> b!807835 (= e!447244 e!447243)))

(declare-fun res!552131 () Bool)

(assert (=> b!807835 (=> (not res!552131) (not e!447243))))

(declare-fun lt!361982 () array!43923)

(declare-fun lt!361981 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!8633 0))(
  ( (MissingZero!8633 (index!36899 (_ BitVec 32))) (Found!8633 (index!36900 (_ BitVec 32))) (Intermediate!8633 (undefined!9445 Bool) (index!36901 (_ BitVec 32)) (x!67726 (_ BitVec 32))) (Undefined!8633) (MissingVacant!8633 (index!36902 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43923 (_ BitVec 32)) SeekEntryResult!8633)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43923 (_ BitVec 32)) SeekEntryResult!8633)

(assert (=> b!807835 (= res!552131 (= (seekEntryOrOpen!0 lt!361981 lt!361982 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!361981 lt!361982 mask!3266)))))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!807835 (= lt!361981 (select (store (arr!21035 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!807835 (= lt!361982 (array!43924 (store (arr!21035 a!3170) i!1163 k!2044) (size!21456 a!3170)))))

(declare-fun b!807836 () Bool)

(declare-fun e!447240 () Bool)

(assert (=> b!807836 (= e!447240 false)))

(declare-fun lt!361980 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!807836 (= lt!361980 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!807837 () Bool)

(declare-fun res!552127 () Bool)

(assert (=> b!807837 (=> (not res!552127) (not e!447244))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43923 (_ BitVec 32)) Bool)

(assert (=> b!807837 (= res!552127 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!807838 () Bool)

(declare-fun res!552128 () Bool)

(assert (=> b!807838 (=> (not res!552128) (not e!447241))))

(assert (=> b!807838 (= res!552128 (and (= (size!21456 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21456 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21456 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!807839 () Bool)

(declare-fun res!552136 () Bool)

(assert (=> b!807839 (=> (not res!552136) (not e!447241))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!807839 (= res!552136 (validKeyInArray!0 (select (arr!21035 a!3170) j!153)))))

(declare-fun b!807840 () Bool)

(declare-fun res!552132 () Bool)

(assert (=> b!807840 (=> (not res!552132) (not e!447244))))

(declare-datatypes ((List!15051 0))(
  ( (Nil!15048) (Cons!15047 (h!16176 (_ BitVec 64)) (t!21374 List!15051)) )
))
(declare-fun arrayNoDuplicates!0 (array!43923 (_ BitVec 32) List!15051) Bool)

(assert (=> b!807840 (= res!552132 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15048))))

(declare-fun b!807841 () Bool)

(assert (=> b!807841 (= e!447243 e!447240)))

(declare-fun res!552126 () Bool)

(assert (=> b!807841 (=> (not res!552126) (not e!447240))))

(declare-fun lt!361983 () SeekEntryResult!8633)

(declare-fun lt!361979 () SeekEntryResult!8633)

(assert (=> b!807841 (= res!552126 (and (= lt!361979 lt!361983) (= lt!361983 (Found!8633 j!153)) (not (= (select (arr!21035 a!3170) index!1236) (select (arr!21035 a!3170) j!153)))))))

(assert (=> b!807841 (= lt!361983 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21035 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!807841 (= lt!361979 (seekEntryOrOpen!0 (select (arr!21035 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!807842 () Bool)

(assert (=> b!807842 (= e!447241 e!447244)))

(declare-fun res!552129 () Bool)

(assert (=> b!807842 (=> (not res!552129) (not e!447244))))

(declare-fun lt!361984 () SeekEntryResult!8633)

(assert (=> b!807842 (= res!552129 (or (= lt!361984 (MissingZero!8633 i!1163)) (= lt!361984 (MissingVacant!8633 i!1163))))))

(assert (=> b!807842 (= lt!361984 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!807843 () Bool)

(declare-fun res!552130 () Bool)

(assert (=> b!807843 (=> (not res!552130) (not e!447241))))

(assert (=> b!807843 (= res!552130 (validKeyInArray!0 k!2044))))

(assert (= (and start!69272 res!552134) b!807838))

(assert (= (and b!807838 res!552128) b!807839))

(assert (= (and b!807839 res!552136) b!807843))

(assert (= (and b!807843 res!552130) b!807833))

(assert (= (and b!807833 res!552133) b!807842))

(assert (= (and b!807842 res!552129) b!807837))

(assert (= (and b!807837 res!552127) b!807840))

(assert (= (and b!807840 res!552132) b!807834))

(assert (= (and b!807834 res!552135) b!807835))

(assert (= (and b!807835 res!552131) b!807841))

(assert (= (and b!807841 res!552126) b!807836))

(declare-fun m!750047 () Bool)

(assert (=> start!69272 m!750047))

(declare-fun m!750049 () Bool)

(assert (=> start!69272 m!750049))

(declare-fun m!750051 () Bool)

(assert (=> b!807836 m!750051))

(declare-fun m!750053 () Bool)

(assert (=> b!807835 m!750053))

(declare-fun m!750055 () Bool)

(assert (=> b!807835 m!750055))

(declare-fun m!750057 () Bool)

(assert (=> b!807835 m!750057))

(declare-fun m!750059 () Bool)

(assert (=> b!807835 m!750059))

(declare-fun m!750061 () Bool)

(assert (=> b!807839 m!750061))

(assert (=> b!807839 m!750061))

(declare-fun m!750063 () Bool)

(assert (=> b!807839 m!750063))

(declare-fun m!750065 () Bool)

(assert (=> b!807840 m!750065))

(declare-fun m!750067 () Bool)

(assert (=> b!807842 m!750067))

(declare-fun m!750069 () Bool)

(assert (=> b!807833 m!750069))

(declare-fun m!750071 () Bool)

(assert (=> b!807841 m!750071))

(assert (=> b!807841 m!750061))

(assert (=> b!807841 m!750061))

(declare-fun m!750073 () Bool)

(assert (=> b!807841 m!750073))

(assert (=> b!807841 m!750061))

(declare-fun m!750075 () Bool)

(assert (=> b!807841 m!750075))

(declare-fun m!750077 () Bool)

(assert (=> b!807834 m!750077))

(declare-fun m!750079 () Bool)

(assert (=> b!807834 m!750079))

(declare-fun m!750081 () Bool)

(assert (=> b!807837 m!750081))

(declare-fun m!750083 () Bool)

(assert (=> b!807843 m!750083))

(push 1)

