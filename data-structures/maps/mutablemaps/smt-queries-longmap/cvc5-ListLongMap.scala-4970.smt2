; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68350 () Bool)

(assert start!68350)

(declare-fun b!793696 () Bool)

(declare-fun res!538389 () Bool)

(declare-fun e!440845 () Bool)

(assert (=> b!793696 (=> (not res!538389) (not e!440845))))

(declare-datatypes ((array!43091 0))(
  ( (array!43092 (arr!20622 (Array (_ BitVec 32) (_ BitVec 64))) (size!21043 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43091)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!793696 (= res!538389 (validKeyInArray!0 (select (arr!20622 a!3170) j!153)))))

(declare-fun b!793697 () Bool)

(declare-fun res!538385 () Bool)

(declare-fun e!440843 () Bool)

(assert (=> b!793697 (=> (not res!538385) (not e!440843))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43091 (_ BitVec 32)) Bool)

(assert (=> b!793697 (= res!538385 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!793698 () Bool)

(assert (=> b!793698 (= e!440845 e!440843)))

(declare-fun res!538390 () Bool)

(assert (=> b!793698 (=> (not res!538390) (not e!440843))))

(declare-datatypes ((SeekEntryResult!8220 0))(
  ( (MissingZero!8220 (index!35247 (_ BitVec 32))) (Found!8220 (index!35248 (_ BitVec 32))) (Intermediate!8220 (undefined!9032 Bool) (index!35249 (_ BitVec 32)) (x!66211 (_ BitVec 32))) (Undefined!8220) (MissingVacant!8220 (index!35250 (_ BitVec 32))) )
))
(declare-fun lt!353829 () SeekEntryResult!8220)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!793698 (= res!538390 (or (= lt!353829 (MissingZero!8220 i!1163)) (= lt!353829 (MissingVacant!8220 i!1163))))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43091 (_ BitVec 32)) SeekEntryResult!8220)

(assert (=> b!793698 (= lt!353829 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!793699 () Bool)

(declare-fun res!538388 () Bool)

(assert (=> b!793699 (=> (not res!538388) (not e!440845))))

(assert (=> b!793699 (= res!538388 (validKeyInArray!0 k!2044))))

(declare-fun b!793700 () Bool)

(assert (=> b!793700 (= e!440843 false)))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!353832 () (_ BitVec 64))

(declare-fun lt!353831 () array!43091)

(declare-fun lt!353830 () SeekEntryResult!8220)

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43091 (_ BitVec 32)) SeekEntryResult!8220)

(assert (=> b!793700 (= lt!353830 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!353832 lt!353831 mask!3266))))

(declare-fun lt!353833 () SeekEntryResult!8220)

(assert (=> b!793700 (= lt!353833 (seekEntryOrOpen!0 lt!353832 lt!353831 mask!3266))))

(assert (=> b!793700 (= lt!353832 (select (store (arr!20622 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!793700 (= lt!353831 (array!43092 (store (arr!20622 a!3170) i!1163 k!2044) (size!21043 a!3170)))))

(declare-fun b!793701 () Bool)

(declare-fun res!538393 () Bool)

(assert (=> b!793701 (=> (not res!538393) (not e!440845))))

(declare-fun arrayContainsKey!0 (array!43091 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!793701 (= res!538393 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!793702 () Bool)

(declare-fun res!538387 () Bool)

(assert (=> b!793702 (=> (not res!538387) (not e!440843))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!793702 (= res!538387 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21043 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20622 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21043 a!3170)) (= (select (arr!20622 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!793704 () Bool)

(declare-fun res!538386 () Bool)

(assert (=> b!793704 (=> (not res!538386) (not e!440845))))

(assert (=> b!793704 (= res!538386 (and (= (size!21043 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21043 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21043 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!793703 () Bool)

(declare-fun res!538391 () Bool)

(assert (=> b!793703 (=> (not res!538391) (not e!440843))))

(declare-datatypes ((List!14638 0))(
  ( (Nil!14635) (Cons!14634 (h!15763 (_ BitVec 64)) (t!20961 List!14638)) )
))
(declare-fun arrayNoDuplicates!0 (array!43091 (_ BitVec 32) List!14638) Bool)

(assert (=> b!793703 (= res!538391 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14635))))

(declare-fun res!538392 () Bool)

(assert (=> start!68350 (=> (not res!538392) (not e!440845))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68350 (= res!538392 (validMask!0 mask!3266))))

(assert (=> start!68350 e!440845))

(assert (=> start!68350 true))

(declare-fun array_inv!16396 (array!43091) Bool)

(assert (=> start!68350 (array_inv!16396 a!3170)))

(assert (= (and start!68350 res!538392) b!793704))

(assert (= (and b!793704 res!538386) b!793696))

(assert (= (and b!793696 res!538389) b!793699))

(assert (= (and b!793699 res!538388) b!793701))

(assert (= (and b!793701 res!538393) b!793698))

(assert (= (and b!793698 res!538390) b!793697))

(assert (= (and b!793697 res!538385) b!793703))

(assert (= (and b!793703 res!538391) b!793702))

(assert (= (and b!793702 res!538387) b!793700))

(declare-fun m!734293 () Bool)

(assert (=> b!793701 m!734293))

(declare-fun m!734295 () Bool)

(assert (=> b!793696 m!734295))

(assert (=> b!793696 m!734295))

(declare-fun m!734297 () Bool)

(assert (=> b!793696 m!734297))

(declare-fun m!734299 () Bool)

(assert (=> b!793702 m!734299))

(declare-fun m!734301 () Bool)

(assert (=> b!793702 m!734301))

(declare-fun m!734303 () Bool)

(assert (=> b!793699 m!734303))

(declare-fun m!734305 () Bool)

(assert (=> b!793697 m!734305))

(declare-fun m!734307 () Bool)

(assert (=> b!793698 m!734307))

(declare-fun m!734309 () Bool)

(assert (=> b!793703 m!734309))

(declare-fun m!734311 () Bool)

(assert (=> start!68350 m!734311))

(declare-fun m!734313 () Bool)

(assert (=> start!68350 m!734313))

(declare-fun m!734315 () Bool)

(assert (=> b!793700 m!734315))

(declare-fun m!734317 () Bool)

(assert (=> b!793700 m!734317))

(declare-fun m!734319 () Bool)

(assert (=> b!793700 m!734319))

(declare-fun m!734321 () Bool)

(assert (=> b!793700 m!734321))

(push 1)

