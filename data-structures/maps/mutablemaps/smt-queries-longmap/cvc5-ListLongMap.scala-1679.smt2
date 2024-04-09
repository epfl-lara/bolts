; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30966 () Bool)

(assert start!30966)

(declare-fun b!310764 () Bool)

(declare-fun res!167378 () Bool)

(declare-fun e!193975 () Bool)

(assert (=> b!310764 (=> (not res!167378) (not e!193975))))

(declare-datatypes ((array!15866 0))(
  ( (array!15867 (arr!7513 (Array (_ BitVec 32) (_ BitVec 64))) (size!7865 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15866)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!310764 (= res!167378 (and (= (size!7865 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7865 a!3293))))))

(declare-fun b!310765 () Bool)

(declare-fun res!167384 () Bool)

(assert (=> b!310765 (=> (not res!167384) (not e!193975))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!310765 (= res!167384 (validKeyInArray!0 k!2441))))

(declare-fun b!310766 () Bool)

(declare-fun res!167377 () Bool)

(assert (=> b!310766 (=> (not res!167377) (not e!193975))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15866 (_ BitVec 32)) Bool)

(assert (=> b!310766 (= res!167377 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!310767 () Bool)

(declare-fun e!193971 () Bool)

(assert (=> b!310767 (= e!193971 (not true))))

(declare-fun e!193972 () Bool)

(assert (=> b!310767 e!193972))

(declare-fun res!167381 () Bool)

(assert (=> b!310767 (=> (not res!167381) (not e!193972))))

(declare-datatypes ((SeekEntryResult!2664 0))(
  ( (MissingZero!2664 (index!12832 (_ BitVec 32))) (Found!2664 (index!12833 (_ BitVec 32))) (Intermediate!2664 (undefined!3476 Bool) (index!12834 (_ BitVec 32)) (x!31024 (_ BitVec 32))) (Undefined!2664) (MissingVacant!2664 (index!12835 (_ BitVec 32))) )
))
(declare-fun lt!152128 () SeekEntryResult!2664)

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun lt!152129 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15866 (_ BitVec 32)) SeekEntryResult!2664)

(assert (=> b!310767 (= res!167381 (= lt!152128 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152129 k!2441 a!3293 mask!3709)))))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!310767 (= lt!152129 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun res!167383 () Bool)

(assert (=> start!30966 (=> (not res!167383) (not e!193975))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30966 (= res!167383 (validMask!0 mask!3709))))

(assert (=> start!30966 e!193975))

(declare-fun array_inv!5467 (array!15866) Bool)

(assert (=> start!30966 (array_inv!5467 a!3293)))

(assert (=> start!30966 true))

(declare-fun b!310768 () Bool)

(declare-fun res!167380 () Bool)

(assert (=> b!310768 (=> (not res!167380) (not e!193975))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15866 (_ BitVec 32)) SeekEntryResult!2664)

(assert (=> b!310768 (= res!167380 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2664 i!1240)))))

(declare-fun b!310769 () Bool)

(declare-fun res!167382 () Bool)

(declare-fun e!193974 () Bool)

(assert (=> b!310769 (=> (not res!167382) (not e!193974))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!310769 (= res!167382 (and (= (select (arr!7513 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7865 a!3293))))))

(declare-fun b!310770 () Bool)

(declare-fun lt!152126 () array!15866)

(assert (=> b!310770 (= e!193972 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 lt!152126 mask!3709) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152129 k!2441 lt!152126 mask!3709)))))

(assert (=> b!310770 (= lt!152126 (array!15867 (store (arr!7513 a!3293) i!1240 k!2441) (size!7865 a!3293)))))

(declare-fun b!310771 () Bool)

(declare-fun res!167379 () Bool)

(assert (=> b!310771 (=> (not res!167379) (not e!193975))))

(declare-fun arrayContainsKey!0 (array!15866 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!310771 (= res!167379 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!310772 () Bool)

(assert (=> b!310772 (= e!193975 e!193974)))

(declare-fun res!167385 () Bool)

(assert (=> b!310772 (=> (not res!167385) (not e!193974))))

(declare-fun lt!152127 () SeekEntryResult!2664)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!310772 (= res!167385 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!152127))))

(assert (=> b!310772 (= lt!152127 (Intermediate!2664 false resIndex!52 resX!52))))

(declare-fun b!310773 () Bool)

(assert (=> b!310773 (= e!193974 e!193971)))

(declare-fun res!167376 () Bool)

(assert (=> b!310773 (=> (not res!167376) (not e!193971))))

(assert (=> b!310773 (= res!167376 (and (= lt!152128 lt!152127) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7513 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!310773 (= lt!152128 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(assert (= (and start!30966 res!167383) b!310764))

(assert (= (and b!310764 res!167378) b!310765))

(assert (= (and b!310765 res!167384) b!310771))

(assert (= (and b!310771 res!167379) b!310768))

(assert (= (and b!310768 res!167380) b!310766))

(assert (= (and b!310766 res!167377) b!310772))

(assert (= (and b!310772 res!167385) b!310769))

(assert (= (and b!310769 res!167382) b!310773))

(assert (= (and b!310773 res!167376) b!310767))

(assert (= (and b!310767 res!167381) b!310770))

(declare-fun m!320749 () Bool)

(assert (=> b!310771 m!320749))

(declare-fun m!320751 () Bool)

(assert (=> b!310773 m!320751))

(declare-fun m!320753 () Bool)

(assert (=> b!310773 m!320753))

(declare-fun m!320755 () Bool)

(assert (=> b!310772 m!320755))

(assert (=> b!310772 m!320755))

(declare-fun m!320757 () Bool)

(assert (=> b!310772 m!320757))

(declare-fun m!320759 () Bool)

(assert (=> b!310766 m!320759))

(declare-fun m!320761 () Bool)

(assert (=> b!310768 m!320761))

(declare-fun m!320763 () Bool)

(assert (=> start!30966 m!320763))

(declare-fun m!320765 () Bool)

(assert (=> start!30966 m!320765))

(declare-fun m!320767 () Bool)

(assert (=> b!310767 m!320767))

(declare-fun m!320769 () Bool)

(assert (=> b!310767 m!320769))

(declare-fun m!320771 () Bool)

(assert (=> b!310765 m!320771))

(declare-fun m!320773 () Bool)

(assert (=> b!310770 m!320773))

(declare-fun m!320775 () Bool)

(assert (=> b!310770 m!320775))

(declare-fun m!320777 () Bool)

(assert (=> b!310770 m!320777))

(declare-fun m!320779 () Bool)

(assert (=> b!310769 m!320779))

(push 1)

