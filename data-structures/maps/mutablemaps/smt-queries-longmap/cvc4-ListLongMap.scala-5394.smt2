; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71990 () Bool)

(assert start!71990)

(declare-fun b!836043 () Bool)

(declare-fun res!568949 () Bool)

(declare-fun e!466424 () Bool)

(assert (=> b!836043 (=> (not res!568949) (not e!466424))))

(declare-fun k!2968 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!836043 (= res!568949 (validKeyInArray!0 k!2968))))

(declare-fun b!836045 () Bool)

(declare-fun res!568950 () Bool)

(assert (=> b!836045 (=> (not res!568950) (not e!466424))))

(declare-datatypes ((array!46844 0))(
  ( (array!46845 (arr!22452 (Array (_ BitVec 32) (_ BitVec 64))) (size!22873 (_ BitVec 32))) )
))
(declare-fun a!4227 () array!46844)

(declare-fun to!390 () (_ BitVec 32))

(declare-fun i!1466 () (_ BitVec 32))

(assert (=> b!836045 (= res!568950 (and (bvslt (size!22873 a!4227) #b01111111111111111111111111111111) (bvsge to!390 #b00000000000000000000000000000000) (bvsle to!390 (size!22873 a!4227)) (bvsgt to!390 i!1466)))))

(declare-fun b!836046 () Bool)

(declare-fun e!466422 () Bool)

(assert (=> b!836046 (= e!466424 e!466422)))

(declare-fun res!568951 () Bool)

(assert (=> b!836046 (=> (not res!568951) (not e!466422))))

(declare-fun lt!380328 () array!46844)

(declare-fun arrayCountValidKeys!0 (array!46844 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!836046 (= res!568951 (= (arrayCountValidKeys!0 lt!380328 (bvadd #b00000000000000000000000000000001 i!1466) to!390) (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390)))))

(assert (=> b!836046 (= lt!380328 (array!46845 (store (arr!22452 a!4227) i!1466 k!2968) (size!22873 a!4227)))))

(declare-fun b!836047 () Bool)

(declare-fun res!568948 () Bool)

(assert (=> b!836047 (=> (not res!568948) (not e!466424))))

(assert (=> b!836047 (= res!568948 (not (validKeyInArray!0 (select (arr!22452 a!4227) i!1466))))))

(declare-fun b!836048 () Bool)

(declare-fun res!568947 () Bool)

(assert (=> b!836048 (=> (not res!568947) (not e!466422))))

(assert (=> b!836048 (= res!568947 (= to!390 (size!22873 a!4227)))))

(declare-fun b!836044 () Bool)

(assert (=> b!836044 (= e!466422 (not (= (arrayCountValidKeys!0 lt!380328 (bvadd #b00000000000000000000000000000001 i!1466) (size!22873 a!4227)) (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (size!22873 a!4227)))))))

(declare-fun res!568946 () Bool)

(assert (=> start!71990 (=> (not res!568946) (not e!466424))))

(assert (=> start!71990 (= res!568946 (and (bvsge i!1466 #b00000000000000000000000000000000) (bvslt i!1466 (size!22873 a!4227))))))

(assert (=> start!71990 e!466424))

(assert (=> start!71990 true))

(declare-fun array_inv!17875 (array!46844) Bool)

(assert (=> start!71990 (array_inv!17875 a!4227)))

(assert (= (and start!71990 res!568946) b!836047))

(assert (= (and b!836047 res!568948) b!836043))

(assert (= (and b!836043 res!568949) b!836045))

(assert (= (and b!836045 res!568950) b!836046))

(assert (= (and b!836046 res!568951) b!836048))

(assert (= (and b!836048 res!568947) b!836044))

(declare-fun m!781555 () Bool)

(assert (=> b!836044 m!781555))

(declare-fun m!781557 () Bool)

(assert (=> b!836044 m!781557))

(declare-fun m!781559 () Bool)

(assert (=> start!71990 m!781559))

(declare-fun m!781561 () Bool)

(assert (=> b!836046 m!781561))

(declare-fun m!781563 () Bool)

(assert (=> b!836046 m!781563))

(declare-fun m!781565 () Bool)

(assert (=> b!836046 m!781565))

(declare-fun m!781567 () Bool)

(assert (=> b!836043 m!781567))

(declare-fun m!781569 () Bool)

(assert (=> b!836047 m!781569))

(assert (=> b!836047 m!781569))

(declare-fun m!781571 () Bool)

(assert (=> b!836047 m!781571))

(push 1)

(assert (not b!836043))

(assert (not b!836046))

(assert (not b!836044))

(assert (not b!836047))

(assert (not start!71990))

(check-sat)

