; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68568 () Bool)

(assert start!68568)

(declare-fun b!797099 () Bool)

(declare-fun res!541789 () Bool)

(declare-fun e!442261 () Bool)

(assert (=> b!797099 (=> (not res!541789) (not e!442261))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!797099 (= res!541789 (validKeyInArray!0 k0!2044))))

(declare-fun b!797100 () Bool)

(declare-fun res!541788 () Bool)

(assert (=> b!797100 (=> (not res!541788) (not e!442261))))

(declare-datatypes ((array!43309 0))(
  ( (array!43310 (arr!20731 (Array (_ BitVec 32) (_ BitVec 64))) (size!21152 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43309)

(declare-fun arrayContainsKey!0 (array!43309 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!797100 (= res!541788 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!797101 () Bool)

(declare-fun res!541796 () Bool)

(assert (=> b!797101 (=> (not res!541796) (not e!442261))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(assert (=> b!797101 (= res!541796 (and (= (size!21152 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21152 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21152 a!3170)) (not (= i!1163 j!153))))))

(declare-fun res!541791 () Bool)

(assert (=> start!68568 (=> (not res!541791) (not e!442261))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68568 (= res!541791 (validMask!0 mask!3266))))

(assert (=> start!68568 e!442261))

(assert (=> start!68568 true))

(declare-fun array_inv!16505 (array!43309) Bool)

(assert (=> start!68568 (array_inv!16505 a!3170)))

(declare-fun b!797102 () Bool)

(declare-fun res!541795 () Bool)

(declare-fun e!442260 () Bool)

(assert (=> b!797102 (=> (not res!541795) (not e!442260))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43309 (_ BitVec 32)) Bool)

(assert (=> b!797102 (= res!541795 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!797103 () Bool)

(declare-fun res!541792 () Bool)

(assert (=> b!797103 (=> (not res!541792) (not e!442260))))

(declare-datatypes ((List!14747 0))(
  ( (Nil!14744) (Cons!14743 (h!15872 (_ BitVec 64)) (t!21070 List!14747)) )
))
(declare-fun arrayNoDuplicates!0 (array!43309 (_ BitVec 32) List!14747) Bool)

(assert (=> b!797103 (= res!541792 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14744))))

(declare-fun b!797104 () Bool)

(declare-fun e!442257 () Bool)

(assert (=> b!797104 (= e!442257 (not true))))

(declare-datatypes ((SeekEntryResult!8329 0))(
  ( (MissingZero!8329 (index!35683 (_ BitVec 32))) (Found!8329 (index!35684 (_ BitVec 32))) (Intermediate!8329 (undefined!9141 Bool) (index!35685 (_ BitVec 32)) (x!66608 (_ BitVec 32))) (Undefined!8329) (MissingVacant!8329 (index!35686 (_ BitVec 32))) )
))
(declare-fun lt!355606 () SeekEntryResult!8329)

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!797104 (= lt!355606 (Found!8329 index!1236))))

(declare-fun b!797105 () Bool)

(declare-fun res!541790 () Bool)

(assert (=> b!797105 (=> (not res!541790) (not e!442260))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!797105 (= res!541790 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21152 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20731 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21152 a!3170)) (= (select (arr!20731 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!797106 () Bool)

(assert (=> b!797106 (= e!442261 e!442260)))

(declare-fun res!541798 () Bool)

(assert (=> b!797106 (=> (not res!541798) (not e!442260))))

(declare-fun lt!355601 () SeekEntryResult!8329)

(assert (=> b!797106 (= res!541798 (or (= lt!355601 (MissingZero!8329 i!1163)) (= lt!355601 (MissingVacant!8329 i!1163))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43309 (_ BitVec 32)) SeekEntryResult!8329)

(assert (=> b!797106 (= lt!355601 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!797107 () Bool)

(declare-fun e!442258 () Bool)

(assert (=> b!797107 (= e!442258 e!442257)))

(declare-fun res!541794 () Bool)

(assert (=> b!797107 (=> (not res!541794) (not e!442257))))

(declare-fun lt!355603 () SeekEntryResult!8329)

(declare-fun lt!355604 () SeekEntryResult!8329)

(assert (=> b!797107 (= res!541794 (and (= lt!355603 lt!355604) (= lt!355604 (Found!8329 j!153)) (= (select (arr!20731 a!3170) index!1236) (select (arr!20731 a!3170) j!153))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43309 (_ BitVec 32)) SeekEntryResult!8329)

(assert (=> b!797107 (= lt!355604 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20731 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!797107 (= lt!355603 (seekEntryOrOpen!0 (select (arr!20731 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!797108 () Bool)

(declare-fun res!541797 () Bool)

(assert (=> b!797108 (=> (not res!541797) (not e!442261))))

(assert (=> b!797108 (= res!541797 (validKeyInArray!0 (select (arr!20731 a!3170) j!153)))))

(declare-fun b!797109 () Bool)

(assert (=> b!797109 (= e!442260 e!442258)))

(declare-fun res!541793 () Bool)

(assert (=> b!797109 (=> (not res!541793) (not e!442258))))

(declare-fun lt!355600 () SeekEntryResult!8329)

(assert (=> b!797109 (= res!541793 (= lt!355600 lt!355606))))

(declare-fun lt!355602 () (_ BitVec 64))

(declare-fun lt!355605 () array!43309)

(assert (=> b!797109 (= lt!355606 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!355602 lt!355605 mask!3266))))

(assert (=> b!797109 (= lt!355600 (seekEntryOrOpen!0 lt!355602 lt!355605 mask!3266))))

(assert (=> b!797109 (= lt!355602 (select (store (arr!20731 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!797109 (= lt!355605 (array!43310 (store (arr!20731 a!3170) i!1163 k0!2044) (size!21152 a!3170)))))

(assert (= (and start!68568 res!541791) b!797101))

(assert (= (and b!797101 res!541796) b!797108))

(assert (= (and b!797108 res!541797) b!797099))

(assert (= (and b!797099 res!541789) b!797100))

(assert (= (and b!797100 res!541788) b!797106))

(assert (= (and b!797106 res!541798) b!797102))

(assert (= (and b!797102 res!541795) b!797103))

(assert (= (and b!797103 res!541792) b!797105))

(assert (= (and b!797105 res!541790) b!797109))

(assert (= (and b!797109 res!541793) b!797107))

(assert (= (and b!797107 res!541794) b!797104))

(declare-fun m!738043 () Bool)

(assert (=> start!68568 m!738043))

(declare-fun m!738045 () Bool)

(assert (=> start!68568 m!738045))

(declare-fun m!738047 () Bool)

(assert (=> b!797108 m!738047))

(assert (=> b!797108 m!738047))

(declare-fun m!738049 () Bool)

(assert (=> b!797108 m!738049))

(declare-fun m!738051 () Bool)

(assert (=> b!797103 m!738051))

(declare-fun m!738053 () Bool)

(assert (=> b!797099 m!738053))

(declare-fun m!738055 () Bool)

(assert (=> b!797109 m!738055))

(declare-fun m!738057 () Bool)

(assert (=> b!797109 m!738057))

(declare-fun m!738059 () Bool)

(assert (=> b!797109 m!738059))

(declare-fun m!738061 () Bool)

(assert (=> b!797109 m!738061))

(declare-fun m!738063 () Bool)

(assert (=> b!797106 m!738063))

(declare-fun m!738065 () Bool)

(assert (=> b!797102 m!738065))

(declare-fun m!738067 () Bool)

(assert (=> b!797107 m!738067))

(assert (=> b!797107 m!738047))

(assert (=> b!797107 m!738047))

(declare-fun m!738069 () Bool)

(assert (=> b!797107 m!738069))

(assert (=> b!797107 m!738047))

(declare-fun m!738071 () Bool)

(assert (=> b!797107 m!738071))

(declare-fun m!738073 () Bool)

(assert (=> b!797100 m!738073))

(declare-fun m!738075 () Bool)

(assert (=> b!797105 m!738075))

(declare-fun m!738077 () Bool)

(assert (=> b!797105 m!738077))

(check-sat (not b!797109) (not b!797107) (not b!797106) (not b!797102) (not b!797103) (not start!68568) (not b!797108) (not b!797099) (not b!797100))
(check-sat)
