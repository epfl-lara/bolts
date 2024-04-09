; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130750 () Bool)

(assert start!130750)

(declare-fun b!1532952 () Bool)

(declare-fun res!1050179 () Bool)

(declare-fun e!854087 () Bool)

(assert (=> b!1532952 (=> (not res!1050179) (not e!854087))))

(declare-datatypes ((array!101775 0))(
  ( (array!101776 (arr!49099 (Array (_ BitVec 32) (_ BitVec 64))) (size!49650 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101775)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1532952 (= res!1050179 (and (= (size!49650 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49650 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49650 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1532953 () Bool)

(declare-fun res!1050176 () Bool)

(assert (=> b!1532953 (=> (not res!1050176) (not e!854087))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101775 (_ BitVec 32)) Bool)

(assert (=> b!1532953 (= res!1050176 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1532954 () Bool)

(declare-fun res!1050177 () Bool)

(assert (=> b!1532954 (=> (not res!1050177) (not e!854087))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1532954 (= res!1050177 (validKeyInArray!0 (select (arr!49099 a!2792) i!951)))))

(declare-fun b!1532955 () Bool)

(assert (=> b!1532955 (= e!854087 false)))

(declare-fun lt!663691 () Bool)

(declare-datatypes ((List!35753 0))(
  ( (Nil!35750) (Cons!35749 (h!37195 (_ BitVec 64)) (t!50454 List!35753)) )
))
(declare-fun arrayNoDuplicates!0 (array!101775 (_ BitVec 32) List!35753) Bool)

(assert (=> b!1532955 (= lt!663691 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35750))))

(declare-fun b!1532956 () Bool)

(declare-fun res!1050180 () Bool)

(assert (=> b!1532956 (=> (not res!1050180) (not e!854087))))

(assert (=> b!1532956 (= res!1050180 (validKeyInArray!0 (select (arr!49099 a!2792) j!64)))))

(declare-fun res!1050178 () Bool)

(assert (=> start!130750 (=> (not res!1050178) (not e!854087))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130750 (= res!1050178 (validMask!0 mask!2480))))

(assert (=> start!130750 e!854087))

(assert (=> start!130750 true))

(declare-fun array_inv!38044 (array!101775) Bool)

(assert (=> start!130750 (array_inv!38044 a!2792)))

(assert (= (and start!130750 res!1050178) b!1532952))

(assert (= (and b!1532952 res!1050179) b!1532954))

(assert (= (and b!1532954 res!1050177) b!1532956))

(assert (= (and b!1532956 res!1050180) b!1532953))

(assert (= (and b!1532953 res!1050176) b!1532955))

(declare-fun m!1415715 () Bool)

(assert (=> start!130750 m!1415715))

(declare-fun m!1415717 () Bool)

(assert (=> start!130750 m!1415717))

(declare-fun m!1415719 () Bool)

(assert (=> b!1532956 m!1415719))

(assert (=> b!1532956 m!1415719))

(declare-fun m!1415721 () Bool)

(assert (=> b!1532956 m!1415721))

(declare-fun m!1415723 () Bool)

(assert (=> b!1532954 m!1415723))

(assert (=> b!1532954 m!1415723))

(declare-fun m!1415725 () Bool)

(assert (=> b!1532954 m!1415725))

(declare-fun m!1415727 () Bool)

(assert (=> b!1532953 m!1415727))

(declare-fun m!1415729 () Bool)

(assert (=> b!1532955 m!1415729))

(push 1)

(assert (not b!1532953))

(assert (not b!1532955))

(assert (not b!1532956))

(assert (not start!130750))

(assert (not b!1532954))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

