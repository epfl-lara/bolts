; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122890 () Bool)

(assert start!122890)

(declare-fun b!1424836 () Bool)

(declare-fun res!960381 () Bool)

(declare-fun e!805205 () Bool)

(assert (=> b!1424836 (=> (not res!960381) (not e!805205))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-datatypes ((array!97173 0))(
  ( (array!97174 (arr!46900 (Array (_ BitVec 32) (_ BitVec 64))) (size!47451 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97173)

(declare-fun index!585 () (_ BitVec 32))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(assert (=> b!1424836 (= res!960381 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47451 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47451 a!2831))))))

(declare-fun b!1424837 () Bool)

(declare-fun res!960382 () Bool)

(assert (=> b!1424837 (=> (not res!960382) (not e!805205))))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97173 (_ BitVec 32)) Bool)

(assert (=> b!1424837 (= res!960382 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1424838 () Bool)

(declare-fun res!960379 () Bool)

(assert (=> b!1424838 (=> (not res!960379) (not e!805205))))

(declare-datatypes ((List!33590 0))(
  ( (Nil!33587) (Cons!33586 (h!34888 (_ BitVec 64)) (t!48291 List!33590)) )
))
(declare-fun arrayNoDuplicates!0 (array!97173 (_ BitVec 32) List!33590) Bool)

(assert (=> b!1424838 (= res!960379 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33587))))

(declare-fun res!960383 () Bool)

(assert (=> start!122890 (=> (not res!960383) (not e!805205))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122890 (= res!960383 (validMask!0 mask!2608))))

(assert (=> start!122890 e!805205))

(assert (=> start!122890 true))

(declare-fun array_inv!35845 (array!97173) Bool)

(assert (=> start!122890 (array_inv!35845 a!2831)))

(declare-fun b!1424839 () Bool)

(assert (=> b!1424839 (= e!805205 false)))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun lt!627685 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1424839 (= lt!627685 (toIndex!0 (select (arr!46900 a!2831) j!81) mask!2608))))

(declare-fun b!1424840 () Bool)

(declare-fun res!960384 () Bool)

(assert (=> b!1424840 (=> (not res!960384) (not e!805205))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1424840 (= res!960384 (validKeyInArray!0 (select (arr!46900 a!2831) j!81)))))

(declare-fun b!1424841 () Bool)

(declare-fun res!960380 () Bool)

(assert (=> b!1424841 (=> (not res!960380) (not e!805205))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1424841 (= res!960380 (and (= (size!47451 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47451 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47451 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1424842 () Bool)

(declare-fun res!960378 () Bool)

(assert (=> b!1424842 (=> (not res!960378) (not e!805205))))

(assert (=> b!1424842 (= res!960378 (validKeyInArray!0 (select (arr!46900 a!2831) i!982)))))

(assert (= (and start!122890 res!960383) b!1424841))

(assert (= (and b!1424841 res!960380) b!1424842))

(assert (= (and b!1424842 res!960378) b!1424840))

(assert (= (and b!1424840 res!960384) b!1424837))

(assert (= (and b!1424837 res!960382) b!1424838))

(assert (= (and b!1424838 res!960379) b!1424836))

(assert (= (and b!1424836 res!960381) b!1424839))

(declare-fun m!1315463 () Bool)

(assert (=> b!1424838 m!1315463))

(declare-fun m!1315465 () Bool)

(assert (=> b!1424837 m!1315465))

(declare-fun m!1315467 () Bool)

(assert (=> b!1424842 m!1315467))

(assert (=> b!1424842 m!1315467))

(declare-fun m!1315469 () Bool)

(assert (=> b!1424842 m!1315469))

(declare-fun m!1315471 () Bool)

(assert (=> start!122890 m!1315471))

(declare-fun m!1315473 () Bool)

(assert (=> start!122890 m!1315473))

(declare-fun m!1315475 () Bool)

(assert (=> b!1424839 m!1315475))

(assert (=> b!1424839 m!1315475))

(declare-fun m!1315477 () Bool)

(assert (=> b!1424839 m!1315477))

(assert (=> b!1424840 m!1315475))

(assert (=> b!1424840 m!1315475))

(declare-fun m!1315479 () Bool)

(assert (=> b!1424840 m!1315479))

(push 1)

(assert (not b!1424842))

(assert (not b!1424838))

(assert (not b!1424839))

(assert (not start!122890))

(assert (not b!1424840))

(assert (not b!1424837))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

