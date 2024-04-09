; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!47912 () Bool)

(assert start!47912)

(declare-fun b!527362 () Bool)

(declare-fun res!323823 () Bool)

(declare-fun e!307363 () Bool)

(assert (=> b!527362 (=> (not res!323823) (not e!307363))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!527362 (= res!323823 (validKeyInArray!0 k!2280))))

(declare-fun b!527363 () Bool)

(declare-datatypes ((Unit!16630 0))(
  ( (Unit!16631) )
))
(declare-fun e!307360 () Unit!16630)

(declare-fun Unit!16632 () Unit!16630)

(assert (=> b!527363 (= e!307360 Unit!16632)))

(declare-fun b!527364 () Bool)

(declare-fun res!323831 () Bool)

(declare-fun e!307358 () Bool)

(assert (=> b!527364 (=> (not res!323831) (not e!307358))))

(declare-datatypes ((array!33440 0))(
  ( (array!33441 (arr!16067 (Array (_ BitVec 32) (_ BitVec 64))) (size!16431 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33440)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33440 (_ BitVec 32)) Bool)

(assert (=> b!527364 (= res!323831 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!527365 () Bool)

(declare-fun Unit!16633 () Unit!16630)

(assert (=> b!527365 (= e!307360 Unit!16633)))

(declare-datatypes ((SeekEntryResult!4541 0))(
  ( (MissingZero!4541 (index!20382 (_ BitVec 32))) (Found!4541 (index!20383 (_ BitVec 32))) (Intermediate!4541 (undefined!5353 Bool) (index!20384 (_ BitVec 32)) (x!49377 (_ BitVec 32))) (Undefined!4541) (MissingVacant!4541 (index!20385 (_ BitVec 32))) )
))
(declare-fun lt!242792 () SeekEntryResult!4541)

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun lt!242793 () (_ BitVec 32))

(declare-fun lt!242798 () Unit!16630)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33440 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16630)

(assert (=> b!527365 (= lt!242798 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!242793 #b00000000000000000000000000000000 (index!20384 lt!242792) (x!49377 lt!242792) mask!3524))))

(declare-fun lt!242790 () (_ BitVec 64))

(declare-fun res!323822 () Bool)

(declare-fun lt!242797 () array!33440)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33440 (_ BitVec 32)) SeekEntryResult!4541)

(assert (=> b!527365 (= res!323822 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!242793 lt!242790 lt!242797 mask!3524) (Intermediate!4541 false (index!20384 lt!242792) (x!49377 lt!242792))))))

(declare-fun e!307359 () Bool)

(assert (=> b!527365 (=> (not res!323822) (not e!307359))))

(assert (=> b!527365 e!307359))

(declare-fun b!527366 () Bool)

(declare-fun e!307362 () Bool)

(assert (=> b!527366 (= e!307362 (or (bvsgt (x!49377 lt!242792) #b01111111111111111111111111111110) (bvslt lt!242793 #b00000000000000000000000000000000) (bvsge lt!242793 (size!16431 a!3235)) (bvslt (index!20384 lt!242792) #b00000000000000000000000000000000) (bvsge (index!20384 lt!242792) (size!16431 a!3235)) (= lt!242792 (Intermediate!4541 false (index!20384 lt!242792) (x!49377 lt!242792)))))))

(assert (=> b!527366 (= (index!20384 lt!242792) i!1204)))

(declare-fun lt!242789 () Unit!16630)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!33440 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16630)

(assert (=> b!527366 (= lt!242789 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!242793 #b00000000000000000000000000000000 (index!20384 lt!242792) (x!49377 lt!242792) mask!3524))))

(assert (=> b!527366 (and (or (= (select (arr!16067 a!3235) (index!20384 lt!242792)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16067 a!3235) (index!20384 lt!242792)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16067 a!3235) (index!20384 lt!242792)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16067 a!3235) (index!20384 lt!242792)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!242794 () Unit!16630)

(assert (=> b!527366 (= lt!242794 e!307360)))

(declare-fun c!62078 () Bool)

(assert (=> b!527366 (= c!62078 (= (select (arr!16067 a!3235) (index!20384 lt!242792)) (select (arr!16067 a!3235) j!176)))))

(assert (=> b!527366 (and (bvslt (x!49377 lt!242792) #b01111111111111111111111111111110) (or (= (select (arr!16067 a!3235) (index!20384 lt!242792)) (select (arr!16067 a!3235) j!176)) (= (select (arr!16067 a!3235) (index!20384 lt!242792)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16067 a!3235) (index!20384 lt!242792)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!527367 () Bool)

(declare-fun res!323827 () Bool)

(assert (=> b!527367 (=> (not res!323827) (not e!307363))))

(declare-fun arrayContainsKey!0 (array!33440 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!527367 (= res!323827 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!527368 () Bool)

(declare-fun res!323820 () Bool)

(assert (=> b!527368 (=> (not res!323820) (not e!307363))))

(assert (=> b!527368 (= res!323820 (and (= (size!16431 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16431 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16431 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!527369 () Bool)

(declare-fun res!323824 () Bool)

(assert (=> b!527369 (=> (not res!323824) (not e!307358))))

(declare-datatypes ((List!10278 0))(
  ( (Nil!10275) (Cons!10274 (h!11208 (_ BitVec 64)) (t!16514 List!10278)) )
))
(declare-fun arrayNoDuplicates!0 (array!33440 (_ BitVec 32) List!10278) Bool)

(assert (=> b!527369 (= res!323824 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10275))))

(declare-fun b!527370 () Bool)

(assert (=> b!527370 (= e!307358 (not e!307362))))

(declare-fun res!323826 () Bool)

(assert (=> b!527370 (=> res!323826 e!307362)))

(declare-fun lt!242791 () (_ BitVec 32))

(assert (=> b!527370 (= res!323826 (= lt!242792 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!242791 lt!242790 lt!242797 mask!3524)))))

(assert (=> b!527370 (= lt!242792 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!242793 (select (arr!16067 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!527370 (= lt!242791 (toIndex!0 lt!242790 mask!3524))))

(assert (=> b!527370 (= lt!242790 (select (store (arr!16067 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!527370 (= lt!242793 (toIndex!0 (select (arr!16067 a!3235) j!176) mask!3524))))

(assert (=> b!527370 (= lt!242797 (array!33441 (store (arr!16067 a!3235) i!1204 k!2280) (size!16431 a!3235)))))

(declare-fun e!307357 () Bool)

(assert (=> b!527370 e!307357))

(declare-fun res!323821 () Bool)

(assert (=> b!527370 (=> (not res!323821) (not e!307357))))

(assert (=> b!527370 (= res!323821 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!242795 () Unit!16630)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33440 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16630)

(assert (=> b!527370 (= lt!242795 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!527371 () Bool)

(declare-fun res!323828 () Bool)

(assert (=> b!527371 (=> (not res!323828) (not e!307363))))

(assert (=> b!527371 (= res!323828 (validKeyInArray!0 (select (arr!16067 a!3235) j!176)))))

(declare-fun res!323829 () Bool)

(assert (=> start!47912 (=> (not res!323829) (not e!307363))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47912 (= res!323829 (validMask!0 mask!3524))))

(assert (=> start!47912 e!307363))

(assert (=> start!47912 true))

(declare-fun array_inv!11841 (array!33440) Bool)

(assert (=> start!47912 (array_inv!11841 a!3235)))

(declare-fun b!527372 () Bool)

(assert (=> b!527372 (= e!307363 e!307358)))

(declare-fun res!323825 () Bool)

(assert (=> b!527372 (=> (not res!323825) (not e!307358))))

(declare-fun lt!242796 () SeekEntryResult!4541)

(assert (=> b!527372 (= res!323825 (or (= lt!242796 (MissingZero!4541 i!1204)) (= lt!242796 (MissingVacant!4541 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33440 (_ BitVec 32)) SeekEntryResult!4541)

(assert (=> b!527372 (= lt!242796 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!527373 () Bool)

(declare-fun res!323830 () Bool)

(assert (=> b!527373 (=> res!323830 e!307362)))

(assert (=> b!527373 (= res!323830 (or (undefined!5353 lt!242792) (not (is-Intermediate!4541 lt!242792))))))

(declare-fun b!527374 () Bool)

(assert (=> b!527374 (= e!307359 false)))

(declare-fun b!527375 () Bool)

(assert (=> b!527375 (= e!307357 (= (seekEntryOrOpen!0 (select (arr!16067 a!3235) j!176) a!3235 mask!3524) (Found!4541 j!176)))))

(assert (= (and start!47912 res!323829) b!527368))

(assert (= (and b!527368 res!323820) b!527371))

(assert (= (and b!527371 res!323828) b!527362))

(assert (= (and b!527362 res!323823) b!527367))

(assert (= (and b!527367 res!323827) b!527372))

(assert (= (and b!527372 res!323825) b!527364))

(assert (= (and b!527364 res!323831) b!527369))

(assert (= (and b!527369 res!323824) b!527370))

(assert (= (and b!527370 res!323821) b!527375))

(assert (= (and b!527370 (not res!323826)) b!527373))

(assert (= (and b!527373 (not res!323830)) b!527366))

(assert (= (and b!527366 c!62078) b!527365))

(assert (= (and b!527366 (not c!62078)) b!527363))

(assert (= (and b!527365 res!323822) b!527374))

(declare-fun m!508055 () Bool)

(assert (=> b!527364 m!508055))

(declare-fun m!508057 () Bool)

(assert (=> b!527365 m!508057))

(declare-fun m!508059 () Bool)

(assert (=> b!527365 m!508059))

(declare-fun m!508061 () Bool)

(assert (=> start!47912 m!508061))

(declare-fun m!508063 () Bool)

(assert (=> start!47912 m!508063))

(declare-fun m!508065 () Bool)

(assert (=> b!527371 m!508065))

(assert (=> b!527371 m!508065))

(declare-fun m!508067 () Bool)

(assert (=> b!527371 m!508067))

(assert (=> b!527375 m!508065))

(assert (=> b!527375 m!508065))

(declare-fun m!508069 () Bool)

(assert (=> b!527375 m!508069))

(declare-fun m!508071 () Bool)

(assert (=> b!527362 m!508071))

(declare-fun m!508073 () Bool)

(assert (=> b!527372 m!508073))

(declare-fun m!508075 () Bool)

(assert (=> b!527367 m!508075))

(declare-fun m!508077 () Bool)

(assert (=> b!527366 m!508077))

(declare-fun m!508079 () Bool)

(assert (=> b!527366 m!508079))

(assert (=> b!527366 m!508065))

(declare-fun m!508081 () Bool)

(assert (=> b!527369 m!508081))

(assert (=> b!527370 m!508065))

(declare-fun m!508083 () Bool)

(assert (=> b!527370 m!508083))

(declare-fun m!508085 () Bool)

(assert (=> b!527370 m!508085))

(declare-fun m!508087 () Bool)

(assert (=> b!527370 m!508087))

(declare-fun m!508089 () Bool)

(assert (=> b!527370 m!508089))

(declare-fun m!508091 () Bool)

(assert (=> b!527370 m!508091))

(assert (=> b!527370 m!508065))

(declare-fun m!508093 () Bool)

(assert (=> b!527370 m!508093))

(assert (=> b!527370 m!508065))

(declare-fun m!508095 () Bool)

(assert (=> b!527370 m!508095))

(declare-fun m!508097 () Bool)

(assert (=> b!527370 m!508097))

(push 1)

