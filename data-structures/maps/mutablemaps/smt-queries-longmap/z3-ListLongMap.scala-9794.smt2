; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!116326 () Bool)

(assert start!116326)

(declare-fun b!1372778 () Bool)

(declare-fun res!916167 () Bool)

(declare-fun e!777691 () Bool)

(assert (=> b!1372778 (=> (not res!916167) (not e!777691))))

(declare-datatypes ((List!32187 0))(
  ( (Nil!32184) (Cons!32183 (h!33392 (_ BitVec 64)) (t!46888 List!32187)) )
))
(declare-fun newAcc!98 () List!32187)

(declare-fun contains!9725 (List!32187 (_ BitVec 64)) Bool)

(assert (=> b!1372778 (= res!916167 (not (contains!9725 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1372779 () Bool)

(declare-fun res!916171 () Bool)

(assert (=> b!1372779 (=> (not res!916171) (not e!777691))))

(assert (=> b!1372779 (= res!916171 (not (contains!9725 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1372780 () Bool)

(declare-fun res!916169 () Bool)

(assert (=> b!1372780 (=> (not res!916169) (not e!777691))))

(declare-fun acc!866 () List!32187)

(declare-fun subseq!1116 (List!32187 List!32187) Bool)

(assert (=> b!1372780 (= res!916169 (subseq!1116 newAcc!98 acc!866))))

(declare-fun b!1372782 () Bool)

(declare-fun res!916172 () Bool)

(assert (=> b!1372782 (=> (not res!916172) (not e!777691))))

(assert (=> b!1372782 (= res!916172 (not (contains!9725 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1372783 () Bool)

(assert (=> b!1372783 (= e!777691 false)))

(declare-datatypes ((array!93066 0))(
  ( (array!93067 (arr!44939 (Array (_ BitVec 32) (_ BitVec 64))) (size!45490 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!93066)

(declare-fun from!3239 () (_ BitVec 32))

(declare-fun lt!602896 () Bool)

(declare-fun arrayNoDuplicates!0 (array!93066 (_ BitVec 32) List!32187) Bool)

(assert (=> b!1372783 (= lt!602896 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45313 0))(
  ( (Unit!45314) )
))
(declare-fun lt!602897 () Unit!45313)

(declare-fun noDuplicateSubseq!303 (List!32187 List!32187) Unit!45313)

(assert (=> b!1372783 (= lt!602897 (noDuplicateSubseq!303 newAcc!98 acc!866))))

(declare-fun b!1372784 () Bool)

(declare-fun res!916168 () Bool)

(assert (=> b!1372784 (=> (not res!916168) (not e!777691))))

(assert (=> b!1372784 (= res!916168 (not (contains!9725 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1372781 () Bool)

(declare-fun res!916170 () Bool)

(assert (=> b!1372781 (=> (not res!916170) (not e!777691))))

(declare-fun noDuplicate!2604 (List!32187) Bool)

(assert (=> b!1372781 (= res!916170 (noDuplicate!2604 acc!866))))

(declare-fun res!916173 () Bool)

(assert (=> start!116326 (=> (not res!916173) (not e!777691))))

(assert (=> start!116326 (= res!916173 (and (bvslt (size!45490 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45490 a!3861))))))

(assert (=> start!116326 e!777691))

(declare-fun array_inv!33884 (array!93066) Bool)

(assert (=> start!116326 (array_inv!33884 a!3861)))

(assert (=> start!116326 true))

(assert (= (and start!116326 res!916173) b!1372781))

(assert (= (and b!1372781 res!916170) b!1372784))

(assert (= (and b!1372784 res!916168) b!1372782))

(assert (= (and b!1372782 res!916172) b!1372778))

(assert (= (and b!1372778 res!916167) b!1372779))

(assert (= (and b!1372779 res!916171) b!1372780))

(assert (= (and b!1372780 res!916169) b!1372783))

(declare-fun m!1256191 () Bool)

(assert (=> b!1372782 m!1256191))

(declare-fun m!1256193 () Bool)

(assert (=> b!1372778 m!1256193))

(declare-fun m!1256195 () Bool)

(assert (=> b!1372781 m!1256195))

(declare-fun m!1256197 () Bool)

(assert (=> start!116326 m!1256197))

(declare-fun m!1256199 () Bool)

(assert (=> b!1372784 m!1256199))

(declare-fun m!1256201 () Bool)

(assert (=> b!1372779 m!1256201))

(declare-fun m!1256203 () Bool)

(assert (=> b!1372780 m!1256203))

(declare-fun m!1256205 () Bool)

(assert (=> b!1372783 m!1256205))

(declare-fun m!1256207 () Bool)

(assert (=> b!1372783 m!1256207))

(check-sat (not b!1372782) (not b!1372783) (not b!1372778) (not b!1372780) (not b!1372779) (not b!1372781) (not start!116326) (not b!1372784))
(check-sat)
