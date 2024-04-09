; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30622 () Bool)

(assert start!30622)

(declare-fun b!306992 () Bool)

(declare-fun res!163910 () Bool)

(declare-fun e!192322 () Bool)

(assert (=> b!306992 (=> (not res!163910) (not e!192322))))

(declare-datatypes ((array!15624 0))(
  ( (array!15625 (arr!7395 (Array (_ BitVec 32) (_ BitVec 64))) (size!7747 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15624)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun i!1240 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2546 0))(
  ( (MissingZero!2546 (index!12360 (_ BitVec 32))) (Found!2546 (index!12361 (_ BitVec 32))) (Intermediate!2546 (undefined!3358 Bool) (index!12362 (_ BitVec 32)) (x!30568 (_ BitVec 32))) (Undefined!2546) (MissingVacant!2546 (index!12363 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15624 (_ BitVec 32)) SeekEntryResult!2546)

(assert (=> b!306992 (= res!163910 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2546 i!1240)))))

(declare-fun b!306993 () Bool)

(declare-fun res!163909 () Bool)

(assert (=> b!306993 (=> (not res!163909) (not e!192322))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15624 (_ BitVec 32)) SeekEntryResult!2546)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!306993 (= res!163909 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) (Intermediate!2546 false resIndex!52 resX!52)))))

(declare-fun b!306995 () Bool)

(declare-fun res!163904 () Bool)

(assert (=> b!306995 (=> (not res!163904) (not e!192322))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15624 (_ BitVec 32)) Bool)

(assert (=> b!306995 (= res!163904 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!306996 () Bool)

(declare-fun res!163907 () Bool)

(assert (=> b!306996 (=> (not res!163907) (not e!192322))))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!306996 (= res!163907 (and (= (select (arr!7395 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7747 a!3293))))))

(declare-fun b!306997 () Bool)

(declare-fun res!163911 () Bool)

(assert (=> b!306997 (=> (not res!163911) (not e!192322))))

(assert (=> b!306997 (= res!163911 (and (= (size!7747 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7747 a!3293))))))

(declare-fun b!306998 () Bool)

(declare-fun res!163906 () Bool)

(assert (=> b!306998 (=> (not res!163906) (not e!192322))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!306998 (= res!163906 (validKeyInArray!0 k!2441))))

(declare-fun b!306999 () Bool)

(declare-fun res!163908 () Bool)

(assert (=> b!306999 (=> (not res!163908) (not e!192322))))

(declare-fun arrayContainsKey!0 (array!15624 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!306999 (= res!163908 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun res!163905 () Bool)

(assert (=> start!30622 (=> (not res!163905) (not e!192322))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30622 (= res!163905 (validMask!0 mask!3709))))

(assert (=> start!30622 e!192322))

(declare-fun array_inv!5349 (array!15624) Bool)

(assert (=> start!30622 (array_inv!5349 a!3293)))

(assert (=> start!30622 true))

(declare-fun b!306994 () Bool)

(assert (=> b!306994 (= e!192322 false)))

(declare-fun lt!151064 () SeekEntryResult!2546)

(assert (=> b!306994 (= lt!151064 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(assert (= (and start!30622 res!163905) b!306997))

(assert (= (and b!306997 res!163911) b!306998))

(assert (= (and b!306998 res!163906) b!306999))

(assert (= (and b!306999 res!163908) b!306992))

(assert (= (and b!306992 res!163910) b!306995))

(assert (= (and b!306995 res!163904) b!306993))

(assert (= (and b!306993 res!163909) b!306996))

(assert (= (and b!306996 res!163907) b!306994))

(declare-fun m!317387 () Bool)

(assert (=> b!306999 m!317387))

(declare-fun m!317389 () Bool)

(assert (=> b!306993 m!317389))

(assert (=> b!306993 m!317389))

(declare-fun m!317391 () Bool)

(assert (=> b!306993 m!317391))

(declare-fun m!317393 () Bool)

(assert (=> start!30622 m!317393))

(declare-fun m!317395 () Bool)

(assert (=> start!30622 m!317395))

(declare-fun m!317397 () Bool)

(assert (=> b!306994 m!317397))

(declare-fun m!317399 () Bool)

(assert (=> b!306992 m!317399))

(declare-fun m!317401 () Bool)

(assert (=> b!306998 m!317401))

(declare-fun m!317403 () Bool)

(assert (=> b!306996 m!317403))

(declare-fun m!317405 () Bool)

(assert (=> b!306995 m!317405))

(push 1)

(assert (not b!306994))

(assert (not b!306998))

(assert (not b!306995))

(assert (not b!306992))

(assert (not start!30622))

(assert (not b!306999))

(assert (not b!306993))

(check-sat)

