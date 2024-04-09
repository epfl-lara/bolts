; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62062 () Bool)

(assert start!62062)

(declare-fun b!694404 () Bool)

(declare-fun e!394991 () Bool)

(declare-fun e!394994 () Bool)

(assert (=> b!694404 (= e!394991 e!394994)))

(declare-fun res!458612 () Bool)

(assert (=> b!694404 (=> (not res!458612) (not e!394994))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!694404 (= res!458612 (bvsle from!3004 i!1382))))

(declare-fun b!694405 () Bool)

(declare-datatypes ((Unit!24522 0))(
  ( (Unit!24523) )
))
(declare-fun e!394997 () Unit!24522)

(declare-fun Unit!24524 () Unit!24522)

(assert (=> b!694405 (= e!394997 Unit!24524)))

(declare-fun b!694407 () Bool)

(declare-fun res!458625 () Bool)

(declare-fun e!394995 () Bool)

(assert (=> b!694407 (=> (not res!458625) (not e!394995))))

(declare-datatypes ((List!13182 0))(
  ( (Nil!13179) (Cons!13178 (h!14223 (_ BitVec 64)) (t!19469 List!13182)) )
))
(declare-fun acc!681 () List!13182)

(declare-fun contains!3725 (List!13182 (_ BitVec 64)) Bool)

(assert (=> b!694407 (= res!458625 (not (contains!3725 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!694408 () Bool)

(declare-fun res!458607 () Bool)

(assert (=> b!694408 (=> (not res!458607) (not e!394995))))

(declare-datatypes ((array!39859 0))(
  ( (array!39860 (arr!19088 (Array (_ BitVec 32) (_ BitVec 64))) (size!19471 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39859)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!694408 (= res!458607 (validKeyInArray!0 (select (arr!19088 a!3626) from!3004)))))

(declare-fun b!694409 () Bool)

(declare-fun e!394998 () Bool)

(declare-fun lt!316864 () List!13182)

(declare-fun k!2843 () (_ BitVec 64))

(assert (=> b!694409 (= e!394998 (contains!3725 lt!316864 k!2843))))

(declare-fun b!694410 () Bool)

(declare-fun res!458623 () Bool)

(assert (=> b!694410 (=> (not res!458623) (not e!394995))))

(assert (=> b!694410 (= res!458623 e!394991)))

(declare-fun res!458629 () Bool)

(assert (=> b!694410 (=> res!458629 e!394991)))

(declare-fun e!394996 () Bool)

(assert (=> b!694410 (= res!458629 e!394996)))

(declare-fun res!458618 () Bool)

(assert (=> b!694410 (=> (not res!458618) (not e!394996))))

(assert (=> b!694410 (= res!458618 (bvsgt from!3004 i!1382))))

(declare-fun b!694411 () Bool)

(declare-fun res!458610 () Bool)

(assert (=> b!694411 (=> (not res!458610) (not e!394995))))

(assert (=> b!694411 (= res!458610 (not (contains!3725 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!694412 () Bool)

(declare-fun res!458617 () Bool)

(declare-fun e!394989 () Bool)

(assert (=> b!694412 (=> (not res!458617) (not e!394989))))

(declare-fun e!394993 () Bool)

(assert (=> b!694412 (= res!458617 e!394993)))

(declare-fun res!458606 () Bool)

(assert (=> b!694412 (=> res!458606 e!394993)))

(assert (=> b!694412 (= res!458606 e!394998)))

(declare-fun res!458627 () Bool)

(assert (=> b!694412 (=> (not res!458627) (not e!394998))))

(assert (=> b!694412 (= res!458627 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!694413 () Bool)

(declare-fun res!458609 () Bool)

(assert (=> b!694413 (=> (not res!458609) (not e!394989))))

(assert (=> b!694413 (= res!458609 (not (contains!3725 lt!316864 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!694414 () Bool)

(declare-fun res!458608 () Bool)

(assert (=> b!694414 (=> (not res!458608) (not e!394995))))

(assert (=> b!694414 (= res!458608 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19471 a!3626))))))

(declare-fun b!694415 () Bool)

(declare-fun e!394990 () Bool)

(assert (=> b!694415 (= e!394995 e!394990)))

(declare-fun res!458622 () Bool)

(assert (=> b!694415 (=> (not res!458622) (not e!394990))))

(assert (=> b!694415 (= res!458622 (not (= (select (arr!19088 a!3626) from!3004) k!2843)))))

(declare-fun lt!316865 () Unit!24522)

(assert (=> b!694415 (= lt!316865 e!394997)))

(declare-fun c!78266 () Bool)

(assert (=> b!694415 (= c!78266 (= (select (arr!19088 a!3626) from!3004) k!2843))))

(declare-fun b!694416 () Bool)

(assert (=> b!694416 (= e!394990 e!394989)))

(declare-fun res!458626 () Bool)

(assert (=> b!694416 (=> (not res!458626) (not e!394989))))

(assert (=> b!694416 (= res!458626 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!435 (List!13182 (_ BitVec 64)) List!13182)

(assert (=> b!694416 (= lt!316864 ($colon$colon!435 acc!681 (select (arr!19088 a!3626) from!3004)))))

(declare-fun b!694417 () Bool)

(assert (=> b!694417 (= e!394989 (bvsge (bvsub (size!19471 a!3626) (bvadd #b00000000000000000000000000000001 from!3004)) (bvsub (size!19471 a!3626) from!3004)))))

(declare-fun b!694418 () Bool)

(declare-fun res!458620 () Bool)

(assert (=> b!694418 (=> (not res!458620) (not e!394995))))

(assert (=> b!694418 (= res!458620 (validKeyInArray!0 k!2843))))

(declare-fun b!694419 () Bool)

(declare-fun e!394992 () Bool)

(assert (=> b!694419 (= e!394993 e!394992)))

(declare-fun res!458616 () Bool)

(assert (=> b!694419 (=> (not res!458616) (not e!394992))))

(assert (=> b!694419 (= res!458616 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!694406 () Bool)

(declare-fun Unit!24525 () Unit!24522)

(assert (=> b!694406 (= e!394997 Unit!24525)))

(declare-fun arrayContainsKey!0 (array!39859 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!694406 (arrayContainsKey!0 a!3626 k!2843 from!3004)))

(declare-fun lt!316866 () Unit!24522)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39859 (_ BitVec 64) (_ BitVec 32)) Unit!24522)

(assert (=> b!694406 (= lt!316866 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!694406 false))

(declare-fun res!458619 () Bool)

(assert (=> start!62062 (=> (not res!458619) (not e!394995))))

(assert (=> start!62062 (= res!458619 (and (bvslt (size!19471 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19471 a!3626))))))

(assert (=> start!62062 e!394995))

(assert (=> start!62062 true))

(declare-fun array_inv!14862 (array!39859) Bool)

(assert (=> start!62062 (array_inv!14862 a!3626)))

(declare-fun b!694420 () Bool)

(declare-fun res!458621 () Bool)

(assert (=> b!694420 (=> (not res!458621) (not e!394989))))

(declare-fun arrayNoDuplicates!0 (array!39859 (_ BitVec 32) List!13182) Bool)

(assert (=> b!694420 (= res!458621 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!316864))))

(declare-fun b!694421 () Bool)

(declare-fun res!458611 () Bool)

(assert (=> b!694421 (=> (not res!458611) (not e!394995))))

(assert (=> b!694421 (= res!458611 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13179))))

(declare-fun b!694422 () Bool)

(declare-fun res!458624 () Bool)

(assert (=> b!694422 (=> (not res!458624) (not e!394995))))

(declare-fun noDuplicate!972 (List!13182) Bool)

(assert (=> b!694422 (= res!458624 (noDuplicate!972 acc!681))))

(declare-fun b!694423 () Bool)

(assert (=> b!694423 (= e!394994 (not (contains!3725 acc!681 k!2843)))))

(declare-fun b!694424 () Bool)

(declare-fun res!458615 () Bool)

(assert (=> b!694424 (=> (not res!458615) (not e!394989))))

(assert (=> b!694424 (= res!458615 (noDuplicate!972 lt!316864))))

(declare-fun b!694425 () Bool)

(assert (=> b!694425 (= e!394996 (contains!3725 acc!681 k!2843))))

(declare-fun b!694426 () Bool)

(declare-fun res!458614 () Bool)

(assert (=> b!694426 (=> (not res!458614) (not e!394989))))

(assert (=> b!694426 (= res!458614 (not (contains!3725 lt!316864 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!694427 () Bool)

(declare-fun res!458613 () Bool)

(assert (=> b!694427 (=> (not res!458613) (not e!394995))))

(assert (=> b!694427 (= res!458613 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!694428 () Bool)

(declare-fun res!458628 () Bool)

(assert (=> b!694428 (=> (not res!458628) (not e!394995))))

(assert (=> b!694428 (= res!458628 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!694429 () Bool)

(declare-fun res!458630 () Bool)

(assert (=> b!694429 (=> (not res!458630) (not e!394995))))

(assert (=> b!694429 (= res!458630 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19471 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!694430 () Bool)

(assert (=> b!694430 (= e!394992 (not (contains!3725 lt!316864 k!2843)))))

(assert (= (and start!62062 res!458619) b!694422))

(assert (= (and b!694422 res!458624) b!694407))

(assert (= (and b!694407 res!458625) b!694411))

(assert (= (and b!694411 res!458610) b!694410))

(assert (= (and b!694410 res!458618) b!694425))

(assert (= (and b!694410 (not res!458629)) b!694404))

(assert (= (and b!694404 res!458612) b!694423))

(assert (= (and b!694410 res!458623) b!694421))

(assert (= (and b!694421 res!458611) b!694428))

(assert (= (and b!694428 res!458628) b!694414))

(assert (= (and b!694414 res!458608) b!694418))

(assert (= (and b!694418 res!458620) b!694427))

(assert (= (and b!694427 res!458613) b!694429))

(assert (= (and b!694429 res!458630) b!694408))

(assert (= (and b!694408 res!458607) b!694415))

(assert (= (and b!694415 c!78266) b!694406))

(assert (= (and b!694415 (not c!78266)) b!694405))

(assert (= (and b!694415 res!458622) b!694416))

(assert (= (and b!694416 res!458626) b!694424))

(assert (= (and b!694424 res!458615) b!694413))

(assert (= (and b!694413 res!458609) b!694426))

(assert (= (and b!694426 res!458614) b!694412))

(assert (= (and b!694412 res!458627) b!694409))

(assert (= (and b!694412 (not res!458606)) b!694419))

(assert (= (and b!694419 res!458616) b!694430))

(assert (= (and b!694412 res!458617) b!694420))

(assert (= (and b!694420 res!458621) b!694417))

(declare-fun m!656209 () Bool)

(assert (=> b!694407 m!656209))

(declare-fun m!656211 () Bool)

(assert (=> b!694426 m!656211))

(declare-fun m!656213 () Bool)

(assert (=> start!62062 m!656213))

(declare-fun m!656215 () Bool)

(assert (=> b!694427 m!656215))

(declare-fun m!656217 () Bool)

(assert (=> b!694420 m!656217))

(declare-fun m!656219 () Bool)

(assert (=> b!694423 m!656219))

(declare-fun m!656221 () Bool)

(assert (=> b!694424 m!656221))

(declare-fun m!656223 () Bool)

(assert (=> b!694409 m!656223))

(declare-fun m!656225 () Bool)

(assert (=> b!694415 m!656225))

(assert (=> b!694408 m!656225))

(assert (=> b!694408 m!656225))

(declare-fun m!656227 () Bool)

(assert (=> b!694408 m!656227))

(declare-fun m!656229 () Bool)

(assert (=> b!694418 m!656229))

(declare-fun m!656231 () Bool)

(assert (=> b!694421 m!656231))

(declare-fun m!656233 () Bool)

(assert (=> b!694413 m!656233))

(declare-fun m!656235 () Bool)

(assert (=> b!694406 m!656235))

(declare-fun m!656237 () Bool)

(assert (=> b!694406 m!656237))

(assert (=> b!694416 m!656225))

(assert (=> b!694416 m!656225))

(declare-fun m!656239 () Bool)

(assert (=> b!694416 m!656239))

(assert (=> b!694425 m!656219))

(declare-fun m!656241 () Bool)

(assert (=> b!694422 m!656241))

(declare-fun m!656243 () Bool)

(assert (=> b!694428 m!656243))

(assert (=> b!694430 m!656223))

(declare-fun m!656245 () Bool)

(assert (=> b!694411 m!656245))

(push 1)

(assert (not b!694424))

(assert (not b!694427))

(assert (not start!62062))

(assert (not b!694407))

(assert (not b!694420))

(assert (not b!694428))

(assert (not b!694416))

(assert (not b!694406))

(assert (not b!694426))

(assert (not b!694423))

(assert (not b!694409))

(assert (not b!694411))

(assert (not b!694413))

(assert (not b!694422))

(assert (not b!694408))

(assert (not b!694430))

(assert (not b!694418))

(assert (not b!694425))

(assert (not b!694421))

(check-sat)

(pop 1)

(push 1)

(check-sat)

