; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!69444 () Bool)

(assert start!69444)

(declare-fun b!809416 () Bool)

(declare-fun res!553317 () Bool)

(declare-fun e!448049 () Bool)

(assert (=> b!809416 (=> (not res!553317) (not e!448049))))

(declare-datatypes ((array!43993 0))(
  ( (array!43994 (arr!21067 (Array (_ BitVec 32) (_ BitVec 64))) (size!21488 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43993)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!809416 (= res!553317 (validKeyInArray!0 (select (arr!21067 a!3170) j!153)))))

(declare-fun b!809418 () Bool)

(declare-fun res!553323 () Bool)

(assert (=> b!809418 (=> (not res!553323) (not e!448049))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(assert (=> b!809418 (= res!553323 (and (= (size!21488 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21488 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21488 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!809419 () Bool)

(declare-fun e!448054 () Bool)

(assert (=> b!809419 (= e!448049 e!448054)))

(declare-fun res!553321 () Bool)

(assert (=> b!809419 (=> (not res!553321) (not e!448054))))

(declare-datatypes ((SeekEntryResult!8665 0))(
  ( (MissingZero!8665 (index!37027 (_ BitVec 32))) (Found!8665 (index!37028 (_ BitVec 32))) (Intermediate!8665 (undefined!9477 Bool) (index!37029 (_ BitVec 32)) (x!67858 (_ BitVec 32))) (Undefined!8665) (MissingVacant!8665 (index!37030 (_ BitVec 32))) )
))
(declare-fun lt!362770 () SeekEntryResult!8665)

(assert (=> b!809419 (= res!553321 (or (= lt!362770 (MissingZero!8665 i!1163)) (= lt!362770 (MissingVacant!8665 i!1163))))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43993 (_ BitVec 32)) SeekEntryResult!8665)

(assert (=> b!809419 (= lt!362770 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!809420 () Bool)

(declare-fun res!553315 () Bool)

(assert (=> b!809420 (=> (not res!553315) (not e!448049))))

(assert (=> b!809420 (= res!553315 (validKeyInArray!0 k0!2044))))

(declare-fun b!809421 () Bool)

(declare-fun e!448053 () Bool)

(assert (=> b!809421 (= e!448054 e!448053)))

(declare-fun res!553319 () Bool)

(assert (=> b!809421 (=> (not res!553319) (not e!448053))))

(declare-fun lt!362774 () array!43993)

(declare-fun lt!362772 () (_ BitVec 64))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!362775 () SeekEntryResult!8665)

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43993 (_ BitVec 32)) SeekEntryResult!8665)

(assert (=> b!809421 (= res!553319 (= lt!362775 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!362772 lt!362774 mask!3266)))))

(assert (=> b!809421 (= lt!362775 (seekEntryOrOpen!0 lt!362772 lt!362774 mask!3266))))

(assert (=> b!809421 (= lt!362772 (select (store (arr!21067 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!809421 (= lt!362774 (array!43994 (store (arr!21067 a!3170) i!1163 k0!2044) (size!21488 a!3170)))))

(declare-fun res!553318 () Bool)

(assert (=> start!69444 (=> (not res!553318) (not e!448049))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69444 (= res!553318 (validMask!0 mask!3266))))

(assert (=> start!69444 e!448049))

(assert (=> start!69444 true))

(declare-fun array_inv!16841 (array!43993) Bool)

(assert (=> start!69444 (array_inv!16841 a!3170)))

(declare-fun b!809417 () Bool)

(declare-fun lt!362773 () (_ BitVec 32))

(declare-fun e!448050 () Bool)

(assert (=> b!809417 (= e!448050 (not (= lt!362775 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!362773 vacantAfter!23 lt!362772 lt!362774 mask!3266))))))

(declare-fun b!809422 () Bool)

(declare-fun res!553314 () Bool)

(assert (=> b!809422 (=> (not res!553314) (not e!448054))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43993 (_ BitVec 32)) Bool)

(assert (=> b!809422 (= res!553314 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!809423 () Bool)

(declare-fun e!448051 () Bool)

(assert (=> b!809423 (= e!448053 e!448051)))

(declare-fun res!553320 () Bool)

(assert (=> b!809423 (=> (not res!553320) (not e!448051))))

(declare-fun lt!362771 () SeekEntryResult!8665)

(declare-fun lt!362776 () SeekEntryResult!8665)

(assert (=> b!809423 (= res!553320 (and (= lt!362771 lt!362776) (= lt!362776 (Found!8665 j!153)) (not (= (select (arr!21067 a!3170) index!1236) (select (arr!21067 a!3170) j!153)))))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!809423 (= lt!362776 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21067 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!809423 (= lt!362771 (seekEntryOrOpen!0 (select (arr!21067 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!809424 () Bool)

(declare-fun res!553322 () Bool)

(assert (=> b!809424 (=> (not res!553322) (not e!448054))))

(assert (=> b!809424 (= res!553322 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21488 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!21067 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21488 a!3170)) (= (select (arr!21067 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!809425 () Bool)

(declare-fun res!553324 () Bool)

(assert (=> b!809425 (=> (not res!553324) (not e!448049))))

(declare-fun arrayContainsKey!0 (array!43993 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!809425 (= res!553324 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!809426 () Bool)

(assert (=> b!809426 (= e!448051 e!448050)))

(declare-fun res!553313 () Bool)

(assert (=> b!809426 (=> (not res!553313) (not e!448050))))

(assert (=> b!809426 (= res!553313 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1077) #b01111111111111111111111111111110) (bvsge (bvadd #b00000000000000000000000000000001 x!1077) #b00000000000000000000000000000000) (bvsge lt!362773 #b00000000000000000000000000000000) (bvslt lt!362773 (size!21488 a!3170))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!809426 (= lt!362773 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!809427 () Bool)

(declare-fun res!553316 () Bool)

(assert (=> b!809427 (=> (not res!553316) (not e!448054))))

(declare-datatypes ((List!15083 0))(
  ( (Nil!15080) (Cons!15079 (h!16208 (_ BitVec 64)) (t!21406 List!15083)) )
))
(declare-fun arrayNoDuplicates!0 (array!43993 (_ BitVec 32) List!15083) Bool)

(assert (=> b!809427 (= res!553316 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15080))))

(assert (= (and start!69444 res!553318) b!809418))

(assert (= (and b!809418 res!553323) b!809416))

(assert (= (and b!809416 res!553317) b!809420))

(assert (= (and b!809420 res!553315) b!809425))

(assert (= (and b!809425 res!553324) b!809419))

(assert (= (and b!809419 res!553321) b!809422))

(assert (= (and b!809422 res!553314) b!809427))

(assert (= (and b!809427 res!553316) b!809424))

(assert (= (and b!809424 res!553322) b!809421))

(assert (= (and b!809421 res!553319) b!809423))

(assert (= (and b!809423 res!553320) b!809426))

(assert (= (and b!809426 res!553313) b!809417))

(declare-fun m!751721 () Bool)

(assert (=> b!809422 m!751721))

(declare-fun m!751723 () Bool)

(assert (=> b!809424 m!751723))

(declare-fun m!751725 () Bool)

(assert (=> b!809424 m!751725))

(declare-fun m!751727 () Bool)

(assert (=> b!809425 m!751727))

(declare-fun m!751729 () Bool)

(assert (=> b!809423 m!751729))

(declare-fun m!751731 () Bool)

(assert (=> b!809423 m!751731))

(assert (=> b!809423 m!751731))

(declare-fun m!751733 () Bool)

(assert (=> b!809423 m!751733))

(assert (=> b!809423 m!751731))

(declare-fun m!751735 () Bool)

(assert (=> b!809423 m!751735))

(declare-fun m!751737 () Bool)

(assert (=> b!809427 m!751737))

(assert (=> b!809416 m!751731))

(assert (=> b!809416 m!751731))

(declare-fun m!751739 () Bool)

(assert (=> b!809416 m!751739))

(declare-fun m!751741 () Bool)

(assert (=> b!809421 m!751741))

(declare-fun m!751743 () Bool)

(assert (=> b!809421 m!751743))

(declare-fun m!751745 () Bool)

(assert (=> b!809421 m!751745))

(declare-fun m!751747 () Bool)

(assert (=> b!809421 m!751747))

(declare-fun m!751749 () Bool)

(assert (=> start!69444 m!751749))

(declare-fun m!751751 () Bool)

(assert (=> start!69444 m!751751))

(declare-fun m!751753 () Bool)

(assert (=> b!809420 m!751753))

(declare-fun m!751755 () Bool)

(assert (=> b!809426 m!751755))

(declare-fun m!751757 () Bool)

(assert (=> b!809417 m!751757))

(declare-fun m!751759 () Bool)

(assert (=> b!809419 m!751759))

(check-sat (not b!809419) (not b!809417) (not b!809426) (not start!69444) (not b!809421) (not b!809422) (not b!809423) (not b!809425) (not b!809420) (not b!809427) (not b!809416))
(check-sat)
(get-model)

(declare-fun b!809472 () Bool)

(declare-fun e!448081 () Bool)

(declare-fun call!35421 () Bool)

(assert (=> b!809472 (= e!448081 call!35421)))

(declare-fun b!809473 () Bool)

(declare-fun e!448079 () Bool)

(assert (=> b!809473 (= e!448081 e!448079)))

(declare-fun lt!362804 () (_ BitVec 64))

(assert (=> b!809473 (= lt!362804 (select (arr!21067 a!3170) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!27604 0))(
  ( (Unit!27605) )
))
(declare-fun lt!362806 () Unit!27604)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!43993 (_ BitVec 64) (_ BitVec 32)) Unit!27604)

(assert (=> b!809473 (= lt!362806 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3170 lt!362804 #b00000000000000000000000000000000))))

(assert (=> b!809473 (arrayContainsKey!0 a!3170 lt!362804 #b00000000000000000000000000000000)))

(declare-fun lt!362805 () Unit!27604)

(assert (=> b!809473 (= lt!362805 lt!362806)))

(declare-fun res!553365 () Bool)

(assert (=> b!809473 (= res!553365 (= (seekEntryOrOpen!0 (select (arr!21067 a!3170) #b00000000000000000000000000000000) a!3170 mask!3266) (Found!8665 #b00000000000000000000000000000000)))))

(assert (=> b!809473 (=> (not res!553365) (not e!448079))))

(declare-fun d!103831 () Bool)

(declare-fun res!553366 () Bool)

(declare-fun e!448080 () Bool)

(assert (=> d!103831 (=> res!553366 e!448080)))

(assert (=> d!103831 (= res!553366 (bvsge #b00000000000000000000000000000000 (size!21488 a!3170)))))

(assert (=> d!103831 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266) e!448080)))

(declare-fun b!809474 () Bool)

(assert (=> b!809474 (= e!448079 call!35421)))

(declare-fun bm!35418 () Bool)

(assert (=> bm!35418 (= call!35421 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3170 mask!3266))))

(declare-fun b!809475 () Bool)

(assert (=> b!809475 (= e!448080 e!448081)))

(declare-fun c!88464 () Bool)

(assert (=> b!809475 (= c!88464 (validKeyInArray!0 (select (arr!21067 a!3170) #b00000000000000000000000000000000)))))

(assert (= (and d!103831 (not res!553366)) b!809475))

(assert (= (and b!809475 c!88464) b!809473))

(assert (= (and b!809475 (not c!88464)) b!809472))

(assert (= (and b!809473 res!553365) b!809474))

(assert (= (or b!809474 b!809472) bm!35418))

(declare-fun m!751801 () Bool)

(assert (=> b!809473 m!751801))

(declare-fun m!751803 () Bool)

(assert (=> b!809473 m!751803))

(declare-fun m!751805 () Bool)

(assert (=> b!809473 m!751805))

(assert (=> b!809473 m!751801))

(declare-fun m!751807 () Bool)

(assert (=> b!809473 m!751807))

(declare-fun m!751809 () Bool)

(assert (=> bm!35418 m!751809))

(assert (=> b!809475 m!751801))

(assert (=> b!809475 m!751801))

(declare-fun m!751811 () Bool)

(assert (=> b!809475 m!751811))

(assert (=> b!809422 d!103831))

(declare-fun d!103833 () Bool)

(assert (=> d!103833 (= (validMask!0 mask!3266) (and (or (= mask!3266 #b00000000000000000000000000000111) (= mask!3266 #b00000000000000000000000000001111) (= mask!3266 #b00000000000000000000000000011111) (= mask!3266 #b00000000000000000000000000111111) (= mask!3266 #b00000000000000000000000001111111) (= mask!3266 #b00000000000000000000000011111111) (= mask!3266 #b00000000000000000000000111111111) (= mask!3266 #b00000000000000000000001111111111) (= mask!3266 #b00000000000000000000011111111111) (= mask!3266 #b00000000000000000000111111111111) (= mask!3266 #b00000000000000000001111111111111) (= mask!3266 #b00000000000000000011111111111111) (= mask!3266 #b00000000000000000111111111111111) (= mask!3266 #b00000000000000001111111111111111) (= mask!3266 #b00000000000000011111111111111111) (= mask!3266 #b00000000000000111111111111111111) (= mask!3266 #b00000000000001111111111111111111) (= mask!3266 #b00000000000011111111111111111111) (= mask!3266 #b00000000000111111111111111111111) (= mask!3266 #b00000000001111111111111111111111) (= mask!3266 #b00000000011111111111111111111111) (= mask!3266 #b00000000111111111111111111111111) (= mask!3266 #b00000001111111111111111111111111) (= mask!3266 #b00000011111111111111111111111111) (= mask!3266 #b00000111111111111111111111111111) (= mask!3266 #b00001111111111111111111111111111) (= mask!3266 #b00011111111111111111111111111111) (= mask!3266 #b00111111111111111111111111111111)) (bvsle mask!3266 #b00111111111111111111111111111111)))))

(assert (=> start!69444 d!103833))

(declare-fun d!103835 () Bool)

(assert (=> d!103835 (= (array_inv!16841 a!3170) (bvsge (size!21488 a!3170) #b00000000000000000000000000000000))))

(assert (=> start!69444 d!103835))

(declare-fun b!809488 () Bool)

(declare-fun c!88472 () Bool)

(declare-fun lt!362811 () (_ BitVec 64))

(assert (=> b!809488 (= c!88472 (= lt!362811 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!448089 () SeekEntryResult!8665)

(declare-fun e!448088 () SeekEntryResult!8665)

(assert (=> b!809488 (= e!448089 e!448088)))

(declare-fun b!809489 () Bool)

(assert (=> b!809489 (= e!448088 (MissingVacant!8665 vacantBefore!23))))

(declare-fun b!809490 () Bool)

(declare-fun e!448090 () SeekEntryResult!8665)

(assert (=> b!809490 (= e!448090 Undefined!8665)))

(declare-fun lt!362812 () SeekEntryResult!8665)

(declare-fun d!103837 () Bool)

(get-info :version)

(assert (=> d!103837 (and (or ((_ is Undefined!8665) lt!362812) (not ((_ is Found!8665) lt!362812)) (and (bvsge (index!37028 lt!362812) #b00000000000000000000000000000000) (bvslt (index!37028 lt!362812) (size!21488 a!3170)))) (or ((_ is Undefined!8665) lt!362812) ((_ is Found!8665) lt!362812) (not ((_ is MissingVacant!8665) lt!362812)) (not (= (index!37030 lt!362812) vacantBefore!23)) (and (bvsge (index!37030 lt!362812) #b00000000000000000000000000000000) (bvslt (index!37030 lt!362812) (size!21488 a!3170)))) (or ((_ is Undefined!8665) lt!362812) (ite ((_ is Found!8665) lt!362812) (= (select (arr!21067 a!3170) (index!37028 lt!362812)) (select (arr!21067 a!3170) j!153)) (and ((_ is MissingVacant!8665) lt!362812) (= (index!37030 lt!362812) vacantBefore!23) (= (select (arr!21067 a!3170) (index!37030 lt!362812)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!103837 (= lt!362812 e!448090)))

(declare-fun c!88471 () Bool)

(assert (=> d!103837 (= c!88471 (bvsge x!1077 #b01111111111111111111111111111110))))

(assert (=> d!103837 (= lt!362811 (select (arr!21067 a!3170) index!1236))))

(assert (=> d!103837 (validMask!0 mask!3266)))

(assert (=> d!103837 (= (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21067 a!3170) j!153) a!3170 mask!3266) lt!362812)))

(declare-fun b!809491 () Bool)

(assert (=> b!809491 (= e!448090 e!448089)))

(declare-fun c!88473 () Bool)

(assert (=> b!809491 (= c!88473 (= lt!362811 (select (arr!21067 a!3170) j!153)))))

(declare-fun b!809492 () Bool)

(assert (=> b!809492 (= e!448089 (Found!8665 index!1236))))

(declare-fun b!809493 () Bool)

(assert (=> b!809493 (= e!448088 (seekKeyOrZeroReturnVacant!0 (bvadd x!1077 #b00000000000000000000000000000001) (nextIndex!0 index!1236 x!1077 mask!3266) vacantBefore!23 (select (arr!21067 a!3170) j!153) a!3170 mask!3266))))

(assert (= (and d!103837 c!88471) b!809490))

(assert (= (and d!103837 (not c!88471)) b!809491))

(assert (= (and b!809491 c!88473) b!809492))

(assert (= (and b!809491 (not c!88473)) b!809488))

(assert (= (and b!809488 c!88472) b!809489))

(assert (= (and b!809488 (not c!88472)) b!809493))

(declare-fun m!751813 () Bool)

(assert (=> d!103837 m!751813))

(declare-fun m!751815 () Bool)

(assert (=> d!103837 m!751815))

(assert (=> d!103837 m!751729))

(assert (=> d!103837 m!751749))

(assert (=> b!809493 m!751755))

(assert (=> b!809493 m!751755))

(assert (=> b!809493 m!751731))

(declare-fun m!751817 () Bool)

(assert (=> b!809493 m!751817))

(assert (=> b!809423 d!103837))

(declare-fun b!809542 () Bool)

(declare-fun e!448126 () SeekEntryResult!8665)

(declare-fun e!448124 () SeekEntryResult!8665)

(assert (=> b!809542 (= e!448126 e!448124)))

(declare-fun lt!362840 () (_ BitVec 64))

(declare-fun lt!362842 () SeekEntryResult!8665)

(assert (=> b!809542 (= lt!362840 (select (arr!21067 a!3170) (index!37029 lt!362842)))))

(declare-fun c!88491 () Bool)

(assert (=> b!809542 (= c!88491 (= lt!362840 (select (arr!21067 a!3170) j!153)))))

(declare-fun b!809543 () Bool)

(assert (=> b!809543 (= e!448124 (Found!8665 (index!37029 lt!362842)))))

(declare-fun b!809544 () Bool)

(declare-fun e!448125 () SeekEntryResult!8665)

(assert (=> b!809544 (= e!448125 (MissingZero!8665 (index!37029 lt!362842)))))

(declare-fun b!809545 () Bool)

(assert (=> b!809545 (= e!448125 (seekKeyOrZeroReturnVacant!0 (x!67858 lt!362842) (index!37029 lt!362842) (index!37029 lt!362842) (select (arr!21067 a!3170) j!153) a!3170 mask!3266))))

(declare-fun d!103839 () Bool)

(declare-fun lt!362841 () SeekEntryResult!8665)

(assert (=> d!103839 (and (or ((_ is Undefined!8665) lt!362841) (not ((_ is Found!8665) lt!362841)) (and (bvsge (index!37028 lt!362841) #b00000000000000000000000000000000) (bvslt (index!37028 lt!362841) (size!21488 a!3170)))) (or ((_ is Undefined!8665) lt!362841) ((_ is Found!8665) lt!362841) (not ((_ is MissingZero!8665) lt!362841)) (and (bvsge (index!37027 lt!362841) #b00000000000000000000000000000000) (bvslt (index!37027 lt!362841) (size!21488 a!3170)))) (or ((_ is Undefined!8665) lt!362841) ((_ is Found!8665) lt!362841) ((_ is MissingZero!8665) lt!362841) (not ((_ is MissingVacant!8665) lt!362841)) (and (bvsge (index!37030 lt!362841) #b00000000000000000000000000000000) (bvslt (index!37030 lt!362841) (size!21488 a!3170)))) (or ((_ is Undefined!8665) lt!362841) (ite ((_ is Found!8665) lt!362841) (= (select (arr!21067 a!3170) (index!37028 lt!362841)) (select (arr!21067 a!3170) j!153)) (ite ((_ is MissingZero!8665) lt!362841) (= (select (arr!21067 a!3170) (index!37027 lt!362841)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!8665) lt!362841) (= (select (arr!21067 a!3170) (index!37030 lt!362841)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!103839 (= lt!362841 e!448126)))

(declare-fun c!88489 () Bool)

(assert (=> d!103839 (= c!88489 (and ((_ is Intermediate!8665) lt!362842) (undefined!9477 lt!362842)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43993 (_ BitVec 32)) SeekEntryResult!8665)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!103839 (= lt!362842 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!21067 a!3170) j!153) mask!3266) (select (arr!21067 a!3170) j!153) a!3170 mask!3266))))

(assert (=> d!103839 (validMask!0 mask!3266)))

(assert (=> d!103839 (= (seekEntryOrOpen!0 (select (arr!21067 a!3170) j!153) a!3170 mask!3266) lt!362841)))

(declare-fun b!809546 () Bool)

(assert (=> b!809546 (= e!448126 Undefined!8665)))

(declare-fun b!809547 () Bool)

(declare-fun c!88490 () Bool)

(assert (=> b!809547 (= c!88490 (= lt!362840 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!809547 (= e!448124 e!448125)))

(assert (= (and d!103839 c!88489) b!809546))

(assert (= (and d!103839 (not c!88489)) b!809542))

(assert (= (and b!809542 c!88491) b!809543))

(assert (= (and b!809542 (not c!88491)) b!809547))

(assert (= (and b!809547 c!88490) b!809544))

(assert (= (and b!809547 (not c!88490)) b!809545))

(declare-fun m!751841 () Bool)

(assert (=> b!809542 m!751841))

(assert (=> b!809545 m!751731))

(declare-fun m!751843 () Bool)

(assert (=> b!809545 m!751843))

(declare-fun m!751845 () Bool)

(assert (=> d!103839 m!751845))

(assert (=> d!103839 m!751731))

(declare-fun m!751847 () Bool)

(assert (=> d!103839 m!751847))

(declare-fun m!751849 () Bool)

(assert (=> d!103839 m!751849))

(declare-fun m!751851 () Bool)

(assert (=> d!103839 m!751851))

(assert (=> d!103839 m!751749))

(assert (=> d!103839 m!751847))

(assert (=> d!103839 m!751731))

(declare-fun m!751853 () Bool)

(assert (=> d!103839 m!751853))

(assert (=> b!809423 d!103839))

(declare-fun d!103857 () Bool)

(declare-fun res!553389 () Bool)

(declare-fun e!448134 () Bool)

(assert (=> d!103857 (=> res!553389 e!448134)))

(assert (=> d!103857 (= res!553389 (= (select (arr!21067 a!3170) #b00000000000000000000000000000000) k0!2044))))

(assert (=> d!103857 (= (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000) e!448134)))

(declare-fun b!809558 () Bool)

(declare-fun e!448135 () Bool)

(assert (=> b!809558 (= e!448134 e!448135)))

(declare-fun res!553390 () Bool)

(assert (=> b!809558 (=> (not res!553390) (not e!448135))))

(assert (=> b!809558 (= res!553390 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!21488 a!3170)))))

(declare-fun b!809559 () Bool)

(assert (=> b!809559 (= e!448135 (arrayContainsKey!0 a!3170 k0!2044 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!103857 (not res!553389)) b!809558))

(assert (= (and b!809558 res!553390) b!809559))

(assert (=> d!103857 m!751801))

(declare-fun m!751869 () Bool)

(assert (=> b!809559 m!751869))

(assert (=> b!809425 d!103857))

(declare-fun d!103863 () Bool)

(declare-fun lt!362848 () (_ BitVec 32))

(assert (=> d!103863 (and (bvsge lt!362848 #b00000000000000000000000000000000) (bvslt lt!362848 (bvadd mask!3266 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!103863 (= lt!362848 (choose!52 index!1236 x!1077 mask!3266))))

(assert (=> d!103863 (validMask!0 mask!3266)))

(assert (=> d!103863 (= (nextIndex!0 index!1236 x!1077 mask!3266) lt!362848)))

(declare-fun bs!22416 () Bool)

(assert (= bs!22416 d!103863))

(declare-fun m!751871 () Bool)

(assert (=> bs!22416 m!751871))

(assert (=> bs!22416 m!751749))

(assert (=> b!809426 d!103863))

(declare-fun d!103865 () Bool)

(assert (=> d!103865 (= (validKeyInArray!0 (select (arr!21067 a!3170) j!153)) (and (not (= (select (arr!21067 a!3170) j!153) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!21067 a!3170) j!153) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!809416 d!103865))

(declare-fun d!103871 () Bool)

(declare-fun res!553407 () Bool)

(declare-fun e!448164 () Bool)

(assert (=> d!103871 (=> res!553407 e!448164)))

(assert (=> d!103871 (= res!553407 (bvsge #b00000000000000000000000000000000 (size!21488 a!3170)))))

(assert (=> d!103871 (= (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15080) e!448164)))

(declare-fun b!809597 () Bool)

(declare-fun e!448163 () Bool)

(declare-fun e!448162 () Bool)

(assert (=> b!809597 (= e!448163 e!448162)))

(declare-fun c!88506 () Bool)

(assert (=> b!809597 (= c!88506 (validKeyInArray!0 (select (arr!21067 a!3170) #b00000000000000000000000000000000)))))

(declare-fun bm!35427 () Bool)

(declare-fun call!35430 () Bool)

(assert (=> bm!35427 (= call!35430 (arrayNoDuplicates!0 a!3170 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!88506 (Cons!15079 (select (arr!21067 a!3170) #b00000000000000000000000000000000) Nil!15080) Nil!15080)))))

(declare-fun b!809598 () Bool)

(declare-fun e!448165 () Bool)

(declare-fun contains!4131 (List!15083 (_ BitVec 64)) Bool)

(assert (=> b!809598 (= e!448165 (contains!4131 Nil!15080 (select (arr!21067 a!3170) #b00000000000000000000000000000000)))))

(declare-fun b!809599 () Bool)

(assert (=> b!809599 (= e!448164 e!448163)))

(declare-fun res!553408 () Bool)

(assert (=> b!809599 (=> (not res!553408) (not e!448163))))

(assert (=> b!809599 (= res!553408 (not e!448165))))

(declare-fun res!553406 () Bool)

(assert (=> b!809599 (=> (not res!553406) (not e!448165))))

(assert (=> b!809599 (= res!553406 (validKeyInArray!0 (select (arr!21067 a!3170) #b00000000000000000000000000000000)))))

(declare-fun b!809600 () Bool)

(assert (=> b!809600 (= e!448162 call!35430)))

(declare-fun b!809601 () Bool)

(assert (=> b!809601 (= e!448162 call!35430)))

(assert (= (and d!103871 (not res!553407)) b!809599))

(assert (= (and b!809599 res!553406) b!809598))

(assert (= (and b!809599 res!553408) b!809597))

(assert (= (and b!809597 c!88506) b!809601))

(assert (= (and b!809597 (not c!88506)) b!809600))

(assert (= (or b!809601 b!809600) bm!35427))

(assert (=> b!809597 m!751801))

(assert (=> b!809597 m!751801))

(assert (=> b!809597 m!751811))

(assert (=> bm!35427 m!751801))

(declare-fun m!751879 () Bool)

(assert (=> bm!35427 m!751879))

(assert (=> b!809598 m!751801))

(assert (=> b!809598 m!751801))

(declare-fun m!751881 () Bool)

(assert (=> b!809598 m!751881))

(assert (=> b!809599 m!751801))

(assert (=> b!809599 m!751801))

(assert (=> b!809599 m!751811))

(assert (=> b!809427 d!103871))

(declare-fun b!809602 () Bool)

(declare-fun c!88508 () Bool)

(declare-fun lt!362853 () (_ BitVec 64))

(assert (=> b!809602 (= c!88508 (= lt!362853 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!448167 () SeekEntryResult!8665)

(declare-fun e!448166 () SeekEntryResult!8665)

(assert (=> b!809602 (= e!448167 e!448166)))

(declare-fun b!809603 () Bool)

(assert (=> b!809603 (= e!448166 (MissingVacant!8665 vacantAfter!23))))

(declare-fun b!809604 () Bool)

(declare-fun e!448168 () SeekEntryResult!8665)

(assert (=> b!809604 (= e!448168 Undefined!8665)))

(declare-fun d!103877 () Bool)

(declare-fun lt!362854 () SeekEntryResult!8665)

(assert (=> d!103877 (and (or ((_ is Undefined!8665) lt!362854) (not ((_ is Found!8665) lt!362854)) (and (bvsge (index!37028 lt!362854) #b00000000000000000000000000000000) (bvslt (index!37028 lt!362854) (size!21488 lt!362774)))) (or ((_ is Undefined!8665) lt!362854) ((_ is Found!8665) lt!362854) (not ((_ is MissingVacant!8665) lt!362854)) (not (= (index!37030 lt!362854) vacantAfter!23)) (and (bvsge (index!37030 lt!362854) #b00000000000000000000000000000000) (bvslt (index!37030 lt!362854) (size!21488 lt!362774)))) (or ((_ is Undefined!8665) lt!362854) (ite ((_ is Found!8665) lt!362854) (= (select (arr!21067 lt!362774) (index!37028 lt!362854)) lt!362772) (and ((_ is MissingVacant!8665) lt!362854) (= (index!37030 lt!362854) vacantAfter!23) (= (select (arr!21067 lt!362774) (index!37030 lt!362854)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!103877 (= lt!362854 e!448168)))

(declare-fun c!88507 () Bool)

(assert (=> d!103877 (= c!88507 (bvsge (bvadd #b00000000000000000000000000000001 x!1077) #b01111111111111111111111111111110))))

(assert (=> d!103877 (= lt!362853 (select (arr!21067 lt!362774) lt!362773))))

(assert (=> d!103877 (validMask!0 mask!3266)))

(assert (=> d!103877 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!362773 vacantAfter!23 lt!362772 lt!362774 mask!3266) lt!362854)))

(declare-fun b!809605 () Bool)

(assert (=> b!809605 (= e!448168 e!448167)))

(declare-fun c!88509 () Bool)

(assert (=> b!809605 (= c!88509 (= lt!362853 lt!362772))))

(declare-fun b!809606 () Bool)

(assert (=> b!809606 (= e!448167 (Found!8665 lt!362773))))

(declare-fun b!809607 () Bool)

(assert (=> b!809607 (= e!448166 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077 #b00000000000000000000000000000001) (nextIndex!0 lt!362773 (bvadd #b00000000000000000000000000000001 x!1077) mask!3266) vacantAfter!23 lt!362772 lt!362774 mask!3266))))

(assert (= (and d!103877 c!88507) b!809604))

(assert (= (and d!103877 (not c!88507)) b!809605))

(assert (= (and b!809605 c!88509) b!809606))

(assert (= (and b!809605 (not c!88509)) b!809602))

(assert (= (and b!809602 c!88508) b!809603))

(assert (= (and b!809602 (not c!88508)) b!809607))

(declare-fun m!751883 () Bool)

(assert (=> d!103877 m!751883))

(declare-fun m!751885 () Bool)

(assert (=> d!103877 m!751885))

(declare-fun m!751887 () Bool)

(assert (=> d!103877 m!751887))

(assert (=> d!103877 m!751749))

(declare-fun m!751889 () Bool)

(assert (=> b!809607 m!751889))

(assert (=> b!809607 m!751889))

(declare-fun m!751891 () Bool)

(assert (=> b!809607 m!751891))

(assert (=> b!809417 d!103877))

(declare-fun b!809608 () Bool)

(declare-fun e!448171 () SeekEntryResult!8665)

(declare-fun e!448169 () SeekEntryResult!8665)

(assert (=> b!809608 (= e!448171 e!448169)))

(declare-fun lt!362855 () (_ BitVec 64))

(declare-fun lt!362857 () SeekEntryResult!8665)

(assert (=> b!809608 (= lt!362855 (select (arr!21067 a!3170) (index!37029 lt!362857)))))

(declare-fun c!88512 () Bool)

(assert (=> b!809608 (= c!88512 (= lt!362855 k0!2044))))

(declare-fun b!809609 () Bool)

(assert (=> b!809609 (= e!448169 (Found!8665 (index!37029 lt!362857)))))

(declare-fun b!809610 () Bool)

(declare-fun e!448170 () SeekEntryResult!8665)

(assert (=> b!809610 (= e!448170 (MissingZero!8665 (index!37029 lt!362857)))))

(declare-fun b!809611 () Bool)

(assert (=> b!809611 (= e!448170 (seekKeyOrZeroReturnVacant!0 (x!67858 lt!362857) (index!37029 lt!362857) (index!37029 lt!362857) k0!2044 a!3170 mask!3266))))

(declare-fun d!103879 () Bool)

(declare-fun lt!362856 () SeekEntryResult!8665)

(assert (=> d!103879 (and (or ((_ is Undefined!8665) lt!362856) (not ((_ is Found!8665) lt!362856)) (and (bvsge (index!37028 lt!362856) #b00000000000000000000000000000000) (bvslt (index!37028 lt!362856) (size!21488 a!3170)))) (or ((_ is Undefined!8665) lt!362856) ((_ is Found!8665) lt!362856) (not ((_ is MissingZero!8665) lt!362856)) (and (bvsge (index!37027 lt!362856) #b00000000000000000000000000000000) (bvslt (index!37027 lt!362856) (size!21488 a!3170)))) (or ((_ is Undefined!8665) lt!362856) ((_ is Found!8665) lt!362856) ((_ is MissingZero!8665) lt!362856) (not ((_ is MissingVacant!8665) lt!362856)) (and (bvsge (index!37030 lt!362856) #b00000000000000000000000000000000) (bvslt (index!37030 lt!362856) (size!21488 a!3170)))) (or ((_ is Undefined!8665) lt!362856) (ite ((_ is Found!8665) lt!362856) (= (select (arr!21067 a!3170) (index!37028 lt!362856)) k0!2044) (ite ((_ is MissingZero!8665) lt!362856) (= (select (arr!21067 a!3170) (index!37027 lt!362856)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!8665) lt!362856) (= (select (arr!21067 a!3170) (index!37030 lt!362856)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!103879 (= lt!362856 e!448171)))

(declare-fun c!88510 () Bool)

(assert (=> d!103879 (= c!88510 (and ((_ is Intermediate!8665) lt!362857) (undefined!9477 lt!362857)))))

(assert (=> d!103879 (= lt!362857 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2044 mask!3266) k0!2044 a!3170 mask!3266))))

(assert (=> d!103879 (validMask!0 mask!3266)))

(assert (=> d!103879 (= (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266) lt!362856)))

(declare-fun b!809612 () Bool)

(assert (=> b!809612 (= e!448171 Undefined!8665)))

(declare-fun b!809613 () Bool)

(declare-fun c!88511 () Bool)

(assert (=> b!809613 (= c!88511 (= lt!362855 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!809613 (= e!448169 e!448170)))

(assert (= (and d!103879 c!88510) b!809612))

(assert (= (and d!103879 (not c!88510)) b!809608))

(assert (= (and b!809608 c!88512) b!809609))

(assert (= (and b!809608 (not c!88512)) b!809613))

(assert (= (and b!809613 c!88511) b!809610))

(assert (= (and b!809613 (not c!88511)) b!809611))

(declare-fun m!751893 () Bool)

(assert (=> b!809608 m!751893))

(declare-fun m!751895 () Bool)

(assert (=> b!809611 m!751895))

(declare-fun m!751897 () Bool)

(assert (=> d!103879 m!751897))

(declare-fun m!751899 () Bool)

(assert (=> d!103879 m!751899))

(declare-fun m!751901 () Bool)

(assert (=> d!103879 m!751901))

(declare-fun m!751903 () Bool)

(assert (=> d!103879 m!751903))

(assert (=> d!103879 m!751749))

(assert (=> d!103879 m!751899))

(declare-fun m!751905 () Bool)

(assert (=> d!103879 m!751905))

(assert (=> b!809419 d!103879))

(declare-fun d!103881 () Bool)

(assert (=> d!103881 (= (validKeyInArray!0 k0!2044) (and (not (= k0!2044 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2044 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!809420 d!103881))

(declare-fun b!809620 () Bool)

(declare-fun c!88517 () Bool)

(declare-fun lt!362860 () (_ BitVec 64))

(assert (=> b!809620 (= c!88517 (= lt!362860 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!448176 () SeekEntryResult!8665)

(declare-fun e!448175 () SeekEntryResult!8665)

(assert (=> b!809620 (= e!448176 e!448175)))

(declare-fun b!809621 () Bool)

(assert (=> b!809621 (= e!448175 (MissingVacant!8665 vacantAfter!23))))

(declare-fun b!809622 () Bool)

(declare-fun e!448177 () SeekEntryResult!8665)

(assert (=> b!809622 (= e!448177 Undefined!8665)))

(declare-fun d!103883 () Bool)

(declare-fun lt!362861 () SeekEntryResult!8665)

(assert (=> d!103883 (and (or ((_ is Undefined!8665) lt!362861) (not ((_ is Found!8665) lt!362861)) (and (bvsge (index!37028 lt!362861) #b00000000000000000000000000000000) (bvslt (index!37028 lt!362861) (size!21488 lt!362774)))) (or ((_ is Undefined!8665) lt!362861) ((_ is Found!8665) lt!362861) (not ((_ is MissingVacant!8665) lt!362861)) (not (= (index!37030 lt!362861) vacantAfter!23)) (and (bvsge (index!37030 lt!362861) #b00000000000000000000000000000000) (bvslt (index!37030 lt!362861) (size!21488 lt!362774)))) (or ((_ is Undefined!8665) lt!362861) (ite ((_ is Found!8665) lt!362861) (= (select (arr!21067 lt!362774) (index!37028 lt!362861)) lt!362772) (and ((_ is MissingVacant!8665) lt!362861) (= (index!37030 lt!362861) vacantAfter!23) (= (select (arr!21067 lt!362774) (index!37030 lt!362861)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!103883 (= lt!362861 e!448177)))

(declare-fun c!88516 () Bool)

(assert (=> d!103883 (= c!88516 (bvsge x!1077 #b01111111111111111111111111111110))))

(assert (=> d!103883 (= lt!362860 (select (arr!21067 lt!362774) index!1236))))

(assert (=> d!103883 (validMask!0 mask!3266)))

(assert (=> d!103883 (= (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!362772 lt!362774 mask!3266) lt!362861)))

(declare-fun b!809623 () Bool)

(assert (=> b!809623 (= e!448177 e!448176)))

(declare-fun c!88518 () Bool)

(assert (=> b!809623 (= c!88518 (= lt!362860 lt!362772))))

(declare-fun b!809624 () Bool)

(assert (=> b!809624 (= e!448176 (Found!8665 index!1236))))

(declare-fun b!809625 () Bool)

(assert (=> b!809625 (= e!448175 (seekKeyOrZeroReturnVacant!0 (bvadd x!1077 #b00000000000000000000000000000001) (nextIndex!0 index!1236 x!1077 mask!3266) vacantAfter!23 lt!362772 lt!362774 mask!3266))))

(assert (= (and d!103883 c!88516) b!809622))

(assert (= (and d!103883 (not c!88516)) b!809623))

(assert (= (and b!809623 c!88518) b!809624))

(assert (= (and b!809623 (not c!88518)) b!809620))

(assert (= (and b!809620 c!88517) b!809621))

(assert (= (and b!809620 (not c!88517)) b!809625))

(declare-fun m!751917 () Bool)

(assert (=> d!103883 m!751917))

(declare-fun m!751919 () Bool)

(assert (=> d!103883 m!751919))

(declare-fun m!751921 () Bool)

(assert (=> d!103883 m!751921))

(assert (=> d!103883 m!751749))

(assert (=> b!809625 m!751755))

(assert (=> b!809625 m!751755))

(declare-fun m!751923 () Bool)

(assert (=> b!809625 m!751923))

(assert (=> b!809421 d!103883))

(declare-fun b!809634 () Bool)

(declare-fun e!448186 () SeekEntryResult!8665)

(declare-fun e!448184 () SeekEntryResult!8665)

(assert (=> b!809634 (= e!448186 e!448184)))

(declare-fun lt!362868 () (_ BitVec 64))

(declare-fun lt!362870 () SeekEntryResult!8665)

(assert (=> b!809634 (= lt!362868 (select (arr!21067 lt!362774) (index!37029 lt!362870)))))

(declare-fun c!88523 () Bool)

(assert (=> b!809634 (= c!88523 (= lt!362868 lt!362772))))

(declare-fun b!809635 () Bool)

(assert (=> b!809635 (= e!448184 (Found!8665 (index!37029 lt!362870)))))

(declare-fun b!809636 () Bool)

(declare-fun e!448185 () SeekEntryResult!8665)

(assert (=> b!809636 (= e!448185 (MissingZero!8665 (index!37029 lt!362870)))))

(declare-fun b!809637 () Bool)

(assert (=> b!809637 (= e!448185 (seekKeyOrZeroReturnVacant!0 (x!67858 lt!362870) (index!37029 lt!362870) (index!37029 lt!362870) lt!362772 lt!362774 mask!3266))))

(declare-fun d!103887 () Bool)

(declare-fun lt!362869 () SeekEntryResult!8665)

(assert (=> d!103887 (and (or ((_ is Undefined!8665) lt!362869) (not ((_ is Found!8665) lt!362869)) (and (bvsge (index!37028 lt!362869) #b00000000000000000000000000000000) (bvslt (index!37028 lt!362869) (size!21488 lt!362774)))) (or ((_ is Undefined!8665) lt!362869) ((_ is Found!8665) lt!362869) (not ((_ is MissingZero!8665) lt!362869)) (and (bvsge (index!37027 lt!362869) #b00000000000000000000000000000000) (bvslt (index!37027 lt!362869) (size!21488 lt!362774)))) (or ((_ is Undefined!8665) lt!362869) ((_ is Found!8665) lt!362869) ((_ is MissingZero!8665) lt!362869) (not ((_ is MissingVacant!8665) lt!362869)) (and (bvsge (index!37030 lt!362869) #b00000000000000000000000000000000) (bvslt (index!37030 lt!362869) (size!21488 lt!362774)))) (or ((_ is Undefined!8665) lt!362869) (ite ((_ is Found!8665) lt!362869) (= (select (arr!21067 lt!362774) (index!37028 lt!362869)) lt!362772) (ite ((_ is MissingZero!8665) lt!362869) (= (select (arr!21067 lt!362774) (index!37027 lt!362869)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!8665) lt!362869) (= (select (arr!21067 lt!362774) (index!37030 lt!362869)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!103887 (= lt!362869 e!448186)))

(declare-fun c!88521 () Bool)

(assert (=> d!103887 (= c!88521 (and ((_ is Intermediate!8665) lt!362870) (undefined!9477 lt!362870)))))

(assert (=> d!103887 (= lt!362870 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!362772 mask!3266) lt!362772 lt!362774 mask!3266))))

(assert (=> d!103887 (validMask!0 mask!3266)))

(assert (=> d!103887 (= (seekEntryOrOpen!0 lt!362772 lt!362774 mask!3266) lt!362869)))

(declare-fun b!809638 () Bool)

(assert (=> b!809638 (= e!448186 Undefined!8665)))

(declare-fun b!809639 () Bool)

(declare-fun c!88522 () Bool)

(assert (=> b!809639 (= c!88522 (= lt!362868 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!809639 (= e!448184 e!448185)))

(assert (= (and d!103887 c!88521) b!809638))

(assert (= (and d!103887 (not c!88521)) b!809634))

(assert (= (and b!809634 c!88523) b!809635))

(assert (= (and b!809634 (not c!88523)) b!809639))

(assert (= (and b!809639 c!88522) b!809636))

(assert (= (and b!809639 (not c!88522)) b!809637))

(declare-fun m!751925 () Bool)

(assert (=> b!809634 m!751925))

(declare-fun m!751927 () Bool)

(assert (=> b!809637 m!751927))

(declare-fun m!751929 () Bool)

(assert (=> d!103887 m!751929))

(declare-fun m!751931 () Bool)

(assert (=> d!103887 m!751931))

(declare-fun m!751933 () Bool)

(assert (=> d!103887 m!751933))

(declare-fun m!751935 () Bool)

(assert (=> d!103887 m!751935))

(assert (=> d!103887 m!751749))

(assert (=> d!103887 m!751931))

(declare-fun m!751937 () Bool)

(assert (=> d!103887 m!751937))

(assert (=> b!809421 d!103887))

(check-sat (not b!809607) (not b!809475) (not b!809597) (not b!809611) (not d!103883) (not b!809625) (not d!103837) (not b!809637) (not bm!35427) (not b!809559) (not d!103879) (not b!809493) (not b!809598) (not b!809599) (not d!103863) (not bm!35418) (not b!809473) (not d!103887) (not d!103877) (not b!809545) (not d!103839))
(check-sat)
