; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!69684 () Bool)

(assert start!69684)

(declare-datatypes ((SeekEntryResult!8701 0))(
  ( (MissingZero!8701 (index!37174 (_ BitVec 32))) (Found!8701 (index!37175 (_ BitVec 32))) (Intermediate!8701 (undefined!9513 Bool) (index!37176 (_ BitVec 32)) (x!68011 (_ BitVec 32))) (Undefined!8701) (MissingVacant!8701 (index!37177 (_ BitVec 32))) )
))
(declare-fun lt!363960 () SeekEntryResult!8701)

(declare-fun b!811576 () Bool)

(declare-fun lt!363966 () SeekEntryResult!8701)

(declare-fun e!449193 () Bool)

(declare-fun lt!363963 () SeekEntryResult!8701)

(assert (=> b!811576 (= e!449193 (not (or (not (= lt!363960 lt!363966)) (= lt!363960 lt!363963))))))

(declare-fun lt!363958 () (_ BitVec 64))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-datatypes ((array!44074 0))(
  ( (array!44075 (arr!21103 (Array (_ BitVec 32) (_ BitVec 64))) (size!21524 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!44074)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun lt!363967 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun lt!363965 () array!44074)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!44074 (_ BitVec 32)) SeekEntryResult!8701)

(assert (=> b!811576 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!363967 vacantAfter!23 lt!363958 lt!363965 mask!3266) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!363967 vacantBefore!23 (select (arr!21103 a!3170) j!153) a!3170 mask!3266))))

(declare-datatypes ((Unit!27664 0))(
  ( (Unit!27665) )
))
(declare-fun lt!363959 () Unit!27664)

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!44074 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27664)

(assert (=> b!811576 (= lt!363959 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3170 i!1163 k0!2044 j!153 lt!363967 (bvadd #b00000000000000000000000000000001 x!1077) vacantBefore!23 vacantAfter!23 mask!3266))))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!811576 (= lt!363967 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!811577 () Bool)

(declare-fun res!554797 () Bool)

(declare-fun e!449194 () Bool)

(assert (=> b!811577 (=> (not res!554797) (not e!449194))))

(assert (=> b!811577 (= res!554797 (and (= (size!21524 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21524 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21524 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!811578 () Bool)

(declare-fun e!449192 () Bool)

(declare-fun e!449197 () Bool)

(assert (=> b!811578 (= e!449192 e!449197)))

(declare-fun res!554795 () Bool)

(assert (=> b!811578 (=> (not res!554795) (not e!449197))))

(declare-fun lt!363962 () SeekEntryResult!8701)

(assert (=> b!811578 (= res!554795 (= lt!363962 lt!363960))))

(assert (=> b!811578 (= lt!363960 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!363958 lt!363965 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!44074 (_ BitVec 32)) SeekEntryResult!8701)

(assert (=> b!811578 (= lt!363962 (seekEntryOrOpen!0 lt!363958 lt!363965 mask!3266))))

(assert (=> b!811578 (= lt!363958 (select (store (arr!21103 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!811578 (= lt!363965 (array!44075 (store (arr!21103 a!3170) i!1163 k0!2044) (size!21524 a!3170)))))

(declare-fun b!811579 () Bool)

(declare-fun res!554793 () Bool)

(assert (=> b!811579 (=> (not res!554793) (not e!449192))))

(declare-datatypes ((List!15119 0))(
  ( (Nil!15116) (Cons!15115 (h!16244 (_ BitVec 64)) (t!21442 List!15119)) )
))
(declare-fun arrayNoDuplicates!0 (array!44074 (_ BitVec 32) List!15119) Bool)

(assert (=> b!811579 (= res!554793 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15116))))

(declare-fun b!811580 () Bool)

(declare-fun res!554789 () Bool)

(assert (=> b!811580 (=> (not res!554789) (not e!449192))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44074 (_ BitVec 32)) Bool)

(assert (=> b!811580 (= res!554789 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!811581 () Bool)

(declare-fun res!554791 () Bool)

(assert (=> b!811581 (=> (not res!554791) (not e!449192))))

(assert (=> b!811581 (= res!554791 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21524 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!21103 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21524 a!3170)) (= (select (arr!21103 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!811582 () Bool)

(declare-fun e!449196 () Bool)

(assert (=> b!811582 (= e!449197 e!449196)))

(declare-fun res!554794 () Bool)

(assert (=> b!811582 (=> (not res!554794) (not e!449196))))

(declare-fun lt!363961 () SeekEntryResult!8701)

(assert (=> b!811582 (= res!554794 (= lt!363961 lt!363963))))

(assert (=> b!811582 (= lt!363963 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21103 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!811582 (= lt!363961 (seekEntryOrOpen!0 (select (arr!21103 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!811583 () Bool)

(declare-fun res!554792 () Bool)

(assert (=> b!811583 (=> (not res!554792) (not e!449194))))

(declare-fun arrayContainsKey!0 (array!44074 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!811583 (= res!554792 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!811584 () Bool)

(assert (=> b!811584 (= e!449194 e!449192)))

(declare-fun res!554790 () Bool)

(assert (=> b!811584 (=> (not res!554790) (not e!449192))))

(declare-fun lt!363964 () SeekEntryResult!8701)

(assert (=> b!811584 (= res!554790 (or (= lt!363964 (MissingZero!8701 i!1163)) (= lt!363964 (MissingVacant!8701 i!1163))))))

(assert (=> b!811584 (= lt!363964 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!811585 () Bool)

(declare-fun res!554800 () Bool)

(assert (=> b!811585 (=> (not res!554800) (not e!449194))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!811585 (= res!554800 (validKeyInArray!0 (select (arr!21103 a!3170) j!153)))))

(declare-fun res!554798 () Bool)

(assert (=> start!69684 (=> (not res!554798) (not e!449194))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69684 (= res!554798 (validMask!0 mask!3266))))

(assert (=> start!69684 e!449194))

(assert (=> start!69684 true))

(declare-fun array_inv!16877 (array!44074) Bool)

(assert (=> start!69684 (array_inv!16877 a!3170)))

(declare-fun b!811586 () Bool)

(declare-fun res!554796 () Bool)

(assert (=> b!811586 (=> (not res!554796) (not e!449194))))

(assert (=> b!811586 (= res!554796 (validKeyInArray!0 k0!2044))))

(declare-fun b!811587 () Bool)

(assert (=> b!811587 (= e!449196 e!449193)))

(declare-fun res!554799 () Bool)

(assert (=> b!811587 (=> (not res!554799) (not e!449193))))

(assert (=> b!811587 (= res!554799 (and (= lt!363963 lt!363966) (not (= (select (arr!21103 a!3170) index!1236) (select (arr!21103 a!3170) j!153)))))))

(assert (=> b!811587 (= lt!363966 (Found!8701 j!153))))

(assert (= (and start!69684 res!554798) b!811577))

(assert (= (and b!811577 res!554797) b!811585))

(assert (= (and b!811585 res!554800) b!811586))

(assert (= (and b!811586 res!554796) b!811583))

(assert (= (and b!811583 res!554792) b!811584))

(assert (= (and b!811584 res!554790) b!811580))

(assert (= (and b!811580 res!554789) b!811579))

(assert (= (and b!811579 res!554793) b!811581))

(assert (= (and b!811581 res!554791) b!811578))

(assert (= (and b!811578 res!554795) b!811582))

(assert (= (and b!811582 res!554794) b!811587))

(assert (= (and b!811587 res!554799) b!811576))

(declare-fun m!754113 () Bool)

(assert (=> start!69684 m!754113))

(declare-fun m!754115 () Bool)

(assert (=> start!69684 m!754115))

(declare-fun m!754117 () Bool)

(assert (=> b!811587 m!754117))

(declare-fun m!754119 () Bool)

(assert (=> b!811587 m!754119))

(assert (=> b!811585 m!754119))

(assert (=> b!811585 m!754119))

(declare-fun m!754121 () Bool)

(assert (=> b!811585 m!754121))

(assert (=> b!811576 m!754119))

(declare-fun m!754123 () Bool)

(assert (=> b!811576 m!754123))

(declare-fun m!754125 () Bool)

(assert (=> b!811576 m!754125))

(declare-fun m!754127 () Bool)

(assert (=> b!811576 m!754127))

(assert (=> b!811576 m!754119))

(declare-fun m!754129 () Bool)

(assert (=> b!811576 m!754129))

(declare-fun m!754131 () Bool)

(assert (=> b!811584 m!754131))

(declare-fun m!754133 () Bool)

(assert (=> b!811580 m!754133))

(declare-fun m!754135 () Bool)

(assert (=> b!811578 m!754135))

(declare-fun m!754137 () Bool)

(assert (=> b!811578 m!754137))

(declare-fun m!754139 () Bool)

(assert (=> b!811578 m!754139))

(declare-fun m!754141 () Bool)

(assert (=> b!811578 m!754141))

(declare-fun m!754143 () Bool)

(assert (=> b!811586 m!754143))

(declare-fun m!754145 () Bool)

(assert (=> b!811583 m!754145))

(declare-fun m!754147 () Bool)

(assert (=> b!811579 m!754147))

(declare-fun m!754149 () Bool)

(assert (=> b!811581 m!754149))

(declare-fun m!754151 () Bool)

(assert (=> b!811581 m!754151))

(assert (=> b!811582 m!754119))

(assert (=> b!811582 m!754119))

(declare-fun m!754153 () Bool)

(assert (=> b!811582 m!754153))

(assert (=> b!811582 m!754119))

(declare-fun m!754155 () Bool)

(assert (=> b!811582 m!754155))

(check-sat (not b!811580) (not b!811586) (not b!811583) (not b!811584) (not b!811576) (not start!69684) (not b!811582) (not b!811579) (not b!811585) (not b!811578))
(check-sat)
