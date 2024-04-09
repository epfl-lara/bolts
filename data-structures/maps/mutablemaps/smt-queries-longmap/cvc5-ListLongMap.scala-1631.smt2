; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30570 () Bool)

(assert start!30570)

(declare-fun b!306047 () Bool)

(declare-datatypes ((Unit!9478 0))(
  ( (Unit!9479) )
))
(declare-fun e!192003 () Unit!9478)

(declare-fun Unit!9480 () Unit!9478)

(assert (=> b!306047 (= e!192003 Unit!9480)))

(declare-fun res!163167 () Bool)

(declare-fun e!192002 () Bool)

(assert (=> start!30570 (=> (not res!163167) (not e!192002))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30570 (= res!163167 (validMask!0 mask!3709))))

(assert (=> start!30570 e!192002))

(declare-datatypes ((array!15572 0))(
  ( (array!15573 (arr!7369 (Array (_ BitVec 32) (_ BitVec 64))) (size!7721 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15572)

(declare-fun array_inv!5323 (array!15572) Bool)

(assert (=> start!30570 (array_inv!5323 a!3293)))

(assert (=> start!30570 true))

(declare-fun b!306048 () Bool)

(declare-fun res!163172 () Bool)

(declare-fun e!192001 () Bool)

(assert (=> b!306048 (=> (not res!163172) (not e!192001))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!306048 (= res!163172 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7369 a!3293) index!1781) k!2441)) (= x!1427 resX!52)))))

(declare-fun b!306049 () Bool)

(declare-fun res!163169 () Bool)

(assert (=> b!306049 (=> (not res!163169) (not e!192002))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!306049 (= res!163169 (and (= (size!7721 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7721 a!3293))))))

(declare-fun b!306050 () Bool)

(assert (=> b!306050 false))

(declare-datatypes ((SeekEntryResult!2520 0))(
  ( (MissingZero!2520 (index!12256 (_ BitVec 32))) (Found!2520 (index!12257 (_ BitVec 32))) (Intermediate!2520 (undefined!3332 Bool) (index!12258 (_ BitVec 32)) (x!30478 (_ BitVec 32))) (Undefined!2520) (MissingVacant!2520 (index!12259 (_ BitVec 32))) )
))
(declare-fun lt!150883 () SeekEntryResult!2520)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15572 (_ BitVec 32)) SeekEntryResult!2520)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!306050 (= lt!150883 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun e!192004 () Unit!9478)

(declare-fun Unit!9481 () Unit!9478)

(assert (=> b!306050 (= e!192004 Unit!9481)))

(declare-fun b!306051 () Bool)

(declare-fun res!163175 () Bool)

(assert (=> b!306051 (=> (not res!163175) (not e!192002))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!306051 (= res!163175 (validKeyInArray!0 k!2441))))

(declare-fun b!306052 () Bool)

(assert (=> b!306052 (= e!192002 e!192001)))

(declare-fun res!163170 () Bool)

(assert (=> b!306052 (=> (not res!163170) (not e!192001))))

(declare-fun lt!150882 () SeekEntryResult!2520)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!306052 (= res!163170 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!150882))))

(declare-fun resIndex!52 () (_ BitVec 32))

(assert (=> b!306052 (= lt!150882 (Intermediate!2520 false resIndex!52 resX!52))))

(declare-fun b!306053 () Bool)

(assert (=> b!306053 false))

(declare-fun Unit!9482 () Unit!9478)

(assert (=> b!306053 (= e!192004 Unit!9482)))

(declare-fun b!306054 () Bool)

(assert (=> b!306054 (= e!192001 (not true))))

(assert (=> b!306054 (= index!1781 resIndex!52)))

(declare-fun lt!150884 () Unit!9478)

(assert (=> b!306054 (= lt!150884 e!192003)))

(declare-fun c!49042 () Bool)

(assert (=> b!306054 (= c!49042 (not (= resIndex!52 index!1781)))))

(declare-fun b!306055 () Bool)

(declare-fun res!163173 () Bool)

(assert (=> b!306055 (=> (not res!163173) (not e!192002))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15572 (_ BitVec 32)) SeekEntryResult!2520)

(assert (=> b!306055 (= res!163173 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2520 i!1240)))))

(declare-fun b!306056 () Bool)

(declare-fun res!163171 () Bool)

(assert (=> b!306056 (=> (not res!163171) (not e!192001))))

(assert (=> b!306056 (= res!163171 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!150882))))

(declare-fun b!306057 () Bool)

(declare-fun res!163168 () Bool)

(assert (=> b!306057 (=> (not res!163168) (not e!192002))))

(declare-fun arrayContainsKey!0 (array!15572 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!306057 (= res!163168 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!306058 () Bool)

(declare-fun res!163174 () Bool)

(assert (=> b!306058 (=> (not res!163174) (not e!192001))))

(assert (=> b!306058 (= res!163174 (and (= (select (arr!7369 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7721 a!3293))))))

(declare-fun b!306059 () Bool)

(declare-fun res!163176 () Bool)

(assert (=> b!306059 (=> (not res!163176) (not e!192002))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15572 (_ BitVec 32)) Bool)

(assert (=> b!306059 (= res!163176 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!306060 () Bool)

(assert (=> b!306060 (= e!192003 e!192004)))

(declare-fun c!49043 () Bool)

(assert (=> b!306060 (= c!49043 (or (= (select (arr!7369 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7369 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!30570 res!163167) b!306049))

(assert (= (and b!306049 res!163169) b!306051))

(assert (= (and b!306051 res!163175) b!306057))

(assert (= (and b!306057 res!163168) b!306055))

(assert (= (and b!306055 res!163173) b!306059))

(assert (= (and b!306059 res!163176) b!306052))

(assert (= (and b!306052 res!163170) b!306058))

(assert (= (and b!306058 res!163174) b!306056))

(assert (= (and b!306056 res!163171) b!306048))

(assert (= (and b!306048 res!163172) b!306054))

(assert (= (and b!306054 c!49042) b!306060))

(assert (= (and b!306054 (not c!49042)) b!306047))

(assert (= (and b!306060 c!49043) b!306053))

(assert (= (and b!306060 (not c!49043)) b!306050))

(declare-fun m!316753 () Bool)

(assert (=> b!306051 m!316753))

(declare-fun m!316755 () Bool)

(assert (=> b!306056 m!316755))

(declare-fun m!316757 () Bool)

(assert (=> b!306055 m!316757))

(declare-fun m!316759 () Bool)

(assert (=> b!306059 m!316759))

(declare-fun m!316761 () Bool)

(assert (=> b!306058 m!316761))

(declare-fun m!316763 () Bool)

(assert (=> start!30570 m!316763))

(declare-fun m!316765 () Bool)

(assert (=> start!30570 m!316765))

(declare-fun m!316767 () Bool)

(assert (=> b!306050 m!316767))

(assert (=> b!306050 m!316767))

(declare-fun m!316769 () Bool)

(assert (=> b!306050 m!316769))

(declare-fun m!316771 () Bool)

(assert (=> b!306057 m!316771))

(declare-fun m!316773 () Bool)

(assert (=> b!306060 m!316773))

(declare-fun m!316775 () Bool)

(assert (=> b!306052 m!316775))

(assert (=> b!306052 m!316775))

(declare-fun m!316777 () Bool)

(assert (=> b!306052 m!316777))

(assert (=> b!306048 m!316773))

(push 1)

