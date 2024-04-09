; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25456 () Bool)

(assert start!25456)

(declare-fun res!129404 () Bool)

(declare-fun e!171556 () Bool)

(assert (=> start!25456 (=> (not res!129404) (not e!171556))))

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25456 (= res!129404 (validMask!0 mask!4002))))

(assert (=> start!25456 e!171556))

(assert (=> start!25456 true))

(declare-datatypes ((array!12739 0))(
  ( (array!12740 (arr!6028 (Array (_ BitVec 32) (_ BitVec 64))) (size!6380 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12739)

(declare-fun array_inv!3982 (array!12739) Bool)

(assert (=> start!25456 (array_inv!3982 a!3436)))

(declare-fun b!264852 () Bool)

(declare-fun res!129403 () Bool)

(assert (=> b!264852 (=> (not res!129403) (not e!171556))))

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!264852 (= res!129403 (and (= (size!6380 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6380 a!3436))))))

(declare-fun b!264853 () Bool)

(declare-fun res!129405 () Bool)

(assert (=> b!264853 (=> (not res!129405) (not e!171556))))

(declare-fun k!2698 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!264853 (= res!129405 (validKeyInArray!0 k!2698))))

(declare-fun b!264855 () Bool)

(assert (=> b!264855 (= e!171556 false)))

(declare-datatypes ((SeekEntryResult!1230 0))(
  ( (MissingZero!1230 (index!7090 (_ BitVec 32))) (Found!1230 (index!7091 (_ BitVec 32))) (Intermediate!1230 (undefined!2042 Bool) (index!7092 (_ BitVec 32)) (x!25387 (_ BitVec 32))) (Undefined!1230) (MissingVacant!1230 (index!7093 (_ BitVec 32))) )
))
(declare-fun lt!133955 () SeekEntryResult!1230)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12739 (_ BitVec 32)) SeekEntryResult!1230)

(assert (=> b!264855 (= lt!133955 (seekEntryOrOpen!0 k!2698 a!3436 mask!4002))))

(declare-fun b!264854 () Bool)

(declare-fun res!129402 () Bool)

(assert (=> b!264854 (=> (not res!129402) (not e!171556))))

(declare-fun arrayContainsKey!0 (array!12739 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!264854 (= res!129402 (not (arrayContainsKey!0 a!3436 k!2698 #b00000000000000000000000000000000)))))

(assert (= (and start!25456 res!129404) b!264852))

(assert (= (and b!264852 res!129403) b!264853))

(assert (= (and b!264853 res!129405) b!264854))

(assert (= (and b!264854 res!129402) b!264855))

(declare-fun m!281843 () Bool)

(assert (=> start!25456 m!281843))

(declare-fun m!281845 () Bool)

(assert (=> start!25456 m!281845))

(declare-fun m!281847 () Bool)

(assert (=> b!264853 m!281847))

(declare-fun m!281849 () Bool)

(assert (=> b!264855 m!281849))

(declare-fun m!281851 () Bool)

(assert (=> b!264854 m!281851))

(push 1)

(assert (not b!264855))

(assert (not b!264854))

(assert (not start!25456))

(assert (not b!264853))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

