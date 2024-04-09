; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25450 () Bool)

(assert start!25450)

(declare-fun res!129369 () Bool)

(declare-fun e!171537 () Bool)

(assert (=> start!25450 (=> (not res!129369) (not e!171537))))

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25450 (= res!129369 (validMask!0 mask!4002))))

(assert (=> start!25450 e!171537))

(assert (=> start!25450 true))

(declare-datatypes ((array!12733 0))(
  ( (array!12734 (arr!6025 (Array (_ BitVec 32) (_ BitVec 64))) (size!6377 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12733)

(declare-fun array_inv!3979 (array!12733) Bool)

(assert (=> start!25450 (array_inv!3979 a!3436)))

(declare-fun b!264818 () Bool)

(declare-fun res!129367 () Bool)

(assert (=> b!264818 (=> (not res!129367) (not e!171537))))

(declare-fun k!2698 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!12733 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!264818 (= res!129367 (not (arrayContainsKey!0 a!3436 k!2698 #b00000000000000000000000000000000)))))

(declare-fun b!264819 () Bool)

(assert (=> b!264819 (= e!171537 false)))

(declare-datatypes ((SeekEntryResult!1227 0))(
  ( (MissingZero!1227 (index!7078 (_ BitVec 32))) (Found!1227 (index!7079 (_ BitVec 32))) (Intermediate!1227 (undefined!2039 Bool) (index!7080 (_ BitVec 32)) (x!25376 (_ BitVec 32))) (Undefined!1227) (MissingVacant!1227 (index!7081 (_ BitVec 32))) )
))
(declare-fun lt!133946 () SeekEntryResult!1227)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12733 (_ BitVec 32)) SeekEntryResult!1227)

(assert (=> b!264819 (= lt!133946 (seekEntryOrOpen!0 k!2698 a!3436 mask!4002))))

(declare-fun b!264816 () Bool)

(declare-fun res!129366 () Bool)

(assert (=> b!264816 (=> (not res!129366) (not e!171537))))

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!264816 (= res!129366 (and (= (size!6377 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6377 a!3436))))))

(declare-fun b!264817 () Bool)

(declare-fun res!129368 () Bool)

(assert (=> b!264817 (=> (not res!129368) (not e!171537))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!264817 (= res!129368 (validKeyInArray!0 k!2698))))

(assert (= (and start!25450 res!129369) b!264816))

(assert (= (and b!264816 res!129366) b!264817))

(assert (= (and b!264817 res!129368) b!264818))

(assert (= (and b!264818 res!129367) b!264819))

(declare-fun m!281813 () Bool)

(assert (=> start!25450 m!281813))

(declare-fun m!281815 () Bool)

(assert (=> start!25450 m!281815))

(declare-fun m!281817 () Bool)

(assert (=> b!264818 m!281817))

(declare-fun m!281819 () Bool)

(assert (=> b!264819 m!281819))

(declare-fun m!281821 () Bool)

(assert (=> b!264817 m!281821))

(push 1)

(assert (not b!264819))

(assert (not start!25450))

(assert (not b!264818))

(assert (not b!264817))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

