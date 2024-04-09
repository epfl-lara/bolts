; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!51574 () Bool)

(assert start!51574)

(declare-fun b!563957 () Bool)

(declare-fun e!324896 () Bool)

(assert (=> b!563957 (= e!324896 false)))

(declare-fun lt!257416 () Bool)

(declare-datatypes ((array!35393 0))(
  ( (array!35394 (arr!16993 (Array (_ BitVec 32) (_ BitVec 64))) (size!17357 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35393)

(declare-datatypes ((List!11126 0))(
  ( (Nil!11123) (Cons!11122 (h!12125 (_ BitVec 64)) (t!17362 List!11126)) )
))
(declare-fun arrayNoDuplicates!0 (array!35393 (_ BitVec 32) List!11126) Bool)

(assert (=> b!563957 (= lt!257416 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11123))))

(declare-fun b!563958 () Bool)

(declare-fun e!324898 () Bool)

(assert (=> b!563958 (= e!324898 e!324896)))

(declare-fun res!355259 () Bool)

(assert (=> b!563958 (=> (not res!355259) (not e!324896))))

(declare-datatypes ((SeekEntryResult!5449 0))(
  ( (MissingZero!5449 (index!24023 (_ BitVec 32))) (Found!5449 (index!24024 (_ BitVec 32))) (Intermediate!5449 (undefined!6261 Bool) (index!24025 (_ BitVec 32)) (x!52931 (_ BitVec 32))) (Undefined!5449) (MissingVacant!5449 (index!24026 (_ BitVec 32))) )
))
(declare-fun lt!257417 () SeekEntryResult!5449)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!563958 (= res!355259 (or (= lt!257417 (MissingZero!5449 i!1132)) (= lt!257417 (MissingVacant!5449 i!1132))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35393 (_ BitVec 32)) SeekEntryResult!5449)

(assert (=> b!563958 (= lt!257417 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!563960 () Bool)

(declare-fun res!355260 () Bool)

(assert (=> b!563960 (=> (not res!355260) (not e!324898))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!563960 (= res!355260 (validKeyInArray!0 k0!1914))))

(declare-fun b!563961 () Bool)

(declare-fun res!355264 () Bool)

(assert (=> b!563961 (=> (not res!355264) (not e!324896))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35393 (_ BitVec 32)) Bool)

(assert (=> b!563961 (= res!355264 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!563962 () Bool)

(declare-fun res!355265 () Bool)

(assert (=> b!563962 (=> (not res!355265) (not e!324898))))

(declare-fun arrayContainsKey!0 (array!35393 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!563962 (= res!355265 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!563963 () Bool)

(declare-fun res!355262 () Bool)

(assert (=> b!563963 (=> (not res!355262) (not e!324898))))

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!563963 (= res!355262 (and (= (size!17357 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17357 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17357 a!3118)) (not (= i!1132 j!142))))))

(declare-fun res!355261 () Bool)

(assert (=> start!51574 (=> (not res!355261) (not e!324898))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51574 (= res!355261 (validMask!0 mask!3119))))

(assert (=> start!51574 e!324898))

(assert (=> start!51574 true))

(declare-fun array_inv!12767 (array!35393) Bool)

(assert (=> start!51574 (array_inv!12767 a!3118)))

(declare-fun b!563959 () Bool)

(declare-fun res!355263 () Bool)

(assert (=> b!563959 (=> (not res!355263) (not e!324898))))

(assert (=> b!563959 (= res!355263 (validKeyInArray!0 (select (arr!16993 a!3118) j!142)))))

(assert (= (and start!51574 res!355261) b!563963))

(assert (= (and b!563963 res!355262) b!563959))

(assert (= (and b!563959 res!355263) b!563960))

(assert (= (and b!563960 res!355260) b!563962))

(assert (= (and b!563962 res!355265) b!563958))

(assert (= (and b!563958 res!355259) b!563961))

(assert (= (and b!563961 res!355264) b!563957))

(declare-fun m!542455 () Bool)

(assert (=> b!563959 m!542455))

(assert (=> b!563959 m!542455))

(declare-fun m!542457 () Bool)

(assert (=> b!563959 m!542457))

(declare-fun m!542459 () Bool)

(assert (=> b!563958 m!542459))

(declare-fun m!542461 () Bool)

(assert (=> b!563960 m!542461))

(declare-fun m!542463 () Bool)

(assert (=> b!563962 m!542463))

(declare-fun m!542465 () Bool)

(assert (=> start!51574 m!542465))

(declare-fun m!542467 () Bool)

(assert (=> start!51574 m!542467))

(declare-fun m!542469 () Bool)

(assert (=> b!563961 m!542469))

(declare-fun m!542471 () Bool)

(assert (=> b!563957 m!542471))

(check-sat (not b!563962) (not b!563960) (not b!563958) (not b!563957) (not b!563959) (not b!563961) (not start!51574))
(check-sat)
