; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25744 () Bool)

(assert start!25744)

(declare-fun b!266772 () Bool)

(declare-fun res!131106 () Bool)

(declare-fun e!172553 () Bool)

(assert (=> b!266772 (=> (not res!131106) (not e!172553))))

(declare-datatypes ((array!12910 0))(
  ( (array!12911 (arr!6109 (Array (_ BitVec 32) (_ BitVec 64))) (size!6461 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12910)

(declare-datatypes ((List!3944 0))(
  ( (Nil!3941) (Cons!3940 (h!4607 (_ BitVec 64)) (t!9034 List!3944)) )
))
(declare-fun arrayNoDuplicates!0 (array!12910 (_ BitVec 32) List!3944) Bool)

(assert (=> b!266772 (= res!131106 (arrayNoDuplicates!0 a!3436 #b00000000000000000000000000000000 Nil!3941))))

(declare-fun b!266773 () Bool)

(declare-fun res!131108 () Bool)

(declare-fun e!172555 () Bool)

(assert (=> b!266773 (=> (not res!131108) (not e!172555))))

(declare-fun k!2698 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!12910 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!266773 (= res!131108 (not (arrayContainsKey!0 a!3436 k!2698 #b00000000000000000000000000000000)))))

(declare-fun b!266774 () Bool)

(assert (=> b!266774 (= e!172553 (bvsge #b00000000000000000000000000000000 (size!6461 a!3436)))))

(declare-fun res!131107 () Bool)

(assert (=> start!25744 (=> (not res!131107) (not e!172555))))

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25744 (= res!131107 (validMask!0 mask!4002))))

(assert (=> start!25744 e!172555))

(assert (=> start!25744 true))

(declare-fun array_inv!4063 (array!12910) Bool)

(assert (=> start!25744 (array_inv!4063 a!3436)))

(declare-fun b!266775 () Bool)

(declare-fun res!131109 () Bool)

(assert (=> b!266775 (=> (not res!131109) (not e!172555))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!266775 (= res!131109 (validKeyInArray!0 k!2698))))

(declare-fun b!266776 () Bool)

(declare-fun res!131112 () Bool)

(assert (=> b!266776 (=> (not res!131112) (not e!172555))))

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!266776 (= res!131112 (and (= (size!6461 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6461 a!3436))))))

(declare-fun b!266777 () Bool)

(declare-fun res!131110 () Bool)

(assert (=> b!266777 (=> (not res!131110) (not e!172553))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12910 (_ BitVec 32)) Bool)

(assert (=> b!266777 (= res!131110 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3436 mask!4002))))

(declare-fun b!266778 () Bool)

(assert (=> b!266778 (= e!172555 e!172553)))

(declare-fun res!131111 () Bool)

(assert (=> b!266778 (=> (not res!131111) (not e!172553))))

(declare-datatypes ((SeekEntryResult!1311 0))(
  ( (MissingZero!1311 (index!7414 (_ BitVec 32))) (Found!1311 (index!7415 (_ BitVec 32))) (Intermediate!1311 (undefined!2123 Bool) (index!7416 (_ BitVec 32)) (x!25684 (_ BitVec 32))) (Undefined!1311) (MissingVacant!1311 (index!7417 (_ BitVec 32))) )
))
(declare-fun lt!134561 () SeekEntryResult!1311)

(assert (=> b!266778 (= res!131111 (or (= lt!134561 (MissingZero!1311 i!1355)) (= lt!134561 (MissingVacant!1311 i!1355))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12910 (_ BitVec 32)) SeekEntryResult!1311)

(assert (=> b!266778 (= lt!134561 (seekEntryOrOpen!0 k!2698 a!3436 mask!4002))))

(assert (= (and start!25744 res!131107) b!266776))

(assert (= (and b!266776 res!131112) b!266775))

(assert (= (and b!266775 res!131109) b!266773))

(assert (= (and b!266773 res!131108) b!266778))

(assert (= (and b!266778 res!131111) b!266777))

(assert (= (and b!266777 res!131110) b!266772))

(assert (= (and b!266772 res!131106) b!266774))

(declare-fun m!283331 () Bool)

(assert (=> b!266772 m!283331))

(declare-fun m!283333 () Bool)

(assert (=> b!266777 m!283333))

(declare-fun m!283335 () Bool)

(assert (=> b!266773 m!283335))

(declare-fun m!283337 () Bool)

(assert (=> b!266778 m!283337))

(declare-fun m!283339 () Bool)

(assert (=> b!266775 m!283339))

(declare-fun m!283341 () Bool)

(assert (=> start!25744 m!283341))

(declare-fun m!283343 () Bool)

(assert (=> start!25744 m!283343))

(push 1)

