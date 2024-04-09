; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62602 () Bool)

(assert start!62602)

(declare-fun b!705848 () Bool)

(declare-fun res!469838 () Bool)

(declare-fun e!397785 () Bool)

(assert (=> b!705848 (=> (not res!469838) (not e!397785))))

(declare-datatypes ((List!13365 0))(
  ( (Nil!13362) (Cons!13361 (h!14406 (_ BitVec 64)) (t!19655 List!13365)) )
))
(declare-fun newAcc!49 () List!13365)

(declare-fun contains!3908 (List!13365 (_ BitVec 64)) Bool)

(assert (=> b!705848 (= res!469838 (not (contains!3908 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!705849 () Bool)

(declare-fun res!469848 () Bool)

(assert (=> b!705849 (=> (not res!469848) (not e!397785))))

(declare-fun acc!652 () List!13365)

(declare-fun noDuplicate!1155 (List!13365) Bool)

(assert (=> b!705849 (= res!469848 (noDuplicate!1155 acc!652))))

(declare-fun b!705850 () Bool)

(declare-fun res!469842 () Bool)

(assert (=> b!705850 (=> (not res!469842) (not e!397785))))

(assert (=> b!705850 (= res!469842 (not (contains!3908 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!705851 () Bool)

(declare-fun res!469850 () Bool)

(assert (=> b!705851 (=> (not res!469850) (not e!397785))))

(declare-fun k!2824 () (_ BitVec 64))

(assert (=> b!705851 (= res!469850 (contains!3908 newAcc!49 k!2824))))

(declare-fun b!705852 () Bool)

(assert (=> b!705852 (= e!397785 (not true))))

(declare-datatypes ((array!40237 0))(
  ( (array!40238 (arr!19271 (Array (_ BitVec 32) (_ BitVec 64))) (size!19654 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40237)

(declare-fun from!2969 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!40237 (_ BitVec 32) List!13365) Bool)

(assert (=> b!705852 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) newAcc!49)))

(declare-datatypes ((Unit!24608 0))(
  ( (Unit!24609) )
))
(declare-fun lt!317874 () Unit!24608)

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!40237 (_ BitVec 64) (_ BitVec 32) List!13365 List!13365) Unit!24608)

(assert (=> b!705852 (= lt!317874 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969) acc!652 newAcc!49))))

(declare-fun b!705853 () Bool)

(declare-fun res!469834 () Bool)

(assert (=> b!705853 (=> (not res!469834) (not e!397785))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!705853 (= res!469834 (validKeyInArray!0 k!2824))))

(declare-fun b!705854 () Bool)

(declare-fun res!469846 () Bool)

(assert (=> b!705854 (=> (not res!469846) (not e!397785))))

(assert (=> b!705854 (= res!469846 (noDuplicate!1155 newAcc!49))))

(declare-fun res!469841 () Bool)

(assert (=> start!62602 (=> (not res!469841) (not e!397785))))

(assert (=> start!62602 (= res!469841 (and (bvslt (size!19654 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19654 a!3591))))))

(assert (=> start!62602 e!397785))

(assert (=> start!62602 true))

(declare-fun array_inv!15045 (array!40237) Bool)

(assert (=> start!62602 (array_inv!15045 a!3591)))

(declare-fun b!705855 () Bool)

(declare-fun res!469849 () Bool)

(assert (=> b!705855 (=> (not res!469849) (not e!397785))))

(declare-fun subseq!352 (List!13365 List!13365) Bool)

(assert (=> b!705855 (= res!469849 (subseq!352 acc!652 newAcc!49))))

(declare-fun b!705856 () Bool)

(declare-fun res!469844 () Bool)

(assert (=> b!705856 (=> (not res!469844) (not e!397785))))

(assert (=> b!705856 (= res!469844 (not (contains!3908 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!705857 () Bool)

(declare-fun res!469839 () Bool)

(assert (=> b!705857 (=> (not res!469839) (not e!397785))))

(declare-fun -!317 (List!13365 (_ BitVec 64)) List!13365)

(assert (=> b!705857 (= res!469839 (= (-!317 newAcc!49 k!2824) acc!652))))

(declare-fun b!705858 () Bool)

(declare-fun res!469833 () Bool)

(assert (=> b!705858 (=> (not res!469833) (not e!397785))))

(assert (=> b!705858 (= res!469833 (not (validKeyInArray!0 (select (arr!19271 a!3591) from!2969))))))

(declare-fun b!705859 () Bool)

(declare-fun res!469845 () Bool)

(assert (=> b!705859 (=> (not res!469845) (not e!397785))))

(assert (=> b!705859 (= res!469845 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun b!705860 () Bool)

(declare-fun res!469832 () Bool)

(assert (=> b!705860 (=> (not res!469832) (not e!397785))))

(declare-fun arrayContainsKey!0 (array!40237 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!705860 (= res!469832 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!705861 () Bool)

(declare-fun res!469836 () Bool)

(assert (=> b!705861 (=> (not res!469836) (not e!397785))))

(assert (=> b!705861 (= res!469836 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!705862 () Bool)

(declare-fun res!469835 () Bool)

(assert (=> b!705862 (=> (not res!469835) (not e!397785))))

(assert (=> b!705862 (= res!469835 (not (contains!3908 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!705863 () Bool)

(declare-fun res!469840 () Bool)

(assert (=> b!705863 (=> (not res!469840) (not e!397785))))

(assert (=> b!705863 (= res!469840 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19654 a!3591)))))

(declare-fun b!705864 () Bool)

(declare-fun res!469847 () Bool)

(assert (=> b!705864 (=> (not res!469847) (not e!397785))))

(assert (=> b!705864 (= res!469847 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) acc!652))))

(declare-fun b!705865 () Bool)

(declare-fun res!469837 () Bool)

(assert (=> b!705865 (=> (not res!469837) (not e!397785))))

(assert (=> b!705865 (= res!469837 (not (contains!3908 acc!652 k!2824)))))

(declare-fun b!705866 () Bool)

(declare-fun res!469843 () Bool)

(assert (=> b!705866 (=> (not res!469843) (not e!397785))))

(assert (=> b!705866 (= res!469843 (not (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(assert (= (and start!62602 res!469841) b!705849))

(assert (= (and b!705849 res!469848) b!705854))

(assert (= (and b!705854 res!469846) b!705850))

(assert (= (and b!705850 res!469842) b!705862))

(assert (= (and b!705862 res!469835) b!705860))

(assert (= (and b!705860 res!469832) b!705865))

(assert (= (and b!705865 res!469837) b!705853))

(assert (= (and b!705853 res!469834) b!705861))

(assert (= (and b!705861 res!469836) b!705855))

(assert (= (and b!705855 res!469849) b!705851))

(assert (= (and b!705851 res!469850) b!705857))

(assert (= (and b!705857 res!469839) b!705848))

(assert (= (and b!705848 res!469838) b!705856))

(assert (= (and b!705856 res!469844) b!705863))

(assert (= (and b!705863 res!469840) b!705858))

(assert (= (and b!705858 res!469833) b!705859))

(assert (= (and b!705859 res!469845) b!705866))

(assert (= (and b!705866 res!469843) b!705864))

(assert (= (and b!705864 res!469847) b!705852))

(declare-fun m!663911 () Bool)

(assert (=> b!705856 m!663911))

(declare-fun m!663913 () Bool)

(assert (=> b!705851 m!663913))

(declare-fun m!663915 () Bool)

(assert (=> b!705858 m!663915))

(assert (=> b!705858 m!663915))

(declare-fun m!663917 () Bool)

(assert (=> b!705858 m!663917))

(declare-fun m!663919 () Bool)

(assert (=> b!705866 m!663919))

(declare-fun m!663921 () Bool)

(assert (=> b!705853 m!663921))

(declare-fun m!663923 () Bool)

(assert (=> b!705848 m!663923))

(declare-fun m!663925 () Bool)

(assert (=> b!705850 m!663925))

(declare-fun m!663927 () Bool)

(assert (=> b!705855 m!663927))

(declare-fun m!663929 () Bool)

(assert (=> b!705862 m!663929))

(declare-fun m!663931 () Bool)

(assert (=> b!705854 m!663931))

(declare-fun m!663933 () Bool)

(assert (=> b!705861 m!663933))

(declare-fun m!663935 () Bool)

(assert (=> b!705860 m!663935))

(declare-fun m!663937 () Bool)

(assert (=> start!62602 m!663937))

(declare-fun m!663939 () Bool)

(assert (=> b!705849 m!663939))

(declare-fun m!663941 () Bool)

(assert (=> b!705852 m!663941))

(declare-fun m!663943 () Bool)

(assert (=> b!705852 m!663943))

(declare-fun m!663945 () Bool)

(assert (=> b!705864 m!663945))

(declare-fun m!663947 () Bool)

(assert (=> b!705865 m!663947))

(declare-fun m!663949 () Bool)

(assert (=> b!705857 m!663949))

(push 1)

(assert (not b!705864))

(assert (not b!705865))

(assert (not b!705852))

(assert (not b!705860))

(assert (not b!705854))

(assert (not b!705850))

(assert (not b!705855))

(assert (not b!705851))

(assert (not b!705857))

(assert (not b!705866))

(assert (not b!705858))

(assert (not b!705862))

(assert (not b!705849))

(assert (not start!62602))

(assert (not b!705853))

(assert (not b!705861))

(assert (not b!705848))

(assert (not b!705856))

(check-sat)

