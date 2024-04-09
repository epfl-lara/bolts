; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120608 () Bool)

(assert start!120608)

(declare-fun b!1403803 () Bool)

(declare-fun res!942427 () Bool)

(declare-fun e!794824 () Bool)

(assert (=> b!1403803 (=> (not res!942427) (not e!794824))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95935 0))(
  ( (array!95936 (arr!46314 (Array (_ BitVec 32) (_ BitVec 64))) (size!46865 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95935)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1403803 (= res!942427 (and (= (size!46865 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46865 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46865 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1403804 () Bool)

(declare-fun res!942424 () Bool)

(assert (=> b!1403804 (=> (not res!942424) (not e!794824))))

(declare-datatypes ((List!33013 0))(
  ( (Nil!33010) (Cons!33009 (h!34257 (_ BitVec 64)) (t!47714 List!33013)) )
))
(declare-fun arrayNoDuplicates!0 (array!95935 (_ BitVec 32) List!33013) Bool)

(assert (=> b!1403804 (= res!942424 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33010))))

(declare-fun b!1403805 () Bool)

(declare-fun res!942423 () Bool)

(assert (=> b!1403805 (=> (not res!942423) (not e!794824))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1403805 (= res!942423 (validKeyInArray!0 (select (arr!46314 a!2901) i!1037)))))

(declare-fun b!1403806 () Bool)

(declare-fun res!942425 () Bool)

(assert (=> b!1403806 (=> (not res!942425) (not e!794824))))

(assert (=> b!1403806 (= res!942425 (validKeyInArray!0 (select (arr!46314 a!2901) j!112)))))

(declare-fun b!1403807 () Bool)

(declare-fun e!794825 () Bool)

(declare-datatypes ((SeekEntryResult!10653 0))(
  ( (MissingZero!10653 (index!44988 (_ BitVec 32))) (Found!10653 (index!44989 (_ BitVec 32))) (Intermediate!10653 (undefined!11465 Bool) (index!44990 (_ BitVec 32)) (x!126595 (_ BitVec 32))) (Undefined!10653) (MissingVacant!10653 (index!44991 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95935 (_ BitVec 32)) SeekEntryResult!10653)

(assert (=> b!1403807 (= e!794825 (= (seekEntryOrOpen!0 (select (arr!46314 a!2901) j!112) a!2901 mask!2840) (Found!10653 j!112)))))

(declare-fun res!942428 () Bool)

(assert (=> start!120608 (=> (not res!942428) (not e!794824))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120608 (= res!942428 (validMask!0 mask!2840))))

(assert (=> start!120608 e!794824))

(assert (=> start!120608 true))

(declare-fun array_inv!35259 (array!95935) Bool)

(assert (=> start!120608 (array_inv!35259 a!2901)))

(declare-fun b!1403808 () Bool)

(declare-fun res!942426 () Bool)

(assert (=> b!1403808 (=> (not res!942426) (not e!794824))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95935 (_ BitVec 32)) Bool)

(assert (=> b!1403808 (= res!942426 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1403809 () Bool)

(assert (=> b!1403809 (= e!794824 (not true))))

(assert (=> b!1403809 e!794825))

(declare-fun res!942429 () Bool)

(assert (=> b!1403809 (=> (not res!942429) (not e!794825))))

(assert (=> b!1403809 (= res!942429 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47260 0))(
  ( (Unit!47261) )
))
(declare-fun lt!618475 () Unit!47260)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95935 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47260)

(assert (=> b!1403809 (= lt!618475 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!618474 () SeekEntryResult!10653)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95935 (_ BitVec 32)) SeekEntryResult!10653)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1403809 (= lt!618474 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46314 a!2901) j!112) mask!2840) (select (arr!46314 a!2901) j!112) a!2901 mask!2840))))

(assert (= (and start!120608 res!942428) b!1403803))

(assert (= (and b!1403803 res!942427) b!1403805))

(assert (= (and b!1403805 res!942423) b!1403806))

(assert (= (and b!1403806 res!942425) b!1403808))

(assert (= (and b!1403808 res!942426) b!1403804))

(assert (= (and b!1403804 res!942424) b!1403809))

(assert (= (and b!1403809 res!942429) b!1403807))

(declare-fun m!1292625 () Bool)

(assert (=> b!1403809 m!1292625))

(declare-fun m!1292627 () Bool)

(assert (=> b!1403809 m!1292627))

(assert (=> b!1403809 m!1292625))

(declare-fun m!1292629 () Bool)

(assert (=> b!1403809 m!1292629))

(assert (=> b!1403809 m!1292627))

(assert (=> b!1403809 m!1292625))

(declare-fun m!1292631 () Bool)

(assert (=> b!1403809 m!1292631))

(declare-fun m!1292633 () Bool)

(assert (=> b!1403809 m!1292633))

(declare-fun m!1292635 () Bool)

(assert (=> start!120608 m!1292635))

(declare-fun m!1292637 () Bool)

(assert (=> start!120608 m!1292637))

(declare-fun m!1292639 () Bool)

(assert (=> b!1403804 m!1292639))

(assert (=> b!1403807 m!1292625))

(assert (=> b!1403807 m!1292625))

(declare-fun m!1292641 () Bool)

(assert (=> b!1403807 m!1292641))

(declare-fun m!1292643 () Bool)

(assert (=> b!1403805 m!1292643))

(assert (=> b!1403805 m!1292643))

(declare-fun m!1292645 () Bool)

(assert (=> b!1403805 m!1292645))

(declare-fun m!1292647 () Bool)

(assert (=> b!1403808 m!1292647))

(assert (=> b!1403806 m!1292625))

(assert (=> b!1403806 m!1292625))

(declare-fun m!1292649 () Bool)

(assert (=> b!1403806 m!1292649))

(push 1)

(assert (not b!1403808))

(assert (not b!1403806))

(assert (not b!1403804))

(assert (not b!1403809))

(assert (not b!1403805))

(assert (not b!1403807))

(assert (not start!120608))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

