; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102782 () Bool)

(assert start!102782)

(declare-fun b!1234429 () Bool)

(declare-fun res!822705 () Bool)

(declare-fun e!700201 () Bool)

(assert (=> b!1234429 (=> res!822705 e!700201)))

(declare-datatypes ((List!27339 0))(
  ( (Nil!27336) (Cons!27335 (h!28544 (_ BitVec 64)) (t!40809 List!27339)) )
))
(declare-fun lt!559818 () List!27339)

(declare-fun contains!7254 (List!27339 (_ BitVec 64)) Bool)

(assert (=> b!1234429 (= res!822705 (contains!7254 lt!559818 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1234430 () Bool)

(declare-fun res!822702 () Bool)

(declare-fun e!700200 () Bool)

(assert (=> b!1234430 (=> (not res!822702) (not e!700200))))

(declare-fun acc!846 () List!27339)

(assert (=> b!1234430 (= res!822702 (not (contains!7254 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1234431 () Bool)

(declare-fun res!822712 () Bool)

(assert (=> b!1234431 (=> res!822712 e!700201)))

(assert (=> b!1234431 (= res!822712 (contains!7254 lt!559818 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1234432 () Bool)

(declare-fun res!822703 () Bool)

(assert (=> b!1234432 (=> (not res!822703) (not e!700200))))

(declare-datatypes ((array!79568 0))(
  ( (array!79569 (arr!38388 (Array (_ BitVec 32) (_ BitVec 64))) (size!38925 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79568)

(declare-fun from!3213 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1234432 (= res!822703 (validKeyInArray!0 (select (arr!38388 a!3835) from!3213)))))

(declare-fun res!822709 () Bool)

(assert (=> start!102782 (=> (not res!822709) (not e!700200))))

(assert (=> start!102782 (= res!822709 (and (bvslt (size!38925 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!38925 a!3835))))))

(assert (=> start!102782 e!700200))

(declare-fun array_inv!29164 (array!79568) Bool)

(assert (=> start!102782 (array_inv!29164 a!3835)))

(assert (=> start!102782 true))

(declare-fun b!1234433 () Bool)

(declare-fun res!822706 () Bool)

(assert (=> b!1234433 (=> (not res!822706) (not e!700200))))

(declare-fun arrayNoDuplicates!0 (array!79568 (_ BitVec 32) List!27339) Bool)

(assert (=> b!1234433 (= res!822706 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1234434 () Bool)

(declare-fun res!822713 () Bool)

(assert (=> b!1234434 (=> (not res!822713) (not e!700200))))

(assert (=> b!1234434 (= res!822713 (not (contains!7254 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1234435 () Bool)

(declare-fun res!822710 () Bool)

(assert (=> b!1234435 (=> res!822710 e!700201)))

(declare-fun noDuplicate!1861 (List!27339) Bool)

(assert (=> b!1234435 (= res!822710 (not (noDuplicate!1861 lt!559818)))))

(declare-fun b!1234436 () Bool)

(declare-fun res!822707 () Bool)

(assert (=> b!1234436 (=> (not res!822707) (not e!700200))))

(declare-fun k!2925 () (_ BitVec 64))

(assert (=> b!1234436 (= res!822707 (contains!7254 acc!846 k!2925))))

(declare-fun b!1234437 () Bool)

(declare-fun res!822711 () Bool)

(assert (=> b!1234437 (=> (not res!822711) (not e!700200))))

(assert (=> b!1234437 (= res!822711 (not (= from!3213 (bvsub (size!38925 a!3835) #b00000000000000000000000000000001))))))

(declare-fun b!1234438 () Bool)

(assert (=> b!1234438 (= e!700201 true)))

(declare-fun lt!559819 () Bool)

(assert (=> b!1234438 (= lt!559819 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) lt!559818))))

(declare-datatypes ((Unit!40820 0))(
  ( (Unit!40821) )
))
(declare-fun lt!559821 () Unit!40820)

(declare-fun noDuplicateSubseq!56 (List!27339 List!27339) Unit!40820)

(assert (=> b!1234438 (= lt!559821 (noDuplicateSubseq!56 acc!846 lt!559818))))

(declare-fun b!1234439 () Bool)

(declare-fun res!822708 () Bool)

(assert (=> b!1234439 (=> (not res!822708) (not e!700200))))

(assert (=> b!1234439 (= res!822708 (noDuplicate!1861 acc!846))))

(declare-fun b!1234440 () Bool)

(assert (=> b!1234440 (= e!700200 (not e!700201))))

(declare-fun res!822704 () Bool)

(assert (=> b!1234440 (=> res!822704 e!700201)))

(assert (=> b!1234440 (= res!822704 (bvslt (bvadd #b00000000000000000000000000000001 from!3213) #b00000000000000000000000000000000))))

(declare-fun subseq!509 (List!27339 List!27339) Bool)

(assert (=> b!1234440 (subseq!509 acc!846 lt!559818)))

(declare-fun lt!559820 () Unit!40820)

(declare-fun subseqTail!2 (List!27339 List!27339) Unit!40820)

(assert (=> b!1234440 (= lt!559820 (subseqTail!2 lt!559818 lt!559818))))

(assert (=> b!1234440 (subseq!509 lt!559818 lt!559818)))

(declare-fun lt!559822 () Unit!40820)

(declare-fun lemmaListSubSeqRefl!0 (List!27339) Unit!40820)

(assert (=> b!1234440 (= lt!559822 (lemmaListSubSeqRefl!0 lt!559818))))

(assert (=> b!1234440 (= lt!559818 (Cons!27335 (select (arr!38388 a!3835) from!3213) acc!846))))

(assert (= (and start!102782 res!822709) b!1234439))

(assert (= (and b!1234439 res!822708) b!1234434))

(assert (= (and b!1234434 res!822713) b!1234430))

(assert (= (and b!1234430 res!822702) b!1234433))

(assert (= (and b!1234433 res!822706) b!1234436))

(assert (= (and b!1234436 res!822707) b!1234437))

(assert (= (and b!1234437 res!822711) b!1234432))

(assert (= (and b!1234432 res!822703) b!1234440))

(assert (= (and b!1234440 (not res!822704)) b!1234435))

(assert (= (and b!1234435 (not res!822710)) b!1234431))

(assert (= (and b!1234431 (not res!822712)) b!1234429))

(assert (= (and b!1234429 (not res!822705)) b!1234438))

(declare-fun m!1138415 () Bool)

(assert (=> b!1234429 m!1138415))

(declare-fun m!1138417 () Bool)

(assert (=> b!1234440 m!1138417))

(declare-fun m!1138419 () Bool)

(assert (=> b!1234440 m!1138419))

(declare-fun m!1138421 () Bool)

(assert (=> b!1234440 m!1138421))

(declare-fun m!1138423 () Bool)

(assert (=> b!1234440 m!1138423))

(declare-fun m!1138425 () Bool)

(assert (=> b!1234440 m!1138425))

(declare-fun m!1138427 () Bool)

(assert (=> b!1234430 m!1138427))

(declare-fun m!1138429 () Bool)

(assert (=> b!1234434 m!1138429))

(declare-fun m!1138431 () Bool)

(assert (=> b!1234433 m!1138431))

(declare-fun m!1138433 () Bool)

(assert (=> start!102782 m!1138433))

(assert (=> b!1234432 m!1138421))

(assert (=> b!1234432 m!1138421))

(declare-fun m!1138435 () Bool)

(assert (=> b!1234432 m!1138435))

(declare-fun m!1138437 () Bool)

(assert (=> b!1234438 m!1138437))

(declare-fun m!1138439 () Bool)

(assert (=> b!1234438 m!1138439))

(declare-fun m!1138441 () Bool)

(assert (=> b!1234431 m!1138441))

(declare-fun m!1138443 () Bool)

(assert (=> b!1234435 m!1138443))

(declare-fun m!1138445 () Bool)

(assert (=> b!1234439 m!1138445))

(declare-fun m!1138447 () Bool)

(assert (=> b!1234436 m!1138447))

(push 1)

(assert (not b!1234440))

(assert (not b!1234431))

(assert (not start!102782))

(assert (not b!1234433))

(assert (not b!1234430))

(assert (not b!1234435))

(assert (not b!1234436))

(assert (not b!1234439))

(assert (not b!1234434))

(assert (not b!1234429))

(assert (not b!1234438))

(assert (not b!1234432))

(check-sat)

