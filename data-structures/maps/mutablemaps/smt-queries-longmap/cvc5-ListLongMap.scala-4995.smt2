; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68500 () Bool)

(assert start!68500)

(declare-fun b!795950 () Bool)

(declare-fun res!540641 () Bool)

(declare-fun e!441723 () Bool)

(assert (=> b!795950 (=> (not res!540641) (not e!441723))))

(declare-datatypes ((array!43241 0))(
  ( (array!43242 (arr!20697 (Array (_ BitVec 32) (_ BitVec 64))) (size!21118 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43241)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!795950 (= res!540641 (validKeyInArray!0 (select (arr!20697 a!3170) j!153)))))

(declare-fun b!795951 () Bool)

(declare-fun res!540642 () Bool)

(assert (=> b!795951 (=> (not res!540642) (not e!441723))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(assert (=> b!795951 (= res!540642 (and (= (size!21118 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21118 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21118 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!795952 () Bool)

(declare-fun e!441721 () Bool)

(declare-fun e!441722 () Bool)

(assert (=> b!795952 (= e!441721 e!441722)))

(declare-fun res!540647 () Bool)

(assert (=> b!795952 (=> (not res!540647) (not e!441722))))

(declare-datatypes ((SeekEntryResult!8295 0))(
  ( (MissingZero!8295 (index!35547 (_ BitVec 32))) (Found!8295 (index!35548 (_ BitVec 32))) (Intermediate!8295 (undefined!9107 Bool) (index!35549 (_ BitVec 32)) (x!66486 (_ BitVec 32))) (Undefined!8295) (MissingVacant!8295 (index!35550 (_ BitVec 32))) )
))
(declare-fun lt!354869 () SeekEntryResult!8295)

(declare-fun lt!354874 () SeekEntryResult!8295)

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!795952 (= res!540647 (and (= lt!354874 lt!354869) (= lt!354869 (Found!8295 j!153)) (= (select (arr!20697 a!3170) index!1236) (select (arr!20697 a!3170) j!153))))))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43241 (_ BitVec 32)) SeekEntryResult!8295)

(assert (=> b!795952 (= lt!354869 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20697 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43241 (_ BitVec 32)) SeekEntryResult!8295)

(assert (=> b!795952 (= lt!354874 (seekEntryOrOpen!0 (select (arr!20697 a!3170) j!153) a!3170 mask!3266))))

(declare-fun res!540648 () Bool)

(assert (=> start!68500 (=> (not res!540648) (not e!441723))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68500 (= res!540648 (validMask!0 mask!3266))))

(assert (=> start!68500 e!441723))

(assert (=> start!68500 true))

(declare-fun array_inv!16471 (array!43241) Bool)

(assert (=> start!68500 (array_inv!16471 a!3170)))

(declare-fun b!795953 () Bool)

(declare-fun res!540649 () Bool)

(declare-fun e!441720 () Bool)

(assert (=> b!795953 (=> (not res!540649) (not e!441720))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(assert (=> b!795953 (= res!540649 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21118 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20697 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21118 a!3170)) (= (select (arr!20697 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!795954 () Bool)

(declare-fun res!540640 () Bool)

(assert (=> b!795954 (=> (not res!540640) (not e!441723))))

(declare-fun k!2044 () (_ BitVec 64))

(assert (=> b!795954 (= res!540640 (validKeyInArray!0 k!2044))))

(declare-fun b!795955 () Bool)

(declare-fun res!540645 () Bool)

(assert (=> b!795955 (=> (not res!540645) (not e!441720))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43241 (_ BitVec 32)) Bool)

(assert (=> b!795955 (= res!540645 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!795956 () Bool)

(declare-fun res!540644 () Bool)

(assert (=> b!795956 (=> (not res!540644) (not e!441720))))

(declare-datatypes ((List!14713 0))(
  ( (Nil!14710) (Cons!14709 (h!15838 (_ BitVec 64)) (t!21036 List!14713)) )
))
(declare-fun arrayNoDuplicates!0 (array!43241 (_ BitVec 32) List!14713) Bool)

(assert (=> b!795956 (= res!540644 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14710))))

(declare-fun b!795957 () Bool)

(declare-fun res!540643 () Bool)

(assert (=> b!795957 (=> (not res!540643) (not e!441723))))

(declare-fun arrayContainsKey!0 (array!43241 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!795957 (= res!540643 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!795958 () Bool)

(assert (=> b!795958 (= e!441723 e!441720)))

(declare-fun res!540639 () Bool)

(assert (=> b!795958 (=> (not res!540639) (not e!441720))))

(declare-fun lt!354870 () SeekEntryResult!8295)

(assert (=> b!795958 (= res!540639 (or (= lt!354870 (MissingZero!8295 i!1163)) (= lt!354870 (MissingVacant!8295 i!1163))))))

(assert (=> b!795958 (= lt!354870 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!795959 () Bool)

(assert (=> b!795959 (= e!441720 e!441721)))

(declare-fun res!540646 () Bool)

(assert (=> b!795959 (=> (not res!540646) (not e!441721))))

(declare-fun lt!354871 () SeekEntryResult!8295)

(declare-fun lt!354868 () SeekEntryResult!8295)

(assert (=> b!795959 (= res!540646 (= lt!354871 lt!354868))))

(declare-fun lt!354872 () array!43241)

(declare-fun lt!354873 () (_ BitVec 64))

(assert (=> b!795959 (= lt!354868 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!354873 lt!354872 mask!3266))))

(assert (=> b!795959 (= lt!354871 (seekEntryOrOpen!0 lt!354873 lt!354872 mask!3266))))

(assert (=> b!795959 (= lt!354873 (select (store (arr!20697 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!795959 (= lt!354872 (array!43242 (store (arr!20697 a!3170) i!1163 k!2044) (size!21118 a!3170)))))

(declare-fun b!795960 () Bool)

(assert (=> b!795960 (= e!441722 (not (bvsge mask!3266 #b00000000000000000000000000000000)))))

(assert (=> b!795960 (= lt!354868 (Found!8295 index!1236))))

(assert (= (and start!68500 res!540648) b!795951))

(assert (= (and b!795951 res!540642) b!795950))

(assert (= (and b!795950 res!540641) b!795954))

(assert (= (and b!795954 res!540640) b!795957))

(assert (= (and b!795957 res!540643) b!795958))

(assert (= (and b!795958 res!540639) b!795955))

(assert (= (and b!795955 res!540645) b!795956))

(assert (= (and b!795956 res!540644) b!795953))

(assert (= (and b!795953 res!540649) b!795959))

(assert (= (and b!795959 res!540646) b!795952))

(assert (= (and b!795952 res!540647) b!795960))

(declare-fun m!736801 () Bool)

(assert (=> b!795959 m!736801))

(declare-fun m!736803 () Bool)

(assert (=> b!795959 m!736803))

(declare-fun m!736805 () Bool)

(assert (=> b!795959 m!736805))

(declare-fun m!736807 () Bool)

(assert (=> b!795959 m!736807))

(declare-fun m!736809 () Bool)

(assert (=> b!795957 m!736809))

(declare-fun m!736811 () Bool)

(assert (=> b!795954 m!736811))

(declare-fun m!736813 () Bool)

(assert (=> b!795950 m!736813))

(assert (=> b!795950 m!736813))

(declare-fun m!736815 () Bool)

(assert (=> b!795950 m!736815))

(declare-fun m!736817 () Bool)

(assert (=> b!795956 m!736817))

(declare-fun m!736819 () Bool)

(assert (=> b!795953 m!736819))

(declare-fun m!736821 () Bool)

(assert (=> b!795953 m!736821))

(declare-fun m!736823 () Bool)

(assert (=> start!68500 m!736823))

(declare-fun m!736825 () Bool)

(assert (=> start!68500 m!736825))

(declare-fun m!736827 () Bool)

(assert (=> b!795952 m!736827))

(assert (=> b!795952 m!736813))

(assert (=> b!795952 m!736813))

(declare-fun m!736829 () Bool)

(assert (=> b!795952 m!736829))

(assert (=> b!795952 m!736813))

(declare-fun m!736831 () Bool)

(assert (=> b!795952 m!736831))

(declare-fun m!736833 () Bool)

(assert (=> b!795958 m!736833))

(declare-fun m!736835 () Bool)

(assert (=> b!795955 m!736835))

(push 1)

