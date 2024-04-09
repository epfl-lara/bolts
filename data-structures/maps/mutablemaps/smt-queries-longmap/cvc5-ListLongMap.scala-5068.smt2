; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68938 () Bool)

(assert start!68938)

(declare-fun b!803753 () Bool)

(declare-fun res!548451 () Bool)

(declare-fun e!445367 () Bool)

(assert (=> b!803753 (=> (not res!548451) (not e!445367))))

(declare-datatypes ((array!43679 0))(
  ( (array!43680 (arr!20916 (Array (_ BitVec 32) (_ BitVec 64))) (size!21337 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43679)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!803753 (= res!548451 (validKeyInArray!0 (select (arr!20916 a!3170) j!153)))))

(declare-fun b!803754 () Bool)

(declare-fun e!445366 () Bool)

(assert (=> b!803754 (= e!445367 e!445366)))

(declare-fun res!548444 () Bool)

(assert (=> b!803754 (=> (not res!548444) (not e!445366))))

(declare-datatypes ((SeekEntryResult!8514 0))(
  ( (MissingZero!8514 (index!36423 (_ BitVec 32))) (Found!8514 (index!36424 (_ BitVec 32))) (Intermediate!8514 (undefined!9326 Bool) (index!36425 (_ BitVec 32)) (x!67289 (_ BitVec 32))) (Undefined!8514) (MissingVacant!8514 (index!36426 (_ BitVec 32))) )
))
(declare-fun lt!359904 () SeekEntryResult!8514)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!803754 (= res!548444 (or (= lt!359904 (MissingZero!8514 i!1163)) (= lt!359904 (MissingVacant!8514 i!1163))))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43679 (_ BitVec 32)) SeekEntryResult!8514)

(assert (=> b!803754 (= lt!359904 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!803756 () Bool)

(declare-fun res!548452 () Bool)

(assert (=> b!803756 (=> (not res!548452) (not e!445366))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!803756 (= res!548452 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21337 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20916 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21337 a!3170)) (= (select (arr!20916 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!803757 () Bool)

(declare-fun e!445365 () Bool)

(declare-fun e!445368 () Bool)

(assert (=> b!803757 (= e!445365 e!445368)))

(declare-fun res!548445 () Bool)

(assert (=> b!803757 (=> (not res!548445) (not e!445368))))

(declare-fun lt!359901 () SeekEntryResult!8514)

(declare-fun lt!359902 () SeekEntryResult!8514)

(assert (=> b!803757 (= res!548445 (and (= lt!359901 lt!359902) (= lt!359902 (Found!8514 j!153)) (not (= (select (arr!20916 a!3170) index!1236) (select (arr!20916 a!3170) j!153)))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43679 (_ BitVec 32)) SeekEntryResult!8514)

(assert (=> b!803757 (= lt!359902 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20916 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!803757 (= lt!359901 (seekEntryOrOpen!0 (select (arr!20916 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!803758 () Bool)

(assert (=> b!803758 (= e!445368 (not true))))

(declare-fun lt!359903 () array!43679)

(declare-fun lt!359899 () (_ BitVec 32))

(declare-fun lt!359900 () (_ BitVec 64))

(assert (=> b!803758 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!359899 vacantAfter!23 lt!359900 lt!359903 mask!3266) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!359899 vacantBefore!23 (select (arr!20916 a!3170) j!153) a!3170 mask!3266))))

(declare-datatypes ((Unit!27570 0))(
  ( (Unit!27571) )
))
(declare-fun lt!359905 () Unit!27570)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!43679 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27570)

(assert (=> b!803758 (= lt!359905 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3170 i!1163 k!2044 j!153 lt!359899 (bvadd #b00000000000000000000000000000001 x!1077) vacantBefore!23 vacantAfter!23 mask!3266))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!803758 (= lt!359899 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!803755 () Bool)

(declare-fun res!548448 () Bool)

(assert (=> b!803755 (=> (not res!548448) (not e!445366))))

(declare-datatypes ((List!14932 0))(
  ( (Nil!14929) (Cons!14928 (h!16057 (_ BitVec 64)) (t!21255 List!14932)) )
))
(declare-fun arrayNoDuplicates!0 (array!43679 (_ BitVec 32) List!14932) Bool)

(assert (=> b!803755 (= res!548448 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14929))))

(declare-fun res!548450 () Bool)

(assert (=> start!68938 (=> (not res!548450) (not e!445367))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68938 (= res!548450 (validMask!0 mask!3266))))

(assert (=> start!68938 e!445367))

(assert (=> start!68938 true))

(declare-fun array_inv!16690 (array!43679) Bool)

(assert (=> start!68938 (array_inv!16690 a!3170)))

(declare-fun b!803759 () Bool)

(assert (=> b!803759 (= e!445366 e!445365)))

(declare-fun res!548447 () Bool)

(assert (=> b!803759 (=> (not res!548447) (not e!445365))))

(assert (=> b!803759 (= res!548447 (= (seekEntryOrOpen!0 lt!359900 lt!359903 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!359900 lt!359903 mask!3266)))))

(assert (=> b!803759 (= lt!359900 (select (store (arr!20916 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!803759 (= lt!359903 (array!43680 (store (arr!20916 a!3170) i!1163 k!2044) (size!21337 a!3170)))))

(declare-fun b!803760 () Bool)

(declare-fun res!548449 () Bool)

(assert (=> b!803760 (=> (not res!548449) (not e!445366))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43679 (_ BitVec 32)) Bool)

(assert (=> b!803760 (= res!548449 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!803761 () Bool)

(declare-fun res!548442 () Bool)

(assert (=> b!803761 (=> (not res!548442) (not e!445367))))

(declare-fun arrayContainsKey!0 (array!43679 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!803761 (= res!548442 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!803762 () Bool)

(declare-fun res!548446 () Bool)

(assert (=> b!803762 (=> (not res!548446) (not e!445367))))

(assert (=> b!803762 (= res!548446 (and (= (size!21337 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21337 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21337 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!803763 () Bool)

(declare-fun res!548443 () Bool)

(assert (=> b!803763 (=> (not res!548443) (not e!445367))))

(assert (=> b!803763 (= res!548443 (validKeyInArray!0 k!2044))))

(assert (= (and start!68938 res!548450) b!803762))

(assert (= (and b!803762 res!548446) b!803753))

(assert (= (and b!803753 res!548451) b!803763))

(assert (= (and b!803763 res!548443) b!803761))

(assert (= (and b!803761 res!548442) b!803754))

(assert (= (and b!803754 res!548444) b!803760))

(assert (= (and b!803760 res!548449) b!803755))

(assert (= (and b!803755 res!548448) b!803756))

(assert (= (and b!803756 res!548452) b!803759))

(assert (= (and b!803759 res!548447) b!803757))

(assert (= (and b!803757 res!548445) b!803758))

(declare-fun m!745705 () Bool)

(assert (=> b!803758 m!745705))

(assert (=> b!803758 m!745705))

(declare-fun m!745707 () Bool)

(assert (=> b!803758 m!745707))

(declare-fun m!745709 () Bool)

(assert (=> b!803758 m!745709))

(declare-fun m!745711 () Bool)

(assert (=> b!803758 m!745711))

(declare-fun m!745713 () Bool)

(assert (=> b!803758 m!745713))

(declare-fun m!745715 () Bool)

(assert (=> b!803755 m!745715))

(declare-fun m!745717 () Bool)

(assert (=> b!803756 m!745717))

(declare-fun m!745719 () Bool)

(assert (=> b!803756 m!745719))

(declare-fun m!745721 () Bool)

(assert (=> b!803761 m!745721))

(declare-fun m!745723 () Bool)

(assert (=> b!803754 m!745723))

(declare-fun m!745725 () Bool)

(assert (=> b!803760 m!745725))

(declare-fun m!745727 () Bool)

(assert (=> b!803757 m!745727))

(assert (=> b!803757 m!745705))

(assert (=> b!803757 m!745705))

(declare-fun m!745729 () Bool)

(assert (=> b!803757 m!745729))

(assert (=> b!803757 m!745705))

(declare-fun m!745731 () Bool)

(assert (=> b!803757 m!745731))

(assert (=> b!803753 m!745705))

(assert (=> b!803753 m!745705))

(declare-fun m!745733 () Bool)

(assert (=> b!803753 m!745733))

(declare-fun m!745735 () Bool)

(assert (=> b!803763 m!745735))

(declare-fun m!745737 () Bool)

(assert (=> b!803759 m!745737))

(declare-fun m!745739 () Bool)

(assert (=> b!803759 m!745739))

(declare-fun m!745741 () Bool)

(assert (=> b!803759 m!745741))

(declare-fun m!745743 () Bool)

(assert (=> b!803759 m!745743))

(declare-fun m!745745 () Bool)

(assert (=> start!68938 m!745745))

(declare-fun m!745747 () Bool)

(assert (=> start!68938 m!745747))

(push 1)

