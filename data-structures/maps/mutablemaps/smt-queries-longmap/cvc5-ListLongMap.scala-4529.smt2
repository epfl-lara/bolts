; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62658 () Bool)

(assert start!62658)

(declare-fun b!706970 () Bool)

(declare-fun res!470960 () Bool)

(declare-fun e!397953 () Bool)

(assert (=> b!706970 (=> (not res!470960) (not e!397953))))

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!706970 (= res!470960 (validKeyInArray!0 k!2824))))

(declare-fun res!470957 () Bool)

(assert (=> start!62658 (=> (not res!470957) (not e!397953))))

(declare-datatypes ((array!40293 0))(
  ( (array!40294 (arr!19299 (Array (_ BitVec 32) (_ BitVec 64))) (size!19682 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40293)

(declare-fun from!2969 () (_ BitVec 32))

(assert (=> start!62658 (= res!470957 (and (bvslt (size!19682 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19682 a!3591))))))

(assert (=> start!62658 e!397953))

(assert (=> start!62658 true))

(declare-fun array_inv!15073 (array!40293) Bool)

(assert (=> start!62658 (array_inv!15073 a!3591)))

(declare-fun b!706971 () Bool)

(declare-fun res!470962 () Bool)

(assert (=> b!706971 (=> (not res!470962) (not e!397953))))

(assert (=> b!706971 (= res!470962 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19682 a!3591)))))

(declare-fun b!706972 () Bool)

(declare-fun res!470955 () Bool)

(assert (=> b!706972 (=> (not res!470955) (not e!397953))))

(declare-datatypes ((List!13393 0))(
  ( (Nil!13390) (Cons!13389 (h!14434 (_ BitVec 64)) (t!19683 List!13393)) )
))
(declare-fun acc!652 () List!13393)

(declare-fun contains!3936 (List!13393 (_ BitVec 64)) Bool)

(assert (=> b!706972 (= res!470955 (not (contains!3936 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!706973 () Bool)

(declare-fun res!470961 () Bool)

(assert (=> b!706973 (=> (not res!470961) (not e!397953))))

(declare-fun arrayNoDuplicates!0 (array!40293 (_ BitVec 32) List!13393) Bool)

(assert (=> b!706973 (= res!470961 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!706974 () Bool)

(declare-fun res!470954 () Bool)

(assert (=> b!706974 (=> (not res!470954) (not e!397953))))

(declare-fun arrayContainsKey!0 (array!40293 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!706974 (= res!470954 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!706975 () Bool)

(declare-fun res!470964 () Bool)

(assert (=> b!706975 (=> (not res!470964) (not e!397953))))

(declare-fun newAcc!49 () List!13393)

(assert (=> b!706975 (= res!470964 (not (contains!3936 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!706976 () Bool)

(declare-fun res!470967 () Bool)

(assert (=> b!706976 (=> (not res!470967) (not e!397953))))

(assert (=> b!706976 (= res!470967 (not (contains!3936 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!706977 () Bool)

(declare-fun res!470959 () Bool)

(assert (=> b!706977 (=> (not res!470959) (not e!397953))))

(declare-fun -!345 (List!13393 (_ BitVec 64)) List!13393)

(assert (=> b!706977 (= res!470959 (= (-!345 newAcc!49 k!2824) acc!652))))

(declare-fun b!706978 () Bool)

(declare-fun res!470965 () Bool)

(assert (=> b!706978 (=> (not res!470965) (not e!397953))))

(declare-fun noDuplicate!1183 (List!13393) Bool)

(assert (=> b!706978 (= res!470965 (noDuplicate!1183 acc!652))))

(declare-fun b!706979 () Bool)

(declare-fun res!470956 () Bool)

(assert (=> b!706979 (=> (not res!470956) (not e!397953))))

(assert (=> b!706979 (= res!470956 (noDuplicate!1183 newAcc!49))))

(declare-fun b!706980 () Bool)

(declare-fun res!470958 () Bool)

(assert (=> b!706980 (=> (not res!470958) (not e!397953))))

(assert (=> b!706980 (= res!470958 (contains!3936 newAcc!49 k!2824))))

(declare-fun b!706981 () Bool)

(declare-fun res!470966 () Bool)

(assert (=> b!706981 (=> (not res!470966) (not e!397953))))

(assert (=> b!706981 (= res!470966 (not (contains!3936 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!706982 () Bool)

(declare-fun res!470968 () Bool)

(assert (=> b!706982 (=> (not res!470968) (not e!397953))))

(assert (=> b!706982 (= res!470968 (validKeyInArray!0 (select (arr!19299 a!3591) from!2969)))))

(declare-fun b!706983 () Bool)

(assert (=> b!706983 (= e!397953 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun b!706984 () Bool)

(declare-fun res!470963 () Bool)

(assert (=> b!706984 (=> (not res!470963) (not e!397953))))

(declare-fun subseq!380 (List!13393 List!13393) Bool)

(assert (=> b!706984 (= res!470963 (subseq!380 acc!652 newAcc!49))))

(declare-fun b!706985 () Bool)

(declare-fun res!470969 () Bool)

(assert (=> b!706985 (=> (not res!470969) (not e!397953))))

(assert (=> b!706985 (= res!470969 (not (contains!3936 acc!652 k!2824)))))

(assert (= (and start!62658 res!470957) b!706978))

(assert (= (and b!706978 res!470965) b!706979))

(assert (= (and b!706979 res!470956) b!706972))

(assert (= (and b!706972 res!470955) b!706981))

(assert (= (and b!706981 res!470966) b!706974))

(assert (= (and b!706974 res!470954) b!706985))

(assert (= (and b!706985 res!470969) b!706970))

(assert (= (and b!706970 res!470960) b!706973))

(assert (= (and b!706973 res!470961) b!706984))

(assert (= (and b!706984 res!470963) b!706980))

(assert (= (and b!706980 res!470958) b!706977))

(assert (= (and b!706977 res!470959) b!706975))

(assert (= (and b!706975 res!470964) b!706976))

(assert (= (and b!706976 res!470967) b!706971))

(assert (= (and b!706971 res!470962) b!706982))

(assert (= (and b!706982 res!470968) b!706983))

(declare-fun m!664707 () Bool)

(assert (=> b!706975 m!664707))

(declare-fun m!664709 () Bool)

(assert (=> b!706984 m!664709))

(declare-fun m!664711 () Bool)

(assert (=> start!62658 m!664711))

(declare-fun m!664713 () Bool)

(assert (=> b!706979 m!664713))

(declare-fun m!664715 () Bool)

(assert (=> b!706982 m!664715))

(assert (=> b!706982 m!664715))

(declare-fun m!664717 () Bool)

(assert (=> b!706982 m!664717))

(declare-fun m!664719 () Bool)

(assert (=> b!706970 m!664719))

(declare-fun m!664721 () Bool)

(assert (=> b!706980 m!664721))

(declare-fun m!664723 () Bool)

(assert (=> b!706981 m!664723))

(declare-fun m!664725 () Bool)

(assert (=> b!706976 m!664725))

(declare-fun m!664727 () Bool)

(assert (=> b!706978 m!664727))

(declare-fun m!664729 () Bool)

(assert (=> b!706972 m!664729))

(declare-fun m!664731 () Bool)

(assert (=> b!706977 m!664731))

(declare-fun m!664733 () Bool)

(assert (=> b!706985 m!664733))

(declare-fun m!664735 () Bool)

(assert (=> b!706974 m!664735))

(declare-fun m!664737 () Bool)

(assert (=> b!706973 m!664737))

(push 1)

