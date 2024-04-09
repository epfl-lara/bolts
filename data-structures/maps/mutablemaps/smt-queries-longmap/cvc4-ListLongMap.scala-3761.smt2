; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51582 () Bool)

(assert start!51582)

(declare-fun b!564041 () Bool)

(declare-fun e!324933 () Bool)

(declare-fun e!324932 () Bool)

(assert (=> b!564041 (= e!324933 e!324932)))

(declare-fun res!355347 () Bool)

(assert (=> b!564041 (=> (not res!355347) (not e!324932))))

(declare-datatypes ((SeekEntryResult!5453 0))(
  ( (MissingZero!5453 (index!24039 (_ BitVec 32))) (Found!5453 (index!24040 (_ BitVec 32))) (Intermediate!5453 (undefined!6265 Bool) (index!24041 (_ BitVec 32)) (x!52943 (_ BitVec 32))) (Undefined!5453) (MissingVacant!5453 (index!24042 (_ BitVec 32))) )
))
(declare-fun lt!257441 () SeekEntryResult!5453)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!564041 (= res!355347 (or (= lt!257441 (MissingZero!5453 i!1132)) (= lt!257441 (MissingVacant!5453 i!1132))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun k!1914 () (_ BitVec 64))

(declare-datatypes ((array!35401 0))(
  ( (array!35402 (arr!16997 (Array (_ BitVec 32) (_ BitVec 64))) (size!17361 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35401)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35401 (_ BitVec 32)) SeekEntryResult!5453)

(assert (=> b!564041 (= lt!257441 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun res!355343 () Bool)

(assert (=> start!51582 (=> (not res!355343) (not e!324933))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51582 (= res!355343 (validMask!0 mask!3119))))

(assert (=> start!51582 e!324933))

(assert (=> start!51582 true))

(declare-fun array_inv!12771 (array!35401) Bool)

(assert (=> start!51582 (array_inv!12771 a!3118)))

(declare-fun b!564042 () Bool)

(declare-fun res!355348 () Bool)

(assert (=> b!564042 (=> (not res!355348) (not e!324933))))

(declare-fun arrayContainsKey!0 (array!35401 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!564042 (= res!355348 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!564043 () Bool)

(assert (=> b!564043 (= e!324932 false)))

(declare-fun lt!257440 () Bool)

(declare-datatypes ((List!11130 0))(
  ( (Nil!11127) (Cons!11126 (h!12129 (_ BitVec 64)) (t!17366 List!11130)) )
))
(declare-fun arrayNoDuplicates!0 (array!35401 (_ BitVec 32) List!11130) Bool)

(assert (=> b!564043 (= lt!257440 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11127))))

(declare-fun b!564044 () Bool)

(declare-fun res!355349 () Bool)

(assert (=> b!564044 (=> (not res!355349) (not e!324932))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35401 (_ BitVec 32)) Bool)

(assert (=> b!564044 (= res!355349 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!564045 () Bool)

(declare-fun res!355346 () Bool)

(assert (=> b!564045 (=> (not res!355346) (not e!324933))))

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!564045 (= res!355346 (and (= (size!17361 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17361 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17361 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!564046 () Bool)

(declare-fun res!355345 () Bool)

(assert (=> b!564046 (=> (not res!355345) (not e!324933))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!564046 (= res!355345 (validKeyInArray!0 (select (arr!16997 a!3118) j!142)))))

(declare-fun b!564047 () Bool)

(declare-fun res!355344 () Bool)

(assert (=> b!564047 (=> (not res!355344) (not e!324933))))

(assert (=> b!564047 (= res!355344 (validKeyInArray!0 k!1914))))

(assert (= (and start!51582 res!355343) b!564045))

(assert (= (and b!564045 res!355346) b!564046))

(assert (= (and b!564046 res!355345) b!564047))

(assert (= (and b!564047 res!355344) b!564042))

(assert (= (and b!564042 res!355348) b!564041))

(assert (= (and b!564041 res!355347) b!564044))

(assert (= (and b!564044 res!355349) b!564043))

(declare-fun m!542527 () Bool)

(assert (=> start!51582 m!542527))

(declare-fun m!542529 () Bool)

(assert (=> start!51582 m!542529))

(declare-fun m!542531 () Bool)

(assert (=> b!564046 m!542531))

(assert (=> b!564046 m!542531))

(declare-fun m!542533 () Bool)

(assert (=> b!564046 m!542533))

(declare-fun m!542535 () Bool)

(assert (=> b!564044 m!542535))

(declare-fun m!542537 () Bool)

(assert (=> b!564041 m!542537))

(declare-fun m!542539 () Bool)

(assert (=> b!564043 m!542539))

(declare-fun m!542541 () Bool)

(assert (=> b!564047 m!542541))

(declare-fun m!542543 () Bool)

(assert (=> b!564042 m!542543))

(push 1)

(assert (not b!564042))

(assert (not start!51582))

(assert (not b!564043))

(assert (not b!564041))

