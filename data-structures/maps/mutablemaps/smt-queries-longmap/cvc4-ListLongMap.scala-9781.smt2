; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115932 () Bool)

(assert start!115932)

(declare-fun b!1370004 () Bool)

(declare-fun res!913592 () Bool)

(declare-fun e!775982 () Bool)

(assert (=> b!1370004 (=> (not res!913592) (not e!775982))))

(declare-datatypes ((List!32149 0))(
  ( (Nil!32146) (Cons!32145 (h!33354 (_ BitVec 64)) (t!46850 List!32149)) )
))
(declare-fun newAcc!98 () List!32149)

(declare-fun contains!9687 (List!32149 (_ BitVec 64)) Bool)

(assert (=> b!1370004 (= res!913592 (not (contains!9687 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1370005 () Bool)

(declare-fun res!913596 () Bool)

(declare-fun e!775983 () Bool)

(assert (=> b!1370005 (=> (not res!913596) (not e!775983))))

(declare-fun from!3239 () (_ BitVec 32))

(assert (=> b!1370005 (= res!913596 (bvsge (bvadd #b00000000000000000000000000000001 from!3239) #b00000000000000000000000000000000))))

(declare-fun b!1370006 () Bool)

(declare-fun res!913594 () Bool)

(assert (=> b!1370006 (=> (not res!913594) (not e!775982))))

(assert (=> b!1370006 (= res!913594 (not (contains!9687 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1370007 () Bool)

(declare-fun res!913593 () Bool)

(assert (=> b!1370007 (=> (not res!913593) (not e!775982))))

(declare-fun acc!866 () List!32149)

(assert (=> b!1370007 (= res!913593 (not (contains!9687 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!913588 () Bool)

(assert (=> start!115932 (=> (not res!913588) (not e!775982))))

(declare-datatypes ((array!92969 0))(
  ( (array!92970 (arr!44901 (Array (_ BitVec 32) (_ BitVec 64))) (size!45452 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92969)

(assert (=> start!115932 (= res!913588 (and (bvslt (size!45452 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45452 a!3861))))))

(assert (=> start!115932 e!775982))

(declare-fun array_inv!33846 (array!92969) Bool)

(assert (=> start!115932 (array_inv!33846 a!3861)))

(assert (=> start!115932 true))

(declare-fun b!1370008 () Bool)

(declare-fun res!913591 () Bool)

(assert (=> b!1370008 (=> (not res!913591) (not e!775982))))

(assert (=> b!1370008 (= res!913591 (not (contains!9687 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1370009 () Bool)

(declare-fun res!913595 () Bool)

(assert (=> b!1370009 (=> (not res!913595) (not e!775982))))

(declare-fun noDuplicate!2566 (List!32149) Bool)

(assert (=> b!1370009 (= res!913595 (noDuplicate!2566 acc!866))))

(declare-fun b!1370010 () Bool)

(declare-fun res!913590 () Bool)

(assert (=> b!1370010 (=> (not res!913590) (not e!775982))))

(declare-fun subseq!1078 (List!32149 List!32149) Bool)

(assert (=> b!1370010 (= res!913590 (subseq!1078 newAcc!98 acc!866))))

(declare-fun b!1370011 () Bool)

(declare-fun res!913587 () Bool)

(assert (=> b!1370011 (=> (not res!913587) (not e!775983))))

(assert (=> b!1370011 (= res!913587 (bvslt from!3239 (size!45452 a!3861)))))

(declare-fun b!1370012 () Bool)

(assert (=> b!1370012 (= e!775982 e!775983)))

(declare-fun res!913585 () Bool)

(assert (=> b!1370012 (=> (not res!913585) (not e!775983))))

(declare-fun arrayNoDuplicates!0 (array!92969 (_ BitVec 32) List!32149) Bool)

(assert (=> b!1370012 (= res!913585 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45237 0))(
  ( (Unit!45238) )
))
(declare-fun lt!602315 () Unit!45237)

(declare-fun noDuplicateSubseq!265 (List!32149 List!32149) Unit!45237)

(assert (=> b!1370012 (= lt!602315 (noDuplicateSubseq!265 newAcc!98 acc!866))))

(declare-fun b!1370013 () Bool)

(declare-fun res!913589 () Bool)

(assert (=> b!1370013 (=> (not res!913589) (not e!775983))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1370013 (= res!913589 (validKeyInArray!0 (select (arr!44901 a!3861) from!3239)))))

(declare-fun b!1370014 () Bool)

(assert (=> b!1370014 (= e!775983 (not (noDuplicate!2566 (Cons!32145 (select (arr!44901 a!3861) from!3239) acc!866))))))

(declare-fun b!1370015 () Bool)

(declare-fun res!913586 () Bool)

(assert (=> b!1370015 (=> (not res!913586) (not e!775983))))

(assert (=> b!1370015 (= res!913586 (not (contains!9687 acc!866 (select (arr!44901 a!3861) from!3239))))))

(assert (= (and start!115932 res!913588) b!1370009))

(assert (= (and b!1370009 res!913595) b!1370007))

(assert (= (and b!1370007 res!913593) b!1370008))

(assert (= (and b!1370008 res!913591) b!1370006))

(assert (= (and b!1370006 res!913594) b!1370004))

(assert (= (and b!1370004 res!913592) b!1370010))

(assert (= (and b!1370010 res!913590) b!1370012))

(assert (= (and b!1370012 res!913585) b!1370011))

(assert (= (and b!1370011 res!913587) b!1370013))

(assert (= (and b!1370013 res!913589) b!1370015))

(assert (= (and b!1370015 res!913586) b!1370005))

(assert (= (and b!1370005 res!913596) b!1370014))

(declare-fun m!1253681 () Bool)

(assert (=> b!1370007 m!1253681))

(declare-fun m!1253683 () Bool)

(assert (=> start!115932 m!1253683))

(declare-fun m!1253685 () Bool)

(assert (=> b!1370004 m!1253685))

(declare-fun m!1253687 () Bool)

(assert (=> b!1370014 m!1253687))

(declare-fun m!1253689 () Bool)

(assert (=> b!1370014 m!1253689))

(declare-fun m!1253691 () Bool)

(assert (=> b!1370010 m!1253691))

(declare-fun m!1253693 () Bool)

(assert (=> b!1370006 m!1253693))

(assert (=> b!1370013 m!1253687))

(assert (=> b!1370013 m!1253687))

(declare-fun m!1253695 () Bool)

(assert (=> b!1370013 m!1253695))

(declare-fun m!1253697 () Bool)

(assert (=> b!1370012 m!1253697))

(declare-fun m!1253699 () Bool)

(assert (=> b!1370012 m!1253699))

(declare-fun m!1253701 () Bool)

(assert (=> b!1370008 m!1253701))

(assert (=> b!1370015 m!1253687))

(assert (=> b!1370015 m!1253687))

(declare-fun m!1253703 () Bool)

(assert (=> b!1370015 m!1253703))

(declare-fun m!1253705 () Bool)

(assert (=> b!1370009 m!1253705))

(push 1)

(assert (not b!1370007))

(assert (not b!1370009))

(assert (not b!1370008))

(assert (not b!1370010))

(assert (not b!1370013))

(assert (not b!1370014))

(assert (not b!1370015))

(assert (not start!115932))

(assert (not b!1370004))

(assert (not b!1370006))

(assert (not b!1370012))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun lt!602328 () Bool)

(declare-fun d!147015 () Bool)

(declare-fun content!734 (List!32149) (Set (_ BitVec 64)))

(assert (=> d!147015 (= lt!602328 (member (select (arr!44901 a!3861) from!3239) (content!734 acc!866)))))

(declare-fun e!776036 () Bool)

(assert (=> d!147015 (= lt!602328 e!776036)))

(declare-fun res!913648 () Bool)

(assert (=> d!147015 (=> (not res!913648) (not e!776036))))

(assert (=> d!147015 (= res!913648 (is-Cons!32145 acc!866))))

(assert (=> d!147015 (= (contains!9687 acc!866 (select (arr!44901 a!3861) from!3239)) lt!602328)))

(declare-fun b!1370066 () Bool)

(declare-fun e!776035 () Bool)

(assert (=> b!1370066 (= e!776036 e!776035)))

(declare-fun res!913647 () Bool)

(assert (=> b!1370066 (=> res!913647 e!776035)))

(assert (=> b!1370066 (= res!913647 (= (h!33354 acc!866) (select (arr!44901 a!3861) from!3239)))))

(declare-fun b!1370067 () Bool)

(assert (=> b!1370067 (= e!776035 (contains!9687 (t!46850 acc!866) (select (arr!44901 a!3861) from!3239)))))

(assert (= (and d!147015 res!913648) b!1370066))

(assert (= (and b!1370066 (not res!913647)) b!1370067))

(declare-fun m!1253751 () Bool)

(assert (=> d!147015 m!1253751))

(assert (=> d!147015 m!1253687))

(declare-fun m!1253753 () Bool)

(assert (=> d!147015 m!1253753))

(assert (=> b!1370067 m!1253687))

(declare-fun m!1253755 () Bool)

(assert (=> b!1370067 m!1253755))

(assert (=> b!1370015 d!147015))

(declare-fun b!1370102 () Bool)

(declare-fun e!776071 () Bool)

(declare-fun e!776070 () Bool)

(assert (=> b!1370102 (= e!776071 e!776070)))

(declare-fun res!913679 () Bool)

(assert (=> b!1370102 (=> (not res!913679) (not e!776070))))

(assert (=> b!1370102 (= res!913679 (is-Cons!32145 acc!866))))

(declare-fun b!1370105 () Bool)

(declare-fun e!776069 () Bool)

(assert (=> b!1370105 (= e!776069 (subseq!1078 newAcc!98 (t!46850 acc!866)))))

(declare-fun d!147025 () Bool)

(declare-fun res!913682 () Bool)

(assert (=> d!147025 (=> res!913682 e!776071)))

(assert (=> d!147025 (= res!913682 (is-Nil!32146 newAcc!98))))

(assert (=> d!147025 (= (subseq!1078 newAcc!98 acc!866) e!776071)))

(declare-fun b!1370103 () Bool)

(assert (=> b!1370103 (= e!776070 e!776069)))

(declare-fun res!913681 () Bool)

(assert (=> b!1370103 (=> res!913681 e!776069)))

(declare-fun e!776072 () Bool)

(assert (=> b!1370103 (= res!913681 e!776072)))

(declare-fun res!913680 () Bool)

(assert (=> b!1370103 (=> (not res!913680) (not e!776072))))

(assert (=> b!1370103 (= res!913680 (= (h!33354 newAcc!98) (h!33354 acc!866)))))

(declare-fun b!1370104 () Bool)

(assert (=> b!1370104 (= e!776072 (subseq!1078 (t!46850 newAcc!98) (t!46850 acc!866)))))

(assert (= (and d!147025 (not res!913682)) b!1370102))

(assert (= (and b!1370102 res!913679) b!1370103))

(assert (= (and b!1370103 res!913680) b!1370104))

(assert (= (and b!1370103 (not res!913681)) b!1370105))

(declare-fun m!1253773 () Bool)

(assert (=> b!1370105 m!1253773))

(declare-fun m!1253775 () Bool)

(assert (=> b!1370104 m!1253775))

(assert (=> b!1370010 d!147025))

(declare-fun d!147037 () Bool)

(declare-fun res!913690 () Bool)

(declare-fun e!776081 () Bool)

(assert (=> d!147037 (=> res!913690 e!776081)))

(assert (=> d!147037 (= res!913690 (is-Nil!32146 acc!866))))

(assert (=> d!147037 (= (noDuplicate!2566 acc!866) e!776081)))

(declare-fun b!1370115 () Bool)

(declare-fun e!776082 () Bool)

(assert (=> b!1370115 (= e!776081 e!776082)))

(declare-fun res!913691 () Bool)

(assert (=> b!1370115 (=> (not res!913691) (not e!776082))))

(assert (=> b!1370115 (= res!913691 (not (contains!9687 (t!46850 acc!866) (h!33354 acc!866))))))

(declare-fun b!1370116 () Bool)

(assert (=> b!1370116 (= e!776082 (noDuplicate!2566 (t!46850 acc!866)))))

(assert (= (and d!147037 (not res!913690)) b!1370115))

(assert (= (and b!1370115 res!913691) b!1370116))

(declare-fun m!1253779 () Bool)

(assert (=> b!1370115 m!1253779))

(declare-fun m!1253781 () Bool)

(assert (=> b!1370116 m!1253781))

(assert (=> b!1370009 d!147037))

(declare-fun d!147043 () Bool)

(declare-fun lt!602332 () Bool)

(assert (=> d!147043 (= lt!602332 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!734 newAcc!98)))))

(declare-fun e!776086 () Bool)

(assert (=> d!147043 (= lt!602332 e!776086)))

(declare-fun res!913695 () Bool)

(assert (=> d!147043 (=> (not res!913695) (not e!776086))))

(assert (=> d!147043 (= res!913695 (is-Cons!32145 newAcc!98))))

(assert (=> d!147043 (= (contains!9687 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000) lt!602332)))

(declare-fun b!1370117 () Bool)

(declare-fun e!776085 () Bool)

(assert (=> b!1370117 (= e!776086 e!776085)))

(declare-fun res!913694 () Bool)

(assert (=> b!1370117 (=> res!913694 e!776085)))

(assert (=> b!1370117 (= res!913694 (= (h!33354 newAcc!98) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1370118 () Bool)

(assert (=> b!1370118 (= e!776085 (contains!9687 (t!46850 newAcc!98) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!147043 res!913695) b!1370117))

(assert (= (and b!1370117 (not res!913694)) b!1370118))

