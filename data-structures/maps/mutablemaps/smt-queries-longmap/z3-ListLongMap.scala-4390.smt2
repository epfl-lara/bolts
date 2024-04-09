; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!60386 () Bool)

(assert start!60386)

(declare-fun b!678246 () Bool)

(declare-fun e!386499 () Bool)

(declare-datatypes ((List!12977 0))(
  ( (Nil!12974) (Cons!12973 (h!14018 (_ BitVec 64)) (t!19213 List!12977)) )
))
(declare-fun acc!681 () List!12977)

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun contains!3520 (List!12977 (_ BitVec 64)) Bool)

(assert (=> b!678246 (= e!386499 (contains!3520 acc!681 k0!2843))))

(declare-fun b!678247 () Bool)

(declare-fun res!444834 () Bool)

(declare-fun e!386497 () Bool)

(assert (=> b!678247 (=> (not res!444834) (not e!386497))))

(assert (=> b!678247 (= res!444834 (not (contains!3520 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!678248 () Bool)

(declare-fun res!444835 () Bool)

(assert (=> b!678248 (=> (not res!444835) (not e!386497))))

(declare-datatypes ((array!39389 0))(
  ( (array!39390 (arr!18883 (Array (_ BitVec 32) (_ BitVec 64))) (size!19247 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39389)

(declare-fun arrayNoDuplicates!0 (array!39389 (_ BitVec 32) List!12977) Bool)

(assert (=> b!678248 (= res!444835 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12974))))

(declare-fun b!678249 () Bool)

(assert (=> b!678249 (= e!386497 false)))

(declare-fun lt!312831 () Bool)

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!678249 (= lt!312831 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun res!444829 () Bool)

(assert (=> start!60386 (=> (not res!444829) (not e!386497))))

(assert (=> start!60386 (= res!444829 (and (bvslt (size!19247 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19247 a!3626))))))

(assert (=> start!60386 e!386497))

(assert (=> start!60386 true))

(declare-fun array_inv!14657 (array!39389) Bool)

(assert (=> start!60386 (array_inv!14657 a!3626)))

(declare-fun b!678250 () Bool)

(declare-fun e!386498 () Bool)

(declare-fun e!386500 () Bool)

(assert (=> b!678250 (= e!386498 e!386500)))

(declare-fun res!444828 () Bool)

(assert (=> b!678250 (=> (not res!444828) (not e!386500))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!678250 (= res!444828 (bvsle from!3004 i!1382))))

(declare-fun b!678251 () Bool)

(assert (=> b!678251 (= e!386500 (not (contains!3520 acc!681 k0!2843)))))

(declare-fun b!678252 () Bool)

(declare-fun res!444833 () Bool)

(assert (=> b!678252 (=> (not res!444833) (not e!386497))))

(declare-fun noDuplicate!767 (List!12977) Bool)

(assert (=> b!678252 (= res!444833 (noDuplicate!767 acc!681))))

(declare-fun b!678253 () Bool)

(declare-fun res!444831 () Bool)

(assert (=> b!678253 (=> (not res!444831) (not e!386497))))

(assert (=> b!678253 (= res!444831 e!386498)))

(declare-fun res!444836 () Bool)

(assert (=> b!678253 (=> res!444836 e!386498)))

(assert (=> b!678253 (= res!444836 e!386499)))

(declare-fun res!444832 () Bool)

(assert (=> b!678253 (=> (not res!444832) (not e!386499))))

(assert (=> b!678253 (= res!444832 (bvsgt from!3004 i!1382))))

(declare-fun b!678254 () Bool)

(declare-fun res!444830 () Bool)

(assert (=> b!678254 (=> (not res!444830) (not e!386497))))

(assert (=> b!678254 (= res!444830 (not (contains!3520 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!60386 res!444829) b!678252))

(assert (= (and b!678252 res!444833) b!678254))

(assert (= (and b!678254 res!444830) b!678247))

(assert (= (and b!678247 res!444834) b!678253))

(assert (= (and b!678253 res!444832) b!678246))

(assert (= (and b!678253 (not res!444836)) b!678250))

(assert (= (and b!678250 res!444828) b!678251))

(assert (= (and b!678253 res!444831) b!678248))

(assert (= (and b!678248 res!444835) b!678249))

(declare-fun m!644087 () Bool)

(assert (=> b!678249 m!644087))

(declare-fun m!644089 () Bool)

(assert (=> b!678247 m!644089))

(declare-fun m!644091 () Bool)

(assert (=> b!678251 m!644091))

(declare-fun m!644093 () Bool)

(assert (=> b!678248 m!644093))

(declare-fun m!644095 () Bool)

(assert (=> b!678252 m!644095))

(declare-fun m!644097 () Bool)

(assert (=> b!678254 m!644097))

(assert (=> b!678246 m!644091))

(declare-fun m!644099 () Bool)

(assert (=> start!60386 m!644099))

(check-sat (not b!678252) (not b!678254) (not start!60386) (not b!678249) (not b!678251) (not b!678246) (not b!678248) (not b!678247))
(check-sat)
