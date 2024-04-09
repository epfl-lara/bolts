; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62232 () Bool)

(assert start!62232)

(declare-fun b!696831 () Bool)

(declare-fun res!460932 () Bool)

(declare-fun e!396178 () Bool)

(assert (=> b!696831 (=> (not res!460932) (not e!396178))))

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!696831 (= res!460932 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun b!696832 () Bool)

(declare-fun res!460939 () Bool)

(assert (=> b!696832 (=> (not res!460939) (not e!396178))))

(declare-datatypes ((List!13222 0))(
  ( (Nil!13219) (Cons!13218 (h!14263 (_ BitVec 64)) (t!19512 List!13222)) )
))
(declare-fun acc!681 () List!13222)

(declare-fun noDuplicate!1012 (List!13222) Bool)

(assert (=> b!696832 (= res!460939 (noDuplicate!1012 acc!681))))

(declare-fun b!696833 () Bool)

(declare-fun res!460938 () Bool)

(assert (=> b!696833 (=> (not res!460938) (not e!396178))))

(declare-fun contains!3765 (List!13222 (_ BitVec 64)) Bool)

(assert (=> b!696833 (= res!460938 (not (contains!3765 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!696834 () Bool)

(declare-fun res!460936 () Bool)

(assert (=> b!696834 (=> (not res!460936) (not e!396178))))

(declare-datatypes ((array!39945 0))(
  ( (array!39946 (arr!19128 (Array (_ BitVec 32) (_ BitVec 64))) (size!19511 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39945)

(declare-fun arrayNoDuplicates!0 (array!39945 (_ BitVec 32) List!13222) Bool)

(assert (=> b!696834 (= res!460936 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13219))))

(declare-fun b!696835 () Bool)

(declare-fun e!396179 () Bool)

(declare-fun e!396181 () Bool)

(assert (=> b!696835 (= e!396179 e!396181)))

(declare-fun res!460931 () Bool)

(assert (=> b!696835 (=> (not res!460931) (not e!396181))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!696835 (= res!460931 (bvsle from!3004 i!1382))))

(declare-fun b!696836 () Bool)

(declare-fun res!460925 () Bool)

(assert (=> b!696836 (=> (not res!460925) (not e!396178))))

(assert (=> b!696836 (= res!460925 (not (contains!3765 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!696837 () Bool)

(declare-fun res!460940 () Bool)

(assert (=> b!696837 (=> (not res!460940) (not e!396178))))

(assert (=> b!696837 (= res!460940 e!396179)))

(declare-fun res!460926 () Bool)

(assert (=> b!696837 (=> res!460926 e!396179)))

(declare-fun e!396177 () Bool)

(assert (=> b!696837 (= res!460926 e!396177)))

(declare-fun res!460935 () Bool)

(assert (=> b!696837 (=> (not res!460935) (not e!396177))))

(assert (=> b!696837 (= res!460935 (bvsgt from!3004 i!1382))))

(declare-fun b!696838 () Bool)

(declare-fun e!396183 () Bool)

(declare-fun k!2843 () (_ BitVec 64))

(assert (=> b!696838 (= e!396183 (contains!3765 acc!681 k!2843))))

(declare-fun b!696839 () Bool)

(declare-fun res!460934 () Bool)

(assert (=> b!696839 (=> (not res!460934) (not e!396178))))

(declare-fun e!396184 () Bool)

(assert (=> b!696839 (= res!460934 e!396184)))

(declare-fun res!460928 () Bool)

(assert (=> b!696839 (=> res!460928 e!396184)))

(assert (=> b!696839 (= res!460928 e!396183)))

(declare-fun res!460942 () Bool)

(assert (=> b!696839 (=> (not res!460942) (not e!396183))))

(assert (=> b!696839 (= res!460942 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!696840 () Bool)

(declare-fun res!460930 () Bool)

(assert (=> b!696840 (=> (not res!460930) (not e!396178))))

(declare-fun arrayContainsKey!0 (array!39945 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!696840 (= res!460930 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!696841 () Bool)

(assert (=> b!696841 (= e!396178 (bvsge (bvsub (size!19511 a!3626) (bvadd #b00000000000000000000000000000001 from!3004)) (bvsub (size!19511 a!3626) from!3004)))))

(declare-fun b!696842 () Bool)

(declare-fun res!460933 () Bool)

(assert (=> b!696842 (=> (not res!460933) (not e!396178))))

(assert (=> b!696842 (= res!460933 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19511 a!3626))))))

(declare-fun b!696843 () Bool)

(assert (=> b!696843 (= e!396177 (contains!3765 acc!681 k!2843))))

(declare-fun b!696844 () Bool)

(declare-fun res!460941 () Bool)

(assert (=> b!696844 (=> (not res!460941) (not e!396178))))

(assert (=> b!696844 (= res!460941 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!696845 () Bool)

(declare-fun e!396182 () Bool)

(assert (=> b!696845 (= e!396182 (not (contains!3765 acc!681 k!2843)))))

(declare-fun b!696846 () Bool)

(declare-fun res!460929 () Bool)

(assert (=> b!696846 (=> (not res!460929) (not e!396178))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!696846 (= res!460929 (validKeyInArray!0 k!2843))))

(declare-fun b!696847 () Bool)

(assert (=> b!696847 (= e!396181 (not (contains!3765 acc!681 k!2843)))))

(declare-fun res!460923 () Bool)

(assert (=> start!62232 (=> (not res!460923) (not e!396178))))

(assert (=> start!62232 (= res!460923 (and (bvslt (size!19511 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19511 a!3626))))))

(assert (=> start!62232 e!396178))

(assert (=> start!62232 true))

(declare-fun array_inv!14902 (array!39945) Bool)

(assert (=> start!62232 (array_inv!14902 a!3626)))

(declare-fun b!696848 () Bool)

(declare-fun res!460927 () Bool)

(assert (=> b!696848 (=> (not res!460927) (not e!396178))))

(assert (=> b!696848 (= res!460927 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19511 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!696849 () Bool)

(declare-fun res!460937 () Bool)

(assert (=> b!696849 (=> (not res!460937) (not e!396178))))

(assert (=> b!696849 (= res!460937 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681))))

(declare-fun b!696850 () Bool)

(assert (=> b!696850 (= e!396184 e!396182)))

(declare-fun res!460943 () Bool)

(assert (=> b!696850 (=> (not res!460943) (not e!396182))))

(assert (=> b!696850 (= res!460943 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!696851 () Bool)

(declare-fun res!460924 () Bool)

(assert (=> b!696851 (=> (not res!460924) (not e!396178))))

(assert (=> b!696851 (= res!460924 (not (validKeyInArray!0 (select (arr!19128 a!3626) from!3004))))))

(assert (= (and start!62232 res!460923) b!696832))

(assert (= (and b!696832 res!460939) b!696836))

(assert (= (and b!696836 res!460925) b!696833))

(assert (= (and b!696833 res!460938) b!696837))

(assert (= (and b!696837 res!460935) b!696843))

(assert (= (and b!696837 (not res!460926)) b!696835))

(assert (= (and b!696835 res!460931) b!696847))

(assert (= (and b!696837 res!460940) b!696834))

(assert (= (and b!696834 res!460936) b!696844))

(assert (= (and b!696844 res!460941) b!696842))

(assert (= (and b!696842 res!460933) b!696846))

(assert (= (and b!696846 res!460929) b!696840))

(assert (= (and b!696840 res!460930) b!696848))

(assert (= (and b!696848 res!460927) b!696851))

(assert (= (and b!696851 res!460924) b!696831))

(assert (= (and b!696831 res!460932) b!696839))

(assert (= (and b!696839 res!460942) b!696838))

(assert (= (and b!696839 (not res!460928)) b!696850))

(assert (= (and b!696850 res!460943) b!696845))

(assert (= (and b!696839 res!460934) b!696849))

(assert (= (and b!696849 res!460937) b!696841))

(declare-fun m!657537 () Bool)

(assert (=> b!696832 m!657537))

(declare-fun m!657539 () Bool)

(assert (=> b!696840 m!657539))

(declare-fun m!657541 () Bool)

(assert (=> start!62232 m!657541))

(declare-fun m!657543 () Bool)

(assert (=> b!696849 m!657543))

(declare-fun m!657545 () Bool)

(assert (=> b!696834 m!657545))

(declare-fun m!657547 () Bool)

(assert (=> b!696847 m!657547))

(declare-fun m!657549 () Bool)

(assert (=> b!696844 m!657549))

(declare-fun m!657551 () Bool)

(assert (=> b!696851 m!657551))

(assert (=> b!696851 m!657551))

(declare-fun m!657553 () Bool)

(assert (=> b!696851 m!657553))

(assert (=> b!696843 m!657547))

(declare-fun m!657555 () Bool)

(assert (=> b!696846 m!657555))

(declare-fun m!657557 () Bool)

(assert (=> b!696833 m!657557))

(assert (=> b!696838 m!657547))

(assert (=> b!696845 m!657547))

(declare-fun m!657559 () Bool)

(assert (=> b!696836 m!657559))

(push 1)

(assert (not b!696836))

(assert (not b!696832))

(assert (not b!696851))

(assert (not b!696846))

(assert (not b!696834))

(assert (not b!696845))

(assert (not start!62232))

(assert (not b!696849))

(assert (not b!696844))

(assert (not b!696838))

(assert (not b!696843))

(assert (not b!696833))

(assert (not b!696840))

(assert (not b!696847))

(check-sat)

(pop 1)

(push 1)

(check-sat)

