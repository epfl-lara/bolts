; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71776 () Bool)

(assert start!71776)

(declare-fun res!567104 () Bool)

(declare-fun e!465277 () Bool)

(assert (=> start!71776 (=> (not res!567104) (not e!465277))))

(declare-fun i!1466 () (_ BitVec 32))

(declare-datatypes ((array!46630 0))(
  ( (array!46631 (arr!22345 (Array (_ BitVec 32) (_ BitVec 64))) (size!22766 (_ BitVec 32))) )
))
(declare-fun a!4227 () array!46630)

(assert (=> start!71776 (= res!567104 (and (bvsge i!1466 #b00000000000000000000000000000000) (bvslt i!1466 (size!22766 a!4227))))))

(assert (=> start!71776 e!465277))

(assert (=> start!71776 true))

(declare-fun array_inv!17768 (array!46630) Bool)

(assert (=> start!71776 (array_inv!17768 a!4227)))

(declare-fun b!833895 () Bool)

(declare-fun res!567106 () Bool)

(assert (=> b!833895 (=> (not res!567106) (not e!465277))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!833895 (= res!567106 (not (validKeyInArray!0 (select (arr!22345 a!4227) i!1466))))))

(declare-fun b!833896 () Bool)

(declare-fun res!567105 () Bool)

(assert (=> b!833896 (=> (not res!567105) (not e!465277))))

(declare-fun k!2968 () (_ BitVec 64))

(assert (=> b!833896 (= res!567105 (validKeyInArray!0 k!2968))))

(declare-fun b!833897 () Bool)

(declare-fun to!390 () (_ BitVec 32))

(assert (=> b!833897 (= e!465277 (and (bvslt (size!22766 a!4227) #b01111111111111111111111111111111) (bvsge to!390 #b00000000000000000000000000000000) (bvsle to!390 (size!22766 a!4227)) (bvsgt to!390 i!1466) (bvslt (bvadd #b00000000000000000000000000000001 i!1466) #b00000000000000000000000000000000)))))

(assert (= (and start!71776 res!567104) b!833895))

(assert (= (and b!833895 res!567106) b!833896))

(assert (= (and b!833896 res!567105) b!833897))

(declare-fun m!778915 () Bool)

(assert (=> start!71776 m!778915))

(declare-fun m!778917 () Bool)

(assert (=> b!833895 m!778917))

(assert (=> b!833895 m!778917))

(declare-fun m!778919 () Bool)

(assert (=> b!833895 m!778919))

(declare-fun m!778921 () Bool)

(assert (=> b!833896 m!778921))

(push 1)

(assert (not b!833895))

(assert (not b!833896))

(assert (not start!71776))

(check-sat)

(pop 1)

(push 1)

(check-sat)

