; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69596 () Bool)

(assert start!69596)

(declare-fun b!810802 () Bool)

(declare-fun res!554260 () Bool)

(declare-fun e!448792 () Bool)

(assert (=> b!810802 (=> (not res!554260) (not e!448792))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-datatypes ((array!44043 0))(
  ( (array!44044 (arr!21089 (Array (_ BitVec 32) (_ BitVec 64))) (size!21510 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!44043)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(assert (=> b!810802 (= res!554260 (and (= (size!21510 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21510 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21510 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!810803 () Bool)

(declare-fun res!554253 () Bool)

(assert (=> b!810803 (=> (not res!554253) (not e!448792))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!810803 (= res!554253 (validKeyInArray!0 (select (arr!21089 a!3170) j!153)))))

(declare-fun b!810804 () Bool)

(declare-fun res!554257 () Bool)

(assert (=> b!810804 (=> (not res!554257) (not e!448792))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!44043 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!810804 (= res!554257 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun res!554255 () Bool)

(assert (=> start!69596 (=> (not res!554255) (not e!448792))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69596 (= res!554255 (validMask!0 mask!3266))))

(assert (=> start!69596 e!448792))

(assert (=> start!69596 true))

(declare-fun array_inv!16863 (array!44043) Bool)

(assert (=> start!69596 (array_inv!16863 a!3170)))

(declare-fun b!810805 () Bool)

(declare-fun e!448790 () Bool)

(declare-fun e!448789 () Bool)

(assert (=> b!810805 (= e!448790 e!448789)))

(declare-fun res!554252 () Bool)

(assert (=> b!810805 (=> (not res!554252) (not e!448789))))

(declare-datatypes ((SeekEntryResult!8687 0))(
  ( (MissingZero!8687 (index!37115 (_ BitVec 32))) (Found!8687 (index!37116 (_ BitVec 32))) (Intermediate!8687 (undefined!9499 Bool) (index!37117 (_ BitVec 32)) (x!67948 (_ BitVec 32))) (Undefined!8687) (MissingVacant!8687 (index!37118 (_ BitVec 32))) )
))
(declare-fun lt!363528 () SeekEntryResult!8687)

(declare-fun lt!363525 () SeekEntryResult!8687)

(assert (=> b!810805 (= res!554252 (= lt!363528 lt!363525))))

(declare-fun lt!363520 () array!44043)

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun lt!363522 () (_ BitVec 64))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!44043 (_ BitVec 32)) SeekEntryResult!8687)

(assert (=> b!810805 (= lt!363525 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!363522 lt!363520 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!44043 (_ BitVec 32)) SeekEntryResult!8687)

(assert (=> b!810805 (= lt!363528 (seekEntryOrOpen!0 lt!363522 lt!363520 mask!3266))))

(assert (=> b!810805 (= lt!363522 (select (store (arr!21089 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!810805 (= lt!363520 (array!44044 (store (arr!21089 a!3170) i!1163 k!2044) (size!21510 a!3170)))))

(declare-fun b!810806 () Bool)

(declare-fun res!554256 () Bool)

(assert (=> b!810806 (=> (not res!554256) (not e!448790))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!810806 (= res!554256 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21510 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!21089 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21510 a!3170)) (= (select (arr!21089 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!810807 () Bool)

(declare-fun e!448787 () Bool)

(declare-fun lt!363521 () SeekEntryResult!8687)

(assert (=> b!810807 (= e!448787 (not (= lt!363525 lt!363521)))))

(declare-fun lt!363527 () (_ BitVec 32))

(assert (=> b!810807 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!363527 vacantAfter!23 lt!363522 lt!363520 mask!3266) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!363527 vacantBefore!23 (select (arr!21089 a!3170) j!153) a!3170 mask!3266))))

(declare-datatypes ((Unit!27636 0))(
  ( (Unit!27637) )
))
(declare-fun lt!363524 () Unit!27636)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!44043 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27636)

(assert (=> b!810807 (= lt!363524 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3170 i!1163 k!2044 j!153 lt!363527 (bvadd #b00000000000000000000000000000001 x!1077) vacantBefore!23 vacantAfter!23 mask!3266))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!810807 (= lt!363527 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!810808 () Bool)

(declare-fun e!448788 () Bool)

(assert (=> b!810808 (= e!448788 e!448787)))

(declare-fun res!554250 () Bool)

(assert (=> b!810808 (=> (not res!554250) (not e!448787))))

(declare-fun lt!363523 () SeekEntryResult!8687)

(assert (=> b!810808 (= res!554250 (and (= lt!363523 lt!363521) (not (= (select (arr!21089 a!3170) index!1236) (select (arr!21089 a!3170) j!153)))))))

(assert (=> b!810808 (= lt!363521 (Found!8687 j!153))))

(declare-fun b!810809 () Bool)

(assert (=> b!810809 (= e!448792 e!448790)))

(declare-fun res!554254 () Bool)

(assert (=> b!810809 (=> (not res!554254) (not e!448790))))

(declare-fun lt!363526 () SeekEntryResult!8687)

(assert (=> b!810809 (= res!554254 (or (= lt!363526 (MissingZero!8687 i!1163)) (= lt!363526 (MissingVacant!8687 i!1163))))))

(assert (=> b!810809 (= lt!363526 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!810810 () Bool)

(declare-fun res!554259 () Bool)

(assert (=> b!810810 (=> (not res!554259) (not e!448790))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44043 (_ BitVec 32)) Bool)

(assert (=> b!810810 (= res!554259 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!810811 () Bool)

(assert (=> b!810811 (= e!448789 e!448788)))

(declare-fun res!554258 () Bool)

(assert (=> b!810811 (=> (not res!554258) (not e!448788))))

(declare-fun lt!363529 () SeekEntryResult!8687)

(assert (=> b!810811 (= res!554258 (= lt!363529 lt!363523))))

(assert (=> b!810811 (= lt!363523 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21089 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!810811 (= lt!363529 (seekEntryOrOpen!0 (select (arr!21089 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!810812 () Bool)

(declare-fun res!554251 () Bool)

(assert (=> b!810812 (=> (not res!554251) (not e!448790))))

(declare-datatypes ((List!15105 0))(
  ( (Nil!15102) (Cons!15101 (h!16230 (_ BitVec 64)) (t!21428 List!15105)) )
))
(declare-fun arrayNoDuplicates!0 (array!44043 (_ BitVec 32) List!15105) Bool)

(assert (=> b!810812 (= res!554251 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15102))))

(declare-fun b!810813 () Bool)

(declare-fun res!554249 () Bool)

(assert (=> b!810813 (=> (not res!554249) (not e!448792))))

(assert (=> b!810813 (= res!554249 (validKeyInArray!0 k!2044))))

(assert (= (and start!69596 res!554255) b!810802))

(assert (= (and b!810802 res!554260) b!810803))

(assert (= (and b!810803 res!554253) b!810813))

(assert (= (and b!810813 res!554249) b!810804))

(assert (= (and b!810804 res!554257) b!810809))

(assert (= (and b!810809 res!554254) b!810810))

(assert (= (and b!810810 res!554259) b!810812))

(assert (= (and b!810812 res!554251) b!810806))

(assert (= (and b!810806 res!554256) b!810805))

(assert (= (and b!810805 res!554252) b!810811))

(assert (= (and b!810811 res!554258) b!810808))

(assert (= (and b!810808 res!554250) b!810807))

(declare-fun m!753203 () Bool)

(assert (=> b!810807 m!753203))

(declare-fun m!753205 () Bool)

(assert (=> b!810807 m!753205))

(declare-fun m!753207 () Bool)

(assert (=> b!810807 m!753207))

(declare-fun m!753209 () Bool)

(assert (=> b!810807 m!753209))

(assert (=> b!810807 m!753203))

(declare-fun m!753211 () Bool)

(assert (=> b!810807 m!753211))

(declare-fun m!753213 () Bool)

(assert (=> b!810808 m!753213))

(assert (=> b!810808 m!753203))

(declare-fun m!753215 () Bool)

(assert (=> b!810804 m!753215))

(declare-fun m!753217 () Bool)

(assert (=> b!810805 m!753217))

(declare-fun m!753219 () Bool)

(assert (=> b!810805 m!753219))

(declare-fun m!753221 () Bool)

(assert (=> b!810805 m!753221))

(declare-fun m!753223 () Bool)

(assert (=> b!810805 m!753223))

(declare-fun m!753225 () Bool)

(assert (=> b!810809 m!753225))

(declare-fun m!753227 () Bool)

(assert (=> b!810812 m!753227))

(assert (=> b!810811 m!753203))

(assert (=> b!810811 m!753203))

(declare-fun m!753229 () Bool)

(assert (=> b!810811 m!753229))

(assert (=> b!810811 m!753203))

(declare-fun m!753231 () Bool)

(assert (=> b!810811 m!753231))

(declare-fun m!753233 () Bool)

(assert (=> b!810810 m!753233))

(declare-fun m!753235 () Bool)

(assert (=> b!810813 m!753235))

(declare-fun m!753237 () Bool)

(assert (=> b!810806 m!753237))

(declare-fun m!753239 () Bool)

(assert (=> b!810806 m!753239))

(assert (=> b!810803 m!753203))

(assert (=> b!810803 m!753203))

(declare-fun m!753241 () Bool)

(assert (=> b!810803 m!753241))

(declare-fun m!753243 () Bool)

(assert (=> start!69596 m!753243))

(declare-fun m!753245 () Bool)

(assert (=> start!69596 m!753245))

(push 1)

(assert (not b!810803))

(assert (not b!810811))

(assert (not b!810809))

(assert (not b!810804))

(assert (not b!810810))

(assert (not b!810805))

(assert (not start!69596))

(assert (not b!810807))

(assert (not b!810813))

(assert (not b!810812))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!104035 () Bool)

(assert (=> d!104035 (= (validKeyInArray!0 k!2044) (and (not (= k!2044 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2044 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!810813 d!104035))

(declare-fun b!810857 () Bool)

(declare-fun e!448822 () Bool)

(declare-fun e!448823 () Bool)

(assert (=> b!810857 (= e!448822 e!448823)))

(declare-fun res!554276 () Bool)

(assert (=> b!810857 (=> (not res!554276) (not e!448823))))

(declare-fun e!448824 () Bool)

(assert (=> b!810857 (= res!554276 (not e!448824))))

(declare-fun res!554278 () Bool)

(assert (=> b!810857 (=> (not res!554278) (not e!448824))))

(assert (=> b!810857 (= res!554278 (validKeyInArray!0 (select (arr!21089 a!3170) #b00000000000000000000000000000000)))))

(declare-fun b!810858 () Bool)

(declare-fun e!448825 () Bool)

(declare-fun call!35460 () Bool)

(assert (=> b!810858 (= e!448825 call!35460)))

(declare-fun d!104037 () Bool)

(declare-fun res!554277 () Bool)

(assert (=> d!104037 (=> res!554277 e!448822)))

(assert (=> d!104037 (= res!554277 (bvsge #b00000000000000000000000000000000 (size!21510 a!3170)))))

(assert (=> d!104037 (= (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15102) e!448822)))

(declare-fun b!810859 () Bool)

(assert (=> b!810859 (= e!448825 call!35460)))

(declare-fun b!810860 () Bool)

(declare-fun contains!4137 (List!15105 (_ BitVec 64)) Bool)

(assert (=> b!810860 (= e!448824 (contains!4137 Nil!15102 (select (arr!21089 a!3170) #b00000000000000000000000000000000)))))

(declare-fun b!810861 () Bool)

(assert (=> b!810861 (= e!448823 e!448825)))

(declare-fun c!88701 () Bool)

(assert (=> b!810861 (= c!88701 (validKeyInArray!0 (select (arr!21089 a!3170) #b00000000000000000000000000000000)))))

(declare-fun bm!35457 () Bool)

(assert (=> bm!35457 (= call!35460 (arrayNoDuplicates!0 a!3170 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!88701 (Cons!15101 (select (arr!21089 a!3170) #b00000000000000000000000000000000) Nil!15102) Nil!15102)))))

(assert (= (and d!104037 (not res!554277)) b!810857))

(assert (= (and b!810857 res!554278) b!810860))

(assert (= (and b!810857 res!554276) b!810861))

(assert (= (and b!810861 c!88701) b!810858))

(assert (= (and b!810861 (not c!88701)) b!810859))

(assert (= (or b!810858 b!810859) bm!35457))

(declare-fun m!753263 () Bool)

(assert (=> b!810857 m!753263))

(assert (=> b!810857 m!753263))

(declare-fun m!753265 () Bool)

(assert (=> b!810857 m!753265))

(assert (=> b!810860 m!753263))

(assert (=> b!810860 m!753263))

(declare-fun m!753267 () Bool)

(assert (=> b!810860 m!753267))

(assert (=> b!810861 m!753263))

(assert (=> b!810861 m!753263))

(assert (=> b!810861 m!753265))

(assert (=> bm!35457 m!753263))

(declare-fun m!753269 () Bool)

(assert (=> bm!35457 m!753269))

(assert (=> b!810812 d!104037))

(declare-fun b!810928 () Bool)

(declare-fun e!448861 () SeekEntryResult!8687)

(assert (=> b!810928 (= e!448861 Undefined!8687)))

(declare-fun b!810929 () Bool)

(declare-fun e!448859 () SeekEntryResult!8687)

(assert (=> b!810929 (= e!448859 (MissingVacant!8687 vacantAfter!23))))

(declare-fun b!810930 () Bool)

(declare-fun e!448860 () SeekEntryResult!8687)

(assert (=> b!810930 (= e!448861 e!448860)))

(declare-fun c!88736 () Bool)

(declare-fun lt!363562 () (_ BitVec 64))

(assert (=> b!810930 (= c!88736 (= lt!363562 lt!363522))))

(declare-fun b!810931 () Bool)

(assert (=> b!810931 (= e!448860 (Found!8687 lt!363527))))

(declare-fun b!810932 () Bool)

(declare-fun c!88737 () Bool)

(assert (=> b!810932 (= c!88737 (= lt!363562 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!810932 (= e!448860 e!448859)))

(declare-fun b!810933 () Bool)

(assert (=> b!810933 (= e!448859 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077 #b00000000000000000000000000000001) (nextIndex!0 lt!363527 (bvadd #b00000000000000000000000000000001 x!1077) mask!3266) vacantAfter!23 lt!363522 lt!363520 mask!3266))))

(declare-fun d!104039 () Bool)

(declare-fun lt!363561 () SeekEntryResult!8687)

(assert (=> d!104039 (and (or (is-Undefined!8687 lt!363561) (not (is-Found!8687 lt!363561)) (and (bvsge (index!37116 lt!363561) #b00000000000000000000000000000000) (bvslt (index!37116 lt!363561) (size!21510 lt!363520)))) (or (is-Undefined!8687 lt!363561) (is-Found!8687 lt!363561) (not (is-MissingVacant!8687 lt!363561)) (not (= (index!37118 lt!363561) vacantAfter!23)) (and (bvsge (index!37118 lt!363561) #b00000000000000000000000000000000) (bvslt (index!37118 lt!363561) (size!21510 lt!363520)))) (or (is-Undefined!8687 lt!363561) (ite (is-Found!8687 lt!363561) (= (select (arr!21089 lt!363520) (index!37116 lt!363561)) lt!363522) (and (is-MissingVacant!8687 lt!363561) (= (index!37118 lt!363561) vacantAfter!23) (= (select (arr!21089 lt!363520) (index!37118 lt!363561)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!104039 (= lt!363561 e!448861)))

(declare-fun c!88735 () Bool)

(assert (=> d!104039 (= c!88735 (bvsge (bvadd #b00000000000000000000000000000001 x!1077) #b01111111111111111111111111111110))))

(assert (=> d!104039 (= lt!363562 (select (arr!21089 lt!363520) lt!363527))))

(assert (=> d!104039 (validMask!0 mask!3266)))

(assert (=> d!104039 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!363527 vacantAfter!23 lt!363522 lt!363520 mask!3266) lt!363561)))

(assert (= (and d!104039 c!88735) b!810928))

(assert (= (and d!104039 (not c!88735)) b!810930))

(assert (= (and b!810930 c!88736) b!810931))

(assert (= (and b!810930 (not c!88736)) b!810932))

(assert (= (and b!810932 c!88737) b!810929))

(assert (= (and b!810932 (not c!88737)) b!810933))

(declare-fun m!753321 () Bool)

(assert (=> b!810933 m!753321))

(assert (=> b!810933 m!753321))

(declare-fun m!753323 () Bool)

(assert (=> b!810933 m!753323))

(declare-fun m!753325 () Bool)

(assert (=> d!104039 m!753325))

(declare-fun m!753327 () Bool)

(assert (=> d!104039 m!753327))

(declare-fun m!753329 () Bool)

(assert (=> d!104039 m!753329))

(assert (=> d!104039 m!753243))

(assert (=> b!810807 d!104039))

(declare-fun b!810934 () Bool)

(declare-fun e!448864 () SeekEntryResult!8687)

(assert (=> b!810934 (= e!448864 Undefined!8687)))

(declare-fun b!810935 () Bool)

(declare-fun e!448862 () SeekEntryResult!8687)

(assert (=> b!810935 (= e!448862 (MissingVacant!8687 vacantBefore!23))))

(declare-fun b!810936 () Bool)

(declare-fun e!448863 () SeekEntryResult!8687)

(assert (=> b!810936 (= e!448864 e!448863)))

(declare-fun c!88739 () Bool)

(declare-fun lt!363564 () (_ BitVec 64))

(assert (=> b!810936 (= c!88739 (= lt!363564 (select (arr!21089 a!3170) j!153)))))

(declare-fun b!810937 () Bool)

(assert (=> b!810937 (= e!448863 (Found!8687 lt!363527))))

(declare-fun b!810938 () Bool)

(declare-fun c!88740 () Bool)

(assert (=> b!810938 (= c!88740 (= lt!363564 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!810938 (= e!448863 e!448862)))

(declare-fun b!810939 () Bool)

(assert (=> b!810939 (= e!448862 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077 #b00000000000000000000000000000001) (nextIndex!0 lt!363527 (bvadd #b00000000000000000000000000000001 x!1077) mask!3266) vacantBefore!23 (select (arr!21089 a!3170) j!153) a!3170 mask!3266))))

(declare-fun d!104051 () Bool)

(declare-fun lt!363563 () SeekEntryResult!8687)

(assert (=> d!104051 (and (or (is-Undefined!8687 lt!363563) (not (is-Found!8687 lt!363563)) (and (bvsge (index!37116 lt!363563) #b00000000000000000000000000000000) (bvslt (index!37116 lt!363563) (size!21510 a!3170)))) (or (is-Undefined!8687 lt!363563) (is-Found!8687 lt!363563) (not (is-MissingVacant!8687 lt!363563)) (not (= (index!37118 lt!363563) vacantBefore!23)) (and (bvsge (index!37118 lt!363563) #b00000000000000000000000000000000) (bvslt (index!37118 lt!363563) (size!21510 a!3170)))) (or (is-Undefined!8687 lt!363563) (ite (is-Found!8687 lt!363563) (= (select (arr!21089 a!3170) (index!37116 lt!363563)) (select (arr!21089 a!3170) j!153)) (and (is-MissingVacant!8687 lt!363563) (= (index!37118 lt!363563) vacantBefore!23) (= (select (arr!21089 a!3170) (index!37118 lt!363563)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!104051 (= lt!363563 e!448864)))

(declare-fun c!88738 () Bool)

(assert (=> d!104051 (= c!88738 (bvsge (bvadd #b00000000000000000000000000000001 x!1077) #b01111111111111111111111111111110))))

(assert (=> d!104051 (= lt!363564 (select (arr!21089 a!3170) lt!363527))))

(assert (=> d!104051 (validMask!0 mask!3266)))

(assert (=> d!104051 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!363527 vacantBefore!23 (select (arr!21089 a!3170) j!153) a!3170 mask!3266) lt!363563)))

(assert (= (and d!104051 c!88738) b!810934))

(assert (= (and d!104051 (not c!88738)) b!810936))

(assert (= (and b!810936 c!88739) b!810937))

(assert (= (and b!810936 (not c!88739)) b!810938))

(assert (= (and b!810938 c!88740) b!810935))

(assert (= (and b!810938 (not c!88740)) b!810939))

(assert (=> b!810939 m!753321))

(assert (=> b!810939 m!753321))

(assert (=> b!810939 m!753203))

(declare-fun m!753331 () Bool)

(assert (=> b!810939 m!753331))

(declare-fun m!753333 () Bool)

(assert (=> d!104051 m!753333))

(declare-fun m!753335 () Bool)

(assert (=> d!104051 m!753335))

(declare-fun m!753337 () Bool)

(assert (=> d!104051 m!753337))

(assert (=> d!104051 m!753243))

(assert (=> b!810807 d!104051))

(declare-fun d!104053 () Bool)

(declare-fun e!448891 () Bool)

(assert (=> d!104053 e!448891))

(declare-fun res!554293 () Bool)

(assert (=> d!104053 (=> (not res!554293) (not e!448891))))

(assert (=> d!104053 (= res!554293 (and (or (bvslt i!1163 #b00000000000000000000000000000000) (bvsge i!1163 (size!21510 a!3170)) (and (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21510 a!3170)))) (or (bvslt i!1163 #b00000000000000000000000000000000) (bvsge i!1163 (size!21510 a!3170)) (and (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21510 a!3170)))) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21510 a!3170))))))

(declare-fun lt!363589 () Unit!27636)

(declare-fun choose!112 (array!44043 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27636)

(assert (=> d!104053 (= lt!363589 (choose!112 a!3170 i!1163 k!2044 j!153 lt!363527 (bvadd #b00000000000000000000000000000001 x!1077) vacantBefore!23 vacantAfter!23 mask!3266))))

(assert (=> d!104053 (validMask!0 mask!3266)))

(assert (=> d!104053 (= (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3170 i!1163 k!2044 j!153 lt!363527 (bvadd #b00000000000000000000000000000001 x!1077) vacantBefore!23 vacantAfter!23 mask!3266) lt!363589)))

(declare-fun b!810978 () Bool)

(assert (=> b!810978 (= e!448891 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!363527 vacantAfter!23 (select (store (arr!21089 a!3170) i!1163 k!2044) j!153) (array!44044 (store (arr!21089 a!3170) i!1163 k!2044) (size!21510 a!3170)) mask!3266) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!363527 vacantBefore!23 (select (arr!21089 a!3170) j!153) a!3170 mask!3266)))))

(assert (= (and d!104053 res!554293) b!810978))

(declare-fun m!753395 () Bool)

(assert (=> d!104053 m!753395))

(assert (=> d!104053 m!753243))

(assert (=> b!810978 m!753203))

(assert (=> b!810978 m!753211))

(assert (=> b!810978 m!753221))

(assert (=> b!810978 m!753223))

(declare-fun m!753397 () Bool)

(assert (=> b!810978 m!753397))

(assert (=> b!810978 m!753203))

(assert (=> b!810978 m!753223))

(assert (=> b!810807 d!104053))

(declare-fun d!104073 () Bool)

(declare-fun lt!363592 () (_ BitVec 32))

(assert (=> d!104073 (and (bvsge lt!363592 #b00000000000000000000000000000000) (bvslt lt!363592 (bvadd mask!3266 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!104073 (= lt!363592 (choose!52 index!1236 x!1077 mask!3266))))

(assert (=> d!104073 (validMask!0 mask!3266)))

(assert (=> d!104073 (= (nextIndex!0 index!1236 x!1077 mask!3266) lt!363592)))

(declare-fun bs!22443 () Bool)

(assert (= bs!22443 d!104073))

(declare-fun m!753399 () Bool)

(assert (=> bs!22443 m!753399))

(assert (=> bs!22443 m!753243))

(assert (=> b!810807 d!104073))

(declare-fun lt!363617 () SeekEntryResult!8687)

(declare-fun b!811021 () Bool)

(declare-fun e!448916 () SeekEntryResult!8687)

(assert (=> b!811021 (= e!448916 (seekKeyOrZeroReturnVacant!0 (x!67948 lt!363617) (index!37117 lt!363617) (index!37117 lt!363617) k!2044 a!3170 mask!3266))))

(declare-fun b!811022 () Bool)

(declare-fun e!448918 () SeekEntryResult!8687)

(assert (=> b!811022 (= e!448918 (Found!8687 (index!37117 lt!363617)))))

(declare-fun b!811023 () Bool)

(declare-fun c!88771 () Bool)

(declare-fun lt!363618 () (_ BitVec 64))

(assert (=> b!811023 (= c!88771 (= lt!363618 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!811023 (= e!448918 e!448916)))

(declare-fun b!811024 () Bool)

(declare-fun e!448917 () SeekEntryResult!8687)

(assert (=> b!811024 (= e!448917 e!448918)))

(assert (=> b!811024 (= lt!363618 (select (arr!21089 a!3170) (index!37117 lt!363617)))))

(declare-fun c!88773 () Bool)

(assert (=> b!811024 (= c!88773 (= lt!363618 k!2044))))

(declare-fun b!811026 () Bool)

(assert (=> b!811026 (= e!448916 (MissingZero!8687 (index!37117 lt!363617)))))

(declare-fun d!104075 () Bool)

(declare-fun lt!363619 () SeekEntryResult!8687)

(assert (=> d!104075 (and (or (is-Undefined!8687 lt!363619) (not (is-Found!8687 lt!363619)) (and (bvsge (index!37116 lt!363619) #b00000000000000000000000000000000) (bvslt (index!37116 lt!363619) (size!21510 a!3170)))) (or (is-Undefined!8687 lt!363619) (is-Found!8687 lt!363619) (not (is-MissingZero!8687 lt!363619)) (and (bvsge (index!37115 lt!363619) #b00000000000000000000000000000000) (bvslt (index!37115 lt!363619) (size!21510 a!3170)))) (or (is-Undefined!8687 lt!363619) (is-Found!8687 lt!363619) (is-MissingZero!8687 lt!363619) (not (is-MissingVacant!8687 lt!363619)) (and (bvsge (index!37118 lt!363619) #b00000000000000000000000000000000) (bvslt (index!37118 lt!363619) (size!21510 a!3170)))) (or (is-Undefined!8687 lt!363619) (ite (is-Found!8687 lt!363619) (= (select (arr!21089 a!3170) (index!37116 lt!363619)) k!2044) (ite (is-MissingZero!8687 lt!363619) (= (select (arr!21089 a!3170) (index!37115 lt!363619)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!8687 lt!363619) (= (select (arr!21089 a!3170) (index!37118 lt!363619)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!104075 (= lt!363619 e!448917)))

(declare-fun c!88772 () Bool)

(assert (=> d!104075 (= c!88772 (and (is-Intermediate!8687 lt!363617) (undefined!9499 lt!363617)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!44043 (_ BitVec 32)) SeekEntryResult!8687)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!104075 (= lt!363617 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2044 mask!3266) k!2044 a!3170 mask!3266))))

(assert (=> d!104075 (validMask!0 mask!3266)))

(assert (=> d!104075 (= (seekEntryOrOpen!0 k!2044 a!3170 mask!3266) lt!363619)))

(declare-fun b!811025 () Bool)

(assert (=> b!811025 (= e!448917 Undefined!8687)))

(assert (= (and d!104075 c!88772) b!811025))

(assert (= (and d!104075 (not c!88772)) b!811024))

(assert (= (and b!811024 c!88773) b!811022))

(assert (= (and b!811024 (not c!88773)) b!811023))

(assert (= (and b!811023 c!88771) b!811026))

(assert (= (and b!811023 (not c!88771)) b!811021))

(declare-fun m!753423 () Bool)

(assert (=> b!811021 m!753423))

(declare-fun m!753425 () Bool)

(assert (=> b!811024 m!753425))

(declare-fun m!753427 () Bool)

(assert (=> d!104075 m!753427))

(declare-fun m!753429 () Bool)

(assert (=> d!104075 m!753429))

(assert (=> d!104075 m!753427))

(declare-fun m!753431 () Bool)

(assert (=> d!104075 m!753431))

(declare-fun m!753433 () Bool)

(assert (=> d!104075 m!753433))

(declare-fun m!753435 () Bool)

(assert (=> d!104075 m!753435))

(assert (=> d!104075 m!753243))

(assert (=> b!810809 d!104075))

(declare-fun d!104079 () Bool)

(assert (=> d!104079 (= (validKeyInArray!0 (select (arr!21089 a!3170) j!153)) (and (not (= (select (arr!21089 a!3170) j!153) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!21089 a!3170) j!153) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!810803 d!104079))

(declare-fun b!811059 () Bool)

(declare-fun e!448940 () Bool)

(declare-fun call!35466 () Bool)

(assert (=> b!811059 (= e!448940 call!35466)))

(declare-fun b!811060 () Bool)

(declare-fun e!448942 () Bool)

(declare-fun e!448941 () Bool)

(assert (=> b!811060 (= e!448942 e!448941)))

(declare-fun c!88785 () Bool)

(assert (=> b!811060 (= c!88785 (validKeyInArray!0 (select (arr!21089 a!3170) #b00000000000000000000000000000000)))))

(declare-fun b!811061 () Bool)

(assert (=> b!811061 (= e!448941 call!35466)))

(declare-fun bm!35463 () Bool)

(assert (=> bm!35463 (= call!35466 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3170 mask!3266))))

(declare-fun b!811062 () Bool)

(assert (=> b!811062 (= e!448941 e!448940)))

(declare-fun lt!363635 () (_ BitVec 64))

(assert (=> b!811062 (= lt!363635 (select (arr!21089 a!3170) #b00000000000000000000000000000000))))

(declare-fun lt!363634 () Unit!27636)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!44043 (_ BitVec 64) (_ BitVec 32)) Unit!27636)

(assert (=> b!811062 (= lt!363634 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3170 lt!363635 #b00000000000000000000000000000000))))

(assert (=> b!811062 (arrayContainsKey!0 a!3170 lt!363635 #b00000000000000000000000000000000)))

(declare-fun lt!363636 () Unit!27636)

(assert (=> b!811062 (= lt!363636 lt!363634)))

(declare-fun res!554311 () Bool)

(assert (=> b!811062 (= res!554311 (= (seekEntryOrOpen!0 (select (arr!21089 a!3170) #b00000000000000000000000000000000) a!3170 mask!3266) (Found!8687 #b00000000000000000000000000000000)))))

(assert (=> b!811062 (=> (not res!554311) (not e!448940))))

(declare-fun d!104081 () Bool)

(declare-fun res!554310 () Bool)

(assert (=> d!104081 (=> res!554310 e!448942)))

(assert (=> d!104081 (= res!554310 (bvsge #b00000000000000000000000000000000 (size!21510 a!3170)))))

(assert (=> d!104081 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266) e!448942)))

(assert (= (and d!104081 (not res!554310)) b!811060))

(assert (= (and b!811060 c!88785) b!811062))

(assert (= (and b!811060 (not c!88785)) b!811061))

(assert (= (and b!811062 res!554311) b!811059))

(assert (= (or b!811059 b!811061) bm!35463))

(assert (=> b!811060 m!753263))

(assert (=> b!811060 m!753263))

(assert (=> b!811060 m!753265))

(declare-fun m!753475 () Bool)

(assert (=> bm!35463 m!753475))

(assert (=> b!811062 m!753263))

(declare-fun m!753477 () Bool)

(assert (=> b!811062 m!753477))

(declare-fun m!753479 () Bool)

(assert (=> b!811062 m!753479))

(assert (=> b!811062 m!753263))

(declare-fun m!753481 () Bool)

(assert (=> b!811062 m!753481))

(assert (=> b!810810 d!104081))

(declare-fun b!811063 () Bool)

(declare-fun e!448945 () SeekEntryResult!8687)

(assert (=> b!811063 (= e!448945 Undefined!8687)))

(declare-fun b!811064 () Bool)

(declare-fun e!448943 () SeekEntryResult!8687)

(assert (=> b!811064 (= e!448943 (MissingVacant!8687 vacantAfter!23))))

(declare-fun b!811065 () Bool)

(declare-fun e!448944 () SeekEntryResult!8687)

(assert (=> b!811065 (= e!448945 e!448944)))

(declare-fun c!88787 () Bool)

(declare-fun lt!363638 () (_ BitVec 64))

(assert (=> b!811065 (= c!88787 (= lt!363638 lt!363522))))

(declare-fun b!811066 () Bool)

(assert (=> b!811066 (= e!448944 (Found!8687 index!1236))))

(declare-fun b!811067 () Bool)

(declare-fun c!88788 () Bool)

(assert (=> b!811067 (= c!88788 (= lt!363638 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!811067 (= e!448944 e!448943)))

(declare-fun b!811068 () Bool)

(assert (=> b!811068 (= e!448943 (seekKeyOrZeroReturnVacant!0 (bvadd x!1077 #b00000000000000000000000000000001) (nextIndex!0 index!1236 x!1077 mask!3266) vacantAfter!23 lt!363522 lt!363520 mask!3266))))

(declare-fun lt!363637 () SeekEntryResult!8687)

(declare-fun d!104099 () Bool)

(assert (=> d!104099 (and (or (is-Undefined!8687 lt!363637) (not (is-Found!8687 lt!363637)) (and (bvsge (index!37116 lt!363637) #b00000000000000000000000000000000) (bvslt (index!37116 lt!363637) (size!21510 lt!363520)))) (or (is-Undefined!8687 lt!363637) (is-Found!8687 lt!363637) (not (is-MissingVacant!8687 lt!363637)) (not (= (index!37118 lt!363637) vacantAfter!23)) (and (bvsge (index!37118 lt!363637) #b00000000000000000000000000000000) (bvslt (index!37118 lt!363637) (size!21510 lt!363520)))) (or (is-Undefined!8687 lt!363637) (ite (is-Found!8687 lt!363637) (= (select (arr!21089 lt!363520) (index!37116 lt!363637)) lt!363522) (and (is-MissingVacant!8687 lt!363637) (= (index!37118 lt!363637) vacantAfter!23) (= (select (arr!21089 lt!363520) (index!37118 lt!363637)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!104099 (= lt!363637 e!448945)))

(declare-fun c!88786 () Bool)

(assert (=> d!104099 (= c!88786 (bvsge x!1077 #b01111111111111111111111111111110))))

(assert (=> d!104099 (= lt!363638 (select (arr!21089 lt!363520) index!1236))))

(assert (=> d!104099 (validMask!0 mask!3266)))

(assert (=> d!104099 (= (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!363522 lt!363520 mask!3266) lt!363637)))

(assert (= (and d!104099 c!88786) b!811063))

