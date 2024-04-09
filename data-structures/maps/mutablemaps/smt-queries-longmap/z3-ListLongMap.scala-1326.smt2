; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26526 () Bool)

(assert start!26526)

(declare-fun b!275200 () Bool)

(declare-fun res!139231 () Bool)

(declare-fun e!176078 () Bool)

(assert (=> b!275200 (=> (not res!139231) (not e!176078))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!275200 (= res!139231 (validKeyInArray!0 k0!2581))))

(declare-fun b!275201 () Bool)

(declare-fun e!176080 () Bool)

(assert (=> b!275201 (= e!176080 false)))

(declare-fun lt!137345 () Bool)

(declare-datatypes ((array!13612 0))(
  ( (array!13613 (arr!6455 (Array (_ BitVec 32) (_ BitVec 64))) (size!6807 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13612)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13612 (_ BitVec 32)) Bool)

(assert (=> b!275201 (= lt!137345 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!275202 () Bool)

(declare-fun res!139230 () Bool)

(assert (=> b!275202 (=> (not res!139230) (not e!176078))))

(declare-fun arrayContainsKey!0 (array!13612 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!275202 (= res!139230 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!275203 () Bool)

(declare-fun res!139233 () Bool)

(assert (=> b!275203 (=> (not res!139233) (not e!176078))))

(declare-datatypes ((List!4284 0))(
  ( (Nil!4281) (Cons!4280 (h!4947 (_ BitVec 64)) (t!9374 List!4284)) )
))
(declare-fun arrayNoDuplicates!0 (array!13612 (_ BitVec 32) List!4284) Bool)

(assert (=> b!275203 (= res!139233 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4281))))

(declare-fun res!139228 () Bool)

(assert (=> start!26526 (=> (not res!139228) (not e!176078))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26526 (= res!139228 (validMask!0 mask!3868))))

(assert (=> start!26526 e!176078))

(declare-fun array_inv!4409 (array!13612) Bool)

(assert (=> start!26526 (array_inv!4409 a!3325)))

(assert (=> start!26526 true))

(declare-fun b!275204 () Bool)

(assert (=> b!275204 (= e!176078 e!176080)))

(declare-fun res!139229 () Bool)

(assert (=> b!275204 (=> (not res!139229) (not e!176080))))

(declare-datatypes ((SeekEntryResult!1624 0))(
  ( (MissingZero!1624 (index!8666 (_ BitVec 32))) (Found!1624 (index!8667 (_ BitVec 32))) (Intermediate!1624 (undefined!2436 Bool) (index!8668 (_ BitVec 32)) (x!26917 (_ BitVec 32))) (Undefined!1624) (MissingVacant!1624 (index!8669 (_ BitVec 32))) )
))
(declare-fun lt!137344 () SeekEntryResult!1624)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!275204 (= res!139229 (or (= lt!137344 (MissingZero!1624 i!1267)) (= lt!137344 (MissingVacant!1624 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13612 (_ BitVec 32)) SeekEntryResult!1624)

(assert (=> b!275204 (= lt!137344 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!275205 () Bool)

(declare-fun res!139232 () Bool)

(assert (=> b!275205 (=> (not res!139232) (not e!176078))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!275205 (= res!139232 (and (= (size!6807 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6807 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6807 a!3325))))))

(assert (= (and start!26526 res!139228) b!275205))

(assert (= (and b!275205 res!139232) b!275200))

(assert (= (and b!275200 res!139231) b!275203))

(assert (= (and b!275203 res!139233) b!275202))

(assert (= (and b!275202 res!139230) b!275204))

(assert (= (and b!275204 res!139229) b!275201))

(declare-fun m!290853 () Bool)

(assert (=> b!275201 m!290853))

(declare-fun m!290855 () Bool)

(assert (=> start!26526 m!290855))

(declare-fun m!290857 () Bool)

(assert (=> start!26526 m!290857))

(declare-fun m!290859 () Bool)

(assert (=> b!275200 m!290859))

(declare-fun m!290861 () Bool)

(assert (=> b!275203 m!290861))

(declare-fun m!290863 () Bool)

(assert (=> b!275202 m!290863))

(declare-fun m!290865 () Bool)

(assert (=> b!275204 m!290865))

(check-sat (not b!275204) (not b!275201) (not b!275202) (not b!275200) (not start!26526) (not b!275203))
(check-sat)
