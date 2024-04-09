; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!60224 () Bool)

(assert start!60224)

(declare-fun b!673526 () Bool)

(declare-fun res!440236 () Bool)

(declare-fun e!384577 () Bool)

(assert (=> b!673526 (=> (not res!440236) (not e!384577))))

(declare-fun e!384578 () Bool)

(assert (=> b!673526 (= res!440236 e!384578)))

(declare-fun res!440244 () Bool)

(assert (=> b!673526 (=> res!440244 e!384578)))

(declare-fun e!384574 () Bool)

(assert (=> b!673526 (= res!440244 e!384574)))

(declare-fun res!440232 () Bool)

(assert (=> b!673526 (=> (not res!440232) (not e!384574))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!673526 (= res!440232 (bvsgt from!3004 i!1382))))

(declare-fun b!673527 () Bool)

(declare-fun e!384582 () Bool)

(assert (=> b!673527 (= e!384577 e!384582)))

(declare-fun res!440237 () Bool)

(assert (=> b!673527 (=> (not res!440237) (not e!384582))))

(declare-fun k0!2843 () (_ BitVec 64))

(declare-datatypes ((array!39227 0))(
  ( (array!39228 (arr!18802 (Array (_ BitVec 32) (_ BitVec 64))) (size!19166 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39227)

(assert (=> b!673527 (= res!440237 (not (= (select (arr!18802 a!3626) from!3004) k0!2843)))))

(declare-datatypes ((Unit!23672 0))(
  ( (Unit!23673) )
))
(declare-fun lt!312453 () Unit!23672)

(declare-fun e!384576 () Unit!23672)

(assert (=> b!673527 (= lt!312453 e!384576)))

(declare-fun c!77018 () Bool)

(assert (=> b!673527 (= c!77018 (= (select (arr!18802 a!3626) from!3004) k0!2843))))

(declare-fun b!673528 () Bool)

(declare-fun e!384583 () Bool)

(declare-datatypes ((List!12896 0))(
  ( (Nil!12893) (Cons!12892 (h!13937 (_ BitVec 64)) (t!19132 List!12896)) )
))
(declare-fun acc!681 () List!12896)

(declare-fun contains!3439 (List!12896 (_ BitVec 64)) Bool)

(assert (=> b!673528 (= e!384583 (not (contains!3439 acc!681 k0!2843)))))

(declare-fun b!673529 () Bool)

(declare-fun res!440224 () Bool)

(declare-fun e!384573 () Bool)

(assert (=> b!673529 (=> (not res!440224) (not e!384573))))

(declare-fun lt!312450 () List!12896)

(assert (=> b!673529 (= res!440224 (not (contains!3439 lt!312450 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!673530 () Bool)

(declare-fun res!440227 () Bool)

(assert (=> b!673530 (=> (not res!440227) (not e!384573))))

(declare-fun noDuplicate!686 (List!12896) Bool)

(assert (=> b!673530 (= res!440227 (noDuplicate!686 lt!312450))))

(declare-fun b!673531 () Bool)

(assert (=> b!673531 (= e!384573 false)))

(declare-fun lt!312451 () Bool)

(declare-fun arrayNoDuplicates!0 (array!39227 (_ BitVec 32) List!12896) Bool)

(assert (=> b!673531 (= lt!312451 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!312450))))

(declare-fun b!673532 () Bool)

(declare-fun Unit!23674 () Unit!23672)

(assert (=> b!673532 (= e!384576 Unit!23674)))

(declare-fun b!673533 () Bool)

(declare-fun e!384575 () Bool)

(assert (=> b!673533 (= e!384575 (not (contains!3439 lt!312450 k0!2843)))))

(declare-fun b!673534 () Bool)

(declare-fun e!384581 () Bool)

(assert (=> b!673534 (= e!384581 e!384575)))

(declare-fun res!440223 () Bool)

(assert (=> b!673534 (=> (not res!440223) (not e!384575))))

(assert (=> b!673534 (= res!440223 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!673535 () Bool)

(declare-fun res!440228 () Bool)

(assert (=> b!673535 (=> (not res!440228) (not e!384577))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!673535 (= res!440228 (validKeyInArray!0 k0!2843))))

(declare-fun b!673536 () Bool)

(declare-fun e!384580 () Bool)

(assert (=> b!673536 (= e!384580 (contains!3439 lt!312450 k0!2843))))

(declare-fun b!673525 () Bool)

(declare-fun res!440246 () Bool)

(assert (=> b!673525 (=> (not res!440246) (not e!384577))))

(assert (=> b!673525 (= res!440246 (not (contains!3439 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!440231 () Bool)

(assert (=> start!60224 (=> (not res!440231) (not e!384577))))

(assert (=> start!60224 (= res!440231 (and (bvslt (size!19166 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19166 a!3626))))))

(assert (=> start!60224 e!384577))

(assert (=> start!60224 true))

(declare-fun array_inv!14576 (array!39227) Bool)

(assert (=> start!60224 (array_inv!14576 a!3626)))

(declare-fun b!673537 () Bool)

(declare-fun res!440233 () Bool)

(assert (=> b!673537 (=> (not res!440233) (not e!384577))))

(assert (=> b!673537 (= res!440233 (not (contains!3439 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!673538 () Bool)

(declare-fun res!440235 () Bool)

(assert (=> b!673538 (=> (not res!440235) (not e!384577))))

(assert (=> b!673538 (= res!440235 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!673539 () Bool)

(declare-fun res!440243 () Bool)

(assert (=> b!673539 (=> (not res!440243) (not e!384573))))

(assert (=> b!673539 (= res!440243 e!384581)))

(declare-fun res!440238 () Bool)

(assert (=> b!673539 (=> res!440238 e!384581)))

(assert (=> b!673539 (= res!440238 e!384580)))

(declare-fun res!440234 () Bool)

(assert (=> b!673539 (=> (not res!440234) (not e!384580))))

(assert (=> b!673539 (= res!440234 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!673540 () Bool)

(assert (=> b!673540 (= e!384582 e!384573)))

(declare-fun res!440240 () Bool)

(assert (=> b!673540 (=> (not res!440240) (not e!384573))))

(assert (=> b!673540 (= res!440240 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!287 (List!12896 (_ BitVec 64)) List!12896)

(assert (=> b!673540 (= lt!312450 ($colon$colon!287 acc!681 (select (arr!18802 a!3626) from!3004)))))

(declare-fun b!673541 () Bool)

(declare-fun res!440245 () Bool)

(assert (=> b!673541 (=> (not res!440245) (not e!384577))))

(assert (=> b!673541 (= res!440245 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19166 a!3626))))))

(declare-fun b!673542 () Bool)

(declare-fun res!440226 () Bool)

(assert (=> b!673542 (=> (not res!440226) (not e!384577))))

(assert (=> b!673542 (= res!440226 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19166 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!673543 () Bool)

(assert (=> b!673543 (= e!384574 (contains!3439 acc!681 k0!2843))))

(declare-fun b!673544 () Bool)

(declare-fun res!440230 () Bool)

(assert (=> b!673544 (=> (not res!440230) (not e!384577))))

(assert (=> b!673544 (= res!440230 (validKeyInArray!0 (select (arr!18802 a!3626) from!3004)))))

(declare-fun b!673545 () Bool)

(declare-fun res!440242 () Bool)

(assert (=> b!673545 (=> (not res!440242) (not e!384577))))

(declare-fun arrayContainsKey!0 (array!39227 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!673545 (= res!440242 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!673546 () Bool)

(assert (=> b!673546 (= e!384578 e!384583)))

(declare-fun res!440229 () Bool)

(assert (=> b!673546 (=> (not res!440229) (not e!384583))))

(assert (=> b!673546 (= res!440229 (bvsle from!3004 i!1382))))

(declare-fun b!673547 () Bool)

(declare-fun Unit!23675 () Unit!23672)

(assert (=> b!673547 (= e!384576 Unit!23675)))

(assert (=> b!673547 (arrayContainsKey!0 a!3626 k0!2843 from!3004)))

(declare-fun lt!312452 () Unit!23672)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39227 (_ BitVec 64) (_ BitVec 32)) Unit!23672)

(assert (=> b!673547 (= lt!312452 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004))))

(assert (=> b!673547 false))

(declare-fun b!673548 () Bool)

(declare-fun res!440241 () Bool)

(assert (=> b!673548 (=> (not res!440241) (not e!384577))))

(assert (=> b!673548 (= res!440241 (noDuplicate!686 acc!681))))

(declare-fun b!673549 () Bool)

(declare-fun res!440225 () Bool)

(assert (=> b!673549 (=> (not res!440225) (not e!384577))))

(assert (=> b!673549 (= res!440225 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12893))))

(declare-fun b!673550 () Bool)

(declare-fun res!440239 () Bool)

(assert (=> b!673550 (=> (not res!440239) (not e!384573))))

(assert (=> b!673550 (= res!440239 (not (contains!3439 lt!312450 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!60224 res!440231) b!673548))

(assert (= (and b!673548 res!440241) b!673525))

(assert (= (and b!673525 res!440246) b!673537))

(assert (= (and b!673537 res!440233) b!673526))

(assert (= (and b!673526 res!440232) b!673543))

(assert (= (and b!673526 (not res!440244)) b!673546))

(assert (= (and b!673546 res!440229) b!673528))

(assert (= (and b!673526 res!440236) b!673549))

(assert (= (and b!673549 res!440225) b!673538))

(assert (= (and b!673538 res!440235) b!673541))

(assert (= (and b!673541 res!440245) b!673535))

(assert (= (and b!673535 res!440228) b!673545))

(assert (= (and b!673545 res!440242) b!673542))

(assert (= (and b!673542 res!440226) b!673544))

(assert (= (and b!673544 res!440230) b!673527))

(assert (= (and b!673527 c!77018) b!673547))

(assert (= (and b!673527 (not c!77018)) b!673532))

(assert (= (and b!673527 res!440237) b!673540))

(assert (= (and b!673540 res!440240) b!673530))

(assert (= (and b!673530 res!440227) b!673550))

(assert (= (and b!673550 res!440239) b!673529))

(assert (= (and b!673529 res!440224) b!673539))

(assert (= (and b!673539 res!440234) b!673536))

(assert (= (and b!673539 (not res!440238)) b!673534))

(assert (= (and b!673534 res!440223) b!673533))

(assert (= (and b!673539 res!440243) b!673531))

(declare-fun m!641891 () Bool)

(assert (=> b!673527 m!641891))

(declare-fun m!641893 () Bool)

(assert (=> b!673548 m!641893))

(declare-fun m!641895 () Bool)

(assert (=> b!673529 m!641895))

(declare-fun m!641897 () Bool)

(assert (=> b!673537 m!641897))

(declare-fun m!641899 () Bool)

(assert (=> b!673550 m!641899))

(declare-fun m!641901 () Bool)

(assert (=> b!673535 m!641901))

(assert (=> b!673544 m!641891))

(assert (=> b!673544 m!641891))

(declare-fun m!641903 () Bool)

(assert (=> b!673544 m!641903))

(declare-fun m!641905 () Bool)

(assert (=> b!673545 m!641905))

(declare-fun m!641907 () Bool)

(assert (=> b!673549 m!641907))

(declare-fun m!641909 () Bool)

(assert (=> b!673525 m!641909))

(declare-fun m!641911 () Bool)

(assert (=> b!673530 m!641911))

(declare-fun m!641913 () Bool)

(assert (=> b!673543 m!641913))

(assert (=> b!673528 m!641913))

(declare-fun m!641915 () Bool)

(assert (=> b!673547 m!641915))

(declare-fun m!641917 () Bool)

(assert (=> b!673547 m!641917))

(declare-fun m!641919 () Bool)

(assert (=> b!673533 m!641919))

(declare-fun m!641921 () Bool)

(assert (=> start!60224 m!641921))

(assert (=> b!673536 m!641919))

(declare-fun m!641923 () Bool)

(assert (=> b!673538 m!641923))

(assert (=> b!673540 m!641891))

(assert (=> b!673540 m!641891))

(declare-fun m!641925 () Bool)

(assert (=> b!673540 m!641925))

(declare-fun m!641927 () Bool)

(assert (=> b!673531 m!641927))

(check-sat (not b!673537) (not b!673548) (not b!673530) (not b!673525) (not b!673533) (not b!673544) (not b!673543) (not b!673547) (not b!673540) (not b!673535) (not start!60224) (not b!673529) (not b!673538) (not b!673545) (not b!673531) (not b!673528) (not b!673536) (not b!673550) (not b!673549))
(check-sat)
