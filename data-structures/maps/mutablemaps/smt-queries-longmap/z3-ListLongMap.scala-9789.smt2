; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!116296 () Bool)

(assert start!116296)

(declare-fun b!1372436 () Bool)

(declare-fun res!915828 () Bool)

(declare-fun e!777591 () Bool)

(assert (=> b!1372436 (=> (not res!915828) (not e!777591))))

(declare-datatypes ((List!32172 0))(
  ( (Nil!32169) (Cons!32168 (h!33377 (_ BitVec 64)) (t!46873 List!32172)) )
))
(declare-fun newAcc!98 () List!32172)

(declare-fun acc!866 () List!32172)

(declare-fun subseq!1101 (List!32172 List!32172) Bool)

(assert (=> b!1372436 (= res!915828 (subseq!1101 newAcc!98 acc!866))))

(declare-fun b!1372437 () Bool)

(declare-fun res!915826 () Bool)

(assert (=> b!1372437 (=> (not res!915826) (not e!777591))))

(declare-fun contains!9710 (List!32172 (_ BitVec 64)) Bool)

(assert (=> b!1372437 (= res!915826 (not (contains!9710 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!915827 () Bool)

(assert (=> start!116296 (=> (not res!915827) (not e!777591))))

(declare-datatypes ((array!93036 0))(
  ( (array!93037 (arr!44924 (Array (_ BitVec 32) (_ BitVec 64))) (size!45475 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!93036)

(declare-fun from!3239 () (_ BitVec 32))

(assert (=> start!116296 (= res!915827 (and (bvslt (size!45475 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45475 a!3861))))))

(assert (=> start!116296 e!777591))

(declare-fun array_inv!33869 (array!93036) Bool)

(assert (=> start!116296 (array_inv!33869 a!3861)))

(assert (=> start!116296 true))

(declare-fun b!1372438 () Bool)

(declare-fun res!915825 () Bool)

(assert (=> b!1372438 (=> (not res!915825) (not e!777591))))

(assert (=> b!1372438 (= res!915825 (not (contains!9710 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1372439 () Bool)

(declare-fun res!915830 () Bool)

(assert (=> b!1372439 (=> (not res!915830) (not e!777591))))

(assert (=> b!1372439 (= res!915830 (not (contains!9710 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1372440 () Bool)

(assert (=> b!1372440 (= e!777591 false)))

(declare-fun lt!602815 () Bool)

(declare-fun arrayNoDuplicates!0 (array!93036 (_ BitVec 32) List!32172) Bool)

(assert (=> b!1372440 (= lt!602815 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45283 0))(
  ( (Unit!45284) )
))
(declare-fun lt!602816 () Unit!45283)

(declare-fun noDuplicateSubseq!288 (List!32172 List!32172) Unit!45283)

(assert (=> b!1372440 (= lt!602816 (noDuplicateSubseq!288 newAcc!98 acc!866))))

(declare-fun b!1372441 () Bool)

(declare-fun res!915829 () Bool)

(assert (=> b!1372441 (=> (not res!915829) (not e!777591))))

(declare-fun noDuplicate!2589 (List!32172) Bool)

(assert (=> b!1372441 (= res!915829 (noDuplicate!2589 acc!866))))

(declare-fun b!1372442 () Bool)

(declare-fun res!915831 () Bool)

(assert (=> b!1372442 (=> (not res!915831) (not e!777591))))

(assert (=> b!1372442 (= res!915831 (not (contains!9710 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!116296 res!915827) b!1372441))

(assert (= (and b!1372441 res!915829) b!1372442))

(assert (= (and b!1372442 res!915831) b!1372439))

(assert (= (and b!1372439 res!915830) b!1372437))

(assert (= (and b!1372437 res!915826) b!1372438))

(assert (= (and b!1372438 res!915825) b!1372436))

(assert (= (and b!1372436 res!915828) b!1372440))

(declare-fun m!1255909 () Bool)

(assert (=> b!1372436 m!1255909))

(declare-fun m!1255911 () Bool)

(assert (=> b!1372440 m!1255911))

(declare-fun m!1255913 () Bool)

(assert (=> b!1372440 m!1255913))

(declare-fun m!1255915 () Bool)

(assert (=> b!1372442 m!1255915))

(declare-fun m!1255917 () Bool)

(assert (=> b!1372441 m!1255917))

(declare-fun m!1255919 () Bool)

(assert (=> start!116296 m!1255919))

(declare-fun m!1255921 () Bool)

(assert (=> b!1372439 m!1255921))

(declare-fun m!1255923 () Bool)

(assert (=> b!1372437 m!1255923))

(declare-fun m!1255925 () Bool)

(assert (=> b!1372438 m!1255925))

(check-sat (not b!1372440) (not b!1372441) (not b!1372439) (not b!1372437) (not b!1372436) (not b!1372442) (not start!116296) (not b!1372438))
(check-sat)
