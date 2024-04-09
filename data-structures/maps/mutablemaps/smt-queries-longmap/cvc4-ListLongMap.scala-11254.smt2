; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131228 () Bool)

(assert start!131228)

(declare-fun res!1056139 () Bool)

(declare-fun e!856105 () Bool)

(assert (=> start!131228 (=> (not res!1056139) (not e!856105))))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131228 (= res!1056139 (validMask!0 mask!2480))))

(assert (=> start!131228 e!856105))

(assert (=> start!131228 true))

(declare-datatypes ((array!102220 0))(
  ( (array!102221 (arr!49320 (Array (_ BitVec 32) (_ BitVec 64))) (size!49871 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102220)

(declare-fun array_inv!38265 (array!102220) Bool)

(assert (=> start!131228 (array_inv!38265 a!2792)))

(declare-fun b!1539017 () Bool)

(declare-fun res!1056136 () Bool)

(assert (=> b!1539017 (=> (not res!1056136) (not e!856105))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1539017 (= res!1056136 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49871 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49871 a!2792)) (= (select (arr!49320 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1539018 () Bool)

(declare-fun res!1056135 () Bool)

(assert (=> b!1539018 (=> (not res!1056135) (not e!856105))))

(declare-fun j!64 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13469 0))(
  ( (MissingZero!13469 (index!56270 (_ BitVec 32))) (Found!13469 (index!56271 (_ BitVec 32))) (Intermediate!13469 (undefined!14281 Bool) (index!56272 (_ BitVec 32)) (x!137997 (_ BitVec 32))) (Undefined!13469) (MissingVacant!13469 (index!56273 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102220 (_ BitVec 32)) SeekEntryResult!13469)

(assert (=> b!1539018 (= res!1056135 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49320 a!2792) j!64) a!2792 mask!2480) (Found!13469 j!64)))))

(declare-fun b!1539019 () Bool)

(declare-fun res!1056133 () Bool)

(assert (=> b!1539019 (=> (not res!1056133) (not e!856105))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1539019 (= res!1056133 (validKeyInArray!0 (select (arr!49320 a!2792) j!64)))))

(declare-fun b!1539020 () Bool)

(declare-fun res!1056140 () Bool)

(assert (=> b!1539020 (=> (not res!1056140) (not e!856105))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102220 (_ BitVec 32)) Bool)

(assert (=> b!1539020 (= res!1056140 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1539021 () Bool)

(declare-fun res!1056138 () Bool)

(assert (=> b!1539021 (=> (not res!1056138) (not e!856105))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1539021 (= res!1056138 (and (= (size!49871 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49871 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49871 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1539022 () Bool)

(declare-fun res!1056141 () Bool)

(assert (=> b!1539022 (=> (not res!1056141) (not e!856105))))

(assert (=> b!1539022 (= res!1056141 (not (= (select (arr!49320 a!2792) index!463) (select (arr!49320 a!2792) j!64))))))

(declare-fun b!1539023 () Bool)

(declare-fun res!1056134 () Bool)

(assert (=> b!1539023 (=> (not res!1056134) (not e!856105))))

(assert (=> b!1539023 (= res!1056134 (validKeyInArray!0 (select (arr!49320 a!2792) i!951)))))

(declare-fun b!1539024 () Bool)

(declare-fun res!1056137 () Bool)

(assert (=> b!1539024 (=> (not res!1056137) (not e!856105))))

(declare-datatypes ((List!35974 0))(
  ( (Nil!35971) (Cons!35970 (h!37416 (_ BitVec 64)) (t!50675 List!35974)) )
))
(declare-fun arrayNoDuplicates!0 (array!102220 (_ BitVec 32) List!35974) Bool)

(assert (=> b!1539024 (= res!1056137 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35971))))

(declare-fun b!1539025 () Bool)

(assert (=> b!1539025 (= e!856105 false)))

(declare-fun lt!664900 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1539025 (= lt!664900 (nextIndex!0 index!463 x!510 mask!2480))))

(assert (= (and start!131228 res!1056139) b!1539021))

(assert (= (and b!1539021 res!1056138) b!1539023))

(assert (= (and b!1539023 res!1056134) b!1539019))

(assert (= (and b!1539019 res!1056133) b!1539020))

(assert (= (and b!1539020 res!1056140) b!1539024))

(assert (= (and b!1539024 res!1056137) b!1539017))

(assert (= (and b!1539017 res!1056136) b!1539018))

(assert (= (and b!1539018 res!1056135) b!1539022))

(assert (= (and b!1539022 res!1056141) b!1539025))

(declare-fun m!1421421 () Bool)

(assert (=> b!1539025 m!1421421))

(declare-fun m!1421423 () Bool)

(assert (=> b!1539022 m!1421423))

(declare-fun m!1421425 () Bool)

(assert (=> b!1539022 m!1421425))

(declare-fun m!1421427 () Bool)

(assert (=> b!1539024 m!1421427))

(declare-fun m!1421429 () Bool)

(assert (=> b!1539020 m!1421429))

(declare-fun m!1421431 () Bool)

(assert (=> b!1539023 m!1421431))

(assert (=> b!1539023 m!1421431))

(declare-fun m!1421433 () Bool)

(assert (=> b!1539023 m!1421433))

(declare-fun m!1421435 () Bool)

(assert (=> start!131228 m!1421435))

(declare-fun m!1421437 () Bool)

(assert (=> start!131228 m!1421437))

(declare-fun m!1421439 () Bool)

(assert (=> b!1539017 m!1421439))

(assert (=> b!1539019 m!1421425))

(assert (=> b!1539019 m!1421425))

(declare-fun m!1421441 () Bool)

(assert (=> b!1539019 m!1421441))

(assert (=> b!1539018 m!1421425))

(assert (=> b!1539018 m!1421425))

(declare-fun m!1421443 () Bool)

(assert (=> b!1539018 m!1421443))

(push 1)

(assert (not b!1539025))

(assert (not b!1539018))

(assert (not b!1539019))

(assert (not start!131228))

(assert (not b!1539020))

(assert (not b!1539024))

(assert (not b!1539023))

(check-sat)

