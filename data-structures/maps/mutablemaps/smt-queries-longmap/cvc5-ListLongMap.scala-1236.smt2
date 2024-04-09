; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25984 () Bool)

(assert start!25984)

(declare-fun b!268007 () Bool)

(declare-fun res!132323 () Bool)

(declare-fun e!173188 () Bool)

(assert (=> b!268007 (=> (not res!132323) (not e!173188))))

(declare-datatypes ((array!13070 0))(
  ( (array!13071 (arr!6184 (Array (_ BitVec 32) (_ BitVec 64))) (size!6536 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13070)

(declare-datatypes ((List!4013 0))(
  ( (Nil!4010) (Cons!4009 (h!4676 (_ BitVec 64)) (t!9103 List!4013)) )
))
(declare-fun arrayNoDuplicates!0 (array!13070 (_ BitVec 32) List!4013) Bool)

(assert (=> b!268007 (= res!132323 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4010))))

(declare-fun b!268008 () Bool)

(declare-fun res!132326 () Bool)

(assert (=> b!268008 (=> (not res!132326) (not e!173188))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!268008 (= res!132326 (validKeyInArray!0 k!2581))))

(declare-fun b!268009 () Bool)

(declare-fun res!132324 () Bool)

(assert (=> b!268009 (=> (not res!132324) (not e!173188))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!268009 (= res!132324 (and (= (size!6536 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6536 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6536 a!3325))))))

(declare-fun b!268010 () Bool)

(declare-fun res!132325 () Bool)

(assert (=> b!268010 (=> (not res!132325) (not e!173188))))

(declare-fun arrayContainsKey!0 (array!13070 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!268010 (= res!132325 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun res!132327 () Bool)

(assert (=> start!25984 (=> (not res!132327) (not e!173188))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25984 (= res!132327 (validMask!0 mask!3868))))

(assert (=> start!25984 e!173188))

(declare-fun array_inv!4138 (array!13070) Bool)

(assert (=> start!25984 (array_inv!4138 a!3325)))

(assert (=> start!25984 true))

(declare-fun b!268011 () Bool)

(assert (=> b!268011 (= e!173188 false)))

(declare-datatypes ((SeekEntryResult!1353 0))(
  ( (MissingZero!1353 (index!7582 (_ BitVec 32))) (Found!1353 (index!7583 (_ BitVec 32))) (Intermediate!1353 (undefined!2165 Bool) (index!7584 (_ BitVec 32)) (x!25926 (_ BitVec 32))) (Undefined!1353) (MissingVacant!1353 (index!7585 (_ BitVec 32))) )
))
(declare-fun lt!134798 () SeekEntryResult!1353)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13070 (_ BitVec 32)) SeekEntryResult!1353)

(assert (=> b!268011 (= lt!134798 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(assert (= (and start!25984 res!132327) b!268009))

(assert (= (and b!268009 res!132324) b!268008))

(assert (= (and b!268008 res!132326) b!268007))

(assert (= (and b!268007 res!132323) b!268010))

(assert (= (and b!268010 res!132325) b!268011))

(declare-fun m!284269 () Bool)

(assert (=> b!268010 m!284269))

(declare-fun m!284271 () Bool)

(assert (=> start!25984 m!284271))

(declare-fun m!284273 () Bool)

(assert (=> start!25984 m!284273))

(declare-fun m!284275 () Bool)

(assert (=> b!268011 m!284275))

(declare-fun m!284277 () Bool)

(assert (=> b!268007 m!284277))

(declare-fun m!284279 () Bool)

(assert (=> b!268008 m!284279))

(push 1)

(assert (not b!268010))

(assert (not b!268011))

(assert (not start!25984))

(assert (not b!268007))

(assert (not b!268008))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

