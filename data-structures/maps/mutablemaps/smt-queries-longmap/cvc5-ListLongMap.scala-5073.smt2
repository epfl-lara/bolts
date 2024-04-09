; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68968 () Bool)

(assert start!68968)

(declare-fun b!804141 () Bool)

(declare-fun res!548833 () Bool)

(declare-fun e!445534 () Bool)

(assert (=> b!804141 (=> (not res!548833) (not e!445534))))

(declare-datatypes ((array!43709 0))(
  ( (array!43710 (arr!20931 (Array (_ BitVec 32) (_ BitVec 64))) (size!21352 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43709)

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!43709 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!804141 (= res!548833 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!804142 () Bool)

(declare-fun e!445533 () Bool)

(assert (=> b!804142 (= e!445533 false)))

(declare-fun lt!360061 () Bool)

(declare-datatypes ((List!14947 0))(
  ( (Nil!14944) (Cons!14943 (h!16072 (_ BitVec 64)) (t!21270 List!14947)) )
))
(declare-fun arrayNoDuplicates!0 (array!43709 (_ BitVec 32) List!14947) Bool)

(assert (=> b!804142 (= lt!360061 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14944))))

(declare-fun b!804143 () Bool)

(declare-fun res!548834 () Bool)

(assert (=> b!804143 (=> (not res!548834) (not e!445534))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(assert (=> b!804143 (= res!548834 (and (= (size!21352 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21352 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21352 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!804144 () Bool)

(declare-fun res!548830 () Bool)

(assert (=> b!804144 (=> (not res!548830) (not e!445534))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!804144 (= res!548830 (validKeyInArray!0 k!2044))))

(declare-fun b!804145 () Bool)

(declare-fun res!548835 () Bool)

(assert (=> b!804145 (=> (not res!548835) (not e!445534))))

(assert (=> b!804145 (= res!548835 (validKeyInArray!0 (select (arr!20931 a!3170) j!153)))))

(declare-fun res!548836 () Bool)

(assert (=> start!68968 (=> (not res!548836) (not e!445534))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68968 (= res!548836 (validMask!0 mask!3266))))

(assert (=> start!68968 e!445534))

(assert (=> start!68968 true))

(declare-fun array_inv!16705 (array!43709) Bool)

(assert (=> start!68968 (array_inv!16705 a!3170)))

(declare-fun b!804146 () Bool)

(assert (=> b!804146 (= e!445534 e!445533)))

(declare-fun res!548831 () Bool)

(assert (=> b!804146 (=> (not res!548831) (not e!445533))))

(declare-datatypes ((SeekEntryResult!8529 0))(
  ( (MissingZero!8529 (index!36483 (_ BitVec 32))) (Found!8529 (index!36484 (_ BitVec 32))) (Intermediate!8529 (undefined!9341 Bool) (index!36485 (_ BitVec 32)) (x!67344 (_ BitVec 32))) (Undefined!8529) (MissingVacant!8529 (index!36486 (_ BitVec 32))) )
))
(declare-fun lt!360060 () SeekEntryResult!8529)

(assert (=> b!804146 (= res!548831 (or (= lt!360060 (MissingZero!8529 i!1163)) (= lt!360060 (MissingVacant!8529 i!1163))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43709 (_ BitVec 32)) SeekEntryResult!8529)

(assert (=> b!804146 (= lt!360060 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!804147 () Bool)

(declare-fun res!548832 () Bool)

(assert (=> b!804147 (=> (not res!548832) (not e!445533))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43709 (_ BitVec 32)) Bool)

(assert (=> b!804147 (= res!548832 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(assert (= (and start!68968 res!548836) b!804143))

(assert (= (and b!804143 res!548834) b!804145))

(assert (= (and b!804145 res!548835) b!804144))

(assert (= (and b!804144 res!548830) b!804141))

(assert (= (and b!804141 res!548833) b!804146))

(assert (= (and b!804146 res!548831) b!804147))

(assert (= (and b!804147 res!548832) b!804142))

(declare-fun m!746131 () Bool)

(assert (=> b!804144 m!746131))

(declare-fun m!746133 () Bool)

(assert (=> b!804141 m!746133))

(declare-fun m!746135 () Bool)

(assert (=> b!804147 m!746135))

(declare-fun m!746137 () Bool)

(assert (=> b!804146 m!746137))

(declare-fun m!746139 () Bool)

(assert (=> start!68968 m!746139))

(declare-fun m!746141 () Bool)

(assert (=> start!68968 m!746141))

(declare-fun m!746143 () Bool)

(assert (=> b!804142 m!746143))

(declare-fun m!746145 () Bool)

(assert (=> b!804145 m!746145))

(assert (=> b!804145 m!746145))

(declare-fun m!746147 () Bool)

(assert (=> b!804145 m!746147))

(push 1)

