; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102942 () Bool)

(assert start!102942)

(declare-fun b!1236683 () Bool)

(declare-fun e!700930 () Bool)

(assert (=> b!1236683 (= e!700930 (not true))))

(declare-datatypes ((Unit!40974 0))(
  ( (Unit!40975) )
))
(declare-fun lt!560815 () Unit!40974)

(declare-datatypes ((List!27419 0))(
  ( (Nil!27416) (Cons!27415 (h!28624 (_ BitVec 64)) (t!40889 List!27419)) )
))
(declare-fun lt!560813 () List!27419)

(declare-fun subseqTail!58 (List!27419 List!27419) Unit!40974)

(assert (=> b!1236683 (= lt!560815 (subseqTail!58 lt!560813 lt!560813))))

(declare-fun subseq!571 (List!27419 List!27419) Bool)

(assert (=> b!1236683 (subseq!571 lt!560813 lt!560813)))

(declare-fun lt!560814 () Unit!40974)

(declare-fun lemmaListSubSeqRefl!0 (List!27419) Unit!40974)

(assert (=> b!1236683 (= lt!560814 (lemmaListSubSeqRefl!0 lt!560813))))

(declare-datatypes ((array!79728 0))(
  ( (array!79729 (arr!38468 (Array (_ BitVec 32) (_ BitVec 64))) (size!39005 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79728)

(declare-fun acc!846 () List!27419)

(declare-fun from!3213 () (_ BitVec 32))

(assert (=> b!1236683 (= lt!560813 (Cons!27415 (select (arr!38468 a!3835) from!3213) acc!846))))

(declare-fun b!1236684 () Bool)

(declare-fun res!824777 () Bool)

(assert (=> b!1236684 (=> (not res!824777) (not e!700930))))

(declare-fun contains!7334 (List!27419 (_ BitVec 64)) Bool)

(assert (=> b!1236684 (= res!824777 (not (contains!7334 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1236685 () Bool)

(declare-fun res!824783 () Bool)

(assert (=> b!1236685 (=> (not res!824783) (not e!700930))))

(assert (=> b!1236685 (= res!824783 (not (contains!7334 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!824781 () Bool)

(assert (=> start!102942 (=> (not res!824781) (not e!700930))))

(assert (=> start!102942 (= res!824781 (and (bvslt (size!39005 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!39005 a!3835))))))

(assert (=> start!102942 e!700930))

(declare-fun array_inv!29244 (array!79728) Bool)

(assert (=> start!102942 (array_inv!29244 a!3835)))

(assert (=> start!102942 true))

(declare-fun b!1236686 () Bool)

(declare-fun res!824779 () Bool)

(assert (=> b!1236686 (=> (not res!824779) (not e!700930))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1236686 (= res!824779 (validKeyInArray!0 (select (arr!38468 a!3835) from!3213)))))

(declare-fun b!1236687 () Bool)

(declare-fun res!824778 () Bool)

(assert (=> b!1236687 (=> (not res!824778) (not e!700930))))

(declare-fun k!2925 () (_ BitVec 64))

(assert (=> b!1236687 (= res!824778 (contains!7334 acc!846 k!2925))))

(declare-fun b!1236688 () Bool)

(declare-fun res!824780 () Bool)

(assert (=> b!1236688 (=> (not res!824780) (not e!700930))))

(declare-fun noDuplicate!1941 (List!27419) Bool)

(assert (=> b!1236688 (= res!824780 (noDuplicate!1941 acc!846))))

(declare-fun b!1236689 () Bool)

(declare-fun res!824776 () Bool)

(assert (=> b!1236689 (=> (not res!824776) (not e!700930))))

(assert (=> b!1236689 (= res!824776 (not (= from!3213 (bvsub (size!39005 a!3835) #b00000000000000000000000000000001))))))

(declare-fun b!1236690 () Bool)

(declare-fun res!824782 () Bool)

(assert (=> b!1236690 (=> (not res!824782) (not e!700930))))

(declare-fun arrayNoDuplicates!0 (array!79728 (_ BitVec 32) List!27419) Bool)

(assert (=> b!1236690 (= res!824782 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(assert (= (and start!102942 res!824781) b!1236688))

(assert (= (and b!1236688 res!824780) b!1236685))

(assert (= (and b!1236685 res!824783) b!1236684))

(assert (= (and b!1236684 res!824777) b!1236690))

(assert (= (and b!1236690 res!824782) b!1236687))

(assert (= (and b!1236687 res!824778) b!1236689))

(assert (= (and b!1236689 res!824776) b!1236686))

(assert (= (and b!1236686 res!824779) b!1236683))

(declare-fun m!1140487 () Bool)

(assert (=> b!1236687 m!1140487))

(declare-fun m!1140489 () Bool)

(assert (=> b!1236683 m!1140489))

(declare-fun m!1140491 () Bool)

(assert (=> b!1236683 m!1140491))

(declare-fun m!1140493 () Bool)

(assert (=> b!1236683 m!1140493))

(declare-fun m!1140495 () Bool)

(assert (=> b!1236683 m!1140495))

(declare-fun m!1140497 () Bool)

(assert (=> b!1236685 m!1140497))

(declare-fun m!1140499 () Bool)

(assert (=> b!1236684 m!1140499))

(declare-fun m!1140501 () Bool)

(assert (=> start!102942 m!1140501))

(declare-fun m!1140503 () Bool)

(assert (=> b!1236688 m!1140503))

(declare-fun m!1140505 () Bool)

(assert (=> b!1236690 m!1140505))

(assert (=> b!1236686 m!1140495))

(assert (=> b!1236686 m!1140495))

(declare-fun m!1140507 () Bool)

(assert (=> b!1236686 m!1140507))

(push 1)

(assert (not b!1236685))

(assert (not start!102942))

(assert (not b!1236688))

(assert (not b!1236690))

(assert (not b!1236686))

(assert (not b!1236687))

(assert (not b!1236684))

(assert (not b!1236683))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

