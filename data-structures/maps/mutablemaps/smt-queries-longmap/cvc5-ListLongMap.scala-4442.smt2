; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!61770 () Bool)

(assert start!61770)

(declare-fun b!690672 () Bool)

(declare-fun res!455234 () Bool)

(declare-fun e!393214 () Bool)

(assert (=> b!690672 (=> (not res!455234) (not e!393214))))

(declare-datatypes ((array!39747 0))(
  ( (array!39748 (arr!19038 (Array (_ BitVec 32) (_ BitVec 64))) (size!19421 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39747)

(declare-datatypes ((List!13132 0))(
  ( (Nil!13129) (Cons!13128 (h!14173 (_ BitVec 64)) (t!19407 List!13132)) )
))
(declare-fun arrayNoDuplicates!0 (array!39747 (_ BitVec 32) List!13132) Bool)

(assert (=> b!690672 (= res!455234 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13129))))

(declare-fun b!690673 () Bool)

(declare-fun res!455240 () Bool)

(assert (=> b!690673 (=> (not res!455240) (not e!393214))))

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!690673 (= res!455240 (validKeyInArray!0 k!2843))))

(declare-fun b!690674 () Bool)

(declare-fun res!455231 () Bool)

(assert (=> b!690674 (=> (not res!455231) (not e!393214))))

(declare-fun acc!681 () List!13132)

(declare-fun contains!3675 (List!13132 (_ BitVec 64)) Bool)

(assert (=> b!690674 (= res!455231 (not (contains!3675 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!690675 () Bool)

(declare-fun res!455236 () Bool)

(assert (=> b!690675 (=> (not res!455236) (not e!393214))))

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!690675 (= res!455236 (validKeyInArray!0 (select (arr!19038 a!3626) from!3004)))))

(declare-fun b!690676 () Bool)

(declare-fun res!455227 () Bool)

(assert (=> b!690676 (=> (not res!455227) (not e!393214))))

(declare-fun noDuplicate!922 (List!13132) Bool)

(assert (=> b!690676 (= res!455227 (noDuplicate!922 acc!681))))

(declare-fun res!455232 () Bool)

(assert (=> start!61770 (=> (not res!455232) (not e!393214))))

(assert (=> start!61770 (= res!455232 (and (bvslt (size!19421 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19421 a!3626))))))

(assert (=> start!61770 e!393214))

(assert (=> start!61770 true))

(declare-fun array_inv!14812 (array!39747) Bool)

(assert (=> start!61770 (array_inv!14812 a!3626)))

(declare-fun b!690671 () Bool)

(declare-fun res!455230 () Bool)

(assert (=> b!690671 (=> (not res!455230) (not e!393214))))

(assert (=> b!690671 (= res!455230 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!690677 () Bool)

(declare-fun e!393213 () Bool)

(declare-fun e!393217 () Bool)

(assert (=> b!690677 (= e!393213 e!393217)))

(declare-fun res!455229 () Bool)

(assert (=> b!690677 (=> (not res!455229) (not e!393217))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!690677 (= res!455229 (bvsle from!3004 i!1382))))

(declare-fun b!690678 () Bool)

(declare-fun res!455235 () Bool)

(assert (=> b!690678 (=> (not res!455235) (not e!393214))))

(assert (=> b!690678 (= res!455235 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19421 a!3626))))))

(declare-fun b!690679 () Bool)

(declare-fun res!455226 () Bool)

(assert (=> b!690679 (=> (not res!455226) (not e!393214))))

(assert (=> b!690679 (= res!455226 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19421 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!690680 () Bool)

(assert (=> b!690680 (= e!393214 (not true))))

(declare-fun arrayContainsKey!0 (array!39747 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!690680 (arrayContainsKey!0 a!3626 k!2843 from!3004)))

(declare-fun b!690681 () Bool)

(declare-fun res!455238 () Bool)

(assert (=> b!690681 (=> (not res!455238) (not e!393214))))

(assert (=> b!690681 (= res!455238 e!393213)))

(declare-fun res!455237 () Bool)

(assert (=> b!690681 (=> res!455237 e!393213)))

(declare-fun e!393215 () Bool)

(assert (=> b!690681 (= res!455237 e!393215)))

(declare-fun res!455239 () Bool)

(assert (=> b!690681 (=> (not res!455239) (not e!393215))))

(assert (=> b!690681 (= res!455239 (bvsgt from!3004 i!1382))))

(declare-fun b!690682 () Bool)

(declare-fun res!455225 () Bool)

(assert (=> b!690682 (=> (not res!455225) (not e!393214))))

(assert (=> b!690682 (= res!455225 (= (select (arr!19038 a!3626) from!3004) k!2843))))

(declare-fun b!690683 () Bool)

(assert (=> b!690683 (= e!393215 (contains!3675 acc!681 k!2843))))

(declare-fun b!690684 () Bool)

(declare-fun res!455228 () Bool)

(assert (=> b!690684 (=> (not res!455228) (not e!393214))))

(assert (=> b!690684 (= res!455228 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!690685 () Bool)

(declare-fun res!455233 () Bool)

(assert (=> b!690685 (=> (not res!455233) (not e!393214))))

(assert (=> b!690685 (= res!455233 (not (contains!3675 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!690686 () Bool)

(assert (=> b!690686 (= e!393217 (not (contains!3675 acc!681 k!2843)))))

(assert (= (and start!61770 res!455232) b!690676))

(assert (= (and b!690676 res!455227) b!690674))

(assert (= (and b!690674 res!455231) b!690685))

(assert (= (and b!690685 res!455233) b!690681))

(assert (= (and b!690681 res!455239) b!690683))

(assert (= (and b!690681 (not res!455237)) b!690677))

(assert (= (and b!690677 res!455229) b!690686))

(assert (= (and b!690681 res!455238) b!690672))

(assert (= (and b!690672 res!455234) b!690671))

(assert (= (and b!690671 res!455230) b!690678))

(assert (= (and b!690678 res!455235) b!690673))

(assert (= (and b!690673 res!455240) b!690684))

(assert (= (and b!690684 res!455228) b!690679))

(assert (= (and b!690679 res!455226) b!690675))

(assert (= (and b!690675 res!455236) b!690682))

(assert (= (and b!690682 res!455225) b!690680))

(declare-fun m!654039 () Bool)

(assert (=> start!61770 m!654039))

(declare-fun m!654041 () Bool)

(assert (=> b!690676 m!654041))

(declare-fun m!654043 () Bool)

(assert (=> b!690674 m!654043))

(declare-fun m!654045 () Bool)

(assert (=> b!690673 m!654045))

(declare-fun m!654047 () Bool)

(assert (=> b!690683 m!654047))

(declare-fun m!654049 () Bool)

(assert (=> b!690671 m!654049))

(declare-fun m!654051 () Bool)

(assert (=> b!690682 m!654051))

(assert (=> b!690675 m!654051))

(assert (=> b!690675 m!654051))

(declare-fun m!654053 () Bool)

(assert (=> b!690675 m!654053))

(declare-fun m!654055 () Bool)

(assert (=> b!690680 m!654055))

(declare-fun m!654057 () Bool)

(assert (=> b!690672 m!654057))

(assert (=> b!690686 m!654047))

(declare-fun m!654059 () Bool)

(assert (=> b!690684 m!654059))

(declare-fun m!654061 () Bool)

(assert (=> b!690685 m!654061))

(push 1)

(assert (not b!690671))

(assert (not b!690680))

(assert (not b!690685))

(assert (not b!690675))

(assert (not b!690674))

(assert (not b!690684))

(assert (not b!690672))

(assert (not start!61770))

(assert (not b!690673))

(assert (not b!690676))

(assert (not b!690683))

(assert (not b!690686))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

