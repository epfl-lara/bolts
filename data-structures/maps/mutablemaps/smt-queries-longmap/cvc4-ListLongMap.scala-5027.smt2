; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68696 () Bool)

(assert start!68696)

(declare-fun b!799344 () Bool)

(declare-fun res!544040 () Bool)

(declare-fun e!443298 () Bool)

(assert (=> b!799344 (=> (not res!544040) (not e!443298))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-datatypes ((array!43437 0))(
  ( (array!43438 (arr!20795 (Array (_ BitVec 32) (_ BitVec 64))) (size!21216 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43437)

(assert (=> b!799344 (= res!544040 (and (= (size!21216 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21216 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21216 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!799345 () Bool)

(declare-fun e!443300 () Bool)

(assert (=> b!799345 (= e!443300 false)))

(declare-datatypes ((SeekEntryResult!8393 0))(
  ( (MissingZero!8393 (index!35939 (_ BitVec 32))) (Found!8393 (index!35940 (_ BitVec 32))) (Intermediate!8393 (undefined!9205 Bool) (index!35941 (_ BitVec 32)) (x!66840 (_ BitVec 32))) (Undefined!8393) (MissingVacant!8393 (index!35942 (_ BitVec 32))) )
))
(declare-fun lt!356984 () SeekEntryResult!8393)

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!356979 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43437 (_ BitVec 32)) SeekEntryResult!8393)

(assert (=> b!799345 (= lt!356984 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!356979 vacantBefore!23 (select (arr!20795 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!799346 () Bool)

(declare-fun res!544037 () Bool)

(assert (=> b!799346 (=> (not res!544037) (not e!443298))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!799346 (= res!544037 (validKeyInArray!0 k!2044))))

(declare-fun res!544043 () Bool)

(assert (=> start!68696 (=> (not res!544043) (not e!443298))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68696 (= res!544043 (validMask!0 mask!3266))))

(assert (=> start!68696 e!443298))

(assert (=> start!68696 true))

(declare-fun array_inv!16569 (array!43437) Bool)

(assert (=> start!68696 (array_inv!16569 a!3170)))

(declare-fun b!799347 () Bool)

(declare-fun e!443299 () Bool)

(assert (=> b!799347 (= e!443298 e!443299)))

(declare-fun res!544038 () Bool)

(assert (=> b!799347 (=> (not res!544038) (not e!443299))))

(declare-fun lt!356983 () SeekEntryResult!8393)

(assert (=> b!799347 (= res!544038 (or (= lt!356983 (MissingZero!8393 i!1163)) (= lt!356983 (MissingVacant!8393 i!1163))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43437 (_ BitVec 32)) SeekEntryResult!8393)

(assert (=> b!799347 (= lt!356983 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!799348 () Bool)

(declare-fun e!443301 () Bool)

(declare-fun e!443302 () Bool)

(assert (=> b!799348 (= e!443301 e!443302)))

(declare-fun res!544044 () Bool)

(assert (=> b!799348 (=> (not res!544044) (not e!443302))))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun lt!356982 () SeekEntryResult!8393)

(declare-fun lt!356981 () SeekEntryResult!8393)

(assert (=> b!799348 (= res!544044 (and (= lt!356982 lt!356981) (= lt!356981 (Found!8393 j!153)) (not (= (select (arr!20795 a!3170) index!1236) (select (arr!20795 a!3170) j!153)))))))

(assert (=> b!799348 (= lt!356981 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20795 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!799348 (= lt!356982 (seekEntryOrOpen!0 (select (arr!20795 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!799349 () Bool)

(declare-fun res!544041 () Bool)

(assert (=> b!799349 (=> (not res!544041) (not e!443299))))

(declare-datatypes ((List!14811 0))(
  ( (Nil!14808) (Cons!14807 (h!15936 (_ BitVec 64)) (t!21134 List!14811)) )
))
(declare-fun arrayNoDuplicates!0 (array!43437 (_ BitVec 32) List!14811) Bool)

(assert (=> b!799349 (= res!544041 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14808))))

(declare-fun b!799350 () Bool)

(assert (=> b!799350 (= e!443299 e!443301)))

(declare-fun res!544035 () Bool)

(assert (=> b!799350 (=> (not res!544035) (not e!443301))))

(declare-fun lt!356985 () array!43437)

(declare-fun lt!356980 () SeekEntryResult!8393)

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun lt!356986 () (_ BitVec 64))

(assert (=> b!799350 (= res!544035 (= lt!356980 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!356986 lt!356985 mask!3266)))))

(assert (=> b!799350 (= lt!356980 (seekEntryOrOpen!0 lt!356986 lt!356985 mask!3266))))

(assert (=> b!799350 (= lt!356986 (select (store (arr!20795 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!799350 (= lt!356985 (array!43438 (store (arr!20795 a!3170) i!1163 k!2044) (size!21216 a!3170)))))

(declare-fun b!799351 () Bool)

(declare-fun res!544033 () Bool)

(assert (=> b!799351 (=> (not res!544033) (not e!443299))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43437 (_ BitVec 32)) Bool)

(assert (=> b!799351 (= res!544033 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!799352 () Bool)

(declare-fun res!544045 () Bool)

(assert (=> b!799352 (=> (not res!544045) (not e!443300))))

(assert (=> b!799352 (= res!544045 (= lt!356980 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!356979 vacantAfter!23 lt!356986 lt!356985 mask!3266)))))

(declare-fun b!799353 () Bool)

(declare-fun res!544039 () Bool)

(assert (=> b!799353 (=> (not res!544039) (not e!443298))))

(declare-fun arrayContainsKey!0 (array!43437 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!799353 (= res!544039 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!799354 () Bool)

(declare-fun res!544036 () Bool)

(assert (=> b!799354 (=> (not res!544036) (not e!443299))))

(assert (=> b!799354 (= res!544036 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21216 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20795 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21216 a!3170)) (= (select (arr!20795 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!799355 () Bool)

(declare-fun res!544042 () Bool)

(assert (=> b!799355 (=> (not res!544042) (not e!443298))))

(assert (=> b!799355 (= res!544042 (validKeyInArray!0 (select (arr!20795 a!3170) j!153)))))

(declare-fun b!799356 () Bool)

(assert (=> b!799356 (= e!443302 e!443300)))

(declare-fun res!544034 () Bool)

(assert (=> b!799356 (=> (not res!544034) (not e!443300))))

(assert (=> b!799356 (= res!544034 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1077) #b01111111111111111111111111111110) (bvsge (bvadd #b00000000000000000000000000000001 x!1077) #b00000000000000000000000000000000) (bvsge lt!356979 #b00000000000000000000000000000000) (bvslt lt!356979 (size!21216 a!3170))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!799356 (= lt!356979 (nextIndex!0 index!1236 x!1077 mask!3266))))

(assert (= (and start!68696 res!544043) b!799344))

(assert (= (and b!799344 res!544040) b!799355))

(assert (= (and b!799355 res!544042) b!799346))

(assert (= (and b!799346 res!544037) b!799353))

(assert (= (and b!799353 res!544039) b!799347))

(assert (= (and b!799347 res!544038) b!799351))

(assert (= (and b!799351 res!544033) b!799349))

(assert (= (and b!799349 res!544041) b!799354))

(assert (= (and b!799354 res!544036) b!799350))

(assert (= (and b!799350 res!544035) b!799348))

(assert (= (and b!799348 res!544044) b!799356))

(assert (= (and b!799356 res!544034) b!799352))

(assert (= (and b!799352 res!544045) b!799345))

(declare-fun m!740455 () Bool)

(assert (=> start!68696 m!740455))

(declare-fun m!740457 () Bool)

(assert (=> start!68696 m!740457))

(declare-fun m!740459 () Bool)

(assert (=> b!799351 m!740459))

(declare-fun m!740461 () Bool)

(assert (=> b!799352 m!740461))

(declare-fun m!740463 () Bool)

(assert (=> b!799348 m!740463))

(declare-fun m!740465 () Bool)

(assert (=> b!799348 m!740465))

(assert (=> b!799348 m!740465))

(declare-fun m!740467 () Bool)

(assert (=> b!799348 m!740467))

(assert (=> b!799348 m!740465))

(declare-fun m!740469 () Bool)

(assert (=> b!799348 m!740469))

(declare-fun m!740471 () Bool)

(assert (=> b!799346 m!740471))

(assert (=> b!799355 m!740465))

(assert (=> b!799355 m!740465))

(declare-fun m!740473 () Bool)

(assert (=> b!799355 m!740473))

(declare-fun m!740475 () Bool)

(assert (=> b!799349 m!740475))

(declare-fun m!740477 () Bool)

(assert (=> b!799350 m!740477))

(declare-fun m!740479 () Bool)

(assert (=> b!799350 m!740479))

(declare-fun m!740481 () Bool)

(assert (=> b!799350 m!740481))

(declare-fun m!740483 () Bool)

(assert (=> b!799350 m!740483))

(assert (=> b!799345 m!740465))

(assert (=> b!799345 m!740465))

(declare-fun m!740485 () Bool)

(assert (=> b!799345 m!740485))

(declare-fun m!740487 () Bool)

(assert (=> b!799353 m!740487))

(declare-fun m!740489 () Bool)

(assert (=> b!799354 m!740489))

(declare-fun m!740491 () Bool)

(assert (=> b!799354 m!740491))

(declare-fun m!740493 () Bool)

(assert (=> b!799347 m!740493))

(declare-fun m!740495 () Bool)

(assert (=> b!799356 m!740495))

(push 1)

