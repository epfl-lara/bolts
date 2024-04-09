; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!93464 () Bool)

(assert start!93464)

(declare-fun b!1058131 () Bool)

(declare-fun res!706824 () Bool)

(declare-fun e!601982 () Bool)

(assert (=> b!1058131 (=> (not res!706824) (not e!601982))))

(declare-datatypes ((array!66715 0))(
  ( (array!66716 (arr!32072 (Array (_ BitVec 32) (_ BitVec 64))) (size!32609 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66715)

(declare-fun k0!2747 () (_ BitVec 64))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1058131 (= res!706824 (= (select (arr!32072 a!3488) i!1381) k0!2747))))

(declare-fun b!1058132 () Bool)

(declare-fun res!706815 () Bool)

(declare-fun e!601979 () Bool)

(assert (=> b!1058132 (=> res!706815 e!601979)))

(declare-datatypes ((List!22515 0))(
  ( (Nil!22512) (Cons!22511 (h!23720 (_ BitVec 64)) (t!31829 List!22515)) )
))
(declare-fun contains!6221 (List!22515 (_ BitVec 64)) Bool)

(assert (=> b!1058132 (= res!706815 (contains!6221 Nil!22512 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1058133 () Bool)

(declare-fun res!706821 () Bool)

(assert (=> b!1058133 (=> (not res!706821) (not e!601982))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1058133 (= res!706821 (validKeyInArray!0 k0!2747))))

(declare-fun b!1058134 () Bool)

(declare-fun res!706818 () Bool)

(assert (=> b!1058134 (=> (not res!706818) (not e!601982))))

(declare-fun arrayNoDuplicates!0 (array!66715 (_ BitVec 32) List!22515) Bool)

(assert (=> b!1058134 (= res!706818 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22512))))

(declare-fun b!1058135 () Bool)

(declare-fun e!601983 () Bool)

(declare-fun e!601978 () Bool)

(assert (=> b!1058135 (= e!601983 e!601978)))

(declare-fun res!706820 () Bool)

(assert (=> b!1058135 (=> (not res!706820) (not e!601978))))

(declare-fun lt!466724 () (_ BitVec 32))

(assert (=> b!1058135 (= res!706820 (not (= lt!466724 i!1381)))))

(declare-fun lt!466725 () array!66715)

(declare-fun arrayScanForKey!0 (array!66715 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1058135 (= lt!466724 (arrayScanForKey!0 lt!466725 k0!2747 #b00000000000000000000000000000000))))

(declare-fun b!1058136 () Bool)

(declare-fun res!706823 () Bool)

(assert (=> b!1058136 (=> res!706823 e!601979)))

(declare-fun noDuplicate!1582 (List!22515) Bool)

(assert (=> b!1058136 (= res!706823 (not (noDuplicate!1582 Nil!22512)))))

(declare-fun b!1058137 () Bool)

(assert (=> b!1058137 (= e!601982 e!601983)))

(declare-fun res!706816 () Bool)

(assert (=> b!1058137 (=> (not res!706816) (not e!601983))))

(declare-fun arrayContainsKey!0 (array!66715 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1058137 (= res!706816 (arrayContainsKey!0 lt!466725 k0!2747 #b00000000000000000000000000000000))))

(assert (=> b!1058137 (= lt!466725 (array!66716 (store (arr!32072 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32609 a!3488)))))

(declare-fun b!1058138 () Bool)

(declare-fun e!601976 () Bool)

(declare-fun e!601981 () Bool)

(assert (=> b!1058138 (= e!601976 e!601981)))

(declare-fun res!706822 () Bool)

(assert (=> b!1058138 (=> res!706822 e!601981)))

(assert (=> b!1058138 (= res!706822 (or (bvsgt lt!466724 i!1381) (bvsle i!1381 lt!466724)))))

(declare-fun b!1058140 () Bool)

(assert (=> b!1058140 (= e!601981 (arrayContainsKey!0 a!3488 k0!2747 i!1381))))

(declare-fun res!706817 () Bool)

(assert (=> start!93464 (=> (not res!706817) (not e!601982))))

(assert (=> start!93464 (= res!706817 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32609 a!3488)) (bvslt (size!32609 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!93464 e!601982))

(assert (=> start!93464 true))

(declare-fun array_inv!24694 (array!66715) Bool)

(assert (=> start!93464 (array_inv!24694 a!3488)))

(declare-fun b!1058139 () Bool)

(declare-fun e!601980 () Bool)

(assert (=> b!1058139 (= e!601978 (not e!601980))))

(declare-fun res!706825 () Bool)

(assert (=> b!1058139 (=> res!706825 e!601980)))

(assert (=> b!1058139 (= res!706825 (or (bvsgt lt!466724 i!1381) (bvsle i!1381 lt!466724)))))

(assert (=> b!1058139 e!601976))

(declare-fun res!706819 () Bool)

(assert (=> b!1058139 (=> (not res!706819) (not e!601976))))

(assert (=> b!1058139 (= res!706819 (= (select (store (arr!32072 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!466724) k0!2747))))

(declare-fun b!1058141 () Bool)

(assert (=> b!1058141 (= e!601980 e!601979)))

(declare-fun res!706814 () Bool)

(assert (=> b!1058141 (=> res!706814 e!601979)))

(declare-fun lt!466727 () (_ BitVec 32))

(assert (=> b!1058141 (= res!706814 (or (bvslt lt!466724 #b00000000000000000000000000000000) (bvsge lt!466727 (size!32609 a!3488)) (bvsge lt!466724 (size!32609 a!3488))))))

(assert (=> b!1058141 (arrayContainsKey!0 a!3488 k0!2747 lt!466727)))

(declare-datatypes ((Unit!34675 0))(
  ( (Unit!34676) )
))
(declare-fun lt!466726 () Unit!34675)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66715 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34675)

(assert (=> b!1058141 (= lt!466726 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k0!2747 i!1381 lt!466727))))

(assert (=> b!1058141 (= lt!466727 (bvadd #b00000000000000000000000000000001 lt!466724))))

(assert (=> b!1058141 (arrayNoDuplicates!0 a!3488 lt!466724 Nil!22512)))

(declare-fun lt!466728 () Unit!34675)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66715 (_ BitVec 32) (_ BitVec 32)) Unit!34675)

(assert (=> b!1058141 (= lt!466728 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!466724))))

(declare-fun b!1058142 () Bool)

(assert (=> b!1058142 (= e!601979 true)))

(declare-fun lt!466729 () Bool)

(assert (=> b!1058142 (= lt!466729 (contains!6221 Nil!22512 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!93464 res!706817) b!1058134))

(assert (= (and b!1058134 res!706818) b!1058133))

(assert (= (and b!1058133 res!706821) b!1058131))

(assert (= (and b!1058131 res!706824) b!1058137))

(assert (= (and b!1058137 res!706816) b!1058135))

(assert (= (and b!1058135 res!706820) b!1058139))

(assert (= (and b!1058139 res!706819) b!1058138))

(assert (= (and b!1058138 (not res!706822)) b!1058140))

(assert (= (and b!1058139 (not res!706825)) b!1058141))

(assert (= (and b!1058141 (not res!706814)) b!1058136))

(assert (= (and b!1058136 (not res!706823)) b!1058132))

(assert (= (and b!1058132 (not res!706815)) b!1058142))

(declare-fun m!977909 () Bool)

(assert (=> b!1058134 m!977909))

(declare-fun m!977911 () Bool)

(assert (=> b!1058137 m!977911))

(declare-fun m!977913 () Bool)

(assert (=> b!1058137 m!977913))

(declare-fun m!977915 () Bool)

(assert (=> b!1058140 m!977915))

(declare-fun m!977917 () Bool)

(assert (=> b!1058131 m!977917))

(declare-fun m!977919 () Bool)

(assert (=> b!1058132 m!977919))

(declare-fun m!977921 () Bool)

(assert (=> b!1058133 m!977921))

(declare-fun m!977923 () Bool)

(assert (=> b!1058142 m!977923))

(declare-fun m!977925 () Bool)

(assert (=> b!1058135 m!977925))

(declare-fun m!977927 () Bool)

(assert (=> b!1058141 m!977927))

(declare-fun m!977929 () Bool)

(assert (=> b!1058141 m!977929))

(declare-fun m!977931 () Bool)

(assert (=> b!1058141 m!977931))

(declare-fun m!977933 () Bool)

(assert (=> b!1058141 m!977933))

(declare-fun m!977935 () Bool)

(assert (=> b!1058136 m!977935))

(assert (=> b!1058139 m!977913))

(declare-fun m!977937 () Bool)

(assert (=> b!1058139 m!977937))

(declare-fun m!977939 () Bool)

(assert (=> start!93464 m!977939))

(check-sat (not b!1058140) (not b!1058134) (not b!1058132) (not b!1058141) (not b!1058137) (not b!1058142) (not b!1058133) (not b!1058135) (not b!1058136) (not start!93464))
(check-sat)
