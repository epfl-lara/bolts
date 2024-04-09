; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69274 () Bool)

(assert start!69274)

(declare-fun b!807866 () Bool)

(declare-fun e!447259 () Bool)

(assert (=> b!807866 (= e!447259 false)))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun lt!362000 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!807866 (= lt!362000 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!807867 () Bool)

(declare-fun res!552159 () Bool)

(declare-fun e!447255 () Bool)

(assert (=> b!807867 (=> (not res!552159) (not e!447255))))

(declare-datatypes ((array!43925 0))(
  ( (array!43926 (arr!21036 (Array (_ BitVec 32) (_ BitVec 64))) (size!21457 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43925)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43925 (_ BitVec 32)) Bool)

(assert (=> b!807867 (= res!552159 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun res!552162 () Bool)

(declare-fun e!447258 () Bool)

(assert (=> start!69274 (=> (not res!552162) (not e!447258))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69274 (= res!552162 (validMask!0 mask!3266))))

(assert (=> start!69274 e!447258))

(assert (=> start!69274 true))

(declare-fun array_inv!16810 (array!43925) Bool)

(assert (=> start!69274 (array_inv!16810 a!3170)))

(declare-fun b!807868 () Bool)

(declare-fun res!552160 () Bool)

(assert (=> b!807868 (=> (not res!552160) (not e!447255))))

(declare-datatypes ((List!15052 0))(
  ( (Nil!15049) (Cons!15048 (h!16177 (_ BitVec 64)) (t!21375 List!15052)) )
))
(declare-fun arrayNoDuplicates!0 (array!43925 (_ BitVec 32) List!15052) Bool)

(assert (=> b!807868 (= res!552160 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15049))))

(declare-fun b!807869 () Bool)

(declare-fun res!552169 () Bool)

(assert (=> b!807869 (=> (not res!552169) (not e!447255))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!807869 (= res!552169 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21457 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!21036 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21457 a!3170)) (= (select (arr!21036 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!807870 () Bool)

(declare-fun res!552168 () Bool)

(assert (=> b!807870 (=> (not res!552168) (not e!447258))))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!807870 (= res!552168 (and (= (size!21457 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21457 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21457 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!807871 () Bool)

(declare-fun e!447257 () Bool)

(assert (=> b!807871 (= e!447255 e!447257)))

(declare-fun res!552167 () Bool)

(assert (=> b!807871 (=> (not res!552167) (not e!447257))))

(declare-fun lt!362001 () (_ BitVec 64))

(declare-fun lt!361998 () array!43925)

(declare-datatypes ((SeekEntryResult!8634 0))(
  ( (MissingZero!8634 (index!36903 (_ BitVec 32))) (Found!8634 (index!36904 (_ BitVec 32))) (Intermediate!8634 (undefined!9446 Bool) (index!36905 (_ BitVec 32)) (x!67735 (_ BitVec 32))) (Undefined!8634) (MissingVacant!8634 (index!36906 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43925 (_ BitVec 32)) SeekEntryResult!8634)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43925 (_ BitVec 32)) SeekEntryResult!8634)

(assert (=> b!807871 (= res!552167 (= (seekEntryOrOpen!0 lt!362001 lt!361998 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!362001 lt!361998 mask!3266)))))

(declare-fun k!2044 () (_ BitVec 64))

(assert (=> b!807871 (= lt!362001 (select (store (arr!21036 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!807871 (= lt!361998 (array!43926 (store (arr!21036 a!3170) i!1163 k!2044) (size!21457 a!3170)))))

(declare-fun b!807872 () Bool)

(declare-fun res!552161 () Bool)

(assert (=> b!807872 (=> (not res!552161) (not e!447258))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!807872 (= res!552161 (validKeyInArray!0 k!2044))))

(declare-fun b!807873 () Bool)

(declare-fun res!552165 () Bool)

(assert (=> b!807873 (=> (not res!552165) (not e!447258))))

(declare-fun arrayContainsKey!0 (array!43925 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!807873 (= res!552165 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!807874 () Bool)

(assert (=> b!807874 (= e!447257 e!447259)))

(declare-fun res!552163 () Bool)

(assert (=> b!807874 (=> (not res!552163) (not e!447259))))

(declare-fun lt!361999 () SeekEntryResult!8634)

(declare-fun lt!362002 () SeekEntryResult!8634)

(assert (=> b!807874 (= res!552163 (and (= lt!362002 lt!361999) (= lt!361999 (Found!8634 j!153)) (not (= (select (arr!21036 a!3170) index!1236) (select (arr!21036 a!3170) j!153)))))))

(assert (=> b!807874 (= lt!361999 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21036 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!807874 (= lt!362002 (seekEntryOrOpen!0 (select (arr!21036 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!807875 () Bool)

(declare-fun res!552164 () Bool)

(assert (=> b!807875 (=> (not res!552164) (not e!447258))))

(assert (=> b!807875 (= res!552164 (validKeyInArray!0 (select (arr!21036 a!3170) j!153)))))

(declare-fun b!807876 () Bool)

(assert (=> b!807876 (= e!447258 e!447255)))

(declare-fun res!552166 () Bool)

(assert (=> b!807876 (=> (not res!552166) (not e!447255))))

(declare-fun lt!361997 () SeekEntryResult!8634)

(assert (=> b!807876 (= res!552166 (or (= lt!361997 (MissingZero!8634 i!1163)) (= lt!361997 (MissingVacant!8634 i!1163))))))

(assert (=> b!807876 (= lt!361997 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(assert (= (and start!69274 res!552162) b!807870))

(assert (= (and b!807870 res!552168) b!807875))

(assert (= (and b!807875 res!552164) b!807872))

(assert (= (and b!807872 res!552161) b!807873))

(assert (= (and b!807873 res!552165) b!807876))

(assert (= (and b!807876 res!552166) b!807867))

(assert (= (and b!807867 res!552159) b!807868))

(assert (= (and b!807868 res!552160) b!807869))

(assert (= (and b!807869 res!552169) b!807871))

(assert (= (and b!807871 res!552167) b!807874))

(assert (= (and b!807874 res!552163) b!807866))

(declare-fun m!750085 () Bool)

(assert (=> b!807871 m!750085))

(declare-fun m!750087 () Bool)

(assert (=> b!807871 m!750087))

(declare-fun m!750089 () Bool)

(assert (=> b!807871 m!750089))

(declare-fun m!750091 () Bool)

(assert (=> b!807871 m!750091))

(declare-fun m!750093 () Bool)

(assert (=> b!807869 m!750093))

(declare-fun m!750095 () Bool)

(assert (=> b!807869 m!750095))

(declare-fun m!750097 () Bool)

(assert (=> b!807866 m!750097))

(declare-fun m!750099 () Bool)

(assert (=> b!807876 m!750099))

(declare-fun m!750101 () Bool)

(assert (=> b!807874 m!750101))

(declare-fun m!750103 () Bool)

(assert (=> b!807874 m!750103))

(assert (=> b!807874 m!750103))

(declare-fun m!750105 () Bool)

(assert (=> b!807874 m!750105))

(assert (=> b!807874 m!750103))

(declare-fun m!750107 () Bool)

(assert (=> b!807874 m!750107))

(assert (=> b!807875 m!750103))

(assert (=> b!807875 m!750103))

(declare-fun m!750109 () Bool)

(assert (=> b!807875 m!750109))

(declare-fun m!750111 () Bool)

(assert (=> b!807873 m!750111))

(declare-fun m!750113 () Bool)

(assert (=> b!807872 m!750113))

(declare-fun m!750115 () Bool)

(assert (=> start!69274 m!750115))

(declare-fun m!750117 () Bool)

(assert (=> start!69274 m!750117))

(declare-fun m!750119 () Bool)

(assert (=> b!807868 m!750119))

(declare-fun m!750121 () Bool)

(assert (=> b!807867 m!750121))

(push 1)

