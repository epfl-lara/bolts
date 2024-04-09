; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25682 () Bool)

(assert start!25682)

(declare-fun b!266140 () Bool)

(declare-fun e!172274 () Bool)

(declare-fun e!172275 () Bool)

(assert (=> b!266140 (= e!172274 e!172275)))

(declare-fun res!130476 () Bool)

(assert (=> b!266140 (=> (not res!130476) (not e!172275))))

(declare-datatypes ((SeekEntryResult!1280 0))(
  ( (MissingZero!1280 (index!7290 (_ BitVec 32))) (Found!1280 (index!7291 (_ BitVec 32))) (Intermediate!1280 (undefined!2092 Bool) (index!7292 (_ BitVec 32)) (x!25565 (_ BitVec 32))) (Undefined!1280) (MissingVacant!1280 (index!7293 (_ BitVec 32))) )
))
(declare-fun lt!134377 () SeekEntryResult!1280)

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!266140 (= res!130476 (or (= lt!134377 (MissingZero!1280 i!1355)) (= lt!134377 (MissingVacant!1280 i!1355))))))

(declare-fun k!2698 () (_ BitVec 64))

(declare-fun mask!4002 () (_ BitVec 32))

(declare-datatypes ((array!12848 0))(
  ( (array!12849 (arr!6078 (Array (_ BitVec 32) (_ BitVec 64))) (size!6430 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12848)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12848 (_ BitVec 32)) SeekEntryResult!1280)

(assert (=> b!266140 (= lt!134377 (seekEntryOrOpen!0 k!2698 a!3436 mask!4002))))

(declare-fun b!266141 () Bool)

(declare-fun res!130475 () Bool)

(assert (=> b!266141 (=> (not res!130475) (not e!172274))))

(assert (=> b!266141 (= res!130475 (and (= (size!6430 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6430 a!3436))))))

(declare-fun b!266142 () Bool)

(declare-fun res!130479 () Bool)

(assert (=> b!266142 (=> (not res!130479) (not e!172274))))

(declare-fun arrayContainsKey!0 (array!12848 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!266142 (= res!130479 (not (arrayContainsKey!0 a!3436 k!2698 #b00000000000000000000000000000000)))))

(declare-fun b!266143 () Bool)

(assert (=> b!266143 (= e!172275 false)))

(declare-fun lt!134378 () Bool)

(declare-datatypes ((List!3913 0))(
  ( (Nil!3910) (Cons!3909 (h!4576 (_ BitVec 64)) (t!9003 List!3913)) )
))
(declare-fun arrayNoDuplicates!0 (array!12848 (_ BitVec 32) List!3913) Bool)

(assert (=> b!266143 (= lt!134378 (arrayNoDuplicates!0 a!3436 #b00000000000000000000000000000000 Nil!3910))))

(declare-fun b!266144 () Bool)

(declare-fun res!130474 () Bool)

(assert (=> b!266144 (=> (not res!130474) (not e!172275))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12848 (_ BitVec 32)) Bool)

(assert (=> b!266144 (= res!130474 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3436 mask!4002))))

(declare-fun res!130477 () Bool)

(assert (=> start!25682 (=> (not res!130477) (not e!172274))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25682 (= res!130477 (validMask!0 mask!4002))))

(assert (=> start!25682 e!172274))

(assert (=> start!25682 true))

(declare-fun array_inv!4032 (array!12848) Bool)

(assert (=> start!25682 (array_inv!4032 a!3436)))

(declare-fun b!266145 () Bool)

(declare-fun res!130478 () Bool)

(assert (=> b!266145 (=> (not res!130478) (not e!172274))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!266145 (= res!130478 (validKeyInArray!0 k!2698))))

(assert (= (and start!25682 res!130477) b!266141))

(assert (= (and b!266141 res!130475) b!266145))

(assert (= (and b!266145 res!130478) b!266142))

(assert (= (and b!266142 res!130479) b!266140))

(assert (= (and b!266140 res!130476) b!266144))

(assert (= (and b!266144 res!130474) b!266143))

(declare-fun m!282825 () Bool)

(assert (=> b!266144 m!282825))

(declare-fun m!282827 () Bool)

(assert (=> b!266140 m!282827))

(declare-fun m!282829 () Bool)

(assert (=> b!266143 m!282829))

(declare-fun m!282831 () Bool)

(assert (=> b!266145 m!282831))

(declare-fun m!282833 () Bool)

(assert (=> b!266142 m!282833))

(declare-fun m!282835 () Bool)

(assert (=> start!25682 m!282835))

(declare-fun m!282837 () Bool)

(assert (=> start!25682 m!282837))

(push 1)

(assert (not b!266145))

(assert (not start!25682))

(assert (not b!266144))

(assert (not b!266142))

(assert (not b!266140))

(assert (not b!266143))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

