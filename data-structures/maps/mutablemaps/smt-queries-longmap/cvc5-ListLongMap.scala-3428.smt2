; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!47698 () Bool)

(assert start!47698)

(declare-fun b!524044 () Bool)

(declare-fun res!321133 () Bool)

(declare-fun e!305650 () Bool)

(assert (=> b!524044 (=> res!321133 e!305650)))

(declare-datatypes ((SeekEntryResult!4470 0))(
  ( (MissingZero!4470 (index!20092 (_ BitVec 32))) (Found!4470 (index!20093 (_ BitVec 32))) (Intermediate!4470 (undefined!5282 Bool) (index!20094 (_ BitVec 32)) (x!49110 (_ BitVec 32))) (Undefined!4470) (MissingVacant!4470 (index!20095 (_ BitVec 32))) )
))
(declare-fun lt!240527 () SeekEntryResult!4470)

(assert (=> b!524044 (= res!321133 (or (undefined!5282 lt!240527) (not (is-Intermediate!4470 lt!240527))))))

(declare-fun b!524045 () Bool)

(declare-fun res!321134 () Bool)

(declare-fun e!305648 () Bool)

(assert (=> b!524045 (=> (not res!321134) (not e!305648))))

(declare-datatypes ((array!33295 0))(
  ( (array!33296 (arr!15996 (Array (_ BitVec 32) (_ BitVec 64))) (size!16360 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33295)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33295 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!524045 (= res!321134 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!524046 () Bool)

(declare-fun res!321138 () Bool)

(assert (=> b!524046 (=> (not res!321138) (not e!305648))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!524046 (= res!321138 (validKeyInArray!0 (select (arr!15996 a!3235) j!176)))))

(declare-fun b!524047 () Bool)

(declare-fun e!305651 () Bool)

(assert (=> b!524047 (= e!305651 false)))

(declare-fun b!524048 () Bool)

(declare-fun res!321135 () Bool)

(assert (=> b!524048 (=> (not res!321135) (not e!305648))))

(assert (=> b!524048 (= res!321135 (validKeyInArray!0 k!2280))))

(declare-fun res!321129 () Bool)

(assert (=> start!47698 (=> (not res!321129) (not e!305648))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47698 (= res!321129 (validMask!0 mask!3524))))

(assert (=> start!47698 e!305648))

(assert (=> start!47698 true))

(declare-fun array_inv!11770 (array!33295) Bool)

(assert (=> start!47698 (array_inv!11770 a!3235)))

(declare-fun b!524049 () Bool)

(declare-fun e!305649 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33295 (_ BitVec 32)) SeekEntryResult!4470)

(assert (=> b!524049 (= e!305649 (= (seekEntryOrOpen!0 (select (arr!15996 a!3235) j!176) a!3235 mask!3524) (Found!4470 j!176)))))

(declare-fun b!524050 () Bool)

(declare-fun e!305652 () Bool)

(assert (=> b!524050 (= e!305648 e!305652)))

(declare-fun res!321139 () Bool)

(assert (=> b!524050 (=> (not res!321139) (not e!305652))))

(declare-fun lt!240525 () SeekEntryResult!4470)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!524050 (= res!321139 (or (= lt!240525 (MissingZero!4470 i!1204)) (= lt!240525 (MissingVacant!4470 i!1204))))))

(assert (=> b!524050 (= lt!240525 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!524051 () Bool)

(declare-fun res!321131 () Bool)

(assert (=> b!524051 (=> (not res!321131) (not e!305648))))

(assert (=> b!524051 (= res!321131 (and (= (size!16360 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16360 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16360 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!524052 () Bool)

(declare-datatypes ((Unit!16346 0))(
  ( (Unit!16347) )
))
(declare-fun e!305653 () Unit!16346)

(declare-fun Unit!16348 () Unit!16346)

(assert (=> b!524052 (= e!305653 Unit!16348)))

(declare-fun b!524053 () Bool)

(assert (=> b!524053 (= e!305652 (not e!305650))))

(declare-fun res!321140 () Bool)

(assert (=> b!524053 (=> res!321140 e!305650)))

(declare-fun lt!240526 () array!33295)

(declare-fun lt!240529 () (_ BitVec 64))

(declare-fun lt!240528 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33295 (_ BitVec 32)) SeekEntryResult!4470)

(assert (=> b!524053 (= res!321140 (= lt!240527 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!240528 lt!240529 lt!240526 mask!3524)))))

(declare-fun lt!240524 () (_ BitVec 32))

(assert (=> b!524053 (= lt!240527 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!240524 (select (arr!15996 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!524053 (= lt!240528 (toIndex!0 lt!240529 mask!3524))))

(assert (=> b!524053 (= lt!240529 (select (store (arr!15996 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!524053 (= lt!240524 (toIndex!0 (select (arr!15996 a!3235) j!176) mask!3524))))

(assert (=> b!524053 (= lt!240526 (array!33296 (store (arr!15996 a!3235) i!1204 k!2280) (size!16360 a!3235)))))

(assert (=> b!524053 e!305649))

(declare-fun res!321130 () Bool)

(assert (=> b!524053 (=> (not res!321130) (not e!305649))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33295 (_ BitVec 32)) Bool)

(assert (=> b!524053 (= res!321130 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!240530 () Unit!16346)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33295 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16346)

(assert (=> b!524053 (= lt!240530 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!524054 () Bool)

(assert (=> b!524054 (= e!305650 (or (bvsgt #b00000000000000000000000000000000 (x!49110 lt!240527)) (bvsgt (x!49110 lt!240527) #b01111111111111111111111111111110) (bvslt lt!240524 #b00000000000000000000000000000000) (bvsge lt!240524 (size!16360 a!3235)) (bvslt (index!20094 lt!240527) #b00000000000000000000000000000000) (bvsge (index!20094 lt!240527) (size!16360 a!3235)) (= lt!240527 (Intermediate!4470 false (index!20094 lt!240527) (x!49110 lt!240527)))))))

(assert (=> b!524054 (and (or (= (select (arr!15996 a!3235) (index!20094 lt!240527)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15996 a!3235) (index!20094 lt!240527)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15996 a!3235) (index!20094 lt!240527)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15996 a!3235) (index!20094 lt!240527)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!240523 () Unit!16346)

(assert (=> b!524054 (= lt!240523 e!305653)))

(declare-fun c!61763 () Bool)

(assert (=> b!524054 (= c!61763 (= (select (arr!15996 a!3235) (index!20094 lt!240527)) (select (arr!15996 a!3235) j!176)))))

(assert (=> b!524054 (and (bvslt (x!49110 lt!240527) #b01111111111111111111111111111110) (or (= (select (arr!15996 a!3235) (index!20094 lt!240527)) (select (arr!15996 a!3235) j!176)) (= (select (arr!15996 a!3235) (index!20094 lt!240527)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15996 a!3235) (index!20094 lt!240527)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!524055 () Bool)

(declare-fun Unit!16349 () Unit!16346)

(assert (=> b!524055 (= e!305653 Unit!16349)))

(declare-fun lt!240522 () Unit!16346)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33295 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16346)

(assert (=> b!524055 (= lt!240522 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!240524 #b00000000000000000000000000000000 (index!20094 lt!240527) (x!49110 lt!240527) mask!3524))))

(declare-fun res!321137 () Bool)

(assert (=> b!524055 (= res!321137 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!240524 lt!240529 lt!240526 mask!3524) (Intermediate!4470 false (index!20094 lt!240527) (x!49110 lt!240527))))))

(assert (=> b!524055 (=> (not res!321137) (not e!305651))))

(assert (=> b!524055 e!305651))

(declare-fun b!524056 () Bool)

(declare-fun res!321136 () Bool)

(assert (=> b!524056 (=> (not res!321136) (not e!305652))))

(declare-datatypes ((List!10207 0))(
  ( (Nil!10204) (Cons!10203 (h!11134 (_ BitVec 64)) (t!16443 List!10207)) )
))
(declare-fun arrayNoDuplicates!0 (array!33295 (_ BitVec 32) List!10207) Bool)

(assert (=> b!524056 (= res!321136 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10204))))

(declare-fun b!524057 () Bool)

(declare-fun res!321132 () Bool)

(assert (=> b!524057 (=> (not res!321132) (not e!305652))))

(assert (=> b!524057 (= res!321132 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(assert (= (and start!47698 res!321129) b!524051))

(assert (= (and b!524051 res!321131) b!524046))

(assert (= (and b!524046 res!321138) b!524048))

(assert (= (and b!524048 res!321135) b!524045))

(assert (= (and b!524045 res!321134) b!524050))

(assert (= (and b!524050 res!321139) b!524057))

(assert (= (and b!524057 res!321132) b!524056))

(assert (= (and b!524056 res!321136) b!524053))

(assert (= (and b!524053 res!321130) b!524049))

(assert (= (and b!524053 (not res!321140)) b!524044))

(assert (= (and b!524044 (not res!321133)) b!524054))

(assert (= (and b!524054 c!61763) b!524055))

(assert (= (and b!524054 (not c!61763)) b!524052))

(assert (= (and b!524055 res!321137) b!524047))

(declare-fun m!504715 () Bool)

(assert (=> b!524045 m!504715))

(declare-fun m!504717 () Bool)

(assert (=> b!524057 m!504717))

(declare-fun m!504719 () Bool)

(assert (=> b!524046 m!504719))

(assert (=> b!524046 m!504719))

(declare-fun m!504721 () Bool)

(assert (=> b!524046 m!504721))

(declare-fun m!504723 () Bool)

(assert (=> b!524055 m!504723))

(declare-fun m!504725 () Bool)

(assert (=> b!524055 m!504725))

(declare-fun m!504727 () Bool)

(assert (=> b!524048 m!504727))

(declare-fun m!504729 () Bool)

(assert (=> start!47698 m!504729))

(declare-fun m!504731 () Bool)

(assert (=> start!47698 m!504731))

(declare-fun m!504733 () Bool)

(assert (=> b!524053 m!504733))

(assert (=> b!524053 m!504719))

(declare-fun m!504735 () Bool)

(assert (=> b!524053 m!504735))

(declare-fun m!504737 () Bool)

(assert (=> b!524053 m!504737))

(declare-fun m!504739 () Bool)

(assert (=> b!524053 m!504739))

(assert (=> b!524053 m!504719))

(declare-fun m!504741 () Bool)

(assert (=> b!524053 m!504741))

(assert (=> b!524053 m!504719))

(declare-fun m!504743 () Bool)

(assert (=> b!524053 m!504743))

(declare-fun m!504745 () Bool)

(assert (=> b!524053 m!504745))

(declare-fun m!504747 () Bool)

(assert (=> b!524053 m!504747))

(declare-fun m!504749 () Bool)

(assert (=> b!524050 m!504749))

(assert (=> b!524049 m!504719))

(assert (=> b!524049 m!504719))

(declare-fun m!504751 () Bool)

(assert (=> b!524049 m!504751))

(declare-fun m!504753 () Bool)

(assert (=> b!524056 m!504753))

(declare-fun m!504755 () Bool)

(assert (=> b!524054 m!504755))

(assert (=> b!524054 m!504719))

(push 1)

