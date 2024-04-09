; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117952 () Bool)

(assert start!117952)

(declare-fun b!1381457 () Bool)

(declare-fun res!923194 () Bool)

(declare-fun e!783125 () Bool)

(assert (=> b!1381457 (=> (not res!923194) (not e!783125))))

(declare-datatypes ((array!94259 0))(
  ( (array!94260 (arr!45508 (Array (_ BitVec 32) (_ BitVec 64))) (size!46059 (_ BitVec 32))) )
))
(declare-fun a!2971 () array!94259)

(declare-fun i!1094 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1381457 (= res!923194 (validKeyInArray!0 (select (arr!45508 a!2971) i!1094)))))

(declare-fun b!1381456 () Bool)

(declare-fun res!923195 () Bool)

(assert (=> b!1381456 (=> (not res!923195) (not e!783125))))

(declare-fun mask!3034 () (_ BitVec 32))

(assert (=> b!1381456 (= res!923195 (and (= (size!46059 a!2971) (bvadd #b00000000000000000000000000000001 mask!3034)) (bvsge i!1094 #b00000000000000000000000000000000) (bvslt i!1094 (size!46059 a!2971))))))

(declare-fun res!923193 () Bool)

(assert (=> start!117952 (=> (not res!923193) (not e!783125))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!117952 (= res!923193 (validMask!0 mask!3034))))

(assert (=> start!117952 e!783125))

(assert (=> start!117952 true))

(declare-fun array_inv!34453 (array!94259) Bool)

(assert (=> start!117952 (array_inv!34453 a!2971)))

(declare-fun b!1381458 () Bool)

(declare-fun res!923196 () Bool)

(assert (=> b!1381458 (=> (not res!923196) (not e!783125))))

(declare-datatypes ((List!32222 0))(
  ( (Nil!32219) (Cons!32218 (h!33427 (_ BitVec 64)) (t!46923 List!32222)) )
))
(declare-fun arrayNoDuplicates!0 (array!94259 (_ BitVec 32) List!32222) Bool)

(assert (=> b!1381458 (= res!923196 (arrayNoDuplicates!0 a!2971 #b00000000000000000000000000000000 Nil!32219))))

(declare-fun b!1381459 () Bool)

(assert (=> b!1381459 (= e!783125 false)))

(declare-fun lt!608164 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94259 (_ BitVec 32)) Bool)

(assert (=> b!1381459 (= lt!608164 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2971 mask!3034))))

(assert (= (and start!117952 res!923193) b!1381456))

(assert (= (and b!1381456 res!923195) b!1381457))

(assert (= (and b!1381457 res!923194) b!1381458))

(assert (= (and b!1381458 res!923196) b!1381459))

(declare-fun m!1266699 () Bool)

(assert (=> b!1381457 m!1266699))

(assert (=> b!1381457 m!1266699))

(declare-fun m!1266701 () Bool)

(assert (=> b!1381457 m!1266701))

(declare-fun m!1266703 () Bool)

(assert (=> start!117952 m!1266703))

(declare-fun m!1266705 () Bool)

(assert (=> start!117952 m!1266705))

(declare-fun m!1266707 () Bool)

(assert (=> b!1381458 m!1266707))

(declare-fun m!1266709 () Bool)

(assert (=> b!1381459 m!1266709))

(push 1)

(assert (not start!117952))

(assert (not b!1381458))

(assert (not b!1381459))

(assert (not b!1381457))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

