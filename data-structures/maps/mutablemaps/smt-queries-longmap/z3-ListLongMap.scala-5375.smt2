; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71874 () Bool)

(assert start!71874)

(declare-fun b!834887 () Bool)

(declare-fun res!567936 () Bool)

(declare-fun e!465833 () Bool)

(assert (=> b!834887 (=> (not res!567936) (not e!465833))))

(declare-datatypes ((array!46728 0))(
  ( (array!46729 (arr!22394 (Array (_ BitVec 32) (_ BitVec 64))) (size!22815 (_ BitVec 32))) )
))
(declare-fun a!4227 () array!46728)

(declare-fun i!1466 () (_ BitVec 32))

(declare-fun to!390 () (_ BitVec 32))

(assert (=> b!834887 (= res!567936 (and (bvslt (size!22815 a!4227) #b01111111111111111111111111111111) (bvsge to!390 #b00000000000000000000000000000000) (bvsle to!390 (size!22815 a!4227)) (bvsgt to!390 i!1466)))))

(declare-fun b!834888 () Bool)

(declare-fun res!567933 () Bool)

(assert (=> b!834888 (=> (not res!567933) (not e!465833))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!834888 (= res!567933 (not (validKeyInArray!0 (select (arr!22394 a!4227) i!1466))))))

(declare-fun b!834889 () Bool)

(declare-fun res!567935 () Bool)

(assert (=> b!834889 (=> (not res!567935) (not e!465833))))

(declare-fun k0!2968 () (_ BitVec 64))

(declare-fun arrayCountValidKeys!0 (array!46728 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!834889 (= res!567935 (= (arrayCountValidKeys!0 (array!46729 (store (arr!22394 a!4227) i!1466 k0!2968) (size!22815 a!4227)) (bvadd #b00000000000000000000000000000001 i!1466) to!390) (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390)))))

(declare-fun b!834890 () Bool)

(declare-fun res!567934 () Bool)

(assert (=> b!834890 (=> (not res!567934) (not e!465833))))

(assert (=> b!834890 (= res!567934 (validKeyInArray!0 k0!2968))))

(declare-fun b!834886 () Bool)

(assert (=> b!834886 (= e!465833 (and (= to!390 (size!22815 a!4227)) (bvslt (bvadd #b00000000000000000000000000000001 i!1466) #b00000000000000000000000000000000)))))

(declare-fun res!567937 () Bool)

(assert (=> start!71874 (=> (not res!567937) (not e!465833))))

(assert (=> start!71874 (= res!567937 (and (bvsge i!1466 #b00000000000000000000000000000000) (bvslt i!1466 (size!22815 a!4227))))))

(assert (=> start!71874 e!465833))

(assert (=> start!71874 true))

(declare-fun array_inv!17817 (array!46728) Bool)

(assert (=> start!71874 (array_inv!17817 a!4227)))

(assert (= (and start!71874 res!567937) b!834888))

(assert (= (and b!834888 res!567933) b!834890))

(assert (= (and b!834890 res!567934) b!834887))

(assert (= (and b!834887 res!567936) b!834889))

(assert (= (and b!834889 res!567935) b!834886))

(declare-fun m!780159 () Bool)

(assert (=> b!834888 m!780159))

(assert (=> b!834888 m!780159))

(declare-fun m!780161 () Bool)

(assert (=> b!834888 m!780161))

(declare-fun m!780163 () Bool)

(assert (=> b!834889 m!780163))

(declare-fun m!780165 () Bool)

(assert (=> b!834889 m!780165))

(declare-fun m!780167 () Bool)

(assert (=> b!834889 m!780167))

(declare-fun m!780169 () Bool)

(assert (=> b!834890 m!780169))

(declare-fun m!780171 () Bool)

(assert (=> start!71874 m!780171))

(check-sat (not b!834890) (not b!834889) (not b!834888) (not start!71874))
(check-sat)
