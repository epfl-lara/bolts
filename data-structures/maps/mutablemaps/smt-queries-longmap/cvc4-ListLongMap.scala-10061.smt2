; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118544 () Bool)

(assert start!118544)

(declare-fun b!1385530 () Bool)

(declare-fun e!785059 () Bool)

(assert (=> b!1385530 (= e!785059 false)))

(declare-fun lt!609226 () Bool)

(declare-datatypes ((array!94738 0))(
  ( (array!94739 (arr!45741 (Array (_ BitVec 32) (_ BitVec 64))) (size!46292 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94738)

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94738 (_ BitVec 32)) Bool)

(assert (=> b!1385530 (= lt!609226 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1385527 () Bool)

(declare-fun res!926887 () Bool)

(assert (=> b!1385527 (=> (not res!926887) (not e!785059))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun startIndex!16 () (_ BitVec 32))

(assert (=> b!1385527 (= res!926887 (and (= (size!46292 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46292 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46292 a!2938))))))

(declare-fun b!1385529 () Bool)

(declare-fun res!926886 () Bool)

(assert (=> b!1385529 (=> (not res!926886) (not e!785059))))

(declare-datatypes ((List!32449 0))(
  ( (Nil!32446) (Cons!32445 (h!33654 (_ BitVec 64)) (t!47150 List!32449)) )
))
(declare-fun arrayNoDuplicates!0 (array!94738 (_ BitVec 32) List!32449) Bool)

(assert (=> b!1385529 (= res!926886 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32446))))

(declare-fun b!1385528 () Bool)

(declare-fun res!926889 () Bool)

(assert (=> b!1385528 (=> (not res!926889) (not e!785059))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1385528 (= res!926889 (validKeyInArray!0 (select (arr!45741 a!2938) i!1065)))))

(declare-fun res!926888 () Bool)

(assert (=> start!118544 (=> (not res!926888) (not e!785059))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118544 (= res!926888 (validMask!0 mask!2987))))

(assert (=> start!118544 e!785059))

(assert (=> start!118544 true))

(declare-fun array_inv!34686 (array!94738) Bool)

(assert (=> start!118544 (array_inv!34686 a!2938)))

(assert (= (and start!118544 res!926888) b!1385527))

(assert (= (and b!1385527 res!926887) b!1385528))

(assert (= (and b!1385528 res!926889) b!1385529))

(assert (= (and b!1385529 res!926886) b!1385530))

(declare-fun m!1270877 () Bool)

(assert (=> b!1385530 m!1270877))

(declare-fun m!1270879 () Bool)

(assert (=> b!1385529 m!1270879))

(declare-fun m!1270881 () Bool)

(assert (=> b!1385528 m!1270881))

(assert (=> b!1385528 m!1270881))

(declare-fun m!1270883 () Bool)

(assert (=> b!1385528 m!1270883))

(declare-fun m!1270885 () Bool)

(assert (=> start!118544 m!1270885))

(declare-fun m!1270887 () Bool)

(assert (=> start!118544 m!1270887))

(push 1)

(assert (not b!1385529))

(assert (not start!118544))

(assert (not b!1385530))

(assert (not b!1385528))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

