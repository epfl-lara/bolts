; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68726 () Bool)

(assert start!68726)

(declare-fun b!799929 () Bool)

(declare-fun e!443572 () Bool)

(declare-fun e!443569 () Bool)

(assert (=> b!799929 (= e!443572 e!443569)))

(declare-fun res!544630 () Bool)

(assert (=> b!799929 (=> (not res!544630) (not e!443569))))

(declare-datatypes ((SeekEntryResult!8408 0))(
  ( (MissingZero!8408 (index!35999 (_ BitVec 32))) (Found!8408 (index!36000 (_ BitVec 32))) (Intermediate!8408 (undefined!9220 Bool) (index!36001 (_ BitVec 32)) (x!66895 (_ BitVec 32))) (Undefined!8408) (MissingVacant!8408 (index!36002 (_ BitVec 32))) )
))
(declare-fun lt!357339 () SeekEntryResult!8408)

(declare-fun lt!357340 () SeekEntryResult!8408)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-datatypes ((array!43467 0))(
  ( (array!43468 (arr!20810 (Array (_ BitVec 32) (_ BitVec 64))) (size!21231 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43467)

(assert (=> b!799929 (= res!544630 (and (= lt!357340 lt!357339) (= lt!357339 (Found!8408 j!153)) (not (= (select (arr!20810 a!3170) index!1236) (select (arr!20810 a!3170) j!153)))))))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43467 (_ BitVec 32)) SeekEntryResult!8408)

(assert (=> b!799929 (= lt!357339 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20810 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43467 (_ BitVec 32)) SeekEntryResult!8408)

(assert (=> b!799929 (= lt!357340 (seekEntryOrOpen!0 (select (arr!20810 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!799930 () Bool)

(declare-fun e!443567 () Bool)

(assert (=> b!799930 (= e!443567 false)))

(declare-fun lt!357345 () SeekEntryResult!8408)

(declare-fun lt!357343 () (_ BitVec 32))

(assert (=> b!799930 (= lt!357345 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!357343 vacantBefore!23 (select (arr!20810 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!799931 () Bool)

(declare-fun res!544626 () Bool)

(declare-fun e!443568 () Bool)

(assert (=> b!799931 (=> (not res!544626) (not e!443568))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!799931 (= res!544626 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21231 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20810 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21231 a!3170)) (= (select (arr!20810 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun res!544622 () Bool)

(declare-fun e!443571 () Bool)

(assert (=> start!68726 (=> (not res!544622) (not e!443571))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68726 (= res!544622 (validMask!0 mask!3266))))

(assert (=> start!68726 e!443571))

(assert (=> start!68726 true))

(declare-fun array_inv!16584 (array!43467) Bool)

(assert (=> start!68726 (array_inv!16584 a!3170)))

(declare-fun b!799932 () Bool)

(declare-fun res!544625 () Bool)

(assert (=> b!799932 (=> (not res!544625) (not e!443567))))

(declare-fun lt!357344 () (_ BitVec 64))

(declare-fun lt!357346 () array!43467)

(declare-fun lt!357342 () SeekEntryResult!8408)

(assert (=> b!799932 (= res!544625 (= lt!357342 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!357343 vacantAfter!23 lt!357344 lt!357346 mask!3266)))))

(declare-fun b!799933 () Bool)

(declare-fun res!544628 () Bool)

(assert (=> b!799933 (=> (not res!544628) (not e!443571))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!43467 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!799933 (= res!544628 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!799934 () Bool)

(declare-fun res!544623 () Bool)

(assert (=> b!799934 (=> (not res!544623) (not e!443568))))

(declare-datatypes ((List!14826 0))(
  ( (Nil!14823) (Cons!14822 (h!15951 (_ BitVec 64)) (t!21149 List!14826)) )
))
(declare-fun arrayNoDuplicates!0 (array!43467 (_ BitVec 32) List!14826) Bool)

(assert (=> b!799934 (= res!544623 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14823))))

(declare-fun b!799935 () Bool)

(declare-fun res!544629 () Bool)

(assert (=> b!799935 (=> (not res!544629) (not e!443568))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43467 (_ BitVec 32)) Bool)

(assert (=> b!799935 (= res!544629 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!799936 () Bool)

(declare-fun res!544627 () Bool)

(assert (=> b!799936 (=> (not res!544627) (not e!443571))))

(assert (=> b!799936 (= res!544627 (and (= (size!21231 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21231 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21231 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!799937 () Bool)

(declare-fun res!544620 () Bool)

(assert (=> b!799937 (=> (not res!544620) (not e!443571))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!799937 (= res!544620 (validKeyInArray!0 (select (arr!20810 a!3170) j!153)))))

(declare-fun b!799938 () Bool)

(declare-fun res!544624 () Bool)

(assert (=> b!799938 (=> (not res!544624) (not e!443571))))

(assert (=> b!799938 (= res!544624 (validKeyInArray!0 k!2044))))

(declare-fun b!799939 () Bool)

(assert (=> b!799939 (= e!443571 e!443568)))

(declare-fun res!544619 () Bool)

(assert (=> b!799939 (=> (not res!544619) (not e!443568))))

(declare-fun lt!357341 () SeekEntryResult!8408)

(assert (=> b!799939 (= res!544619 (or (= lt!357341 (MissingZero!8408 i!1163)) (= lt!357341 (MissingVacant!8408 i!1163))))))

(assert (=> b!799939 (= lt!357341 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!799940 () Bool)

(assert (=> b!799940 (= e!443569 e!443567)))

(declare-fun res!544618 () Bool)

(assert (=> b!799940 (=> (not res!544618) (not e!443567))))

(assert (=> b!799940 (= res!544618 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1077) #b01111111111111111111111111111110) (bvsge (bvadd #b00000000000000000000000000000001 x!1077) #b00000000000000000000000000000000) (bvsge lt!357343 #b00000000000000000000000000000000) (bvslt lt!357343 (size!21231 a!3170))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!799940 (= lt!357343 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!799941 () Bool)

(assert (=> b!799941 (= e!443568 e!443572)))

(declare-fun res!544621 () Bool)

(assert (=> b!799941 (=> (not res!544621) (not e!443572))))

(assert (=> b!799941 (= res!544621 (= lt!357342 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!357344 lt!357346 mask!3266)))))

(assert (=> b!799941 (= lt!357342 (seekEntryOrOpen!0 lt!357344 lt!357346 mask!3266))))

(assert (=> b!799941 (= lt!357344 (select (store (arr!20810 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!799941 (= lt!357346 (array!43468 (store (arr!20810 a!3170) i!1163 k!2044) (size!21231 a!3170)))))

(assert (= (and start!68726 res!544622) b!799936))

(assert (= (and b!799936 res!544627) b!799937))

(assert (= (and b!799937 res!544620) b!799938))

(assert (= (and b!799938 res!544624) b!799933))

(assert (= (and b!799933 res!544628) b!799939))

(assert (= (and b!799939 res!544619) b!799935))

(assert (= (and b!799935 res!544629) b!799934))

(assert (= (and b!799934 res!544623) b!799931))

(assert (= (and b!799931 res!544626) b!799941))

(assert (= (and b!799941 res!544621) b!799929))

(assert (= (and b!799929 res!544630) b!799940))

(assert (= (and b!799940 res!544618) b!799932))

(assert (= (and b!799932 res!544625) b!799930))

(declare-fun m!741085 () Bool)

(assert (=> b!799931 m!741085))

(declare-fun m!741087 () Bool)

(assert (=> b!799931 m!741087))

(declare-fun m!741089 () Bool)

(assert (=> b!799932 m!741089))

(declare-fun m!741091 () Bool)

(assert (=> b!799934 m!741091))

(declare-fun m!741093 () Bool)

(assert (=> b!799940 m!741093))

(declare-fun m!741095 () Bool)

(assert (=> b!799938 m!741095))

(declare-fun m!741097 () Bool)

(assert (=> b!799929 m!741097))

(declare-fun m!741099 () Bool)

(assert (=> b!799929 m!741099))

(assert (=> b!799929 m!741099))

(declare-fun m!741101 () Bool)

(assert (=> b!799929 m!741101))

(assert (=> b!799929 m!741099))

(declare-fun m!741103 () Bool)

(assert (=> b!799929 m!741103))

(assert (=> b!799937 m!741099))

(assert (=> b!799937 m!741099))

(declare-fun m!741105 () Bool)

(assert (=> b!799937 m!741105))

(declare-fun m!741107 () Bool)

(assert (=> b!799939 m!741107))

(declare-fun m!741109 () Bool)

(assert (=> b!799935 m!741109))

(assert (=> b!799930 m!741099))

(assert (=> b!799930 m!741099))

(declare-fun m!741111 () Bool)

(assert (=> b!799930 m!741111))

(declare-fun m!741113 () Bool)

(assert (=> b!799941 m!741113))

(declare-fun m!741115 () Bool)

(assert (=> b!799941 m!741115))

(declare-fun m!741117 () Bool)

(assert (=> b!799941 m!741117))

(declare-fun m!741119 () Bool)

(assert (=> b!799941 m!741119))

(declare-fun m!741121 () Bool)

(assert (=> start!68726 m!741121))

(declare-fun m!741123 () Bool)

(assert (=> start!68726 m!741123))

(declare-fun m!741125 () Bool)

(assert (=> b!799933 m!741125))

(push 1)

