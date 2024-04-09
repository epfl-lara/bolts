; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!61782 () Bool)

(assert start!61782)

(declare-fun b!690959 () Bool)

(declare-fun res!455525 () Bool)

(declare-fun e!393303 () Bool)

(assert (=> b!690959 (=> (not res!455525) (not e!393303))))

(declare-fun i!1382 () (_ BitVec 32))

(declare-datatypes ((array!39759 0))(
  ( (array!39760 (arr!19044 (Array (_ BitVec 32) (_ BitVec 64))) (size!19427 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39759)

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!690959 (= res!455525 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19427 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!690960 () Bool)

(declare-fun res!455521 () Bool)

(assert (=> b!690960 (=> (not res!455521) (not e!393303))))

(declare-fun e!393306 () Bool)

(assert (=> b!690960 (= res!455521 e!393306)))

(declare-fun res!455515 () Bool)

(assert (=> b!690960 (=> res!455515 e!393306)))

(declare-fun e!393304 () Bool)

(assert (=> b!690960 (= res!455515 e!393304)))

(declare-fun res!455520 () Bool)

(assert (=> b!690960 (=> (not res!455520) (not e!393304))))

(assert (=> b!690960 (= res!455520 (bvsgt from!3004 i!1382))))

(declare-fun b!690961 () Bool)

(declare-fun res!455518 () Bool)

(assert (=> b!690961 (=> (not res!455518) (not e!393303))))

(declare-datatypes ((List!13138 0))(
  ( (Nil!13135) (Cons!13134 (h!14179 (_ BitVec 64)) (t!19413 List!13138)) )
))
(declare-fun acc!681 () List!13138)

(declare-fun noDuplicate!928 (List!13138) Bool)

(assert (=> b!690961 (= res!455518 (noDuplicate!928 acc!681))))

(declare-fun b!690962 () Bool)

(declare-fun e!393305 () Bool)

(assert (=> b!690962 (= e!393306 e!393305)))

(declare-fun res!455517 () Bool)

(assert (=> b!690962 (=> (not res!455517) (not e!393305))))

(assert (=> b!690962 (= res!455517 (bvsle from!3004 i!1382))))

(declare-fun b!690963 () Bool)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3681 (List!13138 (_ BitVec 64)) Bool)

(assert (=> b!690963 (= e!393304 (contains!3681 acc!681 k!2843))))

(declare-fun b!690964 () Bool)

(declare-fun res!455519 () Bool)

(assert (=> b!690964 (=> (not res!455519) (not e!393303))))

(assert (=> b!690964 (= res!455519 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19427 a!3626))))))

(declare-fun b!690965 () Bool)

(declare-fun res!455526 () Bool)

(assert (=> b!690965 (=> (not res!455526) (not e!393303))))

(assert (=> b!690965 (= res!455526 (not (contains!3681 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!690966 () Bool)

(assert (=> b!690966 (= e!393305 (not (contains!3681 acc!681 k!2843)))))

(declare-fun res!455514 () Bool)

(assert (=> start!61782 (=> (not res!455514) (not e!393303))))

(assert (=> start!61782 (= res!455514 (and (bvslt (size!19427 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19427 a!3626))))))

(assert (=> start!61782 e!393303))

(assert (=> start!61782 true))

(declare-fun array_inv!14818 (array!39759) Bool)

(assert (=> start!61782 (array_inv!14818 a!3626)))

(declare-fun b!690967 () Bool)

(declare-fun res!455513 () Bool)

(assert (=> b!690967 (=> (not res!455513) (not e!393303))))

(declare-fun arrayNoDuplicates!0 (array!39759 (_ BitVec 32) List!13138) Bool)

(assert (=> b!690967 (= res!455513 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!690968 () Bool)

(assert (=> b!690968 (= e!393303 (not true))))

(assert (=> b!690968 false))

(declare-datatypes ((Unit!24352 0))(
  ( (Unit!24353) )
))
(declare-fun lt!316380 () Unit!24352)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39759 (_ BitVec 64) (_ BitVec 32)) Unit!24352)

(assert (=> b!690968 (= lt!316380 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(declare-fun arrayContainsKey!0 (array!39759 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!690968 (arrayContainsKey!0 a!3626 k!2843 from!3004)))

(declare-fun b!690969 () Bool)

(declare-fun res!455528 () Bool)

(assert (=> b!690969 (=> (not res!455528) (not e!393303))))

(assert (=> b!690969 (= res!455528 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!690970 () Bool)

(declare-fun res!455523 () Bool)

(assert (=> b!690970 (=> (not res!455523) (not e!393303))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!690970 (= res!455523 (validKeyInArray!0 (select (arr!19044 a!3626) from!3004)))))

(declare-fun b!690971 () Bool)

(declare-fun res!455516 () Bool)

(assert (=> b!690971 (=> (not res!455516) (not e!393303))))

(assert (=> b!690971 (= res!455516 (not (contains!3681 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!690972 () Bool)

(declare-fun res!455527 () Bool)

(assert (=> b!690972 (=> (not res!455527) (not e!393303))))

(assert (=> b!690972 (= res!455527 (= (select (arr!19044 a!3626) from!3004) k!2843))))

(declare-fun b!690973 () Bool)

(declare-fun res!455524 () Bool)

(assert (=> b!690973 (=> (not res!455524) (not e!393303))))

(assert (=> b!690973 (= res!455524 (validKeyInArray!0 k!2843))))

(declare-fun b!690974 () Bool)

(declare-fun res!455522 () Bool)

(assert (=> b!690974 (=> (not res!455522) (not e!393303))))

(assert (=> b!690974 (= res!455522 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13135))))

(assert (= (and start!61782 res!455514) b!690961))

(assert (= (and b!690961 res!455518) b!690971))

(assert (= (and b!690971 res!455516) b!690965))

(assert (= (and b!690965 res!455526) b!690960))

(assert (= (and b!690960 res!455520) b!690963))

(assert (= (and b!690960 (not res!455515)) b!690962))

(assert (= (and b!690962 res!455517) b!690966))

(assert (= (and b!690960 res!455521) b!690974))

(assert (= (and b!690974 res!455522) b!690967))

(assert (= (and b!690967 res!455513) b!690964))

(assert (= (and b!690964 res!455519) b!690973))

(assert (= (and b!690973 res!455524) b!690969))

(assert (= (and b!690969 res!455528) b!690959))

(assert (= (and b!690959 res!455525) b!690970))

(assert (= (and b!690970 res!455523) b!690972))

(assert (= (and b!690972 res!455527) b!690968))

(declare-fun m!654183 () Bool)

(assert (=> b!690972 m!654183))

(declare-fun m!654185 () Bool)

(assert (=> b!690974 m!654185))

(declare-fun m!654187 () Bool)

(assert (=> b!690969 m!654187))

(declare-fun m!654189 () Bool)

(assert (=> b!690963 m!654189))

(assert (=> b!690970 m!654183))

(assert (=> b!690970 m!654183))

(declare-fun m!654191 () Bool)

(assert (=> b!690970 m!654191))

(declare-fun m!654193 () Bool)

(assert (=> b!690968 m!654193))

(declare-fun m!654195 () Bool)

(assert (=> b!690968 m!654195))

(declare-fun m!654197 () Bool)

(assert (=> start!61782 m!654197))

(declare-fun m!654199 () Bool)

(assert (=> b!690965 m!654199))

(declare-fun m!654201 () Bool)

(assert (=> b!690973 m!654201))

(declare-fun m!654203 () Bool)

(assert (=> b!690967 m!654203))

(declare-fun m!654205 () Bool)

(assert (=> b!690971 m!654205))

(declare-fun m!654207 () Bool)

(assert (=> b!690961 m!654207))

(assert (=> b!690966 m!654189))

(push 1)

(assert (not b!690973))

(assert (not b!690961))

(assert (not b!690966))

(assert (not b!690974))

(assert (not b!690963))

(assert (not b!690967))

(assert (not b!690965))

(assert (not b!690971))

(assert (not b!690969))

(assert (not b!690968))

(assert (not start!61782))

(assert (not b!690970))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

