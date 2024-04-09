; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60156 () Bool)

(assert start!60156)

(declare-fun b!671033 () Bool)

(declare-fun res!437910 () Bool)

(declare-fun e!383549 () Bool)

(assert (=> b!671033 (=> (not res!437910) (not e!383549))))

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!671033 (= res!437910 (validKeyInArray!0 k!2843))))

(declare-fun b!671034 () Bool)

(declare-fun res!437903 () Bool)

(assert (=> b!671034 (=> (not res!437903) (not e!383549))))

(declare-datatypes ((array!39159 0))(
  ( (array!39160 (arr!18768 (Array (_ BitVec 32) (_ BitVec 64))) (size!19132 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39159)

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!671034 (= res!437903 (validKeyInArray!0 (select (arr!18768 a!3626) from!3004)))))

(declare-fun b!671035 () Bool)

(declare-fun res!437904 () Bool)

(assert (=> b!671035 (=> (not res!437904) (not e!383549))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!671035 (= res!437904 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19132 a!3626))))))

(declare-fun b!671036 () Bool)

(declare-fun res!437909 () Bool)

(assert (=> b!671036 (=> (not res!437909) (not e!383549))))

(declare-datatypes ((List!12862 0))(
  ( (Nil!12859) (Cons!12858 (h!13903 (_ BitVec 64)) (t!19098 List!12862)) )
))
(declare-fun acc!681 () List!12862)

(declare-fun contains!3405 (List!12862 (_ BitVec 64)) Bool)

(assert (=> b!671036 (= res!437909 (not (contains!3405 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!671037 () Bool)

(declare-fun res!437912 () Bool)

(assert (=> b!671037 (=> (not res!437912) (not e!383549))))

(assert (=> b!671037 (= res!437912 (not (contains!3405 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!671038 () Bool)

(declare-fun e!383547 () Bool)

(assert (=> b!671038 (= e!383547 (not (contains!3405 acc!681 k!2843)))))

(declare-fun b!671039 () Bool)

(declare-fun e!383550 () Bool)

(assert (=> b!671039 (= e!383550 e!383547)))

(declare-fun res!437915 () Bool)

(assert (=> b!671039 (=> (not res!437915) (not e!383547))))

(assert (=> b!671039 (= res!437915 (bvsle from!3004 i!1382))))

(declare-fun b!671040 () Bool)

(declare-fun res!437907 () Bool)

(assert (=> b!671040 (=> (not res!437907) (not e!383549))))

(assert (=> b!671040 (= res!437907 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19132 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!671041 () Bool)

(declare-fun res!437911 () Bool)

(assert (=> b!671041 (=> (not res!437911) (not e!383549))))

(declare-fun noDuplicate!652 (List!12862) Bool)

(assert (=> b!671041 (= res!437911 (noDuplicate!652 acc!681))))

(declare-fun b!671042 () Bool)

(declare-fun e!383551 () Bool)

(assert (=> b!671042 (= e!383551 (contains!3405 acc!681 k!2843))))

(declare-fun b!671043 () Bool)

(assert (=> b!671043 (= e!383549 (not true))))

(declare-fun arrayContainsKey!0 (array!39159 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!671043 (arrayContainsKey!0 a!3626 k!2843 from!3004)))

(declare-fun res!437905 () Bool)

(assert (=> start!60156 (=> (not res!437905) (not e!383549))))

(assert (=> start!60156 (= res!437905 (and (bvslt (size!19132 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19132 a!3626))))))

(assert (=> start!60156 e!383549))

(assert (=> start!60156 true))

(declare-fun array_inv!14542 (array!39159) Bool)

(assert (=> start!60156 (array_inv!14542 a!3626)))

(declare-fun b!671044 () Bool)

(declare-fun res!437916 () Bool)

(assert (=> b!671044 (=> (not res!437916) (not e!383549))))

(declare-fun arrayNoDuplicates!0 (array!39159 (_ BitVec 32) List!12862) Bool)

(assert (=> b!671044 (= res!437916 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12859))))

(declare-fun b!671045 () Bool)

(declare-fun res!437914 () Bool)

(assert (=> b!671045 (=> (not res!437914) (not e!383549))))

(assert (=> b!671045 (= res!437914 e!383550)))

(declare-fun res!437913 () Bool)

(assert (=> b!671045 (=> res!437913 e!383550)))

(assert (=> b!671045 (= res!437913 e!383551)))

(declare-fun res!437918 () Bool)

(assert (=> b!671045 (=> (not res!437918) (not e!383551))))

(assert (=> b!671045 (= res!437918 (bvsgt from!3004 i!1382))))

(declare-fun b!671046 () Bool)

(declare-fun res!437906 () Bool)

(assert (=> b!671046 (=> (not res!437906) (not e!383549))))

(assert (=> b!671046 (= res!437906 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!671047 () Bool)

(declare-fun res!437908 () Bool)

(assert (=> b!671047 (=> (not res!437908) (not e!383549))))

(assert (=> b!671047 (= res!437908 (= (select (arr!18768 a!3626) from!3004) k!2843))))

(declare-fun b!671048 () Bool)

(declare-fun res!437917 () Bool)

(assert (=> b!671048 (=> (not res!437917) (not e!383549))))

(assert (=> b!671048 (= res!437917 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(assert (= (and start!60156 res!437905) b!671041))

(assert (= (and b!671041 res!437911) b!671037))

(assert (= (and b!671037 res!437912) b!671036))

(assert (= (and b!671036 res!437909) b!671045))

(assert (= (and b!671045 res!437918) b!671042))

(assert (= (and b!671045 (not res!437913)) b!671039))

(assert (= (and b!671039 res!437915) b!671038))

(assert (= (and b!671045 res!437914) b!671044))

(assert (= (and b!671044 res!437916) b!671046))

(assert (= (and b!671046 res!437906) b!671035))

(assert (= (and b!671035 res!437904) b!671033))

(assert (= (and b!671033 res!437910) b!671048))

(assert (= (and b!671048 res!437917) b!671040))

(assert (= (and b!671040 res!437907) b!671034))

(assert (= (and b!671034 res!437903) b!671047))

(assert (= (and b!671047 res!437908) b!671043))

(declare-fun m!640683 () Bool)

(assert (=> b!671041 m!640683))

(declare-fun m!640685 () Bool)

(assert (=> b!671033 m!640685))

(declare-fun m!640687 () Bool)

(assert (=> b!671044 m!640687))

(declare-fun m!640689 () Bool)

(assert (=> b!671043 m!640689))

(declare-fun m!640691 () Bool)

(assert (=> b!671046 m!640691))

(declare-fun m!640693 () Bool)

(assert (=> b!671034 m!640693))

(assert (=> b!671034 m!640693))

(declare-fun m!640695 () Bool)

(assert (=> b!671034 m!640695))

(declare-fun m!640697 () Bool)

(assert (=> b!671038 m!640697))

(declare-fun m!640699 () Bool)

(assert (=> b!671048 m!640699))

(declare-fun m!640701 () Bool)

(assert (=> start!60156 m!640701))

(assert (=> b!671042 m!640697))

(declare-fun m!640703 () Bool)

(assert (=> b!671037 m!640703))

(assert (=> b!671047 m!640693))

(declare-fun m!640705 () Bool)

(assert (=> b!671036 m!640705))

(push 1)

(assert (not b!671044))

(assert (not b!671041))

(assert (not b!671033))

(assert (not b!671046))

(assert (not b!671037))

(assert (not b!671038))

(assert (not b!671048))

(assert (not b!671042))

(assert (not start!60156))

(assert (not b!671034))

(assert (not b!671036))

(assert (not b!671043))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

