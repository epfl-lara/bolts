; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68404 () Bool)

(assert start!68404)

(declare-fun b!794465 () Bool)

(declare-fun e!441127 () Bool)

(declare-fun mask!3266 () (_ BitVec 32))

(assert (=> b!794465 (= e!441127 (bvslt mask!3266 #b00000000000000000000000000000000))))

(declare-fun b!794466 () Bool)

(declare-fun res!539162 () Bool)

(declare-fun e!441126 () Bool)

(assert (=> b!794466 (=> (not res!539162) (not e!441126))))

(declare-datatypes ((array!43145 0))(
  ( (array!43146 (arr!20649 (Array (_ BitVec 32) (_ BitVec 64))) (size!21070 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43145)

(declare-datatypes ((List!14665 0))(
  ( (Nil!14662) (Cons!14661 (h!15790 (_ BitVec 64)) (t!20988 List!14665)) )
))
(declare-fun arrayNoDuplicates!0 (array!43145 (_ BitVec 32) List!14665) Bool)

(assert (=> b!794466 (= res!539162 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14662))))

(declare-fun b!794467 () Bool)

(declare-fun res!539160 () Bool)

(declare-fun e!441124 () Bool)

(assert (=> b!794467 (=> (not res!539160) (not e!441124))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!43145 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!794467 (= res!539160 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!794468 () Bool)

(declare-fun res!539157 () Bool)

(assert (=> b!794468 (=> (not res!539157) (not e!441126))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!794468 (= res!539157 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21070 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20649 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21070 a!3170)) (= (select (arr!20649 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!794469 () Bool)

(assert (=> b!794469 (= e!441126 e!441127)))

(declare-fun res!539154 () Bool)

(assert (=> b!794469 (=> (not res!539154) (not e!441127))))

(declare-fun lt!354177 () array!43145)

(declare-fun lt!354178 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!8247 0))(
  ( (MissingZero!8247 (index!35355 (_ BitVec 32))) (Found!8247 (index!35356 (_ BitVec 32))) (Intermediate!8247 (undefined!9059 Bool) (index!35357 (_ BitVec 32)) (x!66310 (_ BitVec 32))) (Undefined!8247) (MissingVacant!8247 (index!35358 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43145 (_ BitVec 32)) SeekEntryResult!8247)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43145 (_ BitVec 32)) SeekEntryResult!8247)

(assert (=> b!794469 (= res!539154 (= (seekEntryOrOpen!0 lt!354178 lt!354177 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!354178 lt!354177 mask!3266)))))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!794469 (= lt!354178 (select (store (arr!20649 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!794469 (= lt!354177 (array!43146 (store (arr!20649 a!3170) i!1163 k!2044) (size!21070 a!3170)))))

(declare-fun res!539163 () Bool)

(assert (=> start!68404 (=> (not res!539163) (not e!441124))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68404 (= res!539163 (validMask!0 mask!3266))))

(assert (=> start!68404 e!441124))

(assert (=> start!68404 true))

(declare-fun array_inv!16423 (array!43145) Bool)

(assert (=> start!68404 (array_inv!16423 a!3170)))

(declare-fun b!794470 () Bool)

(declare-fun res!539164 () Bool)

(assert (=> b!794470 (=> (not res!539164) (not e!441124))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!794470 (= res!539164 (validKeyInArray!0 k!2044))))

(declare-fun b!794471 () Bool)

(assert (=> b!794471 (= e!441124 e!441126)))

(declare-fun res!539158 () Bool)

(assert (=> b!794471 (=> (not res!539158) (not e!441126))))

(declare-fun lt!354176 () SeekEntryResult!8247)

(assert (=> b!794471 (= res!539158 (or (= lt!354176 (MissingZero!8247 i!1163)) (= lt!354176 (MissingVacant!8247 i!1163))))))

(assert (=> b!794471 (= lt!354176 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!794472 () Bool)

(declare-fun res!539159 () Bool)

(assert (=> b!794472 (=> (not res!539159) (not e!441124))))

(assert (=> b!794472 (= res!539159 (and (= (size!21070 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21070 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21070 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!794473 () Bool)

(declare-fun res!539161 () Bool)

(assert (=> b!794473 (=> (not res!539161) (not e!441127))))

(assert (=> b!794473 (= res!539161 (= (seekEntryOrOpen!0 (select (arr!20649 a!3170) j!153) a!3170 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20649 a!3170) j!153) a!3170 mask!3266)))))

(declare-fun b!794474 () Bool)

(declare-fun res!539155 () Bool)

(assert (=> b!794474 (=> (not res!539155) (not e!441124))))

(assert (=> b!794474 (= res!539155 (validKeyInArray!0 (select (arr!20649 a!3170) j!153)))))

(declare-fun b!794475 () Bool)

(declare-fun res!539156 () Bool)

(assert (=> b!794475 (=> (not res!539156) (not e!441126))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43145 (_ BitVec 32)) Bool)

(assert (=> b!794475 (= res!539156 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(assert (= (and start!68404 res!539163) b!794472))

(assert (= (and b!794472 res!539159) b!794474))

(assert (= (and b!794474 res!539155) b!794470))

(assert (= (and b!794470 res!539164) b!794467))

(assert (= (and b!794467 res!539160) b!794471))

(assert (= (and b!794471 res!539158) b!794475))

(assert (= (and b!794475 res!539156) b!794466))

(assert (= (and b!794466 res!539162) b!794468))

(assert (= (and b!794468 res!539157) b!794469))

(assert (= (and b!794469 res!539154) b!794473))

(assert (= (and b!794473 res!539161) b!794465))

(declare-fun m!735115 () Bool)

(assert (=> b!794468 m!735115))

(declare-fun m!735117 () Bool)

(assert (=> b!794468 m!735117))

(declare-fun m!735119 () Bool)

(assert (=> b!794470 m!735119))

(declare-fun m!735121 () Bool)

(assert (=> b!794471 m!735121))

(declare-fun m!735123 () Bool)

(assert (=> b!794469 m!735123))

(declare-fun m!735125 () Bool)

(assert (=> b!794469 m!735125))

(declare-fun m!735127 () Bool)

(assert (=> b!794469 m!735127))

(declare-fun m!735129 () Bool)

(assert (=> b!794469 m!735129))

(declare-fun m!735131 () Bool)

(assert (=> b!794466 m!735131))

(declare-fun m!735133 () Bool)

(assert (=> b!794474 m!735133))

(assert (=> b!794474 m!735133))

(declare-fun m!735135 () Bool)

(assert (=> b!794474 m!735135))

(declare-fun m!735137 () Bool)

(assert (=> b!794467 m!735137))

(declare-fun m!735139 () Bool)

(assert (=> b!794475 m!735139))

(declare-fun m!735141 () Bool)

(assert (=> start!68404 m!735141))

(declare-fun m!735143 () Bool)

(assert (=> start!68404 m!735143))

(assert (=> b!794473 m!735133))

(assert (=> b!794473 m!735133))

(declare-fun m!735145 () Bool)

(assert (=> b!794473 m!735145))

(assert (=> b!794473 m!735133))

(declare-fun m!735147 () Bool)

(assert (=> b!794473 m!735147))

(push 1)

