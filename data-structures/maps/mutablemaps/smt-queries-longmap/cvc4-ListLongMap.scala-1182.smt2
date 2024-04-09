; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25448 () Bool)

(assert start!25448)

(declare-fun res!129354 () Bool)

(declare-fun e!171532 () Bool)

(assert (=> start!25448 (=> (not res!129354) (not e!171532))))

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25448 (= res!129354 (validMask!0 mask!4002))))

(assert (=> start!25448 e!171532))

(assert (=> start!25448 true))

(declare-datatypes ((array!12731 0))(
  ( (array!12732 (arr!6024 (Array (_ BitVec 32) (_ BitVec 64))) (size!6376 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12731)

(declare-fun array_inv!3978 (array!12731) Bool)

(assert (=> start!25448 (array_inv!3978 a!3436)))

(declare-fun b!264806 () Bool)

(declare-fun res!129356 () Bool)

(assert (=> b!264806 (=> (not res!129356) (not e!171532))))

(declare-fun k!2698 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!12731 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!264806 (= res!129356 (not (arrayContainsKey!0 a!3436 k!2698 #b00000000000000000000000000000000)))))

(declare-fun b!264805 () Bool)

(declare-fun res!129355 () Bool)

(assert (=> b!264805 (=> (not res!129355) (not e!171532))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!264805 (= res!129355 (validKeyInArray!0 k!2698))))

(declare-fun b!264804 () Bool)

(declare-fun res!129357 () Bool)

(assert (=> b!264804 (=> (not res!129357) (not e!171532))))

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!264804 (= res!129357 (and (= (size!6376 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6376 a!3436))))))

(declare-fun b!264807 () Bool)

(assert (=> b!264807 (= e!171532 false)))

(declare-datatypes ((SeekEntryResult!1226 0))(
  ( (MissingZero!1226 (index!7074 (_ BitVec 32))) (Found!1226 (index!7075 (_ BitVec 32))) (Intermediate!1226 (undefined!2038 Bool) (index!7076 (_ BitVec 32)) (x!25367 (_ BitVec 32))) (Undefined!1226) (MissingVacant!1226 (index!7077 (_ BitVec 32))) )
))
(declare-fun lt!133943 () SeekEntryResult!1226)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12731 (_ BitVec 32)) SeekEntryResult!1226)

(assert (=> b!264807 (= lt!133943 (seekEntryOrOpen!0 k!2698 a!3436 mask!4002))))

(assert (= (and start!25448 res!129354) b!264804))

(assert (= (and b!264804 res!129357) b!264805))

(assert (= (and b!264805 res!129355) b!264806))

(assert (= (and b!264806 res!129356) b!264807))

(declare-fun m!281803 () Bool)

(assert (=> start!25448 m!281803))

(declare-fun m!281805 () Bool)

(assert (=> start!25448 m!281805))

(declare-fun m!281807 () Bool)

(assert (=> b!264806 m!281807))

(declare-fun m!281809 () Bool)

(assert (=> b!264805 m!281809))

(declare-fun m!281811 () Bool)

(assert (=> b!264807 m!281811))

(push 1)

(assert (not start!25448))

(assert (not b!264806))

(assert (not b!264805))

(assert (not b!264807))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

