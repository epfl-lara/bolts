; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!61292 () Bool)

(assert start!61292)

(declare-fun b!686322 () Bool)

(declare-fun res!451614 () Bool)

(declare-fun e!390831 () Bool)

(assert (=> b!686322 (=> (not res!451614) (not e!390831))))

(declare-datatypes ((array!39632 0))(
  ( (array!39633 (arr!18988 (Array (_ BitVec 32) (_ BitVec 64))) (size!19361 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39632)

(declare-fun from!3004 () (_ BitVec 32))

(declare-datatypes ((List!13082 0))(
  ( (Nil!13079) (Cons!13078 (h!14123 (_ BitVec 64)) (t!19345 List!13082)) )
))
(declare-fun acc!681 () List!13082)

(declare-fun arrayNoDuplicates!0 (array!39632 (_ BitVec 32) List!13082) Bool)

(assert (=> b!686322 (= res!451614 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!686323 () Bool)

(declare-fun res!451612 () Bool)

(assert (=> b!686323 (=> (not res!451612) (not e!390831))))

(declare-fun e!390830 () Bool)

(assert (=> b!686323 (= res!451612 e!390830)))

(declare-fun res!451621 () Bool)

(assert (=> b!686323 (=> res!451621 e!390830)))

(declare-fun e!390828 () Bool)

(assert (=> b!686323 (= res!451621 e!390828)))

(declare-fun res!451615 () Bool)

(assert (=> b!686323 (=> (not res!451615) (not e!390828))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!686323 (= res!451615 (bvsgt from!3004 i!1382))))

(declare-fun b!686324 () Bool)

(declare-datatypes ((Unit!24177 0))(
  ( (Unit!24178) )
))
(declare-fun e!390826 () Unit!24177)

(declare-fun Unit!24179 () Unit!24177)

(assert (=> b!686324 (= e!390826 Unit!24179)))

(declare-fun b!686325 () Bool)

(declare-fun lt!315031 () Unit!24177)

(assert (=> b!686325 (= e!390826 lt!315031)))

(declare-fun lt!315030 () Unit!24177)

(declare-fun lemmaListSubSeqRefl!0 (List!13082) Unit!24177)

(assert (=> b!686325 (= lt!315030 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun subseq!210 (List!13082 List!13082) Bool)

(assert (=> b!686325 (subseq!210 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39632 List!13082 List!13082 (_ BitVec 32)) Unit!24177)

(declare-fun $colon$colon!374 (List!13082 (_ BitVec 64)) List!13082)

(assert (=> b!686325 (= lt!315031 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!374 acc!681 (select (arr!18988 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!686325 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!686326 () Bool)

(declare-fun res!451624 () Bool)

(assert (=> b!686326 (=> (not res!451624) (not e!390831))))

(declare-fun contains!3625 (List!13082 (_ BitVec 64)) Bool)

(assert (=> b!686326 (= res!451624 (not (contains!3625 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!686327 () Bool)

(declare-fun res!451619 () Bool)

(assert (=> b!686327 (=> (not res!451619) (not e!390831))))

(assert (=> b!686327 (= res!451619 (not (contains!3625 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!686328 () Bool)

(declare-fun res!451618 () Bool)

(assert (=> b!686328 (=> (not res!451618) (not e!390831))))

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!39632 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!686328 (= res!451618 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!686329 () Bool)

(declare-fun e!390832 () Bool)

(assert (=> b!686329 (= e!390830 e!390832)))

(declare-fun res!451620 () Bool)

(assert (=> b!686329 (=> (not res!451620) (not e!390832))))

(assert (=> b!686329 (= res!451620 (bvsle from!3004 i!1382))))

(declare-fun b!686330 () Bool)

(declare-fun res!451617 () Bool)

(assert (=> b!686330 (=> (not res!451617) (not e!390831))))

(declare-fun noDuplicate!872 (List!13082) Bool)

(assert (=> b!686330 (= res!451617 (noDuplicate!872 acc!681))))

(declare-fun b!686331 () Bool)

(assert (=> b!686331 (= e!390832 (not (contains!3625 acc!681 k0!2843)))))

(declare-fun b!686332 () Bool)

(assert (=> b!686332 (= e!390831 (not true))))

(declare-fun lt!315032 () List!13082)

(assert (=> b!686332 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!315032)))

(declare-fun lt!315036 () Unit!24177)

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!39632 (_ BitVec 64) (_ BitVec 32) List!13082 List!13082) Unit!24177)

(assert (=> b!686332 (= lt!315036 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004) acc!681 lt!315032))))

(declare-fun -!175 (List!13082 (_ BitVec 64)) List!13082)

(assert (=> b!686332 (= (-!175 lt!315032 k0!2843) acc!681)))

(assert (=> b!686332 (= lt!315032 ($colon$colon!374 acc!681 k0!2843))))

(declare-fun lt!315034 () Unit!24177)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!13082) Unit!24177)

(assert (=> b!686332 (= lt!315034 (lemmaLMinusHeadEqualsTail!0 k0!2843 acc!681))))

(assert (=> b!686332 (subseq!210 acc!681 acc!681)))

(declare-fun lt!315033 () Unit!24177)

(assert (=> b!686332 (= lt!315033 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!686332 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!315035 () Unit!24177)

(assert (=> b!686332 (= lt!315035 e!390826)))

(declare-fun c!77723 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!686332 (= c!77723 (validKeyInArray!0 (select (arr!18988 a!3626) from!3004)))))

(declare-fun lt!315029 () Unit!24177)

(declare-fun e!390829 () Unit!24177)

(assert (=> b!686332 (= lt!315029 e!390829)))

(declare-fun c!77722 () Bool)

(assert (=> b!686332 (= c!77722 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!686332 (arrayContainsKey!0 (array!39633 (store (arr!18988 a!3626) i!1382 k0!2843) (size!19361 a!3626)) k0!2843 from!3004)))

(declare-fun b!686333 () Bool)

(declare-fun res!451625 () Bool)

(assert (=> b!686333 (=> (not res!451625) (not e!390831))))

(assert (=> b!686333 (= res!451625 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19361 a!3626))))))

(declare-fun res!451623 () Bool)

(assert (=> start!61292 (=> (not res!451623) (not e!390831))))

(assert (=> start!61292 (= res!451623 (and (bvslt (size!19361 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19361 a!3626))))))

(assert (=> start!61292 e!390831))

(assert (=> start!61292 true))

(declare-fun array_inv!14762 (array!39632) Bool)

(assert (=> start!61292 (array_inv!14762 a!3626)))

(declare-fun b!686334 () Bool)

(declare-fun Unit!24180 () Unit!24177)

(assert (=> b!686334 (= e!390829 Unit!24180)))

(declare-fun b!686335 () Bool)

(declare-fun res!451613 () Bool)

(assert (=> b!686335 (=> (not res!451613) (not e!390831))))

(assert (=> b!686335 (= res!451613 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13079))))

(declare-fun b!686336 () Bool)

(declare-fun Unit!24181 () Unit!24177)

(assert (=> b!686336 (= e!390829 Unit!24181)))

(declare-fun lt!315028 () Unit!24177)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39632 (_ BitVec 64) (_ BitVec 32)) Unit!24177)

(assert (=> b!686336 (= lt!315028 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004))))

(assert (=> b!686336 false))

(declare-fun b!686337 () Bool)

(declare-fun res!451622 () Bool)

(assert (=> b!686337 (=> (not res!451622) (not e!390831))))

(assert (=> b!686337 (= res!451622 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19361 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!686338 () Bool)

(declare-fun res!451616 () Bool)

(assert (=> b!686338 (=> (not res!451616) (not e!390831))))

(assert (=> b!686338 (= res!451616 (validKeyInArray!0 k0!2843))))

(declare-fun b!686339 () Bool)

(assert (=> b!686339 (= e!390828 (contains!3625 acc!681 k0!2843))))

(assert (= (and start!61292 res!451623) b!686330))

(assert (= (and b!686330 res!451617) b!686326))

(assert (= (and b!686326 res!451624) b!686327))

(assert (= (and b!686327 res!451619) b!686323))

(assert (= (and b!686323 res!451615) b!686339))

(assert (= (and b!686323 (not res!451621)) b!686329))

(assert (= (and b!686329 res!451620) b!686331))

(assert (= (and b!686323 res!451612) b!686335))

(assert (= (and b!686335 res!451613) b!686322))

(assert (= (and b!686322 res!451614) b!686333))

(assert (= (and b!686333 res!451625) b!686338))

(assert (= (and b!686338 res!451616) b!686328))

(assert (= (and b!686328 res!451618) b!686337))

(assert (= (and b!686337 res!451622) b!686332))

(assert (= (and b!686332 c!77722) b!686336))

(assert (= (and b!686332 (not c!77722)) b!686334))

(assert (= (and b!686332 c!77723) b!686325))

(assert (= (and b!686332 (not c!77723)) b!686324))

(declare-fun m!650483 () Bool)

(assert (=> b!686322 m!650483))

(declare-fun m!650485 () Bool)

(assert (=> start!61292 m!650485))

(declare-fun m!650487 () Bool)

(assert (=> b!686335 m!650487))

(declare-fun m!650489 () Bool)

(assert (=> b!686336 m!650489))

(declare-fun m!650491 () Bool)

(assert (=> b!686328 m!650491))

(declare-fun m!650493 () Bool)

(assert (=> b!686332 m!650493))

(declare-fun m!650495 () Bool)

(assert (=> b!686332 m!650495))

(declare-fun m!650497 () Bool)

(assert (=> b!686332 m!650497))

(declare-fun m!650499 () Bool)

(assert (=> b!686332 m!650499))

(declare-fun m!650501 () Bool)

(assert (=> b!686332 m!650501))

(declare-fun m!650503 () Bool)

(assert (=> b!686332 m!650503))

(declare-fun m!650505 () Bool)

(assert (=> b!686332 m!650505))

(assert (=> b!686332 m!650495))

(declare-fun m!650507 () Bool)

(assert (=> b!686332 m!650507))

(declare-fun m!650509 () Bool)

(assert (=> b!686332 m!650509))

(declare-fun m!650511 () Bool)

(assert (=> b!686332 m!650511))

(declare-fun m!650513 () Bool)

(assert (=> b!686332 m!650513))

(declare-fun m!650515 () Bool)

(assert (=> b!686332 m!650515))

(declare-fun m!650517 () Bool)

(assert (=> b!686332 m!650517))

(assert (=> b!686325 m!650493))

(assert (=> b!686325 m!650495))

(declare-fun m!650519 () Bool)

(assert (=> b!686325 m!650519))

(declare-fun m!650521 () Bool)

(assert (=> b!686325 m!650521))

(assert (=> b!686325 m!650495))

(assert (=> b!686325 m!650519))

(assert (=> b!686325 m!650501))

(assert (=> b!686325 m!650517))

(declare-fun m!650523 () Bool)

(assert (=> b!686339 m!650523))

(assert (=> b!686331 m!650523))

(declare-fun m!650525 () Bool)

(assert (=> b!686327 m!650525))

(declare-fun m!650527 () Bool)

(assert (=> b!686330 m!650527))

(declare-fun m!650529 () Bool)

(assert (=> b!686326 m!650529))

(declare-fun m!650531 () Bool)

(assert (=> b!686338 m!650531))

(check-sat (not b!686327) (not b!686330) (not start!61292) (not b!686336) (not b!686326) (not b!686325) (not b!686338) (not b!686335) (not b!686328) (not b!686322) (not b!686331) (not b!686339) (not b!686332))
(check-sat)
