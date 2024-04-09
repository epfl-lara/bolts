; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!103934 () Bool)

(assert start!103934)

(declare-fun b!1243484 () Bool)

(declare-fun res!829391 () Bool)

(declare-fun e!704946 () Bool)

(assert (=> b!1243484 (=> (not res!829391) (not e!704946))))

(declare-datatypes ((array!79972 0))(
  ( (array!79973 (arr!38575 (Array (_ BitVec 32) (_ BitVec 64))) (size!39112 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!79972)

(declare-fun from!3270 () (_ BitVec 32))

(declare-datatypes ((List!27556 0))(
  ( (Nil!27553) (Cons!27552 (h!28761 (_ BitVec 64)) (t!41032 List!27556)) )
))
(declare-fun arrayNoDuplicates!0 (array!79972 (_ BitVec 32) List!27556) Bool)

(assert (=> b!1243484 (= res!829391 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27553))))

(declare-fun b!1243485 () Bool)

(declare-fun res!829388 () Bool)

(declare-fun e!704947 () Bool)

(assert (=> b!1243485 (=> (not res!829388) (not e!704947))))

(declare-fun lt!562364 () List!27556)

(declare-fun contains!7428 (List!27556 (_ BitVec 64)) Bool)

(assert (=> b!1243485 (= res!829388 (not (contains!7428 lt!562364 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!829392 () Bool)

(assert (=> start!103934 (=> (not res!829392) (not e!704946))))

(declare-fun newFrom!287 () (_ BitVec 32))

(assert (=> start!103934 (= res!829392 (and (bvslt (size!39112 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39112 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39112 a!3892))))))

(assert (=> start!103934 e!704946))

(declare-fun array_inv!29351 (array!79972) Bool)

(assert (=> start!103934 (array_inv!29351 a!3892)))

(assert (=> start!103934 true))

(declare-fun b!1243486 () Bool)

(declare-fun res!829390 () Bool)

(assert (=> b!1243486 (=> (not res!829390) (not e!704947))))

(declare-fun subseq!639 (List!27556 List!27556) Bool)

(assert (=> b!1243486 (= res!829390 (subseq!639 Nil!27553 lt!562364))))

(declare-fun b!1243487 () Bool)

(declare-fun res!829396 () Bool)

(assert (=> b!1243487 (=> (not res!829396) (not e!704947))))

(assert (=> b!1243487 (= res!829396 (not (contains!7428 Nil!27553 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1243488 () Bool)

(declare-fun res!829394 () Bool)

(assert (=> b!1243488 (=> (not res!829394) (not e!704947))))

(declare-fun noDuplicate!2018 (List!27556) Bool)

(assert (=> b!1243488 (= res!829394 (noDuplicate!2018 lt!562364))))

(declare-fun b!1243489 () Bool)

(declare-fun res!829387 () Bool)

(assert (=> b!1243489 (=> (not res!829387) (not e!704947))))

(assert (=> b!1243489 (= res!829387 (not (contains!7428 lt!562364 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1243490 () Bool)

(assert (=> b!1243490 (= e!704946 e!704947)))

(declare-fun res!829389 () Bool)

(assert (=> b!1243490 (=> (not res!829389) (not e!704947))))

(assert (=> b!1243490 (= res!829389 (bvsge (bvadd #b00000000000000000000000000000001 from!3270) #b00000000000000000000000000000000))))

(assert (=> b!1243490 (= lt!562364 (Cons!27552 (select (arr!38575 a!3892) from!3270) Nil!27553))))

(declare-fun b!1243491 () Bool)

(assert (=> b!1243491 (= e!704947 false)))

(declare-fun lt!562365 () Bool)

(assert (=> b!1243491 (= lt!562365 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) lt!562364))))

(declare-datatypes ((Unit!41229 0))(
  ( (Unit!41230) )
))
(declare-fun lt!562366 () Unit!41229)

(declare-fun noDuplicateSubseq!93 (List!27556 List!27556) Unit!41229)

(assert (=> b!1243491 (= lt!562366 (noDuplicateSubseq!93 Nil!27553 lt!562364))))

(declare-fun b!1243492 () Bool)

(declare-fun res!829386 () Bool)

(assert (=> b!1243492 (=> (not res!829386) (not e!704947))))

(assert (=> b!1243492 (= res!829386 (not (contains!7428 Nil!27553 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1243493 () Bool)

(declare-fun res!829395 () Bool)

(assert (=> b!1243493 (=> (not res!829395) (not e!704946))))

(assert (=> b!1243493 (= res!829395 (and (not (= from!3270 newFrom!287)) (bvslt from!3270 (size!39112 a!3892)) (not (= newFrom!287 (size!39112 a!3892)))))))

(declare-fun b!1243494 () Bool)

(declare-fun res!829393 () Bool)

(assert (=> b!1243494 (=> (not res!829393) (not e!704946))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1243494 (= res!829393 (validKeyInArray!0 (select (arr!38575 a!3892) from!3270)))))

(assert (= (and start!103934 res!829392) b!1243484))

(assert (= (and b!1243484 res!829391) b!1243493))

(assert (= (and b!1243493 res!829395) b!1243494))

(assert (= (and b!1243494 res!829393) b!1243490))

(assert (= (and b!1243490 res!829389) b!1243488))

(assert (= (and b!1243488 res!829394) b!1243485))

(assert (= (and b!1243485 res!829388) b!1243489))

(assert (= (and b!1243489 res!829387) b!1243487))

(assert (= (and b!1243487 res!829396) b!1243492))

(assert (= (and b!1243492 res!829386) b!1243486))

(assert (= (and b!1243486 res!829390) b!1243491))

(declare-fun m!1146033 () Bool)

(assert (=> b!1243489 m!1146033))

(declare-fun m!1146035 () Bool)

(assert (=> b!1243488 m!1146035))

(declare-fun m!1146037 () Bool)

(assert (=> b!1243492 m!1146037))

(declare-fun m!1146039 () Bool)

(assert (=> b!1243494 m!1146039))

(assert (=> b!1243494 m!1146039))

(declare-fun m!1146041 () Bool)

(assert (=> b!1243494 m!1146041))

(declare-fun m!1146043 () Bool)

(assert (=> b!1243491 m!1146043))

(declare-fun m!1146045 () Bool)

(assert (=> b!1243491 m!1146045))

(declare-fun m!1146047 () Bool)

(assert (=> b!1243486 m!1146047))

(assert (=> b!1243490 m!1146039))

(declare-fun m!1146049 () Bool)

(assert (=> b!1243487 m!1146049))

(declare-fun m!1146051 () Bool)

(assert (=> b!1243485 m!1146051))

(declare-fun m!1146053 () Bool)

(assert (=> b!1243484 m!1146053))

(declare-fun m!1146055 () Bool)

(assert (=> start!103934 m!1146055))

(check-sat (not b!1243492) (not b!1243485) (not b!1243489) (not b!1243484) (not b!1243488) (not b!1243487) (not b!1243491) (not start!103934) (not b!1243494) (not b!1243486))
(check-sat)
