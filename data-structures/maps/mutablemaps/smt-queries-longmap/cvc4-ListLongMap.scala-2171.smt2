; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36372 () Bool)

(assert start!36372)

(declare-fun b!363604 () Bool)

(declare-fun e!222633 () Bool)

(declare-fun e!222634 () Bool)

(assert (=> b!363604 (= e!222633 e!222634)))

(declare-fun res!202917 () Bool)

(assert (=> b!363604 (=> (not res!202917) (not e!222634))))

(declare-fun from!3650 () (_ BitVec 32))

(declare-fun lt!167891 () (_ BitVec 32))

(declare-fun lt!167890 () (_ BitVec 32))

(assert (=> b!363604 (= res!202917 (and (= lt!167890 (bvadd #b00000000000000000000000000000001 lt!167891)) (bvsgt from!3650 #b00000000000000000000000000000000)))))

(declare-datatypes ((array!20614 0))(
  ( (array!20615 (arr!9783 (Array (_ BitVec 32) (_ BitVec 64))) (size!10135 (_ BitVec 32))) )
))
(declare-fun lt!167894 () array!20614)

(declare-fun i!1472 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!20614 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!363604 (= lt!167890 (arrayCountValidKeys!0 lt!167894 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-fun a!4289 () array!20614)

(assert (=> b!363604 (= lt!167891 (arrayCountValidKeys!0 a!4289 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-fun k!2974 () (_ BitVec 64))

(assert (=> b!363604 (= lt!167894 (array!20615 (store (arr!9783 a!4289) i!1472 k!2974) (size!10135 a!4289)))))

(declare-fun b!363605 () Bool)

(declare-fun res!202915 () Bool)

(assert (=> b!363605 (=> (not res!202915) (not e!222633))))

(assert (=> b!363605 (= res!202915 (and (bvslt (size!10135 a!4289) #b01111111111111111111111111111111) (bvsge from!3650 #b00000000000000000000000000000000) (bvsle from!3650 (size!10135 a!4289)) (bvsge i!1472 from!3650)))))

(declare-fun b!363606 () Bool)

(assert (=> b!363606 (= e!222634 (not true))))

(assert (=> b!363606 (= (bvadd (arrayCountValidKeys!0 lt!167894 (bvsub from!3650 #b00000000000000000000000000000001) from!3650) lt!167890) (arrayCountValidKeys!0 lt!167894 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-datatypes ((Unit!11261 0))(
  ( (Unit!11262) )
))
(declare-fun lt!167892 () Unit!11261)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!20614 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!11261)

(assert (=> b!363606 (= lt!167892 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!167894 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(assert (=> b!363606 (= (bvadd (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) from!3650) lt!167891) (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-fun lt!167893 () Unit!11261)

(assert (=> b!363606 (= lt!167893 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(declare-fun b!363607 () Bool)

(declare-fun res!202916 () Bool)

(assert (=> b!363607 (=> (not res!202916) (not e!222633))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!363607 (= res!202916 (validKeyInArray!0 k!2974))))

(declare-fun b!363603 () Bool)

(declare-fun res!202914 () Bool)

(assert (=> b!363603 (=> (not res!202914) (not e!222633))))

(assert (=> b!363603 (= res!202914 (not (validKeyInArray!0 (select (arr!9783 a!4289) i!1472))))))

(declare-fun res!202918 () Bool)

(assert (=> start!36372 (=> (not res!202918) (not e!222633))))

(assert (=> start!36372 (= res!202918 (and (bvsge i!1472 #b00000000000000000000000000000000) (bvslt i!1472 (size!10135 a!4289))))))

(assert (=> start!36372 e!222633))

(assert (=> start!36372 true))

(declare-fun array_inv!7221 (array!20614) Bool)

(assert (=> start!36372 (array_inv!7221 a!4289)))

(assert (= (and start!36372 res!202918) b!363603))

(assert (= (and b!363603 res!202914) b!363607))

(assert (= (and b!363607 res!202916) b!363605))

(assert (= (and b!363605 res!202915) b!363604))

(assert (= (and b!363604 res!202917) b!363606))

(declare-fun m!360863 () Bool)

(assert (=> start!36372 m!360863))

(declare-fun m!360865 () Bool)

(assert (=> b!363604 m!360865))

(declare-fun m!360867 () Bool)

(assert (=> b!363604 m!360867))

(declare-fun m!360869 () Bool)

(assert (=> b!363604 m!360869))

(declare-fun m!360871 () Bool)

(assert (=> b!363606 m!360871))

(declare-fun m!360873 () Bool)

(assert (=> b!363606 m!360873))

(declare-fun m!360875 () Bool)

(assert (=> b!363606 m!360875))

(declare-fun m!360877 () Bool)

(assert (=> b!363606 m!360877))

(declare-fun m!360879 () Bool)

(assert (=> b!363606 m!360879))

(declare-fun m!360881 () Bool)

(assert (=> b!363606 m!360881))

(declare-fun m!360883 () Bool)

(assert (=> b!363607 m!360883))

(declare-fun m!360885 () Bool)

(assert (=> b!363603 m!360885))

(assert (=> b!363603 m!360885))

(declare-fun m!360887 () Bool)

(assert (=> b!363603 m!360887))

(push 1)

(assert (not start!36372))

(assert (not b!363603))

(assert (not b!363607))

(assert (not b!363604))

(assert (not b!363606))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

