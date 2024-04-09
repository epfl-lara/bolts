; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115896 () Bool)

(assert start!115896)

(declare-fun b!1369494 () Bool)

(declare-fun res!913081 () Bool)

(declare-fun e!775839 () Bool)

(assert (=> b!1369494 (=> (not res!913081) (not e!775839))))

(declare-datatypes ((List!32131 0))(
  ( (Nil!32128) (Cons!32127 (h!33336 (_ BitVec 64)) (t!46832 List!32131)) )
))
(declare-fun newAcc!98 () List!32131)

(declare-fun contains!9669 (List!32131 (_ BitVec 64)) Bool)

(assert (=> b!1369494 (= res!913081 (not (contains!9669 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1369495 () Bool)

(declare-fun res!913082 () Bool)

(assert (=> b!1369495 (=> (not res!913082) (not e!775839))))

(declare-fun acc!866 () List!32131)

(assert (=> b!1369495 (= res!913082 (not (contains!9669 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1369496 () Bool)

(declare-fun e!775838 () Bool)

(assert (=> b!1369496 (= e!775838 false)))

(declare-fun lt!602225 () Bool)

(declare-fun noDuplicate!2548 (List!32131) Bool)

(assert (=> b!1369496 (= lt!602225 (noDuplicate!2548 newAcc!98))))

(declare-fun b!1369497 () Bool)

(declare-fun res!913077 () Bool)

(assert (=> b!1369497 (=> (not res!913077) (not e!775839))))

(assert (=> b!1369497 (= res!913077 (not (contains!9669 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1369498 () Bool)

(declare-fun res!913080 () Bool)

(assert (=> b!1369498 (=> (not res!913080) (not e!775838))))

(declare-fun from!3239 () (_ BitVec 32))

(declare-datatypes ((array!92933 0))(
  ( (array!92934 (arr!44883 (Array (_ BitVec 32) (_ BitVec 64))) (size!45434 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92933)

(assert (=> b!1369498 (= res!913080 (bvsge from!3239 (size!45434 a!3861)))))

(declare-fun b!1369499 () Bool)

(assert (=> b!1369499 (= e!775839 e!775838)))

(declare-fun res!913078 () Bool)

(assert (=> b!1369499 (=> (not res!913078) (not e!775838))))

(declare-fun arrayNoDuplicates!0 (array!92933 (_ BitVec 32) List!32131) Bool)

(assert (=> b!1369499 (= res!913078 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45201 0))(
  ( (Unit!45202) )
))
(declare-fun lt!602224 () Unit!45201)

(declare-fun noDuplicateSubseq!247 (List!32131 List!32131) Unit!45201)

(assert (=> b!1369499 (= lt!602224 (noDuplicateSubseq!247 newAcc!98 acc!866))))

(declare-fun b!1369500 () Bool)

(declare-fun res!913079 () Bool)

(assert (=> b!1369500 (=> (not res!913079) (not e!775839))))

(assert (=> b!1369500 (= res!913079 (not (contains!9669 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!913076 () Bool)

(assert (=> start!115896 (=> (not res!913076) (not e!775839))))

(assert (=> start!115896 (= res!913076 (and (bvslt (size!45434 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45434 a!3861))))))

(assert (=> start!115896 e!775839))

(declare-fun array_inv!33828 (array!92933) Bool)

(assert (=> start!115896 (array_inv!33828 a!3861)))

(assert (=> start!115896 true))

(declare-fun b!1369501 () Bool)

(declare-fun res!913075 () Bool)

(assert (=> b!1369501 (=> (not res!913075) (not e!775839))))

(assert (=> b!1369501 (= res!913075 (noDuplicate!2548 acc!866))))

(declare-fun b!1369502 () Bool)

(declare-fun res!913083 () Bool)

(assert (=> b!1369502 (=> (not res!913083) (not e!775839))))

(declare-fun subseq!1060 (List!32131 List!32131) Bool)

(assert (=> b!1369502 (= res!913083 (subseq!1060 newAcc!98 acc!866))))

(assert (= (and start!115896 res!913076) b!1369501))

(assert (= (and b!1369501 res!913075) b!1369497))

(assert (= (and b!1369497 res!913077) b!1369495))

(assert (= (and b!1369495 res!913082) b!1369500))

(assert (= (and b!1369500 res!913079) b!1369494))

(assert (= (and b!1369494 res!913081) b!1369502))

(assert (= (and b!1369502 res!913083) b!1369499))

(assert (= (and b!1369499 res!913078) b!1369498))

(assert (= (and b!1369498 res!913080) b!1369496))

(declare-fun m!1253285 () Bool)

(assert (=> start!115896 m!1253285))

(declare-fun m!1253287 () Bool)

(assert (=> b!1369494 m!1253287))

(declare-fun m!1253289 () Bool)

(assert (=> b!1369500 m!1253289))

(declare-fun m!1253291 () Bool)

(assert (=> b!1369496 m!1253291))

(declare-fun m!1253293 () Bool)

(assert (=> b!1369495 m!1253293))

(declare-fun m!1253295 () Bool)

(assert (=> b!1369501 m!1253295))

(declare-fun m!1253297 () Bool)

(assert (=> b!1369502 m!1253297))

(declare-fun m!1253299 () Bool)

(assert (=> b!1369499 m!1253299))

(declare-fun m!1253301 () Bool)

(assert (=> b!1369499 m!1253301))

(declare-fun m!1253303 () Bool)

(assert (=> b!1369497 m!1253303))

(push 1)

(assert (not b!1369501))

(assert (not b!1369497))

(assert (not start!115896))

