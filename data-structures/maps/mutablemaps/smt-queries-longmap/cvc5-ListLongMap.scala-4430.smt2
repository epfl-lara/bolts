; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!61572 () Bool)

(assert start!61572)

(declare-fun b!688049 () Bool)

(declare-fun res!452975 () Bool)

(declare-fun e!391915 () Bool)

(assert (=> b!688049 (=> (not res!452975) (not e!391915))))

(declare-datatypes ((List!13096 0))(
  ( (Nil!13093) (Cons!13092 (h!14137 (_ BitVec 64)) (t!19368 List!13096)) )
))
(declare-fun acc!681 () List!13096)

(declare-fun contains!3639 (List!13096 (_ BitVec 64)) Bool)

(assert (=> b!688049 (= res!452975 (not (contains!3639 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!688050 () Bool)

(declare-datatypes ((Unit!24247 0))(
  ( (Unit!24248) )
))
(declare-fun e!391916 () Unit!24247)

(declare-fun lt!315639 () Unit!24247)

(assert (=> b!688050 (= e!391916 lt!315639)))

(declare-fun lt!315641 () Unit!24247)

(declare-fun lemmaListSubSeqRefl!0 (List!13096) Unit!24247)

(assert (=> b!688050 (= lt!315641 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun subseq!224 (List!13096 List!13096) Bool)

(assert (=> b!688050 (subseq!224 acc!681 acc!681)))

(declare-datatypes ((array!39669 0))(
  ( (array!39670 (arr!19002 (Array (_ BitVec 32) (_ BitVec 64))) (size!19383 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39669)

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39669 List!13096 List!13096 (_ BitVec 32)) Unit!24247)

(declare-fun $colon$colon!388 (List!13096 (_ BitVec 64)) List!13096)

(assert (=> b!688050 (= lt!315639 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!388 acc!681 (select (arr!19002 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(declare-fun arrayNoDuplicates!0 (array!39669 (_ BitVec 32) List!13096) Bool)

(assert (=> b!688050 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!688051 () Bool)

(declare-fun res!452963 () Bool)

(assert (=> b!688051 (=> (not res!452963) (not e!391915))))

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!688051 (= res!452963 (validKeyInArray!0 k!2843))))

(declare-fun b!688052 () Bool)

(declare-fun res!452962 () Bool)

(assert (=> b!688052 (=> (not res!452962) (not e!391915))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!688052 (= res!452962 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19383 a!3626))))))

(declare-fun b!688053 () Bool)

(declare-fun e!391923 () Bool)

(declare-fun lt!315648 () List!13096)

(assert (=> b!688053 (= e!391923 (not (contains!3639 lt!315648 k!2843)))))

(declare-fun b!688054 () Bool)

(declare-fun e!391917 () Bool)

(assert (=> b!688054 (= e!391917 (contains!3639 acc!681 k!2843))))

(declare-fun b!688055 () Bool)

(declare-fun res!452967 () Bool)

(declare-fun e!391924 () Bool)

(assert (=> b!688055 (=> res!452967 e!391924)))

(declare-fun noDuplicate!886 (List!13096) Bool)

(assert (=> b!688055 (= res!452967 (not (noDuplicate!886 lt!315648)))))

(declare-fun res!452966 () Bool)

(assert (=> start!61572 (=> (not res!452966) (not e!391915))))

(assert (=> start!61572 (= res!452966 (and (bvslt (size!19383 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19383 a!3626))))))

(assert (=> start!61572 e!391915))

(assert (=> start!61572 true))

(declare-fun array_inv!14776 (array!39669) Bool)

(assert (=> start!61572 (array_inv!14776 a!3626)))

(declare-fun b!688056 () Bool)

(declare-fun res!452959 () Bool)

(assert (=> b!688056 (=> (not res!452959) (not e!391915))))

(assert (=> b!688056 (= res!452959 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!688057 () Bool)

(declare-fun e!391921 () Bool)

(assert (=> b!688057 (= e!391921 e!391923)))

(declare-fun res!452961 () Bool)

(assert (=> b!688057 (=> (not res!452961) (not e!391923))))

(assert (=> b!688057 (= res!452961 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!688058 () Bool)

(declare-fun res!452956 () Bool)

(assert (=> b!688058 (=> res!452956 e!391924)))

(assert (=> b!688058 (= res!452956 (contains!3639 lt!315648 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!688059 () Bool)

(declare-fun e!391922 () Bool)

(assert (=> b!688059 (= e!391922 (contains!3639 lt!315648 k!2843))))

(declare-fun b!688060 () Bool)

(assert (=> b!688060 (= e!391924 true)))

(declare-fun lt!315647 () Bool)

(assert (=> b!688060 (= lt!315647 e!391921)))

(declare-fun res!452958 () Bool)

(assert (=> b!688060 (=> res!452958 e!391921)))

(assert (=> b!688060 (= res!452958 e!391922)))

(declare-fun res!452969 () Bool)

(assert (=> b!688060 (=> (not res!452969) (not e!391922))))

(assert (=> b!688060 (= res!452969 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!688061 () Bool)

(declare-fun e!391914 () Bool)

(assert (=> b!688061 (= e!391914 (not (contains!3639 acc!681 k!2843)))))

(declare-fun b!688062 () Bool)

(declare-fun res!452964 () Bool)

(assert (=> b!688062 (=> (not res!452964) (not e!391915))))

(declare-fun arrayContainsKey!0 (array!39669 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!688062 (= res!452964 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!688063 () Bool)

(declare-fun res!452957 () Bool)

(assert (=> b!688063 (=> (not res!452957) (not e!391915))))

(assert (=> b!688063 (= res!452957 (not (contains!3639 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!688064 () Bool)

(declare-fun res!452968 () Bool)

(assert (=> b!688064 (=> (not res!452968) (not e!391915))))

(assert (=> b!688064 (= res!452968 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19383 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!688065 () Bool)

(declare-fun e!391918 () Unit!24247)

(declare-fun Unit!24249 () Unit!24247)

(assert (=> b!688065 (= e!391918 Unit!24249)))

(declare-fun b!688066 () Bool)

(declare-fun res!452974 () Bool)

(assert (=> b!688066 (=> (not res!452974) (not e!391915))))

(assert (=> b!688066 (= res!452974 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13093))))

(declare-fun b!688067 () Bool)

(declare-fun e!391920 () Bool)

(assert (=> b!688067 (= e!391920 e!391914)))

(declare-fun res!452955 () Bool)

(assert (=> b!688067 (=> (not res!452955) (not e!391914))))

(assert (=> b!688067 (= res!452955 (bvsle from!3004 i!1382))))

(declare-fun b!688068 () Bool)

(declare-fun Unit!24250 () Unit!24247)

(assert (=> b!688068 (= e!391918 Unit!24250)))

(declare-fun lt!315643 () Unit!24247)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39669 (_ BitVec 64) (_ BitVec 32)) Unit!24247)

(assert (=> b!688068 (= lt!315643 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!688068 false))

(declare-fun b!688069 () Bool)

(declare-fun res!452970 () Bool)

(assert (=> b!688069 (=> (not res!452970) (not e!391915))))

(assert (=> b!688069 (= res!452970 (noDuplicate!886 acc!681))))

(declare-fun b!688070 () Bool)

(declare-fun Unit!24251 () Unit!24247)

(assert (=> b!688070 (= e!391916 Unit!24251)))

(declare-fun b!688071 () Bool)

(assert (=> b!688071 (= e!391915 (not e!391924))))

(declare-fun res!452971 () Bool)

(assert (=> b!688071 (=> res!452971 e!391924)))

(assert (=> b!688071 (= res!452971 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(assert (=> b!688071 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!315648)))

(declare-fun lt!315646 () Unit!24247)

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!39669 (_ BitVec 64) (_ BitVec 32) List!13096 List!13096) Unit!24247)

(assert (=> b!688071 (= lt!315646 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004) acc!681 lt!315648))))

(declare-fun -!189 (List!13096 (_ BitVec 64)) List!13096)

(assert (=> b!688071 (= (-!189 lt!315648 k!2843) acc!681)))

(assert (=> b!688071 (= lt!315648 ($colon$colon!388 acc!681 k!2843))))

(declare-fun lt!315645 () Unit!24247)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!13096) Unit!24247)

(assert (=> b!688071 (= lt!315645 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(assert (=> b!688071 (subseq!224 acc!681 acc!681)))

(declare-fun lt!315644 () Unit!24247)

(assert (=> b!688071 (= lt!315644 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!688071 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!315642 () Unit!24247)

(assert (=> b!688071 (= lt!315642 e!391916)))

(declare-fun c!77915 () Bool)

(assert (=> b!688071 (= c!77915 (validKeyInArray!0 (select (arr!19002 a!3626) from!3004)))))

(declare-fun lt!315640 () Unit!24247)

(assert (=> b!688071 (= lt!315640 e!391918)))

(declare-fun c!77914 () Bool)

(assert (=> b!688071 (= c!77914 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!688071 (arrayContainsKey!0 (array!39670 (store (arr!19002 a!3626) i!1382 k!2843) (size!19383 a!3626)) k!2843 from!3004)))

(declare-fun b!688072 () Bool)

(declare-fun res!452973 () Bool)

(assert (=> b!688072 (=> (not res!452973) (not e!391915))))

(assert (=> b!688072 (= res!452973 e!391920)))

(declare-fun res!452965 () Bool)

(assert (=> b!688072 (=> res!452965 e!391920)))

(assert (=> b!688072 (= res!452965 e!391917)))

(declare-fun res!452972 () Bool)

(assert (=> b!688072 (=> (not res!452972) (not e!391917))))

(assert (=> b!688072 (= res!452972 (bvsgt from!3004 i!1382))))

(declare-fun b!688073 () Bool)

(declare-fun res!452960 () Bool)

(assert (=> b!688073 (=> res!452960 e!391924)))

(assert (=> b!688073 (= res!452960 (contains!3639 lt!315648 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!61572 res!452966) b!688069))

(assert (= (and b!688069 res!452970) b!688063))

(assert (= (and b!688063 res!452957) b!688049))

(assert (= (and b!688049 res!452975) b!688072))

(assert (= (and b!688072 res!452972) b!688054))

(assert (= (and b!688072 (not res!452965)) b!688067))

(assert (= (and b!688067 res!452955) b!688061))

(assert (= (and b!688072 res!452973) b!688066))

(assert (= (and b!688066 res!452974) b!688056))

(assert (= (and b!688056 res!452959) b!688052))

(assert (= (and b!688052 res!452962) b!688051))

(assert (= (and b!688051 res!452963) b!688062))

(assert (= (and b!688062 res!452964) b!688064))

(assert (= (and b!688064 res!452968) b!688071))

(assert (= (and b!688071 c!77914) b!688068))

(assert (= (and b!688071 (not c!77914)) b!688065))

(assert (= (and b!688071 c!77915) b!688050))

(assert (= (and b!688071 (not c!77915)) b!688070))

(assert (= (and b!688071 (not res!452971)) b!688055))

(assert (= (and b!688055 (not res!452967)) b!688058))

(assert (= (and b!688058 (not res!452956)) b!688073))

(assert (= (and b!688073 (not res!452960)) b!688060))

(assert (= (and b!688060 res!452969) b!688059))

(assert (= (and b!688060 (not res!452958)) b!688057))

(assert (= (and b!688057 res!452961) b!688053))

(declare-fun m!652053 () Bool)

(assert (=> b!688056 m!652053))

(declare-fun m!652055 () Bool)

(assert (=> b!688050 m!652055))

(declare-fun m!652057 () Bool)

(assert (=> b!688050 m!652057))

(declare-fun m!652059 () Bool)

(assert (=> b!688050 m!652059))

(declare-fun m!652061 () Bool)

(assert (=> b!688050 m!652061))

(assert (=> b!688050 m!652057))

(assert (=> b!688050 m!652059))

(declare-fun m!652063 () Bool)

(assert (=> b!688050 m!652063))

(declare-fun m!652065 () Bool)

(assert (=> b!688050 m!652065))

(declare-fun m!652067 () Bool)

(assert (=> b!688054 m!652067))

(declare-fun m!652069 () Bool)

(assert (=> b!688059 m!652069))

(assert (=> b!688071 m!652055))

(assert (=> b!688071 m!652057))

(declare-fun m!652071 () Bool)

(assert (=> b!688071 m!652071))

(declare-fun m!652073 () Bool)

(assert (=> b!688071 m!652073))

(declare-fun m!652075 () Bool)

(assert (=> b!688071 m!652075))

(declare-fun m!652077 () Bool)

(assert (=> b!688071 m!652077))

(assert (=> b!688071 m!652063))

(declare-fun m!652079 () Bool)

(assert (=> b!688071 m!652079))

(declare-fun m!652081 () Bool)

(assert (=> b!688071 m!652081))

(declare-fun m!652083 () Bool)

(assert (=> b!688071 m!652083))

(assert (=> b!688071 m!652057))

(declare-fun m!652085 () Bool)

(assert (=> b!688071 m!652085))

(declare-fun m!652087 () Bool)

(assert (=> b!688071 m!652087))

(assert (=> b!688071 m!652065))

(declare-fun m!652089 () Bool)

(assert (=> b!688069 m!652089))

(declare-fun m!652091 () Bool)

(assert (=> b!688073 m!652091))

(declare-fun m!652093 () Bool)

(assert (=> b!688068 m!652093))

(declare-fun m!652095 () Bool)

(assert (=> b!688066 m!652095))

(assert (=> b!688053 m!652069))

(declare-fun m!652097 () Bool)

(assert (=> start!61572 m!652097))

(declare-fun m!652099 () Bool)

(assert (=> b!688063 m!652099))

(assert (=> b!688061 m!652067))

(declare-fun m!652101 () Bool)

(assert (=> b!688049 m!652101))

(declare-fun m!652103 () Bool)

(assert (=> b!688062 m!652103))

(declare-fun m!652105 () Bool)

(assert (=> b!688055 m!652105))

(declare-fun m!652107 () Bool)

(assert (=> b!688051 m!652107))

(declare-fun m!652109 () Bool)

(assert (=> b!688058 m!652109))

(push 1)

(assert (not b!688066))

(assert (not b!688059))

(assert (not b!688049))

(assert (not b!688050))

(assert (not b!688055))

(assert (not start!61572))

(assert (not b!688073))

(assert (not b!688063))

(assert (not b!688054))

(assert (not b!688069))

(assert (not b!688068))

(assert (not b!688071))

(assert (not b!688058))

(assert (not b!688061))

(assert (not b!688051))

(assert (not b!688053))

(assert (not b!688062))

(assert (not b!688056))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

