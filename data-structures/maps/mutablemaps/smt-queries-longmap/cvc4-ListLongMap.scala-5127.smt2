; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69668 () Bool)

(assert start!69668)

(declare-fun b!811307 () Bool)

(declare-fun e!449070 () Bool)

(declare-fun e!449068 () Bool)

(assert (=> b!811307 (= e!449070 e!449068)))

(declare-fun res!554522 () Bool)

(assert (=> b!811307 (=> (not res!554522) (not e!449068))))

(declare-datatypes ((SeekEntryResult!8693 0))(
  ( (MissingZero!8693 (index!37142 (_ BitVec 32))) (Found!8693 (index!37143 (_ BitVec 32))) (Intermediate!8693 (undefined!9505 Bool) (index!37144 (_ BitVec 32)) (x!67979 (_ BitVec 32))) (Undefined!8693) (MissingVacant!8693 (index!37145 (_ BitVec 32))) )
))
(declare-fun lt!363779 () SeekEntryResult!8693)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!811307 (= res!554522 (or (= lt!363779 (MissingZero!8693 i!1163)) (= lt!363779 (MissingVacant!8693 i!1163))))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-datatypes ((array!44058 0))(
  ( (array!44059 (arr!21095 (Array (_ BitVec 32) (_ BitVec 64))) (size!21516 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!44058)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!44058 (_ BitVec 32)) SeekEntryResult!8693)

(assert (=> b!811307 (= lt!363779 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!811309 () Bool)

(declare-fun res!554524 () Bool)

(assert (=> b!811309 (=> (not res!554524) (not e!449070))))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!811309 (= res!554524 (and (= (size!21516 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21516 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21516 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!811310 () Bool)

(declare-fun res!554521 () Bool)

(assert (=> b!811310 (=> (not res!554521) (not e!449068))))

(declare-datatypes ((List!15111 0))(
  ( (Nil!15108) (Cons!15107 (h!16236 (_ BitVec 64)) (t!21434 List!15111)) )
))
(declare-fun arrayNoDuplicates!0 (array!44058 (_ BitVec 32) List!15111) Bool)

(assert (=> b!811310 (= res!554521 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15108))))

(declare-fun b!811311 () Bool)

(declare-fun e!449069 () Bool)

(assert (=> b!811311 (= e!449069 (not true))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!363781 () (_ BitVec 32))

(declare-fun lt!363777 () (_ BitVec 64))

(declare-fun lt!363780 () array!44058)

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!44058 (_ BitVec 32)) SeekEntryResult!8693)

(assert (=> b!811311 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!363781 vacantAfter!23 lt!363777 lt!363780 mask!3266) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!363781 vacantBefore!23 (select (arr!21095 a!3170) j!153) a!3170 mask!3266))))

(declare-datatypes ((Unit!27648 0))(
  ( (Unit!27649) )
))
(declare-fun lt!363778 () Unit!27648)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!44058 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27648)

(assert (=> b!811311 (= lt!363778 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3170 i!1163 k!2044 j!153 lt!363781 (bvadd #b00000000000000000000000000000001 x!1077) vacantBefore!23 vacantAfter!23 mask!3266))))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!811311 (= lt!363781 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!811312 () Bool)

(declare-fun res!554527 () Bool)

(assert (=> b!811312 (=> (not res!554527) (not e!449070))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!811312 (= res!554527 (validKeyInArray!0 k!2044))))

(declare-fun b!811313 () Bool)

(declare-fun e!449071 () Bool)

(assert (=> b!811313 (= e!449071 e!449069)))

(declare-fun res!554529 () Bool)

(assert (=> b!811313 (=> (not res!554529) (not e!449069))))

(declare-fun lt!363776 () SeekEntryResult!8693)

(declare-fun lt!363775 () SeekEntryResult!8693)

(assert (=> b!811313 (= res!554529 (and (= lt!363775 lt!363776) (= lt!363776 (Found!8693 j!153)) (not (= (select (arr!21095 a!3170) index!1236) (select (arr!21095 a!3170) j!153)))))))

(assert (=> b!811313 (= lt!363776 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21095 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!811313 (= lt!363775 (seekEntryOrOpen!0 (select (arr!21095 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!811314 () Bool)

(declare-fun res!554520 () Bool)

(assert (=> b!811314 (=> (not res!554520) (not e!449068))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44058 (_ BitVec 32)) Bool)

(assert (=> b!811314 (= res!554520 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!811315 () Bool)

(assert (=> b!811315 (= e!449068 e!449071)))

(declare-fun res!554523 () Bool)

(assert (=> b!811315 (=> (not res!554523) (not e!449071))))

(assert (=> b!811315 (= res!554523 (= (seekEntryOrOpen!0 lt!363777 lt!363780 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!363777 lt!363780 mask!3266)))))

(assert (=> b!811315 (= lt!363777 (select (store (arr!21095 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!811315 (= lt!363780 (array!44059 (store (arr!21095 a!3170) i!1163 k!2044) (size!21516 a!3170)))))

(declare-fun b!811316 () Bool)

(declare-fun res!554526 () Bool)

(assert (=> b!811316 (=> (not res!554526) (not e!449070))))

(assert (=> b!811316 (= res!554526 (validKeyInArray!0 (select (arr!21095 a!3170) j!153)))))

(declare-fun b!811317 () Bool)

(declare-fun res!554525 () Bool)

(assert (=> b!811317 (=> (not res!554525) (not e!449070))))

(declare-fun arrayContainsKey!0 (array!44058 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!811317 (= res!554525 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!811308 () Bool)

(declare-fun res!554530 () Bool)

(assert (=> b!811308 (=> (not res!554530) (not e!449068))))

(assert (=> b!811308 (= res!554530 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21516 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!21095 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21516 a!3170)) (= (select (arr!21095 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun res!554528 () Bool)

(assert (=> start!69668 (=> (not res!554528) (not e!449070))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69668 (= res!554528 (validMask!0 mask!3266))))

(assert (=> start!69668 e!449070))

(assert (=> start!69668 true))

(declare-fun array_inv!16869 (array!44058) Bool)

(assert (=> start!69668 (array_inv!16869 a!3170)))

(assert (= (and start!69668 res!554528) b!811309))

(assert (= (and b!811309 res!554524) b!811316))

(assert (= (and b!811316 res!554526) b!811312))

(assert (= (and b!811312 res!554527) b!811317))

(assert (= (and b!811317 res!554525) b!811307))

(assert (= (and b!811307 res!554522) b!811314))

(assert (= (and b!811314 res!554520) b!811310))

(assert (= (and b!811310 res!554521) b!811308))

(assert (= (and b!811308 res!554530) b!811315))

(assert (= (and b!811315 res!554523) b!811313))

(assert (= (and b!811313 res!554529) b!811311))

(declare-fun m!753761 () Bool)

(assert (=> b!811317 m!753761))

(declare-fun m!753763 () Bool)

(assert (=> b!811316 m!753763))

(assert (=> b!811316 m!753763))

(declare-fun m!753765 () Bool)

(assert (=> b!811316 m!753765))

(declare-fun m!753767 () Bool)

(assert (=> b!811314 m!753767))

(declare-fun m!753769 () Bool)

(assert (=> b!811307 m!753769))

(assert (=> b!811311 m!753763))

(declare-fun m!753771 () Bool)

(assert (=> b!811311 m!753771))

(declare-fun m!753773 () Bool)

(assert (=> b!811311 m!753773))

(declare-fun m!753775 () Bool)

(assert (=> b!811311 m!753775))

(assert (=> b!811311 m!753763))

(declare-fun m!753777 () Bool)

(assert (=> b!811311 m!753777))

(declare-fun m!753779 () Bool)

(assert (=> b!811313 m!753779))

(assert (=> b!811313 m!753763))

(assert (=> b!811313 m!753763))

(declare-fun m!753781 () Bool)

(assert (=> b!811313 m!753781))

(assert (=> b!811313 m!753763))

(declare-fun m!753783 () Bool)

(assert (=> b!811313 m!753783))

(declare-fun m!753785 () Bool)

(assert (=> start!69668 m!753785))

(declare-fun m!753787 () Bool)

(assert (=> start!69668 m!753787))

(declare-fun m!753789 () Bool)

(assert (=> b!811312 m!753789))

(declare-fun m!753791 () Bool)

(assert (=> b!811308 m!753791))

(declare-fun m!753793 () Bool)

(assert (=> b!811308 m!753793))

(declare-fun m!753795 () Bool)

(assert (=> b!811315 m!753795))

(declare-fun m!753797 () Bool)

(assert (=> b!811315 m!753797))

(declare-fun m!753799 () Bool)

(assert (=> b!811315 m!753799))

(declare-fun m!753801 () Bool)

(assert (=> b!811315 m!753801))

(declare-fun m!753803 () Bool)

(assert (=> b!811310 m!753803))

(push 1)

