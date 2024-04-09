; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127388 () Bool)

(assert start!127388)

(declare-fun b!1496365 () Bool)

(declare-fun e!838146 () Bool)

(declare-fun e!838145 () Bool)

(assert (=> b!1496365 (= e!838146 e!838145)))

(declare-fun res!1017793 () Bool)

(assert (=> b!1496365 (=> (not res!1017793) (not e!838145))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12404 0))(
  ( (MissingZero!12404 (index!52007 (_ BitVec 32))) (Found!12404 (index!52008 (_ BitVec 32))) (Intermediate!12404 (undefined!13216 Bool) (index!52009 (_ BitVec 32)) (x!133635 (_ BitVec 32))) (Undefined!12404) (MissingVacant!12404 (index!52010 (_ BitVec 32))) )
))
(declare-fun lt!652048 () SeekEntryResult!12404)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1496365 (= res!1017793 (= lt!652048 (Intermediate!12404 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-datatypes ((array!99763 0))(
  ( (array!99764 (arr!48141 (Array (_ BitVec 32) (_ BitVec 64))) (size!48692 (_ BitVec 32))) )
))
(declare-fun lt!652050 () array!99763)

(declare-fun lt!652053 () (_ BitVec 64))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99763 (_ BitVec 32)) SeekEntryResult!12404)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1496365 (= lt!652048 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!652053 mask!2687) lt!652053 lt!652050 mask!2687))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun a!2862 () array!99763)

(assert (=> b!1496365 (= lt!652053 (select (store (arr!48141 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1496366 () Bool)

(declare-fun e!838143 () Bool)

(declare-fun e!838151 () Bool)

(assert (=> b!1496366 (= e!838143 e!838151)))

(declare-fun res!1017787 () Bool)

(assert (=> b!1496366 (=> (not res!1017787) (not e!838151))))

(assert (=> b!1496366 (= res!1017787 (= (select (store (arr!48141 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1496366 (= lt!652050 (array!99764 (store (arr!48141 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48692 a!2862)))))

(declare-fun b!1496367 () Bool)

(declare-fun res!1017789 () Bool)

(assert (=> b!1496367 (=> (not res!1017789) (not e!838143))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1496367 (= res!1017789 (validKeyInArray!0 (select (arr!48141 a!2862) j!93)))))

(declare-fun b!1496368 () Bool)

(declare-fun res!1017799 () Bool)

(assert (=> b!1496368 (=> (not res!1017799) (not e!838143))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1496368 (= res!1017799 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48692 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48692 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48692 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun e!838148 () Bool)

(declare-fun b!1496369 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99763 (_ BitVec 32)) SeekEntryResult!12404)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99763 (_ BitVec 32)) SeekEntryResult!12404)

(assert (=> b!1496369 (= e!838148 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!652053 lt!652050 mask!2687) (seekEntryOrOpen!0 lt!652053 lt!652050 mask!2687)))))

(declare-fun b!1496370 () Bool)

(declare-fun lt!652051 () (_ BitVec 32))

(declare-fun e!838150 () Bool)

(assert (=> b!1496370 (= e!838150 (not (= lt!652048 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!652051 lt!652053 lt!652050 mask!2687))))))

(declare-fun b!1496371 () Bool)

(declare-fun res!1017790 () Bool)

(declare-fun e!838149 () Bool)

(assert (=> b!1496371 (=> (not res!1017790) (not e!838149))))

(assert (=> b!1496371 (= res!1017790 (= (seekEntryOrOpen!0 (select (arr!48141 a!2862) j!93) a!2862 mask!2687) (Found!12404 j!93)))))

(declare-fun b!1496372 () Bool)

(declare-fun res!1017798 () Bool)

(declare-fun e!838147 () Bool)

(assert (=> b!1496372 (=> res!1017798 e!838147)))

(declare-fun lt!652054 () SeekEntryResult!12404)

(assert (=> b!1496372 (= res!1017798 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!652051 (select (arr!48141 a!2862) j!93) a!2862 mask!2687) lt!652054)))))

(declare-fun b!1496373 () Bool)

(assert (=> b!1496373 (= e!838150 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!652051 intermediateAfterIndex!19 lt!652053 lt!652050 mask!2687) (seekEntryOrOpen!0 lt!652053 lt!652050 mask!2687))))))

(declare-fun b!1496374 () Bool)

(declare-fun res!1017792 () Bool)

(assert (=> b!1496374 (=> (not res!1017792) (not e!838143))))

(assert (=> b!1496374 (= res!1017792 (and (= (size!48692 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48692 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48692 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1496375 () Bool)

(assert (=> b!1496375 (= e!838149 (or (= (select (arr!48141 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48141 a!2862) intermediateBeforeIndex!19) (select (arr!48141 a!2862) j!93))))))

(declare-fun res!1017791 () Bool)

(assert (=> start!127388 (=> (not res!1017791) (not e!838143))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127388 (= res!1017791 (validMask!0 mask!2687))))

(assert (=> start!127388 e!838143))

(assert (=> start!127388 true))

(declare-fun array_inv!37086 (array!99763) Bool)

(assert (=> start!127388 (array_inv!37086 a!2862)))

(declare-fun b!1496376 () Bool)

(assert (=> b!1496376 (= e!838147 true)))

(declare-fun lt!652049 () Bool)

(assert (=> b!1496376 (= lt!652049 e!838150)))

(declare-fun c!138826 () Bool)

(assert (=> b!1496376 (= c!138826 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1496377 () Bool)

(declare-fun res!1017804 () Bool)

(assert (=> b!1496377 (=> (not res!1017804) (not e!838143))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99763 (_ BitVec 32)) Bool)

(assert (=> b!1496377 (= res!1017804 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1496378 () Bool)

(declare-fun e!838142 () Bool)

(assert (=> b!1496378 (= e!838142 e!838147)))

(declare-fun res!1017802 () Bool)

(assert (=> b!1496378 (=> res!1017802 e!838147)))

(assert (=> b!1496378 (= res!1017802 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!652051 #b00000000000000000000000000000000) (bvsge lt!652051 (size!48692 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1496378 (= lt!652051 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1496379 () Bool)

(declare-fun res!1017800 () Bool)

(assert (=> b!1496379 (=> (not res!1017800) (not e!838145))))

(assert (=> b!1496379 (= res!1017800 e!838148)))

(declare-fun c!138827 () Bool)

(assert (=> b!1496379 (= c!138827 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1496380 () Bool)

(declare-fun res!1017803 () Bool)

(assert (=> b!1496380 (=> (not res!1017803) (not e!838145))))

(assert (=> b!1496380 (= res!1017803 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1496381 () Bool)

(assert (=> b!1496381 (= e!838148 (= lt!652048 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!652053 lt!652050 mask!2687)))))

(declare-fun b!1496382 () Bool)

(declare-fun res!1017796 () Bool)

(assert (=> b!1496382 (=> (not res!1017796) (not e!838143))))

(assert (=> b!1496382 (= res!1017796 (validKeyInArray!0 (select (arr!48141 a!2862) i!1006)))))

(declare-fun b!1496383 () Bool)

(declare-fun res!1017801 () Bool)

(assert (=> b!1496383 (=> (not res!1017801) (not e!838143))))

(declare-datatypes ((List!34822 0))(
  ( (Nil!34819) (Cons!34818 (h!36216 (_ BitVec 64)) (t!49523 List!34822)) )
))
(declare-fun arrayNoDuplicates!0 (array!99763 (_ BitVec 32) List!34822) Bool)

(assert (=> b!1496383 (= res!1017801 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34819))))

(declare-fun b!1496384 () Bool)

(declare-fun res!1017797 () Bool)

(assert (=> b!1496384 (=> (not res!1017797) (not e!838146))))

(assert (=> b!1496384 (= res!1017797 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48141 a!2862) j!93) a!2862 mask!2687) lt!652054))))

(declare-fun b!1496385 () Bool)

(assert (=> b!1496385 (= e!838145 (not e!838142))))

(declare-fun res!1017794 () Bool)

(assert (=> b!1496385 (=> res!1017794 e!838142)))

(assert (=> b!1496385 (= res!1017794 (or (and (= (select (arr!48141 a!2862) index!646) (select (store (arr!48141 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48141 a!2862) index!646) (select (arr!48141 a!2862) j!93))) (= (select (arr!48141 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1496385 e!838149))

(declare-fun res!1017795 () Bool)

(assert (=> b!1496385 (=> (not res!1017795) (not e!838149))))

(assert (=> b!1496385 (= res!1017795 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!50096 0))(
  ( (Unit!50097) )
))
(declare-fun lt!652052 () Unit!50096)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99763 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50096)

(assert (=> b!1496385 (= lt!652052 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1496386 () Bool)

(assert (=> b!1496386 (= e!838151 e!838146)))

(declare-fun res!1017788 () Bool)

(assert (=> b!1496386 (=> (not res!1017788) (not e!838146))))

(assert (=> b!1496386 (= res!1017788 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48141 a!2862) j!93) mask!2687) (select (arr!48141 a!2862) j!93) a!2862 mask!2687) lt!652054))))

(assert (=> b!1496386 (= lt!652054 (Intermediate!12404 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(assert (= (and start!127388 res!1017791) b!1496374))

(assert (= (and b!1496374 res!1017792) b!1496382))

(assert (= (and b!1496382 res!1017796) b!1496367))

(assert (= (and b!1496367 res!1017789) b!1496377))

(assert (= (and b!1496377 res!1017804) b!1496383))

(assert (= (and b!1496383 res!1017801) b!1496368))

(assert (= (and b!1496368 res!1017799) b!1496366))

(assert (= (and b!1496366 res!1017787) b!1496386))

(assert (= (and b!1496386 res!1017788) b!1496384))

(assert (= (and b!1496384 res!1017797) b!1496365))

(assert (= (and b!1496365 res!1017793) b!1496379))

(assert (= (and b!1496379 c!138827) b!1496381))

(assert (= (and b!1496379 (not c!138827)) b!1496369))

(assert (= (and b!1496379 res!1017800) b!1496380))

(assert (= (and b!1496380 res!1017803) b!1496385))

(assert (= (and b!1496385 res!1017795) b!1496371))

(assert (= (and b!1496371 res!1017790) b!1496375))

(assert (= (and b!1496385 (not res!1017794)) b!1496378))

(assert (= (and b!1496378 (not res!1017802)) b!1496372))

(assert (= (and b!1496372 (not res!1017798)) b!1496376))

(assert (= (and b!1496376 c!138826) b!1496370))

(assert (= (and b!1496376 (not c!138826)) b!1496373))

(declare-fun m!1379609 () Bool)

(assert (=> b!1496366 m!1379609))

(declare-fun m!1379611 () Bool)

(assert (=> b!1496366 m!1379611))

(declare-fun m!1379613 () Bool)

(assert (=> start!127388 m!1379613))

(declare-fun m!1379615 () Bool)

(assert (=> start!127388 m!1379615))

(declare-fun m!1379617 () Bool)

(assert (=> b!1496385 m!1379617))

(assert (=> b!1496385 m!1379609))

(declare-fun m!1379619 () Bool)

(assert (=> b!1496385 m!1379619))

(declare-fun m!1379621 () Bool)

(assert (=> b!1496385 m!1379621))

(declare-fun m!1379623 () Bool)

(assert (=> b!1496385 m!1379623))

(declare-fun m!1379625 () Bool)

(assert (=> b!1496385 m!1379625))

(assert (=> b!1496371 m!1379625))

(assert (=> b!1496371 m!1379625))

(declare-fun m!1379627 () Bool)

(assert (=> b!1496371 m!1379627))

(assert (=> b!1496367 m!1379625))

(assert (=> b!1496367 m!1379625))

(declare-fun m!1379629 () Bool)

(assert (=> b!1496367 m!1379629))

(declare-fun m!1379631 () Bool)

(assert (=> b!1496382 m!1379631))

(assert (=> b!1496382 m!1379631))

(declare-fun m!1379633 () Bool)

(assert (=> b!1496382 m!1379633))

(declare-fun m!1379635 () Bool)

(assert (=> b!1496369 m!1379635))

(declare-fun m!1379637 () Bool)

(assert (=> b!1496369 m!1379637))

(declare-fun m!1379639 () Bool)

(assert (=> b!1496377 m!1379639))

(assert (=> b!1496386 m!1379625))

(assert (=> b!1496386 m!1379625))

(declare-fun m!1379641 () Bool)

(assert (=> b!1496386 m!1379641))

(assert (=> b!1496386 m!1379641))

(assert (=> b!1496386 m!1379625))

(declare-fun m!1379643 () Bool)

(assert (=> b!1496386 m!1379643))

(declare-fun m!1379645 () Bool)

(assert (=> b!1496373 m!1379645))

(assert (=> b!1496373 m!1379637))

(assert (=> b!1496384 m!1379625))

(assert (=> b!1496384 m!1379625))

(declare-fun m!1379647 () Bool)

(assert (=> b!1496384 m!1379647))

(declare-fun m!1379649 () Bool)

(assert (=> b!1496378 m!1379649))

(declare-fun m!1379651 () Bool)

(assert (=> b!1496381 m!1379651))

(assert (=> b!1496372 m!1379625))

(assert (=> b!1496372 m!1379625))

(declare-fun m!1379653 () Bool)

(assert (=> b!1496372 m!1379653))

(declare-fun m!1379655 () Bool)

(assert (=> b!1496383 m!1379655))

(declare-fun m!1379657 () Bool)

(assert (=> b!1496375 m!1379657))

(assert (=> b!1496375 m!1379625))

(declare-fun m!1379659 () Bool)

(assert (=> b!1496370 m!1379659))

(declare-fun m!1379661 () Bool)

(assert (=> b!1496365 m!1379661))

(assert (=> b!1496365 m!1379661))

(declare-fun m!1379663 () Bool)

(assert (=> b!1496365 m!1379663))

(assert (=> b!1496365 m!1379609))

(declare-fun m!1379665 () Bool)

(assert (=> b!1496365 m!1379665))

(push 1)

(assert (not b!1496381))

(assert (not b!1496383))

(assert (not b!1496370))

(assert (not b!1496382))

(assert (not b!1496371))

(assert (not b!1496377))

(assert (not b!1496385))

(assert (not start!127388))

(assert (not b!1496365))

(assert (not b!1496386))

(assert (not b!1496378))

(assert (not b!1496373))

(assert (not b!1496372))

(assert (not b!1496384))

(assert (not b!1496369))

(assert (not b!1496367))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

