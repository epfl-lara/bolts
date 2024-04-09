; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!61812 () Bool)

(assert start!61812)

(declare-fun b!691717 () Bool)

(declare-datatypes ((Unit!24406 0))(
  ( (Unit!24407) )
))
(declare-fun e!393568 () Unit!24406)

(declare-fun Unit!24408 () Unit!24406)

(assert (=> b!691717 (= e!393568 Unit!24408)))

(declare-datatypes ((array!39789 0))(
  ( (array!39790 (arr!19059 (Array (_ BitVec 32) (_ BitVec 64))) (size!19442 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39789)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!39789 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!691717 (arrayContainsKey!0 a!3626 k!2843 from!3004)))

(declare-fun lt!316464 () Unit!24406)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39789 (_ BitVec 64) (_ BitVec 32)) Unit!24406)

(assert (=> b!691717 (= lt!316464 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!691717 false))

(declare-fun b!691718 () Bool)

(declare-fun e!393566 () Bool)

(assert (=> b!691718 (= e!393566 false)))

(declare-fun lt!316463 () Unit!24406)

(assert (=> b!691718 (= lt!316463 e!393568)))

(declare-fun c!78128 () Bool)

(assert (=> b!691718 (= c!78128 (= (select (arr!19059 a!3626) from!3004) k!2843))))

(declare-fun res!456205 () Bool)

(assert (=> start!61812 (=> (not res!456205) (not e!393566))))

(assert (=> start!61812 (= res!456205 (and (bvslt (size!19442 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19442 a!3626))))))

(assert (=> start!61812 e!393566))

(assert (=> start!61812 true))

(declare-fun array_inv!14833 (array!39789) Bool)

(assert (=> start!61812 (array_inv!14833 a!3626)))

(declare-fun b!691719 () Bool)

(declare-fun e!393571 () Bool)

(declare-datatypes ((List!13153 0))(
  ( (Nil!13150) (Cons!13149 (h!14194 (_ BitVec 64)) (t!19428 List!13153)) )
))
(declare-fun acc!681 () List!13153)

(declare-fun contains!3696 (List!13153 (_ BitVec 64)) Bool)

(assert (=> b!691719 (= e!393571 (contains!3696 acc!681 k!2843))))

(declare-fun b!691720 () Bool)

(declare-fun res!456196 () Bool)

(assert (=> b!691720 (=> (not res!456196) (not e!393566))))

(declare-fun arrayNoDuplicates!0 (array!39789 (_ BitVec 32) List!13153) Bool)

(assert (=> b!691720 (= res!456196 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13150))))

(declare-fun b!691721 () Bool)

(declare-fun res!456202 () Bool)

(assert (=> b!691721 (=> (not res!456202) (not e!393566))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!691721 (= res!456202 (validKeyInArray!0 (select (arr!19059 a!3626) from!3004)))))

(declare-fun b!691722 () Bool)

(declare-fun res!456207 () Bool)

(assert (=> b!691722 (=> (not res!456207) (not e!393566))))

(assert (=> b!691722 (= res!456207 (not (contains!3696 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!691723 () Bool)

(declare-fun res!456200 () Bool)

(assert (=> b!691723 (=> (not res!456200) (not e!393566))))

(assert (=> b!691723 (= res!456200 (validKeyInArray!0 k!2843))))

(declare-fun b!691724 () Bool)

(declare-fun res!456206 () Bool)

(assert (=> b!691724 (=> (not res!456206) (not e!393566))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!691724 (= res!456206 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19442 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!691725 () Bool)

(declare-fun e!393569 () Bool)

(assert (=> b!691725 (= e!393569 (not (contains!3696 acc!681 k!2843)))))

(declare-fun b!691726 () Bool)

(declare-fun res!456198 () Bool)

(assert (=> b!691726 (=> (not res!456198) (not e!393566))))

(assert (=> b!691726 (= res!456198 (not (contains!3696 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!691727 () Bool)

(declare-fun res!456201 () Bool)

(assert (=> b!691727 (=> (not res!456201) (not e!393566))))

(assert (=> b!691727 (= res!456201 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19442 a!3626))))))

(declare-fun b!691728 () Bool)

(declare-fun res!456208 () Bool)

(assert (=> b!691728 (=> (not res!456208) (not e!393566))))

(declare-fun noDuplicate!943 (List!13153) Bool)

(assert (=> b!691728 (= res!456208 (noDuplicate!943 acc!681))))

(declare-fun b!691729 () Bool)

(declare-fun e!393570 () Bool)

(assert (=> b!691729 (= e!393570 e!393569)))

(declare-fun res!456195 () Bool)

(assert (=> b!691729 (=> (not res!456195) (not e!393569))))

(assert (=> b!691729 (= res!456195 (bvsle from!3004 i!1382))))

(declare-fun b!691730 () Bool)

(declare-fun res!456203 () Bool)

(assert (=> b!691730 (=> (not res!456203) (not e!393566))))

(assert (=> b!691730 (= res!456203 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!691731 () Bool)

(declare-fun res!456209 () Bool)

(assert (=> b!691731 (=> (not res!456209) (not e!393566))))

(assert (=> b!691731 (= res!456209 e!393570)))

(declare-fun res!456199 () Bool)

(assert (=> b!691731 (=> res!456199 e!393570)))

(assert (=> b!691731 (= res!456199 e!393571)))

(declare-fun res!456197 () Bool)

(assert (=> b!691731 (=> (not res!456197) (not e!393571))))

(assert (=> b!691731 (= res!456197 (bvsgt from!3004 i!1382))))

(declare-fun b!691732 () Bool)

(declare-fun res!456204 () Bool)

(assert (=> b!691732 (=> (not res!456204) (not e!393566))))

(assert (=> b!691732 (= res!456204 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!691733 () Bool)

(declare-fun Unit!24409 () Unit!24406)

(assert (=> b!691733 (= e!393568 Unit!24409)))

(assert (= (and start!61812 res!456205) b!691728))

(assert (= (and b!691728 res!456208) b!691722))

(assert (= (and b!691722 res!456207) b!691726))

(assert (= (and b!691726 res!456198) b!691731))

(assert (= (and b!691731 res!456197) b!691719))

(assert (= (and b!691731 (not res!456199)) b!691729))

(assert (= (and b!691729 res!456195) b!691725))

(assert (= (and b!691731 res!456209) b!691720))

(assert (= (and b!691720 res!456196) b!691730))

(assert (= (and b!691730 res!456203) b!691727))

(assert (= (and b!691727 res!456201) b!691723))

(assert (= (and b!691723 res!456200) b!691732))

(assert (= (and b!691732 res!456204) b!691724))

(assert (= (and b!691724 res!456206) b!691721))

(assert (= (and b!691721 res!456202) b!691718))

(assert (= (and b!691718 c!78128) b!691717))

(assert (= (and b!691718 (not c!78128)) b!691733))

(declare-fun m!654573 () Bool)

(assert (=> b!691728 m!654573))

(declare-fun m!654575 () Bool)

(assert (=> b!691725 m!654575))

(declare-fun m!654577 () Bool)

(assert (=> b!691718 m!654577))

(declare-fun m!654579 () Bool)

(assert (=> b!691723 m!654579))

(declare-fun m!654581 () Bool)

(assert (=> start!61812 m!654581))

(assert (=> b!691719 m!654575))

(declare-fun m!654583 () Bool)

(assert (=> b!691730 m!654583))

(declare-fun m!654585 () Bool)

(assert (=> b!691717 m!654585))

(declare-fun m!654587 () Bool)

(assert (=> b!691717 m!654587))

(declare-fun m!654589 () Bool)

(assert (=> b!691732 m!654589))

(declare-fun m!654591 () Bool)

(assert (=> b!691722 m!654591))

(assert (=> b!691721 m!654577))

(assert (=> b!691721 m!654577))

(declare-fun m!654593 () Bool)

(assert (=> b!691721 m!654593))

(declare-fun m!654595 () Bool)

(assert (=> b!691726 m!654595))

(declare-fun m!654597 () Bool)

(assert (=> b!691720 m!654597))

(push 1)

(assert (not b!691719))

(assert (not b!691721))

(assert (not b!691730))

(assert (not b!691728))

(assert (not b!691720))

(assert (not b!691723))

(assert (not b!691722))

(assert (not b!691732))

(assert (not b!691717))

(assert (not b!691726))

(assert (not start!61812))

(assert (not b!691725))

(check-sat)

