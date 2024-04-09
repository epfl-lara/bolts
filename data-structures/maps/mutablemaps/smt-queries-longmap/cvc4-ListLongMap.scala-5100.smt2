; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69230 () Bool)

(assert start!69230)

(declare-fun b!807140 () Bool)

(declare-fun res!551441 () Bool)

(declare-fun e!446928 () Bool)

(assert (=> b!807140 (=> (not res!551441) (not e!446928))))

(declare-datatypes ((array!43881 0))(
  ( (array!43882 (arr!21014 (Array (_ BitVec 32) (_ BitVec 64))) (size!21435 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43881)

(declare-datatypes ((List!15030 0))(
  ( (Nil!15027) (Cons!15026 (h!16155 (_ BitVec 64)) (t!21353 List!15030)) )
))
(declare-fun arrayNoDuplicates!0 (array!43881 (_ BitVec 32) List!15030) Bool)

(assert (=> b!807140 (= res!551441 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15027))))

(declare-fun b!807141 () Bool)

(declare-fun res!551443 () Bool)

(declare-fun e!446925 () Bool)

(assert (=> b!807141 (=> (not res!551443) (not e!446925))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!807141 (= res!551443 (validKeyInArray!0 k!2044))))

(declare-fun res!551433 () Bool)

(assert (=> start!69230 (=> (not res!551433) (not e!446925))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69230 (= res!551433 (validMask!0 mask!3266))))

(assert (=> start!69230 e!446925))

(assert (=> start!69230 true))

(declare-fun array_inv!16788 (array!43881) Bool)

(assert (=> start!69230 (array_inv!16788 a!3170)))

(declare-fun b!807142 () Bool)

(assert (=> b!807142 (= e!446925 e!446928)))

(declare-fun res!551438 () Bool)

(assert (=> b!807142 (=> (not res!551438) (not e!446928))))

(declare-datatypes ((SeekEntryResult!8612 0))(
  ( (MissingZero!8612 (index!36815 (_ BitVec 32))) (Found!8612 (index!36816 (_ BitVec 32))) (Intermediate!8612 (undefined!9424 Bool) (index!36817 (_ BitVec 32)) (x!67649 (_ BitVec 32))) (Undefined!8612) (MissingVacant!8612 (index!36818 (_ BitVec 32))) )
))
(declare-fun lt!361603 () SeekEntryResult!8612)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!807142 (= res!551438 (or (= lt!361603 (MissingZero!8612 i!1163)) (= lt!361603 (MissingVacant!8612 i!1163))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43881 (_ BitVec 32)) SeekEntryResult!8612)

(assert (=> b!807142 (= lt!361603 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!807143 () Bool)

(declare-fun e!446926 () Bool)

(assert (=> b!807143 (= e!446928 e!446926)))

(declare-fun res!551439 () Bool)

(assert (=> b!807143 (=> (not res!551439) (not e!446926))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!361604 () (_ BitVec 64))

(declare-fun lt!361606 () array!43881)

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43881 (_ BitVec 32)) SeekEntryResult!8612)

(assert (=> b!807143 (= res!551439 (= (seekEntryOrOpen!0 lt!361604 lt!361606 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!361604 lt!361606 mask!3266)))))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!807143 (= lt!361604 (select (store (arr!21014 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!807143 (= lt!361606 (array!43882 (store (arr!21014 a!3170) i!1163 k!2044) (size!21435 a!3170)))))

(declare-fun b!807144 () Bool)

(declare-fun res!551437 () Bool)

(assert (=> b!807144 (=> (not res!551437) (not e!446928))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43881 (_ BitVec 32)) Bool)

(assert (=> b!807144 (= res!551437 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!807145 () Bool)

(declare-fun res!551436 () Bool)

(assert (=> b!807145 (=> (not res!551436) (not e!446925))))

(declare-fun arrayContainsKey!0 (array!43881 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!807145 (= res!551436 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!807146 () Bool)

(declare-fun e!446927 () Bool)

(assert (=> b!807146 (= e!446927 false)))

(declare-fun lt!361605 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!807146 (= lt!361605 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!807147 () Bool)

(declare-fun res!551442 () Bool)

(assert (=> b!807147 (=> (not res!551442) (not e!446928))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!807147 (= res!551442 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21435 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!21014 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21435 a!3170)) (= (select (arr!21014 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!807148 () Bool)

(declare-fun res!551440 () Bool)

(assert (=> b!807148 (=> (not res!551440) (not e!446925))))

(assert (=> b!807148 (= res!551440 (validKeyInArray!0 (select (arr!21014 a!3170) j!153)))))

(declare-fun b!807149 () Bool)

(assert (=> b!807149 (= e!446926 e!446927)))

(declare-fun res!551435 () Bool)

(assert (=> b!807149 (=> (not res!551435) (not e!446927))))

(declare-fun lt!361602 () SeekEntryResult!8612)

(declare-fun lt!361601 () SeekEntryResult!8612)

(assert (=> b!807149 (= res!551435 (and (= lt!361602 lt!361601) (= lt!361601 (Found!8612 j!153)) (not (= (select (arr!21014 a!3170) index!1236) (select (arr!21014 a!3170) j!153)))))))

(assert (=> b!807149 (= lt!361601 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21014 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!807149 (= lt!361602 (seekEntryOrOpen!0 (select (arr!21014 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!807150 () Bool)

(declare-fun res!551434 () Bool)

(assert (=> b!807150 (=> (not res!551434) (not e!446925))))

(assert (=> b!807150 (= res!551434 (and (= (size!21435 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21435 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21435 a!3170)) (not (= i!1163 j!153))))))

(assert (= (and start!69230 res!551433) b!807150))

(assert (= (and b!807150 res!551434) b!807148))

(assert (= (and b!807148 res!551440) b!807141))

(assert (= (and b!807141 res!551443) b!807145))

(assert (= (and b!807145 res!551436) b!807142))

(assert (= (and b!807142 res!551438) b!807144))

(assert (= (and b!807144 res!551437) b!807140))

(assert (= (and b!807140 res!551441) b!807147))

(assert (= (and b!807147 res!551442) b!807143))

(assert (= (and b!807143 res!551439) b!807149))

(assert (= (and b!807149 res!551435) b!807146))

(declare-fun m!749249 () Bool)

(assert (=> b!807145 m!749249))

(declare-fun m!749251 () Bool)

(assert (=> b!807144 m!749251))

(declare-fun m!749253 () Bool)

(assert (=> b!807140 m!749253))

(declare-fun m!749255 () Bool)

(assert (=> b!807142 m!749255))

(declare-fun m!749257 () Bool)

(assert (=> b!807146 m!749257))

(declare-fun m!749259 () Bool)

(assert (=> start!69230 m!749259))

(declare-fun m!749261 () Bool)

(assert (=> start!69230 m!749261))

(declare-fun m!749263 () Bool)

(assert (=> b!807143 m!749263))

(declare-fun m!749265 () Bool)

(assert (=> b!807143 m!749265))

(declare-fun m!749267 () Bool)

(assert (=> b!807143 m!749267))

(declare-fun m!749269 () Bool)

(assert (=> b!807143 m!749269))

(declare-fun m!749271 () Bool)

(assert (=> b!807147 m!749271))

(declare-fun m!749273 () Bool)

(assert (=> b!807147 m!749273))

(declare-fun m!749275 () Bool)

(assert (=> b!807149 m!749275))

(declare-fun m!749277 () Bool)

(assert (=> b!807149 m!749277))

(assert (=> b!807149 m!749277))

(declare-fun m!749279 () Bool)

(assert (=> b!807149 m!749279))

(assert (=> b!807149 m!749277))

(declare-fun m!749281 () Bool)

(assert (=> b!807149 m!749281))

(assert (=> b!807148 m!749277))

(assert (=> b!807148 m!749277))

(declare-fun m!749283 () Bool)

(assert (=> b!807148 m!749283))

(declare-fun m!749285 () Bool)

(assert (=> b!807141 m!749285))

(push 1)

