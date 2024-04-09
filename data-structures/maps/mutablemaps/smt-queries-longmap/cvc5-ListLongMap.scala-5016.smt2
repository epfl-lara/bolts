; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68626 () Bool)

(assert start!68626)

(declare-fun b!798119 () Bool)

(declare-fun res!542812 () Bool)

(declare-fun e!442759 () Bool)

(assert (=> b!798119 (=> (not res!542812) (not e!442759))))

(declare-datatypes ((array!43367 0))(
  ( (array!43368 (arr!20760 (Array (_ BitVec 32) (_ BitVec 64))) (size!21181 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43367)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!798119 (= res!542812 (validKeyInArray!0 (select (arr!20760 a!3170) j!153)))))

(declare-fun res!542816 () Bool)

(assert (=> start!68626 (=> (not res!542816) (not e!442759))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68626 (= res!542816 (validMask!0 mask!3266))))

(assert (=> start!68626 e!442759))

(assert (=> start!68626 true))

(declare-fun array_inv!16534 (array!43367) Bool)

(assert (=> start!68626 (array_inv!16534 a!3170)))

(declare-fun b!798120 () Bool)

(declare-fun res!542815 () Bool)

(declare-fun e!442755 () Bool)

(assert (=> b!798120 (=> (not res!542815) (not e!442755))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43367 (_ BitVec 32)) Bool)

(assert (=> b!798120 (= res!542815 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!798121 () Bool)

(declare-fun res!542808 () Bool)

(assert (=> b!798121 (=> (not res!542808) (not e!442755))))

(declare-datatypes ((List!14776 0))(
  ( (Nil!14773) (Cons!14772 (h!15901 (_ BitVec 64)) (t!21099 List!14776)) )
))
(declare-fun arrayNoDuplicates!0 (array!43367 (_ BitVec 32) List!14776) Bool)

(assert (=> b!798121 (= res!542808 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14773))))

(declare-fun b!798122 () Bool)

(assert (=> b!798122 (= e!442759 e!442755)))

(declare-fun res!542809 () Bool)

(assert (=> b!798122 (=> (not res!542809) (not e!442755))))

(declare-datatypes ((SeekEntryResult!8358 0))(
  ( (MissingZero!8358 (index!35799 (_ BitVec 32))) (Found!8358 (index!35800 (_ BitVec 32))) (Intermediate!8358 (undefined!9170 Bool) (index!35801 (_ BitVec 32)) (x!66717 (_ BitVec 32))) (Undefined!8358) (MissingVacant!8358 (index!35802 (_ BitVec 32))) )
))
(declare-fun lt!356269 () SeekEntryResult!8358)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!798122 (= res!542809 (or (= lt!356269 (MissingZero!8358 i!1163)) (= lt!356269 (MissingVacant!8358 i!1163))))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43367 (_ BitVec 32)) SeekEntryResult!8358)

(assert (=> b!798122 (= lt!356269 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!798123 () Bool)

(declare-fun res!542817 () Bool)

(assert (=> b!798123 (=> (not res!542817) (not e!442755))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!798123 (= res!542817 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21181 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20760 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21181 a!3170)) (= (select (arr!20760 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!798124 () Bool)

(declare-fun res!542813 () Bool)

(assert (=> b!798124 (=> (not res!542813) (not e!442759))))

(assert (=> b!798124 (= res!542813 (validKeyInArray!0 k!2044))))

(declare-fun b!798125 () Bool)

(declare-fun e!442756 () Bool)

(assert (=> b!798125 (= e!442755 e!442756)))

(declare-fun res!542818 () Bool)

(assert (=> b!798125 (=> (not res!542818) (not e!442756))))

(declare-fun lt!356263 () SeekEntryResult!8358)

(declare-fun lt!356268 () SeekEntryResult!8358)

(assert (=> b!798125 (= res!542818 (= lt!356263 lt!356268))))

(declare-fun lt!356264 () (_ BitVec 64))

(declare-fun lt!356267 () array!43367)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43367 (_ BitVec 32)) SeekEntryResult!8358)

(assert (=> b!798125 (= lt!356268 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!356264 lt!356267 mask!3266))))

(assert (=> b!798125 (= lt!356263 (seekEntryOrOpen!0 lt!356264 lt!356267 mask!3266))))

(assert (=> b!798125 (= lt!356264 (select (store (arr!20760 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!798125 (= lt!356267 (array!43368 (store (arr!20760 a!3170) i!1163 k!2044) (size!21181 a!3170)))))

(declare-fun b!798126 () Bool)

(declare-fun e!442757 () Bool)

(assert (=> b!798126 (= e!442756 e!442757)))

(declare-fun res!542814 () Bool)

(assert (=> b!798126 (=> (not res!542814) (not e!442757))))

(declare-fun lt!356265 () SeekEntryResult!8358)

(declare-fun lt!356266 () SeekEntryResult!8358)

(assert (=> b!798126 (= res!542814 (and (= lt!356266 lt!356265) (= lt!356265 (Found!8358 j!153)) (= (select (arr!20760 a!3170) index!1236) (select (arr!20760 a!3170) j!153))))))

(assert (=> b!798126 (= lt!356265 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20760 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!798126 (= lt!356266 (seekEntryOrOpen!0 (select (arr!20760 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!798127 () Bool)

(assert (=> b!798127 (= e!442757 (not true))))

(assert (=> b!798127 (= lt!356268 (Found!8358 index!1236))))

(declare-fun b!798128 () Bool)

(declare-fun res!542811 () Bool)

(assert (=> b!798128 (=> (not res!542811) (not e!442759))))

(assert (=> b!798128 (= res!542811 (and (= (size!21181 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21181 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21181 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!798129 () Bool)

(declare-fun res!542810 () Bool)

(assert (=> b!798129 (=> (not res!542810) (not e!442759))))

(declare-fun arrayContainsKey!0 (array!43367 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!798129 (= res!542810 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(assert (= (and start!68626 res!542816) b!798128))

(assert (= (and b!798128 res!542811) b!798119))

(assert (= (and b!798119 res!542812) b!798124))

(assert (= (and b!798124 res!542813) b!798129))

(assert (= (and b!798129 res!542810) b!798122))

(assert (= (and b!798122 res!542809) b!798120))

(assert (= (and b!798120 res!542815) b!798121))

(assert (= (and b!798121 res!542808) b!798123))

(assert (= (and b!798123 res!542817) b!798125))

(assert (= (and b!798125 res!542818) b!798126))

(assert (= (and b!798126 res!542814) b!798127))

(declare-fun m!739105 () Bool)

(assert (=> b!798123 m!739105))

(declare-fun m!739107 () Bool)

(assert (=> b!798123 m!739107))

(declare-fun m!739109 () Bool)

(assert (=> b!798129 m!739109))

(declare-fun m!739111 () Bool)

(assert (=> b!798121 m!739111))

(declare-fun m!739113 () Bool)

(assert (=> b!798120 m!739113))

(declare-fun m!739115 () Bool)

(assert (=> start!68626 m!739115))

(declare-fun m!739117 () Bool)

(assert (=> start!68626 m!739117))

(declare-fun m!739119 () Bool)

(assert (=> b!798122 m!739119))

(declare-fun m!739121 () Bool)

(assert (=> b!798126 m!739121))

(declare-fun m!739123 () Bool)

(assert (=> b!798126 m!739123))

(assert (=> b!798126 m!739123))

(declare-fun m!739125 () Bool)

(assert (=> b!798126 m!739125))

(assert (=> b!798126 m!739123))

(declare-fun m!739127 () Bool)

(assert (=> b!798126 m!739127))

(declare-fun m!739129 () Bool)

(assert (=> b!798124 m!739129))

(assert (=> b!798119 m!739123))

(assert (=> b!798119 m!739123))

(declare-fun m!739131 () Bool)

(assert (=> b!798119 m!739131))

(declare-fun m!739133 () Bool)

(assert (=> b!798125 m!739133))

(declare-fun m!739135 () Bool)

(assert (=> b!798125 m!739135))

(declare-fun m!739137 () Bool)

(assert (=> b!798125 m!739137))

(declare-fun m!739139 () Bool)

(assert (=> b!798125 m!739139))

(push 1)

