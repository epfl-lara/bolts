; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!60884 () Bool)

(assert start!60884)

(declare-fun b!682404 () Bool)

(declare-datatypes ((Unit!23937 0))(
  ( (Unit!23938) )
))
(declare-fun e!388819 () Unit!23937)

(declare-fun lt!313525 () Unit!23937)

(assert (=> b!682404 (= e!388819 lt!313525)))

(declare-fun lt!313527 () Unit!23937)

(declare-datatypes ((List!13034 0))(
  ( (Nil!13031) (Cons!13030 (h!14075 (_ BitVec 64)) (t!19285 List!13034)) )
))
(declare-fun acc!681 () List!13034)

(declare-fun lemmaListSubSeqRefl!0 (List!13034) Unit!23937)

(assert (=> b!682404 (= lt!313527 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun subseq!162 (List!13034 List!13034) Bool)

(assert (=> b!682404 (subseq!162 acc!681 acc!681)))

(declare-fun from!3004 () (_ BitVec 32))

(declare-datatypes ((array!39524 0))(
  ( (array!39525 (arr!18940 (Array (_ BitVec 32) (_ BitVec 64))) (size!19304 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39524)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39524 List!13034 List!13034 (_ BitVec 32)) Unit!23937)

(declare-fun $colon$colon!326 (List!13034 (_ BitVec 64)) List!13034)

(assert (=> b!682404 (= lt!313525 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!326 acc!681 (select (arr!18940 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(declare-fun arrayNoDuplicates!0 (array!39524 (_ BitVec 32) List!13034) Bool)

(assert (=> b!682404 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!682405 () Bool)

(declare-fun res!448535 () Bool)

(declare-fun e!388821 () Bool)

(assert (=> b!682405 (=> (not res!448535) (not e!388821))))

(declare-fun contains!3577 (List!13034 (_ BitVec 64)) Bool)

(assert (=> b!682405 (= res!448535 (not (contains!3577 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!682406 () Bool)

(declare-fun Unit!23939 () Unit!23937)

(assert (=> b!682406 (= e!388819 Unit!23939)))

(declare-fun b!682407 () Bool)

(declare-fun res!448537 () Bool)

(assert (=> b!682407 (=> (not res!448537) (not e!388821))))

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!39524 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!682407 (= res!448537 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!682408 () Bool)

(declare-fun e!388824 () Unit!23937)

(declare-fun Unit!23940 () Unit!23937)

(assert (=> b!682408 (= e!388824 Unit!23940)))

(declare-fun lt!313524 () Unit!23937)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39524 (_ BitVec 64) (_ BitVec 32)) Unit!23937)

(assert (=> b!682408 (= lt!313524 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004))))

(assert (=> b!682408 false))

(declare-fun b!682409 () Bool)

(declare-fun res!448545 () Bool)

(assert (=> b!682409 (=> (not res!448545) (not e!388821))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!682409 (= res!448545 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19304 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!682410 () Bool)

(declare-fun res!448547 () Bool)

(assert (=> b!682410 (=> (not res!448547) (not e!388821))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!682410 (= res!448547 (validKeyInArray!0 k0!2843))))

(declare-fun b!682411 () Bool)

(declare-fun Unit!23941 () Unit!23937)

(assert (=> b!682411 (= e!388824 Unit!23941)))

(declare-fun b!682412 () Bool)

(declare-fun res!448539 () Bool)

(assert (=> b!682412 (=> (not res!448539) (not e!388821))))

(declare-fun noDuplicate!824 (List!13034) Bool)

(assert (=> b!682412 (= res!448539 (noDuplicate!824 acc!681))))

(declare-fun b!682413 () Bool)

(declare-fun e!388825 () Bool)

(assert (=> b!682413 (= e!388825 (contains!3577 acc!681 k0!2843))))

(declare-fun b!682414 () Bool)

(assert (=> b!682414 (= e!388821 (not true))))

(declare-fun -!127 (List!13034 (_ BitVec 64)) List!13034)

(assert (=> b!682414 (= (-!127 ($colon$colon!326 acc!681 k0!2843) k0!2843) acc!681)))

(declare-fun lt!313526 () Unit!23937)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!13034) Unit!23937)

(assert (=> b!682414 (= lt!313526 (lemmaLMinusHeadEqualsTail!0 k0!2843 acc!681))))

(assert (=> b!682414 (subseq!162 acc!681 acc!681)))

(declare-fun lt!313530 () Unit!23937)

(assert (=> b!682414 (= lt!313530 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!682414 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!313529 () Unit!23937)

(assert (=> b!682414 (= lt!313529 e!388819)))

(declare-fun c!77303 () Bool)

(assert (=> b!682414 (= c!77303 (validKeyInArray!0 (select (arr!18940 a!3626) from!3004)))))

(declare-fun lt!313528 () Unit!23937)

(assert (=> b!682414 (= lt!313528 e!388824)))

(declare-fun c!77302 () Bool)

(assert (=> b!682414 (= c!77302 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!682414 (arrayContainsKey!0 (array!39525 (store (arr!18940 a!3626) i!1382 k0!2843) (size!19304 a!3626)) k0!2843 from!3004)))

(declare-fun b!682415 () Bool)

(declare-fun e!388822 () Bool)

(declare-fun e!388823 () Bool)

(assert (=> b!682415 (= e!388822 e!388823)))

(declare-fun res!448541 () Bool)

(assert (=> b!682415 (=> (not res!448541) (not e!388823))))

(assert (=> b!682415 (= res!448541 (bvsle from!3004 i!1382))))

(declare-fun b!682416 () Bool)

(declare-fun res!448542 () Bool)

(assert (=> b!682416 (=> (not res!448542) (not e!388821))))

(assert (=> b!682416 (= res!448542 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!682417 () Bool)

(declare-fun res!448544 () Bool)

(assert (=> b!682417 (=> (not res!448544) (not e!388821))))

(assert (=> b!682417 (= res!448544 (not (contains!3577 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!682419 () Bool)

(declare-fun res!448534 () Bool)

(assert (=> b!682419 (=> (not res!448534) (not e!388821))))

(assert (=> b!682419 (= res!448534 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13031))))

(declare-fun b!682418 () Bool)

(declare-fun res!448540 () Bool)

(assert (=> b!682418 (=> (not res!448540) (not e!388821))))

(assert (=> b!682418 (= res!448540 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19304 a!3626))))))

(declare-fun res!448538 () Bool)

(assert (=> start!60884 (=> (not res!448538) (not e!388821))))

(assert (=> start!60884 (= res!448538 (and (bvslt (size!19304 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19304 a!3626))))))

(assert (=> start!60884 e!388821))

(assert (=> start!60884 true))

(declare-fun array_inv!14714 (array!39524) Bool)

(assert (=> start!60884 (array_inv!14714 a!3626)))

(declare-fun b!682420 () Bool)

(assert (=> b!682420 (= e!388823 (not (contains!3577 acc!681 k0!2843)))))

(declare-fun b!682421 () Bool)

(declare-fun res!448543 () Bool)

(assert (=> b!682421 (=> (not res!448543) (not e!388821))))

(assert (=> b!682421 (= res!448543 e!388822)))

(declare-fun res!448546 () Bool)

(assert (=> b!682421 (=> res!448546 e!388822)))

(assert (=> b!682421 (= res!448546 e!388825)))

(declare-fun res!448536 () Bool)

(assert (=> b!682421 (=> (not res!448536) (not e!388825))))

(assert (=> b!682421 (= res!448536 (bvsgt from!3004 i!1382))))

(assert (= (and start!60884 res!448538) b!682412))

(assert (= (and b!682412 res!448539) b!682405))

(assert (= (and b!682405 res!448535) b!682417))

(assert (= (and b!682417 res!448544) b!682421))

(assert (= (and b!682421 res!448536) b!682413))

(assert (= (and b!682421 (not res!448546)) b!682415))

(assert (= (and b!682415 res!448541) b!682420))

(assert (= (and b!682421 res!448543) b!682419))

(assert (= (and b!682419 res!448534) b!682416))

(assert (= (and b!682416 res!448542) b!682418))

(assert (= (and b!682418 res!448540) b!682410))

(assert (= (and b!682410 res!448547) b!682407))

(assert (= (and b!682407 res!448537) b!682409))

(assert (= (and b!682409 res!448545) b!682414))

(assert (= (and b!682414 c!77302) b!682408))

(assert (= (and b!682414 (not c!77302)) b!682411))

(assert (= (and b!682414 c!77303) b!682404))

(assert (= (and b!682414 (not c!77303)) b!682406))

(declare-fun m!647137 () Bool)

(assert (=> b!682416 m!647137))

(declare-fun m!647139 () Bool)

(assert (=> b!682413 m!647139))

(declare-fun m!647141 () Bool)

(assert (=> b!682404 m!647141))

(declare-fun m!647143 () Bool)

(assert (=> b!682404 m!647143))

(declare-fun m!647145 () Bool)

(assert (=> b!682404 m!647145))

(declare-fun m!647147 () Bool)

(assert (=> b!682404 m!647147))

(assert (=> b!682404 m!647143))

(assert (=> b!682404 m!647145))

(declare-fun m!647149 () Bool)

(assert (=> b!682404 m!647149))

(declare-fun m!647151 () Bool)

(assert (=> b!682404 m!647151))

(declare-fun m!647153 () Bool)

(assert (=> b!682408 m!647153))

(declare-fun m!647155 () Bool)

(assert (=> start!60884 m!647155))

(declare-fun m!647157 () Bool)

(assert (=> b!682410 m!647157))

(declare-fun m!647159 () Bool)

(assert (=> b!682419 m!647159))

(declare-fun m!647161 () Bool)

(assert (=> b!682412 m!647161))

(declare-fun m!647163 () Bool)

(assert (=> b!682414 m!647163))

(declare-fun m!647165 () Bool)

(assert (=> b!682414 m!647165))

(assert (=> b!682414 m!647141))

(assert (=> b!682414 m!647143))

(declare-fun m!647167 () Bool)

(assert (=> b!682414 m!647167))

(declare-fun m!647169 () Bool)

(assert (=> b!682414 m!647169))

(assert (=> b!682414 m!647149))

(declare-fun m!647171 () Bool)

(assert (=> b!682414 m!647171))

(assert (=> b!682414 m!647163))

(assert (=> b!682414 m!647143))

(declare-fun m!647173 () Bool)

(assert (=> b!682414 m!647173))

(declare-fun m!647175 () Bool)

(assert (=> b!682414 m!647175))

(assert (=> b!682414 m!647151))

(declare-fun m!647177 () Bool)

(assert (=> b!682407 m!647177))

(declare-fun m!647179 () Bool)

(assert (=> b!682417 m!647179))

(assert (=> b!682420 m!647139))

(declare-fun m!647181 () Bool)

(assert (=> b!682405 m!647181))

(check-sat (not b!682405) (not b!682414) (not b!682412) (not b!682419) (not b!682420) (not start!60884) (not b!682404) (not b!682413) (not b!682408) (not b!682407) (not b!682417) (not b!682410) (not b!682416))
