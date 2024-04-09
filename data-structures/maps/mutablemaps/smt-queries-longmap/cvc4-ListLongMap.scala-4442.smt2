; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!61774 () Bool)

(assert start!61774)

(declare-fun b!690767 () Bool)

(declare-fun res!455327 () Bool)

(declare-fun e!393244 () Bool)

(assert (=> b!690767 (=> (not res!455327) (not e!393244))))

(declare-fun i!1382 () (_ BitVec 32))

(declare-datatypes ((array!39751 0))(
  ( (array!39752 (arr!19040 (Array (_ BitVec 32) (_ BitVec 64))) (size!19423 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39751)

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!690767 (= res!455327 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19423 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!690768 () Bool)

(declare-fun res!455330 () Bool)

(assert (=> b!690768 (=> (not res!455330) (not e!393244))))

(declare-fun k!2843 () (_ BitVec 64))

(assert (=> b!690768 (= res!455330 (= (select (arr!19040 a!3626) from!3004) k!2843))))

(declare-fun b!690769 () Bool)

(declare-fun res!455322 () Bool)

(assert (=> b!690769 (=> (not res!455322) (not e!393244))))

(declare-datatypes ((List!13134 0))(
  ( (Nil!13131) (Cons!13130 (h!14175 (_ BitVec 64)) (t!19409 List!13134)) )
))
(declare-fun acc!681 () List!13134)

(declare-fun contains!3677 (List!13134 (_ BitVec 64)) Bool)

(assert (=> b!690769 (= res!455322 (not (contains!3677 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!690770 () Bool)

(declare-fun res!455336 () Bool)

(assert (=> b!690770 (=> (not res!455336) (not e!393244))))

(declare-fun e!393246 () Bool)

(assert (=> b!690770 (= res!455336 e!393246)))

(declare-fun res!455334 () Bool)

(assert (=> b!690770 (=> res!455334 e!393246)))

(declare-fun e!393247 () Bool)

(assert (=> b!690770 (= res!455334 e!393247)))

(declare-fun res!455329 () Bool)

(assert (=> b!690770 (=> (not res!455329) (not e!393247))))

(assert (=> b!690770 (= res!455329 (bvsgt from!3004 i!1382))))

(declare-fun b!690771 () Bool)

(declare-fun res!455328 () Bool)

(assert (=> b!690771 (=> (not res!455328) (not e!393244))))

(declare-fun arrayNoDuplicates!0 (array!39751 (_ BitVec 32) List!13134) Bool)

(assert (=> b!690771 (= res!455328 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!690772 () Bool)

(declare-fun res!455321 () Bool)

(assert (=> b!690772 (=> (not res!455321) (not e!393244))))

(assert (=> b!690772 (= res!455321 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19423 a!3626))))))

(declare-fun b!690773 () Bool)

(declare-fun res!455331 () Bool)

(assert (=> b!690773 (=> (not res!455331) (not e!393244))))

(assert (=> b!690773 (= res!455331 (not (contains!3677 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!690775 () Bool)

(declare-fun res!455326 () Bool)

(assert (=> b!690775 (=> (not res!455326) (not e!393244))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!690775 (= res!455326 (validKeyInArray!0 (select (arr!19040 a!3626) from!3004)))))

(declare-fun b!690776 () Bool)

(declare-fun res!455323 () Bool)

(assert (=> b!690776 (=> (not res!455323) (not e!393244))))

(assert (=> b!690776 (= res!455323 (validKeyInArray!0 k!2843))))

(declare-fun b!690777 () Bool)

(declare-fun res!455332 () Bool)

(assert (=> b!690777 (=> (not res!455332) (not e!393244))))

(declare-fun noDuplicate!924 (List!13134) Bool)

(assert (=> b!690777 (= res!455332 (noDuplicate!924 acc!681))))

(declare-fun b!690778 () Bool)

(declare-fun res!455324 () Bool)

(assert (=> b!690778 (=> (not res!455324) (not e!393244))))

(declare-fun arrayContainsKey!0 (array!39751 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!690778 (= res!455324 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!690779 () Bool)

(assert (=> b!690779 (= e!393247 (contains!3677 acc!681 k!2843))))

(declare-fun b!690780 () Bool)

(declare-fun e!393243 () Bool)

(assert (=> b!690780 (= e!393243 (not (contains!3677 acc!681 k!2843)))))

(declare-fun res!455325 () Bool)

(assert (=> start!61774 (=> (not res!455325) (not e!393244))))

(assert (=> start!61774 (= res!455325 (and (bvslt (size!19423 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19423 a!3626))))))

(assert (=> start!61774 e!393244))

(assert (=> start!61774 true))

(declare-fun array_inv!14814 (array!39751) Bool)

(assert (=> start!61774 (array_inv!14814 a!3626)))

(declare-fun b!690774 () Bool)

(declare-fun res!455335 () Bool)

(assert (=> b!690774 (=> (not res!455335) (not e!393244))))

(assert (=> b!690774 (= res!455335 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13131))))

(declare-fun b!690781 () Bool)

(assert (=> b!690781 (= e!393246 e!393243)))

(declare-fun res!455333 () Bool)

(assert (=> b!690781 (=> (not res!455333) (not e!393243))))

(assert (=> b!690781 (= res!455333 (bvsle from!3004 i!1382))))

(declare-fun b!690782 () Bool)

(assert (=> b!690782 (= e!393244 (not true))))

(assert (=> b!690782 (arrayContainsKey!0 a!3626 k!2843 from!3004)))

(assert (= (and start!61774 res!455325) b!690777))

(assert (= (and b!690777 res!455332) b!690773))

(assert (= (and b!690773 res!455331) b!690769))

(assert (= (and b!690769 res!455322) b!690770))

(assert (= (and b!690770 res!455329) b!690779))

(assert (= (and b!690770 (not res!455334)) b!690781))

(assert (= (and b!690781 res!455333) b!690780))

(assert (= (and b!690770 res!455336) b!690774))

(assert (= (and b!690774 res!455335) b!690771))

(assert (= (and b!690771 res!455328) b!690772))

(assert (= (and b!690772 res!455321) b!690776))

(assert (= (and b!690776 res!455323) b!690778))

(assert (= (and b!690778 res!455324) b!690767))

(assert (= (and b!690767 res!455327) b!690775))

(assert (= (and b!690775 res!455326) b!690768))

(assert (= (and b!690768 res!455330) b!690782))

(declare-fun m!654087 () Bool)

(assert (=> b!690778 m!654087))

(declare-fun m!654089 () Bool)

(assert (=> b!690771 m!654089))

(declare-fun m!654091 () Bool)

(assert (=> b!690779 m!654091))

(declare-fun m!654093 () Bool)

(assert (=> start!61774 m!654093))

(declare-fun m!654095 () Bool)

(assert (=> b!690768 m!654095))

(declare-fun m!654097 () Bool)

(assert (=> b!690777 m!654097))

(declare-fun m!654099 () Bool)

(assert (=> b!690773 m!654099))

(declare-fun m!654101 () Bool)

(assert (=> b!690782 m!654101))

(declare-fun m!654103 () Bool)

(assert (=> b!690774 m!654103))

(declare-fun m!654105 () Bool)

(assert (=> b!690769 m!654105))

(assert (=> b!690775 m!654095))

(assert (=> b!690775 m!654095))

(declare-fun m!654107 () Bool)

(assert (=> b!690775 m!654107))

(assert (=> b!690780 m!654091))

(declare-fun m!654109 () Bool)

(assert (=> b!690776 m!654109))

(push 1)

(assert (not b!690774))

(assert (not b!690777))

(assert (not b!690782))

(assert (not b!690769))

(assert (not b!690776))

(assert (not start!61774))

(assert (not b!690775))

(assert (not b!690779))

(assert (not b!690778))

(assert (not b!690771))

(assert (not b!690773))

(assert (not b!690780))

(check-sat)

(pop 1)

