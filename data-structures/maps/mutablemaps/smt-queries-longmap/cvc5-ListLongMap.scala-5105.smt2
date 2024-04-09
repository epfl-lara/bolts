; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69256 () Bool)

(assert start!69256)

(declare-fun b!807569 () Bool)

(declare-fun e!447124 () Bool)

(declare-fun e!447122 () Bool)

(assert (=> b!807569 (= e!447124 e!447122)))

(declare-fun res!551863 () Bool)

(assert (=> b!807569 (=> (not res!551863) (not e!447122))))

(declare-datatypes ((SeekEntryResult!8625 0))(
  ( (MissingZero!8625 (index!36867 (_ BitVec 32))) (Found!8625 (index!36868 (_ BitVec 32))) (Intermediate!8625 (undefined!9437 Bool) (index!36869 (_ BitVec 32)) (x!67702 (_ BitVec 32))) (Undefined!8625) (MissingVacant!8625 (index!36870 (_ BitVec 32))) )
))
(declare-fun lt!361839 () SeekEntryResult!8625)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!807569 (= res!551863 (or (= lt!361839 (MissingZero!8625 i!1163)) (= lt!361839 (MissingVacant!8625 i!1163))))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-datatypes ((array!43907 0))(
  ( (array!43908 (arr!21027 (Array (_ BitVec 32) (_ BitVec 64))) (size!21448 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43907)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43907 (_ BitVec 32)) SeekEntryResult!8625)

(assert (=> b!807569 (= lt!361839 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!807570 () Bool)

(declare-fun res!551866 () Bool)

(assert (=> b!807570 (=> (not res!551866) (not e!447124))))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!807570 (= res!551866 (and (= (size!21448 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21448 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21448 a!3170)) (not (= i!1163 j!153))))))

(declare-fun res!551870 () Bool)

(assert (=> start!69256 (=> (not res!551870) (not e!447124))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69256 (= res!551870 (validMask!0 mask!3266))))

(assert (=> start!69256 e!447124))

(assert (=> start!69256 true))

(declare-fun array_inv!16801 (array!43907) Bool)

(assert (=> start!69256 (array_inv!16801 a!3170)))

(declare-fun b!807571 () Bool)

(declare-fun e!447121 () Bool)

(declare-fun e!447123 () Bool)

(assert (=> b!807571 (= e!447121 e!447123)))

(declare-fun res!551864 () Bool)

(assert (=> b!807571 (=> (not res!551864) (not e!447123))))

(declare-fun lt!361835 () SeekEntryResult!8625)

(declare-fun lt!361837 () SeekEntryResult!8625)

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!807571 (= res!551864 (and (= lt!361837 lt!361835) (= lt!361835 (Found!8625 j!153)) (not (= (select (arr!21027 a!3170) index!1236) (select (arr!21027 a!3170) j!153)))))))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43907 (_ BitVec 32)) SeekEntryResult!8625)

(assert (=> b!807571 (= lt!361835 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21027 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!807571 (= lt!361837 (seekEntryOrOpen!0 (select (arr!21027 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!807572 () Bool)

(declare-fun res!551871 () Bool)

(assert (=> b!807572 (=> (not res!551871) (not e!447122))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43907 (_ BitVec 32)) Bool)

(assert (=> b!807572 (= res!551871 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!807573 () Bool)

(assert (=> b!807573 (= e!447122 e!447121)))

(declare-fun res!551868 () Bool)

(assert (=> b!807573 (=> (not res!551868) (not e!447121))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun lt!361836 () array!43907)

(declare-fun lt!361838 () (_ BitVec 64))

(assert (=> b!807573 (= res!551868 (= (seekEntryOrOpen!0 lt!361838 lt!361836 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!361838 lt!361836 mask!3266)))))

(assert (=> b!807573 (= lt!361838 (select (store (arr!21027 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!807573 (= lt!361836 (array!43908 (store (arr!21027 a!3170) i!1163 k!2044) (size!21448 a!3170)))))

(declare-fun b!807574 () Bool)

(declare-fun res!551869 () Bool)

(assert (=> b!807574 (=> (not res!551869) (not e!447124))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!807574 (= res!551869 (validKeyInArray!0 (select (arr!21027 a!3170) j!153)))))

(declare-fun b!807575 () Bool)

(declare-fun res!551862 () Bool)

(assert (=> b!807575 (=> (not res!551862) (not e!447124))))

(declare-fun arrayContainsKey!0 (array!43907 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!807575 (= res!551862 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!807576 () Bool)

(declare-fun res!551865 () Bool)

(assert (=> b!807576 (=> (not res!551865) (not e!447124))))

(assert (=> b!807576 (= res!551865 (validKeyInArray!0 k!2044))))

(declare-fun b!807577 () Bool)

(assert (=> b!807577 (= e!447123 false)))

(declare-fun lt!361840 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!807577 (= lt!361840 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!807578 () Bool)

(declare-fun res!551872 () Bool)

(assert (=> b!807578 (=> (not res!551872) (not e!447122))))

(declare-datatypes ((List!15043 0))(
  ( (Nil!15040) (Cons!15039 (h!16168 (_ BitVec 64)) (t!21366 List!15043)) )
))
(declare-fun arrayNoDuplicates!0 (array!43907 (_ BitVec 32) List!15043) Bool)

(assert (=> b!807578 (= res!551872 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15040))))

(declare-fun b!807579 () Bool)

(declare-fun res!551867 () Bool)

(assert (=> b!807579 (=> (not res!551867) (not e!447122))))

(assert (=> b!807579 (= res!551867 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21448 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!21027 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21448 a!3170)) (= (select (arr!21027 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(assert (= (and start!69256 res!551870) b!807570))

(assert (= (and b!807570 res!551866) b!807574))

(assert (= (and b!807574 res!551869) b!807576))

(assert (= (and b!807576 res!551865) b!807575))

(assert (= (and b!807575 res!551862) b!807569))

(assert (= (and b!807569 res!551863) b!807572))

(assert (= (and b!807572 res!551871) b!807578))

(assert (= (and b!807578 res!551872) b!807579))

(assert (= (and b!807579 res!551867) b!807573))

(assert (= (and b!807573 res!551868) b!807571))

(assert (= (and b!807571 res!551864) b!807577))

(declare-fun m!749743 () Bool)

(assert (=> b!807572 m!749743))

(declare-fun m!749745 () Bool)

(assert (=> b!807569 m!749745))

(declare-fun m!749747 () Bool)

(assert (=> b!807574 m!749747))

(assert (=> b!807574 m!749747))

(declare-fun m!749749 () Bool)

(assert (=> b!807574 m!749749))

(declare-fun m!749751 () Bool)

(assert (=> b!807578 m!749751))

(declare-fun m!749753 () Bool)

(assert (=> b!807575 m!749753))

(declare-fun m!749755 () Bool)

(assert (=> b!807579 m!749755))

(declare-fun m!749757 () Bool)

(assert (=> b!807579 m!749757))

(declare-fun m!749759 () Bool)

(assert (=> b!807577 m!749759))

(declare-fun m!749761 () Bool)

(assert (=> b!807576 m!749761))

(declare-fun m!749763 () Bool)

(assert (=> start!69256 m!749763))

(declare-fun m!749765 () Bool)

(assert (=> start!69256 m!749765))

(declare-fun m!749767 () Bool)

(assert (=> b!807571 m!749767))

(assert (=> b!807571 m!749747))

(assert (=> b!807571 m!749747))

(declare-fun m!749769 () Bool)

(assert (=> b!807571 m!749769))

(assert (=> b!807571 m!749747))

(declare-fun m!749771 () Bool)

(assert (=> b!807571 m!749771))

(declare-fun m!749773 () Bool)

(assert (=> b!807573 m!749773))

(declare-fun m!749775 () Bool)

(assert (=> b!807573 m!749775))

(declare-fun m!749777 () Bool)

(assert (=> b!807573 m!749777))

(declare-fun m!749779 () Bool)

(assert (=> b!807573 m!749779))

(push 1)

