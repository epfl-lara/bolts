; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92220 () Bool)

(assert start!92220)

(declare-fun res!697343 () Bool)

(declare-fun e!594443 () Bool)

(assert (=> start!92220 (=> (not res!697343) (not e!594443))))

(declare-fun i!1381 () (_ BitVec 32))

(declare-datatypes ((array!65996 0))(
  ( (array!65997 (arr!31735 (Array (_ BitVec 32) (_ BitVec 64))) (size!32272 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!65996)

(assert (=> start!92220 (= res!697343 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32272 a!3488)) (bvslt (size!32272 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92220 e!594443))

(assert (=> start!92220 true))

(declare-fun array_inv!24357 (array!65996) Bool)

(assert (=> start!92220 (array_inv!24357 a!3488)))

(declare-fun b!1048071 () Bool)

(declare-fun res!697344 () Bool)

(assert (=> b!1048071 (=> (not res!697344) (not e!594443))))

(declare-datatypes ((List!22178 0))(
  ( (Nil!22175) (Cons!22174 (h!23383 (_ BitVec 64)) (t!31492 List!22178)) )
))
(declare-fun arrayNoDuplicates!0 (array!65996 (_ BitVec 32) List!22178) Bool)

(assert (=> b!1048071 (= res!697344 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22175))))

(declare-fun b!1048072 () Bool)

(declare-fun res!697342 () Bool)

(assert (=> b!1048072 (=> (not res!697342) (not e!594443))))

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1048072 (= res!697342 (validKeyInArray!0 k!2747))))

(declare-fun b!1048073 () Bool)

(assert (=> b!1048073 (= e!594443 (and (= (select (arr!31735 a!3488) i!1381) k!2747) (bvsge #b00000000000000000000000000000000 (size!32272 a!3488))))))

(assert (= (and start!92220 res!697343) b!1048071))

(assert (= (and b!1048071 res!697344) b!1048072))

(assert (= (and b!1048072 res!697342) b!1048073))

(declare-fun m!969243 () Bool)

(assert (=> start!92220 m!969243))

(declare-fun m!969245 () Bool)

(assert (=> b!1048071 m!969245))

(declare-fun m!969247 () Bool)

(assert (=> b!1048072 m!969247))

(declare-fun m!969249 () Bool)

(assert (=> b!1048073 m!969249))

(push 1)

(assert (not b!1048071))

(assert (not start!92220))

(assert (not b!1048072))

(check-sat)

