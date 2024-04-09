; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62170 () Bool)

(assert start!62170)

(declare-fun b!695909 () Bool)

(declare-fun res!460041 () Bool)

(declare-fun e!395741 () Bool)

(assert (=> b!695909 (=> (not res!460041) (not e!395741))))

(declare-datatypes ((array!39916 0))(
  ( (array!39917 (arr!19115 (Array (_ BitVec 32) (_ BitVec 64))) (size!19498 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39916)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!39916 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!695909 (= res!460041 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!695910 () Bool)

(declare-fun res!460045 () Bool)

(assert (=> b!695910 (=> (not res!460045) (not e!395741))))

(declare-datatypes ((List!13209 0))(
  ( (Nil!13206) (Cons!13205 (h!14250 (_ BitVec 64)) (t!19499 List!13209)) )
))
(declare-fun acc!681 () List!13209)

(declare-fun noDuplicate!999 (List!13209) Bool)

(assert (=> b!695910 (= res!460045 (noDuplicate!999 acc!681))))

(declare-fun b!695911 () Bool)

(declare-fun res!460031 () Bool)

(assert (=> b!695911 (=> (not res!460031) (not e!395741))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!695911 (= res!460031 (not (validKeyInArray!0 (select (arr!19115 a!3626) from!3004))))))

(declare-fun b!695912 () Bool)

(declare-fun e!395746 () Bool)

(declare-fun contains!3752 (List!13209 (_ BitVec 64)) Bool)

(assert (=> b!695912 (= e!395746 (not (contains!3752 acc!681 k!2843)))))

(declare-fun b!695913 () Bool)

(declare-fun res!460040 () Bool)

(assert (=> b!695913 (=> (not res!460040) (not e!395741))))

(declare-fun arrayNoDuplicates!0 (array!39916 (_ BitVec 32) List!13209) Bool)

(assert (=> b!695913 (= res!460040 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13206))))

(declare-fun b!695914 () Bool)

(declare-fun res!460049 () Bool)

(assert (=> b!695914 (=> (not res!460049) (not e!395741))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!695914 (= res!460049 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19498 a!3626))))))

(declare-fun b!695915 () Bool)

(declare-fun res!460038 () Bool)

(assert (=> b!695915 (=> (not res!460038) (not e!395741))))

(assert (=> b!695915 (= res!460038 (not (contains!3752 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!695916 () Bool)

(declare-fun res!460043 () Bool)

(assert (=> b!695916 (=> (not res!460043) (not e!395741))))

(assert (=> b!695916 (= res!460043 (not (contains!3752 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!695917 () Bool)

(declare-fun e!395745 () Bool)

(assert (=> b!695917 (= e!395745 (contains!3752 acc!681 k!2843))))

(declare-fun b!695918 () Bool)

(declare-fun e!395740 () Bool)

(assert (=> b!695918 (= e!395740 e!395746)))

(declare-fun res!460044 () Bool)

(assert (=> b!695918 (=> (not res!460044) (not e!395746))))

(assert (=> b!695918 (= res!460044 (bvsle from!3004 i!1382))))

(declare-fun b!695919 () Bool)

(declare-fun res!460046 () Bool)

(assert (=> b!695919 (=> (not res!460046) (not e!395741))))

(assert (=> b!695919 (= res!460046 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!695920 () Bool)

(assert (=> b!695920 (= e!395741 false)))

(declare-fun lt!317034 () Bool)

(declare-fun e!395739 () Bool)

(assert (=> b!695920 (= lt!317034 e!395739)))

(declare-fun res!460036 () Bool)

(assert (=> b!695920 (=> res!460036 e!395739)))

(assert (=> b!695920 (= res!460036 e!395745)))

(declare-fun res!460037 () Bool)

(assert (=> b!695920 (=> (not res!460037) (not e!395745))))

(assert (=> b!695920 (= res!460037 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!695921 () Bool)

(declare-fun res!460032 () Bool)

(assert (=> b!695921 (=> (not res!460032) (not e!395741))))

(assert (=> b!695921 (= res!460032 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun b!695923 () Bool)

(declare-fun res!460033 () Bool)

(assert (=> b!695923 (=> (not res!460033) (not e!395741))))

(assert (=> b!695923 (= res!460033 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19498 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!695924 () Bool)

(declare-fun e!395744 () Bool)

(assert (=> b!695924 (= e!395739 e!395744)))

(declare-fun res!460034 () Bool)

(assert (=> b!695924 (=> (not res!460034) (not e!395744))))

(assert (=> b!695924 (= res!460034 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!695925 () Bool)

(assert (=> b!695925 (= e!395744 (not (contains!3752 acc!681 k!2843)))))

(declare-fun b!695926 () Bool)

(declare-fun res!460047 () Bool)

(assert (=> b!695926 (=> (not res!460047) (not e!395741))))

(assert (=> b!695926 (= res!460047 e!395740)))

(declare-fun res!460042 () Bool)

(assert (=> b!695926 (=> res!460042 e!395740)))

(declare-fun e!395743 () Bool)

(assert (=> b!695926 (= res!460042 e!395743)))

(declare-fun res!460048 () Bool)

(assert (=> b!695926 (=> (not res!460048) (not e!395743))))

(assert (=> b!695926 (= res!460048 (bvsgt from!3004 i!1382))))

(declare-fun b!695927 () Bool)

(assert (=> b!695927 (= e!395743 (contains!3752 acc!681 k!2843))))

(declare-fun res!460039 () Bool)

(assert (=> start!62170 (=> (not res!460039) (not e!395741))))

(assert (=> start!62170 (= res!460039 (and (bvslt (size!19498 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19498 a!3626))))))

(assert (=> start!62170 e!395741))

(assert (=> start!62170 true))

(declare-fun array_inv!14889 (array!39916) Bool)

(assert (=> start!62170 (array_inv!14889 a!3626)))

(declare-fun b!695922 () Bool)

(declare-fun res!460035 () Bool)

(assert (=> b!695922 (=> (not res!460035) (not e!395741))))

(assert (=> b!695922 (= res!460035 (validKeyInArray!0 k!2843))))

(assert (= (and start!62170 res!460039) b!695910))

(assert (= (and b!695910 res!460045) b!695915))

(assert (= (and b!695915 res!460038) b!695916))

(assert (= (and b!695916 res!460043) b!695926))

(assert (= (and b!695926 res!460048) b!695927))

(assert (= (and b!695926 (not res!460042)) b!695918))

(assert (= (and b!695918 res!460044) b!695912))

(assert (= (and b!695926 res!460047) b!695913))

(assert (= (and b!695913 res!460040) b!695919))

(assert (= (and b!695919 res!460046) b!695914))

(assert (= (and b!695914 res!460049) b!695922))

(assert (= (and b!695922 res!460035) b!695909))

(assert (= (and b!695909 res!460041) b!695923))

(assert (= (and b!695923 res!460033) b!695911))

(assert (= (and b!695911 res!460031) b!695921))

(assert (= (and b!695921 res!460032) b!695920))

(assert (= (and b!695920 res!460037) b!695917))

(assert (= (and b!695920 (not res!460036)) b!695924))

(assert (= (and b!695924 res!460034) b!695925))

(declare-fun m!657107 () Bool)

(assert (=> b!695927 m!657107))

(assert (=> b!695925 m!657107))

(declare-fun m!657109 () Bool)

(assert (=> b!695919 m!657109))

(declare-fun m!657111 () Bool)

(assert (=> b!695913 m!657111))

(declare-fun m!657113 () Bool)

(assert (=> b!695915 m!657113))

(declare-fun m!657115 () Bool)

(assert (=> b!695922 m!657115))

(declare-fun m!657117 () Bool)

(assert (=> start!62170 m!657117))

(declare-fun m!657119 () Bool)

(assert (=> b!695916 m!657119))

(declare-fun m!657121 () Bool)

(assert (=> b!695909 m!657121))

(assert (=> b!695917 m!657107))

(declare-fun m!657123 () Bool)

(assert (=> b!695911 m!657123))

(assert (=> b!695911 m!657123))

(declare-fun m!657125 () Bool)

(assert (=> b!695911 m!657125))

(assert (=> b!695912 m!657107))

(declare-fun m!657127 () Bool)

(assert (=> b!695910 m!657127))

(push 1)

(assert (not b!695910))

(assert (not b!695927))

(assert (not b!695911))

(assert (not start!62170))

(assert (not b!695917))

(assert (not b!695922))

(assert (not b!695919))

(assert (not b!695913))

(assert (not b!695915))

(assert (not b!695925))

(assert (not b!695909))

(assert (not b!695916))

(assert (not b!695912))

(check-sat)

