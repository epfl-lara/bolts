; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45612 () Bool)

(assert start!45612)

(declare-fun b!502084 () Bool)

(declare-fun res!303673 () Bool)

(declare-fun e!294103 () Bool)

(assert (=> b!502084 (=> (not res!303673) (not e!294103))))

(declare-datatypes ((array!32328 0))(
  ( (array!32329 (arr!15541 (Array (_ BitVec 32) (_ BitVec 64))) (size!15905 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32328)

(declare-datatypes ((List!9752 0))(
  ( (Nil!9749) (Cons!9748 (h!10625 (_ BitVec 64)) (t!15988 List!9752)) )
))
(declare-fun arrayNoDuplicates!0 (array!32328 (_ BitVec 32) List!9752) Bool)

(assert (=> b!502084 (= res!303673 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9749))))

(declare-fun b!502085 () Bool)

(declare-fun e!294101 () Bool)

(assert (=> b!502085 (= e!294103 (not e!294101))))

(declare-fun res!303674 () Bool)

(assert (=> b!502085 (=> res!303674 e!294101)))

(declare-fun lt!228242 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!4015 0))(
  ( (MissingZero!4015 (index!18248 (_ BitVec 32))) (Found!4015 (index!18249 (_ BitVec 32))) (Intermediate!4015 (undefined!4827 Bool) (index!18250 (_ BitVec 32)) (x!47307 (_ BitVec 32))) (Undefined!4015) (MissingVacant!4015 (index!18251 (_ BitVec 32))) )
))
(declare-fun lt!228235 () SeekEntryResult!4015)

(declare-fun lt!228236 () array!32328)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun lt!228245 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32328 (_ BitVec 32)) SeekEntryResult!4015)

(assert (=> b!502085 (= res!303674 (= lt!228235 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228245 lt!228242 lt!228236 mask!3524)))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!228240 () (_ BitVec 32))

(assert (=> b!502085 (= lt!228235 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228240 (select (arr!15541 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!502085 (= lt!228245 (toIndex!0 lt!228242 mask!3524))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!502085 (= lt!228242 (select (store (arr!15541 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!502085 (= lt!228240 (toIndex!0 (select (arr!15541 a!3235) j!176) mask!3524))))

(assert (=> b!502085 (= lt!228236 (array!32329 (store (arr!15541 a!3235) i!1204 k0!2280) (size!15905 a!3235)))))

(declare-fun e!294108 () Bool)

(assert (=> b!502085 e!294108))

(declare-fun res!303678 () Bool)

(assert (=> b!502085 (=> (not res!303678) (not e!294108))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32328 (_ BitVec 32)) Bool)

(assert (=> b!502085 (= res!303678 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15150 0))(
  ( (Unit!15151) )
))
(declare-fun lt!228237 () Unit!15150)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32328 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15150)

(assert (=> b!502085 (= lt!228237 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!502086 () Bool)

(declare-fun e!294107 () Bool)

(assert (=> b!502086 (= e!294107 e!294103)))

(declare-fun res!303676 () Bool)

(assert (=> b!502086 (=> (not res!303676) (not e!294103))))

(declare-fun lt!228243 () SeekEntryResult!4015)

(assert (=> b!502086 (= res!303676 (or (= lt!228243 (MissingZero!4015 i!1204)) (= lt!228243 (MissingVacant!4015 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32328 (_ BitVec 32)) SeekEntryResult!4015)

(assert (=> b!502086 (= lt!228243 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!502087 () Bool)

(declare-fun res!303677 () Bool)

(assert (=> b!502087 (=> (not res!303677) (not e!294107))))

(declare-fun arrayContainsKey!0 (array!32328 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!502087 (= res!303677 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!502088 () Bool)

(declare-fun res!303669 () Bool)

(assert (=> b!502088 (=> (not res!303669) (not e!294107))))

(assert (=> b!502088 (= res!303669 (and (= (size!15905 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15905 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15905 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!502089 () Bool)

(declare-fun e!294102 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32328 (_ BitVec 32)) SeekEntryResult!4015)

(assert (=> b!502089 (= e!294102 (not (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!228240 (index!18250 lt!228235) (select (arr!15541 a!3235) j!176) a!3235 mask!3524) (Found!4015 j!176))))))

(declare-fun b!502090 () Bool)

(declare-fun res!303679 () Bool)

(declare-fun e!294104 () Bool)

(assert (=> b!502090 (=> res!303679 e!294104)))

(assert (=> b!502090 (= res!303679 e!294102)))

(declare-fun res!303671 () Bool)

(assert (=> b!502090 (=> (not res!303671) (not e!294102))))

(assert (=> b!502090 (= res!303671 (bvsgt #b00000000000000000000000000000000 (x!47307 lt!228235)))))

(declare-fun b!502092 () Bool)

(assert (=> b!502092 (= e!294101 e!294104)))

(declare-fun res!303681 () Bool)

(assert (=> b!502092 (=> res!303681 e!294104)))

(assert (=> b!502092 (= res!303681 (or (bvsgt (x!47307 lt!228235) #b01111111111111111111111111111110) (bvslt lt!228240 #b00000000000000000000000000000000) (bvsge lt!228240 (size!15905 a!3235)) (bvslt (index!18250 lt!228235) #b00000000000000000000000000000000) (bvsge (index!18250 lt!228235) (size!15905 a!3235)) (not (= lt!228235 (Intermediate!4015 false (index!18250 lt!228235) (x!47307 lt!228235))))))))

(assert (=> b!502092 (= (index!18250 lt!228235) i!1204)))

(declare-fun lt!228241 () Unit!15150)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!32328 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15150)

(assert (=> b!502092 (= lt!228241 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k0!2280 j!176 lt!228240 #b00000000000000000000000000000000 (index!18250 lt!228235) (x!47307 lt!228235) mask!3524))))

(assert (=> b!502092 (and (or (= (select (arr!15541 a!3235) (index!18250 lt!228235)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15541 a!3235) (index!18250 lt!228235)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15541 a!3235) (index!18250 lt!228235)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15541 a!3235) (index!18250 lt!228235)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!228238 () Unit!15150)

(declare-fun e!294105 () Unit!15150)

(assert (=> b!502092 (= lt!228238 e!294105)))

(declare-fun c!59486 () Bool)

(assert (=> b!502092 (= c!59486 (= (select (arr!15541 a!3235) (index!18250 lt!228235)) (select (arr!15541 a!3235) j!176)))))

(assert (=> b!502092 (and (bvslt (x!47307 lt!228235) #b01111111111111111111111111111110) (or (= (select (arr!15541 a!3235) (index!18250 lt!228235)) (select (arr!15541 a!3235) j!176)) (= (select (arr!15541 a!3235) (index!18250 lt!228235)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15541 a!3235) (index!18250 lt!228235)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!502093 () Bool)

(declare-fun res!303675 () Bool)

(assert (=> b!502093 (=> (not res!303675) (not e!294103))))

(assert (=> b!502093 (= res!303675 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!502094 () Bool)

(declare-fun res!303680 () Bool)

(assert (=> b!502094 (=> res!303680 e!294101)))

(get-info :version)

(assert (=> b!502094 (= res!303680 (or (undefined!4827 lt!228235) (not ((_ is Intermediate!4015) lt!228235))))))

(declare-fun b!502095 () Bool)

(assert (=> b!502095 (= e!294108 (= (seekEntryOrOpen!0 (select (arr!15541 a!3235) j!176) a!3235 mask!3524) (Found!4015 j!176)))))

(declare-fun b!502096 () Bool)

(declare-fun res!303682 () Bool)

(assert (=> b!502096 (=> (not res!303682) (not e!294107))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!502096 (= res!303682 (validKeyInArray!0 k0!2280))))

(declare-fun b!502097 () Bool)

(declare-fun Unit!15152 () Unit!15150)

(assert (=> b!502097 (= e!294105 Unit!15152)))

(declare-fun b!502098 () Bool)

(declare-fun res!303672 () Bool)

(assert (=> b!502098 (=> (not res!303672) (not e!294107))))

(assert (=> b!502098 (= res!303672 (validKeyInArray!0 (select (arr!15541 a!3235) j!176)))))

(declare-fun b!502099 () Bool)

(declare-fun e!294109 () Bool)

(assert (=> b!502099 (= e!294109 false)))

(declare-fun b!502100 () Bool)

(declare-fun Unit!15153 () Unit!15150)

(assert (=> b!502100 (= e!294105 Unit!15153)))

(declare-fun lt!228239 () Unit!15150)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32328 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15150)

(assert (=> b!502100 (= lt!228239 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!228240 #b00000000000000000000000000000000 (index!18250 lt!228235) (x!47307 lt!228235) mask!3524))))

(declare-fun res!303683 () Bool)

(assert (=> b!502100 (= res!303683 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228240 lt!228242 lt!228236 mask!3524) (Intermediate!4015 false (index!18250 lt!228235) (x!47307 lt!228235))))))

(assert (=> b!502100 (=> (not res!303683) (not e!294109))))

(assert (=> b!502100 e!294109))

(declare-fun b!502091 () Bool)

(assert (=> b!502091 (= e!294104 true)))

(declare-fun lt!228244 () SeekEntryResult!4015)

(assert (=> b!502091 (= lt!228244 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228240 lt!228242 lt!228236 mask!3524))))

(declare-fun res!303670 () Bool)

(assert (=> start!45612 (=> (not res!303670) (not e!294107))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45612 (= res!303670 (validMask!0 mask!3524))))

(assert (=> start!45612 e!294107))

(assert (=> start!45612 true))

(declare-fun array_inv!11315 (array!32328) Bool)

(assert (=> start!45612 (array_inv!11315 a!3235)))

(assert (= (and start!45612 res!303670) b!502088))

(assert (= (and b!502088 res!303669) b!502098))

(assert (= (and b!502098 res!303672) b!502096))

(assert (= (and b!502096 res!303682) b!502087))

(assert (= (and b!502087 res!303677) b!502086))

(assert (= (and b!502086 res!303676) b!502093))

(assert (= (and b!502093 res!303675) b!502084))

(assert (= (and b!502084 res!303673) b!502085))

(assert (= (and b!502085 res!303678) b!502095))

(assert (= (and b!502085 (not res!303674)) b!502094))

(assert (= (and b!502094 (not res!303680)) b!502092))

(assert (= (and b!502092 c!59486) b!502100))

(assert (= (and b!502092 (not c!59486)) b!502097))

(assert (= (and b!502100 res!303683) b!502099))

(assert (= (and b!502092 (not res!303681)) b!502090))

(assert (= (and b!502090 res!303671) b!502089))

(assert (= (and b!502090 (not res!303679)) b!502091))

(declare-fun m!483071 () Bool)

(assert (=> start!45612 m!483071))

(declare-fun m!483073 () Bool)

(assert (=> start!45612 m!483073))

(declare-fun m!483075 () Bool)

(assert (=> b!502092 m!483075))

(declare-fun m!483077 () Bool)

(assert (=> b!502092 m!483077))

(declare-fun m!483079 () Bool)

(assert (=> b!502092 m!483079))

(declare-fun m!483081 () Bool)

(assert (=> b!502096 m!483081))

(declare-fun m!483083 () Bool)

(assert (=> b!502091 m!483083))

(declare-fun m!483085 () Bool)

(assert (=> b!502086 m!483085))

(declare-fun m!483087 () Bool)

(assert (=> b!502100 m!483087))

(assert (=> b!502100 m!483083))

(declare-fun m!483089 () Bool)

(assert (=> b!502087 m!483089))

(declare-fun m!483091 () Bool)

(assert (=> b!502093 m!483091))

(assert (=> b!502095 m!483079))

(assert (=> b!502095 m!483079))

(declare-fun m!483093 () Bool)

(assert (=> b!502095 m!483093))

(assert (=> b!502089 m!483079))

(assert (=> b!502089 m!483079))

(declare-fun m!483095 () Bool)

(assert (=> b!502089 m!483095))

(declare-fun m!483097 () Bool)

(assert (=> b!502084 m!483097))

(declare-fun m!483099 () Bool)

(assert (=> b!502085 m!483099))

(declare-fun m!483101 () Bool)

(assert (=> b!502085 m!483101))

(assert (=> b!502085 m!483079))

(declare-fun m!483103 () Bool)

(assert (=> b!502085 m!483103))

(assert (=> b!502085 m!483079))

(declare-fun m!483105 () Bool)

(assert (=> b!502085 m!483105))

(assert (=> b!502085 m!483079))

(declare-fun m!483107 () Bool)

(assert (=> b!502085 m!483107))

(declare-fun m!483109 () Bool)

(assert (=> b!502085 m!483109))

(declare-fun m!483111 () Bool)

(assert (=> b!502085 m!483111))

(declare-fun m!483113 () Bool)

(assert (=> b!502085 m!483113))

(assert (=> b!502098 m!483079))

(assert (=> b!502098 m!483079))

(declare-fun m!483115 () Bool)

(assert (=> b!502098 m!483115))

(check-sat (not b!502084) (not b!502089) (not b!502091) (not start!45612) (not b!502095) (not b!502086) (not b!502098) (not b!502087) (not b!502092) (not b!502096) (not b!502093) (not b!502100) (not b!502085))
(check-sat)
