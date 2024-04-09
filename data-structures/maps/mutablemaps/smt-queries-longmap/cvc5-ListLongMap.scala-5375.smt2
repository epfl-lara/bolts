; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71872 () Bool)

(assert start!71872)

(declare-fun res!567918 () Bool)

(declare-fun e!465827 () Bool)

(assert (=> start!71872 (=> (not res!567918) (not e!465827))))

(declare-fun i!1466 () (_ BitVec 32))

(declare-datatypes ((array!46726 0))(
  ( (array!46727 (arr!22393 (Array (_ BitVec 32) (_ BitVec 64))) (size!22814 (_ BitVec 32))) )
))
(declare-fun a!4227 () array!46726)

(assert (=> start!71872 (= res!567918 (and (bvsge i!1466 #b00000000000000000000000000000000) (bvslt i!1466 (size!22814 a!4227))))))

(assert (=> start!71872 e!465827))

(assert (=> start!71872 true))

(declare-fun array_inv!17816 (array!46726) Bool)

(assert (=> start!71872 (array_inv!17816 a!4227)))

(declare-fun b!834871 () Bool)

(declare-fun res!567920 () Bool)

(assert (=> b!834871 (=> (not res!567920) (not e!465827))))

(declare-fun k!2968 () (_ BitVec 64))

(declare-fun to!390 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!46726 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!834871 (= res!567920 (= (arrayCountValidKeys!0 (array!46727 (store (arr!22393 a!4227) i!1466 k!2968) (size!22814 a!4227)) (bvadd #b00000000000000000000000000000001 i!1466) to!390) (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390)))))

(declare-fun b!834872 () Bool)

(declare-fun res!567921 () Bool)

(assert (=> b!834872 (=> (not res!567921) (not e!465827))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!834872 (= res!567921 (not (validKeyInArray!0 (select (arr!22393 a!4227) i!1466))))))

(declare-fun b!834873 () Bool)

(declare-fun res!567919 () Bool)

(assert (=> b!834873 (=> (not res!567919) (not e!465827))))

(assert (=> b!834873 (= res!567919 (validKeyInArray!0 k!2968))))

(declare-fun b!834874 () Bool)

(declare-fun res!567922 () Bool)

(assert (=> b!834874 (=> (not res!567922) (not e!465827))))

(assert (=> b!834874 (= res!567922 (and (bvslt (size!22814 a!4227) #b01111111111111111111111111111111) (bvsge to!390 #b00000000000000000000000000000000) (bvsle to!390 (size!22814 a!4227)) (bvsgt to!390 i!1466)))))

(declare-fun b!834875 () Bool)

(assert (=> b!834875 (= e!465827 (and (= to!390 (size!22814 a!4227)) (bvslt (bvadd #b00000000000000000000000000000001 i!1466) #b00000000000000000000000000000000)))))

(assert (= (and start!71872 res!567918) b!834872))

(assert (= (and b!834872 res!567921) b!834873))

(assert (= (and b!834873 res!567919) b!834874))

(assert (= (and b!834874 res!567922) b!834871))

(assert (= (and b!834871 res!567920) b!834875))

(declare-fun m!780145 () Bool)

(assert (=> start!71872 m!780145))

(declare-fun m!780147 () Bool)

(assert (=> b!834871 m!780147))

(declare-fun m!780149 () Bool)

(assert (=> b!834871 m!780149))

(declare-fun m!780151 () Bool)

(assert (=> b!834871 m!780151))

(declare-fun m!780153 () Bool)

(assert (=> b!834872 m!780153))

(assert (=> b!834872 m!780153))

(declare-fun m!780155 () Bool)

(assert (=> b!834872 m!780155))

(declare-fun m!780157 () Bool)

(assert (=> b!834873 m!780157))

(push 1)

(assert (not b!834873))

(assert (not b!834872))

(assert (not b!834871))

(assert (not start!71872))

(check-sat)

(pop 1)

