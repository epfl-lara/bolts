; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36524 () Bool)

(assert start!36524)

(declare-fun from!3650 () (_ BitVec 32))

(declare-fun b!364686 () Bool)

(declare-fun lt!168848 () (_ BitVec 32))

(declare-fun i!1472 () (_ BitVec 32))

(declare-fun lt!168841 () (_ BitVec 32))

(declare-datatypes ((array!20745 0))(
  ( (array!20746 (arr!9847 (Array (_ BitVec 32) (_ BitVec 64))) (size!10199 (_ BitVec 32))) )
))
(declare-fun a!4289 () array!20745)

(declare-fun e!223239 () Bool)

(assert (=> b!364686 (= e!223239 (not (or (bvsgt (bvsub from!3650 #b00000000000000000000000000000001) (size!10199 a!4289)) (bvslt i!1472 (bvsub from!3650 #b00000000000000000000000000000001)) (not (= lt!168841 (bvadd #b00000000000000000000000000000001 lt!168848))) (bvslt (bvsub from!3650 #b00000000000000000000000000000001) from!3650))))))

(declare-fun lt!168840 () (_ BitVec 32))

(declare-fun lt!168845 () (_ BitVec 32))

(assert (=> b!364686 (= (bvadd lt!168840 lt!168845) lt!168841)))

(declare-fun lt!168847 () array!20745)

(declare-fun arrayCountValidKeys!0 (array!20745 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!364686 (= lt!168841 (arrayCountValidKeys!0 lt!168847 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!364686 (= lt!168840 (arrayCountValidKeys!0 lt!168847 (bvsub from!3650 #b00000000000000000000000000000001) from!3650))))

(declare-datatypes ((Unit!11353 0))(
  ( (Unit!11354) )
))
(declare-fun lt!168842 () Unit!11353)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!20745 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!11353)

(assert (=> b!364686 (= lt!168842 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!168847 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(declare-fun lt!168846 () (_ BitVec 32))

(declare-fun lt!168843 () (_ BitVec 32))

(assert (=> b!364686 (= (bvadd lt!168846 lt!168843) lt!168848)))

(assert (=> b!364686 (= lt!168848 (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!364686 (= lt!168846 (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) from!3650))))

(declare-fun lt!168844 () Unit!11353)

(assert (=> b!364686 (= lt!168844 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(declare-fun b!364687 () Bool)

(declare-fun res!203905 () Bool)

(declare-fun e!223240 () Bool)

(assert (=> b!364687 (=> (not res!203905) (not e!223240))))

(assert (=> b!364687 (= res!203905 (and (bvslt (size!10199 a!4289) #b01111111111111111111111111111111) (bvsge from!3650 #b00000000000000000000000000000000) (bvsle from!3650 (size!10199 a!4289)) (bvsge i!1472 from!3650)))))

(declare-fun res!203901 () Bool)

(assert (=> start!36524 (=> (not res!203901) (not e!223240))))

(assert (=> start!36524 (= res!203901 (and (bvsge i!1472 #b00000000000000000000000000000000) (bvslt i!1472 (size!10199 a!4289))))))

(assert (=> start!36524 e!223240))

(assert (=> start!36524 true))

(declare-fun array_inv!7285 (array!20745) Bool)

(assert (=> start!36524 (array_inv!7285 a!4289)))

(declare-fun b!364688 () Bool)

(declare-fun res!203904 () Bool)

(assert (=> b!364688 (=> (not res!203904) (not e!223240))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!364688 (= res!203904 (not (validKeyInArray!0 (select (arr!9847 a!4289) i!1472))))))

(declare-fun b!364689 () Bool)

(declare-fun res!203903 () Bool)

(assert (=> b!364689 (=> (not res!203903) (not e!223240))))

(declare-fun k!2974 () (_ BitVec 64))

(assert (=> b!364689 (= res!203903 (validKeyInArray!0 k!2974))))

(declare-fun b!364690 () Bool)

(assert (=> b!364690 (= e!223240 e!223239)))

(declare-fun res!203902 () Bool)

(assert (=> b!364690 (=> (not res!203902) (not e!223239))))

(assert (=> b!364690 (= res!203902 (and (= lt!168845 (bvadd #b00000000000000000000000000000001 lt!168843)) (bvsgt from!3650 #b00000000000000000000000000000000)))))

(assert (=> b!364690 (= lt!168845 (arrayCountValidKeys!0 lt!168847 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!364690 (= lt!168843 (arrayCountValidKeys!0 a!4289 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!364690 (= lt!168847 (array!20746 (store (arr!9847 a!4289) i!1472 k!2974) (size!10199 a!4289)))))

(assert (= (and start!36524 res!203901) b!364688))

(assert (= (and b!364688 res!203904) b!364689))

(assert (= (and b!364689 res!203903) b!364687))

(assert (= (and b!364687 res!203905) b!364690))

(assert (= (and b!364690 res!203902) b!364686))

(declare-fun m!362443 () Bool)

(assert (=> start!36524 m!362443))

(declare-fun m!362445 () Bool)

(assert (=> b!364688 m!362445))

(assert (=> b!364688 m!362445))

(declare-fun m!362447 () Bool)

(assert (=> b!364688 m!362447))

(declare-fun m!362449 () Bool)

(assert (=> b!364690 m!362449))

(declare-fun m!362451 () Bool)

(assert (=> b!364690 m!362451))

(declare-fun m!362453 () Bool)

(assert (=> b!364690 m!362453))

(declare-fun m!362455 () Bool)

(assert (=> b!364686 m!362455))

(declare-fun m!362457 () Bool)

(assert (=> b!364686 m!362457))

(declare-fun m!362459 () Bool)

(assert (=> b!364686 m!362459))

(declare-fun m!362461 () Bool)

(assert (=> b!364686 m!362461))

(declare-fun m!362463 () Bool)

(assert (=> b!364686 m!362463))

(declare-fun m!362465 () Bool)

(assert (=> b!364686 m!362465))

(declare-fun m!362467 () Bool)

(assert (=> b!364689 m!362467))

(push 1)

(assert (not b!364690))

(assert (not b!364689))

(assert (not b!364688))

(assert (not start!36524))

(assert (not b!364686))

(check-sat)

(pop 1)

(push 1)

(check-sat)

