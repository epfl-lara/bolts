; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69682 () Bool)

(assert start!69682)

(declare-fun b!811540 () Bool)

(declare-fun res!554762 () Bool)

(declare-fun e!449176 () Bool)

(assert (=> b!811540 (=> (not res!554762) (not e!449176))))

(declare-datatypes ((array!44072 0))(
  ( (array!44073 (arr!21102 (Array (_ BitVec 32) (_ BitVec 64))) (size!21523 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!44072)

(declare-datatypes ((List!15118 0))(
  ( (Nil!15115) (Cons!15114 (h!16243 (_ BitVec 64)) (t!21441 List!15118)) )
))
(declare-fun arrayNoDuplicates!0 (array!44072 (_ BitVec 32) List!15118) Bool)

(assert (=> b!811540 (= res!554762 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15115))))

(declare-fun res!554753 () Bool)

(declare-fun e!449178 () Bool)

(assert (=> start!69682 (=> (not res!554753) (not e!449178))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69682 (= res!554753 (validMask!0 mask!3266))))

(assert (=> start!69682 e!449178))

(assert (=> start!69682 true))

(declare-fun array_inv!16876 (array!44072) Bool)

(assert (=> start!69682 (array_inv!16876 a!3170)))

(declare-fun e!449179 () Bool)

(declare-fun b!811541 () Bool)

(declare-datatypes ((SeekEntryResult!8700 0))(
  ( (MissingZero!8700 (index!37170 (_ BitVec 32))) (Found!8700 (index!37171 (_ BitVec 32))) (Intermediate!8700 (undefined!9512 Bool) (index!37172 (_ BitVec 32)) (x!68010 (_ BitVec 32))) (Undefined!8700) (MissingVacant!8700 (index!37173 (_ BitVec 32))) )
))
(declare-fun lt!363932 () SeekEntryResult!8700)

(declare-fun lt!363929 () SeekEntryResult!8700)

(declare-fun lt!363931 () SeekEntryResult!8700)

(assert (=> b!811541 (= e!449179 (not (or (not (= lt!363931 lt!363929)) (= lt!363931 lt!363932))))))

(declare-fun lt!363928 () (_ BitVec 64))

(declare-fun lt!363936 () array!44072)

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!363933 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!44072 (_ BitVec 32)) SeekEntryResult!8700)

(assert (=> b!811541 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!363933 vacantAfter!23 lt!363928 lt!363936 mask!3266) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!363933 vacantBefore!23 (select (arr!21102 a!3170) j!153) a!3170 mask!3266))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun k!2044 () (_ BitVec 64))

(declare-datatypes ((Unit!27662 0))(
  ( (Unit!27663) )
))
(declare-fun lt!363937 () Unit!27662)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!44072 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27662)

(assert (=> b!811541 (= lt!363937 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3170 i!1163 k!2044 j!153 lt!363933 (bvadd #b00000000000000000000000000000001 x!1077) vacantBefore!23 vacantAfter!23 mask!3266))))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!811541 (= lt!363933 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!811542 () Bool)

(declare-fun res!554763 () Bool)

(assert (=> b!811542 (=> (not res!554763) (not e!449176))))

(assert (=> b!811542 (= res!554763 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21523 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!21102 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21523 a!3170)) (= (select (arr!21102 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!811543 () Bool)

(declare-fun res!554757 () Bool)

(assert (=> b!811543 (=> (not res!554757) (not e!449176))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44072 (_ BitVec 32)) Bool)

(assert (=> b!811543 (= res!554757 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!811544 () Bool)

(declare-fun e!449175 () Bool)

(declare-fun e!449174 () Bool)

(assert (=> b!811544 (= e!449175 e!449174)))

(declare-fun res!554758 () Bool)

(assert (=> b!811544 (=> (not res!554758) (not e!449174))))

(declare-fun lt!363935 () SeekEntryResult!8700)

(assert (=> b!811544 (= res!554758 (= lt!363935 lt!363932))))

(assert (=> b!811544 (= lt!363932 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21102 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!44072 (_ BitVec 32)) SeekEntryResult!8700)

(assert (=> b!811544 (= lt!363935 (seekEntryOrOpen!0 (select (arr!21102 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!811545 () Bool)

(declare-fun res!554756 () Bool)

(assert (=> b!811545 (=> (not res!554756) (not e!449178))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!811545 (= res!554756 (validKeyInArray!0 k!2044))))

(declare-fun b!811546 () Bool)

(declare-fun res!554754 () Bool)

(assert (=> b!811546 (=> (not res!554754) (not e!449178))))

(assert (=> b!811546 (= res!554754 (and (= (size!21523 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21523 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21523 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!811547 () Bool)

(assert (=> b!811547 (= e!449178 e!449176)))

(declare-fun res!554761 () Bool)

(assert (=> b!811547 (=> (not res!554761) (not e!449176))))

(declare-fun lt!363930 () SeekEntryResult!8700)

(assert (=> b!811547 (= res!554761 (or (= lt!363930 (MissingZero!8700 i!1163)) (= lt!363930 (MissingVacant!8700 i!1163))))))

(assert (=> b!811547 (= lt!363930 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!811548 () Bool)

(assert (=> b!811548 (= e!449176 e!449175)))

(declare-fun res!554759 () Bool)

(assert (=> b!811548 (=> (not res!554759) (not e!449175))))

(declare-fun lt!363934 () SeekEntryResult!8700)

(assert (=> b!811548 (= res!554759 (= lt!363934 lt!363931))))

(assert (=> b!811548 (= lt!363931 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!363928 lt!363936 mask!3266))))

(assert (=> b!811548 (= lt!363934 (seekEntryOrOpen!0 lt!363928 lt!363936 mask!3266))))

(assert (=> b!811548 (= lt!363928 (select (store (arr!21102 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!811548 (= lt!363936 (array!44073 (store (arr!21102 a!3170) i!1163 k!2044) (size!21523 a!3170)))))

(declare-fun b!811549 () Bool)

(declare-fun res!554760 () Bool)

(assert (=> b!811549 (=> (not res!554760) (not e!449178))))

(assert (=> b!811549 (= res!554760 (validKeyInArray!0 (select (arr!21102 a!3170) j!153)))))

(declare-fun b!811550 () Bool)

(assert (=> b!811550 (= e!449174 e!449179)))

(declare-fun res!554764 () Bool)

(assert (=> b!811550 (=> (not res!554764) (not e!449179))))

(assert (=> b!811550 (= res!554764 (and (= lt!363932 lt!363929) (not (= (select (arr!21102 a!3170) index!1236) (select (arr!21102 a!3170) j!153)))))))

(assert (=> b!811550 (= lt!363929 (Found!8700 j!153))))

(declare-fun b!811551 () Bool)

(declare-fun res!554755 () Bool)

(assert (=> b!811551 (=> (not res!554755) (not e!449178))))

(declare-fun arrayContainsKey!0 (array!44072 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!811551 (= res!554755 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(assert (= (and start!69682 res!554753) b!811546))

(assert (= (and b!811546 res!554754) b!811549))

(assert (= (and b!811549 res!554760) b!811545))

(assert (= (and b!811545 res!554756) b!811551))

(assert (= (and b!811551 res!554755) b!811547))

(assert (= (and b!811547 res!554761) b!811543))

(assert (= (and b!811543 res!554757) b!811540))

(assert (= (and b!811540 res!554762) b!811542))

(assert (= (and b!811542 res!554763) b!811548))

(assert (= (and b!811548 res!554759) b!811544))

(assert (= (and b!811544 res!554758) b!811550))

(assert (= (and b!811550 res!554764) b!811541))

(declare-fun m!754069 () Bool)

(assert (=> b!811541 m!754069))

(declare-fun m!754071 () Bool)

(assert (=> b!811541 m!754071))

(assert (=> b!811541 m!754069))

(declare-fun m!754073 () Bool)

(assert (=> b!811541 m!754073))

(declare-fun m!754075 () Bool)

(assert (=> b!811541 m!754075))

(declare-fun m!754077 () Bool)

(assert (=> b!811541 m!754077))

(declare-fun m!754079 () Bool)

(assert (=> start!69682 m!754079))

(declare-fun m!754081 () Bool)

(assert (=> start!69682 m!754081))

(declare-fun m!754083 () Bool)

(assert (=> b!811550 m!754083))

(assert (=> b!811550 m!754069))

(declare-fun m!754085 () Bool)

(assert (=> b!811543 m!754085))

(declare-fun m!754087 () Bool)

(assert (=> b!811547 m!754087))

(declare-fun m!754089 () Bool)

(assert (=> b!811542 m!754089))

(declare-fun m!754091 () Bool)

(assert (=> b!811542 m!754091))

(declare-fun m!754093 () Bool)

(assert (=> b!811551 m!754093))

(assert (=> b!811544 m!754069))

(assert (=> b!811544 m!754069))

(declare-fun m!754095 () Bool)

(assert (=> b!811544 m!754095))

(assert (=> b!811544 m!754069))

(declare-fun m!754097 () Bool)

(assert (=> b!811544 m!754097))

(assert (=> b!811549 m!754069))

(assert (=> b!811549 m!754069))

(declare-fun m!754099 () Bool)

(assert (=> b!811549 m!754099))

(declare-fun m!754101 () Bool)

(assert (=> b!811540 m!754101))

(declare-fun m!754103 () Bool)

(assert (=> b!811545 m!754103))

(declare-fun m!754105 () Bool)

(assert (=> b!811548 m!754105))

(declare-fun m!754107 () Bool)

(assert (=> b!811548 m!754107))

(declare-fun m!754109 () Bool)

(assert (=> b!811548 m!754109))

(declare-fun m!754111 () Bool)

(assert (=> b!811548 m!754111))

(push 1)

