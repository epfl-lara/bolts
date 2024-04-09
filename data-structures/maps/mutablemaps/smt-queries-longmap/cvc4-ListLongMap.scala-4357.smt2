; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60190 () Bool)

(assert start!60190)

(declare-fun b!672199 () Bool)

(declare-fun res!439020 () Bool)

(declare-fun e!384014 () Bool)

(assert (=> b!672199 (=> (not res!439020) (not e!384014))))

(declare-datatypes ((List!12879 0))(
  ( (Nil!12876) (Cons!12875 (h!13920 (_ BitVec 64)) (t!19115 List!12879)) )
))
(declare-fun acc!681 () List!12879)

(declare-fun contains!3422 (List!12879 (_ BitVec 64)) Bool)

(assert (=> b!672199 (= res!439020 (not (contains!3422 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!672200 () Bool)

(declare-fun res!439013 () Bool)

(declare-fun e!384022 () Bool)

(assert (=> b!672200 (=> (not res!439013) (not e!384022))))

(declare-fun lt!312246 () List!12879)

(assert (=> b!672200 (= res!439013 (not (contains!3422 lt!312246 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!672201 () Bool)

(declare-fun e!384018 () Bool)

(assert (=> b!672201 (= e!384014 e!384018)))

(declare-fun res!439015 () Bool)

(assert (=> b!672201 (=> (not res!439015) (not e!384018))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun k!2843 () (_ BitVec 64))

(declare-datatypes ((array!39193 0))(
  ( (array!39194 (arr!18785 (Array (_ BitVec 32) (_ BitVec 64))) (size!19149 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39193)

(assert (=> b!672201 (= res!439015 (not (= (select (arr!18785 a!3626) from!3004) k!2843)))))

(declare-datatypes ((Unit!23604 0))(
  ( (Unit!23605) )
))
(declare-fun lt!312248 () Unit!23604)

(declare-fun e!384016 () Unit!23604)

(assert (=> b!672201 (= lt!312248 e!384016)))

(declare-fun c!76967 () Bool)

(assert (=> b!672201 (= c!76967 (= (select (arr!18785 a!3626) from!3004) k!2843))))

(declare-fun b!672202 () Bool)

(declare-fun res!439004 () Bool)

(assert (=> b!672202 (=> (not res!439004) (not e!384022))))

(declare-fun noDuplicate!669 (List!12879) Bool)

(assert (=> b!672202 (= res!439004 (noDuplicate!669 lt!312246))))

(declare-fun b!672203 () Bool)

(declare-fun e!384017 () Bool)

(assert (=> b!672203 (= e!384017 (contains!3422 acc!681 k!2843))))

(declare-fun b!672204 () Bool)

(declare-fun res!439014 () Bool)

(assert (=> b!672204 (=> (not res!439014) (not e!384014))))

(declare-fun e!384019 () Bool)

(assert (=> b!672204 (= res!439014 e!384019)))

(declare-fun res!439008 () Bool)

(assert (=> b!672204 (=> res!439008 e!384019)))

(assert (=> b!672204 (= res!439008 e!384017)))

(declare-fun res!439011 () Bool)

(assert (=> b!672204 (=> (not res!439011) (not e!384017))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!672204 (= res!439011 (bvsgt from!3004 i!1382))))

(declare-fun b!672205 () Bool)

(declare-fun Unit!23606 () Unit!23604)

(assert (=> b!672205 (= e!384016 Unit!23606)))

(declare-fun res!439000 () Bool)

(assert (=> start!60190 (=> (not res!439000) (not e!384014))))

(assert (=> start!60190 (= res!439000 (and (bvslt (size!19149 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19149 a!3626))))))

(assert (=> start!60190 e!384014))

(assert (=> start!60190 true))

(declare-fun array_inv!14559 (array!39193) Bool)

(assert (=> start!60190 (array_inv!14559 a!3626)))

(declare-fun b!672206 () Bool)

(assert (=> b!672206 (= e!384022 false)))

(declare-fun lt!312249 () Bool)

(declare-fun arrayNoDuplicates!0 (array!39193 (_ BitVec 32) List!12879) Bool)

(assert (=> b!672206 (= lt!312249 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!312246))))

(declare-fun b!672207 () Bool)

(declare-fun e!384015 () Bool)

(assert (=> b!672207 (= e!384015 (not (contains!3422 acc!681 k!2843)))))

(declare-fun b!672208 () Bool)

(declare-fun res!439006 () Bool)

(assert (=> b!672208 (=> (not res!439006) (not e!384014))))

(assert (=> b!672208 (= res!439006 (not (contains!3422 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!672209 () Bool)

(declare-fun res!439009 () Bool)

(assert (=> b!672209 (=> (not res!439009) (not e!384014))))

(declare-fun arrayContainsKey!0 (array!39193 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!672209 (= res!439009 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!672210 () Bool)

(declare-fun res!439007 () Bool)

(assert (=> b!672210 (=> (not res!439007) (not e!384014))))

(assert (=> b!672210 (= res!439007 (noDuplicate!669 acc!681))))

(declare-fun b!672211 () Bool)

(declare-fun res!439005 () Bool)

(assert (=> b!672211 (=> (not res!439005) (not e!384014))))

(assert (=> b!672211 (= res!439005 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12876))))

(declare-fun b!672212 () Bool)

(declare-fun Unit!23607 () Unit!23604)

(assert (=> b!672212 (= e!384016 Unit!23607)))

(assert (=> b!672212 (arrayContainsKey!0 a!3626 k!2843 from!3004)))

(declare-fun lt!312247 () Unit!23604)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39193 (_ BitVec 64) (_ BitVec 32)) Unit!23604)

(assert (=> b!672212 (= lt!312247 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!672212 false))

(declare-fun b!672213 () Bool)

(declare-fun res!438999 () Bool)

(assert (=> b!672213 (=> (not res!438999) (not e!384014))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!672213 (= res!438999 (validKeyInArray!0 k!2843))))

(declare-fun b!672214 () Bool)

(declare-fun res!439010 () Bool)

(assert (=> b!672214 (=> (not res!439010) (not e!384022))))

(assert (=> b!672214 (= res!439010 (not (contains!3422 lt!312246 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!672215 () Bool)

(declare-fun res!439003 () Bool)

(assert (=> b!672215 (=> (not res!439003) (not e!384014))))

(assert (=> b!672215 (= res!439003 (validKeyInArray!0 (select (arr!18785 a!3626) from!3004)))))

(declare-fun b!672216 () Bool)

(declare-fun e!384020 () Bool)

(assert (=> b!672216 (= e!384020 (not (contains!3422 lt!312246 k!2843)))))

(declare-fun b!672217 () Bool)

(assert (=> b!672217 (= e!384018 e!384022)))

(declare-fun res!439012 () Bool)

(assert (=> b!672217 (=> (not res!439012) (not e!384022))))

(assert (=> b!672217 (= res!439012 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!270 (List!12879 (_ BitVec 64)) List!12879)

(assert (=> b!672217 (= lt!312246 ($colon$colon!270 acc!681 (select (arr!18785 a!3626) from!3004)))))

(declare-fun b!672218 () Bool)

(declare-fun res!439001 () Bool)

(assert (=> b!672218 (=> (not res!439001) (not e!384014))))

(assert (=> b!672218 (= res!439001 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19149 a!3626))))))

(declare-fun b!672219 () Bool)

(declare-fun res!439018 () Bool)

(assert (=> b!672219 (=> (not res!439018) (not e!384022))))

(declare-fun e!384012 () Bool)

(assert (=> b!672219 (= res!439018 e!384012)))

(declare-fun res!439022 () Bool)

(assert (=> b!672219 (=> res!439022 e!384012)))

(declare-fun e!384013 () Bool)

(assert (=> b!672219 (= res!439022 e!384013)))

(declare-fun res!439016 () Bool)

(assert (=> b!672219 (=> (not res!439016) (not e!384013))))

(assert (=> b!672219 (= res!439016 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!672220 () Bool)

(declare-fun res!439002 () Bool)

(assert (=> b!672220 (=> (not res!439002) (not e!384014))))

(assert (=> b!672220 (= res!439002 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19149 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!672221 () Bool)

(declare-fun res!439019 () Bool)

(assert (=> b!672221 (=> (not res!439019) (not e!384014))))

(assert (=> b!672221 (= res!439019 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!672222 () Bool)

(assert (=> b!672222 (= e!384013 (contains!3422 lt!312246 k!2843))))

(declare-fun b!672223 () Bool)

(assert (=> b!672223 (= e!384019 e!384015)))

(declare-fun res!439021 () Bool)

(assert (=> b!672223 (=> (not res!439021) (not e!384015))))

(assert (=> b!672223 (= res!439021 (bvsle from!3004 i!1382))))

(declare-fun b!672224 () Bool)

(assert (=> b!672224 (= e!384012 e!384020)))

(declare-fun res!439017 () Bool)

(assert (=> b!672224 (=> (not res!439017) (not e!384020))))

(assert (=> b!672224 (= res!439017 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(assert (= (and start!60190 res!439000) b!672210))

(assert (= (and b!672210 res!439007) b!672208))

(assert (= (and b!672208 res!439006) b!672199))

(assert (= (and b!672199 res!439020) b!672204))

(assert (= (and b!672204 res!439011) b!672203))

(assert (= (and b!672204 (not res!439008)) b!672223))

(assert (= (and b!672223 res!439021) b!672207))

(assert (= (and b!672204 res!439014) b!672211))

(assert (= (and b!672211 res!439005) b!672221))

(assert (= (and b!672221 res!439019) b!672218))

(assert (= (and b!672218 res!439001) b!672213))

(assert (= (and b!672213 res!438999) b!672209))

(assert (= (and b!672209 res!439009) b!672220))

(assert (= (and b!672220 res!439002) b!672215))

(assert (= (and b!672215 res!439003) b!672201))

(assert (= (and b!672201 c!76967) b!672212))

(assert (= (and b!672201 (not c!76967)) b!672205))

(assert (= (and b!672201 res!439015) b!672217))

(assert (= (and b!672217 res!439012) b!672202))

(assert (= (and b!672202 res!439004) b!672214))

(assert (= (and b!672214 res!439010) b!672200))

(assert (= (and b!672200 res!439013) b!672219))

(assert (= (and b!672219 res!439016) b!672222))

(assert (= (and b!672219 (not res!439022)) b!672224))

(assert (= (and b!672224 res!439017) b!672216))

(assert (= (and b!672219 res!439018) b!672206))

(declare-fun m!641245 () Bool)

(assert (=> b!672207 m!641245))

(declare-fun m!641247 () Bool)

(assert (=> start!60190 m!641247))

(declare-fun m!641249 () Bool)

(assert (=> b!672222 m!641249))

(declare-fun m!641251 () Bool)

(assert (=> b!672210 m!641251))

(declare-fun m!641253 () Bool)

(assert (=> b!672215 m!641253))

(assert (=> b!672215 m!641253))

(declare-fun m!641255 () Bool)

(assert (=> b!672215 m!641255))

(declare-fun m!641257 () Bool)

(assert (=> b!672206 m!641257))

(assert (=> b!672203 m!641245))

(declare-fun m!641259 () Bool)

(assert (=> b!672221 m!641259))

(declare-fun m!641261 () Bool)

(assert (=> b!672209 m!641261))

(declare-fun m!641263 () Bool)

(assert (=> b!672208 m!641263))

(declare-fun m!641265 () Bool)

(assert (=> b!672199 m!641265))

(declare-fun m!641267 () Bool)

(assert (=> b!672200 m!641267))

(declare-fun m!641269 () Bool)

(assert (=> b!672211 m!641269))

(declare-fun m!641271 () Bool)

(assert (=> b!672213 m!641271))

(assert (=> b!672216 m!641249))

(assert (=> b!672201 m!641253))

(declare-fun m!641273 () Bool)

(assert (=> b!672212 m!641273))

(declare-fun m!641275 () Bool)

(assert (=> b!672212 m!641275))

(declare-fun m!641277 () Bool)

(assert (=> b!672202 m!641277))

(declare-fun m!641279 () Bool)

(assert (=> b!672214 m!641279))

(assert (=> b!672217 m!641253))

(assert (=> b!672217 m!641253))

(declare-fun m!641281 () Bool)

(assert (=> b!672217 m!641281))

(push 1)

(assert (not b!672213))

(assert (not b!672211))

(assert (not b!672215))

(assert (not b!672214))

(assert (not b!672212))

(assert (not b!672221))

(assert (not b!672207))

(assert (not b!672202))

