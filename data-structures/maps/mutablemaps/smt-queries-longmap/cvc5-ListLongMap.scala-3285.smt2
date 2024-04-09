; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45664 () Bool)

(assert start!45664)

(declare-fun b!503410 () Bool)

(declare-datatypes ((SeekEntryResult!4041 0))(
  ( (MissingZero!4041 (index!18352 (_ BitVec 32))) (Found!4041 (index!18353 (_ BitVec 32))) (Intermediate!4041 (undefined!4853 Bool) (index!18354 (_ BitVec 32)) (x!47405 (_ BitVec 32))) (Undefined!4041) (MissingVacant!4041 (index!18355 (_ BitVec 32))) )
))
(declare-fun lt!229096 () SeekEntryResult!4041)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!32380 0))(
  ( (array!32381 (arr!15567 (Array (_ BitVec 32) (_ BitVec 64))) (size!15931 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32380)

(declare-fun lt!229093 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun e!294810 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32380 (_ BitVec 32)) SeekEntryResult!4041)

(assert (=> b!503410 (= e!294810 (not (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!229093 (index!18354 lt!229096) (select (arr!15567 a!3235) j!176) a!3235 mask!3524) (Found!4041 j!176))))))

(declare-fun b!503411 () Bool)

(declare-fun res!304851 () Bool)

(declare-fun e!294804 () Bool)

(assert (=> b!503411 (=> (not res!304851) (not e!294804))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!503411 (= res!304851 (validKeyInArray!0 k!2280))))

(declare-fun b!503412 () Bool)

(declare-fun res!304853 () Bool)

(assert (=> b!503412 (=> (not res!304853) (not e!294804))))

(assert (=> b!503412 (= res!304853 (validKeyInArray!0 (select (arr!15567 a!3235) j!176)))))

(declare-fun b!503413 () Bool)

(declare-fun e!294808 () Bool)

(assert (=> b!503413 (= e!294808 false)))

(declare-fun b!503414 () Bool)

(declare-fun res!304843 () Bool)

(assert (=> b!503414 (=> (not res!304843) (not e!294804))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!503414 (= res!304843 (and (= (size!15931 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15931 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15931 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!503415 () Bool)

(declare-fun res!304840 () Bool)

(assert (=> b!503415 (=> (not res!304840) (not e!294804))))

(declare-fun arrayContainsKey!0 (array!32380 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!503415 (= res!304840 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!503416 () Bool)

(declare-fun res!304848 () Bool)

(declare-fun e!294803 () Bool)

(assert (=> b!503416 (=> (not res!304848) (not e!294803))))

(declare-datatypes ((List!9778 0))(
  ( (Nil!9775) (Cons!9774 (h!10651 (_ BitVec 64)) (t!16014 List!9778)) )
))
(declare-fun arrayNoDuplicates!0 (array!32380 (_ BitVec 32) List!9778) Bool)

(assert (=> b!503416 (= res!304848 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9775))))

(declare-fun b!503417 () Bool)

(declare-fun e!294811 () Bool)

(assert (=> b!503417 (= e!294811 true)))

(declare-fun lt!229102 () array!32380)

(declare-fun lt!229095 () SeekEntryResult!4041)

(declare-fun lt!229097 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32380 (_ BitVec 32)) SeekEntryResult!4041)

(assert (=> b!503417 (= lt!229095 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229093 lt!229097 lt!229102 mask!3524))))

(declare-fun b!503418 () Bool)

(declare-fun res!304841 () Bool)

(assert (=> b!503418 (=> res!304841 e!294811)))

(assert (=> b!503418 (= res!304841 e!294810)))

(declare-fun res!304845 () Bool)

(assert (=> b!503418 (=> (not res!304845) (not e!294810))))

(assert (=> b!503418 (= res!304845 (bvsgt #b00000000000000000000000000000000 (x!47405 lt!229096)))))

(declare-fun b!503419 () Bool)

(declare-fun res!304839 () Bool)

(declare-fun e!294807 () Bool)

(assert (=> b!503419 (=> res!304839 e!294807)))

(assert (=> b!503419 (= res!304839 (or (undefined!4853 lt!229096) (not (is-Intermediate!4041 lt!229096))))))

(declare-fun b!503420 () Bool)

(declare-fun res!304849 () Bool)

(assert (=> b!503420 (=> (not res!304849) (not e!294803))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32380 (_ BitVec 32)) Bool)

(assert (=> b!503420 (= res!304849 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun res!304846 () Bool)

(assert (=> start!45664 (=> (not res!304846) (not e!294804))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45664 (= res!304846 (validMask!0 mask!3524))))

(assert (=> start!45664 e!294804))

(assert (=> start!45664 true))

(declare-fun array_inv!11341 (array!32380) Bool)

(assert (=> start!45664 (array_inv!11341 a!3235)))

(declare-fun b!503421 () Bool)

(assert (=> b!503421 (= e!294807 e!294811)))

(declare-fun res!304847 () Bool)

(assert (=> b!503421 (=> res!304847 e!294811)))

(assert (=> b!503421 (= res!304847 (or (bvsgt (x!47405 lt!229096) #b01111111111111111111111111111110) (bvslt lt!229093 #b00000000000000000000000000000000) (bvsge lt!229093 (size!15931 a!3235)) (bvslt (index!18354 lt!229096) #b00000000000000000000000000000000) (bvsge (index!18354 lt!229096) (size!15931 a!3235)) (not (= lt!229096 (Intermediate!4041 false (index!18354 lt!229096) (x!47405 lt!229096))))))))

(assert (=> b!503421 (= (index!18354 lt!229096) i!1204)))

(declare-datatypes ((Unit!15254 0))(
  ( (Unit!15255) )
))
(declare-fun lt!229098 () Unit!15254)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!32380 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15254)

(assert (=> b!503421 (= lt!229098 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!229093 #b00000000000000000000000000000000 (index!18354 lt!229096) (x!47405 lt!229096) mask!3524))))

(assert (=> b!503421 (and (or (= (select (arr!15567 a!3235) (index!18354 lt!229096)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15567 a!3235) (index!18354 lt!229096)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15567 a!3235) (index!18354 lt!229096)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15567 a!3235) (index!18354 lt!229096)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!229094 () Unit!15254)

(declare-fun e!294809 () Unit!15254)

(assert (=> b!503421 (= lt!229094 e!294809)))

(declare-fun c!59564 () Bool)

(assert (=> b!503421 (= c!59564 (= (select (arr!15567 a!3235) (index!18354 lt!229096)) (select (arr!15567 a!3235) j!176)))))

(assert (=> b!503421 (and (bvslt (x!47405 lt!229096) #b01111111111111111111111111111110) (or (= (select (arr!15567 a!3235) (index!18354 lt!229096)) (select (arr!15567 a!3235) j!176)) (= (select (arr!15567 a!3235) (index!18354 lt!229096)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15567 a!3235) (index!18354 lt!229096)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!503422 () Bool)

(declare-fun Unit!15256 () Unit!15254)

(assert (=> b!503422 (= e!294809 Unit!15256)))

(declare-fun e!294806 () Bool)

(declare-fun b!503423 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32380 (_ BitVec 32)) SeekEntryResult!4041)

(assert (=> b!503423 (= e!294806 (= (seekEntryOrOpen!0 (select (arr!15567 a!3235) j!176) a!3235 mask!3524) (Found!4041 j!176)))))

(declare-fun b!503424 () Bool)

(assert (=> b!503424 (= e!294804 e!294803)))

(declare-fun res!304844 () Bool)

(assert (=> b!503424 (=> (not res!304844) (not e!294803))))

(declare-fun lt!229103 () SeekEntryResult!4041)

(assert (=> b!503424 (= res!304844 (or (= lt!229103 (MissingZero!4041 i!1204)) (= lt!229103 (MissingVacant!4041 i!1204))))))

(assert (=> b!503424 (= lt!229103 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!503425 () Bool)

(declare-fun Unit!15257 () Unit!15254)

(assert (=> b!503425 (= e!294809 Unit!15257)))

(declare-fun lt!229101 () Unit!15254)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32380 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15254)

(assert (=> b!503425 (= lt!229101 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!229093 #b00000000000000000000000000000000 (index!18354 lt!229096) (x!47405 lt!229096) mask!3524))))

(declare-fun res!304842 () Bool)

(assert (=> b!503425 (= res!304842 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229093 lt!229097 lt!229102 mask!3524) (Intermediate!4041 false (index!18354 lt!229096) (x!47405 lt!229096))))))

(assert (=> b!503425 (=> (not res!304842) (not e!294808))))

(assert (=> b!503425 e!294808))

(declare-fun b!503426 () Bool)

(assert (=> b!503426 (= e!294803 (not e!294807))))

(declare-fun res!304852 () Bool)

(assert (=> b!503426 (=> res!304852 e!294807)))

(declare-fun lt!229099 () (_ BitVec 32))

(assert (=> b!503426 (= res!304852 (= lt!229096 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229099 lt!229097 lt!229102 mask!3524)))))

(assert (=> b!503426 (= lt!229096 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229093 (select (arr!15567 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!503426 (= lt!229099 (toIndex!0 lt!229097 mask!3524))))

(assert (=> b!503426 (= lt!229097 (select (store (arr!15567 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!503426 (= lt!229093 (toIndex!0 (select (arr!15567 a!3235) j!176) mask!3524))))

(assert (=> b!503426 (= lt!229102 (array!32381 (store (arr!15567 a!3235) i!1204 k!2280) (size!15931 a!3235)))))

(assert (=> b!503426 e!294806))

(declare-fun res!304850 () Bool)

(assert (=> b!503426 (=> (not res!304850) (not e!294806))))

(assert (=> b!503426 (= res!304850 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!229100 () Unit!15254)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32380 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15254)

(assert (=> b!503426 (= lt!229100 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (= (and start!45664 res!304846) b!503414))

(assert (= (and b!503414 res!304843) b!503412))

(assert (= (and b!503412 res!304853) b!503411))

(assert (= (and b!503411 res!304851) b!503415))

(assert (= (and b!503415 res!304840) b!503424))

(assert (= (and b!503424 res!304844) b!503420))

(assert (= (and b!503420 res!304849) b!503416))

(assert (= (and b!503416 res!304848) b!503426))

(assert (= (and b!503426 res!304850) b!503423))

(assert (= (and b!503426 (not res!304852)) b!503419))

(assert (= (and b!503419 (not res!304839)) b!503421))

(assert (= (and b!503421 c!59564) b!503425))

(assert (= (and b!503421 (not c!59564)) b!503422))

(assert (= (and b!503425 res!304842) b!503413))

(assert (= (and b!503421 (not res!304847)) b!503418))

(assert (= (and b!503418 res!304845) b!503410))

(assert (= (and b!503418 (not res!304841)) b!503417))

(declare-fun m!484267 () Bool)

(assert (=> b!503411 m!484267))

(declare-fun m!484269 () Bool)

(assert (=> b!503421 m!484269))

(declare-fun m!484271 () Bool)

(assert (=> b!503421 m!484271))

(declare-fun m!484273 () Bool)

(assert (=> b!503421 m!484273))

(assert (=> b!503423 m!484273))

(assert (=> b!503423 m!484273))

(declare-fun m!484275 () Bool)

(assert (=> b!503423 m!484275))

(declare-fun m!484277 () Bool)

(assert (=> b!503426 m!484277))

(declare-fun m!484279 () Bool)

(assert (=> b!503426 m!484279))

(declare-fun m!484281 () Bool)

(assert (=> b!503426 m!484281))

(declare-fun m!484283 () Bool)

(assert (=> b!503426 m!484283))

(assert (=> b!503426 m!484273))

(declare-fun m!484285 () Bool)

(assert (=> b!503426 m!484285))

(assert (=> b!503426 m!484273))

(declare-fun m!484287 () Bool)

(assert (=> b!503426 m!484287))

(assert (=> b!503426 m!484273))

(declare-fun m!484289 () Bool)

(assert (=> b!503426 m!484289))

(declare-fun m!484291 () Bool)

(assert (=> b!503426 m!484291))

(declare-fun m!484293 () Bool)

(assert (=> b!503417 m!484293))

(declare-fun m!484295 () Bool)

(assert (=> b!503420 m!484295))

(declare-fun m!484297 () Bool)

(assert (=> b!503416 m!484297))

(declare-fun m!484299 () Bool)

(assert (=> start!45664 m!484299))

(declare-fun m!484301 () Bool)

(assert (=> start!45664 m!484301))

(assert (=> b!503410 m!484273))

(assert (=> b!503410 m!484273))

(declare-fun m!484303 () Bool)

(assert (=> b!503410 m!484303))

(declare-fun m!484305 () Bool)

(assert (=> b!503424 m!484305))

(declare-fun m!484307 () Bool)

(assert (=> b!503425 m!484307))

(assert (=> b!503425 m!484293))

(assert (=> b!503412 m!484273))

(assert (=> b!503412 m!484273))

(declare-fun m!484309 () Bool)

(assert (=> b!503412 m!484309))

(declare-fun m!484311 () Bool)

(assert (=> b!503415 m!484311))

(push 1)

