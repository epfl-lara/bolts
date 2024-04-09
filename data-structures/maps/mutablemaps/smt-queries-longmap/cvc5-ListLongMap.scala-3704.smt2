; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50858 () Bool)

(assert start!50858)

(declare-fun b!556184 () Bool)

(declare-fun e!320439 () Bool)

(declare-fun e!320437 () Bool)

(assert (=> b!556184 (= e!320439 e!320437)))

(declare-fun res!348746 () Bool)

(assert (=> b!556184 (=> (not res!348746) (not e!320437))))

(declare-fun j!142 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5280 0))(
  ( (MissingZero!5280 (index!23347 (_ BitVec 32))) (Found!5280 (index!23348 (_ BitVec 32))) (Intermediate!5280 (undefined!6092 Bool) (index!23349 (_ BitVec 32)) (x!52269 (_ BitVec 32))) (Undefined!5280) (MissingVacant!5280 (index!23350 (_ BitVec 32))) )
))
(declare-fun lt!252817 () SeekEntryResult!5280)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun lt!252819 () (_ BitVec 32))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!35037 0))(
  ( (array!35038 (arr!16824 (Array (_ BitVec 32) (_ BitVec 64))) (size!17188 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35037)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35037 (_ BitVec 32)) SeekEntryResult!5280)

(assert (=> b!556184 (= res!348746 (= lt!252817 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!252819 (select (store (arr!16824 a!3118) i!1132 k!1914) j!142) (array!35038 (store (arr!16824 a!3118) i!1132 k!1914) (size!17188 a!3118)) mask!3119)))))

(declare-fun lt!252820 () (_ BitVec 32))

(assert (=> b!556184 (= lt!252817 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!252820 (select (arr!16824 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!556184 (= lt!252819 (toIndex!0 (select (store (arr!16824 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!556184 (= lt!252820 (toIndex!0 (select (arr!16824 a!3118) j!142) mask!3119))))

(declare-fun b!556185 () Bool)

(declare-fun res!348748 () Bool)

(assert (=> b!556185 (=> (not res!348748) (not e!320439))))

(declare-datatypes ((List!10957 0))(
  ( (Nil!10954) (Cons!10953 (h!11938 (_ BitVec 64)) (t!17193 List!10957)) )
))
(declare-fun arrayNoDuplicates!0 (array!35037 (_ BitVec 32) List!10957) Bool)

(assert (=> b!556185 (= res!348748 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10954))))

(declare-fun b!556186 () Bool)

(declare-fun res!348755 () Bool)

(declare-fun e!320436 () Bool)

(assert (=> b!556186 (=> (not res!348755) (not e!320436))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!556186 (= res!348755 (validKeyInArray!0 (select (arr!16824 a!3118) j!142)))))

(declare-fun b!556187 () Bool)

(declare-fun res!348752 () Bool)

(assert (=> b!556187 (=> (not res!348752) (not e!320436))))

(assert (=> b!556187 (= res!348752 (and (= (size!17188 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17188 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17188 a!3118)) (not (= i!1132 j!142))))))

(declare-fun res!348751 () Bool)

(assert (=> start!50858 (=> (not res!348751) (not e!320436))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50858 (= res!348751 (validMask!0 mask!3119))))

(assert (=> start!50858 e!320436))

(assert (=> start!50858 true))

(declare-fun array_inv!12598 (array!35037) Bool)

(assert (=> start!50858 (array_inv!12598 a!3118)))

(declare-fun b!556188 () Bool)

(declare-fun res!348750 () Bool)

(assert (=> b!556188 (=> (not res!348750) (not e!320436))))

(assert (=> b!556188 (= res!348750 (validKeyInArray!0 k!1914))))

(declare-fun b!556189 () Bool)

(declare-fun e!320438 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35037 (_ BitVec 32)) SeekEntryResult!5280)

(assert (=> b!556189 (= e!320438 (= (seekEntryOrOpen!0 (select (arr!16824 a!3118) j!142) a!3118 mask!3119) (Found!5280 j!142)))))

(declare-fun b!556190 () Bool)

(declare-fun res!348749 () Bool)

(assert (=> b!556190 (=> (not res!348749) (not e!320439))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35037 (_ BitVec 32)) Bool)

(assert (=> b!556190 (= res!348749 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!556191 () Bool)

(assert (=> b!556191 (= e!320437 (not (or (not (is-Intermediate!5280 lt!252817)) (undefined!6092 lt!252817) (= (select (arr!16824 a!3118) (index!23349 lt!252817)) (select (arr!16824 a!3118) j!142)) (= (select (arr!16824 a!3118) (index!23349 lt!252817)) #b0000000000000000000000000000000000000000000000000000000000000000) (bvsge mask!3119 #b00000000000000000000000000000000))))))

(assert (=> b!556191 e!320438))

(declare-fun res!348753 () Bool)

(assert (=> b!556191 (=> (not res!348753) (not e!320438))))

(assert (=> b!556191 (= res!348753 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17334 0))(
  ( (Unit!17335) )
))
(declare-fun lt!252821 () Unit!17334)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35037 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17334)

(assert (=> b!556191 (= lt!252821 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!556192 () Bool)

(assert (=> b!556192 (= e!320436 e!320439)))

(declare-fun res!348754 () Bool)

(assert (=> b!556192 (=> (not res!348754) (not e!320439))))

(declare-fun lt!252818 () SeekEntryResult!5280)

(assert (=> b!556192 (= res!348754 (or (= lt!252818 (MissingZero!5280 i!1132)) (= lt!252818 (MissingVacant!5280 i!1132))))))

(assert (=> b!556192 (= lt!252818 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!556193 () Bool)

(declare-fun res!348747 () Bool)

(assert (=> b!556193 (=> (not res!348747) (not e!320436))))

(declare-fun arrayContainsKey!0 (array!35037 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!556193 (= res!348747 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(assert (= (and start!50858 res!348751) b!556187))

(assert (= (and b!556187 res!348752) b!556186))

(assert (= (and b!556186 res!348755) b!556188))

(assert (= (and b!556188 res!348750) b!556193))

(assert (= (and b!556193 res!348747) b!556192))

(assert (= (and b!556192 res!348754) b!556190))

(assert (= (and b!556190 res!348749) b!556185))

(assert (= (and b!556185 res!348748) b!556184))

(assert (= (and b!556184 res!348746) b!556191))

(assert (= (and b!556191 res!348753) b!556189))

(declare-fun m!534199 () Bool)

(assert (=> b!556190 m!534199))

(declare-fun m!534201 () Bool)

(assert (=> b!556185 m!534201))

(declare-fun m!534203 () Bool)

(assert (=> b!556184 m!534203))

(declare-fun m!534205 () Bool)

(assert (=> b!556184 m!534205))

(assert (=> b!556184 m!534203))

(declare-fun m!534207 () Bool)

(assert (=> b!556184 m!534207))

(assert (=> b!556184 m!534207))

(declare-fun m!534209 () Bool)

(assert (=> b!556184 m!534209))

(declare-fun m!534211 () Bool)

(assert (=> b!556184 m!534211))

(assert (=> b!556184 m!534203))

(declare-fun m!534213 () Bool)

(assert (=> b!556184 m!534213))

(assert (=> b!556184 m!534207))

(declare-fun m!534215 () Bool)

(assert (=> b!556184 m!534215))

(declare-fun m!534217 () Bool)

(assert (=> b!556188 m!534217))

(declare-fun m!534219 () Bool)

(assert (=> start!50858 m!534219))

(declare-fun m!534221 () Bool)

(assert (=> start!50858 m!534221))

(declare-fun m!534223 () Bool)

(assert (=> b!556191 m!534223))

(assert (=> b!556191 m!534203))

(declare-fun m!534225 () Bool)

(assert (=> b!556191 m!534225))

(declare-fun m!534227 () Bool)

(assert (=> b!556191 m!534227))

(declare-fun m!534229 () Bool)

(assert (=> b!556192 m!534229))

(declare-fun m!534231 () Bool)

(assert (=> b!556193 m!534231))

(assert (=> b!556186 m!534203))

(assert (=> b!556186 m!534203))

(declare-fun m!534233 () Bool)

(assert (=> b!556186 m!534233))

(assert (=> b!556189 m!534203))

(assert (=> b!556189 m!534203))

(declare-fun m!534235 () Bool)

(assert (=> b!556189 m!534235))

(push 1)

