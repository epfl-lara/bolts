; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62608 () Bool)

(assert start!62608)

(declare-fun b!705979 () Bool)

(declare-fun res!469969 () Bool)

(declare-fun e!397804 () Bool)

(assert (=> b!705979 (=> (not res!469969) (not e!397804))))

(declare-datatypes ((List!13368 0))(
  ( (Nil!13365) (Cons!13364 (h!14409 (_ BitVec 64)) (t!19658 List!13368)) )
))
(declare-fun newAcc!49 () List!13368)

(declare-fun contains!3911 (List!13368 (_ BitVec 64)) Bool)

(assert (=> b!705979 (= res!469969 (not (contains!3911 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!705980 () Bool)

(declare-fun res!469974 () Bool)

(assert (=> b!705980 (=> (not res!469974) (not e!397804))))

(declare-datatypes ((array!40243 0))(
  ( (array!40244 (arr!19274 (Array (_ BitVec 32) (_ BitVec 64))) (size!19657 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40243)

(declare-fun acc!652 () List!13368)

(declare-fun from!2969 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!40243 (_ BitVec 32) List!13368) Bool)

(assert (=> b!705980 (= res!469974 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!705981 () Bool)

(declare-fun res!469966 () Bool)

(assert (=> b!705981 (=> (not res!469966) (not e!397804))))

(declare-fun subseq!355 (List!13368 List!13368) Bool)

(assert (=> b!705981 (= res!469966 (subseq!355 acc!652 newAcc!49))))

(declare-fun b!705982 () Bool)

(declare-fun res!469975 () Bool)

(assert (=> b!705982 (=> (not res!469975) (not e!397804))))

(assert (=> b!705982 (= res!469975 (not (contains!3911 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!469967 () Bool)

(assert (=> start!62608 (=> (not res!469967) (not e!397804))))

(assert (=> start!62608 (= res!469967 (and (bvslt (size!19657 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19657 a!3591))))))

(assert (=> start!62608 e!397804))

(assert (=> start!62608 true))

(declare-fun array_inv!15048 (array!40243) Bool)

(assert (=> start!62608 (array_inv!15048 a!3591)))

(declare-fun b!705983 () Bool)

(declare-fun res!469972 () Bool)

(assert (=> b!705983 (=> (not res!469972) (not e!397804))))

(assert (=> b!705983 (= res!469972 (not (contains!3911 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!705984 () Bool)

(declare-fun res!469968 () Bool)

(assert (=> b!705984 (=> (not res!469968) (not e!397804))))

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!705984 (= res!469968 (validKeyInArray!0 k!2824))))

(declare-fun b!705985 () Bool)

(declare-fun res!469970 () Bool)

(assert (=> b!705985 (=> (not res!469970) (not e!397804))))

(assert (=> b!705985 (= res!469970 (contains!3911 newAcc!49 k!2824))))

(declare-fun b!705986 () Bool)

(declare-fun res!469963 () Bool)

(assert (=> b!705986 (=> (not res!469963) (not e!397804))))

(assert (=> b!705986 (= res!469963 (not (contains!3911 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!705987 () Bool)

(declare-fun res!469971 () Bool)

(assert (=> b!705987 (=> (not res!469971) (not e!397804))))

(assert (=> b!705987 (= res!469971 (not (contains!3911 acc!652 k!2824)))))

(declare-fun b!705988 () Bool)

(assert (=> b!705988 (= e!397804 (and (bvsge (bvadd #b00000000000000000000000000000001 from!2969) (size!19657 a!3591)) (bvsgt from!2969 (size!19657 a!3591))))))

(declare-fun b!705989 () Bool)

(declare-fun res!469973 () Bool)

(assert (=> b!705989 (=> (not res!469973) (not e!397804))))

(declare-fun arrayContainsKey!0 (array!40243 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!705989 (= res!469973 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!705990 () Bool)

(declare-fun res!469964 () Bool)

(assert (=> b!705990 (=> (not res!469964) (not e!397804))))

(declare-fun noDuplicate!1158 (List!13368) Bool)

(assert (=> b!705990 (= res!469964 (noDuplicate!1158 newAcc!49))))

(declare-fun b!705991 () Bool)

(declare-fun res!469976 () Bool)

(assert (=> b!705991 (=> (not res!469976) (not e!397804))))

(declare-fun -!320 (List!13368 (_ BitVec 64)) List!13368)

(assert (=> b!705991 (= res!469976 (= (-!320 newAcc!49 k!2824) acc!652))))

(declare-fun b!705992 () Bool)

(declare-fun res!469965 () Bool)

(assert (=> b!705992 (=> (not res!469965) (not e!397804))))

(assert (=> b!705992 (= res!469965 (noDuplicate!1158 acc!652))))

(assert (= (and start!62608 res!469967) b!705992))

(assert (= (and b!705992 res!469965) b!705990))

(assert (= (and b!705990 res!469964) b!705982))

(assert (= (and b!705982 res!469975) b!705983))

(assert (= (and b!705983 res!469972) b!705989))

(assert (= (and b!705989 res!469973) b!705987))

(assert (= (and b!705987 res!469971) b!705984))

(assert (= (and b!705984 res!469968) b!705980))

(assert (= (and b!705980 res!469974) b!705981))

(assert (= (and b!705981 res!469966) b!705985))

(assert (= (and b!705985 res!469970) b!705991))

(assert (= (and b!705991 res!469976) b!705979))

(assert (= (and b!705979 res!469969) b!705986))

(assert (= (and b!705986 res!469963) b!705988))

(declare-fun m!664007 () Bool)

(assert (=> b!705985 m!664007))

(declare-fun m!664009 () Bool)

(assert (=> start!62608 m!664009))

(declare-fun m!664011 () Bool)

(assert (=> b!705989 m!664011))

(declare-fun m!664013 () Bool)

(assert (=> b!705980 m!664013))

(declare-fun m!664015 () Bool)

(assert (=> b!705982 m!664015))

(declare-fun m!664017 () Bool)

(assert (=> b!705986 m!664017))

(declare-fun m!664019 () Bool)

(assert (=> b!705983 m!664019))

(declare-fun m!664021 () Bool)

(assert (=> b!705979 m!664021))

(declare-fun m!664023 () Bool)

(assert (=> b!705991 m!664023))

(declare-fun m!664025 () Bool)

(assert (=> b!705981 m!664025))

(declare-fun m!664027 () Bool)

(assert (=> b!705987 m!664027))

(declare-fun m!664029 () Bool)

(assert (=> b!705990 m!664029))

(declare-fun m!664031 () Bool)

(assert (=> b!705984 m!664031))

(declare-fun m!664033 () Bool)

(assert (=> b!705992 m!664033))

(push 1)

(assert (not b!705990))

(assert (not b!705992))

(assert (not b!705982))

(assert (not b!705984))

(assert (not b!705986))

(assert (not b!705991))

(assert (not b!705985))

(assert (not b!705983))

(assert (not start!62608))

(assert (not b!705981))

(assert (not b!705979))

(assert (not b!705989))

(assert (not b!705987))

(assert (not b!705980))

(check-sat)

(pop 1)

(push 1)

(check-sat)

