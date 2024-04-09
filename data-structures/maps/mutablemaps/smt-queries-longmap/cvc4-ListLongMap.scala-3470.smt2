; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48164 () Bool)

(assert start!48164)

(declare-fun res!326107 () Bool)

(declare-fun e!308956 () Bool)

(assert (=> start!48164 (=> (not res!326107) (not e!308956))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48164 (= res!326107 (validMask!0 mask!3216))))

(assert (=> start!48164 e!308956))

(assert (=> start!48164 true))

(declare-datatypes ((array!33560 0))(
  ( (array!33561 (arr!16124 (Array (_ BitVec 32) (_ BitVec 64))) (size!16488 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33560)

(declare-fun array_inv!11898 (array!33560) Bool)

(assert (=> start!48164 (array_inv!11898 a!3154)))

(declare-fun b!530250 () Bool)

(declare-fun res!326105 () Bool)

(assert (=> b!530250 (=> (not res!326105) (not e!308956))))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!530250 (= res!326105 (validKeyInArray!0 (select (arr!16124 a!3154) j!147)))))

(declare-fun b!530249 () Bool)

(declare-fun res!326106 () Bool)

(assert (=> b!530249 (=> (not res!326106) (not e!308956))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!530249 (= res!326106 (and (= (size!16488 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16488 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16488 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!530251 () Bool)

(declare-fun res!326108 () Bool)

(assert (=> b!530251 (=> (not res!326108) (not e!308956))))

(declare-fun k!1998 () (_ BitVec 64))

(assert (=> b!530251 (= res!326108 (validKeyInArray!0 k!1998))))

(declare-fun b!530252 () Bool)

(assert (=> b!530252 (= e!308956 (bvsge #b00000000000000000000000000000000 (size!16488 a!3154)))))

(assert (= (and start!48164 res!326107) b!530249))

(assert (= (and b!530249 res!326106) b!530250))

(assert (= (and b!530250 res!326105) b!530251))

(assert (= (and b!530251 res!326108) b!530252))

(declare-fun m!510879 () Bool)

(assert (=> start!48164 m!510879))

(declare-fun m!510881 () Bool)

(assert (=> start!48164 m!510881))

(declare-fun m!510883 () Bool)

(assert (=> b!530250 m!510883))

(assert (=> b!530250 m!510883))

(declare-fun m!510885 () Bool)

(assert (=> b!530250 m!510885))

(declare-fun m!510887 () Bool)

(assert (=> b!530251 m!510887))

(push 1)

(assert (not b!530251))

(assert (not b!530250))

(assert (not start!48164))

(check-sat)

(pop 1)

(push 1)

(check-sat)

