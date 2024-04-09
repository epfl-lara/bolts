; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116730 () Bool)

(assert start!116730)

(declare-fun b!1375222 () Bool)

(declare-fun e!779090 () Bool)

(assert (=> b!1375222 (= e!779090 false)))

(declare-fun to!206 () (_ BitVec 32))

(declare-fun i!1445 () (_ BitVec 32))

(declare-datatypes ((array!93317 0))(
  ( (array!93318 (arr!45057 (Array (_ BitVec 32) (_ BitVec 64))) (size!45608 (_ BitVec 32))) )
))
(declare-fun a!4032 () array!93317)

(declare-fun lt!604249 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93317 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1375222 (= lt!604249 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun lt!604248 () (_ BitVec 32))

(declare-fun k!2947 () (_ BitVec 64))

(assert (=> b!1375222 (= lt!604248 (arrayCountValidKeys!0 (array!93318 (store (arr!45057 a!4032) i!1445 k!2947) (size!45608 a!4032)) (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun b!1375220 () Bool)

(declare-fun res!918397 () Bool)

(assert (=> b!1375220 (=> (not res!918397) (not e!779090))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1375220 (= res!918397 (not (validKeyInArray!0 k!2947)))))

(declare-fun b!1375219 () Bool)

(declare-fun res!918396 () Bool)

(assert (=> b!1375219 (=> (not res!918396) (not e!779090))))

(assert (=> b!1375219 (= res!918396 (validKeyInArray!0 (select (arr!45057 a!4032) i!1445)))))

(declare-fun res!918399 () Bool)

(assert (=> start!116730 (=> (not res!918399) (not e!779090))))

(assert (=> start!116730 (= res!918399 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45608 a!4032))))))

(assert (=> start!116730 e!779090))

(assert (=> start!116730 true))

(declare-fun array_inv!34002 (array!93317) Bool)

(assert (=> start!116730 (array_inv!34002 a!4032)))

(declare-fun b!1375221 () Bool)

(declare-fun res!918398 () Bool)

(assert (=> b!1375221 (=> (not res!918398) (not e!779090))))

(assert (=> b!1375221 (= res!918398 (and (bvslt (size!45608 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45608 a!4032)) (bvsgt to!206 i!1445)))))

(assert (= (and start!116730 res!918399) b!1375219))

(assert (= (and b!1375219 res!918396) b!1375220))

(assert (= (and b!1375220 res!918397) b!1375221))

(assert (= (and b!1375221 res!918398) b!1375222))

(declare-fun m!1259087 () Bool)

(assert (=> b!1375222 m!1259087))

(declare-fun m!1259089 () Bool)

(assert (=> b!1375222 m!1259089))

(declare-fun m!1259091 () Bool)

(assert (=> b!1375222 m!1259091))

(declare-fun m!1259093 () Bool)

(assert (=> b!1375220 m!1259093))

(declare-fun m!1259095 () Bool)

(assert (=> b!1375219 m!1259095))

(assert (=> b!1375219 m!1259095))

(declare-fun m!1259097 () Bool)

(assert (=> b!1375219 m!1259097))

(declare-fun m!1259099 () Bool)

(assert (=> start!116730 m!1259099))

(push 1)

(assert (not b!1375222))

(assert (not start!116730))

(assert (not b!1375219))

(assert (not b!1375220))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

