; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69034 () Bool)

(assert start!69034)

(declare-fun b!804984 () Bool)

(declare-fun res!549679 () Bool)

(declare-fun e!445870 () Bool)

(assert (=> b!804984 (=> (not res!549679) (not e!445870))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!804984 (= res!549679 (validKeyInArray!0 k!2044))))

(declare-fun res!549675 () Bool)

(assert (=> start!69034 (=> (not res!549675) (not e!445870))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69034 (= res!549675 (validMask!0 mask!3266))))

(assert (=> start!69034 e!445870))

(assert (=> start!69034 true))

(declare-datatypes ((array!43775 0))(
  ( (array!43776 (arr!20964 (Array (_ BitVec 32) (_ BitVec 64))) (size!21385 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43775)

(declare-fun array_inv!16738 (array!43775) Bool)

(assert (=> start!69034 (array_inv!16738 a!3170)))

(declare-fun b!804985 () Bool)

(declare-fun e!445868 () Bool)

(declare-fun e!445869 () Bool)

(assert (=> b!804985 (= e!445868 e!445869)))

(declare-fun res!549676 () Bool)

(assert (=> b!804985 (=> (not res!549676) (not e!445869))))

(declare-fun lt!360430 () (_ BitVec 64))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun lt!360426 () array!43775)

(declare-fun index!1236 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8562 0))(
  ( (MissingZero!8562 (index!36615 (_ BitVec 32))) (Found!8562 (index!36616 (_ BitVec 32))) (Intermediate!8562 (undefined!9374 Bool) (index!36617 (_ BitVec 32)) (x!67465 (_ BitVec 32))) (Undefined!8562) (MissingVacant!8562 (index!36618 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43775 (_ BitVec 32)) SeekEntryResult!8562)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43775 (_ BitVec 32)) SeekEntryResult!8562)

(assert (=> b!804985 (= res!549676 (= (seekEntryOrOpen!0 lt!360430 lt!360426 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!360430 lt!360426 mask!3266)))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!804985 (= lt!360430 (select (store (arr!20964 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!804985 (= lt!360426 (array!43776 (store (arr!20964 a!3170) i!1163 k!2044) (size!21385 a!3170)))))

(declare-fun b!804986 () Bool)

(declare-fun res!549674 () Bool)

(assert (=> b!804986 (=> (not res!549674) (not e!445870))))

(assert (=> b!804986 (= res!549674 (validKeyInArray!0 (select (arr!20964 a!3170) j!153)))))

(declare-fun b!804987 () Bool)

(assert (=> b!804987 (= e!445869 false)))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun lt!360428 () SeekEntryResult!8562)

(assert (=> b!804987 (= lt!360428 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20964 a!3170) j!153) a!3170 mask!3266))))

(declare-fun lt!360429 () SeekEntryResult!8562)

(assert (=> b!804987 (= lt!360429 (seekEntryOrOpen!0 (select (arr!20964 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!804988 () Bool)

(declare-fun res!549677 () Bool)

(assert (=> b!804988 (=> (not res!549677) (not e!445868))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43775 (_ BitVec 32)) Bool)

(assert (=> b!804988 (= res!549677 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!804989 () Bool)

(declare-fun res!549673 () Bool)

(assert (=> b!804989 (=> (not res!549673) (not e!445870))))

(declare-fun arrayContainsKey!0 (array!43775 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!804989 (= res!549673 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!804990 () Bool)

(assert (=> b!804990 (= e!445870 e!445868)))

(declare-fun res!549681 () Bool)

(assert (=> b!804990 (=> (not res!549681) (not e!445868))))

(declare-fun lt!360427 () SeekEntryResult!8562)

(assert (=> b!804990 (= res!549681 (or (= lt!360427 (MissingZero!8562 i!1163)) (= lt!360427 (MissingVacant!8562 i!1163))))))

(assert (=> b!804990 (= lt!360427 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!804991 () Bool)

(declare-fun res!549682 () Bool)

(assert (=> b!804991 (=> (not res!549682) (not e!445868))))

(assert (=> b!804991 (= res!549682 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21385 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20964 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21385 a!3170)) (= (select (arr!20964 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!804992 () Bool)

(declare-fun res!549678 () Bool)

(assert (=> b!804992 (=> (not res!549678) (not e!445870))))

(assert (=> b!804992 (= res!549678 (and (= (size!21385 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21385 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21385 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!804993 () Bool)

(declare-fun res!549680 () Bool)

(assert (=> b!804993 (=> (not res!549680) (not e!445868))))

(declare-datatypes ((List!14980 0))(
  ( (Nil!14977) (Cons!14976 (h!16105 (_ BitVec 64)) (t!21303 List!14980)) )
))
(declare-fun arrayNoDuplicates!0 (array!43775 (_ BitVec 32) List!14980) Bool)

(assert (=> b!804993 (= res!549680 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14977))))

(assert (= (and start!69034 res!549675) b!804992))

(assert (= (and b!804992 res!549678) b!804986))

(assert (= (and b!804986 res!549674) b!804984))

(assert (= (and b!804984 res!549679) b!804989))

(assert (= (and b!804989 res!549673) b!804990))

(assert (= (and b!804990 res!549681) b!804988))

(assert (= (and b!804988 res!549677) b!804993))

(assert (= (and b!804993 res!549680) b!804991))

(assert (= (and b!804991 res!549682) b!804985))

(assert (= (and b!804985 res!549676) b!804987))

(declare-fun m!746989 () Bool)

(assert (=> b!804993 m!746989))

(declare-fun m!746991 () Bool)

(assert (=> b!804986 m!746991))

(assert (=> b!804986 m!746991))

(declare-fun m!746993 () Bool)

(assert (=> b!804986 m!746993))

(declare-fun m!746995 () Bool)

(assert (=> b!804991 m!746995))

(declare-fun m!746997 () Bool)

(assert (=> b!804991 m!746997))

(assert (=> b!804987 m!746991))

(assert (=> b!804987 m!746991))

(declare-fun m!746999 () Bool)

(assert (=> b!804987 m!746999))

(assert (=> b!804987 m!746991))

(declare-fun m!747001 () Bool)

(assert (=> b!804987 m!747001))

(declare-fun m!747003 () Bool)

(assert (=> b!804985 m!747003))

(declare-fun m!747005 () Bool)

(assert (=> b!804985 m!747005))

(declare-fun m!747007 () Bool)

(assert (=> b!804985 m!747007))

(declare-fun m!747009 () Bool)

(assert (=> b!804985 m!747009))

(declare-fun m!747011 () Bool)

(assert (=> b!804990 m!747011))

(declare-fun m!747013 () Bool)

(assert (=> b!804984 m!747013))

(declare-fun m!747015 () Bool)

(assert (=> b!804989 m!747015))

(declare-fun m!747017 () Bool)

(assert (=> start!69034 m!747017))

(declare-fun m!747019 () Bool)

(assert (=> start!69034 m!747019))

(declare-fun m!747021 () Bool)

(assert (=> b!804988 m!747021))

(push 1)

