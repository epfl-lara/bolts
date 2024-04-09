; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48160 () Bool)

(assert start!48160)

(declare-fun b!530225 () Bool)

(declare-fun res!326082 () Bool)

(declare-fun e!308943 () Bool)

(assert (=> b!530225 (=> (not res!326082) (not e!308943))))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!33556 0))(
  ( (array!33557 (arr!16122 (Array (_ BitVec 32) (_ BitVec 64))) (size!16486 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33556)

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!530225 (= res!326082 (and (= (size!16486 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16486 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16486 a!3154)) (not (= i!1153 j!147))))))

(declare-fun res!326083 () Bool)

(assert (=> start!48160 (=> (not res!326083) (not e!308943))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48160 (= res!326083 (validMask!0 mask!3216))))

(assert (=> start!48160 e!308943))

(assert (=> start!48160 true))

(declare-fun array_inv!11896 (array!33556) Bool)

(assert (=> start!48160 (array_inv!11896 a!3154)))

(declare-fun b!530227 () Bool)

(declare-fun res!326081 () Bool)

(assert (=> b!530227 (=> (not res!326081) (not e!308943))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!530227 (= res!326081 (validKeyInArray!0 k!1998))))

(declare-fun b!530228 () Bool)

(assert (=> b!530228 (= e!308943 (bvsge #b00000000000000000000000000000000 (size!16486 a!3154)))))

(declare-fun b!530226 () Bool)

(declare-fun res!326084 () Bool)

(assert (=> b!530226 (=> (not res!326084) (not e!308943))))

(assert (=> b!530226 (= res!326084 (validKeyInArray!0 (select (arr!16122 a!3154) j!147)))))

(assert (= (and start!48160 res!326083) b!530225))

(assert (= (and b!530225 res!326082) b!530226))

(assert (= (and b!530226 res!326084) b!530227))

(assert (= (and b!530227 res!326081) b!530228))

(declare-fun m!510859 () Bool)

(assert (=> start!48160 m!510859))

(declare-fun m!510861 () Bool)

(assert (=> start!48160 m!510861))

(declare-fun m!510863 () Bool)

(assert (=> b!530227 m!510863))

(declare-fun m!510865 () Bool)

(assert (=> b!530226 m!510865))

(assert (=> b!530226 m!510865))

(declare-fun m!510867 () Bool)

(assert (=> b!530226 m!510867))

(push 1)

(assert (not b!530227))

(assert (not b!530226))

(assert (not start!48160))

(check-sat)

(pop 1)

