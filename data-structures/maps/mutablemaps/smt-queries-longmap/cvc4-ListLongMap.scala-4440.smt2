; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!61762 () Bool)

(assert start!61762)

(declare-fun b!690479 () Bool)

(declare-fun e!393155 () Bool)

(declare-datatypes ((List!13128 0))(
  ( (Nil!13125) (Cons!13124 (h!14169 (_ BitVec 64)) (t!19403 List!13128)) )
))
(declare-fun acc!681 () List!13128)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3671 (List!13128 (_ BitVec 64)) Bool)

(assert (=> b!690479 (= e!393155 (contains!3671 acc!681 k!2843))))

(declare-fun b!690480 () Bool)

(declare-fun e!393157 () Bool)

(declare-fun e!393154 () Bool)

(assert (=> b!690480 (= e!393157 e!393154)))

(declare-fun res!455040 () Bool)

(assert (=> b!690480 (=> (not res!455040) (not e!393154))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!690480 (= res!455040 (bvsle from!3004 i!1382))))

(declare-fun b!690482 () Bool)

(declare-fun res!455048 () Bool)

(declare-fun e!393156 () Bool)

(assert (=> b!690482 (=> (not res!455048) (not e!393156))))

(declare-datatypes ((array!39739 0))(
  ( (array!39740 (arr!19034 (Array (_ BitVec 32) (_ BitVec 64))) (size!19417 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39739)

(declare-fun arrayNoDuplicates!0 (array!39739 (_ BitVec 32) List!13128) Bool)

(assert (=> b!690482 (= res!455048 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13125))))

(declare-fun b!690483 () Bool)

(declare-fun res!455038 () Bool)

(assert (=> b!690483 (=> (not res!455038) (not e!393156))))

(assert (=> b!690483 (= res!455038 (= (select (arr!19034 a!3626) from!3004) k!2843))))

(declare-fun b!690484 () Bool)

(declare-fun res!455037 () Bool)

(assert (=> b!690484 (=> (not res!455037) (not e!393156))))

(declare-fun arrayContainsKey!0 (array!39739 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!690484 (= res!455037 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!690485 () Bool)

(declare-fun res!455046 () Bool)

(assert (=> b!690485 (=> (not res!455046) (not e!393156))))

(assert (=> b!690485 (= res!455046 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!690486 () Bool)

(assert (=> b!690486 (= e!393154 (not (contains!3671 acc!681 k!2843)))))

(declare-fun b!690481 () Bool)

(declare-fun res!455036 () Bool)

(assert (=> b!690481 (=> (not res!455036) (not e!393156))))

(assert (=> b!690481 (= res!455036 (not (contains!3671 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!455045 () Bool)

(assert (=> start!61762 (=> (not res!455045) (not e!393156))))

(assert (=> start!61762 (= res!455045 (and (bvslt (size!19417 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19417 a!3626))))))

(assert (=> start!61762 e!393156))

(assert (=> start!61762 true))

(declare-fun array_inv!14808 (array!39739) Bool)

(assert (=> start!61762 (array_inv!14808 a!3626)))

(declare-fun b!690487 () Bool)

(declare-fun res!455043 () Bool)

(assert (=> b!690487 (=> (not res!455043) (not e!393156))))

(assert (=> b!690487 (= res!455043 e!393157)))

(declare-fun res!455035 () Bool)

(assert (=> b!690487 (=> res!455035 e!393157)))

(assert (=> b!690487 (= res!455035 e!393155)))

(declare-fun res!455034 () Bool)

(assert (=> b!690487 (=> (not res!455034) (not e!393155))))

(assert (=> b!690487 (= res!455034 (bvsgt from!3004 i!1382))))

(declare-fun b!690488 () Bool)

(assert (=> b!690488 (= e!393156 (not true))))

(assert (=> b!690488 (arrayContainsKey!0 a!3626 k!2843 from!3004)))

(declare-fun b!690489 () Bool)

(declare-fun res!455042 () Bool)

(assert (=> b!690489 (=> (not res!455042) (not e!393156))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!690489 (= res!455042 (validKeyInArray!0 k!2843))))

(declare-fun b!690490 () Bool)

(declare-fun res!455041 () Bool)

(assert (=> b!690490 (=> (not res!455041) (not e!393156))))

(assert (=> b!690490 (= res!455041 (validKeyInArray!0 (select (arr!19034 a!3626) from!3004)))))

(declare-fun b!690491 () Bool)

(declare-fun res!455033 () Bool)

(assert (=> b!690491 (=> (not res!455033) (not e!393156))))

(assert (=> b!690491 (= res!455033 (not (contains!3671 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!690492 () Bool)

(declare-fun res!455039 () Bool)

(assert (=> b!690492 (=> (not res!455039) (not e!393156))))

(declare-fun noDuplicate!918 (List!13128) Bool)

(assert (=> b!690492 (= res!455039 (noDuplicate!918 acc!681))))

(declare-fun b!690493 () Bool)

(declare-fun res!455044 () Bool)

(assert (=> b!690493 (=> (not res!455044) (not e!393156))))

(assert (=> b!690493 (= res!455044 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19417 a!3626))))))

(declare-fun b!690494 () Bool)

(declare-fun res!455047 () Bool)

(assert (=> b!690494 (=> (not res!455047) (not e!393156))))

(assert (=> b!690494 (= res!455047 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19417 a!3626)) (not (= from!3004 i!1382))))))

(assert (= (and start!61762 res!455045) b!690492))

(assert (= (and b!690492 res!455039) b!690481))

(assert (= (and b!690481 res!455036) b!690491))

(assert (= (and b!690491 res!455033) b!690487))

(assert (= (and b!690487 res!455034) b!690479))

(assert (= (and b!690487 (not res!455035)) b!690480))

(assert (= (and b!690480 res!455040) b!690486))

(assert (= (and b!690487 res!455043) b!690482))

(assert (= (and b!690482 res!455048) b!690485))

(assert (= (and b!690485 res!455046) b!690493))

(assert (= (and b!690493 res!455044) b!690489))

(assert (= (and b!690489 res!455042) b!690484))

(assert (= (and b!690484 res!455037) b!690494))

(assert (= (and b!690494 res!455047) b!690490))

(assert (= (and b!690490 res!455041) b!690483))

(assert (= (and b!690483 res!455038) b!690488))

(declare-fun m!653943 () Bool)

(assert (=> b!690484 m!653943))

(declare-fun m!653945 () Bool)

(assert (=> start!61762 m!653945))

(declare-fun m!653947 () Bool)

(assert (=> b!690482 m!653947))

(declare-fun m!653949 () Bool)

(assert (=> b!690479 m!653949))

(declare-fun m!653951 () Bool)

(assert (=> b!690488 m!653951))

(declare-fun m!653953 () Bool)

(assert (=> b!690489 m!653953))

(declare-fun m!653955 () Bool)

(assert (=> b!690490 m!653955))

(assert (=> b!690490 m!653955))

(declare-fun m!653957 () Bool)

(assert (=> b!690490 m!653957))

(assert (=> b!690483 m!653955))

(declare-fun m!653959 () Bool)

(assert (=> b!690492 m!653959))

(declare-fun m!653961 () Bool)

(assert (=> b!690481 m!653961))

(declare-fun m!653963 () Bool)

(assert (=> b!690485 m!653963))

(assert (=> b!690486 m!653949))

(declare-fun m!653965 () Bool)

(assert (=> b!690491 m!653965))

(push 1)

(assert (not b!690486))

(assert (not start!61762))

(assert (not b!690492))

(assert (not b!690484))

(assert (not b!690488))

(assert (not b!690481))

(assert (not b!690491))

(assert (not b!690482))

(assert (not b!690479))

(assert (not b!690485))

(assert (not b!690490))

(assert (not b!690489))

(check-sat)

