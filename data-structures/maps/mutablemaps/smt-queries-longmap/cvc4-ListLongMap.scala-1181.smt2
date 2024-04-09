; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25442 () Bool)

(assert start!25442)

(declare-fun b!264771 () Bool)

(declare-fun e!171514 () Bool)

(assert (=> b!264771 (= e!171514 false)))

(declare-fun k!2698 () (_ BitVec 64))

(declare-datatypes ((array!12725 0))(
  ( (array!12726 (arr!6021 (Array (_ BitVec 32) (_ BitVec 64))) (size!6373 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12725)

(declare-datatypes ((SeekEntryResult!1223 0))(
  ( (MissingZero!1223 (index!7062 (_ BitVec 32))) (Found!1223 (index!7063 (_ BitVec 32))) (Intermediate!1223 (undefined!2035 Bool) (index!7064 (_ BitVec 32)) (x!25356 (_ BitVec 32))) (Undefined!1223) (MissingVacant!1223 (index!7065 (_ BitVec 32))) )
))
(declare-fun lt!133934 () SeekEntryResult!1223)

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12725 (_ BitVec 32)) SeekEntryResult!1223)

(assert (=> b!264771 (= lt!133934 (seekEntryOrOpen!0 k!2698 a!3436 mask!4002))))

(declare-fun b!264770 () Bool)

(declare-fun res!129321 () Bool)

(assert (=> b!264770 (=> (not res!129321) (not e!171514))))

(declare-fun arrayContainsKey!0 (array!12725 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!264770 (= res!129321 (not (arrayContainsKey!0 a!3436 k!2698 #b00000000000000000000000000000000)))))

(declare-fun b!264769 () Bool)

(declare-fun res!129319 () Bool)

(assert (=> b!264769 (=> (not res!129319) (not e!171514))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!264769 (= res!129319 (validKeyInArray!0 k!2698))))

(declare-fun res!129320 () Bool)

(assert (=> start!25442 (=> (not res!129320) (not e!171514))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25442 (= res!129320 (validMask!0 mask!4002))))

(assert (=> start!25442 e!171514))

(assert (=> start!25442 true))

(declare-fun array_inv!3975 (array!12725) Bool)

(assert (=> start!25442 (array_inv!3975 a!3436)))

(declare-fun b!264768 () Bool)

(declare-fun res!129318 () Bool)

(assert (=> b!264768 (=> (not res!129318) (not e!171514))))

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!264768 (= res!129318 (and (= (size!6373 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6373 a!3436))))))

(assert (= (and start!25442 res!129320) b!264768))

(assert (= (and b!264768 res!129318) b!264769))

(assert (= (and b!264769 res!129319) b!264770))

(assert (= (and b!264770 res!129321) b!264771))

(declare-fun m!281773 () Bool)

(assert (=> b!264771 m!281773))

(declare-fun m!281775 () Bool)

(assert (=> b!264770 m!281775))

(declare-fun m!281777 () Bool)

(assert (=> b!264769 m!281777))

(declare-fun m!281779 () Bool)

(assert (=> start!25442 m!281779))

(declare-fun m!281781 () Bool)

(assert (=> start!25442 m!281781))

(push 1)

(assert (not b!264769))

(assert (not b!264771))

(assert (not start!25442))

(assert (not b!264770))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

