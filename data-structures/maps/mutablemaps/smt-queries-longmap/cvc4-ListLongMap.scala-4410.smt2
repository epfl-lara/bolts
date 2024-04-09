; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60892 () Bool)

(assert start!60892)

(declare-fun b!682620 () Bool)

(declare-fun res!448715 () Bool)

(declare-fun e!388904 () Bool)

(assert (=> b!682620 (=> (not res!448715) (not e!388904))))

(declare-datatypes ((array!39532 0))(
  ( (array!39533 (arr!18944 (Array (_ BitVec 32) (_ BitVec 64))) (size!19308 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39532)

(declare-datatypes ((List!13038 0))(
  ( (Nil!13035) (Cons!13034 (h!14079 (_ BitVec 64)) (t!19289 List!13038)) )
))
(declare-fun arrayNoDuplicates!0 (array!39532 (_ BitVec 32) List!13038) Bool)

(assert (=> b!682620 (= res!448715 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13035))))

(declare-fun b!682621 () Bool)

(declare-fun res!448703 () Bool)

(assert (=> b!682621 (=> (not res!448703) (not e!388904))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!682621 (= res!448703 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19308 a!3626))))))

(declare-fun b!682622 () Bool)

(declare-fun res!448710 () Bool)

(assert (=> b!682622 (=> (not res!448710) (not e!388904))))

(declare-fun acc!681 () List!13038)

(declare-fun noDuplicate!828 (List!13038) Bool)

(assert (=> b!682622 (= res!448710 (noDuplicate!828 acc!681))))

(declare-fun b!682623 () Bool)

(declare-datatypes ((Unit!23957 0))(
  ( (Unit!23958) )
))
(declare-fun e!388906 () Unit!23957)

(declare-fun Unit!23959 () Unit!23957)

(assert (=> b!682623 (= e!388906 Unit!23959)))

(declare-fun b!682624 () Bool)

(declare-fun res!448708 () Bool)

(assert (=> b!682624 (=> (not res!448708) (not e!388904))))

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!682624 (= res!448708 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!682625 () Bool)

(declare-fun e!388905 () Bool)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3581 (List!13038 (_ BitVec 64)) Bool)

(assert (=> b!682625 (= e!388905 (not (contains!3581 acc!681 k!2843)))))

(declare-fun b!682626 () Bool)

(declare-fun e!388908 () Unit!23957)

(declare-fun Unit!23960 () Unit!23957)

(assert (=> b!682626 (= e!388908 Unit!23960)))

(declare-fun b!682627 () Bool)

(assert (=> b!682627 (= e!388904 (not (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000)))))

(declare-fun -!131 (List!13038 (_ BitVec 64)) List!13038)

(declare-fun $colon$colon!330 (List!13038 (_ BitVec 64)) List!13038)

(assert (=> b!682627 (= (-!131 ($colon$colon!330 acc!681 k!2843) k!2843) acc!681)))

(declare-fun lt!313610 () Unit!23957)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!13038) Unit!23957)

(assert (=> b!682627 (= lt!313610 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(declare-fun subseq!166 (List!13038 List!13038) Bool)

(assert (=> b!682627 (subseq!166 acc!681 acc!681)))

(declare-fun lt!313611 () Unit!23957)

(declare-fun lemmaListSubSeqRefl!0 (List!13038) Unit!23957)

(assert (=> b!682627 (= lt!313611 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!682627 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!313612 () Unit!23957)

(assert (=> b!682627 (= lt!313612 e!388906)))

(declare-fun c!77327 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!682627 (= c!77327 (validKeyInArray!0 (select (arr!18944 a!3626) from!3004)))))

(declare-fun lt!313609 () Unit!23957)

(assert (=> b!682627 (= lt!313609 e!388908)))

(declare-fun c!77326 () Bool)

(declare-fun arrayContainsKey!0 (array!39532 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!682627 (= c!77326 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!682627 (arrayContainsKey!0 (array!39533 (store (arr!18944 a!3626) i!1382 k!2843) (size!19308 a!3626)) k!2843 from!3004)))

(declare-fun b!682628 () Bool)

(declare-fun e!388907 () Bool)

(assert (=> b!682628 (= e!388907 (contains!3581 acc!681 k!2843))))

(declare-fun b!682630 () Bool)

(declare-fun Unit!23961 () Unit!23957)

(assert (=> b!682630 (= e!388908 Unit!23961)))

(declare-fun lt!313614 () Unit!23957)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39532 (_ BitVec 64) (_ BitVec 32)) Unit!23957)

(assert (=> b!682630 (= lt!313614 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!682630 false))

(declare-fun b!682631 () Bool)

(declare-fun res!448706 () Bool)

(assert (=> b!682631 (=> (not res!448706) (not e!388904))))

(declare-fun e!388903 () Bool)

(assert (=> b!682631 (= res!448706 e!388903)))

(declare-fun res!448714 () Bool)

(assert (=> b!682631 (=> res!448714 e!388903)))

(assert (=> b!682631 (= res!448714 e!388907)))

(declare-fun res!448709 () Bool)

(assert (=> b!682631 (=> (not res!448709) (not e!388907))))

(assert (=> b!682631 (= res!448709 (bvsgt from!3004 i!1382))))

(declare-fun b!682632 () Bool)

(declare-fun lt!313608 () Unit!23957)

(assert (=> b!682632 (= e!388906 lt!313608)))

(declare-fun lt!313613 () Unit!23957)

(assert (=> b!682632 (= lt!313613 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!682632 (subseq!166 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39532 List!13038 List!13038 (_ BitVec 32)) Unit!23957)

(assert (=> b!682632 (= lt!313608 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!330 acc!681 (select (arr!18944 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!682632 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!682633 () Bool)

(declare-fun res!448711 () Bool)

(assert (=> b!682633 (=> (not res!448711) (not e!388904))))

(assert (=> b!682633 (= res!448711 (not (contains!3581 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!682634 () Bool)

(declare-fun res!448713 () Bool)

(assert (=> b!682634 (=> (not res!448713) (not e!388904))))

(assert (=> b!682634 (= res!448713 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19308 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!682635 () Bool)

(declare-fun res!448712 () Bool)

(assert (=> b!682635 (=> (not res!448712) (not e!388904))))

(assert (=> b!682635 (= res!448712 (not (contains!3581 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!682636 () Bool)

(declare-fun res!448704 () Bool)

(assert (=> b!682636 (=> (not res!448704) (not e!388904))))

(assert (=> b!682636 (= res!448704 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!682637 () Bool)

(declare-fun res!448705 () Bool)

(assert (=> b!682637 (=> (not res!448705) (not e!388904))))

(assert (=> b!682637 (= res!448705 (validKeyInArray!0 k!2843))))

(declare-fun b!682629 () Bool)

(assert (=> b!682629 (= e!388903 e!388905)))

(declare-fun res!448702 () Bool)

(assert (=> b!682629 (=> (not res!448702) (not e!388905))))

(assert (=> b!682629 (= res!448702 (bvsle from!3004 i!1382))))

(declare-fun res!448707 () Bool)

(assert (=> start!60892 (=> (not res!448707) (not e!388904))))

(assert (=> start!60892 (= res!448707 (and (bvslt (size!19308 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19308 a!3626))))))

(assert (=> start!60892 e!388904))

(assert (=> start!60892 true))

(declare-fun array_inv!14718 (array!39532) Bool)

(assert (=> start!60892 (array_inv!14718 a!3626)))

(assert (= (and start!60892 res!448707) b!682622))

(assert (= (and b!682622 res!448710) b!682635))

(assert (= (and b!682635 res!448712) b!682633))

(assert (= (and b!682633 res!448711) b!682631))

(assert (= (and b!682631 res!448709) b!682628))

(assert (= (and b!682631 (not res!448714)) b!682629))

(assert (= (and b!682629 res!448702) b!682625))

(assert (= (and b!682631 res!448706) b!682620))

(assert (= (and b!682620 res!448715) b!682624))

(assert (= (and b!682624 res!448708) b!682621))

(assert (= (and b!682621 res!448703) b!682637))

(assert (= (and b!682637 res!448705) b!682636))

(assert (= (and b!682636 res!448704) b!682634))

(assert (= (and b!682634 res!448713) b!682627))

(assert (= (and b!682627 c!77326) b!682630))

(assert (= (and b!682627 (not c!77326)) b!682626))

(assert (= (and b!682627 c!77327) b!682632))

(assert (= (and b!682627 (not c!77327)) b!682623))

(declare-fun m!647321 () Bool)

(assert (=> b!682625 m!647321))

(declare-fun m!647323 () Bool)

(assert (=> b!682624 m!647323))

(declare-fun m!647325 () Bool)

(assert (=> b!682622 m!647325))

(declare-fun m!647327 () Bool)

(assert (=> b!682637 m!647327))

(assert (=> b!682628 m!647321))

(declare-fun m!647329 () Bool)

(assert (=> b!682630 m!647329))

(declare-fun m!647331 () Bool)

(assert (=> b!682627 m!647331))

(declare-fun m!647333 () Bool)

(assert (=> b!682627 m!647333))

(declare-fun m!647335 () Bool)

(assert (=> b!682627 m!647335))

(declare-fun m!647337 () Bool)

(assert (=> b!682627 m!647337))

(declare-fun m!647339 () Bool)

(assert (=> b!682627 m!647339))

(declare-fun m!647341 () Bool)

(assert (=> b!682627 m!647341))

(declare-fun m!647343 () Bool)

(assert (=> b!682627 m!647343))

(declare-fun m!647345 () Bool)

(assert (=> b!682627 m!647345))

(assert (=> b!682627 m!647331))

(assert (=> b!682627 m!647337))

(declare-fun m!647347 () Bool)

(assert (=> b!682627 m!647347))

(declare-fun m!647349 () Bool)

(assert (=> b!682627 m!647349))

(declare-fun m!647351 () Bool)

(assert (=> b!682627 m!647351))

(declare-fun m!647353 () Bool)

(assert (=> b!682635 m!647353))

(declare-fun m!647355 () Bool)

(assert (=> start!60892 m!647355))

(declare-fun m!647357 () Bool)

(assert (=> b!682620 m!647357))

(declare-fun m!647359 () Bool)

(assert (=> b!682633 m!647359))

(declare-fun m!647361 () Bool)

(assert (=> b!682636 m!647361))

(assert (=> b!682632 m!647335))

(assert (=> b!682632 m!647337))

(declare-fun m!647363 () Bool)

(assert (=> b!682632 m!647363))

(declare-fun m!647365 () Bool)

(assert (=> b!682632 m!647365))

(assert (=> b!682632 m!647337))

(assert (=> b!682632 m!647363))

(assert (=> b!682632 m!647343))

(assert (=> b!682632 m!647351))

(push 1)

