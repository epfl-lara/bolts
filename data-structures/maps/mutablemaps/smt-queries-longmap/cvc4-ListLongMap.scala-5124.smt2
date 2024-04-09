; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69590 () Bool)

(assert start!69590)

(declare-fun b!810695 () Bool)

(declare-fun res!554142 () Bool)

(declare-fun e!448738 () Bool)

(assert (=> b!810695 (=> (not res!554142) (not e!448738))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(declare-datatypes ((array!44037 0))(
  ( (array!44038 (arr!21086 (Array (_ BitVec 32) (_ BitVec 64))) (size!21507 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!44037)

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!810695 (= res!554142 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21507 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!21086 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21507 a!3170)) (= (select (arr!21086 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!810696 () Bool)

(declare-fun res!554152 () Bool)

(declare-fun e!448736 () Bool)

(assert (=> b!810696 (=> (not res!554152) (not e!448736))))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(assert (=> b!810696 (= res!554152 (and (= (size!21507 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21507 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21507 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!810697 () Bool)

(declare-fun e!448734 () Bool)

(declare-fun e!448737 () Bool)

(assert (=> b!810697 (= e!448734 e!448737)))

(declare-fun res!554148 () Bool)

(assert (=> b!810697 (=> (not res!554148) (not e!448737))))

(declare-datatypes ((SeekEntryResult!8684 0))(
  ( (MissingZero!8684 (index!37103 (_ BitVec 32))) (Found!8684 (index!37104 (_ BitVec 32))) (Intermediate!8684 (undefined!9496 Bool) (index!37105 (_ BitVec 32)) (x!67937 (_ BitVec 32))) (Undefined!8684) (MissingVacant!8684 (index!37106 (_ BitVec 32))) )
))
(declare-fun lt!363434 () SeekEntryResult!8684)

(declare-fun lt!363436 () SeekEntryResult!8684)

(assert (=> b!810697 (= res!554148 (and (= lt!363434 lt!363436) (= lt!363436 (Found!8684 j!153)) (not (= (select (arr!21086 a!3170) index!1236) (select (arr!21086 a!3170) j!153)))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!44037 (_ BitVec 32)) SeekEntryResult!8684)

(assert (=> b!810697 (= lt!363436 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21086 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!44037 (_ BitVec 32)) SeekEntryResult!8684)

(assert (=> b!810697 (= lt!363434 (seekEntryOrOpen!0 (select (arr!21086 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!810698 () Bool)

(declare-fun res!554146 () Bool)

(assert (=> b!810698 (=> (not res!554146) (not e!448736))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!810698 (= res!554146 (validKeyInArray!0 (select (arr!21086 a!3170) j!153)))))

(declare-fun b!810699 () Bool)

(declare-fun res!554144 () Bool)

(assert (=> b!810699 (=> (not res!554144) (not e!448736))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!44037 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!810699 (= res!554144 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!810701 () Bool)

(declare-fun res!554149 () Bool)

(assert (=> b!810701 (=> (not res!554149) (not e!448736))))

(assert (=> b!810701 (= res!554149 (validKeyInArray!0 k!2044))))

(declare-fun b!810702 () Bool)

(assert (=> b!810702 (= e!448736 e!448738)))

(declare-fun res!554143 () Bool)

(assert (=> b!810702 (=> (not res!554143) (not e!448738))))

(declare-fun lt!363437 () SeekEntryResult!8684)

(assert (=> b!810702 (= res!554143 (or (= lt!363437 (MissingZero!8684 i!1163)) (= lt!363437 (MissingVacant!8684 i!1163))))))

(assert (=> b!810702 (= lt!363437 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!810703 () Bool)

(declare-fun res!554151 () Bool)

(assert (=> b!810703 (=> (not res!554151) (not e!448738))))

(declare-datatypes ((List!15102 0))(
  ( (Nil!15099) (Cons!15098 (h!16227 (_ BitVec 64)) (t!21425 List!15102)) )
))
(declare-fun arrayNoDuplicates!0 (array!44037 (_ BitVec 32) List!15102) Bool)

(assert (=> b!810703 (= res!554151 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15099))))

(declare-fun b!810704 () Bool)

(assert (=> b!810704 (= e!448737 (not true))))

(declare-fun lt!363439 () (_ BitVec 64))

(declare-fun lt!363438 () (_ BitVec 32))

(declare-fun lt!363433 () array!44037)

(assert (=> b!810704 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!363438 vacantAfter!23 lt!363439 lt!363433 mask!3266) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!363438 vacantBefore!23 (select (arr!21086 a!3170) j!153) a!3170 mask!3266))))

(declare-datatypes ((Unit!27630 0))(
  ( (Unit!27631) )
))
(declare-fun lt!363435 () Unit!27630)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!44037 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27630)

(assert (=> b!810704 (= lt!363435 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3170 i!1163 k!2044 j!153 lt!363438 (bvadd #b00000000000000000000000000000001 x!1077) vacantBefore!23 vacantAfter!23 mask!3266))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!810704 (= lt!363438 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!810705 () Bool)

(assert (=> b!810705 (= e!448738 e!448734)))

(declare-fun res!554147 () Bool)

(assert (=> b!810705 (=> (not res!554147) (not e!448734))))

(assert (=> b!810705 (= res!554147 (= (seekEntryOrOpen!0 lt!363439 lt!363433 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!363439 lt!363433 mask!3266)))))

(assert (=> b!810705 (= lt!363439 (select (store (arr!21086 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!810705 (= lt!363433 (array!44038 (store (arr!21086 a!3170) i!1163 k!2044) (size!21507 a!3170)))))

(declare-fun res!554150 () Bool)

(assert (=> start!69590 (=> (not res!554150) (not e!448736))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69590 (= res!554150 (validMask!0 mask!3266))))

(assert (=> start!69590 e!448736))

(assert (=> start!69590 true))

(declare-fun array_inv!16860 (array!44037) Bool)

(assert (=> start!69590 (array_inv!16860 a!3170)))

(declare-fun b!810700 () Bool)

(declare-fun res!554145 () Bool)

(assert (=> b!810700 (=> (not res!554145) (not e!448738))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44037 (_ BitVec 32)) Bool)

(assert (=> b!810700 (= res!554145 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(assert (= (and start!69590 res!554150) b!810696))

(assert (= (and b!810696 res!554152) b!810698))

(assert (= (and b!810698 res!554146) b!810701))

(assert (= (and b!810701 res!554149) b!810699))

(assert (= (and b!810699 res!554144) b!810702))

(assert (= (and b!810702 res!554143) b!810700))

(assert (= (and b!810700 res!554145) b!810703))

(assert (= (and b!810703 res!554151) b!810695))

(assert (= (and b!810695 res!554142) b!810705))

(assert (= (and b!810705 res!554147) b!810697))

(assert (= (and b!810697 res!554148) b!810704))

(declare-fun m!753071 () Bool)

(assert (=> b!810695 m!753071))

(declare-fun m!753073 () Bool)

(assert (=> b!810695 m!753073))

(declare-fun m!753075 () Bool)

(assert (=> b!810699 m!753075))

(declare-fun m!753077 () Bool)

(assert (=> b!810697 m!753077))

(declare-fun m!753079 () Bool)

(assert (=> b!810697 m!753079))

(assert (=> b!810697 m!753079))

(declare-fun m!753081 () Bool)

(assert (=> b!810697 m!753081))

(assert (=> b!810697 m!753079))

(declare-fun m!753083 () Bool)

(assert (=> b!810697 m!753083))

(assert (=> b!810704 m!753079))

(declare-fun m!753085 () Bool)

(assert (=> b!810704 m!753085))

(declare-fun m!753087 () Bool)

(assert (=> b!810704 m!753087))

(assert (=> b!810704 m!753079))

(declare-fun m!753089 () Bool)

(assert (=> b!810704 m!753089))

(declare-fun m!753091 () Bool)

(assert (=> b!810704 m!753091))

(declare-fun m!753093 () Bool)

(assert (=> start!69590 m!753093))

(declare-fun m!753095 () Bool)

(assert (=> start!69590 m!753095))

(declare-fun m!753097 () Bool)

(assert (=> b!810703 m!753097))

(declare-fun m!753099 () Bool)

(assert (=> b!810700 m!753099))

(declare-fun m!753101 () Bool)

(assert (=> b!810702 m!753101))

(declare-fun m!753103 () Bool)

(assert (=> b!810705 m!753103))

(declare-fun m!753105 () Bool)

(assert (=> b!810705 m!753105))

(declare-fun m!753107 () Bool)

(assert (=> b!810705 m!753107))

(declare-fun m!753109 () Bool)

(assert (=> b!810705 m!753109))

(assert (=> b!810698 m!753079))

(assert (=> b!810698 m!753079))

(declare-fun m!753111 () Bool)

(assert (=> b!810698 m!753111))

(declare-fun m!753113 () Bool)

(assert (=> b!810701 m!753113))

(push 1)

