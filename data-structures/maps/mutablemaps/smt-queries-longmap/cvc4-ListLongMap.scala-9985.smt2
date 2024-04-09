; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117962 () Bool)

(assert start!117962)

(declare-fun b!1381517 () Bool)

(declare-fun res!923256 () Bool)

(declare-fun e!783155 () Bool)

(assert (=> b!1381517 (=> (not res!923256) (not e!783155))))

(declare-datatypes ((array!94269 0))(
  ( (array!94270 (arr!45513 (Array (_ BitVec 32) (_ BitVec 64))) (size!46064 (_ BitVec 32))) )
))
(declare-fun a!2971 () array!94269)

(declare-fun i!1094 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1381517 (= res!923256 (validKeyInArray!0 (select (arr!45513 a!2971) i!1094)))))

(declare-fun res!923253 () Bool)

(assert (=> start!117962 (=> (not res!923253) (not e!783155))))

(declare-fun mask!3034 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!117962 (= res!923253 (validMask!0 mask!3034))))

(assert (=> start!117962 e!783155))

(assert (=> start!117962 true))

(declare-fun array_inv!34458 (array!94269) Bool)

(assert (=> start!117962 (array_inv!34458 a!2971)))

(declare-fun b!1381516 () Bool)

(declare-fun res!923255 () Bool)

(assert (=> b!1381516 (=> (not res!923255) (not e!783155))))

(assert (=> b!1381516 (= res!923255 (and (= (size!46064 a!2971) (bvadd #b00000000000000000000000000000001 mask!3034)) (bvsge i!1094 #b00000000000000000000000000000000) (bvslt i!1094 (size!46064 a!2971))))))

(declare-fun b!1381518 () Bool)

(declare-fun res!923254 () Bool)

(assert (=> b!1381518 (=> (not res!923254) (not e!783155))))

(declare-datatypes ((List!32227 0))(
  ( (Nil!32224) (Cons!32223 (h!33432 (_ BitVec 64)) (t!46928 List!32227)) )
))
(declare-fun arrayNoDuplicates!0 (array!94269 (_ BitVec 32) List!32227) Bool)

(assert (=> b!1381518 (= res!923254 (arrayNoDuplicates!0 a!2971 #b00000000000000000000000000000000 Nil!32224))))

(declare-fun b!1381519 () Bool)

(assert (=> b!1381519 (= e!783155 false)))

(declare-fun lt!608179 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94269 (_ BitVec 32)) Bool)

(assert (=> b!1381519 (= lt!608179 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2971 mask!3034))))

(assert (= (and start!117962 res!923253) b!1381516))

(assert (= (and b!1381516 res!923255) b!1381517))

(assert (= (and b!1381517 res!923256) b!1381518))

(assert (= (and b!1381518 res!923254) b!1381519))

(declare-fun m!1266759 () Bool)

(assert (=> b!1381517 m!1266759))

(assert (=> b!1381517 m!1266759))

(declare-fun m!1266761 () Bool)

(assert (=> b!1381517 m!1266761))

(declare-fun m!1266763 () Bool)

(assert (=> start!117962 m!1266763))

(declare-fun m!1266765 () Bool)

(assert (=> start!117962 m!1266765))

(declare-fun m!1266767 () Bool)

(assert (=> b!1381518 m!1266767))

(declare-fun m!1266769 () Bool)

(assert (=> b!1381519 m!1266769))

(push 1)

(assert (not b!1381517))

(assert (not start!117962))

(assert (not b!1381518))

(assert (not b!1381519))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

