; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68740 () Bool)

(assert start!68740)

(declare-fun b!800202 () Bool)

(declare-fun e!443696 () Bool)

(declare-fun e!443697 () Bool)

(assert (=> b!800202 (= e!443696 e!443697)))

(declare-fun res!544901 () Bool)

(assert (=> b!800202 (=> (not res!544901) (not e!443697))))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!357512 () (_ BitVec 32))

(declare-datatypes ((array!43481 0))(
  ( (array!43482 (arr!20817 (Array (_ BitVec 32) (_ BitVec 64))) (size!21238 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43481)

(assert (=> b!800202 (= res!544901 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1077) #b01111111111111111111111111111110) (bvsge (bvadd #b00000000000000000000000000000001 x!1077) #b00000000000000000000000000000000) (bvsge lt!357512 #b00000000000000000000000000000000) (bvslt lt!357512 (size!21238 a!3170))))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!800202 (= lt!357512 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun res!544903 () Bool)

(declare-fun e!443693 () Bool)

(assert (=> start!68740 (=> (not res!544903) (not e!443693))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68740 (= res!544903 (validMask!0 mask!3266))))

(assert (=> start!68740 e!443693))

(assert (=> start!68740 true))

(declare-fun array_inv!16591 (array!43481) Bool)

(assert (=> start!68740 (array_inv!16591 a!3170)))

(declare-fun b!800203 () Bool)

(declare-fun e!443698 () Bool)

(assert (=> b!800203 (= e!443698 e!443696)))

(declare-fun res!544893 () Bool)

(assert (=> b!800203 (=> (not res!544893) (not e!443696))))

(declare-datatypes ((SeekEntryResult!8415 0))(
  ( (MissingZero!8415 (index!36027 (_ BitVec 32))) (Found!8415 (index!36028 (_ BitVec 32))) (Intermediate!8415 (undefined!9227 Bool) (index!36029 (_ BitVec 32)) (x!66926 (_ BitVec 32))) (Undefined!8415) (MissingVacant!8415 (index!36030 (_ BitVec 32))) )
))
(declare-fun lt!357514 () SeekEntryResult!8415)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun lt!357507 () SeekEntryResult!8415)

(assert (=> b!800203 (= res!544893 (and (= lt!357514 lt!357507) (= lt!357507 (Found!8415 j!153)) (not (= (select (arr!20817 a!3170) index!1236) (select (arr!20817 a!3170) j!153)))))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43481 (_ BitVec 32)) SeekEntryResult!8415)

(assert (=> b!800203 (= lt!357507 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20817 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43481 (_ BitVec 32)) SeekEntryResult!8415)

(assert (=> b!800203 (= lt!357514 (seekEntryOrOpen!0 (select (arr!20817 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!800204 () Bool)

(declare-fun res!544897 () Bool)

(assert (=> b!800204 (=> (not res!544897) (not e!443693))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!800204 (= res!544897 (validKeyInArray!0 k!2044))))

(declare-fun b!800205 () Bool)

(declare-fun res!544902 () Bool)

(assert (=> b!800205 (=> (not res!544902) (not e!443693))))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!800205 (= res!544902 (and (= (size!21238 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21238 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21238 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!800206 () Bool)

(declare-fun res!544899 () Bool)

(assert (=> b!800206 (=> (not res!544899) (not e!443693))))

(declare-fun arrayContainsKey!0 (array!43481 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!800206 (= res!544899 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!800207 () Bool)

(declare-fun e!443695 () Bool)

(assert (=> b!800207 (= e!443695 e!443698)))

(declare-fun res!544892 () Bool)

(assert (=> b!800207 (=> (not res!544892) (not e!443698))))

(declare-fun lt!357510 () SeekEntryResult!8415)

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun lt!357508 () (_ BitVec 64))

(declare-fun lt!357511 () array!43481)

(assert (=> b!800207 (= res!544892 (= lt!357510 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!357508 lt!357511 mask!3266)))))

(assert (=> b!800207 (= lt!357510 (seekEntryOrOpen!0 lt!357508 lt!357511 mask!3266))))

(assert (=> b!800207 (= lt!357508 (select (store (arr!20817 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!800207 (= lt!357511 (array!43482 (store (arr!20817 a!3170) i!1163 k!2044) (size!21238 a!3170)))))

(declare-fun b!800208 () Bool)

(assert (=> b!800208 (= e!443693 e!443695)))

(declare-fun res!544896 () Bool)

(assert (=> b!800208 (=> (not res!544896) (not e!443695))))

(declare-fun lt!357509 () SeekEntryResult!8415)

(assert (=> b!800208 (= res!544896 (or (= lt!357509 (MissingZero!8415 i!1163)) (= lt!357509 (MissingVacant!8415 i!1163))))))

(assert (=> b!800208 (= lt!357509 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!800209 () Bool)

(assert (=> b!800209 (= e!443697 false)))

(declare-fun lt!357513 () SeekEntryResult!8415)

(assert (=> b!800209 (= lt!357513 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!357512 vacantBefore!23 (select (arr!20817 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!800210 () Bool)

(declare-fun res!544900 () Bool)

(assert (=> b!800210 (=> (not res!544900) (not e!443693))))

(assert (=> b!800210 (= res!544900 (validKeyInArray!0 (select (arr!20817 a!3170) j!153)))))

(declare-fun b!800211 () Bool)

(declare-fun res!544894 () Bool)

(assert (=> b!800211 (=> (not res!544894) (not e!443695))))

(assert (=> b!800211 (= res!544894 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21238 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20817 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21238 a!3170)) (= (select (arr!20817 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!800212 () Bool)

(declare-fun res!544898 () Bool)

(assert (=> b!800212 (=> (not res!544898) (not e!443697))))

(assert (=> b!800212 (= res!544898 (= lt!357510 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!357512 vacantAfter!23 lt!357508 lt!357511 mask!3266)))))

(declare-fun b!800213 () Bool)

(declare-fun res!544891 () Bool)

(assert (=> b!800213 (=> (not res!544891) (not e!443695))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43481 (_ BitVec 32)) Bool)

(assert (=> b!800213 (= res!544891 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!800214 () Bool)

(declare-fun res!544895 () Bool)

(assert (=> b!800214 (=> (not res!544895) (not e!443695))))

(declare-datatypes ((List!14833 0))(
  ( (Nil!14830) (Cons!14829 (h!15958 (_ BitVec 64)) (t!21156 List!14833)) )
))
(declare-fun arrayNoDuplicates!0 (array!43481 (_ BitVec 32) List!14833) Bool)

(assert (=> b!800214 (= res!544895 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14830))))

(assert (= (and start!68740 res!544903) b!800205))

(assert (= (and b!800205 res!544902) b!800210))

(assert (= (and b!800210 res!544900) b!800204))

(assert (= (and b!800204 res!544897) b!800206))

(assert (= (and b!800206 res!544899) b!800208))

(assert (= (and b!800208 res!544896) b!800213))

(assert (= (and b!800213 res!544891) b!800214))

(assert (= (and b!800214 res!544895) b!800211))

(assert (= (and b!800211 res!544894) b!800207))

(assert (= (and b!800207 res!544892) b!800203))

(assert (= (and b!800203 res!544893) b!800202))

(assert (= (and b!800202 res!544901) b!800212))

(assert (= (and b!800212 res!544898) b!800209))

(declare-fun m!741379 () Bool)

(assert (=> start!68740 m!741379))

(declare-fun m!741381 () Bool)

(assert (=> start!68740 m!741381))

(declare-fun m!741383 () Bool)

(assert (=> b!800206 m!741383))

(declare-fun m!741385 () Bool)

(assert (=> b!800212 m!741385))

(declare-fun m!741387 () Bool)

(assert (=> b!800214 m!741387))

(declare-fun m!741389 () Bool)

(assert (=> b!800211 m!741389))

(declare-fun m!741391 () Bool)

(assert (=> b!800211 m!741391))

(declare-fun m!741393 () Bool)

(assert (=> b!800210 m!741393))

(assert (=> b!800210 m!741393))

(declare-fun m!741395 () Bool)

(assert (=> b!800210 m!741395))

(declare-fun m!741397 () Bool)

(assert (=> b!800204 m!741397))

(declare-fun m!741399 () Bool)

(assert (=> b!800202 m!741399))

(declare-fun m!741401 () Bool)

(assert (=> b!800207 m!741401))

(declare-fun m!741403 () Bool)

(assert (=> b!800207 m!741403))

(declare-fun m!741405 () Bool)

(assert (=> b!800207 m!741405))

(declare-fun m!741407 () Bool)

(assert (=> b!800207 m!741407))

(assert (=> b!800209 m!741393))

(assert (=> b!800209 m!741393))

(declare-fun m!741409 () Bool)

(assert (=> b!800209 m!741409))

(declare-fun m!741411 () Bool)

(assert (=> b!800203 m!741411))

(assert (=> b!800203 m!741393))

(assert (=> b!800203 m!741393))

(declare-fun m!741413 () Bool)

(assert (=> b!800203 m!741413))

(assert (=> b!800203 m!741393))

(declare-fun m!741415 () Bool)

(assert (=> b!800203 m!741415))

(declare-fun m!741417 () Bool)

(assert (=> b!800208 m!741417))

(declare-fun m!741419 () Bool)

(assert (=> b!800213 m!741419))

(push 1)

