; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103150 () Bool)

(assert start!103150)

(declare-fun res!825909 () Bool)

(declare-fun e!701726 () Bool)

(assert (=> start!103150 (=> (not res!825909) (not e!701726))))

(declare-datatypes ((array!79785 0))(
  ( (array!79786 (arr!38492 (Array (_ BitVec 32) (_ BitVec 64))) (size!39029 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79785)

(declare-fun from!3213 () (_ BitVec 32))

(assert (=> start!103150 (= res!825909 (and (bvslt (size!39029 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!39029 a!3835))))))

(assert (=> start!103150 e!701726))

(declare-fun array_inv!29268 (array!79785) Bool)

(assert (=> start!103150 (array_inv!29268 a!3835)))

(assert (=> start!103150 true))

(declare-fun b!1238057 () Bool)

(declare-fun res!825911 () Bool)

(assert (=> b!1238057 (=> (not res!825911) (not e!701726))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1238057 (= res!825911 (validKeyInArray!0 (select (arr!38492 a!3835) from!3213)))))

(declare-fun b!1238058 () Bool)

(declare-fun res!825916 () Bool)

(assert (=> b!1238058 (=> (not res!825916) (not e!701726))))

(declare-datatypes ((List!27443 0))(
  ( (Nil!27440) (Cons!27439 (h!28648 (_ BitVec 64)) (t!40913 List!27443)) )
))
(declare-fun acc!846 () List!27443)

(declare-fun contains!7358 (List!27443 (_ BitVec 64)) Bool)

(assert (=> b!1238058 (= res!825916 (not (contains!7358 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1238059 () Bool)

(declare-fun res!825915 () Bool)

(assert (=> b!1238059 (=> (not res!825915) (not e!701726))))

(assert (=> b!1238059 (= res!825915 (not (= from!3213 (bvsub (size!39029 a!3835) #b00000000000000000000000000000001))))))

(declare-fun b!1238060 () Bool)

(declare-fun res!825914 () Bool)

(assert (=> b!1238060 (=> (not res!825914) (not e!701726))))

(declare-fun noDuplicate!1965 (List!27443) Bool)

(assert (=> b!1238060 (= res!825914 (noDuplicate!1965 acc!846))))

(declare-fun b!1238061 () Bool)

(declare-fun e!701725 () Bool)

(assert (=> b!1238061 (= e!701726 (not e!701725))))

(declare-fun res!825913 () Bool)

(assert (=> b!1238061 (=> res!825913 e!701725)))

(assert (=> b!1238061 (= res!825913 (bvslt (bvadd #b00000000000000000000000000000001 from!3213) #b00000000000000000000000000000000))))

(declare-fun lt!561155 () List!27443)

(declare-fun subseq!595 (List!27443 List!27443) Bool)

(assert (=> b!1238061 (subseq!595 acc!846 lt!561155)))

(declare-datatypes ((Unit!41038 0))(
  ( (Unit!41039) )
))
(declare-fun lt!561156 () Unit!41038)

(declare-fun subseqTail!82 (List!27443 List!27443) Unit!41038)

(assert (=> b!1238061 (= lt!561156 (subseqTail!82 lt!561155 lt!561155))))

(assert (=> b!1238061 (subseq!595 lt!561155 lt!561155)))

(declare-fun lt!561154 () Unit!41038)

(declare-fun lemmaListSubSeqRefl!0 (List!27443) Unit!41038)

(assert (=> b!1238061 (= lt!561154 (lemmaListSubSeqRefl!0 lt!561155))))

(assert (=> b!1238061 (= lt!561155 (Cons!27439 (select (arr!38492 a!3835) from!3213) acc!846))))

(declare-fun b!1238062 () Bool)

(assert (=> b!1238062 (= e!701725 true)))

(declare-fun lt!561157 () Bool)

(assert (=> b!1238062 (= lt!561157 (contains!7358 lt!561155 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1238063 () Bool)

(declare-fun res!825912 () Bool)

(assert (=> b!1238063 (=> (not res!825912) (not e!701726))))

(declare-fun k!2925 () (_ BitVec 64))

(assert (=> b!1238063 (= res!825912 (contains!7358 acc!846 k!2925))))

(declare-fun b!1238064 () Bool)

(declare-fun res!825910 () Bool)

(assert (=> b!1238064 (=> res!825910 e!701725)))

(assert (=> b!1238064 (= res!825910 (not (noDuplicate!1965 lt!561155)))))

(declare-fun b!1238065 () Bool)

(declare-fun res!825907 () Bool)

(assert (=> b!1238065 (=> (not res!825907) (not e!701726))))

(declare-fun arrayNoDuplicates!0 (array!79785 (_ BitVec 32) List!27443) Bool)

(assert (=> b!1238065 (= res!825907 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1238066 () Bool)

(declare-fun res!825908 () Bool)

(assert (=> b!1238066 (=> (not res!825908) (not e!701726))))

(assert (=> b!1238066 (= res!825908 (not (contains!7358 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1238067 () Bool)

(declare-fun res!825906 () Bool)

(assert (=> b!1238067 (=> res!825906 e!701725)))

(assert (=> b!1238067 (= res!825906 (contains!7358 lt!561155 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!103150 res!825909) b!1238060))

(assert (= (and b!1238060 res!825914) b!1238058))

(assert (= (and b!1238058 res!825916) b!1238066))

(assert (= (and b!1238066 res!825908) b!1238065))

(assert (= (and b!1238065 res!825907) b!1238063))

(assert (= (and b!1238063 res!825912) b!1238059))

(assert (= (and b!1238059 res!825915) b!1238057))

(assert (= (and b!1238057 res!825911) b!1238061))

(assert (= (and b!1238061 (not res!825913)) b!1238064))

(assert (= (and b!1238064 (not res!825910)) b!1238067))

(assert (= (and b!1238067 (not res!825906)) b!1238062))

(declare-fun m!1141661 () Bool)

(assert (=> b!1238066 m!1141661))

(declare-fun m!1141663 () Bool)

(assert (=> b!1238057 m!1141663))

(assert (=> b!1238057 m!1141663))

(declare-fun m!1141665 () Bool)

(assert (=> b!1238057 m!1141665))

(declare-fun m!1141667 () Bool)

(assert (=> start!103150 m!1141667))

(declare-fun m!1141669 () Bool)

(assert (=> b!1238061 m!1141669))

(declare-fun m!1141671 () Bool)

(assert (=> b!1238061 m!1141671))

(declare-fun m!1141673 () Bool)

(assert (=> b!1238061 m!1141673))

(declare-fun m!1141675 () Bool)

(assert (=> b!1238061 m!1141675))

(assert (=> b!1238061 m!1141663))

(declare-fun m!1141677 () Bool)

(assert (=> b!1238065 m!1141677))

(declare-fun m!1141679 () Bool)

(assert (=> b!1238062 m!1141679))

(declare-fun m!1141681 () Bool)

(assert (=> b!1238067 m!1141681))

(declare-fun m!1141683 () Bool)

(assert (=> b!1238060 m!1141683))

(declare-fun m!1141685 () Bool)

(assert (=> b!1238058 m!1141685))

(declare-fun m!1141687 () Bool)

(assert (=> b!1238063 m!1141687))

(declare-fun m!1141689 () Bool)

(assert (=> b!1238064 m!1141689))

(push 1)

(assert (not b!1238057))

(assert (not b!1238067))

(assert (not b!1238066))

(assert (not b!1238063))

(assert (not b!1238065))

(assert (not b!1238062))

(assert (not b!1238060))

(assert (not b!1238061))

(assert (not start!103150))

(assert (not b!1238064))

(assert (not b!1238058))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

