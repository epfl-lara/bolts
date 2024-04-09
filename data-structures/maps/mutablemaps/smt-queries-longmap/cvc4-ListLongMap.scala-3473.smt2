; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48200 () Bool)

(assert start!48200)

(declare-fun b!530374 () Bool)

(declare-fun res!326231 () Bool)

(declare-fun e!309010 () Bool)

(assert (=> b!530374 (=> (not res!326231) (not e!309010))))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!33581 0))(
  ( (array!33582 (arr!16133 (Array (_ BitVec 32) (_ BitVec 64))) (size!16497 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33581)

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!530374 (= res!326231 (and (= (size!16497 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16497 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16497 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!530375 () Bool)

(assert (=> b!530375 (= e!309010 false)))

(declare-datatypes ((SeekEntryResult!4598 0))(
  ( (MissingZero!4598 (index!20616 (_ BitVec 32))) (Found!4598 (index!20617 (_ BitVec 32))) (Intermediate!4598 (undefined!5410 Bool) (index!20618 (_ BitVec 32)) (x!49631 (_ BitVec 32))) (Undefined!4598) (MissingVacant!4598 (index!20619 (_ BitVec 32))) )
))
(declare-fun lt!244727 () SeekEntryResult!4598)

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33581 (_ BitVec 32)) SeekEntryResult!4598)

(assert (=> b!530375 (= lt!244727 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun res!326230 () Bool)

(assert (=> start!48200 (=> (not res!326230) (not e!309010))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48200 (= res!326230 (validMask!0 mask!3216))))

(assert (=> start!48200 e!309010))

(assert (=> start!48200 true))

(declare-fun array_inv!11907 (array!33581) Bool)

(assert (=> start!48200 (array_inv!11907 a!3154)))

(declare-fun b!530376 () Bool)

(declare-fun res!326233 () Bool)

(assert (=> b!530376 (=> (not res!326233) (not e!309010))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!530376 (= res!326233 (validKeyInArray!0 (select (arr!16133 a!3154) j!147)))))

(declare-fun b!530377 () Bool)

(declare-fun res!326232 () Bool)

(assert (=> b!530377 (=> (not res!326232) (not e!309010))))

(declare-fun arrayContainsKey!0 (array!33581 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!530377 (= res!326232 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!530378 () Bool)

(declare-fun res!326234 () Bool)

(assert (=> b!530378 (=> (not res!326234) (not e!309010))))

(assert (=> b!530378 (= res!326234 (validKeyInArray!0 k!1998))))

(assert (= (and start!48200 res!326230) b!530374))

(assert (= (and b!530374 res!326231) b!530376))

(assert (= (and b!530376 res!326233) b!530378))

(assert (= (and b!530378 res!326234) b!530377))

(assert (= (and b!530377 res!326232) b!530375))

(declare-fun m!510983 () Bool)

(assert (=> start!48200 m!510983))

(declare-fun m!510985 () Bool)

(assert (=> start!48200 m!510985))

(declare-fun m!510987 () Bool)

(assert (=> b!530378 m!510987))

(declare-fun m!510989 () Bool)

(assert (=> b!530376 m!510989))

(assert (=> b!530376 m!510989))

(declare-fun m!510991 () Bool)

(assert (=> b!530376 m!510991))

(declare-fun m!510993 () Bool)

(assert (=> b!530377 m!510993))

(declare-fun m!510995 () Bool)

(assert (=> b!530375 m!510995))

(push 1)

(assert (not b!530377))

(assert (not b!530378))

(assert (not start!48200))

(assert (not b!530375))

(assert (not b!530376))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

