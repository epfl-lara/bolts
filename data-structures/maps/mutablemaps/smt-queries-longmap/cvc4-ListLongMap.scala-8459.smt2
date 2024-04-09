; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102930 () Bool)

(assert start!102930)

(declare-fun b!1236539 () Bool)

(declare-fun res!824636 () Bool)

(declare-fun e!700894 () Bool)

(assert (=> b!1236539 (=> (not res!824636) (not e!700894))))

(declare-datatypes ((array!79716 0))(
  ( (array!79717 (arr!38462 (Array (_ BitVec 32) (_ BitVec 64))) (size!38999 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79716)

(declare-fun from!3213 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1236539 (= res!824636 (validKeyInArray!0 (select (arr!38462 a!3835) from!3213)))))

(declare-fun b!1236540 () Bool)

(declare-fun res!824634 () Bool)

(assert (=> b!1236540 (=> (not res!824634) (not e!700894))))

(declare-datatypes ((List!27413 0))(
  ( (Nil!27410) (Cons!27409 (h!28618 (_ BitVec 64)) (t!40883 List!27413)) )
))
(declare-fun acc!846 () List!27413)

(declare-fun contains!7328 (List!27413 (_ BitVec 64)) Bool)

(assert (=> b!1236540 (= res!824634 (not (contains!7328 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1236541 () Bool)

(declare-fun res!824637 () Bool)

(assert (=> b!1236541 (=> (not res!824637) (not e!700894))))

(declare-fun k!2925 () (_ BitVec 64))

(assert (=> b!1236541 (= res!824637 (contains!7328 acc!846 k!2925))))

(declare-fun res!824632 () Bool)

(assert (=> start!102930 (=> (not res!824632) (not e!700894))))

(assert (=> start!102930 (= res!824632 (and (bvslt (size!38999 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!38999 a!3835))))))

(assert (=> start!102930 e!700894))

(declare-fun array_inv!29238 (array!79716) Bool)

(assert (=> start!102930 (array_inv!29238 a!3835)))

(assert (=> start!102930 true))

(declare-fun b!1236542 () Bool)

(declare-fun res!824633 () Bool)

(assert (=> b!1236542 (=> (not res!824633) (not e!700894))))

(assert (=> b!1236542 (= res!824633 (not (= from!3213 (bvsub (size!38999 a!3835) #b00000000000000000000000000000001))))))

(declare-fun b!1236543 () Bool)

(declare-fun res!824639 () Bool)

(assert (=> b!1236543 (=> (not res!824639) (not e!700894))))

(declare-fun noDuplicate!1935 (List!27413) Bool)

(assert (=> b!1236543 (= res!824639 (noDuplicate!1935 acc!846))))

(declare-fun b!1236544 () Bool)

(declare-fun res!824635 () Bool)

(assert (=> b!1236544 (=> (not res!824635) (not e!700894))))

(declare-fun arrayNoDuplicates!0 (array!79716 (_ BitVec 32) List!27413) Bool)

(assert (=> b!1236544 (= res!824635 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1236545 () Bool)

(assert (=> b!1236545 (= e!700894 (not true))))

(declare-fun lt!560769 () List!27413)

(declare-fun subseq!565 (List!27413 List!27413) Bool)

(assert (=> b!1236545 (subseq!565 lt!560769 lt!560769)))

(declare-datatypes ((Unit!40962 0))(
  ( (Unit!40963) )
))
(declare-fun lt!560770 () Unit!40962)

(declare-fun lemmaListSubSeqRefl!0 (List!27413) Unit!40962)

(assert (=> b!1236545 (= lt!560770 (lemmaListSubSeqRefl!0 lt!560769))))

(assert (=> b!1236545 (= lt!560769 (Cons!27409 (select (arr!38462 a!3835) from!3213) acc!846))))

(declare-fun b!1236546 () Bool)

(declare-fun res!824638 () Bool)

(assert (=> b!1236546 (=> (not res!824638) (not e!700894))))

(assert (=> b!1236546 (= res!824638 (not (contains!7328 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!102930 res!824632) b!1236543))

(assert (= (and b!1236543 res!824639) b!1236546))

(assert (= (and b!1236546 res!824638) b!1236540))

(assert (= (and b!1236540 res!824634) b!1236544))

(assert (= (and b!1236544 res!824635) b!1236541))

(assert (= (and b!1236541 res!824637) b!1236542))

(assert (= (and b!1236542 res!824633) b!1236539))

(assert (= (and b!1236539 res!824636) b!1236545))

(declare-fun m!1140363 () Bool)

(assert (=> b!1236543 m!1140363))

(declare-fun m!1140365 () Bool)

(assert (=> b!1236545 m!1140365))

(declare-fun m!1140367 () Bool)

(assert (=> b!1236545 m!1140367))

(declare-fun m!1140369 () Bool)

(assert (=> b!1236545 m!1140369))

(declare-fun m!1140371 () Bool)

(assert (=> b!1236544 m!1140371))

(declare-fun m!1140373 () Bool)

(assert (=> b!1236546 m!1140373))

(declare-fun m!1140375 () Bool)

(assert (=> start!102930 m!1140375))

(assert (=> b!1236539 m!1140369))

(assert (=> b!1236539 m!1140369))

(declare-fun m!1140377 () Bool)

(assert (=> b!1236539 m!1140377))

(declare-fun m!1140379 () Bool)

(assert (=> b!1236540 m!1140379))

(declare-fun m!1140381 () Bool)

(assert (=> b!1236541 m!1140381))

(push 1)

(assert (not b!1236546))

(assert (not b!1236540))

(assert (not b!1236541))

(assert (not b!1236539))

(assert (not b!1236544))

(assert (not b!1236545))

(assert (not start!102930))

(assert (not b!1236543))

(check-sat)

