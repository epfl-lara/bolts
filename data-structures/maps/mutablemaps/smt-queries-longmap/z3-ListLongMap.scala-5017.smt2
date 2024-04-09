; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68634 () Bool)

(assert start!68634)

(declare-fun b!798251 () Bool)

(declare-fun res!542944 () Bool)

(declare-fun e!442815 () Bool)

(assert (=> b!798251 (=> (not res!542944) (not e!442815))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-datatypes ((array!43375 0))(
  ( (array!43376 (arr!20764 (Array (_ BitVec 32) (_ BitVec 64))) (size!21185 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43375)

(assert (=> b!798251 (= res!542944 (and (= (size!21185 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21185 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21185 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!798252 () Bool)

(declare-fun res!542942 () Bool)

(declare-fun e!442816 () Bool)

(assert (=> b!798252 (=> (not res!542942) (not e!442816))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!798252 (= res!542942 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21185 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20764 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21185 a!3170)) (= (select (arr!20764 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!798253 () Bool)

(declare-fun e!442818 () Bool)

(assert (=> b!798253 (= e!442816 e!442818)))

(declare-fun res!542946 () Bool)

(assert (=> b!798253 (=> (not res!542946) (not e!442818))))

(declare-datatypes ((SeekEntryResult!8362 0))(
  ( (MissingZero!8362 (index!35815 (_ BitVec 32))) (Found!8362 (index!35816 (_ BitVec 32))) (Intermediate!8362 (undefined!9174 Bool) (index!35817 (_ BitVec 32)) (x!66729 (_ BitVec 32))) (Undefined!8362) (MissingVacant!8362 (index!35818 (_ BitVec 32))) )
))
(declare-fun lt!356353 () SeekEntryResult!8362)

(declare-fun lt!356352 () SeekEntryResult!8362)

(assert (=> b!798253 (= res!542946 (= lt!356353 lt!356352))))

(declare-fun lt!356348 () array!43375)

(declare-fun lt!356350 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43375 (_ BitVec 32)) SeekEntryResult!8362)

(assert (=> b!798253 (= lt!356352 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!356350 lt!356348 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43375 (_ BitVec 32)) SeekEntryResult!8362)

(assert (=> b!798253 (= lt!356353 (seekEntryOrOpen!0 lt!356350 lt!356348 mask!3266))))

(declare-fun k0!2044 () (_ BitVec 64))

(assert (=> b!798253 (= lt!356350 (select (store (arr!20764 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!798253 (= lt!356348 (array!43376 (store (arr!20764 a!3170) i!1163 k0!2044) (size!21185 a!3170)))))

(declare-fun b!798254 () Bool)

(declare-fun e!442819 () Bool)

(assert (=> b!798254 (= e!442819 (not true))))

(assert (=> b!798254 (= lt!356352 (Found!8362 index!1236))))

(declare-fun b!798255 () Bool)

(declare-fun res!542948 () Bool)

(assert (=> b!798255 (=> (not res!542948) (not e!442816))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43375 (_ BitVec 32)) Bool)

(assert (=> b!798255 (= res!542948 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun res!542945 () Bool)

(assert (=> start!68634 (=> (not res!542945) (not e!442815))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68634 (= res!542945 (validMask!0 mask!3266))))

(assert (=> start!68634 e!442815))

(assert (=> start!68634 true))

(declare-fun array_inv!16538 (array!43375) Bool)

(assert (=> start!68634 (array_inv!16538 a!3170)))

(declare-fun b!798256 () Bool)

(declare-fun res!542947 () Bool)

(assert (=> b!798256 (=> (not res!542947) (not e!442815))))

(declare-fun arrayContainsKey!0 (array!43375 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!798256 (= res!542947 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!798257 () Bool)

(assert (=> b!798257 (= e!442818 e!442819)))

(declare-fun res!542943 () Bool)

(assert (=> b!798257 (=> (not res!542943) (not e!442819))))

(declare-fun lt!356347 () SeekEntryResult!8362)

(declare-fun lt!356351 () SeekEntryResult!8362)

(assert (=> b!798257 (= res!542943 (and (= lt!356351 lt!356347) (= lt!356347 (Found!8362 j!153)) (= (select (arr!20764 a!3170) index!1236) (select (arr!20764 a!3170) j!153))))))

(assert (=> b!798257 (= lt!356347 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20764 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!798257 (= lt!356351 (seekEntryOrOpen!0 (select (arr!20764 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!798258 () Bool)

(declare-fun res!542949 () Bool)

(assert (=> b!798258 (=> (not res!542949) (not e!442815))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!798258 (= res!542949 (validKeyInArray!0 k0!2044))))

(declare-fun b!798259 () Bool)

(declare-fun res!542940 () Bool)

(assert (=> b!798259 (=> (not res!542940) (not e!442816))))

(declare-datatypes ((List!14780 0))(
  ( (Nil!14777) (Cons!14776 (h!15905 (_ BitVec 64)) (t!21103 List!14780)) )
))
(declare-fun arrayNoDuplicates!0 (array!43375 (_ BitVec 32) List!14780) Bool)

(assert (=> b!798259 (= res!542940 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14777))))

(declare-fun b!798260 () Bool)

(declare-fun res!542950 () Bool)

(assert (=> b!798260 (=> (not res!542950) (not e!442815))))

(assert (=> b!798260 (= res!542950 (validKeyInArray!0 (select (arr!20764 a!3170) j!153)))))

(declare-fun b!798261 () Bool)

(assert (=> b!798261 (= e!442815 e!442816)))

(declare-fun res!542941 () Bool)

(assert (=> b!798261 (=> (not res!542941) (not e!442816))))

(declare-fun lt!356349 () SeekEntryResult!8362)

(assert (=> b!798261 (= res!542941 (or (= lt!356349 (MissingZero!8362 i!1163)) (= lt!356349 (MissingVacant!8362 i!1163))))))

(assert (=> b!798261 (= lt!356349 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(assert (= (and start!68634 res!542945) b!798251))

(assert (= (and b!798251 res!542944) b!798260))

(assert (= (and b!798260 res!542950) b!798258))

(assert (= (and b!798258 res!542949) b!798256))

(assert (= (and b!798256 res!542947) b!798261))

(assert (= (and b!798261 res!542941) b!798255))

(assert (= (and b!798255 res!542948) b!798259))

(assert (= (and b!798259 res!542940) b!798252))

(assert (= (and b!798252 res!542942) b!798253))

(assert (= (and b!798253 res!542946) b!798257))

(assert (= (and b!798257 res!542943) b!798254))

(declare-fun m!739249 () Bool)

(assert (=> b!798258 m!739249))

(declare-fun m!739251 () Bool)

(assert (=> b!798255 m!739251))

(declare-fun m!739253 () Bool)

(assert (=> b!798259 m!739253))

(declare-fun m!739255 () Bool)

(assert (=> b!798252 m!739255))

(declare-fun m!739257 () Bool)

(assert (=> b!798252 m!739257))

(declare-fun m!739259 () Bool)

(assert (=> b!798261 m!739259))

(declare-fun m!739261 () Bool)

(assert (=> b!798253 m!739261))

(declare-fun m!739263 () Bool)

(assert (=> b!798253 m!739263))

(declare-fun m!739265 () Bool)

(assert (=> b!798253 m!739265))

(declare-fun m!739267 () Bool)

(assert (=> b!798253 m!739267))

(declare-fun m!739269 () Bool)

(assert (=> b!798256 m!739269))

(declare-fun m!739271 () Bool)

(assert (=> b!798257 m!739271))

(declare-fun m!739273 () Bool)

(assert (=> b!798257 m!739273))

(assert (=> b!798257 m!739273))

(declare-fun m!739275 () Bool)

(assert (=> b!798257 m!739275))

(assert (=> b!798257 m!739273))

(declare-fun m!739277 () Bool)

(assert (=> b!798257 m!739277))

(declare-fun m!739279 () Bool)

(assert (=> start!68634 m!739279))

(declare-fun m!739281 () Bool)

(assert (=> start!68634 m!739281))

(assert (=> b!798260 m!739273))

(assert (=> b!798260 m!739273))

(declare-fun m!739283 () Bool)

(assert (=> b!798260 m!739283))

(check-sat (not b!798261) (not b!798259) (not b!798257) (not b!798255) (not b!798256) (not b!798253) (not start!68634) (not b!798258) (not b!798260))
(check-sat)
