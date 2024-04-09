; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!52480 () Bool)

(assert start!52480)

(declare-fun res!362444 () Bool)

(declare-fun e!329500 () Bool)

(assert (=> start!52480 (=> (not res!362444) (not e!329500))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52480 (= res!362444 (validMask!0 mask!3119))))

(assert (=> start!52480 e!329500))

(assert (=> start!52480 true))

(declare-datatypes ((array!35831 0))(
  ( (array!35832 (arr!17200 (Array (_ BitVec 32) (_ BitVec 64))) (size!17564 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35831)

(declare-fun array_inv!12974 (array!35831) Bool)

(assert (=> start!52480 (array_inv!12974 a!3118)))

(declare-fun b!572777 () Bool)

(declare-fun lt!261571 () array!35831)

(declare-fun lt!261568 () (_ BitVec 64))

(declare-fun e!329502 () Bool)

(declare-datatypes ((SeekEntryResult!5656 0))(
  ( (MissingZero!5656 (index!24851 (_ BitVec 32))) (Found!5656 (index!24852 (_ BitVec 32))) (Intermediate!5656 (undefined!6468 Bool) (index!24853 (_ BitVec 32)) (x!53744 (_ BitVec 32))) (Undefined!5656) (MissingVacant!5656 (index!24854 (_ BitVec 32))) )
))
(declare-fun lt!261575 () SeekEntryResult!5656)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35831 (_ BitVec 32)) SeekEntryResult!5656)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35831 (_ BitVec 32)) SeekEntryResult!5656)

(assert (=> b!572777 (= e!329502 (= (seekEntryOrOpen!0 lt!261568 lt!261571 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!53744 lt!261575) (index!24853 lt!261575) (index!24853 lt!261575) lt!261568 lt!261571 mask!3119)))))

(declare-fun b!572778 () Bool)

(declare-fun res!362442 () Bool)

(assert (=> b!572778 (=> (not res!362442) (not e!329500))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!572778 (= res!362442 (validKeyInArray!0 (select (arr!17200 a!3118) j!142)))))

(declare-fun b!572779 () Bool)

(declare-fun e!329496 () Bool)

(declare-fun e!329499 () Bool)

(assert (=> b!572779 (= e!329496 e!329499)))

(declare-fun res!362443 () Bool)

(assert (=> b!572779 (=> (not res!362443) (not e!329499))))

(declare-fun lt!261572 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35831 (_ BitVec 32)) SeekEntryResult!5656)

(assert (=> b!572779 (= res!362443 (= lt!261575 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!261572 lt!261568 lt!261571 mask!3119)))))

(declare-fun lt!261573 () (_ BitVec 32))

(assert (=> b!572779 (= lt!261575 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!261573 (select (arr!17200 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!572779 (= lt!261572 (toIndex!0 lt!261568 mask!3119))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!572779 (= lt!261568 (select (store (arr!17200 a!3118) i!1132 k0!1914) j!142))))

(assert (=> b!572779 (= lt!261573 (toIndex!0 (select (arr!17200 a!3118) j!142) mask!3119))))

(assert (=> b!572779 (= lt!261571 (array!35832 (store (arr!17200 a!3118) i!1132 k0!1914) (size!17564 a!3118)))))

(declare-fun b!572780 () Bool)

(declare-fun e!329503 () Bool)

(assert (=> b!572780 (= e!329503 e!329502)))

(declare-fun res!362440 () Bool)

(assert (=> b!572780 (=> (not res!362440) (not e!329502))))

(declare-fun lt!261574 () SeekEntryResult!5656)

(assert (=> b!572780 (= res!362440 (= lt!261574 (seekKeyOrZeroReturnVacant!0 (x!53744 lt!261575) (index!24853 lt!261575) (index!24853 lt!261575) (select (arr!17200 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!572781 () Bool)

(assert (=> b!572781 (= e!329500 e!329496)))

(declare-fun res!362438 () Bool)

(assert (=> b!572781 (=> (not res!362438) (not e!329496))))

(declare-fun lt!261567 () SeekEntryResult!5656)

(assert (=> b!572781 (= res!362438 (or (= lt!261567 (MissingZero!5656 i!1132)) (= lt!261567 (MissingVacant!5656 i!1132))))))

(assert (=> b!572781 (= lt!261567 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!572782 () Bool)

(declare-fun res!362437 () Bool)

(assert (=> b!572782 (=> (not res!362437) (not e!329500))))

(assert (=> b!572782 (= res!362437 (and (= (size!17564 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17564 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17564 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!572783 () Bool)

(declare-fun res!362439 () Bool)

(assert (=> b!572783 (=> (not res!362439) (not e!329500))))

(assert (=> b!572783 (= res!362439 (validKeyInArray!0 k0!1914))))

(declare-fun b!572784 () Bool)

(declare-fun e!329497 () Bool)

(declare-fun e!329501 () Bool)

(assert (=> b!572784 (= e!329497 e!329501)))

(declare-fun res!362436 () Bool)

(assert (=> b!572784 (=> res!362436 e!329501)))

(get-info :version)

(assert (=> b!572784 (= res!362436 (or (undefined!6468 lt!261575) (not ((_ is Intermediate!5656) lt!261575))))))

(declare-fun b!572785 () Bool)

(declare-fun res!362435 () Bool)

(assert (=> b!572785 (=> (not res!362435) (not e!329496))))

(declare-datatypes ((List!11333 0))(
  ( (Nil!11330) (Cons!11329 (h!12356 (_ BitVec 64)) (t!17569 List!11333)) )
))
(declare-fun arrayNoDuplicates!0 (array!35831 (_ BitVec 32) List!11333) Bool)

(assert (=> b!572785 (= res!362435 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11330))))

(declare-fun b!572786 () Bool)

(assert (=> b!572786 (= e!329499 (not true))))

(assert (=> b!572786 e!329497))

(declare-fun res!362446 () Bool)

(assert (=> b!572786 (=> (not res!362446) (not e!329497))))

(assert (=> b!572786 (= res!362446 (= lt!261574 (Found!5656 j!142)))))

(assert (=> b!572786 (= lt!261574 (seekEntryOrOpen!0 (select (arr!17200 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35831 (_ BitVec 32)) Bool)

(assert (=> b!572786 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!18014 0))(
  ( (Unit!18015) )
))
(declare-fun lt!261569 () Unit!18014)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35831 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18014)

(assert (=> b!572786 (= lt!261569 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!572787 () Bool)

(assert (=> b!572787 (= e!329501 e!329503)))

(declare-fun res!362447 () Bool)

(assert (=> b!572787 (=> res!362447 e!329503)))

(declare-fun lt!261570 () (_ BitVec 64))

(assert (=> b!572787 (= res!362447 (or (= lt!261570 (select (arr!17200 a!3118) j!142)) (= lt!261570 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!572787 (= lt!261570 (select (arr!17200 a!3118) (index!24853 lt!261575)))))

(declare-fun b!572788 () Bool)

(declare-fun res!362445 () Bool)

(assert (=> b!572788 (=> (not res!362445) (not e!329496))))

(assert (=> b!572788 (= res!362445 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!572789 () Bool)

(declare-fun res!362441 () Bool)

(assert (=> b!572789 (=> (not res!362441) (not e!329500))))

(declare-fun arrayContainsKey!0 (array!35831 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!572789 (= res!362441 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(assert (= (and start!52480 res!362444) b!572782))

(assert (= (and b!572782 res!362437) b!572778))

(assert (= (and b!572778 res!362442) b!572783))

(assert (= (and b!572783 res!362439) b!572789))

(assert (= (and b!572789 res!362441) b!572781))

(assert (= (and b!572781 res!362438) b!572788))

(assert (= (and b!572788 res!362445) b!572785))

(assert (= (and b!572785 res!362435) b!572779))

(assert (= (and b!572779 res!362443) b!572786))

(assert (= (and b!572786 res!362446) b!572784))

(assert (= (and b!572784 (not res!362436)) b!572787))

(assert (= (and b!572787 (not res!362447)) b!572780))

(assert (= (and b!572780 res!362440) b!572777))

(declare-fun m!551859 () Bool)

(assert (=> b!572783 m!551859))

(declare-fun m!551861 () Bool)

(assert (=> b!572780 m!551861))

(assert (=> b!572780 m!551861))

(declare-fun m!551863 () Bool)

(assert (=> b!572780 m!551863))

(declare-fun m!551865 () Bool)

(assert (=> b!572785 m!551865))

(assert (=> b!572787 m!551861))

(declare-fun m!551867 () Bool)

(assert (=> b!572787 m!551867))

(assert (=> b!572779 m!551861))

(declare-fun m!551869 () Bool)

(assert (=> b!572779 m!551869))

(assert (=> b!572779 m!551861))

(declare-fun m!551871 () Bool)

(assert (=> b!572779 m!551871))

(declare-fun m!551873 () Bool)

(assert (=> b!572779 m!551873))

(declare-fun m!551875 () Bool)

(assert (=> b!572779 m!551875))

(assert (=> b!572779 m!551861))

(declare-fun m!551877 () Bool)

(assert (=> b!572779 m!551877))

(declare-fun m!551879 () Bool)

(assert (=> b!572779 m!551879))

(declare-fun m!551881 () Bool)

(assert (=> b!572781 m!551881))

(assert (=> b!572786 m!551861))

(assert (=> b!572786 m!551861))

(declare-fun m!551883 () Bool)

(assert (=> b!572786 m!551883))

(declare-fun m!551885 () Bool)

(assert (=> b!572786 m!551885))

(declare-fun m!551887 () Bool)

(assert (=> b!572786 m!551887))

(assert (=> b!572778 m!551861))

(assert (=> b!572778 m!551861))

(declare-fun m!551889 () Bool)

(assert (=> b!572778 m!551889))

(declare-fun m!551891 () Bool)

(assert (=> b!572777 m!551891))

(declare-fun m!551893 () Bool)

(assert (=> b!572777 m!551893))

(declare-fun m!551895 () Bool)

(assert (=> b!572788 m!551895))

(declare-fun m!551897 () Bool)

(assert (=> b!572789 m!551897))

(declare-fun m!551899 () Bool)

(assert (=> start!52480 m!551899))

(declare-fun m!551901 () Bool)

(assert (=> start!52480 m!551901))

(check-sat (not b!572780) (not b!572777) (not b!572778) (not b!572779) (not b!572781) (not b!572788) (not start!52480) (not b!572786) (not b!572789) (not b!572783) (not b!572785))
(check-sat)
