; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71774 () Bool)

(assert start!71774)

(declare-fun res!567095 () Bool)

(declare-fun e!465272 () Bool)

(assert (=> start!71774 (=> (not res!567095) (not e!465272))))

(declare-fun i!1466 () (_ BitVec 32))

(declare-datatypes ((array!46628 0))(
  ( (array!46629 (arr!22344 (Array (_ BitVec 32) (_ BitVec 64))) (size!22765 (_ BitVec 32))) )
))
(declare-fun a!4227 () array!46628)

(assert (=> start!71774 (= res!567095 (and (bvsge i!1466 #b00000000000000000000000000000000) (bvslt i!1466 (size!22765 a!4227))))))

(assert (=> start!71774 e!465272))

(assert (=> start!71774 true))

(declare-fun array_inv!17767 (array!46628) Bool)

(assert (=> start!71774 (array_inv!17767 a!4227)))

(declare-fun b!833886 () Bool)

(declare-fun res!567097 () Bool)

(assert (=> b!833886 (=> (not res!567097) (not e!465272))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!833886 (= res!567097 (not (validKeyInArray!0 (select (arr!22344 a!4227) i!1466))))))

(declare-fun b!833887 () Bool)

(declare-fun res!567096 () Bool)

(assert (=> b!833887 (=> (not res!567096) (not e!465272))))

(declare-fun k!2968 () (_ BitVec 64))

(assert (=> b!833887 (= res!567096 (validKeyInArray!0 k!2968))))

(declare-fun to!390 () (_ BitVec 32))

(declare-fun b!833888 () Bool)

(assert (=> b!833888 (= e!465272 (and (bvslt (size!22765 a!4227) #b01111111111111111111111111111111) (bvsge to!390 #b00000000000000000000000000000000) (bvsle to!390 (size!22765 a!4227)) (bvsgt to!390 i!1466) (bvslt (bvadd #b00000000000000000000000000000001 i!1466) #b00000000000000000000000000000000)))))

(assert (= (and start!71774 res!567095) b!833886))

(assert (= (and b!833886 res!567097) b!833887))

(assert (= (and b!833887 res!567096) b!833888))

(declare-fun m!778907 () Bool)

(assert (=> start!71774 m!778907))

(declare-fun m!778909 () Bool)

(assert (=> b!833886 m!778909))

(assert (=> b!833886 m!778909))

(declare-fun m!778911 () Bool)

(assert (=> b!833886 m!778911))

(declare-fun m!778913 () Bool)

(assert (=> b!833887 m!778913))

(push 1)

(assert (not start!71774))

(assert (not b!833887))

(assert (not b!833886))

(check-sat)

(pop 1)

(push 1)

(check-sat)

