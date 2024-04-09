; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!69660 () Bool)

(assert start!69660)

(declare-fun b!811175 () Bool)

(declare-fun e!449008 () Bool)

(declare-fun e!449009 () Bool)

(assert (=> b!811175 (= e!449008 e!449009)))

(declare-fun res!554398 () Bool)

(assert (=> b!811175 (=> (not res!554398) (not e!449009))))

(declare-datatypes ((SeekEntryResult!8689 0))(
  ( (MissingZero!8689 (index!37126 (_ BitVec 32))) (Found!8689 (index!37127 (_ BitVec 32))) (Intermediate!8689 (undefined!9501 Bool) (index!37128 (_ BitVec 32)) (x!67967 (_ BitVec 32))) (Undefined!8689) (MissingVacant!8689 (index!37129 (_ BitVec 32))) )
))
(declare-fun lt!363696 () SeekEntryResult!8689)

(declare-datatypes ((array!44050 0))(
  ( (array!44051 (arr!21091 (Array (_ BitVec 32) (_ BitVec 64))) (size!21512 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!44050)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun lt!363693 () SeekEntryResult!8689)

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!811175 (= res!554398 (and (= lt!363693 lt!363696) (= lt!363696 (Found!8689 j!153)) (not (= (select (arr!21091 a!3170) index!1236) (select (arr!21091 a!3170) j!153)))))))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!44050 (_ BitVec 32)) SeekEntryResult!8689)

(assert (=> b!811175 (= lt!363696 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21091 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!44050 (_ BitVec 32)) SeekEntryResult!8689)

(assert (=> b!811175 (= lt!363693 (seekEntryOrOpen!0 (select (arr!21091 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!811177 () Bool)

(declare-fun res!554393 () Bool)

(declare-fun e!449010 () Bool)

(assert (=> b!811177 (=> (not res!554393) (not e!449010))))

(declare-datatypes ((List!15107 0))(
  ( (Nil!15104) (Cons!15103 (h!16232 (_ BitVec 64)) (t!21430 List!15107)) )
))
(declare-fun arrayNoDuplicates!0 (array!44050 (_ BitVec 32) List!15107) Bool)

(assert (=> b!811177 (= res!554393 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15104))))

(declare-fun b!811178 () Bool)

(assert (=> b!811178 (= e!449010 e!449008)))

(declare-fun res!554389 () Bool)

(assert (=> b!811178 (=> (not res!554389) (not e!449008))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun lt!363695 () (_ BitVec 64))

(declare-fun lt!363697 () array!44050)

(assert (=> b!811178 (= res!554389 (= (seekEntryOrOpen!0 lt!363695 lt!363697 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!363695 lt!363697 mask!3266)))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!811178 (= lt!363695 (select (store (arr!21091 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!811178 (= lt!363697 (array!44051 (store (arr!21091 a!3170) i!1163 k0!2044) (size!21512 a!3170)))))

(declare-fun b!811179 () Bool)

(assert (=> b!811179 (= e!449009 (not true))))

(declare-fun lt!363692 () (_ BitVec 32))

(assert (=> b!811179 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!363692 vacantAfter!23 lt!363695 lt!363697 mask!3266) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!363692 vacantBefore!23 (select (arr!21091 a!3170) j!153) a!3170 mask!3266))))

(declare-datatypes ((Unit!27640 0))(
  ( (Unit!27641) )
))
(declare-fun lt!363691 () Unit!27640)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!44050 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27640)

(assert (=> b!811179 (= lt!363691 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3170 i!1163 k0!2044 j!153 lt!363692 (bvadd #b00000000000000000000000000000001 x!1077) vacantBefore!23 vacantAfter!23 mask!3266))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!811179 (= lt!363692 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!811180 () Bool)

(declare-fun res!554395 () Bool)

(declare-fun e!449011 () Bool)

(assert (=> b!811180 (=> (not res!554395) (not e!449011))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!811180 (= res!554395 (validKeyInArray!0 k0!2044))))

(declare-fun b!811181 () Bool)

(declare-fun res!554392 () Bool)

(assert (=> b!811181 (=> (not res!554392) (not e!449011))))

(assert (=> b!811181 (= res!554392 (and (= (size!21512 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21512 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21512 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!811182 () Bool)

(assert (=> b!811182 (= e!449011 e!449010)))

(declare-fun res!554397 () Bool)

(assert (=> b!811182 (=> (not res!554397) (not e!449010))))

(declare-fun lt!363694 () SeekEntryResult!8689)

(assert (=> b!811182 (= res!554397 (or (= lt!363694 (MissingZero!8689 i!1163)) (= lt!363694 (MissingVacant!8689 i!1163))))))

(assert (=> b!811182 (= lt!363694 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!811183 () Bool)

(declare-fun res!554390 () Bool)

(assert (=> b!811183 (=> (not res!554390) (not e!449011))))

(declare-fun arrayContainsKey!0 (array!44050 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!811183 (= res!554390 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!811184 () Bool)

(declare-fun res!554396 () Bool)

(assert (=> b!811184 (=> (not res!554396) (not e!449011))))

(assert (=> b!811184 (= res!554396 (validKeyInArray!0 (select (arr!21091 a!3170) j!153)))))

(declare-fun b!811185 () Bool)

(declare-fun res!554388 () Bool)

(assert (=> b!811185 (=> (not res!554388) (not e!449010))))

(assert (=> b!811185 (= res!554388 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21512 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!21091 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21512 a!3170)) (= (select (arr!21091 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun res!554391 () Bool)

(assert (=> start!69660 (=> (not res!554391) (not e!449011))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69660 (= res!554391 (validMask!0 mask!3266))))

(assert (=> start!69660 e!449011))

(assert (=> start!69660 true))

(declare-fun array_inv!16865 (array!44050) Bool)

(assert (=> start!69660 (array_inv!16865 a!3170)))

(declare-fun b!811176 () Bool)

(declare-fun res!554394 () Bool)

(assert (=> b!811176 (=> (not res!554394) (not e!449010))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44050 (_ BitVec 32)) Bool)

(assert (=> b!811176 (= res!554394 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(assert (= (and start!69660 res!554391) b!811181))

(assert (= (and b!811181 res!554392) b!811184))

(assert (= (and b!811184 res!554396) b!811180))

(assert (= (and b!811180 res!554395) b!811183))

(assert (= (and b!811183 res!554390) b!811182))

(assert (= (and b!811182 res!554397) b!811176))

(assert (= (and b!811176 res!554394) b!811177))

(assert (= (and b!811177 res!554393) b!811185))

(assert (= (and b!811185 res!554388) b!811178))

(assert (= (and b!811178 res!554389) b!811175))

(assert (= (and b!811175 res!554398) b!811179))

(declare-fun m!753585 () Bool)

(assert (=> b!811183 m!753585))

(declare-fun m!753587 () Bool)

(assert (=> b!811177 m!753587))

(declare-fun m!753589 () Bool)

(assert (=> b!811185 m!753589))

(declare-fun m!753591 () Bool)

(assert (=> b!811185 m!753591))

(declare-fun m!753593 () Bool)

(assert (=> b!811182 m!753593))

(declare-fun m!753595 () Bool)

(assert (=> b!811175 m!753595))

(declare-fun m!753597 () Bool)

(assert (=> b!811175 m!753597))

(assert (=> b!811175 m!753597))

(declare-fun m!753599 () Bool)

(assert (=> b!811175 m!753599))

(assert (=> b!811175 m!753597))

(declare-fun m!753601 () Bool)

(assert (=> b!811175 m!753601))

(assert (=> b!811184 m!753597))

(assert (=> b!811184 m!753597))

(declare-fun m!753603 () Bool)

(assert (=> b!811184 m!753603))

(declare-fun m!753605 () Bool)

(assert (=> start!69660 m!753605))

(declare-fun m!753607 () Bool)

(assert (=> start!69660 m!753607))

(declare-fun m!753609 () Bool)

(assert (=> b!811176 m!753609))

(assert (=> b!811179 m!753597))

(declare-fun m!753611 () Bool)

(assert (=> b!811179 m!753611))

(declare-fun m!753613 () Bool)

(assert (=> b!811179 m!753613))

(declare-fun m!753615 () Bool)

(assert (=> b!811179 m!753615))

(assert (=> b!811179 m!753597))

(declare-fun m!753617 () Bool)

(assert (=> b!811179 m!753617))

(declare-fun m!753619 () Bool)

(assert (=> b!811178 m!753619))

(declare-fun m!753621 () Bool)

(assert (=> b!811178 m!753621))

(declare-fun m!753623 () Bool)

(assert (=> b!811178 m!753623))

(declare-fun m!753625 () Bool)

(assert (=> b!811178 m!753625))

(declare-fun m!753627 () Bool)

(assert (=> b!811180 m!753627))

(check-sat (not b!811180) (not b!811177) (not b!811178) (not b!811183) (not b!811184) (not b!811179) (not b!811176) (not start!69660) (not b!811182) (not b!811175))
(check-sat)
