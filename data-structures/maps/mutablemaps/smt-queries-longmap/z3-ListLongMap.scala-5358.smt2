; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71772 () Bool)

(assert start!71772)

(declare-fun res!567086 () Bool)

(declare-fun e!465265 () Bool)

(assert (=> start!71772 (=> (not res!567086) (not e!465265))))

(declare-fun i!1466 () (_ BitVec 32))

(declare-datatypes ((array!46626 0))(
  ( (array!46627 (arr!22343 (Array (_ BitVec 32) (_ BitVec 64))) (size!22764 (_ BitVec 32))) )
))
(declare-fun a!4227 () array!46626)

(assert (=> start!71772 (= res!567086 (and (bvsge i!1466 #b00000000000000000000000000000000) (bvslt i!1466 (size!22764 a!4227))))))

(assert (=> start!71772 e!465265))

(assert (=> start!71772 true))

(declare-fun array_inv!17766 (array!46626) Bool)

(assert (=> start!71772 (array_inv!17766 a!4227)))

(declare-fun b!833877 () Bool)

(declare-fun res!567088 () Bool)

(assert (=> b!833877 (=> (not res!567088) (not e!465265))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!833877 (= res!567088 (not (validKeyInArray!0 (select (arr!22343 a!4227) i!1466))))))

(declare-fun b!833878 () Bool)

(declare-fun res!567087 () Bool)

(assert (=> b!833878 (=> (not res!567087) (not e!465265))))

(declare-fun k0!2968 () (_ BitVec 64))

(assert (=> b!833878 (= res!567087 (validKeyInArray!0 k0!2968))))

(declare-fun b!833879 () Bool)

(declare-fun to!390 () (_ BitVec 32))

(assert (=> b!833879 (= e!465265 (and (bvslt (size!22764 a!4227) #b01111111111111111111111111111111) (bvsge to!390 #b00000000000000000000000000000000) (bvsle to!390 (size!22764 a!4227)) (bvsgt to!390 i!1466) (bvslt (bvadd #b00000000000000000000000000000001 i!1466) #b00000000000000000000000000000000)))))

(assert (= (and start!71772 res!567086) b!833877))

(assert (= (and b!833877 res!567088) b!833878))

(assert (= (and b!833878 res!567087) b!833879))

(declare-fun m!778899 () Bool)

(assert (=> start!71772 m!778899))

(declare-fun m!778901 () Bool)

(assert (=> b!833877 m!778901))

(assert (=> b!833877 m!778901))

(declare-fun m!778903 () Bool)

(assert (=> b!833877 m!778903))

(declare-fun m!778905 () Bool)

(assert (=> b!833878 m!778905))

(check-sat (not b!833878) (not b!833877) (not start!71772))
(check-sat)
