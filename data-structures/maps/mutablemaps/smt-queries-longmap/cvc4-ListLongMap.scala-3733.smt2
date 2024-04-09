; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51414 () Bool)

(assert start!51414)

(declare-fun b!561218 () Bool)

(declare-fun res!352528 () Bool)

(declare-fun e!323398 () Bool)

(assert (=> b!561218 (=> (not res!352528) (not e!323398))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!35233 0))(
  ( (array!35234 (arr!16913 (Array (_ BitVec 32) (_ BitVec 64))) (size!17277 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35233)

(declare-fun mask!3119 () (_ BitVec 32))

(assert (=> b!561218 (= res!352528 (and (= (size!17277 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17277 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17277 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!561219 () Bool)

(declare-fun res!352526 () Bool)

(declare-fun e!323402 () Bool)

(assert (=> b!561219 (=> (not res!352526) (not e!323402))))

(declare-datatypes ((List!11046 0))(
  ( (Nil!11043) (Cons!11042 (h!12045 (_ BitVec 64)) (t!17282 List!11046)) )
))
(declare-fun arrayNoDuplicates!0 (array!35233 (_ BitVec 32) List!11046) Bool)

(assert (=> b!561219 (= res!352526 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11043))))

(declare-fun b!561220 () Bool)

(declare-fun res!352532 () Bool)

(assert (=> b!561220 (=> (not res!352532) (not e!323402))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35233 (_ BitVec 32)) Bool)

(assert (=> b!561220 (= res!352532 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun res!352529 () Bool)

(assert (=> start!51414 (=> (not res!352529) (not e!323398))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51414 (= res!352529 (validMask!0 mask!3119))))

(assert (=> start!51414 e!323398))

(assert (=> start!51414 true))

(declare-fun array_inv!12687 (array!35233) Bool)

(assert (=> start!51414 (array_inv!12687 a!3118)))

(declare-fun b!561221 () Bool)

(declare-fun e!323400 () Bool)

(declare-fun e!323399 () Bool)

(assert (=> b!561221 (= e!323400 e!323399)))

(declare-fun res!352524 () Bool)

(assert (=> b!561221 (=> (not res!352524) (not e!323399))))

(declare-datatypes ((SeekEntryResult!5369 0))(
  ( (MissingZero!5369 (index!23703 (_ BitVec 32))) (Found!5369 (index!23704 (_ BitVec 32))) (Intermediate!5369 (undefined!6181 Bool) (index!23705 (_ BitVec 32)) (x!52635 (_ BitVec 32))) (Undefined!5369) (MissingVacant!5369 (index!23706 (_ BitVec 32))) )
))
(declare-fun lt!255453 () SeekEntryResult!5369)

(declare-fun lt!255457 () SeekEntryResult!5369)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35233 (_ BitVec 32)) SeekEntryResult!5369)

(assert (=> b!561221 (= res!352524 (= lt!255453 (seekKeyOrZeroReturnVacant!0 (x!52635 lt!255457) (index!23705 lt!255457) (index!23705 lt!255457) (select (arr!16913 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!561222 () Bool)

(declare-fun e!323403 () Bool)

(declare-fun e!323401 () Bool)

(assert (=> b!561222 (= e!323403 e!323401)))

(declare-fun res!352525 () Bool)

(assert (=> b!561222 (=> res!352525 e!323401)))

(assert (=> b!561222 (= res!352525 (or (undefined!6181 lt!255457) (not (is-Intermediate!5369 lt!255457))))))

(declare-fun b!561223 () Bool)

(assert (=> b!561223 (= e!323398 e!323402)))

(declare-fun res!352527 () Bool)

(assert (=> b!561223 (=> (not res!352527) (not e!323402))))

(declare-fun lt!255460 () SeekEntryResult!5369)

(assert (=> b!561223 (= res!352527 (or (= lt!255460 (MissingZero!5369 i!1132)) (= lt!255460 (MissingVacant!5369 i!1132))))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35233 (_ BitVec 32)) SeekEntryResult!5369)

(assert (=> b!561223 (= lt!255460 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!561224 () Bool)

(assert (=> b!561224 (= e!323401 e!323400)))

(declare-fun res!352523 () Bool)

(assert (=> b!561224 (=> res!352523 e!323400)))

(declare-fun lt!255459 () (_ BitVec 64))

(assert (=> b!561224 (= res!352523 (or (= lt!255459 (select (arr!16913 a!3118) j!142)) (= lt!255459 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!561224 (= lt!255459 (select (arr!16913 a!3118) (index!23705 lt!255457)))))

(declare-fun b!561225 () Bool)

(declare-fun res!352521 () Bool)

(assert (=> b!561225 (=> (not res!352521) (not e!323398))))

(declare-fun arrayContainsKey!0 (array!35233 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!561225 (= res!352521 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!561226 () Bool)

(declare-fun e!323404 () Bool)

(assert (=> b!561226 (= e!323404 (not true))))

(assert (=> b!561226 e!323403))

(declare-fun res!352520 () Bool)

(assert (=> b!561226 (=> (not res!352520) (not e!323403))))

(assert (=> b!561226 (= res!352520 (= lt!255453 (Found!5369 j!142)))))

(assert (=> b!561226 (= lt!255453 (seekEntryOrOpen!0 (select (arr!16913 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!561226 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17512 0))(
  ( (Unit!17513) )
))
(declare-fun lt!255455 () Unit!17512)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35233 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17512)

(assert (=> b!561226 (= lt!255455 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!561227 () Bool)

(assert (=> b!561227 (= e!323402 e!323404)))

(declare-fun res!352531 () Bool)

(assert (=> b!561227 (=> (not res!352531) (not e!323404))))

(declare-fun lt!255461 () (_ BitVec 64))

(declare-fun lt!255458 () (_ BitVec 32))

(declare-fun lt!255456 () array!35233)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35233 (_ BitVec 32)) SeekEntryResult!5369)

(assert (=> b!561227 (= res!352531 (= lt!255457 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!255458 lt!255461 lt!255456 mask!3119)))))

(declare-fun lt!255454 () (_ BitVec 32))

(assert (=> b!561227 (= lt!255457 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!255454 (select (arr!16913 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!561227 (= lt!255458 (toIndex!0 lt!255461 mask!3119))))

(assert (=> b!561227 (= lt!255461 (select (store (arr!16913 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!561227 (= lt!255454 (toIndex!0 (select (arr!16913 a!3118) j!142) mask!3119))))

(assert (=> b!561227 (= lt!255456 (array!35234 (store (arr!16913 a!3118) i!1132 k!1914) (size!17277 a!3118)))))

(declare-fun b!561228 () Bool)

(declare-fun res!352522 () Bool)

(assert (=> b!561228 (=> (not res!352522) (not e!323398))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!561228 (= res!352522 (validKeyInArray!0 (select (arr!16913 a!3118) j!142)))))

(declare-fun b!561229 () Bool)

(assert (=> b!561229 (= e!323399 (= (seekEntryOrOpen!0 lt!255461 lt!255456 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!52635 lt!255457) (index!23705 lt!255457) (index!23705 lt!255457) lt!255461 lt!255456 mask!3119)))))

(declare-fun b!561230 () Bool)

(declare-fun res!352530 () Bool)

(assert (=> b!561230 (=> (not res!352530) (not e!323398))))

(assert (=> b!561230 (= res!352530 (validKeyInArray!0 k!1914))))

(assert (= (and start!51414 res!352529) b!561218))

(assert (= (and b!561218 res!352528) b!561228))

(assert (= (and b!561228 res!352522) b!561230))

(assert (= (and b!561230 res!352530) b!561225))

(assert (= (and b!561225 res!352521) b!561223))

(assert (= (and b!561223 res!352527) b!561220))

(assert (= (and b!561220 res!352532) b!561219))

(assert (= (and b!561219 res!352526) b!561227))

(assert (= (and b!561227 res!352531) b!561226))

(assert (= (and b!561226 res!352520) b!561222))

(assert (= (and b!561222 (not res!352525)) b!561224))

(assert (= (and b!561224 (not res!352523)) b!561221))

(assert (= (and b!561221 res!352524) b!561229))

(declare-fun m!539147 () Bool)

(assert (=> b!561226 m!539147))

(assert (=> b!561226 m!539147))

(declare-fun m!539149 () Bool)

(assert (=> b!561226 m!539149))

(declare-fun m!539151 () Bool)

(assert (=> b!561226 m!539151))

(declare-fun m!539153 () Bool)

(assert (=> b!561226 m!539153))

(declare-fun m!539155 () Bool)

(assert (=> b!561230 m!539155))

(assert (=> b!561224 m!539147))

(declare-fun m!539157 () Bool)

(assert (=> b!561224 m!539157))

(declare-fun m!539159 () Bool)

(assert (=> b!561219 m!539159))

(declare-fun m!539161 () Bool)

(assert (=> b!561225 m!539161))

(assert (=> b!561228 m!539147))

(assert (=> b!561228 m!539147))

(declare-fun m!539163 () Bool)

(assert (=> b!561228 m!539163))

(declare-fun m!539165 () Bool)

(assert (=> b!561223 m!539165))

(declare-fun m!539167 () Bool)

(assert (=> b!561220 m!539167))

(declare-fun m!539169 () Bool)

(assert (=> b!561227 m!539169))

(assert (=> b!561227 m!539147))

(declare-fun m!539171 () Bool)

(assert (=> b!561227 m!539171))

(assert (=> b!561227 m!539147))

(assert (=> b!561227 m!539147))

(declare-fun m!539173 () Bool)

(assert (=> b!561227 m!539173))

(declare-fun m!539175 () Bool)

(assert (=> b!561227 m!539175))

(declare-fun m!539177 () Bool)

(assert (=> b!561227 m!539177))

(declare-fun m!539179 () Bool)

(assert (=> b!561227 m!539179))

(declare-fun m!539181 () Bool)

(assert (=> b!561229 m!539181))

(declare-fun m!539183 () Bool)

(assert (=> b!561229 m!539183))

(assert (=> b!561221 m!539147))

(assert (=> b!561221 m!539147))

(declare-fun m!539185 () Bool)

(assert (=> b!561221 m!539185))

(declare-fun m!539187 () Bool)

(assert (=> start!51414 m!539187))

(declare-fun m!539189 () Bool)

(assert (=> start!51414 m!539189))

(push 1)

