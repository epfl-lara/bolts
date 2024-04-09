; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51576 () Bool)

(assert start!51576)

(declare-fun b!563978 () Bool)

(declare-fun res!355284 () Bool)

(declare-fun e!324907 () Bool)

(assert (=> b!563978 (=> (not res!355284) (not e!324907))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!563978 (= res!355284 (validKeyInArray!0 k!1914))))

(declare-fun b!563979 () Bool)

(declare-fun e!324906 () Bool)

(assert (=> b!563979 (= e!324907 e!324906)))

(declare-fun res!355286 () Bool)

(assert (=> b!563979 (=> (not res!355286) (not e!324906))))

(declare-datatypes ((SeekEntryResult!5450 0))(
  ( (MissingZero!5450 (index!24027 (_ BitVec 32))) (Found!5450 (index!24028 (_ BitVec 32))) (Intermediate!5450 (undefined!6262 Bool) (index!24029 (_ BitVec 32)) (x!52932 (_ BitVec 32))) (Undefined!5450) (MissingVacant!5450 (index!24030 (_ BitVec 32))) )
))
(declare-fun lt!257422 () SeekEntryResult!5450)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!563979 (= res!355286 (or (= lt!257422 (MissingZero!5450 i!1132)) (= lt!257422 (MissingVacant!5450 i!1132))))))

(declare-datatypes ((array!35395 0))(
  ( (array!35396 (arr!16994 (Array (_ BitVec 32) (_ BitVec 64))) (size!17358 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35395)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35395 (_ BitVec 32)) SeekEntryResult!5450)

(assert (=> b!563979 (= lt!257422 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!563980 () Bool)

(declare-fun res!355283 () Bool)

(assert (=> b!563980 (=> (not res!355283) (not e!324907))))

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!563980 (= res!355283 (and (= (size!17358 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17358 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17358 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!563981 () Bool)

(declare-fun res!355282 () Bool)

(assert (=> b!563981 (=> (not res!355282) (not e!324907))))

(declare-fun arrayContainsKey!0 (array!35395 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!563981 (= res!355282 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!563982 () Bool)

(declare-fun res!355280 () Bool)

(assert (=> b!563982 (=> (not res!355280) (not e!324907))))

(assert (=> b!563982 (= res!355280 (validKeyInArray!0 (select (arr!16994 a!3118) j!142)))))

(declare-fun b!563984 () Bool)

(declare-fun res!355281 () Bool)

(assert (=> b!563984 (=> (not res!355281) (not e!324906))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35395 (_ BitVec 32)) Bool)

(assert (=> b!563984 (= res!355281 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun res!355285 () Bool)

(assert (=> start!51576 (=> (not res!355285) (not e!324907))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51576 (= res!355285 (validMask!0 mask!3119))))

(assert (=> start!51576 e!324907))

(assert (=> start!51576 true))

(declare-fun array_inv!12768 (array!35395) Bool)

(assert (=> start!51576 (array_inv!12768 a!3118)))

(declare-fun b!563983 () Bool)

(assert (=> b!563983 (= e!324906 false)))

(declare-fun lt!257423 () Bool)

(declare-datatypes ((List!11127 0))(
  ( (Nil!11124) (Cons!11123 (h!12126 (_ BitVec 64)) (t!17363 List!11127)) )
))
(declare-fun arrayNoDuplicates!0 (array!35395 (_ BitVec 32) List!11127) Bool)

(assert (=> b!563983 (= lt!257423 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11124))))

(assert (= (and start!51576 res!355285) b!563980))

(assert (= (and b!563980 res!355283) b!563982))

(assert (= (and b!563982 res!355280) b!563978))

(assert (= (and b!563978 res!355284) b!563981))

(assert (= (and b!563981 res!355282) b!563979))

(assert (= (and b!563979 res!355286) b!563984))

(assert (= (and b!563984 res!355281) b!563983))

(declare-fun m!542473 () Bool)

(assert (=> b!563983 m!542473))

(declare-fun m!542475 () Bool)

(assert (=> b!563984 m!542475))

(declare-fun m!542477 () Bool)

(assert (=> start!51576 m!542477))

(declare-fun m!542479 () Bool)

(assert (=> start!51576 m!542479))

(declare-fun m!542481 () Bool)

(assert (=> b!563981 m!542481))

(declare-fun m!542483 () Bool)

(assert (=> b!563982 m!542483))

(assert (=> b!563982 m!542483))

(declare-fun m!542485 () Bool)

(assert (=> b!563982 m!542485))

(declare-fun m!542487 () Bool)

(assert (=> b!563978 m!542487))

(declare-fun m!542489 () Bool)

(assert (=> b!563979 m!542489))

(push 1)

(assert (not start!51576))

(assert (not b!563981))

(assert (not b!563984))

(assert (not b!563979))

