; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130748 () Bool)

(assert start!130748)

(declare-fun b!1532937 () Bool)

(declare-fun res!1050161 () Bool)

(declare-fun e!854080 () Bool)

(assert (=> b!1532937 (=> (not res!1050161) (not e!854080))))

(declare-datatypes ((array!101773 0))(
  ( (array!101774 (arr!49098 (Array (_ BitVec 32) (_ BitVec 64))) (size!49649 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101773)

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101773 (_ BitVec 32)) Bool)

(assert (=> b!1532937 (= res!1050161 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1532938 () Bool)

(declare-fun res!1050162 () Bool)

(assert (=> b!1532938 (=> (not res!1050162) (not e!854080))))

(declare-fun i!951 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1532938 (= res!1050162 (validKeyInArray!0 (select (arr!49098 a!2792) i!951)))))

(declare-fun b!1532939 () Bool)

(declare-fun res!1050163 () Bool)

(assert (=> b!1532939 (=> (not res!1050163) (not e!854080))))

(declare-fun j!64 () (_ BitVec 32))

(assert (=> b!1532939 (= res!1050163 (and (= (size!49649 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49649 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49649 a!2792)) (not (= i!951 j!64))))))

(declare-fun res!1050164 () Bool)

(assert (=> start!130748 (=> (not res!1050164) (not e!854080))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130748 (= res!1050164 (validMask!0 mask!2480))))

(assert (=> start!130748 e!854080))

(assert (=> start!130748 true))

(declare-fun array_inv!38043 (array!101773) Bool)

(assert (=> start!130748 (array_inv!38043 a!2792)))

(declare-fun b!1532940 () Bool)

(assert (=> b!1532940 (= e!854080 false)))

(declare-fun lt!663688 () Bool)

(declare-datatypes ((List!35752 0))(
  ( (Nil!35749) (Cons!35748 (h!37194 (_ BitVec 64)) (t!50453 List!35752)) )
))
(declare-fun arrayNoDuplicates!0 (array!101773 (_ BitVec 32) List!35752) Bool)

(assert (=> b!1532940 (= lt!663688 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35749))))

(declare-fun b!1532941 () Bool)

(declare-fun res!1050165 () Bool)

(assert (=> b!1532941 (=> (not res!1050165) (not e!854080))))

(assert (=> b!1532941 (= res!1050165 (validKeyInArray!0 (select (arr!49098 a!2792) j!64)))))

(assert (= (and start!130748 res!1050164) b!1532939))

(assert (= (and b!1532939 res!1050163) b!1532938))

(assert (= (and b!1532938 res!1050162) b!1532941))

(assert (= (and b!1532941 res!1050165) b!1532937))

(assert (= (and b!1532937 res!1050161) b!1532940))

(declare-fun m!1415699 () Bool)

(assert (=> b!1532941 m!1415699))

(assert (=> b!1532941 m!1415699))

(declare-fun m!1415701 () Bool)

(assert (=> b!1532941 m!1415701))

(declare-fun m!1415703 () Bool)

(assert (=> b!1532937 m!1415703))

(declare-fun m!1415705 () Bool)

(assert (=> b!1532938 m!1415705))

(assert (=> b!1532938 m!1415705))

(declare-fun m!1415707 () Bool)

(assert (=> b!1532938 m!1415707))

(declare-fun m!1415709 () Bool)

(assert (=> start!130748 m!1415709))

(declare-fun m!1415711 () Bool)

(assert (=> start!130748 m!1415711))

(declare-fun m!1415713 () Bool)

(assert (=> b!1532940 m!1415713))

(push 1)

(assert (not b!1532940))

(assert (not b!1532938))

(assert (not b!1532937))

(assert (not start!130748))

(assert (not b!1532941))

(check-sat)

(pop 1)

(push 1)

(check-sat)

