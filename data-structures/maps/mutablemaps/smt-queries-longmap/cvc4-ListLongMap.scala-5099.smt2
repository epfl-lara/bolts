; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69224 () Bool)

(assert start!69224)

(declare-fun b!807041 () Bool)

(declare-fun res!551337 () Bool)

(declare-fun e!446883 () Bool)

(assert (=> b!807041 (=> (not res!551337) (not e!446883))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(declare-datatypes ((array!43875 0))(
  ( (array!43876 (arr!21011 (Array (_ BitVec 32) (_ BitVec 64))) (size!21432 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43875)

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!807041 (= res!551337 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21432 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!21011 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21432 a!3170)) (= (select (arr!21011 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!807043 () Bool)

(declare-fun res!551342 () Bool)

(declare-fun e!446881 () Bool)

(assert (=> b!807043 (=> (not res!551342) (not e!446881))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!43875 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!807043 (= res!551342 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!807044 () Bool)

(assert (=> b!807044 (= e!446881 e!446883)))

(declare-fun res!551340 () Bool)

(assert (=> b!807044 (=> (not res!551340) (not e!446883))))

(declare-datatypes ((SeekEntryResult!8609 0))(
  ( (MissingZero!8609 (index!36803 (_ BitVec 32))) (Found!8609 (index!36804 (_ BitVec 32))) (Intermediate!8609 (undefined!9421 Bool) (index!36805 (_ BitVec 32)) (x!67638 (_ BitVec 32))) (Undefined!8609) (MissingVacant!8609 (index!36806 (_ BitVec 32))) )
))
(declare-fun lt!361551 () SeekEntryResult!8609)

(assert (=> b!807044 (= res!551340 (or (= lt!361551 (MissingZero!8609 i!1163)) (= lt!361551 (MissingVacant!8609 i!1163))))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43875 (_ BitVec 32)) SeekEntryResult!8609)

(assert (=> b!807044 (= lt!361551 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!807045 () Bool)

(declare-fun e!446884 () Bool)

(assert (=> b!807045 (= e!446883 e!446884)))

(declare-fun res!551343 () Bool)

(assert (=> b!807045 (=> (not res!551343) (not e!446884))))

(declare-fun lt!361549 () (_ BitVec 64))

(declare-fun lt!361548 () array!43875)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43875 (_ BitVec 32)) SeekEntryResult!8609)

(assert (=> b!807045 (= res!551343 (= (seekEntryOrOpen!0 lt!361549 lt!361548 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!361549 lt!361548 mask!3266)))))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!807045 (= lt!361549 (select (store (arr!21011 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!807045 (= lt!361548 (array!43876 (store (arr!21011 a!3170) i!1163 k!2044) (size!21432 a!3170)))))

(declare-fun b!807046 () Bool)

(declare-fun res!551341 () Bool)

(assert (=> b!807046 (=> (not res!551341) (not e!446883))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43875 (_ BitVec 32)) Bool)

(assert (=> b!807046 (= res!551341 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!807047 () Bool)

(declare-fun e!446880 () Bool)

(assert (=> b!807047 (= e!446880 false)))

(declare-fun lt!361550 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!807047 (= lt!361550 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!807042 () Bool)

(declare-fun res!551334 () Bool)

(assert (=> b!807042 (=> (not res!551334) (not e!446881))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!807042 (= res!551334 (validKeyInArray!0 (select (arr!21011 a!3170) j!153)))))

(declare-fun res!551335 () Bool)

(assert (=> start!69224 (=> (not res!551335) (not e!446881))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69224 (= res!551335 (validMask!0 mask!3266))))

(assert (=> start!69224 e!446881))

(assert (=> start!69224 true))

(declare-fun array_inv!16785 (array!43875) Bool)

(assert (=> start!69224 (array_inv!16785 a!3170)))

(declare-fun b!807048 () Bool)

(declare-fun res!551344 () Bool)

(assert (=> b!807048 (=> (not res!551344) (not e!446881))))

(assert (=> b!807048 (= res!551344 (validKeyInArray!0 k!2044))))

(declare-fun b!807049 () Bool)

(assert (=> b!807049 (= e!446884 e!446880)))

(declare-fun res!551339 () Bool)

(assert (=> b!807049 (=> (not res!551339) (not e!446880))))

(declare-fun lt!361552 () SeekEntryResult!8609)

(declare-fun lt!361547 () SeekEntryResult!8609)

(assert (=> b!807049 (= res!551339 (and (= lt!361552 lt!361547) (= lt!361547 (Found!8609 j!153)) (not (= (select (arr!21011 a!3170) index!1236) (select (arr!21011 a!3170) j!153)))))))

(assert (=> b!807049 (= lt!361547 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21011 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!807049 (= lt!361552 (seekEntryOrOpen!0 (select (arr!21011 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!807050 () Bool)

(declare-fun res!551338 () Bool)

(assert (=> b!807050 (=> (not res!551338) (not e!446881))))

(assert (=> b!807050 (= res!551338 (and (= (size!21432 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21432 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21432 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!807051 () Bool)

(declare-fun res!551336 () Bool)

(assert (=> b!807051 (=> (not res!551336) (not e!446883))))

(declare-datatypes ((List!15027 0))(
  ( (Nil!15024) (Cons!15023 (h!16152 (_ BitVec 64)) (t!21350 List!15027)) )
))
(declare-fun arrayNoDuplicates!0 (array!43875 (_ BitVec 32) List!15027) Bool)

(assert (=> b!807051 (= res!551336 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15024))))

(assert (= (and start!69224 res!551335) b!807050))

(assert (= (and b!807050 res!551338) b!807042))

(assert (= (and b!807042 res!551334) b!807048))

(assert (= (and b!807048 res!551344) b!807043))

(assert (= (and b!807043 res!551342) b!807044))

(assert (= (and b!807044 res!551340) b!807046))

(assert (= (and b!807046 res!551341) b!807051))

(assert (= (and b!807051 res!551336) b!807041))

(assert (= (and b!807041 res!551337) b!807045))

(assert (= (and b!807045 res!551343) b!807049))

(assert (= (and b!807049 res!551339) b!807047))

(declare-fun m!749135 () Bool)

(assert (=> b!807051 m!749135))

(declare-fun m!749137 () Bool)

(assert (=> b!807047 m!749137))

(declare-fun m!749139 () Bool)

(assert (=> b!807042 m!749139))

(assert (=> b!807042 m!749139))

(declare-fun m!749141 () Bool)

(assert (=> b!807042 m!749141))

(declare-fun m!749143 () Bool)

(assert (=> b!807043 m!749143))

(declare-fun m!749145 () Bool)

(assert (=> b!807041 m!749145))

(declare-fun m!749147 () Bool)

(assert (=> b!807041 m!749147))

(declare-fun m!749149 () Bool)

(assert (=> b!807045 m!749149))

(declare-fun m!749151 () Bool)

(assert (=> b!807045 m!749151))

(declare-fun m!749153 () Bool)

(assert (=> b!807045 m!749153))

(declare-fun m!749155 () Bool)

(assert (=> b!807045 m!749155))

(declare-fun m!749157 () Bool)

(assert (=> b!807046 m!749157))

(declare-fun m!749159 () Bool)

(assert (=> start!69224 m!749159))

(declare-fun m!749161 () Bool)

(assert (=> start!69224 m!749161))

(declare-fun m!749163 () Bool)

(assert (=> b!807049 m!749163))

(assert (=> b!807049 m!749139))

(assert (=> b!807049 m!749139))

(declare-fun m!749165 () Bool)

(assert (=> b!807049 m!749165))

(assert (=> b!807049 m!749139))

(declare-fun m!749167 () Bool)

(assert (=> b!807049 m!749167))

(declare-fun m!749169 () Bool)

(assert (=> b!807048 m!749169))

(declare-fun m!749171 () Bool)

(assert (=> b!807044 m!749171))

(push 1)

