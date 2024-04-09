; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!61788 () Bool)

(assert start!61788)

(declare-fun b!691105 () Bool)

(declare-fun res!455655 () Bool)

(declare-fun e!393351 () Bool)

(assert (=> b!691105 (=> (not res!455655) (not e!393351))))

(declare-fun i!1382 () (_ BitVec 32))

(declare-datatypes ((array!39765 0))(
  ( (array!39766 (arr!19047 (Array (_ BitVec 32) (_ BitVec 64))) (size!19430 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39765)

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!691105 (= res!455655 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19430 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!691106 () Bool)

(declare-fun res!455668 () Bool)

(assert (=> b!691106 (=> (not res!455668) (not e!393351))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!691106 (= res!455668 (validKeyInArray!0 (select (arr!19047 a!3626) from!3004)))))

(declare-fun b!691107 () Bool)

(declare-fun res!455666 () Bool)

(assert (=> b!691107 (=> (not res!455666) (not e!393351))))

(declare-datatypes ((List!13141 0))(
  ( (Nil!13138) (Cons!13137 (h!14182 (_ BitVec 64)) (t!19416 List!13141)) )
))
(declare-fun arrayNoDuplicates!0 (array!39765 (_ BitVec 32) List!13141) Bool)

(assert (=> b!691107 (= res!455666 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13138))))

(declare-fun b!691108 () Bool)

(declare-datatypes ((Unit!24358 0))(
  ( (Unit!24359) )
))
(declare-fun e!393350 () Unit!24358)

(declare-fun Unit!24360 () Unit!24358)

(assert (=> b!691108 (= e!393350 Unit!24360)))

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!39765 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!691108 (arrayContainsKey!0 a!3626 k!2843 from!3004)))

(declare-fun lt!316391 () Unit!24358)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39765 (_ BitVec 64) (_ BitVec 32)) Unit!24358)

(assert (=> b!691108 (= lt!316391 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!691108 false))

(declare-fun b!691109 () Bool)

(assert (=> b!691109 (= e!393351 false)))

(declare-fun lt!316392 () Unit!24358)

(assert (=> b!691109 (= lt!316392 e!393350)))

(declare-fun c!78092 () Bool)

(assert (=> b!691109 (= c!78092 (= (select (arr!19047 a!3626) from!3004) k!2843))))

(declare-fun b!691110 () Bool)

(declare-fun res!455663 () Bool)

(assert (=> b!691110 (=> (not res!455663) (not e!393351))))

(declare-fun acc!681 () List!13141)

(declare-fun contains!3684 (List!13141 (_ BitVec 64)) Bool)

(assert (=> b!691110 (= res!455663 (not (contains!3684 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!691112 () Bool)

(declare-fun res!455664 () Bool)

(assert (=> b!691112 (=> (not res!455664) (not e!393351))))

(assert (=> b!691112 (= res!455664 (validKeyInArray!0 k!2843))))

(declare-fun b!691113 () Bool)

(declare-fun res!455656 () Bool)

(assert (=> b!691113 (=> (not res!455656) (not e!393351))))

(declare-fun noDuplicate!931 (List!13141) Bool)

(assert (=> b!691113 (= res!455656 (noDuplicate!931 acc!681))))

(declare-fun b!691114 () Bool)

(declare-fun res!455660 () Bool)

(assert (=> b!691114 (=> (not res!455660) (not e!393351))))

(assert (=> b!691114 (= res!455660 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19430 a!3626))))))

(declare-fun b!691115 () Bool)

(declare-fun res!455667 () Bool)

(assert (=> b!691115 (=> (not res!455667) (not e!393351))))

(assert (=> b!691115 (= res!455667 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!691116 () Bool)

(declare-fun res!455669 () Bool)

(assert (=> b!691116 (=> (not res!455669) (not e!393351))))

(declare-fun e!393352 () Bool)

(assert (=> b!691116 (= res!455669 e!393352)))

(declare-fun res!455657 () Bool)

(assert (=> b!691116 (=> res!455657 e!393352)))

(declare-fun e!393355 () Bool)

(assert (=> b!691116 (= res!455657 e!393355)))

(declare-fun res!455661 () Bool)

(assert (=> b!691116 (=> (not res!455661) (not e!393355))))

(assert (=> b!691116 (= res!455661 (bvsgt from!3004 i!1382))))

(declare-fun b!691117 () Bool)

(declare-fun e!393353 () Bool)

(assert (=> b!691117 (= e!393352 e!393353)))

(declare-fun res!455659 () Bool)

(assert (=> b!691117 (=> (not res!455659) (not e!393353))))

(assert (=> b!691117 (= res!455659 (bvsle from!3004 i!1382))))

(declare-fun b!691118 () Bool)

(declare-fun res!455662 () Bool)

(assert (=> b!691118 (=> (not res!455662) (not e!393351))))

(assert (=> b!691118 (= res!455662 (not (contains!3684 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!691119 () Bool)

(declare-fun res!455658 () Bool)

(assert (=> b!691119 (=> (not res!455658) (not e!393351))))

(assert (=> b!691119 (= res!455658 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!691120 () Bool)

(declare-fun Unit!24361 () Unit!24358)

(assert (=> b!691120 (= e!393350 Unit!24361)))

(declare-fun b!691121 () Bool)

(assert (=> b!691121 (= e!393353 (not (contains!3684 acc!681 k!2843)))))

(declare-fun res!455665 () Bool)

(assert (=> start!61788 (=> (not res!455665) (not e!393351))))

(assert (=> start!61788 (= res!455665 (and (bvslt (size!19430 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19430 a!3626))))))

(assert (=> start!61788 e!393351))

(assert (=> start!61788 true))

(declare-fun array_inv!14821 (array!39765) Bool)

(assert (=> start!61788 (array_inv!14821 a!3626)))

(declare-fun b!691111 () Bool)

(assert (=> b!691111 (= e!393355 (contains!3684 acc!681 k!2843))))

(assert (= (and start!61788 res!455665) b!691113))

(assert (= (and b!691113 res!455656) b!691118))

(assert (= (and b!691118 res!455662) b!691110))

(assert (= (and b!691110 res!455663) b!691116))

(assert (= (and b!691116 res!455661) b!691111))

(assert (= (and b!691116 (not res!455657)) b!691117))

(assert (= (and b!691117 res!455659) b!691121))

(assert (= (and b!691116 res!455669) b!691107))

(assert (= (and b!691107 res!455666) b!691119))

(assert (= (and b!691119 res!455658) b!691114))

(assert (= (and b!691114 res!455660) b!691112))

(assert (= (and b!691112 res!455664) b!691115))

(assert (= (and b!691115 res!455667) b!691105))

(assert (= (and b!691105 res!455655) b!691106))

(assert (= (and b!691106 res!455668) b!691109))

(assert (= (and b!691109 c!78092) b!691108))

(assert (= (and b!691109 (not c!78092)) b!691120))

(declare-fun m!654261 () Bool)

(assert (=> b!691113 m!654261))

(declare-fun m!654263 () Bool)

(assert (=> start!61788 m!654263))

(declare-fun m!654265 () Bool)

(assert (=> b!691111 m!654265))

(assert (=> b!691121 m!654265))

(declare-fun m!654267 () Bool)

(assert (=> b!691107 m!654267))

(declare-fun m!654269 () Bool)

(assert (=> b!691118 m!654269))

(declare-fun m!654271 () Bool)

(assert (=> b!691106 m!654271))

(assert (=> b!691106 m!654271))

(declare-fun m!654273 () Bool)

(assert (=> b!691106 m!654273))

(declare-fun m!654275 () Bool)

(assert (=> b!691119 m!654275))

(assert (=> b!691109 m!654271))

(declare-fun m!654277 () Bool)

(assert (=> b!691108 m!654277))

(declare-fun m!654279 () Bool)

(assert (=> b!691108 m!654279))

(declare-fun m!654281 () Bool)

(assert (=> b!691110 m!654281))

(declare-fun m!654283 () Bool)

(assert (=> b!691115 m!654283))

(declare-fun m!654285 () Bool)

(assert (=> b!691112 m!654285))

(push 1)

(assert (not b!691111))

(assert (not b!691121))

(assert (not b!691112))

(assert (not b!691110))

(assert (not b!691113))

(assert (not b!691106))

(assert (not b!691115))

(assert (not start!61788))

(assert (not b!691107))

(assert (not b!691118))

(assert (not b!691108))

(assert (not b!691119))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

