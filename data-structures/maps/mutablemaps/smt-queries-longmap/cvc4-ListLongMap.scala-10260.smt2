; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120656 () Bool)

(assert start!120656)

(declare-fun b!1404246 () Bool)

(declare-fun e!794986 () Bool)

(declare-datatypes ((array!95983 0))(
  ( (array!95984 (arr!46338 (Array (_ BitVec 32) (_ BitVec 64))) (size!46889 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95983)

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1404246 (= e!794986 (and (bvsle #b00000000000000000000000000000000 (size!46889 a!2901)) (bvsgt j!112 (size!46889 a!2901))))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10671 0))(
  ( (MissingZero!10671 (index!45060 (_ BitVec 32))) (Found!10671 (index!45061 (_ BitVec 32))) (Intermediate!10671 (undefined!11483 Bool) (index!45062 (_ BitVec 32)) (x!126677 (_ BitVec 32))) (Undefined!10671) (MissingVacant!10671 (index!45063 (_ BitVec 32))) )
))
(declare-fun lt!618565 () SeekEntryResult!10671)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95983 (_ BitVec 32)) SeekEntryResult!10671)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1404246 (= lt!618565 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46338 a!2901) j!112) mask!2840) (select (arr!46338 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1404247 () Bool)

(declare-fun res!942869 () Bool)

(assert (=> b!1404247 (=> (not res!942869) (not e!794986))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95983 (_ BitVec 32)) Bool)

(assert (=> b!1404247 (= res!942869 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1404248 () Bool)

(declare-fun res!942867 () Bool)

(assert (=> b!1404248 (=> (not res!942867) (not e!794986))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1404248 (= res!942867 (validKeyInArray!0 (select (arr!46338 a!2901) j!112)))))

(declare-fun b!1404249 () Bool)

(declare-fun res!942868 () Bool)

(assert (=> b!1404249 (=> (not res!942868) (not e!794986))))

(declare-datatypes ((List!33037 0))(
  ( (Nil!33034) (Cons!33033 (h!34281 (_ BitVec 64)) (t!47738 List!33037)) )
))
(declare-fun arrayNoDuplicates!0 (array!95983 (_ BitVec 32) List!33037) Bool)

(assert (=> b!1404249 (= res!942868 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33034))))

(declare-fun b!1404250 () Bool)

(declare-fun res!942865 () Bool)

(assert (=> b!1404250 (=> (not res!942865) (not e!794986))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1404250 (= res!942865 (validKeyInArray!0 (select (arr!46338 a!2901) i!1037)))))

(declare-fun res!942866 () Bool)

(assert (=> start!120656 (=> (not res!942866) (not e!794986))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120656 (= res!942866 (validMask!0 mask!2840))))

(assert (=> start!120656 e!794986))

(assert (=> start!120656 true))

(declare-fun array_inv!35283 (array!95983) Bool)

(assert (=> start!120656 (array_inv!35283 a!2901)))

(declare-fun b!1404245 () Bool)

(declare-fun res!942870 () Bool)

(assert (=> b!1404245 (=> (not res!942870) (not e!794986))))

(assert (=> b!1404245 (= res!942870 (and (= (size!46889 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46889 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46889 a!2901)) (not (= i!1037 j!112))))))

(assert (= (and start!120656 res!942866) b!1404245))

(assert (= (and b!1404245 res!942870) b!1404250))

(assert (= (and b!1404250 res!942865) b!1404248))

(assert (= (and b!1404248 res!942867) b!1404247))

(assert (= (and b!1404247 res!942869) b!1404249))

(assert (= (and b!1404249 res!942868) b!1404246))

(declare-fun m!1293129 () Bool)

(assert (=> b!1404247 m!1293129))

(declare-fun m!1293131 () Bool)

(assert (=> start!120656 m!1293131))

(declare-fun m!1293133 () Bool)

(assert (=> start!120656 m!1293133))

(declare-fun m!1293135 () Bool)

(assert (=> b!1404246 m!1293135))

(assert (=> b!1404246 m!1293135))

(declare-fun m!1293137 () Bool)

(assert (=> b!1404246 m!1293137))

(assert (=> b!1404246 m!1293137))

(assert (=> b!1404246 m!1293135))

(declare-fun m!1293139 () Bool)

(assert (=> b!1404246 m!1293139))

(declare-fun m!1293141 () Bool)

(assert (=> b!1404250 m!1293141))

(assert (=> b!1404250 m!1293141))

(declare-fun m!1293143 () Bool)

(assert (=> b!1404250 m!1293143))

(declare-fun m!1293145 () Bool)

(assert (=> b!1404249 m!1293145))

(assert (=> b!1404248 m!1293135))

(assert (=> b!1404248 m!1293135))

(declare-fun m!1293147 () Bool)

(assert (=> b!1404248 m!1293147))

(push 1)

(assert (not b!1404249))

(assert (not b!1404248))

(assert (not b!1404250))

(assert (not b!1404247))

(assert (not start!120656))

(assert (not b!1404246))

(check-sat)

(pop 1)

(push 1)

(check-sat)

