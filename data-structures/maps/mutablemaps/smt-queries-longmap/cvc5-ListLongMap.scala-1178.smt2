; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25420 () Bool)

(assert start!25420)

(declare-fun b!264628 () Bool)

(declare-fun res!129178 () Bool)

(declare-fun e!171447 () Bool)

(assert (=> b!264628 (=> (not res!129178) (not e!171447))))

(declare-fun k!2698 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!264628 (= res!129178 (validKeyInArray!0 k!2698))))

(declare-fun res!129177 () Bool)

(assert (=> start!25420 (=> (not res!129177) (not e!171447))))

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25420 (= res!129177 (validMask!0 mask!4002))))

(assert (=> start!25420 e!171447))

(assert (=> start!25420 true))

(declare-datatypes ((array!12703 0))(
  ( (array!12704 (arr!6010 (Array (_ BitVec 32) (_ BitVec 64))) (size!6362 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12703)

(declare-fun array_inv!3964 (array!12703) Bool)

(assert (=> start!25420 (array_inv!3964 a!3436)))

(declare-fun b!264630 () Bool)

(assert (=> b!264630 (= e!171447 false)))

(declare-datatypes ((SeekEntryResult!1212 0))(
  ( (MissingZero!1212 (index!7018 (_ BitVec 32))) (Found!1212 (index!7019 (_ BitVec 32))) (Intermediate!1212 (undefined!2024 Bool) (index!7020 (_ BitVec 32)) (x!25321 (_ BitVec 32))) (Undefined!1212) (MissingVacant!1212 (index!7021 (_ BitVec 32))) )
))
(declare-fun lt!133910 () SeekEntryResult!1212)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12703 (_ BitVec 32)) SeekEntryResult!1212)

(assert (=> b!264630 (= lt!133910 (seekEntryOrOpen!0 k!2698 a!3436 mask!4002))))

(declare-fun b!264629 () Bool)

(declare-fun res!129179 () Bool)

(assert (=> b!264629 (=> (not res!129179) (not e!171447))))

(declare-fun arrayContainsKey!0 (array!12703 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!264629 (= res!129179 (not (arrayContainsKey!0 a!3436 k!2698 #b00000000000000000000000000000000)))))

(declare-fun b!264627 () Bool)

(declare-fun res!129180 () Bool)

(assert (=> b!264627 (=> (not res!129180) (not e!171447))))

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!264627 (= res!129180 (and (= (size!6362 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6362 a!3436))))))

(assert (= (and start!25420 res!129177) b!264627))

(assert (= (and b!264627 res!129180) b!264628))

(assert (= (and b!264628 res!129178) b!264629))

(assert (= (and b!264629 res!129179) b!264630))

(declare-fun m!281663 () Bool)

(assert (=> b!264628 m!281663))

(declare-fun m!281665 () Bool)

(assert (=> start!25420 m!281665))

(declare-fun m!281667 () Bool)

(assert (=> start!25420 m!281667))

(declare-fun m!281669 () Bool)

(assert (=> b!264630 m!281669))

(declare-fun m!281671 () Bool)

(assert (=> b!264629 m!281671))

(push 1)

(assert (not b!264628))

(assert (not b!264629))

(assert (not start!25420))

(assert (not b!264630))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

