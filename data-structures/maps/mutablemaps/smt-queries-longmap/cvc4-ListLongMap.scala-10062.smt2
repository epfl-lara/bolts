; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118550 () Bool)

(assert start!118550)

(declare-fun b!1385566 () Bool)

(declare-fun e!785078 () Bool)

(assert (=> b!1385566 (= e!785078 false)))

(declare-fun lt!609235 () Bool)

(declare-datatypes ((array!94744 0))(
  ( (array!94745 (arr!45744 (Array (_ BitVec 32) (_ BitVec 64))) (size!46295 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94744)

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94744 (_ BitVec 32)) Bool)

(assert (=> b!1385566 (= lt!609235 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1385564 () Bool)

(declare-fun res!926924 () Bool)

(assert (=> b!1385564 (=> (not res!926924) (not e!785078))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1385564 (= res!926924 (validKeyInArray!0 (select (arr!45744 a!2938) i!1065)))))

(declare-fun b!1385565 () Bool)

(declare-fun res!926925 () Bool)

(assert (=> b!1385565 (=> (not res!926925) (not e!785078))))

(declare-datatypes ((List!32452 0))(
  ( (Nil!32449) (Cons!32448 (h!33657 (_ BitVec 64)) (t!47153 List!32452)) )
))
(declare-fun arrayNoDuplicates!0 (array!94744 (_ BitVec 32) List!32452) Bool)

(assert (=> b!1385565 (= res!926925 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32449))))

(declare-fun res!926922 () Bool)

(assert (=> start!118550 (=> (not res!926922) (not e!785078))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118550 (= res!926922 (validMask!0 mask!2987))))

(assert (=> start!118550 e!785078))

(assert (=> start!118550 true))

(declare-fun array_inv!34689 (array!94744) Bool)

(assert (=> start!118550 (array_inv!34689 a!2938)))

(declare-fun b!1385563 () Bool)

(declare-fun res!926923 () Bool)

(assert (=> b!1385563 (=> (not res!926923) (not e!785078))))

(declare-fun startIndex!16 () (_ BitVec 32))

(assert (=> b!1385563 (= res!926923 (and (= (size!46295 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46295 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46295 a!2938))))))

(assert (= (and start!118550 res!926922) b!1385563))

(assert (= (and b!1385563 res!926923) b!1385564))

(assert (= (and b!1385564 res!926924) b!1385565))

(assert (= (and b!1385565 res!926925) b!1385566))

(declare-fun m!1270913 () Bool)

(assert (=> b!1385566 m!1270913))

(declare-fun m!1270915 () Bool)

(assert (=> b!1385564 m!1270915))

(assert (=> b!1385564 m!1270915))

(declare-fun m!1270917 () Bool)

(assert (=> b!1385564 m!1270917))

(declare-fun m!1270919 () Bool)

(assert (=> b!1385565 m!1270919))

(declare-fun m!1270921 () Bool)

(assert (=> start!118550 m!1270921))

(declare-fun m!1270923 () Bool)

(assert (=> start!118550 m!1270923))

(push 1)

(assert (not start!118550))

(assert (not b!1385565))

(assert (not b!1385566))

(assert (not b!1385564))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

