; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103318 () Bool)

(assert start!103318)

(declare-fun b!1239413 () Bool)

(declare-datatypes ((Unit!41131 0))(
  ( (Unit!41132) )
))
(declare-fun e!702408 () Unit!41131)

(declare-fun Unit!41133 () Unit!41131)

(assert (=> b!1239413 (= e!702408 Unit!41133)))

(declare-fun b!1239414 () Bool)

(declare-fun res!826966 () Bool)

(declare-fun e!702407 () Bool)

(assert (=> b!1239414 (=> (not res!826966) (not e!702407))))

(declare-datatypes ((List!27473 0))(
  ( (Nil!27470) (Cons!27469 (h!28678 (_ BitVec 64)) (t!40943 List!27473)) )
))
(declare-fun acc!846 () List!27473)

(declare-fun contains!7388 (List!27473 (_ BitVec 64)) Bool)

(assert (=> b!1239414 (= res!826966 (not (contains!7388 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1239415 () Bool)

(declare-fun res!826971 () Bool)

(assert (=> b!1239415 (=> (not res!826971) (not e!702407))))

(declare-fun from!3213 () (_ BitVec 32))

(declare-datatypes ((array!79851 0))(
  ( (array!79852 (arr!38522 (Array (_ BitVec 32) (_ BitVec 64))) (size!39059 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79851)

(assert (=> b!1239415 (= res!826971 (not (= from!3213 (bvsub (size!39059 a!3835) #b00000000000000000000000000000001))))))

(declare-fun b!1239416 () Bool)

(declare-fun res!826972 () Bool)

(assert (=> b!1239416 (=> (not res!826972) (not e!702407))))

(declare-fun k!2925 () (_ BitVec 64))

(assert (=> b!1239416 (= res!826972 (contains!7388 acc!846 k!2925))))

(declare-fun b!1239417 () Bool)

(declare-fun res!826969 () Bool)

(assert (=> b!1239417 (=> (not res!826969) (not e!702407))))

(declare-fun arrayNoDuplicates!0 (array!79851 (_ BitVec 32) List!27473) Bool)

(assert (=> b!1239417 (= res!826969 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1239418 () Bool)

(declare-fun res!826965 () Bool)

(assert (=> b!1239418 (=> (not res!826965) (not e!702407))))

(assert (=> b!1239418 (= res!826965 (not (contains!7388 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1239419 () Bool)

(declare-fun e!702410 () Bool)

(assert (=> b!1239419 (= e!702410 (bvsge (bvsub (size!39059 a!3835) (bvadd #b00000000000000000000000000000001 from!3213)) (bvsub (size!39059 a!3835) from!3213)))))

(declare-fun b!1239420 () Bool)

(declare-fun res!826967 () Bool)

(assert (=> b!1239420 (=> (not res!826967) (not e!702410))))

(assert (=> b!1239420 (= res!826967 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) acc!846))))

(declare-fun b!1239422 () Bool)

(declare-fun lt!561687 () Unit!41131)

(assert (=> b!1239422 (= e!702408 lt!561687)))

(declare-fun lt!561686 () List!27473)

(assert (=> b!1239422 (= lt!561686 (Cons!27469 (select (arr!38522 a!3835) from!3213) acc!846))))

(declare-fun lt!561684 () Unit!41131)

(declare-fun lemmaListSubSeqRefl!0 (List!27473) Unit!41131)

(assert (=> b!1239422 (= lt!561684 (lemmaListSubSeqRefl!0 lt!561686))))

(declare-fun subseq!625 (List!27473 List!27473) Bool)

(assert (=> b!1239422 (subseq!625 lt!561686 lt!561686)))

(declare-fun lt!561685 () Unit!41131)

(declare-fun subseqTail!112 (List!27473 List!27473) Unit!41131)

(assert (=> b!1239422 (= lt!561685 (subseqTail!112 lt!561686 lt!561686))))

(assert (=> b!1239422 (subseq!625 acc!846 lt!561686)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79851 List!27473 List!27473 (_ BitVec 32)) Unit!41131)

(assert (=> b!1239422 (= lt!561687 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3835 lt!561686 acc!846 (bvadd #b00000000000000000000000000000001 from!3213)))))

(assert (=> b!1239422 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) acc!846)))

(declare-fun b!1239423 () Bool)

(declare-fun res!826964 () Bool)

(assert (=> b!1239423 (=> (not res!826964) (not e!702407))))

(declare-fun noDuplicate!1995 (List!27473) Bool)

(assert (=> b!1239423 (= res!826964 (noDuplicate!1995 acc!846))))

(declare-fun b!1239421 () Bool)

(assert (=> b!1239421 (= e!702407 e!702410)))

(declare-fun res!826970 () Bool)

(assert (=> b!1239421 (=> (not res!826970) (not e!702410))))

(assert (=> b!1239421 (= res!826970 (and (bvsge (bvadd #b00000000000000000000000000000001 from!3213) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3213) (size!39059 a!3835))))))

(declare-fun lt!561688 () Unit!41131)

(assert (=> b!1239421 (= lt!561688 e!702408)))

(declare-fun c!121087 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1239421 (= c!121087 (validKeyInArray!0 (select (arr!38522 a!3835) from!3213)))))

(declare-fun res!826968 () Bool)

(assert (=> start!103318 (=> (not res!826968) (not e!702407))))

(assert (=> start!103318 (= res!826968 (and (bvslt (size!39059 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!39059 a!3835))))))

(assert (=> start!103318 e!702407))

(declare-fun array_inv!29298 (array!79851) Bool)

(assert (=> start!103318 (array_inv!29298 a!3835)))

(assert (=> start!103318 true))

(assert (= (and start!103318 res!826968) b!1239423))

(assert (= (and b!1239423 res!826964) b!1239418))

(assert (= (and b!1239418 res!826965) b!1239414))

(assert (= (and b!1239414 res!826966) b!1239417))

(assert (= (and b!1239417 res!826969) b!1239416))

(assert (= (and b!1239416 res!826972) b!1239415))

(assert (= (and b!1239415 res!826971) b!1239421))

(assert (= (and b!1239421 c!121087) b!1239422))

(assert (= (and b!1239421 (not c!121087)) b!1239413))

(assert (= (and b!1239421 res!826970) b!1239420))

(assert (= (and b!1239420 res!826967) b!1239419))

(declare-fun m!1142881 () Bool)

(assert (=> b!1239418 m!1142881))

(declare-fun m!1142883 () Bool)

(assert (=> b!1239421 m!1142883))

(assert (=> b!1239421 m!1142883))

(declare-fun m!1142885 () Bool)

(assert (=> b!1239421 m!1142885))

(declare-fun m!1142887 () Bool)

(assert (=> b!1239422 m!1142887))

(declare-fun m!1142889 () Bool)

(assert (=> b!1239422 m!1142889))

(declare-fun m!1142891 () Bool)

(assert (=> b!1239422 m!1142891))

(declare-fun m!1142893 () Bool)

(assert (=> b!1239422 m!1142893))

(declare-fun m!1142895 () Bool)

(assert (=> b!1239422 m!1142895))

(declare-fun m!1142897 () Bool)

(assert (=> b!1239422 m!1142897))

(assert (=> b!1239422 m!1142883))

(declare-fun m!1142899 () Bool)

(assert (=> b!1239416 m!1142899))

(assert (=> b!1239420 m!1142891))

(declare-fun m!1142901 () Bool)

(assert (=> b!1239417 m!1142901))

(declare-fun m!1142903 () Bool)

(assert (=> start!103318 m!1142903))

(declare-fun m!1142905 () Bool)

(assert (=> b!1239423 m!1142905))

(declare-fun m!1142907 () Bool)

(assert (=> b!1239414 m!1142907))

(push 1)

(assert (not start!103318))

(assert (not b!1239416))

(assert (not b!1239418))

(assert (not b!1239414))

(assert (not b!1239423))

(assert (not b!1239420))

(assert (not b!1239421))

(assert (not b!1239417))

(assert (not b!1239422))

(check-sat)

(pop 1)

(push 1)

(check-sat)

