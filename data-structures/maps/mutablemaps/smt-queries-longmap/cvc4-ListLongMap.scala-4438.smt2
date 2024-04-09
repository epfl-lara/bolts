; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!61714 () Bool)

(assert start!61714)

(declare-fun b!690066 () Bool)

(declare-fun res!454652 () Bool)

(declare-fun e!392945 () Bool)

(assert (=> b!690066 (=> (not res!454652) (not e!392945))))

(declare-fun e!392946 () Bool)

(assert (=> b!690066 (= res!454652 e!392946)))

(declare-fun res!454651 () Bool)

(assert (=> b!690066 (=> res!454651 e!392946)))

(declare-fun e!392943 () Bool)

(assert (=> b!690066 (= res!454651 e!392943)))

(declare-fun res!454649 () Bool)

(assert (=> b!690066 (=> (not res!454649) (not e!392943))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!690066 (= res!454649 (bvsgt from!3004 i!1382))))

(declare-fun b!690067 () Bool)

(declare-fun res!454650 () Bool)

(assert (=> b!690067 (=> (not res!454650) (not e!392945))))

(declare-datatypes ((array!39724 0))(
  ( (array!39725 (arr!19028 (Array (_ BitVec 32) (_ BitVec 64))) (size!19411 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39724)

(declare-datatypes ((List!13122 0))(
  ( (Nil!13119) (Cons!13118 (h!14163 (_ BitVec 64)) (t!19397 List!13122)) )
))
(declare-fun arrayNoDuplicates!0 (array!39724 (_ BitVec 32) List!13122) Bool)

(assert (=> b!690067 (= res!454650 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13119))))

(declare-fun b!690068 () Bool)

(declare-fun res!454646 () Bool)

(assert (=> b!690068 (=> (not res!454646) (not e!392945))))

(declare-fun acc!681 () List!13122)

(declare-fun contains!3665 (List!13122 (_ BitVec 64)) Bool)

(assert (=> b!690068 (= res!454646 (not (contains!3665 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!690070 () Bool)

(declare-fun k!2843 () (_ BitVec 64))

(assert (=> b!690070 (= e!392943 (contains!3665 acc!681 k!2843))))

(declare-fun b!690071 () Bool)

(assert (=> b!690071 (= e!392945 false)))

(declare-fun lt!316362 () Bool)

(assert (=> b!690071 (= lt!316362 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!690072 () Bool)

(declare-fun res!454645 () Bool)

(assert (=> b!690072 (=> (not res!454645) (not e!392945))))

(declare-fun noDuplicate!912 (List!13122) Bool)

(assert (=> b!690072 (= res!454645 (noDuplicate!912 acc!681))))

(declare-fun b!690073 () Bool)

(declare-fun res!454644 () Bool)

(assert (=> b!690073 (=> (not res!454644) (not e!392945))))

(assert (=> b!690073 (= res!454644 (not (contains!3665 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!690074 () Bool)

(declare-fun e!392944 () Bool)

(assert (=> b!690074 (= e!392944 (not (contains!3665 acc!681 k!2843)))))

(declare-fun res!454648 () Bool)

(assert (=> start!61714 (=> (not res!454648) (not e!392945))))

(assert (=> start!61714 (= res!454648 (and (bvslt (size!19411 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19411 a!3626))))))

(assert (=> start!61714 e!392945))

(assert (=> start!61714 true))

(declare-fun array_inv!14802 (array!39724) Bool)

(assert (=> start!61714 (array_inv!14802 a!3626)))

(declare-fun b!690069 () Bool)

(assert (=> b!690069 (= e!392946 e!392944)))

(declare-fun res!454647 () Bool)

(assert (=> b!690069 (=> (not res!454647) (not e!392944))))

(assert (=> b!690069 (= res!454647 (bvsle from!3004 i!1382))))

(assert (= (and start!61714 res!454648) b!690072))

(assert (= (and b!690072 res!454645) b!690068))

(assert (= (and b!690068 res!454646) b!690073))

(assert (= (and b!690073 res!454644) b!690066))

(assert (= (and b!690066 res!454649) b!690070))

(assert (= (and b!690066 (not res!454651)) b!690069))

(assert (= (and b!690069 res!454647) b!690074))

(assert (= (and b!690066 res!454652) b!690067))

(assert (= (and b!690067 res!454650) b!690071))

(declare-fun m!653707 () Bool)

(assert (=> start!61714 m!653707))

(declare-fun m!653709 () Bool)

(assert (=> b!690073 m!653709))

(declare-fun m!653711 () Bool)

(assert (=> b!690067 m!653711))

(declare-fun m!653713 () Bool)

(assert (=> b!690074 m!653713))

(declare-fun m!653715 () Bool)

(assert (=> b!690071 m!653715))

(declare-fun m!653717 () Bool)

(assert (=> b!690068 m!653717))

(assert (=> b!690070 m!653713))

(declare-fun m!653719 () Bool)

(assert (=> b!690072 m!653719))

(push 1)

(assert (not b!690074))

(assert (not b!690072))

(assert (not b!690071))

(assert (not b!690067))

(assert (not b!690073))

(assert (not b!690070))

(assert (not start!61714))

(assert (not b!690068))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

