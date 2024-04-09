; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26230 () Bool)

(assert start!26230)

(declare-fun b!271173 () Bool)

(declare-fun res!135212 () Bool)

(declare-fun e!174486 () Bool)

(assert (=> b!271173 (=> (not res!135212) (not e!174486))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!271173 (= res!135212 (validKeyInArray!0 k!2581))))

(declare-fun b!271174 () Bool)

(declare-fun res!135202 () Bool)

(declare-fun e!174485 () Bool)

(assert (=> b!271174 (=> (not res!135202) (not e!174485))))

(declare-datatypes ((List!4136 0))(
  ( (Nil!4133) (Cons!4132 (h!4799 (_ BitVec 64)) (t!9226 List!4136)) )
))
(declare-fun contains!1945 (List!4136 (_ BitVec 64)) Bool)

(assert (=> b!271174 (= res!135202 (not (contains!1945 Nil!4133 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!271175 () Bool)

(assert (=> b!271175 (= e!174485 false)))

(declare-fun lt!135791 () Bool)

(assert (=> b!271175 (= lt!135791 (contains!1945 Nil!4133 k!2581))))

(declare-fun b!271176 () Bool)

(declare-fun res!135213 () Bool)

(assert (=> b!271176 (=> (not res!135213) (not e!174485))))

(declare-fun noDuplicate!134 (List!4136) Bool)

(assert (=> b!271176 (= res!135213 (noDuplicate!134 Nil!4133))))

(declare-fun b!271177 () Bool)

(declare-fun res!135207 () Bool)

(assert (=> b!271177 (=> (not res!135207) (not e!174485))))

(declare-datatypes ((array!13316 0))(
  ( (array!13317 (arr!6307 (Array (_ BitVec 32) (_ BitVec 64))) (size!6659 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13316)

(assert (=> b!271177 (= res!135207 (and (bvslt (size!6659 a!3325) #b01111111111111111111111111111111) (bvslt #b00000000000000000000000000000000 (size!6659 a!3325))))))

(declare-fun b!271178 () Bool)

(declare-fun res!135210 () Bool)

(assert (=> b!271178 (=> (not res!135210) (not e!174486))))

(declare-fun arrayNoDuplicates!0 (array!13316 (_ BitVec 32) List!4136) Bool)

(assert (=> b!271178 (= res!135210 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4133))))

(declare-fun b!271179 () Bool)

(declare-fun res!135208 () Bool)

(assert (=> b!271179 (=> (not res!135208) (not e!174485))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!271179 (= res!135208 (validKeyInArray!0 (select (arr!6307 a!3325) startIndex!26)))))

(declare-fun b!271180 () Bool)

(declare-fun res!135211 () Bool)

(assert (=> b!271180 (=> (not res!135211) (not e!174485))))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!271180 (= res!135211 (not (= startIndex!26 i!1267)))))

(declare-fun res!135209 () Bool)

(assert (=> start!26230 (=> (not res!135209) (not e!174486))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26230 (= res!135209 (validMask!0 mask!3868))))

(assert (=> start!26230 e!174486))

(declare-fun array_inv!4261 (array!13316) Bool)

(assert (=> start!26230 (array_inv!4261 a!3325)))

(assert (=> start!26230 true))

(declare-fun b!271181 () Bool)

(declare-fun res!135204 () Bool)

(assert (=> b!271181 (=> (not res!135204) (not e!174485))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13316 (_ BitVec 32)) Bool)

(assert (=> b!271181 (= res!135204 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!271182 () Bool)

(declare-fun res!135201 () Bool)

(assert (=> b!271182 (=> (not res!135201) (not e!174486))))

(declare-fun arrayContainsKey!0 (array!13316 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!271182 (= res!135201 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!271183 () Bool)

(declare-fun res!135203 () Bool)

(assert (=> b!271183 (=> (not res!135203) (not e!174486))))

(assert (=> b!271183 (= res!135203 (and (= (size!6659 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6659 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6659 a!3325))))))

(declare-fun b!271184 () Bool)

(declare-fun res!135206 () Bool)

(assert (=> b!271184 (=> (not res!135206) (not e!174485))))

(assert (=> b!271184 (= res!135206 (not (contains!1945 Nil!4133 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!271185 () Bool)

(assert (=> b!271185 (= e!174486 e!174485)))

(declare-fun res!135205 () Bool)

(assert (=> b!271185 (=> (not res!135205) (not e!174485))))

(declare-datatypes ((SeekEntryResult!1476 0))(
  ( (MissingZero!1476 (index!8074 (_ BitVec 32))) (Found!1476 (index!8075 (_ BitVec 32))) (Intermediate!1476 (undefined!2288 Bool) (index!8076 (_ BitVec 32)) (x!26377 (_ BitVec 32))) (Undefined!1476) (MissingVacant!1476 (index!8077 (_ BitVec 32))) )
))
(declare-fun lt!135790 () SeekEntryResult!1476)

(assert (=> b!271185 (= res!135205 (or (= lt!135790 (MissingZero!1476 i!1267)) (= lt!135790 (MissingVacant!1476 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13316 (_ BitVec 32)) SeekEntryResult!1476)

(assert (=> b!271185 (= lt!135790 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(assert (= (and start!26230 res!135209) b!271183))

(assert (= (and b!271183 res!135203) b!271173))

(assert (= (and b!271173 res!135212) b!271178))

(assert (= (and b!271178 res!135210) b!271182))

(assert (= (and b!271182 res!135201) b!271185))

(assert (= (and b!271185 res!135205) b!271181))

(assert (= (and b!271181 res!135204) b!271180))

(assert (= (and b!271180 res!135211) b!271179))

(assert (= (and b!271179 res!135208) b!271177))

(assert (= (and b!271177 res!135207) b!271176))

(assert (= (and b!271176 res!135213) b!271174))

(assert (= (and b!271174 res!135202) b!271184))

(assert (= (and b!271184 res!135206) b!271175))

(declare-fun m!286573 () Bool)

(assert (=> b!271176 m!286573))

(declare-fun m!286575 () Bool)

(assert (=> start!26230 m!286575))

(declare-fun m!286577 () Bool)

(assert (=> start!26230 m!286577))

(declare-fun m!286579 () Bool)

(assert (=> b!271181 m!286579))

(declare-fun m!286581 () Bool)

(assert (=> b!271185 m!286581))

(declare-fun m!286583 () Bool)

(assert (=> b!271173 m!286583))

(declare-fun m!286585 () Bool)

(assert (=> b!271175 m!286585))

(declare-fun m!286587 () Bool)

(assert (=> b!271184 m!286587))

(declare-fun m!286589 () Bool)

(assert (=> b!271174 m!286589))

(declare-fun m!286591 () Bool)

(assert (=> b!271178 m!286591))

(declare-fun m!286593 () Bool)

(assert (=> b!271182 m!286593))

(declare-fun m!286595 () Bool)

(assert (=> b!271179 m!286595))

(assert (=> b!271179 m!286595))

(declare-fun m!286597 () Bool)

(assert (=> b!271179 m!286597))

(push 1)

