; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102788 () Bool)

(assert start!102788)

(declare-fun b!1234537 () Bool)

(declare-fun res!822813 () Bool)

(declare-fun e!700226 () Bool)

(assert (=> b!1234537 (=> (not res!822813) (not e!700226))))

(declare-datatypes ((List!27342 0))(
  ( (Nil!27339) (Cons!27338 (h!28547 (_ BitVec 64)) (t!40812 List!27342)) )
))
(declare-fun acc!846 () List!27342)

(declare-fun k!2925 () (_ BitVec 64))

(declare-fun contains!7257 (List!27342 (_ BitVec 64)) Bool)

(assert (=> b!1234537 (= res!822813 (contains!7257 acc!846 k!2925))))

(declare-fun b!1234538 () Bool)

(declare-fun res!822820 () Bool)

(assert (=> b!1234538 (=> (not res!822820) (not e!700226))))

(assert (=> b!1234538 (= res!822820 (not (contains!7257 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1234539 () Bool)

(declare-fun res!822812 () Bool)

(assert (=> b!1234539 (=> (not res!822812) (not e!700226))))

(declare-fun noDuplicate!1864 (List!27342) Bool)

(assert (=> b!1234539 (= res!822812 (noDuplicate!1864 acc!846))))

(declare-fun b!1234540 () Bool)

(declare-fun res!822821 () Bool)

(declare-fun e!700227 () Bool)

(assert (=> b!1234540 (=> res!822821 e!700227)))

(declare-fun lt!559867 () List!27342)

(assert (=> b!1234540 (= res!822821 (not (noDuplicate!1864 lt!559867)))))

(declare-fun b!1234541 () Bool)

(declare-fun res!822817 () Bool)

(assert (=> b!1234541 (=> (not res!822817) (not e!700226))))

(declare-datatypes ((array!79574 0))(
  ( (array!79575 (arr!38391 (Array (_ BitVec 32) (_ BitVec 64))) (size!38928 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79574)

(declare-fun from!3213 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!79574 (_ BitVec 32) List!27342) Bool)

(assert (=> b!1234541 (= res!822817 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1234542 () Bool)

(declare-fun res!822819 () Bool)

(assert (=> b!1234542 (=> res!822819 e!700227)))

(assert (=> b!1234542 (= res!822819 (contains!7257 lt!559867 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1234543 () Bool)

(declare-fun res!822815 () Bool)

(assert (=> b!1234543 (=> (not res!822815) (not e!700226))))

(assert (=> b!1234543 (= res!822815 (not (contains!7257 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1234545 () Bool)

(declare-fun res!822814 () Bool)

(assert (=> b!1234545 (=> (not res!822814) (not e!700226))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1234545 (= res!822814 (validKeyInArray!0 (select (arr!38391 a!3835) from!3213)))))

(declare-fun b!1234546 () Bool)

(assert (=> b!1234546 (= e!700226 (not e!700227))))

(declare-fun res!822818 () Bool)

(assert (=> b!1234546 (=> res!822818 e!700227)))

(assert (=> b!1234546 (= res!822818 (bvslt (bvadd #b00000000000000000000000000000001 from!3213) #b00000000000000000000000000000000))))

(declare-fun subseq!512 (List!27342 List!27342) Bool)

(assert (=> b!1234546 (subseq!512 acc!846 lt!559867)))

(declare-datatypes ((Unit!40826 0))(
  ( (Unit!40827) )
))
(declare-fun lt!559865 () Unit!40826)

(declare-fun subseqTail!5 (List!27342 List!27342) Unit!40826)

(assert (=> b!1234546 (= lt!559865 (subseqTail!5 lt!559867 lt!559867))))

(assert (=> b!1234546 (subseq!512 lt!559867 lt!559867)))

(declare-fun lt!559864 () Unit!40826)

(declare-fun lemmaListSubSeqRefl!0 (List!27342) Unit!40826)

(assert (=> b!1234546 (= lt!559864 (lemmaListSubSeqRefl!0 lt!559867))))

(assert (=> b!1234546 (= lt!559867 (Cons!27338 (select (arr!38391 a!3835) from!3213) acc!846))))

(declare-fun b!1234544 () Bool)

(declare-fun res!822816 () Bool)

(assert (=> b!1234544 (=> res!822816 e!700227)))

(assert (=> b!1234544 (= res!822816 (contains!7257 lt!559867 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!822811 () Bool)

(assert (=> start!102788 (=> (not res!822811) (not e!700226))))

(assert (=> start!102788 (= res!822811 (and (bvslt (size!38928 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!38928 a!3835))))))

(assert (=> start!102788 e!700226))

(declare-fun array_inv!29167 (array!79574) Bool)

(assert (=> start!102788 (array_inv!29167 a!3835)))

(assert (=> start!102788 true))

(declare-fun b!1234547 () Bool)

(declare-fun res!822810 () Bool)

(assert (=> b!1234547 (=> (not res!822810) (not e!700226))))

(assert (=> b!1234547 (= res!822810 (not (= from!3213 (bvsub (size!38928 a!3835) #b00000000000000000000000000000001))))))

(declare-fun b!1234548 () Bool)

(assert (=> b!1234548 (= e!700227 true)))

(declare-fun lt!559866 () Bool)

(assert (=> b!1234548 (= lt!559866 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) lt!559867))))

(declare-fun lt!559863 () Unit!40826)

(declare-fun noDuplicateSubseq!59 (List!27342 List!27342) Unit!40826)

(assert (=> b!1234548 (= lt!559863 (noDuplicateSubseq!59 acc!846 lt!559867))))

(assert (= (and start!102788 res!822811) b!1234539))

(assert (= (and b!1234539 res!822812) b!1234538))

(assert (= (and b!1234538 res!822820) b!1234543))

(assert (= (and b!1234543 res!822815) b!1234541))

(assert (= (and b!1234541 res!822817) b!1234537))

(assert (= (and b!1234537 res!822813) b!1234547))

(assert (= (and b!1234547 res!822810) b!1234545))

(assert (= (and b!1234545 res!822814) b!1234546))

(assert (= (and b!1234546 (not res!822818)) b!1234540))

(assert (= (and b!1234540 (not res!822821)) b!1234544))

(assert (= (and b!1234544 (not res!822816)) b!1234542))

(assert (= (and b!1234542 (not res!822819)) b!1234548))

(declare-fun m!1138517 () Bool)

(assert (=> b!1234537 m!1138517))

(declare-fun m!1138519 () Bool)

(assert (=> start!102788 m!1138519))

(declare-fun m!1138521 () Bool)

(assert (=> b!1234541 m!1138521))

(declare-fun m!1138523 () Bool)

(assert (=> b!1234545 m!1138523))

(assert (=> b!1234545 m!1138523))

(declare-fun m!1138525 () Bool)

(assert (=> b!1234545 m!1138525))

(declare-fun m!1138527 () Bool)

(assert (=> b!1234539 m!1138527))

(declare-fun m!1138529 () Bool)

(assert (=> b!1234543 m!1138529))

(declare-fun m!1138531 () Bool)

(assert (=> b!1234540 m!1138531))

(declare-fun m!1138533 () Bool)

(assert (=> b!1234546 m!1138533))

(declare-fun m!1138535 () Bool)

(assert (=> b!1234546 m!1138535))

(declare-fun m!1138537 () Bool)

(assert (=> b!1234546 m!1138537))

(declare-fun m!1138539 () Bool)

(assert (=> b!1234546 m!1138539))

(assert (=> b!1234546 m!1138523))

(declare-fun m!1138541 () Bool)

(assert (=> b!1234538 m!1138541))

(declare-fun m!1138543 () Bool)

(assert (=> b!1234548 m!1138543))

(declare-fun m!1138545 () Bool)

(assert (=> b!1234548 m!1138545))

(declare-fun m!1138547 () Bool)

(assert (=> b!1234544 m!1138547))

(declare-fun m!1138549 () Bool)

(assert (=> b!1234542 m!1138549))

(push 1)

(assert (not b!1234542))

(assert (not b!1234540))

(assert (not b!1234539))

(assert (not start!102788))

(assert (not b!1234544))

(assert (not b!1234548))

(assert (not b!1234541))

(assert (not b!1234546))

(assert (not b!1234538))

(assert (not b!1234545))

(assert (not b!1234537))

(assert (not b!1234543))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

