; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!60188 () Bool)

(assert start!60188)

(declare-fun b!672121 () Bool)

(declare-fun res!438928 () Bool)

(declare-fun e!383986 () Bool)

(assert (=> b!672121 (=> (not res!438928) (not e!383986))))

(declare-datatypes ((List!12878 0))(
  ( (Nil!12875) (Cons!12874 (h!13919 (_ BitVec 64)) (t!19114 List!12878)) )
))
(declare-fun lt!312237 () List!12878)

(declare-fun noDuplicate!668 (List!12878) Bool)

(assert (=> b!672121 (= res!438928 (noDuplicate!668 lt!312237))))

(declare-fun b!672122 () Bool)

(declare-fun res!438927 () Bool)

(declare-fun e!383979 () Bool)

(assert (=> b!672122 (=> (not res!438927) (not e!383979))))

(declare-datatypes ((array!39191 0))(
  ( (array!39192 (arr!18784 (Array (_ BitVec 32) (_ BitVec 64))) (size!19148 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39191)

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!672122 (= res!438927 (validKeyInArray!0 (select (arr!18784 a!3626) from!3004)))))

(declare-fun b!672124 () Bool)

(declare-fun res!438932 () Bool)

(assert (=> b!672124 (=> (not res!438932) (not e!383979))))

(declare-fun e!383989 () Bool)

(assert (=> b!672124 (= res!438932 e!383989)))

(declare-fun res!438936 () Bool)

(assert (=> b!672124 (=> res!438936 e!383989)))

(declare-fun e!383981 () Bool)

(assert (=> b!672124 (= res!438936 e!383981)))

(declare-fun res!438948 () Bool)

(assert (=> b!672124 (=> (not res!438948) (not e!383981))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!672124 (= res!438948 (bvsgt from!3004 i!1382))))

(declare-fun b!672125 () Bool)

(declare-fun e!383983 () Bool)

(declare-fun e!383987 () Bool)

(assert (=> b!672125 (= e!383983 e!383987)))

(declare-fun res!438929 () Bool)

(assert (=> b!672125 (=> (not res!438929) (not e!383987))))

(assert (=> b!672125 (= res!438929 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!672126 () Bool)

(declare-fun e!383980 () Bool)

(assert (=> b!672126 (= e!383989 e!383980)))

(declare-fun res!438943 () Bool)

(assert (=> b!672126 (=> (not res!438943) (not e!383980))))

(assert (=> b!672126 (= res!438943 (bvsle from!3004 i!1382))))

(declare-fun b!672127 () Bool)

(declare-fun e!383985 () Bool)

(assert (=> b!672127 (= e!383979 e!383985)))

(declare-fun res!438945 () Bool)

(assert (=> b!672127 (=> (not res!438945) (not e!383985))))

(declare-fun k0!2843 () (_ BitVec 64))

(assert (=> b!672127 (= res!438945 (not (= (select (arr!18784 a!3626) from!3004) k0!2843)))))

(declare-datatypes ((Unit!23600 0))(
  ( (Unit!23601) )
))
(declare-fun lt!312235 () Unit!23600)

(declare-fun e!383982 () Unit!23600)

(assert (=> b!672127 (= lt!312235 e!383982)))

(declare-fun c!76964 () Bool)

(assert (=> b!672127 (= c!76964 (= (select (arr!18784 a!3626) from!3004) k0!2843))))

(declare-fun b!672128 () Bool)

(declare-fun Unit!23602 () Unit!23600)

(assert (=> b!672128 (= e!383982 Unit!23602)))

(declare-fun arrayContainsKey!0 (array!39191 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!672128 (arrayContainsKey!0 a!3626 k0!2843 from!3004)))

(declare-fun lt!312236 () Unit!23600)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39191 (_ BitVec 64) (_ BitVec 32)) Unit!23600)

(assert (=> b!672128 (= lt!312236 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004))))

(assert (=> b!672128 false))

(declare-fun b!672129 () Bool)

(declare-fun acc!681 () List!12878)

(declare-fun contains!3421 (List!12878 (_ BitVec 64)) Bool)

(assert (=> b!672129 (= e!383981 (contains!3421 acc!681 k0!2843))))

(declare-fun b!672130 () Bool)

(declare-fun res!438947 () Bool)

(assert (=> b!672130 (=> (not res!438947) (not e!383986))))

(assert (=> b!672130 (= res!438947 (not (contains!3421 lt!312237 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!672131 () Bool)

(assert (=> b!672131 (= e!383980 (not (contains!3421 acc!681 k0!2843)))))

(declare-fun b!672132 () Bool)

(declare-fun res!438934 () Bool)

(assert (=> b!672132 (=> (not res!438934) (not e!383979))))

(assert (=> b!672132 (= res!438934 (not (contains!3421 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!438937 () Bool)

(assert (=> start!60188 (=> (not res!438937) (not e!383979))))

(assert (=> start!60188 (= res!438937 (and (bvslt (size!19148 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19148 a!3626))))))

(assert (=> start!60188 e!383979))

(assert (=> start!60188 true))

(declare-fun array_inv!14558 (array!39191) Bool)

(assert (=> start!60188 (array_inv!14558 a!3626)))

(declare-fun b!672123 () Bool)

(declare-fun res!438949 () Bool)

(assert (=> b!672123 (=> (not res!438949) (not e!383979))))

(assert (=> b!672123 (= res!438949 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19148 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!672133 () Bool)

(assert (=> b!672133 (= e!383985 e!383986)))

(declare-fun res!438933 () Bool)

(assert (=> b!672133 (=> (not res!438933) (not e!383986))))

(assert (=> b!672133 (= res!438933 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!269 (List!12878 (_ BitVec 64)) List!12878)

(assert (=> b!672133 (= lt!312237 ($colon$colon!269 acc!681 (select (arr!18784 a!3626) from!3004)))))

(declare-fun b!672134 () Bool)

(declare-fun Unit!23603 () Unit!23600)

(assert (=> b!672134 (= e!383982 Unit!23603)))

(declare-fun b!672135 () Bool)

(assert (=> b!672135 (= e!383986 false)))

(declare-fun lt!312234 () Bool)

(declare-fun arrayNoDuplicates!0 (array!39191 (_ BitVec 32) List!12878) Bool)

(assert (=> b!672135 (= lt!312234 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!312237))))

(declare-fun b!672136 () Bool)

(declare-fun res!438941 () Bool)

(assert (=> b!672136 (=> (not res!438941) (not e!383979))))

(assert (=> b!672136 (= res!438941 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!672137 () Bool)

(declare-fun res!438939 () Bool)

(assert (=> b!672137 (=> (not res!438939) (not e!383986))))

(assert (=> b!672137 (= res!438939 (not (contains!3421 lt!312237 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!672138 () Bool)

(declare-fun res!438935 () Bool)

(assert (=> b!672138 (=> (not res!438935) (not e!383979))))

(assert (=> b!672138 (= res!438935 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19148 a!3626))))))

(declare-fun b!672139 () Bool)

(declare-fun e!383984 () Bool)

(assert (=> b!672139 (= e!383984 (contains!3421 lt!312237 k0!2843))))

(declare-fun b!672140 () Bool)

(declare-fun res!438950 () Bool)

(assert (=> b!672140 (=> (not res!438950) (not e!383979))))

(assert (=> b!672140 (= res!438950 (not (contains!3421 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!672141 () Bool)

(declare-fun res!438938 () Bool)

(assert (=> b!672141 (=> (not res!438938) (not e!383986))))

(assert (=> b!672141 (= res!438938 e!383983)))

(declare-fun res!438940 () Bool)

(assert (=> b!672141 (=> res!438940 e!383983)))

(assert (=> b!672141 (= res!438940 e!383984)))

(declare-fun res!438946 () Bool)

(assert (=> b!672141 (=> (not res!438946) (not e!383984))))

(assert (=> b!672141 (= res!438946 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!672142 () Bool)

(declare-fun res!438944 () Bool)

(assert (=> b!672142 (=> (not res!438944) (not e!383979))))

(assert (=> b!672142 (= res!438944 (noDuplicate!668 acc!681))))

(declare-fun b!672143 () Bool)

(declare-fun res!438930 () Bool)

(assert (=> b!672143 (=> (not res!438930) (not e!383979))))

(assert (=> b!672143 (= res!438930 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12875))))

(declare-fun b!672144 () Bool)

(declare-fun res!438942 () Bool)

(assert (=> b!672144 (=> (not res!438942) (not e!383979))))

(assert (=> b!672144 (= res!438942 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!672145 () Bool)

(assert (=> b!672145 (= e!383987 (not (contains!3421 lt!312237 k0!2843)))))

(declare-fun b!672146 () Bool)

(declare-fun res!438931 () Bool)

(assert (=> b!672146 (=> (not res!438931) (not e!383979))))

(assert (=> b!672146 (= res!438931 (validKeyInArray!0 k0!2843))))

(assert (= (and start!60188 res!438937) b!672142))

(assert (= (and b!672142 res!438944) b!672140))

(assert (= (and b!672140 res!438950) b!672132))

(assert (= (and b!672132 res!438934) b!672124))

(assert (= (and b!672124 res!438948) b!672129))

(assert (= (and b!672124 (not res!438936)) b!672126))

(assert (= (and b!672126 res!438943) b!672131))

(assert (= (and b!672124 res!438932) b!672143))

(assert (= (and b!672143 res!438930) b!672136))

(assert (= (and b!672136 res!438941) b!672138))

(assert (= (and b!672138 res!438935) b!672146))

(assert (= (and b!672146 res!438931) b!672144))

(assert (= (and b!672144 res!438942) b!672123))

(assert (= (and b!672123 res!438949) b!672122))

(assert (= (and b!672122 res!438927) b!672127))

(assert (= (and b!672127 c!76964) b!672128))

(assert (= (and b!672127 (not c!76964)) b!672134))

(assert (= (and b!672127 res!438945) b!672133))

(assert (= (and b!672133 res!438933) b!672121))

(assert (= (and b!672121 res!438928) b!672130))

(assert (= (and b!672130 res!438947) b!672137))

(assert (= (and b!672137 res!438939) b!672141))

(assert (= (and b!672141 res!438946) b!672139))

(assert (= (and b!672141 (not res!438940)) b!672125))

(assert (= (and b!672125 res!438929) b!672145))

(assert (= (and b!672141 res!438938) b!672135))

(declare-fun m!641207 () Bool)

(assert (=> b!672146 m!641207))

(declare-fun m!641209 () Bool)

(assert (=> b!672122 m!641209))

(assert (=> b!672122 m!641209))

(declare-fun m!641211 () Bool)

(assert (=> b!672122 m!641211))

(declare-fun m!641213 () Bool)

(assert (=> b!672137 m!641213))

(declare-fun m!641215 () Bool)

(assert (=> b!672143 m!641215))

(declare-fun m!641217 () Bool)

(assert (=> b!672131 m!641217))

(declare-fun m!641219 () Bool)

(assert (=> b!672142 m!641219))

(declare-fun m!641221 () Bool)

(assert (=> b!672132 m!641221))

(declare-fun m!641223 () Bool)

(assert (=> b!672140 m!641223))

(declare-fun m!641225 () Bool)

(assert (=> b!672128 m!641225))

(declare-fun m!641227 () Bool)

(assert (=> b!672128 m!641227))

(declare-fun m!641229 () Bool)

(assert (=> b!672145 m!641229))

(assert (=> b!672133 m!641209))

(assert (=> b!672133 m!641209))

(declare-fun m!641231 () Bool)

(assert (=> b!672133 m!641231))

(assert (=> b!672139 m!641229))

(declare-fun m!641233 () Bool)

(assert (=> b!672130 m!641233))

(declare-fun m!641235 () Bool)

(assert (=> b!672144 m!641235))

(declare-fun m!641237 () Bool)

(assert (=> start!60188 m!641237))

(declare-fun m!641239 () Bool)

(assert (=> b!672135 m!641239))

(assert (=> b!672129 m!641217))

(declare-fun m!641241 () Bool)

(assert (=> b!672136 m!641241))

(assert (=> b!672127 m!641209))

(declare-fun m!641243 () Bool)

(assert (=> b!672121 m!641243))

(check-sat (not b!672142) (not b!672145) (not b!672130) (not b!672131) (not start!60188) (not b!672122) (not b!672128) (not b!672144) (not b!672129) (not b!672132) (not b!672136) (not b!672146) (not b!672139) (not b!672137) (not b!672143) (not b!672140) (not b!672133) (not b!672121) (not b!672135))
(check-sat)
