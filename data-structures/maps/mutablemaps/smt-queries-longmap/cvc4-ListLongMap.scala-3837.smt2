; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52794 () Bool)

(assert start!52794)

(declare-fun res!363823 () Bool)

(declare-fun e!331000 () Bool)

(assert (=> start!52794 (=> (not res!363823) (not e!331000))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52794 (= res!363823 (validMask!0 mask!3119))))

(assert (=> start!52794 e!331000))

(assert (=> start!52794 true))

(declare-datatypes ((array!35893 0))(
  ( (array!35894 (arr!17225 (Array (_ BitVec 32) (_ BitVec 64))) (size!17589 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35893)

(declare-fun array_inv!12999 (array!35893) Bool)

(assert (=> start!52794 (array_inv!12999 a!3118)))

(declare-fun b!575250 () Bool)

(declare-fun e!330995 () Bool)

(assert (=> b!575250 (= e!330995 true)))

(declare-datatypes ((SeekEntryResult!5681 0))(
  ( (MissingZero!5681 (index!24951 (_ BitVec 32))) (Found!5681 (index!24952 (_ BitVec 32))) (Intermediate!5681 (undefined!6493 Bool) (index!24953 (_ BitVec 32)) (x!53869 (_ BitVec 32))) (Undefined!5681) (MissingVacant!5681 (index!24954 (_ BitVec 32))) )
))
(declare-fun lt!262998 () SeekEntryResult!5681)

(declare-fun lt!262996 () SeekEntryResult!5681)

(assert (=> b!575250 (= lt!262998 lt!262996)))

(declare-fun j!142 () (_ BitVec 32))

(declare-datatypes ((Unit!18064 0))(
  ( (Unit!18065) )
))
(declare-fun lt!262999 () Unit!18064)

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun lt!263003 () SeekEntryResult!5681)

(declare-fun i!1132 () (_ BitVec 32))

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!35893 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18064)

(assert (=> b!575250 (= lt!262999 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!3118 i!1132 k!1914 j!142 (x!53869 lt!263003) (index!24953 lt!263003) (index!24953 lt!263003) mask!3119))))

(declare-fun b!575251 () Bool)

(declare-fun e!330999 () Bool)

(declare-fun e!330996 () Bool)

(assert (=> b!575251 (= e!330999 (not e!330996))))

(declare-fun res!363822 () Bool)

(assert (=> b!575251 (=> res!363822 e!330996)))

(assert (=> b!575251 (= res!363822 (or (undefined!6493 lt!263003) (not (is-Intermediate!5681 lt!263003))))))

(declare-fun lt!263001 () SeekEntryResult!5681)

(declare-fun lt!262995 () SeekEntryResult!5681)

(assert (=> b!575251 (= lt!263001 lt!262995)))

(assert (=> b!575251 (= lt!262995 (Found!5681 j!142))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35893 (_ BitVec 32)) SeekEntryResult!5681)

(assert (=> b!575251 (= lt!263001 (seekEntryOrOpen!0 (select (arr!17225 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35893 (_ BitVec 32)) Bool)

(assert (=> b!575251 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-fun lt!262993 () Unit!18064)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35893 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18064)

(assert (=> b!575251 (= lt!262993 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!575252 () Bool)

(declare-fun res!363825 () Bool)

(assert (=> b!575252 (=> (not res!363825) (not e!331000))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!575252 (= res!363825 (validKeyInArray!0 (select (arr!17225 a!3118) j!142)))))

(declare-fun b!575253 () Bool)

(declare-fun res!363827 () Bool)

(declare-fun e!330997 () Bool)

(assert (=> b!575253 (=> (not res!363827) (not e!330997))))

(declare-datatypes ((List!11358 0))(
  ( (Nil!11355) (Cons!11354 (h!12393 (_ BitVec 64)) (t!17594 List!11358)) )
))
(declare-fun arrayNoDuplicates!0 (array!35893 (_ BitVec 32) List!11358) Bool)

(assert (=> b!575253 (= res!363827 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11355))))

(declare-fun b!575254 () Bool)

(declare-fun e!330998 () Bool)

(assert (=> b!575254 (= e!330996 e!330998)))

(declare-fun res!363826 () Bool)

(assert (=> b!575254 (=> res!363826 e!330998)))

(declare-fun lt!263002 () (_ BitVec 64))

(assert (=> b!575254 (= res!363826 (or (= lt!263002 (select (arr!17225 a!3118) j!142)) (= lt!263002 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!575254 (= lt!263002 (select (arr!17225 a!3118) (index!24953 lt!263003)))))

(declare-fun b!575255 () Bool)

(assert (=> b!575255 (= e!331000 e!330997)))

(declare-fun res!363818 () Bool)

(assert (=> b!575255 (=> (not res!363818) (not e!330997))))

(declare-fun lt!263006 () SeekEntryResult!5681)

(assert (=> b!575255 (= res!363818 (or (= lt!263006 (MissingZero!5681 i!1132)) (= lt!263006 (MissingVacant!5681 i!1132))))))

(assert (=> b!575255 (= lt!263006 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!575256 () Bool)

(declare-fun res!363816 () Bool)

(assert (=> b!575256 (=> (not res!363816) (not e!331000))))

(assert (=> b!575256 (= res!363816 (validKeyInArray!0 k!1914))))

(declare-fun b!575257 () Bool)

(declare-fun res!363817 () Bool)

(assert (=> b!575257 (=> (not res!363817) (not e!331000))))

(assert (=> b!575257 (= res!363817 (and (= (size!17589 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17589 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17589 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!575258 () Bool)

(declare-fun res!363824 () Bool)

(assert (=> b!575258 (=> (not res!363824) (not e!331000))))

(declare-fun arrayContainsKey!0 (array!35893 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!575258 (= res!363824 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!575259 () Bool)

(declare-fun res!363820 () Bool)

(assert (=> b!575259 (=> (not res!363820) (not e!330997))))

(assert (=> b!575259 (= res!363820 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!575260 () Bool)

(assert (=> b!575260 (= e!330998 e!330995)))

(declare-fun res!363821 () Bool)

(assert (=> b!575260 (=> res!363821 e!330995)))

(assert (=> b!575260 (= res!363821 (or (bvslt (index!24953 lt!263003) #b00000000000000000000000000000000) (bvsge (index!24953 lt!263003) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsgt (x!53869 lt!263003) #b01111111111111111111111111111110) (bvslt (x!53869 lt!263003) #b00000000000000000000000000000000) (not (= lt!263002 #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (store (arr!17225 a!3118) i!1132 k!1914) (index!24953 lt!263003)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= lt!262998 lt!262995))))))

(declare-fun lt!262997 () SeekEntryResult!5681)

(assert (=> b!575260 (= lt!262997 lt!262996)))

(declare-fun lt!262994 () (_ BitVec 64))

(declare-fun lt!263004 () array!35893)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35893 (_ BitVec 32)) SeekEntryResult!5681)

(assert (=> b!575260 (= lt!262996 (seekKeyOrZeroReturnVacant!0 (x!53869 lt!263003) (index!24953 lt!263003) (index!24953 lt!263003) lt!262994 lt!263004 mask!3119))))

(assert (=> b!575260 (= lt!262997 (seekEntryOrOpen!0 lt!262994 lt!263004 mask!3119))))

(assert (=> b!575260 (= lt!263001 lt!262998)))

(assert (=> b!575260 (= lt!262998 (seekKeyOrZeroReturnVacant!0 (x!53869 lt!263003) (index!24953 lt!263003) (index!24953 lt!263003) (select (arr!17225 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!575261 () Bool)

(assert (=> b!575261 (= e!330997 e!330999)))

(declare-fun res!363819 () Bool)

(assert (=> b!575261 (=> (not res!363819) (not e!330999))))

(declare-fun lt!263000 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35893 (_ BitVec 32)) SeekEntryResult!5681)

(assert (=> b!575261 (= res!363819 (= lt!263003 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!263000 lt!262994 lt!263004 mask!3119)))))

(declare-fun lt!263005 () (_ BitVec 32))

(assert (=> b!575261 (= lt!263003 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!263005 (select (arr!17225 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!575261 (= lt!263000 (toIndex!0 lt!262994 mask!3119))))

(assert (=> b!575261 (= lt!262994 (select (store (arr!17225 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!575261 (= lt!263005 (toIndex!0 (select (arr!17225 a!3118) j!142) mask!3119))))

(assert (=> b!575261 (= lt!263004 (array!35894 (store (arr!17225 a!3118) i!1132 k!1914) (size!17589 a!3118)))))

(assert (= (and start!52794 res!363823) b!575257))

(assert (= (and b!575257 res!363817) b!575252))

(assert (= (and b!575252 res!363825) b!575256))

(assert (= (and b!575256 res!363816) b!575258))

(assert (= (and b!575258 res!363824) b!575255))

(assert (= (and b!575255 res!363818) b!575259))

(assert (= (and b!575259 res!363820) b!575253))

(assert (= (and b!575253 res!363827) b!575261))

(assert (= (and b!575261 res!363819) b!575251))

(assert (= (and b!575251 (not res!363822)) b!575254))

(assert (= (and b!575254 (not res!363826)) b!575260))

(assert (= (and b!575260 (not res!363821)) b!575250))

(declare-fun m!554143 () Bool)

(assert (=> b!575259 m!554143))

(declare-fun m!554145 () Bool)

(assert (=> b!575251 m!554145))

(assert (=> b!575251 m!554145))

(declare-fun m!554147 () Bool)

(assert (=> b!575251 m!554147))

(declare-fun m!554149 () Bool)

(assert (=> b!575251 m!554149))

(declare-fun m!554151 () Bool)

(assert (=> b!575251 m!554151))

(assert (=> b!575252 m!554145))

(assert (=> b!575252 m!554145))

(declare-fun m!554153 () Bool)

(assert (=> b!575252 m!554153))

(declare-fun m!554155 () Bool)

(assert (=> b!575255 m!554155))

(declare-fun m!554157 () Bool)

(assert (=> start!52794 m!554157))

(declare-fun m!554159 () Bool)

(assert (=> start!52794 m!554159))

(declare-fun m!554161 () Bool)

(assert (=> b!575250 m!554161))

(declare-fun m!554163 () Bool)

(assert (=> b!575258 m!554163))

(assert (=> b!575254 m!554145))

(declare-fun m!554165 () Bool)

(assert (=> b!575254 m!554165))

(assert (=> b!575261 m!554145))

(declare-fun m!554167 () Bool)

(assert (=> b!575261 m!554167))

(declare-fun m!554169 () Bool)

(assert (=> b!575261 m!554169))

(assert (=> b!575261 m!554145))

(declare-fun m!554171 () Bool)

(assert (=> b!575261 m!554171))

(assert (=> b!575261 m!554145))

(declare-fun m!554173 () Bool)

(assert (=> b!575261 m!554173))

(declare-fun m!554175 () Bool)

(assert (=> b!575261 m!554175))

(declare-fun m!554177 () Bool)

(assert (=> b!575261 m!554177))

(declare-fun m!554179 () Bool)

(assert (=> b!575253 m!554179))

(declare-fun m!554181 () Bool)

(assert (=> b!575256 m!554181))

(assert (=> b!575260 m!554145))

(declare-fun m!554183 () Bool)

(assert (=> b!575260 m!554183))

(declare-fun m!554185 () Bool)

(assert (=> b!575260 m!554185))

(assert (=> b!575260 m!554145))

(assert (=> b!575260 m!554175))

(declare-fun m!554187 () Bool)

(assert (=> b!575260 m!554187))

(declare-fun m!554189 () Bool)

(assert (=> b!575260 m!554189))

(push 1)

(assert (not b!575252))

(assert (not b!575259))

(assert (not b!575258))

(assert (not b!575260))

(assert (not b!575261))

(assert (not b!575253))

(assert (not b!575256))

(assert (not b!575250))

(assert (not b!575251))

