; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!52168 () Bool)

(assert start!52168)

(declare-fun b!568989 () Bool)

(declare-fun res!359162 () Bool)

(declare-fun e!327361 () Bool)

(assert (=> b!568989 (=> (not res!359162) (not e!327361))))

(declare-datatypes ((array!35645 0))(
  ( (array!35646 (arr!17110 (Array (_ BitVec 32) (_ BitVec 64))) (size!17474 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35645)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35645 (_ BitVec 32)) Bool)

(assert (=> b!568989 (= res!359162 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun res!359159 () Bool)

(declare-fun e!327360 () Bool)

(assert (=> start!52168 (=> (not res!359159) (not e!327360))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52168 (= res!359159 (validMask!0 mask!3119))))

(assert (=> start!52168 e!327360))

(assert (=> start!52168 true))

(declare-fun array_inv!12884 (array!35645) Bool)

(assert (=> start!52168 (array_inv!12884 a!3118)))

(declare-fun b!568990 () Bool)

(declare-fun res!359158 () Bool)

(assert (=> b!568990 (=> (not res!359158) (not e!327361))))

(declare-datatypes ((List!11243 0))(
  ( (Nil!11240) (Cons!11239 (h!12260 (_ BitVec 64)) (t!17479 List!11243)) )
))
(declare-fun arrayNoDuplicates!0 (array!35645 (_ BitVec 32) List!11243) Bool)

(assert (=> b!568990 (= res!359158 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11240))))

(declare-fun b!568991 () Bool)

(declare-fun res!359165 () Bool)

(assert (=> b!568991 (=> (not res!359165) (not e!327360))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!568991 (= res!359165 (validKeyInArray!0 (select (arr!17110 a!3118) j!142)))))

(declare-fun e!327359 () Bool)

(declare-fun b!568992 () Bool)

(declare-datatypes ((SeekEntryResult!5566 0))(
  ( (MissingZero!5566 (index!24491 (_ BitVec 32))) (Found!5566 (index!24492 (_ BitVec 32))) (Intermediate!5566 (undefined!6378 Bool) (index!24493 (_ BitVec 32)) (x!53396 (_ BitVec 32))) (Undefined!5566) (MissingVacant!5566 (index!24494 (_ BitVec 32))) )
))
(declare-fun lt!259338 () SeekEntryResult!5566)

(get-info :version)

(assert (=> b!568992 (= e!327359 (not (or (undefined!6378 lt!259338) (not ((_ is Intermediate!5566) lt!259338)) (= (select (arr!17110 a!3118) (index!24493 lt!259338)) (select (arr!17110 a!3118) j!142)) (not (= (select (arr!17110 a!3118) (index!24493 lt!259338)) #b0000000000000000000000000000000000000000000000000000000000000000)) (bvsgt #b00000000000000000000000000000000 (size!17474 a!3118)) (bvsle j!142 (size!17474 a!3118)))))))

(declare-fun lt!259339 () SeekEntryResult!5566)

(assert (=> b!568992 (and (= lt!259339 (Found!5566 j!142)) (or (undefined!6378 lt!259338) (not ((_ is Intermediate!5566) lt!259338)) (= (select (arr!17110 a!3118) (index!24493 lt!259338)) (select (arr!17110 a!3118) j!142)) (not (= (select (arr!17110 a!3118) (index!24493 lt!259338)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= lt!259339 (MissingZero!5566 (index!24493 lt!259338)))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35645 (_ BitVec 32)) SeekEntryResult!5566)

(assert (=> b!568992 (= lt!259339 (seekEntryOrOpen!0 (select (arr!17110 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!568992 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17834 0))(
  ( (Unit!17835) )
))
(declare-fun lt!259337 () Unit!17834)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35645 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17834)

(assert (=> b!568992 (= lt!259337 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!568993 () Bool)

(declare-fun res!359161 () Bool)

(assert (=> b!568993 (=> (not res!359161) (not e!327360))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!35645 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!568993 (= res!359161 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!568994 () Bool)

(declare-fun res!359164 () Bool)

(assert (=> b!568994 (=> (not res!359164) (not e!327360))))

(assert (=> b!568994 (= res!359164 (validKeyInArray!0 k0!1914))))

(declare-fun b!568995 () Bool)

(assert (=> b!568995 (= e!327361 e!327359)))

(declare-fun res!359160 () Bool)

(assert (=> b!568995 (=> (not res!359160) (not e!327359))))

(declare-fun lt!259336 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35645 (_ BitVec 32)) SeekEntryResult!5566)

(assert (=> b!568995 (= res!359160 (= lt!259338 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!259336 (select (store (arr!17110 a!3118) i!1132 k0!1914) j!142) (array!35646 (store (arr!17110 a!3118) i!1132 k0!1914) (size!17474 a!3118)) mask!3119)))))

(declare-fun lt!259340 () (_ BitVec 32))

(assert (=> b!568995 (= lt!259338 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!259340 (select (arr!17110 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!568995 (= lt!259336 (toIndex!0 (select (store (arr!17110 a!3118) i!1132 k0!1914) j!142) mask!3119))))

(assert (=> b!568995 (= lt!259340 (toIndex!0 (select (arr!17110 a!3118) j!142) mask!3119))))

(declare-fun b!568996 () Bool)

(declare-fun res!359163 () Bool)

(assert (=> b!568996 (=> (not res!359163) (not e!327360))))

(assert (=> b!568996 (= res!359163 (and (= (size!17474 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17474 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17474 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!568997 () Bool)

(assert (=> b!568997 (= e!327360 e!327361)))

(declare-fun res!359157 () Bool)

(assert (=> b!568997 (=> (not res!359157) (not e!327361))))

(declare-fun lt!259335 () SeekEntryResult!5566)

(assert (=> b!568997 (= res!359157 (or (= lt!259335 (MissingZero!5566 i!1132)) (= lt!259335 (MissingVacant!5566 i!1132))))))

(assert (=> b!568997 (= lt!259335 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(assert (= (and start!52168 res!359159) b!568996))

(assert (= (and b!568996 res!359163) b!568991))

(assert (= (and b!568991 res!359165) b!568994))

(assert (= (and b!568994 res!359164) b!568993))

(assert (= (and b!568993 res!359161) b!568997))

(assert (= (and b!568997 res!359157) b!568989))

(assert (= (and b!568989 res!359162) b!568990))

(assert (= (and b!568990 res!359158) b!568995))

(assert (= (and b!568995 res!359160) b!568992))

(declare-fun m!547653 () Bool)

(assert (=> b!568992 m!547653))

(declare-fun m!547655 () Bool)

(assert (=> b!568992 m!547655))

(assert (=> b!568992 m!547653))

(declare-fun m!547657 () Bool)

(assert (=> b!568992 m!547657))

(declare-fun m!547659 () Bool)

(assert (=> b!568992 m!547659))

(declare-fun m!547661 () Bool)

(assert (=> b!568992 m!547661))

(assert (=> b!568991 m!547653))

(assert (=> b!568991 m!547653))

(declare-fun m!547663 () Bool)

(assert (=> b!568991 m!547663))

(declare-fun m!547665 () Bool)

(assert (=> b!568989 m!547665))

(declare-fun m!547667 () Bool)

(assert (=> b!568994 m!547667))

(declare-fun m!547669 () Bool)

(assert (=> b!568990 m!547669))

(declare-fun m!547671 () Bool)

(assert (=> b!568997 m!547671))

(assert (=> b!568995 m!547653))

(declare-fun m!547673 () Bool)

(assert (=> b!568995 m!547673))

(assert (=> b!568995 m!547653))

(declare-fun m!547675 () Bool)

(assert (=> b!568995 m!547675))

(assert (=> b!568995 m!547653))

(declare-fun m!547677 () Bool)

(assert (=> b!568995 m!547677))

(assert (=> b!568995 m!547677))

(declare-fun m!547679 () Bool)

(assert (=> b!568995 m!547679))

(declare-fun m!547681 () Bool)

(assert (=> b!568995 m!547681))

(assert (=> b!568995 m!547677))

(declare-fun m!547683 () Bool)

(assert (=> b!568995 m!547683))

(declare-fun m!547685 () Bool)

(assert (=> start!52168 m!547685))

(declare-fun m!547687 () Bool)

(assert (=> start!52168 m!547687))

(declare-fun m!547689 () Bool)

(assert (=> b!568993 m!547689))

(check-sat (not b!568989) (not b!568993) (not b!568994) (not b!568995) (not start!52168) (not b!568990) (not b!568997) (not b!568992) (not b!568991))
(check-sat)
