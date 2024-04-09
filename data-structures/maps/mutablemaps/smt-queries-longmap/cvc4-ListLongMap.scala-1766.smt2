; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32254 () Bool)

(assert start!32254)

(declare-fun b!320978 () Bool)

(declare-fun e!198984 () Bool)

(assert (=> b!320978 (= e!198984 false)))

(declare-datatypes ((array!16440 0))(
  ( (array!16441 (arr!7776 (Array (_ BitVec 32) (_ BitVec 64))) (size!8128 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16440)

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2918 0))(
  ( (MissingZero!2918 (index!13848 (_ BitVec 32))) (Found!2918 (index!13849 (_ BitVec 32))) (Intermediate!2918 (undefined!3730 Bool) (index!13850 (_ BitVec 32)) (x!32076 (_ BitVec 32))) (Undefined!2918) (MissingVacant!2918 (index!13851 (_ BitVec 32))) )
))
(declare-fun lt!156125 () SeekEntryResult!2918)

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16440 (_ BitVec 32)) SeekEntryResult!2918)

(assert (=> b!320978 (= lt!156125 (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777))))

(declare-fun b!320979 () Bool)

(declare-fun res!175261 () Bool)

(assert (=> b!320979 (=> (not res!175261) (not e!198984))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16440 (_ BitVec 32)) Bool)

(assert (=> b!320979 (= res!175261 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!320980 () Bool)

(declare-fun res!175260 () Bool)

(assert (=> b!320980 (=> (not res!175260) (not e!198984))))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!320980 (= res!175260 (and (= (size!8128 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8128 a!3305))))))

(declare-fun b!320981 () Bool)

(declare-fun res!175258 () Bool)

(assert (=> b!320981 (=> (not res!175258) (not e!198984))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16440 (_ BitVec 32)) SeekEntryResult!2918)

(assert (=> b!320981 (= res!175258 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!2918 i!1250)))))

(declare-fun b!320982 () Bool)

(declare-fun res!175263 () Bool)

(assert (=> b!320982 (=> (not res!175263) (not e!198984))))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!320982 (= res!175263 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) (Intermediate!2918 false resIndex!58 resX!58)))))

(declare-fun b!320983 () Bool)

(declare-fun res!175259 () Bool)

(assert (=> b!320983 (=> (not res!175259) (not e!198984))))

(assert (=> b!320983 (= res!175259 (and (= (select (arr!7776 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8128 a!3305))))))

(declare-fun b!320984 () Bool)

(declare-fun res!175256 () Bool)

(assert (=> b!320984 (=> (not res!175256) (not e!198984))))

(declare-fun arrayContainsKey!0 (array!16440 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!320984 (= res!175256 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!320985 () Bool)

(declare-fun res!175257 () Bool)

(assert (=> b!320985 (=> (not res!175257) (not e!198984))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!320985 (= res!175257 (validKeyInArray!0 k!2497))))

(declare-fun res!175262 () Bool)

(assert (=> start!32254 (=> (not res!175262) (not e!198984))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32254 (= res!175262 (validMask!0 mask!3777))))

(assert (=> start!32254 e!198984))

(declare-fun array_inv!5730 (array!16440) Bool)

(assert (=> start!32254 (array_inv!5730 a!3305)))

(assert (=> start!32254 true))

(assert (= (and start!32254 res!175262) b!320980))

(assert (= (and b!320980 res!175260) b!320985))

(assert (= (and b!320985 res!175257) b!320984))

(assert (= (and b!320984 res!175256) b!320981))

(assert (= (and b!320981 res!175258) b!320979))

(assert (= (and b!320979 res!175261) b!320982))

(assert (= (and b!320982 res!175263) b!320983))

(assert (= (and b!320983 res!175259) b!320978))

(declare-fun m!329213 () Bool)

(assert (=> b!320982 m!329213))

(assert (=> b!320982 m!329213))

(declare-fun m!329215 () Bool)

(assert (=> b!320982 m!329215))

(declare-fun m!329217 () Bool)

(assert (=> b!320981 m!329217))

(declare-fun m!329219 () Bool)

(assert (=> b!320983 m!329219))

(declare-fun m!329221 () Bool)

(assert (=> b!320984 m!329221))

(declare-fun m!329223 () Bool)

(assert (=> start!32254 m!329223))

(declare-fun m!329225 () Bool)

(assert (=> start!32254 m!329225))

(declare-fun m!329227 () Bool)

(assert (=> b!320978 m!329227))

(declare-fun m!329229 () Bool)

(assert (=> b!320979 m!329229))

(declare-fun m!329231 () Bool)

(assert (=> b!320985 m!329231))

(push 1)

(assert (not start!32254))

(assert (not b!320985))

(assert (not b!320981))

(assert (not b!320978))

(assert (not b!320984))

(assert (not b!320982))

(assert (not b!320979))

(check-sat)

(pop 1)

(push 1)

(check-sat)

