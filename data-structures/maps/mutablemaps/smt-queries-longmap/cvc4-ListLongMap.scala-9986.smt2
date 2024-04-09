; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117968 () Bool)

(assert start!117968)

(declare-fun b!1381554 () Bool)

(declare-fun res!923291 () Bool)

(declare-fun e!783172 () Bool)

(assert (=> b!1381554 (=> (not res!923291) (not e!783172))))

(declare-datatypes ((array!94275 0))(
  ( (array!94276 (arr!45516 (Array (_ BitVec 32) (_ BitVec 64))) (size!46067 (_ BitVec 32))) )
))
(declare-fun a!2971 () array!94275)

(declare-datatypes ((List!32230 0))(
  ( (Nil!32227) (Cons!32226 (h!33435 (_ BitVec 64)) (t!46931 List!32230)) )
))
(declare-fun arrayNoDuplicates!0 (array!94275 (_ BitVec 32) List!32230) Bool)

(assert (=> b!1381554 (= res!923291 (arrayNoDuplicates!0 a!2971 #b00000000000000000000000000000000 Nil!32227))))

(declare-fun b!1381555 () Bool)

(assert (=> b!1381555 (= e!783172 false)))

(declare-fun lt!608188 () Bool)

(declare-fun mask!3034 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94275 (_ BitVec 32)) Bool)

(assert (=> b!1381555 (= lt!608188 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2971 mask!3034))))

(declare-fun b!1381553 () Bool)

(declare-fun res!923289 () Bool)

(assert (=> b!1381553 (=> (not res!923289) (not e!783172))))

(declare-fun i!1094 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1381553 (= res!923289 (validKeyInArray!0 (select (arr!45516 a!2971) i!1094)))))

(declare-fun b!1381552 () Bool)

(declare-fun res!923290 () Bool)

(assert (=> b!1381552 (=> (not res!923290) (not e!783172))))

(assert (=> b!1381552 (= res!923290 (and (= (size!46067 a!2971) (bvadd #b00000000000000000000000000000001 mask!3034)) (bvsge i!1094 #b00000000000000000000000000000000) (bvslt i!1094 (size!46067 a!2971))))))

(declare-fun res!923292 () Bool)

(assert (=> start!117968 (=> (not res!923292) (not e!783172))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!117968 (= res!923292 (validMask!0 mask!3034))))

(assert (=> start!117968 e!783172))

(assert (=> start!117968 true))

(declare-fun array_inv!34461 (array!94275) Bool)

(assert (=> start!117968 (array_inv!34461 a!2971)))

(assert (= (and start!117968 res!923292) b!1381552))

(assert (= (and b!1381552 res!923290) b!1381553))

(assert (= (and b!1381553 res!923289) b!1381554))

(assert (= (and b!1381554 res!923291) b!1381555))

(declare-fun m!1266795 () Bool)

(assert (=> b!1381554 m!1266795))

(declare-fun m!1266797 () Bool)

(assert (=> b!1381555 m!1266797))

(declare-fun m!1266799 () Bool)

(assert (=> b!1381553 m!1266799))

(assert (=> b!1381553 m!1266799))

(declare-fun m!1266801 () Bool)

(assert (=> b!1381553 m!1266801))

(declare-fun m!1266803 () Bool)

(assert (=> start!117968 m!1266803))

(declare-fun m!1266805 () Bool)

(assert (=> start!117968 m!1266805))

(push 1)

(assert (not b!1381553))

(assert (not b!1381555))

(assert (not start!117968))

(assert (not b!1381554))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

