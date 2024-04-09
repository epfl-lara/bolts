; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60226 () Bool)

(assert start!60226)

(declare-fun b!673603 () Bool)

(declare-fun res!440305 () Bool)

(declare-fun e!384613 () Bool)

(assert (=> b!673603 (=> (not res!440305) (not e!384613))))

(declare-datatypes ((array!39229 0))(
  ( (array!39230 (arr!18803 (Array (_ BitVec 32) (_ BitVec 64))) (size!19167 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39229)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!39229 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!673603 (= res!440305 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!673604 () Bool)

(declare-fun res!440316 () Bool)

(assert (=> b!673604 (=> (not res!440316) (not e!384613))))

(declare-fun e!384614 () Bool)

(assert (=> b!673604 (= res!440316 e!384614)))

(declare-fun res!440301 () Bool)

(assert (=> b!673604 (=> res!440301 e!384614)))

(declare-fun e!384611 () Bool)

(assert (=> b!673604 (= res!440301 e!384611)))

(declare-fun res!440317 () Bool)

(assert (=> b!673604 (=> (not res!440317) (not e!384611))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!673604 (= res!440317 (bvsgt from!3004 i!1382))))

(declare-fun b!673605 () Bool)

(declare-datatypes ((Unit!23676 0))(
  ( (Unit!23677) )
))
(declare-fun e!384612 () Unit!23676)

(declare-fun Unit!23678 () Unit!23676)

(assert (=> b!673605 (= e!384612 Unit!23678)))

(assert (=> b!673605 (arrayContainsKey!0 a!3626 k!2843 from!3004)))

(declare-fun lt!312464 () Unit!23676)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39229 (_ BitVec 64) (_ BitVec 32)) Unit!23676)

(assert (=> b!673605 (= lt!312464 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!673605 false))

(declare-fun b!673606 () Bool)

(declare-fun res!440312 () Bool)

(assert (=> b!673606 (=> (not res!440312) (not e!384613))))

(declare-datatypes ((List!12897 0))(
  ( (Nil!12894) (Cons!12893 (h!13938 (_ BitVec 64)) (t!19133 List!12897)) )
))
(declare-fun acc!681 () List!12897)

(declare-fun contains!3440 (List!12897 (_ BitVec 64)) Bool)

(assert (=> b!673606 (= res!440312 (not (contains!3440 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!673607 () Bool)

(declare-fun Unit!23679 () Unit!23676)

(assert (=> b!673607 (= e!384612 Unit!23679)))

(declare-fun b!673608 () Bool)

(declare-fun e!384606 () Bool)

(assert (=> b!673608 (= e!384614 e!384606)))

(declare-fun res!440311 () Bool)

(assert (=> b!673608 (=> (not res!440311) (not e!384606))))

(assert (=> b!673608 (= res!440311 (bvsle from!3004 i!1382))))

(declare-fun b!673609 () Bool)

(declare-fun res!440318 () Bool)

(assert (=> b!673609 (=> (not res!440318) (not e!384613))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!673609 (= res!440318 (validKeyInArray!0 (select (arr!18803 a!3626) from!3004)))))

(declare-fun b!673610 () Bool)

(declare-fun res!440300 () Bool)

(declare-fun e!384608 () Bool)

(assert (=> b!673610 (=> (not res!440300) (not e!384608))))

(declare-fun lt!312463 () List!12897)

(assert (=> b!673610 (= res!440300 (not (contains!3440 lt!312463 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!673611 () Bool)

(declare-fun res!440296 () Bool)

(assert (=> b!673611 (=> (not res!440296) (not e!384613))))

(assert (=> b!673611 (= res!440296 (validKeyInArray!0 k!2843))))

(declare-fun res!440303 () Bool)

(assert (=> start!60226 (=> (not res!440303) (not e!384613))))

(assert (=> start!60226 (= res!440303 (and (bvslt (size!19167 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19167 a!3626))))))

(assert (=> start!60226 e!384613))

(assert (=> start!60226 true))

(declare-fun array_inv!14577 (array!39229) Bool)

(assert (=> start!60226 (array_inv!14577 a!3626)))

(declare-fun b!673612 () Bool)

(declare-fun e!384610 () Bool)

(assert (=> b!673612 (= e!384613 e!384610)))

(declare-fun res!440298 () Bool)

(assert (=> b!673612 (=> (not res!440298) (not e!384610))))

(assert (=> b!673612 (= res!440298 (not (= (select (arr!18803 a!3626) from!3004) k!2843)))))

(declare-fun lt!312462 () Unit!23676)

(assert (=> b!673612 (= lt!312462 e!384612)))

(declare-fun c!77021 () Bool)

(assert (=> b!673612 (= c!77021 (= (select (arr!18803 a!3626) from!3004) k!2843))))

(declare-fun b!673613 () Bool)

(assert (=> b!673613 (= e!384611 (contains!3440 acc!681 k!2843))))

(declare-fun b!673614 () Bool)

(declare-fun res!440309 () Bool)

(assert (=> b!673614 (=> (not res!440309) (not e!384613))))

(declare-fun noDuplicate!687 (List!12897) Bool)

(assert (=> b!673614 (= res!440309 (noDuplicate!687 acc!681))))

(declare-fun b!673615 () Bool)

(assert (=> b!673615 (= e!384606 (not (contains!3440 acc!681 k!2843)))))

(declare-fun b!673616 () Bool)

(declare-fun res!440295 () Bool)

(assert (=> b!673616 (=> (not res!440295) (not e!384613))))

(declare-fun arrayNoDuplicates!0 (array!39229 (_ BitVec 32) List!12897) Bool)

(assert (=> b!673616 (= res!440295 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12894))))

(declare-fun b!673617 () Bool)

(declare-fun res!440310 () Bool)

(assert (=> b!673617 (=> (not res!440310) (not e!384613))))

(assert (=> b!673617 (= res!440310 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19167 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!673618 () Bool)

(declare-fun res!440313 () Bool)

(assert (=> b!673618 (=> (not res!440313) (not e!384608))))

(assert (=> b!673618 (= res!440313 (noDuplicate!687 lt!312463))))

(declare-fun b!673619 () Bool)

(declare-fun res!440308 () Bool)

(assert (=> b!673619 (=> (not res!440308) (not e!384608))))

(assert (=> b!673619 (= res!440308 (not (contains!3440 lt!312463 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!673620 () Bool)

(declare-fun e!384615 () Bool)

(assert (=> b!673620 (= e!384615 (not (contains!3440 lt!312463 k!2843)))))

(declare-fun b!673621 () Bool)

(declare-fun res!440306 () Bool)

(assert (=> b!673621 (=> (not res!440306) (not e!384613))))

(assert (=> b!673621 (= res!440306 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!673622 () Bool)

(declare-fun e!384607 () Bool)

(assert (=> b!673622 (= e!384607 e!384615)))

(declare-fun res!440299 () Bool)

(assert (=> b!673622 (=> (not res!440299) (not e!384615))))

(assert (=> b!673622 (= res!440299 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!673623 () Bool)

(declare-fun e!384616 () Bool)

(assert (=> b!673623 (= e!384616 (contains!3440 lt!312463 k!2843))))

(declare-fun b!673624 () Bool)

(declare-fun res!440297 () Bool)

(assert (=> b!673624 (=> (not res!440297) (not e!384608))))

(assert (=> b!673624 (= res!440297 e!384607)))

(declare-fun res!440307 () Bool)

(assert (=> b!673624 (=> res!440307 e!384607)))

(assert (=> b!673624 (= res!440307 e!384616)))

(declare-fun res!440315 () Bool)

(assert (=> b!673624 (=> (not res!440315) (not e!384616))))

(assert (=> b!673624 (= res!440315 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!673625 () Bool)

(declare-fun res!440304 () Bool)

(assert (=> b!673625 (=> (not res!440304) (not e!384613))))

(assert (=> b!673625 (= res!440304 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19167 a!3626))))))

(declare-fun b!673626 () Bool)

(assert (=> b!673626 (= e!384610 e!384608)))

(declare-fun res!440302 () Bool)

(assert (=> b!673626 (=> (not res!440302) (not e!384608))))

(assert (=> b!673626 (= res!440302 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!288 (List!12897 (_ BitVec 64)) List!12897)

(assert (=> b!673626 (= lt!312463 ($colon$colon!288 acc!681 (select (arr!18803 a!3626) from!3004)))))

(declare-fun b!673627 () Bool)

(declare-fun res!440314 () Bool)

(assert (=> b!673627 (=> (not res!440314) (not e!384613))))

(assert (=> b!673627 (= res!440314 (not (contains!3440 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!673628 () Bool)

(assert (=> b!673628 (= e!384608 false)))

(declare-fun lt!312465 () Bool)

(assert (=> b!673628 (= lt!312465 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!312463))))

(assert (= (and start!60226 res!440303) b!673614))

(assert (= (and b!673614 res!440309) b!673606))

(assert (= (and b!673606 res!440312) b!673627))

(assert (= (and b!673627 res!440314) b!673604))

(assert (= (and b!673604 res!440317) b!673613))

(assert (= (and b!673604 (not res!440301)) b!673608))

(assert (= (and b!673608 res!440311) b!673615))

(assert (= (and b!673604 res!440316) b!673616))

(assert (= (and b!673616 res!440295) b!673621))

(assert (= (and b!673621 res!440306) b!673625))

(assert (= (and b!673625 res!440304) b!673611))

(assert (= (and b!673611 res!440296) b!673603))

(assert (= (and b!673603 res!440305) b!673617))

(assert (= (and b!673617 res!440310) b!673609))

(assert (= (and b!673609 res!440318) b!673612))

(assert (= (and b!673612 c!77021) b!673605))

(assert (= (and b!673612 (not c!77021)) b!673607))

(assert (= (and b!673612 res!440298) b!673626))

(assert (= (and b!673626 res!440302) b!673618))

(assert (= (and b!673618 res!440313) b!673610))

(assert (= (and b!673610 res!440300) b!673619))

(assert (= (and b!673619 res!440308) b!673624))

(assert (= (and b!673624 res!440315) b!673623))

(assert (= (and b!673624 (not res!440307)) b!673622))

(assert (= (and b!673622 res!440299) b!673620))

(assert (= (and b!673624 res!440297) b!673628))

(declare-fun m!641929 () Bool)

(assert (=> b!673623 m!641929))

(declare-fun m!641931 () Bool)

(assert (=> b!673628 m!641931))

(declare-fun m!641933 () Bool)

(assert (=> b!673611 m!641933))

(declare-fun m!641935 () Bool)

(assert (=> b!673610 m!641935))

(declare-fun m!641937 () Bool)

(assert (=> b!673612 m!641937))

(declare-fun m!641939 () Bool)

(assert (=> b!673627 m!641939))

(declare-fun m!641941 () Bool)

(assert (=> start!60226 m!641941))

(declare-fun m!641943 () Bool)

(assert (=> b!673616 m!641943))

(assert (=> b!673626 m!641937))

(assert (=> b!673626 m!641937))

(declare-fun m!641945 () Bool)

(assert (=> b!673626 m!641945))

(declare-fun m!641947 () Bool)

(assert (=> b!673618 m!641947))

(declare-fun m!641949 () Bool)

(assert (=> b!673606 m!641949))

(declare-fun m!641951 () Bool)

(assert (=> b!673621 m!641951))

(assert (=> b!673609 m!641937))

(assert (=> b!673609 m!641937))

(declare-fun m!641953 () Bool)

(assert (=> b!673609 m!641953))

(declare-fun m!641955 () Bool)

(assert (=> b!673603 m!641955))

(declare-fun m!641957 () Bool)

(assert (=> b!673614 m!641957))

(declare-fun m!641959 () Bool)

(assert (=> b!673615 m!641959))

(assert (=> b!673613 m!641959))

(declare-fun m!641961 () Bool)

(assert (=> b!673619 m!641961))

(assert (=> b!673620 m!641929))

(declare-fun m!641963 () Bool)

(assert (=> b!673605 m!641963))

(declare-fun m!641965 () Bool)

(assert (=> b!673605 m!641965))

(push 1)

