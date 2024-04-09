; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31440 () Bool)

(assert start!31440)

(declare-fun b!314623 () Bool)

(declare-fun res!170390 () Bool)

(declare-fun e!195923 () Bool)

(assert (=> b!314623 (=> (not res!170390) (not e!195923))))

(declare-datatypes ((array!16064 0))(
  ( (array!16065 (arr!7603 (Array (_ BitVec 32) (_ BitVec 64))) (size!7955 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!16064)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16064 (_ BitVec 32)) Bool)

(assert (=> b!314623 (= res!170390 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!314624 () Bool)

(declare-fun e!195922 () Bool)

(declare-fun e!195925 () Bool)

(assert (=> b!314624 (= e!195922 e!195925)))

(declare-fun res!170395 () Bool)

(assert (=> b!314624 (=> (not res!170395) (not e!195925))))

(declare-datatypes ((SeekEntryResult!2754 0))(
  ( (MissingZero!2754 (index!13192 (_ BitVec 32))) (Found!2754 (index!13193 (_ BitVec 32))) (Intermediate!2754 (undefined!3566 Bool) (index!13194 (_ BitVec 32)) (x!31393 (_ BitVec 32))) (Undefined!2754) (MissingVacant!2754 (index!13195 (_ BitVec 32))) )
))
(declare-fun lt!153995 () SeekEntryResult!2754)

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun lt!153994 () SeekEntryResult!2754)

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!314624 (= res!170395 (and (= lt!153994 lt!153995) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7603 a!3293) index!1781) k!2441)) (= x!1427 resX!52) (not (= resIndex!52 index!1781)) (or (= (select (arr!7603 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7603 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16064 (_ BitVec 32)) SeekEntryResult!2754)

(assert (=> b!314624 (= lt!153994 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!314625 () Bool)

(assert (=> b!314625 (= e!195923 e!195922)))

(declare-fun res!170392 () Bool)

(assert (=> b!314625 (=> (not res!170392) (not e!195922))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!314625 (= res!170392 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!153995))))

(assert (=> b!314625 (= lt!153995 (Intermediate!2754 false resIndex!52 resX!52))))

(declare-fun b!314626 () Bool)

(declare-fun res!170394 () Bool)

(assert (=> b!314626 (=> (not res!170394) (not e!195923))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!314626 (= res!170394 (and (= (size!7955 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7955 a!3293))))))

(declare-fun b!314627 () Bool)

(declare-fun res!170393 () Bool)

(assert (=> b!314627 (=> (not res!170393) (not e!195923))))

(declare-fun arrayContainsKey!0 (array!16064 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!314627 (= res!170393 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!314629 () Bool)

(declare-fun res!170389 () Bool)

(assert (=> b!314629 (=> (not res!170389) (not e!195922))))

(assert (=> b!314629 (= res!170389 (and (= (select (arr!7603 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7955 a!3293))))))

(declare-fun b!314630 () Bool)

(declare-fun res!170397 () Bool)

(assert (=> b!314630 (=> (not res!170397) (not e!195923))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!314630 (= res!170397 (validKeyInArray!0 k!2441))))

(declare-fun b!314631 () Bool)

(declare-fun res!170391 () Bool)

(assert (=> b!314631 (=> (not res!170391) (not e!195923))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16064 (_ BitVec 32)) SeekEntryResult!2754)

(assert (=> b!314631 (= res!170391 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2754 i!1240)))))

(declare-fun res!170396 () Bool)

(assert (=> start!31440 (=> (not res!170396) (not e!195923))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31440 (= res!170396 (validMask!0 mask!3709))))

(assert (=> start!31440 e!195923))

(declare-fun array_inv!5557 (array!16064) Bool)

(assert (=> start!31440 (array_inv!5557 a!3293)))

(assert (=> start!31440 true))

(declare-fun b!314628 () Bool)

(assert (=> b!314628 (= e!195925 (not false))))

(assert (=> b!314628 (= lt!153994 (Intermediate!2754 false index!1781 resX!52))))

(assert (= (and start!31440 res!170396) b!314626))

(assert (= (and b!314626 res!170394) b!314630))

(assert (= (and b!314630 res!170397) b!314627))

(assert (= (and b!314627 res!170393) b!314631))

(assert (= (and b!314631 res!170391) b!314623))

(assert (= (and b!314623 res!170390) b!314625))

(assert (= (and b!314625 res!170392) b!314629))

(assert (= (and b!314629 res!170389) b!314624))

(assert (= (and b!314624 res!170395) b!314628))

(declare-fun m!324097 () Bool)

(assert (=> b!314627 m!324097))

(declare-fun m!324099 () Bool)

(assert (=> start!31440 m!324099))

(declare-fun m!324101 () Bool)

(assert (=> start!31440 m!324101))

(declare-fun m!324103 () Bool)

(assert (=> b!314624 m!324103))

(declare-fun m!324105 () Bool)

(assert (=> b!314624 m!324105))

(declare-fun m!324107 () Bool)

(assert (=> b!314625 m!324107))

(assert (=> b!314625 m!324107))

(declare-fun m!324109 () Bool)

(assert (=> b!314625 m!324109))

(declare-fun m!324111 () Bool)

(assert (=> b!314631 m!324111))

(declare-fun m!324113 () Bool)

(assert (=> b!314629 m!324113))

(declare-fun m!324115 () Bool)

(assert (=> b!314623 m!324115))

(declare-fun m!324117 () Bool)

(assert (=> b!314630 m!324117))

(push 1)

