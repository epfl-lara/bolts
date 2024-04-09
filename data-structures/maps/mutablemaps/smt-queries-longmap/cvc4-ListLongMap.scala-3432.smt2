; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!47726 () Bool)

(assert start!47726)

(declare-fun b!524641 () Bool)

(declare-fun res!321647 () Bool)

(declare-fun e!305951 () Bool)

(assert (=> b!524641 (=> (not res!321647) (not e!305951))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!33323 0))(
  ( (array!33324 (arr!16010 (Array (_ BitVec 32) (_ BitVec 64))) (size!16374 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33323)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!524641 (= res!321647 (and (= (size!16374 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16374 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16374 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!524642 () Bool)

(declare-fun res!321643 () Bool)

(declare-fun e!305953 () Bool)

(assert (=> b!524642 (=> (not res!321643) (not e!305953))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33323 (_ BitVec 32)) Bool)

(assert (=> b!524642 (= res!321643 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!524643 () Bool)

(declare-fun res!321653 () Bool)

(assert (=> b!524643 (=> (not res!321653) (not e!305953))))

(declare-datatypes ((List!10221 0))(
  ( (Nil!10218) (Cons!10217 (h!11148 (_ BitVec 64)) (t!16457 List!10221)) )
))
(declare-fun arrayNoDuplicates!0 (array!33323 (_ BitVec 32) List!10221) Bool)

(assert (=> b!524643 (= res!321653 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10218))))

(declare-fun b!524644 () Bool)

(declare-fun e!305954 () Bool)

(assert (=> b!524644 (= e!305954 false)))

(declare-fun b!524645 () Bool)

(declare-fun res!321650 () Bool)

(assert (=> b!524645 (=> (not res!321650) (not e!305951))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!524645 (= res!321650 (validKeyInArray!0 (select (arr!16010 a!3235) j!176)))))

(declare-fun b!524646 () Bool)

(declare-fun res!321652 () Bool)

(assert (=> b!524646 (=> (not res!321652) (not e!305951))))

(declare-fun k!2280 () (_ BitVec 64))

(assert (=> b!524646 (= res!321652 (validKeyInArray!0 k!2280))))

(declare-fun b!524647 () Bool)

(declare-datatypes ((Unit!16402 0))(
  ( (Unit!16403) )
))
(declare-fun e!305950 () Unit!16402)

(declare-fun Unit!16404 () Unit!16402)

(assert (=> b!524647 (= e!305950 Unit!16404)))

(declare-datatypes ((SeekEntryResult!4484 0))(
  ( (MissingZero!4484 (index!20148 (_ BitVec 32))) (Found!4484 (index!20149 (_ BitVec 32))) (Intermediate!4484 (undefined!5296 Bool) (index!20150 (_ BitVec 32)) (x!49156 (_ BitVec 32))) (Undefined!4484) (MissingVacant!4484 (index!20151 (_ BitVec 32))) )
))
(declare-fun lt!240934 () SeekEntryResult!4484)

(declare-fun lt!240935 () Unit!16402)

(declare-fun lt!240931 () (_ BitVec 32))

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33323 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16402)

(assert (=> b!524647 (= lt!240935 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!240931 #b00000000000000000000000000000000 (index!20150 lt!240934) (x!49156 lt!240934) mask!3524))))

(declare-fun res!321648 () Bool)

(declare-fun lt!240933 () array!33323)

(declare-fun lt!240926 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33323 (_ BitVec 32)) SeekEntryResult!4484)

(assert (=> b!524647 (= res!321648 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!240931 lt!240926 lt!240933 mask!3524) (Intermediate!4484 false (index!20150 lt!240934) (x!49156 lt!240934))))))

(assert (=> b!524647 (=> (not res!321648) (not e!305954))))

(assert (=> b!524647 e!305954))

(declare-fun b!524648 () Bool)

(assert (=> b!524648 (= e!305951 e!305953)))

(declare-fun res!321645 () Bool)

(assert (=> b!524648 (=> (not res!321645) (not e!305953))))

(declare-fun lt!240932 () SeekEntryResult!4484)

(assert (=> b!524648 (= res!321645 (or (= lt!240932 (MissingZero!4484 i!1204)) (= lt!240932 (MissingVacant!4484 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33323 (_ BitVec 32)) SeekEntryResult!4484)

(assert (=> b!524648 (= lt!240932 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!524649 () Bool)

(declare-fun e!305956 () Bool)

(assert (=> b!524649 (= e!305953 (not e!305956))))

(declare-fun res!321651 () Bool)

(assert (=> b!524649 (=> res!321651 e!305956)))

(declare-fun lt!240930 () (_ BitVec 32))

(assert (=> b!524649 (= res!321651 (= lt!240934 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!240930 lt!240926 lt!240933 mask!3524)))))

(assert (=> b!524649 (= lt!240934 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!240931 (select (arr!16010 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!524649 (= lt!240930 (toIndex!0 lt!240926 mask!3524))))

(assert (=> b!524649 (= lt!240926 (select (store (arr!16010 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!524649 (= lt!240931 (toIndex!0 (select (arr!16010 a!3235) j!176) mask!3524))))

(assert (=> b!524649 (= lt!240933 (array!33324 (store (arr!16010 a!3235) i!1204 k!2280) (size!16374 a!3235)))))

(declare-fun e!305955 () Bool)

(assert (=> b!524649 e!305955))

(declare-fun res!321649 () Bool)

(assert (=> b!524649 (=> (not res!321649) (not e!305955))))

(assert (=> b!524649 (= res!321649 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!240929 () Unit!16402)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33323 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16402)

(assert (=> b!524649 (= lt!240929 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!524650 () Bool)

(assert (=> b!524650 (= e!305956 true)))

(assert (=> b!524650 (= (index!20150 lt!240934) i!1204)))

(declare-fun lt!240928 () Unit!16402)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!33323 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16402)

(assert (=> b!524650 (= lt!240928 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!240931 #b00000000000000000000000000000000 (index!20150 lt!240934) (x!49156 lt!240934) mask!3524))))

(assert (=> b!524650 (and (or (= (select (arr!16010 a!3235) (index!20150 lt!240934)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16010 a!3235) (index!20150 lt!240934)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16010 a!3235) (index!20150 lt!240934)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16010 a!3235) (index!20150 lt!240934)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!240927 () Unit!16402)

(assert (=> b!524650 (= lt!240927 e!305950)))

(declare-fun c!61805 () Bool)

(assert (=> b!524650 (= c!61805 (= (select (arr!16010 a!3235) (index!20150 lt!240934)) (select (arr!16010 a!3235) j!176)))))

(assert (=> b!524650 (and (bvslt (x!49156 lt!240934) #b01111111111111111111111111111110) (or (= (select (arr!16010 a!3235) (index!20150 lt!240934)) (select (arr!16010 a!3235) j!176)) (= (select (arr!16010 a!3235) (index!20150 lt!240934)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16010 a!3235) (index!20150 lt!240934)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!524651 () Bool)

(declare-fun res!321646 () Bool)

(assert (=> b!524651 (=> res!321646 e!305956)))

(assert (=> b!524651 (= res!321646 (or (undefined!5296 lt!240934) (not (is-Intermediate!4484 lt!240934))))))

(declare-fun res!321644 () Bool)

(assert (=> start!47726 (=> (not res!321644) (not e!305951))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47726 (= res!321644 (validMask!0 mask!3524))))

(assert (=> start!47726 e!305951))

(assert (=> start!47726 true))

(declare-fun array_inv!11784 (array!33323) Bool)

(assert (=> start!47726 (array_inv!11784 a!3235)))

(declare-fun b!524652 () Bool)

(declare-fun res!321642 () Bool)

(assert (=> b!524652 (=> (not res!321642) (not e!305951))))

(declare-fun arrayContainsKey!0 (array!33323 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!524652 (= res!321642 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!524653 () Bool)

(declare-fun Unit!16405 () Unit!16402)

(assert (=> b!524653 (= e!305950 Unit!16405)))

(declare-fun b!524654 () Bool)

(assert (=> b!524654 (= e!305955 (= (seekEntryOrOpen!0 (select (arr!16010 a!3235) j!176) a!3235 mask!3524) (Found!4484 j!176)))))

(assert (= (and start!47726 res!321644) b!524641))

(assert (= (and b!524641 res!321647) b!524645))

(assert (= (and b!524645 res!321650) b!524646))

(assert (= (and b!524646 res!321652) b!524652))

(assert (= (and b!524652 res!321642) b!524648))

(assert (= (and b!524648 res!321645) b!524642))

(assert (= (and b!524642 res!321643) b!524643))

(assert (= (and b!524643 res!321653) b!524649))

(assert (= (and b!524649 res!321649) b!524654))

(assert (= (and b!524649 (not res!321651)) b!524651))

(assert (= (and b!524651 (not res!321646)) b!524650))

(assert (= (and b!524650 c!61805) b!524647))

(assert (= (and b!524650 (not c!61805)) b!524653))

(assert (= (and b!524647 res!321648) b!524644))

(declare-fun m!505307 () Bool)

(assert (=> b!524649 m!505307))

(declare-fun m!505309 () Bool)

(assert (=> b!524649 m!505309))

(declare-fun m!505311 () Bool)

(assert (=> b!524649 m!505311))

(declare-fun m!505313 () Bool)

(assert (=> b!524649 m!505313))

(declare-fun m!505315 () Bool)

(assert (=> b!524649 m!505315))

(declare-fun m!505317 () Bool)

(assert (=> b!524649 m!505317))

(declare-fun m!505319 () Bool)

(assert (=> b!524649 m!505319))

(assert (=> b!524649 m!505317))

(declare-fun m!505321 () Bool)

(assert (=> b!524649 m!505321))

(assert (=> b!524649 m!505317))

(declare-fun m!505323 () Bool)

(assert (=> b!524649 m!505323))

(declare-fun m!505325 () Bool)

(assert (=> b!524652 m!505325))

(declare-fun m!505327 () Bool)

(assert (=> b!524643 m!505327))

(assert (=> b!524645 m!505317))

(assert (=> b!524645 m!505317))

(declare-fun m!505329 () Bool)

(assert (=> b!524645 m!505329))

(declare-fun m!505331 () Bool)

(assert (=> b!524646 m!505331))

(declare-fun m!505333 () Bool)

(assert (=> b!524647 m!505333))

(declare-fun m!505335 () Bool)

(assert (=> b!524647 m!505335))

(declare-fun m!505337 () Bool)

(assert (=> b!524642 m!505337))

(declare-fun m!505339 () Bool)

(assert (=> start!47726 m!505339))

(declare-fun m!505341 () Bool)

(assert (=> start!47726 m!505341))

(declare-fun m!505343 () Bool)

(assert (=> b!524648 m!505343))

(assert (=> b!524654 m!505317))

(assert (=> b!524654 m!505317))

(declare-fun m!505345 () Bool)

(assert (=> b!524654 m!505345))

(declare-fun m!505347 () Bool)

(assert (=> b!524650 m!505347))

(declare-fun m!505349 () Bool)

(assert (=> b!524650 m!505349))

(assert (=> b!524650 m!505317))

(push 1)

