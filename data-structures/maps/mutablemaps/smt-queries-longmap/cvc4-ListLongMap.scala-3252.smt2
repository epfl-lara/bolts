; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45398 () Bool)

(assert start!45398)

(declare-fun b!498498 () Bool)

(declare-fun e!292170 () Bool)

(declare-fun e!292167 () Bool)

(assert (=> b!498498 (= e!292170 e!292167)))

(declare-fun res!300711 () Bool)

(assert (=> b!498498 (=> res!300711 e!292167)))

(declare-fun lt!225919 () (_ BitVec 32))

(declare-datatypes ((array!32183 0))(
  ( (array!32184 (arr!15470 (Array (_ BitVec 32) (_ BitVec 64))) (size!15834 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32183)

(declare-datatypes ((SeekEntryResult!3944 0))(
  ( (MissingZero!3944 (index!17958 (_ BitVec 32))) (Found!3944 (index!17959 (_ BitVec 32))) (Intermediate!3944 (undefined!4756 Bool) (index!17960 (_ BitVec 32)) (x!47032 (_ BitVec 32))) (Undefined!3944) (MissingVacant!3944 (index!17961 (_ BitVec 32))) )
))
(declare-fun lt!225911 () SeekEntryResult!3944)

(assert (=> b!498498 (= res!300711 (or (bvsgt #b00000000000000000000000000000000 (x!47032 lt!225911)) (bvsgt (x!47032 lt!225911) #b01111111111111111111111111111110) (bvslt lt!225919 #b00000000000000000000000000000000) (bvsge lt!225919 (size!15834 a!3235)) (bvslt (index!17960 lt!225911) #b00000000000000000000000000000000) (bvsge (index!17960 lt!225911) (size!15834 a!3235)) (not (= lt!225911 (Intermediate!3944 false (index!17960 lt!225911) (x!47032 lt!225911))))))))

(assert (=> b!498498 (and (or (= (select (arr!15470 a!3235) (index!17960 lt!225911)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15470 a!3235) (index!17960 lt!225911)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15470 a!3235) (index!17960 lt!225911)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15470 a!3235) (index!17960 lt!225911)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!14866 0))(
  ( (Unit!14867) )
))
(declare-fun lt!225912 () Unit!14866)

(declare-fun e!292171 () Unit!14866)

(assert (=> b!498498 (= lt!225912 e!292171)))

(declare-fun c!59171 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!498498 (= c!59171 (= (select (arr!15470 a!3235) (index!17960 lt!225911)) (select (arr!15470 a!3235) j!176)))))

(assert (=> b!498498 (and (bvslt (x!47032 lt!225911) #b01111111111111111111111111111110) (or (= (select (arr!15470 a!3235) (index!17960 lt!225911)) (select (arr!15470 a!3235) j!176)) (= (select (arr!15470 a!3235) (index!17960 lt!225911)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15470 a!3235) (index!17960 lt!225911)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!498499 () Bool)

(declare-fun e!292165 () Bool)

(declare-fun e!292164 () Bool)

(assert (=> b!498499 (= e!292165 e!292164)))

(declare-fun res!300718 () Bool)

(assert (=> b!498499 (=> (not res!300718) (not e!292164))))

(declare-fun lt!225918 () SeekEntryResult!3944)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!498499 (= res!300718 (or (= lt!225918 (MissingZero!3944 i!1204)) (= lt!225918 (MissingVacant!3944 i!1204))))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32183 (_ BitVec 32)) SeekEntryResult!3944)

(assert (=> b!498499 (= lt!225918 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!498500 () Bool)

(assert (=> b!498500 (= e!292164 (not e!292170))))

(declare-fun res!300720 () Bool)

(assert (=> b!498500 (=> res!300720 e!292170)))

(declare-fun lt!225920 () (_ BitVec 64))

(declare-fun lt!225917 () array!32183)

(declare-fun lt!225914 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32183 (_ BitVec 32)) SeekEntryResult!3944)

(assert (=> b!498500 (= res!300720 (= lt!225911 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225914 lt!225920 lt!225917 mask!3524)))))

(assert (=> b!498500 (= lt!225911 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225919 (select (arr!15470 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!498500 (= lt!225914 (toIndex!0 lt!225920 mask!3524))))

(assert (=> b!498500 (= lt!225920 (select (store (arr!15470 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!498500 (= lt!225919 (toIndex!0 (select (arr!15470 a!3235) j!176) mask!3524))))

(assert (=> b!498500 (= lt!225917 (array!32184 (store (arr!15470 a!3235) i!1204 k!2280) (size!15834 a!3235)))))

(declare-fun e!292169 () Bool)

(assert (=> b!498500 e!292169))

(declare-fun res!300713 () Bool)

(assert (=> b!498500 (=> (not res!300713) (not e!292169))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32183 (_ BitVec 32)) Bool)

(assert (=> b!498500 (= res!300713 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!225915 () Unit!14866)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32183 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14866)

(assert (=> b!498500 (= lt!225915 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun res!300712 () Bool)

(assert (=> start!45398 (=> (not res!300712) (not e!292165))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45398 (= res!300712 (validMask!0 mask!3524))))

(assert (=> start!45398 e!292165))

(assert (=> start!45398 true))

(declare-fun array_inv!11244 (array!32183) Bool)

(assert (=> start!45398 (array_inv!11244 a!3235)))

(declare-fun b!498501 () Bool)

(declare-fun res!300714 () Bool)

(assert (=> b!498501 (=> (not res!300714) (not e!292165))))

(declare-fun arrayContainsKey!0 (array!32183 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!498501 (= res!300714 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!498502 () Bool)

(declare-fun res!300722 () Bool)

(assert (=> b!498502 (=> (not res!300722) (not e!292165))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!498502 (= res!300722 (validKeyInArray!0 k!2280))))

(declare-fun b!498503 () Bool)

(declare-fun res!300721 () Bool)

(assert (=> b!498503 (=> (not res!300721) (not e!292164))))

(assert (=> b!498503 (= res!300721 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!498504 () Bool)

(assert (=> b!498504 (= e!292169 (= (seekEntryOrOpen!0 (select (arr!15470 a!3235) j!176) a!3235 mask!3524) (Found!3944 j!176)))))

(declare-fun b!498505 () Bool)

(declare-fun res!300716 () Bool)

(assert (=> b!498505 (=> (not res!300716) (not e!292165))))

(assert (=> b!498505 (= res!300716 (validKeyInArray!0 (select (arr!15470 a!3235) j!176)))))

(declare-fun b!498506 () Bool)

(assert (=> b!498506 (= e!292167 true)))

(declare-fun lt!225913 () SeekEntryResult!3944)

(assert (=> b!498506 (= lt!225913 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225919 lt!225920 lt!225917 mask!3524))))

(declare-fun b!498507 () Bool)

(declare-fun res!300719 () Bool)

(assert (=> b!498507 (=> (not res!300719) (not e!292164))))

(declare-datatypes ((List!9681 0))(
  ( (Nil!9678) (Cons!9677 (h!10551 (_ BitVec 64)) (t!15917 List!9681)) )
))
(declare-fun arrayNoDuplicates!0 (array!32183 (_ BitVec 32) List!9681) Bool)

(assert (=> b!498507 (= res!300719 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9678))))

(declare-fun b!498508 () Bool)

(declare-fun res!300710 () Bool)

(assert (=> b!498508 (=> (not res!300710) (not e!292165))))

(assert (=> b!498508 (= res!300710 (and (= (size!15834 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15834 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15834 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!498509 () Bool)

(declare-fun e!292168 () Bool)

(assert (=> b!498509 (= e!292168 false)))

(declare-fun b!498510 () Bool)

(declare-fun res!300715 () Bool)

(assert (=> b!498510 (=> res!300715 e!292170)))

(assert (=> b!498510 (= res!300715 (or (undefined!4756 lt!225911) (not (is-Intermediate!3944 lt!225911))))))

(declare-fun b!498511 () Bool)

(declare-fun Unit!14868 () Unit!14866)

(assert (=> b!498511 (= e!292171 Unit!14868)))

(declare-fun lt!225916 () Unit!14866)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32183 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14866)

(assert (=> b!498511 (= lt!225916 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!225919 #b00000000000000000000000000000000 (index!17960 lt!225911) (x!47032 lt!225911) mask!3524))))

(declare-fun res!300717 () Bool)

(assert (=> b!498511 (= res!300717 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225919 lt!225920 lt!225917 mask!3524) (Intermediate!3944 false (index!17960 lt!225911) (x!47032 lt!225911))))))

(assert (=> b!498511 (=> (not res!300717) (not e!292168))))

(assert (=> b!498511 e!292168))

(declare-fun b!498512 () Bool)

(declare-fun Unit!14869 () Unit!14866)

(assert (=> b!498512 (= e!292171 Unit!14869)))

(assert (= (and start!45398 res!300712) b!498508))

(assert (= (and b!498508 res!300710) b!498505))

(assert (= (and b!498505 res!300716) b!498502))

(assert (= (and b!498502 res!300722) b!498501))

(assert (= (and b!498501 res!300714) b!498499))

(assert (= (and b!498499 res!300718) b!498503))

(assert (= (and b!498503 res!300721) b!498507))

(assert (= (and b!498507 res!300719) b!498500))

(assert (= (and b!498500 res!300713) b!498504))

(assert (= (and b!498500 (not res!300720)) b!498510))

(assert (= (and b!498510 (not res!300715)) b!498498))

(assert (= (and b!498498 c!59171) b!498511))

(assert (= (and b!498498 (not c!59171)) b!498512))

(assert (= (and b!498511 res!300717) b!498509))

(assert (= (and b!498498 (not res!300711)) b!498506))

(declare-fun m!479785 () Bool)

(assert (=> b!498502 m!479785))

(declare-fun m!479787 () Bool)

(assert (=> b!498511 m!479787))

(declare-fun m!479789 () Bool)

(assert (=> b!498511 m!479789))

(declare-fun m!479791 () Bool)

(assert (=> b!498505 m!479791))

(assert (=> b!498505 m!479791))

(declare-fun m!479793 () Bool)

(assert (=> b!498505 m!479793))

(declare-fun m!479795 () Bool)

(assert (=> start!45398 m!479795))

(declare-fun m!479797 () Bool)

(assert (=> start!45398 m!479797))

(assert (=> b!498504 m!479791))

(assert (=> b!498504 m!479791))

(declare-fun m!479799 () Bool)

(assert (=> b!498504 m!479799))

(declare-fun m!479801 () Bool)

(assert (=> b!498498 m!479801))

(assert (=> b!498498 m!479791))

(declare-fun m!479803 () Bool)

(assert (=> b!498503 m!479803))

(declare-fun m!479805 () Bool)

(assert (=> b!498500 m!479805))

(declare-fun m!479807 () Bool)

(assert (=> b!498500 m!479807))

(declare-fun m!479809 () Bool)

(assert (=> b!498500 m!479809))

(declare-fun m!479811 () Bool)

(assert (=> b!498500 m!479811))

(declare-fun m!479813 () Bool)

(assert (=> b!498500 m!479813))

(assert (=> b!498500 m!479791))

(declare-fun m!479815 () Bool)

(assert (=> b!498500 m!479815))

(assert (=> b!498500 m!479791))

(declare-fun m!479817 () Bool)

(assert (=> b!498500 m!479817))

(assert (=> b!498500 m!479791))

(declare-fun m!479819 () Bool)

(assert (=> b!498500 m!479819))

(assert (=> b!498506 m!479789))

(declare-fun m!479821 () Bool)

(assert (=> b!498499 m!479821))

(declare-fun m!479823 () Bool)

(assert (=> b!498501 m!479823))

(declare-fun m!479825 () Bool)

(assert (=> b!498507 m!479825))

(push 1)

