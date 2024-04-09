; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52488 () Bool)

(assert start!52488)

(declare-fun b!572933 () Bool)

(declare-fun e!329597 () Bool)

(declare-fun e!329593 () Bool)

(assert (=> b!572933 (= e!329597 e!329593)))

(declare-fun res!362601 () Bool)

(assert (=> b!572933 (=> (not res!362601) (not e!329593))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5660 0))(
  ( (MissingZero!5660 (index!24867 (_ BitVec 32))) (Found!5660 (index!24868 (_ BitVec 32))) (Intermediate!5660 (undefined!6472 Bool) (index!24869 (_ BitVec 32)) (x!53756 (_ BitVec 32))) (Undefined!5660) (MissingVacant!5660 (index!24870 (_ BitVec 32))) )
))
(declare-fun lt!261675 () SeekEntryResult!5660)

(declare-fun lt!261683 () SeekEntryResult!5660)

(declare-datatypes ((array!35839 0))(
  ( (array!35840 (arr!17204 (Array (_ BitVec 32) (_ BitVec 64))) (size!17568 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35839)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35839 (_ BitVec 32)) SeekEntryResult!5660)

(assert (=> b!572933 (= res!362601 (= lt!261675 (seekKeyOrZeroReturnVacant!0 (x!53756 lt!261683) (index!24869 lt!261683) (index!24869 lt!261683) (select (arr!17204 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!572934 () Bool)

(declare-fun res!362598 () Bool)

(declare-fun e!329599 () Bool)

(assert (=> b!572934 (=> (not res!362598) (not e!329599))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!35839 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!572934 (= res!362598 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!572935 () Bool)

(declare-fun res!362596 () Bool)

(assert (=> b!572935 (=> (not res!362596) (not e!329599))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!572935 (= res!362596 (validKeyInArray!0 k!1914))))

(declare-fun b!572937 () Bool)

(declare-fun res!362594 () Bool)

(assert (=> b!572937 (=> (not res!362594) (not e!329599))))

(assert (=> b!572937 (= res!362594 (validKeyInArray!0 (select (arr!17204 a!3118) j!142)))))

(declare-fun lt!261679 () (_ BitVec 64))

(declare-fun b!572938 () Bool)

(declare-fun lt!261678 () array!35839)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35839 (_ BitVec 32)) SeekEntryResult!5660)

(assert (=> b!572938 (= e!329593 (= (seekEntryOrOpen!0 lt!261679 lt!261678 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!53756 lt!261683) (index!24869 lt!261683) (index!24869 lt!261683) lt!261679 lt!261678 mask!3119)))))

(declare-fun b!572939 () Bool)

(declare-fun e!329598 () Bool)

(assert (=> b!572939 (= e!329598 e!329597)))

(declare-fun res!362592 () Bool)

(assert (=> b!572939 (=> res!362592 e!329597)))

(declare-fun lt!261676 () (_ BitVec 64))

(assert (=> b!572939 (= res!362592 (or (= lt!261676 (select (arr!17204 a!3118) j!142)) (= lt!261676 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!572939 (= lt!261676 (select (arr!17204 a!3118) (index!24869 lt!261683)))))

(declare-fun e!329595 () Bool)

(declare-fun b!572940 () Bool)

(assert (=> b!572940 (= e!329595 (not (or (undefined!6472 lt!261683) (not (is-Intermediate!5660 lt!261683)) (let ((bdg!17961 (select (arr!17204 a!3118) (index!24869 lt!261683)))) (or (= bdg!17961 (select (arr!17204 a!3118) j!142)) (= bdg!17961 #b0000000000000000000000000000000000000000000000000000000000000000) (and (bvsge (index!24869 lt!261683) #b00000000000000000000000000000000) (bvslt (index!24869 lt!261683) (bvadd #b00000000000000000000000000000001 mask!3119))))))))))

(declare-fun e!329596 () Bool)

(assert (=> b!572940 e!329596))

(declare-fun res!362593 () Bool)

(assert (=> b!572940 (=> (not res!362593) (not e!329596))))

(assert (=> b!572940 (= res!362593 (= lt!261675 (Found!5660 j!142)))))

(assert (=> b!572940 (= lt!261675 (seekEntryOrOpen!0 (select (arr!17204 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35839 (_ BitVec 32)) Bool)

(assert (=> b!572940 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!18022 0))(
  ( (Unit!18023) )
))
(declare-fun lt!261682 () Unit!18022)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35839 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18022)

(assert (=> b!572940 (= lt!261682 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!572941 () Bool)

(declare-fun e!329594 () Bool)

(assert (=> b!572941 (= e!329594 e!329595)))

(declare-fun res!362595 () Bool)

(assert (=> b!572941 (=> (not res!362595) (not e!329595))))

(declare-fun lt!261677 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35839 (_ BitVec 32)) SeekEntryResult!5660)

(assert (=> b!572941 (= res!362595 (= lt!261683 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!261677 lt!261679 lt!261678 mask!3119)))))

(declare-fun lt!261681 () (_ BitVec 32))

(assert (=> b!572941 (= lt!261683 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!261681 (select (arr!17204 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!572941 (= lt!261677 (toIndex!0 lt!261679 mask!3119))))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!572941 (= lt!261679 (select (store (arr!17204 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!572941 (= lt!261681 (toIndex!0 (select (arr!17204 a!3118) j!142) mask!3119))))

(assert (=> b!572941 (= lt!261678 (array!35840 (store (arr!17204 a!3118) i!1132 k!1914) (size!17568 a!3118)))))

(declare-fun b!572942 () Bool)

(declare-fun res!362602 () Bool)

(assert (=> b!572942 (=> (not res!362602) (not e!329599))))

(assert (=> b!572942 (= res!362602 (and (= (size!17568 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17568 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17568 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!572943 () Bool)

(assert (=> b!572943 (= e!329596 e!329598)))

(declare-fun res!362599 () Bool)

(assert (=> b!572943 (=> res!362599 e!329598)))

(assert (=> b!572943 (= res!362599 (or (undefined!6472 lt!261683) (not (is-Intermediate!5660 lt!261683))))))

(declare-fun res!362603 () Bool)

(assert (=> start!52488 (=> (not res!362603) (not e!329599))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52488 (= res!362603 (validMask!0 mask!3119))))

(assert (=> start!52488 e!329599))

(assert (=> start!52488 true))

(declare-fun array_inv!12978 (array!35839) Bool)

(assert (=> start!52488 (array_inv!12978 a!3118)))

(declare-fun b!572936 () Bool)

(declare-fun res!362591 () Bool)

(assert (=> b!572936 (=> (not res!362591) (not e!329594))))

(assert (=> b!572936 (= res!362591 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!572944 () Bool)

(declare-fun res!362597 () Bool)

(assert (=> b!572944 (=> (not res!362597) (not e!329594))))

(declare-datatypes ((List!11337 0))(
  ( (Nil!11334) (Cons!11333 (h!12360 (_ BitVec 64)) (t!17573 List!11337)) )
))
(declare-fun arrayNoDuplicates!0 (array!35839 (_ BitVec 32) List!11337) Bool)

(assert (=> b!572944 (= res!362597 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11334))))

(declare-fun b!572945 () Bool)

(assert (=> b!572945 (= e!329599 e!329594)))

(declare-fun res!362600 () Bool)

(assert (=> b!572945 (=> (not res!362600) (not e!329594))))

(declare-fun lt!261680 () SeekEntryResult!5660)

(assert (=> b!572945 (= res!362600 (or (= lt!261680 (MissingZero!5660 i!1132)) (= lt!261680 (MissingVacant!5660 i!1132))))))

(assert (=> b!572945 (= lt!261680 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(assert (= (and start!52488 res!362603) b!572942))

(assert (= (and b!572942 res!362602) b!572937))

(assert (= (and b!572937 res!362594) b!572935))

(assert (= (and b!572935 res!362596) b!572934))

(assert (= (and b!572934 res!362598) b!572945))

(assert (= (and b!572945 res!362600) b!572936))

(assert (= (and b!572936 res!362591) b!572944))

(assert (= (and b!572944 res!362597) b!572941))

(assert (= (and b!572941 res!362595) b!572940))

(assert (= (and b!572940 res!362593) b!572943))

(assert (= (and b!572943 (not res!362599)) b!572939))

(assert (= (and b!572939 (not res!362592)) b!572933))

(assert (= (and b!572933 res!362601) b!572938))

(declare-fun m!552035 () Bool)

(assert (=> b!572933 m!552035))

(assert (=> b!572933 m!552035))

(declare-fun m!552037 () Bool)

(assert (=> b!572933 m!552037))

(assert (=> b!572937 m!552035))

(assert (=> b!572937 m!552035))

(declare-fun m!552039 () Bool)

(assert (=> b!572937 m!552039))

(declare-fun m!552041 () Bool)

(assert (=> b!572938 m!552041))

(declare-fun m!552043 () Bool)

(assert (=> b!572938 m!552043))

(declare-fun m!552045 () Bool)

(assert (=> start!52488 m!552045))

(declare-fun m!552047 () Bool)

(assert (=> start!52488 m!552047))

(declare-fun m!552049 () Bool)

(assert (=> b!572944 m!552049))

(assert (=> b!572940 m!552035))

(declare-fun m!552051 () Bool)

(assert (=> b!572940 m!552051))

(declare-fun m!552053 () Bool)

(assert (=> b!572940 m!552053))

(declare-fun m!552055 () Bool)

(assert (=> b!572940 m!552055))

(assert (=> b!572940 m!552035))

(declare-fun m!552057 () Bool)

(assert (=> b!572940 m!552057))

(declare-fun m!552059 () Bool)

(assert (=> b!572945 m!552059))

(declare-fun m!552061 () Bool)

(assert (=> b!572935 m!552061))

(declare-fun m!552063 () Bool)

(assert (=> b!572934 m!552063))

(assert (=> b!572939 m!552035))

(assert (=> b!572939 m!552053))

(declare-fun m!552065 () Bool)

(assert (=> b!572936 m!552065))

(assert (=> b!572941 m!552035))

(declare-fun m!552067 () Bool)

(assert (=> b!572941 m!552067))

(declare-fun m!552069 () Bool)

(assert (=> b!572941 m!552069))

(declare-fun m!552071 () Bool)

(assert (=> b!572941 m!552071))

(declare-fun m!552073 () Bool)

(assert (=> b!572941 m!552073))

(assert (=> b!572941 m!552035))

(declare-fun m!552075 () Bool)

(assert (=> b!572941 m!552075))

(assert (=> b!572941 m!552035))

(declare-fun m!552077 () Bool)

(assert (=> b!572941 m!552077))

(push 1)

(assert (not start!52488))

(assert (not b!572936))

(assert (not b!572940))

(assert (not b!572941))

(assert (not b!572934))

(assert (not b!572938))

(assert (not b!572937))

(assert (not b!572944))

(assert (not b!572945))

(assert (not b!572933))

(assert (not b!572935))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!84751 () Bool)

(assert (=> d!84751 (= (validMask!0 mask!3119) (and (or (= mask!3119 #b00000000000000000000000000000111) (= mask!3119 #b00000000000000000000000000001111) (= mask!3119 #b00000000000000000000000000011111) (= mask!3119 #b00000000000000000000000000111111) (= mask!3119 #b00000000000000000000000001111111) (= mask!3119 #b00000000000000000000000011111111) (= mask!3119 #b00000000000000000000000111111111) (= mask!3119 #b00000000000000000000001111111111) (= mask!3119 #b00000000000000000000011111111111) (= mask!3119 #b00000000000000000000111111111111) (= mask!3119 #b00000000000000000001111111111111) (= mask!3119 #b00000000000000000011111111111111) (= mask!3119 #b00000000000000000111111111111111) (= mask!3119 #b00000000000000001111111111111111) (= mask!3119 #b00000000000000011111111111111111) (= mask!3119 #b00000000000000111111111111111111) (= mask!3119 #b00000000000001111111111111111111) (= mask!3119 #b00000000000011111111111111111111) (= mask!3119 #b00000000000111111111111111111111) (= mask!3119 #b00000000001111111111111111111111) (= mask!3119 #b00000000011111111111111111111111) (= mask!3119 #b00000000111111111111111111111111) (= mask!3119 #b00000001111111111111111111111111) (= mask!3119 #b00000011111111111111111111111111) (= mask!3119 #b00000111111111111111111111111111) (= mask!3119 #b00001111111111111111111111111111) (= mask!3119 #b00011111111111111111111111111111) (= mask!3119 #b00111111111111111111111111111111)) (bvsle mask!3119 #b00111111111111111111111111111111)))))

(assert (=> start!52488 d!84751))

(declare-fun d!84757 () Bool)

(assert (=> d!84757 (= (array_inv!12978 a!3118) (bvsge (size!17568 a!3118) #b00000000000000000000000000000000))))

(assert (=> start!52488 d!84757))

(declare-fun b!573083 () Bool)

(declare-fun e!329689 () SeekEntryResult!5660)

(assert (=> b!573083 (= e!329689 (Intermediate!5660 false lt!261677 #b00000000000000000000000000000000))))

(declare-fun b!573084 () Bool)

(declare-fun lt!261736 () SeekEntryResult!5660)

(assert (=> b!573084 (and (bvsge (index!24869 lt!261736) #b00000000000000000000000000000000) (bvslt (index!24869 lt!261736) (size!17568 lt!261678)))))

(declare-fun res!362669 () Bool)

(assert (=> b!573084 (= res!362669 (= (select (arr!17204 lt!261678) (index!24869 lt!261736)) lt!261679))))

(declare-fun e!329690 () Bool)

(assert (=> b!573084 (=> res!362669 e!329690)))

(declare-fun e!329693 () Bool)

(assert (=> b!573084 (= e!329693 e!329690)))

(declare-fun b!573085 () Bool)

(declare-fun e!329691 () SeekEntryResult!5660)

(assert (=> b!573085 (= e!329691 (Intermediate!5660 true lt!261677 #b00000000000000000000000000000000))))

(declare-fun d!84759 () Bool)

(declare-fun e!329692 () Bool)

(assert (=> d!84759 e!329692))

(declare-fun c!65569 () Bool)

(assert (=> d!84759 (= c!65569 (and (is-Intermediate!5660 lt!261736) (undefined!6472 lt!261736)))))

(assert (=> d!84759 (= lt!261736 e!329691)))

(declare-fun c!65568 () Bool)

(assert (=> d!84759 (= c!65568 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!261735 () (_ BitVec 64))

(assert (=> d!84759 (= lt!261735 (select (arr!17204 lt!261678) lt!261677))))

(assert (=> d!84759 (validMask!0 mask!3119)))

(assert (=> d!84759 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!261677 lt!261679 lt!261678 mask!3119) lt!261736)))

(declare-fun b!573086 () Bool)

(assert (=> b!573086 (and (bvsge (index!24869 lt!261736) #b00000000000000000000000000000000) (bvslt (index!24869 lt!261736) (size!17568 lt!261678)))))

(declare-fun res!362667 () Bool)

(assert (=> b!573086 (= res!362667 (= (select (arr!17204 lt!261678) (index!24869 lt!261736)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!573086 (=> res!362667 e!329690)))

(declare-fun b!573087 () Bool)

(assert (=> b!573087 (= e!329692 e!329693)))

(declare-fun res!362668 () Bool)

(assert (=> b!573087 (= res!362668 (and (is-Intermediate!5660 lt!261736) (not (undefined!6472 lt!261736)) (bvslt (x!53756 lt!261736) #b01111111111111111111111111111110) (bvsge (x!53756 lt!261736) #b00000000000000000000000000000000) (bvsge (x!53756 lt!261736) #b00000000000000000000000000000000)))))

(assert (=> b!573087 (=> (not res!362668) (not e!329693))))

(declare-fun b!573088 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!573088 (= e!329689 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!261677 #b00000000000000000000000000000000 mask!3119) lt!261679 lt!261678 mask!3119))))

(declare-fun b!573089 () Bool)

(assert (=> b!573089 (= e!329692 (bvsge (x!53756 lt!261736) #b01111111111111111111111111111110))))

(declare-fun b!573090 () Bool)

(assert (=> b!573090 (= e!329691 e!329689)))

(declare-fun c!65567 () Bool)

(assert (=> b!573090 (= c!65567 (or (= lt!261735 lt!261679) (= (bvadd lt!261735 lt!261735) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!573091 () Bool)

(assert (=> b!573091 (and (bvsge (index!24869 lt!261736) #b00000000000000000000000000000000) (bvslt (index!24869 lt!261736) (size!17568 lt!261678)))))

(assert (=> b!573091 (= e!329690 (= (select (arr!17204 lt!261678) (index!24869 lt!261736)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!84759 c!65568) b!573085))

(assert (= (and d!84759 (not c!65568)) b!573090))

(assert (= (and b!573090 c!65567) b!573083))

(assert (= (and b!573090 (not c!65567)) b!573088))

(assert (= (and d!84759 c!65569) b!573089))

(assert (= (and d!84759 (not c!65569)) b!573087))

(assert (= (and b!573087 res!362668) b!573084))

(assert (= (and b!573084 (not res!362669)) b!573086))

(assert (= (and b!573086 (not res!362667)) b!573091))

(declare-fun m!552133 () Bool)

(assert (=> b!573086 m!552133))

(assert (=> b!573091 m!552133))

(declare-fun m!552135 () Bool)

(assert (=> b!573088 m!552135))

(assert (=> b!573088 m!552135))

(declare-fun m!552137 () Bool)

(assert (=> b!573088 m!552137))

(declare-fun m!552139 () Bool)

(assert (=> d!84759 m!552139))

(assert (=> d!84759 m!552045))

(assert (=> b!573084 m!552133))

(assert (=> b!572941 d!84759))

(declare-fun b!573096 () Bool)

(declare-fun e!329697 () SeekEntryResult!5660)

(assert (=> b!573096 (= e!329697 (Intermediate!5660 false lt!261681 #b00000000000000000000000000000000))))

(declare-fun b!573097 () Bool)

(declare-fun lt!261741 () SeekEntryResult!5660)

(assert (=> b!573097 (and (bvsge (index!24869 lt!261741) #b00000000000000000000000000000000) (bvslt (index!24869 lt!261741) (size!17568 a!3118)))))

(declare-fun res!362674 () Bool)

(assert (=> b!573097 (= res!362674 (= (select (arr!17204 a!3118) (index!24869 lt!261741)) (select (arr!17204 a!3118) j!142)))))

(declare-fun e!329698 () Bool)

(assert (=> b!573097 (=> res!362674 e!329698)))

(declare-fun e!329701 () Bool)

(assert (=> b!573097 (= e!329701 e!329698)))

(declare-fun b!573098 () Bool)

(declare-fun e!329699 () SeekEntryResult!5660)

(assert (=> b!573098 (= e!329699 (Intermediate!5660 true lt!261681 #b00000000000000000000000000000000))))

(declare-fun d!84779 () Bool)

(declare-fun e!329700 () Bool)

(assert (=> d!84779 e!329700))

(declare-fun c!65573 () Bool)

(assert (=> d!84779 (= c!65573 (and (is-Intermediate!5660 lt!261741) (undefined!6472 lt!261741)))))

(assert (=> d!84779 (= lt!261741 e!329699)))

(declare-fun c!65572 () Bool)

(assert (=> d!84779 (= c!65572 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!261740 () (_ BitVec 64))

(assert (=> d!84779 (= lt!261740 (select (arr!17204 a!3118) lt!261681))))

(assert (=> d!84779 (validMask!0 mask!3119)))

(assert (=> d!84779 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!261681 (select (arr!17204 a!3118) j!142) a!3118 mask!3119) lt!261741)))

(declare-fun b!573099 () Bool)

(assert (=> b!573099 (and (bvsge (index!24869 lt!261741) #b00000000000000000000000000000000) (bvslt (index!24869 lt!261741) (size!17568 a!3118)))))

(declare-fun res!362672 () Bool)

(assert (=> b!573099 (= res!362672 (= (select (arr!17204 a!3118) (index!24869 lt!261741)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!573099 (=> res!362672 e!329698)))

(declare-fun b!573100 () Bool)

(assert (=> b!573100 (= e!329700 e!329701)))

(declare-fun res!362673 () Bool)

(assert (=> b!573100 (= res!362673 (and (is-Intermediate!5660 lt!261741) (not (undefined!6472 lt!261741)) (bvslt (x!53756 lt!261741) #b01111111111111111111111111111110) (bvsge (x!53756 lt!261741) #b00000000000000000000000000000000) (bvsge (x!53756 lt!261741) #b00000000000000000000000000000000)))))

(assert (=> b!573100 (=> (not res!362673) (not e!329701))))

(declare-fun b!573101 () Bool)

(assert (=> b!573101 (= e!329697 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!261681 #b00000000000000000000000000000000 mask!3119) (select (arr!17204 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!573102 () Bool)

(assert (=> b!573102 (= e!329700 (bvsge (x!53756 lt!261741) #b01111111111111111111111111111110))))

(declare-fun b!573103 () Bool)

(assert (=> b!573103 (= e!329699 e!329697)))

(declare-fun c!65571 () Bool)

(assert (=> b!573103 (= c!65571 (or (= lt!261740 (select (arr!17204 a!3118) j!142)) (= (bvadd lt!261740 lt!261740) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!573104 () Bool)

(assert (=> b!573104 (and (bvsge (index!24869 lt!261741) #b00000000000000000000000000000000) (bvslt (index!24869 lt!261741) (size!17568 a!3118)))))

(assert (=> b!573104 (= e!329698 (= (select (arr!17204 a!3118) (index!24869 lt!261741)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!84779 c!65572) b!573098))

(assert (= (and d!84779 (not c!65572)) b!573103))

(assert (= (and b!573103 c!65571) b!573096))

(assert (= (and b!573103 (not c!65571)) b!573101))

(assert (= (and d!84779 c!65573) b!573102))

(assert (= (and d!84779 (not c!65573)) b!573100))

(assert (= (and b!573100 res!362673) b!573097))

(assert (= (and b!573097 (not res!362674)) b!573099))

(assert (= (and b!573099 (not res!362672)) b!573104))

(declare-fun m!552151 () Bool)

(assert (=> b!573099 m!552151))

(assert (=> b!573104 m!552151))

(declare-fun m!552153 () Bool)

(assert (=> b!573101 m!552153))

(assert (=> b!573101 m!552153))

(assert (=> b!573101 m!552035))

(declare-fun m!552155 () Bool)

(assert (=> b!573101 m!552155))

(declare-fun m!552157 () Bool)

(assert (=> d!84779 m!552157))

(assert (=> d!84779 m!552045))

(assert (=> b!573097 m!552151))

(assert (=> b!572941 d!84779))

(declare-fun d!84783 () Bool)

(declare-fun lt!261747 () (_ BitVec 32))

(declare-fun lt!261746 () (_ BitVec 32))

(assert (=> d!84783 (= lt!261747 (bvmul (bvxor lt!261746 (bvlshr lt!261746 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!84783 (= lt!261746 ((_ extract 31 0) (bvand (bvxor lt!261679 (bvlshr lt!261679 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!84783 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!362675 (let ((h!12363 ((_ extract 31 0) (bvand (bvxor lt!261679 (bvlshr lt!261679 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!53762 (bvmul (bvxor h!12363 (bvlshr h!12363 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!53762 (bvlshr x!53762 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!362675 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!362675 #b00000000000000000000000000000000))))))

(assert (=> d!84783 (= (toIndex!0 lt!261679 mask!3119) (bvand (bvxor lt!261747 (bvlshr lt!261747 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!572941 d!84783))

(declare-fun d!84785 () Bool)

(declare-fun lt!261749 () (_ BitVec 32))

(declare-fun lt!261748 () (_ BitVec 32))

(assert (=> d!84785 (= lt!261749 (bvmul (bvxor lt!261748 (bvlshr lt!261748 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!84785 (= lt!261748 ((_ extract 31 0) (bvand (bvxor (select (arr!17204 a!3118) j!142) (bvlshr (select (arr!17204 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!84785 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!362675 (let ((h!12363 ((_ extract 31 0) (bvand (bvxor (select (arr!17204 a!3118) j!142) (bvlshr (select (arr!17204 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!53762 (bvmul (bvxor h!12363 (bvlshr h!12363 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!53762 (bvlshr x!53762 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!362675 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!362675 #b00000000000000000000000000000000))))))

(assert (=> d!84785 (= (toIndex!0 (select (arr!17204 a!3118) j!142) mask!3119) (bvand (bvxor lt!261749 (bvlshr lt!261749 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!572941 d!84785))

(declare-fun b!573131 () Bool)

(declare-fun e!329717 () Bool)

(declare-fun call!32633 () Bool)

(assert (=> b!573131 (= e!329717 call!32633)))

(declare-fun bm!32630 () Bool)

(assert (=> bm!32630 (= call!32633 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun b!573132 () Bool)

(declare-fun e!329719 () Bool)

(assert (=> b!573132 (= e!329719 call!32633)))

(declare-fun b!573133 () Bool)

(declare-fun e!329718 () Bool)

(assert (=> b!573133 (= e!329718 e!329719)))

(declare-fun c!65585 () Bool)

(assert (=> b!573133 (= c!65585 (validKeyInArray!0 (select (arr!17204 a!3118) #b00000000000000000000000000000000)))))

(declare-fun d!84787 () Bool)

(declare-fun res!362680 () Bool)

(assert (=> d!84787 (=> res!362680 e!329718)))

(assert (=> d!84787 (= res!362680 (bvsge #b00000000000000000000000000000000 (size!17568 a!3118)))))

(assert (=> d!84787 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119) e!329718)))

(declare-fun b!573134 () Bool)

(assert (=> b!573134 (= e!329719 e!329717)))

(declare-fun lt!261767 () (_ BitVec 64))

(assert (=> b!573134 (= lt!261767 (select (arr!17204 a!3118) #b00000000000000000000000000000000))))

(declare-fun lt!261766 () Unit!18022)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!35839 (_ BitVec 64) (_ BitVec 32)) Unit!18022)

(assert (=> b!573134 (= lt!261766 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!261767 #b00000000000000000000000000000000))))

(assert (=> b!573134 (arrayContainsKey!0 a!3118 lt!261767 #b00000000000000000000000000000000)))

(declare-fun lt!261765 () Unit!18022)

(assert (=> b!573134 (= lt!261765 lt!261766)))

(declare-fun res!362681 () Bool)

(assert (=> b!573134 (= res!362681 (= (seekEntryOrOpen!0 (select (arr!17204 a!3118) #b00000000000000000000000000000000) a!3118 mask!3119) (Found!5660 #b00000000000000000000000000000000)))))

(assert (=> b!573134 (=> (not res!362681) (not e!329717))))

(assert (= (and d!84787 (not res!362680)) b!573133))

(assert (= (and b!573133 c!65585) b!573134))

(assert (= (and b!573133 (not c!65585)) b!573132))

(assert (= (and b!573134 res!362681) b!573131))

(assert (= (or b!573131 b!573132) bm!32630))

(declare-fun m!552171 () Bool)

(assert (=> bm!32630 m!552171))

(declare-fun m!552173 () Bool)

(assert (=> b!573133 m!552173))

(assert (=> b!573133 m!552173))

(declare-fun m!552175 () Bool)

(assert (=> b!573133 m!552175))

(assert (=> b!573134 m!552173))

(declare-fun m!552177 () Bool)

(assert (=> b!573134 m!552177))

(declare-fun m!552179 () Bool)

(assert (=> b!573134 m!552179))

(assert (=> b!573134 m!552173))

(declare-fun m!552181 () Bool)

(assert (=> b!573134 m!552181))

(assert (=> b!572936 d!84787))

(declare-fun d!84797 () Bool)

(assert (=> d!84797 (= (validKeyInArray!0 k!1914) (and (not (= k!1914 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1914 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!572935 d!84797))

(declare-fun lt!261813 () SeekEntryResult!5660)

(declare-fun b!573215 () Bool)

(declare-fun e!329763 () SeekEntryResult!5660)

(assert (=> b!573215 (= e!329763 (seekKeyOrZeroReturnVacant!0 (x!53756 lt!261813) (index!24869 lt!261813) (index!24869 lt!261813) k!1914 a!3118 mask!3119))))

(declare-fun b!573216 () Bool)

(declare-fun e!329764 () SeekEntryResult!5660)

(assert (=> b!573216 (= e!329764 Undefined!5660)))

(declare-fun b!573217 () Bool)

(declare-fun c!65624 () Bool)

(declare-fun lt!261814 () (_ BitVec 64))

(assert (=> b!573217 (= c!65624 (= lt!261814 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!329762 () SeekEntryResult!5660)

(assert (=> b!573217 (= e!329762 e!329763)))

(declare-fun b!573218 () Bool)

(assert (=> b!573218 (= e!329763 (MissingZero!5660 (index!24869 lt!261813)))))

(declare-fun d!84799 () Bool)

(declare-fun lt!261812 () SeekEntryResult!5660)

(assert (=> d!84799 (and (or (is-Undefined!5660 lt!261812) (not (is-Found!5660 lt!261812)) (and (bvsge (index!24868 lt!261812) #b00000000000000000000000000000000) (bvslt (index!24868 lt!261812) (size!17568 a!3118)))) (or (is-Undefined!5660 lt!261812) (is-Found!5660 lt!261812) (not (is-MissingZero!5660 lt!261812)) (and (bvsge (index!24867 lt!261812) #b00000000000000000000000000000000) (bvslt (index!24867 lt!261812) (size!17568 a!3118)))) (or (is-Undefined!5660 lt!261812) (is-Found!5660 lt!261812) (is-MissingZero!5660 lt!261812) (not (is-MissingVacant!5660 lt!261812)) (and (bvsge (index!24870 lt!261812) #b00000000000000000000000000000000) (bvslt (index!24870 lt!261812) (size!17568 a!3118)))) (or (is-Undefined!5660 lt!261812) (ite (is-Found!5660 lt!261812) (= (select (arr!17204 a!3118) (index!24868 lt!261812)) k!1914) (ite (is-MissingZero!5660 lt!261812) (= (select (arr!17204 a!3118) (index!24867 lt!261812)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5660 lt!261812) (= (select (arr!17204 a!3118) (index!24870 lt!261812)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!84799 (= lt!261812 e!329764)))

(declare-fun c!65626 () Bool)

(assert (=> d!84799 (= c!65626 (and (is-Intermediate!5660 lt!261813) (undefined!6472 lt!261813)))))

(assert (=> d!84799 (= lt!261813 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1914 mask!3119) k!1914 a!3118 mask!3119))))

(assert (=> d!84799 (validMask!0 mask!3119)))

(assert (=> d!84799 (= (seekEntryOrOpen!0 k!1914 a!3118 mask!3119) lt!261812)))

(declare-fun b!573219 () Bool)

(assert (=> b!573219 (= e!329762 (Found!5660 (index!24869 lt!261813)))))

(declare-fun b!573220 () Bool)

(assert (=> b!573220 (= e!329764 e!329762)))

(assert (=> b!573220 (= lt!261814 (select (arr!17204 a!3118) (index!24869 lt!261813)))))

(declare-fun c!65625 () Bool)

(assert (=> b!573220 (= c!65625 (= lt!261814 k!1914))))

(assert (= (and d!84799 c!65626) b!573216))

(assert (= (and d!84799 (not c!65626)) b!573220))

(assert (= (and b!573220 c!65625) b!573219))

(assert (= (and b!573220 (not c!65625)) b!573217))

(assert (= (and b!573217 c!65624) b!573218))

(assert (= (and b!573217 (not c!65624)) b!573215))

(declare-fun m!552267 () Bool)

(assert (=> b!573215 m!552267))

(declare-fun m!552269 () Bool)

(assert (=> d!84799 m!552269))

(declare-fun m!552271 () Bool)

(assert (=> d!84799 m!552271))

(assert (=> d!84799 m!552045))

(declare-fun m!552273 () Bool)

(assert (=> d!84799 m!552273))

(declare-fun m!552275 () Bool)

(assert (=> d!84799 m!552275))

(declare-fun m!552277 () Bool)

(assert (=> d!84799 m!552277))

(assert (=> d!84799 m!552275))

(declare-fun m!552279 () Bool)

(assert (=> b!573220 m!552279))

(assert (=> b!572945 d!84799))

(declare-fun e!329766 () SeekEntryResult!5660)

(declare-fun lt!261816 () SeekEntryResult!5660)

(declare-fun b!573221 () Bool)

(assert (=> b!573221 (= e!329766 (seekKeyOrZeroReturnVacant!0 (x!53756 lt!261816) (index!24869 lt!261816) (index!24869 lt!261816) (select (arr!17204 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!573222 () Bool)

(declare-fun e!329767 () SeekEntryResult!5660)

(assert (=> b!573222 (= e!329767 Undefined!5660)))

(declare-fun b!573223 () Bool)

(declare-fun c!65627 () Bool)

(declare-fun lt!261817 () (_ BitVec 64))

(assert (=> b!573223 (= c!65627 (= lt!261817 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!329765 () SeekEntryResult!5660)

(assert (=> b!573223 (= e!329765 e!329766)))

(declare-fun b!573224 () Bool)

(assert (=> b!573224 (= e!329766 (MissingZero!5660 (index!24869 lt!261816)))))

(declare-fun d!84819 () Bool)

(declare-fun lt!261815 () SeekEntryResult!5660)

(assert (=> d!84819 (and (or (is-Undefined!5660 lt!261815) (not (is-Found!5660 lt!261815)) (and (bvsge (index!24868 lt!261815) #b00000000000000000000000000000000) (bvslt (index!24868 lt!261815) (size!17568 a!3118)))) (or (is-Undefined!5660 lt!261815) (is-Found!5660 lt!261815) (not (is-MissingZero!5660 lt!261815)) (and (bvsge (index!24867 lt!261815) #b00000000000000000000000000000000) (bvslt (index!24867 lt!261815) (size!17568 a!3118)))) (or (is-Undefined!5660 lt!261815) (is-Found!5660 lt!261815) (is-MissingZero!5660 lt!261815) (not (is-MissingVacant!5660 lt!261815)) (and (bvsge (index!24870 lt!261815) #b00000000000000000000000000000000) (bvslt (index!24870 lt!261815) (size!17568 a!3118)))) (or (is-Undefined!5660 lt!261815) (ite (is-Found!5660 lt!261815) (= (select (arr!17204 a!3118) (index!24868 lt!261815)) (select (arr!17204 a!3118) j!142)) (ite (is-MissingZero!5660 lt!261815) (= (select (arr!17204 a!3118) (index!24867 lt!261815)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5660 lt!261815) (= (select (arr!17204 a!3118) (index!24870 lt!261815)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!84819 (= lt!261815 e!329767)))

(declare-fun c!65629 () Bool)

(assert (=> d!84819 (= c!65629 (and (is-Intermediate!5660 lt!261816) (undefined!6472 lt!261816)))))

(assert (=> d!84819 (= lt!261816 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17204 a!3118) j!142) mask!3119) (select (arr!17204 a!3118) j!142) a!3118 mask!3119))))

(assert (=> d!84819 (validMask!0 mask!3119)))

(assert (=> d!84819 (= (seekEntryOrOpen!0 (select (arr!17204 a!3118) j!142) a!3118 mask!3119) lt!261815)))

(declare-fun b!573225 () Bool)

(assert (=> b!573225 (= e!329765 (Found!5660 (index!24869 lt!261816)))))

(declare-fun b!573226 () Bool)

(assert (=> b!573226 (= e!329767 e!329765)))

(assert (=> b!573226 (= lt!261817 (select (arr!17204 a!3118) (index!24869 lt!261816)))))

(declare-fun c!65628 () Bool)

(assert (=> b!573226 (= c!65628 (= lt!261817 (select (arr!17204 a!3118) j!142)))))

(assert (= (and d!84819 c!65629) b!573222))

(assert (= (and d!84819 (not c!65629)) b!573226))

(assert (= (and b!573226 c!65628) b!573225))

(assert (= (and b!573226 (not c!65628)) b!573223))

(assert (= (and b!573223 c!65627) b!573224))

(assert (= (and b!573223 (not c!65627)) b!573221))

(assert (=> b!573221 m!552035))

(declare-fun m!552281 () Bool)

(assert (=> b!573221 m!552281))

(declare-fun m!552283 () Bool)

(assert (=> d!84819 m!552283))

(declare-fun m!552285 () Bool)

(assert (=> d!84819 m!552285))

(assert (=> d!84819 m!552045))

(declare-fun m!552287 () Bool)

(assert (=> d!84819 m!552287))

(assert (=> d!84819 m!552075))

(assert (=> d!84819 m!552035))

(declare-fun m!552289 () Bool)

(assert (=> d!84819 m!552289))

(assert (=> d!84819 m!552035))

(assert (=> d!84819 m!552075))

(declare-fun m!552291 () Bool)

(assert (=> b!573226 m!552291))

(assert (=> b!572940 d!84819))

(declare-fun b!573227 () Bool)

(declare-fun e!329768 () Bool)

(declare-fun call!32636 () Bool)

(assert (=> b!573227 (= e!329768 call!32636)))

(declare-fun bm!32633 () Bool)

(assert (=> bm!32633 (= call!32636 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!142 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun b!573228 () Bool)

(declare-fun e!329770 () Bool)

(assert (=> b!573228 (= e!329770 call!32636)))

(declare-fun b!573229 () Bool)

(declare-fun e!329769 () Bool)

(assert (=> b!573229 (= e!329769 e!329770)))

(declare-fun c!65630 () Bool)

(assert (=> b!573229 (= c!65630 (validKeyInArray!0 (select (arr!17204 a!3118) j!142)))))

(declare-fun d!84821 () Bool)

(declare-fun res!362686 () Bool)

(assert (=> d!84821 (=> res!362686 e!329769)))

(assert (=> d!84821 (= res!362686 (bvsge j!142 (size!17568 a!3118)))))

(assert (=> d!84821 (= (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119) e!329769)))

(declare-fun b!573230 () Bool)

(assert (=> b!573230 (= e!329770 e!329768)))

(declare-fun lt!261820 () (_ BitVec 64))

(assert (=> b!573230 (= lt!261820 (select (arr!17204 a!3118) j!142))))

(declare-fun lt!261819 () Unit!18022)

(assert (=> b!573230 (= lt!261819 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!261820 j!142))))

(assert (=> b!573230 (arrayContainsKey!0 a!3118 lt!261820 #b00000000000000000000000000000000)))

(declare-fun lt!261818 () Unit!18022)

(assert (=> b!573230 (= lt!261818 lt!261819)))

(declare-fun res!362687 () Bool)

(assert (=> b!573230 (= res!362687 (= (seekEntryOrOpen!0 (select (arr!17204 a!3118) j!142) a!3118 mask!3119) (Found!5660 j!142)))))

(assert (=> b!573230 (=> (not res!362687) (not e!329768))))

(assert (= (and d!84821 (not res!362686)) b!573229))

(assert (= (and b!573229 c!65630) b!573230))

(assert (= (and b!573229 (not c!65630)) b!573228))

(assert (= (and b!573230 res!362687) b!573227))

(assert (= (or b!573227 b!573228) bm!32633))

(declare-fun m!552293 () Bool)

(assert (=> bm!32633 m!552293))

(assert (=> b!573229 m!552035))

(assert (=> b!573229 m!552035))

(assert (=> b!573229 m!552039))

(assert (=> b!573230 m!552035))

(declare-fun m!552295 () Bool)

(assert (=> b!573230 m!552295))

(declare-fun m!552297 () Bool)

(assert (=> b!573230 m!552297))

(assert (=> b!573230 m!552035))

(assert (=> b!573230 m!552057))

(assert (=> b!572940 d!84821))

(declare-fun d!84823 () Bool)

(assert (=> d!84823 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-fun lt!261827 () Unit!18022)

(declare-fun choose!38 (array!35839 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18022)

(assert (=> d!84823 (= lt!261827 (choose!38 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(assert (=> d!84823 (validMask!0 mask!3119)))

(assert (=> d!84823 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142) lt!261827)))

(declare-fun bs!17753 () Bool)

(assert (= bs!17753 d!84823))

(assert (=> bs!17753 m!552051))

(declare-fun m!552299 () Bool)

(assert (=> bs!17753 m!552299))

(assert (=> bs!17753 m!552045))

(assert (=> b!572940 d!84823))

(declare-fun d!84825 () Bool)

(declare-fun res!362692 () Bool)

(declare-fun e!329781 () Bool)

(assert (=> d!84825 (=> res!362692 e!329781)))

(assert (=> d!84825 (= res!362692 (= (select (arr!17204 a!3118) #b00000000000000000000000000000000) k!1914))))

(assert (=> d!84825 (= (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000) e!329781)))

(declare-fun b!573247 () Bool)

(declare-fun e!329782 () Bool)

(assert (=> b!573247 (= e!329781 e!329782)))

(declare-fun res!362693 () Bool)

(assert (=> b!573247 (=> (not res!362693) (not e!329782))))

(assert (=> b!573247 (= res!362693 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!17568 a!3118)))))

(declare-fun b!573248 () Bool)

(assert (=> b!573248 (= e!329782 (arrayContainsKey!0 a!3118 k!1914 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!84825 (not res!362692)) b!573247))

(assert (= (and b!573247 res!362693) b!573248))

(assert (=> d!84825 m!552173))

(declare-fun m!552301 () Bool)

(assert (=> b!573248 m!552301))

(assert (=> b!572934 d!84825))

(declare-fun b!573294 () Bool)

(declare-fun e!329812 () SeekEntryResult!5660)

(assert (=> b!573294 (= e!329812 (Found!5660 (index!24869 lt!261683)))))

(declare-fun d!84827 () Bool)

(declare-fun lt!261839 () SeekEntryResult!5660)

(assert (=> d!84827 (and (or (is-Undefined!5660 lt!261839) (not (is-Found!5660 lt!261839)) (and (bvsge (index!24868 lt!261839) #b00000000000000000000000000000000) (bvslt (index!24868 lt!261839) (size!17568 a!3118)))) (or (is-Undefined!5660 lt!261839) (is-Found!5660 lt!261839) (not (is-MissingVacant!5660 lt!261839)) (not (= (index!24870 lt!261839) (index!24869 lt!261683))) (and (bvsge (index!24870 lt!261839) #b00000000000000000000000000000000) (bvslt (index!24870 lt!261839) (size!17568 a!3118)))) (or (is-Undefined!5660 lt!261839) (ite (is-Found!5660 lt!261839) (= (select (arr!17204 a!3118) (index!24868 lt!261839)) (select (arr!17204 a!3118) j!142)) (and (is-MissingVacant!5660 lt!261839) (= (index!24870 lt!261839) (index!24869 lt!261683)) (= (select (arr!17204 a!3118) (index!24870 lt!261839)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!329810 () SeekEntryResult!5660)

(assert (=> d!84827 (= lt!261839 e!329810)))

(declare-fun c!65656 () Bool)

(assert (=> d!84827 (= c!65656 (bvsge (x!53756 lt!261683) #b01111111111111111111111111111110))))

(declare-fun lt!261840 () (_ BitVec 64))

(assert (=> d!84827 (= lt!261840 (select (arr!17204 a!3118) (index!24869 lt!261683)))))

(assert (=> d!84827 (validMask!0 mask!3119)))

(assert (=> d!84827 (= (seekKeyOrZeroReturnVacant!0 (x!53756 lt!261683) (index!24869 lt!261683) (index!24869 lt!261683) (select (arr!17204 a!3118) j!142) a!3118 mask!3119) lt!261839)))

(declare-fun b!573295 () Bool)

(assert (=> b!573295 (= e!329810 Undefined!5660)))

(declare-fun e!329811 () SeekEntryResult!5660)

(declare-fun b!573296 () Bool)

(assert (=> b!573296 (= e!329811 (seekKeyOrZeroReturnVacant!0 (bvadd (x!53756 lt!261683) #b00000000000000000000000000000001) (nextIndex!0 (index!24869 lt!261683) (x!53756 lt!261683) mask!3119) (index!24869 lt!261683) (select (arr!17204 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!573297 () Bool)

(declare-fun c!65655 () Bool)

(assert (=> b!573297 (= c!65655 (= lt!261840 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!573297 (= e!329812 e!329811)))

(declare-fun b!573298 () Bool)

(assert (=> b!573298 (= e!329811 (MissingVacant!5660 (index!24869 lt!261683)))))

(declare-fun b!573299 () Bool)

(assert (=> b!573299 (= e!329810 e!329812)))

(declare-fun c!65657 () Bool)

(assert (=> b!573299 (= c!65657 (= lt!261840 (select (arr!17204 a!3118) j!142)))))

(assert (= (and d!84827 c!65656) b!573295))

(assert (= (and d!84827 (not c!65656)) b!573299))

(assert (= (and b!573299 c!65657) b!573294))

(assert (= (and b!573299 (not c!65657)) b!573297))

(assert (= (and b!573297 c!65655) b!573298))

(assert (= (and b!573297 (not c!65655)) b!573296))

(declare-fun m!552335 () Bool)

(assert (=> d!84827 m!552335))

(declare-fun m!552337 () Bool)

(assert (=> d!84827 m!552337))

(assert (=> d!84827 m!552053))

(assert (=> d!84827 m!552045))

(declare-fun m!552339 () Bool)

(assert (=> b!573296 m!552339))

(assert (=> b!573296 m!552339))

(assert (=> b!573296 m!552035))

(declare-fun m!552341 () Bool)

(assert (=> b!573296 m!552341))

(assert (=> b!572933 d!84827))

(declare-fun bm!32639 () Bool)

(declare-fun call!32642 () Bool)

(declare-fun c!65660 () Bool)

(assert (=> bm!32639 (= call!32642 (arrayNoDuplicates!0 a!3118 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!65660 (Cons!11333 (select (arr!17204 a!3118) #b00000000000000000000000000000000) Nil!11334) Nil!11334)))))

(declare-fun b!573310 () Bool)

(declare-fun e!329821 () Bool)

(declare-fun contains!2889 (List!11337 (_ BitVec 64)) Bool)

(assert (=> b!573310 (= e!329821 (contains!2889 Nil!11334 (select (arr!17204 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!573311 () Bool)

(declare-fun e!329822 () Bool)

(assert (=> b!573311 (= e!329822 call!32642)))

(declare-fun d!84837 () Bool)

(declare-fun res!362709 () Bool)

(declare-fun e!329824 () Bool)

(assert (=> d!84837 (=> res!362709 e!329824)))

(assert (=> d!84837 (= res!362709 (bvsge #b00000000000000000000000000000000 (size!17568 a!3118)))))

(assert (=> d!84837 (= (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11334) e!329824)))

(declare-fun b!573312 () Bool)

(declare-fun e!329823 () Bool)

(assert (=> b!573312 (= e!329824 e!329823)))

(declare-fun res!362710 () Bool)

(assert (=> b!573312 (=> (not res!362710) (not e!329823))))

(assert (=> b!573312 (= res!362710 (not e!329821))))

(declare-fun res!362711 () Bool)

(assert (=> b!573312 (=> (not res!362711) (not e!329821))))

(assert (=> b!573312 (= res!362711 (validKeyInArray!0 (select (arr!17204 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!573313 () Bool)

(assert (=> b!573313 (= e!329822 call!32642)))

(declare-fun b!573314 () Bool)

(assert (=> b!573314 (= e!329823 e!329822)))

(assert (=> b!573314 (= c!65660 (validKeyInArray!0 (select (arr!17204 a!3118) #b00000000000000000000000000000000)))))

(assert (= (and d!84837 (not res!362709)) b!573312))

(assert (= (and b!573312 res!362711) b!573310))

(assert (= (and b!573312 res!362710) b!573314))

(assert (= (and b!573314 c!65660) b!573311))

(assert (= (and b!573314 (not c!65660)) b!573313))

(assert (= (or b!573311 b!573313) bm!32639))

(assert (=> bm!32639 m!552173))

(declare-fun m!552343 () Bool)

(assert (=> bm!32639 m!552343))

(assert (=> b!573310 m!552173))

(assert (=> b!573310 m!552173))

(declare-fun m!552345 () Bool)

(assert (=> b!573310 m!552345))

(assert (=> b!573312 m!552173))

(assert (=> b!573312 m!552173))

(assert (=> b!573312 m!552175))

(assert (=> b!573314 m!552173))

(assert (=> b!573314 m!552173))

(assert (=> b!573314 m!552175))

(assert (=> b!572944 d!84837))

(declare-fun b!573315 () Bool)

(declare-fun lt!261842 () SeekEntryResult!5660)

(declare-fun e!329826 () SeekEntryResult!5660)

(assert (=> b!573315 (= e!329826 (seekKeyOrZeroReturnVacant!0 (x!53756 lt!261842) (index!24869 lt!261842) (index!24869 lt!261842) lt!261679 lt!261678 mask!3119))))

(declare-fun b!573316 () Bool)

(declare-fun e!329827 () SeekEntryResult!5660)

(assert (=> b!573316 (= e!329827 Undefined!5660)))

(declare-fun b!573317 () Bool)

(declare-fun c!65661 () Bool)

(declare-fun lt!261843 () (_ BitVec 64))

(assert (=> b!573317 (= c!65661 (= lt!261843 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!329825 () SeekEntryResult!5660)

(assert (=> b!573317 (= e!329825 e!329826)))

(declare-fun b!573318 () Bool)

(assert (=> b!573318 (= e!329826 (MissingZero!5660 (index!24869 lt!261842)))))

(declare-fun d!84839 () Bool)

(declare-fun lt!261841 () SeekEntryResult!5660)

(assert (=> d!84839 (and (or (is-Undefined!5660 lt!261841) (not (is-Found!5660 lt!261841)) (and (bvsge (index!24868 lt!261841) #b00000000000000000000000000000000) (bvslt (index!24868 lt!261841) (size!17568 lt!261678)))) (or (is-Undefined!5660 lt!261841) (is-Found!5660 lt!261841) (not (is-MissingZero!5660 lt!261841)) (and (bvsge (index!24867 lt!261841) #b00000000000000000000000000000000) (bvslt (index!24867 lt!261841) (size!17568 lt!261678)))) (or (is-Undefined!5660 lt!261841) (is-Found!5660 lt!261841) (is-MissingZero!5660 lt!261841) (not (is-MissingVacant!5660 lt!261841)) (and (bvsge (index!24870 lt!261841) #b00000000000000000000000000000000) (bvslt (index!24870 lt!261841) (size!17568 lt!261678)))) (or (is-Undefined!5660 lt!261841) (ite (is-Found!5660 lt!261841) (= (select (arr!17204 lt!261678) (index!24868 lt!261841)) lt!261679) (ite (is-MissingZero!5660 lt!261841) (= (select (arr!17204 lt!261678) (index!24867 lt!261841)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5660 lt!261841) (= (select (arr!17204 lt!261678) (index!24870 lt!261841)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!84839 (= lt!261841 e!329827)))

(declare-fun c!65663 () Bool)

(assert (=> d!84839 (= c!65663 (and (is-Intermediate!5660 lt!261842) (undefined!6472 lt!261842)))))

(assert (=> d!84839 (= lt!261842 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!261679 mask!3119) lt!261679 lt!261678 mask!3119))))

(assert (=> d!84839 (validMask!0 mask!3119)))

(assert (=> d!84839 (= (seekEntryOrOpen!0 lt!261679 lt!261678 mask!3119) lt!261841)))

(declare-fun b!573319 () Bool)

(assert (=> b!573319 (= e!329825 (Found!5660 (index!24869 lt!261842)))))

(declare-fun b!573320 () Bool)

(assert (=> b!573320 (= e!329827 e!329825)))

(assert (=> b!573320 (= lt!261843 (select (arr!17204 lt!261678) (index!24869 lt!261842)))))

(declare-fun c!65662 () Bool)

(assert (=> b!573320 (= c!65662 (= lt!261843 lt!261679))))

(assert (= (and d!84839 c!65663) b!573316))

(assert (= (and d!84839 (not c!65663)) b!573320))

(assert (= (and b!573320 c!65662) b!573319))

(assert (= (and b!573320 (not c!65662)) b!573317))

(assert (= (and b!573317 c!65661) b!573318))

(assert (= (and b!573317 (not c!65661)) b!573315))

(declare-fun m!552347 () Bool)

(assert (=> b!573315 m!552347))

(declare-fun m!552349 () Bool)

(assert (=> d!84839 m!552349))

(declare-fun m!552351 () Bool)

(assert (=> d!84839 m!552351))

(assert (=> d!84839 m!552045))

(declare-fun m!552353 () Bool)

(assert (=> d!84839 m!552353))

(assert (=> d!84839 m!552071))

(declare-fun m!552355 () Bool)

(assert (=> d!84839 m!552355))

(assert (=> d!84839 m!552071))

(declare-fun m!552357 () Bool)

(assert (=> b!573320 m!552357))

(assert (=> b!572938 d!84839))

(declare-fun b!573321 () Bool)

(declare-fun e!329830 () SeekEntryResult!5660)

(assert (=> b!573321 (= e!329830 (Found!5660 (index!24869 lt!261683)))))

(declare-fun lt!261844 () SeekEntryResult!5660)

(declare-fun d!84841 () Bool)

(assert (=> d!84841 (and (or (is-Undefined!5660 lt!261844) (not (is-Found!5660 lt!261844)) (and (bvsge (index!24868 lt!261844) #b00000000000000000000000000000000) (bvslt (index!24868 lt!261844) (size!17568 lt!261678)))) (or (is-Undefined!5660 lt!261844) (is-Found!5660 lt!261844) (not (is-MissingVacant!5660 lt!261844)) (not (= (index!24870 lt!261844) (index!24869 lt!261683))) (and (bvsge (index!24870 lt!261844) #b00000000000000000000000000000000) (bvslt (index!24870 lt!261844) (size!17568 lt!261678)))) (or (is-Undefined!5660 lt!261844) (ite (is-Found!5660 lt!261844) (= (select (arr!17204 lt!261678) (index!24868 lt!261844)) lt!261679) (and (is-MissingVacant!5660 lt!261844) (= (index!24870 lt!261844) (index!24869 lt!261683)) (= (select (arr!17204 lt!261678) (index!24870 lt!261844)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!329828 () SeekEntryResult!5660)

(assert (=> d!84841 (= lt!261844 e!329828)))

(declare-fun c!65665 () Bool)

(assert (=> d!84841 (= c!65665 (bvsge (x!53756 lt!261683) #b01111111111111111111111111111110))))

(declare-fun lt!261845 () (_ BitVec 64))

(assert (=> d!84841 (= lt!261845 (select (arr!17204 lt!261678) (index!24869 lt!261683)))))

(assert (=> d!84841 (validMask!0 mask!3119)))

(assert (=> d!84841 (= (seekKeyOrZeroReturnVacant!0 (x!53756 lt!261683) (index!24869 lt!261683) (index!24869 lt!261683) lt!261679 lt!261678 mask!3119) lt!261844)))

(declare-fun b!573322 () Bool)

(assert (=> b!573322 (= e!329828 Undefined!5660)))

(declare-fun e!329829 () SeekEntryResult!5660)

(declare-fun b!573323 () Bool)

(assert (=> b!573323 (= e!329829 (seekKeyOrZeroReturnVacant!0 (bvadd (x!53756 lt!261683) #b00000000000000000000000000000001) (nextIndex!0 (index!24869 lt!261683) (x!53756 lt!261683) mask!3119) (index!24869 lt!261683) lt!261679 lt!261678 mask!3119))))

(declare-fun b!573324 () Bool)

(declare-fun c!65664 () Bool)

(assert (=> b!573324 (= c!65664 (= lt!261845 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!573324 (= e!329830 e!329829)))

(declare-fun b!573325 () Bool)

(assert (=> b!573325 (= e!329829 (MissingVacant!5660 (index!24869 lt!261683)))))

(declare-fun b!573326 () Bool)

(assert (=> b!573326 (= e!329828 e!329830)))

(declare-fun c!65666 () Bool)

(assert (=> b!573326 (= c!65666 (= lt!261845 lt!261679))))

(assert (= (and d!84841 c!65665) b!573322))

(assert (= (and d!84841 (not c!65665)) b!573326))

(assert (= (and b!573326 c!65666) b!573321))

(assert (= (and b!573326 (not c!65666)) b!573324))

(assert (= (and b!573324 c!65664) b!573325))

(assert (= (and b!573324 (not c!65664)) b!573323))

(declare-fun m!552359 () Bool)

(assert (=> d!84841 m!552359))

(declare-fun m!552361 () Bool)

(assert (=> d!84841 m!552361))

(declare-fun m!552363 () Bool)

(assert (=> d!84841 m!552363))

(assert (=> d!84841 m!552045))

(assert (=> b!573323 m!552339))

(assert (=> b!573323 m!552339))

(declare-fun m!552365 () Bool)

(assert (=> b!573323 m!552365))

(assert (=> b!572938 d!84841))

(declare-fun d!84843 () Bool)

(assert (=> d!84843 (= (validKeyInArray!0 (select (arr!17204 a!3118) j!142)) (and (not (= (select (arr!17204 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!17204 a!3118) j!142) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!572937 d!84843))

(push 1)

