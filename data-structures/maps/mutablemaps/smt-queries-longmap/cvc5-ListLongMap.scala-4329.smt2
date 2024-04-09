; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60018 () Bool)

(assert start!60018)

(declare-fun b!666434 () Bool)

(declare-fun e!381633 () Bool)

(declare-fun e!381631 () Bool)

(assert (=> b!666434 (= e!381633 (not e!381631))))

(declare-fun res!433951 () Bool)

(assert (=> b!666434 (=> res!433951 e!381631)))

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!666434 (= res!433951 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-datatypes ((List!12793 0))(
  ( (Nil!12790) (Cons!12789 (h!13834 (_ BitVec 64)) (t!19029 List!12793)) )
))
(declare-fun lt!310448 () List!12793)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun acc!681 () List!12793)

(declare-fun -!72 (List!12793 (_ BitVec 64)) List!12793)

(assert (=> b!666434 (= (-!72 lt!310448 k!2843) acc!681)))

(declare-fun $colon$colon!205 (List!12793 (_ BitVec 64)) List!12793)

(assert (=> b!666434 (= lt!310448 ($colon$colon!205 acc!681 k!2843))))

(declare-datatypes ((Unit!23290 0))(
  ( (Unit!23291) )
))
(declare-fun lt!310444 () Unit!23290)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!12793) Unit!23290)

(assert (=> b!666434 (= lt!310444 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(declare-fun subseq!74 (List!12793 List!12793) Bool)

(assert (=> b!666434 (subseq!74 acc!681 acc!681)))

(declare-fun lt!310447 () Unit!23290)

(declare-fun lemmaListSubSeqRefl!0 (List!12793) Unit!23290)

(assert (=> b!666434 (= lt!310447 (lemmaListSubSeqRefl!0 acc!681))))

(declare-datatypes ((array!39021 0))(
  ( (array!39022 (arr!18699 (Array (_ BitVec 32) (_ BitVec 64))) (size!19063 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39021)

(declare-fun arrayNoDuplicates!0 (array!39021 (_ BitVec 32) List!12793) Bool)

(assert (=> b!666434 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!310449 () Unit!23290)

(declare-fun e!381629 () Unit!23290)

(assert (=> b!666434 (= lt!310449 e!381629)))

(declare-fun c!76613 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!666434 (= c!76613 (validKeyInArray!0 (select (arr!18699 a!3626) from!3004)))))

(declare-fun lt!310446 () Unit!23290)

(declare-fun e!381632 () Unit!23290)

(assert (=> b!666434 (= lt!310446 e!381632)))

(declare-fun c!76612 () Bool)

(declare-fun lt!310450 () Bool)

(assert (=> b!666434 (= c!76612 lt!310450)))

(declare-fun arrayContainsKey!0 (array!39021 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!666434 (= lt!310450 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!666434 (arrayContainsKey!0 (array!39022 (store (arr!18699 a!3626) i!1382 k!2843) (size!19063 a!3626)) k!2843 from!3004)))

(declare-fun b!666435 () Bool)

(declare-fun res!433962 () Bool)

(assert (=> b!666435 (=> (not res!433962) (not e!381633))))

(assert (=> b!666435 (= res!433962 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!666436 () Bool)

(assert (=> b!666436 (= e!381631 true)))

(declare-fun lt!310452 () Bool)

(declare-fun contains!3336 (List!12793 (_ BitVec 64)) Bool)

(assert (=> b!666436 (= lt!310452 (contains!3336 lt!310448 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!666437 () Bool)

(declare-fun res!433945 () Bool)

(assert (=> b!666437 (=> (not res!433945) (not e!381633))))

(assert (=> b!666437 (= res!433945 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!666439 () Bool)

(declare-fun lt!310451 () Unit!23290)

(assert (=> b!666439 (= e!381629 lt!310451)))

(declare-fun lt!310445 () Unit!23290)

(assert (=> b!666439 (= lt!310445 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!666439 (subseq!74 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39021 List!12793 List!12793 (_ BitVec 32)) Unit!23290)

(assert (=> b!666439 (= lt!310451 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!205 acc!681 (select (arr!18699 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!666439 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!666440 () Bool)

(declare-fun res!433953 () Bool)

(assert (=> b!666440 (=> res!433953 e!381631)))

(declare-fun noDuplicate!583 (List!12793) Bool)

(assert (=> b!666440 (= res!433953 (not (noDuplicate!583 lt!310448)))))

(declare-fun b!666441 () Bool)

(declare-fun res!433955 () Bool)

(assert (=> b!666441 (=> (not res!433955) (not e!381633))))

(assert (=> b!666441 (= res!433955 (not (contains!3336 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!666442 () Bool)

(declare-fun e!381627 () Bool)

(declare-fun e!381630 () Bool)

(assert (=> b!666442 (= e!381627 e!381630)))

(declare-fun res!433959 () Bool)

(assert (=> b!666442 (=> (not res!433959) (not e!381630))))

(assert (=> b!666442 (= res!433959 (bvsle from!3004 i!1382))))

(declare-fun b!666443 () Bool)

(declare-fun res!433960 () Bool)

(assert (=> b!666443 (=> (not res!433960) (not e!381633))))

(assert (=> b!666443 (= res!433960 (noDuplicate!583 acc!681))))

(declare-fun b!666444 () Bool)

(declare-fun res!433956 () Bool)

(assert (=> b!666444 (=> res!433956 e!381631)))

(assert (=> b!666444 (= res!433956 (contains!3336 lt!310448 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!666445 () Bool)

(declare-fun e!381628 () Bool)

(assert (=> b!666445 (= e!381628 (contains!3336 acc!681 k!2843))))

(declare-fun b!666446 () Bool)

(declare-fun Unit!23292 () Unit!23290)

(assert (=> b!666446 (= e!381629 Unit!23292)))

(declare-fun b!666447 () Bool)

(declare-fun res!433950 () Bool)

(assert (=> b!666447 (=> res!433950 e!381631)))

(assert (=> b!666447 (= res!433950 lt!310450)))

(declare-fun b!666448 () Bool)

(assert (=> b!666448 (= e!381630 (not (contains!3336 acc!681 k!2843)))))

(declare-fun b!666449 () Bool)

(declare-fun res!433958 () Bool)

(assert (=> b!666449 (=> res!433958 e!381631)))

(assert (=> b!666449 (= res!433958 (contains!3336 acc!681 k!2843))))

(declare-fun b!666450 () Bool)

(declare-fun res!433949 () Bool)

(assert (=> b!666450 (=> (not res!433949) (not e!381633))))

(assert (=> b!666450 (= res!433949 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12790))))

(declare-fun b!666451 () Bool)

(declare-fun res!433947 () Bool)

(assert (=> b!666451 (=> res!433947 e!381631)))

(assert (=> b!666451 (= res!433947 (not (contains!3336 lt!310448 k!2843)))))

(declare-fun b!666452 () Bool)

(declare-fun res!433948 () Bool)

(assert (=> b!666452 (=> res!433948 e!381631)))

(assert (=> b!666452 (= res!433948 (not (subseq!74 acc!681 lt!310448)))))

(declare-fun b!666453 () Bool)

(declare-fun res!433963 () Bool)

(assert (=> b!666453 (=> (not res!433963) (not e!381633))))

(assert (=> b!666453 (= res!433963 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19063 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!666454 () Bool)

(declare-fun res!433961 () Bool)

(assert (=> b!666454 (=> (not res!433961) (not e!381633))))

(assert (=> b!666454 (= res!433961 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19063 a!3626))))))

(declare-fun res!433957 () Bool)

(assert (=> start!60018 (=> (not res!433957) (not e!381633))))

(assert (=> start!60018 (= res!433957 (and (bvslt (size!19063 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19063 a!3626))))))

(assert (=> start!60018 e!381633))

(assert (=> start!60018 true))

(declare-fun array_inv!14473 (array!39021) Bool)

(assert (=> start!60018 (array_inv!14473 a!3626)))

(declare-fun b!666438 () Bool)

(declare-fun res!433946 () Bool)

(assert (=> b!666438 (=> (not res!433946) (not e!381633))))

(assert (=> b!666438 (= res!433946 (not (contains!3336 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!666455 () Bool)

(declare-fun Unit!23293 () Unit!23290)

(assert (=> b!666455 (= e!381632 Unit!23293)))

(declare-fun lt!310443 () Unit!23290)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39021 (_ BitVec 64) (_ BitVec 32)) Unit!23290)

(assert (=> b!666455 (= lt!310443 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!666455 false))

(declare-fun b!666456 () Bool)

(declare-fun res!433954 () Bool)

(assert (=> b!666456 (=> (not res!433954) (not e!381633))))

(assert (=> b!666456 (= res!433954 e!381627)))

(declare-fun res!433944 () Bool)

(assert (=> b!666456 (=> res!433944 e!381627)))

(assert (=> b!666456 (= res!433944 e!381628)))

(declare-fun res!433964 () Bool)

(assert (=> b!666456 (=> (not res!433964) (not e!381628))))

(assert (=> b!666456 (= res!433964 (bvsgt from!3004 i!1382))))

(declare-fun b!666457 () Bool)

(declare-fun res!433952 () Bool)

(assert (=> b!666457 (=> (not res!433952) (not e!381633))))

(assert (=> b!666457 (= res!433952 (validKeyInArray!0 k!2843))))

(declare-fun b!666458 () Bool)

(declare-fun Unit!23294 () Unit!23290)

(assert (=> b!666458 (= e!381632 Unit!23294)))

(assert (= (and start!60018 res!433957) b!666443))

(assert (= (and b!666443 res!433960) b!666441))

(assert (= (and b!666441 res!433955) b!666438))

(assert (= (and b!666438 res!433946) b!666456))

(assert (= (and b!666456 res!433964) b!666445))

(assert (= (and b!666456 (not res!433944)) b!666442))

(assert (= (and b!666442 res!433959) b!666448))

(assert (= (and b!666456 res!433954) b!666450))

(assert (= (and b!666450 res!433949) b!666435))

(assert (= (and b!666435 res!433962) b!666454))

(assert (= (and b!666454 res!433961) b!666457))

(assert (= (and b!666457 res!433952) b!666437))

(assert (= (and b!666437 res!433945) b!666453))

(assert (= (and b!666453 res!433963) b!666434))

(assert (= (and b!666434 c!76612) b!666455))

(assert (= (and b!666434 (not c!76612)) b!666458))

(assert (= (and b!666434 c!76613) b!666439))

(assert (= (and b!666434 (not c!76613)) b!666446))

(assert (= (and b!666434 (not res!433951)) b!666440))

(assert (= (and b!666440 (not res!433953)) b!666447))

(assert (= (and b!666447 (not res!433950)) b!666449))

(assert (= (and b!666449 (not res!433958)) b!666452))

(assert (= (and b!666452 (not res!433948)) b!666451))

(assert (= (and b!666451 (not res!433947)) b!666444))

(assert (= (and b!666444 (not res!433956)) b!666436))

(declare-fun m!637251 () Bool)

(assert (=> b!666450 m!637251))

(declare-fun m!637253 () Bool)

(assert (=> b!666434 m!637253))

(declare-fun m!637255 () Bool)

(assert (=> b!666434 m!637255))

(declare-fun m!637257 () Bool)

(assert (=> b!666434 m!637257))

(declare-fun m!637259 () Bool)

(assert (=> b!666434 m!637259))

(declare-fun m!637261 () Bool)

(assert (=> b!666434 m!637261))

(declare-fun m!637263 () Bool)

(assert (=> b!666434 m!637263))

(assert (=> b!666434 m!637255))

(declare-fun m!637265 () Bool)

(assert (=> b!666434 m!637265))

(declare-fun m!637267 () Bool)

(assert (=> b!666434 m!637267))

(declare-fun m!637269 () Bool)

(assert (=> b!666434 m!637269))

(declare-fun m!637271 () Bool)

(assert (=> b!666434 m!637271))

(declare-fun m!637273 () Bool)

(assert (=> b!666434 m!637273))

(declare-fun m!637275 () Bool)

(assert (=> b!666436 m!637275))

(assert (=> b!666439 m!637253))

(assert (=> b!666439 m!637255))

(declare-fun m!637277 () Bool)

(assert (=> b!666439 m!637277))

(declare-fun m!637279 () Bool)

(assert (=> b!666439 m!637279))

(assert (=> b!666439 m!637255))

(assert (=> b!666439 m!637277))

(assert (=> b!666439 m!637259))

(assert (=> b!666439 m!637273))

(declare-fun m!637281 () Bool)

(assert (=> b!666448 m!637281))

(declare-fun m!637283 () Bool)

(assert (=> b!666435 m!637283))

(declare-fun m!637285 () Bool)

(assert (=> b!666451 m!637285))

(declare-fun m!637287 () Bool)

(assert (=> b!666444 m!637287))

(assert (=> b!666445 m!637281))

(declare-fun m!637289 () Bool)

(assert (=> b!666437 m!637289))

(declare-fun m!637291 () Bool)

(assert (=> start!60018 m!637291))

(declare-fun m!637293 () Bool)

(assert (=> b!666457 m!637293))

(declare-fun m!637295 () Bool)

(assert (=> b!666441 m!637295))

(declare-fun m!637297 () Bool)

(assert (=> b!666455 m!637297))

(declare-fun m!637299 () Bool)

(assert (=> b!666440 m!637299))

(assert (=> b!666449 m!637281))

(declare-fun m!637301 () Bool)

(assert (=> b!666438 m!637301))

(declare-fun m!637303 () Bool)

(assert (=> b!666443 m!637303))

(declare-fun m!637305 () Bool)

(assert (=> b!666452 m!637305))

(push 1)

(assert (not b!666450))

(assert (not b!666434))

(assert (not b!666444))

(assert (not b!666457))

(assert (not b!666441))

(assert (not b!666451))

(assert (not b!666438))

(assert (not b!666449))

(assert (not b!666443))

(assert (not b!666445))

(assert (not b!666436))

(assert (not start!60018))

(assert (not b!666455))

(assert (not b!666448))

(assert (not b!666437))

(assert (not b!666435))

(assert (not b!666440))

(assert (not b!666452))

(assert (not b!666439))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

