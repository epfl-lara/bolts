; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69202 () Bool)

(assert start!69202)

(declare-fun b!806671 () Bool)

(declare-fun res!550967 () Bool)

(declare-fun e!446713 () Bool)

(assert (=> b!806671 (=> (not res!550967) (not e!446713))))

(declare-datatypes ((array!43853 0))(
  ( (array!43854 (arr!21000 (Array (_ BitVec 32) (_ BitVec 64))) (size!21421 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43853)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43853 (_ BitVec 32)) Bool)

(assert (=> b!806671 (= res!550967 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!806672 () Bool)

(declare-fun e!446711 () Bool)

(assert (=> b!806672 (= e!446713 e!446711)))

(declare-fun res!550970 () Bool)

(assert (=> b!806672 (=> (not res!550970) (not e!446711))))

(declare-datatypes ((SeekEntryResult!8598 0))(
  ( (MissingZero!8598 (index!36759 (_ BitVec 32))) (Found!8598 (index!36760 (_ BitVec 32))) (Intermediate!8598 (undefined!9410 Bool) (index!36761 (_ BitVec 32)) (x!67603 (_ BitVec 32))) (Undefined!8598) (MissingVacant!8598 (index!36762 (_ BitVec 32))) )
))
(declare-fun lt!361341 () SeekEntryResult!8598)

(declare-fun lt!361339 () SeekEntryResult!8598)

(assert (=> b!806672 (= res!550970 (= lt!361341 lt!361339))))

(declare-fun lt!361335 () (_ BitVec 64))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!361337 () array!43853)

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43853 (_ BitVec 32)) SeekEntryResult!8598)

(assert (=> b!806672 (= lt!361339 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!361335 lt!361337 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43853 (_ BitVec 32)) SeekEntryResult!8598)

(assert (=> b!806672 (= lt!361341 (seekEntryOrOpen!0 lt!361335 lt!361337 mask!3266))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!806672 (= lt!361335 (select (store (arr!21000 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!806672 (= lt!361337 (array!43854 (store (arr!21000 a!3170) i!1163 k!2044) (size!21421 a!3170)))))

(declare-fun b!806673 () Bool)

(declare-fun e!446710 () Bool)

(declare-fun e!446709 () Bool)

(assert (=> b!806673 (= e!446710 e!446709)))

(declare-fun res!550968 () Bool)

(assert (=> b!806673 (=> (not res!550968) (not e!446709))))

(declare-fun lt!361342 () SeekEntryResult!8598)

(declare-fun lt!361340 () SeekEntryResult!8598)

(assert (=> b!806673 (= res!550968 (and (= lt!361340 lt!361342) (= (select (arr!21000 a!3170) index!1236) (select (arr!21000 a!3170) j!153))))))

(assert (=> b!806673 (= lt!361342 (Found!8598 j!153))))

(declare-fun b!806674 () Bool)

(declare-fun res!550973 () Bool)

(assert (=> b!806674 (=> (not res!550973) (not e!446713))))

(declare-datatypes ((List!15016 0))(
  ( (Nil!15013) (Cons!15012 (h!16141 (_ BitVec 64)) (t!21339 List!15016)) )
))
(declare-fun arrayNoDuplicates!0 (array!43853 (_ BitVec 32) List!15016) Bool)

(assert (=> b!806674 (= res!550973 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15013))))

(declare-fun b!806675 () Bool)

(declare-fun e!446708 () Bool)

(assert (=> b!806675 (= e!446708 e!446713)))

(declare-fun res!550969 () Bool)

(assert (=> b!806675 (=> (not res!550969) (not e!446713))))

(declare-fun lt!361336 () SeekEntryResult!8598)

(assert (=> b!806675 (= res!550969 (or (= lt!361336 (MissingZero!8598 i!1163)) (= lt!361336 (MissingVacant!8598 i!1163))))))

(assert (=> b!806675 (= lt!361336 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!806676 () Bool)

(declare-fun res!550965 () Bool)

(assert (=> b!806676 (=> (not res!550965) (not e!446708))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!806676 (= res!550965 (validKeyInArray!0 (select (arr!21000 a!3170) j!153)))))

(declare-fun b!806677 () Bool)

(assert (=> b!806677 (= e!446709 (not (or (not (= lt!361339 lt!361342)) (= lt!361339 lt!361340))))))

(assert (=> b!806677 (= lt!361339 (Found!8598 index!1236))))

(declare-fun b!806679 () Bool)

(declare-fun res!550966 () Bool)

(assert (=> b!806679 (=> (not res!550966) (not e!446713))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!806679 (= res!550966 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21421 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!21000 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21421 a!3170)) (= (select (arr!21000 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!806680 () Bool)

(declare-fun res!550974 () Bool)

(assert (=> b!806680 (=> (not res!550974) (not e!446708))))

(declare-fun arrayContainsKey!0 (array!43853 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!806680 (= res!550974 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!806678 () Bool)

(assert (=> b!806678 (= e!446711 e!446710)))

(declare-fun res!550975 () Bool)

(assert (=> b!806678 (=> (not res!550975) (not e!446710))))

(declare-fun lt!361338 () SeekEntryResult!8598)

(assert (=> b!806678 (= res!550975 (= lt!361338 lt!361340))))

(assert (=> b!806678 (= lt!361340 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21000 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!806678 (= lt!361338 (seekEntryOrOpen!0 (select (arr!21000 a!3170) j!153) a!3170 mask!3266))))

(declare-fun res!550971 () Bool)

(assert (=> start!69202 (=> (not res!550971) (not e!446708))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69202 (= res!550971 (validMask!0 mask!3266))))

(assert (=> start!69202 e!446708))

(assert (=> start!69202 true))

(declare-fun array_inv!16774 (array!43853) Bool)

(assert (=> start!69202 (array_inv!16774 a!3170)))

(declare-fun b!806681 () Bool)

(declare-fun res!550972 () Bool)

(assert (=> b!806681 (=> (not res!550972) (not e!446708))))

(assert (=> b!806681 (= res!550972 (and (= (size!21421 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21421 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21421 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!806682 () Bool)

(declare-fun res!550964 () Bool)

(assert (=> b!806682 (=> (not res!550964) (not e!446708))))

(assert (=> b!806682 (= res!550964 (validKeyInArray!0 k!2044))))

(assert (= (and start!69202 res!550971) b!806681))

(assert (= (and b!806681 res!550972) b!806676))

(assert (= (and b!806676 res!550965) b!806682))

(assert (= (and b!806682 res!550964) b!806680))

(assert (= (and b!806680 res!550974) b!806675))

(assert (= (and b!806675 res!550969) b!806671))

(assert (= (and b!806671 res!550967) b!806674))

(assert (= (and b!806674 res!550973) b!806679))

(assert (= (and b!806679 res!550966) b!806672))

(assert (= (and b!806672 res!550970) b!806678))

(assert (= (and b!806678 res!550975) b!806673))

(assert (= (and b!806673 res!550968) b!806677))

(declare-fun m!748723 () Bool)

(assert (=> b!806680 m!748723))

(declare-fun m!748725 () Bool)

(assert (=> b!806674 m!748725))

(declare-fun m!748727 () Bool)

(assert (=> b!806682 m!748727))

(declare-fun m!748729 () Bool)

(assert (=> b!806679 m!748729))

(declare-fun m!748731 () Bool)

(assert (=> b!806679 m!748731))

(declare-fun m!748733 () Bool)

(assert (=> b!806673 m!748733))

(declare-fun m!748735 () Bool)

(assert (=> b!806673 m!748735))

(declare-fun m!748737 () Bool)

(assert (=> b!806675 m!748737))

(declare-fun m!748739 () Bool)

(assert (=> b!806672 m!748739))

(declare-fun m!748741 () Bool)

(assert (=> b!806672 m!748741))

(declare-fun m!748743 () Bool)

(assert (=> b!806672 m!748743))

(declare-fun m!748745 () Bool)

(assert (=> b!806672 m!748745))

(assert (=> b!806676 m!748735))

(assert (=> b!806676 m!748735))

(declare-fun m!748747 () Bool)

(assert (=> b!806676 m!748747))

(declare-fun m!748749 () Bool)

(assert (=> start!69202 m!748749))

(declare-fun m!748751 () Bool)

(assert (=> start!69202 m!748751))

(assert (=> b!806678 m!748735))

(assert (=> b!806678 m!748735))

(declare-fun m!748753 () Bool)

(assert (=> b!806678 m!748753))

(assert (=> b!806678 m!748735))

(declare-fun m!748755 () Bool)

(assert (=> b!806678 m!748755))

(declare-fun m!748757 () Bool)

(assert (=> b!806671 m!748757))

(push 1)

