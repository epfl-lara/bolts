; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!61704 () Bool)

(assert start!61704)

(declare-fun b!689931 () Bool)

(declare-fun e!392868 () Bool)

(declare-datatypes ((List!13117 0))(
  ( (Nil!13114) (Cons!13113 (h!14158 (_ BitVec 64)) (t!19392 List!13117)) )
))
(declare-fun acc!681 () List!13117)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3660 (List!13117 (_ BitVec 64)) Bool)

(assert (=> b!689931 (= e!392868 (not (contains!3660 acc!681 k!2843)))))

(declare-fun b!689932 () Bool)

(declare-fun res!454510 () Bool)

(declare-fun e!392869 () Bool)

(assert (=> b!689932 (=> (not res!454510) (not e!392869))))

(assert (=> b!689932 (= res!454510 (not (contains!3660 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!689933 () Bool)

(declare-fun e!392872 () Bool)

(assert (=> b!689933 (= e!392872 (contains!3660 acc!681 k!2843))))

(declare-fun b!689934 () Bool)

(declare-fun res!454517 () Bool)

(assert (=> b!689934 (=> (not res!454517) (not e!392869))))

(declare-datatypes ((array!39714 0))(
  ( (array!39715 (arr!19023 (Array (_ BitVec 32) (_ BitVec 64))) (size!19406 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39714)

(declare-fun arrayNoDuplicates!0 (array!39714 (_ BitVec 32) List!13117) Bool)

(assert (=> b!689934 (= res!454517 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13114))))

(declare-fun b!689935 () Bool)

(declare-fun res!454511 () Bool)

(assert (=> b!689935 (=> (not res!454511) (not e!392869))))

(declare-fun e!392870 () Bool)

(assert (=> b!689935 (= res!454511 e!392870)))

(declare-fun res!454509 () Bool)

(assert (=> b!689935 (=> res!454509 e!392870)))

(assert (=> b!689935 (= res!454509 e!392872)))

(declare-fun res!454513 () Bool)

(assert (=> b!689935 (=> (not res!454513) (not e!392872))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!689935 (= res!454513 (bvsgt from!3004 i!1382))))

(declare-fun b!689936 () Bool)

(declare-fun res!454514 () Bool)

(assert (=> b!689936 (=> (not res!454514) (not e!392869))))

(declare-fun noDuplicate!907 (List!13117) Bool)

(assert (=> b!689936 (= res!454514 (noDuplicate!907 acc!681))))

(declare-fun res!454515 () Bool)

(assert (=> start!61704 (=> (not res!454515) (not e!392869))))

(assert (=> start!61704 (= res!454515 (and (bvslt (size!19406 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19406 a!3626))))))

(assert (=> start!61704 e!392869))

(assert (=> start!61704 true))

(declare-fun array_inv!14797 (array!39714) Bool)

(assert (=> start!61704 (array_inv!14797 a!3626)))

(declare-fun b!689937 () Bool)

(declare-fun res!454516 () Bool)

(assert (=> b!689937 (=> (not res!454516) (not e!392869))))

(assert (=> b!689937 (= res!454516 (not (contains!3660 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!689938 () Bool)

(assert (=> b!689938 (= e!392870 e!392868)))

(declare-fun res!454512 () Bool)

(assert (=> b!689938 (=> (not res!454512) (not e!392868))))

(assert (=> b!689938 (= res!454512 (bvsle from!3004 i!1382))))

(declare-fun b!689939 () Bool)

(assert (=> b!689939 (= e!392869 false)))

(declare-fun lt!316347 () Bool)

(assert (=> b!689939 (= lt!316347 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(assert (= (and start!61704 res!454515) b!689936))

(assert (= (and b!689936 res!454514) b!689932))

(assert (= (and b!689932 res!454510) b!689937))

(assert (= (and b!689937 res!454516) b!689935))

(assert (= (and b!689935 res!454513) b!689933))

(assert (= (and b!689935 (not res!454509)) b!689938))

(assert (= (and b!689938 res!454512) b!689931))

(assert (= (and b!689935 res!454511) b!689934))

(assert (= (and b!689934 res!454517) b!689939))

(declare-fun m!653637 () Bool)

(assert (=> b!689932 m!653637))

(declare-fun m!653639 () Bool)

(assert (=> b!689936 m!653639))

(declare-fun m!653641 () Bool)

(assert (=> b!689931 m!653641))

(declare-fun m!653643 () Bool)

(assert (=> b!689937 m!653643))

(declare-fun m!653645 () Bool)

(assert (=> b!689934 m!653645))

(declare-fun m!653647 () Bool)

(assert (=> start!61704 m!653647))

(declare-fun m!653649 () Bool)

(assert (=> b!689939 m!653649))

(assert (=> b!689933 m!653641))

(push 1)

(assert (not b!689934))

(assert (not b!689933))

(assert (not b!689931))

(assert (not start!61704))

(assert (not b!689939))

(assert (not b!689937))

(assert (not b!689932))

(assert (not b!689936))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

