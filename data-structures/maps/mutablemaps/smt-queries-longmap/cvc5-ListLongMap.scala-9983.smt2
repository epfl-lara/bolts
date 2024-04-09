; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117946 () Bool)

(assert start!117946)

(declare-fun b!1381420 () Bool)

(declare-fun res!923158 () Bool)

(declare-fun e!783107 () Bool)

(assert (=> b!1381420 (=> (not res!923158) (not e!783107))))

(declare-fun mask!3034 () (_ BitVec 32))

(declare-datatypes ((array!94253 0))(
  ( (array!94254 (arr!45505 (Array (_ BitVec 32) (_ BitVec 64))) (size!46056 (_ BitVec 32))) )
))
(declare-fun a!2971 () array!94253)

(declare-fun i!1094 () (_ BitVec 32))

(assert (=> b!1381420 (= res!923158 (and (= (size!46056 a!2971) (bvadd #b00000000000000000000000000000001 mask!3034)) (bvsge i!1094 #b00000000000000000000000000000000) (bvslt i!1094 (size!46056 a!2971))))))

(declare-fun b!1381423 () Bool)

(assert (=> b!1381423 (= e!783107 (bvsgt #b00000000000000000000000000000000 (size!46056 a!2971)))))

(declare-fun b!1381421 () Bool)

(declare-fun res!923157 () Bool)

(assert (=> b!1381421 (=> (not res!923157) (not e!783107))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1381421 (= res!923157 (validKeyInArray!0 (select (arr!45505 a!2971) i!1094)))))

(declare-fun res!923159 () Bool)

(assert (=> start!117946 (=> (not res!923159) (not e!783107))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!117946 (= res!923159 (validMask!0 mask!3034))))

(assert (=> start!117946 e!783107))

(assert (=> start!117946 true))

(declare-fun array_inv!34450 (array!94253) Bool)

(assert (=> start!117946 (array_inv!34450 a!2971)))

(declare-fun b!1381422 () Bool)

(declare-fun res!923160 () Bool)

(assert (=> b!1381422 (=> (not res!923160) (not e!783107))))

(declare-datatypes ((List!32219 0))(
  ( (Nil!32216) (Cons!32215 (h!33424 (_ BitVec 64)) (t!46920 List!32219)) )
))
(declare-fun arrayNoDuplicates!0 (array!94253 (_ BitVec 32) List!32219) Bool)

(assert (=> b!1381422 (= res!923160 (arrayNoDuplicates!0 a!2971 #b00000000000000000000000000000000 Nil!32216))))

(assert (= (and start!117946 res!923159) b!1381420))

(assert (= (and b!1381420 res!923158) b!1381421))

(assert (= (and b!1381421 res!923157) b!1381422))

(assert (= (and b!1381422 res!923160) b!1381423))

(declare-fun m!1266669 () Bool)

(assert (=> b!1381421 m!1266669))

(assert (=> b!1381421 m!1266669))

(declare-fun m!1266671 () Bool)

(assert (=> b!1381421 m!1266671))

(declare-fun m!1266673 () Bool)

(assert (=> start!117946 m!1266673))

(declare-fun m!1266675 () Bool)

(assert (=> start!117946 m!1266675))

(declare-fun m!1266677 () Bool)

(assert (=> b!1381422 m!1266677))

(push 1)

(assert (not b!1381422))

