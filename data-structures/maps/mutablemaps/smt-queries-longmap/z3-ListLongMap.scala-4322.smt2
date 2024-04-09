; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!59978 () Bool)

(assert start!59978)

(declare-fun b!664934 () Bool)

(declare-fun e!381151 () Bool)

(assert (=> b!664934 (= e!381151 true)))

(declare-fun lt!309851 () Bool)

(declare-datatypes ((List!12773 0))(
  ( (Nil!12770) (Cons!12769 (h!13814 (_ BitVec 64)) (t!19009 List!12773)) )
))
(declare-fun lt!309844 () List!12773)

(declare-fun contains!3316 (List!12773 (_ BitVec 64)) Bool)

(assert (=> b!664934 (= lt!309851 (contains!3316 lt!309844 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!664935 () Bool)

(declare-fun e!381150 () Bool)

(declare-fun e!381147 () Bool)

(assert (=> b!664935 (= e!381150 e!381147)))

(declare-fun res!432703 () Bool)

(assert (=> b!664935 (=> (not res!432703) (not e!381147))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!664935 (= res!432703 (bvsle from!3004 i!1382))))

(declare-fun b!664936 () Bool)

(declare-fun res!432693 () Bool)

(declare-fun e!381149 () Bool)

(assert (=> b!664936 (=> (not res!432693) (not e!381149))))

(declare-datatypes ((array!38981 0))(
  ( (array!38982 (arr!18679 (Array (_ BitVec 32) (_ BitVec 64))) (size!19043 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38981)

(assert (=> b!664936 (= res!432693 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19043 a!3626))))))

(declare-fun res!432702 () Bool)

(assert (=> start!59978 (=> (not res!432702) (not e!381149))))

(assert (=> start!59978 (= res!432702 (and (bvslt (size!19043 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19043 a!3626))))))

(assert (=> start!59978 e!381149))

(assert (=> start!59978 true))

(declare-fun array_inv!14453 (array!38981) Bool)

(assert (=> start!59978 (array_inv!14453 a!3626)))

(declare-fun b!664937 () Bool)

(declare-fun res!432690 () Bool)

(assert (=> b!664937 (=> (not res!432690) (not e!381149))))

(assert (=> b!664937 (= res!432690 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19043 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!664938 () Bool)

(declare-fun res!432701 () Bool)

(assert (=> b!664938 (=> res!432701 e!381151)))

(declare-fun noDuplicate!563 (List!12773) Bool)

(assert (=> b!664938 (= res!432701 (not (noDuplicate!563 lt!309844)))))

(declare-fun b!664939 () Bool)

(declare-fun res!432704 () Bool)

(assert (=> b!664939 (=> (not res!432704) (not e!381149))))

(declare-fun acc!681 () List!12773)

(declare-fun arrayNoDuplicates!0 (array!38981 (_ BitVec 32) List!12773) Bool)

(assert (=> b!664939 (= res!432704 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!664940 () Bool)

(declare-fun res!432698 () Bool)

(assert (=> b!664940 (=> (not res!432698) (not e!381149))))

(assert (=> b!664940 (= res!432698 (not (contains!3316 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!664941 () Bool)

(declare-fun res!432697 () Bool)

(assert (=> b!664941 (=> (not res!432697) (not e!381149))))

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!664941 (= res!432697 (validKeyInArray!0 k0!2843))))

(declare-fun b!664942 () Bool)

(declare-fun res!432694 () Bool)

(assert (=> b!664942 (=> res!432694 e!381151)))

(declare-fun subseq!54 (List!12773 List!12773) Bool)

(assert (=> b!664942 (= res!432694 (not (subseq!54 acc!681 lt!309844)))))

(declare-fun b!664943 () Bool)

(declare-datatypes ((Unit!23190 0))(
  ( (Unit!23191) )
))
(declare-fun e!381154 () Unit!23190)

(declare-fun Unit!23192 () Unit!23190)

(assert (=> b!664943 (= e!381154 Unit!23192)))

(declare-fun lt!309852 () Unit!23190)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38981 (_ BitVec 64) (_ BitVec 32)) Unit!23190)

(assert (=> b!664943 (= lt!309852 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004))))

(assert (=> b!664943 false))

(declare-fun b!664944 () Bool)

(declare-fun res!432685 () Bool)

(assert (=> b!664944 (=> (not res!432685) (not e!381149))))

(assert (=> b!664944 (= res!432685 (noDuplicate!563 acc!681))))

(declare-fun b!664945 () Bool)

(assert (=> b!664945 (= e!381149 (not e!381151))))

(declare-fun res!432688 () Bool)

(assert (=> b!664945 (=> res!432688 e!381151)))

(assert (=> b!664945 (= res!432688 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun -!52 (List!12773 (_ BitVec 64)) List!12773)

(assert (=> b!664945 (= (-!52 lt!309844 k0!2843) acc!681)))

(declare-fun $colon$colon!185 (List!12773 (_ BitVec 64)) List!12773)

(assert (=> b!664945 (= lt!309844 ($colon$colon!185 acc!681 k0!2843))))

(declare-fun lt!309843 () Unit!23190)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!12773) Unit!23190)

(assert (=> b!664945 (= lt!309843 (lemmaLMinusHeadEqualsTail!0 k0!2843 acc!681))))

(assert (=> b!664945 (subseq!54 acc!681 acc!681)))

(declare-fun lt!309850 () Unit!23190)

(declare-fun lemmaListSubSeqRefl!0 (List!12773) Unit!23190)

(assert (=> b!664945 (= lt!309850 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!664945 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!309847 () Unit!23190)

(declare-fun e!381152 () Unit!23190)

(assert (=> b!664945 (= lt!309847 e!381152)))

(declare-fun c!76493 () Bool)

(assert (=> b!664945 (= c!76493 (validKeyInArray!0 (select (arr!18679 a!3626) from!3004)))))

(declare-fun lt!309845 () Unit!23190)

(assert (=> b!664945 (= lt!309845 e!381154)))

(declare-fun c!76492 () Bool)

(declare-fun lt!309848 () Bool)

(assert (=> b!664945 (= c!76492 lt!309848)))

(declare-fun arrayContainsKey!0 (array!38981 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!664945 (= lt!309848 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!664945 (arrayContainsKey!0 (array!38982 (store (arr!18679 a!3626) i!1382 k0!2843) (size!19043 a!3626)) k0!2843 from!3004)))

(declare-fun b!664946 () Bool)

(declare-fun res!432696 () Bool)

(assert (=> b!664946 (=> res!432696 e!381151)))

(assert (=> b!664946 (= res!432696 (not (contains!3316 lt!309844 k0!2843)))))

(declare-fun b!664947 () Bool)

(declare-fun res!432689 () Bool)

(assert (=> b!664947 (=> (not res!432689) (not e!381149))))

(assert (=> b!664947 (= res!432689 e!381150)))

(declare-fun res!432687 () Bool)

(assert (=> b!664947 (=> res!432687 e!381150)))

(declare-fun e!381153 () Bool)

(assert (=> b!664947 (= res!432687 e!381153)))

(declare-fun res!432684 () Bool)

(assert (=> b!664947 (=> (not res!432684) (not e!381153))))

(assert (=> b!664947 (= res!432684 (bvsgt from!3004 i!1382))))

(declare-fun b!664948 () Bool)

(declare-fun res!432695 () Bool)

(assert (=> b!664948 (=> (not res!432695) (not e!381149))))

(assert (=> b!664948 (= res!432695 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12770))))

(declare-fun b!664949 () Bool)

(declare-fun res!432692 () Bool)

(assert (=> b!664949 (=> res!432692 e!381151)))

(assert (=> b!664949 (= res!432692 (contains!3316 lt!309844 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!664950 () Bool)

(declare-fun lt!309849 () Unit!23190)

(assert (=> b!664950 (= e!381152 lt!309849)))

(declare-fun lt!309846 () Unit!23190)

(assert (=> b!664950 (= lt!309846 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!664950 (subseq!54 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!38981 List!12773 List!12773 (_ BitVec 32)) Unit!23190)

(assert (=> b!664950 (= lt!309849 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!185 acc!681 (select (arr!18679 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!664950 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!664951 () Bool)

(declare-fun res!432691 () Bool)

(assert (=> b!664951 (=> res!432691 e!381151)))

(assert (=> b!664951 (= res!432691 lt!309848)))

(declare-fun b!664952 () Bool)

(declare-fun Unit!23193 () Unit!23190)

(assert (=> b!664952 (= e!381154 Unit!23193)))

(declare-fun b!664953 () Bool)

(declare-fun Unit!23194 () Unit!23190)

(assert (=> b!664953 (= e!381152 Unit!23194)))

(declare-fun b!664954 () Bool)

(declare-fun res!432686 () Bool)

(assert (=> b!664954 (=> res!432686 e!381151)))

(assert (=> b!664954 (= res!432686 (contains!3316 acc!681 k0!2843))))

(declare-fun b!664955 () Bool)

(declare-fun res!432699 () Bool)

(assert (=> b!664955 (=> (not res!432699) (not e!381149))))

(assert (=> b!664955 (= res!432699 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!664956 () Bool)

(declare-fun res!432700 () Bool)

(assert (=> b!664956 (=> (not res!432700) (not e!381149))))

(assert (=> b!664956 (= res!432700 (not (contains!3316 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!664957 () Bool)

(assert (=> b!664957 (= e!381147 (not (contains!3316 acc!681 k0!2843)))))

(declare-fun b!664958 () Bool)

(assert (=> b!664958 (= e!381153 (contains!3316 acc!681 k0!2843))))

(assert (= (and start!59978 res!432702) b!664944))

(assert (= (and b!664944 res!432685) b!664956))

(assert (= (and b!664956 res!432700) b!664940))

(assert (= (and b!664940 res!432698) b!664947))

(assert (= (and b!664947 res!432684) b!664958))

(assert (= (and b!664947 (not res!432687)) b!664935))

(assert (= (and b!664935 res!432703) b!664957))

(assert (= (and b!664947 res!432689) b!664948))

(assert (= (and b!664948 res!432695) b!664939))

(assert (= (and b!664939 res!432704) b!664936))

(assert (= (and b!664936 res!432693) b!664941))

(assert (= (and b!664941 res!432697) b!664955))

(assert (= (and b!664955 res!432699) b!664937))

(assert (= (and b!664937 res!432690) b!664945))

(assert (= (and b!664945 c!76492) b!664943))

(assert (= (and b!664945 (not c!76492)) b!664952))

(assert (= (and b!664945 c!76493) b!664950))

(assert (= (and b!664945 (not c!76493)) b!664953))

(assert (= (and b!664945 (not res!432688)) b!664938))

(assert (= (and b!664938 (not res!432701)) b!664951))

(assert (= (and b!664951 (not res!432691)) b!664954))

(assert (= (and b!664954 (not res!432686)) b!664942))

(assert (= (and b!664942 (not res!432694)) b!664946))

(assert (= (and b!664946 (not res!432696)) b!664949))

(assert (= (and b!664949 (not res!432692)) b!664934))

(declare-fun m!636131 () Bool)

(assert (=> b!664955 m!636131))

(declare-fun m!636133 () Bool)

(assert (=> b!664949 m!636133))

(declare-fun m!636135 () Bool)

(assert (=> b!664954 m!636135))

(assert (=> b!664958 m!636135))

(declare-fun m!636137 () Bool)

(assert (=> b!664939 m!636137))

(declare-fun m!636139 () Bool)

(assert (=> b!664946 m!636139))

(declare-fun m!636141 () Bool)

(assert (=> b!664956 m!636141))

(declare-fun m!636143 () Bool)

(assert (=> b!664938 m!636143))

(declare-fun m!636145 () Bool)

(assert (=> b!664950 m!636145))

(declare-fun m!636147 () Bool)

(assert (=> b!664950 m!636147))

(declare-fun m!636149 () Bool)

(assert (=> b!664950 m!636149))

(declare-fun m!636151 () Bool)

(assert (=> b!664950 m!636151))

(assert (=> b!664950 m!636147))

(assert (=> b!664950 m!636149))

(declare-fun m!636153 () Bool)

(assert (=> b!664950 m!636153))

(declare-fun m!636155 () Bool)

(assert (=> b!664950 m!636155))

(declare-fun m!636157 () Bool)

(assert (=> b!664944 m!636157))

(assert (=> b!664957 m!636135))

(declare-fun m!636159 () Bool)

(assert (=> b!664941 m!636159))

(declare-fun m!636161 () Bool)

(assert (=> b!664934 m!636161))

(declare-fun m!636163 () Bool)

(assert (=> start!59978 m!636163))

(declare-fun m!636165 () Bool)

(assert (=> b!664948 m!636165))

(assert (=> b!664945 m!636145))

(assert (=> b!664945 m!636147))

(declare-fun m!636167 () Bool)

(assert (=> b!664945 m!636167))

(declare-fun m!636169 () Bool)

(assert (=> b!664945 m!636169))

(declare-fun m!636171 () Bool)

(assert (=> b!664945 m!636171))

(assert (=> b!664945 m!636153))

(declare-fun m!636173 () Bool)

(assert (=> b!664945 m!636173))

(declare-fun m!636175 () Bool)

(assert (=> b!664945 m!636175))

(assert (=> b!664945 m!636147))

(declare-fun m!636177 () Bool)

(assert (=> b!664945 m!636177))

(declare-fun m!636179 () Bool)

(assert (=> b!664945 m!636179))

(assert (=> b!664945 m!636155))

(declare-fun m!636181 () Bool)

(assert (=> b!664940 m!636181))

(declare-fun m!636183 () Bool)

(assert (=> b!664942 m!636183))

(declare-fun m!636185 () Bool)

(assert (=> b!664943 m!636185))

(check-sat (not b!664950) (not b!664945) (not b!664956) (not b!664941) (not b!664943) (not b!664954) (not b!664949) (not b!664946) (not b!664958) (not b!664939) (not b!664944) (not b!664942) (not b!664948) (not b!664955) (not b!664938) (not b!664934) (not b!664940) (not start!59978) (not b!664957))
(check-sat)
