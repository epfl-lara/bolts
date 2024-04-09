; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69038 () Bool)

(assert start!69038)

(declare-fun b!805044 () Bool)

(declare-fun res!549737 () Bool)

(declare-fun e!445894 () Bool)

(assert (=> b!805044 (=> (not res!549737) (not e!445894))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!805044 (= res!549737 (validKeyInArray!0 k!2044))))

(declare-fun b!805045 () Bool)

(declare-fun e!445892 () Bool)

(declare-fun e!445891 () Bool)

(assert (=> b!805045 (= e!445892 e!445891)))

(declare-fun res!549734 () Bool)

(assert (=> b!805045 (=> (not res!549734) (not e!445891))))

(declare-fun lt!360456 () (_ BitVec 64))

(declare-fun x!1077 () (_ BitVec 32))

(declare-datatypes ((array!43779 0))(
  ( (array!43780 (arr!20966 (Array (_ BitVec 32) (_ BitVec 64))) (size!21387 (_ BitVec 32))) )
))
(declare-fun lt!360459 () array!43779)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8564 0))(
  ( (MissingZero!8564 (index!36623 (_ BitVec 32))) (Found!8564 (index!36624 (_ BitVec 32))) (Intermediate!8564 (undefined!9376 Bool) (index!36625 (_ BitVec 32)) (x!67467 (_ BitVec 32))) (Undefined!8564) (MissingVacant!8564 (index!36626 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43779 (_ BitVec 32)) SeekEntryResult!8564)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43779 (_ BitVec 32)) SeekEntryResult!8564)

(assert (=> b!805045 (= res!549734 (= (seekEntryOrOpen!0 lt!360456 lt!360459 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!360456 lt!360459 mask!3266)))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun a!3170 () array!43779)

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!805045 (= lt!360456 (select (store (arr!20966 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!805045 (= lt!360459 (array!43780 (store (arr!20966 a!3170) i!1163 k!2044) (size!21387 a!3170)))))

(declare-fun res!549740 () Bool)

(assert (=> start!69038 (=> (not res!549740) (not e!445894))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69038 (= res!549740 (validMask!0 mask!3266))))

(assert (=> start!69038 e!445894))

(assert (=> start!69038 true))

(declare-fun array_inv!16740 (array!43779) Bool)

(assert (=> start!69038 (array_inv!16740 a!3170)))

(declare-fun b!805046 () Bool)

(assert (=> b!805046 (= e!445894 e!445892)))

(declare-fun res!549742 () Bool)

(assert (=> b!805046 (=> (not res!549742) (not e!445892))))

(declare-fun lt!360457 () SeekEntryResult!8564)

(assert (=> b!805046 (= res!549742 (or (= lt!360457 (MissingZero!8564 i!1163)) (= lt!360457 (MissingVacant!8564 i!1163))))))

(assert (=> b!805046 (= lt!360457 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!805047 () Bool)

(declare-fun res!549735 () Bool)

(assert (=> b!805047 (=> (not res!549735) (not e!445892))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43779 (_ BitVec 32)) Bool)

(assert (=> b!805047 (= res!549735 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!805048 () Bool)

(declare-fun res!549741 () Bool)

(assert (=> b!805048 (=> (not res!549741) (not e!445892))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!805048 (= res!549741 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21387 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20966 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21387 a!3170)) (= (select (arr!20966 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!805049 () Bool)

(assert (=> b!805049 (= e!445891 false)))

(declare-fun lt!360458 () SeekEntryResult!8564)

(assert (=> b!805049 (= lt!360458 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20966 a!3170) j!153) a!3170 mask!3266))))

(declare-fun lt!360460 () SeekEntryResult!8564)

(assert (=> b!805049 (= lt!360460 (seekEntryOrOpen!0 (select (arr!20966 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!805050 () Bool)

(declare-fun res!549733 () Bool)

(assert (=> b!805050 (=> (not res!549733) (not e!445894))))

(declare-fun arrayContainsKey!0 (array!43779 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!805050 (= res!549733 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!805051 () Bool)

(declare-fun res!549736 () Bool)

(assert (=> b!805051 (=> (not res!549736) (not e!445894))))

(assert (=> b!805051 (= res!549736 (validKeyInArray!0 (select (arr!20966 a!3170) j!153)))))

(declare-fun b!805052 () Bool)

(declare-fun res!549738 () Bool)

(assert (=> b!805052 (=> (not res!549738) (not e!445894))))

(assert (=> b!805052 (= res!549738 (and (= (size!21387 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21387 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21387 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!805053 () Bool)

(declare-fun res!549739 () Bool)

(assert (=> b!805053 (=> (not res!549739) (not e!445892))))

(declare-datatypes ((List!14982 0))(
  ( (Nil!14979) (Cons!14978 (h!16107 (_ BitVec 64)) (t!21305 List!14982)) )
))
(declare-fun arrayNoDuplicates!0 (array!43779 (_ BitVec 32) List!14982) Bool)

(assert (=> b!805053 (= res!549739 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14979))))

(assert (= (and start!69038 res!549740) b!805052))

(assert (= (and b!805052 res!549738) b!805051))

(assert (= (and b!805051 res!549736) b!805044))

(assert (= (and b!805044 res!549737) b!805050))

(assert (= (and b!805050 res!549733) b!805046))

(assert (= (and b!805046 res!549742) b!805047))

(assert (= (and b!805047 res!549735) b!805053))

(assert (= (and b!805053 res!549739) b!805048))

(assert (= (and b!805048 res!549741) b!805045))

(assert (= (and b!805045 res!549734) b!805049))

(declare-fun m!747057 () Bool)

(assert (=> b!805053 m!747057))

(declare-fun m!747059 () Bool)

(assert (=> b!805050 m!747059))

(declare-fun m!747061 () Bool)

(assert (=> b!805051 m!747061))

(assert (=> b!805051 m!747061))

(declare-fun m!747063 () Bool)

(assert (=> b!805051 m!747063))

(assert (=> b!805049 m!747061))

(assert (=> b!805049 m!747061))

(declare-fun m!747065 () Bool)

(assert (=> b!805049 m!747065))

(assert (=> b!805049 m!747061))

(declare-fun m!747067 () Bool)

(assert (=> b!805049 m!747067))

(declare-fun m!747069 () Bool)

(assert (=> b!805046 m!747069))

(declare-fun m!747071 () Bool)

(assert (=> b!805044 m!747071))

(declare-fun m!747073 () Bool)

(assert (=> start!69038 m!747073))

(declare-fun m!747075 () Bool)

(assert (=> start!69038 m!747075))

(declare-fun m!747077 () Bool)

(assert (=> b!805045 m!747077))

(declare-fun m!747079 () Bool)

(assert (=> b!805045 m!747079))

(declare-fun m!747081 () Bool)

(assert (=> b!805045 m!747081))

(declare-fun m!747083 () Bool)

(assert (=> b!805045 m!747083))

(declare-fun m!747085 () Bool)

(assert (=> b!805048 m!747085))

(declare-fun m!747087 () Bool)

(assert (=> b!805048 m!747087))

(declare-fun m!747089 () Bool)

(assert (=> b!805047 m!747089))

(push 1)

(assert (not b!805049))

(assert (not b!805047))

(assert (not b!805045))

(assert (not b!805046))

