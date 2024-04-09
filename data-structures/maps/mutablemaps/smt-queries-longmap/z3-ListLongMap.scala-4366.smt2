; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!60242 () Bool)

(assert start!60242)

(declare-fun b!674241 () Bool)

(declare-fun e!384874 () Bool)

(declare-datatypes ((List!12905 0))(
  ( (Nil!12902) (Cons!12901 (h!13946 (_ BitVec 64)) (t!19141 List!12905)) )
))
(declare-fun lt!312559 () List!12905)

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun contains!3448 (List!12905 (_ BitVec 64)) Bool)

(assert (=> b!674241 (= e!384874 (contains!3448 lt!312559 k0!2843))))

(declare-fun b!674242 () Bool)

(declare-fun res!440891 () Bool)

(declare-fun e!384876 () Bool)

(assert (=> b!674242 (=> (not res!440891) (not e!384876))))

(declare-datatypes ((array!39245 0))(
  ( (array!39246 (arr!18811 (Array (_ BitVec 32) (_ BitVec 64))) (size!19175 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39245)

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!39245 (_ BitVec 32) List!12905) Bool)

(assert (=> b!674242 (= res!440891 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!312559))))

(declare-fun b!674243 () Bool)

(declare-fun res!440897 () Bool)

(assert (=> b!674243 (=> (not res!440897) (not e!384876))))

(declare-fun noDuplicate!695 (List!12905) Bool)

(assert (=> b!674243 (= res!440897 (noDuplicate!695 lt!312559))))

(declare-fun b!674244 () Bool)

(declare-fun res!440889 () Bool)

(assert (=> b!674244 (=> (not res!440889) (not e!384876))))

(assert (=> b!674244 (= res!440889 (not (contains!3448 lt!312559 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!674245 () Bool)

(declare-fun e!384877 () Bool)

(declare-fun acc!681 () List!12905)

(assert (=> b!674245 (= e!384877 (not (contains!3448 acc!681 k0!2843)))))

(declare-fun b!674246 () Bool)

(declare-fun e!384870 () Bool)

(assert (=> b!674246 (= e!384870 (contains!3448 acc!681 k0!2843))))

(declare-fun b!674247 () Bool)

(declare-fun e!384879 () Bool)

(declare-fun e!384878 () Bool)

(assert (=> b!674247 (= e!384879 e!384878)))

(declare-fun res!440900 () Bool)

(assert (=> b!674247 (=> (not res!440900) (not e!384878))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!674247 (= res!440900 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!674248 () Bool)

(declare-fun res!440906 () Bool)

(declare-fun e!384873 () Bool)

(assert (=> b!674248 (=> (not res!440906) (not e!384873))))

(assert (=> b!674248 (= res!440906 (noDuplicate!695 acc!681))))

(declare-fun b!674249 () Bool)

(declare-fun res!440896 () Bool)

(assert (=> b!674249 (=> (not res!440896) (not e!384873))))

(declare-fun arrayContainsKey!0 (array!39245 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!674249 (= res!440896 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!674250 () Bool)

(declare-fun e!384875 () Bool)

(assert (=> b!674250 (= e!384875 e!384877)))

(declare-fun res!440888 () Bool)

(assert (=> b!674250 (=> (not res!440888) (not e!384877))))

(assert (=> b!674250 (= res!440888 (bvsle from!3004 i!1382))))

(declare-fun b!674251 () Bool)

(declare-fun res!440901 () Bool)

(assert (=> b!674251 (=> (not res!440901) (not e!384873))))

(assert (=> b!674251 (= res!440901 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!674252 () Bool)

(declare-fun res!440904 () Bool)

(assert (=> b!674252 (=> (not res!440904) (not e!384873))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!674252 (= res!440904 (validKeyInArray!0 k0!2843))))

(declare-fun b!674253 () Bool)

(declare-fun res!440887 () Bool)

(assert (=> b!674253 (=> (not res!440887) (not e!384873))))

(assert (=> b!674253 (= res!440887 (not (contains!3448 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!674254 () Bool)

(declare-fun res!440898 () Bool)

(assert (=> b!674254 (=> (not res!440898) (not e!384873))))

(assert (=> b!674254 (= res!440898 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19175 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!674255 () Bool)

(assert (=> b!674255 (= e!384876 (not true))))

(assert (=> b!674255 (arrayNoDuplicates!0 (array!39246 (store (arr!18811 a!3626) i!1382 k0!2843) (size!19175 a!3626)) (bvadd #b00000000000000000000000000000001 from!3004) lt!312559)))

(declare-datatypes ((Unit!23708 0))(
  ( (Unit!23709) )
))
(declare-fun lt!312558 () Unit!23708)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!39245 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12905) Unit!23708)

(assert (=> b!674255 (= lt!312558 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3626 k0!2843 i!1382 (bvadd #b00000000000000000000000000000001 from!3004) lt!312559))))

(declare-fun b!674256 () Bool)

(declare-fun e!384871 () Unit!23708)

(declare-fun Unit!23710 () Unit!23708)

(assert (=> b!674256 (= e!384871 Unit!23710)))

(assert (=> b!674256 (arrayContainsKey!0 a!3626 k0!2843 from!3004)))

(declare-fun lt!312560 () Unit!23708)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39245 (_ BitVec 64) (_ BitVec 32)) Unit!23708)

(assert (=> b!674256 (= lt!312560 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004))))

(assert (=> b!674256 false))

(declare-fun b!674257 () Bool)

(declare-fun res!440908 () Bool)

(assert (=> b!674257 (=> (not res!440908) (not e!384873))))

(assert (=> b!674257 (= res!440908 (not (contains!3448 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!674258 () Bool)

(declare-fun res!440899 () Bool)

(assert (=> b!674258 (=> (not res!440899) (not e!384876))))

(assert (=> b!674258 (= res!440899 e!384879)))

(declare-fun res!440903 () Bool)

(assert (=> b!674258 (=> res!440903 e!384879)))

(assert (=> b!674258 (= res!440903 e!384874)))

(declare-fun res!440895 () Bool)

(assert (=> b!674258 (=> (not res!440895) (not e!384874))))

(assert (=> b!674258 (= res!440895 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!674259 () Bool)

(declare-fun Unit!23711 () Unit!23708)

(assert (=> b!674259 (= e!384871 Unit!23711)))

(declare-fun b!674260 () Bool)

(assert (=> b!674260 (= e!384878 (not (contains!3448 lt!312559 k0!2843)))))

(declare-fun b!674261 () Bool)

(declare-fun e!384880 () Bool)

(assert (=> b!674261 (= e!384880 e!384876)))

(declare-fun res!440894 () Bool)

(assert (=> b!674261 (=> (not res!440894) (not e!384876))))

(assert (=> b!674261 (= res!440894 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!296 (List!12905 (_ BitVec 64)) List!12905)

(assert (=> b!674261 (= lt!312559 ($colon$colon!296 acc!681 (select (arr!18811 a!3626) from!3004)))))

(declare-fun b!674262 () Bool)

(declare-fun res!440902 () Bool)

(assert (=> b!674262 (=> (not res!440902) (not e!384876))))

(assert (=> b!674262 (= res!440902 (not (contains!3448 lt!312559 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!674263 () Bool)

(declare-fun res!440893 () Bool)

(assert (=> b!674263 (=> (not res!440893) (not e!384873))))

(assert (=> b!674263 (= res!440893 (validKeyInArray!0 (select (arr!18811 a!3626) from!3004)))))

(declare-fun b!674264 () Bool)

(assert (=> b!674264 (= e!384873 e!384880)))

(declare-fun res!440909 () Bool)

(assert (=> b!674264 (=> (not res!440909) (not e!384880))))

(assert (=> b!674264 (= res!440909 (not (= (select (arr!18811 a!3626) from!3004) k0!2843)))))

(declare-fun lt!312561 () Unit!23708)

(assert (=> b!674264 (= lt!312561 e!384871)))

(declare-fun c!77045 () Bool)

(assert (=> b!674264 (= c!77045 (= (select (arr!18811 a!3626) from!3004) k0!2843))))

(declare-fun res!440892 () Bool)

(assert (=> start!60242 (=> (not res!440892) (not e!384873))))

(assert (=> start!60242 (= res!440892 (and (bvslt (size!19175 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19175 a!3626))))))

(assert (=> start!60242 e!384873))

(assert (=> start!60242 true))

(declare-fun array_inv!14585 (array!39245) Bool)

(assert (=> start!60242 (array_inv!14585 a!3626)))

(declare-fun b!674265 () Bool)

(declare-fun res!440890 () Bool)

(assert (=> b!674265 (=> (not res!440890) (not e!384873))))

(assert (=> b!674265 (= res!440890 e!384875)))

(declare-fun res!440905 () Bool)

(assert (=> b!674265 (=> res!440905 e!384875)))

(assert (=> b!674265 (= res!440905 e!384870)))

(declare-fun res!440885 () Bool)

(assert (=> b!674265 (=> (not res!440885) (not e!384870))))

(assert (=> b!674265 (= res!440885 (bvsgt from!3004 i!1382))))

(declare-fun b!674266 () Bool)

(declare-fun res!440907 () Bool)

(assert (=> b!674266 (=> (not res!440907) (not e!384873))))

(assert (=> b!674266 (= res!440907 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19175 a!3626))))))

(declare-fun b!674267 () Bool)

(declare-fun res!440886 () Bool)

(assert (=> b!674267 (=> (not res!440886) (not e!384873))))

(assert (=> b!674267 (= res!440886 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12902))))

(assert (= (and start!60242 res!440892) b!674248))

(assert (= (and b!674248 res!440906) b!674257))

(assert (= (and b!674257 res!440908) b!674253))

(assert (= (and b!674253 res!440887) b!674265))

(assert (= (and b!674265 res!440885) b!674246))

(assert (= (and b!674265 (not res!440905)) b!674250))

(assert (= (and b!674250 res!440888) b!674245))

(assert (= (and b!674265 res!440890) b!674267))

(assert (= (and b!674267 res!440886) b!674251))

(assert (= (and b!674251 res!440901) b!674266))

(assert (= (and b!674266 res!440907) b!674252))

(assert (= (and b!674252 res!440904) b!674249))

(assert (= (and b!674249 res!440896) b!674254))

(assert (= (and b!674254 res!440898) b!674263))

(assert (= (and b!674263 res!440893) b!674264))

(assert (= (and b!674264 c!77045) b!674256))

(assert (= (and b!674264 (not c!77045)) b!674259))

(assert (= (and b!674264 res!440909) b!674261))

(assert (= (and b!674261 res!440894) b!674243))

(assert (= (and b!674243 res!440897) b!674262))

(assert (= (and b!674262 res!440902) b!674244))

(assert (= (and b!674244 res!440889) b!674258))

(assert (= (and b!674258 res!440895) b!674241))

(assert (= (and b!674258 (not res!440903)) b!674247))

(assert (= (and b!674247 res!440900) b!674260))

(assert (= (and b!674258 res!440899) b!674242))

(assert (= (and b!674242 res!440891) b!674255))

(declare-fun m!642257 () Bool)

(assert (=> b!674249 m!642257))

(declare-fun m!642259 () Bool)

(assert (=> b!674252 m!642259))

(declare-fun m!642261 () Bool)

(assert (=> b!674264 m!642261))

(declare-fun m!642263 () Bool)

(assert (=> b!674245 m!642263))

(declare-fun m!642265 () Bool)

(assert (=> b!674241 m!642265))

(declare-fun m!642267 () Bool)

(assert (=> b!674267 m!642267))

(declare-fun m!642269 () Bool)

(assert (=> start!60242 m!642269))

(declare-fun m!642271 () Bool)

(assert (=> b!674243 m!642271))

(declare-fun m!642273 () Bool)

(assert (=> b!674262 m!642273))

(declare-fun m!642275 () Bool)

(assert (=> b!674248 m!642275))

(declare-fun m!642277 () Bool)

(assert (=> b!674242 m!642277))

(assert (=> b!674261 m!642261))

(assert (=> b!674261 m!642261))

(declare-fun m!642279 () Bool)

(assert (=> b!674261 m!642279))

(declare-fun m!642281 () Bool)

(assert (=> b!674256 m!642281))

(declare-fun m!642283 () Bool)

(assert (=> b!674256 m!642283))

(declare-fun m!642285 () Bool)

(assert (=> b!674255 m!642285))

(declare-fun m!642287 () Bool)

(assert (=> b!674255 m!642287))

(declare-fun m!642289 () Bool)

(assert (=> b!674255 m!642289))

(assert (=> b!674246 m!642263))

(declare-fun m!642291 () Bool)

(assert (=> b!674244 m!642291))

(assert (=> b!674260 m!642265))

(declare-fun m!642293 () Bool)

(assert (=> b!674251 m!642293))

(declare-fun m!642295 () Bool)

(assert (=> b!674253 m!642295))

(declare-fun m!642297 () Bool)

(assert (=> b!674257 m!642297))

(assert (=> b!674263 m!642261))

(assert (=> b!674263 m!642261))

(declare-fun m!642299 () Bool)

(assert (=> b!674263 m!642299))

(check-sat (not b!674244) (not b!674241) (not b!674251) (not b!674267) (not b!674261) (not start!60242) (not b!674255) (not b!674242) (not b!674256) (not b!674245) (not b!674249) (not b!674262) (not b!674243) (not b!674253) (not b!674248) (not b!674252) (not b!674263) (not b!674260) (not b!674257) (not b!674246))
(check-sat)
