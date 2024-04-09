; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68734 () Bool)

(assert start!68734)

(declare-fun b!800085 () Bool)

(declare-fun e!443644 () Bool)

(declare-fun e!443641 () Bool)

(assert (=> b!800085 (= e!443644 e!443641)))

(declare-fun res!544783 () Bool)

(assert (=> b!800085 (=> (not res!544783) (not e!443641))))

(declare-datatypes ((SeekEntryResult!8412 0))(
  ( (MissingZero!8412 (index!36015 (_ BitVec 32))) (Found!8412 (index!36016 (_ BitVec 32))) (Intermediate!8412 (undefined!9224 Bool) (index!36017 (_ BitVec 32)) (x!66915 (_ BitVec 32))) (Undefined!8412) (MissingVacant!8412 (index!36018 (_ BitVec 32))) )
))
(declare-fun lt!357437 () SeekEntryResult!8412)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!800085 (= res!544783 (or (= lt!357437 (MissingZero!8412 i!1163)) (= lt!357437 (MissingVacant!8412 i!1163))))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-datatypes ((array!43475 0))(
  ( (array!43476 (arr!20814 (Array (_ BitVec 32) (_ BitVec 64))) (size!21235 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43475)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43475 (_ BitVec 32)) SeekEntryResult!8412)

(assert (=> b!800085 (= lt!357437 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!800086 () Bool)

(declare-fun res!544786 () Bool)

(assert (=> b!800086 (=> (not res!544786) (not e!443644))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!800086 (= res!544786 (validKeyInArray!0 k!2044))))

(declare-fun b!800087 () Bool)

(declare-fun e!443639 () Bool)

(assert (=> b!800087 (= e!443639 false)))

(declare-fun lt!357436 () SeekEntryResult!8412)

(declare-fun lt!357442 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43475 (_ BitVec 32)) SeekEntryResult!8412)

(assert (=> b!800087 (= lt!357436 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!357442 vacantBefore!23 (select (arr!20814 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!800088 () Bool)

(declare-fun res!544780 () Bool)

(assert (=> b!800088 (=> (not res!544780) (not e!443639))))

(declare-fun lt!357438 () SeekEntryResult!8412)

(declare-fun lt!357439 () array!43475)

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun lt!357440 () (_ BitVec 64))

(assert (=> b!800088 (= res!544780 (= lt!357438 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!357442 vacantAfter!23 lt!357440 lt!357439 mask!3266)))))

(declare-fun b!800089 () Bool)

(declare-fun res!544782 () Bool)

(assert (=> b!800089 (=> (not res!544782) (not e!443644))))

(assert (=> b!800089 (= res!544782 (and (= (size!21235 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21235 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21235 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!800090 () Bool)

(declare-fun e!443643 () Bool)

(declare-fun e!443642 () Bool)

(assert (=> b!800090 (= e!443643 e!443642)))

(declare-fun res!544777 () Bool)

(assert (=> b!800090 (=> (not res!544777) (not e!443642))))

(declare-fun lt!357441 () SeekEntryResult!8412)

(declare-fun lt!357435 () SeekEntryResult!8412)

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!800090 (= res!544777 (and (= lt!357435 lt!357441) (= lt!357441 (Found!8412 j!153)) (not (= (select (arr!20814 a!3170) index!1236) (select (arr!20814 a!3170) j!153)))))))

(assert (=> b!800090 (= lt!357441 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20814 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!800090 (= lt!357435 (seekEntryOrOpen!0 (select (arr!20814 a!3170) j!153) a!3170 mask!3266))))

(declare-fun res!544784 () Bool)

(assert (=> start!68734 (=> (not res!544784) (not e!443644))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68734 (= res!544784 (validMask!0 mask!3266))))

(assert (=> start!68734 e!443644))

(assert (=> start!68734 true))

(declare-fun array_inv!16588 (array!43475) Bool)

(assert (=> start!68734 (array_inv!16588 a!3170)))

(declare-fun b!800091 () Bool)

(declare-fun res!544781 () Bool)

(assert (=> b!800091 (=> (not res!544781) (not e!443644))))

(declare-fun arrayContainsKey!0 (array!43475 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!800091 (= res!544781 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!800092 () Bool)

(declare-fun res!544785 () Bool)

(assert (=> b!800092 (=> (not res!544785) (not e!443641))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43475 (_ BitVec 32)) Bool)

(assert (=> b!800092 (= res!544785 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!800093 () Bool)

(declare-fun res!544779 () Bool)

(assert (=> b!800093 (=> (not res!544779) (not e!443644))))

(assert (=> b!800093 (= res!544779 (validKeyInArray!0 (select (arr!20814 a!3170) j!153)))))

(declare-fun b!800094 () Bool)

(declare-fun res!544774 () Bool)

(assert (=> b!800094 (=> (not res!544774) (not e!443641))))

(assert (=> b!800094 (= res!544774 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21235 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20814 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21235 a!3170)) (= (select (arr!20814 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!800095 () Bool)

(assert (=> b!800095 (= e!443641 e!443643)))

(declare-fun res!544778 () Bool)

(assert (=> b!800095 (=> (not res!544778) (not e!443643))))

(assert (=> b!800095 (= res!544778 (= lt!357438 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!357440 lt!357439 mask!3266)))))

(assert (=> b!800095 (= lt!357438 (seekEntryOrOpen!0 lt!357440 lt!357439 mask!3266))))

(assert (=> b!800095 (= lt!357440 (select (store (arr!20814 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!800095 (= lt!357439 (array!43476 (store (arr!20814 a!3170) i!1163 k!2044) (size!21235 a!3170)))))

(declare-fun b!800096 () Bool)

(declare-fun res!544775 () Bool)

(assert (=> b!800096 (=> (not res!544775) (not e!443641))))

(declare-datatypes ((List!14830 0))(
  ( (Nil!14827) (Cons!14826 (h!15955 (_ BitVec 64)) (t!21153 List!14830)) )
))
(declare-fun arrayNoDuplicates!0 (array!43475 (_ BitVec 32) List!14830) Bool)

(assert (=> b!800096 (= res!544775 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14827))))

(declare-fun b!800097 () Bool)

(assert (=> b!800097 (= e!443642 e!443639)))

(declare-fun res!544776 () Bool)

(assert (=> b!800097 (=> (not res!544776) (not e!443639))))

(assert (=> b!800097 (= res!544776 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1077) #b01111111111111111111111111111110) (bvsge (bvadd #b00000000000000000000000000000001 x!1077) #b00000000000000000000000000000000) (bvsge lt!357442 #b00000000000000000000000000000000) (bvslt lt!357442 (size!21235 a!3170))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!800097 (= lt!357442 (nextIndex!0 index!1236 x!1077 mask!3266))))

(assert (= (and start!68734 res!544784) b!800089))

(assert (= (and b!800089 res!544782) b!800093))

(assert (= (and b!800093 res!544779) b!800086))

(assert (= (and b!800086 res!544786) b!800091))

(assert (= (and b!800091 res!544781) b!800085))

(assert (= (and b!800085 res!544783) b!800092))

(assert (= (and b!800092 res!544785) b!800096))

(assert (= (and b!800096 res!544775) b!800094))

(assert (= (and b!800094 res!544774) b!800095))

(assert (= (and b!800095 res!544778) b!800090))

(assert (= (and b!800090 res!544777) b!800097))

(assert (= (and b!800097 res!544776) b!800088))

(assert (= (and b!800088 res!544780) b!800087))

(declare-fun m!741253 () Bool)

(assert (=> start!68734 m!741253))

(declare-fun m!741255 () Bool)

(assert (=> start!68734 m!741255))

(declare-fun m!741257 () Bool)

(assert (=> b!800088 m!741257))

(declare-fun m!741259 () Bool)

(assert (=> b!800092 m!741259))

(declare-fun m!741261 () Bool)

(assert (=> b!800093 m!741261))

(assert (=> b!800093 m!741261))

(declare-fun m!741263 () Bool)

(assert (=> b!800093 m!741263))

(declare-fun m!741265 () Bool)

(assert (=> b!800096 m!741265))

(declare-fun m!741267 () Bool)

(assert (=> b!800097 m!741267))

(declare-fun m!741269 () Bool)

(assert (=> b!800086 m!741269))

(assert (=> b!800087 m!741261))

(assert (=> b!800087 m!741261))

(declare-fun m!741271 () Bool)

(assert (=> b!800087 m!741271))

(declare-fun m!741273 () Bool)

(assert (=> b!800085 m!741273))

(declare-fun m!741275 () Bool)

(assert (=> b!800095 m!741275))

(declare-fun m!741277 () Bool)

(assert (=> b!800095 m!741277))

(declare-fun m!741279 () Bool)

(assert (=> b!800095 m!741279))

(declare-fun m!741281 () Bool)

(assert (=> b!800095 m!741281))

(declare-fun m!741283 () Bool)

(assert (=> b!800090 m!741283))

(assert (=> b!800090 m!741261))

(assert (=> b!800090 m!741261))

(declare-fun m!741285 () Bool)

(assert (=> b!800090 m!741285))

(assert (=> b!800090 m!741261))

(declare-fun m!741287 () Bool)

(assert (=> b!800090 m!741287))

(declare-fun m!741289 () Bool)

(assert (=> b!800094 m!741289))

(declare-fun m!741291 () Bool)

(assert (=> b!800094 m!741291))

(declare-fun m!741293 () Bool)

(assert (=> b!800091 m!741293))

(push 1)

