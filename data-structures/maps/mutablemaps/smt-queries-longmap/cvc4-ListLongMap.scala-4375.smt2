; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60298 () Bool)

(assert start!60298)

(declare-fun b!676075 () Bool)

(declare-fun res!442693 () Bool)

(declare-fun e!385609 () Bool)

(assert (=> b!676075 (=> (not res!442693) (not e!385609))))

(declare-datatypes ((array!39301 0))(
  ( (array!39302 (arr!18839 (Array (_ BitVec 32) (_ BitVec 64))) (size!19203 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39301)

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!676075 (= res!442693 (not (validKeyInArray!0 (select (arr!18839 a!3626) from!3004))))))

(declare-fun b!676076 () Bool)

(declare-fun res!442689 () Bool)

(assert (=> b!676076 (=> (not res!442689) (not e!385609))))

(declare-fun e!385613 () Bool)

(assert (=> b!676076 (= res!442689 e!385613)))

(declare-fun res!442680 () Bool)

(assert (=> b!676076 (=> res!442680 e!385613)))

(declare-fun e!385608 () Bool)

(assert (=> b!676076 (= res!442680 e!385608)))

(declare-fun res!442679 () Bool)

(assert (=> b!676076 (=> (not res!442679) (not e!385608))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!676076 (= res!442679 (bvsgt from!3004 i!1382))))

(declare-fun b!676077 () Bool)

(declare-fun res!442677 () Bool)

(assert (=> b!676077 (=> (not res!442677) (not e!385609))))

(declare-datatypes ((List!12933 0))(
  ( (Nil!12930) (Cons!12929 (h!13974 (_ BitVec 64)) (t!19169 List!12933)) )
))
(declare-fun acc!681 () List!12933)

(declare-fun arrayNoDuplicates!0 (array!39301 (_ BitVec 32) List!12933) Bool)

(assert (=> b!676077 (= res!442677 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!676078 () Bool)

(declare-fun res!442687 () Bool)

(assert (=> b!676078 (=> (not res!442687) (not e!385609))))

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!39301 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!676078 (= res!442687 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!676079 () Bool)

(declare-fun res!442676 () Bool)

(assert (=> b!676079 (=> (not res!442676) (not e!385609))))

(declare-fun contains!3476 (List!12933 (_ BitVec 64)) Bool)

(assert (=> b!676079 (= res!442676 (not (contains!3476 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!676080 () Bool)

(declare-fun res!442691 () Bool)

(assert (=> b!676080 (=> (not res!442691) (not e!385609))))

(assert (=> b!676080 (= res!442691 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19203 a!3626))))))

(declare-fun b!676082 () Bool)

(declare-fun e!385610 () Bool)

(assert (=> b!676082 (= e!385610 (not (contains!3476 acc!681 k!2843)))))

(declare-fun b!676083 () Bool)

(declare-fun res!442683 () Bool)

(assert (=> b!676083 (=> (not res!442683) (not e!385609))))

(assert (=> b!676083 (= res!442683 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun b!676084 () Bool)

(declare-fun res!442678 () Bool)

(assert (=> b!676084 (=> (not res!442678) (not e!385609))))

(declare-fun noDuplicate!723 (List!12933) Bool)

(assert (=> b!676084 (= res!442678 (noDuplicate!723 acc!681))))

(declare-fun b!676085 () Bool)

(assert (=> b!676085 (= e!385609 false)))

(declare-fun lt!312708 () Bool)

(assert (=> b!676085 (= lt!312708 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681))))

(declare-fun b!676086 () Bool)

(declare-fun e!385615 () Bool)

(assert (=> b!676086 (= e!385613 e!385615)))

(declare-fun res!442681 () Bool)

(assert (=> b!676086 (=> (not res!442681) (not e!385615))))

(assert (=> b!676086 (= res!442681 (bvsle from!3004 i!1382))))

(declare-fun b!676087 () Bool)

(declare-fun res!442686 () Bool)

(assert (=> b!676087 (=> (not res!442686) (not e!385609))))

(assert (=> b!676087 (= res!442686 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12930))))

(declare-fun b!676088 () Bool)

(declare-fun e!385614 () Bool)

(assert (=> b!676088 (= e!385614 e!385610)))

(declare-fun res!442682 () Bool)

(assert (=> b!676088 (=> (not res!442682) (not e!385610))))

(assert (=> b!676088 (= res!442682 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun res!442684 () Bool)

(assert (=> start!60298 (=> (not res!442684) (not e!385609))))

(assert (=> start!60298 (= res!442684 (and (bvslt (size!19203 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19203 a!3626))))))

(assert (=> start!60298 e!385609))

(assert (=> start!60298 true))

(declare-fun array_inv!14613 (array!39301) Bool)

(assert (=> start!60298 (array_inv!14613 a!3626)))

(declare-fun b!676081 () Bool)

(declare-fun res!442675 () Bool)

(assert (=> b!676081 (=> (not res!442675) (not e!385609))))

(assert (=> b!676081 (= res!442675 (validKeyInArray!0 k!2843))))

(declare-fun b!676089 () Bool)

(declare-fun e!385612 () Bool)

(assert (=> b!676089 (= e!385612 (contains!3476 acc!681 k!2843))))

(declare-fun b!676090 () Bool)

(declare-fun res!442692 () Bool)

(assert (=> b!676090 (=> (not res!442692) (not e!385609))))

(assert (=> b!676090 (= res!442692 (not (contains!3476 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!676091 () Bool)

(assert (=> b!676091 (= e!385615 (not (contains!3476 acc!681 k!2843)))))

(declare-fun b!676092 () Bool)

(declare-fun res!442685 () Bool)

(assert (=> b!676092 (=> (not res!442685) (not e!385609))))

(assert (=> b!676092 (= res!442685 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19203 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!676093 () Bool)

(assert (=> b!676093 (= e!385608 (contains!3476 acc!681 k!2843))))

(declare-fun b!676094 () Bool)

(declare-fun res!442694 () Bool)

(assert (=> b!676094 (=> (not res!442694) (not e!385609))))

(assert (=> b!676094 (= res!442694 e!385614)))

(declare-fun res!442688 () Bool)

(assert (=> b!676094 (=> res!442688 e!385614)))

(assert (=> b!676094 (= res!442688 e!385612)))

(declare-fun res!442690 () Bool)

(assert (=> b!676094 (=> (not res!442690) (not e!385612))))

(assert (=> b!676094 (= res!442690 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(assert (= (and start!60298 res!442684) b!676084))

(assert (= (and b!676084 res!442678) b!676090))

(assert (= (and b!676090 res!442692) b!676079))

(assert (= (and b!676079 res!442676) b!676076))

(assert (= (and b!676076 res!442679) b!676093))

(assert (= (and b!676076 (not res!442680)) b!676086))

(assert (= (and b!676086 res!442681) b!676091))

(assert (= (and b!676076 res!442689) b!676087))

(assert (= (and b!676087 res!442686) b!676077))

(assert (= (and b!676077 res!442677) b!676080))

(assert (= (and b!676080 res!442691) b!676081))

(assert (= (and b!676081 res!442675) b!676078))

(assert (= (and b!676078 res!442687) b!676092))

(assert (= (and b!676092 res!442685) b!676075))

(assert (= (and b!676075 res!442693) b!676083))

(assert (= (and b!676083 res!442683) b!676094))

(assert (= (and b!676094 res!442690) b!676089))

(assert (= (and b!676094 (not res!442688)) b!676088))

(assert (= (and b!676088 res!442682) b!676082))

(assert (= (and b!676094 res!442694) b!676085))

(declare-fun m!643089 () Bool)

(assert (=> b!676090 m!643089))

(declare-fun m!643091 () Bool)

(assert (=> b!676079 m!643091))

(declare-fun m!643093 () Bool)

(assert (=> b!676075 m!643093))

(assert (=> b!676075 m!643093))

(declare-fun m!643095 () Bool)

(assert (=> b!676075 m!643095))

(declare-fun m!643097 () Bool)

(assert (=> b!676084 m!643097))

(declare-fun m!643099 () Bool)

(assert (=> b!676091 m!643099))

(declare-fun m!643101 () Bool)

(assert (=> b!676087 m!643101))

(assert (=> b!676082 m!643099))

(assert (=> b!676093 m!643099))

(declare-fun m!643103 () Bool)

(assert (=> b!676085 m!643103))

(declare-fun m!643105 () Bool)

(assert (=> b!676081 m!643105))

(declare-fun m!643107 () Bool)

(assert (=> b!676078 m!643107))

(assert (=> b!676089 m!643099))

(declare-fun m!643109 () Bool)

(assert (=> start!60298 m!643109))

(declare-fun m!643111 () Bool)

(assert (=> b!676077 m!643111))

(push 1)

(assert (not b!676093))

(assert (not b!676082))

(assert (not b!676078))

(assert (not b!676079))

(assert (not b!676077))

(assert (not b!676075))

(assert (not b!676084))

(assert (not b!676081))

(assert (not b!676089))

(assert (not start!60298))

(assert (not b!676091))

