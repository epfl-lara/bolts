; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45388 () Bool)

(assert start!45388)

(declare-fun b!498273 () Bool)

(declare-fun res!300526 () Bool)

(declare-fun e!292047 () Bool)

(assert (=> b!498273 (=> (not res!300526) (not e!292047))))

(declare-datatypes ((array!32173 0))(
  ( (array!32174 (arr!15465 (Array (_ BitVec 32) (_ BitVec 64))) (size!15829 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32173)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32173 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!498273 (= res!300526 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!498274 () Bool)

(declare-fun e!292048 () Bool)

(assert (=> b!498274 (= e!292048 false)))

(declare-fun b!498275 () Bool)

(declare-fun e!292044 () Bool)

(assert (=> b!498275 (= e!292044 true)))

(declare-fun lt!225761 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3939 0))(
  ( (MissingZero!3939 (index!17938 (_ BitVec 32))) (Found!3939 (index!17939 (_ BitVec 32))) (Intermediate!3939 (undefined!4751 Bool) (index!17940 (_ BitVec 32)) (x!47019 (_ BitVec 32))) (Undefined!3939) (MissingVacant!3939 (index!17941 (_ BitVec 32))) )
))
(declare-fun lt!225764 () SeekEntryResult!3939)

(declare-fun lt!225763 () (_ BitVec 32))

(declare-fun lt!225768 () array!32173)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32173 (_ BitVec 32)) SeekEntryResult!3939)

(assert (=> b!498275 (= lt!225764 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225763 lt!225761 lt!225768 mask!3524))))

(declare-fun b!498276 () Bool)

(declare-fun res!300527 () Bool)

(declare-fun e!292046 () Bool)

(assert (=> b!498276 (=> (not res!300527) (not e!292046))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32173 (_ BitVec 32)) Bool)

(assert (=> b!498276 (= res!300527 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!498277 () Bool)

(declare-fun res!300525 () Bool)

(declare-fun e!292045 () Bool)

(assert (=> b!498277 (=> res!300525 e!292045)))

(declare-fun lt!225767 () SeekEntryResult!3939)

(assert (=> b!498277 (= res!300525 (or (undefined!4751 lt!225767) (not (is-Intermediate!3939 lt!225767))))))

(declare-fun b!498278 () Bool)

(assert (=> b!498278 (= e!292046 (not e!292045))))

(declare-fun res!300523 () Bool)

(assert (=> b!498278 (=> res!300523 e!292045)))

(declare-fun lt!225766 () (_ BitVec 32))

(assert (=> b!498278 (= res!300523 (= lt!225767 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225766 lt!225761 lt!225768 mask!3524)))))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!498278 (= lt!225767 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225763 (select (arr!15465 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!498278 (= lt!225766 (toIndex!0 lt!225761 mask!3524))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!498278 (= lt!225761 (select (store (arr!15465 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!498278 (= lt!225763 (toIndex!0 (select (arr!15465 a!3235) j!176) mask!3524))))

(assert (=> b!498278 (= lt!225768 (array!32174 (store (arr!15465 a!3235) i!1204 k!2280) (size!15829 a!3235)))))

(declare-fun e!292049 () Bool)

(assert (=> b!498278 e!292049))

(declare-fun res!300519 () Bool)

(assert (=> b!498278 (=> (not res!300519) (not e!292049))))

(assert (=> b!498278 (= res!300519 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14846 0))(
  ( (Unit!14847) )
))
(declare-fun lt!225770 () Unit!14846)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32173 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14846)

(assert (=> b!498278 (= lt!225770 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!498279 () Bool)

(declare-fun e!292050 () Unit!14846)

(declare-fun Unit!14848 () Unit!14846)

(assert (=> b!498279 (= e!292050 Unit!14848)))

(declare-fun b!498280 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32173 (_ BitVec 32)) SeekEntryResult!3939)

(assert (=> b!498280 (= e!292049 (= (seekEntryOrOpen!0 (select (arr!15465 a!3235) j!176) a!3235 mask!3524) (Found!3939 j!176)))))

(declare-fun res!300518 () Bool)

(assert (=> start!45388 (=> (not res!300518) (not e!292047))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45388 (= res!300518 (validMask!0 mask!3524))))

(assert (=> start!45388 e!292047))

(assert (=> start!45388 true))

(declare-fun array_inv!11239 (array!32173) Bool)

(assert (=> start!45388 (array_inv!11239 a!3235)))

(declare-fun b!498281 () Bool)

(assert (=> b!498281 (= e!292045 e!292044)))

(declare-fun res!300515 () Bool)

(assert (=> b!498281 (=> res!300515 e!292044)))

(assert (=> b!498281 (= res!300515 (or (bvsgt #b00000000000000000000000000000000 (x!47019 lt!225767)) (bvsgt (x!47019 lt!225767) #b01111111111111111111111111111110) (bvslt lt!225763 #b00000000000000000000000000000000) (bvsge lt!225763 (size!15829 a!3235)) (bvslt (index!17940 lt!225767) #b00000000000000000000000000000000) (bvsge (index!17940 lt!225767) (size!15829 a!3235)) (not (= lt!225767 (Intermediate!3939 false (index!17940 lt!225767) (x!47019 lt!225767))))))))

(assert (=> b!498281 (and (or (= (select (arr!15465 a!3235) (index!17940 lt!225767)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15465 a!3235) (index!17940 lt!225767)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15465 a!3235) (index!17940 lt!225767)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15465 a!3235) (index!17940 lt!225767)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!225765 () Unit!14846)

(assert (=> b!498281 (= lt!225765 e!292050)))

(declare-fun c!59156 () Bool)

(assert (=> b!498281 (= c!59156 (= (select (arr!15465 a!3235) (index!17940 lt!225767)) (select (arr!15465 a!3235) j!176)))))

(assert (=> b!498281 (and (bvslt (x!47019 lt!225767) #b01111111111111111111111111111110) (or (= (select (arr!15465 a!3235) (index!17940 lt!225767)) (select (arr!15465 a!3235) j!176)) (= (select (arr!15465 a!3235) (index!17940 lt!225767)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15465 a!3235) (index!17940 lt!225767)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!498282 () Bool)

(declare-fun res!300517 () Bool)

(assert (=> b!498282 (=> (not res!300517) (not e!292047))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!498282 (= res!300517 (validKeyInArray!0 k!2280))))

(declare-fun b!498283 () Bool)

(declare-fun res!300524 () Bool)

(assert (=> b!498283 (=> (not res!300524) (not e!292047))))

(assert (=> b!498283 (= res!300524 (and (= (size!15829 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15829 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15829 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!498284 () Bool)

(assert (=> b!498284 (= e!292047 e!292046)))

(declare-fun res!300516 () Bool)

(assert (=> b!498284 (=> (not res!300516) (not e!292046))))

(declare-fun lt!225762 () SeekEntryResult!3939)

(assert (=> b!498284 (= res!300516 (or (= lt!225762 (MissingZero!3939 i!1204)) (= lt!225762 (MissingVacant!3939 i!1204))))))

(assert (=> b!498284 (= lt!225762 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!498285 () Bool)

(declare-fun res!300520 () Bool)

(assert (=> b!498285 (=> (not res!300520) (not e!292047))))

(assert (=> b!498285 (= res!300520 (validKeyInArray!0 (select (arr!15465 a!3235) j!176)))))

(declare-fun b!498286 () Bool)

(declare-fun res!300522 () Bool)

(assert (=> b!498286 (=> (not res!300522) (not e!292046))))

(declare-datatypes ((List!9676 0))(
  ( (Nil!9673) (Cons!9672 (h!10546 (_ BitVec 64)) (t!15912 List!9676)) )
))
(declare-fun arrayNoDuplicates!0 (array!32173 (_ BitVec 32) List!9676) Bool)

(assert (=> b!498286 (= res!300522 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9673))))

(declare-fun b!498287 () Bool)

(declare-fun Unit!14849 () Unit!14846)

(assert (=> b!498287 (= e!292050 Unit!14849)))

(declare-fun lt!225769 () Unit!14846)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32173 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14846)

(assert (=> b!498287 (= lt!225769 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!225763 #b00000000000000000000000000000000 (index!17940 lt!225767) (x!47019 lt!225767) mask!3524))))

(declare-fun res!300521 () Bool)

(assert (=> b!498287 (= res!300521 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225763 lt!225761 lt!225768 mask!3524) (Intermediate!3939 false (index!17940 lt!225767) (x!47019 lt!225767))))))

(assert (=> b!498287 (=> (not res!300521) (not e!292048))))

(assert (=> b!498287 e!292048))

(assert (= (and start!45388 res!300518) b!498283))

(assert (= (and b!498283 res!300524) b!498285))

(assert (= (and b!498285 res!300520) b!498282))

(assert (= (and b!498282 res!300517) b!498273))

(assert (= (and b!498273 res!300526) b!498284))

(assert (= (and b!498284 res!300516) b!498276))

(assert (= (and b!498276 res!300527) b!498286))

(assert (= (and b!498286 res!300522) b!498278))

(assert (= (and b!498278 res!300519) b!498280))

(assert (= (and b!498278 (not res!300523)) b!498277))

(assert (= (and b!498277 (not res!300525)) b!498281))

(assert (= (and b!498281 c!59156) b!498287))

(assert (= (and b!498281 (not c!59156)) b!498279))

(assert (= (and b!498287 res!300521) b!498274))

(assert (= (and b!498281 (not res!300515)) b!498275))

(declare-fun m!479575 () Bool)

(assert (=> b!498278 m!479575))

(declare-fun m!479577 () Bool)

(assert (=> b!498278 m!479577))

(declare-fun m!479579 () Bool)

(assert (=> b!498278 m!479579))

(declare-fun m!479581 () Bool)

(assert (=> b!498278 m!479581))

(declare-fun m!479583 () Bool)

(assert (=> b!498278 m!479583))

(declare-fun m!479585 () Bool)

(assert (=> b!498278 m!479585))

(declare-fun m!479587 () Bool)

(assert (=> b!498278 m!479587))

(assert (=> b!498278 m!479583))

(declare-fun m!479589 () Bool)

(assert (=> b!498278 m!479589))

(assert (=> b!498278 m!479583))

(declare-fun m!479591 () Bool)

(assert (=> b!498278 m!479591))

(declare-fun m!479593 () Bool)

(assert (=> b!498281 m!479593))

(assert (=> b!498281 m!479583))

(declare-fun m!479595 () Bool)

(assert (=> b!498273 m!479595))

(declare-fun m!479597 () Bool)

(assert (=> b!498284 m!479597))

(declare-fun m!479599 () Bool)

(assert (=> b!498286 m!479599))

(declare-fun m!479601 () Bool)

(assert (=> b!498275 m!479601))

(declare-fun m!479603 () Bool)

(assert (=> b!498287 m!479603))

(assert (=> b!498287 m!479601))

(declare-fun m!479605 () Bool)

(assert (=> b!498276 m!479605))

(assert (=> b!498280 m!479583))

(assert (=> b!498280 m!479583))

(declare-fun m!479607 () Bool)

(assert (=> b!498280 m!479607))

(declare-fun m!479609 () Bool)

(assert (=> start!45388 m!479609))

(declare-fun m!479611 () Bool)

(assert (=> start!45388 m!479611))

(declare-fun m!479613 () Bool)

(assert (=> b!498282 m!479613))

(assert (=> b!498285 m!479583))

(assert (=> b!498285 m!479583))

(declare-fun m!479615 () Bool)

(assert (=> b!498285 m!479615))

(push 1)

