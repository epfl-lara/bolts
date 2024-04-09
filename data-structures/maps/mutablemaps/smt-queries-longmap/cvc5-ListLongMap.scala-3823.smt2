; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52442 () Bool)

(assert start!52442)

(declare-fun res!361697 () Bool)

(declare-fun e!329045 () Bool)

(assert (=> start!52442 (=> (not res!361697) (not e!329045))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52442 (= res!361697 (validMask!0 mask!3119))))

(assert (=> start!52442 e!329045))

(assert (=> start!52442 true))

(declare-datatypes ((array!35793 0))(
  ( (array!35794 (arr!17181 (Array (_ BitVec 32) (_ BitVec 64))) (size!17545 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35793)

(declare-fun array_inv!12955 (array!35793) Bool)

(assert (=> start!52442 (array_inv!12955 a!3118)))

(declare-fun b!572036 () Bool)

(declare-fun e!329044 () Bool)

(declare-fun e!329046 () Bool)

(assert (=> b!572036 (= e!329044 e!329046)))

(declare-fun res!361700 () Bool)

(assert (=> b!572036 (=> (not res!361700) (not e!329046))))

(declare-fun lt!261056 () (_ BitVec 32))

(declare-fun lt!261059 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!5637 0))(
  ( (MissingZero!5637 (index!24775 (_ BitVec 32))) (Found!5637 (index!24776 (_ BitVec 32))) (Intermediate!5637 (undefined!6449 Bool) (index!24777 (_ BitVec 32)) (x!53677 (_ BitVec 32))) (Undefined!5637) (MissingVacant!5637 (index!24778 (_ BitVec 32))) )
))
(declare-fun lt!261058 () SeekEntryResult!5637)

(declare-fun lt!261054 () array!35793)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35793 (_ BitVec 32)) SeekEntryResult!5637)

(assert (=> b!572036 (= res!361700 (= lt!261058 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!261056 lt!261059 lt!261054 mask!3119)))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun lt!261055 () (_ BitVec 32))

(assert (=> b!572036 (= lt!261058 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!261055 (select (arr!17181 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!572036 (= lt!261056 (toIndex!0 lt!261059 mask!3119))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!572036 (= lt!261059 (select (store (arr!17181 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!572036 (= lt!261055 (toIndex!0 (select (arr!17181 a!3118) j!142) mask!3119))))

(assert (=> b!572036 (= lt!261054 (array!35794 (store (arr!17181 a!3118) i!1132 k!1914) (size!17545 a!3118)))))

(declare-fun b!572037 () Bool)

(declare-fun e!329042 () Bool)

(declare-fun e!329043 () Bool)

(assert (=> b!572037 (= e!329042 e!329043)))

(declare-fun res!361701 () Bool)

(assert (=> b!572037 (=> res!361701 e!329043)))

(declare-fun lt!261062 () (_ BitVec 64))

(assert (=> b!572037 (= res!361701 (or (= lt!261062 (select (arr!17181 a!3118) j!142)) (= lt!261062 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!572037 (= lt!261062 (select (arr!17181 a!3118) (index!24777 lt!261058)))))

(declare-fun b!572038 () Bool)

(declare-fun res!361706 () Bool)

(assert (=> b!572038 (=> (not res!361706) (not e!329044))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35793 (_ BitVec 32)) Bool)

(assert (=> b!572038 (= res!361706 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!572039 () Bool)

(declare-fun e!329040 () Bool)

(assert (=> b!572039 (= e!329040 e!329042)))

(declare-fun res!361694 () Bool)

(assert (=> b!572039 (=> res!361694 e!329042)))

(assert (=> b!572039 (= res!361694 (or (undefined!6449 lt!261058) (not (is-Intermediate!5637 lt!261058))))))

(declare-fun b!572040 () Bool)

(declare-fun res!361695 () Bool)

(assert (=> b!572040 (=> (not res!361695) (not e!329045))))

(declare-fun arrayContainsKey!0 (array!35793 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!572040 (= res!361695 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!572041 () Bool)

(assert (=> b!572041 (= e!329045 e!329044)))

(declare-fun res!361704 () Bool)

(assert (=> b!572041 (=> (not res!361704) (not e!329044))))

(declare-fun lt!261061 () SeekEntryResult!5637)

(assert (=> b!572041 (= res!361704 (or (= lt!261061 (MissingZero!5637 i!1132)) (= lt!261061 (MissingVacant!5637 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35793 (_ BitVec 32)) SeekEntryResult!5637)

(assert (=> b!572041 (= lt!261061 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!572042 () Bool)

(declare-fun res!361702 () Bool)

(assert (=> b!572042 (=> (not res!361702) (not e!329045))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!572042 (= res!361702 (validKeyInArray!0 (select (arr!17181 a!3118) j!142)))))

(declare-fun b!572043 () Bool)

(declare-fun res!361705 () Bool)

(assert (=> b!572043 (=> (not res!361705) (not e!329045))))

(assert (=> b!572043 (= res!361705 (validKeyInArray!0 k!1914))))

(declare-fun e!329047 () Bool)

(declare-fun b!572044 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35793 (_ BitVec 32)) SeekEntryResult!5637)

(assert (=> b!572044 (= e!329047 (= (seekEntryOrOpen!0 lt!261059 lt!261054 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!53677 lt!261058) (index!24777 lt!261058) (index!24777 lt!261058) lt!261059 lt!261054 mask!3119)))))

(declare-fun b!572045 () Bool)

(declare-fun res!361698 () Bool)

(assert (=> b!572045 (=> (not res!361698) (not e!329044))))

(declare-datatypes ((List!11314 0))(
  ( (Nil!11311) (Cons!11310 (h!12337 (_ BitVec 64)) (t!17550 List!11314)) )
))
(declare-fun arrayNoDuplicates!0 (array!35793 (_ BitVec 32) List!11314) Bool)

(assert (=> b!572045 (= res!361698 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11311))))

(declare-fun b!572046 () Bool)

(declare-fun res!361703 () Bool)

(assert (=> b!572046 (=> (not res!361703) (not e!329045))))

(assert (=> b!572046 (= res!361703 (and (= (size!17545 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17545 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17545 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!572047 () Bool)

(assert (=> b!572047 (= e!329043 e!329047)))

(declare-fun res!361699 () Bool)

(assert (=> b!572047 (=> (not res!361699) (not e!329047))))

(declare-fun lt!261057 () SeekEntryResult!5637)

(assert (=> b!572047 (= res!361699 (= lt!261057 (seekKeyOrZeroReturnVacant!0 (x!53677 lt!261058) (index!24777 lt!261058) (index!24777 lt!261058) (select (arr!17181 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!572048 () Bool)

(assert (=> b!572048 (= e!329046 (not true))))

(assert (=> b!572048 e!329040))

(declare-fun res!361696 () Bool)

(assert (=> b!572048 (=> (not res!361696) (not e!329040))))

(assert (=> b!572048 (= res!361696 (= lt!261057 (Found!5637 j!142)))))

(assert (=> b!572048 (= lt!261057 (seekEntryOrOpen!0 (select (arr!17181 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!572048 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17976 0))(
  ( (Unit!17977) )
))
(declare-fun lt!261060 () Unit!17976)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35793 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17976)

(assert (=> b!572048 (= lt!261060 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(assert (= (and start!52442 res!361697) b!572046))

(assert (= (and b!572046 res!361703) b!572042))

(assert (= (and b!572042 res!361702) b!572043))

(assert (= (and b!572043 res!361705) b!572040))

(assert (= (and b!572040 res!361695) b!572041))

(assert (= (and b!572041 res!361704) b!572038))

(assert (= (and b!572038 res!361706) b!572045))

(assert (= (and b!572045 res!361698) b!572036))

(assert (= (and b!572036 res!361700) b!572048))

(assert (= (and b!572048 res!361696) b!572039))

(assert (= (and b!572039 (not res!361694)) b!572037))

(assert (= (and b!572037 (not res!361701)) b!572047))

(assert (= (and b!572047 res!361699) b!572044))

(declare-fun m!551023 () Bool)

(assert (=> b!572041 m!551023))

(declare-fun m!551025 () Bool)

(assert (=> b!572040 m!551025))

(declare-fun m!551027 () Bool)

(assert (=> b!572042 m!551027))

(assert (=> b!572042 m!551027))

(declare-fun m!551029 () Bool)

(assert (=> b!572042 m!551029))

(declare-fun m!551031 () Bool)

(assert (=> b!572043 m!551031))

(assert (=> b!572036 m!551027))

(declare-fun m!551033 () Bool)

(assert (=> b!572036 m!551033))

(assert (=> b!572036 m!551027))

(declare-fun m!551035 () Bool)

(assert (=> b!572036 m!551035))

(declare-fun m!551037 () Bool)

(assert (=> b!572036 m!551037))

(declare-fun m!551039 () Bool)

(assert (=> b!572036 m!551039))

(assert (=> b!572036 m!551027))

(declare-fun m!551041 () Bool)

(assert (=> b!572036 m!551041))

(declare-fun m!551043 () Bool)

(assert (=> b!572036 m!551043))

(assert (=> b!572048 m!551027))

(assert (=> b!572048 m!551027))

(declare-fun m!551045 () Bool)

(assert (=> b!572048 m!551045))

(declare-fun m!551047 () Bool)

(assert (=> b!572048 m!551047))

(declare-fun m!551049 () Bool)

(assert (=> b!572048 m!551049))

(declare-fun m!551051 () Bool)

(assert (=> b!572038 m!551051))

(declare-fun m!551053 () Bool)

(assert (=> start!52442 m!551053))

(declare-fun m!551055 () Bool)

(assert (=> start!52442 m!551055))

(assert (=> b!572037 m!551027))

(declare-fun m!551057 () Bool)

(assert (=> b!572037 m!551057))

(declare-fun m!551059 () Bool)

(assert (=> b!572044 m!551059))

(declare-fun m!551061 () Bool)

(assert (=> b!572044 m!551061))

(assert (=> b!572047 m!551027))

(assert (=> b!572047 m!551027))

(declare-fun m!551063 () Bool)

(assert (=> b!572047 m!551063))

(declare-fun m!551065 () Bool)

(assert (=> b!572045 m!551065))

(push 1)

