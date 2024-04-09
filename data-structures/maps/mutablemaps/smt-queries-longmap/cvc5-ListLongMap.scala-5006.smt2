; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68566 () Bool)

(assert start!68566)

(declare-fun b!797066 () Bool)

(declare-fun e!442245 () Bool)

(declare-fun e!442244 () Bool)

(assert (=> b!797066 (= e!442245 e!442244)))

(declare-fun res!541757 () Bool)

(assert (=> b!797066 (=> (not res!541757) (not e!442244))))

(declare-datatypes ((SeekEntryResult!8328 0))(
  ( (MissingZero!8328 (index!35679 (_ BitVec 32))) (Found!8328 (index!35680 (_ BitVec 32))) (Intermediate!8328 (undefined!9140 Bool) (index!35681 (_ BitVec 32)) (x!66607 (_ BitVec 32))) (Undefined!8328) (MissingVacant!8328 (index!35682 (_ BitVec 32))) )
))
(declare-fun lt!355582 () SeekEntryResult!8328)

(declare-fun lt!355581 () SeekEntryResult!8328)

(declare-datatypes ((array!43307 0))(
  ( (array!43308 (arr!20730 (Array (_ BitVec 32) (_ BitVec 64))) (size!21151 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43307)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!797066 (= res!541757 (and (= lt!355581 lt!355582) (= lt!355582 (Found!8328 j!153)) (= (select (arr!20730 a!3170) index!1236) (select (arr!20730 a!3170) j!153))))))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43307 (_ BitVec 32)) SeekEntryResult!8328)

(assert (=> b!797066 (= lt!355582 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20730 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43307 (_ BitVec 32)) SeekEntryResult!8328)

(assert (=> b!797066 (= lt!355581 (seekEntryOrOpen!0 (select (arr!20730 a!3170) j!153) a!3170 mask!3266))))

(declare-fun res!541762 () Bool)

(declare-fun e!442243 () Bool)

(assert (=> start!68566 (=> (not res!541762) (not e!442243))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68566 (= res!541762 (validMask!0 mask!3266))))

(assert (=> start!68566 e!442243))

(assert (=> start!68566 true))

(declare-fun array_inv!16504 (array!43307) Bool)

(assert (=> start!68566 (array_inv!16504 a!3170)))

(declare-fun b!797067 () Bool)

(declare-fun res!541764 () Bool)

(assert (=> b!797067 (=> (not res!541764) (not e!442243))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!43307 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!797067 (= res!541764 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!797068 () Bool)

(declare-fun e!442246 () Bool)

(assert (=> b!797068 (= e!442243 e!442246)))

(declare-fun res!541765 () Bool)

(assert (=> b!797068 (=> (not res!541765) (not e!442246))))

(declare-fun lt!355583 () SeekEntryResult!8328)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!797068 (= res!541765 (or (= lt!355583 (MissingZero!8328 i!1163)) (= lt!355583 (MissingVacant!8328 i!1163))))))

(assert (=> b!797068 (= lt!355583 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!797069 () Bool)

(declare-fun res!541756 () Bool)

(assert (=> b!797069 (=> (not res!541756) (not e!442246))))

(declare-datatypes ((List!14746 0))(
  ( (Nil!14743) (Cons!14742 (h!15871 (_ BitVec 64)) (t!21069 List!14746)) )
))
(declare-fun arrayNoDuplicates!0 (array!43307 (_ BitVec 32) List!14746) Bool)

(assert (=> b!797069 (= res!541756 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14743))))

(declare-fun b!797070 () Bool)

(declare-fun res!541755 () Bool)

(assert (=> b!797070 (=> (not res!541755) (not e!442243))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!797070 (= res!541755 (validKeyInArray!0 (select (arr!20730 a!3170) j!153)))))

(declare-fun b!797071 () Bool)

(assert (=> b!797071 (= e!442244 (not true))))

(declare-fun lt!355580 () SeekEntryResult!8328)

(assert (=> b!797071 (= lt!355580 (Found!8328 index!1236))))

(declare-fun b!797072 () Bool)

(declare-fun res!541763 () Bool)

(assert (=> b!797072 (=> (not res!541763) (not e!442246))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(assert (=> b!797072 (= res!541763 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21151 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20730 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21151 a!3170)) (= (select (arr!20730 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!797073 () Bool)

(declare-fun res!541759 () Bool)

(assert (=> b!797073 (=> (not res!541759) (not e!442243))))

(assert (=> b!797073 (= res!541759 (validKeyInArray!0 k!2044))))

(declare-fun b!797074 () Bool)

(assert (=> b!797074 (= e!442246 e!442245)))

(declare-fun res!541761 () Bool)

(assert (=> b!797074 (=> (not res!541761) (not e!442245))))

(declare-fun lt!355585 () SeekEntryResult!8328)

(assert (=> b!797074 (= res!541761 (= lt!355585 lt!355580))))

(declare-fun lt!355579 () array!43307)

(declare-fun lt!355584 () (_ BitVec 64))

(assert (=> b!797074 (= lt!355580 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!355584 lt!355579 mask!3266))))

(assert (=> b!797074 (= lt!355585 (seekEntryOrOpen!0 lt!355584 lt!355579 mask!3266))))

(assert (=> b!797074 (= lt!355584 (select (store (arr!20730 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!797074 (= lt!355579 (array!43308 (store (arr!20730 a!3170) i!1163 k!2044) (size!21151 a!3170)))))

(declare-fun b!797075 () Bool)

(declare-fun res!541760 () Bool)

(assert (=> b!797075 (=> (not res!541760) (not e!442246))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43307 (_ BitVec 32)) Bool)

(assert (=> b!797075 (= res!541760 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!797076 () Bool)

(declare-fun res!541758 () Bool)

(assert (=> b!797076 (=> (not res!541758) (not e!442243))))

(assert (=> b!797076 (= res!541758 (and (= (size!21151 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21151 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21151 a!3170)) (not (= i!1163 j!153))))))

(assert (= (and start!68566 res!541762) b!797076))

(assert (= (and b!797076 res!541758) b!797070))

(assert (= (and b!797070 res!541755) b!797073))

(assert (= (and b!797073 res!541759) b!797067))

(assert (= (and b!797067 res!541764) b!797068))

(assert (= (and b!797068 res!541765) b!797075))

(assert (= (and b!797075 res!541760) b!797069))

(assert (= (and b!797069 res!541756) b!797072))

(assert (= (and b!797072 res!541763) b!797074))

(assert (= (and b!797074 res!541761) b!797066))

(assert (= (and b!797066 res!541757) b!797071))

(declare-fun m!738007 () Bool)

(assert (=> b!797069 m!738007))

(declare-fun m!738009 () Bool)

(assert (=> b!797067 m!738009))

(declare-fun m!738011 () Bool)

(assert (=> b!797072 m!738011))

(declare-fun m!738013 () Bool)

(assert (=> b!797072 m!738013))

(declare-fun m!738015 () Bool)

(assert (=> b!797073 m!738015))

(declare-fun m!738017 () Bool)

(assert (=> start!68566 m!738017))

(declare-fun m!738019 () Bool)

(assert (=> start!68566 m!738019))

(declare-fun m!738021 () Bool)

(assert (=> b!797068 m!738021))

(declare-fun m!738023 () Bool)

(assert (=> b!797075 m!738023))

(declare-fun m!738025 () Bool)

(assert (=> b!797070 m!738025))

(assert (=> b!797070 m!738025))

(declare-fun m!738027 () Bool)

(assert (=> b!797070 m!738027))

(declare-fun m!738029 () Bool)

(assert (=> b!797066 m!738029))

(assert (=> b!797066 m!738025))

(assert (=> b!797066 m!738025))

(declare-fun m!738031 () Bool)

(assert (=> b!797066 m!738031))

(assert (=> b!797066 m!738025))

(declare-fun m!738033 () Bool)

(assert (=> b!797066 m!738033))

(declare-fun m!738035 () Bool)

(assert (=> b!797074 m!738035))

(declare-fun m!738037 () Bool)

(assert (=> b!797074 m!738037))

(declare-fun m!738039 () Bool)

(assert (=> b!797074 m!738039))

(declare-fun m!738041 () Bool)

(assert (=> b!797074 m!738041))

(push 1)

