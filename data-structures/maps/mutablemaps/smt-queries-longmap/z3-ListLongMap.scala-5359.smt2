; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71778 () Bool)

(assert start!71778)

(declare-fun res!567113 () Bool)

(declare-fun e!465283 () Bool)

(assert (=> start!71778 (=> (not res!567113) (not e!465283))))

(declare-fun i!1466 () (_ BitVec 32))

(declare-datatypes ((array!46632 0))(
  ( (array!46633 (arr!22346 (Array (_ BitVec 32) (_ BitVec 64))) (size!22767 (_ BitVec 32))) )
))
(declare-fun a!4227 () array!46632)

(assert (=> start!71778 (= res!567113 (and (bvsge i!1466 #b00000000000000000000000000000000) (bvslt i!1466 (size!22767 a!4227))))))

(assert (=> start!71778 e!465283))

(assert (=> start!71778 true))

(declare-fun array_inv!17769 (array!46632) Bool)

(assert (=> start!71778 (array_inv!17769 a!4227)))

(declare-fun b!833904 () Bool)

(declare-fun res!567115 () Bool)

(assert (=> b!833904 (=> (not res!567115) (not e!465283))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!833904 (= res!567115 (not (validKeyInArray!0 (select (arr!22346 a!4227) i!1466))))))

(declare-fun b!833905 () Bool)

(declare-fun res!567114 () Bool)

(assert (=> b!833905 (=> (not res!567114) (not e!465283))))

(declare-fun k0!2968 () (_ BitVec 64))

(assert (=> b!833905 (= res!567114 (validKeyInArray!0 k0!2968))))

(declare-fun b!833906 () Bool)

(declare-fun to!390 () (_ BitVec 32))

(assert (=> b!833906 (= e!465283 (and (bvslt (size!22767 a!4227) #b01111111111111111111111111111111) (bvsge to!390 #b00000000000000000000000000000000) (bvsle to!390 (size!22767 a!4227)) (bvsgt to!390 i!1466) (bvslt (bvadd #b00000000000000000000000000000001 i!1466) #b00000000000000000000000000000000)))))

(assert (= (and start!71778 res!567113) b!833904))

(assert (= (and b!833904 res!567115) b!833905))

(assert (= (and b!833905 res!567114) b!833906))

(declare-fun m!778923 () Bool)

(assert (=> start!71778 m!778923))

(declare-fun m!778925 () Bool)

(assert (=> b!833904 m!778925))

(assert (=> b!833904 m!778925))

(declare-fun m!778927 () Bool)

(assert (=> b!833904 m!778927))

(declare-fun m!778929 () Bool)

(assert (=> b!833905 m!778929))

(check-sat (not b!833905) (not b!833904) (not start!71778))
(check-sat)
