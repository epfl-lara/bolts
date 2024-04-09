; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!62606 () Bool)

(assert start!62606)

(declare-fun b!705937 () Bool)

(declare-fun res!469921 () Bool)

(declare-fun e!397798 () Bool)

(assert (=> b!705937 (=> (not res!469921) (not e!397798))))

(declare-datatypes ((List!13367 0))(
  ( (Nil!13364) (Cons!13363 (h!14408 (_ BitVec 64)) (t!19657 List!13367)) )
))
(declare-fun newAcc!49 () List!13367)

(declare-fun acc!652 () List!13367)

(declare-fun k0!2824 () (_ BitVec 64))

(declare-fun -!319 (List!13367 (_ BitVec 64)) List!13367)

(assert (=> b!705937 (= res!469921 (= (-!319 newAcc!49 k0!2824) acc!652))))

(declare-fun b!705938 () Bool)

(declare-fun res!469931 () Bool)

(assert (=> b!705938 (=> (not res!469931) (not e!397798))))

(declare-fun contains!3910 (List!13367 (_ BitVec 64)) Bool)

(assert (=> b!705938 (= res!469931 (not (contains!3910 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!705939 () Bool)

(declare-fun res!469924 () Bool)

(assert (=> b!705939 (=> (not res!469924) (not e!397798))))

(assert (=> b!705939 (= res!469924 (not (contains!3910 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!705940 () Bool)

(declare-fun from!2969 () (_ BitVec 32))

(declare-datatypes ((array!40241 0))(
  ( (array!40242 (arr!19273 (Array (_ BitVec 32) (_ BitVec 64))) (size!19656 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40241)

(assert (=> b!705940 (= e!397798 (and (bvsge (bvadd #b00000000000000000000000000000001 from!2969) (size!19656 a!3591)) (bvsgt from!2969 (size!19656 a!3591))))))

(declare-fun b!705941 () Bool)

(declare-fun res!469930 () Bool)

(assert (=> b!705941 (=> (not res!469930) (not e!397798))))

(assert (=> b!705941 (= res!469930 (not (contains!3910 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!705942 () Bool)

(declare-fun res!469929 () Bool)

(assert (=> b!705942 (=> (not res!469929) (not e!397798))))

(assert (=> b!705942 (= res!469929 (contains!3910 newAcc!49 k0!2824))))

(declare-fun b!705943 () Bool)

(declare-fun res!469927 () Bool)

(assert (=> b!705943 (=> (not res!469927) (not e!397798))))

(declare-fun noDuplicate!1157 (List!13367) Bool)

(assert (=> b!705943 (= res!469927 (noDuplicate!1157 newAcc!49))))

(declare-fun b!705944 () Bool)

(declare-fun res!469932 () Bool)

(assert (=> b!705944 (=> (not res!469932) (not e!397798))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!705944 (= res!469932 (validKeyInArray!0 k0!2824))))

(declare-fun b!705946 () Bool)

(declare-fun res!469925 () Bool)

(assert (=> b!705946 (=> (not res!469925) (not e!397798))))

(declare-fun arrayContainsKey!0 (array!40241 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!705946 (= res!469925 (not (arrayContainsKey!0 a!3591 k0!2824 from!2969)))))

(declare-fun b!705947 () Bool)

(declare-fun res!469934 () Bool)

(assert (=> b!705947 (=> (not res!469934) (not e!397798))))

(declare-fun arrayNoDuplicates!0 (array!40241 (_ BitVec 32) List!13367) Bool)

(assert (=> b!705947 (= res!469934 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!705948 () Bool)

(declare-fun res!469928 () Bool)

(assert (=> b!705948 (=> (not res!469928) (not e!397798))))

(assert (=> b!705948 (= res!469928 (noDuplicate!1157 acc!652))))

(declare-fun b!705949 () Bool)

(declare-fun res!469926 () Bool)

(assert (=> b!705949 (=> (not res!469926) (not e!397798))))

(declare-fun subseq!354 (List!13367 List!13367) Bool)

(assert (=> b!705949 (= res!469926 (subseq!354 acc!652 newAcc!49))))

(declare-fun b!705950 () Bool)

(declare-fun res!469922 () Bool)

(assert (=> b!705950 (=> (not res!469922) (not e!397798))))

(assert (=> b!705950 (= res!469922 (not (contains!3910 acc!652 k0!2824)))))

(declare-fun b!705945 () Bool)

(declare-fun res!469933 () Bool)

(assert (=> b!705945 (=> (not res!469933) (not e!397798))))

(assert (=> b!705945 (= res!469933 (not (contains!3910 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!469923 () Bool)

(assert (=> start!62606 (=> (not res!469923) (not e!397798))))

(assert (=> start!62606 (= res!469923 (and (bvslt (size!19656 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19656 a!3591))))))

(assert (=> start!62606 e!397798))

(assert (=> start!62606 true))

(declare-fun array_inv!15047 (array!40241) Bool)

(assert (=> start!62606 (array_inv!15047 a!3591)))

(assert (= (and start!62606 res!469923) b!705948))

(assert (= (and b!705948 res!469928) b!705943))

(assert (= (and b!705943 res!469927) b!705939))

(assert (= (and b!705939 res!469924) b!705945))

(assert (= (and b!705945 res!469933) b!705946))

(assert (= (and b!705946 res!469925) b!705950))

(assert (= (and b!705950 res!469922) b!705944))

(assert (= (and b!705944 res!469932) b!705947))

(assert (= (and b!705947 res!469934) b!705949))

(assert (= (and b!705949 res!469926) b!705942))

(assert (= (and b!705942 res!469929) b!705937))

(assert (= (and b!705937 res!469921) b!705941))

(assert (= (and b!705941 res!469930) b!705938))

(assert (= (and b!705938 res!469931) b!705940))

(declare-fun m!663979 () Bool)

(assert (=> b!705945 m!663979))

(declare-fun m!663981 () Bool)

(assert (=> b!705941 m!663981))

(declare-fun m!663983 () Bool)

(assert (=> b!705943 m!663983))

(declare-fun m!663985 () Bool)

(assert (=> b!705942 m!663985))

(declare-fun m!663987 () Bool)

(assert (=> b!705939 m!663987))

(declare-fun m!663989 () Bool)

(assert (=> b!705947 m!663989))

(declare-fun m!663991 () Bool)

(assert (=> b!705948 m!663991))

(declare-fun m!663993 () Bool)

(assert (=> b!705949 m!663993))

(declare-fun m!663995 () Bool)

(assert (=> b!705946 m!663995))

(declare-fun m!663997 () Bool)

(assert (=> b!705950 m!663997))

(declare-fun m!663999 () Bool)

(assert (=> b!705937 m!663999))

(declare-fun m!664001 () Bool)

(assert (=> start!62606 m!664001))

(declare-fun m!664003 () Bool)

(assert (=> b!705938 m!664003))

(declare-fun m!664005 () Bool)

(assert (=> b!705944 m!664005))

(check-sat (not b!705944) (not b!705945) (not b!705948) (not b!705942) (not b!705941) (not start!62606) (not b!705946) (not b!705950) (not b!705943) (not b!705938) (not b!705949) (not b!705937) (not b!705939) (not b!705947))
(check-sat)
