; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120238 () Bool)

(assert start!120238)

(declare-fun b!1399001 () Bool)

(declare-fun e!792051 () Bool)

(declare-fun e!792053 () Bool)

(assert (=> b!1399001 (= e!792051 e!792053)))

(declare-fun res!937859 () Bool)

(assert (=> b!1399001 (=> res!937859 e!792053)))

(declare-datatypes ((SeekEntryResult!10501 0))(
  ( (MissingZero!10501 (index!44377 (_ BitVec 32))) (Found!10501 (index!44378 (_ BitVec 32))) (Intermediate!10501 (undefined!11313 Bool) (index!44379 (_ BitVec 32)) (x!126031 (_ BitVec 32))) (Undefined!10501) (MissingVacant!10501 (index!44380 (_ BitVec 32))) )
))
(declare-fun lt!615254 () SeekEntryResult!10501)

(declare-fun lt!615259 () SeekEntryResult!10501)

(assert (=> b!1399001 (= res!937859 (or (= lt!615254 lt!615259) (not (is-Intermediate!10501 lt!615259))))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95628 0))(
  ( (array!95629 (arr!46162 (Array (_ BitVec 32) (_ BitVec 64))) (size!46713 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95628)

(declare-fun lt!615255 () (_ BitVec 64))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95628 (_ BitVec 32)) SeekEntryResult!10501)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1399001 (= lt!615259 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!615255 mask!2840) lt!615255 (array!95629 (store (arr!46162 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46713 a!2901)) mask!2840))))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1399001 (= lt!615255 (select (store (arr!46162 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(declare-fun b!1399002 () Bool)

(declare-fun res!937864 () Bool)

(declare-fun e!792050 () Bool)

(assert (=> b!1399002 (=> (not res!937864) (not e!792050))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1399002 (= res!937864 (validKeyInArray!0 (select (arr!46162 a!2901) i!1037)))))

(declare-fun b!1399003 () Bool)

(declare-fun e!792052 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95628 (_ BitVec 32)) SeekEntryResult!10501)

(assert (=> b!1399003 (= e!792052 (= (seekEntryOrOpen!0 (select (arr!46162 a!2901) j!112) a!2901 mask!2840) (Found!10501 j!112)))))

(declare-fun res!937858 () Bool)

(assert (=> start!120238 (=> (not res!937858) (not e!792050))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120238 (= res!937858 (validMask!0 mask!2840))))

(assert (=> start!120238 e!792050))

(assert (=> start!120238 true))

(declare-fun array_inv!35107 (array!95628) Bool)

(assert (=> start!120238 (array_inv!35107 a!2901)))

(declare-fun b!1399004 () Bool)

(assert (=> b!1399004 (= e!792050 (not e!792051))))

(declare-fun res!937865 () Bool)

(assert (=> b!1399004 (=> res!937865 e!792051)))

(assert (=> b!1399004 (= res!937865 (or (not (is-Intermediate!10501 lt!615254)) (undefined!11313 lt!615254)))))

(assert (=> b!1399004 e!792052))

(declare-fun res!937860 () Bool)

(assert (=> b!1399004 (=> (not res!937860) (not e!792052))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95628 (_ BitVec 32)) Bool)

(assert (=> b!1399004 (= res!937860 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46956 0))(
  ( (Unit!46957) )
))
(declare-fun lt!615258 () Unit!46956)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95628 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46956)

(assert (=> b!1399004 (= lt!615258 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!615256 () (_ BitVec 32))

(assert (=> b!1399004 (= lt!615254 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!615256 (select (arr!46162 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1399004 (= lt!615256 (toIndex!0 (select (arr!46162 a!2901) j!112) mask!2840))))

(declare-fun b!1399005 () Bool)

(declare-fun res!937861 () Bool)

(assert (=> b!1399005 (=> (not res!937861) (not e!792050))))

(assert (=> b!1399005 (= res!937861 (validKeyInArray!0 (select (arr!46162 a!2901) j!112)))))

(declare-fun b!1399006 () Bool)

(declare-fun res!937863 () Bool)

(assert (=> b!1399006 (=> (not res!937863) (not e!792050))))

(assert (=> b!1399006 (= res!937863 (and (= (size!46713 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46713 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46713 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1399007 () Bool)

(assert (=> b!1399007 (= e!792053 true)))

(assert (=> b!1399007 (and (not (undefined!11313 lt!615259)) (= (index!44379 lt!615259) i!1037) (bvslt (x!126031 lt!615259) (x!126031 lt!615254)) (= (select (store (arr!46162 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44379 lt!615259)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!615257 () Unit!46956)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95628 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!46956)

(assert (=> b!1399007 (= lt!615257 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!615256 (x!126031 lt!615254) (index!44379 lt!615254) (x!126031 lt!615259) (index!44379 lt!615259) (undefined!11313 lt!615259) mask!2840))))

(declare-fun b!1399008 () Bool)

(declare-fun res!937866 () Bool)

(assert (=> b!1399008 (=> (not res!937866) (not e!792050))))

(declare-datatypes ((List!32861 0))(
  ( (Nil!32858) (Cons!32857 (h!34102 (_ BitVec 64)) (t!47562 List!32861)) )
))
(declare-fun arrayNoDuplicates!0 (array!95628 (_ BitVec 32) List!32861) Bool)

(assert (=> b!1399008 (= res!937866 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32858))))

(declare-fun b!1399009 () Bool)

(declare-fun res!937862 () Bool)

(assert (=> b!1399009 (=> (not res!937862) (not e!792050))))

(assert (=> b!1399009 (= res!937862 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(assert (= (and start!120238 res!937858) b!1399006))

(assert (= (and b!1399006 res!937863) b!1399002))

(assert (= (and b!1399002 res!937864) b!1399005))

(assert (= (and b!1399005 res!937861) b!1399009))

(assert (= (and b!1399009 res!937862) b!1399008))

(assert (= (and b!1399008 res!937866) b!1399004))

(assert (= (and b!1399004 res!937860) b!1399003))

(assert (= (and b!1399004 (not res!937865)) b!1399001))

(assert (= (and b!1399001 (not res!937859)) b!1399007))

(declare-fun m!1286255 () Bool)

(assert (=> start!120238 m!1286255))

(declare-fun m!1286257 () Bool)

(assert (=> start!120238 m!1286257))

(declare-fun m!1286259 () Bool)

(assert (=> b!1399001 m!1286259))

(declare-fun m!1286261 () Bool)

(assert (=> b!1399001 m!1286261))

(assert (=> b!1399001 m!1286259))

(declare-fun m!1286263 () Bool)

(assert (=> b!1399001 m!1286263))

(declare-fun m!1286265 () Bool)

(assert (=> b!1399001 m!1286265))

(declare-fun m!1286267 () Bool)

(assert (=> b!1399002 m!1286267))

(assert (=> b!1399002 m!1286267))

(declare-fun m!1286269 () Bool)

(assert (=> b!1399002 m!1286269))

(assert (=> b!1399007 m!1286261))

(declare-fun m!1286271 () Bool)

(assert (=> b!1399007 m!1286271))

(declare-fun m!1286273 () Bool)

(assert (=> b!1399007 m!1286273))

(declare-fun m!1286275 () Bool)

(assert (=> b!1399009 m!1286275))

(declare-fun m!1286277 () Bool)

(assert (=> b!1399005 m!1286277))

(assert (=> b!1399005 m!1286277))

(declare-fun m!1286279 () Bool)

(assert (=> b!1399005 m!1286279))

(assert (=> b!1399004 m!1286277))

(declare-fun m!1286281 () Bool)

(assert (=> b!1399004 m!1286281))

(assert (=> b!1399004 m!1286277))

(declare-fun m!1286283 () Bool)

(assert (=> b!1399004 m!1286283))

(assert (=> b!1399004 m!1286277))

(declare-fun m!1286285 () Bool)

(assert (=> b!1399004 m!1286285))

(declare-fun m!1286287 () Bool)

(assert (=> b!1399004 m!1286287))

(assert (=> b!1399003 m!1286277))

(assert (=> b!1399003 m!1286277))

(declare-fun m!1286289 () Bool)

(assert (=> b!1399003 m!1286289))

(declare-fun m!1286291 () Bool)

(assert (=> b!1399008 m!1286291))

(push 1)

