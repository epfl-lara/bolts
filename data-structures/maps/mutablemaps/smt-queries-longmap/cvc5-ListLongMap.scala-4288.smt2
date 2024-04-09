; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59772 () Bool)

(assert start!59772)

(declare-fun b!659841 () Bool)

(declare-fun res!428081 () Bool)

(declare-fun e!379177 () Bool)

(assert (=> b!659841 (=> (not res!428081) (not e!379177))))

(declare-fun e!379176 () Bool)

(assert (=> b!659841 (= res!428081 e!379176)))

(declare-fun res!428082 () Bool)

(assert (=> b!659841 (=> res!428082 e!379176)))

(declare-fun e!379173 () Bool)

(assert (=> b!659841 (= res!428082 e!379173)))

(declare-fun res!428083 () Bool)

(assert (=> b!659841 (=> (not res!428083) (not e!379173))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!659841 (= res!428083 (bvsgt from!3004 i!1382))))

(declare-fun b!659842 () Bool)

(declare-fun res!428079 () Bool)

(assert (=> b!659842 (=> (not res!428079) (not e!379177))))

(declare-datatypes ((List!12670 0))(
  ( (Nil!12667) (Cons!12666 (h!13711 (_ BitVec 64)) (t!18906 List!12670)) )
))
(declare-fun acc!681 () List!12670)

(declare-fun noDuplicate!460 (List!12670) Bool)

(assert (=> b!659842 (= res!428079 (noDuplicate!460 acc!681))))

(declare-fun b!659843 () Bool)

(declare-fun e!379175 () Bool)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3213 (List!12670 (_ BitVec 64)) Bool)

(assert (=> b!659843 (= e!379175 (not (contains!3213 acc!681 k!2843)))))

(declare-fun b!659845 () Bool)

(assert (=> b!659845 (= e!379176 e!379175)))

(declare-fun res!428087 () Bool)

(assert (=> b!659845 (=> (not res!428087) (not e!379175))))

(assert (=> b!659845 (= res!428087 (bvsle from!3004 i!1382))))

(declare-fun b!659846 () Bool)

(declare-fun res!428086 () Bool)

(assert (=> b!659846 (=> (not res!428086) (not e!379177))))

(assert (=> b!659846 (= res!428086 (not (contains!3213 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!659847 () Bool)

(assert (=> b!659847 (= e!379173 (contains!3213 acc!681 k!2843))))

(declare-fun b!659848 () Bool)

(declare-datatypes ((array!38775 0))(
  ( (array!38776 (arr!18576 (Array (_ BitVec 32) (_ BitVec 64))) (size!18940 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38775)

(assert (=> b!659848 (= e!379177 (bvsgt from!3004 (size!18940 a!3626)))))

(declare-fun b!659849 () Bool)

(declare-fun res!428084 () Bool)

(assert (=> b!659849 (=> (not res!428084) (not e!379177))))

(assert (=> b!659849 (= res!428084 (not (contains!3213 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!659844 () Bool)

(declare-fun res!428085 () Bool)

(assert (=> b!659844 (=> (not res!428085) (not e!379177))))

(declare-fun arrayNoDuplicates!0 (array!38775 (_ BitVec 32) List!12670) Bool)

(assert (=> b!659844 (= res!428085 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12667))))

(declare-fun res!428080 () Bool)

(assert (=> start!59772 (=> (not res!428080) (not e!379177))))

(assert (=> start!59772 (= res!428080 (and (bvslt (size!18940 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!18940 a!3626))))))

(assert (=> start!59772 e!379177))

(assert (=> start!59772 true))

(declare-fun array_inv!14350 (array!38775) Bool)

(assert (=> start!59772 (array_inv!14350 a!3626)))

(assert (= (and start!59772 res!428080) b!659842))

(assert (= (and b!659842 res!428079) b!659849))

(assert (= (and b!659849 res!428084) b!659846))

(assert (= (and b!659846 res!428086) b!659841))

(assert (= (and b!659841 res!428083) b!659847))

(assert (= (and b!659841 (not res!428082)) b!659845))

(assert (= (and b!659845 res!428087) b!659843))

(assert (= (and b!659841 res!428081) b!659844))

(assert (= (and b!659844 res!428085) b!659848))

(declare-fun m!632787 () Bool)

(assert (=> b!659847 m!632787))

(declare-fun m!632789 () Bool)

(assert (=> b!659844 m!632789))

(declare-fun m!632791 () Bool)

(assert (=> b!659842 m!632791))

(declare-fun m!632793 () Bool)

(assert (=> b!659846 m!632793))

(declare-fun m!632795 () Bool)

(assert (=> start!59772 m!632795))

(assert (=> b!659843 m!632787))

(declare-fun m!632797 () Bool)

(assert (=> b!659849 m!632797))

(push 1)

(assert (not start!59772))

(assert (not b!659849))

(assert (not b!659842))

(assert (not b!659847))

(assert (not b!659844))

(assert (not b!659843))

(assert (not b!659846))

(check-sat)

(pop 1)

(push 1)

(check-sat)

