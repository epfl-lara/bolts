; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60234 () Bool)

(assert start!60234)

(declare-fun res!440604 () Bool)

(declare-fun e!384748 () Bool)

(assert (=> start!60234 (=> (not res!440604) (not e!384748))))

(declare-datatypes ((array!39237 0))(
  ( (array!39238 (arr!18807 (Array (_ BitVec 32) (_ BitVec 64))) (size!19171 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39237)

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> start!60234 (= res!440604 (and (bvslt (size!19171 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19171 a!3626))))))

(assert (=> start!60234 e!384748))

(assert (=> start!60234 true))

(declare-fun array_inv!14581 (array!39237) Bool)

(assert (=> start!60234 (array_inv!14581 a!3626)))

(declare-fun b!673917 () Bool)

(declare-fun res!440590 () Bool)

(assert (=> b!673917 (=> (not res!440590) (not e!384748))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!673917 (= res!440590 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19171 a!3626))))))

(declare-fun b!673918 () Bool)

(declare-fun res!440588 () Bool)

(assert (=> b!673918 (=> (not res!440588) (not e!384748))))

(declare-fun e!384738 () Bool)

(assert (=> b!673918 (= res!440588 e!384738)))

(declare-fun res!440603 () Bool)

(assert (=> b!673918 (=> res!440603 e!384738)))

(declare-fun e!384740 () Bool)

(assert (=> b!673918 (= res!440603 e!384740)))

(declare-fun res!440605 () Bool)

(assert (=> b!673918 (=> (not res!440605) (not e!384740))))

(assert (=> b!673918 (= res!440605 (bvsgt from!3004 i!1382))))

(declare-fun b!673919 () Bool)

(declare-fun e!384744 () Bool)

(declare-fun e!384747 () Bool)

(assert (=> b!673919 (= e!384744 e!384747)))

(declare-fun res!440602 () Bool)

(assert (=> b!673919 (=> (not res!440602) (not e!384747))))

(assert (=> b!673919 (= res!440602 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-datatypes ((List!12901 0))(
  ( (Nil!12898) (Cons!12897 (h!13942 (_ BitVec 64)) (t!19137 List!12901)) )
))
(declare-fun lt!312512 () List!12901)

(declare-fun acc!681 () List!12901)

(declare-fun $colon$colon!292 (List!12901 (_ BitVec 64)) List!12901)

(assert (=> b!673919 (= lt!312512 ($colon$colon!292 acc!681 (select (arr!18807 a!3626) from!3004)))))

(declare-fun b!673920 () Bool)

(declare-fun res!440589 () Bool)

(assert (=> b!673920 (=> (not res!440589) (not e!384747))))

(declare-fun contains!3444 (List!12901 (_ BitVec 64)) Bool)

(assert (=> b!673920 (= res!440589 (not (contains!3444 lt!312512 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!673921 () Bool)

(declare-fun res!440592 () Bool)

(assert (=> b!673921 (=> (not res!440592) (not e!384748))))

(assert (=> b!673921 (= res!440592 (not (contains!3444 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!673922 () Bool)

(declare-fun res!440609 () Bool)

(assert (=> b!673922 (=> (not res!440609) (not e!384748))))

(assert (=> b!673922 (= res!440609 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19171 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!673923 () Bool)

(declare-fun res!440594 () Bool)

(assert (=> b!673923 (=> (not res!440594) (not e!384748))))

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!39237 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!673923 (= res!440594 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!673924 () Bool)

(assert (=> b!673924 (= e!384748 e!384744)))

(declare-fun res!440608 () Bool)

(assert (=> b!673924 (=> (not res!440608) (not e!384744))))

(assert (=> b!673924 (= res!440608 (not (= (select (arr!18807 a!3626) from!3004) k!2843)))))

(declare-datatypes ((Unit!23692 0))(
  ( (Unit!23693) )
))
(declare-fun lt!312513 () Unit!23692)

(declare-fun e!384746 () Unit!23692)

(assert (=> b!673924 (= lt!312513 e!384746)))

(declare-fun c!77033 () Bool)

(assert (=> b!673924 (= c!77033 (= (select (arr!18807 a!3626) from!3004) k!2843))))

(declare-fun b!673925 () Bool)

(declare-fun Unit!23694 () Unit!23692)

(assert (=> b!673925 (= e!384746 Unit!23694)))

(assert (=> b!673925 (arrayContainsKey!0 a!3626 k!2843 from!3004)))

(declare-fun lt!312511 () Unit!23692)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39237 (_ BitVec 64) (_ BitVec 32)) Unit!23692)

(assert (=> b!673925 (= lt!312511 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!673925 false))

(declare-fun b!673926 () Bool)

(declare-fun res!440598 () Bool)

(assert (=> b!673926 (=> (not res!440598) (not e!384748))))

(declare-fun arrayNoDuplicates!0 (array!39237 (_ BitVec 32) List!12901) Bool)

(assert (=> b!673926 (= res!440598 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12898))))

(declare-fun b!673927 () Bool)

(declare-fun e!384743 () Bool)

(declare-fun e!384742 () Bool)

(assert (=> b!673927 (= e!384743 e!384742)))

(declare-fun res!440599 () Bool)

(assert (=> b!673927 (=> (not res!440599) (not e!384742))))

(assert (=> b!673927 (= res!440599 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!673928 () Bool)

(declare-fun res!440597 () Bool)

(assert (=> b!673928 (=> (not res!440597) (not e!384747))))

(assert (=> b!673928 (= res!440597 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!312512))))

(declare-fun b!673929 () Bool)

(declare-fun e!384745 () Bool)

(assert (=> b!673929 (= e!384745 (contains!3444 lt!312512 k!2843))))

(declare-fun b!673930 () Bool)

(declare-fun res!440585 () Bool)

(assert (=> b!673930 (=> (not res!440585) (not e!384748))))

(declare-fun noDuplicate!691 (List!12901) Bool)

(assert (=> b!673930 (= res!440585 (noDuplicate!691 acc!681))))

(declare-fun b!673931 () Bool)

(declare-fun Unit!23695 () Unit!23692)

(assert (=> b!673931 (= e!384746 Unit!23695)))

(declare-fun b!673932 () Bool)

(declare-fun res!440601 () Bool)

(assert (=> b!673932 (=> (not res!440601) (not e!384748))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!673932 (= res!440601 (validKeyInArray!0 (select (arr!18807 a!3626) from!3004)))))

(declare-fun b!673933 () Bool)

(assert (=> b!673933 (= e!384740 (contains!3444 acc!681 k!2843))))

(declare-fun b!673934 () Bool)

(declare-fun res!440595 () Bool)

(assert (=> b!673934 (=> (not res!440595) (not e!384748))))

(assert (=> b!673934 (= res!440595 (validKeyInArray!0 k!2843))))

(declare-fun b!673935 () Bool)

(declare-fun res!440600 () Bool)

(assert (=> b!673935 (=> (not res!440600) (not e!384747))))

(assert (=> b!673935 (= res!440600 (noDuplicate!691 lt!312512))))

(declare-fun b!673936 () Bool)

(assert (=> b!673936 (= e!384742 (not (contains!3444 lt!312512 k!2843)))))

(declare-fun b!673937 () Bool)

(declare-fun res!440606 () Bool)

(assert (=> b!673937 (=> (not res!440606) (not e!384748))))

(assert (=> b!673937 (= res!440606 (not (contains!3444 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!673938 () Bool)

(declare-fun res!440587 () Bool)

(assert (=> b!673938 (=> (not res!440587) (not e!384748))))

(assert (=> b!673938 (= res!440587 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!673939 () Bool)

(assert (=> b!673939 (= e!384747 (not (bvsle from!3004 (size!19171 a!3626))))))

(assert (=> b!673939 (arrayNoDuplicates!0 (array!39238 (store (arr!18807 a!3626) i!1382 k!2843) (size!19171 a!3626)) (bvadd #b00000000000000000000000000000001 from!3004) lt!312512)))

(declare-fun lt!312510 () Unit!23692)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!39237 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12901) Unit!23692)

(assert (=> b!673939 (= lt!312510 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3626 k!2843 i!1382 (bvadd #b00000000000000000000000000000001 from!3004) lt!312512))))

(declare-fun b!673940 () Bool)

(declare-fun e!384739 () Bool)

(assert (=> b!673940 (= e!384738 e!384739)))

(declare-fun res!440596 () Bool)

(assert (=> b!673940 (=> (not res!440596) (not e!384739))))

(assert (=> b!673940 (= res!440596 (bvsle from!3004 i!1382))))

(declare-fun b!673941 () Bool)

(declare-fun res!440593 () Bool)

(assert (=> b!673941 (=> (not res!440593) (not e!384747))))

(assert (=> b!673941 (= res!440593 e!384743)))

(declare-fun res!440586 () Bool)

(assert (=> b!673941 (=> res!440586 e!384743)))

(assert (=> b!673941 (= res!440586 e!384745)))

(declare-fun res!440591 () Bool)

(assert (=> b!673941 (=> (not res!440591) (not e!384745))))

(assert (=> b!673941 (= res!440591 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!673942 () Bool)

(declare-fun res!440607 () Bool)

(assert (=> b!673942 (=> (not res!440607) (not e!384747))))

(assert (=> b!673942 (= res!440607 (not (contains!3444 lt!312512 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!673943 () Bool)

(assert (=> b!673943 (= e!384739 (not (contains!3444 acc!681 k!2843)))))

(assert (= (and start!60234 res!440604) b!673930))

(assert (= (and b!673930 res!440585) b!673921))

(assert (= (and b!673921 res!440592) b!673937))

(assert (= (and b!673937 res!440606) b!673918))

(assert (= (and b!673918 res!440605) b!673933))

(assert (= (and b!673918 (not res!440603)) b!673940))

(assert (= (and b!673940 res!440596) b!673943))

(assert (= (and b!673918 res!440588) b!673926))

(assert (= (and b!673926 res!440598) b!673938))

(assert (= (and b!673938 res!440587) b!673917))

(assert (= (and b!673917 res!440590) b!673934))

(assert (= (and b!673934 res!440595) b!673923))

(assert (= (and b!673923 res!440594) b!673922))

(assert (= (and b!673922 res!440609) b!673932))

(assert (= (and b!673932 res!440601) b!673924))

(assert (= (and b!673924 c!77033) b!673925))

(assert (= (and b!673924 (not c!77033)) b!673931))

(assert (= (and b!673924 res!440608) b!673919))

(assert (= (and b!673919 res!440602) b!673935))

(assert (= (and b!673935 res!440600) b!673920))

(assert (= (and b!673920 res!440589) b!673942))

(assert (= (and b!673942 res!440607) b!673941))

(assert (= (and b!673941 res!440591) b!673929))

(assert (= (and b!673941 (not res!440586)) b!673927))

(assert (= (and b!673927 res!440599) b!673936))

(assert (= (and b!673941 res!440593) b!673928))

(assert (= (and b!673928 res!440597) b!673939))

(declare-fun m!642081 () Bool)

(assert (=> b!673939 m!642081))

(declare-fun m!642083 () Bool)

(assert (=> b!673939 m!642083))

(declare-fun m!642085 () Bool)

(assert (=> b!673939 m!642085))

(declare-fun m!642087 () Bool)

(assert (=> start!60234 m!642087))

(declare-fun m!642089 () Bool)

(assert (=> b!673936 m!642089))

(declare-fun m!642091 () Bool)

(assert (=> b!673937 m!642091))

(declare-fun m!642093 () Bool)

(assert (=> b!673935 m!642093))

(declare-fun m!642095 () Bool)

(assert (=> b!673938 m!642095))

(declare-fun m!642097 () Bool)

(assert (=> b!673925 m!642097))

(declare-fun m!642099 () Bool)

(assert (=> b!673925 m!642099))

(assert (=> b!673929 m!642089))

(declare-fun m!642101 () Bool)

(assert (=> b!673919 m!642101))

(assert (=> b!673919 m!642101))

(declare-fun m!642103 () Bool)

(assert (=> b!673919 m!642103))

(declare-fun m!642105 () Bool)

(assert (=> b!673942 m!642105))

(declare-fun m!642107 () Bool)

(assert (=> b!673920 m!642107))

(declare-fun m!642109 () Bool)

(assert (=> b!673933 m!642109))

(declare-fun m!642111 () Bool)

(assert (=> b!673930 m!642111))

(declare-fun m!642113 () Bool)

(assert (=> b!673934 m!642113))

(declare-fun m!642115 () Bool)

(assert (=> b!673923 m!642115))

(declare-fun m!642117 () Bool)

(assert (=> b!673928 m!642117))

(declare-fun m!642119 () Bool)

(assert (=> b!673921 m!642119))

(assert (=> b!673924 m!642101))

(assert (=> b!673943 m!642109))

(declare-fun m!642121 () Bool)

(assert (=> b!673926 m!642121))

(assert (=> b!673932 m!642101))

(assert (=> b!673932 m!642101))

(declare-fun m!642123 () Bool)

(assert (=> b!673932 m!642123))

(push 1)

(assert (not b!673921))

(assert (not b!673930))

(assert (not b!673938))

(assert (not b!673934))

(assert (not start!60234))

(assert (not b!673923))

(assert (not b!673920))

(assert (not b!673935))

(assert (not b!673926))

(assert (not b!673939))

(assert (not b!673925))

(assert (not b!673919))

(assert (not b!673929))

(assert (not b!673936))

(assert (not b!673942))

(assert (not b!673933))

(assert (not b!673943))

(assert (not b!673928))

(assert (not b!673937))

(assert (not b!673932))

(check-sat)

(pop 1)

(push 1)

(check-sat)

