; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68714 () Bool)

(assert start!68714)

(declare-fun b!799695 () Bool)

(declare-fun res!544384 () Bool)

(declare-fun e!443463 () Bool)

(assert (=> b!799695 (=> (not res!544384) (not e!443463))))

(declare-datatypes ((array!43455 0))(
  ( (array!43456 (arr!20804 (Array (_ BitVec 32) (_ BitVec 64))) (size!21225 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43455)

(declare-datatypes ((List!14820 0))(
  ( (Nil!14817) (Cons!14816 (h!15945 (_ BitVec 64)) (t!21143 List!14820)) )
))
(declare-fun arrayNoDuplicates!0 (array!43455 (_ BitVec 32) List!14820) Bool)

(assert (=> b!799695 (= res!544384 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14817))))

(declare-fun b!799696 () Bool)

(declare-fun res!544389 () Bool)

(declare-fun e!443462 () Bool)

(assert (=> b!799696 (=> (not res!544389) (not e!443462))))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!799696 (= res!544389 (validKeyInArray!0 (select (arr!20804 a!3170) j!153)))))

(declare-fun b!799697 () Bool)

(assert (=> b!799697 (= e!443462 e!443463)))

(declare-fun res!544393 () Bool)

(assert (=> b!799697 (=> (not res!544393) (not e!443463))))

(declare-datatypes ((SeekEntryResult!8402 0))(
  ( (MissingZero!8402 (index!35975 (_ BitVec 32))) (Found!8402 (index!35976 (_ BitVec 32))) (Intermediate!8402 (undefined!9214 Bool) (index!35977 (_ BitVec 32)) (x!66873 (_ BitVec 32))) (Undefined!8402) (MissingVacant!8402 (index!35978 (_ BitVec 32))) )
))
(declare-fun lt!357200 () SeekEntryResult!8402)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!799697 (= res!544393 (or (= lt!357200 (MissingZero!8402 i!1163)) (= lt!357200 (MissingVacant!8402 i!1163))))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43455 (_ BitVec 32)) SeekEntryResult!8402)

(assert (=> b!799697 (= lt!357200 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!799698 () Bool)

(declare-fun res!544387 () Bool)

(assert (=> b!799698 (=> (not res!544387) (not e!443462))))

(assert (=> b!799698 (= res!544387 (and (= (size!21225 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21225 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21225 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!799699 () Bool)

(declare-fun res!544392 () Bool)

(assert (=> b!799699 (=> (not res!544392) (not e!443463))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43455 (_ BitVec 32)) Bool)

(assert (=> b!799699 (= res!544392 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!799700 () Bool)

(declare-fun e!443461 () Bool)

(declare-fun e!443459 () Bool)

(assert (=> b!799700 (= e!443461 e!443459)))

(declare-fun res!544391 () Bool)

(assert (=> b!799700 (=> (not res!544391) (not e!443459))))

(declare-fun lt!357196 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(assert (=> b!799700 (= res!544391 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1077) #b01111111111111111111111111111110) (bvsge (bvadd #b00000000000000000000000000000001 x!1077) #b00000000000000000000000000000000) (bvsge lt!357196 #b00000000000000000000000000000000) (bvslt lt!357196 (size!21225 a!3170))))))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!799700 (= lt!357196 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!799701 () Bool)

(declare-fun e!443464 () Bool)

(assert (=> b!799701 (= e!443464 e!443461)))

(declare-fun res!544390 () Bool)

(assert (=> b!799701 (=> (not res!544390) (not e!443461))))

(declare-fun lt!357198 () SeekEntryResult!8402)

(declare-fun lt!357199 () SeekEntryResult!8402)

(assert (=> b!799701 (= res!544390 (and (= lt!357198 lt!357199) (= lt!357199 (Found!8402 j!153)) (not (= (select (arr!20804 a!3170) index!1236) (select (arr!20804 a!3170) j!153)))))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43455 (_ BitVec 32)) SeekEntryResult!8402)

(assert (=> b!799701 (= lt!357199 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20804 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!799701 (= lt!357198 (seekEntryOrOpen!0 (select (arr!20804 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!799702 () Bool)

(declare-fun res!544396 () Bool)

(assert (=> b!799702 (=> (not res!544396) (not e!443459))))

(declare-fun lt!357195 () array!43455)

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun lt!357201 () SeekEntryResult!8402)

(declare-fun lt!357197 () (_ BitVec 64))

(assert (=> b!799702 (= res!544396 (= lt!357201 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!357196 vacantAfter!23 lt!357197 lt!357195 mask!3266)))))

(declare-fun res!544394 () Bool)

(assert (=> start!68714 (=> (not res!544394) (not e!443462))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68714 (= res!544394 (validMask!0 mask!3266))))

(assert (=> start!68714 e!443462))

(assert (=> start!68714 true))

(declare-fun array_inv!16578 (array!43455) Bool)

(assert (=> start!68714 (array_inv!16578 a!3170)))

(declare-fun b!799703 () Bool)

(declare-fun res!544386 () Bool)

(assert (=> b!799703 (=> (not res!544386) (not e!443463))))

(assert (=> b!799703 (= res!544386 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21225 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20804 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21225 a!3170)) (= (select (arr!20804 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!799704 () Bool)

(assert (=> b!799704 (= e!443459 false)))

(declare-fun lt!357202 () SeekEntryResult!8402)

(assert (=> b!799704 (= lt!357202 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!357196 vacantBefore!23 (select (arr!20804 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!799705 () Bool)

(declare-fun res!544388 () Bool)

(assert (=> b!799705 (=> (not res!544388) (not e!443462))))

(declare-fun arrayContainsKey!0 (array!43455 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!799705 (= res!544388 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!799706 () Bool)

(declare-fun res!544385 () Bool)

(assert (=> b!799706 (=> (not res!544385) (not e!443462))))

(assert (=> b!799706 (= res!544385 (validKeyInArray!0 k!2044))))

(declare-fun b!799707 () Bool)

(assert (=> b!799707 (= e!443463 e!443464)))

(declare-fun res!544395 () Bool)

(assert (=> b!799707 (=> (not res!544395) (not e!443464))))

(assert (=> b!799707 (= res!544395 (= lt!357201 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!357197 lt!357195 mask!3266)))))

(assert (=> b!799707 (= lt!357201 (seekEntryOrOpen!0 lt!357197 lt!357195 mask!3266))))

(assert (=> b!799707 (= lt!357197 (select (store (arr!20804 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!799707 (= lt!357195 (array!43456 (store (arr!20804 a!3170) i!1163 k!2044) (size!21225 a!3170)))))

(assert (= (and start!68714 res!544394) b!799698))

(assert (= (and b!799698 res!544387) b!799696))

(assert (= (and b!799696 res!544389) b!799706))

(assert (= (and b!799706 res!544385) b!799705))

(assert (= (and b!799705 res!544388) b!799697))

(assert (= (and b!799697 res!544393) b!799699))

(assert (= (and b!799699 res!544392) b!799695))

(assert (= (and b!799695 res!544384) b!799703))

(assert (= (and b!799703 res!544386) b!799707))

(assert (= (and b!799707 res!544395) b!799701))

(assert (= (and b!799701 res!544390) b!799700))

(assert (= (and b!799700 res!544391) b!799702))

(assert (= (and b!799702 res!544396) b!799704))

(declare-fun m!740833 () Bool)

(assert (=> b!799696 m!740833))

(assert (=> b!799696 m!740833))

(declare-fun m!740835 () Bool)

(assert (=> b!799696 m!740835))

(declare-fun m!740837 () Bool)

(assert (=> b!799702 m!740837))

(declare-fun m!740839 () Bool)

(assert (=> b!799700 m!740839))

(declare-fun m!740841 () Bool)

(assert (=> b!799705 m!740841))

(assert (=> b!799704 m!740833))

(assert (=> b!799704 m!740833))

(declare-fun m!740843 () Bool)

(assert (=> b!799704 m!740843))

(declare-fun m!740845 () Bool)

(assert (=> b!799699 m!740845))

(declare-fun m!740847 () Bool)

(assert (=> b!799703 m!740847))

(declare-fun m!740849 () Bool)

(assert (=> b!799703 m!740849))

(declare-fun m!740851 () Bool)

(assert (=> b!799701 m!740851))

(assert (=> b!799701 m!740833))

(assert (=> b!799701 m!740833))

(declare-fun m!740853 () Bool)

(assert (=> b!799701 m!740853))

(assert (=> b!799701 m!740833))

(declare-fun m!740855 () Bool)

(assert (=> b!799701 m!740855))

(declare-fun m!740857 () Bool)

(assert (=> b!799697 m!740857))

(declare-fun m!740859 () Bool)

(assert (=> b!799706 m!740859))

(declare-fun m!740861 () Bool)

(assert (=> b!799707 m!740861))

(declare-fun m!740863 () Bool)

(assert (=> b!799707 m!740863))

(declare-fun m!740865 () Bool)

(assert (=> b!799707 m!740865))

(declare-fun m!740867 () Bool)

(assert (=> b!799707 m!740867))

(declare-fun m!740869 () Bool)

(assert (=> start!68714 m!740869))

(declare-fun m!740871 () Bool)

(assert (=> start!68714 m!740871))

(declare-fun m!740873 () Bool)

(assert (=> b!799695 m!740873))

(push 1)

