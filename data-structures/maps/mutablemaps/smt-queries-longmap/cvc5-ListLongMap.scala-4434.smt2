; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!61596 () Bool)

(assert start!61596)

(declare-fun b!688951 () Bool)

(declare-fun e!392317 () Bool)

(declare-fun e!392311 () Bool)

(assert (=> b!688951 (= e!392317 (not e!392311))))

(declare-fun res!453725 () Bool)

(assert (=> b!688951 (=> res!453725 e!392311)))

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!688951 (= res!453725 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-datatypes ((array!39693 0))(
  ( (array!39694 (arr!19014 (Array (_ BitVec 32) (_ BitVec 64))) (size!19395 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39693)

(declare-datatypes ((List!13108 0))(
  ( (Nil!13105) (Cons!13104 (h!14149 (_ BitVec 64)) (t!19380 List!13108)) )
))
(declare-fun lt!316002 () List!13108)

(declare-fun arrayNoDuplicates!0 (array!39693 (_ BitVec 32) List!13108) Bool)

(assert (=> b!688951 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!316002)))

(declare-fun acc!681 () List!13108)

(declare-fun k!2843 () (_ BitVec 64))

(declare-datatypes ((Unit!24307 0))(
  ( (Unit!24308) )
))
(declare-fun lt!315999 () Unit!24307)

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!39693 (_ BitVec 64) (_ BitVec 32) List!13108 List!13108) Unit!24307)

(assert (=> b!688951 (= lt!315999 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004) acc!681 lt!316002))))

(declare-fun -!201 (List!13108 (_ BitVec 64)) List!13108)

(assert (=> b!688951 (= (-!201 lt!316002 k!2843) acc!681)))

(declare-fun $colon$colon!400 (List!13108 (_ BitVec 64)) List!13108)

(assert (=> b!688951 (= lt!316002 ($colon$colon!400 acc!681 k!2843))))

(declare-fun lt!316001 () Unit!24307)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!13108) Unit!24307)

(assert (=> b!688951 (= lt!316001 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(declare-fun subseq!236 (List!13108 List!13108) Bool)

(assert (=> b!688951 (subseq!236 acc!681 acc!681)))

(declare-fun lt!315997 () Unit!24307)

(declare-fun lemmaListSubSeqRefl!0 (List!13108) Unit!24307)

(assert (=> b!688951 (= lt!315997 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!688951 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!315998 () Unit!24307)

(declare-fun e!392312 () Unit!24307)

(assert (=> b!688951 (= lt!315998 e!392312)))

(declare-fun c!77986 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!688951 (= c!77986 (validKeyInArray!0 (select (arr!19014 a!3626) from!3004)))))

(declare-fun lt!316003 () Unit!24307)

(declare-fun e!392320 () Unit!24307)

(assert (=> b!688951 (= lt!316003 e!392320)))

(declare-fun c!77987 () Bool)

(declare-fun arrayContainsKey!0 (array!39693 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!688951 (= c!77987 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!688951 (arrayContainsKey!0 (array!39694 (store (arr!19014 a!3626) i!1382 k!2843) (size!19395 a!3626)) k!2843 from!3004)))

(declare-fun b!688952 () Bool)

(declare-fun res!453727 () Bool)

(assert (=> b!688952 (=> (not res!453727) (not e!392317))))

(declare-fun noDuplicate!898 (List!13108) Bool)

(assert (=> b!688952 (= res!453727 (noDuplicate!898 acc!681))))

(declare-fun b!688953 () Bool)

(declare-fun res!453722 () Bool)

(assert (=> b!688953 (=> res!453722 e!392311)))

(declare-fun contains!3651 (List!13108 (_ BitVec 64)) Bool)

(assert (=> b!688953 (= res!453722 (contains!3651 lt!316002 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!688954 () Bool)

(declare-fun res!453714 () Bool)

(assert (=> b!688954 (=> (not res!453714) (not e!392317))))

(assert (=> b!688954 (= res!453714 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19395 a!3626))))))

(declare-fun b!688955 () Bool)

(declare-fun e!392314 () Bool)

(assert (=> b!688955 (= e!392314 (not (contains!3651 lt!316002 k!2843)))))

(declare-fun b!688956 () Bool)

(declare-fun e!392316 () Bool)

(assert (=> b!688956 (= e!392316 (contains!3651 lt!316002 k!2843))))

(declare-fun b!688957 () Bool)

(declare-fun e!392313 () Bool)

(declare-fun e!392319 () Bool)

(assert (=> b!688957 (= e!392313 e!392319)))

(declare-fun res!453719 () Bool)

(assert (=> b!688957 (=> (not res!453719) (not e!392319))))

(assert (=> b!688957 (= res!453719 (bvsle from!3004 i!1382))))

(declare-fun b!688958 () Bool)

(declare-fun Unit!24309 () Unit!24307)

(assert (=> b!688958 (= e!392320 Unit!24309)))

(declare-fun lt!316005 () Unit!24307)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39693 (_ BitVec 64) (_ BitVec 32)) Unit!24307)

(assert (=> b!688958 (= lt!316005 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!688958 false))

(declare-fun b!688959 () Bool)

(declare-fun res!453732 () Bool)

(assert (=> b!688959 (=> (not res!453732) (not e!392317))))

(assert (=> b!688959 (= res!453732 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun res!453723 () Bool)

(assert (=> start!61596 (=> (not res!453723) (not e!392317))))

(assert (=> start!61596 (= res!453723 (and (bvslt (size!19395 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19395 a!3626))))))

(assert (=> start!61596 e!392317))

(assert (=> start!61596 true))

(declare-fun array_inv!14788 (array!39693) Bool)

(assert (=> start!61596 (array_inv!14788 a!3626)))

(declare-fun b!688960 () Bool)

(declare-fun Unit!24310 () Unit!24307)

(assert (=> b!688960 (= e!392312 Unit!24310)))

(declare-fun b!688961 () Bool)

(declare-fun Unit!24311 () Unit!24307)

(assert (=> b!688961 (= e!392320 Unit!24311)))

(declare-fun b!688962 () Bool)

(assert (=> b!688962 (= e!392311 (bvslt (bvsub (size!19395 a!3626) (bvadd #b00000000000000000000000000000001 from!3004)) (bvsub (size!19395 a!3626) from!3004)))))

(declare-fun b!688963 () Bool)

(declare-fun res!453715 () Bool)

(assert (=> b!688963 (=> (not res!453715) (not e!392317))))

(assert (=> b!688963 (= res!453715 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13105))))

(declare-fun b!688964 () Bool)

(declare-fun e!392310 () Bool)

(assert (=> b!688964 (= e!392310 e!392316)))

(declare-fun res!453716 () Bool)

(assert (=> b!688964 (=> res!453716 e!392316)))

(assert (=> b!688964 (= res!453716 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!688965 () Bool)

(declare-fun res!453731 () Bool)

(assert (=> b!688965 (=> res!453731 e!392311)))

(assert (=> b!688965 (= res!453731 (contains!3651 lt!316002 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!688966 () Bool)

(declare-fun res!453734 () Bool)

(assert (=> b!688966 (=> (not res!453734) (not e!392317))))

(assert (=> b!688966 (= res!453734 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!688967 () Bool)

(declare-fun lt!316004 () Unit!24307)

(assert (=> b!688967 (= e!392312 lt!316004)))

(declare-fun lt!316000 () Unit!24307)

(assert (=> b!688967 (= lt!316000 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!688967 (subseq!236 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39693 List!13108 List!13108 (_ BitVec 32)) Unit!24307)

(assert (=> b!688967 (= lt!316004 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!400 acc!681 (select (arr!19014 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!688967 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!688968 () Bool)

(declare-fun res!453726 () Bool)

(assert (=> b!688968 (=> (not res!453726) (not e!392317))))

(assert (=> b!688968 (= res!453726 (not (contains!3651 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!688969 () Bool)

(declare-fun res!453733 () Bool)

(assert (=> b!688969 (=> (not res!453733) (not e!392317))))

(assert (=> b!688969 (= res!453733 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19395 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!688970 () Bool)

(declare-fun res!453730 () Bool)

(assert (=> b!688970 (=> res!453730 e!392311)))

(assert (=> b!688970 (= res!453730 (not (noDuplicate!898 lt!316002)))))

(declare-fun b!688971 () Bool)

(assert (=> b!688971 (= e!392319 (not (contains!3651 acc!681 k!2843)))))

(declare-fun b!688972 () Bool)

(declare-fun res!453720 () Bool)

(assert (=> b!688972 (=> (not res!453720) (not e!392317))))

(assert (=> b!688972 (= res!453720 (validKeyInArray!0 k!2843))))

(declare-fun b!688973 () Bool)

(declare-fun res!453721 () Bool)

(assert (=> b!688973 (=> (not res!453721) (not e!392317))))

(assert (=> b!688973 (= res!453721 (not (contains!3651 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!688974 () Bool)

(declare-fun e!392318 () Bool)

(assert (=> b!688974 (= e!392318 (contains!3651 acc!681 k!2843))))

(declare-fun b!688975 () Bool)

(declare-fun res!453724 () Bool)

(assert (=> b!688975 (=> (not res!453724) (not e!392317))))

(assert (=> b!688975 (= res!453724 e!392313)))

(declare-fun res!453713 () Bool)

(assert (=> b!688975 (=> res!453713 e!392313)))

(assert (=> b!688975 (= res!453713 e!392318)))

(declare-fun res!453729 () Bool)

(assert (=> b!688975 (=> (not res!453729) (not e!392318))))

(assert (=> b!688975 (= res!453729 (bvsgt from!3004 i!1382))))

(declare-fun b!688976 () Bool)

(declare-fun res!453728 () Bool)

(assert (=> b!688976 (=> res!453728 e!392311)))

(assert (=> b!688976 (= res!453728 e!392310)))

(declare-fun res!453717 () Bool)

(assert (=> b!688976 (=> (not res!453717) (not e!392310))))

(assert (=> b!688976 (= res!453717 e!392314)))

(declare-fun res!453718 () Bool)

(assert (=> b!688976 (=> res!453718 e!392314)))

(assert (=> b!688976 (= res!453718 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(assert (= (and start!61596 res!453723) b!688952))

(assert (= (and b!688952 res!453727) b!688968))

(assert (= (and b!688968 res!453726) b!688973))

(assert (= (and b!688973 res!453721) b!688975))

(assert (= (and b!688975 res!453729) b!688974))

(assert (= (and b!688975 (not res!453713)) b!688957))

(assert (= (and b!688957 res!453719) b!688971))

(assert (= (and b!688975 res!453724) b!688963))

(assert (= (and b!688963 res!453715) b!688959))

(assert (= (and b!688959 res!453732) b!688954))

(assert (= (and b!688954 res!453714) b!688972))

(assert (= (and b!688972 res!453720) b!688966))

(assert (= (and b!688966 res!453734) b!688969))

(assert (= (and b!688969 res!453733) b!688951))

(assert (= (and b!688951 c!77987) b!688958))

(assert (= (and b!688951 (not c!77987)) b!688961))

(assert (= (and b!688951 c!77986) b!688967))

(assert (= (and b!688951 (not c!77986)) b!688960))

(assert (= (and b!688951 (not res!453725)) b!688970))

(assert (= (and b!688970 (not res!453730)) b!688953))

(assert (= (and b!688953 (not res!453722)) b!688965))

(assert (= (and b!688965 (not res!453731)) b!688976))

(assert (= (and b!688976 (not res!453718)) b!688955))

(assert (= (and b!688976 res!453717) b!688964))

(assert (= (and b!688964 (not res!453716)) b!688956))

(assert (= (and b!688976 (not res!453728)) b!688962))

(declare-fun m!652749 () Bool)

(assert (=> b!688972 m!652749))

(declare-fun m!652751 () Bool)

(assert (=> b!688967 m!652751))

(declare-fun m!652753 () Bool)

(assert (=> b!688967 m!652753))

(declare-fun m!652755 () Bool)

(assert (=> b!688967 m!652755))

(declare-fun m!652757 () Bool)

(assert (=> b!688967 m!652757))

(assert (=> b!688967 m!652753))

(assert (=> b!688967 m!652755))

(declare-fun m!652759 () Bool)

(assert (=> b!688967 m!652759))

(declare-fun m!652761 () Bool)

(assert (=> b!688967 m!652761))

(declare-fun m!652763 () Bool)

(assert (=> b!688968 m!652763))

(declare-fun m!652765 () Bool)

(assert (=> b!688971 m!652765))

(declare-fun m!652767 () Bool)

(assert (=> b!688970 m!652767))

(declare-fun m!652769 () Bool)

(assert (=> b!688958 m!652769))

(declare-fun m!652771 () Bool)

(assert (=> b!688973 m!652771))

(declare-fun m!652773 () Bool)

(assert (=> b!688966 m!652773))

(declare-fun m!652775 () Bool)

(assert (=> b!688959 m!652775))

(declare-fun m!652777 () Bool)

(assert (=> b!688952 m!652777))

(declare-fun m!652779 () Bool)

(assert (=> b!688963 m!652779))

(assert (=> b!688951 m!652751))

(assert (=> b!688951 m!652753))

(declare-fun m!652781 () Bool)

(assert (=> b!688951 m!652781))

(declare-fun m!652783 () Bool)

(assert (=> b!688951 m!652783))

(declare-fun m!652785 () Bool)

(assert (=> b!688951 m!652785))

(declare-fun m!652787 () Bool)

(assert (=> b!688951 m!652787))

(declare-fun m!652789 () Bool)

(assert (=> b!688951 m!652789))

(assert (=> b!688951 m!652759))

(declare-fun m!652791 () Bool)

(assert (=> b!688951 m!652791))

(declare-fun m!652793 () Bool)

(assert (=> b!688951 m!652793))

(assert (=> b!688951 m!652753))

(declare-fun m!652795 () Bool)

(assert (=> b!688951 m!652795))

(declare-fun m!652797 () Bool)

(assert (=> b!688951 m!652797))

(assert (=> b!688951 m!652761))

(assert (=> b!688974 m!652765))

(declare-fun m!652799 () Bool)

(assert (=> b!688956 m!652799))

(declare-fun m!652801 () Bool)

(assert (=> start!61596 m!652801))

(declare-fun m!652803 () Bool)

(assert (=> b!688953 m!652803))

(declare-fun m!652805 () Bool)

(assert (=> b!688965 m!652805))

(assert (=> b!688955 m!652799))

(push 1)

(assert (not b!688963))

(assert (not b!688967))

(assert (not b!688952))

(assert (not b!688965))

(assert (not b!688968))

(assert (not b!688953))

(assert (not b!688972))

(assert (not b!688951))

(assert (not start!61596))

(assert (not b!688971))

(assert (not b!688973))

(assert (not b!688974))

(assert (not b!688958))

(assert (not b!688966))

(assert (not b!688959))

(assert (not b!688955))

(assert (not b!688970))

(assert (not b!688956))

(check-sat)

