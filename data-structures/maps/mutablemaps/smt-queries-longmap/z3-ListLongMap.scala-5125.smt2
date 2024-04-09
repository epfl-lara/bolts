; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!69594 () Bool)

(assert start!69594)

(declare-fun res!554218 () Bool)

(declare-fun e!448770 () Bool)

(assert (=> start!69594 (=> (not res!554218) (not e!448770))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69594 (= res!554218 (validMask!0 mask!3266))))

(assert (=> start!69594 e!448770))

(assert (=> start!69594 true))

(declare-datatypes ((array!44041 0))(
  ( (array!44042 (arr!21088 (Array (_ BitVec 32) (_ BitVec 64))) (size!21509 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!44041)

(declare-fun array_inv!16862 (array!44041) Bool)

(assert (=> start!69594 (array_inv!16862 a!3170)))

(declare-fun b!810766 () Bool)

(declare-fun res!554213 () Bool)

(assert (=> b!810766 (=> (not res!554213) (not e!448770))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!44041 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!810766 (= res!554213 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!810767 () Bool)

(declare-fun e!448773 () Bool)

(assert (=> b!810767 (= e!448770 e!448773)))

(declare-fun res!554220 () Bool)

(assert (=> b!810767 (=> (not res!554220) (not e!448773))))

(declare-datatypes ((SeekEntryResult!8686 0))(
  ( (MissingZero!8686 (index!37111 (_ BitVec 32))) (Found!8686 (index!37112 (_ BitVec 32))) (Intermediate!8686 (undefined!9498 Bool) (index!37113 (_ BitVec 32)) (x!67947 (_ BitVec 32))) (Undefined!8686) (MissingVacant!8686 (index!37114 (_ BitVec 32))) )
))
(declare-fun lt!363495 () SeekEntryResult!8686)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!810767 (= res!554220 (or (= lt!363495 (MissingZero!8686 i!1163)) (= lt!363495 (MissingVacant!8686 i!1163))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!44041 (_ BitVec 32)) SeekEntryResult!8686)

(assert (=> b!810767 (= lt!363495 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!810768 () Bool)

(declare-fun e!448769 () Bool)

(declare-fun e!448774 () Bool)

(assert (=> b!810768 (= e!448769 e!448774)))

(declare-fun res!554222 () Bool)

(assert (=> b!810768 (=> (not res!554222) (not e!448774))))

(declare-fun lt!363496 () SeekEntryResult!8686)

(declare-fun lt!363492 () SeekEntryResult!8686)

(assert (=> b!810768 (= res!554222 (= lt!363496 lt!363492))))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!44041 (_ BitVec 32)) SeekEntryResult!8686)

(assert (=> b!810768 (= lt!363492 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21088 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!810768 (= lt!363496 (seekEntryOrOpen!0 (select (arr!21088 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!810769 () Bool)

(declare-fun res!554223 () Bool)

(assert (=> b!810769 (=> (not res!554223) (not e!448770))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!810769 (= res!554223 (validKeyInArray!0 (select (arr!21088 a!3170) j!153)))))

(declare-fun b!810770 () Bool)

(declare-fun res!554214 () Bool)

(assert (=> b!810770 (=> (not res!554214) (not e!448770))))

(assert (=> b!810770 (= res!554214 (and (= (size!21509 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21509 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21509 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!810771 () Bool)

(assert (=> b!810771 (= e!448773 e!448769)))

(declare-fun res!554215 () Bool)

(assert (=> b!810771 (=> (not res!554215) (not e!448769))))

(declare-fun lt!363497 () SeekEntryResult!8686)

(declare-fun lt!363493 () SeekEntryResult!8686)

(assert (=> b!810771 (= res!554215 (= lt!363497 lt!363493))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun lt!363490 () array!44041)

(declare-fun lt!363498 () (_ BitVec 64))

(assert (=> b!810771 (= lt!363493 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!363498 lt!363490 mask!3266))))

(assert (=> b!810771 (= lt!363497 (seekEntryOrOpen!0 lt!363498 lt!363490 mask!3266))))

(assert (=> b!810771 (= lt!363498 (select (store (arr!21088 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!810771 (= lt!363490 (array!44042 (store (arr!21088 a!3170) i!1163 k0!2044) (size!21509 a!3170)))))

(declare-fun b!810772 () Bool)

(declare-fun e!448771 () Bool)

(declare-fun lt!363494 () SeekEntryResult!8686)

(assert (=> b!810772 (= e!448771 (not (= lt!363493 lt!363494)))))

(declare-fun lt!363491 () (_ BitVec 32))

(assert (=> b!810772 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!363491 vacantAfter!23 lt!363498 lt!363490 mask!3266) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!363491 vacantBefore!23 (select (arr!21088 a!3170) j!153) a!3170 mask!3266))))

(declare-datatypes ((Unit!27634 0))(
  ( (Unit!27635) )
))
(declare-fun lt!363499 () Unit!27634)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!44041 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27634)

(assert (=> b!810772 (= lt!363499 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3170 i!1163 k0!2044 j!153 lt!363491 (bvadd #b00000000000000000000000000000001 x!1077) vacantBefore!23 vacantAfter!23 mask!3266))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!810772 (= lt!363491 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!810773 () Bool)

(declare-fun res!554216 () Bool)

(assert (=> b!810773 (=> (not res!554216) (not e!448773))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44041 (_ BitVec 32)) Bool)

(assert (=> b!810773 (= res!554216 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!810774 () Bool)

(assert (=> b!810774 (= e!448774 e!448771)))

(declare-fun res!554221 () Bool)

(assert (=> b!810774 (=> (not res!554221) (not e!448771))))

(assert (=> b!810774 (= res!554221 (and (= lt!363492 lt!363494) (not (= (select (arr!21088 a!3170) index!1236) (select (arr!21088 a!3170) j!153)))))))

(assert (=> b!810774 (= lt!363494 (Found!8686 j!153))))

(declare-fun b!810775 () Bool)

(declare-fun res!554219 () Bool)

(assert (=> b!810775 (=> (not res!554219) (not e!448770))))

(assert (=> b!810775 (= res!554219 (validKeyInArray!0 k0!2044))))

(declare-fun b!810776 () Bool)

(declare-fun res!554217 () Bool)

(assert (=> b!810776 (=> (not res!554217) (not e!448773))))

(declare-datatypes ((List!15104 0))(
  ( (Nil!15101) (Cons!15100 (h!16229 (_ BitVec 64)) (t!21427 List!15104)) )
))
(declare-fun arrayNoDuplicates!0 (array!44041 (_ BitVec 32) List!15104) Bool)

(assert (=> b!810776 (= res!554217 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15101))))

(declare-fun b!810777 () Bool)

(declare-fun res!554224 () Bool)

(assert (=> b!810777 (=> (not res!554224) (not e!448773))))

(assert (=> b!810777 (= res!554224 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21509 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!21088 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21509 a!3170)) (= (select (arr!21088 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(assert (= (and start!69594 res!554218) b!810770))

(assert (= (and b!810770 res!554214) b!810769))

(assert (= (and b!810769 res!554223) b!810775))

(assert (= (and b!810775 res!554219) b!810766))

(assert (= (and b!810766 res!554213) b!810767))

(assert (= (and b!810767 res!554220) b!810773))

(assert (= (and b!810773 res!554216) b!810776))

(assert (= (and b!810776 res!554217) b!810777))

(assert (= (and b!810777 res!554224) b!810771))

(assert (= (and b!810771 res!554215) b!810768))

(assert (= (and b!810768 res!554222) b!810774))

(assert (= (and b!810774 res!554221) b!810772))

(declare-fun m!753159 () Bool)

(assert (=> b!810777 m!753159))

(declare-fun m!753161 () Bool)

(assert (=> b!810777 m!753161))

(declare-fun m!753163 () Bool)

(assert (=> b!810769 m!753163))

(assert (=> b!810769 m!753163))

(declare-fun m!753165 () Bool)

(assert (=> b!810769 m!753165))

(declare-fun m!753167 () Bool)

(assert (=> start!69594 m!753167))

(declare-fun m!753169 () Bool)

(assert (=> start!69594 m!753169))

(declare-fun m!753171 () Bool)

(assert (=> b!810767 m!753171))

(assert (=> b!810768 m!753163))

(assert (=> b!810768 m!753163))

(declare-fun m!753173 () Bool)

(assert (=> b!810768 m!753173))

(assert (=> b!810768 m!753163))

(declare-fun m!753175 () Bool)

(assert (=> b!810768 m!753175))

(declare-fun m!753177 () Bool)

(assert (=> b!810775 m!753177))

(declare-fun m!753179 () Bool)

(assert (=> b!810773 m!753179))

(declare-fun m!753181 () Bool)

(assert (=> b!810774 m!753181))

(assert (=> b!810774 m!753163))

(declare-fun m!753183 () Bool)

(assert (=> b!810776 m!753183))

(assert (=> b!810772 m!753163))

(declare-fun m!753185 () Bool)

(assert (=> b!810772 m!753185))

(declare-fun m!753187 () Bool)

(assert (=> b!810772 m!753187))

(assert (=> b!810772 m!753163))

(declare-fun m!753189 () Bool)

(assert (=> b!810772 m!753189))

(declare-fun m!753191 () Bool)

(assert (=> b!810772 m!753191))

(declare-fun m!753193 () Bool)

(assert (=> b!810766 m!753193))

(declare-fun m!753195 () Bool)

(assert (=> b!810771 m!753195))

(declare-fun m!753197 () Bool)

(assert (=> b!810771 m!753197))

(declare-fun m!753199 () Bool)

(assert (=> b!810771 m!753199))

(declare-fun m!753201 () Bool)

(assert (=> b!810771 m!753201))

(check-sat (not start!69594) (not b!810775) (not b!810771) (not b!810776) (not b!810773) (not b!810766) (not b!810772) (not b!810767) (not b!810769) (not b!810768))
(check-sat)
(get-model)

(declare-fun d!104019 () Bool)

(assert (=> d!104019 (= (validKeyInArray!0 k0!2044) (and (not (= k0!2044 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2044 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!810775 d!104019))

(declare-fun d!104021 () Bool)

(assert (=> d!104021 (= (validKeyInArray!0 (select (arr!21088 a!3170) j!153)) (and (not (= (select (arr!21088 a!3170) j!153) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!21088 a!3170) j!153) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!810769 d!104021))

(declare-fun d!104023 () Bool)

(assert (=> d!104023 (= (validMask!0 mask!3266) (and (or (= mask!3266 #b00000000000000000000000000000111) (= mask!3266 #b00000000000000000000000000001111) (= mask!3266 #b00000000000000000000000000011111) (= mask!3266 #b00000000000000000000000000111111) (= mask!3266 #b00000000000000000000000001111111) (= mask!3266 #b00000000000000000000000011111111) (= mask!3266 #b00000000000000000000000111111111) (= mask!3266 #b00000000000000000000001111111111) (= mask!3266 #b00000000000000000000011111111111) (= mask!3266 #b00000000000000000000111111111111) (= mask!3266 #b00000000000000000001111111111111) (= mask!3266 #b00000000000000000011111111111111) (= mask!3266 #b00000000000000000111111111111111) (= mask!3266 #b00000000000000001111111111111111) (= mask!3266 #b00000000000000011111111111111111) (= mask!3266 #b00000000000000111111111111111111) (= mask!3266 #b00000000000001111111111111111111) (= mask!3266 #b00000000000011111111111111111111) (= mask!3266 #b00000000000111111111111111111111) (= mask!3266 #b00000000001111111111111111111111) (= mask!3266 #b00000000011111111111111111111111) (= mask!3266 #b00000000111111111111111111111111) (= mask!3266 #b00000001111111111111111111111111) (= mask!3266 #b00000011111111111111111111111111) (= mask!3266 #b00000111111111111111111111111111) (= mask!3266 #b00001111111111111111111111111111) (= mask!3266 #b00011111111111111111111111111111) (= mask!3266 #b00111111111111111111111111111111)) (bvsle mask!3266 #b00111111111111111111111111111111)))))

(assert (=> start!69594 d!104023))

(declare-fun d!104025 () Bool)

(assert (=> d!104025 (= (array_inv!16862 a!3170) (bvsge (size!21509 a!3170) #b00000000000000000000000000000000))))

(assert (=> start!69594 d!104025))

(declare-fun b!810824 () Bool)

(declare-fun e!448801 () Bool)

(declare-fun call!35457 () Bool)

(assert (=> b!810824 (= e!448801 call!35457)))

(declare-fun b!810825 () Bool)

(declare-fun e!448802 () Bool)

(declare-fun e!448803 () Bool)

(assert (=> b!810825 (= e!448802 e!448803)))

(declare-fun res!554267 () Bool)

(assert (=> b!810825 (=> (not res!554267) (not e!448803))))

(declare-fun e!448804 () Bool)

(assert (=> b!810825 (= res!554267 (not e!448804))))

(declare-fun res!554269 () Bool)

(assert (=> b!810825 (=> (not res!554269) (not e!448804))))

(assert (=> b!810825 (= res!554269 (validKeyInArray!0 (select (arr!21088 a!3170) #b00000000000000000000000000000000)))))

(declare-fun d!104027 () Bool)

(declare-fun res!554268 () Bool)

(assert (=> d!104027 (=> res!554268 e!448802)))

(assert (=> d!104027 (= res!554268 (bvsge #b00000000000000000000000000000000 (size!21509 a!3170)))))

(assert (=> d!104027 (= (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15101) e!448802)))

(declare-fun b!810826 () Bool)

(assert (=> b!810826 (= e!448803 e!448801)))

(declare-fun c!88689 () Bool)

(assert (=> b!810826 (= c!88689 (validKeyInArray!0 (select (arr!21088 a!3170) #b00000000000000000000000000000000)))))

(declare-fun bm!35454 () Bool)

(assert (=> bm!35454 (= call!35457 (arrayNoDuplicates!0 a!3170 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!88689 (Cons!15100 (select (arr!21088 a!3170) #b00000000000000000000000000000000) Nil!15101) Nil!15101)))))

(declare-fun b!810827 () Bool)

(assert (=> b!810827 (= e!448801 call!35457)))

(declare-fun b!810828 () Bool)

(declare-fun contains!4136 (List!15104 (_ BitVec 64)) Bool)

(assert (=> b!810828 (= e!448804 (contains!4136 Nil!15101 (select (arr!21088 a!3170) #b00000000000000000000000000000000)))))

(assert (= (and d!104027 (not res!554268)) b!810825))

(assert (= (and b!810825 res!554269) b!810828))

(assert (= (and b!810825 res!554267) b!810826))

(assert (= (and b!810826 c!88689) b!810827))

(assert (= (and b!810826 (not c!88689)) b!810824))

(assert (= (or b!810827 b!810824) bm!35454))

(declare-fun m!753247 () Bool)

(assert (=> b!810825 m!753247))

(assert (=> b!810825 m!753247))

(declare-fun m!753249 () Bool)

(assert (=> b!810825 m!753249))

(assert (=> b!810826 m!753247))

(assert (=> b!810826 m!753247))

(assert (=> b!810826 m!753249))

(assert (=> bm!35454 m!753247))

(declare-fun m!753251 () Bool)

(assert (=> bm!35454 m!753251))

(assert (=> b!810828 m!753247))

(assert (=> b!810828 m!753247))

(declare-fun m!753253 () Bool)

(assert (=> b!810828 m!753253))

(assert (=> b!810776 d!104027))

(declare-fun b!810842 () Bool)

(declare-fun e!448813 () SeekEntryResult!8686)

(assert (=> b!810842 (= e!448813 (MissingVacant!8686 vacantAfter!23))))

(declare-fun b!810843 () Bool)

(declare-fun e!448812 () SeekEntryResult!8686)

(assert (=> b!810843 (= e!448812 (Found!8686 index!1236))))

(declare-fun b!810844 () Bool)

(assert (=> b!810844 (= e!448813 (seekKeyOrZeroReturnVacant!0 (bvadd x!1077 #b00000000000000000000000000000001) (nextIndex!0 index!1236 x!1077 mask!3266) vacantAfter!23 lt!363498 lt!363490 mask!3266))))

(declare-fun b!810845 () Bool)

(declare-fun e!448811 () SeekEntryResult!8686)

(assert (=> b!810845 (= e!448811 Undefined!8686)))

(declare-fun b!810846 () Bool)

(assert (=> b!810846 (= e!448811 e!448812)))

(declare-fun c!88698 () Bool)

(declare-fun lt!363534 () (_ BitVec 64))

(assert (=> b!810846 (= c!88698 (= lt!363534 lt!363498))))

(declare-fun b!810841 () Bool)

(declare-fun c!88696 () Bool)

(assert (=> b!810841 (= c!88696 (= lt!363534 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!810841 (= e!448812 e!448813)))

(declare-fun d!104029 () Bool)

(declare-fun lt!363535 () SeekEntryResult!8686)

(get-info :version)

(assert (=> d!104029 (and (or ((_ is Undefined!8686) lt!363535) (not ((_ is Found!8686) lt!363535)) (and (bvsge (index!37112 lt!363535) #b00000000000000000000000000000000) (bvslt (index!37112 lt!363535) (size!21509 lt!363490)))) (or ((_ is Undefined!8686) lt!363535) ((_ is Found!8686) lt!363535) (not ((_ is MissingVacant!8686) lt!363535)) (not (= (index!37114 lt!363535) vacantAfter!23)) (and (bvsge (index!37114 lt!363535) #b00000000000000000000000000000000) (bvslt (index!37114 lt!363535) (size!21509 lt!363490)))) (or ((_ is Undefined!8686) lt!363535) (ite ((_ is Found!8686) lt!363535) (= (select (arr!21088 lt!363490) (index!37112 lt!363535)) lt!363498) (and ((_ is MissingVacant!8686) lt!363535) (= (index!37114 lt!363535) vacantAfter!23) (= (select (arr!21088 lt!363490) (index!37114 lt!363535)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!104029 (= lt!363535 e!448811)))

(declare-fun c!88697 () Bool)

(assert (=> d!104029 (= c!88697 (bvsge x!1077 #b01111111111111111111111111111110))))

(assert (=> d!104029 (= lt!363534 (select (arr!21088 lt!363490) index!1236))))

(assert (=> d!104029 (validMask!0 mask!3266)))

(assert (=> d!104029 (= (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!363498 lt!363490 mask!3266) lt!363535)))

(assert (= (and d!104029 c!88697) b!810845))

(assert (= (and d!104029 (not c!88697)) b!810846))

(assert (= (and b!810846 c!88698) b!810843))

(assert (= (and b!810846 (not c!88698)) b!810841))

(assert (= (and b!810841 c!88696) b!810842))

(assert (= (and b!810841 (not c!88696)) b!810844))

(assert (=> b!810844 m!753185))

(assert (=> b!810844 m!753185))

(declare-fun m!753255 () Bool)

(assert (=> b!810844 m!753255))

(declare-fun m!753257 () Bool)

(assert (=> d!104029 m!753257))

(declare-fun m!753259 () Bool)

(assert (=> d!104029 m!753259))

(declare-fun m!753261 () Bool)

(assert (=> d!104029 m!753261))

(assert (=> d!104029 m!753167))

(assert (=> b!810771 d!104029))

(declare-fun b!810886 () Bool)

(declare-fun e!448838 () SeekEntryResult!8686)

(declare-fun lt!363548 () SeekEntryResult!8686)

(assert (=> b!810886 (= e!448838 (Found!8686 (index!37113 lt!363548)))))

(declare-fun d!104031 () Bool)

(declare-fun lt!363547 () SeekEntryResult!8686)

(assert (=> d!104031 (and (or ((_ is Undefined!8686) lt!363547) (not ((_ is Found!8686) lt!363547)) (and (bvsge (index!37112 lt!363547) #b00000000000000000000000000000000) (bvslt (index!37112 lt!363547) (size!21509 lt!363490)))) (or ((_ is Undefined!8686) lt!363547) ((_ is Found!8686) lt!363547) (not ((_ is MissingZero!8686) lt!363547)) (and (bvsge (index!37111 lt!363547) #b00000000000000000000000000000000) (bvslt (index!37111 lt!363547) (size!21509 lt!363490)))) (or ((_ is Undefined!8686) lt!363547) ((_ is Found!8686) lt!363547) ((_ is MissingZero!8686) lt!363547) (not ((_ is MissingVacant!8686) lt!363547)) (and (bvsge (index!37114 lt!363547) #b00000000000000000000000000000000) (bvslt (index!37114 lt!363547) (size!21509 lt!363490)))) (or ((_ is Undefined!8686) lt!363547) (ite ((_ is Found!8686) lt!363547) (= (select (arr!21088 lt!363490) (index!37112 lt!363547)) lt!363498) (ite ((_ is MissingZero!8686) lt!363547) (= (select (arr!21088 lt!363490) (index!37111 lt!363547)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!8686) lt!363547) (= (select (arr!21088 lt!363490) (index!37114 lt!363547)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!448839 () SeekEntryResult!8686)

(assert (=> d!104031 (= lt!363547 e!448839)))

(declare-fun c!88714 () Bool)

(assert (=> d!104031 (= c!88714 (and ((_ is Intermediate!8686) lt!363548) (undefined!9498 lt!363548)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!44041 (_ BitVec 32)) SeekEntryResult!8686)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!104031 (= lt!363548 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!363498 mask!3266) lt!363498 lt!363490 mask!3266))))

(assert (=> d!104031 (validMask!0 mask!3266)))

(assert (=> d!104031 (= (seekEntryOrOpen!0 lt!363498 lt!363490 mask!3266) lt!363547)))

(declare-fun b!810887 () Bool)

(assert (=> b!810887 (= e!448839 Undefined!8686)))

(declare-fun e!448840 () SeekEntryResult!8686)

(declare-fun b!810888 () Bool)

(assert (=> b!810888 (= e!448840 (seekKeyOrZeroReturnVacant!0 (x!67947 lt!363548) (index!37113 lt!363548) (index!37113 lt!363548) lt!363498 lt!363490 mask!3266))))

(declare-fun b!810889 () Bool)

(assert (=> b!810889 (= e!448840 (MissingZero!8686 (index!37113 lt!363548)))))

(declare-fun b!810890 () Bool)

(declare-fun c!88716 () Bool)

(declare-fun lt!363546 () (_ BitVec 64))

(assert (=> b!810890 (= c!88716 (= lt!363546 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!810890 (= e!448838 e!448840)))

(declare-fun b!810891 () Bool)

(assert (=> b!810891 (= e!448839 e!448838)))

(assert (=> b!810891 (= lt!363546 (select (arr!21088 lt!363490) (index!37113 lt!363548)))))

(declare-fun c!88715 () Bool)

(assert (=> b!810891 (= c!88715 (= lt!363546 lt!363498))))

(assert (= (and d!104031 c!88714) b!810887))

(assert (= (and d!104031 (not c!88714)) b!810891))

(assert (= (and b!810891 c!88715) b!810886))

(assert (= (and b!810891 (not c!88715)) b!810890))

(assert (= (and b!810890 c!88716) b!810889))

(assert (= (and b!810890 (not c!88716)) b!810888))

(declare-fun m!753271 () Bool)

(assert (=> d!104031 m!753271))

(assert (=> d!104031 m!753167))

(assert (=> d!104031 m!753271))

(declare-fun m!753273 () Bool)

(assert (=> d!104031 m!753273))

(declare-fun m!753275 () Bool)

(assert (=> d!104031 m!753275))

(declare-fun m!753277 () Bool)

(assert (=> d!104031 m!753277))

(declare-fun m!753279 () Bool)

(assert (=> d!104031 m!753279))

(declare-fun m!753281 () Bool)

(assert (=> b!810888 m!753281))

(declare-fun m!753283 () Bool)

(assert (=> b!810891 m!753283))

(assert (=> b!810771 d!104031))

(declare-fun b!810893 () Bool)

(declare-fun e!448843 () SeekEntryResult!8686)

(assert (=> b!810893 (= e!448843 (MissingVacant!8686 vacantAfter!23))))

(declare-fun b!810894 () Bool)

(declare-fun e!448842 () SeekEntryResult!8686)

(assert (=> b!810894 (= e!448842 (Found!8686 lt!363491))))

(declare-fun b!810895 () Bool)

(assert (=> b!810895 (= e!448843 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077 #b00000000000000000000000000000001) (nextIndex!0 lt!363491 (bvadd #b00000000000000000000000000000001 x!1077) mask!3266) vacantAfter!23 lt!363498 lt!363490 mask!3266))))

(declare-fun b!810896 () Bool)

(declare-fun e!448841 () SeekEntryResult!8686)

(assert (=> b!810896 (= e!448841 Undefined!8686)))

(declare-fun b!810897 () Bool)

(assert (=> b!810897 (= e!448841 e!448842)))

(declare-fun c!88719 () Bool)

(declare-fun lt!363549 () (_ BitVec 64))

(assert (=> b!810897 (= c!88719 (= lt!363549 lt!363498))))

(declare-fun b!810892 () Bool)

(declare-fun c!88717 () Bool)

(assert (=> b!810892 (= c!88717 (= lt!363549 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!810892 (= e!448842 e!448843)))

(declare-fun d!104041 () Bool)

(declare-fun lt!363550 () SeekEntryResult!8686)

(assert (=> d!104041 (and (or ((_ is Undefined!8686) lt!363550) (not ((_ is Found!8686) lt!363550)) (and (bvsge (index!37112 lt!363550) #b00000000000000000000000000000000) (bvslt (index!37112 lt!363550) (size!21509 lt!363490)))) (or ((_ is Undefined!8686) lt!363550) ((_ is Found!8686) lt!363550) (not ((_ is MissingVacant!8686) lt!363550)) (not (= (index!37114 lt!363550) vacantAfter!23)) (and (bvsge (index!37114 lt!363550) #b00000000000000000000000000000000) (bvslt (index!37114 lt!363550) (size!21509 lt!363490)))) (or ((_ is Undefined!8686) lt!363550) (ite ((_ is Found!8686) lt!363550) (= (select (arr!21088 lt!363490) (index!37112 lt!363550)) lt!363498) (and ((_ is MissingVacant!8686) lt!363550) (= (index!37114 lt!363550) vacantAfter!23) (= (select (arr!21088 lt!363490) (index!37114 lt!363550)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!104041 (= lt!363550 e!448841)))

(declare-fun c!88718 () Bool)

(assert (=> d!104041 (= c!88718 (bvsge (bvadd #b00000000000000000000000000000001 x!1077) #b01111111111111111111111111111110))))

(assert (=> d!104041 (= lt!363549 (select (arr!21088 lt!363490) lt!363491))))

(assert (=> d!104041 (validMask!0 mask!3266)))

(assert (=> d!104041 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!363491 vacantAfter!23 lt!363498 lt!363490 mask!3266) lt!363550)))

(assert (= (and d!104041 c!88718) b!810896))

(assert (= (and d!104041 (not c!88718)) b!810897))

(assert (= (and b!810897 c!88719) b!810894))

(assert (= (and b!810897 (not c!88719)) b!810892))

(assert (= (and b!810892 c!88717) b!810893))

(assert (= (and b!810892 (not c!88717)) b!810895))

(declare-fun m!753285 () Bool)

(assert (=> b!810895 m!753285))

(assert (=> b!810895 m!753285))

(declare-fun m!753287 () Bool)

(assert (=> b!810895 m!753287))

(declare-fun m!753289 () Bool)

(assert (=> d!104041 m!753289))

(declare-fun m!753291 () Bool)

(assert (=> d!104041 m!753291))

(declare-fun m!753293 () Bool)

(assert (=> d!104041 m!753293))

(assert (=> d!104041 m!753167))

(assert (=> b!810772 d!104041))

(declare-fun b!810905 () Bool)

(declare-fun e!448849 () SeekEntryResult!8686)

(assert (=> b!810905 (= e!448849 (MissingVacant!8686 vacantBefore!23))))

(declare-fun b!810906 () Bool)

(declare-fun e!448848 () SeekEntryResult!8686)

(assert (=> b!810906 (= e!448848 (Found!8686 lt!363491))))

(declare-fun b!810907 () Bool)

(assert (=> b!810907 (= e!448849 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077 #b00000000000000000000000000000001) (nextIndex!0 lt!363491 (bvadd #b00000000000000000000000000000001 x!1077) mask!3266) vacantBefore!23 (select (arr!21088 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!810908 () Bool)

(declare-fun e!448847 () SeekEntryResult!8686)

(assert (=> b!810908 (= e!448847 Undefined!8686)))

(declare-fun b!810909 () Bool)

(assert (=> b!810909 (= e!448847 e!448848)))

(declare-fun lt!363553 () (_ BitVec 64))

(declare-fun c!88725 () Bool)

(assert (=> b!810909 (= c!88725 (= lt!363553 (select (arr!21088 a!3170) j!153)))))

(declare-fun b!810904 () Bool)

(declare-fun c!88723 () Bool)

(assert (=> b!810904 (= c!88723 (= lt!363553 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!810904 (= e!448848 e!448849)))

(declare-fun lt!363554 () SeekEntryResult!8686)

(declare-fun d!104043 () Bool)

(assert (=> d!104043 (and (or ((_ is Undefined!8686) lt!363554) (not ((_ is Found!8686) lt!363554)) (and (bvsge (index!37112 lt!363554) #b00000000000000000000000000000000) (bvslt (index!37112 lt!363554) (size!21509 a!3170)))) (or ((_ is Undefined!8686) lt!363554) ((_ is Found!8686) lt!363554) (not ((_ is MissingVacant!8686) lt!363554)) (not (= (index!37114 lt!363554) vacantBefore!23)) (and (bvsge (index!37114 lt!363554) #b00000000000000000000000000000000) (bvslt (index!37114 lt!363554) (size!21509 a!3170)))) (or ((_ is Undefined!8686) lt!363554) (ite ((_ is Found!8686) lt!363554) (= (select (arr!21088 a!3170) (index!37112 lt!363554)) (select (arr!21088 a!3170) j!153)) (and ((_ is MissingVacant!8686) lt!363554) (= (index!37114 lt!363554) vacantBefore!23) (= (select (arr!21088 a!3170) (index!37114 lt!363554)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!104043 (= lt!363554 e!448847)))

(declare-fun c!88724 () Bool)

(assert (=> d!104043 (= c!88724 (bvsge (bvadd #b00000000000000000000000000000001 x!1077) #b01111111111111111111111111111110))))

(assert (=> d!104043 (= lt!363553 (select (arr!21088 a!3170) lt!363491))))

(assert (=> d!104043 (validMask!0 mask!3266)))

(assert (=> d!104043 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!363491 vacantBefore!23 (select (arr!21088 a!3170) j!153) a!3170 mask!3266) lt!363554)))

(assert (= (and d!104043 c!88724) b!810908))

(assert (= (and d!104043 (not c!88724)) b!810909))

(assert (= (and b!810909 c!88725) b!810906))

(assert (= (and b!810909 (not c!88725)) b!810904))

(assert (= (and b!810904 c!88723) b!810905))

(assert (= (and b!810904 (not c!88723)) b!810907))

(assert (=> b!810907 m!753285))

(assert (=> b!810907 m!753285))

(assert (=> b!810907 m!753163))

(declare-fun m!753305 () Bool)

(assert (=> b!810907 m!753305))

(declare-fun m!753307 () Bool)

(assert (=> d!104043 m!753307))

(declare-fun m!753309 () Bool)

(assert (=> d!104043 m!753309))

(declare-fun m!753311 () Bool)

(assert (=> d!104043 m!753311))

(assert (=> d!104043 m!753167))

(assert (=> b!810772 d!104043))

(declare-fun d!104047 () Bool)

(declare-fun e!448869 () Bool)

(assert (=> d!104047 e!448869))

(declare-fun res!554283 () Bool)

(assert (=> d!104047 (=> (not res!554283) (not e!448869))))

(assert (=> d!104047 (= res!554283 (and (or (bvslt i!1163 #b00000000000000000000000000000000) (bvsge i!1163 (size!21509 a!3170)) (and (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21509 a!3170)))) (or (bvslt i!1163 #b00000000000000000000000000000000) (bvsge i!1163 (size!21509 a!3170)) (and (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21509 a!3170)))) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21509 a!3170))))))

(declare-fun lt!363569 () Unit!27634)

(declare-fun choose!112 (array!44041 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27634)

(assert (=> d!104047 (= lt!363569 (choose!112 a!3170 i!1163 k0!2044 j!153 lt!363491 (bvadd #b00000000000000000000000000000001 x!1077) vacantBefore!23 vacantAfter!23 mask!3266))))

(assert (=> d!104047 (validMask!0 mask!3266)))

(assert (=> d!104047 (= (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3170 i!1163 k0!2044 j!153 lt!363491 (bvadd #b00000000000000000000000000000001 x!1077) vacantBefore!23 vacantAfter!23 mask!3266) lt!363569)))

(declare-fun b!810944 () Bool)

(assert (=> b!810944 (= e!448869 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!363491 vacantAfter!23 (select (store (arr!21088 a!3170) i!1163 k0!2044) j!153) (array!44042 (store (arr!21088 a!3170) i!1163 k0!2044) (size!21509 a!3170)) mask!3266) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!363491 vacantBefore!23 (select (arr!21088 a!3170) j!153) a!3170 mask!3266)))))

(assert (= (and d!104047 res!554283) b!810944))

(declare-fun m!753339 () Bool)

(assert (=> d!104047 m!753339))

(assert (=> d!104047 m!753167))

(assert (=> b!810944 m!753163))

(assert (=> b!810944 m!753189))

(assert (=> b!810944 m!753201))

(declare-fun m!753341 () Bool)

(assert (=> b!810944 m!753341))

(assert (=> b!810944 m!753163))

(assert (=> b!810944 m!753201))

(assert (=> b!810944 m!753199))

(assert (=> b!810772 d!104047))

(declare-fun d!104055 () Bool)

(declare-fun lt!363575 () (_ BitVec 32))

(assert (=> d!104055 (and (bvsge lt!363575 #b00000000000000000000000000000000) (bvslt lt!363575 (bvadd mask!3266 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!104055 (= lt!363575 (choose!52 index!1236 x!1077 mask!3266))))

(assert (=> d!104055 (validMask!0 mask!3266)))

(assert (=> d!104055 (= (nextIndex!0 index!1236 x!1077 mask!3266) lt!363575)))

(declare-fun bs!22441 () Bool)

(assert (= bs!22441 d!104055))

(declare-fun m!753347 () Bool)

(assert (=> bs!22441 m!753347))

(assert (=> bs!22441 m!753167))

(assert (=> b!810772 d!104055))

(declare-fun b!810946 () Bool)

(declare-fun e!448871 () SeekEntryResult!8686)

(declare-fun lt!363578 () SeekEntryResult!8686)

(assert (=> b!810946 (= e!448871 (Found!8686 (index!37113 lt!363578)))))

(declare-fun d!104059 () Bool)

(declare-fun lt!363577 () SeekEntryResult!8686)

(assert (=> d!104059 (and (or ((_ is Undefined!8686) lt!363577) (not ((_ is Found!8686) lt!363577)) (and (bvsge (index!37112 lt!363577) #b00000000000000000000000000000000) (bvslt (index!37112 lt!363577) (size!21509 a!3170)))) (or ((_ is Undefined!8686) lt!363577) ((_ is Found!8686) lt!363577) (not ((_ is MissingZero!8686) lt!363577)) (and (bvsge (index!37111 lt!363577) #b00000000000000000000000000000000) (bvslt (index!37111 lt!363577) (size!21509 a!3170)))) (or ((_ is Undefined!8686) lt!363577) ((_ is Found!8686) lt!363577) ((_ is MissingZero!8686) lt!363577) (not ((_ is MissingVacant!8686) lt!363577)) (and (bvsge (index!37114 lt!363577) #b00000000000000000000000000000000) (bvslt (index!37114 lt!363577) (size!21509 a!3170)))) (or ((_ is Undefined!8686) lt!363577) (ite ((_ is Found!8686) lt!363577) (= (select (arr!21088 a!3170) (index!37112 lt!363577)) k0!2044) (ite ((_ is MissingZero!8686) lt!363577) (= (select (arr!21088 a!3170) (index!37111 lt!363577)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!8686) lt!363577) (= (select (arr!21088 a!3170) (index!37114 lt!363577)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!448872 () SeekEntryResult!8686)

(assert (=> d!104059 (= lt!363577 e!448872)))

(declare-fun c!88741 () Bool)

(assert (=> d!104059 (= c!88741 (and ((_ is Intermediate!8686) lt!363578) (undefined!9498 lt!363578)))))

(assert (=> d!104059 (= lt!363578 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2044 mask!3266) k0!2044 a!3170 mask!3266))))

(assert (=> d!104059 (validMask!0 mask!3266)))

(assert (=> d!104059 (= (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266) lt!363577)))

(declare-fun b!810947 () Bool)

(assert (=> b!810947 (= e!448872 Undefined!8686)))

(declare-fun e!448873 () SeekEntryResult!8686)

(declare-fun b!810948 () Bool)

(assert (=> b!810948 (= e!448873 (seekKeyOrZeroReturnVacant!0 (x!67947 lt!363578) (index!37113 lt!363578) (index!37113 lt!363578) k0!2044 a!3170 mask!3266))))

(declare-fun b!810949 () Bool)

(assert (=> b!810949 (= e!448873 (MissingZero!8686 (index!37113 lt!363578)))))

(declare-fun b!810950 () Bool)

(declare-fun c!88743 () Bool)

(declare-fun lt!363576 () (_ BitVec 64))

(assert (=> b!810950 (= c!88743 (= lt!363576 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!810950 (= e!448871 e!448873)))

(declare-fun b!810951 () Bool)

(assert (=> b!810951 (= e!448872 e!448871)))

(assert (=> b!810951 (= lt!363576 (select (arr!21088 a!3170) (index!37113 lt!363578)))))

(declare-fun c!88742 () Bool)

(assert (=> b!810951 (= c!88742 (= lt!363576 k0!2044))))

(assert (= (and d!104059 c!88741) b!810947))

(assert (= (and d!104059 (not c!88741)) b!810951))

(assert (= (and b!810951 c!88742) b!810946))

(assert (= (and b!810951 (not c!88742)) b!810950))

(assert (= (and b!810950 c!88743) b!810949))

(assert (= (and b!810950 (not c!88743)) b!810948))

(declare-fun m!753351 () Bool)

(assert (=> d!104059 m!753351))

(assert (=> d!104059 m!753167))

(assert (=> d!104059 m!753351))

(declare-fun m!753353 () Bool)

(assert (=> d!104059 m!753353))

(declare-fun m!753355 () Bool)

(assert (=> d!104059 m!753355))

(declare-fun m!753357 () Bool)

(assert (=> d!104059 m!753357))

(declare-fun m!753359 () Bool)

(assert (=> d!104059 m!753359))

(declare-fun m!753361 () Bool)

(assert (=> b!810948 m!753361))

(declare-fun m!753363 () Bool)

(assert (=> b!810951 m!753363))

(assert (=> b!810767 d!104059))

(declare-fun d!104063 () Bool)

(declare-fun res!554289 () Bool)

(declare-fun e!448881 () Bool)

(assert (=> d!104063 (=> res!554289 e!448881)))

(assert (=> d!104063 (= res!554289 (= (select (arr!21088 a!3170) #b00000000000000000000000000000000) k0!2044))))

(assert (=> d!104063 (= (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000) e!448881)))

(declare-fun b!810962 () Bool)

(declare-fun e!448882 () Bool)

(assert (=> b!810962 (= e!448881 e!448882)))

(declare-fun res!554290 () Bool)

(assert (=> b!810962 (=> (not res!554290) (not e!448882))))

(assert (=> b!810962 (= res!554290 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!21509 a!3170)))))

(declare-fun b!810963 () Bool)

(assert (=> b!810963 (= e!448882 (arrayContainsKey!0 a!3170 k0!2044 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!104063 (not res!554289)) b!810962))

(assert (= (and b!810962 res!554290) b!810963))

(assert (=> d!104063 m!753247))

(declare-fun m!753373 () Bool)

(assert (=> b!810963 m!753373))

(assert (=> b!810766 d!104063))

(declare-fun b!810965 () Bool)

(declare-fun e!448885 () SeekEntryResult!8686)

(assert (=> b!810965 (= e!448885 (MissingVacant!8686 vacantBefore!23))))

(declare-fun b!810966 () Bool)

(declare-fun e!448884 () SeekEntryResult!8686)

(assert (=> b!810966 (= e!448884 (Found!8686 index!1236))))

(declare-fun b!810967 () Bool)

(assert (=> b!810967 (= e!448885 (seekKeyOrZeroReturnVacant!0 (bvadd x!1077 #b00000000000000000000000000000001) (nextIndex!0 index!1236 x!1077 mask!3266) vacantBefore!23 (select (arr!21088 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!810968 () Bool)

(declare-fun e!448883 () SeekEntryResult!8686)

(assert (=> b!810968 (= e!448883 Undefined!8686)))

(declare-fun b!810969 () Bool)

(assert (=> b!810969 (= e!448883 e!448884)))

(declare-fun lt!363582 () (_ BitVec 64))

(declare-fun c!88749 () Bool)

(assert (=> b!810969 (= c!88749 (= lt!363582 (select (arr!21088 a!3170) j!153)))))

(declare-fun b!810964 () Bool)

(declare-fun c!88747 () Bool)

(assert (=> b!810964 (= c!88747 (= lt!363582 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!810964 (= e!448884 e!448885)))

(declare-fun lt!363583 () SeekEntryResult!8686)

(declare-fun d!104067 () Bool)

(assert (=> d!104067 (and (or ((_ is Undefined!8686) lt!363583) (not ((_ is Found!8686) lt!363583)) (and (bvsge (index!37112 lt!363583) #b00000000000000000000000000000000) (bvslt (index!37112 lt!363583) (size!21509 a!3170)))) (or ((_ is Undefined!8686) lt!363583) ((_ is Found!8686) lt!363583) (not ((_ is MissingVacant!8686) lt!363583)) (not (= (index!37114 lt!363583) vacantBefore!23)) (and (bvsge (index!37114 lt!363583) #b00000000000000000000000000000000) (bvslt (index!37114 lt!363583) (size!21509 a!3170)))) (or ((_ is Undefined!8686) lt!363583) (ite ((_ is Found!8686) lt!363583) (= (select (arr!21088 a!3170) (index!37112 lt!363583)) (select (arr!21088 a!3170) j!153)) (and ((_ is MissingVacant!8686) lt!363583) (= (index!37114 lt!363583) vacantBefore!23) (= (select (arr!21088 a!3170) (index!37114 lt!363583)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!104067 (= lt!363583 e!448883)))

(declare-fun c!88748 () Bool)

(assert (=> d!104067 (= c!88748 (bvsge x!1077 #b01111111111111111111111111111110))))

(assert (=> d!104067 (= lt!363582 (select (arr!21088 a!3170) index!1236))))

(assert (=> d!104067 (validMask!0 mask!3266)))

(assert (=> d!104067 (= (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21088 a!3170) j!153) a!3170 mask!3266) lt!363583)))

(assert (= (and d!104067 c!88748) b!810968))

(assert (= (and d!104067 (not c!88748)) b!810969))

(assert (= (and b!810969 c!88749) b!810966))

(assert (= (and b!810969 (not c!88749)) b!810964))

(assert (= (and b!810964 c!88747) b!810965))

(assert (= (and b!810964 (not c!88747)) b!810967))

(assert (=> b!810967 m!753185))

(assert (=> b!810967 m!753185))

(assert (=> b!810967 m!753163))

(declare-fun m!753375 () Bool)

(assert (=> b!810967 m!753375))

(declare-fun m!753377 () Bool)

(assert (=> d!104067 m!753377))

(declare-fun m!753379 () Bool)

(assert (=> d!104067 m!753379))

(assert (=> d!104067 m!753181))

(assert (=> d!104067 m!753167))

(assert (=> b!810768 d!104067))

(declare-fun b!810970 () Bool)

(declare-fun e!448886 () SeekEntryResult!8686)

(declare-fun lt!363588 () SeekEntryResult!8686)

(assert (=> b!810970 (= e!448886 (Found!8686 (index!37113 lt!363588)))))

(declare-fun d!104069 () Bool)

(declare-fun lt!363587 () SeekEntryResult!8686)

(assert (=> d!104069 (and (or ((_ is Undefined!8686) lt!363587) (not ((_ is Found!8686) lt!363587)) (and (bvsge (index!37112 lt!363587) #b00000000000000000000000000000000) (bvslt (index!37112 lt!363587) (size!21509 a!3170)))) (or ((_ is Undefined!8686) lt!363587) ((_ is Found!8686) lt!363587) (not ((_ is MissingZero!8686) lt!363587)) (and (bvsge (index!37111 lt!363587) #b00000000000000000000000000000000) (bvslt (index!37111 lt!363587) (size!21509 a!3170)))) (or ((_ is Undefined!8686) lt!363587) ((_ is Found!8686) lt!363587) ((_ is MissingZero!8686) lt!363587) (not ((_ is MissingVacant!8686) lt!363587)) (and (bvsge (index!37114 lt!363587) #b00000000000000000000000000000000) (bvslt (index!37114 lt!363587) (size!21509 a!3170)))) (or ((_ is Undefined!8686) lt!363587) (ite ((_ is Found!8686) lt!363587) (= (select (arr!21088 a!3170) (index!37112 lt!363587)) (select (arr!21088 a!3170) j!153)) (ite ((_ is MissingZero!8686) lt!363587) (= (select (arr!21088 a!3170) (index!37111 lt!363587)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!8686) lt!363587) (= (select (arr!21088 a!3170) (index!37114 lt!363587)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!448887 () SeekEntryResult!8686)

(assert (=> d!104069 (= lt!363587 e!448887)))

(declare-fun c!88750 () Bool)

(assert (=> d!104069 (= c!88750 (and ((_ is Intermediate!8686) lt!363588) (undefined!9498 lt!363588)))))

(assert (=> d!104069 (= lt!363588 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!21088 a!3170) j!153) mask!3266) (select (arr!21088 a!3170) j!153) a!3170 mask!3266))))

(assert (=> d!104069 (validMask!0 mask!3266)))

(assert (=> d!104069 (= (seekEntryOrOpen!0 (select (arr!21088 a!3170) j!153) a!3170 mask!3266) lt!363587)))

(declare-fun b!810971 () Bool)

(assert (=> b!810971 (= e!448887 Undefined!8686)))

(declare-fun b!810972 () Bool)

(declare-fun e!448888 () SeekEntryResult!8686)

(assert (=> b!810972 (= e!448888 (seekKeyOrZeroReturnVacant!0 (x!67947 lt!363588) (index!37113 lt!363588) (index!37113 lt!363588) (select (arr!21088 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!810973 () Bool)

(assert (=> b!810973 (= e!448888 (MissingZero!8686 (index!37113 lt!363588)))))

(declare-fun b!810974 () Bool)

(declare-fun c!88752 () Bool)

(declare-fun lt!363586 () (_ BitVec 64))

(assert (=> b!810974 (= c!88752 (= lt!363586 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!810974 (= e!448886 e!448888)))

(declare-fun b!810975 () Bool)

(assert (=> b!810975 (= e!448887 e!448886)))

(assert (=> b!810975 (= lt!363586 (select (arr!21088 a!3170) (index!37113 lt!363588)))))

(declare-fun c!88751 () Bool)

(assert (=> b!810975 (= c!88751 (= lt!363586 (select (arr!21088 a!3170) j!153)))))

(assert (= (and d!104069 c!88750) b!810971))

(assert (= (and d!104069 (not c!88750)) b!810975))

(assert (= (and b!810975 c!88751) b!810970))

(assert (= (and b!810975 (not c!88751)) b!810974))

(assert (= (and b!810974 c!88752) b!810973))

(assert (= (and b!810974 (not c!88752)) b!810972))

(assert (=> d!104069 m!753163))

(declare-fun m!753381 () Bool)

(assert (=> d!104069 m!753381))

(assert (=> d!104069 m!753167))

(assert (=> d!104069 m!753381))

(assert (=> d!104069 m!753163))

(declare-fun m!753383 () Bool)

(assert (=> d!104069 m!753383))

(declare-fun m!753385 () Bool)

(assert (=> d!104069 m!753385))

(declare-fun m!753387 () Bool)

(assert (=> d!104069 m!753387))

(declare-fun m!753389 () Bool)

(assert (=> d!104069 m!753389))

(assert (=> b!810972 m!753163))

(declare-fun m!753391 () Bool)

(assert (=> b!810972 m!753391))

(declare-fun m!753393 () Bool)

(assert (=> b!810975 m!753393))

(assert (=> b!810768 d!104069))

(declare-fun b!810987 () Bool)

(declare-fun e!448900 () Bool)

(declare-fun e!448898 () Bool)

(assert (=> b!810987 (= e!448900 e!448898)))

(declare-fun lt!363601 () (_ BitVec 64))

(assert (=> b!810987 (= lt!363601 (select (arr!21088 a!3170) #b00000000000000000000000000000000))))

(declare-fun lt!363600 () Unit!27634)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!44041 (_ BitVec 64) (_ BitVec 32)) Unit!27634)

(assert (=> b!810987 (= lt!363600 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3170 lt!363601 #b00000000000000000000000000000000))))

(assert (=> b!810987 (arrayContainsKey!0 a!3170 lt!363601 #b00000000000000000000000000000000)))

(declare-fun lt!363599 () Unit!27634)

(assert (=> b!810987 (= lt!363599 lt!363600)))

(declare-fun res!554299 () Bool)

(assert (=> b!810987 (= res!554299 (= (seekEntryOrOpen!0 (select (arr!21088 a!3170) #b00000000000000000000000000000000) a!3170 mask!3266) (Found!8686 #b00000000000000000000000000000000)))))

(assert (=> b!810987 (=> (not res!554299) (not e!448898))))

(declare-fun bm!35460 () Bool)

(declare-fun call!35463 () Bool)

(assert (=> bm!35460 (= call!35463 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3170 mask!3266))))

(declare-fun d!104071 () Bool)

(declare-fun res!554298 () Bool)

(declare-fun e!448899 () Bool)

(assert (=> d!104071 (=> res!554298 e!448899)))

(assert (=> d!104071 (= res!554298 (bvsge #b00000000000000000000000000000000 (size!21509 a!3170)))))

(assert (=> d!104071 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266) e!448899)))

(declare-fun b!810988 () Bool)

(assert (=> b!810988 (= e!448898 call!35463)))

(declare-fun b!810989 () Bool)

(assert (=> b!810989 (= e!448900 call!35463)))

(declare-fun b!810990 () Bool)

(assert (=> b!810990 (= e!448899 e!448900)))

(declare-fun c!88755 () Bool)

(assert (=> b!810990 (= c!88755 (validKeyInArray!0 (select (arr!21088 a!3170) #b00000000000000000000000000000000)))))

(assert (= (and d!104071 (not res!554298)) b!810990))

(assert (= (and b!810990 c!88755) b!810987))

(assert (= (and b!810990 (not c!88755)) b!810989))

(assert (= (and b!810987 res!554299) b!810988))

(assert (= (or b!810988 b!810989) bm!35460))

(assert (=> b!810987 m!753247))

(declare-fun m!753401 () Bool)

(assert (=> b!810987 m!753401))

(declare-fun m!753403 () Bool)

(assert (=> b!810987 m!753403))

(assert (=> b!810987 m!753247))

(declare-fun m!753405 () Bool)

(assert (=> b!810987 m!753405))

(declare-fun m!753407 () Bool)

(assert (=> bm!35460 m!753407))

(assert (=> b!810990 m!753247))

(assert (=> b!810990 m!753247))

(assert (=> b!810990 m!753249))

(assert (=> b!810773 d!104071))

(check-sat (not b!810990) (not b!810987) (not b!810825) (not d!104031) (not bm!35460) (not d!104067) (not b!810972) (not d!104069) (not b!810828) (not b!810895) (not b!810888) (not b!810826) (not b!810948) (not d!104059) (not d!104029) (not b!810963) (not b!810907) (not d!104047) (not b!810844) (not b!810967) (not d!104041) (not bm!35454) (not b!810944) (not d!104043) (not d!104055))
(check-sat)
