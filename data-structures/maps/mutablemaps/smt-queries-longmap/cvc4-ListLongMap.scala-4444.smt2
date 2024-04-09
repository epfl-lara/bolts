; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!61786 () Bool)

(assert start!61786)

(declare-fun b!691055 () Bool)

(declare-fun e!393334 () Bool)

(declare-datatypes ((List!13140 0))(
  ( (Nil!13137) (Cons!13136 (h!14181 (_ BitVec 64)) (t!19415 List!13140)) )
))
(declare-fun acc!681 () List!13140)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3683 (List!13140 (_ BitVec 64)) Bool)

(assert (=> b!691055 (= e!393334 (not (contains!3683 acc!681 k!2843)))))

(declare-fun b!691056 () Bool)

(declare-fun res!455618 () Bool)

(declare-fun e!393333 () Bool)

(assert (=> b!691056 (=> (not res!455618) (not e!393333))))

(declare-fun noDuplicate!930 (List!13140) Bool)

(assert (=> b!691056 (= res!455618 (noDuplicate!930 acc!681))))

(declare-fun b!691057 () Bool)

(declare-fun res!455609 () Bool)

(assert (=> b!691057 (=> (not res!455609) (not e!393333))))

(declare-fun i!1382 () (_ BitVec 32))

(declare-datatypes ((array!39763 0))(
  ( (array!39764 (arr!19046 (Array (_ BitVec 32) (_ BitVec 64))) (size!19429 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39763)

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!691057 (= res!455609 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19429 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!691058 () Bool)

(declare-fun res!455622 () Bool)

(assert (=> b!691058 (=> (not res!455622) (not e!393333))))

(declare-fun arrayNoDuplicates!0 (array!39763 (_ BitVec 32) List!13140) Bool)

(assert (=> b!691058 (= res!455622 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!691059 () Bool)

(declare-fun res!455612 () Bool)

(assert (=> b!691059 (=> (not res!455612) (not e!393333))))

(assert (=> b!691059 (= res!455612 (= (select (arr!19046 a!3626) from!3004) k!2843))))

(declare-fun b!691060 () Bool)

(declare-fun res!455623 () Bool)

(assert (=> b!691060 (=> (not res!455623) (not e!393333))))

(assert (=> b!691060 (= res!455623 (not (contains!3683 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!691061 () Bool)

(assert (=> b!691061 (= e!393333 (not true))))

(assert (=> b!691061 false))

(declare-datatypes ((Unit!24356 0))(
  ( (Unit!24357) )
))
(declare-fun lt!316386 () Unit!24356)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39763 (_ BitVec 64) (_ BitVec 32)) Unit!24356)

(assert (=> b!691061 (= lt!316386 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(declare-fun arrayContainsKey!0 (array!39763 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!691061 (arrayContainsKey!0 a!3626 k!2843 from!3004)))

(declare-fun res!455624 () Bool)

(assert (=> start!61786 (=> (not res!455624) (not e!393333))))

(assert (=> start!61786 (= res!455624 (and (bvslt (size!19429 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19429 a!3626))))))

(assert (=> start!61786 e!393333))

(assert (=> start!61786 true))

(declare-fun array_inv!14820 (array!39763) Bool)

(assert (=> start!61786 (array_inv!14820 a!3626)))

(declare-fun b!691062 () Bool)

(declare-fun res!455621 () Bool)

(assert (=> b!691062 (=> (not res!455621) (not e!393333))))

(assert (=> b!691062 (= res!455621 (not (contains!3683 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!691063 () Bool)

(declare-fun res!455614 () Bool)

(assert (=> b!691063 (=> (not res!455614) (not e!393333))))

(assert (=> b!691063 (= res!455614 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!691064 () Bool)

(declare-fun res!455616 () Bool)

(assert (=> b!691064 (=> (not res!455616) (not e!393333))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!691064 (= res!455616 (validKeyInArray!0 k!2843))))

(declare-fun b!691065 () Bool)

(declare-fun e!393337 () Bool)

(assert (=> b!691065 (= e!393337 e!393334)))

(declare-fun res!455617 () Bool)

(assert (=> b!691065 (=> (not res!455617) (not e!393334))))

(assert (=> b!691065 (= res!455617 (bvsle from!3004 i!1382))))

(declare-fun b!691066 () Bool)

(declare-fun e!393336 () Bool)

(assert (=> b!691066 (= e!393336 (contains!3683 acc!681 k!2843))))

(declare-fun b!691067 () Bool)

(declare-fun res!455615 () Bool)

(assert (=> b!691067 (=> (not res!455615) (not e!393333))))

(assert (=> b!691067 (= res!455615 e!393337)))

(declare-fun res!455610 () Bool)

(assert (=> b!691067 (=> res!455610 e!393337)))

(assert (=> b!691067 (= res!455610 e!393336)))

(declare-fun res!455611 () Bool)

(assert (=> b!691067 (=> (not res!455611) (not e!393336))))

(assert (=> b!691067 (= res!455611 (bvsgt from!3004 i!1382))))

(declare-fun b!691068 () Bool)

(declare-fun res!455620 () Bool)

(assert (=> b!691068 (=> (not res!455620) (not e!393333))))

(assert (=> b!691068 (= res!455620 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13137))))

(declare-fun b!691069 () Bool)

(declare-fun res!455619 () Bool)

(assert (=> b!691069 (=> (not res!455619) (not e!393333))))

(assert (=> b!691069 (= res!455619 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19429 a!3626))))))

(declare-fun b!691070 () Bool)

(declare-fun res!455613 () Bool)

(assert (=> b!691070 (=> (not res!455613) (not e!393333))))

(assert (=> b!691070 (= res!455613 (validKeyInArray!0 (select (arr!19046 a!3626) from!3004)))))

(assert (= (and start!61786 res!455624) b!691056))

(assert (= (and b!691056 res!455618) b!691062))

(assert (= (and b!691062 res!455621) b!691060))

(assert (= (and b!691060 res!455623) b!691067))

(assert (= (and b!691067 res!455611) b!691066))

(assert (= (and b!691067 (not res!455610)) b!691065))

(assert (= (and b!691065 res!455617) b!691055))

(assert (= (and b!691067 res!455615) b!691068))

(assert (= (and b!691068 res!455620) b!691058))

(assert (= (and b!691058 res!455622) b!691069))

(assert (= (and b!691069 res!455619) b!691064))

(assert (= (and b!691064 res!455616) b!691063))

(assert (= (and b!691063 res!455614) b!691057))

(assert (= (and b!691057 res!455609) b!691070))

(assert (= (and b!691070 res!455613) b!691059))

(assert (= (and b!691059 res!455612) b!691061))

(declare-fun m!654235 () Bool)

(assert (=> b!691058 m!654235))

(declare-fun m!654237 () Bool)

(assert (=> b!691056 m!654237))

(declare-fun m!654239 () Bool)

(assert (=> b!691066 m!654239))

(declare-fun m!654241 () Bool)

(assert (=> b!691063 m!654241))

(declare-fun m!654243 () Bool)

(assert (=> b!691061 m!654243))

(declare-fun m!654245 () Bool)

(assert (=> b!691061 m!654245))

(declare-fun m!654247 () Bool)

(assert (=> start!61786 m!654247))

(declare-fun m!654249 () Bool)

(assert (=> b!691064 m!654249))

(assert (=> b!691055 m!654239))

(declare-fun m!654251 () Bool)

(assert (=> b!691070 m!654251))

(assert (=> b!691070 m!654251))

(declare-fun m!654253 () Bool)

(assert (=> b!691070 m!654253))

(declare-fun m!654255 () Bool)

(assert (=> b!691060 m!654255))

(declare-fun m!654257 () Bool)

(assert (=> b!691062 m!654257))

(declare-fun m!654259 () Bool)

(assert (=> b!691068 m!654259))

(assert (=> b!691059 m!654251))

(push 1)

(assert (not b!691058))

(assert (not start!61786))

(assert (not b!691064))

(assert (not b!691056))

(assert (not b!691062))

(assert (not b!691068))

(assert (not b!691060))

(assert (not b!691055))

(assert (not b!691063))

(assert (not b!691061))

(assert (not b!691070))

(assert (not b!691066))

(check-sat)

(pop 1)

