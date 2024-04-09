; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68792 () Bool)

(assert start!68792)

(declare-fun b!801216 () Bool)

(declare-fun res!545907 () Bool)

(declare-fun e!444164 () Bool)

(assert (=> b!801216 (=> (not res!545907) (not e!444164))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!801216 (= res!545907 (validKeyInArray!0 k!2044))))

(declare-fun b!801218 () Bool)

(declare-fun e!444166 () Bool)

(assert (=> b!801218 (= e!444166 false)))

(declare-fun x!1077 () (_ BitVec 32))

(declare-datatypes ((array!43533 0))(
  ( (array!43534 (arr!20843 (Array (_ BitVec 32) (_ BitVec 64))) (size!21264 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43533)

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8441 0))(
  ( (MissingZero!8441 (index!36131 (_ BitVec 32))) (Found!8441 (index!36132 (_ BitVec 32))) (Intermediate!8441 (undefined!9253 Bool) (index!36133 (_ BitVec 32)) (x!67016 (_ BitVec 32))) (Undefined!8441) (MissingVacant!8441 (index!36134 (_ BitVec 32))) )
))
(declare-fun lt!358133 () SeekEntryResult!8441)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun lt!358138 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43533 (_ BitVec 32)) SeekEntryResult!8441)

(assert (=> b!801218 (= lt!358133 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!358138 vacantBefore!23 (select (arr!20843 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!801219 () Bool)

(declare-fun e!444161 () Bool)

(assert (=> b!801219 (= e!444161 e!444166)))

(declare-fun res!545917 () Bool)

(assert (=> b!801219 (=> (not res!545917) (not e!444166))))

(assert (=> b!801219 (= res!545917 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1077) #b01111111111111111111111111111110) (bvsge (bvadd #b00000000000000000000000000000001 x!1077) #b00000000000000000000000000000000) (bvsge lt!358138 #b00000000000000000000000000000000) (bvslt lt!358138 (size!21264 a!3170))))))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!801219 (= lt!358138 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!801220 () Bool)

(declare-fun res!545906 () Bool)

(declare-fun e!444162 () Bool)

(assert (=> b!801220 (=> (not res!545906) (not e!444162))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(assert (=> b!801220 (= res!545906 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21264 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20843 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21264 a!3170)) (= (select (arr!20843 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!801221 () Bool)

(assert (=> b!801221 (= e!444164 e!444162)))

(declare-fun res!545909 () Bool)

(assert (=> b!801221 (=> (not res!545909) (not e!444162))))

(declare-fun lt!358136 () SeekEntryResult!8441)

(assert (=> b!801221 (= res!545909 (or (= lt!358136 (MissingZero!8441 i!1163)) (= lt!358136 (MissingVacant!8441 i!1163))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43533 (_ BitVec 32)) SeekEntryResult!8441)

(assert (=> b!801221 (= lt!358136 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!801222 () Bool)

(declare-fun res!545914 () Bool)

(assert (=> b!801222 (=> (not res!545914) (not e!444164))))

(declare-fun arrayContainsKey!0 (array!43533 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!801222 (= res!545914 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!801217 () Bool)

(declare-fun res!545911 () Bool)

(assert (=> b!801217 (=> (not res!545911) (not e!444166))))

(declare-fun lt!358134 () (_ BitVec 64))

(declare-fun lt!358137 () SeekEntryResult!8441)

(declare-fun lt!358131 () array!43533)

(assert (=> b!801217 (= res!545911 (= lt!358137 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!358138 vacantAfter!23 lt!358134 lt!358131 mask!3266)))))

(declare-fun res!545912 () Bool)

(assert (=> start!68792 (=> (not res!545912) (not e!444164))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68792 (= res!545912 (validMask!0 mask!3266))))

(assert (=> start!68792 e!444164))

(assert (=> start!68792 true))

(declare-fun array_inv!16617 (array!43533) Bool)

(assert (=> start!68792 (array_inv!16617 a!3170)))

(declare-fun b!801223 () Bool)

(declare-fun res!545905 () Bool)

(assert (=> b!801223 (=> (not res!545905) (not e!444162))))

(declare-datatypes ((List!14859 0))(
  ( (Nil!14856) (Cons!14855 (h!15984 (_ BitVec 64)) (t!21182 List!14859)) )
))
(declare-fun arrayNoDuplicates!0 (array!43533 (_ BitVec 32) List!14859) Bool)

(assert (=> b!801223 (= res!545905 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14856))))

(declare-fun b!801224 () Bool)

(declare-fun res!545910 () Bool)

(assert (=> b!801224 (=> (not res!545910) (not e!444164))))

(assert (=> b!801224 (= res!545910 (and (= (size!21264 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21264 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21264 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!801225 () Bool)

(declare-fun e!444165 () Bool)

(assert (=> b!801225 (= e!444165 e!444161)))

(declare-fun res!545916 () Bool)

(assert (=> b!801225 (=> (not res!545916) (not e!444161))))

(declare-fun lt!358135 () SeekEntryResult!8441)

(declare-fun lt!358132 () SeekEntryResult!8441)

(assert (=> b!801225 (= res!545916 (and (= lt!358132 lt!358135) (= lt!358135 (Found!8441 j!153)) (not (= (select (arr!20843 a!3170) index!1236) (select (arr!20843 a!3170) j!153)))))))

(assert (=> b!801225 (= lt!358135 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20843 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!801225 (= lt!358132 (seekEntryOrOpen!0 (select (arr!20843 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!801226 () Bool)

(declare-fun res!545913 () Bool)

(assert (=> b!801226 (=> (not res!545913) (not e!444164))))

(assert (=> b!801226 (= res!545913 (validKeyInArray!0 (select (arr!20843 a!3170) j!153)))))

(declare-fun b!801227 () Bool)

(declare-fun res!545915 () Bool)

(assert (=> b!801227 (=> (not res!545915) (not e!444162))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43533 (_ BitVec 32)) Bool)

(assert (=> b!801227 (= res!545915 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!801228 () Bool)

(assert (=> b!801228 (= e!444162 e!444165)))

(declare-fun res!545908 () Bool)

(assert (=> b!801228 (=> (not res!545908) (not e!444165))))

(assert (=> b!801228 (= res!545908 (= lt!358137 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!358134 lt!358131 mask!3266)))))

(assert (=> b!801228 (= lt!358137 (seekEntryOrOpen!0 lt!358134 lt!358131 mask!3266))))

(assert (=> b!801228 (= lt!358134 (select (store (arr!20843 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!801228 (= lt!358131 (array!43534 (store (arr!20843 a!3170) i!1163 k!2044) (size!21264 a!3170)))))

(assert (= (and start!68792 res!545912) b!801224))

(assert (= (and b!801224 res!545910) b!801226))

(assert (= (and b!801226 res!545913) b!801216))

(assert (= (and b!801216 res!545907) b!801222))

(assert (= (and b!801222 res!545914) b!801221))

(assert (= (and b!801221 res!545909) b!801227))

(assert (= (and b!801227 res!545915) b!801223))

(assert (= (and b!801223 res!545905) b!801220))

(assert (= (and b!801220 res!545906) b!801228))

(assert (= (and b!801228 res!545908) b!801225))

(assert (= (and b!801225 res!545916) b!801219))

(assert (= (and b!801219 res!545917) b!801217))

(assert (= (and b!801217 res!545911) b!801218))

(declare-fun m!742471 () Bool)

(assert (=> b!801228 m!742471))

(declare-fun m!742473 () Bool)

(assert (=> b!801228 m!742473))

(declare-fun m!742475 () Bool)

(assert (=> b!801228 m!742475))

(declare-fun m!742477 () Bool)

(assert (=> b!801228 m!742477))

(declare-fun m!742479 () Bool)

(assert (=> b!801220 m!742479))

(declare-fun m!742481 () Bool)

(assert (=> b!801220 m!742481))

(declare-fun m!742483 () Bool)

(assert (=> b!801223 m!742483))

(declare-fun m!742485 () Bool)

(assert (=> b!801219 m!742485))

(declare-fun m!742487 () Bool)

(assert (=> b!801221 m!742487))

(declare-fun m!742489 () Bool)

(assert (=> b!801218 m!742489))

(assert (=> b!801218 m!742489))

(declare-fun m!742491 () Bool)

(assert (=> b!801218 m!742491))

(declare-fun m!742493 () Bool)

(assert (=> b!801225 m!742493))

(assert (=> b!801225 m!742489))

(assert (=> b!801225 m!742489))

(declare-fun m!742495 () Bool)

(assert (=> b!801225 m!742495))

(assert (=> b!801225 m!742489))

(declare-fun m!742497 () Bool)

(assert (=> b!801225 m!742497))

(declare-fun m!742499 () Bool)

(assert (=> start!68792 m!742499))

(declare-fun m!742501 () Bool)

(assert (=> start!68792 m!742501))

(declare-fun m!742503 () Bool)

(assert (=> b!801216 m!742503))

(declare-fun m!742505 () Bool)

(assert (=> b!801227 m!742505))

(declare-fun m!742507 () Bool)

(assert (=> b!801217 m!742507))

(declare-fun m!742509 () Bool)

(assert (=> b!801222 m!742509))

(assert (=> b!801226 m!742489))

(assert (=> b!801226 m!742489))

(declare-fun m!742511 () Bool)

(assert (=> b!801226 m!742511))

(push 1)

