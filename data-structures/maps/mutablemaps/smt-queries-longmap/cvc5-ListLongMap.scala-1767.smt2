; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32256 () Bool)

(assert start!32256)

(declare-fun b!321002 () Bool)

(declare-fun e!198990 () Bool)

(assert (=> b!321002 (= e!198990 false)))

(declare-datatypes ((array!16442 0))(
  ( (array!16443 (arr!7777 (Array (_ BitVec 32) (_ BitVec 64))) (size!8129 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16442)

(declare-datatypes ((SeekEntryResult!2919 0))(
  ( (MissingZero!2919 (index!13852 (_ BitVec 32))) (Found!2919 (index!13853 (_ BitVec 32))) (Intermediate!2919 (undefined!3731 Bool) (index!13854 (_ BitVec 32)) (x!32085 (_ BitVec 32))) (Undefined!2919) (MissingVacant!2919 (index!13855 (_ BitVec 32))) )
))
(declare-fun lt!156128 () SeekEntryResult!2919)

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16442 (_ BitVec 32)) SeekEntryResult!2919)

(assert (=> b!321002 (= lt!156128 (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777))))

(declare-fun b!321003 () Bool)

(declare-fun res!175286 () Bool)

(assert (=> b!321003 (=> (not res!175286) (not e!198990))))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!321003 (= res!175286 (and (= (size!8129 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8129 a!3305))))))

(declare-fun b!321004 () Bool)

(declare-fun res!175281 () Bool)

(assert (=> b!321004 (=> (not res!175281) (not e!198990))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!321004 (= res!175281 (validKeyInArray!0 k!2497))))

(declare-fun b!321005 () Bool)

(declare-fun res!175285 () Bool)

(assert (=> b!321005 (=> (not res!175285) (not e!198990))))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun resIndex!58 () (_ BitVec 32))

(assert (=> b!321005 (= res!175285 (and (= (select (arr!7777 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8129 a!3305))))))

(declare-fun b!321006 () Bool)

(declare-fun res!175287 () Bool)

(assert (=> b!321006 (=> (not res!175287) (not e!198990))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16442 (_ BitVec 32)) Bool)

(assert (=> b!321006 (= res!175287 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!321007 () Bool)

(declare-fun res!175283 () Bool)

(assert (=> b!321007 (=> (not res!175283) (not e!198990))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16442 (_ BitVec 32)) SeekEntryResult!2919)

(assert (=> b!321007 (= res!175283 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!2919 i!1250)))))

(declare-fun b!321008 () Bool)

(declare-fun res!175282 () Bool)

(assert (=> b!321008 (=> (not res!175282) (not e!198990))))

(declare-fun arrayContainsKey!0 (array!16442 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!321008 (= res!175282 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!321009 () Bool)

(declare-fun res!175284 () Bool)

(assert (=> b!321009 (=> (not res!175284) (not e!198990))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!321009 (= res!175284 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) (Intermediate!2919 false resIndex!58 resX!58)))))

(declare-fun res!175280 () Bool)

(assert (=> start!32256 (=> (not res!175280) (not e!198990))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32256 (= res!175280 (validMask!0 mask!3777))))

(assert (=> start!32256 e!198990))

(declare-fun array_inv!5731 (array!16442) Bool)

(assert (=> start!32256 (array_inv!5731 a!3305)))

(assert (=> start!32256 true))

(assert (= (and start!32256 res!175280) b!321003))

(assert (= (and b!321003 res!175286) b!321004))

(assert (= (and b!321004 res!175281) b!321008))

(assert (= (and b!321008 res!175282) b!321007))

(assert (= (and b!321007 res!175283) b!321006))

(assert (= (and b!321006 res!175287) b!321009))

(assert (= (and b!321009 res!175284) b!321005))

(assert (= (and b!321005 res!175285) b!321002))

(declare-fun m!329233 () Bool)

(assert (=> start!32256 m!329233))

(declare-fun m!329235 () Bool)

(assert (=> start!32256 m!329235))

(declare-fun m!329237 () Bool)

(assert (=> b!321009 m!329237))

(assert (=> b!321009 m!329237))

(declare-fun m!329239 () Bool)

(assert (=> b!321009 m!329239))

(declare-fun m!329241 () Bool)

(assert (=> b!321006 m!329241))

(declare-fun m!329243 () Bool)

(assert (=> b!321007 m!329243))

(declare-fun m!329245 () Bool)

(assert (=> b!321004 m!329245))

(declare-fun m!329247 () Bool)

(assert (=> b!321008 m!329247))

(declare-fun m!329249 () Bool)

(assert (=> b!321002 m!329249))

(declare-fun m!329251 () Bool)

(assert (=> b!321005 m!329251))

(push 1)

(assert (not b!321009))

(assert (not b!321008))

(assert (not start!32256))

(assert (not b!321002))

(assert (not b!321004))

(assert (not b!321006))

(assert (not b!321007))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

