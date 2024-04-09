; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117992 () Bool)

(assert start!117992)

(declare-fun b!1381698 () Bool)

(declare-fun res!923435 () Bool)

(declare-fun e!783245 () Bool)

(assert (=> b!1381698 (=> (not res!923435) (not e!783245))))

(declare-datatypes ((array!94299 0))(
  ( (array!94300 (arr!45528 (Array (_ BitVec 32) (_ BitVec 64))) (size!46079 (_ BitVec 32))) )
))
(declare-fun a!2971 () array!94299)

(declare-datatypes ((List!32242 0))(
  ( (Nil!32239) (Cons!32238 (h!33447 (_ BitVec 64)) (t!46943 List!32242)) )
))
(declare-fun arrayNoDuplicates!0 (array!94299 (_ BitVec 32) List!32242) Bool)

(assert (=> b!1381698 (= res!923435 (arrayNoDuplicates!0 a!2971 #b00000000000000000000000000000000 Nil!32239))))

(declare-fun b!1381697 () Bool)

(declare-fun res!923434 () Bool)

(assert (=> b!1381697 (=> (not res!923434) (not e!783245))))

(declare-fun i!1094 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1381697 (= res!923434 (validKeyInArray!0 (select (arr!45528 a!2971) i!1094)))))

(declare-fun res!923433 () Bool)

(assert (=> start!117992 (=> (not res!923433) (not e!783245))))

(declare-fun mask!3034 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!117992 (= res!923433 (validMask!0 mask!3034))))

(assert (=> start!117992 e!783245))

(assert (=> start!117992 true))

(declare-fun array_inv!34473 (array!94299) Bool)

(assert (=> start!117992 (array_inv!34473 a!2971)))

(declare-fun b!1381696 () Bool)

(declare-fun res!923436 () Bool)

(assert (=> b!1381696 (=> (not res!923436) (not e!783245))))

(assert (=> b!1381696 (= res!923436 (and (= (size!46079 a!2971) (bvadd #b00000000000000000000000000000001 mask!3034)) (bvsge i!1094 #b00000000000000000000000000000000) (bvslt i!1094 (size!46079 a!2971))))))

(declare-fun b!1381699 () Bool)

(assert (=> b!1381699 (= e!783245 false)))

(declare-fun lt!608224 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94299 (_ BitVec 32)) Bool)

(assert (=> b!1381699 (= lt!608224 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2971 mask!3034))))

(assert (= (and start!117992 res!923433) b!1381696))

(assert (= (and b!1381696 res!923436) b!1381697))

(assert (= (and b!1381697 res!923434) b!1381698))

(assert (= (and b!1381698 res!923435) b!1381699))

(declare-fun m!1266939 () Bool)

(assert (=> b!1381698 m!1266939))

(declare-fun m!1266941 () Bool)

(assert (=> b!1381697 m!1266941))

(assert (=> b!1381697 m!1266941))

(declare-fun m!1266943 () Bool)

(assert (=> b!1381697 m!1266943))

(declare-fun m!1266945 () Bool)

(assert (=> start!117992 m!1266945))

(declare-fun m!1266947 () Bool)

(assert (=> start!117992 m!1266947))

(declare-fun m!1266949 () Bool)

(assert (=> b!1381699 m!1266949))

(push 1)

(assert (not start!117992))

(assert (not b!1381698))

(assert (not b!1381699))

(assert (not b!1381697))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

