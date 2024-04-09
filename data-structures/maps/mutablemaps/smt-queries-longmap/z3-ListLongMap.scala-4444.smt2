; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!61784 () Bool)

(assert start!61784)

(declare-fun b!691007 () Bool)

(declare-fun res!455561 () Bool)

(declare-fun e!393321 () Bool)

(assert (=> b!691007 (=> (not res!455561) (not e!393321))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun k0!2843 () (_ BitVec 64))

(declare-datatypes ((array!39761 0))(
  ( (array!39762 (arr!19045 (Array (_ BitVec 32) (_ BitVec 64))) (size!19428 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39761)

(assert (=> b!691007 (= res!455561 (= (select (arr!19045 a!3626) from!3004) k0!2843))))

(declare-fun b!691008 () Bool)

(declare-fun e!393320 () Bool)

(declare-fun e!393319 () Bool)

(assert (=> b!691008 (= e!393320 e!393319)))

(declare-fun res!455565 () Bool)

(assert (=> b!691008 (=> (not res!455565) (not e!393319))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!691008 (= res!455565 (bvsle from!3004 i!1382))))

(declare-fun b!691009 () Bool)

(declare-fun res!455576 () Bool)

(assert (=> b!691009 (=> (not res!455576) (not e!393321))))

(assert (=> b!691009 (= res!455576 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19428 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!691010 () Bool)

(declare-fun res!455562 () Bool)

(assert (=> b!691010 (=> (not res!455562) (not e!393321))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!691010 (= res!455562 (validKeyInArray!0 (select (arr!19045 a!3626) from!3004)))))

(declare-fun res!455575 () Bool)

(assert (=> start!61784 (=> (not res!455575) (not e!393321))))

(assert (=> start!61784 (= res!455575 (and (bvslt (size!19428 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19428 a!3626))))))

(assert (=> start!61784 e!393321))

(assert (=> start!61784 true))

(declare-fun array_inv!14819 (array!39761) Bool)

(assert (=> start!61784 (array_inv!14819 a!3626)))

(declare-fun b!691011 () Bool)

(declare-fun res!455568 () Bool)

(assert (=> b!691011 (=> (not res!455568) (not e!393321))))

(declare-datatypes ((List!13139 0))(
  ( (Nil!13136) (Cons!13135 (h!14180 (_ BitVec 64)) (t!19414 List!13139)) )
))
(declare-fun arrayNoDuplicates!0 (array!39761 (_ BitVec 32) List!13139) Bool)

(assert (=> b!691011 (= res!455568 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13136))))

(declare-fun b!691012 () Bool)

(declare-fun res!455564 () Bool)

(assert (=> b!691012 (=> (not res!455564) (not e!393321))))

(assert (=> b!691012 (= res!455564 (validKeyInArray!0 k0!2843))))

(declare-fun b!691013 () Bool)

(declare-fun res!455572 () Bool)

(assert (=> b!691013 (=> (not res!455572) (not e!393321))))

(declare-fun acc!681 () List!13139)

(declare-fun noDuplicate!929 (List!13139) Bool)

(assert (=> b!691013 (= res!455572 (noDuplicate!929 acc!681))))

(declare-fun b!691014 () Bool)

(declare-fun res!455566 () Bool)

(assert (=> b!691014 (=> (not res!455566) (not e!393321))))

(assert (=> b!691014 (= res!455566 e!393320)))

(declare-fun res!455563 () Bool)

(assert (=> b!691014 (=> res!455563 e!393320)))

(declare-fun e!393318 () Bool)

(assert (=> b!691014 (= res!455563 e!393318)))

(declare-fun res!455567 () Bool)

(assert (=> b!691014 (=> (not res!455567) (not e!393318))))

(assert (=> b!691014 (= res!455567 (bvsgt from!3004 i!1382))))

(declare-fun b!691015 () Bool)

(declare-fun res!455571 () Bool)

(assert (=> b!691015 (=> (not res!455571) (not e!393321))))

(declare-fun contains!3682 (List!13139 (_ BitVec 64)) Bool)

(assert (=> b!691015 (= res!455571 (not (contains!3682 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!691016 () Bool)

(assert (=> b!691016 (= e!393321 (not true))))

(assert (=> b!691016 false))

(declare-datatypes ((Unit!24354 0))(
  ( (Unit!24355) )
))
(declare-fun lt!316383 () Unit!24354)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39761 (_ BitVec 64) (_ BitVec 32)) Unit!24354)

(assert (=> b!691016 (= lt!316383 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004))))

(declare-fun arrayContainsKey!0 (array!39761 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!691016 (arrayContainsKey!0 a!3626 k0!2843 from!3004)))

(declare-fun b!691017 () Bool)

(declare-fun res!455573 () Bool)

(assert (=> b!691017 (=> (not res!455573) (not e!393321))))

(assert (=> b!691017 (= res!455573 (not (contains!3682 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!691018 () Bool)

(assert (=> b!691018 (= e!393319 (not (contains!3682 acc!681 k0!2843)))))

(declare-fun b!691019 () Bool)

(declare-fun res!455574 () Bool)

(assert (=> b!691019 (=> (not res!455574) (not e!393321))))

(assert (=> b!691019 (= res!455574 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19428 a!3626))))))

(declare-fun b!691020 () Bool)

(declare-fun res!455569 () Bool)

(assert (=> b!691020 (=> (not res!455569) (not e!393321))))

(assert (=> b!691020 (= res!455569 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!691021 () Bool)

(assert (=> b!691021 (= e!393318 (contains!3682 acc!681 k0!2843))))

(declare-fun b!691022 () Bool)

(declare-fun res!455570 () Bool)

(assert (=> b!691022 (=> (not res!455570) (not e!393321))))

(assert (=> b!691022 (= res!455570 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(assert (= (and start!61784 res!455575) b!691013))

(assert (= (and b!691013 res!455572) b!691017))

(assert (= (and b!691017 res!455573) b!691015))

(assert (= (and b!691015 res!455571) b!691014))

(assert (= (and b!691014 res!455567) b!691021))

(assert (= (and b!691014 (not res!455563)) b!691008))

(assert (= (and b!691008 res!455565) b!691018))

(assert (= (and b!691014 res!455566) b!691011))

(assert (= (and b!691011 res!455568) b!691020))

(assert (= (and b!691020 res!455569) b!691019))

(assert (= (and b!691019 res!455574) b!691012))

(assert (= (and b!691012 res!455564) b!691022))

(assert (= (and b!691022 res!455570) b!691009))

(assert (= (and b!691009 res!455576) b!691010))

(assert (= (and b!691010 res!455562) b!691007))

(assert (= (and b!691007 res!455561) b!691016))

(declare-fun m!654209 () Bool)

(assert (=> b!691012 m!654209))

(declare-fun m!654211 () Bool)

(assert (=> b!691022 m!654211))

(declare-fun m!654213 () Bool)

(assert (=> b!691015 m!654213))

(declare-fun m!654215 () Bool)

(assert (=> b!691018 m!654215))

(assert (=> b!691021 m!654215))

(declare-fun m!654217 () Bool)

(assert (=> b!691007 m!654217))

(declare-fun m!654219 () Bool)

(assert (=> start!61784 m!654219))

(assert (=> b!691010 m!654217))

(assert (=> b!691010 m!654217))

(declare-fun m!654221 () Bool)

(assert (=> b!691010 m!654221))

(declare-fun m!654223 () Bool)

(assert (=> b!691011 m!654223))

(declare-fun m!654225 () Bool)

(assert (=> b!691020 m!654225))

(declare-fun m!654227 () Bool)

(assert (=> b!691017 m!654227))

(declare-fun m!654229 () Bool)

(assert (=> b!691016 m!654229))

(declare-fun m!654231 () Bool)

(assert (=> b!691016 m!654231))

(declare-fun m!654233 () Bool)

(assert (=> b!691013 m!654233))

(check-sat (not start!61784) (not b!691021) (not b!691020) (not b!691013) (not b!691016) (not b!691022) (not b!691015) (not b!691018) (not b!691017) (not b!691010) (not b!691011) (not b!691012))
