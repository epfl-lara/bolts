; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116298 () Bool)

(assert start!116298)

(declare-fun b!1372457 () Bool)

(declare-fun res!915852 () Bool)

(declare-fun e!777597 () Bool)

(assert (=> b!1372457 (=> (not res!915852) (not e!777597))))

(declare-datatypes ((List!32173 0))(
  ( (Nil!32170) (Cons!32169 (h!33378 (_ BitVec 64)) (t!46874 List!32173)) )
))
(declare-fun newAcc!98 () List!32173)

(declare-fun acc!866 () List!32173)

(declare-fun subseq!1102 (List!32173 List!32173) Bool)

(assert (=> b!1372457 (= res!915852 (subseq!1102 newAcc!98 acc!866))))

(declare-fun b!1372458 () Bool)

(assert (=> b!1372458 (= e!777597 false)))

(declare-datatypes ((array!93038 0))(
  ( (array!93039 (arr!44925 (Array (_ BitVec 32) (_ BitVec 64))) (size!45476 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!93038)

(declare-fun from!3239 () (_ BitVec 32))

(declare-fun lt!602822 () Bool)

(declare-fun arrayNoDuplicates!0 (array!93038 (_ BitVec 32) List!32173) Bool)

(assert (=> b!1372458 (= lt!602822 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45285 0))(
  ( (Unit!45286) )
))
(declare-fun lt!602821 () Unit!45285)

(declare-fun noDuplicateSubseq!289 (List!32173 List!32173) Unit!45285)

(assert (=> b!1372458 (= lt!602821 (noDuplicateSubseq!289 newAcc!98 acc!866))))

(declare-fun b!1372459 () Bool)

(declare-fun res!915848 () Bool)

(assert (=> b!1372459 (=> (not res!915848) (not e!777597))))

(declare-fun noDuplicate!2590 (List!32173) Bool)

(assert (=> b!1372459 (= res!915848 (noDuplicate!2590 acc!866))))

(declare-fun b!1372460 () Bool)

(declare-fun res!915850 () Bool)

(assert (=> b!1372460 (=> (not res!915850) (not e!777597))))

(declare-fun contains!9711 (List!32173 (_ BitVec 64)) Bool)

(assert (=> b!1372460 (= res!915850 (not (contains!9711 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1372461 () Bool)

(declare-fun res!915847 () Bool)

(assert (=> b!1372461 (=> (not res!915847) (not e!777597))))

(assert (=> b!1372461 (= res!915847 (not (contains!9711 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1372462 () Bool)

(declare-fun res!915851 () Bool)

(assert (=> b!1372462 (=> (not res!915851) (not e!777597))))

(assert (=> b!1372462 (= res!915851 (not (contains!9711 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1372463 () Bool)

(declare-fun res!915849 () Bool)

(assert (=> b!1372463 (=> (not res!915849) (not e!777597))))

(assert (=> b!1372463 (= res!915849 (not (contains!9711 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!915846 () Bool)

(assert (=> start!116298 (=> (not res!915846) (not e!777597))))

(assert (=> start!116298 (= res!915846 (and (bvslt (size!45476 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45476 a!3861))))))

(assert (=> start!116298 e!777597))

(declare-fun array_inv!33870 (array!93038) Bool)

(assert (=> start!116298 (array_inv!33870 a!3861)))

(assert (=> start!116298 true))

(assert (= (and start!116298 res!915846) b!1372459))

(assert (= (and b!1372459 res!915848) b!1372461))

(assert (= (and b!1372461 res!915847) b!1372460))

(assert (= (and b!1372460 res!915850) b!1372462))

(assert (= (and b!1372462 res!915851) b!1372463))

(assert (= (and b!1372463 res!915849) b!1372457))

(assert (= (and b!1372457 res!915852) b!1372458))

(declare-fun m!1255927 () Bool)

(assert (=> b!1372463 m!1255927))

(declare-fun m!1255929 () Bool)

(assert (=> b!1372460 m!1255929))

(declare-fun m!1255931 () Bool)

(assert (=> b!1372459 m!1255931))

(declare-fun m!1255933 () Bool)

(assert (=> b!1372458 m!1255933))

(declare-fun m!1255935 () Bool)

(assert (=> b!1372458 m!1255935))

(declare-fun m!1255937 () Bool)

(assert (=> b!1372457 m!1255937))

(declare-fun m!1255939 () Bool)

(assert (=> start!116298 m!1255939))

(declare-fun m!1255941 () Bool)

(assert (=> b!1372461 m!1255941))

(declare-fun m!1255943 () Bool)

(assert (=> b!1372462 m!1255943))

(push 1)

(assert (not b!1372463))

(assert (not start!116298))

(assert (not b!1372461))

(assert (not b!1372460))

(assert (not b!1372458))

(assert (not b!1372462))

(assert (not b!1372459))

(assert (not b!1372457))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

