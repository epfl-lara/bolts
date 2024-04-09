; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45670 () Bool)

(assert start!45670)

(declare-fun b!503563 () Bool)

(declare-fun e!294886 () Bool)

(assert (=> b!503563 (= e!294886 true)))

(declare-datatypes ((array!32386 0))(
  ( (array!32387 (arr!15570 (Array (_ BitVec 32) (_ BitVec 64))) (size!15934 (_ BitVec 32))) )
))
(declare-fun lt!229199 () array!32386)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4044 0))(
  ( (MissingZero!4044 (index!18364 (_ BitVec 32))) (Found!4044 (index!18365 (_ BitVec 32))) (Intermediate!4044 (undefined!4856 Bool) (index!18366 (_ BitVec 32)) (x!47416 (_ BitVec 32))) (Undefined!4044) (MissingVacant!4044 (index!18367 (_ BitVec 32))) )
))
(declare-fun lt!229194 () SeekEntryResult!4044)

(declare-fun lt!229195 () (_ BitVec 32))

(declare-fun lt!229198 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32386 (_ BitVec 32)) SeekEntryResult!4044)

(assert (=> b!503563 (= lt!229194 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229195 lt!229198 lt!229199 mask!3524))))

(declare-fun b!503564 () Bool)

(declare-fun res!304976 () Bool)

(declare-fun e!294887 () Bool)

(assert (=> b!503564 (=> (not res!304976) (not e!294887))))

(declare-fun a!3235 () array!32386)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!503564 (= res!304976 (validKeyInArray!0 (select (arr!15570 a!3235) j!176)))))

(declare-fun b!503565 () Bool)

(declare-datatypes ((Unit!15266 0))(
  ( (Unit!15267) )
))
(declare-fun e!294892 () Unit!15266)

(declare-fun Unit!15268 () Unit!15266)

(assert (=> b!503565 (= e!294892 Unit!15268)))

(declare-fun b!503566 () Bool)

(declare-fun e!294889 () Bool)

(declare-fun e!294890 () Bool)

(assert (=> b!503566 (= e!294889 (not e!294890))))

(declare-fun res!304984 () Bool)

(assert (=> b!503566 (=> res!304984 e!294890)))

(declare-fun lt!229196 () (_ BitVec 32))

(declare-fun lt!229197 () SeekEntryResult!4044)

(assert (=> b!503566 (= res!304984 (= lt!229197 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229196 lt!229198 lt!229199 mask!3524)))))

(assert (=> b!503566 (= lt!229197 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229195 (select (arr!15570 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!503566 (= lt!229196 (toIndex!0 lt!229198 mask!3524))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!503566 (= lt!229198 (select (store (arr!15570 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!503566 (= lt!229195 (toIndex!0 (select (arr!15570 a!3235) j!176) mask!3524))))

(assert (=> b!503566 (= lt!229199 (array!32387 (store (arr!15570 a!3235) i!1204 k!2280) (size!15934 a!3235)))))

(declare-fun e!294884 () Bool)

(assert (=> b!503566 e!294884))

(declare-fun res!304986 () Bool)

(assert (=> b!503566 (=> (not res!304986) (not e!294884))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32386 (_ BitVec 32)) Bool)

(assert (=> b!503566 (= res!304986 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!229202 () Unit!15266)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32386 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15266)

(assert (=> b!503566 (= lt!229202 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun res!304979 () Bool)

(assert (=> start!45670 (=> (not res!304979) (not e!294887))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45670 (= res!304979 (validMask!0 mask!3524))))

(assert (=> start!45670 e!294887))

(assert (=> start!45670 true))

(declare-fun array_inv!11344 (array!32386) Bool)

(assert (=> start!45670 (array_inv!11344 a!3235)))

(declare-fun b!503567 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32386 (_ BitVec 32)) SeekEntryResult!4044)

(assert (=> b!503567 (= e!294884 (= (seekEntryOrOpen!0 (select (arr!15570 a!3235) j!176) a!3235 mask!3524) (Found!4044 j!176)))))

(declare-fun b!503568 () Bool)

(assert (=> b!503568 (= e!294890 e!294886)))

(declare-fun res!304978 () Bool)

(assert (=> b!503568 (=> res!304978 e!294886)))

(assert (=> b!503568 (= res!304978 (or (bvsgt (x!47416 lt!229197) #b01111111111111111111111111111110) (bvslt lt!229195 #b00000000000000000000000000000000) (bvsge lt!229195 (size!15934 a!3235)) (bvslt (index!18366 lt!229197) #b00000000000000000000000000000000) (bvsge (index!18366 lt!229197) (size!15934 a!3235)) (not (= lt!229197 (Intermediate!4044 false (index!18366 lt!229197) (x!47416 lt!229197))))))))

(assert (=> b!503568 (= (index!18366 lt!229197) i!1204)))

(declare-fun lt!229200 () Unit!15266)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!32386 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15266)

(assert (=> b!503568 (= lt!229200 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!229195 #b00000000000000000000000000000000 (index!18366 lt!229197) (x!47416 lt!229197) mask!3524))))

(assert (=> b!503568 (and (or (= (select (arr!15570 a!3235) (index!18366 lt!229197)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15570 a!3235) (index!18366 lt!229197)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15570 a!3235) (index!18366 lt!229197)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15570 a!3235) (index!18366 lt!229197)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!229201 () Unit!15266)

(assert (=> b!503568 (= lt!229201 e!294892)))

(declare-fun c!59573 () Bool)

(assert (=> b!503568 (= c!59573 (= (select (arr!15570 a!3235) (index!18366 lt!229197)) (select (arr!15570 a!3235) j!176)))))

(assert (=> b!503568 (and (bvslt (x!47416 lt!229197) #b01111111111111111111111111111110) (or (= (select (arr!15570 a!3235) (index!18366 lt!229197)) (select (arr!15570 a!3235) j!176)) (= (select (arr!15570 a!3235) (index!18366 lt!229197)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15570 a!3235) (index!18366 lt!229197)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!503569 () Bool)

(declare-fun res!304983 () Bool)

(assert (=> b!503569 (=> res!304983 e!294886)))

(declare-fun e!294888 () Bool)

(assert (=> b!503569 (= res!304983 e!294888)))

(declare-fun res!304988 () Bool)

(assert (=> b!503569 (=> (not res!304988) (not e!294888))))

(assert (=> b!503569 (= res!304988 (bvsgt #b00000000000000000000000000000000 (x!47416 lt!229197)))))

(declare-fun b!503570 () Bool)

(declare-fun res!304974 () Bool)

(assert (=> b!503570 (=> (not res!304974) (not e!294887))))

(assert (=> b!503570 (= res!304974 (and (= (size!15934 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15934 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15934 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!503571 () Bool)

(assert (=> b!503571 (= e!294887 e!294889)))

(declare-fun res!304985 () Bool)

(assert (=> b!503571 (=> (not res!304985) (not e!294889))))

(declare-fun lt!229193 () SeekEntryResult!4044)

(assert (=> b!503571 (= res!304985 (or (= lt!229193 (MissingZero!4044 i!1204)) (= lt!229193 (MissingVacant!4044 i!1204))))))

(assert (=> b!503571 (= lt!229193 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!503572 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32386 (_ BitVec 32)) SeekEntryResult!4044)

(assert (=> b!503572 (= e!294888 (not (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!229195 (index!18366 lt!229197) (select (arr!15570 a!3235) j!176) a!3235 mask!3524) (Found!4044 j!176))))))

(declare-fun b!503573 () Bool)

(declare-fun Unit!15269 () Unit!15266)

(assert (=> b!503573 (= e!294892 Unit!15269)))

(declare-fun lt!229192 () Unit!15266)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32386 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15266)

(assert (=> b!503573 (= lt!229192 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!229195 #b00000000000000000000000000000000 (index!18366 lt!229197) (x!47416 lt!229197) mask!3524))))

(declare-fun res!304987 () Bool)

(assert (=> b!503573 (= res!304987 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229195 lt!229198 lt!229199 mask!3524) (Intermediate!4044 false (index!18366 lt!229197) (x!47416 lt!229197))))))

(declare-fun e!294885 () Bool)

(assert (=> b!503573 (=> (not res!304987) (not e!294885))))

(assert (=> b!503573 e!294885))

(declare-fun b!503574 () Bool)

(declare-fun res!304975 () Bool)

(assert (=> b!503574 (=> (not res!304975) (not e!294889))))

(declare-datatypes ((List!9781 0))(
  ( (Nil!9778) (Cons!9777 (h!10654 (_ BitVec 64)) (t!16017 List!9781)) )
))
(declare-fun arrayNoDuplicates!0 (array!32386 (_ BitVec 32) List!9781) Bool)

(assert (=> b!503574 (= res!304975 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9778))))

(declare-fun b!503575 () Bool)

(declare-fun res!304977 () Bool)

(assert (=> b!503575 (=> res!304977 e!294890)))

(assert (=> b!503575 (= res!304977 (or (undefined!4856 lt!229197) (not (is-Intermediate!4044 lt!229197))))))

(declare-fun b!503576 () Bool)

(declare-fun res!304981 () Bool)

(assert (=> b!503576 (=> (not res!304981) (not e!294889))))

(assert (=> b!503576 (= res!304981 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!503577 () Bool)

(declare-fun res!304980 () Bool)

(assert (=> b!503577 (=> (not res!304980) (not e!294887))))

(assert (=> b!503577 (= res!304980 (validKeyInArray!0 k!2280))))

(declare-fun b!503578 () Bool)

(declare-fun res!304982 () Bool)

(assert (=> b!503578 (=> (not res!304982) (not e!294887))))

(declare-fun arrayContainsKey!0 (array!32386 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!503578 (= res!304982 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!503579 () Bool)

(assert (=> b!503579 (= e!294885 false)))

(assert (= (and start!45670 res!304979) b!503570))

(assert (= (and b!503570 res!304974) b!503564))

(assert (= (and b!503564 res!304976) b!503577))

(assert (= (and b!503577 res!304980) b!503578))

(assert (= (and b!503578 res!304982) b!503571))

(assert (= (and b!503571 res!304985) b!503576))

(assert (= (and b!503576 res!304981) b!503574))

(assert (= (and b!503574 res!304975) b!503566))

(assert (= (and b!503566 res!304986) b!503567))

(assert (= (and b!503566 (not res!304984)) b!503575))

(assert (= (and b!503575 (not res!304977)) b!503568))

(assert (= (and b!503568 c!59573) b!503573))

(assert (= (and b!503568 (not c!59573)) b!503565))

(assert (= (and b!503573 res!304987) b!503579))

(assert (= (and b!503568 (not res!304978)) b!503569))

(assert (= (and b!503569 res!304988) b!503572))

(assert (= (and b!503569 (not res!304983)) b!503563))

(declare-fun m!484405 () Bool)

(assert (=> b!503576 m!484405))

(declare-fun m!484407 () Bool)

(assert (=> b!503568 m!484407))

(declare-fun m!484409 () Bool)

(assert (=> b!503568 m!484409))

(declare-fun m!484411 () Bool)

(assert (=> b!503568 m!484411))

(declare-fun m!484413 () Bool)

(assert (=> b!503573 m!484413))

(declare-fun m!484415 () Bool)

(assert (=> b!503573 m!484415))

(assert (=> b!503564 m!484411))

(assert (=> b!503564 m!484411))

(declare-fun m!484417 () Bool)

(assert (=> b!503564 m!484417))

(declare-fun m!484419 () Bool)

(assert (=> start!45670 m!484419))

(declare-fun m!484421 () Bool)

(assert (=> start!45670 m!484421))

(assert (=> b!503572 m!484411))

(assert (=> b!503572 m!484411))

(declare-fun m!484423 () Bool)

(assert (=> b!503572 m!484423))

(declare-fun m!484425 () Bool)

(assert (=> b!503574 m!484425))

(declare-fun m!484427 () Bool)

(assert (=> b!503566 m!484427))

(declare-fun m!484429 () Bool)

(assert (=> b!503566 m!484429))

(declare-fun m!484431 () Bool)

(assert (=> b!503566 m!484431))

(assert (=> b!503566 m!484411))

(declare-fun m!484433 () Bool)

(assert (=> b!503566 m!484433))

(assert (=> b!503566 m!484411))

(declare-fun m!484435 () Bool)

(assert (=> b!503566 m!484435))

(declare-fun m!484437 () Bool)

(assert (=> b!503566 m!484437))

(assert (=> b!503566 m!484411))

(declare-fun m!484439 () Bool)

(assert (=> b!503566 m!484439))

(declare-fun m!484441 () Bool)

(assert (=> b!503566 m!484441))

(declare-fun m!484443 () Bool)

(assert (=> b!503571 m!484443))

(assert (=> b!503563 m!484415))

(assert (=> b!503567 m!484411))

(assert (=> b!503567 m!484411))

(declare-fun m!484445 () Bool)

(assert (=> b!503567 m!484445))

(declare-fun m!484447 () Bool)

(assert (=> b!503577 m!484447))

(declare-fun m!484449 () Bool)

(assert (=> b!503578 m!484449))

(push 1)

