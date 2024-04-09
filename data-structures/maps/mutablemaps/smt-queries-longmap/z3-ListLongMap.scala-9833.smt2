; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!116728 () Bool)

(assert start!116728)

(declare-fun b!1375209 () Bool)

(declare-fun res!918384 () Bool)

(declare-fun e!779084 () Bool)

(assert (=> b!1375209 (=> (not res!918384) (not e!779084))))

(declare-fun to!206 () (_ BitVec 32))

(declare-fun i!1445 () (_ BitVec 32))

(declare-datatypes ((array!93315 0))(
  ( (array!93316 (arr!45056 (Array (_ BitVec 32) (_ BitVec 64))) (size!45607 (_ BitVec 32))) )
))
(declare-fun a!4032 () array!93315)

(assert (=> b!1375209 (= res!918384 (and (bvslt (size!45607 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45607 a!4032)) (bvsgt to!206 i!1445)))))

(declare-fun b!1375210 () Bool)

(assert (=> b!1375210 (= e!779084 false)))

(declare-fun lt!604242 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93315 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1375210 (= lt!604242 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun lt!604243 () (_ BitVec 32))

(declare-fun k0!2947 () (_ BitVec 64))

(assert (=> b!1375210 (= lt!604243 (arrayCountValidKeys!0 (array!93316 (store (arr!45056 a!4032) i!1445 k0!2947) (size!45607 a!4032)) (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun b!1375207 () Bool)

(declare-fun res!918387 () Bool)

(assert (=> b!1375207 (=> (not res!918387) (not e!779084))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1375207 (= res!918387 (validKeyInArray!0 (select (arr!45056 a!4032) i!1445)))))

(declare-fun b!1375208 () Bool)

(declare-fun res!918386 () Bool)

(assert (=> b!1375208 (=> (not res!918386) (not e!779084))))

(assert (=> b!1375208 (= res!918386 (not (validKeyInArray!0 k0!2947)))))

(declare-fun res!918385 () Bool)

(assert (=> start!116728 (=> (not res!918385) (not e!779084))))

(assert (=> start!116728 (= res!918385 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45607 a!4032))))))

(assert (=> start!116728 e!779084))

(assert (=> start!116728 true))

(declare-fun array_inv!34001 (array!93315) Bool)

(assert (=> start!116728 (array_inv!34001 a!4032)))

(assert (= (and start!116728 res!918385) b!1375207))

(assert (= (and b!1375207 res!918387) b!1375208))

(assert (= (and b!1375208 res!918386) b!1375209))

(assert (= (and b!1375209 res!918384) b!1375210))

(declare-fun m!1259073 () Bool)

(assert (=> b!1375210 m!1259073))

(declare-fun m!1259075 () Bool)

(assert (=> b!1375210 m!1259075))

(declare-fun m!1259077 () Bool)

(assert (=> b!1375210 m!1259077))

(declare-fun m!1259079 () Bool)

(assert (=> b!1375207 m!1259079))

(assert (=> b!1375207 m!1259079))

(declare-fun m!1259081 () Bool)

(assert (=> b!1375207 m!1259081))

(declare-fun m!1259083 () Bool)

(assert (=> b!1375208 m!1259083))

(declare-fun m!1259085 () Bool)

(assert (=> start!116728 m!1259085))

(check-sat (not b!1375207) (not b!1375208) (not b!1375210) (not start!116728))
