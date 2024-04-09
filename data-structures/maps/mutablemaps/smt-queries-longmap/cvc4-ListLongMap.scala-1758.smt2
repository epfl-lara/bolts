; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32158 () Bool)

(assert start!32158)

(declare-datatypes ((array!16389 0))(
  ( (array!16390 (arr!7752 (Array (_ BitVec 32) (_ BitVec 64))) (size!8104 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16389)

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun b!320214 () Bool)

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(declare-fun e!198697 () Bool)

(assert (=> b!320214 (= e!198697 (and (= (select (arr!7752 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8104 a!3305)) (bvsge mask!3777 #b00000000000000000000000000000000) (bvsge index!1840 (bvadd #b00000000000000000000000000000001 mask!3777))))))

(declare-fun b!320215 () Bool)

(declare-fun res!174619 () Bool)

(assert (=> b!320215 (=> (not res!174619) (not e!198697))))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!16389 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!320215 (= res!174619 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun res!174616 () Bool)

(assert (=> start!32158 (=> (not res!174616) (not e!198697))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32158 (= res!174616 (validMask!0 mask!3777))))

(assert (=> start!32158 e!198697))

(declare-fun array_inv!5706 (array!16389) Bool)

(assert (=> start!32158 (array_inv!5706 a!3305)))

(assert (=> start!32158 true))

(declare-fun b!320216 () Bool)

(declare-fun res!174618 () Bool)

(assert (=> b!320216 (=> (not res!174618) (not e!198697))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!320216 (= res!174618 (validKeyInArray!0 k!2497))))

(declare-fun b!320217 () Bool)

(declare-fun res!174615 () Bool)

(assert (=> b!320217 (=> (not res!174615) (not e!198697))))

(assert (=> b!320217 (= res!174615 (and (= (size!8104 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8104 a!3305))))))

(declare-fun b!320218 () Bool)

(declare-fun res!174617 () Bool)

(assert (=> b!320218 (=> (not res!174617) (not e!198697))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16389 (_ BitVec 32)) Bool)

(assert (=> b!320218 (= res!174617 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!320219 () Bool)

(declare-fun res!174620 () Bool)

(assert (=> b!320219 (=> (not res!174620) (not e!198697))))

(declare-datatypes ((SeekEntryResult!2894 0))(
  ( (MissingZero!2894 (index!13752 (_ BitVec 32))) (Found!2894 (index!13753 (_ BitVec 32))) (Intermediate!2894 (undefined!3706 Bool) (index!13754 (_ BitVec 32)) (x!31982 (_ BitVec 32))) (Undefined!2894) (MissingVacant!2894 (index!13755 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16389 (_ BitVec 32)) SeekEntryResult!2894)

(assert (=> b!320219 (= res!174620 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!2894 i!1250)))))

(declare-fun b!320220 () Bool)

(declare-fun res!174621 () Bool)

(assert (=> b!320220 (=> (not res!174621) (not e!198697))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16389 (_ BitVec 32)) SeekEntryResult!2894)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!320220 (= res!174621 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) (Intermediate!2894 false resIndex!58 resX!58)))))

(assert (= (and start!32158 res!174616) b!320217))

(assert (= (and b!320217 res!174615) b!320216))

(assert (= (and b!320216 res!174618) b!320215))

(assert (= (and b!320215 res!174619) b!320219))

(assert (= (and b!320219 res!174620) b!320218))

(assert (= (and b!320218 res!174617) b!320220))

(assert (= (and b!320220 res!174621) b!320214))

(declare-fun m!328639 () Bool)

(assert (=> b!320215 m!328639))

(declare-fun m!328641 () Bool)

(assert (=> b!320214 m!328641))

(declare-fun m!328643 () Bool)

(assert (=> b!320216 m!328643))

(declare-fun m!328645 () Bool)

(assert (=> b!320219 m!328645))

(declare-fun m!328647 () Bool)

(assert (=> b!320218 m!328647))

(declare-fun m!328649 () Bool)

(assert (=> b!320220 m!328649))

(assert (=> b!320220 m!328649))

(declare-fun m!328651 () Bool)

(assert (=> b!320220 m!328651))

(declare-fun m!328653 () Bool)

(assert (=> start!32158 m!328653))

(declare-fun m!328655 () Bool)

(assert (=> start!32158 m!328655))

(push 1)

(assert (not b!320218))

(assert (not b!320220))

(assert (not b!320219))

(assert (not b!320215))

(assert (not start!32158))

(assert (not b!320216))

(check-sat)

(pop 1)

(push 1)

(check-sat)

