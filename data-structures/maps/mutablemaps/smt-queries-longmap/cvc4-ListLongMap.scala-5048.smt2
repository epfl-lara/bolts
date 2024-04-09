; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68822 () Bool)

(assert start!68822)

(declare-fun b!801749 () Bool)

(declare-fun e!444405 () Bool)

(declare-fun e!444408 () Bool)

(assert (=> b!801749 (= e!444405 e!444408)))

(declare-fun res!546438 () Bool)

(assert (=> b!801749 (=> (not res!546438) (not e!444408))))

(declare-fun lt!358471 () (_ BitVec 64))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-datatypes ((array!43563 0))(
  ( (array!43564 (arr!20858 (Array (_ BitVec 32) (_ BitVec 64))) (size!21279 (_ BitVec 32))) )
))
(declare-fun lt!358465 () array!43563)

(declare-datatypes ((SeekEntryResult!8456 0))(
  ( (MissingZero!8456 (index!36191 (_ BitVec 32))) (Found!8456 (index!36192 (_ BitVec 32))) (Intermediate!8456 (undefined!9268 Bool) (index!36193 (_ BitVec 32)) (x!67071 (_ BitVec 32))) (Undefined!8456) (MissingVacant!8456 (index!36194 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43563 (_ BitVec 32)) SeekEntryResult!8456)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43563 (_ BitVec 32)) SeekEntryResult!8456)

(assert (=> b!801749 (= res!546438 (= (seekEntryOrOpen!0 lt!358471 lt!358465 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!358471 lt!358465 mask!3266)))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun a!3170 () array!43563)

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!801749 (= lt!358471 (select (store (arr!20858 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!801749 (= lt!358465 (array!43564 (store (arr!20858 a!3170) i!1163 k!2044) (size!21279 a!3170)))))

(declare-fun res!546446 () Bool)

(declare-fun e!444407 () Bool)

(assert (=> start!68822 (=> (not res!546446) (not e!444407))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68822 (= res!546446 (validMask!0 mask!3266))))

(assert (=> start!68822 e!444407))

(assert (=> start!68822 true))

(declare-fun array_inv!16632 (array!43563) Bool)

(assert (=> start!68822 (array_inv!16632 a!3170)))

(declare-fun b!801750 () Bool)

(declare-fun res!546441 () Bool)

(assert (=> b!801750 (=> (not res!546441) (not e!444407))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!801750 (= res!546441 (validKeyInArray!0 k!2044))))

(declare-fun b!801751 () Bool)

(declare-fun e!444406 () Bool)

(assert (=> b!801751 (= e!444408 e!444406)))

(declare-fun res!546447 () Bool)

(assert (=> b!801751 (=> (not res!546447) (not e!444406))))

(declare-fun lt!358466 () SeekEntryResult!8456)

(declare-fun lt!358467 () SeekEntryResult!8456)

(assert (=> b!801751 (= res!546447 (and (= lt!358466 lt!358467) (= lt!358467 (Found!8456 j!153)) (not (= (select (arr!20858 a!3170) index!1236) (select (arr!20858 a!3170) j!153)))))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!801751 (= lt!358467 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20858 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!801751 (= lt!358466 (seekEntryOrOpen!0 (select (arr!20858 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!801752 () Bool)

(declare-fun res!546444 () Bool)

(assert (=> b!801752 (=> (not res!546444) (not e!444407))))

(assert (=> b!801752 (= res!546444 (validKeyInArray!0 (select (arr!20858 a!3170) j!153)))))

(declare-fun b!801753 () Bool)

(assert (=> b!801753 (= e!444407 e!444405)))

(declare-fun res!546439 () Bool)

(assert (=> b!801753 (=> (not res!546439) (not e!444405))))

(declare-fun lt!358469 () SeekEntryResult!8456)

(assert (=> b!801753 (= res!546439 (or (= lt!358469 (MissingZero!8456 i!1163)) (= lt!358469 (MissingVacant!8456 i!1163))))))

(assert (=> b!801753 (= lt!358469 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!801754 () Bool)

(declare-fun res!546440 () Bool)

(assert (=> b!801754 (=> (not res!546440) (not e!444407))))

(declare-fun arrayContainsKey!0 (array!43563 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!801754 (= res!546440 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!801755 () Bool)

(declare-fun res!546445 () Bool)

(assert (=> b!801755 (=> (not res!546445) (not e!444405))))

(declare-datatypes ((List!14874 0))(
  ( (Nil!14871) (Cons!14870 (h!15999 (_ BitVec 64)) (t!21197 List!14874)) )
))
(declare-fun arrayNoDuplicates!0 (array!43563 (_ BitVec 32) List!14874) Bool)

(assert (=> b!801755 (= res!546445 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14871))))

(declare-fun b!801756 () Bool)

(assert (=> b!801756 (= e!444406 (not true))))

(declare-fun lt!358468 () (_ BitVec 32))

(assert (=> b!801756 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!358468 vacantAfter!23 lt!358471 lt!358465 mask!3266) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!358468 vacantBefore!23 (select (arr!20858 a!3170) j!153) a!3170 mask!3266))))

(declare-datatypes ((Unit!27454 0))(
  ( (Unit!27455) )
))
(declare-fun lt!358470 () Unit!27454)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!43563 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27454)

(assert (=> b!801756 (= lt!358470 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3170 i!1163 k!2044 j!153 lt!358468 (bvadd #b00000000000000000000000000000001 x!1077) vacantBefore!23 vacantAfter!23 mask!3266))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!801756 (= lt!358468 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!801757 () Bool)

(declare-fun res!546448 () Bool)

(assert (=> b!801757 (=> (not res!546448) (not e!444405))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43563 (_ BitVec 32)) Bool)

(assert (=> b!801757 (= res!546448 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!801758 () Bool)

(declare-fun res!546442 () Bool)

(assert (=> b!801758 (=> (not res!546442) (not e!444405))))

(assert (=> b!801758 (= res!546442 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21279 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20858 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21279 a!3170)) (= (select (arr!20858 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!801759 () Bool)

(declare-fun res!546443 () Bool)

(assert (=> b!801759 (=> (not res!546443) (not e!444407))))

(assert (=> b!801759 (= res!546443 (and (= (size!21279 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21279 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21279 a!3170)) (not (= i!1163 j!153))))))

(assert (= (and start!68822 res!546446) b!801759))

(assert (= (and b!801759 res!546443) b!801752))

(assert (= (and b!801752 res!546444) b!801750))

(assert (= (and b!801750 res!546441) b!801754))

(assert (= (and b!801754 res!546440) b!801753))

(assert (= (and b!801753 res!546439) b!801757))

(assert (= (and b!801757 res!546448) b!801755))

(assert (= (and b!801755 res!546445) b!801758))

(assert (= (and b!801758 res!546442) b!801749))

(assert (= (and b!801749 res!546438) b!801751))

(assert (= (and b!801751 res!546447) b!801756))

(declare-fun m!743117 () Bool)

(assert (=> b!801755 m!743117))

(declare-fun m!743119 () Bool)

(assert (=> start!68822 m!743119))

(declare-fun m!743121 () Bool)

(assert (=> start!68822 m!743121))

(declare-fun m!743123 () Bool)

(assert (=> b!801749 m!743123))

(declare-fun m!743125 () Bool)

(assert (=> b!801749 m!743125))

(declare-fun m!743127 () Bool)

(assert (=> b!801749 m!743127))

(declare-fun m!743129 () Bool)

(assert (=> b!801749 m!743129))

(declare-fun m!743131 () Bool)

(assert (=> b!801754 m!743131))

(declare-fun m!743133 () Bool)

(assert (=> b!801758 m!743133))

(declare-fun m!743135 () Bool)

(assert (=> b!801758 m!743135))

(declare-fun m!743137 () Bool)

(assert (=> b!801751 m!743137))

(declare-fun m!743139 () Bool)

(assert (=> b!801751 m!743139))

(assert (=> b!801751 m!743139))

(declare-fun m!743141 () Bool)

(assert (=> b!801751 m!743141))

(assert (=> b!801751 m!743139))

(declare-fun m!743143 () Bool)

(assert (=> b!801751 m!743143))

(assert (=> b!801752 m!743139))

(assert (=> b!801752 m!743139))

(declare-fun m!743145 () Bool)

(assert (=> b!801752 m!743145))

(declare-fun m!743147 () Bool)

(assert (=> b!801750 m!743147))

(declare-fun m!743149 () Bool)

(assert (=> b!801753 m!743149))

(assert (=> b!801756 m!743139))

(declare-fun m!743151 () Bool)

(assert (=> b!801756 m!743151))

(declare-fun m!743153 () Bool)

(assert (=> b!801756 m!743153))

(assert (=> b!801756 m!743139))

(declare-fun m!743155 () Bool)

(assert (=> b!801756 m!743155))

(declare-fun m!743157 () Bool)

(assert (=> b!801756 m!743157))

(declare-fun m!743159 () Bool)

(assert (=> b!801757 m!743159))

(push 1)

