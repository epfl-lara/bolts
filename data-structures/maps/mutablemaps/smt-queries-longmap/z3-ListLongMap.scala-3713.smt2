; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!51094 () Bool)

(assert start!51094)

(declare-fun res!349939 () Bool)

(declare-fun e!321410 () Bool)

(assert (=> start!51094 (=> (not res!349939) (not e!321410))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51094 (= res!349939 (validMask!0 mask!3119))))

(assert (=> start!51094 e!321410))

(assert (=> start!51094 true))

(declare-datatypes ((array!35102 0))(
  ( (array!35103 (arr!16852 (Array (_ BitVec 32) (_ BitVec 64))) (size!17216 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35102)

(declare-fun array_inv!12626 (array!35102) Bool)

(assert (=> start!51094 (array_inv!12626 a!3118)))

(declare-fun b!557920 () Bool)

(declare-fun res!349934 () Bool)

(declare-fun e!321415 () Bool)

(assert (=> b!557920 (=> (not res!349934) (not e!321415))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35102 (_ BitVec 32)) Bool)

(assert (=> b!557920 (= res!349934 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!557921 () Bool)

(assert (=> b!557921 (= e!321410 e!321415)))

(declare-fun res!349936 () Bool)

(assert (=> b!557921 (=> (not res!349936) (not e!321415))))

(declare-datatypes ((SeekEntryResult!5308 0))(
  ( (MissingZero!5308 (index!23459 (_ BitVec 32))) (Found!5308 (index!23460 (_ BitVec 32))) (Intermediate!5308 (undefined!6120 Bool) (index!23461 (_ BitVec 32)) (x!52387 (_ BitVec 32))) (Undefined!5308) (MissingVacant!5308 (index!23462 (_ BitVec 32))) )
))
(declare-fun lt!253570 () SeekEntryResult!5308)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!557921 (= res!349936 (or (= lt!253570 (MissingZero!5308 i!1132)) (= lt!253570 (MissingVacant!5308 i!1132))))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35102 (_ BitVec 32)) SeekEntryResult!5308)

(assert (=> b!557921 (= lt!253570 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!557922 () Bool)

(declare-fun e!321413 () Bool)

(assert (=> b!557922 (= e!321413 (not true))))

(declare-fun e!321414 () Bool)

(assert (=> b!557922 e!321414))

(declare-fun res!349942 () Bool)

(assert (=> b!557922 (=> (not res!349942) (not e!321414))))

(declare-fun lt!253566 () SeekEntryResult!5308)

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!557922 (= res!349942 (= lt!253566 (Found!5308 j!142)))))

(assert (=> b!557922 (= lt!253566 (seekEntryOrOpen!0 (select (arr!16852 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!557922 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17390 0))(
  ( (Unit!17391) )
))
(declare-fun lt!253571 () Unit!17390)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35102 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17390)

(assert (=> b!557922 (= lt!253571 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!557923 () Bool)

(declare-fun res!349935 () Bool)

(assert (=> b!557923 (=> (not res!349935) (not e!321415))))

(declare-datatypes ((List!10985 0))(
  ( (Nil!10982) (Cons!10981 (h!11975 (_ BitVec 64)) (t!17221 List!10985)) )
))
(declare-fun arrayNoDuplicates!0 (array!35102 (_ BitVec 32) List!10985) Bool)

(assert (=> b!557923 (= res!349935 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10982))))

(declare-fun b!557924 () Bool)

(declare-fun e!321412 () Bool)

(assert (=> b!557924 (= e!321414 e!321412)))

(declare-fun res!349937 () Bool)

(assert (=> b!557924 (=> res!349937 e!321412)))

(declare-fun lt!253568 () SeekEntryResult!5308)

(get-info :version)

(assert (=> b!557924 (= res!349937 (or (undefined!6120 lt!253568) (not ((_ is Intermediate!5308) lt!253568)) (= (select (arr!16852 a!3118) (index!23461 lt!253568)) (select (arr!16852 a!3118) j!142)) (= (select (arr!16852 a!3118) (index!23461 lt!253568)) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!557925 () Bool)

(declare-fun res!349933 () Bool)

(assert (=> b!557925 (=> (not res!349933) (not e!321410))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!557925 (= res!349933 (validKeyInArray!0 k0!1914))))

(declare-fun b!557926 () Bool)

(declare-fun res!349940 () Bool)

(assert (=> b!557926 (=> (not res!349940) (not e!321410))))

(assert (=> b!557926 (= res!349940 (validKeyInArray!0 (select (arr!16852 a!3118) j!142)))))

(declare-fun b!557927 () Bool)

(declare-fun res!349938 () Bool)

(assert (=> b!557927 (=> (not res!349938) (not e!321410))))

(declare-fun arrayContainsKey!0 (array!35102 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!557927 (= res!349938 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!557928 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35102 (_ BitVec 32)) SeekEntryResult!5308)

(assert (=> b!557928 (= e!321412 (= lt!253566 (seekKeyOrZeroReturnVacant!0 (x!52387 lt!253568) (index!23461 lt!253568) (index!23461 lt!253568) (select (arr!16852 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!557929 () Bool)

(declare-fun res!349943 () Bool)

(assert (=> b!557929 (=> (not res!349943) (not e!321410))))

(assert (=> b!557929 (= res!349943 (and (= (size!17216 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17216 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17216 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!557930 () Bool)

(assert (=> b!557930 (= e!321415 e!321413)))

(declare-fun res!349941 () Bool)

(assert (=> b!557930 (=> (not res!349941) (not e!321413))))

(declare-fun lt!253569 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35102 (_ BitVec 32)) SeekEntryResult!5308)

(assert (=> b!557930 (= res!349941 (= lt!253568 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!253569 (select (store (arr!16852 a!3118) i!1132 k0!1914) j!142) (array!35103 (store (arr!16852 a!3118) i!1132 k0!1914) (size!17216 a!3118)) mask!3119)))))

(declare-fun lt!253567 () (_ BitVec 32))

(assert (=> b!557930 (= lt!253568 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!253567 (select (arr!16852 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!557930 (= lt!253569 (toIndex!0 (select (store (arr!16852 a!3118) i!1132 k0!1914) j!142) mask!3119))))

(assert (=> b!557930 (= lt!253567 (toIndex!0 (select (arr!16852 a!3118) j!142) mask!3119))))

(assert (= (and start!51094 res!349939) b!557929))

(assert (= (and b!557929 res!349943) b!557926))

(assert (= (and b!557926 res!349940) b!557925))

(assert (= (and b!557925 res!349933) b!557927))

(assert (= (and b!557927 res!349938) b!557921))

(assert (= (and b!557921 res!349936) b!557920))

(assert (= (and b!557920 res!349934) b!557923))

(assert (= (and b!557923 res!349935) b!557930))

(assert (= (and b!557930 res!349941) b!557922))

(assert (= (and b!557922 res!349942) b!557924))

(assert (= (and b!557924 (not res!349937)) b!557928))

(declare-fun m!535871 () Bool)

(assert (=> b!557928 m!535871))

(assert (=> b!557928 m!535871))

(declare-fun m!535873 () Bool)

(assert (=> b!557928 m!535873))

(declare-fun m!535875 () Bool)

(assert (=> b!557925 m!535875))

(assert (=> b!557930 m!535871))

(declare-fun m!535877 () Bool)

(assert (=> b!557930 m!535877))

(assert (=> b!557930 m!535871))

(declare-fun m!535879 () Bool)

(assert (=> b!557930 m!535879))

(assert (=> b!557930 m!535879))

(declare-fun m!535881 () Bool)

(assert (=> b!557930 m!535881))

(declare-fun m!535883 () Bool)

(assert (=> b!557930 m!535883))

(assert (=> b!557930 m!535871))

(declare-fun m!535885 () Bool)

(assert (=> b!557930 m!535885))

(assert (=> b!557930 m!535879))

(declare-fun m!535887 () Bool)

(assert (=> b!557930 m!535887))

(assert (=> b!557922 m!535871))

(assert (=> b!557922 m!535871))

(declare-fun m!535889 () Bool)

(assert (=> b!557922 m!535889))

(declare-fun m!535891 () Bool)

(assert (=> b!557922 m!535891))

(declare-fun m!535893 () Bool)

(assert (=> b!557922 m!535893))

(declare-fun m!535895 () Bool)

(assert (=> b!557923 m!535895))

(declare-fun m!535897 () Bool)

(assert (=> start!51094 m!535897))

(declare-fun m!535899 () Bool)

(assert (=> start!51094 m!535899))

(declare-fun m!535901 () Bool)

(assert (=> b!557921 m!535901))

(declare-fun m!535903 () Bool)

(assert (=> b!557927 m!535903))

(declare-fun m!535905 () Bool)

(assert (=> b!557924 m!535905))

(assert (=> b!557924 m!535871))

(declare-fun m!535907 () Bool)

(assert (=> b!557920 m!535907))

(assert (=> b!557926 m!535871))

(assert (=> b!557926 m!535871))

(declare-fun m!535909 () Bool)

(assert (=> b!557926 m!535909))

(check-sat (not b!557928) (not b!557920) (not start!51094) (not b!557930) (not b!557921) (not b!557926) (not b!557923) (not b!557925) (not b!557922) (not b!557927))
(check-sat)
