; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68688 () Bool)

(assert start!68688)

(declare-fun b!799188 () Bool)

(declare-fun res!543882 () Bool)

(declare-fun e!443228 () Bool)

(assert (=> b!799188 (=> (not res!543882) (not e!443228))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!799188 (= res!543882 (validKeyInArray!0 k0!2044))))

(declare-fun b!799189 () Bool)

(declare-fun e!443230 () Bool)

(assert (=> b!799189 (= e!443230 false)))

(declare-fun lt!356886 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-datatypes ((array!43429 0))(
  ( (array!43430 (arr!20791 (Array (_ BitVec 32) (_ BitVec 64))) (size!21212 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43429)

(declare-datatypes ((SeekEntryResult!8389 0))(
  ( (MissingZero!8389 (index!35923 (_ BitVec 32))) (Found!8389 (index!35924 (_ BitVec 32))) (Intermediate!8389 (undefined!9201 Bool) (index!35925 (_ BitVec 32)) (x!66828 (_ BitVec 32))) (Undefined!8389) (MissingVacant!8389 (index!35926 (_ BitVec 32))) )
))
(declare-fun lt!356888 () SeekEntryResult!8389)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43429 (_ BitVec 32)) SeekEntryResult!8389)

(assert (=> b!799189 (= lt!356888 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!356886 vacantBefore!23 (select (arr!20791 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!799190 () Bool)

(declare-fun res!543888 () Bool)

(declare-fun e!443227 () Bool)

(assert (=> b!799190 (=> (not res!543888) (not e!443227))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43429 (_ BitVec 32)) Bool)

(assert (=> b!799190 (= res!543888 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!799191 () Bool)

(declare-fun res!543886 () Bool)

(assert (=> b!799191 (=> (not res!543886) (not e!443227))))

(declare-datatypes ((List!14807 0))(
  ( (Nil!14804) (Cons!14803 (h!15932 (_ BitVec 64)) (t!21130 List!14807)) )
))
(declare-fun arrayNoDuplicates!0 (array!43429 (_ BitVec 32) List!14807) Bool)

(assert (=> b!799191 (= res!543886 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14804))))

(declare-fun res!543887 () Bool)

(assert (=> start!68688 (=> (not res!543887) (not e!443228))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68688 (= res!543887 (validMask!0 mask!3266))))

(assert (=> start!68688 e!443228))

(assert (=> start!68688 true))

(declare-fun array_inv!16565 (array!43429) Bool)

(assert (=> start!68688 (array_inv!16565 a!3170)))

(declare-fun b!799192 () Bool)

(declare-fun e!443225 () Bool)

(declare-fun e!443229 () Bool)

(assert (=> b!799192 (= e!443225 e!443229)))

(declare-fun res!543884 () Bool)

(assert (=> b!799192 (=> (not res!543884) (not e!443229))))

(declare-fun lt!356887 () SeekEntryResult!8389)

(declare-fun lt!356890 () SeekEntryResult!8389)

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!799192 (= res!543884 (and (= lt!356887 lt!356890) (= lt!356890 (Found!8389 j!153)) (not (= (select (arr!20791 a!3170) index!1236) (select (arr!20791 a!3170) j!153)))))))

(assert (=> b!799192 (= lt!356890 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20791 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43429 (_ BitVec 32)) SeekEntryResult!8389)

(assert (=> b!799192 (= lt!356887 (seekEntryOrOpen!0 (select (arr!20791 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!799193 () Bool)

(declare-fun res!543883 () Bool)

(assert (=> b!799193 (=> (not res!543883) (not e!443228))))

(assert (=> b!799193 (= res!543883 (validKeyInArray!0 (select (arr!20791 a!3170) j!153)))))

(declare-fun b!799194 () Bool)

(declare-fun res!543880 () Bool)

(assert (=> b!799194 (=> (not res!543880) (not e!443228))))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!799194 (= res!543880 (and (= (size!21212 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21212 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21212 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!799195 () Bool)

(declare-fun res!543879 () Bool)

(assert (=> b!799195 (=> (not res!543879) (not e!443227))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(assert (=> b!799195 (= res!543879 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21212 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20791 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21212 a!3170)) (= (select (arr!20791 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!799196 () Bool)

(assert (=> b!799196 (= e!443229 e!443230)))

(declare-fun res!543889 () Bool)

(assert (=> b!799196 (=> (not res!543889) (not e!443230))))

(assert (=> b!799196 (= res!543889 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1077) #b01111111111111111111111111111110) (bvsge (bvadd #b00000000000000000000000000000001 x!1077) #b00000000000000000000000000000000) (bvsge lt!356886 #b00000000000000000000000000000000) (bvslt lt!356886 (size!21212 a!3170))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!799196 (= lt!356886 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!799197 () Bool)

(declare-fun res!543881 () Bool)

(assert (=> b!799197 (=> (not res!543881) (not e!443230))))

(declare-fun lt!356884 () array!43429)

(declare-fun lt!356885 () SeekEntryResult!8389)

(declare-fun lt!356889 () (_ BitVec 64))

(assert (=> b!799197 (= res!543881 (= lt!356885 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!356886 vacantAfter!23 lt!356889 lt!356884 mask!3266)))))

(declare-fun b!799198 () Bool)

(assert (=> b!799198 (= e!443228 e!443227)))

(declare-fun res!543878 () Bool)

(assert (=> b!799198 (=> (not res!543878) (not e!443227))))

(declare-fun lt!356883 () SeekEntryResult!8389)

(assert (=> b!799198 (= res!543878 (or (= lt!356883 (MissingZero!8389 i!1163)) (= lt!356883 (MissingVacant!8389 i!1163))))))

(assert (=> b!799198 (= lt!356883 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!799199 () Bool)

(assert (=> b!799199 (= e!443227 e!443225)))

(declare-fun res!543885 () Bool)

(assert (=> b!799199 (=> (not res!543885) (not e!443225))))

(assert (=> b!799199 (= res!543885 (= lt!356885 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!356889 lt!356884 mask!3266)))))

(assert (=> b!799199 (= lt!356885 (seekEntryOrOpen!0 lt!356889 lt!356884 mask!3266))))

(assert (=> b!799199 (= lt!356889 (select (store (arr!20791 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!799199 (= lt!356884 (array!43430 (store (arr!20791 a!3170) i!1163 k0!2044) (size!21212 a!3170)))))

(declare-fun b!799200 () Bool)

(declare-fun res!543877 () Bool)

(assert (=> b!799200 (=> (not res!543877) (not e!443228))))

(declare-fun arrayContainsKey!0 (array!43429 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!799200 (= res!543877 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(assert (= (and start!68688 res!543887) b!799194))

(assert (= (and b!799194 res!543880) b!799193))

(assert (= (and b!799193 res!543883) b!799188))

(assert (= (and b!799188 res!543882) b!799200))

(assert (= (and b!799200 res!543877) b!799198))

(assert (= (and b!799198 res!543878) b!799190))

(assert (= (and b!799190 res!543888) b!799191))

(assert (= (and b!799191 res!543886) b!799195))

(assert (= (and b!799195 res!543879) b!799199))

(assert (= (and b!799199 res!543885) b!799192))

(assert (= (and b!799192 res!543884) b!799196))

(assert (= (and b!799196 res!543889) b!799197))

(assert (= (and b!799197 res!543881) b!799189))

(declare-fun m!740287 () Bool)

(assert (=> b!799196 m!740287))

(declare-fun m!740289 () Bool)

(assert (=> b!799188 m!740289))

(declare-fun m!740291 () Bool)

(assert (=> b!799193 m!740291))

(assert (=> b!799193 m!740291))

(declare-fun m!740293 () Bool)

(assert (=> b!799193 m!740293))

(declare-fun m!740295 () Bool)

(assert (=> b!799191 m!740295))

(declare-fun m!740297 () Bool)

(assert (=> b!799199 m!740297))

(declare-fun m!740299 () Bool)

(assert (=> b!799199 m!740299))

(declare-fun m!740301 () Bool)

(assert (=> b!799199 m!740301))

(declare-fun m!740303 () Bool)

(assert (=> b!799199 m!740303))

(assert (=> b!799189 m!740291))

(assert (=> b!799189 m!740291))

(declare-fun m!740305 () Bool)

(assert (=> b!799189 m!740305))

(declare-fun m!740307 () Bool)

(assert (=> b!799197 m!740307))

(declare-fun m!740309 () Bool)

(assert (=> start!68688 m!740309))

(declare-fun m!740311 () Bool)

(assert (=> start!68688 m!740311))

(declare-fun m!740313 () Bool)

(assert (=> b!799192 m!740313))

(assert (=> b!799192 m!740291))

(assert (=> b!799192 m!740291))

(declare-fun m!740315 () Bool)

(assert (=> b!799192 m!740315))

(assert (=> b!799192 m!740291))

(declare-fun m!740317 () Bool)

(assert (=> b!799192 m!740317))

(declare-fun m!740319 () Bool)

(assert (=> b!799198 m!740319))

(declare-fun m!740321 () Bool)

(assert (=> b!799200 m!740321))

(declare-fun m!740323 () Bool)

(assert (=> b!799195 m!740323))

(declare-fun m!740325 () Bool)

(assert (=> b!799195 m!740325))

(declare-fun m!740327 () Bool)

(assert (=> b!799190 m!740327))

(check-sat (not b!799192) (not b!799190) (not b!799198) (not b!799191) (not b!799196) (not b!799199) (not b!799188) (not b!799189) (not b!799200) (not b!799193) (not start!68688) (not b!799197))
(check-sat)
