; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121624 () Bool)

(assert start!121624)

(declare-fun res!949396 () Bool)

(declare-fun e!799248 () Bool)

(assert (=> start!121624 (=> (not res!949396) (not e!799248))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121624 (= res!949396 (validMask!0 mask!2840))))

(assert (=> start!121624 e!799248))

(assert (=> start!121624 true))

(declare-datatypes ((array!96480 0))(
  ( (array!96481 (arr!46573 (Array (_ BitVec 32) (_ BitVec 64))) (size!47124 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96480)

(declare-fun array_inv!35518 (array!96480) Bool)

(assert (=> start!121624 (array_inv!35518 a!2901)))

(declare-fun b!1412290 () Bool)

(declare-fun e!799249 () Bool)

(declare-fun e!799245 () Bool)

(assert (=> b!1412290 (= e!799249 e!799245)))

(declare-fun res!949394 () Bool)

(assert (=> b!1412290 (=> res!949394 e!799245)))

(declare-datatypes ((SeekEntryResult!10906 0))(
  ( (MissingZero!10906 (index!46003 (_ BitVec 32))) (Found!10906 (index!46004 (_ BitVec 32))) (Intermediate!10906 (undefined!11718 Bool) (index!46005 (_ BitVec 32)) (x!127604 (_ BitVec 32))) (Undefined!10906) (MissingVacant!10906 (index!46006 (_ BitVec 32))) )
))
(declare-fun lt!622228 () SeekEntryResult!10906)

(declare-fun lt!622232 () SeekEntryResult!10906)

(assert (=> b!1412290 (= res!949394 (or (= lt!622228 lt!622232) (not (is-Intermediate!10906 lt!622232))))))

(declare-fun lt!622231 () array!96480)

(declare-fun lt!622229 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96480 (_ BitVec 32)) SeekEntryResult!10906)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1412290 (= lt!622232 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!622229 mask!2840) lt!622229 lt!622231 mask!2840))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1412290 (= lt!622229 (select (store (arr!46573 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1412290 (= lt!622231 (array!96481 (store (arr!46573 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47124 a!2901)))))

(declare-fun b!1412291 () Bool)

(declare-fun res!949398 () Bool)

(assert (=> b!1412291 (=> (not res!949398) (not e!799248))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96480 (_ BitVec 32)) Bool)

(assert (=> b!1412291 (= res!949398 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1412292 () Bool)

(declare-fun res!949391 () Bool)

(assert (=> b!1412292 (=> (not res!949391) (not e!799248))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1412292 (= res!949391 (validKeyInArray!0 (select (arr!46573 a!2901) i!1037)))))

(declare-fun b!1412293 () Bool)

(declare-fun res!949397 () Bool)

(assert (=> b!1412293 (=> (not res!949397) (not e!799248))))

(declare-datatypes ((List!33272 0))(
  ( (Nil!33269) (Cons!33268 (h!34543 (_ BitVec 64)) (t!47973 List!33272)) )
))
(declare-fun arrayNoDuplicates!0 (array!96480 (_ BitVec 32) List!33272) Bool)

(assert (=> b!1412293 (= res!949397 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33269))))

(declare-fun e!799250 () Bool)

(declare-fun b!1412294 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96480 (_ BitVec 32)) SeekEntryResult!10906)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96480 (_ BitVec 32)) SeekEntryResult!10906)

(assert (=> b!1412294 (= e!799250 (= (seekEntryOrOpen!0 lt!622229 lt!622231 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!127604 lt!622232) (index!46005 lt!622232) (index!46005 lt!622232) (select (arr!46573 a!2901) j!112) lt!622231 mask!2840)))))

(declare-fun b!1412295 () Bool)

(declare-fun res!949389 () Bool)

(assert (=> b!1412295 (=> (not res!949389) (not e!799248))))

(assert (=> b!1412295 (= res!949389 (and (= (size!47124 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47124 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47124 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1412296 () Bool)

(declare-fun res!949393 () Bool)

(assert (=> b!1412296 (=> (not res!949393) (not e!799248))))

(assert (=> b!1412296 (= res!949393 (validKeyInArray!0 (select (arr!46573 a!2901) j!112)))))

(declare-fun b!1412297 () Bool)

(declare-fun e!799246 () Bool)

(assert (=> b!1412297 (= e!799246 (= (seekEntryOrOpen!0 (select (arr!46573 a!2901) j!112) a!2901 mask!2840) (Found!10906 j!112)))))

(declare-fun b!1412298 () Bool)

(assert (=> b!1412298 (= e!799248 (not e!799249))))

(declare-fun res!949392 () Bool)

(assert (=> b!1412298 (=> res!949392 e!799249)))

(assert (=> b!1412298 (= res!949392 (or (not (is-Intermediate!10906 lt!622228)) (undefined!11718 lt!622228)))))

(assert (=> b!1412298 e!799246))

(declare-fun res!949395 () Bool)

(assert (=> b!1412298 (=> (not res!949395) (not e!799246))))

(assert (=> b!1412298 (= res!949395 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47736 0))(
  ( (Unit!47737) )
))
(declare-fun lt!622234 () Unit!47736)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96480 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47736)

(assert (=> b!1412298 (= lt!622234 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!622233 () (_ BitVec 32))

(assert (=> b!1412298 (= lt!622228 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!622233 (select (arr!46573 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1412298 (= lt!622233 (toIndex!0 (select (arr!46573 a!2901) j!112) mask!2840))))

(declare-fun b!1412299 () Bool)

(assert (=> b!1412299 (= e!799245 true)))

(assert (=> b!1412299 e!799250))

(declare-fun res!949390 () Bool)

(assert (=> b!1412299 (=> (not res!949390) (not e!799250))))

(assert (=> b!1412299 (= res!949390 (and (not (undefined!11718 lt!622232)) (= (index!46005 lt!622232) i!1037) (bvslt (x!127604 lt!622232) (x!127604 lt!622228)) (= (select (store (arr!46573 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!46005 lt!622232)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!622230 () Unit!47736)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96480 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47736)

(assert (=> b!1412299 (= lt!622230 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!622233 (x!127604 lt!622228) (index!46005 lt!622228) (x!127604 lt!622232) (index!46005 lt!622232) (undefined!11718 lt!622232) mask!2840))))

(assert (= (and start!121624 res!949396) b!1412295))

(assert (= (and b!1412295 res!949389) b!1412292))

(assert (= (and b!1412292 res!949391) b!1412296))

(assert (= (and b!1412296 res!949393) b!1412291))

(assert (= (and b!1412291 res!949398) b!1412293))

(assert (= (and b!1412293 res!949397) b!1412298))

(assert (= (and b!1412298 res!949395) b!1412297))

(assert (= (and b!1412298 (not res!949392)) b!1412290))

(assert (= (and b!1412290 (not res!949394)) b!1412299))

(assert (= (and b!1412299 res!949390) b!1412294))

(declare-fun m!1302347 () Bool)

(assert (=> start!121624 m!1302347))

(declare-fun m!1302349 () Bool)

(assert (=> start!121624 m!1302349))

(declare-fun m!1302351 () Bool)

(assert (=> b!1412290 m!1302351))

(assert (=> b!1412290 m!1302351))

(declare-fun m!1302353 () Bool)

(assert (=> b!1412290 m!1302353))

(declare-fun m!1302355 () Bool)

(assert (=> b!1412290 m!1302355))

(declare-fun m!1302357 () Bool)

(assert (=> b!1412290 m!1302357))

(declare-fun m!1302359 () Bool)

(assert (=> b!1412294 m!1302359))

(declare-fun m!1302361 () Bool)

(assert (=> b!1412294 m!1302361))

(assert (=> b!1412294 m!1302361))

(declare-fun m!1302363 () Bool)

(assert (=> b!1412294 m!1302363))

(assert (=> b!1412297 m!1302361))

(assert (=> b!1412297 m!1302361))

(declare-fun m!1302365 () Bool)

(assert (=> b!1412297 m!1302365))

(declare-fun m!1302367 () Bool)

(assert (=> b!1412293 m!1302367))

(assert (=> b!1412298 m!1302361))

(declare-fun m!1302369 () Bool)

(assert (=> b!1412298 m!1302369))

(assert (=> b!1412298 m!1302361))

(assert (=> b!1412298 m!1302361))

(declare-fun m!1302371 () Bool)

(assert (=> b!1412298 m!1302371))

(declare-fun m!1302373 () Bool)

(assert (=> b!1412298 m!1302373))

(declare-fun m!1302375 () Bool)

(assert (=> b!1412298 m!1302375))

(assert (=> b!1412296 m!1302361))

(assert (=> b!1412296 m!1302361))

(declare-fun m!1302377 () Bool)

(assert (=> b!1412296 m!1302377))

(declare-fun m!1302379 () Bool)

(assert (=> b!1412291 m!1302379))

(assert (=> b!1412299 m!1302355))

(declare-fun m!1302381 () Bool)

(assert (=> b!1412299 m!1302381))

(declare-fun m!1302383 () Bool)

(assert (=> b!1412299 m!1302383))

(declare-fun m!1302385 () Bool)

(assert (=> b!1412292 m!1302385))

(assert (=> b!1412292 m!1302385))

(declare-fun m!1302387 () Bool)

(assert (=> b!1412292 m!1302387))

(push 1)

