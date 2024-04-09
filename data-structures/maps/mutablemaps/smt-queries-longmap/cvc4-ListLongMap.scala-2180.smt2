; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36426 () Bool)

(assert start!36426)

(declare-fun b!364038 () Bool)

(declare-fun res!203349 () Bool)

(declare-fun e!222895 () Bool)

(assert (=> b!364038 (=> (not res!203349) (not e!222895))))

(declare-fun from!3650 () (_ BitVec 32))

(declare-fun i!1472 () (_ BitVec 32))

(declare-datatypes ((array!20668 0))(
  ( (array!20669 (arr!9810 (Array (_ BitVec 32) (_ BitVec 64))) (size!10162 (_ BitVec 32))) )
))
(declare-fun a!4289 () array!20668)

(assert (=> b!364038 (= res!203349 (and (bvslt (size!10162 a!4289) #b01111111111111111111111111111111) (bvsge from!3650 #b00000000000000000000000000000000) (bvsle from!3650 (size!10162 a!4289)) (bvsge i!1472 from!3650)))))

(declare-fun b!364039 () Bool)

(assert (=> b!364039 (= e!222895 false)))

(declare-fun lt!168406 () (_ BitVec 32))

(declare-fun k!2974 () (_ BitVec 64))

(declare-fun arrayCountValidKeys!0 (array!20668 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!364039 (= lt!168406 (arrayCountValidKeys!0 (array!20669 (store (arr!9810 a!4289) i!1472 k!2974) (size!10162 a!4289)) from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-fun lt!168407 () (_ BitVec 32))

(assert (=> b!364039 (= lt!168407 (arrayCountValidKeys!0 a!4289 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-fun res!203347 () Bool)

(assert (=> start!36426 (=> (not res!203347) (not e!222895))))

(assert (=> start!36426 (= res!203347 (and (bvsge i!1472 #b00000000000000000000000000000000) (bvslt i!1472 (size!10162 a!4289))))))

(assert (=> start!36426 e!222895))

(assert (=> start!36426 true))

(declare-fun array_inv!7248 (array!20668) Bool)

(assert (=> start!36426 (array_inv!7248 a!4289)))

(declare-fun b!364036 () Bool)

(declare-fun res!203350 () Bool)

(assert (=> b!364036 (=> (not res!203350) (not e!222895))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!364036 (= res!203350 (not (validKeyInArray!0 (select (arr!9810 a!4289) i!1472))))))

(declare-fun b!364037 () Bool)

(declare-fun res!203348 () Bool)

(assert (=> b!364037 (=> (not res!203348) (not e!222895))))

(assert (=> b!364037 (= res!203348 (validKeyInArray!0 k!2974))))

(assert (= (and start!36426 res!203347) b!364036))

(assert (= (and b!364036 res!203350) b!364037))

(assert (= (and b!364037 res!203348) b!364038))

(assert (= (and b!364038 res!203349) b!364039))

(declare-fun m!361577 () Bool)

(assert (=> b!364039 m!361577))

(declare-fun m!361579 () Bool)

(assert (=> b!364039 m!361579))

(declare-fun m!361581 () Bool)

(assert (=> b!364039 m!361581))

(declare-fun m!361583 () Bool)

(assert (=> start!36426 m!361583))

(declare-fun m!361585 () Bool)

(assert (=> b!364036 m!361585))

(assert (=> b!364036 m!361585))

(declare-fun m!361587 () Bool)

(assert (=> b!364036 m!361587))

(declare-fun m!361589 () Bool)

(assert (=> b!364037 m!361589))

(push 1)

(assert (not start!36426))

(assert (not b!364036))

(assert (not b!364037))

(assert (not b!364039))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

