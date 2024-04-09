; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!50266 () Bool)

(assert start!50266)

(declare-fun res!343166 () Bool)

(declare-fun e!317458 () Bool)

(assert (=> start!50266 (=> (not res!343166) (not e!317458))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50266 (= res!343166 (validMask!0 mask!3119))))

(assert (=> start!50266 e!317458))

(assert (=> start!50266 true))

(declare-datatypes ((array!34673 0))(
  ( (array!34674 (arr!16648 (Array (_ BitVec 32) (_ BitVec 64))) (size!17012 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34673)

(declare-fun array_inv!12422 (array!34673) Bool)

(assert (=> start!50266 (array_inv!12422 a!3118)))

(declare-fun b!549870 () Bool)

(declare-fun res!343170 () Bool)

(declare-fun e!317456 () Bool)

(assert (=> b!549870 (=> (not res!343170) (not e!317456))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34673 (_ BitVec 32)) Bool)

(assert (=> b!549870 (= res!343170 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!549871 () Bool)

(assert (=> b!549871 (= e!317458 e!317456)))

(declare-fun res!343172 () Bool)

(assert (=> b!549871 (=> (not res!343172) (not e!317456))))

(declare-datatypes ((SeekEntryResult!5104 0))(
  ( (MissingZero!5104 (index!22643 (_ BitVec 32))) (Found!5104 (index!22644 (_ BitVec 32))) (Intermediate!5104 (undefined!5916 Bool) (index!22645 (_ BitVec 32)) (x!51597 (_ BitVec 32))) (Undefined!5104) (MissingVacant!5104 (index!22646 (_ BitVec 32))) )
))
(declare-fun lt!250366 () SeekEntryResult!5104)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!549871 (= res!343172 (or (= lt!250366 (MissingZero!5104 i!1132)) (= lt!250366 (MissingVacant!5104 i!1132))))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34673 (_ BitVec 32)) SeekEntryResult!5104)

(assert (=> b!549871 (= lt!250366 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!549872 () Bool)

(declare-fun res!343165 () Bool)

(assert (=> b!549872 (=> (not res!343165) (not e!317458))))

(declare-fun arrayContainsKey!0 (array!34673 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!549872 (= res!343165 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!549873 () Bool)

(declare-fun res!343169 () Bool)

(assert (=> b!549873 (=> (not res!343169) (not e!317456))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34673 (_ BitVec 32)) SeekEntryResult!5104)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!549873 (= res!343169 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16648 a!3118) j!142) mask!3119) (select (arr!16648 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16648 a!3118) i!1132 k0!1914) j!142) mask!3119) (select (store (arr!16648 a!3118) i!1132 k0!1914) j!142) (array!34674 (store (arr!16648 a!3118) i!1132 k0!1914) (size!17012 a!3118)) mask!3119)))))

(declare-fun b!549874 () Bool)

(declare-fun res!343171 () Bool)

(assert (=> b!549874 (=> (not res!343171) (not e!317458))))

(assert (=> b!549874 (= res!343171 (and (= (size!17012 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17012 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17012 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!549875 () Bool)

(assert (=> b!549875 (= e!317456 (not true))))

(assert (=> b!549875 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!16982 0))(
  ( (Unit!16983) )
))
(declare-fun lt!250367 () Unit!16982)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34673 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16982)

(assert (=> b!549875 (= lt!250367 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!549876 () Bool)

(declare-fun res!343168 () Bool)

(assert (=> b!549876 (=> (not res!343168) (not e!317458))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!549876 (= res!343168 (validKeyInArray!0 (select (arr!16648 a!3118) j!142)))))

(declare-fun b!549877 () Bool)

(declare-fun res!343167 () Bool)

(assert (=> b!549877 (=> (not res!343167) (not e!317456))))

(declare-datatypes ((List!10781 0))(
  ( (Nil!10778) (Cons!10777 (h!11750 (_ BitVec 64)) (t!17017 List!10781)) )
))
(declare-fun arrayNoDuplicates!0 (array!34673 (_ BitVec 32) List!10781) Bool)

(assert (=> b!549877 (= res!343167 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10778))))

(declare-fun b!549878 () Bool)

(declare-fun res!343164 () Bool)

(assert (=> b!549878 (=> (not res!343164) (not e!317458))))

(assert (=> b!549878 (= res!343164 (validKeyInArray!0 k0!1914))))

(assert (= (and start!50266 res!343166) b!549874))

(assert (= (and b!549874 res!343171) b!549876))

(assert (= (and b!549876 res!343168) b!549878))

(assert (= (and b!549878 res!343164) b!549872))

(assert (= (and b!549872 res!343165) b!549871))

(assert (= (and b!549871 res!343172) b!549870))

(assert (= (and b!549870 res!343170) b!549877))

(assert (= (and b!549877 res!343167) b!549873))

(assert (= (and b!549873 res!343169) b!549875))

(declare-fun m!526913 () Bool)

(assert (=> start!50266 m!526913))

(declare-fun m!526915 () Bool)

(assert (=> start!50266 m!526915))

(declare-fun m!526917 () Bool)

(assert (=> b!549870 m!526917))

(declare-fun m!526919 () Bool)

(assert (=> b!549872 m!526919))

(declare-fun m!526921 () Bool)

(assert (=> b!549873 m!526921))

(declare-fun m!526923 () Bool)

(assert (=> b!549873 m!526923))

(assert (=> b!549873 m!526921))

(declare-fun m!526925 () Bool)

(assert (=> b!549873 m!526925))

(declare-fun m!526927 () Bool)

(assert (=> b!549873 m!526927))

(assert (=> b!549873 m!526925))

(declare-fun m!526929 () Bool)

(assert (=> b!549873 m!526929))

(assert (=> b!549873 m!526923))

(assert (=> b!549873 m!526921))

(declare-fun m!526931 () Bool)

(assert (=> b!549873 m!526931))

(declare-fun m!526933 () Bool)

(assert (=> b!549873 m!526933))

(assert (=> b!549873 m!526925))

(assert (=> b!549873 m!526927))

(assert (=> b!549876 m!526921))

(assert (=> b!549876 m!526921))

(declare-fun m!526935 () Bool)

(assert (=> b!549876 m!526935))

(declare-fun m!526937 () Bool)

(assert (=> b!549875 m!526937))

(declare-fun m!526939 () Bool)

(assert (=> b!549875 m!526939))

(declare-fun m!526941 () Bool)

(assert (=> b!549871 m!526941))

(declare-fun m!526943 () Bool)

(assert (=> b!549878 m!526943))

(declare-fun m!526945 () Bool)

(assert (=> b!549877 m!526945))

(check-sat (not b!549877) (not b!549875) (not b!549870) (not b!549878) (not b!549876) (not start!50266) (not b!549871) (not b!549872) (not b!549873))
(check-sat)
