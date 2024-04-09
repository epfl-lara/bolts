; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28232 () Bool)

(assert start!28232)

(declare-fun b!288977 () Bool)

(declare-fun e!182970 () Bool)

(assert (=> b!288977 (= e!182970 (not true))))

(declare-datatypes ((array!14535 0))(
  ( (array!14536 (arr!6894 (Array (_ BitVec 32) (_ BitVec 64))) (size!7246 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14535)

(declare-datatypes ((SeekEntryResult!2054 0))(
  ( (MissingZero!2054 (index!10386 (_ BitVec 32))) (Found!2054 (index!10387 (_ BitVec 32))) (Intermediate!2054 (undefined!2866 Bool) (index!10388 (_ BitVec 32)) (x!28563 (_ BitVec 32))) (Undefined!2054) (MissingVacant!2054 (index!10389 (_ BitVec 32))) )
))
(declare-fun lt!142544 () SeekEntryResult!2054)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!288977 (and (= (select (arr!6894 a!3312) (index!10388 lt!142544)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!10388 lt!142544) i!1256))))

(declare-fun b!288978 () Bool)

(declare-fun res!150644 () Bool)

(declare-fun e!182974 () Bool)

(assert (=> b!288978 (=> (not res!150644) (not e!182974))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!288978 (= res!150644 (validKeyInArray!0 k!2524))))

(declare-fun b!288979 () Bool)

(declare-fun res!150645 () Bool)

(declare-fun e!182972 () Bool)

(assert (=> b!288979 (=> (not res!150645) (not e!182972))))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14535 (_ BitVec 32)) Bool)

(assert (=> b!288979 (= res!150645 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!288980 () Bool)

(assert (=> b!288980 (= e!182974 e!182972)))

(declare-fun res!150638 () Bool)

(assert (=> b!288980 (=> (not res!150638) (not e!182972))))

(declare-fun lt!142540 () SeekEntryResult!2054)

(declare-fun lt!142539 () Bool)

(assert (=> b!288980 (= res!150638 (or lt!142539 (= lt!142540 (MissingVacant!2054 i!1256))))))

(assert (=> b!288980 (= lt!142539 (= lt!142540 (MissingZero!2054 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14535 (_ BitVec 32)) SeekEntryResult!2054)

(assert (=> b!288980 (= lt!142540 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!288981 () Bool)

(declare-fun e!182973 () Bool)

(assert (=> b!288981 (= e!182973 e!182970)))

(declare-fun res!150643 () Bool)

(assert (=> b!288981 (=> (not res!150643) (not e!182970))))

(declare-fun lt!142542 () Bool)

(assert (=> b!288981 (= res!150643 (and (or lt!142542 (not (undefined!2866 lt!142544))) (or lt!142542 (not (= (select (arr!6894 a!3312) (index!10388 lt!142544)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or lt!142542 (not (= (select (arr!6894 a!3312) (index!10388 lt!142544)) k!2524))) (not lt!142542)))))

(assert (=> b!288981 (= lt!142542 (not (is-Intermediate!2054 lt!142544)))))

(declare-fun b!288982 () Bool)

(declare-fun res!150641 () Bool)

(assert (=> b!288982 (=> (not res!150641) (not e!182974))))

(assert (=> b!288982 (= res!150641 (and (= (size!7246 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7246 a!3312))))))

(declare-fun res!150640 () Bool)

(assert (=> start!28232 (=> (not res!150640) (not e!182974))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28232 (= res!150640 (validMask!0 mask!3809))))

(assert (=> start!28232 e!182974))

(assert (=> start!28232 true))

(declare-fun array_inv!4848 (array!14535) Bool)

(assert (=> start!28232 (array_inv!4848 a!3312)))

(declare-fun b!288983 () Bool)

(assert (=> b!288983 (= e!182972 e!182973)))

(declare-fun res!150639 () Bool)

(assert (=> b!288983 (=> (not res!150639) (not e!182973))))

(assert (=> b!288983 (= res!150639 lt!142539)))

(declare-fun lt!142543 () SeekEntryResult!2054)

(declare-fun lt!142541 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14535 (_ BitVec 32)) SeekEntryResult!2054)

(assert (=> b!288983 (= lt!142543 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!142541 k!2524 (array!14536 (store (arr!6894 a!3312) i!1256 k!2524) (size!7246 a!3312)) mask!3809))))

(assert (=> b!288983 (= lt!142544 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!142541 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!288983 (= lt!142541 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!288984 () Bool)

(declare-fun res!150642 () Bool)

(assert (=> b!288984 (=> (not res!150642) (not e!182974))))

(declare-fun arrayContainsKey!0 (array!14535 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!288984 (= res!150642 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(assert (= (and start!28232 res!150640) b!288982))

(assert (= (and b!288982 res!150641) b!288978))

(assert (= (and b!288978 res!150644) b!288984))

(assert (= (and b!288984 res!150642) b!288980))

(assert (= (and b!288980 res!150638) b!288979))

(assert (= (and b!288979 res!150645) b!288983))

(assert (= (and b!288983 res!150639) b!288981))

(assert (= (and b!288981 res!150643) b!288977))

(declare-fun m!303201 () Bool)

(assert (=> start!28232 m!303201))

(declare-fun m!303203 () Bool)

(assert (=> start!28232 m!303203))

(declare-fun m!303205 () Bool)

(assert (=> b!288983 m!303205))

(declare-fun m!303207 () Bool)

(assert (=> b!288983 m!303207))

(declare-fun m!303209 () Bool)

(assert (=> b!288983 m!303209))

(declare-fun m!303211 () Bool)

(assert (=> b!288983 m!303211))

(declare-fun m!303213 () Bool)

(assert (=> b!288981 m!303213))

(declare-fun m!303215 () Bool)

(assert (=> b!288980 m!303215))

(declare-fun m!303217 () Bool)

(assert (=> b!288984 m!303217))

(declare-fun m!303219 () Bool)

(assert (=> b!288979 m!303219))

(assert (=> b!288977 m!303213))

(declare-fun m!303221 () Bool)

(assert (=> b!288978 m!303221))

(push 1)

