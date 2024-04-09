; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118130 () Bool)

(assert start!118130)

(declare-fun b!1382515 () Bool)

(declare-fun res!924216 () Bool)

(declare-fun e!783632 () Bool)

(assert (=> b!1382515 (=> (not res!924216) (not e!783632))))

(declare-fun mask!3034 () (_ BitVec 32))

(declare-datatypes ((array!94410 0))(
  ( (array!94411 (arr!45582 (Array (_ BitVec 32) (_ BitVec 64))) (size!46133 (_ BitVec 32))) )
))
(declare-fun a!2971 () array!94410)

(declare-fun i!1094 () (_ BitVec 32))

(assert (=> b!1382515 (= res!924216 (and (= (size!46133 a!2971) (bvadd #b00000000000000000000000000000001 mask!3034)) (bvsge i!1094 #b00000000000000000000000000000000) (bvslt i!1094 (size!46133 a!2971))))))

(declare-fun b!1382516 () Bool)

(declare-fun res!924218 () Bool)

(assert (=> b!1382516 (=> (not res!924218) (not e!783632))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1382516 (= res!924218 (validKeyInArray!0 (select (arr!45582 a!2971) i!1094)))))

(declare-fun b!1382518 () Bool)

(assert (=> b!1382518 (= e!783632 false)))

(declare-fun lt!608395 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94410 (_ BitVec 32)) Bool)

(assert (=> b!1382518 (= lt!608395 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2971 mask!3034))))

(declare-fun res!924219 () Bool)

(assert (=> start!118130 (=> (not res!924219) (not e!783632))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118130 (= res!924219 (validMask!0 mask!3034))))

(assert (=> start!118130 e!783632))

(assert (=> start!118130 true))

(declare-fun array_inv!34527 (array!94410) Bool)

(assert (=> start!118130 (array_inv!34527 a!2971)))

(declare-fun b!1382517 () Bool)

(declare-fun res!924217 () Bool)

(assert (=> b!1382517 (=> (not res!924217) (not e!783632))))

(declare-datatypes ((List!32296 0))(
  ( (Nil!32293) (Cons!32292 (h!33501 (_ BitVec 64)) (t!46997 List!32296)) )
))
(declare-fun arrayNoDuplicates!0 (array!94410 (_ BitVec 32) List!32296) Bool)

(assert (=> b!1382517 (= res!924217 (arrayNoDuplicates!0 a!2971 #b00000000000000000000000000000000 Nil!32293))))

(assert (= (and start!118130 res!924219) b!1382515))

(assert (= (and b!1382515 res!924216) b!1382516))

(assert (= (and b!1382516 res!924218) b!1382517))

(assert (= (and b!1382517 res!924217) b!1382518))

(declare-fun m!1267707 () Bool)

(assert (=> b!1382516 m!1267707))

(assert (=> b!1382516 m!1267707))

(declare-fun m!1267709 () Bool)

(assert (=> b!1382516 m!1267709))

(declare-fun m!1267711 () Bool)

(assert (=> b!1382518 m!1267711))

(declare-fun m!1267713 () Bool)

(assert (=> start!118130 m!1267713))

(declare-fun m!1267715 () Bool)

(assert (=> start!118130 m!1267715))

(declare-fun m!1267717 () Bool)

(assert (=> b!1382517 m!1267717))

(push 1)

(assert (not b!1382516))

(assert (not start!118130))

(assert (not b!1382517))

(assert (not b!1382518))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

