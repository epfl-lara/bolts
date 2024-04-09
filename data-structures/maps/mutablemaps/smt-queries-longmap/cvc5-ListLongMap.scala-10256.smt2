; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120628 () Bool)

(assert start!120628)

(declare-fun b!1403993 () Bool)

(declare-fun res!942614 () Bool)

(declare-fun e!794902 () Bool)

(assert (=> b!1403993 (=> (not res!942614) (not e!794902))))

(declare-datatypes ((array!95955 0))(
  ( (array!95956 (arr!46324 (Array (_ BitVec 32) (_ BitVec 64))) (size!46875 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95955)

(declare-datatypes ((List!33023 0))(
  ( (Nil!33020) (Cons!33019 (h!34267 (_ BitVec 64)) (t!47724 List!33023)) )
))
(declare-fun arrayNoDuplicates!0 (array!95955 (_ BitVec 32) List!33023) Bool)

(assert (=> b!1403993 (= res!942614 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33020))))

(declare-fun b!1403994 () Bool)

(assert (=> b!1403994 (= e!794902 false)))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun lt!618523 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1403994 (= lt!618523 (toIndex!0 (select (arr!46324 a!2901) j!112) mask!2840))))

(declare-fun b!1403995 () Bool)

(declare-fun res!942615 () Bool)

(assert (=> b!1403995 (=> (not res!942615) (not e!794902))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95955 (_ BitVec 32)) Bool)

(assert (=> b!1403995 (= res!942615 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1403996 () Bool)

(declare-fun res!942618 () Bool)

(assert (=> b!1403996 (=> (not res!942618) (not e!794902))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1403996 (= res!942618 (validKeyInArray!0 (select (arr!46324 a!2901) i!1037)))))

(declare-fun b!1403997 () Bool)

(declare-fun res!942617 () Bool)

(assert (=> b!1403997 (=> (not res!942617) (not e!794902))))

(assert (=> b!1403997 (= res!942617 (validKeyInArray!0 (select (arr!46324 a!2901) j!112)))))

(declare-fun res!942613 () Bool)

(assert (=> start!120628 (=> (not res!942613) (not e!794902))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120628 (= res!942613 (validMask!0 mask!2840))))

(assert (=> start!120628 e!794902))

(assert (=> start!120628 true))

(declare-fun array_inv!35269 (array!95955) Bool)

(assert (=> start!120628 (array_inv!35269 a!2901)))

(declare-fun b!1403998 () Bool)

(declare-fun res!942616 () Bool)

(assert (=> b!1403998 (=> (not res!942616) (not e!794902))))

(assert (=> b!1403998 (= res!942616 (and (= (size!46875 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46875 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46875 a!2901)) (not (= i!1037 j!112))))))

(assert (= (and start!120628 res!942613) b!1403998))

(assert (= (and b!1403998 res!942616) b!1403996))

(assert (= (and b!1403996 res!942618) b!1403997))

(assert (= (and b!1403997 res!942617) b!1403995))

(assert (= (and b!1403995 res!942615) b!1403993))

(assert (= (and b!1403993 res!942614) b!1403994))

(declare-fun m!1292855 () Bool)

(assert (=> b!1403994 m!1292855))

(assert (=> b!1403994 m!1292855))

(declare-fun m!1292857 () Bool)

(assert (=> b!1403994 m!1292857))

(declare-fun m!1292859 () Bool)

(assert (=> start!120628 m!1292859))

(declare-fun m!1292861 () Bool)

(assert (=> start!120628 m!1292861))

(declare-fun m!1292863 () Bool)

(assert (=> b!1403996 m!1292863))

(assert (=> b!1403996 m!1292863))

(declare-fun m!1292865 () Bool)

(assert (=> b!1403996 m!1292865))

(declare-fun m!1292867 () Bool)

(assert (=> b!1403993 m!1292867))

(assert (=> b!1403997 m!1292855))

(assert (=> b!1403997 m!1292855))

(declare-fun m!1292869 () Bool)

(assert (=> b!1403997 m!1292869))

(declare-fun m!1292871 () Bool)

(assert (=> b!1403995 m!1292871))

(push 1)

(assert (not b!1403994))

(assert (not b!1403995))

(assert (not b!1403993))

(assert (not b!1403996))

(assert (not b!1403997))

(assert (not start!120628))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

