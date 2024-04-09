; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!60200 () Bool)

(assert start!60200)

(declare-fun b!672589 () Bool)

(declare-datatypes ((Unit!23624 0))(
  ( (Unit!23625) )
))
(declare-fun e!384181 () Unit!23624)

(declare-fun Unit!23626 () Unit!23624)

(assert (=> b!672589 (= e!384181 Unit!23626)))

(declare-fun b!672590 () Bool)

(declare-fun res!439375 () Bool)

(declare-fun e!384185 () Bool)

(assert (=> b!672590 (=> (not res!439375) (not e!384185))))

(declare-fun e!384180 () Bool)

(assert (=> b!672590 (= res!439375 e!384180)))

(declare-fun res!439360 () Bool)

(assert (=> b!672590 (=> res!439360 e!384180)))

(declare-fun e!384186 () Bool)

(assert (=> b!672590 (= res!439360 e!384186)))

(declare-fun res!439368 () Bool)

(assert (=> b!672590 (=> (not res!439368) (not e!384186))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!672590 (= res!439368 (bvsgt from!3004 i!1382))))

(declare-fun b!672591 () Bool)

(declare-fun e!384184 () Bool)

(declare-fun e!384178 () Bool)

(assert (=> b!672591 (= e!384184 e!384178)))

(declare-fun res!439364 () Bool)

(assert (=> b!672591 (=> (not res!439364) (not e!384178))))

(assert (=> b!672591 (= res!439364 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!672592 () Bool)

(declare-fun e!384182 () Bool)

(assert (=> b!672592 (= e!384180 e!384182)))

(declare-fun res!439371 () Bool)

(assert (=> b!672592 (=> (not res!439371) (not e!384182))))

(assert (=> b!672592 (= res!439371 (bvsle from!3004 i!1382))))

(declare-fun res!439374 () Bool)

(assert (=> start!60200 (=> (not res!439374) (not e!384185))))

(declare-datatypes ((array!39203 0))(
  ( (array!39204 (arr!18790 (Array (_ BitVec 32) (_ BitVec 64))) (size!19154 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39203)

(assert (=> start!60200 (= res!439374 (and (bvslt (size!19154 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19154 a!3626))))))

(assert (=> start!60200 e!384185))

(assert (=> start!60200 true))

(declare-fun array_inv!14564 (array!39203) Bool)

(assert (=> start!60200 (array_inv!14564 a!3626)))

(declare-fun b!672593 () Bool)

(declare-fun e!384183 () Bool)

(assert (=> b!672593 (= e!384183 false)))

(declare-fun lt!312307 () Bool)

(declare-datatypes ((List!12884 0))(
  ( (Nil!12881) (Cons!12880 (h!13925 (_ BitVec 64)) (t!19120 List!12884)) )
))
(declare-fun lt!312306 () List!12884)

(declare-fun arrayNoDuplicates!0 (array!39203 (_ BitVec 32) List!12884) Bool)

(assert (=> b!672593 (= lt!312307 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!312306))))

(declare-fun b!672594 () Bool)

(declare-fun res!439381 () Bool)

(assert (=> b!672594 (=> (not res!439381) (not e!384185))))

(assert (=> b!672594 (= res!439381 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19154 a!3626))))))

(declare-fun b!672595 () Bool)

(declare-fun res!439380 () Bool)

(assert (=> b!672595 (=> (not res!439380) (not e!384185))))

(declare-fun acc!681 () List!12884)

(assert (=> b!672595 (= res!439380 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!672596 () Bool)

(declare-fun e!384179 () Bool)

(assert (=> b!672596 (= e!384179 e!384183)))

(declare-fun res!439376 () Bool)

(assert (=> b!672596 (=> (not res!439376) (not e!384183))))

(assert (=> b!672596 (= res!439376 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!275 (List!12884 (_ BitVec 64)) List!12884)

(assert (=> b!672596 (= lt!312306 ($colon$colon!275 acc!681 (select (arr!18790 a!3626) from!3004)))))

(declare-fun b!672597 () Bool)

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun contains!3427 (List!12884 (_ BitVec 64)) Bool)

(assert (=> b!672597 (= e!384178 (not (contains!3427 lt!312306 k0!2843)))))

(declare-fun b!672598 () Bool)

(declare-fun res!439379 () Bool)

(assert (=> b!672598 (=> (not res!439379) (not e!384183))))

(declare-fun noDuplicate!674 (List!12884) Bool)

(assert (=> b!672598 (= res!439379 (noDuplicate!674 lt!312306))))

(declare-fun b!672599 () Bool)

(declare-fun Unit!23627 () Unit!23624)

(assert (=> b!672599 (= e!384181 Unit!23627)))

(declare-fun arrayContainsKey!0 (array!39203 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!672599 (arrayContainsKey!0 a!3626 k0!2843 from!3004)))

(declare-fun lt!312308 () Unit!23624)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39203 (_ BitVec 64) (_ BitVec 32)) Unit!23624)

(assert (=> b!672599 (= lt!312308 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004))))

(assert (=> b!672599 false))

(declare-fun b!672600 () Bool)

(declare-fun res!439378 () Bool)

(assert (=> b!672600 (=> (not res!439378) (not e!384185))))

(assert (=> b!672600 (= res!439378 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12881))))

(declare-fun b!672601 () Bool)

(assert (=> b!672601 (= e!384186 (contains!3427 acc!681 k0!2843))))

(declare-fun b!672602 () Bool)

(declare-fun e!384187 () Bool)

(assert (=> b!672602 (= e!384187 (contains!3427 lt!312306 k0!2843))))

(declare-fun b!672603 () Bool)

(assert (=> b!672603 (= e!384182 (not (contains!3427 acc!681 k0!2843)))))

(declare-fun b!672604 () Bool)

(declare-fun res!439366 () Bool)

(assert (=> b!672604 (=> (not res!439366) (not e!384185))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!672604 (= res!439366 (validKeyInArray!0 k0!2843))))

(declare-fun b!672605 () Bool)

(declare-fun res!439361 () Bool)

(assert (=> b!672605 (=> (not res!439361) (not e!384185))))

(assert (=> b!672605 (= res!439361 (not (contains!3427 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!672606 () Bool)

(declare-fun res!439377 () Bool)

(assert (=> b!672606 (=> (not res!439377) (not e!384183))))

(assert (=> b!672606 (= res!439377 e!384184)))

(declare-fun res!439373 () Bool)

(assert (=> b!672606 (=> res!439373 e!384184)))

(assert (=> b!672606 (= res!439373 e!384187)))

(declare-fun res!439359 () Bool)

(assert (=> b!672606 (=> (not res!439359) (not e!384187))))

(assert (=> b!672606 (= res!439359 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!672607 () Bool)

(declare-fun res!439369 () Bool)

(assert (=> b!672607 (=> (not res!439369) (not e!384183))))

(assert (=> b!672607 (= res!439369 (not (contains!3427 lt!312306 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!672608 () Bool)

(declare-fun res!439382 () Bool)

(assert (=> b!672608 (=> (not res!439382) (not e!384183))))

(assert (=> b!672608 (= res!439382 (not (contains!3427 lt!312306 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!672609 () Bool)

(declare-fun res!439370 () Bool)

(assert (=> b!672609 (=> (not res!439370) (not e!384185))))

(assert (=> b!672609 (= res!439370 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!672610 () Bool)

(assert (=> b!672610 (= e!384185 e!384179)))

(declare-fun res!439362 () Bool)

(assert (=> b!672610 (=> (not res!439362) (not e!384179))))

(assert (=> b!672610 (= res!439362 (not (= (select (arr!18790 a!3626) from!3004) k0!2843)))))

(declare-fun lt!312309 () Unit!23624)

(assert (=> b!672610 (= lt!312309 e!384181)))

(declare-fun c!76982 () Bool)

(assert (=> b!672610 (= c!76982 (= (select (arr!18790 a!3626) from!3004) k0!2843))))

(declare-fun b!672611 () Bool)

(declare-fun res!439372 () Bool)

(assert (=> b!672611 (=> (not res!439372) (not e!384185))))

(assert (=> b!672611 (= res!439372 (noDuplicate!674 acc!681))))

(declare-fun b!672612 () Bool)

(declare-fun res!439365 () Bool)

(assert (=> b!672612 (=> (not res!439365) (not e!384185))))

(assert (=> b!672612 (= res!439365 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19154 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!672613 () Bool)

(declare-fun res!439367 () Bool)

(assert (=> b!672613 (=> (not res!439367) (not e!384185))))

(assert (=> b!672613 (= res!439367 (not (contains!3427 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!672614 () Bool)

(declare-fun res!439363 () Bool)

(assert (=> b!672614 (=> (not res!439363) (not e!384185))))

(assert (=> b!672614 (= res!439363 (validKeyInArray!0 (select (arr!18790 a!3626) from!3004)))))

(assert (= (and start!60200 res!439374) b!672611))

(assert (= (and b!672611 res!439372) b!672605))

(assert (= (and b!672605 res!439361) b!672613))

(assert (= (and b!672613 res!439367) b!672590))

(assert (= (and b!672590 res!439368) b!672601))

(assert (= (and b!672590 (not res!439360)) b!672592))

(assert (= (and b!672592 res!439371) b!672603))

(assert (= (and b!672590 res!439375) b!672600))

(assert (= (and b!672600 res!439378) b!672595))

(assert (= (and b!672595 res!439380) b!672594))

(assert (= (and b!672594 res!439381) b!672604))

(assert (= (and b!672604 res!439366) b!672609))

(assert (= (and b!672609 res!439370) b!672612))

(assert (= (and b!672612 res!439365) b!672614))

(assert (= (and b!672614 res!439363) b!672610))

(assert (= (and b!672610 c!76982) b!672599))

(assert (= (and b!672610 (not c!76982)) b!672589))

(assert (= (and b!672610 res!439362) b!672596))

(assert (= (and b!672596 res!439376) b!672598))

(assert (= (and b!672598 res!439379) b!672608))

(assert (= (and b!672608 res!439382) b!672607))

(assert (= (and b!672607 res!439369) b!672606))

(assert (= (and b!672606 res!439359) b!672602))

(assert (= (and b!672606 (not res!439373)) b!672591))

(assert (= (and b!672591 res!439364) b!672597))

(assert (= (and b!672606 res!439377) b!672593))

(declare-fun m!641435 () Bool)

(assert (=> b!672614 m!641435))

(assert (=> b!672614 m!641435))

(declare-fun m!641437 () Bool)

(assert (=> b!672614 m!641437))

(declare-fun m!641439 () Bool)

(assert (=> b!672599 m!641439))

(declare-fun m!641441 () Bool)

(assert (=> b!672599 m!641441))

(declare-fun m!641443 () Bool)

(assert (=> b!672595 m!641443))

(declare-fun m!641445 () Bool)

(assert (=> b!672607 m!641445))

(declare-fun m!641447 () Bool)

(assert (=> b!672603 m!641447))

(declare-fun m!641449 () Bool)

(assert (=> b!672608 m!641449))

(declare-fun m!641451 () Bool)

(assert (=> start!60200 m!641451))

(declare-fun m!641453 () Bool)

(assert (=> b!672602 m!641453))

(declare-fun m!641455 () Bool)

(assert (=> b!672593 m!641455))

(declare-fun m!641457 () Bool)

(assert (=> b!672604 m!641457))

(declare-fun m!641459 () Bool)

(assert (=> b!672609 m!641459))

(assert (=> b!672601 m!641447))

(declare-fun m!641461 () Bool)

(assert (=> b!672605 m!641461))

(assert (=> b!672596 m!641435))

(assert (=> b!672596 m!641435))

(declare-fun m!641463 () Bool)

(assert (=> b!672596 m!641463))

(declare-fun m!641465 () Bool)

(assert (=> b!672598 m!641465))

(declare-fun m!641467 () Bool)

(assert (=> b!672611 m!641467))

(assert (=> b!672597 m!641453))

(declare-fun m!641469 () Bool)

(assert (=> b!672613 m!641469))

(declare-fun m!641471 () Bool)

(assert (=> b!672600 m!641471))

(assert (=> b!672610 m!641435))

(check-sat (not b!672604) (not b!672611) (not b!672614) (not b!672599) (not b!672600) (not b!672605) (not b!672596) (not start!60200) (not b!672607) (not b!672598) (not b!672609) (not b!672601) (not b!672608) (not b!672602) (not b!672593) (not b!672613) (not b!672595) (not b!672603) (not b!672597))
(check-sat)
