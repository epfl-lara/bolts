; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102932 () Bool)

(assert start!102932)

(declare-fun b!1236563 () Bool)

(declare-fun res!824658 () Bool)

(declare-fun e!700899 () Bool)

(assert (=> b!1236563 (=> (not res!824658) (not e!700899))))

(declare-datatypes ((array!79718 0))(
  ( (array!79719 (arr!38463 (Array (_ BitVec 32) (_ BitVec 64))) (size!39000 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79718)

(declare-datatypes ((List!27414 0))(
  ( (Nil!27411) (Cons!27410 (h!28619 (_ BitVec 64)) (t!40884 List!27414)) )
))
(declare-fun acc!846 () List!27414)

(declare-fun from!3213 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!79718 (_ BitVec 32) List!27414) Bool)

(assert (=> b!1236563 (= res!824658 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun res!824657 () Bool)

(assert (=> start!102932 (=> (not res!824657) (not e!700899))))

(assert (=> start!102932 (= res!824657 (and (bvslt (size!39000 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!39000 a!3835))))))

(assert (=> start!102932 e!700899))

(declare-fun array_inv!29239 (array!79718) Bool)

(assert (=> start!102932 (array_inv!29239 a!3835)))

(assert (=> start!102932 true))

(declare-fun b!1236564 () Bool)

(declare-fun res!824659 () Bool)

(assert (=> b!1236564 (=> (not res!824659) (not e!700899))))

(assert (=> b!1236564 (= res!824659 (not (= from!3213 (bvsub (size!39000 a!3835) #b00000000000000000000000000000001))))))

(declare-fun b!1236565 () Bool)

(declare-fun res!824662 () Bool)

(assert (=> b!1236565 (=> (not res!824662) (not e!700899))))

(declare-fun noDuplicate!1936 (List!27414) Bool)

(assert (=> b!1236565 (= res!824662 (noDuplicate!1936 acc!846))))

(declare-fun b!1236566 () Bool)

(declare-fun res!824656 () Bool)

(assert (=> b!1236566 (=> (not res!824656) (not e!700899))))

(declare-fun k!2925 () (_ BitVec 64))

(declare-fun contains!7329 (List!27414 (_ BitVec 64)) Bool)

(assert (=> b!1236566 (= res!824656 (contains!7329 acc!846 k!2925))))

(declare-fun b!1236567 () Bool)

(declare-fun res!824661 () Bool)

(assert (=> b!1236567 (=> (not res!824661) (not e!700899))))

(assert (=> b!1236567 (= res!824661 (not (contains!7329 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1236568 () Bool)

(declare-fun res!824660 () Bool)

(assert (=> b!1236568 (=> (not res!824660) (not e!700899))))

(assert (=> b!1236568 (= res!824660 (not (contains!7329 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1236569 () Bool)

(assert (=> b!1236569 (= e!700899 (not true))))

(declare-fun lt!560776 () List!27414)

(declare-fun subseq!566 (List!27414 List!27414) Bool)

(assert (=> b!1236569 (subseq!566 lt!560776 lt!560776)))

(declare-datatypes ((Unit!40964 0))(
  ( (Unit!40965) )
))
(declare-fun lt!560775 () Unit!40964)

(declare-fun lemmaListSubSeqRefl!0 (List!27414) Unit!40964)

(assert (=> b!1236569 (= lt!560775 (lemmaListSubSeqRefl!0 lt!560776))))

(assert (=> b!1236569 (= lt!560776 (Cons!27410 (select (arr!38463 a!3835) from!3213) acc!846))))

(declare-fun b!1236570 () Bool)

(declare-fun res!824663 () Bool)

(assert (=> b!1236570 (=> (not res!824663) (not e!700899))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1236570 (= res!824663 (validKeyInArray!0 (select (arr!38463 a!3835) from!3213)))))

(assert (= (and start!102932 res!824657) b!1236565))

(assert (= (and b!1236565 res!824662) b!1236567))

(assert (= (and b!1236567 res!824661) b!1236568))

(assert (= (and b!1236568 res!824660) b!1236563))

(assert (= (and b!1236563 res!824658) b!1236566))

(assert (= (and b!1236566 res!824656) b!1236564))

(assert (= (and b!1236564 res!824659) b!1236570))

(assert (= (and b!1236570 res!824663) b!1236569))

(declare-fun m!1140383 () Bool)

(assert (=> start!102932 m!1140383))

(declare-fun m!1140385 () Bool)

(assert (=> b!1236566 m!1140385))

(declare-fun m!1140387 () Bool)

(assert (=> b!1236568 m!1140387))

(declare-fun m!1140389 () Bool)

(assert (=> b!1236569 m!1140389))

(declare-fun m!1140391 () Bool)

(assert (=> b!1236569 m!1140391))

(declare-fun m!1140393 () Bool)

(assert (=> b!1236569 m!1140393))

(assert (=> b!1236570 m!1140393))

(assert (=> b!1236570 m!1140393))

(declare-fun m!1140395 () Bool)

(assert (=> b!1236570 m!1140395))

(declare-fun m!1140397 () Bool)

(assert (=> b!1236565 m!1140397))

(declare-fun m!1140399 () Bool)

(assert (=> b!1236563 m!1140399))

(declare-fun m!1140401 () Bool)

(assert (=> b!1236567 m!1140401))

(push 1)

(assert (not b!1236567))

(assert (not start!102932))

(assert (not b!1236563))

(assert (not b!1236566))

(assert (not b!1236565))

(assert (not b!1236570))

(assert (not b!1236568))

(assert (not b!1236569))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

