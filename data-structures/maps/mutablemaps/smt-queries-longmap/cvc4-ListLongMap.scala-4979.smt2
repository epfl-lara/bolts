; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68408 () Bool)

(assert start!68408)

(declare-fun b!794531 () Bool)

(declare-fun res!539228 () Bool)

(declare-fun e!441149 () Bool)

(assert (=> b!794531 (=> (not res!539228) (not e!441149))))

(declare-datatypes ((array!43149 0))(
  ( (array!43150 (arr!20651 (Array (_ BitVec 32) (_ BitVec 64))) (size!21072 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43149)

(declare-datatypes ((List!14667 0))(
  ( (Nil!14664) (Cons!14663 (h!15792 (_ BitVec 64)) (t!20990 List!14667)) )
))
(declare-fun arrayNoDuplicates!0 (array!43149 (_ BitVec 32) List!14667) Bool)

(assert (=> b!794531 (= res!539228 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14664))))

(declare-fun res!539230 () Bool)

(declare-fun e!441148 () Bool)

(assert (=> start!68408 (=> (not res!539230) (not e!441148))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68408 (= res!539230 (validMask!0 mask!3266))))

(assert (=> start!68408 e!441148))

(assert (=> start!68408 true))

(declare-fun array_inv!16425 (array!43149) Bool)

(assert (=> start!68408 (array_inv!16425 a!3170)))

(declare-fun b!794532 () Bool)

(declare-fun res!539227 () Bool)

(assert (=> b!794532 (=> (not res!539227) (not e!441149))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43149 (_ BitVec 32)) Bool)

(assert (=> b!794532 (= res!539227 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!794533 () Bool)

(declare-fun e!441150 () Bool)

(assert (=> b!794533 (= e!441149 e!441150)))

(declare-fun res!539220 () Bool)

(assert (=> b!794533 (=> (not res!539220) (not e!441150))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun lt!354194 () array!43149)

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!354195 () (_ BitVec 64))

(declare-fun index!1236 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8249 0))(
  ( (MissingZero!8249 (index!35363 (_ BitVec 32))) (Found!8249 (index!35364 (_ BitVec 32))) (Intermediate!8249 (undefined!9061 Bool) (index!35365 (_ BitVec 32)) (x!66312 (_ BitVec 32))) (Undefined!8249) (MissingVacant!8249 (index!35366 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43149 (_ BitVec 32)) SeekEntryResult!8249)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43149 (_ BitVec 32)) SeekEntryResult!8249)

(assert (=> b!794533 (= res!539220 (= (seekEntryOrOpen!0 lt!354195 lt!354194 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!354195 lt!354194 mask!3266)))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!794533 (= lt!354195 (select (store (arr!20651 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!794533 (= lt!354194 (array!43150 (store (arr!20651 a!3170) i!1163 k!2044) (size!21072 a!3170)))))

(declare-fun b!794534 () Bool)

(declare-fun res!539221 () Bool)

(assert (=> b!794534 (=> (not res!539221) (not e!441148))))

(assert (=> b!794534 (= res!539221 (and (= (size!21072 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21072 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21072 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!794535 () Bool)

(declare-fun res!539223 () Bool)

(assert (=> b!794535 (=> (not res!539223) (not e!441148))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!794535 (= res!539223 (validKeyInArray!0 k!2044))))

(declare-fun b!794536 () Bool)

(declare-fun res!539224 () Bool)

(assert (=> b!794536 (=> (not res!539224) (not e!441149))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!794536 (= res!539224 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21072 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20651 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21072 a!3170)) (= (select (arr!20651 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!794537 () Bool)

(assert (=> b!794537 (= e!441148 e!441149)))

(declare-fun res!539225 () Bool)

(assert (=> b!794537 (=> (not res!539225) (not e!441149))))

(declare-fun lt!354196 () SeekEntryResult!8249)

(assert (=> b!794537 (= res!539225 (or (= lt!354196 (MissingZero!8249 i!1163)) (= lt!354196 (MissingVacant!8249 i!1163))))))

(assert (=> b!794537 (= lt!354196 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!794538 () Bool)

(declare-fun res!539226 () Bool)

(assert (=> b!794538 (=> (not res!539226) (not e!441150))))

(assert (=> b!794538 (= res!539226 (= (seekEntryOrOpen!0 (select (arr!20651 a!3170) j!153) a!3170 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20651 a!3170) j!153) a!3170 mask!3266)))))

(declare-fun b!794539 () Bool)

(declare-fun res!539222 () Bool)

(assert (=> b!794539 (=> (not res!539222) (not e!441148))))

(assert (=> b!794539 (= res!539222 (validKeyInArray!0 (select (arr!20651 a!3170) j!153)))))

(declare-fun b!794540 () Bool)

(declare-fun res!539229 () Bool)

(assert (=> b!794540 (=> (not res!539229) (not e!441148))))

(declare-fun arrayContainsKey!0 (array!43149 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!794540 (= res!539229 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!794541 () Bool)

(assert (=> b!794541 (= e!441150 (bvslt mask!3266 #b00000000000000000000000000000000))))

(assert (= (and start!68408 res!539230) b!794534))

(assert (= (and b!794534 res!539221) b!794539))

(assert (= (and b!794539 res!539222) b!794535))

(assert (= (and b!794535 res!539223) b!794540))

(assert (= (and b!794540 res!539229) b!794537))

(assert (= (and b!794537 res!539225) b!794532))

(assert (= (and b!794532 res!539227) b!794531))

(assert (= (and b!794531 res!539228) b!794536))

(assert (= (and b!794536 res!539224) b!794533))

(assert (= (and b!794533 res!539220) b!794538))

(assert (= (and b!794538 res!539226) b!794541))

(declare-fun m!735183 () Bool)

(assert (=> b!794540 m!735183))

(declare-fun m!735185 () Bool)

(assert (=> b!794535 m!735185))

(declare-fun m!735187 () Bool)

(assert (=> start!68408 m!735187))

(declare-fun m!735189 () Bool)

(assert (=> start!68408 m!735189))

(declare-fun m!735191 () Bool)

(assert (=> b!794539 m!735191))

(assert (=> b!794539 m!735191))

(declare-fun m!735193 () Bool)

(assert (=> b!794539 m!735193))

(declare-fun m!735195 () Bool)

(assert (=> b!794532 m!735195))

(declare-fun m!735197 () Bool)

(assert (=> b!794537 m!735197))

(declare-fun m!735199 () Bool)

(assert (=> b!794531 m!735199))

(declare-fun m!735201 () Bool)

(assert (=> b!794536 m!735201))

(declare-fun m!735203 () Bool)

(assert (=> b!794536 m!735203))

(assert (=> b!794538 m!735191))

(assert (=> b!794538 m!735191))

(declare-fun m!735205 () Bool)

(assert (=> b!794538 m!735205))

(assert (=> b!794538 m!735191))

(declare-fun m!735207 () Bool)

(assert (=> b!794538 m!735207))

(declare-fun m!735209 () Bool)

(assert (=> b!794533 m!735209))

(declare-fun m!735211 () Bool)

(assert (=> b!794533 m!735211))

(declare-fun m!735213 () Bool)

(assert (=> b!794533 m!735213))

(declare-fun m!735215 () Bool)

(assert (=> b!794533 m!735215))

(push 1)

(assert (not b!794535))

(assert (not b!794537))

(assert (not b!794531))

(assert (not b!794533))

(assert (not b!794539))

(assert (not b!794540))

(assert (not start!68408))

(assert (not b!794532))

(assert (not b!794538))

