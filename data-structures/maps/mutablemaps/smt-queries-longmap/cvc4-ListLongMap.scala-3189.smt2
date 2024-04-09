; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44774 () Bool)

(assert start!44774)

(declare-fun b!491220 () Bool)

(declare-fun res!294314 () Bool)

(declare-fun e!288640 () Bool)

(assert (=> b!491220 (=> (not res!294314) (not e!288640))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!31793 0))(
  ( (array!31794 (arr!15281 (Array (_ BitVec 32) (_ BitVec 64))) (size!15645 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31793)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!491220 (= res!294314 (and (= (size!15645 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15645 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15645 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!491221 () Bool)

(declare-fun res!294312 () Bool)

(assert (=> b!491221 (=> (not res!294312) (not e!288640))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!491221 (= res!294312 (validKeyInArray!0 k!2280))))

(declare-fun b!491222 () Bool)

(declare-fun res!294309 () Bool)

(declare-fun e!288638 () Bool)

(assert (=> b!491222 (=> (not res!294309) (not e!288638))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31793 (_ BitVec 32)) Bool)

(assert (=> b!491222 (= res!294309 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!491223 () Bool)

(declare-fun res!294310 () Bool)

(assert (=> b!491223 (=> (not res!294310) (not e!288640))))

(declare-fun arrayContainsKey!0 (array!31793 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!491223 (= res!294310 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!491224 () Bool)

(declare-fun res!294308 () Bool)

(assert (=> b!491224 (=> (not res!294308) (not e!288640))))

(assert (=> b!491224 (= res!294308 (validKeyInArray!0 (select (arr!15281 a!3235) j!176)))))

(declare-fun b!491225 () Bool)

(declare-fun e!288639 () Bool)

(assert (=> b!491225 (= e!288638 (not e!288639))))

(declare-fun res!294307 () Bool)

(assert (=> b!491225 (=> res!294307 e!288639)))

(declare-fun lt!222101 () (_ BitVec 64))

(declare-fun lt!222099 () array!31793)

(declare-datatypes ((SeekEntryResult!3755 0))(
  ( (MissingZero!3755 (index!17199 (_ BitVec 32))) (Found!3755 (index!17200 (_ BitVec 32))) (Intermediate!3755 (undefined!4567 Bool) (index!17201 (_ BitVec 32)) (x!46312 (_ BitVec 32))) (Undefined!3755) (MissingVacant!3755 (index!17202 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31793 (_ BitVec 32)) SeekEntryResult!3755)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!491225 (= res!294307 (not (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15281 a!3235) j!176) mask!3524) (select (arr!15281 a!3235) j!176) a!3235 mask!3524) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!222101 mask!3524) lt!222101 lt!222099 mask!3524))))))

(assert (=> b!491225 (= lt!222101 (select (store (arr!15281 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!491225 (= lt!222099 (array!31794 (store (arr!15281 a!3235) i!1204 k!2280) (size!15645 a!3235)))))

(declare-fun lt!222103 () SeekEntryResult!3755)

(assert (=> b!491225 (= lt!222103 (Found!3755 j!176))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31793 (_ BitVec 32)) SeekEntryResult!3755)

(assert (=> b!491225 (= lt!222103 (seekEntryOrOpen!0 (select (arr!15281 a!3235) j!176) a!3235 mask!3524))))

(assert (=> b!491225 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!14448 0))(
  ( (Unit!14449) )
))
(declare-fun lt!222102 () Unit!14448)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31793 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14448)

(assert (=> b!491225 (= lt!222102 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun res!294313 () Bool)

(assert (=> start!44774 (=> (not res!294313) (not e!288640))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44774 (= res!294313 (validMask!0 mask!3524))))

(assert (=> start!44774 e!288640))

(assert (=> start!44774 true))

(declare-fun array_inv!11055 (array!31793) Bool)

(assert (=> start!44774 (array_inv!11055 a!3235)))

(declare-fun b!491226 () Bool)

(assert (=> b!491226 (= e!288640 e!288638)))

(declare-fun res!294306 () Bool)

(assert (=> b!491226 (=> (not res!294306) (not e!288638))))

(declare-fun lt!222104 () SeekEntryResult!3755)

(assert (=> b!491226 (= res!294306 (or (= lt!222104 (MissingZero!3755 i!1204)) (= lt!222104 (MissingVacant!3755 i!1204))))))

(assert (=> b!491226 (= lt!222104 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!491227 () Bool)

(assert (=> b!491227 (= e!288639 true)))

(assert (=> b!491227 (= lt!222103 (seekEntryOrOpen!0 lt!222101 lt!222099 mask!3524))))

(declare-fun lt!222100 () Unit!14448)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 (array!31793 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!14448)

(assert (=> b!491227 (= lt!222100 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 a!3235 i!1204 k!2280 j!176 mask!3524))))

(declare-fun b!491228 () Bool)

(declare-fun res!294311 () Bool)

(assert (=> b!491228 (=> (not res!294311) (not e!288638))))

(declare-datatypes ((List!9492 0))(
  ( (Nil!9489) (Cons!9488 (h!10350 (_ BitVec 64)) (t!15728 List!9492)) )
))
(declare-fun arrayNoDuplicates!0 (array!31793 (_ BitVec 32) List!9492) Bool)

(assert (=> b!491228 (= res!294311 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9489))))

(assert (= (and start!44774 res!294313) b!491220))

(assert (= (and b!491220 res!294314) b!491224))

(assert (= (and b!491224 res!294308) b!491221))

(assert (= (and b!491221 res!294312) b!491223))

(assert (= (and b!491223 res!294310) b!491226))

(assert (= (and b!491226 res!294306) b!491222))

(assert (= (and b!491222 res!294309) b!491228))

(assert (= (and b!491228 res!294311) b!491225))

(assert (= (and b!491225 (not res!294307)) b!491227))

(declare-fun m!471825 () Bool)

(assert (=> b!491228 m!471825))

(declare-fun m!471827 () Bool)

(assert (=> b!491225 m!471827))

(declare-fun m!471829 () Bool)

(assert (=> b!491225 m!471829))

(declare-fun m!471831 () Bool)

(assert (=> b!491225 m!471831))

(declare-fun m!471833 () Bool)

(assert (=> b!491225 m!471833))

(declare-fun m!471835 () Bool)

(assert (=> b!491225 m!471835))

(declare-fun m!471837 () Bool)

(assert (=> b!491225 m!471837))

(declare-fun m!471839 () Bool)

(assert (=> b!491225 m!471839))

(declare-fun m!471841 () Bool)

(assert (=> b!491225 m!471841))

(assert (=> b!491225 m!471827))

(assert (=> b!491225 m!471839))

(assert (=> b!491225 m!471837))

(assert (=> b!491225 m!471839))

(declare-fun m!471843 () Bool)

(assert (=> b!491225 m!471843))

(assert (=> b!491225 m!471839))

(declare-fun m!471845 () Bool)

(assert (=> b!491225 m!471845))

(declare-fun m!471847 () Bool)

(assert (=> b!491227 m!471847))

(declare-fun m!471849 () Bool)

(assert (=> b!491227 m!471849))

(declare-fun m!471851 () Bool)

(assert (=> b!491221 m!471851))

(declare-fun m!471853 () Bool)

(assert (=> start!44774 m!471853))

(declare-fun m!471855 () Bool)

(assert (=> start!44774 m!471855))

(assert (=> b!491224 m!471839))

(assert (=> b!491224 m!471839))

(declare-fun m!471857 () Bool)

(assert (=> b!491224 m!471857))

(declare-fun m!471859 () Bool)

(assert (=> b!491223 m!471859))

(declare-fun m!471861 () Bool)

(assert (=> b!491226 m!471861))

(declare-fun m!471863 () Bool)

(assert (=> b!491222 m!471863))

(push 1)

