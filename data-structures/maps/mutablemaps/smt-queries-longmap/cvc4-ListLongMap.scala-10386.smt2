; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122372 () Bool)

(assert start!122372)

(declare-fun b!1418066 () Bool)

(declare-fun res!953856 () Bool)

(declare-fun e!802553 () Bool)

(assert (=> b!1418066 (=> (not res!953856) (not e!802553))))

(declare-datatypes ((array!96793 0))(
  ( (array!96794 (arr!46716 (Array (_ BitVec 32) (_ BitVec 64))) (size!47267 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96793)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96793 (_ BitVec 32)) Bool)

(assert (=> b!1418066 (= res!953856 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1418067 () Bool)

(declare-fun res!953855 () Bool)

(assert (=> b!1418067 (=> (not res!953855) (not e!802553))))

(declare-datatypes ((List!33406 0))(
  ( (Nil!33403) (Cons!33402 (h!34695 (_ BitVec 64)) (t!48107 List!33406)) )
))
(declare-fun arrayNoDuplicates!0 (array!96793 (_ BitVec 32) List!33406) Bool)

(assert (=> b!1418067 (= res!953855 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33403))))

(declare-fun b!1418068 () Bool)

(declare-fun res!953851 () Bool)

(assert (=> b!1418068 (=> (not res!953851) (not e!802553))))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1418068 (= res!953851 (and (= (size!47267 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47267 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47267 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1418069 () Bool)

(declare-fun res!953852 () Bool)

(assert (=> b!1418069 (=> (not res!953852) (not e!802553))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1418069 (= res!953852 (validKeyInArray!0 (select (arr!46716 a!2831) i!982)))))

(declare-fun res!953854 () Bool)

(assert (=> start!122372 (=> (not res!953854) (not e!802553))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122372 (= res!953854 (validMask!0 mask!2608))))

(assert (=> start!122372 e!802553))

(assert (=> start!122372 true))

(declare-fun array_inv!35661 (array!96793) Bool)

(assert (=> start!122372 (array_inv!35661 a!2831)))

(declare-fun b!1418070 () Bool)

(declare-fun res!953853 () Bool)

(assert (=> b!1418070 (=> (not res!953853) (not e!802553))))

(assert (=> b!1418070 (= res!953853 (validKeyInArray!0 (select (arr!46716 a!2831) j!81)))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun b!1418071 () Bool)

(assert (=> b!1418071 (= e!802553 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47267 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47267 a!2831)) (bvslt mask!2608 #b00000000000000000000000000000000)))))

(assert (= (and start!122372 res!953854) b!1418068))

(assert (= (and b!1418068 res!953851) b!1418069))

(assert (= (and b!1418069 res!953852) b!1418070))

(assert (= (and b!1418070 res!953853) b!1418066))

(assert (= (and b!1418066 res!953856) b!1418067))

(assert (= (and b!1418067 res!953855) b!1418071))

(declare-fun m!1308871 () Bool)

(assert (=> b!1418067 m!1308871))

(declare-fun m!1308873 () Bool)

(assert (=> b!1418066 m!1308873))

(declare-fun m!1308875 () Bool)

(assert (=> b!1418070 m!1308875))

(assert (=> b!1418070 m!1308875))

(declare-fun m!1308877 () Bool)

(assert (=> b!1418070 m!1308877))

(declare-fun m!1308879 () Bool)

(assert (=> start!122372 m!1308879))

(declare-fun m!1308881 () Bool)

(assert (=> start!122372 m!1308881))

(declare-fun m!1308883 () Bool)

(assert (=> b!1418069 m!1308883))

(assert (=> b!1418069 m!1308883))

(declare-fun m!1308885 () Bool)

(assert (=> b!1418069 m!1308885))

(push 1)

(assert (not b!1418067))

(assert (not start!122372))

(assert (not b!1418066))

(assert (not b!1418070))

(assert (not b!1418069))

(check-sat)

(pop 1)

(push 1)

(check-sat)

