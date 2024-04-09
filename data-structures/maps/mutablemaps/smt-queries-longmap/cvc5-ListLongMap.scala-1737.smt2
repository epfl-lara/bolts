; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31932 () Bool)

(assert start!31932)

(declare-fun e!198087 () Bool)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun lt!155569 () (_ BitVec 32))

(declare-fun b!318847 () Bool)

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-datatypes ((array!16250 0))(
  ( (array!16251 (arr!7687 (Array (_ BitVec 32) (_ BitVec 64))) (size!8039 (_ BitVec 32))) )
))
(declare-fun lt!155573 () array!16250)

(declare-fun k!2441 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!2838 0))(
  ( (MissingZero!2838 (index!13528 (_ BitVec 32))) (Found!2838 (index!13529 (_ BitVec 32))) (Intermediate!2838 (undefined!3650 Bool) (index!13530 (_ BitVec 32)) (x!31755 (_ BitVec 32))) (Undefined!2838) (MissingVacant!2838 (index!13531 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16250 (_ BitVec 32)) SeekEntryResult!2838)

(assert (=> b!318847 (= e!198087 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 lt!155573 mask!3709) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!155569 k!2441 lt!155573 mask!3709)))))

(declare-fun a!3293 () array!16250)

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!318847 (= lt!155573 (array!16251 (store (arr!7687 a!3293) i!1240 k!2441) (size!8039 a!3293)))))

(declare-fun b!318848 () Bool)

(declare-fun res!173391 () Bool)

(declare-fun e!198089 () Bool)

(assert (=> b!318848 (=> (not res!173391) (not e!198089))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!318848 (= res!173391 (and (= (select (arr!7687 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!8039 a!3293))))))

(declare-fun b!318849 () Bool)

(declare-fun res!173395 () Bool)

(declare-fun e!198090 () Bool)

(assert (=> b!318849 (=> (not res!173395) (not e!198090))))

(assert (=> b!318849 (= res!173395 (and (= (size!8039 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!8039 a!3293))))))

(declare-fun b!318850 () Bool)

(declare-fun res!173393 () Bool)

(assert (=> b!318850 (=> (not res!173393) (not e!198090))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!318850 (= res!173393 (validKeyInArray!0 k!2441))))

(declare-fun b!318851 () Bool)

(declare-fun res!173392 () Bool)

(assert (=> b!318851 (=> (not res!173392) (not e!198090))))

(declare-fun arrayContainsKey!0 (array!16250 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!318851 (= res!173392 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun lt!155571 () SeekEntryResult!2838)

(declare-fun b!318852 () Bool)

(declare-fun e!198091 () Bool)

(declare-fun lt!155570 () SeekEntryResult!2838)

(assert (=> b!318852 (= e!198091 (not (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1427) resX!52) (bvslt (bvadd #b00000000000000000000000000000001 x!1427) #b00000000000000000000000000000000) (bvslt lt!155569 #b00000000000000000000000000000000) (bvsge lt!155569 (size!8039 a!3293)) (not (= lt!155570 lt!155571)) (bvslt (bvsub #b01111111111111111111111111111110 (bvadd #b00000000000000000000000000000001 x!1427)) (bvsub #b01111111111111111111111111111110 x!1427)))))))

(assert (=> b!318852 e!198087))

(declare-fun res!173389 () Bool)

(assert (=> b!318852 (=> (not res!173389) (not e!198087))))

(declare-fun lt!155572 () SeekEntryResult!2838)

(assert (=> b!318852 (= res!173389 (= lt!155572 lt!155570))))

(assert (=> b!318852 (= lt!155570 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!155569 k!2441 a!3293 mask!3709))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!318852 (= lt!155569 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!318853 () Bool)

(assert (=> b!318853 (= e!198090 e!198089)))

(declare-fun res!173396 () Bool)

(assert (=> b!318853 (=> (not res!173396) (not e!198089))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!318853 (= res!173396 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!155571))))

(assert (=> b!318853 (= lt!155571 (Intermediate!2838 false resIndex!52 resX!52))))

(declare-fun b!318846 () Bool)

(declare-fun res!173394 () Bool)

(assert (=> b!318846 (=> (not res!173394) (not e!198090))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16250 (_ BitVec 32)) Bool)

(assert (=> b!318846 (= res!173394 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun res!173397 () Bool)

(assert (=> start!31932 (=> (not res!173397) (not e!198090))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31932 (= res!173397 (validMask!0 mask!3709))))

(assert (=> start!31932 e!198090))

(declare-fun array_inv!5641 (array!16250) Bool)

(assert (=> start!31932 (array_inv!5641 a!3293)))

(assert (=> start!31932 true))

(declare-fun b!318854 () Bool)

(assert (=> b!318854 (= e!198089 e!198091)))

(declare-fun res!173390 () Bool)

(assert (=> b!318854 (=> (not res!173390) (not e!198091))))

(assert (=> b!318854 (= res!173390 (and (= lt!155572 lt!155571) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7687 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!318854 (= lt!155572 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!318855 () Bool)

(declare-fun res!173388 () Bool)

(assert (=> b!318855 (=> (not res!173388) (not e!198090))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16250 (_ BitVec 32)) SeekEntryResult!2838)

(assert (=> b!318855 (= res!173388 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2838 i!1240)))))

(assert (= (and start!31932 res!173397) b!318849))

(assert (= (and b!318849 res!173395) b!318850))

(assert (= (and b!318850 res!173393) b!318851))

(assert (= (and b!318851 res!173392) b!318855))

(assert (= (and b!318855 res!173388) b!318846))

(assert (= (and b!318846 res!173394) b!318853))

(assert (= (and b!318853 res!173396) b!318848))

(assert (= (and b!318848 res!173391) b!318854))

(assert (= (and b!318854 res!173390) b!318852))

(assert (= (and b!318852 res!173389) b!318847))

(declare-fun m!327487 () Bool)

(assert (=> b!318852 m!327487))

(declare-fun m!327489 () Bool)

(assert (=> b!318852 m!327489))

(declare-fun m!327491 () Bool)

(assert (=> start!31932 m!327491))

(declare-fun m!327493 () Bool)

(assert (=> start!31932 m!327493))

(declare-fun m!327495 () Bool)

(assert (=> b!318853 m!327495))

(assert (=> b!318853 m!327495))

(declare-fun m!327497 () Bool)

(assert (=> b!318853 m!327497))

(declare-fun m!327499 () Bool)

(assert (=> b!318850 m!327499))

(declare-fun m!327501 () Bool)

(assert (=> b!318855 m!327501))

(declare-fun m!327503 () Bool)

(assert (=> b!318848 m!327503))

(declare-fun m!327505 () Bool)

(assert (=> b!318847 m!327505))

(declare-fun m!327507 () Bool)

(assert (=> b!318847 m!327507))

(declare-fun m!327509 () Bool)

(assert (=> b!318847 m!327509))

(declare-fun m!327511 () Bool)

(assert (=> b!318854 m!327511))

(declare-fun m!327513 () Bool)

(assert (=> b!318854 m!327513))

(declare-fun m!327515 () Bool)

(assert (=> b!318846 m!327515))

(declare-fun m!327517 () Bool)

(assert (=> b!318851 m!327517))

(push 1)

(assert (not b!318850))

(assert (not start!31932))

(assert (not b!318854))

(assert (not b!318846))

(assert (not b!318852))

(assert (not b!318853))

(assert (not b!318855))

(assert (not b!318851))

(assert (not b!318847))

(check-sat)

(pop 1)

(push 1)

(check-sat)

