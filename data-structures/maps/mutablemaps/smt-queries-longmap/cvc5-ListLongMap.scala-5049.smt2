; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68824 () Bool)

(assert start!68824)

(declare-fun b!801782 () Bool)

(declare-fun res!546476 () Bool)

(declare-fun e!444424 () Bool)

(assert (=> b!801782 (=> (not res!546476) (not e!444424))))

(declare-datatypes ((array!43565 0))(
  ( (array!43566 (arr!20859 (Array (_ BitVec 32) (_ BitVec 64))) (size!21280 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43565)

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!43565 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!801782 (= res!546476 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!801783 () Bool)

(declare-fun res!546472 () Bool)

(declare-fun e!444420 () Bool)

(assert (=> b!801783 (=> (not res!546472) (not e!444420))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!801783 (= res!546472 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21280 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20859 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21280 a!3170)) (= (select (arr!20859 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!801784 () Bool)

(declare-fun res!546480 () Bool)

(assert (=> b!801784 (=> (not res!546480) (not e!444424))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!801784 (= res!546480 (validKeyInArray!0 k!2044))))

(declare-fun b!801785 () Bool)

(assert (=> b!801785 (= e!444424 e!444420)))

(declare-fun res!546478 () Bool)

(assert (=> b!801785 (=> (not res!546478) (not e!444420))))

(declare-datatypes ((SeekEntryResult!8457 0))(
  ( (MissingZero!8457 (index!36195 (_ BitVec 32))) (Found!8457 (index!36196 (_ BitVec 32))) (Intermediate!8457 (undefined!9269 Bool) (index!36197 (_ BitVec 32)) (x!67080 (_ BitVec 32))) (Undefined!8457) (MissingVacant!8457 (index!36198 (_ BitVec 32))) )
))
(declare-fun lt!358490 () SeekEntryResult!8457)

(assert (=> b!801785 (= res!546478 (or (= lt!358490 (MissingZero!8457 i!1163)) (= lt!358490 (MissingVacant!8457 i!1163))))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43565 (_ BitVec 32)) SeekEntryResult!8457)

(assert (=> b!801785 (= lt!358490 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!801786 () Bool)

(declare-fun e!444422 () Bool)

(declare-fun e!444423 () Bool)

(assert (=> b!801786 (= e!444422 e!444423)))

(declare-fun res!546477 () Bool)

(assert (=> b!801786 (=> (not res!546477) (not e!444423))))

(declare-fun lt!358491 () SeekEntryResult!8457)

(declare-fun lt!358492 () SeekEntryResult!8457)

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!801786 (= res!546477 (and (= lt!358492 lt!358491) (= lt!358491 (Found!8457 j!153)) (not (= (select (arr!20859 a!3170) index!1236) (select (arr!20859 a!3170) j!153)))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43565 (_ BitVec 32)) SeekEntryResult!8457)

(assert (=> b!801786 (= lt!358491 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20859 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!801786 (= lt!358492 (seekEntryOrOpen!0 (select (arr!20859 a!3170) j!153) a!3170 mask!3266))))

(declare-fun res!546471 () Bool)

(assert (=> start!68824 (=> (not res!546471) (not e!444424))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68824 (= res!546471 (validMask!0 mask!3266))))

(assert (=> start!68824 e!444424))

(assert (=> start!68824 true))

(declare-fun array_inv!16633 (array!43565) Bool)

(assert (=> start!68824 (array_inv!16633 a!3170)))

(declare-fun b!801787 () Bool)

(assert (=> b!801787 (= e!444423 (not (or (bvslt mask!3266 #b00000000000000000000000000000000) (bvslt index!1236 (bvadd #b00000000000000000000000000000001 mask!3266)))))))

(declare-fun lt!358488 () (_ BitVec 64))

(declare-fun lt!358486 () array!43565)

(declare-fun lt!358489 () (_ BitVec 32))

(assert (=> b!801787 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!358489 vacantAfter!23 lt!358488 lt!358486 mask!3266) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!358489 vacantBefore!23 (select (arr!20859 a!3170) j!153) a!3170 mask!3266))))

(declare-datatypes ((Unit!27456 0))(
  ( (Unit!27457) )
))
(declare-fun lt!358487 () Unit!27456)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!43565 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27456)

(assert (=> b!801787 (= lt!358487 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3170 i!1163 k!2044 j!153 lt!358489 (bvadd #b00000000000000000000000000000001 x!1077) vacantBefore!23 vacantAfter!23 mask!3266))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!801787 (= lt!358489 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!801788 () Bool)

(declare-fun res!546475 () Bool)

(assert (=> b!801788 (=> (not res!546475) (not e!444420))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43565 (_ BitVec 32)) Bool)

(assert (=> b!801788 (= res!546475 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!801789 () Bool)

(declare-fun res!546474 () Bool)

(assert (=> b!801789 (=> (not res!546474) (not e!444424))))

(assert (=> b!801789 (= res!546474 (validKeyInArray!0 (select (arr!20859 a!3170) j!153)))))

(declare-fun b!801790 () Bool)

(declare-fun res!546479 () Bool)

(assert (=> b!801790 (=> (not res!546479) (not e!444420))))

(declare-datatypes ((List!14875 0))(
  ( (Nil!14872) (Cons!14871 (h!16000 (_ BitVec 64)) (t!21198 List!14875)) )
))
(declare-fun arrayNoDuplicates!0 (array!43565 (_ BitVec 32) List!14875) Bool)

(assert (=> b!801790 (= res!546479 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14872))))

(declare-fun b!801791 () Bool)

(assert (=> b!801791 (= e!444420 e!444422)))

(declare-fun res!546481 () Bool)

(assert (=> b!801791 (=> (not res!546481) (not e!444422))))

(assert (=> b!801791 (= res!546481 (= (seekEntryOrOpen!0 lt!358488 lt!358486 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!358488 lt!358486 mask!3266)))))

(assert (=> b!801791 (= lt!358488 (select (store (arr!20859 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!801791 (= lt!358486 (array!43566 (store (arr!20859 a!3170) i!1163 k!2044) (size!21280 a!3170)))))

(declare-fun b!801792 () Bool)

(declare-fun res!546473 () Bool)

(assert (=> b!801792 (=> (not res!546473) (not e!444424))))

(assert (=> b!801792 (= res!546473 (and (= (size!21280 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21280 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21280 a!3170)) (not (= i!1163 j!153))))))

(assert (= (and start!68824 res!546471) b!801792))

(assert (= (and b!801792 res!546473) b!801789))

(assert (= (and b!801789 res!546474) b!801784))

(assert (= (and b!801784 res!546480) b!801782))

(assert (= (and b!801782 res!546476) b!801785))

(assert (= (and b!801785 res!546478) b!801788))

(assert (= (and b!801788 res!546475) b!801790))

(assert (= (and b!801790 res!546479) b!801783))

(assert (= (and b!801783 res!546472) b!801791))

(assert (= (and b!801791 res!546481) b!801786))

(assert (= (and b!801786 res!546477) b!801787))

(declare-fun m!743161 () Bool)

(assert (=> b!801782 m!743161))

(declare-fun m!743163 () Bool)

(assert (=> b!801789 m!743163))

(assert (=> b!801789 m!743163))

(declare-fun m!743165 () Bool)

(assert (=> b!801789 m!743165))

(declare-fun m!743167 () Bool)

(assert (=> b!801788 m!743167))

(declare-fun m!743169 () Bool)

(assert (=> b!801790 m!743169))

(declare-fun m!743171 () Bool)

(assert (=> b!801786 m!743171))

(assert (=> b!801786 m!743163))

(assert (=> b!801786 m!743163))

(declare-fun m!743173 () Bool)

(assert (=> b!801786 m!743173))

(assert (=> b!801786 m!743163))

(declare-fun m!743175 () Bool)

(assert (=> b!801786 m!743175))

(assert (=> b!801787 m!743163))

(declare-fun m!743177 () Bool)

(assert (=> b!801787 m!743177))

(declare-fun m!743179 () Bool)

(assert (=> b!801787 m!743179))

(assert (=> b!801787 m!743163))

(declare-fun m!743181 () Bool)

(assert (=> b!801787 m!743181))

(declare-fun m!743183 () Bool)

(assert (=> b!801787 m!743183))

(declare-fun m!743185 () Bool)

(assert (=> b!801784 m!743185))

(declare-fun m!743187 () Bool)

(assert (=> b!801783 m!743187))

(declare-fun m!743189 () Bool)

(assert (=> b!801783 m!743189))

(declare-fun m!743191 () Bool)

(assert (=> start!68824 m!743191))

(declare-fun m!743193 () Bool)

(assert (=> start!68824 m!743193))

(declare-fun m!743195 () Bool)

(assert (=> b!801785 m!743195))

(declare-fun m!743197 () Bool)

(assert (=> b!801791 m!743197))

(declare-fun m!743199 () Bool)

(assert (=> b!801791 m!743199))

(declare-fun m!743201 () Bool)

(assert (=> b!801791 m!743201))

(declare-fun m!743203 () Bool)

(assert (=> b!801791 m!743203))

(push 1)

(assert (not b!801787))

(assert (not b!801785))

(assert (not b!801791))

(assert (not b!801782))

(assert (not b!801790))

(assert (not b!801786))

(assert (not b!801788))

(assert (not start!68824))

(assert (not b!801784))

(assert (not b!801789))

(check-sat)

(pop 1)

(push 1)

(check-sat)

