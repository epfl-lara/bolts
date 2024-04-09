; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120482 () Bool)

(assert start!120482)

(declare-fun b!1402207 () Bool)

(declare-fun e!794047 () Bool)

(assert (=> b!1402207 (= e!794047 true)))

(declare-datatypes ((SeekEntryResult!10590 0))(
  ( (MissingZero!10590 (index!44736 (_ BitVec 32))) (Found!10590 (index!44737 (_ BitVec 32))) (Intermediate!10590 (undefined!11402 Bool) (index!44738 (_ BitVec 32)) (x!126364 (_ BitVec 32))) (Undefined!10590) (MissingVacant!10590 (index!44739 (_ BitVec 32))) )
))
(declare-fun lt!617513 () SeekEntryResult!10590)

(declare-fun lt!617516 () SeekEntryResult!10590)

(assert (=> b!1402207 (= lt!617513 lt!617516)))

(declare-datatypes ((Unit!47134 0))(
  ( (Unit!47135) )
))
(declare-fun lt!617515 () Unit!47134)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95809 0))(
  ( (array!95810 (arr!46251 (Array (_ BitVec 32) (_ BitVec 64))) (size!46802 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95809)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun lt!617520 () SeekEntryResult!10590)

(declare-fun lt!617517 () SeekEntryResult!10590)

(declare-fun lt!617519 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!95809 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47134)

(assert (=> b!1402207 (= lt!617515 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!617519 (x!126364 lt!617520) (index!44738 lt!617520) (x!126364 lt!617517) (index!44738 lt!617517) mask!2840))))

(declare-fun b!1402208 () Bool)

(declare-fun res!940827 () Bool)

(declare-fun e!794049 () Bool)

(assert (=> b!1402208 (=> (not res!940827) (not e!794049))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95809 (_ BitVec 32)) Bool)

(assert (=> b!1402208 (= res!940827 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1402209 () Bool)

(declare-fun res!940831 () Bool)

(assert (=> b!1402209 (=> (not res!940831) (not e!794049))))

(declare-datatypes ((List!32950 0))(
  ( (Nil!32947) (Cons!32946 (h!34194 (_ BitVec 64)) (t!47651 List!32950)) )
))
(declare-fun arrayNoDuplicates!0 (array!95809 (_ BitVec 32) List!32950) Bool)

(assert (=> b!1402209 (= res!940831 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32947))))

(declare-fun b!1402210 () Bool)

(declare-fun e!794051 () Bool)

(declare-fun e!794048 () Bool)

(assert (=> b!1402210 (= e!794051 e!794048)))

(declare-fun res!940830 () Bool)

(assert (=> b!1402210 (=> res!940830 e!794048)))

(assert (=> b!1402210 (= res!940830 (or (= lt!617520 lt!617517) (not (is-Intermediate!10590 lt!617517))))))

(declare-fun lt!617521 () array!95809)

(declare-fun lt!617514 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95809 (_ BitVec 32)) SeekEntryResult!10590)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1402210 (= lt!617517 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!617514 mask!2840) lt!617514 lt!617521 mask!2840))))

(assert (=> b!1402210 (= lt!617514 (select (store (arr!46251 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1402210 (= lt!617521 (array!95810 (store (arr!46251 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46802 a!2901)))))

(declare-fun b!1402211 () Bool)

(declare-fun res!940832 () Bool)

(assert (=> b!1402211 (=> (not res!940832) (not e!794049))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1402211 (= res!940832 (validKeyInArray!0 (select (arr!46251 a!2901) i!1037)))))

(declare-fun b!1402212 () Bool)

(assert (=> b!1402212 (= e!794049 (not e!794051))))

(declare-fun res!940834 () Bool)

(assert (=> b!1402212 (=> res!940834 e!794051)))

(assert (=> b!1402212 (= res!940834 (or (not (is-Intermediate!10590 lt!617520)) (undefined!11402 lt!617520)))))

(assert (=> b!1402212 (= lt!617513 (Found!10590 j!112))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95809 (_ BitVec 32)) SeekEntryResult!10590)

(assert (=> b!1402212 (= lt!617513 (seekEntryOrOpen!0 (select (arr!46251 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1402212 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!617518 () Unit!47134)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95809 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47134)

(assert (=> b!1402212 (= lt!617518 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1402212 (= lt!617520 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!617519 (select (arr!46251 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1402212 (= lt!617519 (toIndex!0 (select (arr!46251 a!2901) j!112) mask!2840))))

(declare-fun b!1402213 () Bool)

(declare-fun res!940833 () Bool)

(assert (=> b!1402213 (=> (not res!940833) (not e!794049))))

(assert (=> b!1402213 (= res!940833 (and (= (size!46802 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46802 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46802 a!2901)) (not (= i!1037 j!112))))))

(declare-fun res!940828 () Bool)

(assert (=> start!120482 (=> (not res!940828) (not e!794049))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120482 (= res!940828 (validMask!0 mask!2840))))

(assert (=> start!120482 e!794049))

(assert (=> start!120482 true))

(declare-fun array_inv!35196 (array!95809) Bool)

(assert (=> start!120482 (array_inv!35196 a!2901)))

(declare-fun b!1402214 () Bool)

(declare-fun res!940836 () Bool)

(assert (=> b!1402214 (=> res!940836 e!794047)))

(assert (=> b!1402214 (= res!940836 (not (= lt!617517 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!617519 lt!617514 lt!617521 mask!2840))))))

(declare-fun b!1402215 () Bool)

(declare-fun res!940829 () Bool)

(assert (=> b!1402215 (=> (not res!940829) (not e!794049))))

(assert (=> b!1402215 (= res!940829 (validKeyInArray!0 (select (arr!46251 a!2901) j!112)))))

(declare-fun b!1402216 () Bool)

(assert (=> b!1402216 (= e!794048 e!794047)))

(declare-fun res!940835 () Bool)

(assert (=> b!1402216 (=> res!940835 e!794047)))

(assert (=> b!1402216 (= res!940835 (or (bvslt (x!126364 lt!617520) #b00000000000000000000000000000000) (bvsgt (x!126364 lt!617520) #b01111111111111111111111111111110) (bvslt (x!126364 lt!617517) #b00000000000000000000000000000000) (bvsgt (x!126364 lt!617517) #b01111111111111111111111111111110) (bvslt lt!617519 #b00000000000000000000000000000000) (bvsge lt!617519 (size!46802 a!2901)) (bvslt (index!44738 lt!617520) #b00000000000000000000000000000000) (bvsge (index!44738 lt!617520) (size!46802 a!2901)) (bvslt (index!44738 lt!617517) #b00000000000000000000000000000000) (bvsge (index!44738 lt!617517) (size!46802 a!2901)) (not (= lt!617520 (Intermediate!10590 false (index!44738 lt!617520) (x!126364 lt!617520)))) (not (= lt!617517 (Intermediate!10590 false (index!44738 lt!617517) (x!126364 lt!617517))))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95809 (_ BitVec 32)) SeekEntryResult!10590)

(assert (=> b!1402216 (= lt!617516 (seekKeyOrZeroReturnVacant!0 (x!126364 lt!617517) (index!44738 lt!617517) (index!44738 lt!617517) (select (arr!46251 a!2901) j!112) lt!617521 mask!2840))))

(assert (=> b!1402216 (= lt!617516 (seekEntryOrOpen!0 lt!617514 lt!617521 mask!2840))))

(assert (=> b!1402216 (and (not (undefined!11402 lt!617517)) (= (index!44738 lt!617517) i!1037) (bvslt (x!126364 lt!617517) (x!126364 lt!617520)) (= (select (store (arr!46251 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44738 lt!617517)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!617512 () Unit!47134)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95809 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47134)

(assert (=> b!1402216 (= lt!617512 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!617519 (x!126364 lt!617520) (index!44738 lt!617520) (x!126364 lt!617517) (index!44738 lt!617517) (undefined!11402 lt!617517) mask!2840))))

(assert (= (and start!120482 res!940828) b!1402213))

(assert (= (and b!1402213 res!940833) b!1402211))

(assert (= (and b!1402211 res!940832) b!1402215))

(assert (= (and b!1402215 res!940829) b!1402208))

(assert (= (and b!1402208 res!940827) b!1402209))

(assert (= (and b!1402209 res!940831) b!1402212))

(assert (= (and b!1402212 (not res!940834)) b!1402210))

(assert (= (and b!1402210 (not res!940830)) b!1402216))

(assert (= (and b!1402216 (not res!940835)) b!1402214))

(assert (= (and b!1402214 (not res!940836)) b!1402207))

(declare-fun m!1290349 () Bool)

(assert (=> b!1402212 m!1290349))

(declare-fun m!1290351 () Bool)

(assert (=> b!1402212 m!1290351))

(assert (=> b!1402212 m!1290349))

(assert (=> b!1402212 m!1290349))

(declare-fun m!1290353 () Bool)

(assert (=> b!1402212 m!1290353))

(declare-fun m!1290355 () Bool)

(assert (=> b!1402212 m!1290355))

(declare-fun m!1290357 () Bool)

(assert (=> b!1402212 m!1290357))

(assert (=> b!1402212 m!1290349))

(declare-fun m!1290359 () Bool)

(assert (=> b!1402212 m!1290359))

(assert (=> b!1402216 m!1290349))

(declare-fun m!1290361 () Bool)

(assert (=> b!1402216 m!1290361))

(assert (=> b!1402216 m!1290349))

(declare-fun m!1290363 () Bool)

(assert (=> b!1402216 m!1290363))

(declare-fun m!1290365 () Bool)

(assert (=> b!1402216 m!1290365))

(declare-fun m!1290367 () Bool)

(assert (=> b!1402216 m!1290367))

(declare-fun m!1290369 () Bool)

(assert (=> b!1402216 m!1290369))

(declare-fun m!1290371 () Bool)

(assert (=> b!1402211 m!1290371))

(assert (=> b!1402211 m!1290371))

(declare-fun m!1290373 () Bool)

(assert (=> b!1402211 m!1290373))

(declare-fun m!1290375 () Bool)

(assert (=> b!1402210 m!1290375))

(assert (=> b!1402210 m!1290375))

(declare-fun m!1290377 () Bool)

(assert (=> b!1402210 m!1290377))

(assert (=> b!1402210 m!1290369))

(declare-fun m!1290379 () Bool)

(assert (=> b!1402210 m!1290379))

(assert (=> b!1402215 m!1290349))

(assert (=> b!1402215 m!1290349))

(declare-fun m!1290381 () Bool)

(assert (=> b!1402215 m!1290381))

(declare-fun m!1290383 () Bool)

(assert (=> start!120482 m!1290383))

(declare-fun m!1290385 () Bool)

(assert (=> start!120482 m!1290385))

(declare-fun m!1290387 () Bool)

(assert (=> b!1402214 m!1290387))

(declare-fun m!1290389 () Bool)

(assert (=> b!1402207 m!1290389))

(declare-fun m!1290391 () Bool)

(assert (=> b!1402208 m!1290391))

(declare-fun m!1290393 () Bool)

(assert (=> b!1402209 m!1290393))

(push 1)

