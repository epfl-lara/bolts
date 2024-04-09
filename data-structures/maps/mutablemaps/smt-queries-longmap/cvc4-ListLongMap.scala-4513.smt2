; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62566 () Bool)

(assert start!62566)

(declare-fun b!704841 () Bool)

(declare-fun res!468839 () Bool)

(declare-fun e!397678 () Bool)

(assert (=> b!704841 (=> (not res!468839) (not e!397678))))

(declare-datatypes ((List!13347 0))(
  ( (Nil!13344) (Cons!13343 (h!14388 (_ BitVec 64)) (t!19637 List!13347)) )
))
(declare-fun newAcc!49 () List!13347)

(declare-fun contains!3890 (List!13347 (_ BitVec 64)) Bool)

(assert (=> b!704841 (= res!468839 (not (contains!3890 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!704842 () Bool)

(declare-fun res!468834 () Bool)

(assert (=> b!704842 (=> (not res!468834) (not e!397678))))

(declare-fun noDuplicate!1137 (List!13347) Bool)

(assert (=> b!704842 (= res!468834 (noDuplicate!1137 newAcc!49))))

(declare-fun b!704843 () Bool)

(declare-fun res!468838 () Bool)

(assert (=> b!704843 (=> (not res!468838) (not e!397678))))

(declare-fun from!2969 () (_ BitVec 32))

(assert (=> b!704843 (= res!468838 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun b!704844 () Bool)

(declare-fun res!468837 () Bool)

(assert (=> b!704844 (=> (not res!468837) (not e!397678))))

(declare-fun acc!652 () List!13347)

(assert (=> b!704844 (= res!468837 (not (contains!3890 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!704845 () Bool)

(declare-fun res!468841 () Bool)

(assert (=> b!704845 (=> (not res!468841) (not e!397678))))

(declare-fun k!2824 () (_ BitVec 64))

(assert (=> b!704845 (= res!468841 (contains!3890 newAcc!49 k!2824))))

(declare-fun b!704846 () Bool)

(declare-fun res!468825 () Bool)

(assert (=> b!704846 (=> (not res!468825) (not e!397678))))

(assert (=> b!704846 (= res!468825 (noDuplicate!1137 acc!652))))

(declare-fun b!704847 () Bool)

(declare-fun res!468831 () Bool)

(assert (=> b!704847 (=> (not res!468831) (not e!397678))))

(assert (=> b!704847 (= res!468831 (not (contains!3890 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!704848 () Bool)

(assert (=> b!704848 (= e!397678 false)))

(declare-datatypes ((array!40201 0))(
  ( (array!40202 (arr!19253 (Array (_ BitVec 32) (_ BitVec 64))) (size!19636 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40201)

(declare-fun lt!317820 () Bool)

(declare-fun arrayNoDuplicates!0 (array!40201 (_ BitVec 32) List!13347) Bool)

(assert (=> b!704848 (= lt!317820 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) acc!652))))

(declare-fun b!704849 () Bool)

(declare-fun res!468836 () Bool)

(assert (=> b!704849 (=> (not res!468836) (not e!397678))))

(declare-fun arrayContainsKey!0 (array!40201 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!704849 (= res!468836 (not (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!704850 () Bool)

(declare-fun res!468829 () Bool)

(assert (=> b!704850 (=> (not res!468829) (not e!397678))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!704850 (= res!468829 (validKeyInArray!0 k!2824))))

(declare-fun b!704851 () Bool)

(declare-fun res!468826 () Bool)

(assert (=> b!704851 (=> (not res!468826) (not e!397678))))

(declare-fun -!299 (List!13347 (_ BitVec 64)) List!13347)

(assert (=> b!704851 (= res!468826 (= (-!299 newAcc!49 k!2824) acc!652))))

(declare-fun b!704852 () Bool)

(declare-fun res!468827 () Bool)

(assert (=> b!704852 (=> (not res!468827) (not e!397678))))

(assert (=> b!704852 (= res!468827 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!704853 () Bool)

(declare-fun res!468830 () Bool)

(assert (=> b!704853 (=> (not res!468830) (not e!397678))))

(declare-fun subseq!334 (List!13347 List!13347) Bool)

(assert (=> b!704853 (= res!468830 (subseq!334 acc!652 newAcc!49))))

(declare-fun b!704854 () Bool)

(declare-fun res!468842 () Bool)

(assert (=> b!704854 (=> (not res!468842) (not e!397678))))

(assert (=> b!704854 (= res!468842 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!704855 () Bool)

(declare-fun res!468840 () Bool)

(assert (=> b!704855 (=> (not res!468840) (not e!397678))))

(assert (=> b!704855 (= res!468840 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19636 a!3591)))))

(declare-fun b!704856 () Bool)

(declare-fun res!468835 () Bool)

(assert (=> b!704856 (=> (not res!468835) (not e!397678))))

(assert (=> b!704856 (= res!468835 (not (validKeyInArray!0 (select (arr!19253 a!3591) from!2969))))))

(declare-fun res!468833 () Bool)

(assert (=> start!62566 (=> (not res!468833) (not e!397678))))

(assert (=> start!62566 (= res!468833 (and (bvslt (size!19636 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19636 a!3591))))))

(assert (=> start!62566 e!397678))

(assert (=> start!62566 true))

(declare-fun array_inv!15027 (array!40201) Bool)

(assert (=> start!62566 (array_inv!15027 a!3591)))

(declare-fun b!704857 () Bool)

(declare-fun res!468828 () Bool)

(assert (=> b!704857 (=> (not res!468828) (not e!397678))))

(assert (=> b!704857 (= res!468828 (not (contains!3890 acc!652 k!2824)))))

(declare-fun b!704858 () Bool)

(declare-fun res!468832 () Bool)

(assert (=> b!704858 (=> (not res!468832) (not e!397678))))

(assert (=> b!704858 (= res!468832 (not (contains!3890 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!62566 res!468833) b!704846))

(assert (= (and b!704846 res!468825) b!704842))

(assert (= (and b!704842 res!468834) b!704844))

(assert (= (and b!704844 res!468837) b!704847))

(assert (= (and b!704847 res!468831) b!704852))

(assert (= (and b!704852 res!468827) b!704857))

(assert (= (and b!704857 res!468828) b!704850))

(assert (= (and b!704850 res!468829) b!704854))

(assert (= (and b!704854 res!468842) b!704853))

(assert (= (and b!704853 res!468830) b!704845))

(assert (= (and b!704845 res!468841) b!704851))

(assert (= (and b!704851 res!468826) b!704858))

(assert (= (and b!704858 res!468832) b!704841))

(assert (= (and b!704841 res!468839) b!704855))

(assert (= (and b!704855 res!468840) b!704856))

(assert (= (and b!704856 res!468835) b!704843))

(assert (= (and b!704843 res!468838) b!704849))

(assert (= (and b!704849 res!468836) b!704848))

(declare-fun m!663219 () Bool)

(assert (=> start!62566 m!663219))

(declare-fun m!663221 () Bool)

(assert (=> b!704846 m!663221))

(declare-fun m!663223 () Bool)

(assert (=> b!704853 m!663223))

(declare-fun m!663225 () Bool)

(assert (=> b!704848 m!663225))

(declare-fun m!663227 () Bool)

(assert (=> b!704850 m!663227))

(declare-fun m!663229 () Bool)

(assert (=> b!704851 m!663229))

(declare-fun m!663231 () Bool)

(assert (=> b!704841 m!663231))

(declare-fun m!663233 () Bool)

(assert (=> b!704858 m!663233))

(declare-fun m!663235 () Bool)

(assert (=> b!704849 m!663235))

(declare-fun m!663237 () Bool)

(assert (=> b!704847 m!663237))

(declare-fun m!663239 () Bool)

(assert (=> b!704845 m!663239))

(declare-fun m!663241 () Bool)

(assert (=> b!704854 m!663241))

(declare-fun m!663243 () Bool)

(assert (=> b!704842 m!663243))

(declare-fun m!663245 () Bool)

(assert (=> b!704857 m!663245))

(declare-fun m!663247 () Bool)

(assert (=> b!704852 m!663247))

(declare-fun m!663249 () Bool)

(assert (=> b!704844 m!663249))

(declare-fun m!663251 () Bool)

(assert (=> b!704856 m!663251))

(assert (=> b!704856 m!663251))

(declare-fun m!663253 () Bool)

(assert (=> b!704856 m!663253))

(push 1)

(assert (not b!704854))

(assert (not b!704857))

(assert (not b!704856))

(assert (not b!704846))

(assert (not b!704841))

(assert (not b!704848))

(assert (not b!704850))

(assert (not b!704851))

(assert (not b!704842))

(assert (not b!704849))

(assert (not b!704845))

(assert (not b!704853))

(assert (not b!704858))

(assert (not b!704852))

(assert (not b!704847))

(assert (not start!62566))

(assert (not b!704844))

(check-sat)

