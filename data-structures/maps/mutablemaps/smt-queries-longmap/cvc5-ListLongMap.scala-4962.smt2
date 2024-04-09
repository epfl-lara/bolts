; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68302 () Bool)

(assert start!68302)

(declare-fun b!793071 () Bool)

(declare-fun e!440619 () Bool)

(declare-fun e!440618 () Bool)

(assert (=> b!793071 (= e!440619 e!440618)))

(declare-fun res!537764 () Bool)

(assert (=> b!793071 (=> (not res!537764) (not e!440618))))

(declare-datatypes ((SeekEntryResult!8196 0))(
  ( (MissingZero!8196 (index!35151 (_ BitVec 32))) (Found!8196 (index!35152 (_ BitVec 32))) (Intermediate!8196 (undefined!9008 Bool) (index!35153 (_ BitVec 32)) (x!66123 (_ BitVec 32))) (Undefined!8196) (MissingVacant!8196 (index!35154 (_ BitVec 32))) )
))
(declare-fun lt!353617 () SeekEntryResult!8196)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!793071 (= res!537764 (or (= lt!353617 (MissingZero!8196 i!1163)) (= lt!353617 (MissingVacant!8196 i!1163))))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-datatypes ((array!43043 0))(
  ( (array!43044 (arr!20598 (Array (_ BitVec 32) (_ BitVec 64))) (size!21019 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43043)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43043 (_ BitVec 32)) SeekEntryResult!8196)

(assert (=> b!793071 (= lt!353617 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!793072 () Bool)

(assert (=> b!793072 (= e!440618 false)))

(declare-fun lt!353616 () Bool)

(declare-datatypes ((List!14614 0))(
  ( (Nil!14611) (Cons!14610 (h!15739 (_ BitVec 64)) (t!20937 List!14614)) )
))
(declare-fun arrayNoDuplicates!0 (array!43043 (_ BitVec 32) List!14614) Bool)

(assert (=> b!793072 (= lt!353616 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14611))))

(declare-fun b!793073 () Bool)

(declare-fun res!537763 () Bool)

(assert (=> b!793073 (=> (not res!537763) (not e!440618))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43043 (_ BitVec 32)) Bool)

(assert (=> b!793073 (= res!537763 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun res!537766 () Bool)

(assert (=> start!68302 (=> (not res!537766) (not e!440619))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68302 (= res!537766 (validMask!0 mask!3266))))

(assert (=> start!68302 e!440619))

(assert (=> start!68302 true))

(declare-fun array_inv!16372 (array!43043) Bool)

(assert (=> start!68302 (array_inv!16372 a!3170)))

(declare-fun b!793074 () Bool)

(declare-fun res!537760 () Bool)

(assert (=> b!793074 (=> (not res!537760) (not e!440619))))

(declare-fun arrayContainsKey!0 (array!43043 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!793074 (= res!537760 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!793075 () Bool)

(declare-fun res!537762 () Bool)

(assert (=> b!793075 (=> (not res!537762) (not e!440619))))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!793075 (= res!537762 (validKeyInArray!0 (select (arr!20598 a!3170) j!153)))))

(declare-fun b!793076 () Bool)

(declare-fun res!537761 () Bool)

(assert (=> b!793076 (=> (not res!537761) (not e!440619))))

(assert (=> b!793076 (= res!537761 (and (= (size!21019 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21019 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21019 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!793077 () Bool)

(declare-fun res!537765 () Bool)

(assert (=> b!793077 (=> (not res!537765) (not e!440619))))

(assert (=> b!793077 (= res!537765 (validKeyInArray!0 k!2044))))

(assert (= (and start!68302 res!537766) b!793076))

(assert (= (and b!793076 res!537761) b!793075))

(assert (= (and b!793075 res!537762) b!793077))

(assert (= (and b!793077 res!537765) b!793074))

(assert (= (and b!793074 res!537760) b!793071))

(assert (= (and b!793071 res!537764) b!793073))

(assert (= (and b!793073 res!537763) b!793072))

(declare-fun m!733645 () Bool)

(assert (=> b!793074 m!733645))

(declare-fun m!733647 () Bool)

(assert (=> b!793072 m!733647))

(declare-fun m!733649 () Bool)

(assert (=> b!793071 m!733649))

(declare-fun m!733651 () Bool)

(assert (=> b!793075 m!733651))

(assert (=> b!793075 m!733651))

(declare-fun m!733653 () Bool)

(assert (=> b!793075 m!733653))

(declare-fun m!733655 () Bool)

(assert (=> start!68302 m!733655))

(declare-fun m!733657 () Bool)

(assert (=> start!68302 m!733657))

(declare-fun m!733659 () Bool)

(assert (=> b!793077 m!733659))

(declare-fun m!733661 () Bool)

(assert (=> b!793073 m!733661))

(push 1)

