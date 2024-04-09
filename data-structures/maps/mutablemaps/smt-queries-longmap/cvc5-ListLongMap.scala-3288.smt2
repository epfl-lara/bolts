; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45682 () Bool)

(assert start!45682)

(declare-fun b!503869 () Bool)

(declare-datatypes ((Unit!15290 0))(
  ( (Unit!15291) )
))
(declare-fun e!295052 () Unit!15290)

(declare-fun Unit!15292 () Unit!15290)

(assert (=> b!503869 (= e!295052 Unit!15292)))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun lt!229391 () Unit!15290)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun lt!229392 () (_ BitVec 32))

(declare-datatypes ((array!32398 0))(
  ( (array!32399 (arr!15576 (Array (_ BitVec 32) (_ BitVec 64))) (size!15940 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32398)

(declare-datatypes ((SeekEntryResult!4050 0))(
  ( (MissingZero!4050 (index!18388 (_ BitVec 32))) (Found!4050 (index!18389 (_ BitVec 32))) (Intermediate!4050 (undefined!4862 Bool) (index!18390 (_ BitVec 32)) (x!47438 (_ BitVec 32))) (Undefined!4050) (MissingVacant!4050 (index!18391 (_ BitVec 32))) )
))
(declare-fun lt!229399 () SeekEntryResult!4050)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32398 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15290)

(assert (=> b!503869 (= lt!229391 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!229392 #b00000000000000000000000000000000 (index!18390 lt!229399) (x!47438 lt!229399) mask!3524))))

(declare-fun res!305244 () Bool)

(declare-fun lt!229395 () (_ BitVec 64))

(declare-fun lt!229400 () array!32398)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32398 (_ BitVec 32)) SeekEntryResult!4050)

(assert (=> b!503869 (= res!305244 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229392 lt!229395 lt!229400 mask!3524) (Intermediate!4050 false (index!18390 lt!229399) (x!47438 lt!229399))))))

(declare-fun e!295051 () Bool)

(assert (=> b!503869 (=> (not res!305244) (not e!295051))))

(assert (=> b!503869 e!295051))

(declare-fun b!503870 () Bool)

(declare-fun e!295048 () Bool)

(assert (=> b!503870 (= e!295048 true)))

(declare-fun lt!229394 () SeekEntryResult!4050)

(assert (=> b!503870 (= lt!229394 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229392 lt!229395 lt!229400 mask!3524))))

(declare-fun b!503871 () Bool)

(declare-fun res!305258 () Bool)

(declare-fun e!295046 () Bool)

(assert (=> b!503871 (=> (not res!305258) (not e!295046))))

(declare-datatypes ((List!9787 0))(
  ( (Nil!9784) (Cons!9783 (h!10660 (_ BitVec 64)) (t!16023 List!9787)) )
))
(declare-fun arrayNoDuplicates!0 (array!32398 (_ BitVec 32) List!9787) Bool)

(assert (=> b!503871 (= res!305258 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9784))))

(declare-fun b!503872 () Bool)

(declare-fun res!305255 () Bool)

(declare-fun e!295050 () Bool)

(assert (=> b!503872 (=> res!305255 e!295050)))

(assert (=> b!503872 (= res!305255 (or (undefined!4862 lt!229399) (not (is-Intermediate!4050 lt!229399))))))

(declare-fun b!503873 () Bool)

(declare-fun e!295053 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32398 (_ BitVec 32)) SeekEntryResult!4050)

(assert (=> b!503873 (= e!295053 (= (seekEntryOrOpen!0 (select (arr!15576 a!3235) j!176) a!3235 mask!3524) (Found!4050 j!176)))))

(declare-fun b!503874 () Bool)

(declare-fun Unit!15293 () Unit!15290)

(assert (=> b!503874 (= e!295052 Unit!15293)))

(declare-fun b!503875 () Bool)

(declare-fun res!305253 () Bool)

(declare-fun e!295049 () Bool)

(assert (=> b!503875 (=> (not res!305253) (not e!295049))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!503875 (= res!305253 (validKeyInArray!0 k!2280))))

(declare-fun b!503876 () Bool)

(declare-fun e!295047 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32398 (_ BitVec 32)) SeekEntryResult!4050)

(assert (=> b!503876 (= e!295047 (not (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!229392 (index!18390 lt!229399) (select (arr!15576 a!3235) j!176) a!3235 mask!3524) (Found!4050 j!176))))))

(declare-fun b!503877 () Bool)

(declare-fun res!305248 () Bool)

(assert (=> b!503877 (=> (not res!305248) (not e!295049))))

(declare-fun arrayContainsKey!0 (array!32398 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!503877 (= res!305248 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!503878 () Bool)

(declare-fun res!305246 () Bool)

(assert (=> b!503878 (=> res!305246 e!295048)))

(assert (=> b!503878 (= res!305246 e!295047)))

(declare-fun res!305254 () Bool)

(assert (=> b!503878 (=> (not res!305254) (not e!295047))))

(assert (=> b!503878 (= res!305254 (bvsgt #b00000000000000000000000000000000 (x!47438 lt!229399)))))

(declare-fun b!503879 () Bool)

(declare-fun res!305247 () Bool)

(assert (=> b!503879 (=> (not res!305247) (not e!295049))))

(assert (=> b!503879 (= res!305247 (and (= (size!15940 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15940 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15940 a!3235)) (not (= i!1204 j!176))))))

(declare-fun res!305257 () Bool)

(assert (=> start!45682 (=> (not res!305257) (not e!295049))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45682 (= res!305257 (validMask!0 mask!3524))))

(assert (=> start!45682 e!295049))

(assert (=> start!45682 true))

(declare-fun array_inv!11350 (array!32398) Bool)

(assert (=> start!45682 (array_inv!11350 a!3235)))

(declare-fun b!503880 () Bool)

(assert (=> b!503880 (= e!295046 (not e!295050))))

(declare-fun res!305245 () Bool)

(assert (=> b!503880 (=> res!305245 e!295050)))

(declare-fun lt!229397 () (_ BitVec 32))

(assert (=> b!503880 (= res!305245 (= lt!229399 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229397 lt!229395 lt!229400 mask!3524)))))

(assert (=> b!503880 (= lt!229399 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229392 (select (arr!15576 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!503880 (= lt!229397 (toIndex!0 lt!229395 mask!3524))))

(assert (=> b!503880 (= lt!229395 (select (store (arr!15576 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!503880 (= lt!229392 (toIndex!0 (select (arr!15576 a!3235) j!176) mask!3524))))

(assert (=> b!503880 (= lt!229400 (array!32399 (store (arr!15576 a!3235) i!1204 k!2280) (size!15940 a!3235)))))

(assert (=> b!503880 e!295053))

(declare-fun res!305249 () Bool)

(assert (=> b!503880 (=> (not res!305249) (not e!295053))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32398 (_ BitVec 32)) Bool)

(assert (=> b!503880 (= res!305249 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!229396 () Unit!15290)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32398 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15290)

(assert (=> b!503880 (= lt!229396 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!503881 () Bool)

(declare-fun res!305252 () Bool)

(assert (=> b!503881 (=> (not res!305252) (not e!295046))))

(assert (=> b!503881 (= res!305252 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!503882 () Bool)

(assert (=> b!503882 (= e!295050 e!295048)))

(declare-fun res!305250 () Bool)

(assert (=> b!503882 (=> res!305250 e!295048)))

(assert (=> b!503882 (= res!305250 (or (bvsgt (x!47438 lt!229399) #b01111111111111111111111111111110) (bvslt lt!229392 #b00000000000000000000000000000000) (bvsge lt!229392 (size!15940 a!3235)) (bvslt (index!18390 lt!229399) #b00000000000000000000000000000000) (bvsge (index!18390 lt!229399) (size!15940 a!3235)) (not (= lt!229399 (Intermediate!4050 false (index!18390 lt!229399) (x!47438 lt!229399))))))))

(assert (=> b!503882 (= (index!18390 lt!229399) i!1204)))

(declare-fun lt!229390 () Unit!15290)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!32398 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15290)

(assert (=> b!503882 (= lt!229390 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!229392 #b00000000000000000000000000000000 (index!18390 lt!229399) (x!47438 lt!229399) mask!3524))))

(assert (=> b!503882 (and (or (= (select (arr!15576 a!3235) (index!18390 lt!229399)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15576 a!3235) (index!18390 lt!229399)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15576 a!3235) (index!18390 lt!229399)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15576 a!3235) (index!18390 lt!229399)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!229398 () Unit!15290)

(assert (=> b!503882 (= lt!229398 e!295052)))

(declare-fun c!59591 () Bool)

(assert (=> b!503882 (= c!59591 (= (select (arr!15576 a!3235) (index!18390 lt!229399)) (select (arr!15576 a!3235) j!176)))))

(assert (=> b!503882 (and (bvslt (x!47438 lt!229399) #b01111111111111111111111111111110) (or (= (select (arr!15576 a!3235) (index!18390 lt!229399)) (select (arr!15576 a!3235) j!176)) (= (select (arr!15576 a!3235) (index!18390 lt!229399)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15576 a!3235) (index!18390 lt!229399)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!503883 () Bool)

(assert (=> b!503883 (= e!295051 false)))

(declare-fun b!503884 () Bool)

(assert (=> b!503884 (= e!295049 e!295046)))

(declare-fun res!305256 () Bool)

(assert (=> b!503884 (=> (not res!305256) (not e!295046))))

(declare-fun lt!229393 () SeekEntryResult!4050)

(assert (=> b!503884 (= res!305256 (or (= lt!229393 (MissingZero!4050 i!1204)) (= lt!229393 (MissingVacant!4050 i!1204))))))

(assert (=> b!503884 (= lt!229393 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!503885 () Bool)

(declare-fun res!305251 () Bool)

(assert (=> b!503885 (=> (not res!305251) (not e!295049))))

(assert (=> b!503885 (= res!305251 (validKeyInArray!0 (select (arr!15576 a!3235) j!176)))))

(assert (= (and start!45682 res!305257) b!503879))

(assert (= (and b!503879 res!305247) b!503885))

(assert (= (and b!503885 res!305251) b!503875))

(assert (= (and b!503875 res!305253) b!503877))

(assert (= (and b!503877 res!305248) b!503884))

(assert (= (and b!503884 res!305256) b!503881))

(assert (= (and b!503881 res!305252) b!503871))

(assert (= (and b!503871 res!305258) b!503880))

(assert (= (and b!503880 res!305249) b!503873))

(assert (= (and b!503880 (not res!305245)) b!503872))

(assert (= (and b!503872 (not res!305255)) b!503882))

(assert (= (and b!503882 c!59591) b!503869))

(assert (= (and b!503882 (not c!59591)) b!503874))

(assert (= (and b!503869 res!305244) b!503883))

(assert (= (and b!503882 (not res!305250)) b!503878))

(assert (= (and b!503878 res!305254) b!503876))

(assert (= (and b!503878 (not res!305246)) b!503870))

(declare-fun m!484681 () Bool)

(assert (=> b!503871 m!484681))

(declare-fun m!484683 () Bool)

(assert (=> b!503881 m!484683))

(declare-fun m!484685 () Bool)

(assert (=> b!503877 m!484685))

(declare-fun m!484687 () Bool)

(assert (=> b!503873 m!484687))

(assert (=> b!503873 m!484687))

(declare-fun m!484689 () Bool)

(assert (=> b!503873 m!484689))

(declare-fun m!484691 () Bool)

(assert (=> b!503870 m!484691))

(declare-fun m!484693 () Bool)

(assert (=> start!45682 m!484693))

(declare-fun m!484695 () Bool)

(assert (=> start!45682 m!484695))

(declare-fun m!484697 () Bool)

(assert (=> b!503875 m!484697))

(declare-fun m!484699 () Bool)

(assert (=> b!503880 m!484699))

(declare-fun m!484701 () Bool)

(assert (=> b!503880 m!484701))

(declare-fun m!484703 () Bool)

(assert (=> b!503880 m!484703))

(declare-fun m!484705 () Bool)

(assert (=> b!503880 m!484705))

(assert (=> b!503880 m!484687))

(declare-fun m!484707 () Bool)

(assert (=> b!503880 m!484707))

(assert (=> b!503880 m!484687))

(declare-fun m!484709 () Bool)

(assert (=> b!503880 m!484709))

(assert (=> b!503880 m!484687))

(declare-fun m!484711 () Bool)

(assert (=> b!503880 m!484711))

(declare-fun m!484713 () Bool)

(assert (=> b!503880 m!484713))

(declare-fun m!484715 () Bool)

(assert (=> b!503882 m!484715))

(declare-fun m!484717 () Bool)

(assert (=> b!503882 m!484717))

(assert (=> b!503882 m!484687))

(declare-fun m!484719 () Bool)

(assert (=> b!503884 m!484719))

(assert (=> b!503876 m!484687))

(assert (=> b!503876 m!484687))

(declare-fun m!484721 () Bool)

(assert (=> b!503876 m!484721))

(declare-fun m!484723 () Bool)

(assert (=> b!503869 m!484723))

(assert (=> b!503869 m!484691))

(assert (=> b!503885 m!484687))

(assert (=> b!503885 m!484687))

(declare-fun m!484725 () Bool)

(assert (=> b!503885 m!484725))

(push 1)

