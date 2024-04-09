; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68806 () Bool)

(assert start!68806)

(declare-fun res!546176 () Bool)

(declare-fun e!444286 () Bool)

(assert (=> start!68806 (=> (not res!546176) (not e!444286))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68806 (= res!546176 (validMask!0 mask!3266))))

(assert (=> start!68806 e!444286))

(assert (=> start!68806 true))

(declare-datatypes ((array!43547 0))(
  ( (array!43548 (arr!20850 (Array (_ BitVec 32) (_ BitVec 64))) (size!21271 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43547)

(declare-fun array_inv!16624 (array!43547) Bool)

(assert (=> start!68806 (array_inv!16624 a!3170)))

(declare-fun b!801485 () Bool)

(declare-fun res!546179 () Bool)

(declare-fun e!444285 () Bool)

(assert (=> b!801485 (=> (not res!546179) (not e!444285))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!801485 (= res!546179 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21271 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20850 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21271 a!3170)) (= (select (arr!20850 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!801486 () Bool)

(declare-fun e!444289 () Bool)

(declare-fun e!444288 () Bool)

(assert (=> b!801486 (= e!444289 e!444288)))

(declare-fun res!546183 () Bool)

(assert (=> b!801486 (=> (not res!546183) (not e!444288))))

(declare-datatypes ((SeekEntryResult!8448 0))(
  ( (MissingZero!8448 (index!36159 (_ BitVec 32))) (Found!8448 (index!36160 (_ BitVec 32))) (Intermediate!8448 (undefined!9260 Bool) (index!36161 (_ BitVec 32)) (x!67047 (_ BitVec 32))) (Undefined!8448) (MissingVacant!8448 (index!36162 (_ BitVec 32))) )
))
(declare-fun lt!358302 () SeekEntryResult!8448)

(declare-fun lt!358301 () SeekEntryResult!8448)

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!801486 (= res!546183 (and (= lt!358301 lt!358302) (= lt!358302 (Found!8448 j!153)) (not (= (select (arr!20850 a!3170) index!1236) (select (arr!20850 a!3170) j!153)))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43547 (_ BitVec 32)) SeekEntryResult!8448)

(assert (=> b!801486 (= lt!358302 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20850 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43547 (_ BitVec 32)) SeekEntryResult!8448)

(assert (=> b!801486 (= lt!358301 (seekEntryOrOpen!0 (select (arr!20850 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!801487 () Bool)

(assert (=> b!801487 (= e!444288 (not true))))

(declare-fun lt!358299 () (_ BitVec 32))

(declare-fun lt!358297 () array!43547)

(declare-fun lt!358298 () (_ BitVec 64))

(assert (=> b!801487 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!358299 vacantAfter!23 lt!358298 lt!358297 mask!3266) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!358299 vacantBefore!23 (select (arr!20850 a!3170) j!153) a!3170 mask!3266))))

(declare-datatypes ((Unit!27438 0))(
  ( (Unit!27439) )
))
(declare-fun lt!358303 () Unit!27438)

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!43547 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27438)

(assert (=> b!801487 (= lt!358303 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3170 i!1163 k!2044 j!153 lt!358299 (bvadd #b00000000000000000000000000000001 x!1077) vacantBefore!23 vacantAfter!23 mask!3266))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!801487 (= lt!358299 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!801488 () Bool)

(declare-fun res!546174 () Bool)

(assert (=> b!801488 (=> (not res!546174) (not e!444285))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43547 (_ BitVec 32)) Bool)

(assert (=> b!801488 (= res!546174 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!801489 () Bool)

(declare-fun res!546180 () Bool)

(assert (=> b!801489 (=> (not res!546180) (not e!444286))))

(declare-fun arrayContainsKey!0 (array!43547 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!801489 (= res!546180 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!801490 () Bool)

(assert (=> b!801490 (= e!444285 e!444289)))

(declare-fun res!546182 () Bool)

(assert (=> b!801490 (=> (not res!546182) (not e!444289))))

(assert (=> b!801490 (= res!546182 (= (seekEntryOrOpen!0 lt!358298 lt!358297 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!358298 lt!358297 mask!3266)))))

(assert (=> b!801490 (= lt!358298 (select (store (arr!20850 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!801490 (= lt!358297 (array!43548 (store (arr!20850 a!3170) i!1163 k!2044) (size!21271 a!3170)))))

(declare-fun b!801491 () Bool)

(assert (=> b!801491 (= e!444286 e!444285)))

(declare-fun res!546178 () Bool)

(assert (=> b!801491 (=> (not res!546178) (not e!444285))))

(declare-fun lt!358300 () SeekEntryResult!8448)

(assert (=> b!801491 (= res!546178 (or (= lt!358300 (MissingZero!8448 i!1163)) (= lt!358300 (MissingVacant!8448 i!1163))))))

(assert (=> b!801491 (= lt!358300 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!801492 () Bool)

(declare-fun res!546177 () Bool)

(assert (=> b!801492 (=> (not res!546177) (not e!444286))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!801492 (= res!546177 (validKeyInArray!0 (select (arr!20850 a!3170) j!153)))))

(declare-fun b!801493 () Bool)

(declare-fun res!546181 () Bool)

(assert (=> b!801493 (=> (not res!546181) (not e!444285))))

(declare-datatypes ((List!14866 0))(
  ( (Nil!14863) (Cons!14862 (h!15991 (_ BitVec 64)) (t!21189 List!14866)) )
))
(declare-fun arrayNoDuplicates!0 (array!43547 (_ BitVec 32) List!14866) Bool)

(assert (=> b!801493 (= res!546181 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14863))))

(declare-fun b!801494 () Bool)

(declare-fun res!546175 () Bool)

(assert (=> b!801494 (=> (not res!546175) (not e!444286))))

(assert (=> b!801494 (= res!546175 (validKeyInArray!0 k!2044))))

(declare-fun b!801495 () Bool)

(declare-fun res!546184 () Bool)

(assert (=> b!801495 (=> (not res!546184) (not e!444286))))

(assert (=> b!801495 (= res!546184 (and (= (size!21271 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21271 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21271 a!3170)) (not (= i!1163 j!153))))))

(assert (= (and start!68806 res!546176) b!801495))

(assert (= (and b!801495 res!546184) b!801492))

(assert (= (and b!801492 res!546177) b!801494))

(assert (= (and b!801494 res!546175) b!801489))

(assert (= (and b!801489 res!546180) b!801491))

(assert (= (and b!801491 res!546178) b!801488))

(assert (= (and b!801488 res!546174) b!801493))

(assert (= (and b!801493 res!546181) b!801485))

(assert (= (and b!801485 res!546179) b!801490))

(assert (= (and b!801490 res!546182) b!801486))

(assert (= (and b!801486 res!546183) b!801487))

(declare-fun m!742765 () Bool)

(assert (=> b!801493 m!742765))

(declare-fun m!742767 () Bool)

(assert (=> b!801487 m!742767))

(declare-fun m!742769 () Bool)

(assert (=> b!801487 m!742769))

(declare-fun m!742771 () Bool)

(assert (=> b!801487 m!742771))

(assert (=> b!801487 m!742769))

(declare-fun m!742773 () Bool)

(assert (=> b!801487 m!742773))

(declare-fun m!742775 () Bool)

(assert (=> b!801487 m!742775))

(declare-fun m!742777 () Bool)

(assert (=> b!801494 m!742777))

(assert (=> b!801492 m!742769))

(assert (=> b!801492 m!742769))

(declare-fun m!742779 () Bool)

(assert (=> b!801492 m!742779))

(declare-fun m!742781 () Bool)

(assert (=> b!801486 m!742781))

(assert (=> b!801486 m!742769))

(assert (=> b!801486 m!742769))

(declare-fun m!742783 () Bool)

(assert (=> b!801486 m!742783))

(assert (=> b!801486 m!742769))

(declare-fun m!742785 () Bool)

(assert (=> b!801486 m!742785))

(declare-fun m!742787 () Bool)

(assert (=> b!801485 m!742787))

(declare-fun m!742789 () Bool)

(assert (=> b!801485 m!742789))

(declare-fun m!742791 () Bool)

(assert (=> b!801491 m!742791))

(declare-fun m!742793 () Bool)

(assert (=> b!801490 m!742793))

(declare-fun m!742795 () Bool)

(assert (=> b!801490 m!742795))

(declare-fun m!742797 () Bool)

(assert (=> b!801490 m!742797))

(declare-fun m!742799 () Bool)

(assert (=> b!801490 m!742799))

(declare-fun m!742801 () Bool)

(assert (=> b!801488 m!742801))

(declare-fun m!742803 () Bool)

(assert (=> start!68806 m!742803))

(declare-fun m!742805 () Bool)

(assert (=> start!68806 m!742805))

(declare-fun m!742807 () Bool)

(assert (=> b!801489 m!742807))

(push 1)

