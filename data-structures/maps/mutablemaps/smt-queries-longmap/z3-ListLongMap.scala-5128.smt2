; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!69672 () Bool)

(assert start!69672)

(declare-fun b!811373 () Bool)

(declare-fun res!554593 () Bool)

(declare-fun e!449099 () Bool)

(assert (=> b!811373 (=> (not res!554593) (not e!449099))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(declare-datatypes ((array!44062 0))(
  ( (array!44063 (arr!21097 (Array (_ BitVec 32) (_ BitVec 64))) (size!21518 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!44062)

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!811373 (= res!554593 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21518 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!21097 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21518 a!3170)) (= (select (arr!21097 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!811374 () Bool)

(declare-fun e!449100 () Bool)

(assert (=> b!811374 (= e!449100 e!449099)))

(declare-fun res!554595 () Bool)

(assert (=> b!811374 (=> (not res!554595) (not e!449099))))

(declare-datatypes ((SeekEntryResult!8695 0))(
  ( (MissingZero!8695 (index!37150 (_ BitVec 32))) (Found!8695 (index!37151 (_ BitVec 32))) (Intermediate!8695 (undefined!9507 Bool) (index!37152 (_ BitVec 32)) (x!67989 (_ BitVec 32))) (Undefined!8695) (MissingVacant!8695 (index!37153 (_ BitVec 32))) )
))
(declare-fun lt!363818 () SeekEntryResult!8695)

(assert (=> b!811374 (= res!554595 (or (= lt!363818 (MissingZero!8695 i!1163)) (= lt!363818 (MissingVacant!8695 i!1163))))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!44062 (_ BitVec 32)) SeekEntryResult!8695)

(assert (=> b!811374 (= lt!363818 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun res!554589 () Bool)

(assert (=> start!69672 (=> (not res!554589) (not e!449100))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69672 (= res!554589 (validMask!0 mask!3266))))

(assert (=> start!69672 e!449100))

(assert (=> start!69672 true))

(declare-fun array_inv!16871 (array!44062) Bool)

(assert (=> start!69672 (array_inv!16871 a!3170)))

(declare-fun b!811375 () Bool)

(declare-fun e!449098 () Bool)

(declare-fun e!449097 () Bool)

(assert (=> b!811375 (= e!449098 e!449097)))

(declare-fun res!554587 () Bool)

(assert (=> b!811375 (=> (not res!554587) (not e!449097))))

(declare-fun lt!363823 () SeekEntryResult!8695)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun lt!363817 () SeekEntryResult!8695)

(assert (=> b!811375 (= res!554587 (and (= lt!363817 lt!363823) (= lt!363823 (Found!8695 j!153)) (not (= (select (arr!21097 a!3170) index!1236) (select (arr!21097 a!3170) j!153)))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!44062 (_ BitVec 32)) SeekEntryResult!8695)

(assert (=> b!811375 (= lt!363823 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21097 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!811375 (= lt!363817 (seekEntryOrOpen!0 (select (arr!21097 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!811376 () Bool)

(declare-fun res!554590 () Bool)

(assert (=> b!811376 (=> (not res!554590) (not e!449100))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!811376 (= res!554590 (validKeyInArray!0 k0!2044))))

(declare-fun b!811377 () Bool)

(declare-fun res!554586 () Bool)

(assert (=> b!811377 (=> (not res!554586) (not e!449099))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44062 (_ BitVec 32)) Bool)

(assert (=> b!811377 (= res!554586 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!811378 () Bool)

(declare-fun res!554596 () Bool)

(assert (=> b!811378 (=> (not res!554596) (not e!449100))))

(assert (=> b!811378 (= res!554596 (validKeyInArray!0 (select (arr!21097 a!3170) j!153)))))

(declare-fun b!811379 () Bool)

(declare-fun res!554588 () Bool)

(assert (=> b!811379 (=> (not res!554588) (not e!449099))))

(declare-datatypes ((List!15113 0))(
  ( (Nil!15110) (Cons!15109 (h!16238 (_ BitVec 64)) (t!21436 List!15113)) )
))
(declare-fun arrayNoDuplicates!0 (array!44062 (_ BitVec 32) List!15113) Bool)

(assert (=> b!811379 (= res!554588 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15110))))

(declare-fun b!811380 () Bool)

(declare-fun res!554592 () Bool)

(assert (=> b!811380 (=> (not res!554592) (not e!449100))))

(assert (=> b!811380 (= res!554592 (and (= (size!21518 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21518 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21518 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!811381 () Bool)

(assert (=> b!811381 (= e!449097 (not true))))

(declare-fun lt!363821 () array!44062)

(declare-fun lt!363819 () (_ BitVec 32))

(declare-fun lt!363820 () (_ BitVec 64))

(assert (=> b!811381 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!363819 vacantAfter!23 lt!363820 lt!363821 mask!3266) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!363819 vacantBefore!23 (select (arr!21097 a!3170) j!153) a!3170 mask!3266))))

(declare-datatypes ((Unit!27652 0))(
  ( (Unit!27653) )
))
(declare-fun lt!363822 () Unit!27652)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!44062 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27652)

(assert (=> b!811381 (= lt!363822 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3170 i!1163 k0!2044 j!153 lt!363819 (bvadd #b00000000000000000000000000000001 x!1077) vacantBefore!23 vacantAfter!23 mask!3266))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!811381 (= lt!363819 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!811382 () Bool)

(assert (=> b!811382 (= e!449099 e!449098)))

(declare-fun res!554594 () Bool)

(assert (=> b!811382 (=> (not res!554594) (not e!449098))))

(assert (=> b!811382 (= res!554594 (= (seekEntryOrOpen!0 lt!363820 lt!363821 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!363820 lt!363821 mask!3266)))))

(assert (=> b!811382 (= lt!363820 (select (store (arr!21097 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!811382 (= lt!363821 (array!44063 (store (arr!21097 a!3170) i!1163 k0!2044) (size!21518 a!3170)))))

(declare-fun b!811383 () Bool)

(declare-fun res!554591 () Bool)

(assert (=> b!811383 (=> (not res!554591) (not e!449100))))

(declare-fun arrayContainsKey!0 (array!44062 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!811383 (= res!554591 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(assert (= (and start!69672 res!554589) b!811380))

(assert (= (and b!811380 res!554592) b!811378))

(assert (= (and b!811378 res!554596) b!811376))

(assert (= (and b!811376 res!554590) b!811383))

(assert (= (and b!811383 res!554591) b!811374))

(assert (= (and b!811374 res!554595) b!811377))

(assert (= (and b!811377 res!554586) b!811379))

(assert (= (and b!811379 res!554588) b!811373))

(assert (= (and b!811373 res!554593) b!811382))

(assert (= (and b!811382 res!554594) b!811375))

(assert (= (and b!811375 res!554587) b!811381))

(declare-fun m!753849 () Bool)

(assert (=> b!811377 m!753849))

(declare-fun m!753851 () Bool)

(assert (=> b!811381 m!753851))

(declare-fun m!753853 () Bool)

(assert (=> b!811381 m!753853))

(declare-fun m!753855 () Bool)

(assert (=> b!811381 m!753855))

(declare-fun m!753857 () Bool)

(assert (=> b!811381 m!753857))

(assert (=> b!811381 m!753851))

(declare-fun m!753859 () Bool)

(assert (=> b!811381 m!753859))

(declare-fun m!753861 () Bool)

(assert (=> b!811383 m!753861))

(assert (=> b!811378 m!753851))

(assert (=> b!811378 m!753851))

(declare-fun m!753863 () Bool)

(assert (=> b!811378 m!753863))

(declare-fun m!753865 () Bool)

(assert (=> b!811374 m!753865))

(declare-fun m!753867 () Bool)

(assert (=> b!811379 m!753867))

(declare-fun m!753869 () Bool)

(assert (=> start!69672 m!753869))

(declare-fun m!753871 () Bool)

(assert (=> start!69672 m!753871))

(declare-fun m!753873 () Bool)

(assert (=> b!811373 m!753873))

(declare-fun m!753875 () Bool)

(assert (=> b!811373 m!753875))

(declare-fun m!753877 () Bool)

(assert (=> b!811382 m!753877))

(declare-fun m!753879 () Bool)

(assert (=> b!811382 m!753879))

(declare-fun m!753881 () Bool)

(assert (=> b!811382 m!753881))

(declare-fun m!753883 () Bool)

(assert (=> b!811382 m!753883))

(declare-fun m!753885 () Bool)

(assert (=> b!811375 m!753885))

(assert (=> b!811375 m!753851))

(assert (=> b!811375 m!753851))

(declare-fun m!753887 () Bool)

(assert (=> b!811375 m!753887))

(assert (=> b!811375 m!753851))

(declare-fun m!753889 () Bool)

(assert (=> b!811375 m!753889))

(declare-fun m!753891 () Bool)

(assert (=> b!811376 m!753891))

(check-sat (not b!811377) (not b!811375) (not b!811379) (not b!811382) (not b!811376) (not b!811381) (not start!69672) (not b!811378) (not b!811374) (not b!811383))
(check-sat)
