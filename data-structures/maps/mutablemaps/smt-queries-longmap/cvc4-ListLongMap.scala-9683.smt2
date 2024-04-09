; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114276 () Bool)

(assert start!114276)

(declare-fun b!1357067 () Bool)

(declare-fun res!901953 () Bool)

(declare-fun e!770236 () Bool)

(assert (=> b!1357067 (=> (not res!901953) (not e!770236))))

(declare-datatypes ((List!31855 0))(
  ( (Nil!31852) (Cons!31851 (h!33060 (_ BitVec 64)) (t!46520 List!31855)) )
))
(declare-fun acc!759 () List!31855)

(declare-fun contains!9420 (List!31855 (_ BitVec 64)) Bool)

(assert (=> b!1357067 (= res!901953 (not (contains!9420 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1357068 () Bool)

(declare-fun res!901950 () Bool)

(assert (=> b!1357068 (=> (not res!901950) (not e!770236))))

(declare-fun from!3120 () (_ BitVec 32))

(declare-datatypes ((array!92381 0))(
  ( (array!92382 (arr!44634 (Array (_ BitVec 32) (_ BitVec 64))) (size!45185 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92381)

(assert (=> b!1357068 (= res!901950 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45185 a!3742)))))

(declare-fun b!1357069 () Bool)

(declare-fun res!901947 () Bool)

(assert (=> b!1357069 (=> (not res!901947) (not e!770236))))

(assert (=> b!1357069 (= res!901947 (not (contains!9420 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1357070 () Bool)

(declare-fun res!901949 () Bool)

(assert (=> b!1357070 (=> (not res!901949) (not e!770236))))

(declare-fun noDuplicate!2299 (List!31855) Bool)

(assert (=> b!1357070 (= res!901949 (noDuplicate!2299 acc!759))))

(declare-fun b!1357071 () Bool)

(declare-fun res!901951 () Bool)

(assert (=> b!1357071 (=> (not res!901951) (not e!770236))))

(declare-fun arrayNoDuplicates!0 (array!92381 (_ BitVec 32) List!31855) Bool)

(assert (=> b!1357071 (= res!901951 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1357072 () Bool)

(declare-fun res!901948 () Bool)

(assert (=> b!1357072 (=> (not res!901948) (not e!770236))))

(assert (=> b!1357072 (= res!901948 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31852))))

(declare-fun b!1357073 () Bool)

(assert (=> b!1357073 (= e!770236 (not true))))

(declare-fun subseq!811 (List!31855 List!31855) Bool)

(assert (=> b!1357073 (subseq!811 acc!759 acc!759)))

(declare-datatypes ((Unit!44601 0))(
  ( (Unit!44602) )
))
(declare-fun lt!599057 () Unit!44601)

(declare-fun lemmaListSubSeqRefl!0 (List!31855) Unit!44601)

(assert (=> b!1357073 (= lt!599057 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun b!1357074 () Bool)

(declare-fun res!901946 () Bool)

(assert (=> b!1357074 (=> (not res!901946) (not e!770236))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1357074 (= res!901946 (validKeyInArray!0 (select (arr!44634 a!3742) from!3120)))))

(declare-fun res!901945 () Bool)

(assert (=> start!114276 (=> (not res!901945) (not e!770236))))

(assert (=> start!114276 (= res!901945 (and (bvslt (size!45185 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45185 a!3742))))))

(assert (=> start!114276 e!770236))

(assert (=> start!114276 true))

(declare-fun array_inv!33579 (array!92381) Bool)

(assert (=> start!114276 (array_inv!33579 a!3742)))

(declare-fun b!1357075 () Bool)

(declare-fun res!901944 () Bool)

(assert (=> b!1357075 (=> (not res!901944) (not e!770236))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1357075 (= res!901944 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45185 a!3742))))))

(declare-fun b!1357076 () Bool)

(declare-fun res!901952 () Bool)

(assert (=> b!1357076 (=> (not res!901952) (not e!770236))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1357076 (= res!901952 (not (validKeyInArray!0 l!3587)))))

(assert (= (and start!114276 res!901945) b!1357070))

(assert (= (and b!1357070 res!901949) b!1357069))

(assert (= (and b!1357069 res!901947) b!1357067))

(assert (= (and b!1357067 res!901953) b!1357072))

(assert (= (and b!1357072 res!901948) b!1357071))

(assert (= (and b!1357071 res!901951) b!1357075))

(assert (= (and b!1357075 res!901944) b!1357076))

(assert (= (and b!1357076 res!901952) b!1357068))

(assert (= (and b!1357068 res!901950) b!1357074))

(assert (= (and b!1357074 res!901946) b!1357073))

(declare-fun m!1242915 () Bool)

(assert (=> b!1357070 m!1242915))

(declare-fun m!1242917 () Bool)

(assert (=> b!1357074 m!1242917))

(assert (=> b!1357074 m!1242917))

(declare-fun m!1242919 () Bool)

(assert (=> b!1357074 m!1242919))

(declare-fun m!1242921 () Bool)

(assert (=> b!1357067 m!1242921))

(declare-fun m!1242923 () Bool)

(assert (=> start!114276 m!1242923))

(declare-fun m!1242925 () Bool)

(assert (=> b!1357076 m!1242925))

(declare-fun m!1242927 () Bool)

(assert (=> b!1357071 m!1242927))

(declare-fun m!1242929 () Bool)

(assert (=> b!1357072 m!1242929))

(declare-fun m!1242931 () Bool)

(assert (=> b!1357073 m!1242931))

(declare-fun m!1242933 () Bool)

(assert (=> b!1357073 m!1242933))

(declare-fun m!1242935 () Bool)

(assert (=> b!1357069 m!1242935))

(push 1)

(assert (not b!1357074))

(assert (not b!1357067))

(assert (not b!1357073))

(assert (not start!114276))

(assert (not b!1357069))

(assert (not b!1357072))

(assert (not b!1357076))

(assert (not b!1357071))

(assert (not b!1357070))

(check-sat)

(pop 1)

