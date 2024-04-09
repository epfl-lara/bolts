; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113944 () Bool)

(assert start!113944)

(declare-fun b!1350735 () Bool)

(declare-fun res!896316 () Bool)

(declare-fun e!768363 () Bool)

(assert (=> b!1350735 (=> (not res!896316) (not e!768363))))

(declare-fun i!1404 () (_ BitVec 32))

(declare-datatypes ((array!92049 0))(
  ( (array!92050 (arr!44468 (Array (_ BitVec 32) (_ BitVec 64))) (size!45019 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92049)

(assert (=> b!1350735 (= res!896316 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45019 a!3742))))))

(declare-fun b!1350736 () Bool)

(declare-fun e!768364 () Bool)

(assert (=> b!1350736 (= e!768364 true)))

(declare-datatypes ((List!31689 0))(
  ( (Nil!31686) (Cons!31685 (h!32894 (_ BitVec 64)) (t!46354 List!31689)) )
))
(declare-fun lt!597000 () List!31689)

(declare-fun lt!597002 () Bool)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!92049 (_ BitVec 32) List!31689) Bool)

(assert (=> b!1350736 (= lt!597002 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) lt!597000))))

(declare-datatypes ((Unit!44188 0))(
  ( (Unit!44189) )
))
(declare-fun lt!596999 () Unit!44188)

(declare-fun acc!759 () List!31689)

(declare-fun noDuplicateSubseq!114 (List!31689 List!31689) Unit!44188)

(assert (=> b!1350736 (= lt!596999 (noDuplicateSubseq!114 acc!759 lt!597000))))

(declare-fun b!1350737 () Bool)

(declare-fun res!896325 () Bool)

(assert (=> b!1350737 (=> (not res!896325) (not e!768363))))

(declare-fun contains!9254 (List!31689 (_ BitVec 64)) Bool)

(assert (=> b!1350737 (= res!896325 (not (contains!9254 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1350738 () Bool)

(declare-fun res!896323 () Bool)

(assert (=> b!1350738 (=> (not res!896323) (not e!768363))))

(assert (=> b!1350738 (= res!896323 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45019 a!3742)))))

(declare-fun b!1350739 () Bool)

(declare-fun res!896328 () Bool)

(assert (=> b!1350739 (=> res!896328 e!768364)))

(assert (=> b!1350739 (= res!896328 (contains!9254 lt!597000 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1350740 () Bool)

(declare-fun res!896324 () Bool)

(assert (=> b!1350740 (=> res!896324 e!768364)))

(declare-fun noDuplicate!2133 (List!31689) Bool)

(assert (=> b!1350740 (= res!896324 (not (noDuplicate!2133 lt!597000)))))

(declare-fun b!1350741 () Bool)

(declare-fun res!896314 () Bool)

(assert (=> b!1350741 (=> (not res!896314) (not e!768363))))

(assert (=> b!1350741 (= res!896314 (noDuplicate!2133 acc!759))))

(declare-fun b!1350742 () Bool)

(declare-fun res!896317 () Bool)

(assert (=> b!1350742 (=> (not res!896317) (not e!768363))))

(assert (=> b!1350742 (= res!896317 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31686))))

(declare-fun res!896322 () Bool)

(assert (=> start!113944 (=> (not res!896322) (not e!768363))))

(assert (=> start!113944 (= res!896322 (and (bvslt (size!45019 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45019 a!3742))))))

(assert (=> start!113944 e!768363))

(assert (=> start!113944 true))

(declare-fun array_inv!33413 (array!92049) Bool)

(assert (=> start!113944 (array_inv!33413 a!3742)))

(declare-fun b!1350743 () Bool)

(assert (=> b!1350743 (= e!768363 (not e!768364))))

(declare-fun res!896318 () Bool)

(assert (=> b!1350743 (=> res!896318 e!768364)))

(assert (=> b!1350743 (= res!896318 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!680 (List!31689 (_ BitVec 64)) List!31689)

(assert (=> b!1350743 (= lt!597000 ($colon$colon!680 acc!759 (select (arr!44468 a!3742) from!3120)))))

(declare-fun subseq!663 (List!31689 List!31689) Bool)

(assert (=> b!1350743 (subseq!663 acc!759 acc!759)))

(declare-fun lt!597001 () Unit!44188)

(declare-fun lemmaListSubSeqRefl!0 (List!31689) Unit!44188)

(assert (=> b!1350743 (= lt!597001 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun b!1350744 () Bool)

(declare-fun res!896327 () Bool)

(assert (=> b!1350744 (=> (not res!896327) (not e!768363))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1350744 (= res!896327 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1350745 () Bool)

(declare-fun res!896321 () Bool)

(assert (=> b!1350745 (=> res!896321 e!768364)))

(assert (=> b!1350745 (= res!896321 (contains!9254 lt!597000 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1350746 () Bool)

(declare-fun res!896315 () Bool)

(assert (=> b!1350746 (=> (not res!896315) (not e!768363))))

(assert (=> b!1350746 (= res!896315 (validKeyInArray!0 (select (arr!44468 a!3742) from!3120)))))

(declare-fun b!1350747 () Bool)

(declare-fun res!896326 () Bool)

(assert (=> b!1350747 (=> res!896326 e!768364)))

(assert (=> b!1350747 (= res!896326 (not (subseq!663 acc!759 lt!597000)))))

(declare-fun b!1350748 () Bool)

(declare-fun res!896320 () Bool)

(assert (=> b!1350748 (=> (not res!896320) (not e!768363))))

(assert (=> b!1350748 (= res!896320 (not (contains!9254 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1350749 () Bool)

(declare-fun res!896319 () Bool)

(assert (=> b!1350749 (=> (not res!896319) (not e!768363))))

(assert (=> b!1350749 (= res!896319 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(assert (= (and start!113944 res!896322) b!1350741))

(assert (= (and b!1350741 res!896314) b!1350748))

(assert (= (and b!1350748 res!896320) b!1350737))

(assert (= (and b!1350737 res!896325) b!1350742))

(assert (= (and b!1350742 res!896317) b!1350749))

(assert (= (and b!1350749 res!896319) b!1350735))

(assert (= (and b!1350735 res!896316) b!1350744))

(assert (= (and b!1350744 res!896327) b!1350738))

(assert (= (and b!1350738 res!896323) b!1350746))

(assert (= (and b!1350746 res!896315) b!1350743))

(assert (= (and b!1350743 (not res!896318)) b!1350740))

(assert (= (and b!1350740 (not res!896324)) b!1350739))

(assert (= (and b!1350739 (not res!896328)) b!1350745))

(assert (= (and b!1350745 (not res!896321)) b!1350747))

(assert (= (and b!1350747 (not res!896326)) b!1350736))

(declare-fun m!1237921 () Bool)

(assert (=> b!1350748 m!1237921))

(declare-fun m!1237923 () Bool)

(assert (=> b!1350747 m!1237923))

(declare-fun m!1237925 () Bool)

(assert (=> start!113944 m!1237925))

(declare-fun m!1237927 () Bool)

(assert (=> b!1350740 m!1237927))

(declare-fun m!1237929 () Bool)

(assert (=> b!1350741 m!1237929))

(declare-fun m!1237931 () Bool)

(assert (=> b!1350743 m!1237931))

(assert (=> b!1350743 m!1237931))

(declare-fun m!1237933 () Bool)

(assert (=> b!1350743 m!1237933))

(declare-fun m!1237935 () Bool)

(assert (=> b!1350743 m!1237935))

(declare-fun m!1237937 () Bool)

(assert (=> b!1350743 m!1237937))

(declare-fun m!1237939 () Bool)

(assert (=> b!1350737 m!1237939))

(declare-fun m!1237941 () Bool)

(assert (=> b!1350749 m!1237941))

(assert (=> b!1350746 m!1237931))

(assert (=> b!1350746 m!1237931))

(declare-fun m!1237943 () Bool)

(assert (=> b!1350746 m!1237943))

(declare-fun m!1237945 () Bool)

(assert (=> b!1350736 m!1237945))

(declare-fun m!1237947 () Bool)

(assert (=> b!1350736 m!1237947))

(declare-fun m!1237949 () Bool)

(assert (=> b!1350742 m!1237949))

(declare-fun m!1237951 () Bool)

(assert (=> b!1350744 m!1237951))

(declare-fun m!1237953 () Bool)

(assert (=> b!1350745 m!1237953))

(declare-fun m!1237955 () Bool)

(assert (=> b!1350739 m!1237955))

(check-sat (not b!1350741) (not b!1350737) (not b!1350739) (not b!1350743) (not b!1350740) (not start!113944) (not b!1350744) (not b!1350736) (not b!1350746) (not b!1350747) (not b!1350742) (not b!1350749) (not b!1350748) (not b!1350745))
