; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68768 () Bool)

(assert start!68768)

(declare-fun b!800748 () Bool)

(declare-fun res!545438 () Bool)

(declare-fun e!443950 () Bool)

(assert (=> b!800748 (=> (not res!545438) (not e!443950))))

(declare-datatypes ((array!43509 0))(
  ( (array!43510 (arr!20831 (Array (_ BitVec 32) (_ BitVec 64))) (size!21252 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43509)

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!43509 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!800748 (= res!545438 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!800749 () Bool)

(declare-fun e!443948 () Bool)

(declare-fun e!443949 () Bool)

(assert (=> b!800749 (= e!443948 e!443949)))

(declare-fun res!545448 () Bool)

(assert (=> b!800749 (=> (not res!545448) (not e!443949))))

(declare-datatypes ((SeekEntryResult!8429 0))(
  ( (MissingZero!8429 (index!36083 (_ BitVec 32))) (Found!8429 (index!36084 (_ BitVec 32))) (Intermediate!8429 (undefined!9241 Bool) (index!36085 (_ BitVec 32)) (x!66972 (_ BitVec 32))) (Undefined!8429) (MissingVacant!8429 (index!36086 (_ BitVec 32))) )
))
(declare-fun lt!357845 () SeekEntryResult!8429)

(declare-fun lt!357843 () SeekEntryResult!8429)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!800749 (= res!545448 (and (= lt!357845 lt!357843) (= lt!357843 (Found!8429 j!153)) (not (= (select (arr!20831 a!3170) index!1236) (select (arr!20831 a!3170) j!153)))))))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43509 (_ BitVec 32)) SeekEntryResult!8429)

(assert (=> b!800749 (= lt!357843 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20831 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43509 (_ BitVec 32)) SeekEntryResult!8429)

(assert (=> b!800749 (= lt!357845 (seekEntryOrOpen!0 (select (arr!20831 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!800750 () Bool)

(declare-fun res!545449 () Bool)

(assert (=> b!800750 (=> (not res!545449) (not e!443950))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!800750 (= res!545449 (validKeyInArray!0 k!2044))))

(declare-fun b!800751 () Bool)

(declare-fun res!545446 () Bool)

(assert (=> b!800751 (=> (not res!545446) (not e!443950))))

(assert (=> b!800751 (= res!545446 (validKeyInArray!0 (select (arr!20831 a!3170) j!153)))))

(declare-fun b!800752 () Bool)

(declare-fun e!443946 () Bool)

(assert (=> b!800752 (= e!443946 e!443948)))

(declare-fun res!545440 () Bool)

(assert (=> b!800752 (=> (not res!545440) (not e!443948))))

(declare-fun lt!357848 () SeekEntryResult!8429)

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun lt!357844 () (_ BitVec 64))

(declare-fun lt!357850 () array!43509)

(assert (=> b!800752 (= res!545440 (= lt!357848 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!357844 lt!357850 mask!3266)))))

(assert (=> b!800752 (= lt!357848 (seekEntryOrOpen!0 lt!357844 lt!357850 mask!3266))))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!800752 (= lt!357844 (select (store (arr!20831 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!800752 (= lt!357850 (array!43510 (store (arr!20831 a!3170) i!1163 k!2044) (size!21252 a!3170)))))

(declare-fun b!800753 () Bool)

(declare-fun res!545447 () Bool)

(assert (=> b!800753 (=> (not res!545447) (not e!443946))))

(declare-datatypes ((List!14847 0))(
  ( (Nil!14844) (Cons!14843 (h!15972 (_ BitVec 64)) (t!21170 List!14847)) )
))
(declare-fun arrayNoDuplicates!0 (array!43509 (_ BitVec 32) List!14847) Bool)

(assert (=> b!800753 (= res!545447 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14844))))

(declare-fun b!800754 () Bool)

(declare-fun e!443947 () Bool)

(assert (=> b!800754 (= e!443947 false)))

(declare-fun lt!357846 () (_ BitVec 32))

(declare-fun lt!357849 () SeekEntryResult!8429)

(assert (=> b!800754 (= lt!357849 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!357846 vacantBefore!23 (select (arr!20831 a!3170) j!153) a!3170 mask!3266))))

(declare-fun res!545441 () Bool)

(assert (=> start!68768 (=> (not res!545441) (not e!443950))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68768 (= res!545441 (validMask!0 mask!3266))))

(assert (=> start!68768 e!443950))

(assert (=> start!68768 true))

(declare-fun array_inv!16605 (array!43509) Bool)

(assert (=> start!68768 (array_inv!16605 a!3170)))

(declare-fun b!800755 () Bool)

(declare-fun res!545444 () Bool)

(assert (=> b!800755 (=> (not res!545444) (not e!443946))))

(assert (=> b!800755 (= res!545444 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21252 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20831 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21252 a!3170)) (= (select (arr!20831 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!800756 () Bool)

(declare-fun res!545445 () Bool)

(assert (=> b!800756 (=> (not res!545445) (not e!443950))))

(assert (=> b!800756 (= res!545445 (and (= (size!21252 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21252 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21252 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!800757 () Bool)

(assert (=> b!800757 (= e!443950 e!443946)))

(declare-fun res!545439 () Bool)

(assert (=> b!800757 (=> (not res!545439) (not e!443946))))

(declare-fun lt!357847 () SeekEntryResult!8429)

(assert (=> b!800757 (= res!545439 (or (= lt!357847 (MissingZero!8429 i!1163)) (= lt!357847 (MissingVacant!8429 i!1163))))))

(assert (=> b!800757 (= lt!357847 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!800758 () Bool)

(declare-fun res!545443 () Bool)

(assert (=> b!800758 (=> (not res!545443) (not e!443946))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43509 (_ BitVec 32)) Bool)

(assert (=> b!800758 (= res!545443 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!800759 () Bool)

(declare-fun res!545442 () Bool)

(assert (=> b!800759 (=> (not res!545442) (not e!443947))))

(assert (=> b!800759 (= res!545442 (= lt!357848 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!357846 vacantAfter!23 lt!357844 lt!357850 mask!3266)))))

(declare-fun b!800760 () Bool)

(assert (=> b!800760 (= e!443949 e!443947)))

(declare-fun res!545437 () Bool)

(assert (=> b!800760 (=> (not res!545437) (not e!443947))))

(assert (=> b!800760 (= res!545437 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1077) #b01111111111111111111111111111110) (bvsge (bvadd #b00000000000000000000000000000001 x!1077) #b00000000000000000000000000000000) (bvsge lt!357846 #b00000000000000000000000000000000) (bvslt lt!357846 (size!21252 a!3170))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!800760 (= lt!357846 (nextIndex!0 index!1236 x!1077 mask!3266))))

(assert (= (and start!68768 res!545441) b!800756))

(assert (= (and b!800756 res!545445) b!800751))

(assert (= (and b!800751 res!545446) b!800750))

(assert (= (and b!800750 res!545449) b!800748))

(assert (= (and b!800748 res!545438) b!800757))

(assert (= (and b!800757 res!545439) b!800758))

(assert (= (and b!800758 res!545443) b!800753))

(assert (= (and b!800753 res!545447) b!800755))

(assert (= (and b!800755 res!545444) b!800752))

(assert (= (and b!800752 res!545440) b!800749))

(assert (= (and b!800749 res!545448) b!800760))

(assert (= (and b!800760 res!545437) b!800759))

(assert (= (and b!800759 res!545442) b!800754))

(declare-fun m!741967 () Bool)

(assert (=> b!800755 m!741967))

(declare-fun m!741969 () Bool)

(assert (=> b!800755 m!741969))

(declare-fun m!741971 () Bool)

(assert (=> b!800753 m!741971))

(declare-fun m!741973 () Bool)

(assert (=> b!800752 m!741973))

(declare-fun m!741975 () Bool)

(assert (=> b!800752 m!741975))

(declare-fun m!741977 () Bool)

(assert (=> b!800752 m!741977))

(declare-fun m!741979 () Bool)

(assert (=> b!800752 m!741979))

(declare-fun m!741981 () Bool)

(assert (=> b!800760 m!741981))

(declare-fun m!741983 () Bool)

(assert (=> b!800751 m!741983))

(assert (=> b!800751 m!741983))

(declare-fun m!741985 () Bool)

(assert (=> b!800751 m!741985))

(declare-fun m!741987 () Bool)

(assert (=> b!800757 m!741987))

(declare-fun m!741989 () Bool)

(assert (=> b!800758 m!741989))

(declare-fun m!741991 () Bool)

(assert (=> b!800749 m!741991))

(assert (=> b!800749 m!741983))

(assert (=> b!800749 m!741983))

(declare-fun m!741993 () Bool)

(assert (=> b!800749 m!741993))

(assert (=> b!800749 m!741983))

(declare-fun m!741995 () Bool)

(assert (=> b!800749 m!741995))

(declare-fun m!741997 () Bool)

(assert (=> b!800759 m!741997))

(declare-fun m!741999 () Bool)

(assert (=> start!68768 m!741999))

(declare-fun m!742001 () Bool)

(assert (=> start!68768 m!742001))

(assert (=> b!800754 m!741983))

(assert (=> b!800754 m!741983))

(declare-fun m!742003 () Bool)

(assert (=> b!800754 m!742003))

(declare-fun m!742005 () Bool)

(assert (=> b!800748 m!742005))

(declare-fun m!742007 () Bool)

(assert (=> b!800750 m!742007))

(push 1)

