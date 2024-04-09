; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32124 () Bool)

(assert start!32124)

(declare-fun res!174295 () Bool)

(declare-fun e!198594 () Bool)

(assert (=> start!32124 (=> (not res!174295) (not e!198594))))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32124 (= res!174295 (validMask!0 mask!3777))))

(assert (=> start!32124 e!198594))

(assert (=> start!32124 true))

(declare-datatypes ((array!16355 0))(
  ( (array!16356 (arr!7735 (Array (_ BitVec 32) (_ BitVec 64))) (size!8087 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16355)

(declare-fun array_inv!5689 (array!16355) Bool)

(assert (=> start!32124 (array_inv!5689 a!3305)))

(declare-fun b!319891 () Bool)

(assert (=> b!319891 (= e!198594 false)))

(declare-fun lt!155939 () (_ BitVec 32))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!319891 (= lt!155939 (toIndex!0 k!2497 mask!3777))))

(declare-fun b!319892 () Bool)

(declare-fun res!174297 () Bool)

(assert (=> b!319892 (=> (not res!174297) (not e!198594))))

(declare-fun i!1250 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2877 0))(
  ( (MissingZero!2877 (index!13684 (_ BitVec 32))) (Found!2877 (index!13685 (_ BitVec 32))) (Intermediate!2877 (undefined!3689 Bool) (index!13686 (_ BitVec 32)) (x!31925 (_ BitVec 32))) (Undefined!2877) (MissingVacant!2877 (index!13687 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16355 (_ BitVec 32)) SeekEntryResult!2877)

(assert (=> b!319892 (= res!174297 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!2877 i!1250)))))

(declare-fun b!319893 () Bool)

(declare-fun res!174296 () Bool)

(assert (=> b!319893 (=> (not res!174296) (not e!198594))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!319893 (= res!174296 (validKeyInArray!0 k!2497))))

(declare-fun b!319894 () Bool)

(declare-fun res!174293 () Bool)

(assert (=> b!319894 (=> (not res!174293) (not e!198594))))

(declare-fun arrayContainsKey!0 (array!16355 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!319894 (= res!174293 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!319895 () Bool)

(declare-fun res!174294 () Bool)

(assert (=> b!319895 (=> (not res!174294) (not e!198594))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16355 (_ BitVec 32)) Bool)

(assert (=> b!319895 (= res!174294 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!319896 () Bool)

(declare-fun res!174292 () Bool)

(assert (=> b!319896 (=> (not res!174292) (not e!198594))))

(assert (=> b!319896 (= res!174292 (and (= (size!8087 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8087 a!3305))))))

(assert (= (and start!32124 res!174295) b!319896))

(assert (= (and b!319896 res!174292) b!319893))

(assert (= (and b!319893 res!174296) b!319894))

(assert (= (and b!319894 res!174293) b!319892))

(assert (= (and b!319892 res!174297) b!319895))

(assert (= (and b!319895 res!174294) b!319891))

(declare-fun m!328369 () Bool)

(assert (=> start!32124 m!328369))

(declare-fun m!328371 () Bool)

(assert (=> start!32124 m!328371))

(declare-fun m!328373 () Bool)

(assert (=> b!319891 m!328373))

(declare-fun m!328375 () Bool)

(assert (=> b!319895 m!328375))

(declare-fun m!328377 () Bool)

(assert (=> b!319894 m!328377))

(declare-fun m!328379 () Bool)

(assert (=> b!319893 m!328379))

(declare-fun m!328381 () Bool)

(assert (=> b!319892 m!328381))

(push 1)

(assert (not b!319893))

(assert (not b!319891))

(assert (not start!32124))

(assert (not b!319895))

(assert (not b!319892))

(assert (not b!319894))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

