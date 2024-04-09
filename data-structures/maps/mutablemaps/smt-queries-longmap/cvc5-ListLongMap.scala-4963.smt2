; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68308 () Bool)

(assert start!68308)

(declare-fun res!537828 () Bool)

(declare-fun e!440647 () Bool)

(assert (=> start!68308 (=> (not res!537828) (not e!440647))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68308 (= res!537828 (validMask!0 mask!3266))))

(assert (=> start!68308 e!440647))

(assert (=> start!68308 true))

(declare-datatypes ((array!43049 0))(
  ( (array!43050 (arr!20601 (Array (_ BitVec 32) (_ BitVec 64))) (size!21022 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43049)

(declare-fun array_inv!16375 (array!43049) Bool)

(assert (=> start!68308 (array_inv!16375 a!3170)))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun e!440645 () Bool)

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun b!793136 () Bool)

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!793136 (= e!440645 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21022 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20601 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21022 a!3170)) (= (select (arr!20601 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23)) (bvsge mask!3266 #b00000000000000000000000000000000) (bvslt index!1236 (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge vacantAfter!23 (bvadd #b00000000000000000000000000000001 mask!3266))))))

(declare-fun b!793137 () Bool)

(declare-fun res!537830 () Bool)

(assert (=> b!793137 (=> (not res!537830) (not e!440647))))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!793137 (= res!537830 (and (= (size!21022 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21022 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21022 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!793138 () Bool)

(assert (=> b!793138 (= e!440647 e!440645)))

(declare-fun res!537832 () Bool)

(assert (=> b!793138 (=> (not res!537832) (not e!440645))))

(declare-datatypes ((SeekEntryResult!8199 0))(
  ( (MissingZero!8199 (index!35163 (_ BitVec 32))) (Found!8199 (index!35164 (_ BitVec 32))) (Intermediate!8199 (undefined!9011 Bool) (index!35165 (_ BitVec 32)) (x!66134 (_ BitVec 32))) (Undefined!8199) (MissingVacant!8199 (index!35166 (_ BitVec 32))) )
))
(declare-fun lt!353632 () SeekEntryResult!8199)

(assert (=> b!793138 (= res!537832 (or (= lt!353632 (MissingZero!8199 i!1163)) (= lt!353632 (MissingVacant!8199 i!1163))))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43049 (_ BitVec 32)) SeekEntryResult!8199)

(assert (=> b!793138 (= lt!353632 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!793139 () Bool)

(declare-fun res!537825 () Bool)

(assert (=> b!793139 (=> (not res!537825) (not e!440645))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43049 (_ BitVec 32)) Bool)

(assert (=> b!793139 (= res!537825 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!793140 () Bool)

(declare-fun res!537826 () Bool)

(assert (=> b!793140 (=> (not res!537826) (not e!440647))))

(declare-fun arrayContainsKey!0 (array!43049 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!793140 (= res!537826 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!793141 () Bool)

(declare-fun res!537827 () Bool)

(assert (=> b!793141 (=> (not res!537827) (not e!440647))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!793141 (= res!537827 (validKeyInArray!0 (select (arr!20601 a!3170) j!153)))))

(declare-fun b!793142 () Bool)

(declare-fun res!537831 () Bool)

(assert (=> b!793142 (=> (not res!537831) (not e!440647))))

(assert (=> b!793142 (= res!537831 (validKeyInArray!0 k!2044))))

(declare-fun b!793143 () Bool)

(declare-fun res!537829 () Bool)

(assert (=> b!793143 (=> (not res!537829) (not e!440645))))

(declare-datatypes ((List!14617 0))(
  ( (Nil!14614) (Cons!14613 (h!15742 (_ BitVec 64)) (t!20940 List!14617)) )
))
(declare-fun arrayNoDuplicates!0 (array!43049 (_ BitVec 32) List!14617) Bool)

(assert (=> b!793143 (= res!537829 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14614))))

(assert (= (and start!68308 res!537828) b!793137))

(assert (= (and b!793137 res!537830) b!793141))

(assert (= (and b!793141 res!537827) b!793142))

(assert (= (and b!793142 res!537831) b!793140))

(assert (= (and b!793140 res!537826) b!793138))

(assert (= (and b!793138 res!537832) b!793139))

(assert (= (and b!793139 res!537825) b!793143))

(assert (= (and b!793143 res!537829) b!793136))

(declare-fun m!733699 () Bool)

(assert (=> b!793140 m!733699))

(declare-fun m!733701 () Bool)

(assert (=> b!793142 m!733701))

(declare-fun m!733703 () Bool)

(assert (=> b!793136 m!733703))

(declare-fun m!733705 () Bool)

(assert (=> b!793136 m!733705))

(declare-fun m!733707 () Bool)

(assert (=> b!793139 m!733707))

(declare-fun m!733709 () Bool)

(assert (=> b!793138 m!733709))

(declare-fun m!733711 () Bool)

(assert (=> b!793141 m!733711))

(assert (=> b!793141 m!733711))

(declare-fun m!733713 () Bool)

(assert (=> b!793141 m!733713))

(declare-fun m!733715 () Bool)

(assert (=> start!68308 m!733715))

(declare-fun m!733717 () Bool)

(assert (=> start!68308 m!733717))

(declare-fun m!733719 () Bool)

(assert (=> b!793143 m!733719))

(push 1)

(assert (not b!793140))

(assert (not b!793142))

(assert (not b!793143))

(assert (not start!68308))

(assert (not b!793138))

(assert (not b!793139))

(assert (not b!793141))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

