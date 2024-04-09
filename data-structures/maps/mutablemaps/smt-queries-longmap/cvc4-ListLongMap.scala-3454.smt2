; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!47930 () Bool)

(assert start!47930)

(declare-fun b!527748 () Bool)

(declare-fun res!324155 () Bool)

(declare-fun e!307561 () Bool)

(assert (=> b!527748 (=> (not res!324155) (not e!307561))))

(declare-datatypes ((array!33458 0))(
  ( (array!33459 (arr!16076 (Array (_ BitVec 32) (_ BitVec 64))) (size!16440 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33458)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!527748 (= res!324155 (validKeyInArray!0 (select (arr!16076 a!3235) j!176)))))

(declare-fun b!527749 () Bool)

(declare-datatypes ((Unit!16666 0))(
  ( (Unit!16667) )
))
(declare-fun e!307554 () Unit!16666)

(declare-fun Unit!16668 () Unit!16666)

(assert (=> b!527749 (= e!307554 Unit!16668)))

(declare-fun b!527750 () Bool)

(declare-fun e!307556 () Bool)

(declare-fun e!307555 () Bool)

(assert (=> b!527750 (= e!307556 e!307555)))

(declare-fun res!324152 () Bool)

(assert (=> b!527750 (=> res!324152 e!307555)))

(declare-fun lt!243064 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4550 0))(
  ( (MissingZero!4550 (index!20418 (_ BitVec 32))) (Found!4550 (index!20419 (_ BitVec 32))) (Intermediate!4550 (undefined!5362 Bool) (index!20420 (_ BitVec 32)) (x!49410 (_ BitVec 32))) (Undefined!4550) (MissingVacant!4550 (index!20421 (_ BitVec 32))) )
))
(declare-fun lt!243068 () SeekEntryResult!4550)

(assert (=> b!527750 (= res!324152 (or (bvsgt (x!49410 lt!243068) #b01111111111111111111111111111110) (bvslt lt!243064 #b00000000000000000000000000000000) (bvsge lt!243064 (size!16440 a!3235)) (bvslt (index!20420 lt!243068) #b00000000000000000000000000000000) (bvsge (index!20420 lt!243068) (size!16440 a!3235)) (not (= lt!243068 (Intermediate!4550 false (index!20420 lt!243068) (x!49410 lt!243068)))) (bvsle #b00000000000000000000000000000000 (x!49410 lt!243068))))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!527750 (= (index!20420 lt!243068) i!1204)))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun lt!243067 () Unit!16666)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!33458 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16666)

(assert (=> b!527750 (= lt!243067 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!243064 #b00000000000000000000000000000000 (index!20420 lt!243068) (x!49410 lt!243068) mask!3524))))

(assert (=> b!527750 (and (or (= (select (arr!16076 a!3235) (index!20420 lt!243068)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16076 a!3235) (index!20420 lt!243068)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16076 a!3235) (index!20420 lt!243068)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16076 a!3235) (index!20420 lt!243068)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!243061 () Unit!16666)

(assert (=> b!527750 (= lt!243061 e!307554)))

(declare-fun c!62105 () Bool)

(assert (=> b!527750 (= c!62105 (= (select (arr!16076 a!3235) (index!20420 lt!243068)) (select (arr!16076 a!3235) j!176)))))

(assert (=> b!527750 (and (bvslt (x!49410 lt!243068) #b01111111111111111111111111111110) (or (= (select (arr!16076 a!3235) (index!20420 lt!243068)) (select (arr!16076 a!3235) j!176)) (= (select (arr!16076 a!3235) (index!20420 lt!243068)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16076 a!3235) (index!20420 lt!243068)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!527751 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33458 (_ BitVec 32)) SeekEntryResult!4550)

(assert (=> b!527751 (= e!307555 (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!243064 (index!20420 lt!243068) (select (arr!16076 a!3235) j!176) a!3235 mask!3524) (Found!4550 j!176)))))

(declare-fun b!527752 () Bool)

(declare-fun res!324158 () Bool)

(assert (=> b!527752 (=> (not res!324158) (not e!307561))))

(declare-fun arrayContainsKey!0 (array!33458 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!527752 (= res!324158 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!527753 () Bool)

(declare-fun e!307559 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33458 (_ BitVec 32)) SeekEntryResult!4550)

(assert (=> b!527753 (= e!307559 (= (seekEntryOrOpen!0 (select (arr!16076 a!3235) j!176) a!3235 mask!3524) (Found!4550 j!176)))))

(declare-fun b!527754 () Bool)

(declare-fun res!324161 () Bool)

(declare-fun e!307557 () Bool)

(assert (=> b!527754 (=> (not res!324161) (not e!307557))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33458 (_ BitVec 32)) Bool)

(assert (=> b!527754 (= res!324161 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!527755 () Bool)

(declare-fun res!324157 () Bool)

(assert (=> b!527755 (=> (not res!324157) (not e!307561))))

(assert (=> b!527755 (= res!324157 (validKeyInArray!0 k!2280))))

(declare-fun b!527757 () Bool)

(declare-fun res!324163 () Bool)

(assert (=> b!527757 (=> (not res!324163) (not e!307557))))

(declare-datatypes ((List!10287 0))(
  ( (Nil!10284) (Cons!10283 (h!11217 (_ BitVec 64)) (t!16523 List!10287)) )
))
(declare-fun arrayNoDuplicates!0 (array!33458 (_ BitVec 32) List!10287) Bool)

(assert (=> b!527757 (= res!324163 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10284))))

(declare-fun b!527758 () Bool)

(declare-fun e!307558 () Bool)

(assert (=> b!527758 (= e!307558 false)))

(declare-fun b!527759 () Bool)

(assert (=> b!527759 (= e!307557 (not e!307556))))

(declare-fun res!324153 () Bool)

(assert (=> b!527759 (=> res!324153 e!307556)))

(declare-fun lt!243066 () (_ BitVec 32))

(declare-fun lt!243063 () array!33458)

(declare-fun lt!243059 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33458 (_ BitVec 32)) SeekEntryResult!4550)

(assert (=> b!527759 (= res!324153 (= lt!243068 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!243066 lt!243059 lt!243063 mask!3524)))))

(assert (=> b!527759 (= lt!243068 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!243064 (select (arr!16076 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!527759 (= lt!243066 (toIndex!0 lt!243059 mask!3524))))

(assert (=> b!527759 (= lt!243059 (select (store (arr!16076 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!527759 (= lt!243064 (toIndex!0 (select (arr!16076 a!3235) j!176) mask!3524))))

(assert (=> b!527759 (= lt!243063 (array!33459 (store (arr!16076 a!3235) i!1204 k!2280) (size!16440 a!3235)))))

(assert (=> b!527759 e!307559))

(declare-fun res!324156 () Bool)

(assert (=> b!527759 (=> (not res!324156) (not e!307559))))

(assert (=> b!527759 (= res!324156 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!243065 () Unit!16666)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33458 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16666)

(assert (=> b!527759 (= lt!243065 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!527760 () Bool)

(declare-fun res!324164 () Bool)

(assert (=> b!527760 (=> (not res!324164) (not e!307561))))

(assert (=> b!527760 (= res!324164 (and (= (size!16440 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16440 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16440 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!527761 () Bool)

(declare-fun res!324160 () Bool)

(assert (=> b!527761 (=> res!324160 e!307556)))

(assert (=> b!527761 (= res!324160 (or (undefined!5362 lt!243068) (not (is-Intermediate!4550 lt!243068))))))

(declare-fun b!527762 () Bool)

(declare-fun Unit!16669 () Unit!16666)

(assert (=> b!527762 (= e!307554 Unit!16669)))

(declare-fun lt!243062 () Unit!16666)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33458 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16666)

(assert (=> b!527762 (= lt!243062 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!243064 #b00000000000000000000000000000000 (index!20420 lt!243068) (x!49410 lt!243068) mask!3524))))

(declare-fun res!324159 () Bool)

(assert (=> b!527762 (= res!324159 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!243064 lt!243059 lt!243063 mask!3524) (Intermediate!4550 false (index!20420 lt!243068) (x!49410 lt!243068))))))

(assert (=> b!527762 (=> (not res!324159) (not e!307558))))

(assert (=> b!527762 e!307558))

(declare-fun b!527756 () Bool)

(assert (=> b!527756 (= e!307561 e!307557)))

(declare-fun res!324162 () Bool)

(assert (=> b!527756 (=> (not res!324162) (not e!307557))))

(declare-fun lt!243060 () SeekEntryResult!4550)

(assert (=> b!527756 (= res!324162 (or (= lt!243060 (MissingZero!4550 i!1204)) (= lt!243060 (MissingVacant!4550 i!1204))))))

(assert (=> b!527756 (= lt!243060 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun res!324154 () Bool)

(assert (=> start!47930 (=> (not res!324154) (not e!307561))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47930 (= res!324154 (validMask!0 mask!3524))))

(assert (=> start!47930 e!307561))

(assert (=> start!47930 true))

(declare-fun array_inv!11850 (array!33458) Bool)

(assert (=> start!47930 (array_inv!11850 a!3235)))

(assert (= (and start!47930 res!324154) b!527760))

(assert (= (and b!527760 res!324164) b!527748))

(assert (= (and b!527748 res!324155) b!527755))

(assert (= (and b!527755 res!324157) b!527752))

(assert (= (and b!527752 res!324158) b!527756))

(assert (= (and b!527756 res!324162) b!527754))

(assert (= (and b!527754 res!324161) b!527757))

(assert (= (and b!527757 res!324163) b!527759))

(assert (= (and b!527759 res!324156) b!527753))

(assert (= (and b!527759 (not res!324153)) b!527761))

(assert (= (and b!527761 (not res!324160)) b!527750))

(assert (= (and b!527750 c!62105) b!527762))

(assert (= (and b!527750 (not c!62105)) b!527749))

(assert (= (and b!527762 res!324159) b!527758))

(assert (= (and b!527750 (not res!324152)) b!527751))

(declare-fun m!508455 () Bool)

(assert (=> b!527752 m!508455))

(declare-fun m!508457 () Bool)

(assert (=> b!527753 m!508457))

(assert (=> b!527753 m!508457))

(declare-fun m!508459 () Bool)

(assert (=> b!527753 m!508459))

(assert (=> b!527748 m!508457))

(assert (=> b!527748 m!508457))

(declare-fun m!508461 () Bool)

(assert (=> b!527748 m!508461))

(declare-fun m!508463 () Bool)

(assert (=> b!527762 m!508463))

(declare-fun m!508465 () Bool)

(assert (=> b!527762 m!508465))

(declare-fun m!508467 () Bool)

(assert (=> b!527756 m!508467))

(assert (=> b!527751 m!508457))

(assert (=> b!527751 m!508457))

(declare-fun m!508469 () Bool)

(assert (=> b!527751 m!508469))

(declare-fun m!508471 () Bool)

(assert (=> b!527755 m!508471))

(declare-fun m!508473 () Bool)

(assert (=> b!527759 m!508473))

(declare-fun m!508475 () Bool)

(assert (=> b!527759 m!508475))

(declare-fun m!508477 () Bool)

(assert (=> b!527759 m!508477))

(assert (=> b!527759 m!508457))

(declare-fun m!508479 () Bool)

(assert (=> b!527759 m!508479))

(assert (=> b!527759 m!508457))

(declare-fun m!508481 () Bool)

(assert (=> b!527759 m!508481))

(assert (=> b!527759 m!508457))

(declare-fun m!508483 () Bool)

(assert (=> b!527759 m!508483))

(declare-fun m!508485 () Bool)

(assert (=> b!527759 m!508485))

(declare-fun m!508487 () Bool)

(assert (=> b!527759 m!508487))

(declare-fun m!508489 () Bool)

(assert (=> b!527750 m!508489))

(declare-fun m!508491 () Bool)

(assert (=> b!527750 m!508491))

(assert (=> b!527750 m!508457))

(declare-fun m!508493 () Bool)

(assert (=> b!527754 m!508493))

(declare-fun m!508495 () Bool)

(assert (=> b!527757 m!508495))

(declare-fun m!508497 () Bool)

(assert (=> start!47930 m!508497))

(declare-fun m!508499 () Bool)

(assert (=> start!47930 m!508499))

(push 1)

(assert (not b!527748))

(assert (not b!527751))

(assert (not b!527753))

(assert (not b!527754))

(assert (not b!527757))

(assert (not b!527759))

(assert (not b!527750))

(assert (not b!527752))

(assert (not start!47930))

(assert (not b!527755))

(assert (not b!527762))

(assert (not b!527756))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!527832 () Bool)

(declare-fun e!307604 () SeekEntryResult!4550)

(assert (=> b!527832 (= e!307604 (MissingVacant!4550 (index!20420 lt!243068)))))

(declare-fun b!527833 () Bool)

(declare-fun e!307606 () SeekEntryResult!4550)

(assert (=> b!527833 (= e!307606 (Found!4550 lt!243064))))

(declare-fun b!527834 () Bool)

(declare-fun e!307605 () SeekEntryResult!4550)

(assert (=> b!527834 (= e!307605 Undefined!4550)))

(declare-fun b!527835 () Bool)

(declare-fun c!62134 () Bool)

(declare-fun lt!243099 () (_ BitVec 64))

(assert (=> b!527835 (= c!62134 (= lt!243099 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!527835 (= e!307606 e!307604)))

(declare-fun lt!243098 () SeekEntryResult!4550)

(declare-fun d!80777 () Bool)

(assert (=> d!80777 (and (or (is-Undefined!4550 lt!243098) (not (is-Found!4550 lt!243098)) (and (bvsge (index!20419 lt!243098) #b00000000000000000000000000000000) (bvslt (index!20419 lt!243098) (size!16440 a!3235)))) (or (is-Undefined!4550 lt!243098) (is-Found!4550 lt!243098) (not (is-MissingVacant!4550 lt!243098)) (not (= (index!20421 lt!243098) (index!20420 lt!243068))) (and (bvsge (index!20421 lt!243098) #b00000000000000000000000000000000) (bvslt (index!20421 lt!243098) (size!16440 a!3235)))) (or (is-Undefined!4550 lt!243098) (ite (is-Found!4550 lt!243098) (= (select (arr!16076 a!3235) (index!20419 lt!243098)) (select (arr!16076 a!3235) j!176)) (and (is-MissingVacant!4550 lt!243098) (= (index!20421 lt!243098) (index!20420 lt!243068)) (= (select (arr!16076 a!3235) (index!20421 lt!243098)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!80777 (= lt!243098 e!307605)))

(declare-fun c!62135 () Bool)

(assert (=> d!80777 (= c!62135 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!80777 (= lt!243099 (select (arr!16076 a!3235) lt!243064))))

(assert (=> d!80777 (validMask!0 mask!3524)))

(assert (=> d!80777 (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!243064 (index!20420 lt!243068) (select (arr!16076 a!3235) j!176) a!3235 mask!3524) lt!243098)))

(declare-fun b!527836 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!527836 (= e!307604 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!243064 #b00000000000000000000000000000000 mask!3524) (index!20420 lt!243068) (select (arr!16076 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!527837 () Bool)

(assert (=> b!527837 (= e!307605 e!307606)))

(declare-fun c!62133 () Bool)

(assert (=> b!527837 (= c!62133 (= lt!243099 (select (arr!16076 a!3235) j!176)))))

(assert (= (and d!80777 c!62135) b!527834))

(assert (= (and d!80777 (not c!62135)) b!527837))

(assert (= (and b!527837 c!62133) b!527833))

(assert (= (and b!527837 (not c!62133)) b!527835))

(assert (= (and b!527835 c!62134) b!527832))

(assert (= (and b!527835 (not c!62134)) b!527836))

(declare-fun m!508527 () Bool)

(assert (=> d!80777 m!508527))

(declare-fun m!508529 () Bool)

(assert (=> d!80777 m!508529))

(declare-fun m!508531 () Bool)

(assert (=> d!80777 m!508531))

(assert (=> d!80777 m!508497))

(declare-fun m!508533 () Bool)

(assert (=> b!527836 m!508533))

(assert (=> b!527836 m!508533))

(assert (=> b!527836 m!508457))

(declare-fun m!508535 () Bool)

(assert (=> b!527836 m!508535))

(assert (=> b!527751 d!80777))

(declare-fun d!80785 () Bool)

(assert (=> d!80785 (= (index!20420 lt!243068) i!1204)))

(declare-fun lt!243104 () Unit!16666)

(declare-fun choose!104 (array!33458 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16666)

(assert (=> d!80785 (= lt!243104 (choose!104 a!3235 i!1204 k!2280 j!176 lt!243064 #b00000000000000000000000000000000 (index!20420 lt!243068) (x!49410 lt!243068) mask!3524))))

(assert (=> d!80785 (validMask!0 mask!3524)))

(assert (=> d!80785 (= (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!243064 #b00000000000000000000000000000000 (index!20420 lt!243068) (x!49410 lt!243068) mask!3524) lt!243104)))

(declare-fun bs!16542 () Bool)

(assert (= bs!16542 d!80785))

(declare-fun m!508537 () Bool)

(assert (=> bs!16542 m!508537))

(assert (=> bs!16542 m!508497))

(assert (=> b!527750 d!80785))

(declare-fun d!80787 () Bool)

(declare-fun res!324184 () Bool)

(declare-fun e!307626 () Bool)

(assert (=> d!80787 (=> res!324184 e!307626)))

(assert (=> d!80787 (= res!324184 (= (select (arr!16076 a!3235) #b00000000000000000000000000000000) k!2280))))

(assert (=> d!80787 (= (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000) e!307626)))

(declare-fun b!527872 () Bool)

(declare-fun e!307627 () Bool)

(assert (=> b!527872 (= e!307626 e!307627)))

(declare-fun res!324185 () Bool)

(assert (=> b!527872 (=> (not res!324185) (not e!307627))))

(assert (=> b!527872 (= res!324185 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16440 a!3235)))))

(declare-fun b!527873 () Bool)

(assert (=> b!527873 (= e!307627 (arrayContainsKey!0 a!3235 k!2280 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!80787 (not res!324184)) b!527872))

(assert (= (and b!527872 res!324185) b!527873))

(declare-fun m!508577 () Bool)

(assert (=> d!80787 m!508577))

(declare-fun m!508581 () Bool)

(assert (=> b!527873 m!508581))

(assert (=> b!527752 d!80787))

(declare-fun d!80795 () Bool)

(declare-fun e!307636 () Bool)

(assert (=> d!80795 e!307636))

(declare-fun res!324194 () Bool)

(assert (=> d!80795 (=> (not res!324194) (not e!307636))))

(assert (=> d!80795 (= res!324194 (and (or (bvslt i!1204 #b00000000000000000000000000000000) (bvsge i!1204 (size!16440 a!3235)) (and (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16440 a!3235)))) (or (bvslt i!1204 #b00000000000000000000000000000000) (bvsge i!1204 (size!16440 a!3235)) (and (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16440 a!3235)))) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16440 a!3235))))))

(declare-fun lt!243116 () Unit!16666)

(declare-fun choose!47 (array!33458 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16666)

(assert (=> d!80795 (= lt!243116 (choose!47 a!3235 i!1204 k!2280 j!176 lt!243064 #b00000000000000000000000000000000 (index!20420 lt!243068) (x!49410 lt!243068) mask!3524))))

(assert (=> d!80795 (validMask!0 mask!3524)))

(assert (=> d!80795 (= (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!243064 #b00000000000000000000000000000000 (index!20420 lt!243068) (x!49410 lt!243068) mask!3524) lt!243116)))

(declare-fun b!527882 () Bool)

(assert (=> b!527882 (= e!307636 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!243064 (select (store (arr!16076 a!3235) i!1204 k!2280) j!176) (array!33459 (store (arr!16076 a!3235) i!1204 k!2280) (size!16440 a!3235)) mask!3524) (Intermediate!4550 false (index!20420 lt!243068) (x!49410 lt!243068))))))

(assert (= (and d!80795 res!324194) b!527882))

(declare-fun m!508585 () Bool)

(assert (=> d!80795 m!508585))

(assert (=> d!80795 m!508497))

(assert (=> b!527882 m!508473))

(assert (=> b!527882 m!508477))

(assert (=> b!527882 m!508477))

(declare-fun m!508587 () Bool)

(assert (=> b!527882 m!508587))

(assert (=> b!527762 d!80795))

(declare-fun b!527930 () Bool)

(declare-fun lt!243135 () SeekEntryResult!4550)

(assert (=> b!527930 (and (bvsge (index!20420 lt!243135) #b00000000000000000000000000000000) (bvslt (index!20420 lt!243135) (size!16440 lt!243063)))))

(declare-fun e!307666 () Bool)

(assert (=> b!527930 (= e!307666 (= (select (arr!16076 lt!243063) (index!20420 lt!243135)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!307667 () SeekEntryResult!4550)

(declare-fun b!527931 () Bool)

(assert (=> b!527931 (= e!307667 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!243064 #b00000000000000000000000000000000 mask!3524) lt!243059 lt!243063 mask!3524))))

(declare-fun b!527932 () Bool)

(declare-fun e!307664 () Bool)

(assert (=> b!527932 (= e!307664 (bvsge (x!49410 lt!243135) #b01111111111111111111111111111110))))

(declare-fun b!527933 () Bool)

(declare-fun e!307668 () SeekEntryResult!4550)

(assert (=> b!527933 (= e!307668 (Intermediate!4550 true lt!243064 #b00000000000000000000000000000000))))

(declare-fun b!527934 () Bool)

(assert (=> b!527934 (and (bvsge (index!20420 lt!243135) #b00000000000000000000000000000000) (bvslt (index!20420 lt!243135) (size!16440 lt!243063)))))

(declare-fun res!324211 () Bool)

(assert (=> b!527934 (= res!324211 (= (select (arr!16076 lt!243063) (index!20420 lt!243135)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!527934 (=> res!324211 e!307666)))

(declare-fun b!527935 () Bool)

(assert (=> b!527935 (and (bvsge (index!20420 lt!243135) #b00000000000000000000000000000000) (bvslt (index!20420 lt!243135) (size!16440 lt!243063)))))

(declare-fun res!324212 () Bool)

(assert (=> b!527935 (= res!324212 (= (select (arr!16076 lt!243063) (index!20420 lt!243135)) lt!243059))))

(assert (=> b!527935 (=> res!324212 e!307666)))

(declare-fun e!307665 () Bool)

(assert (=> b!527935 (= e!307665 e!307666)))

(declare-fun b!527936 () Bool)

(assert (=> b!527936 (= e!307664 e!307665)))

(declare-fun res!324210 () Bool)

(assert (=> b!527936 (= res!324210 (and (is-Intermediate!4550 lt!243135) (not (undefined!5362 lt!243135)) (bvslt (x!49410 lt!243135) #b01111111111111111111111111111110) (bvsge (x!49410 lt!243135) #b00000000000000000000000000000000) (bvsge (x!49410 lt!243135) #b00000000000000000000000000000000)))))

(assert (=> b!527936 (=> (not res!324210) (not e!307665))))

(declare-fun d!80799 () Bool)

(assert (=> d!80799 e!307664))

(declare-fun c!62169 () Bool)

(assert (=> d!80799 (= c!62169 (and (is-Intermediate!4550 lt!243135) (undefined!5362 lt!243135)))))

(assert (=> d!80799 (= lt!243135 e!307668)))

(declare-fun c!62167 () Bool)

(assert (=> d!80799 (= c!62167 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!243136 () (_ BitVec 64))

(assert (=> d!80799 (= lt!243136 (select (arr!16076 lt!243063) lt!243064))))

(assert (=> d!80799 (validMask!0 mask!3524)))

(assert (=> d!80799 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!243064 lt!243059 lt!243063 mask!3524) lt!243135)))

(declare-fun b!527937 () Bool)

(assert (=> b!527937 (= e!307668 e!307667)))

(declare-fun c!62168 () Bool)

(assert (=> b!527937 (= c!62168 (or (= lt!243136 lt!243059) (= (bvadd lt!243136 lt!243136) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!527938 () Bool)

(assert (=> b!527938 (= e!307667 (Intermediate!4550 false lt!243064 #b00000000000000000000000000000000))))

(assert (= (and d!80799 c!62167) b!527933))

(assert (= (and d!80799 (not c!62167)) b!527937))

(assert (= (and b!527937 c!62168) b!527938))

(assert (= (and b!527937 (not c!62168)) b!527931))

(assert (= (and d!80799 c!62169) b!527932))

(assert (= (and d!80799 (not c!62169)) b!527936))

(assert (= (and b!527936 res!324210) b!527935))

(assert (= (and b!527935 (not res!324212)) b!527934))

(assert (= (and b!527934 (not res!324211)) b!527930))

(declare-fun m!508595 () Bool)

(assert (=> b!527935 m!508595))

(assert (=> b!527930 m!508595))

(assert (=> b!527934 m!508595))

(assert (=> b!527931 m!508533))

(assert (=> b!527931 m!508533))

(declare-fun m!508597 () Bool)

(assert (=> b!527931 m!508597))

(declare-fun m!508599 () Bool)

(assert (=> d!80799 m!508599))

(assert (=> d!80799 m!508497))

(assert (=> b!527762 d!80799))

(declare-fun b!528019 () Bool)

(declare-fun e!307721 () SeekEntryResult!4550)

(assert (=> b!528019 (= e!307721 Undefined!4550)))

(declare-fun b!528020 () Bool)

(declare-fun e!307719 () SeekEntryResult!4550)

(declare-fun lt!243172 () SeekEntryResult!4550)

(assert (=> b!528020 (= e!307719 (seekKeyOrZeroReturnVacant!0 (x!49410 lt!243172) (index!20420 lt!243172) (index!20420 lt!243172) (select (arr!16076 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!528021 () Bool)

(declare-fun c!62199 () Bool)

(declare-fun lt!243173 () (_ BitVec 64))

(assert (=> b!528021 (= c!62199 (= lt!243173 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!307720 () SeekEntryResult!4550)

(assert (=> b!528021 (= e!307720 e!307719)))

(declare-fun d!80809 () Bool)

(declare-fun lt!243171 () SeekEntryResult!4550)

