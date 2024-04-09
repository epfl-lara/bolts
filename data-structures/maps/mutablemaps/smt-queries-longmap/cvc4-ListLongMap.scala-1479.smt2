; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28274 () Bool)

(assert start!28274)

(declare-fun b!289532 () Bool)

(declare-fun res!151127 () Bool)

(declare-fun e!183307 () Bool)

(assert (=> b!289532 (=> (not res!151127) (not e!183307))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((array!14577 0))(
  ( (array!14578 (arr!6915 (Array (_ BitVec 32) (_ BitVec 64))) (size!7267 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14577)

(declare-fun mask!3809 () (_ BitVec 32))

(assert (=> b!289532 (= res!151127 (and (= (size!7267 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7267 a!3312))))))

(declare-fun res!151130 () Bool)

(assert (=> start!28274 (=> (not res!151130) (not e!183307))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28274 (= res!151130 (validMask!0 mask!3809))))

(assert (=> start!28274 e!183307))

(assert (=> start!28274 true))

(declare-fun array_inv!4869 (array!14577) Bool)

(assert (=> start!28274 (array_inv!4869 a!3312)))

(declare-fun b!289533 () Bool)

(declare-fun e!183302 () Bool)

(declare-fun e!183305 () Bool)

(assert (=> b!289533 (= e!183302 e!183305)))

(declare-fun res!151129 () Bool)

(assert (=> b!289533 (=> (not res!151129) (not e!183305))))

(declare-fun lt!142935 () Bool)

(assert (=> b!289533 (= res!151129 lt!142935)))

(declare-fun lt!142940 () (_ BitVec 32))

(declare-fun k!2524 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!2075 0))(
  ( (MissingZero!2075 (index!10470 (_ BitVec 32))) (Found!2075 (index!10471 (_ BitVec 32))) (Intermediate!2075 (undefined!2887 Bool) (index!10472 (_ BitVec 32)) (x!28640 (_ BitVec 32))) (Undefined!2075) (MissingVacant!2075 (index!10473 (_ BitVec 32))) )
))
(declare-fun lt!142938 () SeekEntryResult!2075)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14577 (_ BitVec 32)) SeekEntryResult!2075)

(assert (=> b!289533 (= lt!142938 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!142940 k!2524 (array!14578 (store (arr!6915 a!3312) i!1256 k!2524) (size!7267 a!3312)) mask!3809))))

(declare-fun lt!142937 () SeekEntryResult!2075)

(assert (=> b!289533 (= lt!142937 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!142940 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!289533 (= lt!142940 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!289534 () Bool)

(assert (=> b!289534 (= e!183305 (and (= lt!142938 lt!142937) (bvslt mask!3809 #b00000000000000000000000000000000)))))

(declare-datatypes ((Unit!9098 0))(
  ( (Unit!9099) )
))
(declare-fun lt!142934 () Unit!9098)

(declare-fun e!183304 () Unit!9098)

(assert (=> b!289534 (= lt!142934 e!183304)))

(declare-fun c!46765 () Bool)

(assert (=> b!289534 (= c!46765 (or (and (is-Intermediate!2075 lt!142937) (undefined!2887 lt!142937)) (and (is-Intermediate!2075 lt!142937) (= (select (arr!6915 a!3312) (index!10472 lt!142937)) #b1000000000000000000000000000000000000000000000000000000000000000)) (and (is-Intermediate!2075 lt!142937) (= (select (arr!6915 a!3312) (index!10472 lt!142937)) k!2524))))))

(declare-fun b!289535 () Bool)

(declare-fun res!151126 () Bool)

(assert (=> b!289535 (=> (not res!151126) (not e!183307))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!289535 (= res!151126 (validKeyInArray!0 k!2524))))

(declare-fun b!289536 () Bool)

(declare-fun res!151128 () Bool)

(assert (=> b!289536 (=> (not res!151128) (not e!183302))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14577 (_ BitVec 32)) Bool)

(assert (=> b!289536 (= res!151128 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!289537 () Bool)

(assert (=> b!289537 false))

(declare-fun e!183303 () Unit!9098)

(declare-fun Unit!9100 () Unit!9098)

(assert (=> b!289537 (= e!183303 Unit!9100)))

(declare-fun b!289538 () Bool)

(assert (=> b!289538 (and (= lt!142938 lt!142937) (= (select (store (arr!6915 a!3312) i!1256 k!2524) (index!10472 lt!142937)) k!2524))))

(declare-fun lt!142936 () Unit!9098)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 (array!14577 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9098)

(assert (=> b!289538 (= lt!142936 (lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 a!3312 i!1256 k!2524 #b00000000000000000000000000000000 lt!142940 (index!10472 lt!142937) (x!28640 lt!142937) mask!3809))))

(assert (=> b!289538 (and (= (select (arr!6915 a!3312) (index!10472 lt!142937)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!10472 lt!142937) i!1256))))

(declare-fun Unit!9101 () Unit!9098)

(assert (=> b!289538 (= e!183303 Unit!9101)))

(declare-fun b!289539 () Bool)

(assert (=> b!289539 (= e!183307 e!183302)))

(declare-fun res!151125 () Bool)

(assert (=> b!289539 (=> (not res!151125) (not e!183302))))

(declare-fun lt!142939 () SeekEntryResult!2075)

(assert (=> b!289539 (= res!151125 (or lt!142935 (= lt!142939 (MissingVacant!2075 i!1256))))))

(assert (=> b!289539 (= lt!142935 (= lt!142939 (MissingZero!2075 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14577 (_ BitVec 32)) SeekEntryResult!2075)

(assert (=> b!289539 (= lt!142939 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!289540 () Bool)

(declare-fun Unit!9102 () Unit!9098)

(assert (=> b!289540 (= e!183304 Unit!9102)))

(assert (=> b!289540 false))

(declare-fun b!289541 () Bool)

(declare-fun res!151131 () Bool)

(assert (=> b!289541 (=> (not res!151131) (not e!183307))))

(declare-fun arrayContainsKey!0 (array!14577 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!289541 (= res!151131 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!289542 () Bool)

(assert (=> b!289542 (= e!183304 e!183303)))

(declare-fun c!46766 () Bool)

(assert (=> b!289542 (= c!46766 (is-Intermediate!2075 lt!142937))))

(assert (= (and start!28274 res!151130) b!289532))

(assert (= (and b!289532 res!151127) b!289535))

(assert (= (and b!289535 res!151126) b!289541))

(assert (= (and b!289541 res!151131) b!289539))

(assert (= (and b!289539 res!151125) b!289536))

(assert (= (and b!289536 res!151128) b!289533))

(assert (= (and b!289533 res!151129) b!289534))

(assert (= (and b!289534 c!46765) b!289540))

(assert (= (and b!289534 (not c!46765)) b!289542))

(assert (= (and b!289542 c!46766) b!289538))

(assert (= (and b!289542 (not c!46766)) b!289537))

(declare-fun m!303683 () Bool)

(assert (=> b!289535 m!303683))

(declare-fun m!303685 () Bool)

(assert (=> b!289536 m!303685))

(declare-fun m!303687 () Bool)

(assert (=> b!289539 m!303687))

(declare-fun m!303689 () Bool)

(assert (=> b!289533 m!303689))

(declare-fun m!303691 () Bool)

(assert (=> b!289533 m!303691))

(declare-fun m!303693 () Bool)

(assert (=> b!289533 m!303693))

(declare-fun m!303695 () Bool)

(assert (=> b!289533 m!303695))

(declare-fun m!303697 () Bool)

(assert (=> b!289541 m!303697))

(declare-fun m!303699 () Bool)

(assert (=> start!28274 m!303699))

(declare-fun m!303701 () Bool)

(assert (=> start!28274 m!303701))

(declare-fun m!303703 () Bool)

(assert (=> b!289534 m!303703))

(assert (=> b!289538 m!303689))

(declare-fun m!303705 () Bool)

(assert (=> b!289538 m!303705))

(declare-fun m!303707 () Bool)

(assert (=> b!289538 m!303707))

(assert (=> b!289538 m!303703))

(push 1)

