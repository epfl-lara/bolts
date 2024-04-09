; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!51592 () Bool)

(assert start!51592)

(declare-fun b!564155 () Bool)

(declare-fun res!355463 () Bool)

(declare-fun e!324978 () Bool)

(assert (=> b!564155 (=> (not res!355463) (not e!324978))))

(declare-datatypes ((array!35411 0))(
  ( (array!35412 (arr!17002 (Array (_ BitVec 32) (_ BitVec 64))) (size!17366 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35411)

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!35411 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!564155 (= res!355463 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!564156 () Bool)

(declare-fun res!355461 () Bool)

(assert (=> b!564156 (=> (not res!355461) (not e!324978))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!564156 (= res!355461 (validKeyInArray!0 k0!1914))))

(declare-fun b!564157 () Bool)

(declare-fun e!324979 () Bool)

(assert (=> b!564157 (= e!324979 false)))

(declare-fun lt!257470 () Bool)

(declare-datatypes ((List!11135 0))(
  ( (Nil!11132) (Cons!11131 (h!12134 (_ BitVec 64)) (t!17371 List!11135)) )
))
(declare-fun arrayNoDuplicates!0 (array!35411 (_ BitVec 32) List!11135) Bool)

(assert (=> b!564157 (= lt!257470 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11132))))

(declare-fun b!564158 () Bool)

(declare-fun res!355457 () Bool)

(assert (=> b!564158 (=> (not res!355457) (not e!324978))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!564158 (= res!355457 (and (= (size!17366 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17366 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17366 a!3118)) (not (= i!1132 j!142))))))

(declare-fun res!355459 () Bool)

(assert (=> start!51592 (=> (not res!355459) (not e!324978))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51592 (= res!355459 (validMask!0 mask!3119))))

(assert (=> start!51592 e!324978))

(assert (=> start!51592 true))

(declare-fun array_inv!12776 (array!35411) Bool)

(assert (=> start!51592 (array_inv!12776 a!3118)))

(declare-fun b!564159 () Bool)

(declare-fun res!355458 () Bool)

(assert (=> b!564159 (=> (not res!355458) (not e!324979))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35411 (_ BitVec 32)) Bool)

(assert (=> b!564159 (= res!355458 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!564160 () Bool)

(declare-fun res!355462 () Bool)

(assert (=> b!564160 (=> (not res!355462) (not e!324978))))

(assert (=> b!564160 (= res!355462 (validKeyInArray!0 (select (arr!17002 a!3118) j!142)))))

(declare-fun b!564161 () Bool)

(assert (=> b!564161 (= e!324978 e!324979)))

(declare-fun res!355460 () Bool)

(assert (=> b!564161 (=> (not res!355460) (not e!324979))))

(declare-datatypes ((SeekEntryResult!5458 0))(
  ( (MissingZero!5458 (index!24059 (_ BitVec 32))) (Found!5458 (index!24060 (_ BitVec 32))) (Intermediate!5458 (undefined!6270 Bool) (index!24061 (_ BitVec 32)) (x!52964 (_ BitVec 32))) (Undefined!5458) (MissingVacant!5458 (index!24062 (_ BitVec 32))) )
))
(declare-fun lt!257471 () SeekEntryResult!5458)

(assert (=> b!564161 (= res!355460 (or (= lt!257471 (MissingZero!5458 i!1132)) (= lt!257471 (MissingVacant!5458 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35411 (_ BitVec 32)) SeekEntryResult!5458)

(assert (=> b!564161 (= lt!257471 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(assert (= (and start!51592 res!355459) b!564158))

(assert (= (and b!564158 res!355457) b!564160))

(assert (= (and b!564160 res!355462) b!564156))

(assert (= (and b!564156 res!355461) b!564155))

(assert (= (and b!564155 res!355463) b!564161))

(assert (= (and b!564161 res!355460) b!564159))

(assert (= (and b!564159 res!355458) b!564157))

(declare-fun m!542623 () Bool)

(assert (=> b!564160 m!542623))

(assert (=> b!564160 m!542623))

(declare-fun m!542625 () Bool)

(assert (=> b!564160 m!542625))

(declare-fun m!542627 () Bool)

(assert (=> b!564159 m!542627))

(declare-fun m!542629 () Bool)

(assert (=> b!564155 m!542629))

(declare-fun m!542631 () Bool)

(assert (=> b!564157 m!542631))

(declare-fun m!542633 () Bool)

(assert (=> b!564156 m!542633))

(declare-fun m!542635 () Bool)

(assert (=> start!51592 m!542635))

(declare-fun m!542637 () Bool)

(assert (=> start!51592 m!542637))

(declare-fun m!542639 () Bool)

(assert (=> b!564161 m!542639))

(check-sat (not b!564157) (not start!51592) (not b!564161) (not b!564159) (not b!564156) (not b!564160) (not b!564155))
(check-sat)
