; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!61802 () Bool)

(assert start!61802)

(declare-fun b!691462 () Bool)

(declare-datatypes ((Unit!24386 0))(
  ( (Unit!24387) )
))
(declare-fun e!393481 () Unit!24386)

(declare-fun Unit!24388 () Unit!24386)

(assert (=> b!691462 (= e!393481 Unit!24388)))

(declare-datatypes ((array!39779 0))(
  ( (array!39780 (arr!19054 (Array (_ BitVec 32) (_ BitVec 64))) (size!19437 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39779)

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!39779 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!691462 (arrayContainsKey!0 a!3626 k0!2843 from!3004)))

(declare-fun lt!316433 () Unit!24386)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39779 (_ BitVec 64) (_ BitVec 32)) Unit!24386)

(assert (=> b!691462 (= lt!316433 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004))))

(assert (=> b!691462 false))

(declare-fun b!691463 () Bool)

(declare-fun res!455982 () Bool)

(declare-fun e!393477 () Bool)

(assert (=> b!691463 (=> (not res!455982) (not e!393477))))

(declare-fun e!393479 () Bool)

(assert (=> b!691463 (= res!455982 e!393479)))

(declare-fun res!455983 () Bool)

(assert (=> b!691463 (=> res!455983 e!393479)))

(declare-fun e!393476 () Bool)

(assert (=> b!691463 (= res!455983 e!393476)))

(declare-fun res!455978 () Bool)

(assert (=> b!691463 (=> (not res!455978) (not e!393476))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!691463 (= res!455978 (bvsgt from!3004 i!1382))))

(declare-fun b!691464 () Bool)

(declare-fun res!455973 () Bool)

(assert (=> b!691464 (=> (not res!455973) (not e!393477))))

(assert (=> b!691464 (= res!455973 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19437 a!3626))))))

(declare-fun b!691466 () Bool)

(declare-fun Unit!24389 () Unit!24386)

(assert (=> b!691466 (= e!393481 Unit!24389)))

(declare-fun b!691467 () Bool)

(declare-fun res!455974 () Bool)

(assert (=> b!691467 (=> (not res!455974) (not e!393477))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!691467 (= res!455974 (validKeyInArray!0 k0!2843))))

(declare-fun b!691468 () Bool)

(declare-datatypes ((List!13148 0))(
  ( (Nil!13145) (Cons!13144 (h!14189 (_ BitVec 64)) (t!19423 List!13148)) )
))
(declare-fun acc!681 () List!13148)

(declare-fun contains!3691 (List!13148 (_ BitVec 64)) Bool)

(assert (=> b!691468 (= e!393476 (contains!3691 acc!681 k0!2843))))

(declare-fun b!691469 () Bool)

(declare-fun res!455980 () Bool)

(assert (=> b!691469 (=> (not res!455980) (not e!393477))))

(assert (=> b!691469 (= res!455980 (not (contains!3691 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!691470 () Bool)

(declare-fun e!393478 () Bool)

(assert (=> b!691470 (= e!393479 e!393478)))

(declare-fun res!455970 () Bool)

(assert (=> b!691470 (=> (not res!455970) (not e!393478))))

(assert (=> b!691470 (= res!455970 (bvsle from!3004 i!1382))))

(declare-fun b!691471 () Bool)

(assert (=> b!691471 (= e!393477 false)))

(declare-fun lt!316434 () Unit!24386)

(assert (=> b!691471 (= lt!316434 e!393481)))

(declare-fun c!78113 () Bool)

(assert (=> b!691471 (= c!78113 (= (select (arr!19054 a!3626) from!3004) k0!2843))))

(declare-fun b!691472 () Bool)

(declare-fun res!455971 () Bool)

(assert (=> b!691472 (=> (not res!455971) (not e!393477))))

(declare-fun arrayNoDuplicates!0 (array!39779 (_ BitVec 32) List!13148) Bool)

(assert (=> b!691472 (= res!455971 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13145))))

(declare-fun b!691473 () Bool)

(declare-fun res!455979 () Bool)

(assert (=> b!691473 (=> (not res!455979) (not e!393477))))

(assert (=> b!691473 (= res!455979 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!691474 () Bool)

(declare-fun res!455975 () Bool)

(assert (=> b!691474 (=> (not res!455975) (not e!393477))))

(declare-fun noDuplicate!938 (List!13148) Bool)

(assert (=> b!691474 (= res!455975 (noDuplicate!938 acc!681))))

(declare-fun b!691475 () Bool)

(declare-fun res!455972 () Bool)

(assert (=> b!691475 (=> (not res!455972) (not e!393477))))

(assert (=> b!691475 (= res!455972 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!691476 () Bool)

(declare-fun res!455981 () Bool)

(assert (=> b!691476 (=> (not res!455981) (not e!393477))))

(assert (=> b!691476 (= res!455981 (validKeyInArray!0 (select (arr!19054 a!3626) from!3004)))))

(declare-fun res!455976 () Bool)

(assert (=> start!61802 (=> (not res!455976) (not e!393477))))

(assert (=> start!61802 (= res!455976 (and (bvslt (size!19437 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19437 a!3626))))))

(assert (=> start!61802 e!393477))

(assert (=> start!61802 true))

(declare-fun array_inv!14828 (array!39779) Bool)

(assert (=> start!61802 (array_inv!14828 a!3626)))

(declare-fun b!691465 () Bool)

(declare-fun res!455984 () Bool)

(assert (=> b!691465 (=> (not res!455984) (not e!393477))))

(assert (=> b!691465 (= res!455984 (not (contains!3691 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!691477 () Bool)

(declare-fun res!455977 () Bool)

(assert (=> b!691477 (=> (not res!455977) (not e!393477))))

(assert (=> b!691477 (= res!455977 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19437 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!691478 () Bool)

(assert (=> b!691478 (= e!393478 (not (contains!3691 acc!681 k0!2843)))))

(assert (= (and start!61802 res!455976) b!691474))

(assert (= (and b!691474 res!455975) b!691465))

(assert (= (and b!691465 res!455984) b!691469))

(assert (= (and b!691469 res!455980) b!691463))

(assert (= (and b!691463 res!455978) b!691468))

(assert (= (and b!691463 (not res!455983)) b!691470))

(assert (= (and b!691470 res!455970) b!691478))

(assert (= (and b!691463 res!455982) b!691472))

(assert (= (and b!691472 res!455971) b!691473))

(assert (= (and b!691473 res!455979) b!691464))

(assert (= (and b!691464 res!455973) b!691467))

(assert (= (and b!691467 res!455974) b!691475))

(assert (= (and b!691475 res!455972) b!691477))

(assert (= (and b!691477 res!455977) b!691476))

(assert (= (and b!691476 res!455981) b!691471))

(assert (= (and b!691471 c!78113) b!691462))

(assert (= (and b!691471 (not c!78113)) b!691466))

(declare-fun m!654443 () Bool)

(assert (=> b!691476 m!654443))

(assert (=> b!691476 m!654443))

(declare-fun m!654445 () Bool)

(assert (=> b!691476 m!654445))

(declare-fun m!654447 () Bool)

(assert (=> b!691478 m!654447))

(declare-fun m!654449 () Bool)

(assert (=> b!691467 m!654449))

(assert (=> b!691471 m!654443))

(assert (=> b!691468 m!654447))

(declare-fun m!654451 () Bool)

(assert (=> b!691472 m!654451))

(declare-fun m!654453 () Bool)

(assert (=> b!691473 m!654453))

(declare-fun m!654455 () Bool)

(assert (=> start!61802 m!654455))

(declare-fun m!654457 () Bool)

(assert (=> b!691474 m!654457))

(declare-fun m!654459 () Bool)

(assert (=> b!691462 m!654459))

(declare-fun m!654461 () Bool)

(assert (=> b!691462 m!654461))

(declare-fun m!654463 () Bool)

(assert (=> b!691465 m!654463))

(declare-fun m!654465 () Bool)

(assert (=> b!691475 m!654465))

(declare-fun m!654467 () Bool)

(assert (=> b!691469 m!654467))

(check-sat (not b!691475) (not b!691462) (not b!691468) (not b!691467) (not b!691472) (not b!691465) (not b!691473) (not b!691476) (not b!691474) (not start!61802) (not b!691469) (not b!691478))
