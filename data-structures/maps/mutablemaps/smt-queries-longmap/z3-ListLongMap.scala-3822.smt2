; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!52438 () Bool)

(assert start!52438)

(declare-fun b!571958 () Bool)

(declare-fun res!361618 () Bool)

(declare-fun e!328997 () Bool)

(assert (=> b!571958 (=> (not res!361618) (not e!328997))))

(declare-datatypes ((array!35789 0))(
  ( (array!35790 (arr!17179 (Array (_ BitVec 32) (_ BitVec 64))) (size!17543 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35789)

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!35789 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!571958 (= res!361618 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!571959 () Bool)

(declare-fun e!328998 () Bool)

(declare-fun e!328996 () Bool)

(assert (=> b!571959 (= e!328998 e!328996)))

(declare-fun res!361619 () Bool)

(assert (=> b!571959 (=> res!361619 e!328996)))

(declare-datatypes ((SeekEntryResult!5635 0))(
  ( (MissingZero!5635 (index!24767 (_ BitVec 32))) (Found!5635 (index!24768 (_ BitVec 32))) (Intermediate!5635 (undefined!6447 Bool) (index!24769 (_ BitVec 32)) (x!53667 (_ BitVec 32))) (Undefined!5635) (MissingVacant!5635 (index!24770 (_ BitVec 32))) )
))
(declare-fun lt!261006 () SeekEntryResult!5635)

(get-info :version)

(assert (=> b!571959 (= res!361619 (or (undefined!6447 lt!261006) (not ((_ is Intermediate!5635) lt!261006))))))

(declare-fun b!571960 () Bool)

(declare-fun res!361621 () Bool)

(declare-fun e!328999 () Bool)

(assert (=> b!571960 (=> (not res!361621) (not e!328999))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35789 (_ BitVec 32)) Bool)

(assert (=> b!571960 (= res!361621 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!571961 () Bool)

(declare-fun res!361623 () Bool)

(assert (=> b!571961 (=> (not res!361623) (not e!328997))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!571961 (= res!361623 (validKeyInArray!0 k0!1914))))

(declare-fun b!571962 () Bool)

(assert (=> b!571962 (= e!328997 e!328999)))

(declare-fun res!361627 () Bool)

(assert (=> b!571962 (=> (not res!361627) (not e!328999))))

(declare-fun lt!261005 () SeekEntryResult!5635)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!571962 (= res!361627 (or (= lt!261005 (MissingZero!5635 i!1132)) (= lt!261005 (MissingVacant!5635 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35789 (_ BitVec 32)) SeekEntryResult!5635)

(assert (=> b!571962 (= lt!261005 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!571963 () Bool)

(declare-fun e!328994 () Bool)

(assert (=> b!571963 (= e!328996 e!328994)))

(declare-fun res!361622 () Bool)

(assert (=> b!571963 (=> res!361622 e!328994)))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun lt!261008 () (_ BitVec 64))

(assert (=> b!571963 (= res!361622 (or (= lt!261008 (select (arr!17179 a!3118) j!142)) (= lt!261008 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!571963 (= lt!261008 (select (arr!17179 a!3118) (index!24769 lt!261006)))))

(declare-fun b!571964 () Bool)

(declare-fun res!361616 () Bool)

(assert (=> b!571964 (=> (not res!361616) (not e!328997))))

(assert (=> b!571964 (= res!361616 (validKeyInArray!0 (select (arr!17179 a!3118) j!142)))))

(declare-fun b!571965 () Bool)

(declare-fun res!361620 () Bool)

(assert (=> b!571965 (=> (not res!361620) (not e!328999))))

(declare-datatypes ((List!11312 0))(
  ( (Nil!11309) (Cons!11308 (h!12335 (_ BitVec 64)) (t!17548 List!11312)) )
))
(declare-fun arrayNoDuplicates!0 (array!35789 (_ BitVec 32) List!11312) Bool)

(assert (=> b!571965 (= res!361620 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11309))))

(declare-fun b!571966 () Bool)

(declare-fun res!361628 () Bool)

(assert (=> b!571966 (=> (not res!361628) (not e!328997))))

(assert (=> b!571966 (= res!361628 (and (= (size!17543 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17543 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17543 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!571967 () Bool)

(declare-fun e!328995 () Bool)

(assert (=> b!571967 (= e!328995 (not true))))

(assert (=> b!571967 e!328998))

(declare-fun res!361617 () Bool)

(assert (=> b!571967 (=> (not res!361617) (not e!328998))))

(declare-fun lt!261001 () SeekEntryResult!5635)

(assert (=> b!571967 (= res!361617 (= lt!261001 (Found!5635 j!142)))))

(assert (=> b!571967 (= lt!261001 (seekEntryOrOpen!0 (select (arr!17179 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!571967 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17972 0))(
  ( (Unit!17973) )
))
(declare-fun lt!261003 () Unit!17972)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35789 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17972)

(assert (=> b!571967 (= lt!261003 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!571968 () Bool)

(assert (=> b!571968 (= e!328999 e!328995)))

(declare-fun res!361624 () Bool)

(assert (=> b!571968 (=> (not res!361624) (not e!328995))))

(declare-fun lt!261007 () (_ BitVec 32))

(declare-fun lt!261002 () (_ BitVec 64))

(declare-fun lt!261004 () array!35789)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35789 (_ BitVec 32)) SeekEntryResult!5635)

(assert (=> b!571968 (= res!361624 (= lt!261006 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!261007 lt!261002 lt!261004 mask!3119)))))

(declare-fun lt!261000 () (_ BitVec 32))

(assert (=> b!571968 (= lt!261006 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!261000 (select (arr!17179 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!571968 (= lt!261007 (toIndex!0 lt!261002 mask!3119))))

(assert (=> b!571968 (= lt!261002 (select (store (arr!17179 a!3118) i!1132 k0!1914) j!142))))

(assert (=> b!571968 (= lt!261000 (toIndex!0 (select (arr!17179 a!3118) j!142) mask!3119))))

(assert (=> b!571968 (= lt!261004 (array!35790 (store (arr!17179 a!3118) i!1132 k0!1914) (size!17543 a!3118)))))

(declare-fun res!361626 () Bool)

(assert (=> start!52438 (=> (not res!361626) (not e!328997))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52438 (= res!361626 (validMask!0 mask!3119))))

(assert (=> start!52438 e!328997))

(assert (=> start!52438 true))

(declare-fun array_inv!12953 (array!35789) Bool)

(assert (=> start!52438 (array_inv!12953 a!3118)))

(declare-fun e!328993 () Bool)

(declare-fun b!571969 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35789 (_ BitVec 32)) SeekEntryResult!5635)

(assert (=> b!571969 (= e!328993 (= (seekEntryOrOpen!0 lt!261002 lt!261004 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!53667 lt!261006) (index!24769 lt!261006) (index!24769 lt!261006) lt!261002 lt!261004 mask!3119)))))

(declare-fun b!571970 () Bool)

(assert (=> b!571970 (= e!328994 e!328993)))

(declare-fun res!361625 () Bool)

(assert (=> b!571970 (=> (not res!361625) (not e!328993))))

(assert (=> b!571970 (= res!361625 (= lt!261001 (seekKeyOrZeroReturnVacant!0 (x!53667 lt!261006) (index!24769 lt!261006) (index!24769 lt!261006) (select (arr!17179 a!3118) j!142) a!3118 mask!3119)))))

(assert (= (and start!52438 res!361626) b!571966))

(assert (= (and b!571966 res!361628) b!571964))

(assert (= (and b!571964 res!361616) b!571961))

(assert (= (and b!571961 res!361623) b!571958))

(assert (= (and b!571958 res!361618) b!571962))

(assert (= (and b!571962 res!361627) b!571960))

(assert (= (and b!571960 res!361621) b!571965))

(assert (= (and b!571965 res!361620) b!571968))

(assert (= (and b!571968 res!361624) b!571967))

(assert (= (and b!571967 res!361617) b!571959))

(assert (= (and b!571959 (not res!361619)) b!571963))

(assert (= (and b!571963 (not res!361622)) b!571970))

(assert (= (and b!571970 res!361625) b!571969))

(declare-fun m!550935 () Bool)

(assert (=> b!571962 m!550935))

(declare-fun m!550937 () Bool)

(assert (=> b!571965 m!550937))

(declare-fun m!550939 () Bool)

(assert (=> b!571960 m!550939))

(declare-fun m!550941 () Bool)

(assert (=> b!571970 m!550941))

(assert (=> b!571970 m!550941))

(declare-fun m!550943 () Bool)

(assert (=> b!571970 m!550943))

(declare-fun m!550945 () Bool)

(assert (=> b!571958 m!550945))

(assert (=> b!571964 m!550941))

(assert (=> b!571964 m!550941))

(declare-fun m!550947 () Bool)

(assert (=> b!571964 m!550947))

(assert (=> b!571963 m!550941))

(declare-fun m!550949 () Bool)

(assert (=> b!571963 m!550949))

(declare-fun m!550951 () Bool)

(assert (=> b!571961 m!550951))

(assert (=> b!571967 m!550941))

(assert (=> b!571967 m!550941))

(declare-fun m!550953 () Bool)

(assert (=> b!571967 m!550953))

(declare-fun m!550955 () Bool)

(assert (=> b!571967 m!550955))

(declare-fun m!550957 () Bool)

(assert (=> b!571967 m!550957))

(declare-fun m!550959 () Bool)

(assert (=> start!52438 m!550959))

(declare-fun m!550961 () Bool)

(assert (=> start!52438 m!550961))

(assert (=> b!571968 m!550941))

(declare-fun m!550963 () Bool)

(assert (=> b!571968 m!550963))

(assert (=> b!571968 m!550941))

(declare-fun m!550965 () Bool)

(assert (=> b!571968 m!550965))

(declare-fun m!550967 () Bool)

(assert (=> b!571968 m!550967))

(assert (=> b!571968 m!550941))

(declare-fun m!550969 () Bool)

(assert (=> b!571968 m!550969))

(declare-fun m!550971 () Bool)

(assert (=> b!571968 m!550971))

(declare-fun m!550973 () Bool)

(assert (=> b!571968 m!550973))

(declare-fun m!550975 () Bool)

(assert (=> b!571969 m!550975))

(declare-fun m!550977 () Bool)

(assert (=> b!571969 m!550977))

(check-sat (not b!571962) (not b!571958) (not b!571961) (not b!571969) (not b!571967) (not b!571970) (not b!571968) (not b!571965) (not b!571960) (not start!52438) (not b!571964))
(check-sat)
