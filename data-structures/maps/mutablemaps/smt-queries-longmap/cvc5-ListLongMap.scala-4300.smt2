; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59844 () Bool)

(assert start!59844)

(declare-fun b!660913 () Bool)

(declare-fun e!379717 () Bool)

(declare-fun e!379713 () Bool)

(assert (=> b!660913 (= e!379717 e!379713)))

(declare-fun res!429158 () Bool)

(assert (=> b!660913 (=> (not res!429158) (not e!379713))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!660913 (= res!429158 (bvsle from!3004 i!1382))))

(declare-fun b!660914 () Bool)

(declare-datatypes ((List!12706 0))(
  ( (Nil!12703) (Cons!12702 (h!13747 (_ BitVec 64)) (t!18942 List!12706)) )
))
(declare-fun acc!681 () List!12706)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3249 (List!12706 (_ BitVec 64)) Bool)

(assert (=> b!660914 (= e!379713 (not (contains!3249 acc!681 k!2843)))))

(declare-fun b!660916 () Bool)

(declare-fun res!429153 () Bool)

(declare-fun e!379714 () Bool)

(assert (=> b!660916 (=> (not res!429153) (not e!379714))))

(declare-datatypes ((array!38847 0))(
  ( (array!38848 (arr!18612 (Array (_ BitVec 32) (_ BitVec 64))) (size!18976 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38847)

(assert (=> b!660916 (= res!429153 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!18976 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!660917 () Bool)

(declare-fun res!429155 () Bool)

(assert (=> b!660917 (=> (not res!429155) (not e!379714))))

(assert (=> b!660917 (= res!429155 (not (contains!3249 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!660918 () Bool)

(declare-fun res!429159 () Bool)

(assert (=> b!660918 (=> (not res!429159) (not e!379714))))

(declare-fun arrayContainsKey!0 (array!38847 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!660918 (= res!429159 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!660919 () Bool)

(declare-fun e!379715 () Bool)

(assert (=> b!660919 (= e!379715 (contains!3249 acc!681 k!2843))))

(declare-fun b!660920 () Bool)

(declare-fun res!429151 () Bool)

(assert (=> b!660920 (=> (not res!429151) (not e!379714))))

(declare-fun noDuplicate!496 (List!12706) Bool)

(assert (=> b!660920 (= res!429151 (noDuplicate!496 acc!681))))

(declare-fun b!660921 () Bool)

(declare-fun res!429163 () Bool)

(assert (=> b!660921 (=> (not res!429163) (not e!379714))))

(assert (=> b!660921 (= res!429163 (not (contains!3249 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!660922 () Bool)

(declare-fun res!429160 () Bool)

(assert (=> b!660922 (=> (not res!429160) (not e!379714))))

(assert (=> b!660922 (= res!429160 e!379717)))

(declare-fun res!429162 () Bool)

(assert (=> b!660922 (=> res!429162 e!379717)))

(assert (=> b!660922 (= res!429162 e!379715)))

(declare-fun res!429152 () Bool)

(assert (=> b!660922 (=> (not res!429152) (not e!379715))))

(assert (=> b!660922 (= res!429152 (bvsgt from!3004 i!1382))))

(declare-fun b!660923 () Bool)

(declare-fun res!429154 () Bool)

(assert (=> b!660923 (=> (not res!429154) (not e!379714))))

(declare-fun arrayNoDuplicates!0 (array!38847 (_ BitVec 32) List!12706) Bool)

(assert (=> b!660923 (= res!429154 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12703))))

(declare-fun b!660915 () Bool)

(assert (=> b!660915 (= e!379714 (not true))))

(assert (=> b!660915 (arrayContainsKey!0 (array!38848 (store (arr!18612 a!3626) i!1382 k!2843) (size!18976 a!3626)) k!2843 from!3004)))

(declare-fun res!429157 () Bool)

(assert (=> start!59844 (=> (not res!429157) (not e!379714))))

(assert (=> start!59844 (= res!429157 (and (bvslt (size!18976 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!18976 a!3626))))))

(assert (=> start!59844 e!379714))

(assert (=> start!59844 true))

(declare-fun array_inv!14386 (array!38847) Bool)

(assert (=> start!59844 (array_inv!14386 a!3626)))

(declare-fun b!660924 () Bool)

(declare-fun res!429156 () Bool)

(assert (=> b!660924 (=> (not res!429156) (not e!379714))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!660924 (= res!429156 (validKeyInArray!0 k!2843))))

(declare-fun b!660925 () Bool)

(declare-fun res!429161 () Bool)

(assert (=> b!660925 (=> (not res!429161) (not e!379714))))

(assert (=> b!660925 (= res!429161 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!18976 a!3626))))))

(declare-fun b!660926 () Bool)

(declare-fun res!429164 () Bool)

(assert (=> b!660926 (=> (not res!429164) (not e!379714))))

(assert (=> b!660926 (= res!429164 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(assert (= (and start!59844 res!429157) b!660920))

(assert (= (and b!660920 res!429151) b!660917))

(assert (= (and b!660917 res!429155) b!660921))

(assert (= (and b!660921 res!429163) b!660922))

(assert (= (and b!660922 res!429152) b!660919))

(assert (= (and b!660922 (not res!429162)) b!660913))

(assert (= (and b!660913 res!429158) b!660914))

(assert (= (and b!660922 res!429160) b!660923))

(assert (= (and b!660923 res!429154) b!660926))

(assert (= (and b!660926 res!429164) b!660925))

(assert (= (and b!660925 res!429161) b!660924))

(assert (= (and b!660924 res!429156) b!660918))

(assert (= (and b!660918 res!429159) b!660916))

(assert (= (and b!660916 res!429153) b!660915))

(declare-fun m!633321 () Bool)

(assert (=> b!660920 m!633321))

(declare-fun m!633323 () Bool)

(assert (=> b!660923 m!633323))

(declare-fun m!633325 () Bool)

(assert (=> b!660921 m!633325))

(declare-fun m!633327 () Bool)

(assert (=> start!59844 m!633327))

(declare-fun m!633329 () Bool)

(assert (=> b!660924 m!633329))

(declare-fun m!633331 () Bool)

(assert (=> b!660926 m!633331))

(declare-fun m!633333 () Bool)

(assert (=> b!660915 m!633333))

(declare-fun m!633335 () Bool)

(assert (=> b!660915 m!633335))

(declare-fun m!633337 () Bool)

(assert (=> b!660919 m!633337))

(declare-fun m!633339 () Bool)

(assert (=> b!660918 m!633339))

(assert (=> b!660914 m!633337))

(declare-fun m!633341 () Bool)

(assert (=> b!660917 m!633341))

(push 1)

(assert (not b!660919))

(assert (not b!660918))

(assert (not b!660926))

(assert (not b!660917))

(assert (not b!660924))

(assert (not b!660920))

(assert (not b!660914))

(assert (not b!660915))

(assert (not b!660923))

(assert (not b!660921))

(assert (not start!59844))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

