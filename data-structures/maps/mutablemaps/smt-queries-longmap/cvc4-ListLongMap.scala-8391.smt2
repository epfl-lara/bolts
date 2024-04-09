; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102116 () Bool)

(assert start!102116)

(declare-fun b!1228771 () Bool)

(declare-fun e!697489 () Bool)

(declare-datatypes ((List!27209 0))(
  ( (Nil!27206) (Cons!27205 (h!28414 (_ BitVec 64)) (t!40679 List!27209)) )
))
(declare-fun lt!559001 () List!27209)

(declare-fun contains!7124 (List!27209 (_ BitVec 64)) Bool)

(assert (=> b!1228771 (= e!697489 (not (contains!7124 lt!559001 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1228772 () Bool)

(declare-fun res!817442 () Bool)

(declare-fun e!697491 () Bool)

(assert (=> b!1228772 (=> (not res!817442) (not e!697491))))

(declare-fun acc!823 () List!27209)

(declare-fun noDuplicate!1731 (List!27209) Bool)

(assert (=> b!1228772 (= res!817442 (noDuplicate!1731 acc!823))))

(declare-fun b!1228773 () Bool)

(declare-fun res!817434 () Bool)

(assert (=> b!1228773 (=> (not res!817434) (not e!697491))))

(declare-datatypes ((array!79281 0))(
  ( (array!79282 (arr!38258 (Array (_ BitVec 32) (_ BitVec 64))) (size!38795 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79281)

(declare-fun from!3184 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!79281 (_ BitVec 32) List!27209) Bool)

(assert (=> b!1228773 (= res!817434 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1228774 () Bool)

(declare-fun res!817444 () Bool)

(assert (=> b!1228774 (=> (not res!817444) (not e!697491))))

(declare-fun k!2913 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!79281 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1228774 (= res!817444 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1228775 () Bool)

(declare-fun e!697492 () Bool)

(assert (=> b!1228775 (= e!697491 (not e!697492))))

(declare-fun res!817441 () Bool)

(assert (=> b!1228775 (=> res!817441 e!697492)))

(assert (=> b!1228775 (= res!817441 (bvslt (bvadd #b00000000000000000000000000000001 from!3184) #b00000000000000000000000000000000))))

(assert (=> b!1228775 (= lt!559001 (Cons!27205 (select (arr!38258 a!3806) from!3184) Nil!27206))))

(assert (=> b!1228775 (arrayNoDuplicates!0 a!3806 from!3184 Nil!27206)))

(declare-datatypes ((Unit!40656 0))(
  ( (Unit!40657) )
))
(declare-fun lt!559000 () Unit!40656)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79281 List!27209 List!27209 (_ BitVec 32)) Unit!40656)

(assert (=> b!1228775 (= lt!559000 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3806 acc!823 Nil!27206 from!3184))))

(assert (=> b!1228775 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27205 (select (arr!38258 a!3806) from!3184) acc!823))))

(declare-fun res!817435 () Bool)

(assert (=> start!102116 (=> (not res!817435) (not e!697491))))

(assert (=> start!102116 (= res!817435 (bvslt (size!38795 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102116 e!697491))

(declare-fun array_inv!29034 (array!79281) Bool)

(assert (=> start!102116 (array_inv!29034 a!3806)))

(assert (=> start!102116 true))

(declare-fun b!1228776 () Bool)

(declare-fun res!817437 () Bool)

(assert (=> b!1228776 (=> (not res!817437) (not e!697491))))

(assert (=> b!1228776 (= res!817437 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38795 a!3806)) (bvslt from!3184 (size!38795 a!3806))))))

(declare-fun b!1228777 () Bool)

(declare-fun res!817445 () Bool)

(assert (=> b!1228777 (=> res!817445 e!697492)))

(assert (=> b!1228777 (= res!817445 (not (noDuplicate!1731 lt!559001)))))

(declare-fun b!1228778 () Bool)

(declare-fun res!817439 () Bool)

(assert (=> b!1228778 (=> (not res!817439) (not e!697491))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1228778 (= res!817439 (validKeyInArray!0 (select (arr!38258 a!3806) from!3184)))))

(declare-fun b!1228779 () Bool)

(declare-fun res!817438 () Bool)

(assert (=> b!1228779 (=> (not res!817438) (not e!697491))))

(assert (=> b!1228779 (= res!817438 (validKeyInArray!0 k!2913))))

(declare-fun b!1228780 () Bool)

(assert (=> b!1228780 (= e!697492 e!697489)))

(declare-fun res!817436 () Bool)

(assert (=> b!1228780 (=> (not res!817436) (not e!697489))))

(assert (=> b!1228780 (= res!817436 (not (contains!7124 lt!559001 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1228781 () Bool)

(declare-fun res!817443 () Bool)

(assert (=> b!1228781 (=> (not res!817443) (not e!697491))))

(assert (=> b!1228781 (= res!817443 (not (contains!7124 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1228782 () Bool)

(declare-fun res!817440 () Bool)

(assert (=> b!1228782 (=> (not res!817440) (not e!697491))))

(assert (=> b!1228782 (= res!817440 (not (contains!7124 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!102116 res!817435) b!1228779))

(assert (= (and b!1228779 res!817438) b!1228776))

(assert (= (and b!1228776 res!817437) b!1228772))

(assert (= (and b!1228772 res!817442) b!1228782))

(assert (= (and b!1228782 res!817440) b!1228781))

(assert (= (and b!1228781 res!817443) b!1228774))

(assert (= (and b!1228774 res!817444) b!1228773))

(assert (= (and b!1228773 res!817434) b!1228778))

(assert (= (and b!1228778 res!817439) b!1228775))

(assert (= (and b!1228775 (not res!817441)) b!1228777))

(assert (= (and b!1228777 (not res!817445)) b!1228780))

(assert (= (and b!1228780 res!817436) b!1228771))

(declare-fun m!1133381 () Bool)

(assert (=> b!1228780 m!1133381))

(declare-fun m!1133383 () Bool)

(assert (=> b!1228771 m!1133383))

(declare-fun m!1133385 () Bool)

(assert (=> b!1228775 m!1133385))

(declare-fun m!1133387 () Bool)

(assert (=> b!1228775 m!1133387))

(declare-fun m!1133389 () Bool)

(assert (=> b!1228775 m!1133389))

(declare-fun m!1133391 () Bool)

(assert (=> b!1228775 m!1133391))

(declare-fun m!1133393 () Bool)

(assert (=> b!1228779 m!1133393))

(declare-fun m!1133395 () Bool)

(assert (=> b!1228777 m!1133395))

(assert (=> b!1228778 m!1133385))

(assert (=> b!1228778 m!1133385))

(declare-fun m!1133397 () Bool)

(assert (=> b!1228778 m!1133397))

(declare-fun m!1133399 () Bool)

(assert (=> start!102116 m!1133399))

(declare-fun m!1133401 () Bool)

(assert (=> b!1228772 m!1133401))

(declare-fun m!1133403 () Bool)

(assert (=> b!1228773 m!1133403))

(declare-fun m!1133405 () Bool)

(assert (=> b!1228781 m!1133405))

(declare-fun m!1133407 () Bool)

(assert (=> b!1228782 m!1133407))

(declare-fun m!1133409 () Bool)

(assert (=> b!1228774 m!1133409))

(push 1)

(assert (not b!1228782))

(assert (not b!1228771))

(assert (not b!1228778))

(assert (not b!1228779))

(assert (not b!1228772))

(assert (not b!1228780))

(assert (not start!102116))

(assert (not b!1228777))

(assert (not b!1228774))

(assert (not b!1228781))

(assert (not b!1228773))

(assert (not b!1228775))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!134311 () Bool)

(declare-fun lt!559010 () Bool)

(declare-fun content!563 (List!27209) (Set (_ BitVec 64)))

(assert (=> d!134311 (= lt!559010 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!563 acc!823)))))

(declare-fun e!697533 () Bool)

(assert (=> d!134311 (= lt!559010 e!697533)))

(declare-fun res!817484 () Bool)

(assert (=> d!134311 (=> (not res!817484) (not e!697533))))

(assert (=> d!134311 (= res!817484 (is-Cons!27205 acc!823))))

(assert (=> d!134311 (= (contains!7124 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000) lt!559010)))

(declare-fun b!1228825 () Bool)

(declare-fun e!697534 () Bool)

(assert (=> b!1228825 (= e!697533 e!697534)))

(declare-fun res!817485 () Bool)

(assert (=> b!1228825 (=> res!817485 e!697534)))

(assert (=> b!1228825 (= res!817485 (= (h!28414 acc!823) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1228826 () Bool)

(assert (=> b!1228826 (= e!697534 (contains!7124 (t!40679 acc!823) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!134311 res!817484) b!1228825))

(assert (= (and b!1228825 (not res!817485)) b!1228826))

(declare-fun m!1133431 () Bool)

(assert (=> d!134311 m!1133431))

(declare-fun m!1133433 () Bool)

(assert (=> d!134311 m!1133433))

(declare-fun m!1133435 () Bool)

(assert (=> b!1228826 m!1133435))

(assert (=> b!1228781 d!134311))

(declare-fun d!134317 () Bool)

(declare-fun lt!559011 () Bool)

(assert (=> d!134317 (= lt!559011 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!563 lt!559001)))))

(declare-fun e!697535 () Bool)

(assert (=> d!134317 (= lt!559011 e!697535)))

(declare-fun res!817486 () Bool)

(assert (=> d!134317 (=> (not res!817486) (not e!697535))))

(assert (=> d!134317 (= res!817486 (is-Cons!27205 lt!559001))))

(assert (=> d!134317 (= (contains!7124 lt!559001 #b1000000000000000000000000000000000000000000000000000000000000000) lt!559011)))

(declare-fun b!1228827 () Bool)

(declare-fun e!697536 () Bool)

(assert (=> b!1228827 (= e!697535 e!697536)))

(declare-fun res!817487 () Bool)

(assert (=> b!1228827 (=> res!817487 e!697536)))

(assert (=> b!1228827 (= res!817487 (= (h!28414 lt!559001) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1228828 () Bool)

(assert (=> b!1228828 (= e!697536 (contains!7124 (t!40679 lt!559001) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!134317 res!817486) b!1228827))

(assert (= (and b!1228827 (not res!817487)) b!1228828))

(declare-fun m!1133437 () Bool)

(assert (=> d!134317 m!1133437))

(declare-fun m!1133439 () Bool)

(assert (=> d!134317 m!1133439))

(declare-fun m!1133441 () Bool)

(assert (=> b!1228828 m!1133441))

(assert (=> b!1228771 d!134317))

(declare-fun d!134319 () Bool)

(declare-fun lt!559012 () Bool)

(assert (=> d!134319 (= lt!559012 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!563 acc!823)))))

(declare-fun e!697537 () Bool)

(assert (=> d!134319 (= lt!559012 e!697537)))

(declare-fun res!817488 () Bool)

(assert (=> d!134319 (=> (not res!817488) (not e!697537))))

(assert (=> d!134319 (= res!817488 (is-Cons!27205 acc!823))))

(assert (=> d!134319 (= (contains!7124 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000) lt!559012)))

(declare-fun b!1228829 () Bool)

(declare-fun e!697538 () Bool)

(assert (=> b!1228829 (= e!697537 e!697538)))

(declare-fun res!817489 () Bool)

(assert (=> b!1228829 (=> res!817489 e!697538)))

(assert (=> b!1228829 (= res!817489 (= (h!28414 acc!823) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1228830 () Bool)

(assert (=> b!1228830 (= e!697538 (contains!7124 (t!40679 acc!823) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!134319 res!817488) b!1228829))

(assert (= (and b!1228829 (not res!817489)) b!1228830))

(assert (=> d!134319 m!1133431))

(declare-fun m!1133443 () Bool)

(assert (=> d!134319 m!1133443))

(declare-fun m!1133445 () Bool)

(assert (=> b!1228830 m!1133445))

(assert (=> b!1228782 d!134319))

(declare-fun d!134321 () Bool)

(declare-fun lt!559013 () Bool)

(assert (=> d!134321 (= lt!559013 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!563 lt!559001)))))

(declare-fun e!697541 () Bool)

(assert (=> d!134321 (= lt!559013 e!697541)))

(declare-fun res!817492 () Bool)

(assert (=> d!134321 (=> (not res!817492) (not e!697541))))

(assert (=> d!134321 (= res!817492 (is-Cons!27205 lt!559001))))

(assert (=> d!134321 (= (contains!7124 lt!559001 #b0000000000000000000000000000000000000000000000000000000000000000) lt!559013)))

(declare-fun b!1228833 () Bool)

(declare-fun e!697542 () Bool)

(assert (=> b!1228833 (= e!697541 e!697542)))

(declare-fun res!817493 () Bool)

(assert (=> b!1228833 (=> res!817493 e!697542)))

(assert (=> b!1228833 (= res!817493 (= (h!28414 lt!559001) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1228834 () Bool)

(assert (=> b!1228834 (= e!697542 (contains!7124 (t!40679 lt!559001) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!134321 res!817492) b!1228833))

(assert (= (and b!1228833 (not res!817493)) b!1228834))

(assert (=> d!134321 m!1133437))

(declare-fun m!1133451 () Bool)

(assert (=> d!134321 m!1133451))

(declare-fun m!1133453 () Bool)

(assert (=> b!1228834 m!1133453))

(assert (=> b!1228780 d!134321))

(declare-fun d!134325 () Bool)

(declare-fun res!817524 () Bool)

(declare-fun e!697575 () Bool)

(assert (=> d!134325 (=> res!817524 e!697575)))

(assert (=> d!134325 (= res!817524 (bvsge from!3184 (size!38795 a!3806)))))

(assert (=> d!134325 (= (arrayNoDuplicates!0 a!3806 from!3184 acc!823) e!697575)))

(declare-fun b!1228871 () Bool)

(declare-fun e!697578 () Bool)

(declare-fun e!697577 () Bool)

(assert (=> b!1228871 (= e!697578 e!697577)))

(declare-fun c!120537 () Bool)

(assert (=> b!1228871 (= c!120537 (validKeyInArray!0 (select (arr!38258 a!3806) from!3184)))))

(declare-fun b!1228872 () Bool)

(assert (=> b!1228872 (= e!697575 e!697578)))

(declare-fun res!817523 () Bool)

(assert (=> b!1228872 (=> (not res!817523) (not e!697578))))

(declare-fun e!697576 () Bool)

(assert (=> b!1228872 (= res!817523 (not e!697576))))

(declare-fun res!817522 () Bool)

(assert (=> b!1228872 (=> (not res!817522) (not e!697576))))

(assert (=> b!1228872 (= res!817522 (validKeyInArray!0 (select (arr!38258 a!3806) from!3184)))))

(declare-fun bm!60834 () Bool)

(declare-fun call!60837 () Bool)

(assert (=> bm!60834 (= call!60837 (arrayNoDuplicates!0 a!3806 (bvadd from!3184 #b00000000000000000000000000000001) (ite c!120537 (Cons!27205 (select (arr!38258 a!3806) from!3184) acc!823) acc!823)))))

(declare-fun b!1228873 () Bool)

(assert (=> b!1228873 (= e!697577 call!60837)))

(declare-fun b!1228874 () Bool)

(assert (=> b!1228874 (= e!697577 call!60837)))

(declare-fun b!1228875 () Bool)

(assert (=> b!1228875 (= e!697576 (contains!7124 acc!823 (select (arr!38258 a!3806) from!3184)))))

(assert (= (and d!134325 (not res!817524)) b!1228872))

(assert (= (and b!1228872 res!817522) b!1228875))

(assert (= (and b!1228872 res!817523) b!1228871))

(assert (= (and b!1228871 c!120537) b!1228874))

(assert (= (and b!1228871 (not c!120537)) b!1228873))

(assert (= (or b!1228874 b!1228873) bm!60834))

(assert (=> b!1228871 m!1133385))

(assert (=> b!1228871 m!1133385))

(assert (=> b!1228871 m!1133397))

(assert (=> b!1228872 m!1133385))

(assert (=> b!1228872 m!1133385))

(assert (=> b!1228872 m!1133397))

(assert (=> bm!60834 m!1133385))

(declare-fun m!1133489 () Bool)

(assert (=> bm!60834 m!1133489))

(assert (=> b!1228875 m!1133385))

(assert (=> b!1228875 m!1133385))

(declare-fun m!1133491 () Bool)

(assert (=> b!1228875 m!1133491))

(assert (=> b!1228773 d!134325))

(declare-fun d!134349 () Bool)

(declare-fun res!817541 () Bool)

(declare-fun e!697599 () Bool)

(assert (=> d!134349 (=> res!817541 e!697599)))

(assert (=> d!134349 (= res!817541 (= (select (arr!38258 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) k!2913))))

(assert (=> d!134349 (= (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)) e!697599)))

(declare-fun b!1228900 () Bool)

(declare-fun e!697600 () Bool)

(assert (=> b!1228900 (= e!697599 e!697600)))

(declare-fun res!817542 () Bool)

(assert (=> b!1228900 (=> (not res!817542) (not e!697600))))

(assert (=> b!1228900 (= res!817542 (bvslt (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001) (size!38795 a!3806)))))

(declare-fun b!1228901 () Bool)

(assert (=> b!1228901 (= e!697600 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001)))))

(assert (= (and d!134349 (not res!817541)) b!1228900))

(assert (= (and b!1228900 res!817542) b!1228901))

(declare-fun m!1133501 () Bool)

(assert (=> d!134349 m!1133501))

(declare-fun m!1133503 () Bool)

(assert (=> b!1228901 m!1133503))

(assert (=> b!1228774 d!134349))

(declare-fun d!134353 () Bool)

(declare-fun res!817551 () Bool)

(declare-fun e!697609 () Bool)

(assert (=> d!134353 (=> res!817551 e!697609)))

(assert (=> d!134353 (= res!817551 (is-Nil!27206 acc!823))))

(assert (=> d!134353 (= (noDuplicate!1731 acc!823) e!697609)))

(declare-fun b!1228910 () Bool)

(declare-fun e!697610 () Bool)

(assert (=> b!1228910 (= e!697609 e!697610)))

(declare-fun res!817552 () Bool)

(assert (=> b!1228910 (=> (not res!817552) (not e!697610))))

(assert (=> b!1228910 (= res!817552 (not (contains!7124 (t!40679 acc!823) (h!28414 acc!823))))))

(declare-fun b!1228911 () Bool)

(assert (=> b!1228911 (= e!697610 (noDuplicate!1731 (t!40679 acc!823)))))

(assert (= (and d!134353 (not res!817551)) b!1228910))

(assert (= (and b!1228910 res!817552) b!1228911))

(declare-fun m!1133519 () Bool)

(assert (=> b!1228910 m!1133519))

(declare-fun m!1133521 () Bool)

(assert (=> b!1228911 m!1133521))

(assert (=> b!1228772 d!134353))

(declare-fun d!134361 () Bool)

(declare-fun res!817555 () Bool)

(declare-fun e!697611 () Bool)

(assert (=> d!134361 (=> res!817555 e!697611)))

(assert (=> d!134361 (= res!817555 (bvsge from!3184 (size!38795 a!3806)))))

(assert (=> d!134361 (= (arrayNoDuplicates!0 a!3806 from!3184 Nil!27206) e!697611)))

(declare-fun b!1228912 () Bool)

(declare-fun e!697614 () Bool)

(declare-fun e!697613 () Bool)

(assert (=> b!1228912 (= e!697614 e!697613)))

(declare-fun c!120542 () Bool)

(assert (=> b!1228912 (= c!120542 (validKeyInArray!0 (select (arr!38258 a!3806) from!3184)))))

(declare-fun b!1228913 () Bool)

(assert (=> b!1228913 (= e!697611 e!697614)))

(declare-fun res!817554 () Bool)

(assert (=> b!1228913 (=> (not res!817554) (not e!697614))))

(declare-fun e!697612 () Bool)

(assert (=> b!1228913 (= res!817554 (not e!697612))))

(declare-fun res!817553 () Bool)

(assert (=> b!1228913 (=> (not res!817553) (not e!697612))))

(assert (=> b!1228913 (= res!817553 (validKeyInArray!0 (select (arr!38258 a!3806) from!3184)))))

(declare-fun bm!60839 () Bool)

(declare-fun call!60842 () Bool)

(assert (=> bm!60839 (= call!60842 (arrayNoDuplicates!0 a!3806 (bvadd from!3184 #b00000000000000000000000000000001) (ite c!120542 (Cons!27205 (select (arr!38258 a!3806) from!3184) Nil!27206) Nil!27206)))))

(declare-fun b!1228914 () Bool)

(assert (=> b!1228914 (= e!697613 call!60842)))

(declare-fun b!1228915 () Bool)

(assert (=> b!1228915 (= e!697613 call!60842)))

(declare-fun b!1228916 () Bool)

(assert (=> b!1228916 (= e!697612 (contains!7124 Nil!27206 (select (arr!38258 a!3806) from!3184)))))

(assert (= (and d!134361 (not res!817555)) b!1228913))

(assert (= (and b!1228913 res!817553) b!1228916))

(assert (= (and b!1228913 res!817554) b!1228912))

(assert (= (and b!1228912 c!120542) b!1228915))

(assert (= (and b!1228912 (not c!120542)) b!1228914))

(assert (= (or b!1228915 b!1228914) bm!60839))

(assert (=> b!1228912 m!1133385))

(assert (=> b!1228912 m!1133385))

(assert (=> b!1228912 m!1133397))

(assert (=> b!1228913 m!1133385))

(assert (=> b!1228913 m!1133385))

(assert (=> b!1228913 m!1133397))

(assert (=> bm!60839 m!1133385))

(declare-fun m!1133527 () Bool)

(assert (=> bm!60839 m!1133527))

(assert (=> b!1228916 m!1133385))

(assert (=> b!1228916 m!1133385))

(declare-fun m!1133529 () Bool)

(assert (=> b!1228916 m!1133529))

(assert (=> b!1228775 d!134361))

(declare-fun d!134367 () Bool)

(assert (=> d!134367 (arrayNoDuplicates!0 a!3806 from!3184 Nil!27206)))

(declare-fun lt!559025 () Unit!40656)

(declare-fun choose!80 (array!79281 List!27209 List!27209 (_ BitVec 32)) Unit!40656)

(assert (=> d!134367 (= lt!559025 (choose!80 a!3806 acc!823 Nil!27206 from!3184))))

(assert (=> d!134367 (bvslt (size!38795 a!3806) #b01111111111111111111111111111111)))

(assert (=> d!134367 (= (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3806 acc!823 Nil!27206 from!3184) lt!559025)))

(declare-fun bs!34537 () Bool)

(assert (= bs!34537 d!134367))

(assert (=> bs!34537 m!1133387))

(declare-fun m!1133535 () Bool)

(assert (=> bs!34537 m!1133535))

(assert (=> b!1228775 d!134367))

(declare-fun d!134371 () Bool)

(declare-fun res!817563 () Bool)

(declare-fun e!697621 () Bool)

(assert (=> d!134371 (=> res!817563 e!697621)))

(assert (=> d!134371 (= res!817563 (bvsge (bvadd #b00000000000000000000000000000001 from!3184) (size!38795 a!3806)))))

(assert (=> d!134371 (= (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27205 (select (arr!38258 a!3806) from!3184) acc!823)) e!697621)))

(declare-fun b!1228924 () Bool)

(declare-fun e!697624 () Bool)

(declare-fun e!697623 () Bool)

(assert (=> b!1228924 (= e!697624 e!697623)))

(declare-fun c!120544 () Bool)

(assert (=> b!1228924 (= c!120544 (validKeyInArray!0 (select (arr!38258 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(declare-fun b!1228925 () Bool)

(assert (=> b!1228925 (= e!697621 e!697624)))

(declare-fun res!817562 () Bool)

(assert (=> b!1228925 (=> (not res!817562) (not e!697624))))

(declare-fun e!697622 () Bool)

(assert (=> b!1228925 (= res!817562 (not e!697622))))

(declare-fun res!817561 () Bool)

(assert (=> b!1228925 (=> (not res!817561) (not e!697622))))

(assert (=> b!1228925 (= res!817561 (validKeyInArray!0 (select (arr!38258 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(declare-fun call!60844 () Bool)

(declare-fun bm!60841 () Bool)

(assert (=> bm!60841 (= call!60844 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001) (ite c!120544 (Cons!27205 (select (arr!38258 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) (Cons!27205 (select (arr!38258 a!3806) from!3184) acc!823)) (Cons!27205 (select (arr!38258 a!3806) from!3184) acc!823))))))

(declare-fun b!1228926 () Bool)

(assert (=> b!1228926 (= e!697623 call!60844)))

(declare-fun b!1228927 () Bool)

(assert (=> b!1228927 (= e!697623 call!60844)))

(declare-fun b!1228928 () Bool)

(assert (=> b!1228928 (= e!697622 (contains!7124 (Cons!27205 (select (arr!38258 a!3806) from!3184) acc!823) (select (arr!38258 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(assert (= (and d!134371 (not res!817563)) b!1228925))

(assert (= (and b!1228925 res!817561) b!1228928))

(assert (= (and b!1228925 res!817562) b!1228924))

(assert (= (and b!1228924 c!120544) b!1228927))

(assert (= (and b!1228924 (not c!120544)) b!1228926))

(assert (= (or b!1228927 b!1228926) bm!60841))

(assert (=> b!1228924 m!1133501))

(assert (=> b!1228924 m!1133501))

(declare-fun m!1133537 () Bool)

(assert (=> b!1228924 m!1133537))

(assert (=> b!1228925 m!1133501))

(assert (=> b!1228925 m!1133501))

(assert (=> b!1228925 m!1133537))

(assert (=> bm!60841 m!1133501))

(declare-fun m!1133539 () Bool)

(assert (=> bm!60841 m!1133539))

(assert (=> b!1228928 m!1133501))

(assert (=> b!1228928 m!1133501))

(declare-fun m!1133541 () Bool)

(assert (=> b!1228928 m!1133541))

(assert (=> b!1228775 d!134371))

(declare-fun d!134373 () Bool)

(assert (=> d!134373 (= (validKeyInArray!0 k!2913) (and (not (= k!2913 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2913 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1228779 d!134373))

(declare-fun d!134377 () Bool)

(declare-fun res!817567 () Bool)

(declare-fun e!697629 () Bool)

(assert (=> d!134377 (=> res!817567 e!697629)))

(assert (=> d!134377 (= res!817567 (is-Nil!27206 lt!559001))))

(assert (=> d!134377 (= (noDuplicate!1731 lt!559001) e!697629)))

(declare-fun b!1228934 () Bool)

(declare-fun e!697630 () Bool)

(assert (=> b!1228934 (= e!697629 e!697630)))

(declare-fun res!817568 () Bool)

(assert (=> b!1228934 (=> (not res!817568) (not e!697630))))

(assert (=> b!1228934 (= res!817568 (not (contains!7124 (t!40679 lt!559001) (h!28414 lt!559001))))))

(declare-fun b!1228935 () Bool)

(assert (=> b!1228935 (= e!697630 (noDuplicate!1731 (t!40679 lt!559001)))))

(assert (= (and d!134377 (not res!817567)) b!1228934))

(assert (= (and b!1228934 res!817568) b!1228935))

(declare-fun m!1133549 () Bool)

(assert (=> b!1228934 m!1133549))

(declare-fun m!1133551 () Bool)

(assert (=> b!1228935 m!1133551))

(assert (=> b!1228777 d!134377))

(declare-fun d!134379 () Bool)

(assert (=> d!134379 (= (array_inv!29034 a!3806) (bvsge (size!38795 a!3806) #b00000000000000000000000000000000))))

(assert (=> start!102116 d!134379))

(declare-fun d!134383 () Bool)

(assert (=> d!134383 (= (validKeyInArray!0 (select (arr!38258 a!3806) from!3184)) (and (not (= (select (arr!38258 a!3806) from!3184) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!38258 a!3806) from!3184) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1228778 d!134383))

(push 1)

(assert (not b!1228924))

(assert (not d!134319))

(assert (not d!134311))

(assert (not b!1228830))

(assert (not b!1228828))

(assert (not b!1228928))

(assert (not b!1228934))

(assert (not d!134367))

(assert (not b!1228901))

(assert (not b!1228935))

(assert (not b!1228911))

(assert (not b!1228871))

(assert (not bm!60834))

(assert (not b!1228872))

(assert (not bm!60841))

(assert (not b!1228826))

(assert (not bm!60839))

(assert (not b!1228912))

(assert (not b!1228925))

(assert (not b!1228875))

(assert (not b!1228916))

(assert (not b!1228834))

(assert (not b!1228913))

(assert (not d!134317))

(assert (not d!134321))

(assert (not b!1228910))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!134449 () Bool)

(declare-fun c!120560 () Bool)

(assert (=> d!134449 (= c!120560 (is-Nil!27206 acc!823))))

(declare-fun e!697705 () (Set (_ BitVec 64)))

(assert (=> d!134449 (= (content!563 acc!823) e!697705)))

(declare-fun b!1229024 () Bool)

(assert (=> b!1229024 (= e!697705 (as emptyset (Set (_ BitVec 64))))))

(declare-fun b!1229025 () Bool)

(assert (=> b!1229025 (= e!697705 (union (insert (h!28414 acc!823) (as emptyset (Set (_ BitVec 64)))) (content!563 (t!40679 acc!823))))))

(assert (= (and d!134449 c!120560) b!1229024))

(assert (= (and d!134449 (not c!120560)) b!1229025))

(declare-fun m!1133699 () Bool)

(assert (=> b!1229025 m!1133699))

(declare-fun m!1133701 () Bool)

(assert (=> b!1229025 m!1133701))

(assert (=> d!134319 d!134449))

(declare-fun d!134461 () Bool)

(declare-fun res!817632 () Bool)

(declare-fun e!697710 () Bool)

(assert (=> d!134461 (=> res!817632 e!697710)))

(assert (=> d!134461 (= res!817632 (is-Nil!27206 (t!40679 lt!559001)))))

(assert (=> d!134461 (= (noDuplicate!1731 (t!40679 lt!559001)) e!697710)))

(declare-fun b!1229031 () Bool)

(declare-fun e!697711 () Bool)

(assert (=> b!1229031 (= e!697710 e!697711)))

(declare-fun res!817633 () Bool)

(assert (=> b!1229031 (=> (not res!817633) (not e!697711))))

(assert (=> b!1229031 (= res!817633 (not (contains!7124 (t!40679 (t!40679 lt!559001)) (h!28414 (t!40679 lt!559001)))))))

(declare-fun b!1229032 () Bool)

(assert (=> b!1229032 (= e!697711 (noDuplicate!1731 (t!40679 (t!40679 lt!559001))))))

(assert (= (and d!134461 (not res!817632)) b!1229031))

(assert (= (and b!1229031 res!817633) b!1229032))

(declare-fun m!1133707 () Bool)

(assert (=> b!1229031 m!1133707))

(declare-fun m!1133709 () Bool)

(assert (=> b!1229032 m!1133709))

(assert (=> b!1228935 d!134461))

(assert (=> b!1228871 d!134383))

(declare-fun d!134463 () Bool)

(declare-fun res!817636 () Bool)

(declare-fun e!697712 () Bool)

(assert (=> d!134463 (=> res!817636 e!697712)))

(assert (=> d!134463 (= res!817636 (bvsge (bvadd from!3184 #b00000000000000000000000000000001) (size!38795 a!3806)))))

(assert (=> d!134463 (= (arrayNoDuplicates!0 a!3806 (bvadd from!3184 #b00000000000000000000000000000001) (ite c!120537 (Cons!27205 (select (arr!38258 a!3806) from!3184) acc!823) acc!823)) e!697712)))

(declare-fun b!1229033 () Bool)

(declare-fun e!697715 () Bool)

(declare-fun e!697714 () Bool)

(assert (=> b!1229033 (= e!697715 e!697714)))

(declare-fun c!120562 () Bool)

(assert (=> b!1229033 (= c!120562 (validKeyInArray!0 (select (arr!38258 a!3806) (bvadd from!3184 #b00000000000000000000000000000001))))))

(declare-fun b!1229034 () Bool)

(assert (=> b!1229034 (= e!697712 e!697715)))

(declare-fun res!817635 () Bool)

(assert (=> b!1229034 (=> (not res!817635) (not e!697715))))

(declare-fun e!697713 () Bool)

(assert (=> b!1229034 (= res!817635 (not e!697713))))

(declare-fun res!817634 () Bool)

(assert (=> b!1229034 (=> (not res!817634) (not e!697713))))

(assert (=> b!1229034 (= res!817634 (validKeyInArray!0 (select (arr!38258 a!3806) (bvadd from!3184 #b00000000000000000000000000000001))))))

(declare-fun bm!60848 () Bool)

(declare-fun call!60851 () Bool)

(assert (=> bm!60848 (= call!60851 (arrayNoDuplicates!0 a!3806 (bvadd from!3184 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!120562 (Cons!27205 (select (arr!38258 a!3806) (bvadd from!3184 #b00000000000000000000000000000001)) (ite c!120537 (Cons!27205 (select (arr!38258 a!3806) from!3184) acc!823) acc!823)) (ite c!120537 (Cons!27205 (select (arr!38258 a!3806) from!3184) acc!823) acc!823))))))

(declare-fun b!1229035 () Bool)

(assert (=> b!1229035 (= e!697714 call!60851)))

(declare-fun b!1229036 () Bool)

(assert (=> b!1229036 (= e!697714 call!60851)))

(declare-fun b!1229037 () Bool)

(assert (=> b!1229037 (= e!697713 (contains!7124 (ite c!120537 (Cons!27205 (select (arr!38258 a!3806) from!3184) acc!823) acc!823) (select (arr!38258 a!3806) (bvadd from!3184 #b00000000000000000000000000000001))))))

(assert (= (and d!134463 (not res!817636)) b!1229034))

(assert (= (and b!1229034 res!817634) b!1229037))

(assert (= (and b!1229034 res!817635) b!1229033))

(assert (= (and b!1229033 c!120562) b!1229036))

(assert (= (and b!1229033 (not c!120562)) b!1229035))

(assert (= (or b!1229036 b!1229035) bm!60848))

(declare-fun m!1133715 () Bool)

(assert (=> b!1229033 m!1133715))

(assert (=> b!1229033 m!1133715))

(declare-fun m!1133717 () Bool)

(assert (=> b!1229033 m!1133717))

(assert (=> b!1229034 m!1133715))

(assert (=> b!1229034 m!1133715))

(assert (=> b!1229034 m!1133717))

(assert (=> bm!60848 m!1133715))

(declare-fun m!1133719 () Bool)

(assert (=> bm!60848 m!1133719))

(assert (=> b!1229037 m!1133715))

(assert (=> b!1229037 m!1133715))

(declare-fun m!1133723 () Bool)

(assert (=> b!1229037 m!1133723))

(assert (=> bm!60834 d!134463))

(assert (=> d!134367 d!134361))

(declare-fun d!134467 () Bool)

(assert (=> d!134467 (arrayNoDuplicates!0 a!3806 from!3184 Nil!27206)))

(assert (=> d!134467 true))

(declare-fun _$70!89 () Unit!40656)

(assert (=> d!134467 (= (choose!80 a!3806 acc!823 Nil!27206 from!3184) _$70!89)))

(declare-fun bs!34541 () Bool)

(assert (= bs!34541 d!134467))

(assert (=> bs!34541 m!1133387))

(assert (=> d!134367 d!134467))

(assert (=> b!1228872 d!134383))

(declare-fun d!134469 () Bool)

(declare-fun lt!559047 () Bool)

(assert (=> d!134469 (= lt!559047 (member (select (arr!38258 a!3806) from!3184) (content!563 acc!823)))))

(declare-fun e!697720 () Bool)

(assert (=> d!134469 (= lt!559047 e!697720)))

(declare-fun res!817640 () Bool)

(assert (=> d!134469 (=> (not res!817640) (not e!697720))))

(assert (=> d!134469 (= res!817640 (is-Cons!27205 acc!823))))

(assert (=> d!134469 (= (contains!7124 acc!823 (select (arr!38258 a!3806) from!3184)) lt!559047)))

(declare-fun b!1229043 () Bool)

(declare-fun e!697721 () Bool)

(assert (=> b!1229043 (= e!697720 e!697721)))

(declare-fun res!817641 () Bool)

(assert (=> b!1229043 (=> res!817641 e!697721)))

(assert (=> b!1229043 (= res!817641 (= (h!28414 acc!823) (select (arr!38258 a!3806) from!3184)))))

(declare-fun b!1229044 () Bool)

(assert (=> b!1229044 (= e!697721 (contains!7124 (t!40679 acc!823) (select (arr!38258 a!3806) from!3184)))))

(assert (= (and d!134469 res!817640) b!1229043))

(assert (= (and b!1229043 (not res!817641)) b!1229044))

(assert (=> d!134469 m!1133431))

(assert (=> d!134469 m!1133385))

(declare-fun m!1133727 () Bool)

(assert (=> d!134469 m!1133727))

(assert (=> b!1229044 m!1133385))

(declare-fun m!1133729 () Bool)

(assert (=> b!1229044 m!1133729))

(assert (=> b!1228875 d!134469))

(declare-fun d!134471 () Bool)

(declare-fun res!817644 () Bool)

(declare-fun e!697722 () Bool)

(assert (=> d!134471 (=> res!817644 e!697722)))

(assert (=> d!134471 (= res!817644 (bvsge (bvadd from!3184 #b00000000000000000000000000000001) (size!38795 a!3806)))))

(assert (=> d!134471 (= (arrayNoDuplicates!0 a!3806 (bvadd from!3184 #b00000000000000000000000000000001) (ite c!120542 (Cons!27205 (select (arr!38258 a!3806) from!3184) Nil!27206) Nil!27206)) e!697722)))

(declare-fun b!1229045 () Bool)

(declare-fun e!697725 () Bool)

(declare-fun e!697724 () Bool)

(assert (=> b!1229045 (= e!697725 e!697724)))

(declare-fun c!120564 () Bool)

(assert (=> b!1229045 (= c!120564 (validKeyInArray!0 (select (arr!38258 a!3806) (bvadd from!3184 #b00000000000000000000000000000001))))))

(declare-fun b!1229046 () Bool)

(assert (=> b!1229046 (= e!697722 e!697725)))

(declare-fun res!817643 () Bool)

(assert (=> b!1229046 (=> (not res!817643) (not e!697725))))

(declare-fun e!697723 () Bool)

(assert (=> b!1229046 (= res!817643 (not e!697723))))

(declare-fun res!817642 () Bool)

(assert (=> b!1229046 (=> (not res!817642) (not e!697723))))

(assert (=> b!1229046 (= res!817642 (validKeyInArray!0 (select (arr!38258 a!3806) (bvadd from!3184 #b00000000000000000000000000000001))))))

(declare-fun call!60853 () Bool)

(declare-fun bm!60850 () Bool)

(assert (=> bm!60850 (= call!60853 (arrayNoDuplicates!0 a!3806 (bvadd from!3184 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!120564 (Cons!27205 (select (arr!38258 a!3806) (bvadd from!3184 #b00000000000000000000000000000001)) (ite c!120542 (Cons!27205 (select (arr!38258 a!3806) from!3184) Nil!27206) Nil!27206)) (ite c!120542 (Cons!27205 (select (arr!38258 a!3806) from!3184) Nil!27206) Nil!27206))))))

(declare-fun b!1229047 () Bool)

(assert (=> b!1229047 (= e!697724 call!60853)))

(declare-fun b!1229048 () Bool)

(assert (=> b!1229048 (= e!697724 call!60853)))

(declare-fun b!1229049 () Bool)

(assert (=> b!1229049 (= e!697723 (contains!7124 (ite c!120542 (Cons!27205 (select (arr!38258 a!3806) from!3184) Nil!27206) Nil!27206) (select (arr!38258 a!3806) (bvadd from!3184 #b00000000000000000000000000000001))))))

(assert (= (and d!134471 (not res!817644)) b!1229046))

(assert (= (and b!1229046 res!817642) b!1229049))

(assert (= (and b!1229046 res!817643) b!1229045))

(assert (= (and b!1229045 c!120564) b!1229048))

(assert (= (and b!1229045 (not c!120564)) b!1229047))

(assert (= (or b!1229048 b!1229047) bm!60850))

(assert (=> b!1229045 m!1133715))

(assert (=> b!1229045 m!1133715))

(assert (=> b!1229045 m!1133717))

(assert (=> b!1229046 m!1133715))

(assert (=> b!1229046 m!1133715))

(assert (=> b!1229046 m!1133717))

(assert (=> bm!60850 m!1133715))

(declare-fun m!1133731 () Bool)

(assert (=> bm!60850 m!1133731))

(assert (=> b!1229049 m!1133715))

(assert (=> b!1229049 m!1133715))

(declare-fun m!1133733 () Bool)

(assert (=> b!1229049 m!1133733))

(assert (=> bm!60839 d!134471))

(declare-fun d!134473 () Bool)

(declare-fun res!817645 () Bool)

(declare-fun e!697726 () Bool)

(assert (=> d!134473 (=> res!817645 e!697726)))

(assert (=> d!134473 (= res!817645 (= (select (arr!38258 a!3806) (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001)) k!2913))))

(assert (=> d!134473 (= (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001)) e!697726)))

(declare-fun b!1229050 () Bool)

(declare-fun e!697727 () Bool)

(assert (=> b!1229050 (= e!697726 e!697727)))

(declare-fun res!817646 () Bool)

(assert (=> b!1229050 (=> (not res!817646) (not e!697727))))

(assert (=> b!1229050 (= res!817646 (bvslt (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!38795 a!3806)))))

(declare-fun b!1229051 () Bool)

(assert (=> b!1229051 (= e!697727 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!134473 (not res!817645)) b!1229050))

(assert (= (and b!1229050 res!817646) b!1229051))

(declare-fun m!1133735 () Bool)

(assert (=> d!134473 m!1133735))

(declare-fun m!1133737 () Bool)

(assert (=> b!1229051 m!1133737))

(assert (=> b!1228901 d!134473))

(assert (=> b!1228912 d!134383))

(assert (=> b!1228913 d!134383))

(declare-fun d!134475 () Bool)

(declare-fun lt!559048 () Bool)

(assert (=> d!134475 (= lt!559048 (member (h!28414 acc!823) (content!563 (t!40679 acc!823))))))

(declare-fun e!697728 () Bool)

(assert (=> d!134475 (= lt!559048 e!697728)))

(declare-fun res!817647 () Bool)

(assert (=> d!134475 (=> (not res!817647) (not e!697728))))

(assert (=> d!134475 (= res!817647 (is-Cons!27205 (t!40679 acc!823)))))

(assert (=> d!134475 (= (contains!7124 (t!40679 acc!823) (h!28414 acc!823)) lt!559048)))

(declare-fun b!1229052 () Bool)

(declare-fun e!697729 () Bool)

(assert (=> b!1229052 (= e!697728 e!697729)))

(declare-fun res!817648 () Bool)

(assert (=> b!1229052 (=> res!817648 e!697729)))

(assert (=> b!1229052 (= res!817648 (= (h!28414 (t!40679 acc!823)) (h!28414 acc!823)))))

(declare-fun b!1229053 () Bool)

(assert (=> b!1229053 (= e!697729 (contains!7124 (t!40679 (t!40679 acc!823)) (h!28414 acc!823)))))

(assert (= (and d!134475 res!817647) b!1229052))

(assert (= (and b!1229052 (not res!817648)) b!1229053))

(assert (=> d!134475 m!1133701))

(declare-fun m!1133739 () Bool)

(assert (=> d!134475 m!1133739))

(declare-fun m!1133741 () Bool)

(assert (=> b!1229053 m!1133741))

(assert (=> b!1228910 d!134475))

(declare-fun d!134477 () Bool)

(declare-fun lt!559049 () Bool)

(assert (=> d!134477 (= lt!559049 (member (select (arr!38258 a!3806) from!3184) (content!563 Nil!27206)))))

(declare-fun e!697730 () Bool)

(assert (=> d!134477 (= lt!559049 e!697730)))

(declare-fun res!817649 () Bool)

(assert (=> d!134477 (=> (not res!817649) (not e!697730))))

(assert (=> d!134477 (= res!817649 (is-Cons!27205 Nil!27206))))

(assert (=> d!134477 (= (contains!7124 Nil!27206 (select (arr!38258 a!3806) from!3184)) lt!559049)))

(declare-fun b!1229054 () Bool)

(declare-fun e!697731 () Bool)

(assert (=> b!1229054 (= e!697730 e!697731)))

(declare-fun res!817650 () Bool)

(assert (=> b!1229054 (=> res!817650 e!697731)))

(assert (=> b!1229054 (= res!817650 (= (h!28414 Nil!27206) (select (arr!38258 a!3806) from!3184)))))

(declare-fun b!1229055 () Bool)

(assert (=> b!1229055 (= e!697731 (contains!7124 (t!40679 Nil!27206) (select (arr!38258 a!3806) from!3184)))))

(assert (= (and d!134477 res!817649) b!1229054))

(assert (= (and b!1229054 (not res!817650)) b!1229055))

(declare-fun m!1133743 () Bool)

(assert (=> d!134477 m!1133743))

(assert (=> d!134477 m!1133385))

(declare-fun m!1133745 () Bool)

(assert (=> d!134477 m!1133745))

(assert (=> b!1229055 m!1133385))

(declare-fun m!1133747 () Bool)

(assert (=> b!1229055 m!1133747))

(assert (=> b!1228916 d!134477))

(declare-fun d!134479 () Bool)

(declare-fun c!120565 () Bool)

(assert (=> d!134479 (= c!120565 (is-Nil!27206 lt!559001))))

(declare-fun e!697732 () (Set (_ BitVec 64)))

(assert (=> d!134479 (= (content!563 lt!559001) e!697732)))

(declare-fun b!1229056 () Bool)

(assert (=> b!1229056 (= e!697732 (as emptyset (Set (_ BitVec 64))))))

(declare-fun b!1229057 () Bool)

(assert (=> b!1229057 (= e!697732 (union (insert (h!28414 lt!559001) (as emptyset (Set (_ BitVec 64)))) (content!563 (t!40679 lt!559001))))))

(assert (= (and d!134479 c!120565) b!1229056))

(assert (= (and d!134479 (not c!120565)) b!1229057))

(declare-fun m!1133749 () Bool)

(assert (=> b!1229057 m!1133749))

(declare-fun m!1133751 () Bool)

(assert (=> b!1229057 m!1133751))

(assert (=> d!134317 d!134479))

(declare-fun d!134481 () Bool)

(declare-fun lt!559050 () Bool)

(assert (=> d!134481 (= lt!559050 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!563 (t!40679 lt!559001))))))

(declare-fun e!697733 () Bool)

(assert (=> d!134481 (= lt!559050 e!697733)))

(declare-fun res!817651 () Bool)

(assert (=> d!134481 (=> (not res!817651) (not e!697733))))

(assert (=> d!134481 (= res!817651 (is-Cons!27205 (t!40679 lt!559001)))))

(assert (=> d!134481 (= (contains!7124 (t!40679 lt!559001) #b0000000000000000000000000000000000000000000000000000000000000000) lt!559050)))

(declare-fun b!1229058 () Bool)

(declare-fun e!697734 () Bool)

(assert (=> b!1229058 (= e!697733 e!697734)))

(declare-fun res!817652 () Bool)

(assert (=> b!1229058 (=> res!817652 e!697734)))

(assert (=> b!1229058 (= res!817652 (= (h!28414 (t!40679 lt!559001)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1229059 () Bool)

(assert (=> b!1229059 (= e!697734 (contains!7124 (t!40679 (t!40679 lt!559001)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!134481 res!817651) b!1229058))

(assert (= (and b!1229058 (not res!817652)) b!1229059))

(assert (=> d!134481 m!1133751))

(declare-fun m!1133753 () Bool)

(assert (=> d!134481 m!1133753))

(declare-fun m!1133755 () Bool)

(assert (=> b!1229059 m!1133755))

(assert (=> b!1228834 d!134481))

(declare-fun d!134483 () Bool)

(declare-fun lt!559051 () Bool)

(assert (=> d!134483 (= lt!559051 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!563 (t!40679 acc!823))))))

(declare-fun e!697735 () Bool)

(assert (=> d!134483 (= lt!559051 e!697735)))

(declare-fun res!817653 () Bool)

(assert (=> d!134483 (=> (not res!817653) (not e!697735))))

(assert (=> d!134483 (= res!817653 (is-Cons!27205 (t!40679 acc!823)))))

(assert (=> d!134483 (= (contains!7124 (t!40679 acc!823) #b0000000000000000000000000000000000000000000000000000000000000000) lt!559051)))

(declare-fun b!1229060 () Bool)

(declare-fun e!697736 () Bool)

(assert (=> b!1229060 (= e!697735 e!697736)))

(declare-fun res!817654 () Bool)

(assert (=> b!1229060 (=> res!817654 e!697736)))

(assert (=> b!1229060 (= res!817654 (= (h!28414 (t!40679 acc!823)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1229061 () Bool)

(assert (=> b!1229061 (= e!697736 (contains!7124 (t!40679 (t!40679 acc!823)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!134483 res!817653) b!1229060))

(assert (= (and b!1229060 (not res!817654)) b!1229061))

