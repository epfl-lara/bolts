; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71782 () Bool)

(assert start!71782)

(declare-fun b!833925 () Bool)

(declare-fun res!567133 () Bool)

(declare-fun e!465295 () Bool)

(assert (=> b!833925 (=> (not res!567133) (not e!465295))))

(declare-fun k!2968 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!833925 (= res!567133 (validKeyInArray!0 k!2968))))

(declare-fun b!833924 () Bool)

(declare-fun res!567134 () Bool)

(assert (=> b!833924 (=> (not res!567134) (not e!465295))))

(declare-datatypes ((array!46636 0))(
  ( (array!46637 (arr!22348 (Array (_ BitVec 32) (_ BitVec 64))) (size!22769 (_ BitVec 32))) )
))
(declare-fun a!4227 () array!46636)

(declare-fun i!1466 () (_ BitVec 32))

(assert (=> b!833924 (= res!567134 (not (validKeyInArray!0 (select (arr!22348 a!4227) i!1466))))))

(declare-fun res!567135 () Bool)

(assert (=> start!71782 (=> (not res!567135) (not e!465295))))

(assert (=> start!71782 (= res!567135 (and (bvsge i!1466 #b00000000000000000000000000000000) (bvslt i!1466 (size!22769 a!4227))))))

(assert (=> start!71782 e!465295))

(assert (=> start!71782 true))

(declare-fun array_inv!17771 (array!46636) Bool)

(assert (=> start!71782 (array_inv!17771 a!4227)))

(declare-fun b!833927 () Bool)

(assert (=> b!833927 (= e!465295 false)))

(declare-fun lt!378704 () (_ BitVec 32))

(declare-fun to!390 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!46636 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!833927 (= lt!378704 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun lt!378705 () (_ BitVec 32))

(assert (=> b!833927 (= lt!378705 (arrayCountValidKeys!0 (array!46637 (store (arr!22348 a!4227) i!1466 k!2968) (size!22769 a!4227)) (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun b!833926 () Bool)

(declare-fun res!567136 () Bool)

(assert (=> b!833926 (=> (not res!567136) (not e!465295))))

(assert (=> b!833926 (= res!567136 (and (bvslt (size!22769 a!4227) #b01111111111111111111111111111111) (bvsge to!390 #b00000000000000000000000000000000) (bvsle to!390 (size!22769 a!4227)) (bvsgt to!390 i!1466)))))

(assert (= (and start!71782 res!567135) b!833924))

(assert (= (and b!833924 res!567134) b!833925))

(assert (= (and b!833925 res!567133) b!833926))

(assert (= (and b!833926 res!567136) b!833927))

(declare-fun m!778939 () Bool)

(assert (=> b!833925 m!778939))

(declare-fun m!778941 () Bool)

(assert (=> b!833924 m!778941))

(assert (=> b!833924 m!778941))

(declare-fun m!778943 () Bool)

(assert (=> b!833924 m!778943))

(declare-fun m!778945 () Bool)

(assert (=> start!71782 m!778945))

(declare-fun m!778947 () Bool)

(assert (=> b!833927 m!778947))

(declare-fun m!778949 () Bool)

(assert (=> b!833927 m!778949))

(declare-fun m!778951 () Bool)

(assert (=> b!833927 m!778951))

(push 1)

(assert (not b!833924))

(assert (not b!833925))

(assert (not start!71782))

(assert (not b!833927))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

