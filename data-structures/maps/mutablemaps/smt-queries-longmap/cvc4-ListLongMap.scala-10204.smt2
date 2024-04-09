; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120254 () Bool)

(assert start!120254)

(declare-fun b!1399225 () Bool)

(declare-fun res!938090 () Bool)

(declare-fun e!792178 () Bool)

(assert (=> b!1399225 (=> (not res!938090) (not e!792178))))

(declare-datatypes ((array!95644 0))(
  ( (array!95645 (arr!46170 (Array (_ BitVec 32) (_ BitVec 64))) (size!46721 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95644)

(declare-datatypes ((List!32869 0))(
  ( (Nil!32866) (Cons!32865 (h!34110 (_ BitVec 64)) (t!47570 List!32869)) )
))
(declare-fun arrayNoDuplicates!0 (array!95644 (_ BitVec 32) List!32869) Bool)

(assert (=> b!1399225 (= res!938090 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32866))))

(declare-fun b!1399226 () Bool)

(declare-fun e!792179 () Bool)

(declare-fun mask!2840 () (_ BitVec 32))

(assert (=> b!1399226 (= e!792179 (bvsge mask!2840 #b00000000000000000000000000000000))))

(declare-fun e!792181 () Bool)

(assert (=> b!1399226 e!792181))

(declare-fun res!938089 () Bool)

(assert (=> b!1399226 (=> (not res!938089) (not e!792181))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10509 0))(
  ( (MissingZero!10509 (index!44409 (_ BitVec 32))) (Found!10509 (index!44410 (_ BitVec 32))) (Intermediate!10509 (undefined!11321 Bool) (index!44411 (_ BitVec 32)) (x!126055 (_ BitVec 32))) (Undefined!10509) (MissingVacant!10509 (index!44412 (_ BitVec 32))) )
))
(declare-fun lt!615406 () SeekEntryResult!10509)

(declare-fun lt!615412 () SeekEntryResult!10509)

(assert (=> b!1399226 (= res!938089 (and (not (undefined!11321 lt!615406)) (= (index!44411 lt!615406) i!1037) (bvslt (x!126055 lt!615406) (x!126055 lt!615412)) (= (select (store (arr!46170 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44411 lt!615406)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((Unit!46972 0))(
  ( (Unit!46973) )
))
(declare-fun lt!615408 () Unit!46972)

(declare-fun lt!615410 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95644 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!46972)

(assert (=> b!1399226 (= lt!615408 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!615410 (x!126055 lt!615412) (index!44411 lt!615412) (x!126055 lt!615406) (index!44411 lt!615406) (undefined!11321 lt!615406) mask!2840))))

(declare-fun b!1399227 () Bool)

(declare-fun e!792182 () Bool)

(assert (=> b!1399227 (= e!792182 e!792179)))

(declare-fun res!938088 () Bool)

(assert (=> b!1399227 (=> res!938088 e!792179)))

(assert (=> b!1399227 (= res!938088 (or (= lt!615412 lt!615406) (not (is-Intermediate!10509 lt!615406))))))

(declare-fun lt!615409 () (_ BitVec 64))

(declare-fun lt!615411 () array!95644)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95644 (_ BitVec 32)) SeekEntryResult!10509)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1399227 (= lt!615406 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!615409 mask!2840) lt!615409 lt!615411 mask!2840))))

(assert (=> b!1399227 (= lt!615409 (select (store (arr!46170 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1399227 (= lt!615411 (array!95645 (store (arr!46170 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46721 a!2901)))))

(declare-fun b!1399228 () Bool)

(declare-fun res!938084 () Bool)

(assert (=> b!1399228 (=> (not res!938084) (not e!792178))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1399228 (= res!938084 (validKeyInArray!0 (select (arr!46170 a!2901) j!112)))))

(declare-fun b!1399229 () Bool)

(assert (=> b!1399229 (= e!792178 (not e!792182))))

(declare-fun res!938085 () Bool)

(assert (=> b!1399229 (=> res!938085 e!792182)))

(assert (=> b!1399229 (= res!938085 (or (not (is-Intermediate!10509 lt!615412)) (undefined!11321 lt!615412)))))

(declare-fun e!792177 () Bool)

(assert (=> b!1399229 e!792177))

(declare-fun res!938086 () Bool)

(assert (=> b!1399229 (=> (not res!938086) (not e!792177))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95644 (_ BitVec 32)) Bool)

(assert (=> b!1399229 (= res!938086 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!615407 () Unit!46972)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95644 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46972)

(assert (=> b!1399229 (= lt!615407 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1399229 (= lt!615412 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!615410 (select (arr!46170 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1399229 (= lt!615410 (toIndex!0 (select (arr!46170 a!2901) j!112) mask!2840))))

(declare-fun b!1399230 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95644 (_ BitVec 32)) SeekEntryResult!10509)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95644 (_ BitVec 32)) SeekEntryResult!10509)

(assert (=> b!1399230 (= e!792181 (= (seekEntryOrOpen!0 lt!615409 lt!615411 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!126055 lt!615406) (index!44411 lt!615406) (index!44411 lt!615406) (select (arr!46170 a!2901) j!112) lt!615411 mask!2840)))))

(declare-fun b!1399232 () Bool)

(assert (=> b!1399232 (= e!792177 (= (seekEntryOrOpen!0 (select (arr!46170 a!2901) j!112) a!2901 mask!2840) (Found!10509 j!112)))))

(declare-fun b!1399233 () Bool)

(declare-fun res!938091 () Bool)

(assert (=> b!1399233 (=> (not res!938091) (not e!792178))))

(assert (=> b!1399233 (= res!938091 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1399234 () Bool)

(declare-fun res!938083 () Bool)

(assert (=> b!1399234 (=> (not res!938083) (not e!792178))))

(assert (=> b!1399234 (= res!938083 (validKeyInArray!0 (select (arr!46170 a!2901) i!1037)))))

(declare-fun res!938082 () Bool)

(assert (=> start!120254 (=> (not res!938082) (not e!792178))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120254 (= res!938082 (validMask!0 mask!2840))))

(assert (=> start!120254 e!792178))

(assert (=> start!120254 true))

(declare-fun array_inv!35115 (array!95644) Bool)

(assert (=> start!120254 (array_inv!35115 a!2901)))

(declare-fun b!1399231 () Bool)

(declare-fun res!938087 () Bool)

(assert (=> b!1399231 (=> (not res!938087) (not e!792178))))

(assert (=> b!1399231 (= res!938087 (and (= (size!46721 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46721 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46721 a!2901)) (not (= i!1037 j!112))))))

(assert (= (and start!120254 res!938082) b!1399231))

(assert (= (and b!1399231 res!938087) b!1399234))

(assert (= (and b!1399234 res!938083) b!1399228))

(assert (= (and b!1399228 res!938084) b!1399233))

(assert (= (and b!1399233 res!938091) b!1399225))

(assert (= (and b!1399225 res!938090) b!1399229))

(assert (= (and b!1399229 res!938086) b!1399232))

(assert (= (and b!1399229 (not res!938085)) b!1399227))

(assert (= (and b!1399227 (not res!938088)) b!1399226))

(assert (= (and b!1399226 res!938089) b!1399230))

(declare-fun m!1286567 () Bool)

(assert (=> b!1399227 m!1286567))

(assert (=> b!1399227 m!1286567))

(declare-fun m!1286569 () Bool)

(assert (=> b!1399227 m!1286569))

(declare-fun m!1286571 () Bool)

(assert (=> b!1399227 m!1286571))

(declare-fun m!1286573 () Bool)

(assert (=> b!1399227 m!1286573))

(declare-fun m!1286575 () Bool)

(assert (=> b!1399229 m!1286575))

(declare-fun m!1286577 () Bool)

(assert (=> b!1399229 m!1286577))

(assert (=> b!1399229 m!1286575))

(declare-fun m!1286579 () Bool)

(assert (=> b!1399229 m!1286579))

(declare-fun m!1286581 () Bool)

(assert (=> b!1399229 m!1286581))

(assert (=> b!1399229 m!1286575))

(declare-fun m!1286583 () Bool)

(assert (=> b!1399229 m!1286583))

(assert (=> b!1399232 m!1286575))

(assert (=> b!1399232 m!1286575))

(declare-fun m!1286585 () Bool)

(assert (=> b!1399232 m!1286585))

(declare-fun m!1286587 () Bool)

(assert (=> b!1399225 m!1286587))

(assert (=> b!1399226 m!1286571))

(declare-fun m!1286589 () Bool)

(assert (=> b!1399226 m!1286589))

(declare-fun m!1286591 () Bool)

(assert (=> b!1399226 m!1286591))

(assert (=> b!1399228 m!1286575))

(assert (=> b!1399228 m!1286575))

(declare-fun m!1286593 () Bool)

(assert (=> b!1399228 m!1286593))

(declare-fun m!1286595 () Bool)

(assert (=> b!1399234 m!1286595))

(assert (=> b!1399234 m!1286595))

(declare-fun m!1286597 () Bool)

(assert (=> b!1399234 m!1286597))

(declare-fun m!1286599 () Bool)

(assert (=> b!1399230 m!1286599))

(assert (=> b!1399230 m!1286575))

(assert (=> b!1399230 m!1286575))

(declare-fun m!1286601 () Bool)

(assert (=> b!1399230 m!1286601))

(declare-fun m!1286603 () Bool)

(assert (=> b!1399233 m!1286603))

(declare-fun m!1286605 () Bool)

(assert (=> start!120254 m!1286605))

(declare-fun m!1286607 () Bool)

(assert (=> start!120254 m!1286607))

(push 1)

