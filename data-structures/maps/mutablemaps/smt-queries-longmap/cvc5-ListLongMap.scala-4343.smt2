; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60102 () Bool)

(assert start!60102)

(declare-fun res!436599 () Bool)

(declare-fun e!382947 () Bool)

(assert (=> start!60102 (=> (not res!436599) (not e!382947))))

(declare-datatypes ((array!39105 0))(
  ( (array!39106 (arr!18741 (Array (_ BitVec 32) (_ BitVec 64))) (size!19105 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39105)

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> start!60102 (= res!436599 (and (bvslt (size!19105 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19105 a!3626))))))

(assert (=> start!60102 e!382947))

(assert (=> start!60102 true))

(declare-fun array_inv!14515 (array!39105) Bool)

(assert (=> start!60102 (array_inv!14515 a!3626)))

(declare-fun b!669586 () Bool)

(declare-fun res!436606 () Bool)

(declare-fun e!382941 () Bool)

(assert (=> b!669586 (=> res!436606 e!382941)))

(declare-datatypes ((List!12835 0))(
  ( (Nil!12832) (Cons!12831 (h!13876 (_ BitVec 64)) (t!19071 List!12835)) )
))
(declare-fun lt!311712 () List!12835)

(declare-fun contains!3378 (List!12835 (_ BitVec 64)) Bool)

(assert (=> b!669586 (= res!436606 (contains!3378 lt!311712 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!669587 () Bool)

(declare-fun e!382946 () Bool)

(declare-fun acc!681 () List!12835)

(declare-fun k!2843 () (_ BitVec 64))

(assert (=> b!669587 (= e!382946 (contains!3378 acc!681 k!2843))))

(declare-fun b!669588 () Bool)

(declare-fun e!382940 () Bool)

(assert (=> b!669588 (= e!382940 (contains!3378 lt!311712 k!2843))))

(declare-fun b!669589 () Bool)

(declare-fun res!436610 () Bool)

(assert (=> b!669589 (=> (not res!436610) (not e!382947))))

(declare-fun arrayNoDuplicates!0 (array!39105 (_ BitVec 32) List!12835) Bool)

(assert (=> b!669589 (= res!436610 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!669590 () Bool)

(declare-fun res!436598 () Bool)

(assert (=> b!669590 (=> (not res!436598) (not e!382947))))

(assert (=> b!669590 (= res!436598 (not (contains!3378 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!669591 () Bool)

(assert (=> b!669591 (= e!382941 (bvsle from!3004 (size!19105 a!3626)))))

(declare-fun lt!311713 () array!39105)

(assert (=> b!669591 (arrayNoDuplicates!0 lt!311713 (bvadd #b00000000000000000000000000000001 from!3004) lt!311712)))

(declare-datatypes ((Unit!23500 0))(
  ( (Unit!23501) )
))
(declare-fun lt!311708 () Unit!23500)

(declare-fun i!1382 () (_ BitVec 32))

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!39105 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12835) Unit!23500)

(assert (=> b!669591 (= lt!311708 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3626 k!2843 i!1382 (bvadd #b00000000000000000000000000000001 from!3004) lt!311712))))

(declare-fun b!669592 () Bool)

(declare-fun e!382948 () Unit!23500)

(declare-fun Unit!23502 () Unit!23500)

(assert (=> b!669592 (= e!382948 Unit!23502)))

(declare-fun b!669593 () Bool)

(declare-fun res!436600 () Bool)

(assert (=> b!669593 (=> (not res!436600) (not e!382947))))

(assert (=> b!669593 (= res!436600 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19105 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!669594 () Bool)

(declare-fun res!436596 () Bool)

(assert (=> b!669594 (=> (not res!436596) (not e!382947))))

(assert (=> b!669594 (= res!436596 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19105 a!3626))))))

(declare-fun b!669595 () Bool)

(declare-fun e!382943 () Bool)

(declare-fun e!382944 () Bool)

(assert (=> b!669595 (= e!382943 e!382944)))

(declare-fun res!436603 () Bool)

(assert (=> b!669595 (=> (not res!436603) (not e!382944))))

(assert (=> b!669595 (= res!436603 (bvsle from!3004 i!1382))))

(declare-fun b!669596 () Bool)

(declare-fun e!382939 () Bool)

(assert (=> b!669596 (= e!382939 (not (contains!3378 lt!311712 k!2843)))))

(declare-fun b!669597 () Bool)

(declare-fun res!436592 () Bool)

(assert (=> b!669597 (=> (not res!436592) (not e!382947))))

(assert (=> b!669597 (= res!436592 e!382943)))

(declare-fun res!436612 () Bool)

(assert (=> b!669597 (=> res!436612 e!382943)))

(assert (=> b!669597 (= res!436612 e!382946)))

(declare-fun res!436601 () Bool)

(assert (=> b!669597 (=> (not res!436601) (not e!382946))))

(assert (=> b!669597 (= res!436601 (bvsgt from!3004 i!1382))))

(declare-fun b!669598 () Bool)

(declare-fun lt!311707 () Unit!23500)

(assert (=> b!669598 (= e!382948 lt!311707)))

(declare-fun lt!311706 () Unit!23500)

(declare-fun lemmaListSubSeqRefl!0 (List!12835) Unit!23500)

(assert (=> b!669598 (= lt!311706 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun subseq!116 (List!12835 List!12835) Bool)

(assert (=> b!669598 (subseq!116 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39105 List!12835 List!12835 (_ BitVec 32)) Unit!23500)

(declare-fun $colon$colon!247 (List!12835 (_ BitVec 64)) List!12835)

(assert (=> b!669598 (= lt!311707 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!247 acc!681 (select (arr!18741 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!669598 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!669599 () Bool)

(declare-fun res!436597 () Bool)

(assert (=> b!669599 (=> (not res!436597) (not e!382947))))

(declare-fun noDuplicate!625 (List!12835) Bool)

(assert (=> b!669599 (= res!436597 (noDuplicate!625 acc!681))))

(declare-fun b!669600 () Bool)

(declare-fun res!436602 () Bool)

(assert (=> b!669600 (=> (not res!436602) (not e!382947))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!669600 (= res!436602 (validKeyInArray!0 k!2843))))

(declare-fun b!669601 () Bool)

(declare-fun e!382945 () Bool)

(assert (=> b!669601 (= e!382945 e!382940)))

(declare-fun res!436604 () Bool)

(assert (=> b!669601 (=> res!436604 e!382940)))

(assert (=> b!669601 (= res!436604 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!669602 () Bool)

(declare-fun res!436595 () Bool)

(assert (=> b!669602 (=> res!436595 e!382941)))

(assert (=> b!669602 (= res!436595 (contains!3378 lt!311712 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!669603 () Bool)

(declare-fun e!382942 () Unit!23500)

(declare-fun Unit!23503 () Unit!23500)

(assert (=> b!669603 (= e!382942 Unit!23503)))

(declare-fun b!669604 () Bool)

(declare-fun res!436613 () Bool)

(assert (=> b!669604 (=> res!436613 e!382941)))

(assert (=> b!669604 (= res!436613 e!382945)))

(declare-fun res!436605 () Bool)

(assert (=> b!669604 (=> (not res!436605) (not e!382945))))

(assert (=> b!669604 (= res!436605 e!382939)))

(declare-fun res!436593 () Bool)

(assert (=> b!669604 (=> res!436593 e!382939)))

(assert (=> b!669604 (= res!436593 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!669605 () Bool)

(assert (=> b!669605 (= e!382947 (not e!382941))))

(declare-fun res!436607 () Bool)

(assert (=> b!669605 (=> res!436607 e!382941)))

(assert (=> b!669605 (= res!436607 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(assert (=> b!669605 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!311712)))

(declare-fun lt!311715 () Unit!23500)

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!39105 (_ BitVec 64) (_ BitVec 32) List!12835 List!12835) Unit!23500)

(assert (=> b!669605 (= lt!311715 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004) acc!681 lt!311712))))

(declare-fun -!114 (List!12835 (_ BitVec 64)) List!12835)

(assert (=> b!669605 (= (-!114 lt!311712 k!2843) acc!681)))

(assert (=> b!669605 (= lt!311712 ($colon$colon!247 acc!681 k!2843))))

(declare-fun lt!311710 () Unit!23500)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!12835) Unit!23500)

(assert (=> b!669605 (= lt!311710 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(assert (=> b!669605 (subseq!116 acc!681 acc!681)))

(declare-fun lt!311709 () Unit!23500)

(assert (=> b!669605 (= lt!311709 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!669605 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!311705 () Unit!23500)

(assert (=> b!669605 (= lt!311705 e!382948)))

(declare-fun c!76864 () Bool)

(assert (=> b!669605 (= c!76864 (validKeyInArray!0 (select (arr!18741 a!3626) from!3004)))))

(declare-fun lt!311711 () Unit!23500)

(assert (=> b!669605 (= lt!311711 e!382942)))

(declare-fun c!76865 () Bool)

(declare-fun arrayContainsKey!0 (array!39105 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!669605 (= c!76865 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!669605 (arrayContainsKey!0 lt!311713 k!2843 from!3004)))

(assert (=> b!669605 (= lt!311713 (array!39106 (store (arr!18741 a!3626) i!1382 k!2843) (size!19105 a!3626)))))

(declare-fun b!669606 () Bool)

(declare-fun res!436609 () Bool)

(assert (=> b!669606 (=> (not res!436609) (not e!382947))))

(assert (=> b!669606 (= res!436609 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!669607 () Bool)

(assert (=> b!669607 (= e!382944 (not (contains!3378 acc!681 k!2843)))))

(declare-fun b!669608 () Bool)

(declare-fun res!436611 () Bool)

(assert (=> b!669608 (=> (not res!436611) (not e!382947))))

(assert (=> b!669608 (= res!436611 (not (contains!3378 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!669609 () Bool)

(declare-fun Unit!23504 () Unit!23500)

(assert (=> b!669609 (= e!382942 Unit!23504)))

(declare-fun lt!311714 () Unit!23500)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39105 (_ BitVec 64) (_ BitVec 32)) Unit!23500)

(assert (=> b!669609 (= lt!311714 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!669609 false))

(declare-fun b!669610 () Bool)

(declare-fun res!436608 () Bool)

(assert (=> b!669610 (=> (not res!436608) (not e!382947))))

(assert (=> b!669610 (= res!436608 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12832))))

(declare-fun b!669611 () Bool)

(declare-fun res!436594 () Bool)

(assert (=> b!669611 (=> res!436594 e!382941)))

(assert (=> b!669611 (= res!436594 (not (noDuplicate!625 lt!311712)))))

(assert (= (and start!60102 res!436599) b!669599))

(assert (= (and b!669599 res!436597) b!669608))

(assert (= (and b!669608 res!436611) b!669590))

(assert (= (and b!669590 res!436598) b!669597))

(assert (= (and b!669597 res!436601) b!669587))

(assert (= (and b!669597 (not res!436612)) b!669595))

(assert (= (and b!669595 res!436603) b!669607))

(assert (= (and b!669597 res!436592) b!669610))

(assert (= (and b!669610 res!436608) b!669589))

(assert (= (and b!669589 res!436610) b!669594))

(assert (= (and b!669594 res!436596) b!669600))

(assert (= (and b!669600 res!436602) b!669606))

(assert (= (and b!669606 res!436609) b!669593))

(assert (= (and b!669593 res!436600) b!669605))

(assert (= (and b!669605 c!76865) b!669609))

(assert (= (and b!669605 (not c!76865)) b!669603))

(assert (= (and b!669605 c!76864) b!669598))

(assert (= (and b!669605 (not c!76864)) b!669592))

(assert (= (and b!669605 (not res!436607)) b!669611))

(assert (= (and b!669611 (not res!436594)) b!669602))

(assert (= (and b!669602 (not res!436595)) b!669586))

(assert (= (and b!669586 (not res!436606)) b!669604))

(assert (= (and b!669604 (not res!436593)) b!669596))

(assert (= (and b!669604 res!436605) b!669601))

(assert (= (and b!669601 (not res!436604)) b!669588))

(assert (= (and b!669604 (not res!436613)) b!669591))

(declare-fun m!639669 () Bool)

(assert (=> b!669596 m!639669))

(declare-fun m!639671 () Bool)

(assert (=> b!669606 m!639671))

(declare-fun m!639673 () Bool)

(assert (=> b!669586 m!639673))

(declare-fun m!639675 () Bool)

(assert (=> b!669608 m!639675))

(declare-fun m!639677 () Bool)

(assert (=> b!669609 m!639677))

(declare-fun m!639679 () Bool)

(assert (=> b!669587 m!639679))

(declare-fun m!639681 () Bool)

(assert (=> b!669600 m!639681))

(declare-fun m!639683 () Bool)

(assert (=> b!669599 m!639683))

(declare-fun m!639685 () Bool)

(assert (=> b!669591 m!639685))

(declare-fun m!639687 () Bool)

(assert (=> b!669591 m!639687))

(assert (=> b!669607 m!639679))

(declare-fun m!639689 () Bool)

(assert (=> b!669610 m!639689))

(declare-fun m!639691 () Bool)

(assert (=> b!669611 m!639691))

(declare-fun m!639693 () Bool)

(assert (=> start!60102 m!639693))

(declare-fun m!639695 () Bool)

(assert (=> b!669590 m!639695))

(assert (=> b!669588 m!639669))

(declare-fun m!639697 () Bool)

(assert (=> b!669605 m!639697))

(declare-fun m!639699 () Bool)

(assert (=> b!669605 m!639699))

(declare-fun m!639701 () Bool)

(assert (=> b!669605 m!639701))

(declare-fun m!639703 () Bool)

(assert (=> b!669605 m!639703))

(declare-fun m!639705 () Bool)

(assert (=> b!669605 m!639705))

(declare-fun m!639707 () Bool)

(assert (=> b!669605 m!639707))

(declare-fun m!639709 () Bool)

(assert (=> b!669605 m!639709))

(declare-fun m!639711 () Bool)

(assert (=> b!669605 m!639711))

(assert (=> b!669605 m!639701))

(declare-fun m!639713 () Bool)

(assert (=> b!669605 m!639713))

(declare-fun m!639715 () Bool)

(assert (=> b!669605 m!639715))

(declare-fun m!639717 () Bool)

(assert (=> b!669605 m!639717))

(declare-fun m!639719 () Bool)

(assert (=> b!669605 m!639719))

(declare-fun m!639721 () Bool)

(assert (=> b!669605 m!639721))

(assert (=> b!669598 m!639697))

(assert (=> b!669598 m!639701))

(declare-fun m!639723 () Bool)

(assert (=> b!669598 m!639723))

(declare-fun m!639725 () Bool)

(assert (=> b!669598 m!639725))

(assert (=> b!669598 m!639701))

(assert (=> b!669598 m!639723))

(assert (=> b!669598 m!639707))

(assert (=> b!669598 m!639715))

(declare-fun m!639727 () Bool)

(assert (=> b!669602 m!639727))

(declare-fun m!639729 () Bool)

(assert (=> b!669589 m!639729))

(push 1)

(assert (not b!669598))

(assert (not b!669590))

(assert (not b!669605))

(assert (not b!669586))

(assert (not b!669596))

(assert (not start!60102))

(assert (not b!669587))

(assert (not b!669606))

(assert (not b!669611))

(assert (not b!669607))

(assert (not b!669602))

(assert (not b!669588))

(assert (not b!669599))

(assert (not b!669609))

(assert (not b!669589))

(assert (not b!669610))

(assert (not b!669600))

(assert (not b!669608))

(assert (not b!669591))

(check-sat)

(pop 1)

(push 1)

(check-sat)

