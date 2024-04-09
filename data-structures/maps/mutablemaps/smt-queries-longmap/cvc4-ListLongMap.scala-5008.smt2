; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68582 () Bool)

(assert start!68582)

(declare-fun res!542045 () Bool)

(declare-fun e!442382 () Bool)

(assert (=> start!68582 (=> (not res!542045) (not e!442382))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68582 (= res!542045 (validMask!0 mask!3266))))

(assert (=> start!68582 e!442382))

(assert (=> start!68582 true))

(declare-datatypes ((array!43323 0))(
  ( (array!43324 (arr!20738 (Array (_ BitVec 32) (_ BitVec 64))) (size!21159 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43323)

(declare-fun array_inv!16512 (array!43323) Bool)

(assert (=> start!68582 (array_inv!16512 a!3170)))

(declare-fun b!797347 () Bool)

(declare-fun e!442380 () Bool)

(declare-fun e!442383 () Bool)

(assert (=> b!797347 (= e!442380 e!442383)))

(declare-fun res!542044 () Bool)

(assert (=> b!797347 (=> (not res!542044) (not e!442383))))

(declare-datatypes ((SeekEntryResult!8336 0))(
  ( (MissingZero!8336 (index!35711 (_ BitVec 32))) (Found!8336 (index!35712 (_ BitVec 32))) (Intermediate!8336 (undefined!9148 Bool) (index!35713 (_ BitVec 32)) (x!66631 (_ BitVec 32))) (Undefined!8336) (MissingVacant!8336 (index!35714 (_ BitVec 32))) )
))
(declare-fun lt!355765 () SeekEntryResult!8336)

(declare-fun lt!355768 () SeekEntryResult!8336)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!797347 (= res!542044 (and (= lt!355765 lt!355768) (= (select (arr!20738 a!3170) index!1236) (select (arr!20738 a!3170) j!153))))))

(assert (=> b!797347 (= lt!355768 (Found!8336 j!153))))

(declare-fun b!797348 () Bool)

(declare-fun res!542038 () Bool)

(assert (=> b!797348 (=> (not res!542038) (not e!442382))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!797348 (= res!542038 (validKeyInArray!0 (select (arr!20738 a!3170) j!153)))))

(declare-fun lt!355770 () SeekEntryResult!8336)

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun b!797349 () Bool)

(assert (=> b!797349 (= e!442383 (not (or (not (= lt!355770 lt!355768)) (bvslt mask!3266 #b00000000000000000000000000000000) (bvsge index!1236 (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge vacantAfter!23 (bvadd #b00000000000000000000000000000001 mask!3266)) (= (select (store (arr!20738 a!3170) i!1163 k!2044) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!797349 (= lt!355770 (Found!8336 index!1236))))

(declare-fun b!797350 () Bool)

(declare-fun res!542042 () Bool)

(assert (=> b!797350 (=> (not res!542042) (not e!442382))))

(declare-fun arrayContainsKey!0 (array!43323 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!797350 (= res!542042 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!797351 () Bool)

(declare-fun e!442384 () Bool)

(assert (=> b!797351 (= e!442382 e!442384)))

(declare-fun res!542039 () Bool)

(assert (=> b!797351 (=> (not res!542039) (not e!442384))))

(declare-fun lt!355764 () SeekEntryResult!8336)

(assert (=> b!797351 (= res!542039 (or (= lt!355764 (MissingZero!8336 i!1163)) (= lt!355764 (MissingVacant!8336 i!1163))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43323 (_ BitVec 32)) SeekEntryResult!8336)

(assert (=> b!797351 (= lt!355764 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!797352 () Bool)

(declare-fun res!542037 () Bool)

(assert (=> b!797352 (=> (not res!542037) (not e!442384))))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!797352 (= res!542037 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21159 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20738 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21159 a!3170)) (= (select (arr!20738 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!797353 () Bool)

(declare-fun res!542043 () Bool)

(assert (=> b!797353 (=> (not res!542043) (not e!442382))))

(assert (=> b!797353 (= res!542043 (validKeyInArray!0 k!2044))))

(declare-fun b!797354 () Bool)

(declare-fun e!442379 () Bool)

(assert (=> b!797354 (= e!442384 e!442379)))

(declare-fun res!542036 () Bool)

(assert (=> b!797354 (=> (not res!542036) (not e!442379))))

(declare-fun lt!355771 () SeekEntryResult!8336)

(assert (=> b!797354 (= res!542036 (= lt!355771 lt!355770))))

(declare-fun lt!355769 () (_ BitVec 64))

(declare-fun lt!355766 () array!43323)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43323 (_ BitVec 32)) SeekEntryResult!8336)

(assert (=> b!797354 (= lt!355770 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!355769 lt!355766 mask!3266))))

(assert (=> b!797354 (= lt!355771 (seekEntryOrOpen!0 lt!355769 lt!355766 mask!3266))))

(assert (=> b!797354 (= lt!355769 (select (store (arr!20738 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!797354 (= lt!355766 (array!43324 (store (arr!20738 a!3170) i!1163 k!2044) (size!21159 a!3170)))))

(declare-fun b!797355 () Bool)

(declare-fun res!542046 () Bool)

(assert (=> b!797355 (=> (not res!542046) (not e!442384))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43323 (_ BitVec 32)) Bool)

(assert (=> b!797355 (= res!542046 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!797356 () Bool)

(declare-fun res!542047 () Bool)

(assert (=> b!797356 (=> (not res!542047) (not e!442382))))

(assert (=> b!797356 (= res!542047 (and (= (size!21159 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21159 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21159 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!797357 () Bool)

(declare-fun res!542040 () Bool)

(assert (=> b!797357 (=> (not res!542040) (not e!442384))))

(declare-datatypes ((List!14754 0))(
  ( (Nil!14751) (Cons!14750 (h!15879 (_ BitVec 64)) (t!21077 List!14754)) )
))
(declare-fun arrayNoDuplicates!0 (array!43323 (_ BitVec 32) List!14754) Bool)

(assert (=> b!797357 (= res!542040 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14751))))

(declare-fun b!797358 () Bool)

(assert (=> b!797358 (= e!442379 e!442380)))

(declare-fun res!542041 () Bool)

(assert (=> b!797358 (=> (not res!542041) (not e!442380))))

(declare-fun lt!355767 () SeekEntryResult!8336)

(assert (=> b!797358 (= res!542041 (= lt!355767 lt!355765))))

(assert (=> b!797358 (= lt!355765 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20738 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!797358 (= lt!355767 (seekEntryOrOpen!0 (select (arr!20738 a!3170) j!153) a!3170 mask!3266))))

(assert (= (and start!68582 res!542045) b!797356))

(assert (= (and b!797356 res!542047) b!797348))

(assert (= (and b!797348 res!542038) b!797353))

(assert (= (and b!797353 res!542043) b!797350))

(assert (= (and b!797350 res!542042) b!797351))

(assert (= (and b!797351 res!542039) b!797355))

(assert (= (and b!797355 res!542046) b!797357))

(assert (= (and b!797357 res!542040) b!797352))

(assert (= (and b!797352 res!542037) b!797354))

(assert (= (and b!797354 res!542036) b!797358))

(assert (= (and b!797358 res!542041) b!797347))

(assert (= (and b!797347 res!542044) b!797349))

(declare-fun m!738299 () Bool)

(assert (=> b!797348 m!738299))

(assert (=> b!797348 m!738299))

(declare-fun m!738301 () Bool)

(assert (=> b!797348 m!738301))

(declare-fun m!738303 () Bool)

(assert (=> b!797349 m!738303))

(declare-fun m!738305 () Bool)

(assert (=> b!797349 m!738305))

(declare-fun m!738307 () Bool)

(assert (=> b!797357 m!738307))

(declare-fun m!738309 () Bool)

(assert (=> start!68582 m!738309))

(declare-fun m!738311 () Bool)

(assert (=> start!68582 m!738311))

(declare-fun m!738313 () Bool)

(assert (=> b!797351 m!738313))

(declare-fun m!738315 () Bool)

(assert (=> b!797352 m!738315))

(declare-fun m!738317 () Bool)

(assert (=> b!797352 m!738317))

(declare-fun m!738319 () Bool)

(assert (=> b!797347 m!738319))

(assert (=> b!797347 m!738299))

(assert (=> b!797358 m!738299))

(assert (=> b!797358 m!738299))

(declare-fun m!738321 () Bool)

(assert (=> b!797358 m!738321))

(assert (=> b!797358 m!738299))

(declare-fun m!738323 () Bool)

(assert (=> b!797358 m!738323))

(declare-fun m!738325 () Bool)

(assert (=> b!797353 m!738325))

(declare-fun m!738327 () Bool)

(assert (=> b!797350 m!738327))

(declare-fun m!738329 () Bool)

(assert (=> b!797355 m!738329))

(declare-fun m!738331 () Bool)

(assert (=> b!797354 m!738331))

(declare-fun m!738333 () Bool)

(assert (=> b!797354 m!738333))

(assert (=> b!797354 m!738303))

(declare-fun m!738335 () Bool)

(assert (=> b!797354 m!738335))

(push 1)

(assert (not b!797353))

(assert (not b!797354))

(assert (not b!797348))

(assert (not b!797351))

(assert (not b!797358))

(assert (not b!797350))

(assert (not b!797357))

(assert (not start!68582))

(assert (not b!797355))

(check-sat)

(pop 1)

(push 1)

(check-sat)

