; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50736 () Bool)

(assert start!50736)

(declare-fun b!554490 () Bool)

(declare-fun res!347053 () Bool)

(declare-fun e!319696 () Bool)

(assert (=> b!554490 (=> (not res!347053) (not e!319696))))

(declare-datatypes ((array!34915 0))(
  ( (array!34916 (arr!16763 (Array (_ BitVec 32) (_ BitVec 64))) (size!17127 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34915)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!554490 (= res!347053 (validKeyInArray!0 (select (arr!16763 a!3118) j!142)))))

(declare-fun b!554491 () Bool)

(declare-fun e!319695 () Bool)

(declare-fun e!319693 () Bool)

(assert (=> b!554491 (= e!319695 e!319693)))

(declare-fun res!347054 () Bool)

(assert (=> b!554491 (=> (not res!347054) (not e!319693))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5219 0))(
  ( (MissingZero!5219 (index!23103 (_ BitVec 32))) (Found!5219 (index!23104 (_ BitVec 32))) (Intermediate!5219 (undefined!6031 Bool) (index!23105 (_ BitVec 32)) (x!52040 (_ BitVec 32))) (Undefined!5219) (MissingVacant!5219 (index!23106 (_ BitVec 32))) )
))
(declare-fun lt!251877 () SeekEntryResult!5219)

(declare-fun i!1132 () (_ BitVec 32))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun lt!251879 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34915 (_ BitVec 32)) SeekEntryResult!5219)

(assert (=> b!554491 (= res!347054 (= lt!251877 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!251879 (select (store (arr!16763 a!3118) i!1132 k!1914) j!142) (array!34916 (store (arr!16763 a!3118) i!1132 k!1914) (size!17127 a!3118)) mask!3119)))))

(declare-fun lt!251876 () (_ BitVec 32))

(assert (=> b!554491 (= lt!251877 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!251876 (select (arr!16763 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!554491 (= lt!251879 (toIndex!0 (select (store (arr!16763 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!554491 (= lt!251876 (toIndex!0 (select (arr!16763 a!3118) j!142) mask!3119))))

(declare-fun b!554492 () Bool)

(declare-fun res!347057 () Bool)

(assert (=> b!554492 (=> (not res!347057) (not e!319695))))

(declare-datatypes ((List!10896 0))(
  ( (Nil!10893) (Cons!10892 (h!11877 (_ BitVec 64)) (t!17132 List!10896)) )
))
(declare-fun arrayNoDuplicates!0 (array!34915 (_ BitVec 32) List!10896) Bool)

(assert (=> b!554492 (= res!347057 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10893))))

(declare-fun res!347059 () Bool)

(assert (=> start!50736 (=> (not res!347059) (not e!319696))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50736 (= res!347059 (validMask!0 mask!3119))))

(assert (=> start!50736 e!319696))

(assert (=> start!50736 true))

(declare-fun array_inv!12537 (array!34915) Bool)

(assert (=> start!50736 (array_inv!12537 a!3118)))

(declare-fun b!554493 () Bool)

(declare-fun res!347056 () Bool)

(assert (=> b!554493 (=> (not res!347056) (not e!319696))))

(assert (=> b!554493 (= res!347056 (and (= (size!17127 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17127 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17127 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!554494 () Bool)

(declare-fun res!347060 () Bool)

(assert (=> b!554494 (=> (not res!347060) (not e!319695))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34915 (_ BitVec 32)) Bool)

(assert (=> b!554494 (= res!347060 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!554495 () Bool)

(assert (=> b!554495 (= e!319696 e!319695)))

(declare-fun res!347052 () Bool)

(assert (=> b!554495 (=> (not res!347052) (not e!319695))))

(declare-fun lt!251874 () SeekEntryResult!5219)

(assert (=> b!554495 (= res!347052 (or (= lt!251874 (MissingZero!5219 i!1132)) (= lt!251874 (MissingVacant!5219 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34915 (_ BitVec 32)) SeekEntryResult!5219)

(assert (=> b!554495 (= lt!251874 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!554496 () Bool)

(declare-fun res!347055 () Bool)

(assert (=> b!554496 (=> (not res!347055) (not e!319696))))

(declare-fun arrayContainsKey!0 (array!34915 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!554496 (= res!347055 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!554497 () Bool)

(assert (=> b!554497 (= e!319693 (not true))))

(declare-fun lt!251875 () SeekEntryResult!5219)

(assert (=> b!554497 (and (= lt!251875 (Found!5219 j!142)) (or (undefined!6031 lt!251877) (not (is-Intermediate!5219 lt!251877)) (= (select (arr!16763 a!3118) (index!23105 lt!251877)) (select (arr!16763 a!3118) j!142)) (not (= (select (arr!16763 a!3118) (index!23105 lt!251877)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= lt!251875 (MissingZero!5219 (index!23105 lt!251877)))))))

(assert (=> b!554497 (= lt!251875 (seekEntryOrOpen!0 (select (arr!16763 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!554497 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17212 0))(
  ( (Unit!17213) )
))
(declare-fun lt!251878 () Unit!17212)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34915 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17212)

(assert (=> b!554497 (= lt!251878 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!554498 () Bool)

(declare-fun res!347058 () Bool)

(assert (=> b!554498 (=> (not res!347058) (not e!319696))))

(assert (=> b!554498 (= res!347058 (validKeyInArray!0 k!1914))))

(assert (= (and start!50736 res!347059) b!554493))

(assert (= (and b!554493 res!347056) b!554490))

(assert (= (and b!554490 res!347053) b!554498))

(assert (= (and b!554498 res!347058) b!554496))

(assert (= (and b!554496 res!347055) b!554495))

(assert (= (and b!554495 res!347052) b!554494))

(assert (= (and b!554494 res!347060) b!554492))

(assert (= (and b!554492 res!347057) b!554491))

(assert (= (and b!554491 res!347054) b!554497))

(declare-fun m!531905 () Bool)

(assert (=> b!554494 m!531905))

(declare-fun m!531907 () Bool)

(assert (=> b!554498 m!531907))

(declare-fun m!531909 () Bool)

(assert (=> b!554496 m!531909))

(declare-fun m!531911 () Bool)

(assert (=> b!554492 m!531911))

(declare-fun m!531913 () Bool)

(assert (=> b!554495 m!531913))

(declare-fun m!531915 () Bool)

(assert (=> b!554497 m!531915))

(declare-fun m!531917 () Bool)

(assert (=> b!554497 m!531917))

(declare-fun m!531919 () Bool)

(assert (=> b!554497 m!531919))

(declare-fun m!531921 () Bool)

(assert (=> b!554497 m!531921))

(assert (=> b!554497 m!531917))

(declare-fun m!531923 () Bool)

(assert (=> b!554497 m!531923))

(assert (=> b!554491 m!531917))

(declare-fun m!531925 () Bool)

(assert (=> b!554491 m!531925))

(assert (=> b!554491 m!531917))

(declare-fun m!531927 () Bool)

(assert (=> b!554491 m!531927))

(assert (=> b!554491 m!531927))

(declare-fun m!531929 () Bool)

(assert (=> b!554491 m!531929))

(declare-fun m!531931 () Bool)

(assert (=> b!554491 m!531931))

(assert (=> b!554491 m!531917))

(declare-fun m!531933 () Bool)

(assert (=> b!554491 m!531933))

(assert (=> b!554491 m!531927))

(declare-fun m!531935 () Bool)

(assert (=> b!554491 m!531935))

(declare-fun m!531937 () Bool)

(assert (=> start!50736 m!531937))

(declare-fun m!531939 () Bool)

(assert (=> start!50736 m!531939))

(assert (=> b!554490 m!531917))

(assert (=> b!554490 m!531917))

(declare-fun m!531941 () Bool)

(assert (=> b!554490 m!531941))

(push 1)

