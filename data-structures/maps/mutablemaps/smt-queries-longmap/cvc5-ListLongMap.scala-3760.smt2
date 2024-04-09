; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51572 () Bool)

(assert start!51572)

(declare-fun res!355238 () Bool)

(declare-fun e!324888 () Bool)

(assert (=> start!51572 (=> (not res!355238) (not e!324888))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51572 (= res!355238 (validMask!0 mask!3119))))

(assert (=> start!51572 e!324888))

(assert (=> start!51572 true))

(declare-datatypes ((array!35391 0))(
  ( (array!35392 (arr!16992 (Array (_ BitVec 32) (_ BitVec 64))) (size!17356 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35391)

(declare-fun array_inv!12766 (array!35391) Bool)

(assert (=> start!51572 (array_inv!12766 a!3118)))

(declare-fun b!563936 () Bool)

(declare-fun res!355243 () Bool)

(declare-fun e!324887 () Bool)

(assert (=> b!563936 (=> (not res!355243) (not e!324887))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35391 (_ BitVec 32)) Bool)

(assert (=> b!563936 (= res!355243 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!563937 () Bool)

(declare-fun res!355239 () Bool)

(assert (=> b!563937 (=> (not res!355239) (not e!324888))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!563937 (= res!355239 (validKeyInArray!0 k!1914))))

(declare-fun b!563938 () Bool)

(declare-fun res!355240 () Bool)

(assert (=> b!563938 (=> (not res!355240) (not e!324888))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!563938 (= res!355240 (and (= (size!17356 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17356 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17356 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!563939 () Bool)

(assert (=> b!563939 (= e!324888 e!324887)))

(declare-fun res!355241 () Bool)

(assert (=> b!563939 (=> (not res!355241) (not e!324887))))

(declare-datatypes ((SeekEntryResult!5448 0))(
  ( (MissingZero!5448 (index!24019 (_ BitVec 32))) (Found!5448 (index!24020 (_ BitVec 32))) (Intermediate!5448 (undefined!6260 Bool) (index!24021 (_ BitVec 32)) (x!52930 (_ BitVec 32))) (Undefined!5448) (MissingVacant!5448 (index!24022 (_ BitVec 32))) )
))
(declare-fun lt!257410 () SeekEntryResult!5448)

(assert (=> b!563939 (= res!355241 (or (= lt!257410 (MissingZero!5448 i!1132)) (= lt!257410 (MissingVacant!5448 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35391 (_ BitVec 32)) SeekEntryResult!5448)

(assert (=> b!563939 (= lt!257410 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!563940 () Bool)

(declare-fun res!355242 () Bool)

(assert (=> b!563940 (=> (not res!355242) (not e!324888))))

(declare-fun arrayContainsKey!0 (array!35391 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!563940 (= res!355242 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!563941 () Bool)

(assert (=> b!563941 (= e!324887 false)))

(declare-fun lt!257411 () Bool)

(declare-datatypes ((List!11125 0))(
  ( (Nil!11122) (Cons!11121 (h!12124 (_ BitVec 64)) (t!17361 List!11125)) )
))
(declare-fun arrayNoDuplicates!0 (array!35391 (_ BitVec 32) List!11125) Bool)

(assert (=> b!563941 (= lt!257411 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11122))))

(declare-fun b!563942 () Bool)

(declare-fun res!355244 () Bool)

(assert (=> b!563942 (=> (not res!355244) (not e!324888))))

(assert (=> b!563942 (= res!355244 (validKeyInArray!0 (select (arr!16992 a!3118) j!142)))))

(assert (= (and start!51572 res!355238) b!563938))

(assert (= (and b!563938 res!355240) b!563942))

(assert (= (and b!563942 res!355244) b!563937))

(assert (= (and b!563937 res!355239) b!563940))

(assert (= (and b!563940 res!355242) b!563939))

(assert (= (and b!563939 res!355241) b!563936))

(assert (= (and b!563936 res!355243) b!563941))

(declare-fun m!542437 () Bool)

(assert (=> b!563942 m!542437))

(assert (=> b!563942 m!542437))

(declare-fun m!542439 () Bool)

(assert (=> b!563942 m!542439))

(declare-fun m!542441 () Bool)

(assert (=> b!563940 m!542441))

(declare-fun m!542443 () Bool)

(assert (=> b!563936 m!542443))

(declare-fun m!542445 () Bool)

(assert (=> b!563941 m!542445))

(declare-fun m!542447 () Bool)

(assert (=> start!51572 m!542447))

(declare-fun m!542449 () Bool)

(assert (=> start!51572 m!542449))

(declare-fun m!542451 () Bool)

(assert (=> b!563937 m!542451))

(declare-fun m!542453 () Bool)

(assert (=> b!563939 m!542453))

(push 1)

