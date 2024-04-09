; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45634 () Bool)

(assert start!45634)

(declare-fun b!502645 () Bool)

(declare-datatypes ((Unit!15194 0))(
  ( (Unit!15195) )
))
(declare-fun e!294405 () Unit!15194)

(declare-fun Unit!15196 () Unit!15194)

(assert (=> b!502645 (= e!294405 Unit!15196)))

(declare-fun b!502646 () Bool)

(declare-fun res!304164 () Bool)

(declare-fun e!294404 () Bool)

(assert (=> b!502646 (=> (not res!304164) (not e!294404))))

(declare-datatypes ((array!32350 0))(
  ( (array!32351 (arr!15552 (Array (_ BitVec 32) (_ BitVec 64))) (size!15916 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32350)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32350 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!502646 (= res!304164 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!502647 () Bool)

(declare-fun res!304174 () Bool)

(assert (=> b!502647 (=> (not res!304174) (not e!294404))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!502647 (= res!304174 (validKeyInArray!0 k!2280))))

(declare-fun b!502649 () Bool)

(declare-fun e!294402 () Bool)

(assert (=> b!502649 (= e!294402 false)))

(declare-fun b!502650 () Bool)

(declare-fun Unit!15197 () Unit!15194)

(assert (=> b!502650 (= e!294405 Unit!15197)))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4026 0))(
  ( (MissingZero!4026 (index!18292 (_ BitVec 32))) (Found!4026 (index!18293 (_ BitVec 32))) (Intermediate!4026 (undefined!4838 Bool) (index!18294 (_ BitVec 32)) (x!47350 (_ BitVec 32))) (Undefined!4026) (MissingVacant!4026 (index!18295 (_ BitVec 32))) )
))
(declare-fun lt!228604 () SeekEntryResult!4026)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!228608 () (_ BitVec 32))

(declare-fun lt!228599 () Unit!15194)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32350 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15194)

(assert (=> b!502650 (= lt!228599 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!228608 #b00000000000000000000000000000000 (index!18294 lt!228604) (x!47350 lt!228604) mask!3524))))

(declare-fun res!304176 () Bool)

(declare-fun lt!228600 () (_ BitVec 64))

(declare-fun lt!228603 () array!32350)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32350 (_ BitVec 32)) SeekEntryResult!4026)

(assert (=> b!502650 (= res!304176 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228608 lt!228600 lt!228603 mask!3524) (Intermediate!4026 false (index!18294 lt!228604) (x!47350 lt!228604))))))

(assert (=> b!502650 (=> (not res!304176) (not e!294402))))

(assert (=> b!502650 e!294402))

(declare-fun b!502651 () Bool)

(declare-fun res!304168 () Bool)

(assert (=> b!502651 (=> (not res!304168) (not e!294404))))

(assert (=> b!502651 (= res!304168 (and (= (size!15916 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15916 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15916 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!502652 () Bool)

(declare-fun res!304167 () Bool)

(assert (=> b!502652 (=> (not res!304167) (not e!294404))))

(assert (=> b!502652 (= res!304167 (validKeyInArray!0 (select (arr!15552 a!3235) j!176)))))

(declare-fun b!502653 () Bool)

(declare-fun e!294406 () Bool)

(assert (=> b!502653 (= e!294404 e!294406)))

(declare-fun res!304177 () Bool)

(assert (=> b!502653 (=> (not res!304177) (not e!294406))))

(declare-fun lt!228601 () SeekEntryResult!4026)

(assert (=> b!502653 (= res!304177 (or (= lt!228601 (MissingZero!4026 i!1204)) (= lt!228601 (MissingVacant!4026 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32350 (_ BitVec 32)) SeekEntryResult!4026)

(assert (=> b!502653 (= lt!228601 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun res!304166 () Bool)

(assert (=> start!45634 (=> (not res!304166) (not e!294404))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45634 (= res!304166 (validMask!0 mask!3524))))

(assert (=> start!45634 e!294404))

(assert (=> start!45634 true))

(declare-fun array_inv!11326 (array!32350) Bool)

(assert (=> start!45634 (array_inv!11326 a!3235)))

(declare-fun e!294398 () Bool)

(declare-fun b!502648 () Bool)

(assert (=> b!502648 (= e!294398 (= (seekEntryOrOpen!0 (select (arr!15552 a!3235) j!176) a!3235 mask!3524) (Found!4026 j!176)))))

(declare-fun b!502654 () Bool)

(declare-fun e!294401 () Bool)

(assert (=> b!502654 (= e!294406 (not e!294401))))

(declare-fun res!304175 () Bool)

(assert (=> b!502654 (=> res!304175 e!294401)))

(declare-fun lt!228602 () (_ BitVec 32))

(assert (=> b!502654 (= res!304175 (= lt!228604 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228602 lt!228600 lt!228603 mask!3524)))))

(assert (=> b!502654 (= lt!228604 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228608 (select (arr!15552 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!502654 (= lt!228602 (toIndex!0 lt!228600 mask!3524))))

(assert (=> b!502654 (= lt!228600 (select (store (arr!15552 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!502654 (= lt!228608 (toIndex!0 (select (arr!15552 a!3235) j!176) mask!3524))))

(assert (=> b!502654 (= lt!228603 (array!32351 (store (arr!15552 a!3235) i!1204 k!2280) (size!15916 a!3235)))))

(assert (=> b!502654 e!294398))

(declare-fun res!304171 () Bool)

(assert (=> b!502654 (=> (not res!304171) (not e!294398))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32350 (_ BitVec 32)) Bool)

(assert (=> b!502654 (= res!304171 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!228605 () Unit!15194)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32350 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15194)

(assert (=> b!502654 (= lt!228605 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!502655 () Bool)

(declare-fun res!304173 () Bool)

(assert (=> b!502655 (=> (not res!304173) (not e!294406))))

(assert (=> b!502655 (= res!304173 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!502656 () Bool)

(declare-fun res!304165 () Bool)

(assert (=> b!502656 (=> (not res!304165) (not e!294406))))

(declare-datatypes ((List!9763 0))(
  ( (Nil!9760) (Cons!9759 (h!10636 (_ BitVec 64)) (t!15999 List!9763)) )
))
(declare-fun arrayNoDuplicates!0 (array!32350 (_ BitVec 32) List!9763) Bool)

(assert (=> b!502656 (= res!304165 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9760))))

(declare-fun b!502657 () Bool)

(declare-fun res!304169 () Bool)

(assert (=> b!502657 (=> res!304169 e!294401)))

(assert (=> b!502657 (= res!304169 (or (undefined!4838 lt!228604) (not (is-Intermediate!4026 lt!228604))))))

(declare-fun e!294400 () Bool)

(declare-fun b!502658 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32350 (_ BitVec 32)) SeekEntryResult!4026)

(assert (=> b!502658 (= e!294400 (not (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!228608 (index!18294 lt!228604) (select (arr!15552 a!3235) j!176) a!3235 mask!3524) (Found!4026 j!176))))))

(declare-fun b!502659 () Bool)

(declare-fun res!304178 () Bool)

(declare-fun e!294399 () Bool)

(assert (=> b!502659 (=> res!304178 e!294399)))

(assert (=> b!502659 (= res!304178 e!294400)))

(declare-fun res!304170 () Bool)

(assert (=> b!502659 (=> (not res!304170) (not e!294400))))

(assert (=> b!502659 (= res!304170 (bvsgt #b00000000000000000000000000000000 (x!47350 lt!228604)))))

(declare-fun b!502660 () Bool)

(assert (=> b!502660 (= e!294399 true)))

(declare-fun lt!228598 () SeekEntryResult!4026)

(assert (=> b!502660 (= lt!228598 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228608 lt!228600 lt!228603 mask!3524))))

(declare-fun b!502661 () Bool)

(assert (=> b!502661 (= e!294401 e!294399)))

(declare-fun res!304172 () Bool)

(assert (=> b!502661 (=> res!304172 e!294399)))

(assert (=> b!502661 (= res!304172 (or (bvsgt (x!47350 lt!228604) #b01111111111111111111111111111110) (bvslt lt!228608 #b00000000000000000000000000000000) (bvsge lt!228608 (size!15916 a!3235)) (bvslt (index!18294 lt!228604) #b00000000000000000000000000000000) (bvsge (index!18294 lt!228604) (size!15916 a!3235)) (not (= lt!228604 (Intermediate!4026 false (index!18294 lt!228604) (x!47350 lt!228604))))))))

(assert (=> b!502661 (= (index!18294 lt!228604) i!1204)))

(declare-fun lt!228606 () Unit!15194)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!32350 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15194)

(assert (=> b!502661 (= lt!228606 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!228608 #b00000000000000000000000000000000 (index!18294 lt!228604) (x!47350 lt!228604) mask!3524))))

(assert (=> b!502661 (and (or (= (select (arr!15552 a!3235) (index!18294 lt!228604)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15552 a!3235) (index!18294 lt!228604)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15552 a!3235) (index!18294 lt!228604)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15552 a!3235) (index!18294 lt!228604)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!228607 () Unit!15194)

(assert (=> b!502661 (= lt!228607 e!294405)))

(declare-fun c!59519 () Bool)

(assert (=> b!502661 (= c!59519 (= (select (arr!15552 a!3235) (index!18294 lt!228604)) (select (arr!15552 a!3235) j!176)))))

(assert (=> b!502661 (and (bvslt (x!47350 lt!228604) #b01111111111111111111111111111110) (or (= (select (arr!15552 a!3235) (index!18294 lt!228604)) (select (arr!15552 a!3235) j!176)) (= (select (arr!15552 a!3235) (index!18294 lt!228604)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15552 a!3235) (index!18294 lt!228604)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!45634 res!304166) b!502651))

(assert (= (and b!502651 res!304168) b!502652))

(assert (= (and b!502652 res!304167) b!502647))

(assert (= (and b!502647 res!304174) b!502646))

(assert (= (and b!502646 res!304164) b!502653))

(assert (= (and b!502653 res!304177) b!502655))

(assert (= (and b!502655 res!304173) b!502656))

(assert (= (and b!502656 res!304165) b!502654))

(assert (= (and b!502654 res!304171) b!502648))

(assert (= (and b!502654 (not res!304175)) b!502657))

(assert (= (and b!502657 (not res!304169)) b!502661))

(assert (= (and b!502661 c!59519) b!502650))

(assert (= (and b!502661 (not c!59519)) b!502645))

(assert (= (and b!502650 res!304176) b!502649))

(assert (= (and b!502661 (not res!304172)) b!502659))

(assert (= (and b!502659 res!304170) b!502658))

(assert (= (and b!502659 (not res!304178)) b!502660))

(declare-fun m!483577 () Bool)

(assert (=> b!502661 m!483577))

(declare-fun m!483579 () Bool)

(assert (=> b!502661 m!483579))

(declare-fun m!483581 () Bool)

(assert (=> b!502661 m!483581))

(declare-fun m!483583 () Bool)

(assert (=> b!502646 m!483583))

(declare-fun m!483585 () Bool)

(assert (=> b!502654 m!483585))

(declare-fun m!483587 () Bool)

(assert (=> b!502654 m!483587))

(declare-fun m!483589 () Bool)

(assert (=> b!502654 m!483589))

(declare-fun m!483591 () Bool)

(assert (=> b!502654 m!483591))

(assert (=> b!502654 m!483581))

(declare-fun m!483593 () Bool)

(assert (=> b!502654 m!483593))

(declare-fun m!483595 () Bool)

(assert (=> b!502654 m!483595))

(assert (=> b!502654 m!483581))

(assert (=> b!502654 m!483581))

(declare-fun m!483597 () Bool)

(assert (=> b!502654 m!483597))

(declare-fun m!483599 () Bool)

(assert (=> b!502654 m!483599))

(declare-fun m!483601 () Bool)

(assert (=> b!502650 m!483601))

(declare-fun m!483603 () Bool)

(assert (=> b!502650 m!483603))

(declare-fun m!483605 () Bool)

(assert (=> b!502655 m!483605))

(assert (=> b!502648 m!483581))

(assert (=> b!502648 m!483581))

(declare-fun m!483607 () Bool)

(assert (=> b!502648 m!483607))

(assert (=> b!502658 m!483581))

(assert (=> b!502658 m!483581))

(declare-fun m!483609 () Bool)

(assert (=> b!502658 m!483609))

(declare-fun m!483611 () Bool)

(assert (=> b!502647 m!483611))

(assert (=> b!502652 m!483581))

(assert (=> b!502652 m!483581))

(declare-fun m!483613 () Bool)

(assert (=> b!502652 m!483613))

(declare-fun m!483615 () Bool)

(assert (=> start!45634 m!483615))

(declare-fun m!483617 () Bool)

(assert (=> start!45634 m!483617))

(declare-fun m!483619 () Bool)

(assert (=> b!502656 m!483619))

(declare-fun m!483621 () Bool)

(assert (=> b!502653 m!483621))

(assert (=> b!502660 m!483603))

(push 1)

