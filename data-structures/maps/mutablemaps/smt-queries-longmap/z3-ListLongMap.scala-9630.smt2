; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113956 () Bool)

(assert start!113956)

(declare-fun b!1351005 () Bool)

(declare-fun res!896593 () Bool)

(declare-fun e!768416 () Bool)

(assert (=> b!1351005 (=> (not res!896593) (not e!768416))))

(declare-datatypes ((List!31695 0))(
  ( (Nil!31692) (Cons!31691 (h!32900 (_ BitVec 64)) (t!46360 List!31695)) )
))
(declare-fun acc!759 () List!31695)

(declare-fun contains!9260 (List!31695 (_ BitVec 64)) Bool)

(assert (=> b!1351005 (= res!896593 (not (contains!9260 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1351006 () Bool)

(declare-fun res!896595 () Bool)

(assert (=> b!1351006 (=> (not res!896595) (not e!768416))))

(declare-datatypes ((array!92061 0))(
  ( (array!92062 (arr!44474 (Array (_ BitVec 32) (_ BitVec 64))) (size!45025 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92061)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!92061 (_ BitVec 32) List!31695) Bool)

(assert (=> b!1351006 (= res!896595 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1351007 () Bool)

(declare-fun res!896586 () Bool)

(assert (=> b!1351007 (=> (not res!896586) (not e!768416))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1351007 (= res!896586 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1351009 () Bool)

(declare-fun res!896590 () Bool)

(assert (=> b!1351009 (=> (not res!896590) (not e!768416))))

(assert (=> b!1351009 (= res!896590 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45025 a!3742)))))

(declare-fun b!1351010 () Bool)

(declare-fun res!896596 () Bool)

(declare-fun e!768417 () Bool)

(assert (=> b!1351010 (=> res!896596 e!768417)))

(declare-fun lt!597074 () List!31695)

(assert (=> b!1351010 (= res!896596 (contains!9260 lt!597074 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1351011 () Bool)

(declare-fun res!896594 () Bool)

(assert (=> b!1351011 (=> res!896594 e!768417)))

(declare-fun subseq!669 (List!31695 List!31695) Bool)

(assert (=> b!1351011 (= res!896594 (not (subseq!669 acc!759 lt!597074)))))

(declare-fun b!1351012 () Bool)

(declare-fun res!896589 () Bool)

(assert (=> b!1351012 (=> (not res!896589) (not e!768416))))

(assert (=> b!1351012 (= res!896589 (not (contains!9260 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1351013 () Bool)

(declare-fun res!896588 () Bool)

(assert (=> b!1351013 (=> res!896588 e!768417)))

(assert (=> b!1351013 (= res!896588 (contains!9260 lt!597074 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1351014 () Bool)

(assert (=> b!1351014 (= e!768416 (not e!768417))))

(declare-fun res!896585 () Bool)

(assert (=> b!1351014 (=> res!896585 e!768417)))

(assert (=> b!1351014 (= res!896585 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!686 (List!31695 (_ BitVec 64)) List!31695)

(assert (=> b!1351014 (= lt!597074 ($colon$colon!686 acc!759 (select (arr!44474 a!3742) from!3120)))))

(assert (=> b!1351014 (subseq!669 acc!759 acc!759)))

(declare-datatypes ((Unit!44200 0))(
  ( (Unit!44201) )
))
(declare-fun lt!597072 () Unit!44200)

(declare-fun lemmaListSubSeqRefl!0 (List!31695) Unit!44200)

(assert (=> b!1351014 (= lt!597072 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun b!1351015 () Bool)

(declare-fun res!896598 () Bool)

(assert (=> b!1351015 (=> (not res!896598) (not e!768416))))

(assert (=> b!1351015 (= res!896598 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31692))))

(declare-fun b!1351008 () Bool)

(declare-fun res!896584 () Bool)

(assert (=> b!1351008 (=> (not res!896584) (not e!768416))))

(assert (=> b!1351008 (= res!896584 (validKeyInArray!0 (select (arr!44474 a!3742) from!3120)))))

(declare-fun res!896587 () Bool)

(assert (=> start!113956 (=> (not res!896587) (not e!768416))))

(assert (=> start!113956 (= res!896587 (and (bvslt (size!45025 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45025 a!3742))))))

(assert (=> start!113956 e!768416))

(assert (=> start!113956 true))

(declare-fun array_inv!33419 (array!92061) Bool)

(assert (=> start!113956 (array_inv!33419 a!3742)))

(declare-fun b!1351016 () Bool)

(declare-fun res!896597 () Bool)

(assert (=> b!1351016 (=> res!896597 e!768417)))

(declare-fun noDuplicate!2139 (List!31695) Bool)

(assert (=> b!1351016 (= res!896597 (not (noDuplicate!2139 lt!597074)))))

(declare-fun b!1351017 () Bool)

(declare-fun res!896592 () Bool)

(assert (=> b!1351017 (=> (not res!896592) (not e!768416))))

(assert (=> b!1351017 (= res!896592 (noDuplicate!2139 acc!759))))

(declare-fun b!1351018 () Bool)

(assert (=> b!1351018 (= e!768417 true)))

(declare-fun lt!597071 () Bool)

(assert (=> b!1351018 (= lt!597071 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) lt!597074))))

(declare-fun lt!597073 () Unit!44200)

(declare-fun noDuplicateSubseq!120 (List!31695 List!31695) Unit!44200)

(assert (=> b!1351018 (= lt!597073 (noDuplicateSubseq!120 acc!759 lt!597074))))

(declare-fun b!1351019 () Bool)

(declare-fun res!896591 () Bool)

(assert (=> b!1351019 (=> (not res!896591) (not e!768416))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1351019 (= res!896591 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45025 a!3742))))))

(assert (= (and start!113956 res!896587) b!1351017))

(assert (= (and b!1351017 res!896592) b!1351012))

(assert (= (and b!1351012 res!896589) b!1351005))

(assert (= (and b!1351005 res!896593) b!1351015))

(assert (= (and b!1351015 res!896598) b!1351006))

(assert (= (and b!1351006 res!896595) b!1351019))

(assert (= (and b!1351019 res!896591) b!1351007))

(assert (= (and b!1351007 res!896586) b!1351009))

(assert (= (and b!1351009 res!896590) b!1351008))

(assert (= (and b!1351008 res!896584) b!1351014))

(assert (= (and b!1351014 (not res!896585)) b!1351016))

(assert (= (and b!1351016 (not res!896597)) b!1351013))

(assert (= (and b!1351013 (not res!896588)) b!1351010))

(assert (= (and b!1351010 (not res!896596)) b!1351011))

(assert (= (and b!1351011 (not res!896594)) b!1351018))

(declare-fun m!1238137 () Bool)

(assert (=> b!1351008 m!1238137))

(assert (=> b!1351008 m!1238137))

(declare-fun m!1238139 () Bool)

(assert (=> b!1351008 m!1238139))

(declare-fun m!1238141 () Bool)

(assert (=> b!1351006 m!1238141))

(declare-fun m!1238143 () Bool)

(assert (=> b!1351016 m!1238143))

(declare-fun m!1238145 () Bool)

(assert (=> b!1351010 m!1238145))

(declare-fun m!1238147 () Bool)

(assert (=> start!113956 m!1238147))

(declare-fun m!1238149 () Bool)

(assert (=> b!1351011 m!1238149))

(assert (=> b!1351014 m!1238137))

(assert (=> b!1351014 m!1238137))

(declare-fun m!1238151 () Bool)

(assert (=> b!1351014 m!1238151))

(declare-fun m!1238153 () Bool)

(assert (=> b!1351014 m!1238153))

(declare-fun m!1238155 () Bool)

(assert (=> b!1351014 m!1238155))

(declare-fun m!1238157 () Bool)

(assert (=> b!1351013 m!1238157))

(declare-fun m!1238159 () Bool)

(assert (=> b!1351017 m!1238159))

(declare-fun m!1238161 () Bool)

(assert (=> b!1351007 m!1238161))

(declare-fun m!1238163 () Bool)

(assert (=> b!1351005 m!1238163))

(declare-fun m!1238165 () Bool)

(assert (=> b!1351015 m!1238165))

(declare-fun m!1238167 () Bool)

(assert (=> b!1351012 m!1238167))

(declare-fun m!1238169 () Bool)

(assert (=> b!1351018 m!1238169))

(declare-fun m!1238171 () Bool)

(assert (=> b!1351018 m!1238171))

(check-sat (not start!113956) (not b!1351017) (not b!1351011) (not b!1351012) (not b!1351008) (not b!1351005) (not b!1351018) (not b!1351007) (not b!1351013) (not b!1351014) (not b!1351006) (not b!1351010) (not b!1351016) (not b!1351015))
(check-sat)
