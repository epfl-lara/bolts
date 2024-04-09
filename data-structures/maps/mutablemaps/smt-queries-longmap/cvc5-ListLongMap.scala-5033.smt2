; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68728 () Bool)

(assert start!68728)

(declare-fun b!799968 () Bool)

(declare-fun res!544668 () Bool)

(declare-fun e!443588 () Bool)

(assert (=> b!799968 (=> (not res!544668) (not e!443588))))

(declare-datatypes ((array!43469 0))(
  ( (array!43470 (arr!20811 (Array (_ BitVec 32) (_ BitVec 64))) (size!21232 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43469)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!799968 (= res!544668 (validKeyInArray!0 (select (arr!20811 a!3170) j!153)))))

(declare-fun b!799969 () Bool)

(declare-fun e!443585 () Bool)

(assert (=> b!799969 (= e!443585 false)))

(declare-fun lt!357365 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8409 0))(
  ( (MissingZero!8409 (index!36003 (_ BitVec 32))) (Found!8409 (index!36004 (_ BitVec 32))) (Intermediate!8409 (undefined!9221 Bool) (index!36005 (_ BitVec 32)) (x!66904 (_ BitVec 32))) (Undefined!8409) (MissingVacant!8409 (index!36006 (_ BitVec 32))) )
))
(declare-fun lt!357370 () SeekEntryResult!8409)

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43469 (_ BitVec 32)) SeekEntryResult!8409)

(assert (=> b!799969 (= lt!357370 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!357365 vacantBefore!23 (select (arr!20811 a!3170) j!153) a!3170 mask!3266))))

(declare-fun res!544660 () Bool)

(assert (=> start!68728 (=> (not res!544660) (not e!443588))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68728 (= res!544660 (validMask!0 mask!3266))))

(assert (=> start!68728 e!443588))

(assert (=> start!68728 true))

(declare-fun array_inv!16585 (array!43469) Bool)

(assert (=> start!68728 (array_inv!16585 a!3170)))

(declare-fun b!799970 () Bool)

(declare-fun res!544657 () Bool)

(assert (=> b!799970 (=> (not res!544657) (not e!443588))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!43469 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!799970 (= res!544657 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!799971 () Bool)

(declare-fun res!544658 () Bool)

(declare-fun e!443587 () Bool)

(assert (=> b!799971 (=> (not res!544658) (not e!443587))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43469 (_ BitVec 32)) Bool)

(assert (=> b!799971 (= res!544658 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!799972 () Bool)

(assert (=> b!799972 (= e!443588 e!443587)))

(declare-fun res!544667 () Bool)

(assert (=> b!799972 (=> (not res!544667) (not e!443587))))

(declare-fun lt!357363 () SeekEntryResult!8409)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!799972 (= res!544667 (or (= lt!357363 (MissingZero!8409 i!1163)) (= lt!357363 (MissingVacant!8409 i!1163))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43469 (_ BitVec 32)) SeekEntryResult!8409)

(assert (=> b!799972 (= lt!357363 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!799973 () Bool)

(declare-fun res!544659 () Bool)

(assert (=> b!799973 (=> (not res!544659) (not e!443588))))

(assert (=> b!799973 (= res!544659 (validKeyInArray!0 k!2044))))

(declare-fun b!799974 () Bool)

(declare-fun e!443590 () Bool)

(assert (=> b!799974 (= e!443590 e!443585)))

(declare-fun res!544669 () Bool)

(assert (=> b!799974 (=> (not res!544669) (not e!443585))))

(assert (=> b!799974 (= res!544669 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1077) #b01111111111111111111111111111110) (bvsge (bvadd #b00000000000000000000000000000001 x!1077) #b00000000000000000000000000000000) (bvsge lt!357365 #b00000000000000000000000000000000) (bvslt lt!357365 (size!21232 a!3170))))))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!799974 (= lt!357365 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!799975 () Bool)

(declare-fun e!443589 () Bool)

(assert (=> b!799975 (= e!443589 e!443590)))

(declare-fun res!544661 () Bool)

(assert (=> b!799975 (=> (not res!544661) (not e!443590))))

(declare-fun lt!357367 () SeekEntryResult!8409)

(declare-fun lt!357366 () SeekEntryResult!8409)

(assert (=> b!799975 (= res!544661 (and (= lt!357367 lt!357366) (= lt!357366 (Found!8409 j!153)) (not (= (select (arr!20811 a!3170) index!1236) (select (arr!20811 a!3170) j!153)))))))

(assert (=> b!799975 (= lt!357366 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20811 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!799975 (= lt!357367 (seekEntryOrOpen!0 (select (arr!20811 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!799976 () Bool)

(assert (=> b!799976 (= e!443587 e!443589)))

(declare-fun res!544666 () Bool)

(assert (=> b!799976 (=> (not res!544666) (not e!443589))))

(declare-fun lt!357368 () (_ BitVec 64))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun lt!357364 () array!43469)

(declare-fun lt!357369 () SeekEntryResult!8409)

(assert (=> b!799976 (= res!544666 (= lt!357369 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!357368 lt!357364 mask!3266)))))

(assert (=> b!799976 (= lt!357369 (seekEntryOrOpen!0 lt!357368 lt!357364 mask!3266))))

(assert (=> b!799976 (= lt!357368 (select (store (arr!20811 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!799976 (= lt!357364 (array!43470 (store (arr!20811 a!3170) i!1163 k!2044) (size!21232 a!3170)))))

(declare-fun b!799977 () Bool)

(declare-fun res!544663 () Bool)

(assert (=> b!799977 (=> (not res!544663) (not e!443587))))

(declare-datatypes ((List!14827 0))(
  ( (Nil!14824) (Cons!14823 (h!15952 (_ BitVec 64)) (t!21150 List!14827)) )
))
(declare-fun arrayNoDuplicates!0 (array!43469 (_ BitVec 32) List!14827) Bool)

(assert (=> b!799977 (= res!544663 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14824))))

(declare-fun b!799978 () Bool)

(declare-fun res!544664 () Bool)

(assert (=> b!799978 (=> (not res!544664) (not e!443585))))

(assert (=> b!799978 (= res!544664 (= lt!357369 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!357365 vacantAfter!23 lt!357368 lt!357364 mask!3266)))))

(declare-fun b!799979 () Bool)

(declare-fun res!544665 () Bool)

(assert (=> b!799979 (=> (not res!544665) (not e!443588))))

(assert (=> b!799979 (= res!544665 (and (= (size!21232 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21232 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21232 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!799980 () Bool)

(declare-fun res!544662 () Bool)

(assert (=> b!799980 (=> (not res!544662) (not e!443587))))

(assert (=> b!799980 (= res!544662 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21232 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20811 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21232 a!3170)) (= (select (arr!20811 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(assert (= (and start!68728 res!544660) b!799979))

(assert (= (and b!799979 res!544665) b!799968))

(assert (= (and b!799968 res!544668) b!799973))

(assert (= (and b!799973 res!544659) b!799970))

(assert (= (and b!799970 res!544657) b!799972))

(assert (= (and b!799972 res!544667) b!799971))

(assert (= (and b!799971 res!544658) b!799977))

(assert (= (and b!799977 res!544663) b!799980))

(assert (= (and b!799980 res!544662) b!799976))

(assert (= (and b!799976 res!544666) b!799975))

(assert (= (and b!799975 res!544661) b!799974))

(assert (= (and b!799974 res!544669) b!799978))

(assert (= (and b!799978 res!544664) b!799969))

(declare-fun m!741127 () Bool)

(assert (=> b!799978 m!741127))

(declare-fun m!741129 () Bool)

(assert (=> b!799974 m!741129))

(declare-fun m!741131 () Bool)

(assert (=> b!799968 m!741131))

(assert (=> b!799968 m!741131))

(declare-fun m!741133 () Bool)

(assert (=> b!799968 m!741133))

(declare-fun m!741135 () Bool)

(assert (=> b!799980 m!741135))

(declare-fun m!741137 () Bool)

(assert (=> b!799980 m!741137))

(declare-fun m!741139 () Bool)

(assert (=> b!799977 m!741139))

(declare-fun m!741141 () Bool)

(assert (=> start!68728 m!741141))

(declare-fun m!741143 () Bool)

(assert (=> start!68728 m!741143))

(declare-fun m!741145 () Bool)

(assert (=> b!799976 m!741145))

(declare-fun m!741147 () Bool)

(assert (=> b!799976 m!741147))

(declare-fun m!741149 () Bool)

(assert (=> b!799976 m!741149))

(declare-fun m!741151 () Bool)

(assert (=> b!799976 m!741151))

(declare-fun m!741153 () Bool)

(assert (=> b!799973 m!741153))

(declare-fun m!741155 () Bool)

(assert (=> b!799972 m!741155))

(declare-fun m!741157 () Bool)

(assert (=> b!799970 m!741157))

(declare-fun m!741159 () Bool)

(assert (=> b!799975 m!741159))

(assert (=> b!799975 m!741131))

(assert (=> b!799975 m!741131))

(declare-fun m!741161 () Bool)

(assert (=> b!799975 m!741161))

(assert (=> b!799975 m!741131))

(declare-fun m!741163 () Bool)

(assert (=> b!799975 m!741163))

(assert (=> b!799969 m!741131))

(assert (=> b!799969 m!741131))

(declare-fun m!741165 () Bool)

(assert (=> b!799969 m!741165))

(declare-fun m!741167 () Bool)

(assert (=> b!799971 m!741167))

(push 1)

