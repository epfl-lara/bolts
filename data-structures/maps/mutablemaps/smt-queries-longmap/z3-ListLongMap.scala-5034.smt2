; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68736 () Bool)

(assert start!68736)

(declare-fun b!800124 () Bool)

(declare-fun e!443659 () Bool)

(declare-fun e!443657 () Bool)

(assert (=> b!800124 (= e!443659 e!443657)))

(declare-fun res!544821 () Bool)

(assert (=> b!800124 (=> (not res!544821) (not e!443657))))

(declare-datatypes ((array!43477 0))(
  ( (array!43478 (arr!20815 (Array (_ BitVec 32) (_ BitVec 64))) (size!21236 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43477)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8413 0))(
  ( (MissingZero!8413 (index!36019 (_ BitVec 32))) (Found!8413 (index!36020 (_ BitVec 32))) (Intermediate!8413 (undefined!9225 Bool) (index!36021 (_ BitVec 32)) (x!66916 (_ BitVec 32))) (Undefined!8413) (MissingVacant!8413 (index!36022 (_ BitVec 32))) )
))
(declare-fun lt!357461 () SeekEntryResult!8413)

(declare-fun lt!357465 () SeekEntryResult!8413)

(assert (=> b!800124 (= res!544821 (and (= lt!357461 lt!357465) (= lt!357465 (Found!8413 j!153)) (not (= (select (arr!20815 a!3170) index!1236) (select (arr!20815 a!3170) j!153)))))))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43477 (_ BitVec 32)) SeekEntryResult!8413)

(assert (=> b!800124 (= lt!357465 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20815 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43477 (_ BitVec 32)) SeekEntryResult!8413)

(assert (=> b!800124 (= lt!357461 (seekEntryOrOpen!0 (select (arr!20815 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!800125 () Bool)

(declare-fun res!544815 () Bool)

(declare-fun e!443662 () Bool)

(assert (=> b!800125 (=> (not res!544815) (not e!443662))))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!800125 (= res!544815 (and (= (size!21236 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21236 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21236 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!800126 () Bool)

(declare-fun res!544824 () Bool)

(assert (=> b!800126 (=> (not res!544824) (not e!443662))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!43477 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!800126 (= res!544824 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!800127 () Bool)

(declare-fun res!544820 () Bool)

(assert (=> b!800127 (=> (not res!544820) (not e!443662))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!800127 (= res!544820 (validKeyInArray!0 k0!2044))))

(declare-fun b!800128 () Bool)

(declare-fun res!544813 () Bool)

(declare-fun e!443658 () Bool)

(assert (=> b!800128 (=> (not res!544813) (not e!443658))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43477 (_ BitVec 32)) Bool)

(assert (=> b!800128 (= res!544813 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!800129 () Bool)

(declare-fun e!443660 () Bool)

(assert (=> b!800129 (= e!443660 false)))

(declare-fun lt!357463 () (_ BitVec 32))

(declare-fun lt!357460 () SeekEntryResult!8413)

(assert (=> b!800129 (= lt!357460 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!357463 vacantBefore!23 (select (arr!20815 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!800130 () Bool)

(assert (=> b!800130 (= e!443662 e!443658)))

(declare-fun res!544823 () Bool)

(assert (=> b!800130 (=> (not res!544823) (not e!443658))))

(declare-fun lt!357459 () SeekEntryResult!8413)

(assert (=> b!800130 (= res!544823 (or (= lt!357459 (MissingZero!8413 i!1163)) (= lt!357459 (MissingVacant!8413 i!1163))))))

(assert (=> b!800130 (= lt!357459 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!800131 () Bool)

(declare-fun res!544817 () Bool)

(assert (=> b!800131 (=> (not res!544817) (not e!443662))))

(assert (=> b!800131 (= res!544817 (validKeyInArray!0 (select (arr!20815 a!3170) j!153)))))

(declare-fun b!800133 () Bool)

(declare-fun res!544814 () Bool)

(assert (=> b!800133 (=> (not res!544814) (not e!443658))))

(declare-datatypes ((List!14831 0))(
  ( (Nil!14828) (Cons!14827 (h!15956 (_ BitVec 64)) (t!21154 List!14831)) )
))
(declare-fun arrayNoDuplicates!0 (array!43477 (_ BitVec 32) List!14831) Bool)

(assert (=> b!800133 (= res!544814 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14828))))

(declare-fun b!800134 () Bool)

(assert (=> b!800134 (= e!443658 e!443659)))

(declare-fun res!544819 () Bool)

(assert (=> b!800134 (=> (not res!544819) (not e!443659))))

(declare-fun lt!357466 () array!43477)

(declare-fun lt!357464 () SeekEntryResult!8413)

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun lt!357462 () (_ BitVec 64))

(assert (=> b!800134 (= res!544819 (= lt!357464 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!357462 lt!357466 mask!3266)))))

(assert (=> b!800134 (= lt!357464 (seekEntryOrOpen!0 lt!357462 lt!357466 mask!3266))))

(assert (=> b!800134 (= lt!357462 (select (store (arr!20815 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!800134 (= lt!357466 (array!43478 (store (arr!20815 a!3170) i!1163 k0!2044) (size!21236 a!3170)))))

(declare-fun b!800135 () Bool)

(declare-fun res!544818 () Bool)

(assert (=> b!800135 (=> (not res!544818) (not e!443658))))

(assert (=> b!800135 (= res!544818 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21236 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20815 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21236 a!3170)) (= (select (arr!20815 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!800136 () Bool)

(assert (=> b!800136 (= e!443657 e!443660)))

(declare-fun res!544816 () Bool)

(assert (=> b!800136 (=> (not res!544816) (not e!443660))))

(assert (=> b!800136 (= res!544816 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1077) #b01111111111111111111111111111110) (bvsge (bvadd #b00000000000000000000000000000001 x!1077) #b00000000000000000000000000000000) (bvsge lt!357463 #b00000000000000000000000000000000) (bvslt lt!357463 (size!21236 a!3170))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!800136 (= lt!357463 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!800132 () Bool)

(declare-fun res!544822 () Bool)

(assert (=> b!800132 (=> (not res!544822) (not e!443660))))

(assert (=> b!800132 (= res!544822 (= lt!357464 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!357463 vacantAfter!23 lt!357462 lt!357466 mask!3266)))))

(declare-fun res!544825 () Bool)

(assert (=> start!68736 (=> (not res!544825) (not e!443662))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68736 (= res!544825 (validMask!0 mask!3266))))

(assert (=> start!68736 e!443662))

(assert (=> start!68736 true))

(declare-fun array_inv!16589 (array!43477) Bool)

(assert (=> start!68736 (array_inv!16589 a!3170)))

(assert (= (and start!68736 res!544825) b!800125))

(assert (= (and b!800125 res!544815) b!800131))

(assert (= (and b!800131 res!544817) b!800127))

(assert (= (and b!800127 res!544820) b!800126))

(assert (= (and b!800126 res!544824) b!800130))

(assert (= (and b!800130 res!544823) b!800128))

(assert (= (and b!800128 res!544813) b!800133))

(assert (= (and b!800133 res!544814) b!800135))

(assert (= (and b!800135 res!544818) b!800134))

(assert (= (and b!800134 res!544819) b!800124))

(assert (= (and b!800124 res!544821) b!800136))

(assert (= (and b!800136 res!544816) b!800132))

(assert (= (and b!800132 res!544822) b!800129))

(declare-fun m!741295 () Bool)

(assert (=> b!800129 m!741295))

(assert (=> b!800129 m!741295))

(declare-fun m!741297 () Bool)

(assert (=> b!800129 m!741297))

(declare-fun m!741299 () Bool)

(assert (=> start!68736 m!741299))

(declare-fun m!741301 () Bool)

(assert (=> start!68736 m!741301))

(declare-fun m!741303 () Bool)

(assert (=> b!800130 m!741303))

(declare-fun m!741305 () Bool)

(assert (=> b!800126 m!741305))

(declare-fun m!741307 () Bool)

(assert (=> b!800134 m!741307))

(declare-fun m!741309 () Bool)

(assert (=> b!800134 m!741309))

(declare-fun m!741311 () Bool)

(assert (=> b!800134 m!741311))

(declare-fun m!741313 () Bool)

(assert (=> b!800134 m!741313))

(declare-fun m!741315 () Bool)

(assert (=> b!800136 m!741315))

(declare-fun m!741317 () Bool)

(assert (=> b!800135 m!741317))

(declare-fun m!741319 () Bool)

(assert (=> b!800135 m!741319))

(declare-fun m!741321 () Bool)

(assert (=> b!800133 m!741321))

(declare-fun m!741323 () Bool)

(assert (=> b!800128 m!741323))

(assert (=> b!800131 m!741295))

(assert (=> b!800131 m!741295))

(declare-fun m!741325 () Bool)

(assert (=> b!800131 m!741325))

(declare-fun m!741327 () Bool)

(assert (=> b!800132 m!741327))

(declare-fun m!741329 () Bool)

(assert (=> b!800127 m!741329))

(declare-fun m!741331 () Bool)

(assert (=> b!800124 m!741331))

(assert (=> b!800124 m!741295))

(assert (=> b!800124 m!741295))

(declare-fun m!741333 () Bool)

(assert (=> b!800124 m!741333))

(assert (=> b!800124 m!741295))

(declare-fun m!741335 () Bool)

(assert (=> b!800124 m!741335))

(check-sat (not b!800133) (not b!800128) (not b!800130) (not start!68736) (not b!800126) (not b!800129) (not b!800136) (not b!800131) (not b!800134) (not b!800132) (not b!800127) (not b!800124))
(check-sat)
