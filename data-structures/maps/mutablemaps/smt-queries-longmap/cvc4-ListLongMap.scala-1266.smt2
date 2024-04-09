; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26168 () Bool)

(assert start!26168)

(declare-fun res!134183 () Bool)

(declare-fun e!174133 () Bool)

(assert (=> start!26168 (=> (not res!134183) (not e!174133))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26168 (= res!134183 (validMask!0 mask!3868))))

(assert (=> start!26168 e!174133))

(declare-datatypes ((array!13254 0))(
  ( (array!13255 (arr!6276 (Array (_ BitVec 32) (_ BitVec 64))) (size!6628 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13254)

(declare-fun array_inv!4230 (array!13254) Bool)

(assert (=> start!26168 (array_inv!4230 a!3325)))

(assert (=> start!26168 true))

(declare-fun b!270075 () Bool)

(declare-fun res!134177 () Bool)

(assert (=> b!270075 (=> (not res!134177) (not e!174133))))

(declare-datatypes ((List!4105 0))(
  ( (Nil!4102) (Cons!4101 (h!4768 (_ BitVec 64)) (t!9195 List!4105)) )
))
(declare-fun arrayNoDuplicates!0 (array!13254 (_ BitVec 32) List!4105) Bool)

(assert (=> b!270075 (= res!134177 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4102))))

(declare-fun b!270076 () Bool)

(declare-fun e!174132 () Bool)

(declare-fun e!174135 () Bool)

(assert (=> b!270076 (= e!174132 e!174135)))

(declare-fun res!134184 () Bool)

(assert (=> b!270076 (=> (not res!134184) (not e!174135))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!270076 (= res!134184 (= startIndex!26 i!1267))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun lt!135496 () array!13254)

(assert (=> b!270076 (= lt!135496 (array!13255 (store (arr!6276 a!3325) i!1267 k!2581) (size!6628 a!3325)))))

(declare-fun b!270077 () Bool)

(declare-fun res!134178 () Bool)

(assert (=> b!270077 (=> (not res!134178) (not e!174132))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13254 (_ BitVec 32)) Bool)

(assert (=> b!270077 (= res!134178 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!270078 () Bool)

(declare-datatypes ((Unit!8409 0))(
  ( (Unit!8410) )
))
(declare-fun e!174136 () Unit!8409)

(declare-fun Unit!8411 () Unit!8409)

(assert (=> b!270078 (= e!174136 Unit!8411)))

(declare-fun b!270079 () Bool)

(declare-fun res!134179 () Bool)

(assert (=> b!270079 (=> (not res!134179) (not e!174133))))

(declare-fun arrayContainsKey!0 (array!13254 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!270079 (= res!134179 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!270080 () Bool)

(assert (=> b!270080 (= e!174135 (not true))))

(declare-datatypes ((SeekEntryResult!1445 0))(
  ( (MissingZero!1445 (index!7950 (_ BitVec 32))) (Found!1445 (index!7951 (_ BitVec 32))) (Intermediate!1445 (undefined!2257 Bool) (index!7952 (_ BitVec 32)) (x!26258 (_ BitVec 32))) (Undefined!1445) (MissingVacant!1445 (index!7953 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13254 (_ BitVec 32)) SeekEntryResult!1445)

(assert (=> b!270080 (= (seekEntryOrOpen!0 k!2581 lt!135496 mask!3868) (Found!1445 i!1267))))

(declare-fun lt!135494 () Unit!8409)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFinds!0 (array!13254 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!8409)

(assert (=> b!270080 (= lt!135494 (lemmaPutValidKeyAtRightPlaceThenFinds!0 a!3325 i!1267 k!2581 mask!3868))))

(declare-fun lt!135495 () Unit!8409)

(assert (=> b!270080 (= lt!135495 e!174136)))

(declare-fun c!45500 () Bool)

(assert (=> b!270080 (= c!45500 (bvslt startIndex!26 (bvsub (size!6628 a!3325) #b00000000000000000000000000000001)))))

(declare-fun b!270081 () Bool)

(declare-fun lt!135497 () Unit!8409)

(assert (=> b!270081 (= e!174136 lt!135497)))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!13254 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8409)

(assert (=> b!270081 (= lt!135497 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(assert (=> b!270081 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) lt!135496 mask!3868)))

(declare-fun b!270082 () Bool)

(declare-fun res!134180 () Bool)

(assert (=> b!270082 (=> (not res!134180) (not e!174133))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!270082 (= res!134180 (validKeyInArray!0 k!2581))))

(declare-fun b!270083 () Bool)

(assert (=> b!270083 (= e!174133 e!174132)))

(declare-fun res!134182 () Bool)

(assert (=> b!270083 (=> (not res!134182) (not e!174132))))

(declare-fun lt!135493 () SeekEntryResult!1445)

(assert (=> b!270083 (= res!134182 (or (= lt!135493 (MissingZero!1445 i!1267)) (= lt!135493 (MissingVacant!1445 i!1267))))))

(assert (=> b!270083 (= lt!135493 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!270084 () Bool)

(declare-fun res!134181 () Bool)

(assert (=> b!270084 (=> (not res!134181) (not e!174133))))

(assert (=> b!270084 (= res!134181 (and (= (size!6628 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6628 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6628 a!3325))))))

(assert (= (and start!26168 res!134183) b!270084))

(assert (= (and b!270084 res!134181) b!270082))

(assert (= (and b!270082 res!134180) b!270075))

(assert (= (and b!270075 res!134177) b!270079))

(assert (= (and b!270079 res!134179) b!270083))

(assert (= (and b!270083 res!134182) b!270077))

(assert (= (and b!270077 res!134178) b!270076))

(assert (= (and b!270076 res!134184) b!270080))

(assert (= (and b!270080 c!45500) b!270081))

(assert (= (and b!270080 (not c!45500)) b!270078))

(declare-fun m!285793 () Bool)

(assert (=> b!270075 m!285793))

(declare-fun m!285795 () Bool)

(assert (=> b!270082 m!285795))

(declare-fun m!285797 () Bool)

(assert (=> b!270076 m!285797))

(declare-fun m!285799 () Bool)

(assert (=> b!270081 m!285799))

(declare-fun m!285801 () Bool)

(assert (=> b!270081 m!285801))

(declare-fun m!285803 () Bool)

(assert (=> start!26168 m!285803))

(declare-fun m!285805 () Bool)

(assert (=> start!26168 m!285805))

(declare-fun m!285807 () Bool)

(assert (=> b!270083 m!285807))

(declare-fun m!285809 () Bool)

(assert (=> b!270079 m!285809))

(declare-fun m!285811 () Bool)

(assert (=> b!270080 m!285811))

(declare-fun m!285813 () Bool)

(assert (=> b!270080 m!285813))

(declare-fun m!285815 () Bool)

(assert (=> b!270077 m!285815))

(push 1)

(assert (not b!270083))

(assert (not b!270080))

(assert (not b!270081))

(assert (not b!270079))

(assert (not b!270075))

(assert (not start!26168))

(assert (not b!270077))

(assert (not b!270082))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

