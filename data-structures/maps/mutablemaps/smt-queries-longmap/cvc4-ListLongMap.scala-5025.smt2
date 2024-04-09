; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68684 () Bool)

(assert start!68684)

(declare-fun b!799111 () Bool)

(declare-fun res!543802 () Bool)

(declare-fun e!443189 () Bool)

(assert (=> b!799111 (=> (not res!543802) (not e!443189))))

(declare-datatypes ((array!43425 0))(
  ( (array!43426 (arr!20789 (Array (_ BitVec 32) (_ BitVec 64))) (size!21210 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43425)

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!43425 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!799111 (= res!543802 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!799112 () Bool)

(declare-fun res!543808 () Bool)

(declare-fun e!443192 () Bool)

(assert (=> b!799112 (=> (not res!543808) (not e!443192))))

(declare-datatypes ((List!14805 0))(
  ( (Nil!14802) (Cons!14801 (h!15930 (_ BitVec 64)) (t!21128 List!14805)) )
))
(declare-fun arrayNoDuplicates!0 (array!43425 (_ BitVec 32) List!14805) Bool)

(assert (=> b!799112 (= res!543808 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14802))))

(declare-fun b!799113 () Bool)

(declare-fun res!543800 () Bool)

(declare-fun e!443190 () Bool)

(assert (=> b!799113 (=> (not res!543800) (not e!443190))))

(declare-fun lt!356835 () array!43425)

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!356839 () (_ BitVec 32))

(declare-fun lt!356837 () (_ BitVec 64))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8387 0))(
  ( (MissingZero!8387 (index!35915 (_ BitVec 32))) (Found!8387 (index!35916 (_ BitVec 32))) (Intermediate!8387 (undefined!9199 Bool) (index!35917 (_ BitVec 32)) (x!66818 (_ BitVec 32))) (Undefined!8387) (MissingVacant!8387 (index!35918 (_ BitVec 32))) )
))
(declare-fun lt!356840 () SeekEntryResult!8387)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43425 (_ BitVec 32)) SeekEntryResult!8387)

(assert (=> b!799113 (= res!543800 (= lt!356840 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!356839 vacantAfter!23 lt!356837 lt!356835 mask!3266)))))

(declare-fun b!799114 () Bool)

(declare-fun res!543804 () Bool)

(assert (=> b!799114 (=> (not res!543804) (not e!443189))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!799114 (= res!543804 (validKeyInArray!0 k!2044))))

(declare-fun b!799115 () Bool)

(assert (=> b!799115 (= e!443190 false)))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun lt!356836 () SeekEntryResult!8387)

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!799115 (= lt!356836 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!356839 vacantBefore!23 (select (arr!20789 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!799116 () Bool)

(assert (=> b!799116 (= e!443189 e!443192)))

(declare-fun res!543806 () Bool)

(assert (=> b!799116 (=> (not res!543806) (not e!443192))))

(declare-fun lt!356838 () SeekEntryResult!8387)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!799116 (= res!543806 (or (= lt!356838 (MissingZero!8387 i!1163)) (= lt!356838 (MissingVacant!8387 i!1163))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43425 (_ BitVec 32)) SeekEntryResult!8387)

(assert (=> b!799116 (= lt!356838 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!799117 () Bool)

(declare-fun e!443191 () Bool)

(declare-fun e!443193 () Bool)

(assert (=> b!799117 (= e!443191 e!443193)))

(declare-fun res!543799 () Bool)

(assert (=> b!799117 (=> (not res!543799) (not e!443193))))

(declare-fun lt!356841 () SeekEntryResult!8387)

(declare-fun lt!356842 () SeekEntryResult!8387)

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!799117 (= res!543799 (and (= lt!356842 lt!356841) (= lt!356841 (Found!8387 j!153)) (not (= (select (arr!20789 a!3170) index!1236) (select (arr!20789 a!3170) j!153)))))))

(assert (=> b!799117 (= lt!356841 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20789 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!799117 (= lt!356842 (seekEntryOrOpen!0 (select (arr!20789 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!799118 () Bool)

(declare-fun res!543810 () Bool)

(assert (=> b!799118 (=> (not res!543810) (not e!443192))))

(assert (=> b!799118 (= res!543810 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21210 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20789 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21210 a!3170)) (= (select (arr!20789 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!799110 () Bool)

(assert (=> b!799110 (= e!443193 e!443190)))

(declare-fun res!543807 () Bool)

(assert (=> b!799110 (=> (not res!543807) (not e!443190))))

(assert (=> b!799110 (= res!543807 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1077) #b01111111111111111111111111111110) (bvsge (bvadd #b00000000000000000000000000000001 x!1077) #b00000000000000000000000000000000) (bvsge lt!356839 #b00000000000000000000000000000000) (bvslt lt!356839 (size!21210 a!3170))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!799110 (= lt!356839 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun res!543805 () Bool)

(assert (=> start!68684 (=> (not res!543805) (not e!443189))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68684 (= res!543805 (validMask!0 mask!3266))))

(assert (=> start!68684 e!443189))

(assert (=> start!68684 true))

(declare-fun array_inv!16563 (array!43425) Bool)

(assert (=> start!68684 (array_inv!16563 a!3170)))

(declare-fun b!799119 () Bool)

(declare-fun res!543801 () Bool)

(assert (=> b!799119 (=> (not res!543801) (not e!443192))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43425 (_ BitVec 32)) Bool)

(assert (=> b!799119 (= res!543801 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!799120 () Bool)

(declare-fun res!543811 () Bool)

(assert (=> b!799120 (=> (not res!543811) (not e!443189))))

(assert (=> b!799120 (= res!543811 (and (= (size!21210 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21210 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21210 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!799121 () Bool)

(assert (=> b!799121 (= e!443192 e!443191)))

(declare-fun res!543809 () Bool)

(assert (=> b!799121 (=> (not res!543809) (not e!443191))))

(assert (=> b!799121 (= res!543809 (= lt!356840 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!356837 lt!356835 mask!3266)))))

(assert (=> b!799121 (= lt!356840 (seekEntryOrOpen!0 lt!356837 lt!356835 mask!3266))))

(assert (=> b!799121 (= lt!356837 (select (store (arr!20789 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!799121 (= lt!356835 (array!43426 (store (arr!20789 a!3170) i!1163 k!2044) (size!21210 a!3170)))))

(declare-fun b!799122 () Bool)

(declare-fun res!543803 () Bool)

(assert (=> b!799122 (=> (not res!543803) (not e!443189))))

(assert (=> b!799122 (= res!543803 (validKeyInArray!0 (select (arr!20789 a!3170) j!153)))))

(assert (= (and start!68684 res!543805) b!799120))

(assert (= (and b!799120 res!543811) b!799122))

(assert (= (and b!799122 res!543803) b!799114))

(assert (= (and b!799114 res!543804) b!799111))

(assert (= (and b!799111 res!543802) b!799116))

(assert (= (and b!799116 res!543806) b!799119))

(assert (= (and b!799119 res!543801) b!799112))

(assert (= (and b!799112 res!543808) b!799118))

(assert (= (and b!799118 res!543810) b!799121))

(assert (= (and b!799121 res!543809) b!799117))

(assert (= (and b!799117 res!543799) b!799110))

(assert (= (and b!799110 res!543807) b!799113))

(assert (= (and b!799113 res!543800) b!799115))

(declare-fun m!740203 () Bool)

(assert (=> b!799117 m!740203))

(declare-fun m!740205 () Bool)

(assert (=> b!799117 m!740205))

(assert (=> b!799117 m!740205))

(declare-fun m!740207 () Bool)

(assert (=> b!799117 m!740207))

(assert (=> b!799117 m!740205))

(declare-fun m!740209 () Bool)

(assert (=> b!799117 m!740209))

(declare-fun m!740211 () Bool)

(assert (=> b!799114 m!740211))

(assert (=> b!799122 m!740205))

(assert (=> b!799122 m!740205))

(declare-fun m!740213 () Bool)

(assert (=> b!799122 m!740213))

(declare-fun m!740215 () Bool)

(assert (=> b!799111 m!740215))

(declare-fun m!740217 () Bool)

(assert (=> b!799118 m!740217))

(declare-fun m!740219 () Bool)

(assert (=> b!799118 m!740219))

(declare-fun m!740221 () Bool)

(assert (=> b!799113 m!740221))

(declare-fun m!740223 () Bool)

(assert (=> start!68684 m!740223))

(declare-fun m!740225 () Bool)

(assert (=> start!68684 m!740225))

(declare-fun m!740227 () Bool)

(assert (=> b!799116 m!740227))

(declare-fun m!740229 () Bool)

(assert (=> b!799112 m!740229))

(assert (=> b!799115 m!740205))

(assert (=> b!799115 m!740205))

(declare-fun m!740231 () Bool)

(assert (=> b!799115 m!740231))

(declare-fun m!740233 () Bool)

(assert (=> b!799121 m!740233))

(declare-fun m!740235 () Bool)

(assert (=> b!799121 m!740235))

(declare-fun m!740237 () Bool)

(assert (=> b!799121 m!740237))

(declare-fun m!740239 () Bool)

(assert (=> b!799121 m!740239))

(declare-fun m!740241 () Bool)

(assert (=> b!799110 m!740241))

(declare-fun m!740243 () Bool)

(assert (=> b!799119 m!740243))

(push 1)

