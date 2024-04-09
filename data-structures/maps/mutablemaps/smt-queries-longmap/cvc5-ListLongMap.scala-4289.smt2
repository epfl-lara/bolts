; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59778 () Bool)

(assert start!59778)

(declare-fun b!659920 () Bool)

(declare-fun res!428160 () Bool)

(declare-fun e!379218 () Bool)

(assert (=> b!659920 (=> (not res!428160) (not e!379218))))

(declare-datatypes ((List!12673 0))(
  ( (Nil!12670) (Cons!12669 (h!13714 (_ BitVec 64)) (t!18909 List!12673)) )
))
(declare-fun acc!681 () List!12673)

(declare-fun contains!3216 (List!12673 (_ BitVec 64)) Bool)

(assert (=> b!659920 (= res!428160 (not (contains!3216 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!659922 () Bool)

(declare-fun res!428161 () Bool)

(assert (=> b!659922 (=> (not res!428161) (not e!379218))))

(declare-fun noDuplicate!463 (List!12673) Bool)

(assert (=> b!659922 (= res!428161 (noDuplicate!463 acc!681))))

(declare-fun b!659923 () Bool)

(declare-fun e!379219 () Bool)

(declare-fun k!2843 () (_ BitVec 64))

(assert (=> b!659923 (= e!379219 (not (contains!3216 acc!681 k!2843)))))

(declare-fun b!659924 () Bool)

(declare-fun res!428158 () Bool)

(assert (=> b!659924 (=> (not res!428158) (not e!379218))))

(declare-fun e!379220 () Bool)

(assert (=> b!659924 (= res!428158 e!379220)))

(declare-fun res!428159 () Bool)

(assert (=> b!659924 (=> res!428159 e!379220)))

(declare-fun e!379222 () Bool)

(assert (=> b!659924 (= res!428159 e!379222)))

(declare-fun res!428165 () Bool)

(assert (=> b!659924 (=> (not res!428165) (not e!379222))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!659924 (= res!428165 (bvsgt from!3004 i!1382))))

(declare-fun b!659925 () Bool)

(assert (=> b!659925 (= e!379220 e!379219)))

(declare-fun res!428164 () Bool)

(assert (=> b!659925 (=> (not res!428164) (not e!379219))))

(assert (=> b!659925 (= res!428164 (bvsle from!3004 i!1382))))

(declare-fun b!659926 () Bool)

(declare-fun res!428162 () Bool)

(assert (=> b!659926 (=> (not res!428162) (not e!379218))))

(assert (=> b!659926 (= res!428162 (not (contains!3216 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!659927 () Bool)

(assert (=> b!659927 (= e!379222 (contains!3216 acc!681 k!2843))))

(declare-fun res!428163 () Bool)

(assert (=> start!59778 (=> (not res!428163) (not e!379218))))

(declare-datatypes ((array!38781 0))(
  ( (array!38782 (arr!18579 (Array (_ BitVec 32) (_ BitVec 64))) (size!18943 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38781)

(assert (=> start!59778 (= res!428163 (and (bvslt (size!18943 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!18943 a!3626))))))

(assert (=> start!59778 e!379218))

(assert (=> start!59778 true))

(declare-fun array_inv!14353 (array!38781) Bool)

(assert (=> start!59778 (array_inv!14353 a!3626)))

(declare-fun b!659921 () Bool)

(assert (=> b!659921 (= e!379218 false)))

(declare-fun lt!308688 () Bool)

(declare-fun arrayNoDuplicates!0 (array!38781 (_ BitVec 32) List!12673) Bool)

(assert (=> b!659921 (= lt!308688 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12670))))

(assert (= (and start!59778 res!428163) b!659922))

(assert (= (and b!659922 res!428161) b!659926))

(assert (= (and b!659926 res!428162) b!659920))

(assert (= (and b!659920 res!428160) b!659924))

(assert (= (and b!659924 res!428165) b!659927))

(assert (= (and b!659924 (not res!428159)) b!659925))

(assert (= (and b!659925 res!428164) b!659923))

(assert (= (and b!659924 res!428158) b!659921))

(declare-fun m!632823 () Bool)

(assert (=> b!659922 m!632823))

(declare-fun m!632825 () Bool)

(assert (=> b!659921 m!632825))

(declare-fun m!632827 () Bool)

(assert (=> b!659926 m!632827))

(declare-fun m!632829 () Bool)

(assert (=> start!59778 m!632829))

(declare-fun m!632831 () Bool)

(assert (=> b!659923 m!632831))

(declare-fun m!632833 () Bool)

(assert (=> b!659920 m!632833))

(assert (=> b!659927 m!632831))

(push 1)

(assert (not b!659923))

(assert (not b!659920))

(assert (not b!659926))

(assert (not b!659922))

(assert (not start!59778))

(assert (not b!659927))

(assert (not b!659921))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

