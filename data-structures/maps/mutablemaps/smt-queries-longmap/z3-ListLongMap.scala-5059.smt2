; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68886 () Bool)

(assert start!68886)

(declare-fun res!547528 () Bool)

(declare-fun e!444921 () Bool)

(assert (=> start!68886 (=> (not res!547528) (not e!444921))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68886 (= res!547528 (validMask!0 mask!3266))))

(assert (=> start!68886 e!444921))

(assert (=> start!68886 true))

(declare-datatypes ((array!43627 0))(
  ( (array!43628 (arr!20890 (Array (_ BitVec 32) (_ BitVec 64))) (size!21311 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43627)

(declare-fun array_inv!16664 (array!43627) Bool)

(assert (=> start!68886 (array_inv!16664 a!3170)))

(declare-fun b!802837 () Bool)

(declare-fun res!547534 () Bool)

(declare-fun e!444920 () Bool)

(assert (=> b!802837 (=> (not res!547534) (not e!444920))))

(declare-datatypes ((List!14906 0))(
  ( (Nil!14903) (Cons!14902 (h!16031 (_ BitVec 64)) (t!21229 List!14906)) )
))
(declare-fun arrayNoDuplicates!0 (array!43627 (_ BitVec 32) List!14906) Bool)

(assert (=> b!802837 (= res!547534 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14903))))

(declare-fun b!802838 () Bool)

(assert (=> b!802838 (= e!444921 e!444920)))

(declare-fun res!547537 () Bool)

(assert (=> b!802838 (=> (not res!547537) (not e!444920))))

(declare-datatypes ((SeekEntryResult!8488 0))(
  ( (MissingZero!8488 (index!36319 (_ BitVec 32))) (Found!8488 (index!36320 (_ BitVec 32))) (Intermediate!8488 (undefined!9300 Bool) (index!36321 (_ BitVec 32)) (x!67191 (_ BitVec 32))) (Undefined!8488) (MissingVacant!8488 (index!36322 (_ BitVec 32))) )
))
(declare-fun lt!359213 () SeekEntryResult!8488)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!802838 (= res!547537 (or (= lt!359213 (MissingZero!8488 i!1163)) (= lt!359213 (MissingVacant!8488 i!1163))))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43627 (_ BitVec 32)) SeekEntryResult!8488)

(assert (=> b!802838 (= lt!359213 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!802839 () Bool)

(declare-fun res!547532 () Bool)

(assert (=> b!802839 (=> (not res!547532) (not e!444920))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43627 (_ BitVec 32)) Bool)

(assert (=> b!802839 (= res!547532 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!802840 () Bool)

(declare-fun e!444922 () Bool)

(declare-fun e!444919 () Bool)

(assert (=> b!802840 (= e!444922 e!444919)))

(declare-fun res!547530 () Bool)

(assert (=> b!802840 (=> (not res!547530) (not e!444919))))

(declare-fun lt!359210 () SeekEntryResult!8488)

(declare-fun lt!359208 () SeekEntryResult!8488)

(assert (=> b!802840 (= res!547530 (= lt!359210 lt!359208))))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43627 (_ BitVec 32)) SeekEntryResult!8488)

(assert (=> b!802840 (= lt!359208 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20890 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!802840 (= lt!359210 (seekEntryOrOpen!0 (select (arr!20890 a!3170) j!153) a!3170 mask!3266))))

(declare-fun e!444917 () Bool)

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun lt!359211 () SeekEntryResult!8488)

(declare-fun b!802841 () Bool)

(declare-fun lt!359214 () SeekEntryResult!8488)

(assert (=> b!802841 (= e!444917 (not (or (not (= lt!359211 lt!359214)) (bvslt mask!3266 #b00000000000000000000000000000000) (bvsge index!1236 (bvadd #b00000000000000000000000000000001 mask!3266)) (bvslt vacantAfter!23 (bvadd #b00000000000000000000000000000001 mask!3266)))))))

(declare-fun lt!359207 () (_ BitVec 64))

(declare-fun lt!359215 () (_ BitVec 32))

(declare-fun lt!359206 () array!43627)

(assert (=> b!802841 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!359215 vacantAfter!23 lt!359207 lt!359206 mask!3266) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!359215 vacantBefore!23 (select (arr!20890 a!3170) j!153) a!3170 mask!3266))))

(declare-datatypes ((Unit!27518 0))(
  ( (Unit!27519) )
))
(declare-fun lt!359209 () Unit!27518)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!43627 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27518)

(assert (=> b!802841 (= lt!359209 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3170 i!1163 k0!2044 j!153 lt!359215 (bvadd #b00000000000000000000000000000001 x!1077) vacantBefore!23 vacantAfter!23 mask!3266))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!802841 (= lt!359215 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!802842 () Bool)

(declare-fun res!547531 () Bool)

(assert (=> b!802842 (=> (not res!547531) (not e!444921))))

(declare-fun arrayContainsKey!0 (array!43627 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!802842 (= res!547531 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!802843 () Bool)

(declare-fun res!547536 () Bool)

(assert (=> b!802843 (=> (not res!547536) (not e!444921))))

(assert (=> b!802843 (= res!547536 (and (= (size!21311 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21311 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21311 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!802844 () Bool)

(declare-fun res!547527 () Bool)

(assert (=> b!802844 (=> (not res!547527) (not e!444921))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!802844 (= res!547527 (validKeyInArray!0 (select (arr!20890 a!3170) j!153)))))

(declare-fun b!802845 () Bool)

(assert (=> b!802845 (= e!444919 e!444917)))

(declare-fun res!547533 () Bool)

(assert (=> b!802845 (=> (not res!547533) (not e!444917))))

(assert (=> b!802845 (= res!547533 (and (= lt!359208 lt!359214) (not (= (select (arr!20890 a!3170) index!1236) (select (arr!20890 a!3170) j!153)))))))

(assert (=> b!802845 (= lt!359214 (Found!8488 j!153))))

(declare-fun b!802846 () Bool)

(assert (=> b!802846 (= e!444920 e!444922)))

(declare-fun res!547535 () Bool)

(assert (=> b!802846 (=> (not res!547535) (not e!444922))))

(declare-fun lt!359212 () SeekEntryResult!8488)

(assert (=> b!802846 (= res!547535 (= lt!359212 lt!359211))))

(assert (=> b!802846 (= lt!359211 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!359207 lt!359206 mask!3266))))

(assert (=> b!802846 (= lt!359212 (seekEntryOrOpen!0 lt!359207 lt!359206 mask!3266))))

(assert (=> b!802846 (= lt!359207 (select (store (arr!20890 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!802846 (= lt!359206 (array!43628 (store (arr!20890 a!3170) i!1163 k0!2044) (size!21311 a!3170)))))

(declare-fun b!802847 () Bool)

(declare-fun res!547526 () Bool)

(assert (=> b!802847 (=> (not res!547526) (not e!444921))))

(assert (=> b!802847 (= res!547526 (validKeyInArray!0 k0!2044))))

(declare-fun b!802848 () Bool)

(declare-fun res!547529 () Bool)

(assert (=> b!802848 (=> (not res!547529) (not e!444920))))

(assert (=> b!802848 (= res!547529 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21311 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20890 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21311 a!3170)) (= (select (arr!20890 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(assert (= (and start!68886 res!547528) b!802843))

(assert (= (and b!802843 res!547536) b!802844))

(assert (= (and b!802844 res!547527) b!802847))

(assert (= (and b!802847 res!547526) b!802842))

(assert (= (and b!802842 res!547531) b!802838))

(assert (= (and b!802838 res!547537) b!802839))

(assert (= (and b!802839 res!547532) b!802837))

(assert (= (and b!802837 res!547534) b!802848))

(assert (= (and b!802848 res!547529) b!802846))

(assert (= (and b!802846 res!547535) b!802840))

(assert (= (and b!802840 res!547530) b!802845))

(assert (= (and b!802845 res!547533) b!802841))

(declare-fun m!744543 () Bool)

(assert (=> b!802845 m!744543))

(declare-fun m!744545 () Bool)

(assert (=> b!802845 m!744545))

(declare-fun m!744547 () Bool)

(assert (=> b!802838 m!744547))

(declare-fun m!744549 () Bool)

(assert (=> b!802839 m!744549))

(declare-fun m!744551 () Bool)

(assert (=> b!802837 m!744551))

(declare-fun m!744553 () Bool)

(assert (=> b!802847 m!744553))

(assert (=> b!802844 m!744545))

(assert (=> b!802844 m!744545))

(declare-fun m!744555 () Bool)

(assert (=> b!802844 m!744555))

(assert (=> b!802841 m!744545))

(declare-fun m!744557 () Bool)

(assert (=> b!802841 m!744557))

(assert (=> b!802841 m!744545))

(declare-fun m!744559 () Bool)

(assert (=> b!802841 m!744559))

(declare-fun m!744561 () Bool)

(assert (=> b!802841 m!744561))

(declare-fun m!744563 () Bool)

(assert (=> b!802841 m!744563))

(assert (=> b!802840 m!744545))

(assert (=> b!802840 m!744545))

(declare-fun m!744565 () Bool)

(assert (=> b!802840 m!744565))

(assert (=> b!802840 m!744545))

(declare-fun m!744567 () Bool)

(assert (=> b!802840 m!744567))

(declare-fun m!744569 () Bool)

(assert (=> b!802848 m!744569))

(declare-fun m!744571 () Bool)

(assert (=> b!802848 m!744571))

(declare-fun m!744573 () Bool)

(assert (=> start!68886 m!744573))

(declare-fun m!744575 () Bool)

(assert (=> start!68886 m!744575))

(declare-fun m!744577 () Bool)

(assert (=> b!802842 m!744577))

(declare-fun m!744579 () Bool)

(assert (=> b!802846 m!744579))

(declare-fun m!744581 () Bool)

(assert (=> b!802846 m!744581))

(declare-fun m!744583 () Bool)

(assert (=> b!802846 m!744583))

(declare-fun m!744585 () Bool)

(assert (=> b!802846 m!744585))

(check-sat (not b!802844) (not b!802839) (not b!802841) (not b!802837) (not start!68886) (not b!802838) (not b!802846) (not b!802842) (not b!802847) (not b!802840))
(check-sat)
