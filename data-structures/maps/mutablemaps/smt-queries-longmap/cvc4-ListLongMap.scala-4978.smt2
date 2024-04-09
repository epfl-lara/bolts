; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68402 () Bool)

(assert start!68402)

(declare-fun b!794433 () Bool)

(declare-fun e!441113 () Bool)

(declare-fun e!441115 () Bool)

(assert (=> b!794433 (= e!441113 e!441115)))

(declare-fun res!539125 () Bool)

(assert (=> b!794433 (=> (not res!539125) (not e!441115))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!354165 () (_ BitVec 64))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-datatypes ((array!43143 0))(
  ( (array!43144 (arr!20648 (Array (_ BitVec 32) (_ BitVec 64))) (size!21069 (_ BitVec 32))) )
))
(declare-fun lt!354166 () array!43143)

(declare-fun index!1236 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8246 0))(
  ( (MissingZero!8246 (index!35351 (_ BitVec 32))) (Found!8246 (index!35352 (_ BitVec 32))) (Intermediate!8246 (undefined!9058 Bool) (index!35353 (_ BitVec 32)) (x!66301 (_ BitVec 32))) (Undefined!8246) (MissingVacant!8246 (index!35354 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43143 (_ BitVec 32)) SeekEntryResult!8246)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43143 (_ BitVec 32)) SeekEntryResult!8246)

(assert (=> b!794433 (= res!539125 (= (seekEntryOrOpen!0 lt!354165 lt!354166 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!354165 lt!354166 mask!3266)))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun a!3170 () array!43143)

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!794433 (= lt!354165 (select (store (arr!20648 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!794433 (= lt!354166 (array!43144 (store (arr!20648 a!3170) i!1163 k!2044) (size!21069 a!3170)))))

(declare-fun b!794434 () Bool)

(declare-fun res!539130 () Bool)

(assert (=> b!794434 (=> (not res!539130) (not e!441113))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!794434 (= res!539130 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21069 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20648 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21069 a!3170)) (= (select (arr!20648 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!794435 () Bool)

(declare-fun res!539122 () Bool)

(declare-fun e!441114 () Bool)

(assert (=> b!794435 (=> (not res!539122) (not e!441114))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!794435 (= res!539122 (validKeyInArray!0 (select (arr!20648 a!3170) j!153)))))

(declare-fun b!794436 () Bool)

(assert (=> b!794436 (= e!441114 e!441113)))

(declare-fun res!539124 () Bool)

(assert (=> b!794436 (=> (not res!539124) (not e!441113))))

(declare-fun lt!354167 () SeekEntryResult!8246)

(assert (=> b!794436 (= res!539124 (or (= lt!354167 (MissingZero!8246 i!1163)) (= lt!354167 (MissingVacant!8246 i!1163))))))

(assert (=> b!794436 (= lt!354167 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!794437 () Bool)

(declare-fun res!539123 () Bool)

(assert (=> b!794437 (=> (not res!539123) (not e!441114))))

(assert (=> b!794437 (= res!539123 (and (= (size!21069 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21069 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21069 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!794438 () Bool)

(declare-fun res!539128 () Bool)

(assert (=> b!794438 (=> (not res!539128) (not e!441114))))

(assert (=> b!794438 (= res!539128 (validKeyInArray!0 k!2044))))

(declare-fun res!539127 () Bool)

(assert (=> start!68402 (=> (not res!539127) (not e!441114))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68402 (= res!539127 (validMask!0 mask!3266))))

(assert (=> start!68402 e!441114))

(assert (=> start!68402 true))

(declare-fun array_inv!16422 (array!43143) Bool)

(assert (=> start!68402 (array_inv!16422 a!3170)))

(declare-fun b!794439 () Bool)

(declare-fun res!539126 () Bool)

(assert (=> b!794439 (=> (not res!539126) (not e!441113))))

(declare-datatypes ((List!14664 0))(
  ( (Nil!14661) (Cons!14660 (h!15789 (_ BitVec 64)) (t!20987 List!14664)) )
))
(declare-fun arrayNoDuplicates!0 (array!43143 (_ BitVec 32) List!14664) Bool)

(assert (=> b!794439 (= res!539126 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14661))))

(declare-fun b!794440 () Bool)

(declare-fun res!539131 () Bool)

(assert (=> b!794440 (=> (not res!539131) (not e!441113))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43143 (_ BitVec 32)) Bool)

(assert (=> b!794440 (= res!539131 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!794441 () Bool)

(assert (=> b!794441 (= e!441115 false)))

(declare-fun lt!354169 () SeekEntryResult!8246)

(assert (=> b!794441 (= lt!354169 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20648 a!3170) j!153) a!3170 mask!3266))))

(declare-fun lt!354168 () SeekEntryResult!8246)

(assert (=> b!794441 (= lt!354168 (seekEntryOrOpen!0 (select (arr!20648 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!794442 () Bool)

(declare-fun res!539129 () Bool)

(assert (=> b!794442 (=> (not res!539129) (not e!441114))))

(declare-fun arrayContainsKey!0 (array!43143 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!794442 (= res!539129 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(assert (= (and start!68402 res!539127) b!794437))

(assert (= (and b!794437 res!539123) b!794435))

(assert (= (and b!794435 res!539122) b!794438))

(assert (= (and b!794438 res!539128) b!794442))

(assert (= (and b!794442 res!539129) b!794436))

(assert (= (and b!794436 res!539124) b!794440))

(assert (= (and b!794440 res!539131) b!794439))

(assert (= (and b!794439 res!539126) b!794434))

(assert (= (and b!794434 res!539130) b!794433))

(assert (= (and b!794433 res!539125) b!794441))

(declare-fun m!735081 () Bool)

(assert (=> b!794434 m!735081))

(declare-fun m!735083 () Bool)

(assert (=> b!794434 m!735083))

(declare-fun m!735085 () Bool)

(assert (=> b!794441 m!735085))

(assert (=> b!794441 m!735085))

(declare-fun m!735087 () Bool)

(assert (=> b!794441 m!735087))

(assert (=> b!794441 m!735085))

(declare-fun m!735089 () Bool)

(assert (=> b!794441 m!735089))

(declare-fun m!735091 () Bool)

(assert (=> b!794440 m!735091))

(declare-fun m!735093 () Bool)

(assert (=> b!794433 m!735093))

(declare-fun m!735095 () Bool)

(assert (=> b!794433 m!735095))

(declare-fun m!735097 () Bool)

(assert (=> b!794433 m!735097))

(declare-fun m!735099 () Bool)

(assert (=> b!794433 m!735099))

(declare-fun m!735101 () Bool)

(assert (=> start!68402 m!735101))

(declare-fun m!735103 () Bool)

(assert (=> start!68402 m!735103))

(declare-fun m!735105 () Bool)

(assert (=> b!794438 m!735105))

(declare-fun m!735107 () Bool)

(assert (=> b!794439 m!735107))

(declare-fun m!735109 () Bool)

(assert (=> b!794442 m!735109))

(assert (=> b!794435 m!735085))

(assert (=> b!794435 m!735085))

(declare-fun m!735111 () Bool)

(assert (=> b!794435 m!735111))

(declare-fun m!735113 () Bool)

(assert (=> b!794436 m!735113))

(push 1)

(assert (not b!794433))

(assert (not b!794439))

