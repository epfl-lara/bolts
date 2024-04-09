; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62236 () Bool)

(assert start!62236)

(declare-fun b!696957 () Bool)

(declare-fun res!461051 () Bool)

(declare-fun e!396230 () Bool)

(assert (=> b!696957 (=> (not res!461051) (not e!396230))))

(declare-datatypes ((array!39949 0))(
  ( (array!39950 (arr!19130 (Array (_ BitVec 32) (_ BitVec 64))) (size!19513 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39949)

(declare-datatypes ((List!13224 0))(
  ( (Nil!13221) (Cons!13220 (h!14265 (_ BitVec 64)) (t!19514 List!13224)) )
))
(declare-fun arrayNoDuplicates!0 (array!39949 (_ BitVec 32) List!13224) Bool)

(assert (=> b!696957 (= res!461051 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13221))))

(declare-fun b!696958 () Bool)

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!696958 (= e!396230 (bvsge (bvsub (size!19513 a!3626) (bvadd #b00000000000000000000000000000001 from!3004)) (bvsub (size!19513 a!3626) from!3004)))))

(declare-fun b!696959 () Bool)

(declare-fun e!396228 () Bool)

(declare-fun acc!681 () List!13224)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3767 (List!13224 (_ BitVec 64)) Bool)

(assert (=> b!696959 (= e!396228 (contains!3767 acc!681 k!2843))))

(declare-fun b!696960 () Bool)

(declare-fun e!396225 () Bool)

(assert (=> b!696960 (= e!396225 (not (contains!3767 acc!681 k!2843)))))

(declare-fun b!696961 () Bool)

(declare-fun res!461067 () Bool)

(assert (=> b!696961 (=> (not res!461067) (not e!396230))))

(declare-fun noDuplicate!1014 (List!13224) Bool)

(assert (=> b!696961 (= res!461067 (noDuplicate!1014 acc!681))))

(declare-fun b!696962 () Bool)

(declare-fun res!461053 () Bool)

(assert (=> b!696962 (=> (not res!461053) (not e!396230))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!696962 (= res!461053 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19513 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!696963 () Bool)

(declare-fun e!396226 () Bool)

(assert (=> b!696963 (= e!396226 e!396225)))

(declare-fun res!461069 () Bool)

(assert (=> b!696963 (=> (not res!461069) (not e!396225))))

(assert (=> b!696963 (= res!461069 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!696964 () Bool)

(declare-fun res!461058 () Bool)

(assert (=> b!696964 (=> (not res!461058) (not e!396230))))

(assert (=> b!696964 (= res!461058 e!396226)))

(declare-fun res!461054 () Bool)

(assert (=> b!696964 (=> res!461054 e!396226)))

(declare-fun e!396229 () Bool)

(assert (=> b!696964 (= res!461054 e!396229)))

(declare-fun res!461066 () Bool)

(assert (=> b!696964 (=> (not res!461066) (not e!396229))))

(assert (=> b!696964 (= res!461066 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!696965 () Bool)

(assert (=> b!696965 (= e!396229 (contains!3767 acc!681 k!2843))))

(declare-fun b!696966 () Bool)

(declare-fun res!461050 () Bool)

(assert (=> b!696966 (=> (not res!461050) (not e!396230))))

(assert (=> b!696966 (= res!461050 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19513 a!3626))))))

(declare-fun b!696967 () Bool)

(declare-fun res!461056 () Bool)

(assert (=> b!696967 (=> (not res!461056) (not e!396230))))

(assert (=> b!696967 (= res!461056 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!696968 () Bool)

(declare-fun res!461059 () Bool)

(assert (=> b!696968 (=> (not res!461059) (not e!396230))))

(declare-fun e!396231 () Bool)

(assert (=> b!696968 (= res!461059 e!396231)))

(declare-fun res!461057 () Bool)

(assert (=> b!696968 (=> res!461057 e!396231)))

(assert (=> b!696968 (= res!461057 e!396228)))

(declare-fun res!461052 () Bool)

(assert (=> b!696968 (=> (not res!461052) (not e!396228))))

(assert (=> b!696968 (= res!461052 (bvsgt from!3004 i!1382))))

(declare-fun b!696969 () Bool)

(declare-fun e!396232 () Bool)

(assert (=> b!696969 (= e!396232 (not (contains!3767 acc!681 k!2843)))))

(declare-fun b!696970 () Bool)

(declare-fun res!461063 () Bool)

(assert (=> b!696970 (=> (not res!461063) (not e!396230))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!696970 (= res!461063 (validKeyInArray!0 k!2843))))

(declare-fun b!696971 () Bool)

(assert (=> b!696971 (= e!396231 e!396232)))

(declare-fun res!461068 () Bool)

(assert (=> b!696971 (=> (not res!461068) (not e!396232))))

(assert (=> b!696971 (= res!461068 (bvsle from!3004 i!1382))))

(declare-fun b!696972 () Bool)

(declare-fun res!461055 () Bool)

(assert (=> b!696972 (=> (not res!461055) (not e!396230))))

(assert (=> b!696972 (= res!461055 (not (contains!3767 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!696973 () Bool)

(declare-fun res!461049 () Bool)

(assert (=> b!696973 (=> (not res!461049) (not e!396230))))

(declare-fun arrayContainsKey!0 (array!39949 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!696973 (= res!461049 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!696974 () Bool)

(declare-fun res!461061 () Bool)

(assert (=> b!696974 (=> (not res!461061) (not e!396230))))

(assert (=> b!696974 (= res!461061 (not (validKeyInArray!0 (select (arr!19130 a!3626) from!3004))))))

(declare-fun b!696975 () Bool)

(declare-fun res!461060 () Bool)

(assert (=> b!696975 (=> (not res!461060) (not e!396230))))

(assert (=> b!696975 (= res!461060 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681))))

(declare-fun b!696976 () Bool)

(declare-fun res!461064 () Bool)

(assert (=> b!696976 (=> (not res!461064) (not e!396230))))

(assert (=> b!696976 (= res!461064 (not (contains!3767 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!696977 () Bool)

(declare-fun res!461065 () Bool)

(assert (=> b!696977 (=> (not res!461065) (not e!396230))))

(assert (=> b!696977 (= res!461065 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun res!461062 () Bool)

(assert (=> start!62236 (=> (not res!461062) (not e!396230))))

(assert (=> start!62236 (= res!461062 (and (bvslt (size!19513 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19513 a!3626))))))

(assert (=> start!62236 e!396230))

(assert (=> start!62236 true))

(declare-fun array_inv!14904 (array!39949) Bool)

(assert (=> start!62236 (array_inv!14904 a!3626)))

(assert (= (and start!62236 res!461062) b!696961))

(assert (= (and b!696961 res!461067) b!696976))

(assert (= (and b!696976 res!461064) b!696972))

(assert (= (and b!696972 res!461055) b!696968))

(assert (= (and b!696968 res!461052) b!696959))

(assert (= (and b!696968 (not res!461057)) b!696971))

(assert (= (and b!696971 res!461068) b!696969))

(assert (= (and b!696968 res!461059) b!696957))

(assert (= (and b!696957 res!461051) b!696967))

(assert (= (and b!696967 res!461056) b!696966))

(assert (= (and b!696966 res!461050) b!696970))

(assert (= (and b!696970 res!461063) b!696973))

(assert (= (and b!696973 res!461049) b!696962))

(assert (= (and b!696962 res!461053) b!696974))

(assert (= (and b!696974 res!461061) b!696977))

(assert (= (and b!696977 res!461065) b!696964))

(assert (= (and b!696964 res!461066) b!696965))

(assert (= (and b!696964 (not res!461054)) b!696963))

(assert (= (and b!696963 res!461069) b!696960))

(assert (= (and b!696964 res!461058) b!696975))

(assert (= (and b!696975 res!461060) b!696958))

(declare-fun m!657585 () Bool)

(assert (=> b!696970 m!657585))

(declare-fun m!657587 () Bool)

(assert (=> b!696974 m!657587))

(assert (=> b!696974 m!657587))

(declare-fun m!657589 () Bool)

(assert (=> b!696974 m!657589))

(declare-fun m!657591 () Bool)

(assert (=> b!696976 m!657591))

(declare-fun m!657593 () Bool)

(assert (=> b!696975 m!657593))

(declare-fun m!657595 () Bool)

(assert (=> b!696969 m!657595))

(declare-fun m!657597 () Bool)

(assert (=> b!696972 m!657597))

(assert (=> b!696965 m!657595))

(declare-fun m!657599 () Bool)

(assert (=> b!696973 m!657599))

(declare-fun m!657601 () Bool)

(assert (=> start!62236 m!657601))

(declare-fun m!657603 () Bool)

(assert (=> b!696967 m!657603))

(assert (=> b!696959 m!657595))

(assert (=> b!696960 m!657595))

(declare-fun m!657605 () Bool)

(assert (=> b!696957 m!657605))

(declare-fun m!657607 () Bool)

(assert (=> b!696961 m!657607))

(push 1)

(assert (not b!696960))

(assert (not b!696967))

(assert (not b!696970))

(assert (not b!696976))

(assert (not b!696961))

(assert (not b!696973))

(assert (not b!696975))

(assert (not b!696957))

(assert (not b!696965))

(assert (not start!62236))

(assert (not b!696969))

(assert (not b!696974))

(assert (not b!696972))

(assert (not b!696959))

(check-sat)

(pop 1)

(push 1)

(check-sat)

