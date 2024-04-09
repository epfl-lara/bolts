; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59916 () Bool)

(assert start!59916)

(declare-fun b!662945 () Bool)

(declare-fun e!380452 () Bool)

(declare-fun e!380450 () Bool)

(assert (=> b!662945 (= e!380452 (not e!380450))))

(declare-fun res!431056 () Bool)

(assert (=> b!662945 (=> res!431056 e!380450)))

(declare-datatypes ((array!38919 0))(
  ( (array!38920 (arr!18648 (Array (_ BitVec 32) (_ BitVec 64))) (size!19012 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38919)

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!662945 (= res!431056 (not (validKeyInArray!0 (select (arr!18648 a!3626) from!3004))))))

(declare-datatypes ((Unit!23038 0))(
  ( (Unit!23039) )
))
(declare-fun lt!309148 () Unit!23038)

(declare-fun e!380448 () Unit!23038)

(assert (=> b!662945 (= lt!309148 e!380448)))

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun c!76313 () Bool)

(declare-fun arrayContainsKey!0 (array!38919 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!662945 (= c!76313 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!662945 (arrayContainsKey!0 (array!38920 (store (arr!18648 a!3626) i!1382 k!2843) (size!19012 a!3626)) k!2843 from!3004)))

(declare-fun b!662947 () Bool)

(declare-fun e!380449 () Bool)

(assert (=> b!662947 (= e!380449 true)))

(declare-fun lt!309149 () Bool)

(declare-datatypes ((List!12742 0))(
  ( (Nil!12739) (Cons!12738 (h!13783 (_ BitVec 64)) (t!18978 List!12742)) )
))
(declare-fun lt!309153 () List!12742)

(declare-fun arrayNoDuplicates!0 (array!38919 (_ BitVec 32) List!12742) Bool)

(assert (=> b!662947 (= lt!309149 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!309153))))

(declare-fun lt!309151 () Unit!23038)

(declare-fun acc!681 () List!12742)

(declare-fun noDuplicateSubseq!23 (List!12742 List!12742) Unit!23038)

(assert (=> b!662947 (= lt!309151 (noDuplicateSubseq!23 acc!681 lt!309153))))

(declare-fun b!662948 () Bool)

(declare-fun e!380451 () Bool)

(declare-fun contains!3285 (List!12742 (_ BitVec 64)) Bool)

(assert (=> b!662948 (= e!380451 (contains!3285 acc!681 k!2843))))

(declare-fun b!662949 () Bool)

(declare-fun res!431059 () Bool)

(assert (=> b!662949 (=> (not res!431059) (not e!380452))))

(declare-fun e!380453 () Bool)

(assert (=> b!662949 (= res!431059 e!380453)))

(declare-fun res!431062 () Bool)

(assert (=> b!662949 (=> res!431062 e!380453)))

(assert (=> b!662949 (= res!431062 e!380451)))

(declare-fun res!431064 () Bool)

(assert (=> b!662949 (=> (not res!431064) (not e!380451))))

(assert (=> b!662949 (= res!431064 (bvsgt from!3004 i!1382))))

(declare-fun b!662950 () Bool)

(declare-fun res!431053 () Bool)

(assert (=> b!662950 (=> (not res!431053) (not e!380452))))

(assert (=> b!662950 (= res!431053 (not (contains!3285 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!662951 () Bool)

(declare-fun res!431069 () Bool)

(assert (=> b!662951 (=> (not res!431069) (not e!380452))))

(assert (=> b!662951 (= res!431069 (validKeyInArray!0 k!2843))))

(declare-fun b!662952 () Bool)

(declare-fun res!431068 () Bool)

(assert (=> b!662952 (=> (not res!431068) (not e!380452))))

(declare-fun noDuplicate!532 (List!12742) Bool)

(assert (=> b!662952 (= res!431068 (noDuplicate!532 acc!681))))

(declare-fun b!662953 () Bool)

(declare-fun res!431072 () Bool)

(assert (=> b!662953 (=> res!431072 e!380449)))

(assert (=> b!662953 (= res!431072 (contains!3285 lt!309153 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!662954 () Bool)

(assert (=> b!662954 (= e!380450 e!380449)))

(declare-fun res!431070 () Bool)

(assert (=> b!662954 (=> res!431070 e!380449)))

(assert (=> b!662954 (= res!431070 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!154 (List!12742 (_ BitVec 64)) List!12742)

(assert (=> b!662954 (= lt!309153 ($colon$colon!154 acc!681 (select (arr!18648 a!3626) from!3004)))))

(declare-fun subseq!23 (List!12742 List!12742) Bool)

(assert (=> b!662954 (subseq!23 acc!681 acc!681)))

(declare-fun lt!309152 () Unit!23038)

(declare-fun lemmaListSubSeqRefl!0 (List!12742) Unit!23038)

(assert (=> b!662954 (= lt!309152 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun b!662955 () Bool)

(declare-fun res!431065 () Bool)

(assert (=> b!662955 (=> (not res!431065) (not e!380452))))

(assert (=> b!662955 (= res!431065 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19012 a!3626)) (= from!3004 i!1382)))))

(declare-fun res!431054 () Bool)

(assert (=> start!59916 (=> (not res!431054) (not e!380452))))

(assert (=> start!59916 (= res!431054 (and (bvslt (size!19012 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19012 a!3626))))))

(assert (=> start!59916 e!380452))

(assert (=> start!59916 true))

(declare-fun array_inv!14422 (array!38919) Bool)

(assert (=> start!59916 (array_inv!14422 a!3626)))

(declare-fun b!662946 () Bool)

(declare-fun res!431057 () Bool)

(assert (=> b!662946 (=> res!431057 e!380449)))

(assert (=> b!662946 (= res!431057 (contains!3285 lt!309153 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!662956 () Bool)

(declare-fun e!380454 () Bool)

(assert (=> b!662956 (= e!380453 e!380454)))

(declare-fun res!431061 () Bool)

(assert (=> b!662956 (=> (not res!431061) (not e!380454))))

(assert (=> b!662956 (= res!431061 (bvsle from!3004 i!1382))))

(declare-fun b!662957 () Bool)

(declare-fun res!431071 () Bool)

(assert (=> b!662957 (=> (not res!431071) (not e!380452))))

(assert (=> b!662957 (= res!431071 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12739))))

(declare-fun b!662958 () Bool)

(declare-fun Unit!23040 () Unit!23038)

(assert (=> b!662958 (= e!380448 Unit!23040)))

(declare-fun lt!309150 () Unit!23038)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38919 (_ BitVec 64) (_ BitVec 32)) Unit!23038)

(assert (=> b!662958 (= lt!309150 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!662958 false))

(declare-fun b!662959 () Bool)

(declare-fun res!431067 () Bool)

(assert (=> b!662959 (=> (not res!431067) (not e!380452))))

(assert (=> b!662959 (= res!431067 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19012 a!3626))))))

(declare-fun b!662960 () Bool)

(declare-fun res!431066 () Bool)

(assert (=> b!662960 (=> res!431066 e!380449)))

(assert (=> b!662960 (= res!431066 (not (subseq!23 acc!681 lt!309153)))))

(declare-fun b!662961 () Bool)

(declare-fun res!431058 () Bool)

(assert (=> b!662961 (=> (not res!431058) (not e!380452))))

(assert (=> b!662961 (= res!431058 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!662962 () Bool)

(assert (=> b!662962 (= e!380454 (not (contains!3285 acc!681 k!2843)))))

(declare-fun b!662963 () Bool)

(declare-fun Unit!23041 () Unit!23038)

(assert (=> b!662963 (= e!380448 Unit!23041)))

(declare-fun b!662964 () Bool)

(declare-fun res!431060 () Bool)

(assert (=> b!662964 (=> (not res!431060) (not e!380452))))

(assert (=> b!662964 (= res!431060 (not (contains!3285 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!662965 () Bool)

(declare-fun res!431055 () Bool)

(assert (=> b!662965 (=> (not res!431055) (not e!380452))))

(assert (=> b!662965 (= res!431055 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!662966 () Bool)

(declare-fun res!431063 () Bool)

(assert (=> b!662966 (=> res!431063 e!380449)))

(assert (=> b!662966 (= res!431063 (not (noDuplicate!532 lt!309153)))))

(assert (= (and start!59916 res!431054) b!662952))

(assert (= (and b!662952 res!431068) b!662964))

(assert (= (and b!662964 res!431060) b!662950))

(assert (= (and b!662950 res!431053) b!662949))

(assert (= (and b!662949 res!431064) b!662948))

(assert (= (and b!662949 (not res!431062)) b!662956))

(assert (= (and b!662956 res!431061) b!662962))

(assert (= (and b!662949 res!431059) b!662957))

(assert (= (and b!662957 res!431071) b!662965))

(assert (= (and b!662965 res!431055) b!662959))

(assert (= (and b!662959 res!431067) b!662951))

(assert (= (and b!662951 res!431069) b!662961))

(assert (= (and b!662961 res!431058) b!662955))

(assert (= (and b!662955 res!431065) b!662945))

(assert (= (and b!662945 c!76313) b!662958))

(assert (= (and b!662945 (not c!76313)) b!662963))

(assert (= (and b!662945 (not res!431056)) b!662954))

(assert (= (and b!662954 (not res!431070)) b!662966))

(assert (= (and b!662966 (not res!431063)) b!662946))

(assert (= (and b!662946 (not res!431057)) b!662953))

(assert (= (and b!662953 (not res!431072)) b!662960))

(assert (= (and b!662960 (not res!431066)) b!662947))

(declare-fun m!634659 () Bool)

(assert (=> b!662960 m!634659))

(declare-fun m!634661 () Bool)

(assert (=> b!662950 m!634661))

(declare-fun m!634663 () Bool)

(assert (=> b!662964 m!634663))

(declare-fun m!634665 () Bool)

(assert (=> b!662957 m!634665))

(declare-fun m!634667 () Bool)

(assert (=> b!662958 m!634667))

(declare-fun m!634669 () Bool)

(assert (=> b!662962 m!634669))

(declare-fun m!634671 () Bool)

(assert (=> b!662945 m!634671))

(declare-fun m!634673 () Bool)

(assert (=> b!662945 m!634673))

(declare-fun m!634675 () Bool)

(assert (=> b!662945 m!634675))

(assert (=> b!662945 m!634671))

(declare-fun m!634677 () Bool)

(assert (=> b!662945 m!634677))

(declare-fun m!634679 () Bool)

(assert (=> b!662945 m!634679))

(declare-fun m!634681 () Bool)

(assert (=> b!662966 m!634681))

(declare-fun m!634683 () Bool)

(assert (=> b!662953 m!634683))

(declare-fun m!634685 () Bool)

(assert (=> start!59916 m!634685))

(assert (=> b!662948 m!634669))

(declare-fun m!634687 () Bool)

(assert (=> b!662946 m!634687))

(declare-fun m!634689 () Bool)

(assert (=> b!662961 m!634689))

(assert (=> b!662954 m!634671))

(assert (=> b!662954 m!634671))

(declare-fun m!634691 () Bool)

(assert (=> b!662954 m!634691))

(declare-fun m!634693 () Bool)

(assert (=> b!662954 m!634693))

(declare-fun m!634695 () Bool)

(assert (=> b!662954 m!634695))

(declare-fun m!634697 () Bool)

(assert (=> b!662965 m!634697))

(declare-fun m!634699 () Bool)

(assert (=> b!662947 m!634699))

(declare-fun m!634701 () Bool)

(assert (=> b!662947 m!634701))

(declare-fun m!634703 () Bool)

(assert (=> b!662952 m!634703))

(declare-fun m!634705 () Bool)

(assert (=> b!662951 m!634705))

(push 1)

