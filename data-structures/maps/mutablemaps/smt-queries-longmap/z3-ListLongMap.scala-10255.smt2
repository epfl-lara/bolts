; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120624 () Bool)

(assert start!120624)

(declare-fun b!1403961 () Bool)

(declare-fun res!942585 () Bool)

(declare-fun e!794891 () Bool)

(assert (=> b!1403961 (=> (not res!942585) (not e!794891))))

(declare-datatypes ((array!95951 0))(
  ( (array!95952 (arr!46322 (Array (_ BitVec 32) (_ BitVec 64))) (size!46873 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95951)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1403961 (= res!942585 (validKeyInArray!0 (select (arr!46322 a!2901) j!112)))))

(declare-fun b!1403962 () Bool)

(assert (=> b!1403962 (= e!794891 false)))

(declare-fun lt!618517 () Bool)

(declare-datatypes ((List!33021 0))(
  ( (Nil!33018) (Cons!33017 (h!34265 (_ BitVec 64)) (t!47722 List!33021)) )
))
(declare-fun arrayNoDuplicates!0 (array!95951 (_ BitVec 32) List!33021) Bool)

(assert (=> b!1403962 (= lt!618517 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33018))))

(declare-fun b!1403963 () Bool)

(declare-fun res!942582 () Bool)

(assert (=> b!1403963 (=> (not res!942582) (not e!794891))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1403963 (= res!942582 (and (= (size!46873 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46873 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46873 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1403964 () Bool)

(declare-fun res!942584 () Bool)

(assert (=> b!1403964 (=> (not res!942584) (not e!794891))))

(assert (=> b!1403964 (= res!942584 (validKeyInArray!0 (select (arr!46322 a!2901) i!1037)))))

(declare-fun b!1403965 () Bool)

(declare-fun res!942581 () Bool)

(assert (=> b!1403965 (=> (not res!942581) (not e!794891))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95951 (_ BitVec 32)) Bool)

(assert (=> b!1403965 (= res!942581 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun res!942583 () Bool)

(assert (=> start!120624 (=> (not res!942583) (not e!794891))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120624 (= res!942583 (validMask!0 mask!2840))))

(assert (=> start!120624 e!794891))

(assert (=> start!120624 true))

(declare-fun array_inv!35267 (array!95951) Bool)

(assert (=> start!120624 (array_inv!35267 a!2901)))

(assert (= (and start!120624 res!942583) b!1403963))

(assert (= (and b!1403963 res!942582) b!1403964))

(assert (= (and b!1403964 res!942584) b!1403961))

(assert (= (and b!1403961 res!942585) b!1403965))

(assert (= (and b!1403965 res!942581) b!1403962))

(declare-fun m!1292823 () Bool)

(assert (=> start!120624 m!1292823))

(declare-fun m!1292825 () Bool)

(assert (=> start!120624 m!1292825))

(declare-fun m!1292827 () Bool)

(assert (=> b!1403962 m!1292827))

(declare-fun m!1292829 () Bool)

(assert (=> b!1403965 m!1292829))

(declare-fun m!1292831 () Bool)

(assert (=> b!1403961 m!1292831))

(assert (=> b!1403961 m!1292831))

(declare-fun m!1292833 () Bool)

(assert (=> b!1403961 m!1292833))

(declare-fun m!1292835 () Bool)

(assert (=> b!1403964 m!1292835))

(assert (=> b!1403964 m!1292835))

(declare-fun m!1292837 () Bool)

(assert (=> b!1403964 m!1292837))

(check-sat (not start!120624) (not b!1403962) (not b!1403964) (not b!1403961) (not b!1403965))
