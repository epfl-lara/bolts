; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!122370 () Bool)

(assert start!122370)

(declare-fun b!1418048 () Bool)

(declare-fun res!953837 () Bool)

(declare-fun e!802546 () Bool)

(assert (=> b!1418048 (=> (not res!953837) (not e!802546))))

(declare-datatypes ((array!96791 0))(
  ( (array!96792 (arr!46715 (Array (_ BitVec 32) (_ BitVec 64))) (size!47266 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96791)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96791 (_ BitVec 32)) Bool)

(assert (=> b!1418048 (= res!953837 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun res!953833 () Bool)

(assert (=> start!122370 (=> (not res!953833) (not e!802546))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122370 (= res!953833 (validMask!0 mask!2608))))

(assert (=> start!122370 e!802546))

(assert (=> start!122370 true))

(declare-fun array_inv!35660 (array!96791) Bool)

(assert (=> start!122370 (array_inv!35660 a!2831)))

(declare-fun b!1418049 () Bool)

(declare-fun res!953836 () Bool)

(assert (=> b!1418049 (=> (not res!953836) (not e!802546))))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1418049 (= res!953836 (validKeyInArray!0 (select (arr!46715 a!2831) j!81)))))

(declare-fun b!1418050 () Bool)

(declare-fun res!953835 () Bool)

(assert (=> b!1418050 (=> (not res!953835) (not e!802546))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1418050 (= res!953835 (and (= (size!47266 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47266 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47266 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1418051 () Bool)

(declare-fun res!953834 () Bool)

(assert (=> b!1418051 (=> (not res!953834) (not e!802546))))

(assert (=> b!1418051 (= res!953834 (validKeyInArray!0 (select (arr!46715 a!2831) i!982)))))

(declare-fun b!1418052 () Bool)

(declare-fun res!953838 () Bool)

(assert (=> b!1418052 (=> (not res!953838) (not e!802546))))

(declare-datatypes ((List!33405 0))(
  ( (Nil!33402) (Cons!33401 (h!34694 (_ BitVec 64)) (t!48106 List!33405)) )
))
(declare-fun arrayNoDuplicates!0 (array!96791 (_ BitVec 32) List!33405) Bool)

(assert (=> b!1418052 (= res!953838 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33402))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun b!1418053 () Bool)

(assert (=> b!1418053 (= e!802546 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47266 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47266 a!2831)) (bvslt mask!2608 #b00000000000000000000000000000000)))))

(assert (= (and start!122370 res!953833) b!1418050))

(assert (= (and b!1418050 res!953835) b!1418051))

(assert (= (and b!1418051 res!953834) b!1418049))

(assert (= (and b!1418049 res!953836) b!1418048))

(assert (= (and b!1418048 res!953837) b!1418052))

(assert (= (and b!1418052 res!953838) b!1418053))

(declare-fun m!1308855 () Bool)

(assert (=> b!1418049 m!1308855))

(assert (=> b!1418049 m!1308855))

(declare-fun m!1308857 () Bool)

(assert (=> b!1418049 m!1308857))

(declare-fun m!1308859 () Bool)

(assert (=> b!1418051 m!1308859))

(assert (=> b!1418051 m!1308859))

(declare-fun m!1308861 () Bool)

(assert (=> b!1418051 m!1308861))

(declare-fun m!1308863 () Bool)

(assert (=> b!1418048 m!1308863))

(declare-fun m!1308865 () Bool)

(assert (=> b!1418052 m!1308865))

(declare-fun m!1308867 () Bool)

(assert (=> start!122370 m!1308867))

(declare-fun m!1308869 () Bool)

(assert (=> start!122370 m!1308869))

(check-sat (not b!1418048) (not b!1418051) (not b!1418049) (not start!122370) (not b!1418052))
(check-sat)
