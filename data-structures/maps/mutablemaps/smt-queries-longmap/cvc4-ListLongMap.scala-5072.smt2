; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68966 () Bool)

(assert start!68966)

(declare-fun b!804120 () Bool)

(declare-fun res!548813 () Bool)

(declare-fun e!445523 () Bool)

(assert (=> b!804120 (=> (not res!548813) (not e!445523))))

(declare-datatypes ((array!43707 0))(
  ( (array!43708 (arr!20930 (Array (_ BitVec 32) (_ BitVec 64))) (size!21351 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43707)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43707 (_ BitVec 32)) Bool)

(assert (=> b!804120 (= res!548813 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!804121 () Bool)

(declare-fun res!548810 () Bool)

(declare-fun e!445525 () Bool)

(assert (=> b!804121 (=> (not res!548810) (not e!445525))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!804121 (= res!548810 (validKeyInArray!0 k!2044))))

(declare-fun b!804122 () Bool)

(declare-fun res!548811 () Bool)

(assert (=> b!804122 (=> (not res!548811) (not e!445525))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!804122 (= res!548811 (and (= (size!21351 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21351 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21351 a!3170)) (not (= i!1163 j!153))))))

(declare-fun res!548814 () Bool)

(assert (=> start!68966 (=> (not res!548814) (not e!445525))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68966 (= res!548814 (validMask!0 mask!3266))))

(assert (=> start!68966 e!445525))

(assert (=> start!68966 true))

(declare-fun array_inv!16704 (array!43707) Bool)

(assert (=> start!68966 (array_inv!16704 a!3170)))

(declare-fun b!804123 () Bool)

(declare-fun res!548809 () Bool)

(assert (=> b!804123 (=> (not res!548809) (not e!445525))))

(declare-fun arrayContainsKey!0 (array!43707 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!804123 (= res!548809 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!804124 () Bool)

(declare-fun res!548815 () Bool)

(assert (=> b!804124 (=> (not res!548815) (not e!445525))))

(assert (=> b!804124 (= res!548815 (validKeyInArray!0 (select (arr!20930 a!3170) j!153)))))

(declare-fun b!804125 () Bool)

(assert (=> b!804125 (= e!445525 e!445523)))

(declare-fun res!548812 () Bool)

(assert (=> b!804125 (=> (not res!548812) (not e!445523))))

(declare-datatypes ((SeekEntryResult!8528 0))(
  ( (MissingZero!8528 (index!36479 (_ BitVec 32))) (Found!8528 (index!36480 (_ BitVec 32))) (Intermediate!8528 (undefined!9340 Bool) (index!36481 (_ BitVec 32)) (x!67335 (_ BitVec 32))) (Undefined!8528) (MissingVacant!8528 (index!36482 (_ BitVec 32))) )
))
(declare-fun lt!360054 () SeekEntryResult!8528)

(assert (=> b!804125 (= res!548812 (or (= lt!360054 (MissingZero!8528 i!1163)) (= lt!360054 (MissingVacant!8528 i!1163))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43707 (_ BitVec 32)) SeekEntryResult!8528)

(assert (=> b!804125 (= lt!360054 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!804126 () Bool)

(assert (=> b!804126 (= e!445523 false)))

(declare-fun lt!360055 () Bool)

(declare-datatypes ((List!14946 0))(
  ( (Nil!14943) (Cons!14942 (h!16071 (_ BitVec 64)) (t!21269 List!14946)) )
))
(declare-fun arrayNoDuplicates!0 (array!43707 (_ BitVec 32) List!14946) Bool)

(assert (=> b!804126 (= lt!360055 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14943))))

(assert (= (and start!68966 res!548814) b!804122))

(assert (= (and b!804122 res!548811) b!804124))

(assert (= (and b!804124 res!548815) b!804121))

(assert (= (and b!804121 res!548810) b!804123))

(assert (= (and b!804123 res!548809) b!804125))

(assert (= (and b!804125 res!548812) b!804120))

(assert (= (and b!804120 res!548813) b!804126))

(declare-fun m!746113 () Bool)

(assert (=> b!804126 m!746113))

(declare-fun m!746115 () Bool)

(assert (=> b!804123 m!746115))

(declare-fun m!746117 () Bool)

(assert (=> b!804124 m!746117))

(assert (=> b!804124 m!746117))

(declare-fun m!746119 () Bool)

(assert (=> b!804124 m!746119))

(declare-fun m!746121 () Bool)

(assert (=> b!804121 m!746121))

(declare-fun m!746123 () Bool)

(assert (=> start!68966 m!746123))

(declare-fun m!746125 () Bool)

(assert (=> start!68966 m!746125))

(declare-fun m!746127 () Bool)

(assert (=> b!804120 m!746127))

(declare-fun m!746129 () Bool)

(assert (=> b!804125 m!746129))

(push 1)

(assert (not b!804124))

(assert (not b!804126))

(assert (not b!804120))

(assert (not b!804123))

