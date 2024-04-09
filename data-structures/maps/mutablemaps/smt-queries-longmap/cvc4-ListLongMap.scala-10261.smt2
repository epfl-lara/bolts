; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120662 () Bool)

(assert start!120662)

(declare-fun res!942924 () Bool)

(declare-fun e!795004 () Bool)

(assert (=> start!120662 (=> (not res!942924) (not e!795004))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120662 (= res!942924 (validMask!0 mask!2840))))

(assert (=> start!120662 e!795004))

(assert (=> start!120662 true))

(declare-datatypes ((array!95989 0))(
  ( (array!95990 (arr!46341 (Array (_ BitVec 32) (_ BitVec 64))) (size!46892 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95989)

(declare-fun array_inv!35286 (array!95989) Bool)

(assert (=> start!120662 (array_inv!35286 a!2901)))

(declare-fun b!1404299 () Bool)

(declare-fun res!942923 () Bool)

(assert (=> b!1404299 (=> (not res!942923) (not e!795004))))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1404299 (= res!942923 (validKeyInArray!0 (select (arr!46341 a!2901) j!112)))))

(declare-fun b!1404300 () Bool)

(declare-fun res!942919 () Bool)

(assert (=> b!1404300 (=> (not res!942919) (not e!795004))))

(declare-datatypes ((List!33040 0))(
  ( (Nil!33037) (Cons!33036 (h!34284 (_ BitVec 64)) (t!47741 List!33040)) )
))
(declare-fun arrayNoDuplicates!0 (array!95989 (_ BitVec 32) List!33040) Bool)

(assert (=> b!1404300 (= res!942919 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33037))))

(declare-fun b!1404301 () Bool)

(declare-fun res!942922 () Bool)

(assert (=> b!1404301 (=> (not res!942922) (not e!795004))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1404301 (= res!942922 (validKeyInArray!0 (select (arr!46341 a!2901) i!1037)))))

(declare-fun b!1404302 () Bool)

(declare-fun res!942920 () Bool)

(assert (=> b!1404302 (=> (not res!942920) (not e!795004))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95989 (_ BitVec 32)) Bool)

(assert (=> b!1404302 (= res!942920 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1404303 () Bool)

(declare-fun res!942921 () Bool)

(assert (=> b!1404303 (=> (not res!942921) (not e!795004))))

(assert (=> b!1404303 (= res!942921 (and (= (size!46892 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46892 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46892 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1404304 () Bool)

(assert (=> b!1404304 (= e!795004 false)))

(declare-datatypes ((SeekEntryResult!10674 0))(
  ( (MissingZero!10674 (index!45072 (_ BitVec 32))) (Found!10674 (index!45073 (_ BitVec 32))) (Intermediate!10674 (undefined!11486 Bool) (index!45074 (_ BitVec 32)) (x!126688 (_ BitVec 32))) (Undefined!10674) (MissingVacant!10674 (index!45075 (_ BitVec 32))) )
))
(declare-fun lt!618574 () SeekEntryResult!10674)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95989 (_ BitVec 32)) SeekEntryResult!10674)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1404304 (= lt!618574 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46341 a!2901) j!112) mask!2840) (select (arr!46341 a!2901) j!112) a!2901 mask!2840))))

(assert (= (and start!120662 res!942924) b!1404303))

(assert (= (and b!1404303 res!942921) b!1404301))

(assert (= (and b!1404301 res!942922) b!1404299))

(assert (= (and b!1404299 res!942923) b!1404302))

(assert (= (and b!1404302 res!942920) b!1404300))

(assert (= (and b!1404300 res!942919) b!1404304))

(declare-fun m!1293189 () Bool)

(assert (=> start!120662 m!1293189))

(declare-fun m!1293191 () Bool)

(assert (=> start!120662 m!1293191))

(declare-fun m!1293193 () Bool)

(assert (=> b!1404299 m!1293193))

(assert (=> b!1404299 m!1293193))

(declare-fun m!1293195 () Bool)

(assert (=> b!1404299 m!1293195))

(declare-fun m!1293197 () Bool)

(assert (=> b!1404301 m!1293197))

(assert (=> b!1404301 m!1293197))

(declare-fun m!1293199 () Bool)

(assert (=> b!1404301 m!1293199))

(declare-fun m!1293201 () Bool)

(assert (=> b!1404302 m!1293201))

(assert (=> b!1404304 m!1293193))

(assert (=> b!1404304 m!1293193))

(declare-fun m!1293203 () Bool)

(assert (=> b!1404304 m!1293203))

(assert (=> b!1404304 m!1293203))

(assert (=> b!1404304 m!1293193))

(declare-fun m!1293205 () Bool)

(assert (=> b!1404304 m!1293205))

(declare-fun m!1293207 () Bool)

(assert (=> b!1404300 m!1293207))

(push 1)

(assert (not b!1404299))

(assert (not b!1404300))

(assert (not b!1404301))

(assert (not b!1404304))

(assert (not b!1404302))

(assert (not start!120662))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

