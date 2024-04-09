; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30672 () Bool)

(assert start!30672)

(declare-fun b!307659 () Bool)

(declare-fun res!164572 () Bool)

(declare-fun e!192527 () Bool)

(assert (=> b!307659 (=> (not res!164572) (not e!192527))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!307659 (= res!164572 (validKeyInArray!0 k!2441))))

(declare-fun b!307660 () Bool)

(declare-fun res!164577 () Bool)

(assert (=> b!307660 (=> (not res!164577) (not e!192527))))

(declare-datatypes ((array!15674 0))(
  ( (array!15675 (arr!7420 (Array (_ BitVec 32) (_ BitVec 64))) (size!7772 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15674)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2571 0))(
  ( (MissingZero!2571 (index!12460 (_ BitVec 32))) (Found!2571 (index!12461 (_ BitVec 32))) (Intermediate!2571 (undefined!3383 Bool) (index!12462 (_ BitVec 32)) (x!30665 (_ BitVec 32))) (Undefined!2571) (MissingVacant!2571 (index!12463 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15674 (_ BitVec 32)) SeekEntryResult!2571)

(assert (=> b!307660 (= res!164577 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2571 i!1240)))))

(declare-fun b!307661 () Bool)

(declare-fun res!164579 () Bool)

(assert (=> b!307661 (=> (not res!164579) (not e!192527))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15674 (_ BitVec 32)) Bool)

(assert (=> b!307661 (= res!164579 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!307662 () Bool)

(declare-fun res!164576 () Bool)

(declare-fun e!192528 () Bool)

(assert (=> b!307662 (=> (not res!164576) (not e!192528))))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!307662 (= res!164576 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7420 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(declare-fun b!307663 () Bool)

(assert (=> b!307663 (= e!192527 e!192528)))

(declare-fun res!164580 () Bool)

(assert (=> b!307663 (=> (not res!164580) (not e!192528))))

(declare-fun lt!151150 () SeekEntryResult!2571)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15674 (_ BitVec 32)) SeekEntryResult!2571)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!307663 (= res!164580 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!151150))))

(declare-fun resIndex!52 () (_ BitVec 32))

(assert (=> b!307663 (= lt!151150 (Intermediate!2571 false resIndex!52 resX!52))))

(declare-fun b!307664 () Bool)

(declare-fun res!164574 () Bool)

(assert (=> b!307664 (=> (not res!164574) (not e!192528))))

(assert (=> b!307664 (= res!164574 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!151150))))

(declare-fun b!307665 () Bool)

(declare-fun res!164575 () Bool)

(assert (=> b!307665 (=> (not res!164575) (not e!192527))))

(assert (=> b!307665 (= res!164575 (and (= (size!7772 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7772 a!3293))))))

(declare-fun b!307666 () Bool)

(declare-fun res!164578 () Bool)

(assert (=> b!307666 (=> (not res!164578) (not e!192528))))

(assert (=> b!307666 (= res!164578 (and (= (select (arr!7420 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7772 a!3293))))))

(declare-fun b!307667 () Bool)

(declare-fun res!164571 () Bool)

(assert (=> b!307667 (=> (not res!164571) (not e!192527))))

(declare-fun arrayContainsKey!0 (array!15674 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!307667 (= res!164571 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun res!164573 () Bool)

(assert (=> start!30672 (=> (not res!164573) (not e!192527))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30672 (= res!164573 (validMask!0 mask!3709))))

(assert (=> start!30672 e!192527))

(declare-fun array_inv!5374 (array!15674) Bool)

(assert (=> start!30672 (array_inv!5374 a!3293)))

(assert (=> start!30672 true))

(declare-fun b!307668 () Bool)

(assert (=> b!307668 (= e!192528 (bvslt mask!3709 #b00000000000000000000000000000000))))

(declare-fun lt!151151 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!307668 (= lt!151151 (nextIndex!0 index!1781 x!1427 mask!3709))))

(assert (= (and start!30672 res!164573) b!307665))

(assert (= (and b!307665 res!164575) b!307659))

(assert (= (and b!307659 res!164572) b!307667))

(assert (= (and b!307667 res!164571) b!307660))

(assert (= (and b!307660 res!164577) b!307661))

(assert (= (and b!307661 res!164579) b!307663))

(assert (= (and b!307663 res!164580) b!307666))

(assert (= (and b!307666 res!164578) b!307664))

(assert (= (and b!307664 res!164574) b!307662))

(assert (= (and b!307662 res!164576) b!307668))

(declare-fun m!317929 () Bool)

(assert (=> b!307663 m!317929))

(assert (=> b!307663 m!317929))

(declare-fun m!317931 () Bool)

(assert (=> b!307663 m!317931))

(declare-fun m!317933 () Bool)

(assert (=> b!307660 m!317933))

(declare-fun m!317935 () Bool)

(assert (=> start!30672 m!317935))

(declare-fun m!317937 () Bool)

(assert (=> start!30672 m!317937))

(declare-fun m!317939 () Bool)

(assert (=> b!307659 m!317939))

(declare-fun m!317941 () Bool)

(assert (=> b!307664 m!317941))

(declare-fun m!317943 () Bool)

(assert (=> b!307661 m!317943))

(declare-fun m!317945 () Bool)

(assert (=> b!307668 m!317945))

(declare-fun m!317947 () Bool)

(assert (=> b!307662 m!317947))

(declare-fun m!317949 () Bool)

(assert (=> b!307666 m!317949))

(declare-fun m!317951 () Bool)

(assert (=> b!307667 m!317951))

(push 1)

