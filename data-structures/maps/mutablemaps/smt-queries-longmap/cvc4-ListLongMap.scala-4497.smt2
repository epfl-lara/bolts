; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62470 () Bool)

(assert start!62470)

(declare-fun b!701843 () Bool)

(declare-fun res!465851 () Bool)

(declare-fun e!397352 () Bool)

(assert (=> b!701843 (=> (not res!465851) (not e!397352))))

(declare-datatypes ((List!13299 0))(
  ( (Nil!13296) (Cons!13295 (h!14340 (_ BitVec 64)) (t!19589 List!13299)) )
))
(declare-fun newAcc!49 () List!13299)

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun acc!652 () List!13299)

(declare-fun -!251 (List!13299 (_ BitVec 64)) List!13299)

(assert (=> b!701843 (= res!465851 (= (-!251 newAcc!49 k!2824) acc!652))))

(declare-fun b!701844 () Bool)

(declare-fun res!465841 () Bool)

(assert (=> b!701844 (=> (not res!465841) (not e!397352))))

(declare-fun noDuplicate!1089 (List!13299) Bool)

(assert (=> b!701844 (= res!465841 (noDuplicate!1089 newAcc!49))))

(declare-fun b!701845 () Bool)

(declare-fun res!465834 () Bool)

(assert (=> b!701845 (=> (not res!465834) (not e!397352))))

(declare-datatypes ((array!40105 0))(
  ( (array!40106 (arr!19205 (Array (_ BitVec 32) (_ BitVec 64))) (size!19588 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40105)

(declare-fun from!2969 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!701845 (= res!465834 (validKeyInArray!0 (select (arr!19205 a!3591) from!2969)))))

(declare-fun b!701846 () Bool)

(declare-fun res!465852 () Bool)

(declare-fun e!397354 () Bool)

(assert (=> b!701846 (=> (not res!465852) (not e!397354))))

(declare-fun lt!317604 () List!13299)

(declare-fun arrayNoDuplicates!0 (array!40105 (_ BitVec 32) List!13299) Bool)

(assert (=> b!701846 (= res!465852 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) lt!317604))))

(declare-fun b!701847 () Bool)

(declare-fun res!465844 () Bool)

(assert (=> b!701847 (=> (not res!465844) (not e!397354))))

(assert (=> b!701847 (= res!465844 (noDuplicate!1089 lt!317604))))

(declare-fun b!701848 () Bool)

(declare-fun res!465829 () Bool)

(assert (=> b!701848 (=> (not res!465829) (not e!397354))))

(declare-fun lt!317603 () List!13299)

(declare-fun contains!3842 (List!13299 (_ BitVec 64)) Bool)

(assert (=> b!701848 (= res!465829 (contains!3842 lt!317603 k!2824))))

(declare-fun b!701849 () Bool)

(declare-fun res!465842 () Bool)

(assert (=> b!701849 (=> (not res!465842) (not e!397352))))

(assert (=> b!701849 (= res!465842 (not (contains!3842 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!701850 () Bool)

(declare-fun res!465845 () Bool)

(assert (=> b!701850 (=> (not res!465845) (not e!397352))))

(assert (=> b!701850 (= res!465845 (contains!3842 newAcc!49 k!2824))))

(declare-fun b!701851 () Bool)

(declare-fun res!465843 () Bool)

(assert (=> b!701851 (=> (not res!465843) (not e!397352))))

(assert (=> b!701851 (= res!465843 (not (contains!3842 acc!652 k!2824)))))

(declare-fun b!701852 () Bool)

(declare-fun res!465849 () Bool)

(assert (=> b!701852 (=> (not res!465849) (not e!397352))))

(assert (=> b!701852 (= res!465849 (validKeyInArray!0 k!2824))))

(declare-fun b!701853 () Bool)

(declare-fun res!465837 () Bool)

(assert (=> b!701853 (=> (not res!465837) (not e!397354))))

(assert (=> b!701853 (= res!465837 (not (contains!3842 lt!317604 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!701854 () Bool)

(declare-fun res!465836 () Bool)

(assert (=> b!701854 (=> (not res!465836) (not e!397354))))

(assert (=> b!701854 (= res!465836 (= (-!251 lt!317603 k!2824) lt!317604))))

(declare-fun b!701855 () Bool)

(declare-fun res!465833 () Bool)

(assert (=> b!701855 (=> (not res!465833) (not e!397354))))

(assert (=> b!701855 (= res!465833 (not (contains!3842 lt!317604 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!701856 () Bool)

(declare-fun res!465838 () Bool)

(assert (=> b!701856 (=> (not res!465838) (not e!397352))))

(assert (=> b!701856 (= res!465838 (not (contains!3842 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!701857 () Bool)

(declare-fun res!465854 () Bool)

(assert (=> b!701857 (=> (not res!465854) (not e!397354))))

(assert (=> b!701857 (= res!465854 (not (contains!3842 lt!317603 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!701858 () Bool)

(declare-fun res!465832 () Bool)

(assert (=> b!701858 (=> (not res!465832) (not e!397354))))

(assert (=> b!701858 (= res!465832 (noDuplicate!1089 lt!317603))))

(declare-fun b!701859 () Bool)

(declare-fun res!465827 () Bool)

(assert (=> b!701859 (=> (not res!465827) (not e!397354))))

(declare-fun arrayContainsKey!0 (array!40105 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!701859 (= res!465827 (not (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!701860 () Bool)

(declare-fun res!465828 () Bool)

(assert (=> b!701860 (=> (not res!465828) (not e!397354))))

(declare-fun subseq!286 (List!13299 List!13299) Bool)

(assert (=> b!701860 (= res!465828 (subseq!286 lt!317604 lt!317603))))

(declare-fun b!701861 () Bool)

(declare-fun res!465850 () Bool)

(assert (=> b!701861 (=> (not res!465850) (not e!397352))))

(assert (=> b!701861 (= res!465850 (not (contains!3842 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!701862 () Bool)

(declare-fun res!465848 () Bool)

(assert (=> b!701862 (=> (not res!465848) (not e!397352))))

(assert (=> b!701862 (= res!465848 (not (contains!3842 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!701863 () Bool)

(declare-fun res!465840 () Bool)

(assert (=> b!701863 (=> (not res!465840) (not e!397352))))

(assert (=> b!701863 (= res!465840 (noDuplicate!1089 acc!652))))

(declare-fun b!701864 () Bool)

(declare-fun res!465853 () Bool)

(assert (=> b!701864 (=> (not res!465853) (not e!397352))))

(assert (=> b!701864 (= res!465853 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19588 a!3591)))))

(declare-fun b!701865 () Bool)

(declare-fun res!465839 () Bool)

(assert (=> b!701865 (=> (not res!465839) (not e!397352))))

(assert (=> b!701865 (= res!465839 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun res!465830 () Bool)

(assert (=> start!62470 (=> (not res!465830) (not e!397352))))

(assert (=> start!62470 (= res!465830 (and (bvslt (size!19588 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19588 a!3591))))))

(assert (=> start!62470 e!397352))

(assert (=> start!62470 true))

(declare-fun array_inv!14979 (array!40105) Bool)

(assert (=> start!62470 (array_inv!14979 a!3591)))

(declare-fun b!701866 () Bool)

(assert (=> b!701866 (= e!397352 e!397354)))

(declare-fun res!465847 () Bool)

(assert (=> b!701866 (=> (not res!465847) (not e!397354))))

(assert (=> b!701866 (= res!465847 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!483 (List!13299 (_ BitVec 64)) List!13299)

(assert (=> b!701866 (= lt!317603 ($colon$colon!483 newAcc!49 (select (arr!19205 a!3591) from!2969)))))

(assert (=> b!701866 (= lt!317604 ($colon$colon!483 acc!652 (select (arr!19205 a!3591) from!2969)))))

(declare-fun b!701867 () Bool)

(assert (=> b!701867 (= e!397354 false)))

(declare-fun lt!317602 () Bool)

(assert (=> b!701867 (= lt!317602 (contains!3842 lt!317603 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!701868 () Bool)

(declare-fun res!465831 () Bool)

(assert (=> b!701868 (=> (not res!465831) (not e!397352))))

(assert (=> b!701868 (= res!465831 (subseq!286 acc!652 newAcc!49))))

(declare-fun b!701869 () Bool)

(declare-fun res!465846 () Bool)

(assert (=> b!701869 (=> (not res!465846) (not e!397354))))

(assert (=> b!701869 (= res!465846 (not (contains!3842 lt!317604 k!2824)))))

(declare-fun b!701870 () Bool)

(declare-fun res!465835 () Bool)

(assert (=> b!701870 (=> (not res!465835) (not e!397352))))

(assert (=> b!701870 (= res!465835 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(assert (= (and start!62470 res!465830) b!701863))

(assert (= (and b!701863 res!465840) b!701844))

(assert (= (and b!701844 res!465841) b!701856))

(assert (= (and b!701856 res!465838) b!701862))

(assert (= (and b!701862 res!465848) b!701870))

(assert (= (and b!701870 res!465835) b!701851))

(assert (= (and b!701851 res!465843) b!701852))

(assert (= (and b!701852 res!465849) b!701865))

(assert (= (and b!701865 res!465839) b!701868))

(assert (= (and b!701868 res!465831) b!701850))

(assert (= (and b!701850 res!465845) b!701843))

(assert (= (and b!701843 res!465851) b!701849))

(assert (= (and b!701849 res!465842) b!701861))

(assert (= (and b!701861 res!465850) b!701864))

(assert (= (and b!701864 res!465853) b!701845))

(assert (= (and b!701845 res!465834) b!701866))

(assert (= (and b!701866 res!465847) b!701847))

(assert (= (and b!701847 res!465844) b!701858))

(assert (= (and b!701858 res!465832) b!701855))

(assert (= (and b!701855 res!465833) b!701853))

(assert (= (and b!701853 res!465837) b!701859))

(assert (= (and b!701859 res!465827) b!701869))

(assert (= (and b!701869 res!465846) b!701846))

(assert (= (and b!701846 res!465852) b!701860))

(assert (= (and b!701860 res!465828) b!701848))

(assert (= (and b!701848 res!465829) b!701854))

(assert (= (and b!701854 res!465836) b!701857))

(assert (= (and b!701857 res!465854) b!701867))

(declare-fun m!661131 () Bool)

(assert (=> b!701855 m!661131))

(declare-fun m!661133 () Bool)

(assert (=> start!62470 m!661133))

(declare-fun m!661135 () Bool)

(assert (=> b!701856 m!661135))

(declare-fun m!661137 () Bool)

(assert (=> b!701867 m!661137))

(declare-fun m!661139 () Bool)

(assert (=> b!701851 m!661139))

(declare-fun m!661141 () Bool)

(assert (=> b!701844 m!661141))

(declare-fun m!661143 () Bool)

(assert (=> b!701853 m!661143))

(declare-fun m!661145 () Bool)

(assert (=> b!701870 m!661145))

(declare-fun m!661147 () Bool)

(assert (=> b!701843 m!661147))

(declare-fun m!661149 () Bool)

(assert (=> b!701865 m!661149))

(declare-fun m!661151 () Bool)

(assert (=> b!701848 m!661151))

(declare-fun m!661153 () Bool)

(assert (=> b!701858 m!661153))

(declare-fun m!661155 () Bool)

(assert (=> b!701846 m!661155))

(declare-fun m!661157 () Bool)

(assert (=> b!701860 m!661157))

(declare-fun m!661159 () Bool)

(assert (=> b!701861 m!661159))

(declare-fun m!661161 () Bool)

(assert (=> b!701862 m!661161))

(declare-fun m!661163 () Bool)

(assert (=> b!701859 m!661163))

(declare-fun m!661165 () Bool)

(assert (=> b!701854 m!661165))

(declare-fun m!661167 () Bool)

(assert (=> b!701869 m!661167))

(declare-fun m!661169 () Bool)

(assert (=> b!701845 m!661169))

(assert (=> b!701845 m!661169))

(declare-fun m!661171 () Bool)

(assert (=> b!701845 m!661171))

(assert (=> b!701866 m!661169))

(assert (=> b!701866 m!661169))

(declare-fun m!661173 () Bool)

(assert (=> b!701866 m!661173))

(assert (=> b!701866 m!661169))

(declare-fun m!661175 () Bool)

(assert (=> b!701866 m!661175))

(declare-fun m!661177 () Bool)

(assert (=> b!701852 m!661177))

(declare-fun m!661179 () Bool)

(assert (=> b!701863 m!661179))

(declare-fun m!661181 () Bool)

(assert (=> b!701850 m!661181))

(declare-fun m!661183 () Bool)

(assert (=> b!701847 m!661183))

(declare-fun m!661185 () Bool)

(assert (=> b!701868 m!661185))

(declare-fun m!661187 () Bool)

(assert (=> b!701857 m!661187))

(declare-fun m!661189 () Bool)

(assert (=> b!701849 m!661189))

(push 1)

