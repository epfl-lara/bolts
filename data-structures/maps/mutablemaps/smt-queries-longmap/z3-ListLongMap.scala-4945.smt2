; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68076 () Bool)

(assert start!68076)

(declare-fun b!791636 () Bool)

(declare-fun res!536543 () Bool)

(declare-fun e!439923 () Bool)

(assert (=> b!791636 (=> (not res!536543) (not e!439923))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!791636 (= res!536543 (validKeyInArray!0 k0!2044))))

(declare-fun res!536542 () Bool)

(assert (=> start!68076 (=> (not res!536542) (not e!439923))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68076 (= res!536542 (validMask!0 mask!3266))))

(assert (=> start!68076 e!439923))

(assert (=> start!68076 true))

(declare-datatypes ((array!42934 0))(
  ( (array!42935 (arr!20548 (Array (_ BitVec 32) (_ BitVec 64))) (size!20969 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!42934)

(declare-fun array_inv!16322 (array!42934) Bool)

(assert (=> start!68076 (array_inv!16322 a!3170)))

(declare-fun b!791637 () Bool)

(declare-fun res!536545 () Bool)

(assert (=> b!791637 (=> (not res!536545) (not e!439923))))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!791637 (= res!536545 (validKeyInArray!0 (select (arr!20548 a!3170) j!153)))))

(declare-fun b!791638 () Bool)

(declare-fun res!536541 () Bool)

(assert (=> b!791638 (=> (not res!536541) (not e!439923))))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!791638 (= res!536541 (and (= (size!20969 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!20969 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!20969 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!791639 () Bool)

(assert (=> b!791639 (= e!439923 false)))

(declare-datatypes ((SeekEntryResult!8146 0))(
  ( (MissingZero!8146 (index!34951 (_ BitVec 32))) (Found!8146 (index!34952 (_ BitVec 32))) (Intermediate!8146 (undefined!8958 Bool) (index!34953 (_ BitVec 32)) (x!65937 (_ BitVec 32))) (Undefined!8146) (MissingVacant!8146 (index!34954 (_ BitVec 32))) )
))
(declare-fun lt!353254 () SeekEntryResult!8146)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42934 (_ BitVec 32)) SeekEntryResult!8146)

(assert (=> b!791639 (= lt!353254 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!791640 () Bool)

(declare-fun res!536544 () Bool)

(assert (=> b!791640 (=> (not res!536544) (not e!439923))))

(declare-fun arrayContainsKey!0 (array!42934 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!791640 (= res!536544 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(assert (= (and start!68076 res!536542) b!791638))

(assert (= (and b!791638 res!536541) b!791637))

(assert (= (and b!791637 res!536545) b!791636))

(assert (= (and b!791636 res!536543) b!791640))

(assert (= (and b!791640 res!536544) b!791639))

(declare-fun m!732429 () Bool)

(assert (=> b!791640 m!732429))

(declare-fun m!732431 () Bool)

(assert (=> b!791637 m!732431))

(assert (=> b!791637 m!732431))

(declare-fun m!732433 () Bool)

(assert (=> b!791637 m!732433))

(declare-fun m!732435 () Bool)

(assert (=> b!791639 m!732435))

(declare-fun m!732437 () Bool)

(assert (=> b!791636 m!732437))

(declare-fun m!732439 () Bool)

(assert (=> start!68076 m!732439))

(declare-fun m!732441 () Bool)

(assert (=> start!68076 m!732441))

(check-sat (not b!791640) (not start!68076) (not b!791639) (not b!791636) (not b!791637))
