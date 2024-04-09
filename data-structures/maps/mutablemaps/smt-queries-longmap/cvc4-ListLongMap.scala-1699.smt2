; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31090 () Bool)

(assert start!31090)

(declare-fun b!312624 () Bool)

(declare-fun res!169239 () Bool)

(declare-fun e!194903 () Bool)

(assert (=> b!312624 (=> (not res!169239) (not e!194903))))

(declare-datatypes ((array!15990 0))(
  ( (array!15991 (arr!7575 (Array (_ BitVec 32) (_ BitVec 64))) (size!7927 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15990)

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!312624 (= res!169239 (and (= (select (arr!7575 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7927 a!3293))))))

(declare-fun b!312625 () Bool)

(declare-fun res!169236 () Bool)

(declare-fun e!194904 () Bool)

(assert (=> b!312625 (=> (not res!169236) (not e!194904))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!312625 (= res!169236 (validKeyInArray!0 k!2441))))

(declare-fun b!312626 () Bool)

(declare-fun res!169244 () Bool)

(assert (=> b!312626 (=> (not res!169244) (not e!194904))))

(declare-fun mask!3709 () (_ BitVec 32))

(assert (=> b!312626 (= res!169244 (and (= (size!7927 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7927 a!3293))))))

(declare-fun b!312627 () Bool)

(declare-fun e!194905 () Bool)

(assert (=> b!312627 (= e!194903 e!194905)))

(declare-fun res!169242 () Bool)

(assert (=> b!312627 (=> (not res!169242) (not e!194905))))

(declare-datatypes ((SeekEntryResult!2726 0))(
  ( (MissingZero!2726 (index!13080 (_ BitVec 32))) (Found!2726 (index!13081 (_ BitVec 32))) (Intermediate!2726 (undefined!3538 Bool) (index!13082 (_ BitVec 32)) (x!31246 (_ BitVec 32))) (Undefined!2726) (MissingVacant!2726 (index!13083 (_ BitVec 32))) )
))
(declare-fun lt!153303 () SeekEntryResult!2726)

(declare-fun lt!153300 () SeekEntryResult!2726)

(assert (=> b!312627 (= res!169242 (and (= lt!153300 lt!153303) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7575 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15990 (_ BitVec 32)) SeekEntryResult!2726)

(assert (=> b!312627 (= lt!153300 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!312629 () Bool)

(declare-fun res!169240 () Bool)

(assert (=> b!312629 (=> (not res!169240) (not e!194904))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15990 (_ BitVec 32)) Bool)

(assert (=> b!312629 (= res!169240 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!312630 () Bool)

(declare-fun res!169241 () Bool)

(assert (=> b!312630 (=> (not res!169241) (not e!194904))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15990 (_ BitVec 32)) SeekEntryResult!2726)

(assert (=> b!312630 (= res!169241 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2726 i!1240)))))

(declare-fun b!312631 () Bool)

(declare-fun e!194902 () Bool)

(assert (=> b!312631 (= e!194902 true)))

(declare-fun lt!153299 () SeekEntryResult!2726)

(declare-fun lt!153305 () SeekEntryResult!2726)

(assert (=> b!312631 (= lt!153299 lt!153305)))

(declare-datatypes ((Unit!9650 0))(
  ( (Unit!9651) )
))
(declare-fun lt!153301 () Unit!9650)

(declare-fun lt!153302 () (_ BitVec 32))

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 (array!15990 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9650)

(assert (=> b!312631 (= lt!153301 (lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 a!3293 i!1240 k!2441 (bvadd #b00000000000000000000000000000001 x!1427) lt!153302 resIndex!52 resX!52 mask!3709))))

(declare-fun b!312632 () Bool)

(assert (=> b!312632 (= e!194904 e!194903)))

(declare-fun res!169238 () Bool)

(assert (=> b!312632 (=> (not res!169238) (not e!194903))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!312632 (= res!169238 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!153303))))

(assert (=> b!312632 (= lt!153303 (Intermediate!2726 false resIndex!52 resX!52))))

(declare-fun b!312633 () Bool)

(declare-fun res!169243 () Bool)

(assert (=> b!312633 (=> (not res!169243) (not e!194904))))

(declare-fun arrayContainsKey!0 (array!15990 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!312633 (= res!169243 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun res!169245 () Bool)

(assert (=> start!31090 (=> (not res!169245) (not e!194904))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31090 (= res!169245 (validMask!0 mask!3709))))

(assert (=> start!31090 e!194904))

(declare-fun array_inv!5529 (array!15990) Bool)

(assert (=> start!31090 (array_inv!5529 a!3293)))

(assert (=> start!31090 true))

(declare-fun b!312628 () Bool)

(assert (=> b!312628 (= e!194905 (not e!194902))))

(declare-fun res!169237 () Bool)

(assert (=> b!312628 (=> res!169237 e!194902)))

(assert (=> b!312628 (= res!169237 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1427) resX!52) (bvslt (bvadd #b00000000000000000000000000000001 x!1427) #b00000000000000000000000000000000) (bvslt lt!153302 #b00000000000000000000000000000000) (bvsge lt!153302 (size!7927 a!3293)) (not (= lt!153305 lt!153303))))))

(declare-fun lt!153304 () SeekEntryResult!2726)

(assert (=> b!312628 (= lt!153304 lt!153299)))

(declare-fun lt!153298 () array!15990)

(assert (=> b!312628 (= lt!153299 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!153302 k!2441 lt!153298 mask!3709))))

(assert (=> b!312628 (= lt!153304 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 lt!153298 mask!3709))))

(assert (=> b!312628 (= lt!153298 (array!15991 (store (arr!7575 a!3293) i!1240 k!2441) (size!7927 a!3293)))))

(assert (=> b!312628 (= lt!153300 lt!153305)))

(assert (=> b!312628 (= lt!153305 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!153302 k!2441 a!3293 mask!3709))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!312628 (= lt!153302 (nextIndex!0 index!1781 x!1427 mask!3709))))

(assert (= (and start!31090 res!169245) b!312626))

(assert (= (and b!312626 res!169244) b!312625))

(assert (= (and b!312625 res!169236) b!312633))

(assert (= (and b!312633 res!169243) b!312630))

(assert (= (and b!312630 res!169241) b!312629))

(assert (= (and b!312629 res!169240) b!312632))

(assert (= (and b!312632 res!169238) b!312624))

(assert (= (and b!312624 res!169239) b!312627))

(assert (= (and b!312627 res!169242) b!312628))

(assert (= (and b!312628 (not res!169237)) b!312631))

(declare-fun m!322803 () Bool)

(assert (=> b!312632 m!322803))

(assert (=> b!312632 m!322803))

(declare-fun m!322805 () Bool)

(assert (=> b!312632 m!322805))

(declare-fun m!322807 () Bool)

(assert (=> b!312630 m!322807))

(declare-fun m!322809 () Bool)

(assert (=> b!312631 m!322809))

(declare-fun m!322811 () Bool)

(assert (=> b!312627 m!322811))

(declare-fun m!322813 () Bool)

(assert (=> b!312627 m!322813))

(declare-fun m!322815 () Bool)

(assert (=> b!312628 m!322815))

(declare-fun m!322817 () Bool)

(assert (=> b!312628 m!322817))

(declare-fun m!322819 () Bool)

(assert (=> b!312628 m!322819))

(declare-fun m!322821 () Bool)

(assert (=> b!312628 m!322821))

(declare-fun m!322823 () Bool)

(assert (=> b!312628 m!322823))

(declare-fun m!322825 () Bool)

(assert (=> b!312629 m!322825))

(declare-fun m!322827 () Bool)

(assert (=> b!312625 m!322827))

(declare-fun m!322829 () Bool)

(assert (=> b!312624 m!322829))

(declare-fun m!322831 () Bool)

(assert (=> b!312633 m!322831))

(declare-fun m!322833 () Bool)

(assert (=> start!31090 m!322833))

(declare-fun m!322835 () Bool)

(assert (=> start!31090 m!322835))

(push 1)

(assert (not b!312630))

(assert (not b!312632))

(assert (not b!312625))

