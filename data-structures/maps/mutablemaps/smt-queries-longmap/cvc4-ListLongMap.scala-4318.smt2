; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59956 () Bool)

(assert start!59956)

(declare-fun b!664109 () Bool)

(declare-fun res!432003 () Bool)

(declare-fun e!380884 () Bool)

(assert (=> b!664109 (=> (not res!432003) (not e!380884))))

(declare-fun i!1382 () (_ BitVec 32))

(declare-datatypes ((array!38959 0))(
  ( (array!38960 (arr!18668 (Array (_ BitVec 32) (_ BitVec 64))) (size!19032 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38959)

(assert (=> b!664109 (= res!432003 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19032 a!3626))))))

(declare-fun b!664111 () Bool)

(declare-fun res!431999 () Bool)

(assert (=> b!664111 (=> (not res!431999) (not e!380884))))

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!664111 (= res!431999 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19032 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!664112 () Bool)

(declare-fun res!431995 () Bool)

(assert (=> b!664112 (=> (not res!431995) (not e!380884))))

(declare-datatypes ((List!12762 0))(
  ( (Nil!12759) (Cons!12758 (h!13803 (_ BitVec 64)) (t!18998 List!12762)) )
))
(declare-fun acc!681 () List!12762)

(declare-fun arrayNoDuplicates!0 (array!38959 (_ BitVec 32) List!12762) Bool)

(assert (=> b!664112 (= res!431995 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!664113 () Bool)

(declare-fun res!432002 () Bool)

(declare-fun e!380887 () Bool)

(assert (=> b!664113 (=> res!432002 e!380887)))

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3305 (List!12762 (_ BitVec 64)) Bool)

(assert (=> b!664113 (= res!432002 (contains!3305 acc!681 k!2843))))

(declare-fun b!664114 () Bool)

(declare-fun e!380883 () Bool)

(assert (=> b!664114 (= e!380883 (not (contains!3305 acc!681 k!2843)))))

(declare-fun b!664115 () Bool)

(declare-fun res!432000 () Bool)

(assert (=> b!664115 (=> (not res!432000) (not e!380884))))

(declare-fun noDuplicate!552 (List!12762) Bool)

(assert (=> b!664115 (= res!432000 (noDuplicate!552 acc!681))))

(declare-fun b!664116 () Bool)

(declare-datatypes ((Unit!23135 0))(
  ( (Unit!23136) )
))
(declare-fun e!380885 () Unit!23135)

(declare-fun Unit!23137 () Unit!23135)

(assert (=> b!664116 (= e!380885 Unit!23137)))

(declare-fun lt!309522 () Unit!23135)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38959 (_ BitVec 64) (_ BitVec 32)) Unit!23135)

(assert (=> b!664116 (= lt!309522 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!664116 false))

(declare-fun res!432010 () Bool)

(assert (=> start!59956 (=> (not res!432010) (not e!380884))))

(assert (=> start!59956 (= res!432010 (and (bvslt (size!19032 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19032 a!3626))))))

(assert (=> start!59956 e!380884))

(assert (=> start!59956 true))

(declare-fun array_inv!14442 (array!38959) Bool)

(assert (=> start!59956 (array_inv!14442 a!3626)))

(declare-fun b!664110 () Bool)

(declare-fun res!432005 () Bool)

(assert (=> b!664110 (=> (not res!432005) (not e!380884))))

(declare-fun e!380889 () Bool)

(assert (=> b!664110 (= res!432005 e!380889)))

(declare-fun res!432009 () Bool)

(assert (=> b!664110 (=> res!432009 e!380889)))

(declare-fun e!380886 () Bool)

(assert (=> b!664110 (= res!432009 e!380886)))

(declare-fun res!431997 () Bool)

(assert (=> b!664110 (=> (not res!431997) (not e!380886))))

(assert (=> b!664110 (= res!431997 (bvsgt from!3004 i!1382))))

(declare-fun b!664117 () Bool)

(declare-fun res!431998 () Bool)

(assert (=> b!664117 (=> res!431998 e!380887)))

(declare-fun lt!309518 () List!12762)

(assert (=> b!664117 (= res!431998 (not (noDuplicate!552 lt!309518)))))

(declare-fun b!664118 () Bool)

(assert (=> b!664118 (= e!380884 (not e!380887))))

(declare-fun res!431992 () Bool)

(assert (=> b!664118 (=> res!431992 e!380887)))

(assert (=> b!664118 (= res!431992 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun -!41 (List!12762 (_ BitVec 64)) List!12762)

(assert (=> b!664118 (= (-!41 lt!309518 k!2843) acc!681)))

(declare-fun $colon$colon!174 (List!12762 (_ BitVec 64)) List!12762)

(assert (=> b!664118 (= lt!309518 ($colon$colon!174 acc!681 k!2843))))

(declare-fun lt!309516 () Unit!23135)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!12762) Unit!23135)

(assert (=> b!664118 (= lt!309516 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(declare-fun subseq!43 (List!12762 List!12762) Bool)

(assert (=> b!664118 (subseq!43 acc!681 acc!681)))

(declare-fun lt!309520 () Unit!23135)

(declare-fun lemmaListSubSeqRefl!0 (List!12762) Unit!23135)

(assert (=> b!664118 (= lt!309520 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!664118 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!309515 () Unit!23135)

(declare-fun e!380888 () Unit!23135)

(assert (=> b!664118 (= lt!309515 e!380888)))

(declare-fun c!76426 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!664118 (= c!76426 (validKeyInArray!0 (select (arr!18668 a!3626) from!3004)))))

(declare-fun lt!309514 () Unit!23135)

(assert (=> b!664118 (= lt!309514 e!380885)))

(declare-fun c!76427 () Bool)

(declare-fun lt!309521 () Bool)

(assert (=> b!664118 (= c!76427 lt!309521)))

(declare-fun arrayContainsKey!0 (array!38959 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!664118 (= lt!309521 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!664118 (arrayContainsKey!0 (array!38960 (store (arr!18668 a!3626) i!1382 k!2843) (size!19032 a!3626)) k!2843 from!3004)))

(declare-fun b!664119 () Bool)

(declare-fun lt!309513 () Unit!23135)

(assert (=> b!664119 (= e!380888 lt!309513)))

(declare-fun lt!309517 () Unit!23135)

(assert (=> b!664119 (= lt!309517 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!664119 (subseq!43 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!38959 List!12762 List!12762 (_ BitVec 32)) Unit!23135)

(assert (=> b!664119 (= lt!309513 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!174 acc!681 (select (arr!18668 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!664119 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!664120 () Bool)

(declare-fun Unit!23138 () Unit!23135)

(assert (=> b!664120 (= e!380885 Unit!23138)))

(declare-fun b!664121 () Bool)

(assert (=> b!664121 (= e!380889 e!380883)))

(declare-fun res!431991 () Bool)

(assert (=> b!664121 (=> (not res!431991) (not e!380883))))

(assert (=> b!664121 (= res!431991 (bvsle from!3004 i!1382))))

(declare-fun b!664122 () Bool)

(declare-fun res!432011 () Bool)

(assert (=> b!664122 (=> res!432011 e!380887)))

(assert (=> b!664122 (= res!432011 (contains!3305 lt!309518 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!664123 () Bool)

(assert (=> b!664123 (= e!380886 (contains!3305 acc!681 k!2843))))

(declare-fun b!664124 () Bool)

(declare-fun res!432004 () Bool)

(assert (=> b!664124 (=> (not res!432004) (not e!380884))))

(assert (=> b!664124 (= res!432004 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!664125 () Bool)

(declare-fun res!431994 () Bool)

(assert (=> b!664125 (=> res!431994 e!380887)))

(assert (=> b!664125 (= res!431994 (not (contains!3305 lt!309518 k!2843)))))

(declare-fun b!664126 () Bool)

(declare-fun res!432006 () Bool)

(assert (=> b!664126 (=> (not res!432006) (not e!380884))))

(assert (=> b!664126 (= res!432006 (not (contains!3305 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!664127 () Bool)

(declare-fun res!431993 () Bool)

(assert (=> b!664127 (=> res!431993 e!380887)))

(assert (=> b!664127 (= res!431993 lt!309521)))

(declare-fun b!664128 () Bool)

(declare-fun res!432008 () Bool)

(assert (=> b!664128 (=> (not res!432008) (not e!380884))))

(assert (=> b!664128 (= res!432008 (validKeyInArray!0 k!2843))))

(declare-fun b!664129 () Bool)

(declare-fun res!432007 () Bool)

(assert (=> b!664129 (=> (not res!432007) (not e!380884))))

(assert (=> b!664129 (= res!432007 (not (contains!3305 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!664130 () Bool)

(declare-fun res!431996 () Bool)

(assert (=> b!664130 (=> (not res!431996) (not e!380884))))

(assert (=> b!664130 (= res!431996 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12759))))

(declare-fun b!664131 () Bool)

(declare-fun Unit!23139 () Unit!23135)

(assert (=> b!664131 (= e!380888 Unit!23139)))

(declare-fun b!664132 () Bool)

(assert (=> b!664132 (= e!380887 true)))

(declare-fun lt!309519 () Bool)

(assert (=> b!664132 (= lt!309519 (contains!3305 lt!309518 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!664133 () Bool)

(declare-fun res!432001 () Bool)

(assert (=> b!664133 (=> res!432001 e!380887)))

(assert (=> b!664133 (= res!432001 (not (subseq!43 acc!681 lt!309518)))))

(assert (= (and start!59956 res!432010) b!664115))

(assert (= (and b!664115 res!432000) b!664126))

(assert (= (and b!664126 res!432006) b!664129))

(assert (= (and b!664129 res!432007) b!664110))

(assert (= (and b!664110 res!431997) b!664123))

(assert (= (and b!664110 (not res!432009)) b!664121))

(assert (= (and b!664121 res!431991) b!664114))

(assert (= (and b!664110 res!432005) b!664130))

(assert (= (and b!664130 res!431996) b!664112))

(assert (= (and b!664112 res!431995) b!664109))

(assert (= (and b!664109 res!432003) b!664128))

(assert (= (and b!664128 res!432008) b!664124))

(assert (= (and b!664124 res!432004) b!664111))

(assert (= (and b!664111 res!431999) b!664118))

(assert (= (and b!664118 c!76427) b!664116))

(assert (= (and b!664118 (not c!76427)) b!664120))

(assert (= (and b!664118 c!76426) b!664119))

(assert (= (and b!664118 (not c!76426)) b!664131))

(assert (= (and b!664118 (not res!431992)) b!664117))

(assert (= (and b!664117 (not res!431998)) b!664127))

(assert (= (and b!664127 (not res!431993)) b!664113))

(assert (= (and b!664113 (not res!432002)) b!664133))

(assert (= (and b!664133 (not res!432001)) b!664125))

(assert (= (and b!664125 (not res!431994)) b!664122))

(assert (= (and b!664122 (not res!432011)) b!664132))

(declare-fun m!635515 () Bool)

(assert (=> start!59956 m!635515))

(declare-fun m!635517 () Bool)

(assert (=> b!664124 m!635517))

(declare-fun m!635519 () Bool)

(assert (=> b!664130 m!635519))

(declare-fun m!635521 () Bool)

(assert (=> b!664118 m!635521))

(declare-fun m!635523 () Bool)

(assert (=> b!664118 m!635523))

(declare-fun m!635525 () Bool)

(assert (=> b!664118 m!635525))

(declare-fun m!635527 () Bool)

(assert (=> b!664118 m!635527))

(declare-fun m!635529 () Bool)

(assert (=> b!664118 m!635529))

(declare-fun m!635531 () Bool)

(assert (=> b!664118 m!635531))

(declare-fun m!635533 () Bool)

(assert (=> b!664118 m!635533))

(declare-fun m!635535 () Bool)

(assert (=> b!664118 m!635535))

(assert (=> b!664118 m!635523))

(declare-fun m!635537 () Bool)

(assert (=> b!664118 m!635537))

(declare-fun m!635539 () Bool)

(assert (=> b!664118 m!635539))

(declare-fun m!635541 () Bool)

(assert (=> b!664118 m!635541))

(declare-fun m!635543 () Bool)

(assert (=> b!664132 m!635543))

(declare-fun m!635545 () Bool)

(assert (=> b!664133 m!635545))

(assert (=> b!664119 m!635521))

(assert (=> b!664119 m!635523))

(declare-fun m!635547 () Bool)

(assert (=> b!664119 m!635547))

(declare-fun m!635549 () Bool)

(assert (=> b!664119 m!635549))

(assert (=> b!664119 m!635523))

(assert (=> b!664119 m!635547))

(assert (=> b!664119 m!635529))

(assert (=> b!664119 m!635541))

(declare-fun m!635551 () Bool)

(assert (=> b!664117 m!635551))

(declare-fun m!635553 () Bool)

(assert (=> b!664122 m!635553))

(declare-fun m!635555 () Bool)

(assert (=> b!664115 m!635555))

(declare-fun m!635557 () Bool)

(assert (=> b!664128 m!635557))

(declare-fun m!635559 () Bool)

(assert (=> b!664112 m!635559))

(declare-fun m!635561 () Bool)

(assert (=> b!664116 m!635561))

(declare-fun m!635563 () Bool)

(assert (=> b!664125 m!635563))

(declare-fun m!635565 () Bool)

(assert (=> b!664113 m!635565))

(declare-fun m!635567 () Bool)

(assert (=> b!664126 m!635567))

(assert (=> b!664123 m!635565))

(assert (=> b!664114 m!635565))

(declare-fun m!635569 () Bool)

(assert (=> b!664129 m!635569))

(push 1)

(assert (not b!664125))

(assert (not b!664126))

(assert (not b!664117))

(assert (not start!59956))

(assert (not b!664129))

(assert (not b!664128))

(assert (not b!664116))

(assert (not b!664115))

(assert (not b!664122))

(assert (not b!664123))

(assert (not b!664132))

(assert (not b!664112))

(assert (not b!664118))

(assert (not b!664119))

(assert (not b!664124))

(assert (not b!664133))

(assert (not b!664130))

(assert (not b!664114))

(assert (not b!664113))

(check-sat)

