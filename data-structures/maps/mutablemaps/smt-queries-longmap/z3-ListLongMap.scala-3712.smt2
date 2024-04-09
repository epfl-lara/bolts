; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!51088 () Bool)

(assert start!51088)

(declare-fun b!557822 () Bool)

(declare-fun res!349834 () Bool)

(declare-fun e!321361 () Bool)

(assert (=> b!557822 (=> (not res!349834) (not e!321361))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!557822 (= res!349834 (validKeyInArray!0 k0!1914))))

(declare-fun b!557823 () Bool)

(declare-fun e!321359 () Bool)

(declare-fun e!321358 () Bool)

(assert (=> b!557823 (= e!321359 e!321358)))

(declare-fun res!349839 () Bool)

(assert (=> b!557823 (=> (not res!349839) (not e!321358))))

(declare-datatypes ((SeekEntryResult!5305 0))(
  ( (MissingZero!5305 (index!23447 (_ BitVec 32))) (Found!5305 (index!23448 (_ BitVec 32))) (Intermediate!5305 (undefined!6117 Bool) (index!23449 (_ BitVec 32)) (x!52376 (_ BitVec 32))) (Undefined!5305) (MissingVacant!5305 (index!23450 (_ BitVec 32))) )
))
(declare-fun lt!253515 () SeekEntryResult!5305)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!35096 0))(
  ( (array!35097 (arr!16849 (Array (_ BitVec 32) (_ BitVec 64))) (size!17213 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35096)

(declare-fun lt!253516 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35096 (_ BitVec 32)) SeekEntryResult!5305)

(assert (=> b!557823 (= res!349839 (= lt!253515 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!253516 (select (store (arr!16849 a!3118) i!1132 k0!1914) j!142) (array!35097 (store (arr!16849 a!3118) i!1132 k0!1914) (size!17213 a!3118)) mask!3119)))))

(declare-fun lt!253514 () (_ BitVec 32))

(assert (=> b!557823 (= lt!253515 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!253514 (select (arr!16849 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!557823 (= lt!253516 (toIndex!0 (select (store (arr!16849 a!3118) i!1132 k0!1914) j!142) mask!3119))))

(assert (=> b!557823 (= lt!253514 (toIndex!0 (select (arr!16849 a!3118) j!142) mask!3119))))

(declare-fun b!557824 () Bool)

(declare-fun res!349835 () Bool)

(assert (=> b!557824 (=> (not res!349835) (not e!321361))))

(assert (=> b!557824 (= res!349835 (validKeyInArray!0 (select (arr!16849 a!3118) j!142)))))

(declare-fun b!557825 () Bool)

(get-info :version)

(assert (=> b!557825 (= e!321358 (not (or (undefined!6117 lt!253515) (not ((_ is Intermediate!5305) lt!253515)) (= (select (arr!16849 a!3118) (index!23449 lt!253515)) (select (arr!16849 a!3118) j!142)) (= (select (arr!16849 a!3118) (index!23449 lt!253515)) #b0000000000000000000000000000000000000000000000000000000000000000) (bvsge mask!3119 #b00000000000000000000000000000000))))))

(declare-fun e!321360 () Bool)

(assert (=> b!557825 e!321360))

(declare-fun res!349836 () Bool)

(assert (=> b!557825 (=> (not res!349836) (not e!321360))))

(declare-fun lt!253517 () SeekEntryResult!5305)

(assert (=> b!557825 (= res!349836 (= lt!253517 (Found!5305 j!142)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35096 (_ BitVec 32)) SeekEntryResult!5305)

(assert (=> b!557825 (= lt!253517 (seekEntryOrOpen!0 (select (arr!16849 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35096 (_ BitVec 32)) Bool)

(assert (=> b!557825 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17384 0))(
  ( (Unit!17385) )
))
(declare-fun lt!253513 () Unit!17384)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35096 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17384)

(assert (=> b!557825 (= lt!253513 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!557826 () Bool)

(declare-fun res!349840 () Bool)

(assert (=> b!557826 (=> (not res!349840) (not e!321361))))

(assert (=> b!557826 (= res!349840 (and (= (size!17213 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17213 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17213 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!557827 () Bool)

(declare-fun res!349841 () Bool)

(assert (=> b!557827 (=> (not res!349841) (not e!321359))))

(declare-datatypes ((List!10982 0))(
  ( (Nil!10979) (Cons!10978 (h!11972 (_ BitVec 64)) (t!17218 List!10982)) )
))
(declare-fun arrayNoDuplicates!0 (array!35096 (_ BitVec 32) List!10982) Bool)

(assert (=> b!557827 (= res!349841 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10979))))

(declare-fun b!557828 () Bool)

(declare-fun e!321357 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35096 (_ BitVec 32)) SeekEntryResult!5305)

(assert (=> b!557828 (= e!321357 (= lt!253517 (seekKeyOrZeroReturnVacant!0 (x!52376 lt!253515) (index!23449 lt!253515) (index!23449 lt!253515) (select (arr!16849 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!557829 () Bool)

(assert (=> b!557829 (= e!321360 e!321357)))

(declare-fun res!349843 () Bool)

(assert (=> b!557829 (=> res!349843 e!321357)))

(assert (=> b!557829 (= res!349843 (or (undefined!6117 lt!253515) (not ((_ is Intermediate!5305) lt!253515)) (= (select (arr!16849 a!3118) (index!23449 lt!253515)) (select (arr!16849 a!3118) j!142)) (= (select (arr!16849 a!3118) (index!23449 lt!253515)) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!557821 () Bool)

(declare-fun res!349842 () Bool)

(assert (=> b!557821 (=> (not res!349842) (not e!321359))))

(assert (=> b!557821 (= res!349842 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun res!349838 () Bool)

(assert (=> start!51088 (=> (not res!349838) (not e!321361))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51088 (= res!349838 (validMask!0 mask!3119))))

(assert (=> start!51088 e!321361))

(assert (=> start!51088 true))

(declare-fun array_inv!12623 (array!35096) Bool)

(assert (=> start!51088 (array_inv!12623 a!3118)))

(declare-fun b!557830 () Bool)

(assert (=> b!557830 (= e!321361 e!321359)))

(declare-fun res!349837 () Bool)

(assert (=> b!557830 (=> (not res!349837) (not e!321359))))

(declare-fun lt!253512 () SeekEntryResult!5305)

(assert (=> b!557830 (= res!349837 (or (= lt!253512 (MissingZero!5305 i!1132)) (= lt!253512 (MissingVacant!5305 i!1132))))))

(assert (=> b!557830 (= lt!253512 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!557831 () Bool)

(declare-fun res!349844 () Bool)

(assert (=> b!557831 (=> (not res!349844) (not e!321361))))

(declare-fun arrayContainsKey!0 (array!35096 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!557831 (= res!349844 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(assert (= (and start!51088 res!349838) b!557826))

(assert (= (and b!557826 res!349840) b!557824))

(assert (= (and b!557824 res!349835) b!557822))

(assert (= (and b!557822 res!349834) b!557831))

(assert (= (and b!557831 res!349844) b!557830))

(assert (= (and b!557830 res!349837) b!557821))

(assert (= (and b!557821 res!349842) b!557827))

(assert (= (and b!557827 res!349841) b!557823))

(assert (= (and b!557823 res!349839) b!557825))

(assert (= (and b!557825 res!349836) b!557829))

(assert (= (and b!557829 (not res!349843)) b!557828))

(declare-fun m!535751 () Bool)

(assert (=> start!51088 m!535751))

(declare-fun m!535753 () Bool)

(assert (=> start!51088 m!535753))

(declare-fun m!535755 () Bool)

(assert (=> b!557823 m!535755))

(declare-fun m!535757 () Bool)

(assert (=> b!557823 m!535757))

(assert (=> b!557823 m!535755))

(declare-fun m!535759 () Bool)

(assert (=> b!557823 m!535759))

(declare-fun m!535761 () Bool)

(assert (=> b!557823 m!535761))

(assert (=> b!557823 m!535759))

(declare-fun m!535763 () Bool)

(assert (=> b!557823 m!535763))

(assert (=> b!557823 m!535755))

(declare-fun m!535765 () Bool)

(assert (=> b!557823 m!535765))

(assert (=> b!557823 m!535759))

(declare-fun m!535767 () Bool)

(assert (=> b!557823 m!535767))

(declare-fun m!535769 () Bool)

(assert (=> b!557821 m!535769))

(assert (=> b!557825 m!535755))

(declare-fun m!535771 () Bool)

(assert (=> b!557825 m!535771))

(declare-fun m!535773 () Bool)

(assert (=> b!557825 m!535773))

(declare-fun m!535775 () Bool)

(assert (=> b!557825 m!535775))

(assert (=> b!557825 m!535755))

(declare-fun m!535777 () Bool)

(assert (=> b!557825 m!535777))

(assert (=> b!557829 m!535773))

(assert (=> b!557829 m!535755))

(assert (=> b!557824 m!535755))

(assert (=> b!557824 m!535755))

(declare-fun m!535779 () Bool)

(assert (=> b!557824 m!535779))

(declare-fun m!535781 () Bool)

(assert (=> b!557830 m!535781))

(declare-fun m!535783 () Bool)

(assert (=> b!557827 m!535783))

(declare-fun m!535785 () Bool)

(assert (=> b!557831 m!535785))

(assert (=> b!557828 m!535755))

(assert (=> b!557828 m!535755))

(declare-fun m!535787 () Bool)

(assert (=> b!557828 m!535787))

(declare-fun m!535789 () Bool)

(assert (=> b!557822 m!535789))

(check-sat (not b!557827) (not start!51088) (not b!557825) (not b!557824) (not b!557822) (not b!557821) (not b!557823) (not b!557831) (not b!557830) (not b!557828))
(check-sat)
