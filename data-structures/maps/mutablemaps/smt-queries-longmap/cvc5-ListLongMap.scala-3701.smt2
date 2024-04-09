; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50840 () Bool)

(assert start!50840)

(declare-fun b!555914 () Bool)

(declare-fun e!320327 () Bool)

(assert (=> b!555914 (= e!320327 (not true))))

(declare-fun e!320326 () Bool)

(assert (=> b!555914 e!320326))

(declare-fun res!348478 () Bool)

(assert (=> b!555914 (=> (not res!348478) (not e!320326))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-datatypes ((array!35019 0))(
  ( (array!35020 (arr!16815 (Array (_ BitVec 32) (_ BitVec 64))) (size!17179 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35019)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35019 (_ BitVec 32)) Bool)

(assert (=> b!555914 (= res!348478 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17316 0))(
  ( (Unit!17317) )
))
(declare-fun lt!252757 () Unit!17316)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35019 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17316)

(assert (=> b!555914 (= lt!252757 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!555915 () Bool)

(declare-datatypes ((SeekEntryResult!5271 0))(
  ( (MissingZero!5271 (index!23311 (_ BitVec 32))) (Found!5271 (index!23312 (_ BitVec 32))) (Intermediate!5271 (undefined!6083 Bool) (index!23313 (_ BitVec 32)) (x!52236 (_ BitVec 32))) (Undefined!5271) (MissingVacant!5271 (index!23314 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35019 (_ BitVec 32)) SeekEntryResult!5271)

(assert (=> b!555915 (= e!320326 (= (seekEntryOrOpen!0 (select (arr!16815 a!3118) j!142) a!3118 mask!3119) (Found!5271 j!142)))))

(declare-fun b!555916 () Bool)

(declare-fun res!348485 () Bool)

(assert (=> b!555916 (=> (not res!348485) (not e!320327))))

(declare-datatypes ((List!10948 0))(
  ( (Nil!10945) (Cons!10944 (h!11929 (_ BitVec 64)) (t!17184 List!10948)) )
))
(declare-fun arrayNoDuplicates!0 (array!35019 (_ BitVec 32) List!10948) Bool)

(assert (=> b!555916 (= res!348485 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10945))))

(declare-fun res!348476 () Bool)

(declare-fun e!320329 () Bool)

(assert (=> start!50840 (=> (not res!348476) (not e!320329))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50840 (= res!348476 (validMask!0 mask!3119))))

(assert (=> start!50840 e!320329))

(assert (=> start!50840 true))

(declare-fun array_inv!12589 (array!35019) Bool)

(assert (=> start!50840 (array_inv!12589 a!3118)))

(declare-fun b!555917 () Bool)

(declare-fun res!348480 () Bool)

(assert (=> b!555917 (=> (not res!348480) (not e!320329))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!35019 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!555917 (= res!348480 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!555918 () Bool)

(assert (=> b!555918 (= e!320329 e!320327)))

(declare-fun res!348479 () Bool)

(assert (=> b!555918 (=> (not res!348479) (not e!320327))))

(declare-fun lt!252758 () SeekEntryResult!5271)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!555918 (= res!348479 (or (= lt!252758 (MissingZero!5271 i!1132)) (= lt!252758 (MissingVacant!5271 i!1132))))))

(assert (=> b!555918 (= lt!252758 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!555919 () Bool)

(declare-fun res!348484 () Bool)

(assert (=> b!555919 (=> (not res!348484) (not e!320327))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35019 (_ BitVec 32)) SeekEntryResult!5271)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!555919 (= res!348484 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16815 a!3118) j!142) mask!3119) (select (arr!16815 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16815 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!16815 a!3118) i!1132 k!1914) j!142) (array!35020 (store (arr!16815 a!3118) i!1132 k!1914) (size!17179 a!3118)) mask!3119)))))

(declare-fun b!555920 () Bool)

(declare-fun res!348483 () Bool)

(assert (=> b!555920 (=> (not res!348483) (not e!320329))))

(assert (=> b!555920 (= res!348483 (and (= (size!17179 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17179 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17179 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!555921 () Bool)

(declare-fun res!348481 () Bool)

(assert (=> b!555921 (=> (not res!348481) (not e!320329))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!555921 (= res!348481 (validKeyInArray!0 (select (arr!16815 a!3118) j!142)))))

(declare-fun b!555922 () Bool)

(declare-fun res!348477 () Bool)

(assert (=> b!555922 (=> (not res!348477) (not e!320329))))

(assert (=> b!555922 (= res!348477 (validKeyInArray!0 k!1914))))

(declare-fun b!555923 () Bool)

(declare-fun res!348482 () Bool)

(assert (=> b!555923 (=> (not res!348482) (not e!320327))))

(assert (=> b!555923 (= res!348482 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(assert (= (and start!50840 res!348476) b!555920))

(assert (= (and b!555920 res!348483) b!555921))

(assert (= (and b!555921 res!348481) b!555922))

(assert (= (and b!555922 res!348477) b!555917))

(assert (= (and b!555917 res!348480) b!555918))

(assert (= (and b!555918 res!348479) b!555923))

(assert (= (and b!555923 res!348482) b!555916))

(assert (= (and b!555916 res!348485) b!555919))

(assert (= (and b!555919 res!348484) b!555914))

(assert (= (and b!555914 res!348478) b!555915))

(declare-fun m!533875 () Bool)

(assert (=> b!555914 m!533875))

(declare-fun m!533877 () Bool)

(assert (=> b!555914 m!533877))

(declare-fun m!533879 () Bool)

(assert (=> start!50840 m!533879))

(declare-fun m!533881 () Bool)

(assert (=> start!50840 m!533881))

(declare-fun m!533883 () Bool)

(assert (=> b!555915 m!533883))

(assert (=> b!555915 m!533883))

(declare-fun m!533885 () Bool)

(assert (=> b!555915 m!533885))

(declare-fun m!533887 () Bool)

(assert (=> b!555918 m!533887))

(declare-fun m!533889 () Bool)

(assert (=> b!555922 m!533889))

(assert (=> b!555919 m!533883))

(declare-fun m!533891 () Bool)

(assert (=> b!555919 m!533891))

(assert (=> b!555919 m!533883))

(declare-fun m!533893 () Bool)

(assert (=> b!555919 m!533893))

(declare-fun m!533895 () Bool)

(assert (=> b!555919 m!533895))

(assert (=> b!555919 m!533893))

(declare-fun m!533897 () Bool)

(assert (=> b!555919 m!533897))

(assert (=> b!555919 m!533891))

(assert (=> b!555919 m!533883))

(declare-fun m!533899 () Bool)

(assert (=> b!555919 m!533899))

(declare-fun m!533901 () Bool)

(assert (=> b!555919 m!533901))

(assert (=> b!555919 m!533893))

(assert (=> b!555919 m!533895))

(declare-fun m!533903 () Bool)

(assert (=> b!555916 m!533903))

(declare-fun m!533905 () Bool)

(assert (=> b!555923 m!533905))

(declare-fun m!533907 () Bool)

(assert (=> b!555917 m!533907))

(assert (=> b!555921 m!533883))

(assert (=> b!555921 m!533883))

(declare-fun m!533909 () Bool)

(assert (=> b!555921 m!533909))

(push 1)

