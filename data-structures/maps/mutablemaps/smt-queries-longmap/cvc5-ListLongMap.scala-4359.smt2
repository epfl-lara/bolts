; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60198 () Bool)

(assert start!60198)

(declare-fun b!672511 () Bool)

(declare-fun res!439304 () Bool)

(declare-fun e!384148 () Bool)

(assert (=> b!672511 (=> (not res!439304) (not e!384148))))

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!672511 (= res!439304 (validKeyInArray!0 k!2843))))

(declare-fun b!672512 () Bool)

(declare-fun res!439303 () Bool)

(declare-fun e!384151 () Bool)

(assert (=> b!672512 (=> (not res!439303) (not e!384151))))

(declare-datatypes ((List!12883 0))(
  ( (Nil!12880) (Cons!12879 (h!13924 (_ BitVec 64)) (t!19119 List!12883)) )
))
(declare-fun lt!312296 () List!12883)

(declare-fun contains!3426 (List!12883 (_ BitVec 64)) Bool)

(assert (=> b!672512 (= res!439303 (not (contains!3426 lt!312296 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!672513 () Bool)

(declare-fun res!439294 () Bool)

(assert (=> b!672513 (=> (not res!439294) (not e!384148))))

(declare-fun acc!681 () List!12883)

(assert (=> b!672513 (= res!439294 (not (contains!3426 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!672514 () Bool)

(declare-fun res!439309 () Bool)

(assert (=> b!672514 (=> (not res!439309) (not e!384148))))

(declare-datatypes ((array!39201 0))(
  ( (array!39202 (arr!18789 (Array (_ BitVec 32) (_ BitVec 64))) (size!19153 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39201)

(declare-fun arrayContainsKey!0 (array!39201 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!672514 (= res!439309 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!672515 () Bool)

(declare-fun res!439295 () Bool)

(assert (=> b!672515 (=> (not res!439295) (not e!384148))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!672515 (= res!439295 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19153 a!3626))))))

(declare-fun b!672516 () Bool)

(declare-datatypes ((Unit!23620 0))(
  ( (Unit!23621) )
))
(declare-fun e!384146 () Unit!23620)

(declare-fun Unit!23622 () Unit!23620)

(assert (=> b!672516 (= e!384146 Unit!23622)))

(declare-fun b!672517 () Bool)

(declare-fun e!384152 () Bool)

(assert (=> b!672517 (= e!384152 (not (contains!3426 lt!312296 k!2843)))))

(declare-fun b!672518 () Bool)

(declare-fun res!439293 () Bool)

(assert (=> b!672518 (=> (not res!439293) (not e!384148))))

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!672518 (= res!439293 (validKeyInArray!0 (select (arr!18789 a!3626) from!3004)))))

(declare-fun b!672519 () Bool)

(declare-fun res!439289 () Bool)

(assert (=> b!672519 (=> (not res!439289) (not e!384148))))

(assert (=> b!672519 (= res!439289 (not (contains!3426 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!672520 () Bool)

(declare-fun e!384154 () Bool)

(assert (=> b!672520 (= e!384154 (not (contains!3426 acc!681 k!2843)))))

(declare-fun b!672521 () Bool)

(declare-fun Unit!23623 () Unit!23620)

(assert (=> b!672521 (= e!384146 Unit!23623)))

(assert (=> b!672521 (arrayContainsKey!0 a!3626 k!2843 from!3004)))

(declare-fun lt!312297 () Unit!23620)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39201 (_ BitVec 64) (_ BitVec 32)) Unit!23620)

(assert (=> b!672521 (= lt!312297 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!672521 false))

(declare-fun b!672522 () Bool)

(declare-fun res!439310 () Bool)

(assert (=> b!672522 (=> (not res!439310) (not e!384151))))

(declare-fun noDuplicate!673 (List!12883) Bool)

(assert (=> b!672522 (= res!439310 (noDuplicate!673 lt!312296))))

(declare-fun b!672523 () Bool)

(declare-fun e!384149 () Bool)

(assert (=> b!672523 (= e!384149 (contains!3426 lt!312296 k!2843))))

(declare-fun b!672524 () Bool)

(declare-fun res!439298 () Bool)

(assert (=> b!672524 (=> (not res!439298) (not e!384148))))

(declare-fun arrayNoDuplicates!0 (array!39201 (_ BitVec 32) List!12883) Bool)

(assert (=> b!672524 (= res!439298 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12880))))

(declare-fun res!439301 () Bool)

(assert (=> start!60198 (=> (not res!439301) (not e!384148))))

(assert (=> start!60198 (= res!439301 (and (bvslt (size!19153 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19153 a!3626))))))

(assert (=> start!60198 e!384148))

(assert (=> start!60198 true))

(declare-fun array_inv!14563 (array!39201) Bool)

(assert (=> start!60198 (array_inv!14563 a!3626)))

(declare-fun b!672525 () Bool)

(declare-fun res!439291 () Bool)

(assert (=> b!672525 (=> (not res!439291) (not e!384148))))

(assert (=> b!672525 (= res!439291 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!672526 () Bool)

(declare-fun res!439297 () Bool)

(assert (=> b!672526 (=> (not res!439297) (not e!384151))))

(assert (=> b!672526 (= res!439297 (not (contains!3426 lt!312296 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!672527 () Bool)

(declare-fun res!439300 () Bool)

(assert (=> b!672527 (=> (not res!439300) (not e!384151))))

(declare-fun e!384153 () Bool)

(assert (=> b!672527 (= res!439300 e!384153)))

(declare-fun res!439305 () Bool)

(assert (=> b!672527 (=> res!439305 e!384153)))

(assert (=> b!672527 (= res!439305 e!384149)))

(declare-fun res!439290 () Bool)

(assert (=> b!672527 (=> (not res!439290) (not e!384149))))

(assert (=> b!672527 (= res!439290 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!672528 () Bool)

(declare-fun e!384150 () Bool)

(assert (=> b!672528 (= e!384150 (contains!3426 acc!681 k!2843))))

(declare-fun b!672529 () Bool)

(declare-fun e!384147 () Bool)

(assert (=> b!672529 (= e!384147 e!384154)))

(declare-fun res!439302 () Bool)

(assert (=> b!672529 (=> (not res!439302) (not e!384154))))

(assert (=> b!672529 (= res!439302 (bvsle from!3004 i!1382))))

(declare-fun b!672530 () Bool)

(declare-fun res!439307 () Bool)

(assert (=> b!672530 (=> (not res!439307) (not e!384148))))

(assert (=> b!672530 (= res!439307 (noDuplicate!673 acc!681))))

(declare-fun b!672531 () Bool)

(declare-fun res!439288 () Bool)

(assert (=> b!672531 (=> (not res!439288) (not e!384148))))

(assert (=> b!672531 (= res!439288 e!384147)))

(declare-fun res!439296 () Bool)

(assert (=> b!672531 (=> res!439296 e!384147)))

(assert (=> b!672531 (= res!439296 e!384150)))

(declare-fun res!439292 () Bool)

(assert (=> b!672531 (=> (not res!439292) (not e!384150))))

(assert (=> b!672531 (= res!439292 (bvsgt from!3004 i!1382))))

(declare-fun b!672532 () Bool)

(declare-fun e!384144 () Bool)

(assert (=> b!672532 (= e!384144 e!384151)))

(declare-fun res!439308 () Bool)

(assert (=> b!672532 (=> (not res!439308) (not e!384151))))

(assert (=> b!672532 (= res!439308 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!274 (List!12883 (_ BitVec 64)) List!12883)

(assert (=> b!672532 (= lt!312296 ($colon$colon!274 acc!681 (select (arr!18789 a!3626) from!3004)))))

(declare-fun b!672533 () Bool)

(declare-fun res!439306 () Bool)

(assert (=> b!672533 (=> (not res!439306) (not e!384148))))

(assert (=> b!672533 (= res!439306 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19153 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!672534 () Bool)

(assert (=> b!672534 (= e!384151 false)))

(declare-fun lt!312295 () Bool)

(assert (=> b!672534 (= lt!312295 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!312296))))

(declare-fun b!672535 () Bool)

(assert (=> b!672535 (= e!384153 e!384152)))

(declare-fun res!439299 () Bool)

(assert (=> b!672535 (=> (not res!439299) (not e!384152))))

(assert (=> b!672535 (= res!439299 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!672536 () Bool)

(assert (=> b!672536 (= e!384148 e!384144)))

(declare-fun res!439287 () Bool)

(assert (=> b!672536 (=> (not res!439287) (not e!384144))))

(assert (=> b!672536 (= res!439287 (not (= (select (arr!18789 a!3626) from!3004) k!2843)))))

(declare-fun lt!312294 () Unit!23620)

(assert (=> b!672536 (= lt!312294 e!384146)))

(declare-fun c!76979 () Bool)

(assert (=> b!672536 (= c!76979 (= (select (arr!18789 a!3626) from!3004) k!2843))))

(assert (= (and start!60198 res!439301) b!672530))

(assert (= (and b!672530 res!439307) b!672513))

(assert (= (and b!672513 res!439294) b!672519))

(assert (= (and b!672519 res!439289) b!672531))

(assert (= (and b!672531 res!439292) b!672528))

(assert (= (and b!672531 (not res!439296)) b!672529))

(assert (= (and b!672529 res!439302) b!672520))

(assert (= (and b!672531 res!439288) b!672524))

(assert (= (and b!672524 res!439298) b!672525))

(assert (= (and b!672525 res!439291) b!672515))

(assert (= (and b!672515 res!439295) b!672511))

(assert (= (and b!672511 res!439304) b!672514))

(assert (= (and b!672514 res!439309) b!672533))

(assert (= (and b!672533 res!439306) b!672518))

(assert (= (and b!672518 res!439293) b!672536))

(assert (= (and b!672536 c!76979) b!672521))

(assert (= (and b!672536 (not c!76979)) b!672516))

(assert (= (and b!672536 res!439287) b!672532))

(assert (= (and b!672532 res!439308) b!672522))

(assert (= (and b!672522 res!439310) b!672512))

(assert (= (and b!672512 res!439303) b!672526))

(assert (= (and b!672526 res!439297) b!672527))

(assert (= (and b!672527 res!439290) b!672523))

(assert (= (and b!672527 (not res!439305)) b!672535))

(assert (= (and b!672535 res!439299) b!672517))

(assert (= (and b!672527 res!439300) b!672534))

(declare-fun m!641397 () Bool)

(assert (=> b!672526 m!641397))

(declare-fun m!641399 () Bool)

(assert (=> b!672513 m!641399))

(declare-fun m!641401 () Bool)

(assert (=> b!672532 m!641401))

(assert (=> b!672532 m!641401))

(declare-fun m!641403 () Bool)

(assert (=> b!672532 m!641403))

(assert (=> b!672518 m!641401))

(assert (=> b!672518 m!641401))

(declare-fun m!641405 () Bool)

(assert (=> b!672518 m!641405))

(declare-fun m!641407 () Bool)

(assert (=> b!672528 m!641407))

(declare-fun m!641409 () Bool)

(assert (=> b!672521 m!641409))

(declare-fun m!641411 () Bool)

(assert (=> b!672521 m!641411))

(declare-fun m!641413 () Bool)

(assert (=> b!672524 m!641413))

(declare-fun m!641415 () Bool)

(assert (=> b!672525 m!641415))

(declare-fun m!641417 () Bool)

(assert (=> b!672514 m!641417))

(assert (=> b!672520 m!641407))

(declare-fun m!641419 () Bool)

(assert (=> b!672519 m!641419))

(declare-fun m!641421 () Bool)

(assert (=> b!672512 m!641421))

(declare-fun m!641423 () Bool)

(assert (=> b!672534 m!641423))

(declare-fun m!641425 () Bool)

(assert (=> b!672523 m!641425))

(declare-fun m!641427 () Bool)

(assert (=> start!60198 m!641427))

(declare-fun m!641429 () Bool)

(assert (=> b!672522 m!641429))

(assert (=> b!672536 m!641401))

(declare-fun m!641431 () Bool)

(assert (=> b!672511 m!641431))

(declare-fun m!641433 () Bool)

(assert (=> b!672530 m!641433))

(assert (=> b!672517 m!641425))

(push 1)

