; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68630 () Bool)

(assert start!68630)

(declare-fun b!798185 () Bool)

(declare-fun res!542883 () Bool)

(declare-fun e!442787 () Bool)

(assert (=> b!798185 (=> (not res!542883) (not e!442787))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!798185 (= res!542883 (validKeyInArray!0 k!2044))))

(declare-fun res!542881 () Bool)

(assert (=> start!68630 (=> (not res!542881) (not e!442787))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68630 (= res!542881 (validMask!0 mask!3266))))

(assert (=> start!68630 e!442787))

(assert (=> start!68630 true))

(declare-datatypes ((array!43371 0))(
  ( (array!43372 (arr!20762 (Array (_ BitVec 32) (_ BitVec 64))) (size!21183 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43371)

(declare-fun array_inv!16536 (array!43371) Bool)

(assert (=> start!68630 (array_inv!16536 a!3170)))

(declare-fun b!798186 () Bool)

(declare-fun e!442785 () Bool)

(declare-fun e!442786 () Bool)

(assert (=> b!798186 (= e!442785 e!442786)))

(declare-fun res!542884 () Bool)

(assert (=> b!798186 (=> (not res!542884) (not e!442786))))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8360 0))(
  ( (MissingZero!8360 (index!35807 (_ BitVec 32))) (Found!8360 (index!35808 (_ BitVec 32))) (Intermediate!8360 (undefined!9172 Bool) (index!35809 (_ BitVec 32)) (x!66719 (_ BitVec 32))) (Undefined!8360) (MissingVacant!8360 (index!35810 (_ BitVec 32))) )
))
(declare-fun lt!356309 () SeekEntryResult!8360)

(declare-fun lt!356305 () SeekEntryResult!8360)

(assert (=> b!798186 (= res!542884 (and (= lt!356309 lt!356305) (= lt!356305 (Found!8360 j!153)) (= (select (arr!20762 a!3170) index!1236) (select (arr!20762 a!3170) j!153))))))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43371 (_ BitVec 32)) SeekEntryResult!8360)

(assert (=> b!798186 (= lt!356305 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20762 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43371 (_ BitVec 32)) SeekEntryResult!8360)

(assert (=> b!798186 (= lt!356309 (seekEntryOrOpen!0 (select (arr!20762 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!798187 () Bool)

(declare-fun res!542874 () Bool)

(declare-fun e!442788 () Bool)

(assert (=> b!798187 (=> (not res!542874) (not e!442788))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43371 (_ BitVec 32)) Bool)

(assert (=> b!798187 (= res!542874 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!798188 () Bool)

(assert (=> b!798188 (= e!442787 e!442788)))

(declare-fun res!542879 () Bool)

(assert (=> b!798188 (=> (not res!542879) (not e!442788))))

(declare-fun lt!356310 () SeekEntryResult!8360)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!798188 (= res!542879 (or (= lt!356310 (MissingZero!8360 i!1163)) (= lt!356310 (MissingVacant!8360 i!1163))))))

(assert (=> b!798188 (= lt!356310 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!798189 () Bool)

(assert (=> b!798189 (= e!442786 (not true))))

(declare-fun lt!356311 () SeekEntryResult!8360)

(assert (=> b!798189 (= lt!356311 (Found!8360 index!1236))))

(declare-fun b!798190 () Bool)

(declare-fun res!542877 () Bool)

(assert (=> b!798190 (=> (not res!542877) (not e!442787))))

(assert (=> b!798190 (= res!542877 (validKeyInArray!0 (select (arr!20762 a!3170) j!153)))))

(declare-fun b!798191 () Bool)

(declare-fun res!542876 () Bool)

(assert (=> b!798191 (=> (not res!542876) (not e!442787))))

(declare-fun arrayContainsKey!0 (array!43371 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!798191 (= res!542876 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!798192 () Bool)

(declare-fun res!542875 () Bool)

(assert (=> b!798192 (=> (not res!542875) (not e!442788))))

(declare-datatypes ((List!14778 0))(
  ( (Nil!14775) (Cons!14774 (h!15903 (_ BitVec 64)) (t!21101 List!14778)) )
))
(declare-fun arrayNoDuplicates!0 (array!43371 (_ BitVec 32) List!14778) Bool)

(assert (=> b!798192 (= res!542875 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14775))))

(declare-fun b!798193 () Bool)

(assert (=> b!798193 (= e!442788 e!442785)))

(declare-fun res!542878 () Bool)

(assert (=> b!798193 (=> (not res!542878) (not e!442785))))

(declare-fun lt!356308 () SeekEntryResult!8360)

(assert (=> b!798193 (= res!542878 (= lt!356308 lt!356311))))

(declare-fun lt!356306 () (_ BitVec 64))

(declare-fun lt!356307 () array!43371)

(declare-fun vacantAfter!23 () (_ BitVec 32))

(assert (=> b!798193 (= lt!356311 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!356306 lt!356307 mask!3266))))

(assert (=> b!798193 (= lt!356308 (seekEntryOrOpen!0 lt!356306 lt!356307 mask!3266))))

(assert (=> b!798193 (= lt!356306 (select (store (arr!20762 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!798193 (= lt!356307 (array!43372 (store (arr!20762 a!3170) i!1163 k!2044) (size!21183 a!3170)))))

(declare-fun b!798194 () Bool)

(declare-fun res!542882 () Bool)

(assert (=> b!798194 (=> (not res!542882) (not e!442788))))

(assert (=> b!798194 (= res!542882 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21183 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20762 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21183 a!3170)) (= (select (arr!20762 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!798195 () Bool)

(declare-fun res!542880 () Bool)

(assert (=> b!798195 (=> (not res!542880) (not e!442787))))

(assert (=> b!798195 (= res!542880 (and (= (size!21183 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21183 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21183 a!3170)) (not (= i!1163 j!153))))))

(assert (= (and start!68630 res!542881) b!798195))

(assert (= (and b!798195 res!542880) b!798190))

(assert (= (and b!798190 res!542877) b!798185))

(assert (= (and b!798185 res!542883) b!798191))

(assert (= (and b!798191 res!542876) b!798188))

(assert (= (and b!798188 res!542879) b!798187))

(assert (= (and b!798187 res!542874) b!798192))

(assert (= (and b!798192 res!542875) b!798194))

(assert (= (and b!798194 res!542882) b!798193))

(assert (= (and b!798193 res!542878) b!798186))

(assert (= (and b!798186 res!542884) b!798189))

(declare-fun m!739177 () Bool)

(assert (=> b!798185 m!739177))

(declare-fun m!739179 () Bool)

(assert (=> b!798193 m!739179))

(declare-fun m!739181 () Bool)

(assert (=> b!798193 m!739181))

(declare-fun m!739183 () Bool)

(assert (=> b!798193 m!739183))

(declare-fun m!739185 () Bool)

(assert (=> b!798193 m!739185))

(declare-fun m!739187 () Bool)

(assert (=> b!798186 m!739187))

(declare-fun m!739189 () Bool)

(assert (=> b!798186 m!739189))

(assert (=> b!798186 m!739189))

(declare-fun m!739191 () Bool)

(assert (=> b!798186 m!739191))

(assert (=> b!798186 m!739189))

(declare-fun m!739193 () Bool)

(assert (=> b!798186 m!739193))

(assert (=> b!798190 m!739189))

(assert (=> b!798190 m!739189))

(declare-fun m!739195 () Bool)

(assert (=> b!798190 m!739195))

(declare-fun m!739197 () Bool)

(assert (=> b!798191 m!739197))

(declare-fun m!739199 () Bool)

(assert (=> start!68630 m!739199))

(declare-fun m!739201 () Bool)

(assert (=> start!68630 m!739201))

(declare-fun m!739203 () Bool)

(assert (=> b!798192 m!739203))

(declare-fun m!739205 () Bool)

(assert (=> b!798188 m!739205))

(declare-fun m!739207 () Bool)

(assert (=> b!798187 m!739207))

(declare-fun m!739209 () Bool)

(assert (=> b!798194 m!739209))

(declare-fun m!739211 () Bool)

(assert (=> b!798194 m!739211))

(push 1)

