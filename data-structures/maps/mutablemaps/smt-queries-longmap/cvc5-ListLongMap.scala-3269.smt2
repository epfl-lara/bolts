; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45496 () Bool)

(assert start!45496)

(declare-fun b!500703 () Bool)

(declare-fun res!302622 () Bool)

(declare-fun e!293344 () Bool)

(assert (=> b!500703 (=> (not res!302622) (not e!293344))))

(declare-datatypes ((array!32281 0))(
  ( (array!32282 (arr!15519 (Array (_ BitVec 32) (_ BitVec 64))) (size!15883 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32281)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32281 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!500703 (= res!302622 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!500704 () Bool)

(declare-fun e!293346 () Bool)

(declare-fun e!293342 () Bool)

(assert (=> b!500704 (= e!293346 e!293342)))

(declare-fun res!302630 () Bool)

(assert (=> b!500704 (=> res!302630 e!293342)))

(declare-datatypes ((SeekEntryResult!3993 0))(
  ( (MissingZero!3993 (index!18154 (_ BitVec 32))) (Found!3993 (index!18155 (_ BitVec 32))) (Intermediate!3993 (undefined!4805 Bool) (index!18156 (_ BitVec 32)) (x!47217 (_ BitVec 32))) (Undefined!3993) (MissingVacant!3993 (index!18157 (_ BitVec 32))) )
))
(declare-fun lt!227383 () SeekEntryResult!3993)

(declare-fun lt!227386 () (_ BitVec 32))

(assert (=> b!500704 (= res!302630 (or (bvsgt #b00000000000000000000000000000000 (x!47217 lt!227383)) (bvsgt (x!47217 lt!227383) #b01111111111111111111111111111110) (bvslt lt!227386 #b00000000000000000000000000000000) (bvsge lt!227386 (size!15883 a!3235)) (bvslt (index!18156 lt!227383) #b00000000000000000000000000000000) (bvsge (index!18156 lt!227383) (size!15883 a!3235)) (not (= lt!227383 (Intermediate!3993 false (index!18156 lt!227383) (x!47217 lt!227383))))))))

(assert (=> b!500704 (and (or (= (select (arr!15519 a!3235) (index!18156 lt!227383)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15519 a!3235) (index!18156 lt!227383)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15519 a!3235) (index!18156 lt!227383)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15519 a!3235) (index!18156 lt!227383)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!15062 0))(
  ( (Unit!15063) )
))
(declare-fun lt!227384 () Unit!15062)

(declare-fun e!293341 () Unit!15062)

(assert (=> b!500704 (= lt!227384 e!293341)))

(declare-fun c!59318 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!500704 (= c!59318 (= (select (arr!15519 a!3235) (index!18156 lt!227383)) (select (arr!15519 a!3235) j!176)))))

(assert (=> b!500704 (and (bvslt (x!47217 lt!227383) #b01111111111111111111111111111110) (or (= (select (arr!15519 a!3235) (index!18156 lt!227383)) (select (arr!15519 a!3235) j!176)) (= (select (arr!15519 a!3235) (index!18156 lt!227383)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15519 a!3235) (index!18156 lt!227383)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!500705 () Bool)

(declare-fun res!302623 () Bool)

(declare-fun e!293345 () Bool)

(assert (=> b!500705 (=> (not res!302623) (not e!293345))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32281 (_ BitVec 32)) Bool)

(assert (=> b!500705 (= res!302623 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!500706 () Bool)

(assert (=> b!500706 (= e!293345 (not e!293346))))

(declare-fun res!302631 () Bool)

(assert (=> b!500706 (=> res!302631 e!293346)))

(declare-fun lt!227389 () (_ BitVec 64))

(declare-fun lt!227385 () array!32281)

(declare-fun lt!227381 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32281 (_ BitVec 32)) SeekEntryResult!3993)

(assert (=> b!500706 (= res!302631 (= lt!227383 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!227381 lt!227389 lt!227385 mask!3524)))))

(assert (=> b!500706 (= lt!227383 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!227386 (select (arr!15519 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!500706 (= lt!227381 (toIndex!0 lt!227389 mask!3524))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!500706 (= lt!227389 (select (store (arr!15519 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!500706 (= lt!227386 (toIndex!0 (select (arr!15519 a!3235) j!176) mask!3524))))

(assert (=> b!500706 (= lt!227385 (array!32282 (store (arr!15519 a!3235) i!1204 k!2280) (size!15883 a!3235)))))

(declare-fun e!293343 () Bool)

(assert (=> b!500706 e!293343))

(declare-fun res!302633 () Bool)

(assert (=> b!500706 (=> (not res!302633) (not e!293343))))

(assert (=> b!500706 (= res!302633 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!227382 () Unit!15062)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32281 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15062)

(assert (=> b!500706 (= lt!227382 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!500707 () Bool)

(declare-fun e!293347 () Bool)

(assert (=> b!500707 (= e!293347 false)))

(declare-fun b!500708 () Bool)

(declare-fun Unit!15064 () Unit!15062)

(assert (=> b!500708 (= e!293341 Unit!15064)))

(declare-fun b!500709 () Bool)

(declare-fun res!302627 () Bool)

(assert (=> b!500709 (=> (not res!302627) (not e!293344))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!500709 (= res!302627 (validKeyInArray!0 k!2280))))

(declare-fun res!302625 () Bool)

(assert (=> start!45496 (=> (not res!302625) (not e!293344))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45496 (= res!302625 (validMask!0 mask!3524))))

(assert (=> start!45496 e!293344))

(assert (=> start!45496 true))

(declare-fun array_inv!11293 (array!32281) Bool)

(assert (=> start!45496 (array_inv!11293 a!3235)))

(declare-fun b!500710 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32281 (_ BitVec 32)) SeekEntryResult!3993)

(assert (=> b!500710 (= e!293343 (= (seekEntryOrOpen!0 (select (arr!15519 a!3235) j!176) a!3235 mask!3524) (Found!3993 j!176)))))

(declare-fun b!500711 () Bool)

(assert (=> b!500711 (= e!293342 true)))

(declare-fun lt!227387 () SeekEntryResult!3993)

(assert (=> b!500711 (= lt!227387 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!227386 lt!227389 lt!227385 mask!3524))))

(declare-fun b!500712 () Bool)

(declare-fun res!302632 () Bool)

(assert (=> b!500712 (=> (not res!302632) (not e!293344))))

(assert (=> b!500712 (= res!302632 (validKeyInArray!0 (select (arr!15519 a!3235) j!176)))))

(declare-fun b!500713 () Bool)

(assert (=> b!500713 (= e!293344 e!293345)))

(declare-fun res!302626 () Bool)

(assert (=> b!500713 (=> (not res!302626) (not e!293345))))

(declare-fun lt!227390 () SeekEntryResult!3993)

(assert (=> b!500713 (= res!302626 (or (= lt!227390 (MissingZero!3993 i!1204)) (= lt!227390 (MissingVacant!3993 i!1204))))))

(assert (=> b!500713 (= lt!227390 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!500714 () Bool)

(declare-fun res!302629 () Bool)

(assert (=> b!500714 (=> (not res!302629) (not e!293345))))

(declare-datatypes ((List!9730 0))(
  ( (Nil!9727) (Cons!9726 (h!10600 (_ BitVec 64)) (t!15966 List!9730)) )
))
(declare-fun arrayNoDuplicates!0 (array!32281 (_ BitVec 32) List!9730) Bool)

(assert (=> b!500714 (= res!302629 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9727))))

(declare-fun b!500715 () Bool)

(declare-fun Unit!15065 () Unit!15062)

(assert (=> b!500715 (= e!293341 Unit!15065)))

(declare-fun lt!227388 () Unit!15062)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32281 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15062)

(assert (=> b!500715 (= lt!227388 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!227386 #b00000000000000000000000000000000 (index!18156 lt!227383) (x!47217 lt!227383) mask!3524))))

(declare-fun res!302628 () Bool)

(assert (=> b!500715 (= res!302628 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!227386 lt!227389 lt!227385 mask!3524) (Intermediate!3993 false (index!18156 lt!227383) (x!47217 lt!227383))))))

(assert (=> b!500715 (=> (not res!302628) (not e!293347))))

(assert (=> b!500715 e!293347))

(declare-fun b!500716 () Bool)

(declare-fun res!302624 () Bool)

(assert (=> b!500716 (=> (not res!302624) (not e!293344))))

(assert (=> b!500716 (= res!302624 (and (= (size!15883 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15883 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15883 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!500717 () Bool)

(declare-fun res!302621 () Bool)

(assert (=> b!500717 (=> res!302621 e!293346)))

(assert (=> b!500717 (= res!302621 (or (undefined!4805 lt!227383) (not (is-Intermediate!3993 lt!227383))))))

(assert (= (and start!45496 res!302625) b!500716))

(assert (= (and b!500716 res!302624) b!500712))

(assert (= (and b!500712 res!302632) b!500709))

(assert (= (and b!500709 res!302627) b!500703))

(assert (= (and b!500703 res!302622) b!500713))

(assert (= (and b!500713 res!302626) b!500705))

(assert (= (and b!500705 res!302623) b!500714))

(assert (= (and b!500714 res!302629) b!500706))

(assert (= (and b!500706 res!302633) b!500710))

(assert (= (and b!500706 (not res!302631)) b!500717))

(assert (= (and b!500717 (not res!302621)) b!500704))

(assert (= (and b!500704 c!59318) b!500715))

(assert (= (and b!500704 (not c!59318)) b!500708))

(assert (= (and b!500715 res!302628) b!500707))

(assert (= (and b!500704 (not res!302630)) b!500711))

(declare-fun m!481843 () Bool)

(assert (=> b!500715 m!481843))

(declare-fun m!481845 () Bool)

(assert (=> b!500715 m!481845))

(declare-fun m!481847 () Bool)

(assert (=> b!500714 m!481847))

(declare-fun m!481849 () Bool)

(assert (=> b!500713 m!481849))

(declare-fun m!481851 () Bool)

(assert (=> b!500705 m!481851))

(declare-fun m!481853 () Bool)

(assert (=> start!45496 m!481853))

(declare-fun m!481855 () Bool)

(assert (=> start!45496 m!481855))

(declare-fun m!481857 () Bool)

(assert (=> b!500712 m!481857))

(assert (=> b!500712 m!481857))

(declare-fun m!481859 () Bool)

(assert (=> b!500712 m!481859))

(declare-fun m!481861 () Bool)

(assert (=> b!500709 m!481861))

(declare-fun m!481863 () Bool)

(assert (=> b!500704 m!481863))

(assert (=> b!500704 m!481857))

(assert (=> b!500706 m!481857))

(declare-fun m!481865 () Bool)

(assert (=> b!500706 m!481865))

(declare-fun m!481867 () Bool)

(assert (=> b!500706 m!481867))

(declare-fun m!481869 () Bool)

(assert (=> b!500706 m!481869))

(declare-fun m!481871 () Bool)

(assert (=> b!500706 m!481871))

(declare-fun m!481873 () Bool)

(assert (=> b!500706 m!481873))

(declare-fun m!481875 () Bool)

(assert (=> b!500706 m!481875))

(assert (=> b!500706 m!481857))

(declare-fun m!481877 () Bool)

(assert (=> b!500706 m!481877))

(assert (=> b!500706 m!481857))

(declare-fun m!481879 () Bool)

(assert (=> b!500706 m!481879))

(assert (=> b!500711 m!481845))

(declare-fun m!481881 () Bool)

(assert (=> b!500703 m!481881))

(assert (=> b!500710 m!481857))

(assert (=> b!500710 m!481857))

(declare-fun m!481883 () Bool)

(assert (=> b!500710 m!481883))

(push 1)

