; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!61758 () Bool)

(assert start!61758)

(declare-fun b!690383 () Bool)

(declare-fun res!454952 () Bool)

(declare-fun e!393126 () Bool)

(assert (=> b!690383 (=> (not res!454952) (not e!393126))))

(declare-fun e!393125 () Bool)

(assert (=> b!690383 (= res!454952 e!393125)))

(declare-fun res!454945 () Bool)

(assert (=> b!690383 (=> res!454945 e!393125)))

(declare-fun e!393124 () Bool)

(assert (=> b!690383 (= res!454945 e!393124)))

(declare-fun res!454941 () Bool)

(assert (=> b!690383 (=> (not res!454941) (not e!393124))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!690383 (= res!454941 (bvsgt from!3004 i!1382))))

(declare-fun res!454942 () Bool)

(assert (=> start!61758 (=> (not res!454942) (not e!393126))))

(declare-datatypes ((array!39735 0))(
  ( (array!39736 (arr!19032 (Array (_ BitVec 32) (_ BitVec 64))) (size!19415 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39735)

(assert (=> start!61758 (= res!454942 (and (bvslt (size!19415 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19415 a!3626))))))

(assert (=> start!61758 e!393126))

(assert (=> start!61758 true))

(declare-fun array_inv!14806 (array!39735) Bool)

(assert (=> start!61758 (array_inv!14806 a!3626)))

(declare-fun b!690384 () Bool)

(declare-fun res!454948 () Bool)

(assert (=> b!690384 (=> (not res!454948) (not e!393126))))

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!39735 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!690384 (= res!454948 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!690385 () Bool)

(declare-datatypes ((List!13126 0))(
  ( (Nil!13123) (Cons!13122 (h!14167 (_ BitVec 64)) (t!19401 List!13126)) )
))
(declare-fun acc!681 () List!13126)

(declare-fun contains!3669 (List!13126 (_ BitVec 64)) Bool)

(assert (=> b!690385 (= e!393124 (contains!3669 acc!681 k!2843))))

(declare-fun b!690386 () Bool)

(declare-fun res!454939 () Bool)

(assert (=> b!690386 (=> (not res!454939) (not e!393126))))

(assert (=> b!690386 (= res!454939 (not (contains!3669 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!690387 () Bool)

(assert (=> b!690387 (= e!393126 (not true))))

(assert (=> b!690387 (arrayContainsKey!0 a!3626 k!2843 from!3004)))

(declare-fun b!690388 () Bool)

(declare-fun res!454947 () Bool)

(assert (=> b!690388 (=> (not res!454947) (not e!393126))))

(declare-fun arrayNoDuplicates!0 (array!39735 (_ BitVec 32) List!13126) Bool)

(assert (=> b!690388 (= res!454947 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!690389 () Bool)

(declare-fun res!454938 () Bool)

(assert (=> b!690389 (=> (not res!454938) (not e!393126))))

(assert (=> b!690389 (= res!454938 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19415 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!690390 () Bool)

(declare-fun e!393127 () Bool)

(assert (=> b!690390 (= e!393125 e!393127)))

(declare-fun res!454937 () Bool)

(assert (=> b!690390 (=> (not res!454937) (not e!393127))))

(assert (=> b!690390 (= res!454937 (bvsle from!3004 i!1382))))

(declare-fun b!690391 () Bool)

(declare-fun res!454946 () Bool)

(assert (=> b!690391 (=> (not res!454946) (not e!393126))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!690391 (= res!454946 (validKeyInArray!0 (select (arr!19032 a!3626) from!3004)))))

(declare-fun b!690392 () Bool)

(declare-fun res!454949 () Bool)

(assert (=> b!690392 (=> (not res!454949) (not e!393126))))

(assert (=> b!690392 (= res!454949 (not (contains!3669 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!690393 () Bool)

(declare-fun res!454950 () Bool)

(assert (=> b!690393 (=> (not res!454950) (not e!393126))))

(assert (=> b!690393 (= res!454950 (= (select (arr!19032 a!3626) from!3004) k!2843))))

(declare-fun b!690394 () Bool)

(assert (=> b!690394 (= e!393127 (not (contains!3669 acc!681 k!2843)))))

(declare-fun b!690395 () Bool)

(declare-fun res!454951 () Bool)

(assert (=> b!690395 (=> (not res!454951) (not e!393126))))

(assert (=> b!690395 (= res!454951 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13123))))

(declare-fun b!690396 () Bool)

(declare-fun res!454943 () Bool)

(assert (=> b!690396 (=> (not res!454943) (not e!393126))))

(assert (=> b!690396 (= res!454943 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19415 a!3626))))))

(declare-fun b!690397 () Bool)

(declare-fun res!454940 () Bool)

(assert (=> b!690397 (=> (not res!454940) (not e!393126))))

(assert (=> b!690397 (= res!454940 (validKeyInArray!0 k!2843))))

(declare-fun b!690398 () Bool)

(declare-fun res!454944 () Bool)

(assert (=> b!690398 (=> (not res!454944) (not e!393126))))

(declare-fun noDuplicate!916 (List!13126) Bool)

(assert (=> b!690398 (= res!454944 (noDuplicate!916 acc!681))))

(assert (= (and start!61758 res!454942) b!690398))

(assert (= (and b!690398 res!454944) b!690392))

(assert (= (and b!690392 res!454949) b!690386))

(assert (= (and b!690386 res!454939) b!690383))

(assert (= (and b!690383 res!454941) b!690385))

(assert (= (and b!690383 (not res!454945)) b!690390))

(assert (= (and b!690390 res!454937) b!690394))

(assert (= (and b!690383 res!454952) b!690395))

(assert (= (and b!690395 res!454951) b!690388))

(assert (= (and b!690388 res!454947) b!690396))

(assert (= (and b!690396 res!454943) b!690397))

(assert (= (and b!690397 res!454940) b!690384))

(assert (= (and b!690384 res!454948) b!690389))

(assert (= (and b!690389 res!454938) b!690391))

(assert (= (and b!690391 res!454946) b!690393))

(assert (= (and b!690393 res!454950) b!690387))

(declare-fun m!653895 () Bool)

(assert (=> b!690395 m!653895))

(declare-fun m!653897 () Bool)

(assert (=> b!690387 m!653897))

(declare-fun m!653899 () Bool)

(assert (=> b!690394 m!653899))

(assert (=> b!690385 m!653899))

(declare-fun m!653901 () Bool)

(assert (=> b!690391 m!653901))

(assert (=> b!690391 m!653901))

(declare-fun m!653903 () Bool)

(assert (=> b!690391 m!653903))

(declare-fun m!653905 () Bool)

(assert (=> b!690384 m!653905))

(declare-fun m!653907 () Bool)

(assert (=> b!690398 m!653907))

(declare-fun m!653909 () Bool)

(assert (=> b!690392 m!653909))

(declare-fun m!653911 () Bool)

(assert (=> b!690388 m!653911))

(declare-fun m!653913 () Bool)

(assert (=> start!61758 m!653913))

(assert (=> b!690393 m!653901))

(declare-fun m!653915 () Bool)

(assert (=> b!690386 m!653915))

(declare-fun m!653917 () Bool)

(assert (=> b!690397 m!653917))

(push 1)

(assert (not b!690398))

(assert (not start!61758))

(assert (not b!690395))

(assert (not b!690394))

(assert (not b!690388))

(assert (not b!690397))

(assert (not b!690387))

(assert (not b!690391))

(assert (not b!690392))

(assert (not b!690384))

(assert (not b!690385))

(assert (not b!690386))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

