; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62656 () Bool)

(assert start!62656)

(declare-fun b!706925 () Bool)

(declare-fun res!470915 () Bool)

(declare-fun e!397948 () Bool)

(assert (=> b!706925 (=> (not res!470915) (not e!397948))))

(declare-datatypes ((List!13392 0))(
  ( (Nil!13389) (Cons!13388 (h!14433 (_ BitVec 64)) (t!19682 List!13392)) )
))
(declare-fun newAcc!49 () List!13392)

(declare-fun contains!3935 (List!13392 (_ BitVec 64)) Bool)

(assert (=> b!706925 (= res!470915 (not (contains!3935 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!706926 () Bool)

(declare-fun res!470912 () Bool)

(assert (=> b!706926 (=> (not res!470912) (not e!397948))))

(declare-fun acc!652 () List!13392)

(declare-fun subseq!379 (List!13392 List!13392) Bool)

(assert (=> b!706926 (= res!470912 (subseq!379 acc!652 newAcc!49))))

(declare-fun res!470914 () Bool)

(assert (=> start!62656 (=> (not res!470914) (not e!397948))))

(declare-datatypes ((array!40291 0))(
  ( (array!40292 (arr!19298 (Array (_ BitVec 32) (_ BitVec 64))) (size!19681 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40291)

(declare-fun from!2969 () (_ BitVec 32))

(assert (=> start!62656 (= res!470914 (and (bvslt (size!19681 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19681 a!3591))))))

(assert (=> start!62656 e!397948))

(assert (=> start!62656 true))

(declare-fun array_inv!15072 (array!40291) Bool)

(assert (=> start!62656 (array_inv!15072 a!3591)))

(declare-fun b!706927 () Bool)

(declare-fun res!470911 () Bool)

(assert (=> b!706927 (=> (not res!470911) (not e!397948))))

(declare-fun arrayNoDuplicates!0 (array!40291 (_ BitVec 32) List!13392) Bool)

(assert (=> b!706927 (= res!470911 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!706928 () Bool)

(declare-fun res!470918 () Bool)

(assert (=> b!706928 (=> (not res!470918) (not e!397948))))

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun -!344 (List!13392 (_ BitVec 64)) List!13392)

(assert (=> b!706928 (= res!470918 (= (-!344 newAcc!49 k!2824) acc!652))))

(declare-fun b!706929 () Bool)

(declare-fun res!470910 () Bool)

(assert (=> b!706929 (=> (not res!470910) (not e!397948))))

(assert (=> b!706929 (= res!470910 (contains!3935 newAcc!49 k!2824))))

(declare-fun b!706930 () Bool)

(declare-fun res!470921 () Bool)

(assert (=> b!706930 (=> (not res!470921) (not e!397948))))

(assert (=> b!706930 (= res!470921 (not (contains!3935 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!706931 () Bool)

(declare-fun res!470919 () Bool)

(assert (=> b!706931 (=> (not res!470919) (not e!397948))))

(declare-fun noDuplicate!1182 (List!13392) Bool)

(assert (=> b!706931 (= res!470919 (noDuplicate!1182 newAcc!49))))

(declare-fun b!706932 () Bool)

(declare-fun res!470916 () Bool)

(assert (=> b!706932 (=> (not res!470916) (not e!397948))))

(assert (=> b!706932 (= res!470916 (noDuplicate!1182 acc!652))))

(declare-fun b!706933 () Bool)

(declare-fun res!470920 () Bool)

(assert (=> b!706933 (=> (not res!470920) (not e!397948))))

(assert (=> b!706933 (= res!470920 (not (contains!3935 acc!652 k!2824)))))

(declare-fun b!706934 () Bool)

(declare-fun res!470917 () Bool)

(assert (=> b!706934 (=> (not res!470917) (not e!397948))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!706934 (= res!470917 (validKeyInArray!0 k!2824))))

(declare-fun b!706935 () Bool)

(declare-fun res!470909 () Bool)

(assert (=> b!706935 (=> (not res!470909) (not e!397948))))

(assert (=> b!706935 (= res!470909 (not (contains!3935 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!706936 () Bool)

(declare-fun res!470913 () Bool)

(assert (=> b!706936 (=> (not res!470913) (not e!397948))))

(declare-fun arrayContainsKey!0 (array!40291 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!706936 (= res!470913 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!706937 () Bool)

(assert (=> b!706937 (= e!397948 false)))

(declare-fun lt!317937 () Bool)

(assert (=> b!706937 (= lt!317937 (contains!3935 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!62656 res!470914) b!706932))

(assert (= (and b!706932 res!470916) b!706931))

(assert (= (and b!706931 res!470919) b!706935))

(assert (= (and b!706935 res!470909) b!706930))

(assert (= (and b!706930 res!470921) b!706936))

(assert (= (and b!706936 res!470913) b!706933))

(assert (= (and b!706933 res!470920) b!706934))

(assert (= (and b!706934 res!470917) b!706927))

(assert (= (and b!706927 res!470911) b!706926))

(assert (= (and b!706926 res!470912) b!706929))

(assert (= (and b!706929 res!470910) b!706928))

(assert (= (and b!706928 res!470918) b!706925))

(assert (= (and b!706925 res!470915) b!706937))

(declare-fun m!664679 () Bool)

(assert (=> b!706929 m!664679))

(declare-fun m!664681 () Bool)

(assert (=> b!706934 m!664681))

(declare-fun m!664683 () Bool)

(assert (=> b!706931 m!664683))

(declare-fun m!664685 () Bool)

(assert (=> b!706932 m!664685))

(declare-fun m!664687 () Bool)

(assert (=> b!706937 m!664687))

(declare-fun m!664689 () Bool)

(assert (=> b!706927 m!664689))

(declare-fun m!664691 () Bool)

(assert (=> b!706926 m!664691))

(declare-fun m!664693 () Bool)

(assert (=> b!706935 m!664693))

(declare-fun m!664695 () Bool)

(assert (=> b!706933 m!664695))

(declare-fun m!664697 () Bool)

(assert (=> start!62656 m!664697))

(declare-fun m!664699 () Bool)

(assert (=> b!706928 m!664699))

(declare-fun m!664701 () Bool)

(assert (=> b!706936 m!664701))

(declare-fun m!664703 () Bool)

(assert (=> b!706925 m!664703))

(declare-fun m!664705 () Bool)

(assert (=> b!706930 m!664705))

(push 1)

(assert (not b!706930))

(assert (not b!706935))

(assert (not b!706936))

(assert (not b!706934))

(assert (not b!706931))

(assert (not b!706929))

(assert (not b!706926))

