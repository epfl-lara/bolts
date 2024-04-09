; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69004 () Bool)

(assert start!69004)

(declare-fun b!804541 () Bool)

(declare-fun res!549230 () Bool)

(declare-fun e!445696 () Bool)

(assert (=> b!804541 (=> (not res!549230) (not e!445696))))

(declare-datatypes ((array!43745 0))(
  ( (array!43746 (arr!20949 (Array (_ BitVec 32) (_ BitVec 64))) (size!21370 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43745)

(declare-datatypes ((List!14965 0))(
  ( (Nil!14962) (Cons!14961 (h!16090 (_ BitVec 64)) (t!21288 List!14965)) )
))
(declare-fun arrayNoDuplicates!0 (array!43745 (_ BitVec 32) List!14965) Bool)

(assert (=> b!804541 (= res!549230 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14962))))

(declare-fun b!804542 () Bool)

(assert (=> b!804542 (= e!445696 false)))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!360204 () array!43745)

(declare-datatypes ((SeekEntryResult!8547 0))(
  ( (MissingZero!8547 (index!36555 (_ BitVec 32))) (Found!8547 (index!36556 (_ BitVec 32))) (Intermediate!8547 (undefined!9359 Bool) (index!36557 (_ BitVec 32)) (x!67410 (_ BitVec 32))) (Undefined!8547) (MissingVacant!8547 (index!36558 (_ BitVec 32))) )
))
(declare-fun lt!360203 () SeekEntryResult!8547)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun lt!360201 () (_ BitVec 64))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43745 (_ BitVec 32)) SeekEntryResult!8547)

(assert (=> b!804542 (= lt!360203 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!360201 lt!360204 mask!3266))))

(declare-fun lt!360202 () SeekEntryResult!8547)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43745 (_ BitVec 32)) SeekEntryResult!8547)

(assert (=> b!804542 (= lt!360202 (seekEntryOrOpen!0 lt!360201 lt!360204 mask!3266))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!804542 (= lt!360201 (select (store (arr!20949 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!804542 (= lt!360204 (array!43746 (store (arr!20949 a!3170) i!1163 k!2044) (size!21370 a!3170)))))

(declare-fun b!804543 () Bool)

(declare-fun e!445695 () Bool)

(assert (=> b!804543 (= e!445695 e!445696)))

(declare-fun res!549233 () Bool)

(assert (=> b!804543 (=> (not res!549233) (not e!445696))))

(declare-fun lt!360205 () SeekEntryResult!8547)

(assert (=> b!804543 (= res!549233 (or (= lt!360205 (MissingZero!8547 i!1163)) (= lt!360205 (MissingVacant!8547 i!1163))))))

(assert (=> b!804543 (= lt!360205 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!804544 () Bool)

(declare-fun res!549234 () Bool)

(assert (=> b!804544 (=> (not res!549234) (not e!445695))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!804544 (= res!549234 (validKeyInArray!0 (select (arr!20949 a!3170) j!153)))))

(declare-fun b!804545 () Bool)

(declare-fun res!549232 () Bool)

(assert (=> b!804545 (=> (not res!549232) (not e!445695))))

(assert (=> b!804545 (= res!549232 (and (= (size!21370 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21370 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21370 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!804546 () Bool)

(declare-fun res!549237 () Bool)

(assert (=> b!804546 (=> (not res!549237) (not e!445695))))

(assert (=> b!804546 (= res!549237 (validKeyInArray!0 k!2044))))

(declare-fun b!804548 () Bool)

(declare-fun res!549238 () Bool)

(assert (=> b!804548 (=> (not res!549238) (not e!445696))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43745 (_ BitVec 32)) Bool)

(assert (=> b!804548 (= res!549238 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!804549 () Bool)

(declare-fun res!549236 () Bool)

(assert (=> b!804549 (=> (not res!549236) (not e!445695))))

(declare-fun arrayContainsKey!0 (array!43745 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!804549 (= res!549236 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!804547 () Bool)

(declare-fun res!549231 () Bool)

(assert (=> b!804547 (=> (not res!549231) (not e!445696))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!804547 (= res!549231 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21370 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20949 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21370 a!3170)) (= (select (arr!20949 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun res!549235 () Bool)

(assert (=> start!69004 (=> (not res!549235) (not e!445695))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69004 (= res!549235 (validMask!0 mask!3266))))

(assert (=> start!69004 e!445695))

(assert (=> start!69004 true))

(declare-fun array_inv!16723 (array!43745) Bool)

(assert (=> start!69004 (array_inv!16723 a!3170)))

(assert (= (and start!69004 res!549235) b!804545))

(assert (= (and b!804545 res!549232) b!804544))

(assert (= (and b!804544 res!549234) b!804546))

(assert (= (and b!804546 res!549237) b!804549))

(assert (= (and b!804549 res!549236) b!804543))

(assert (= (and b!804543 res!549233) b!804548))

(assert (= (and b!804548 res!549238) b!804541))

(assert (= (and b!804541 res!549230) b!804547))

(assert (= (and b!804547 res!549231) b!804542))

(declare-fun m!746491 () Bool)

(assert (=> b!804546 m!746491))

(declare-fun m!746493 () Bool)

(assert (=> b!804542 m!746493))

(declare-fun m!746495 () Bool)

(assert (=> b!804542 m!746495))

(declare-fun m!746497 () Bool)

(assert (=> b!804542 m!746497))

(declare-fun m!746499 () Bool)

(assert (=> b!804542 m!746499))

(declare-fun m!746501 () Bool)

(assert (=> b!804549 m!746501))

(declare-fun m!746503 () Bool)

(assert (=> b!804547 m!746503))

(declare-fun m!746505 () Bool)

(assert (=> b!804547 m!746505))

(declare-fun m!746507 () Bool)

(assert (=> b!804543 m!746507))

(declare-fun m!746509 () Bool)

(assert (=> start!69004 m!746509))

(declare-fun m!746511 () Bool)

(assert (=> start!69004 m!746511))

(declare-fun m!746513 () Bool)

(assert (=> b!804548 m!746513))

(declare-fun m!746515 () Bool)

(assert (=> b!804541 m!746515))

(declare-fun m!746517 () Bool)

(assert (=> b!804544 m!746517))

(assert (=> b!804544 m!746517))

(declare-fun m!746519 () Bool)

(assert (=> b!804544 m!746519))

(push 1)

