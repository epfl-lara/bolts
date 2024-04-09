; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!61776 () Bool)

(assert start!61776)

(declare-fun b!690815 () Bool)

(declare-fun res!455371 () Bool)

(declare-fun e!393259 () Bool)

(assert (=> b!690815 (=> (not res!455371) (not e!393259))))

(declare-datatypes ((array!39753 0))(
  ( (array!39754 (arr!19041 (Array (_ BitVec 32) (_ BitVec 64))) (size!19424 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39753)

(declare-fun from!3004 () (_ BitVec 32))

(declare-datatypes ((List!13135 0))(
  ( (Nil!13132) (Cons!13131 (h!14176 (_ BitVec 64)) (t!19410 List!13135)) )
))
(declare-fun acc!681 () List!13135)

(declare-fun arrayNoDuplicates!0 (array!39753 (_ BitVec 32) List!13135) Bool)

(assert (=> b!690815 (= res!455371 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!690816 () Bool)

(declare-fun res!455379 () Bool)

(assert (=> b!690816 (=> (not res!455379) (not e!393259))))

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!39753 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!690816 (= res!455379 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!690817 () Bool)

(assert (=> b!690817 (= e!393259 (not true))))

(assert (=> b!690817 (arrayContainsKey!0 a!3626 k!2843 from!3004)))

(declare-fun b!690818 () Bool)

(declare-fun res!455378 () Bool)

(assert (=> b!690818 (=> (not res!455378) (not e!393259))))

(assert (=> b!690818 (= res!455378 (= (select (arr!19041 a!3626) from!3004) k!2843))))

(declare-fun b!690819 () Bool)

(declare-fun res!455380 () Bool)

(assert (=> b!690819 (=> (not res!455380) (not e!393259))))

(declare-fun contains!3678 (List!13135 (_ BitVec 64)) Bool)

(assert (=> b!690819 (= res!455380 (not (contains!3678 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!690820 () Bool)

(declare-fun res!455374 () Bool)

(assert (=> b!690820 (=> (not res!455374) (not e!393259))))

(assert (=> b!690820 (= res!455374 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13132))))

(declare-fun b!690821 () Bool)

(declare-fun e!393260 () Bool)

(assert (=> b!690821 (= e!393260 (not (contains!3678 acc!681 k!2843)))))

(declare-fun b!690822 () Bool)

(declare-fun res!455375 () Bool)

(assert (=> b!690822 (=> (not res!455375) (not e!393259))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!690822 (= res!455375 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19424 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!690823 () Bool)

(declare-fun e!393261 () Bool)

(assert (=> b!690823 (= e!393261 (contains!3678 acc!681 k!2843))))

(declare-fun b!690824 () Bool)

(declare-fun res!455369 () Bool)

(assert (=> b!690824 (=> (not res!455369) (not e!393259))))

(assert (=> b!690824 (= res!455369 (not (contains!3678 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!690825 () Bool)

(declare-fun res!455373 () Bool)

(assert (=> b!690825 (=> (not res!455373) (not e!393259))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!690825 (= res!455373 (validKeyInArray!0 k!2843))))

(declare-fun b!690826 () Bool)

(declare-fun res!455384 () Bool)

(assert (=> b!690826 (=> (not res!455384) (not e!393259))))

(assert (=> b!690826 (= res!455384 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19424 a!3626))))))

(declare-fun b!690827 () Bool)

(declare-fun res!455377 () Bool)

(assert (=> b!690827 (=> (not res!455377) (not e!393259))))

(assert (=> b!690827 (= res!455377 (validKeyInArray!0 (select (arr!19041 a!3626) from!3004)))))

(declare-fun res!455381 () Bool)

(assert (=> start!61776 (=> (not res!455381) (not e!393259))))

(assert (=> start!61776 (= res!455381 (and (bvslt (size!19424 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19424 a!3626))))))

(assert (=> start!61776 e!393259))

(assert (=> start!61776 true))

(declare-fun array_inv!14815 (array!39753) Bool)

(assert (=> start!61776 (array_inv!14815 a!3626)))

(declare-fun b!690828 () Bool)

(declare-fun e!393262 () Bool)

(assert (=> b!690828 (= e!393262 e!393260)))

(declare-fun res!455376 () Bool)

(assert (=> b!690828 (=> (not res!455376) (not e!393260))))

(assert (=> b!690828 (= res!455376 (bvsle from!3004 i!1382))))

(declare-fun b!690829 () Bool)

(declare-fun res!455382 () Bool)

(assert (=> b!690829 (=> (not res!455382) (not e!393259))))

(assert (=> b!690829 (= res!455382 e!393262)))

(declare-fun res!455370 () Bool)

(assert (=> b!690829 (=> res!455370 e!393262)))

(assert (=> b!690829 (= res!455370 e!393261)))

(declare-fun res!455372 () Bool)

(assert (=> b!690829 (=> (not res!455372) (not e!393261))))

(assert (=> b!690829 (= res!455372 (bvsgt from!3004 i!1382))))

(declare-fun b!690830 () Bool)

(declare-fun res!455383 () Bool)

(assert (=> b!690830 (=> (not res!455383) (not e!393259))))

(declare-fun noDuplicate!925 (List!13135) Bool)

(assert (=> b!690830 (= res!455383 (noDuplicate!925 acc!681))))

(assert (= (and start!61776 res!455381) b!690830))

(assert (= (and b!690830 res!455383) b!690824))

(assert (= (and b!690824 res!455369) b!690819))

(assert (= (and b!690819 res!455380) b!690829))

(assert (= (and b!690829 res!455372) b!690823))

(assert (= (and b!690829 (not res!455370)) b!690828))

(assert (= (and b!690828 res!455376) b!690821))

(assert (= (and b!690829 res!455382) b!690820))

(assert (= (and b!690820 res!455374) b!690815))

(assert (= (and b!690815 res!455371) b!690826))

(assert (= (and b!690826 res!455384) b!690825))

(assert (= (and b!690825 res!455373) b!690816))

(assert (= (and b!690816 res!455379) b!690822))

(assert (= (and b!690822 res!455375) b!690827))

(assert (= (and b!690827 res!455377) b!690818))

(assert (= (and b!690818 res!455378) b!690817))

(declare-fun m!654111 () Bool)

(assert (=> b!690824 m!654111))

(declare-fun m!654113 () Bool)

(assert (=> b!690821 m!654113))

(declare-fun m!654115 () Bool)

(assert (=> b!690819 m!654115))

(declare-fun m!654117 () Bool)

(assert (=> start!61776 m!654117))

(declare-fun m!654119 () Bool)

(assert (=> b!690827 m!654119))

(assert (=> b!690827 m!654119))

(declare-fun m!654121 () Bool)

(assert (=> b!690827 m!654121))

(declare-fun m!654123 () Bool)

(assert (=> b!690817 m!654123))

(declare-fun m!654125 () Bool)

(assert (=> b!690825 m!654125))

(declare-fun m!654127 () Bool)

(assert (=> b!690820 m!654127))

(assert (=> b!690823 m!654113))

(declare-fun m!654129 () Bool)

(assert (=> b!690830 m!654129))

(declare-fun m!654131 () Bool)

(assert (=> b!690816 m!654131))

(declare-fun m!654133 () Bool)

(assert (=> b!690815 m!654133))

(assert (=> b!690818 m!654119))

(push 1)

(assert (not start!61776))

(assert (not b!690817))

(assert (not b!690824))

(assert (not b!690821))

(assert (not b!690825))

(assert (not b!690830))

(assert (not b!690820))

(assert (not b!690823))

(assert (not b!690819))

(assert (not b!690816))

(assert (not b!690827))

(assert (not b!690815))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

