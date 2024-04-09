; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69248 () Bool)

(assert start!69248)

(declare-fun b!807437 () Bool)

(declare-fun e!447062 () Bool)

(declare-fun e!447064 () Bool)

(assert (=> b!807437 (= e!447062 e!447064)))

(declare-fun res!551733 () Bool)

(assert (=> b!807437 (=> (not res!551733) (not e!447064))))

(declare-datatypes ((SeekEntryResult!8621 0))(
  ( (MissingZero!8621 (index!36851 (_ BitVec 32))) (Found!8621 (index!36852 (_ BitVec 32))) (Intermediate!8621 (undefined!9433 Bool) (index!36853 (_ BitVec 32)) (x!67682 (_ BitVec 32))) (Undefined!8621) (MissingVacant!8621 (index!36854 (_ BitVec 32))) )
))
(declare-fun lt!361767 () SeekEntryResult!8621)

(declare-datatypes ((array!43899 0))(
  ( (array!43900 (arr!21023 (Array (_ BitVec 32) (_ BitVec 64))) (size!21444 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43899)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun lt!361768 () SeekEntryResult!8621)

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!807437 (= res!551733 (and (= lt!361767 lt!361768) (= lt!361768 (Found!8621 j!153)) (not (= (select (arr!21023 a!3170) index!1236) (select (arr!21023 a!3170) j!153)))))))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43899 (_ BitVec 32)) SeekEntryResult!8621)

(assert (=> b!807437 (= lt!361768 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21023 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43899 (_ BitVec 32)) SeekEntryResult!8621)

(assert (=> b!807437 (= lt!361767 (seekEntryOrOpen!0 (select (arr!21023 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!807438 () Bool)

(declare-fun res!551738 () Bool)

(declare-fun e!447061 () Bool)

(assert (=> b!807438 (=> (not res!551738) (not e!447061))))

(declare-datatypes ((List!15039 0))(
  ( (Nil!15036) (Cons!15035 (h!16164 (_ BitVec 64)) (t!21362 List!15039)) )
))
(declare-fun arrayNoDuplicates!0 (array!43899 (_ BitVec 32) List!15039) Bool)

(assert (=> b!807438 (= res!551738 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15036))))

(declare-fun b!807439 () Bool)

(assert (=> b!807439 (= e!447064 false)))

(declare-fun lt!361764 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!807439 (= lt!361764 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!807440 () Bool)

(declare-fun res!551735 () Bool)

(declare-fun e!447063 () Bool)

(assert (=> b!807440 (=> (not res!551735) (not e!447063))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!43899 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!807440 (= res!551735 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!807441 () Bool)

(declare-fun res!551731 () Bool)

(assert (=> b!807441 (=> (not res!551731) (not e!447063))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!807441 (= res!551731 (validKeyInArray!0 k!2044))))

(declare-fun b!807442 () Bool)

(assert (=> b!807442 (= e!447063 e!447061)))

(declare-fun res!551740 () Bool)

(assert (=> b!807442 (=> (not res!551740) (not e!447061))))

(declare-fun lt!361766 () SeekEntryResult!8621)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!807442 (= res!551740 (or (= lt!361766 (MissingZero!8621 i!1163)) (= lt!361766 (MissingVacant!8621 i!1163))))))

(assert (=> b!807442 (= lt!361766 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!807443 () Bool)

(declare-fun res!551734 () Bool)

(assert (=> b!807443 (=> (not res!551734) (not e!447061))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43899 (_ BitVec 32)) Bool)

(assert (=> b!807443 (= res!551734 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!807444 () Bool)

(assert (=> b!807444 (= e!447061 e!447062)))

(declare-fun res!551732 () Bool)

(assert (=> b!807444 (=> (not res!551732) (not e!447062))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun lt!361765 () (_ BitVec 64))

(declare-fun lt!361763 () array!43899)

(assert (=> b!807444 (= res!551732 (= (seekEntryOrOpen!0 lt!361765 lt!361763 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!361765 lt!361763 mask!3266)))))

(assert (=> b!807444 (= lt!361765 (select (store (arr!21023 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!807444 (= lt!361763 (array!43900 (store (arr!21023 a!3170) i!1163 k!2044) (size!21444 a!3170)))))

(declare-fun b!807446 () Bool)

(declare-fun res!551739 () Bool)

(assert (=> b!807446 (=> (not res!551739) (not e!447061))))

(assert (=> b!807446 (= res!551739 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21444 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!21023 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21444 a!3170)) (= (select (arr!21023 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!807447 () Bool)

(declare-fun res!551736 () Bool)

(assert (=> b!807447 (=> (not res!551736) (not e!447063))))

(assert (=> b!807447 (= res!551736 (and (= (size!21444 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21444 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21444 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!807445 () Bool)

(declare-fun res!551737 () Bool)

(assert (=> b!807445 (=> (not res!551737) (not e!447063))))

(assert (=> b!807445 (= res!551737 (validKeyInArray!0 (select (arr!21023 a!3170) j!153)))))

(declare-fun res!551730 () Bool)

(assert (=> start!69248 (=> (not res!551730) (not e!447063))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69248 (= res!551730 (validMask!0 mask!3266))))

(assert (=> start!69248 e!447063))

(assert (=> start!69248 true))

(declare-fun array_inv!16797 (array!43899) Bool)

(assert (=> start!69248 (array_inv!16797 a!3170)))

(assert (= (and start!69248 res!551730) b!807447))

(assert (= (and b!807447 res!551736) b!807445))

(assert (= (and b!807445 res!551737) b!807441))

(assert (= (and b!807441 res!551731) b!807440))

(assert (= (and b!807440 res!551735) b!807442))

(assert (= (and b!807442 res!551740) b!807443))

(assert (= (and b!807443 res!551734) b!807438))

(assert (= (and b!807438 res!551738) b!807446))

(assert (= (and b!807446 res!551739) b!807444))

(assert (= (and b!807444 res!551732) b!807437))

(assert (= (and b!807437 res!551733) b!807439))

(declare-fun m!749591 () Bool)

(assert (=> b!807438 m!749591))

(declare-fun m!749593 () Bool)

(assert (=> b!807442 m!749593))

(declare-fun m!749595 () Bool)

(assert (=> b!807440 m!749595))

(declare-fun m!749597 () Bool)

(assert (=> start!69248 m!749597))

(declare-fun m!749599 () Bool)

(assert (=> start!69248 m!749599))

(declare-fun m!749601 () Bool)

(assert (=> b!807437 m!749601))

(declare-fun m!749603 () Bool)

(assert (=> b!807437 m!749603))

(assert (=> b!807437 m!749603))

(declare-fun m!749605 () Bool)

(assert (=> b!807437 m!749605))

(assert (=> b!807437 m!749603))

(declare-fun m!749607 () Bool)

(assert (=> b!807437 m!749607))

(declare-fun m!749609 () Bool)

(assert (=> b!807441 m!749609))

(assert (=> b!807445 m!749603))

(assert (=> b!807445 m!749603))

(declare-fun m!749611 () Bool)

(assert (=> b!807445 m!749611))

(declare-fun m!749613 () Bool)

(assert (=> b!807443 m!749613))

(declare-fun m!749615 () Bool)

(assert (=> b!807444 m!749615))

(declare-fun m!749617 () Bool)

(assert (=> b!807444 m!749617))

(declare-fun m!749619 () Bool)

(assert (=> b!807444 m!749619))

(declare-fun m!749621 () Bool)

(assert (=> b!807444 m!749621))

(declare-fun m!749623 () Bool)

(assert (=> b!807446 m!749623))

(declare-fun m!749625 () Bool)

(assert (=> b!807446 m!749625))

(declare-fun m!749627 () Bool)

(assert (=> b!807439 m!749627))

(push 1)

