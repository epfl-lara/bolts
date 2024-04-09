; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69502 () Bool)

(assert start!69502)

(declare-fun b!809769 () Bool)

(declare-fun res!553451 () Bool)

(declare-fun e!448256 () Bool)

(assert (=> b!809769 (=> (not res!553451) (not e!448256))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-datatypes ((array!44000 0))(
  ( (array!44001 (arr!21069 (Array (_ BitVec 32) (_ BitVec 64))) (size!21490 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!44000)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(assert (=> b!809769 (= res!553451 (and (= (size!21490 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21490 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21490 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!809770 () Bool)

(declare-fun res!553458 () Bool)

(assert (=> b!809770 (=> (not res!553458) (not e!448256))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!44000 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!809770 (= res!553458 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!809771 () Bool)

(declare-fun e!448257 () Bool)

(declare-fun e!448260 () Bool)

(assert (=> b!809771 (= e!448257 e!448260)))

(declare-fun res!553452 () Bool)

(assert (=> b!809771 (=> (not res!553452) (not e!448260))))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!362927 () (_ BitVec 32))

(assert (=> b!809771 (= res!553452 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1077) #b01111111111111111111111111111110) (bvsge (bvadd #b00000000000000000000000000000001 x!1077) #b00000000000000000000000000000000) (bvsge lt!362927 #b00000000000000000000000000000000) (bvslt lt!362927 (size!21490 a!3170))))))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!809771 (= lt!362927 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!809773 () Bool)

(declare-fun res!553450 () Bool)

(declare-fun e!448261 () Bool)

(assert (=> b!809773 (=> (not res!553450) (not e!448261))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44000 (_ BitVec 32)) Bool)

(assert (=> b!809773 (= res!553450 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!809774 () Bool)

(assert (=> b!809774 (= e!448256 e!448261)))

(declare-fun res!553456 () Bool)

(assert (=> b!809774 (=> (not res!553456) (not e!448261))))

(declare-datatypes ((SeekEntryResult!8667 0))(
  ( (MissingZero!8667 (index!37035 (_ BitVec 32))) (Found!8667 (index!37036 (_ BitVec 32))) (Intermediate!8667 (undefined!9479 Bool) (index!37037 (_ BitVec 32)) (x!67874 (_ BitVec 32))) (Undefined!8667) (MissingVacant!8667 (index!37038 (_ BitVec 32))) )
))
(declare-fun lt!362928 () SeekEntryResult!8667)

(assert (=> b!809774 (= res!553456 (or (= lt!362928 (MissingZero!8667 i!1163)) (= lt!362928 (MissingVacant!8667 i!1163))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!44000 (_ BitVec 32)) SeekEntryResult!8667)

(assert (=> b!809774 (= lt!362928 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!809775 () Bool)

(declare-fun res!553453 () Bool)

(assert (=> b!809775 (=> (not res!553453) (not e!448261))))

(declare-datatypes ((List!15085 0))(
  ( (Nil!15082) (Cons!15081 (h!16210 (_ BitVec 64)) (t!21408 List!15085)) )
))
(declare-fun arrayNoDuplicates!0 (array!44000 (_ BitVec 32) List!15085) Bool)

(assert (=> b!809775 (= res!553453 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15082))))

(declare-fun b!809776 () Bool)

(declare-fun res!553460 () Bool)

(assert (=> b!809776 (=> (not res!553460) (not e!448256))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!809776 (= res!553460 (validKeyInArray!0 k!2044))))

(declare-fun b!809777 () Bool)

(declare-fun e!448259 () Bool)

(assert (=> b!809777 (= e!448259 e!448257)))

(declare-fun res!553454 () Bool)

(assert (=> b!809777 (=> (not res!553454) (not e!448257))))

(declare-fun lt!362926 () SeekEntryResult!8667)

(declare-fun lt!362929 () SeekEntryResult!8667)

(assert (=> b!809777 (= res!553454 (and (= lt!362926 lt!362929) (= lt!362929 (Found!8667 j!153)) (not (= (select (arr!21069 a!3170) index!1236) (select (arr!21069 a!3170) j!153)))))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!44000 (_ BitVec 32)) SeekEntryResult!8667)

(assert (=> b!809777 (= lt!362929 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21069 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!809777 (= lt!362926 (seekEntryOrOpen!0 (select (arr!21069 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!809778 () Bool)

(assert (=> b!809778 (= e!448260 (not (= lt!362926 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!362927 vacantBefore!23 (select (arr!21069 a!3170) j!153) a!3170 mask!3266))))))

(declare-fun b!809779 () Bool)

(declare-fun res!553457 () Bool)

(assert (=> b!809779 (=> (not res!553457) (not e!448261))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(assert (=> b!809779 (= res!553457 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21490 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!21069 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21490 a!3170)) (= (select (arr!21069 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!809772 () Bool)

(declare-fun res!553462 () Bool)

(assert (=> b!809772 (=> (not res!553462) (not e!448260))))

(declare-fun lt!362923 () (_ BitVec 64))

(declare-fun lt!362924 () array!44000)

(declare-fun lt!362925 () SeekEntryResult!8667)

(assert (=> b!809772 (= res!553462 (= lt!362925 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!362927 vacantAfter!23 lt!362923 lt!362924 mask!3266)))))

(declare-fun res!553459 () Bool)

(assert (=> start!69502 (=> (not res!553459) (not e!448256))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69502 (= res!553459 (validMask!0 mask!3266))))

(assert (=> start!69502 e!448256))

(assert (=> start!69502 true))

(declare-fun array_inv!16843 (array!44000) Bool)

(assert (=> start!69502 (array_inv!16843 a!3170)))

(declare-fun b!809780 () Bool)

(assert (=> b!809780 (= e!448261 e!448259)))

(declare-fun res!553461 () Bool)

(assert (=> b!809780 (=> (not res!553461) (not e!448259))))

(assert (=> b!809780 (= res!553461 (= lt!362925 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!362923 lt!362924 mask!3266)))))

(assert (=> b!809780 (= lt!362925 (seekEntryOrOpen!0 lt!362923 lt!362924 mask!3266))))

(assert (=> b!809780 (= lt!362923 (select (store (arr!21069 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!809780 (= lt!362924 (array!44001 (store (arr!21069 a!3170) i!1163 k!2044) (size!21490 a!3170)))))

(declare-fun b!809781 () Bool)

(declare-fun res!553455 () Bool)

(assert (=> b!809781 (=> (not res!553455) (not e!448256))))

(assert (=> b!809781 (= res!553455 (validKeyInArray!0 (select (arr!21069 a!3170) j!153)))))

(assert (= (and start!69502 res!553459) b!809769))

(assert (= (and b!809769 res!553451) b!809781))

(assert (= (and b!809781 res!553455) b!809776))

(assert (= (and b!809776 res!553460) b!809770))

(assert (= (and b!809770 res!553458) b!809774))

(assert (= (and b!809774 res!553456) b!809773))

(assert (= (and b!809773 res!553450) b!809775))

(assert (= (and b!809775 res!553453) b!809779))

(assert (= (and b!809779 res!553457) b!809780))

(assert (= (and b!809780 res!553461) b!809777))

(assert (= (and b!809777 res!553454) b!809771))

(assert (= (and b!809771 res!553452) b!809772))

(assert (= (and b!809772 res!553462) b!809778))

(declare-fun m!752059 () Bool)

(assert (=> b!809775 m!752059))

(declare-fun m!752061 () Bool)

(assert (=> b!809773 m!752061))

(declare-fun m!752063 () Bool)

(assert (=> b!809774 m!752063))

(declare-fun m!752065 () Bool)

(assert (=> b!809779 m!752065))

(declare-fun m!752067 () Bool)

(assert (=> b!809779 m!752067))

(declare-fun m!752069 () Bool)

(assert (=> b!809778 m!752069))

(assert (=> b!809778 m!752069))

(declare-fun m!752071 () Bool)

(assert (=> b!809778 m!752071))

(declare-fun m!752073 () Bool)

(assert (=> start!69502 m!752073))

(declare-fun m!752075 () Bool)

(assert (=> start!69502 m!752075))

(declare-fun m!752077 () Bool)

(assert (=> b!809777 m!752077))

(assert (=> b!809777 m!752069))

(assert (=> b!809777 m!752069))

(declare-fun m!752079 () Bool)

(assert (=> b!809777 m!752079))

(assert (=> b!809777 m!752069))

(declare-fun m!752081 () Bool)

(assert (=> b!809777 m!752081))

(declare-fun m!752083 () Bool)

(assert (=> b!809776 m!752083))

(declare-fun m!752085 () Bool)

(assert (=> b!809772 m!752085))

(declare-fun m!752087 () Bool)

(assert (=> b!809771 m!752087))

(declare-fun m!752089 () Bool)

(assert (=> b!809780 m!752089))

(declare-fun m!752091 () Bool)

(assert (=> b!809780 m!752091))

(declare-fun m!752093 () Bool)

(assert (=> b!809780 m!752093))

(declare-fun m!752095 () Bool)

(assert (=> b!809780 m!752095))

(declare-fun m!752097 () Bool)

(assert (=> b!809770 m!752097))

(assert (=> b!809781 m!752069))

(assert (=> b!809781 m!752069))

(declare-fun m!752099 () Bool)

(assert (=> b!809781 m!752099))

(push 1)

(assert (not start!69502))

(assert (not b!809781))

(assert (not b!809771))

(assert (not b!809774))

(assert (not b!809777))

(assert (not b!809780))

(assert (not b!809775))

(assert (not b!809770))

(assert (not b!809776))

(assert (not b!809773))

(assert (not b!809778))

(assert (not b!809772))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!809947 () Bool)

(declare-fun e!448356 () SeekEntryResult!8667)

(assert (=> b!809947 (= e!448356 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077 #b00000000000000000000000000000001) (nextIndex!0 lt!362927 (bvadd #b00000000000000000000000000000001 x!1077) mask!3266) vacantAfter!23 lt!362923 lt!362924 mask!3266))))

(declare-fun b!809948 () Bool)

(declare-fun e!448357 () SeekEntryResult!8667)

(declare-fun e!448355 () SeekEntryResult!8667)

(assert (=> b!809948 (= e!448357 e!448355)))

(declare-fun c!88600 () Bool)

(declare-fun lt!363001 () (_ BitVec 64))

(assert (=> b!809948 (= c!88600 (= lt!363001 lt!362923))))

(declare-fun b!809949 () Bool)

(assert (=> b!809949 (= e!448357 Undefined!8667)))

(declare-fun b!809950 () Bool)

(declare-fun c!88602 () Bool)

(assert (=> b!809950 (= c!88602 (= lt!363001 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!809950 (= e!448355 e!448356)))

(declare-fun b!809951 () Bool)

(assert (=> b!809951 (= e!448356 (MissingVacant!8667 vacantAfter!23))))

(declare-fun lt!363000 () SeekEntryResult!8667)

(declare-fun d!103925 () Bool)

(assert (=> d!103925 (and (or (is-Undefined!8667 lt!363000) (not (is-Found!8667 lt!363000)) (and (bvsge (index!37036 lt!363000) #b00000000000000000000000000000000) (bvslt (index!37036 lt!363000) (size!21490 lt!362924)))) (or (is-Undefined!8667 lt!363000) (is-Found!8667 lt!363000) (not (is-MissingVacant!8667 lt!363000)) (not (= (index!37038 lt!363000) vacantAfter!23)) (and (bvsge (index!37038 lt!363000) #b00000000000000000000000000000000) (bvslt (index!37038 lt!363000) (size!21490 lt!362924)))) (or (is-Undefined!8667 lt!363000) (ite (is-Found!8667 lt!363000) (= (select (arr!21069 lt!362924) (index!37036 lt!363000)) lt!362923) (and (is-MissingVacant!8667 lt!363000) (= (index!37038 lt!363000) vacantAfter!23) (= (select (arr!21069 lt!362924) (index!37038 lt!363000)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!103925 (= lt!363000 e!448357)))

(declare-fun c!88601 () Bool)

(assert (=> d!103925 (= c!88601 (bvsge (bvadd #b00000000000000000000000000000001 x!1077) #b01111111111111111111111111111110))))

(assert (=> d!103925 (= lt!363001 (select (arr!21069 lt!362924) lt!362927))))

(assert (=> d!103925 (validMask!0 mask!3266)))

(assert (=> d!103925 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!362927 vacantAfter!23 lt!362923 lt!362924 mask!3266) lt!363000)))

(declare-fun b!809952 () Bool)

(assert (=> b!809952 (= e!448355 (Found!8667 lt!362927))))

(assert (= (and d!103925 c!88601) b!809949))

(assert (= (and d!103925 (not c!88601)) b!809948))

(assert (= (and b!809948 c!88600) b!809952))

(assert (= (and b!809948 (not c!88600)) b!809950))

(assert (= (and b!809950 c!88602) b!809951))

(assert (= (and b!809950 (not c!88602)) b!809947))

(declare-fun m!752231 () Bool)

(assert (=> b!809947 m!752231))

(assert (=> b!809947 m!752231))

(declare-fun m!752233 () Bool)

(assert (=> b!809947 m!752233))

(declare-fun m!752235 () Bool)

(assert (=> d!103925 m!752235))

(declare-fun m!752237 () Bool)

(assert (=> d!103925 m!752237))

(declare-fun m!752239 () Bool)

(assert (=> d!103925 m!752239))

(assert (=> d!103925 m!752073))

(assert (=> b!809772 d!103925))

(declare-fun b!809991 () Bool)

(declare-fun e!448381 () Bool)

(declare-fun e!448380 () Bool)

(assert (=> b!809991 (= e!448381 e!448380)))

(declare-fun lt!363024 () (_ BitVec 64))

(assert (=> b!809991 (= lt!363024 (select (arr!21069 a!3170) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!27612 0))(
  ( (Unit!27613) )
))
(declare-fun lt!363022 () Unit!27612)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!44000 (_ BitVec 64) (_ BitVec 32)) Unit!27612)

(assert (=> b!809991 (= lt!363022 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3170 lt!363024 #b00000000000000000000000000000000))))

(assert (=> b!809991 (arrayContainsKey!0 a!3170 lt!363024 #b00000000000000000000000000000000)))

(declare-fun lt!363023 () Unit!27612)

(assert (=> b!809991 (= lt!363023 lt!363022)))

(declare-fun res!553573 () Bool)

(assert (=> b!809991 (= res!553573 (= (seekEntryOrOpen!0 (select (arr!21069 a!3170) #b00000000000000000000000000000000) a!3170 mask!3266) (Found!8667 #b00000000000000000000000000000000)))))

(assert (=> b!809991 (=> (not res!553573) (not e!448380))))

(declare-fun b!809992 () Bool)

(declare-fun call!35445 () Bool)

(assert (=> b!809992 (= e!448380 call!35445)))

(declare-fun b!809993 () Bool)

(declare-fun e!448379 () Bool)

(assert (=> b!809993 (= e!448379 e!448381)))

(declare-fun c!88620 () Bool)

(assert (=> b!809993 (= c!88620 (validKeyInArray!0 (select (arr!21069 a!3170) #b00000000000000000000000000000000)))))

(declare-fun b!809994 () Bool)

(assert (=> b!809994 (= e!448381 call!35445)))

(declare-fun d!103939 () Bool)

(declare-fun res!553572 () Bool)

(assert (=> d!103939 (=> res!553572 e!448379)))

(assert (=> d!103939 (= res!553572 (bvsge #b00000000000000000000000000000000 (size!21490 a!3170)))))

(assert (=> d!103939 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266) e!448379)))

(declare-fun bm!35442 () Bool)

(assert (=> bm!35442 (= call!35445 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3170 mask!3266))))

(assert (= (and d!103939 (not res!553572)) b!809993))

(assert (= (and b!809993 c!88620) b!809991))

(assert (= (and b!809993 (not c!88620)) b!809994))

(assert (= (and b!809991 res!553573) b!809992))

(assert (= (or b!809992 b!809994) bm!35442))

(declare-fun m!752271 () Bool)

(assert (=> b!809991 m!752271))

(declare-fun m!752273 () Bool)

(assert (=> b!809991 m!752273))

(declare-fun m!752275 () Bool)

(assert (=> b!809991 m!752275))

(assert (=> b!809991 m!752271))

(declare-fun m!752277 () Bool)

(assert (=> b!809991 m!752277))

(assert (=> b!809993 m!752271))

(assert (=> b!809993 m!752271))

(declare-fun m!752279 () Bool)

(assert (=> b!809993 m!752279))

(declare-fun m!752281 () Bool)

(assert (=> bm!35442 m!752281))

(assert (=> b!809773 d!103939))

(declare-fun b!810055 () Bool)

(declare-fun e!448413 () SeekEntryResult!8667)

(assert (=> b!810055 (= e!448413 Undefined!8667)))

(declare-fun d!103949 () Bool)

(declare-fun lt!363052 () SeekEntryResult!8667)

(assert (=> d!103949 (and (or (is-Undefined!8667 lt!363052) (not (is-Found!8667 lt!363052)) (and (bvsge (index!37036 lt!363052) #b00000000000000000000000000000000) (bvslt (index!37036 lt!363052) (size!21490 a!3170)))) (or (is-Undefined!8667 lt!363052) (is-Found!8667 lt!363052) (not (is-MissingZero!8667 lt!363052)) (and (bvsge (index!37035 lt!363052) #b00000000000000000000000000000000) (bvslt (index!37035 lt!363052) (size!21490 a!3170)))) (or (is-Undefined!8667 lt!363052) (is-Found!8667 lt!363052) (is-MissingZero!8667 lt!363052) (not (is-MissingVacant!8667 lt!363052)) (and (bvsge (index!37038 lt!363052) #b00000000000000000000000000000000) (bvslt (index!37038 lt!363052) (size!21490 a!3170)))) (or (is-Undefined!8667 lt!363052) (ite (is-Found!8667 lt!363052) (= (select (arr!21069 a!3170) (index!37036 lt!363052)) k!2044) (ite (is-MissingZero!8667 lt!363052) (= (select (arr!21069 a!3170) (index!37035 lt!363052)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!8667 lt!363052) (= (select (arr!21069 a!3170) (index!37038 lt!363052)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!103949 (= lt!363052 e!448413)))

(declare-fun c!88651 () Bool)

(declare-fun lt!363054 () SeekEntryResult!8667)

(assert (=> d!103949 (= c!88651 (and (is-Intermediate!8667 lt!363054) (undefined!9479 lt!363054)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!44000 (_ BitVec 32)) SeekEntryResult!8667)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!103949 (= lt!363054 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2044 mask!3266) k!2044 a!3170 mask!3266))))

(assert (=> d!103949 (validMask!0 mask!3266)))

(assert (=> d!103949 (= (seekEntryOrOpen!0 k!2044 a!3170 mask!3266) lt!363052)))

(declare-fun b!810056 () Bool)

(declare-fun e!448412 () SeekEntryResult!8667)

(assert (=> b!810056 (= e!448412 (MissingZero!8667 (index!37037 lt!363054)))))

(declare-fun b!810057 () Bool)

(declare-fun e!448414 () SeekEntryResult!8667)

(assert (=> b!810057 (= e!448413 e!448414)))

(declare-fun lt!363053 () (_ BitVec 64))

(assert (=> b!810057 (= lt!363053 (select (arr!21069 a!3170) (index!37037 lt!363054)))))

(declare-fun c!88653 () Bool)

(assert (=> b!810057 (= c!88653 (= lt!363053 k!2044))))

(declare-fun b!810058 () Bool)

(declare-fun c!88652 () Bool)

(assert (=> b!810058 (= c!88652 (= lt!363053 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!810058 (= e!448414 e!448412)))

(declare-fun b!810059 () Bool)

(assert (=> b!810059 (= e!448412 (seekKeyOrZeroReturnVacant!0 (x!67874 lt!363054) (index!37037 lt!363054) (index!37037 lt!363054) k!2044 a!3170 mask!3266))))

(declare-fun b!810060 () Bool)

(assert (=> b!810060 (= e!448414 (Found!8667 (index!37037 lt!363054)))))

(assert (= (and d!103949 c!88651) b!810055))

(assert (= (and d!103949 (not c!88651)) b!810057))

(assert (= (and b!810057 c!88653) b!810060))

(assert (= (and b!810057 (not c!88653)) b!810058))

(assert (= (and b!810058 c!88652) b!810056))

(assert (= (and b!810058 (not c!88652)) b!810059))

(declare-fun m!752347 () Bool)

(assert (=> d!103949 m!752347))

(declare-fun m!752349 () Bool)

(assert (=> d!103949 m!752349))

(declare-fun m!752351 () Bool)

(assert (=> d!103949 m!752351))

(declare-fun m!752353 () Bool)

(assert (=> d!103949 m!752353))

(assert (=> d!103949 m!752073))

(assert (=> d!103949 m!752349))

(declare-fun m!752355 () Bool)

(assert (=> d!103949 m!752355))

(declare-fun m!752357 () Bool)

(assert (=> b!810057 m!752357))

(declare-fun m!752359 () Bool)

(assert (=> b!810059 m!752359))

(assert (=> b!809774 d!103949))

(declare-fun b!810083 () Bool)

(declare-fun e!448431 () Bool)

(declare-fun call!35448 () Bool)

(assert (=> b!810083 (= e!448431 call!35448)))

(declare-fun b!810084 () Bool)

(declare-fun e!448432 () Bool)

(declare-fun contains!4135 (List!15085 (_ BitVec 64)) Bool)

(assert (=> b!810084 (= e!448432 (contains!4135 Nil!15082 (select (arr!21069 a!3170) #b00000000000000000000000000000000)))))

(declare-fun d!103965 () Bool)

(declare-fun res!553580 () Bool)

(declare-fun e!448430 () Bool)

(assert (=> d!103965 (=> res!553580 e!448430)))

(assert (=> d!103965 (= res!553580 (bvsge #b00000000000000000000000000000000 (size!21490 a!3170)))))

(assert (=> d!103965 (= (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15082) e!448430)))

(declare-fun b!810085 () Bool)

(declare-fun e!448429 () Bool)

(assert (=> b!810085 (= e!448430 e!448429)))

(declare-fun res!553581 () Bool)

(assert (=> b!810085 (=> (not res!553581) (not e!448429))))

(assert (=> b!810085 (= res!553581 (not e!448432))))

(declare-fun res!553582 () Bool)

(assert (=> b!810085 (=> (not res!553582) (not e!448432))))

(assert (=> b!810085 (= res!553582 (validKeyInArray!0 (select (arr!21069 a!3170) #b00000000000000000000000000000000)))))

(declare-fun b!810086 () Bool)

(assert (=> b!810086 (= e!448429 e!448431)))

(declare-fun c!88662 () Bool)

(assert (=> b!810086 (= c!88662 (validKeyInArray!0 (select (arr!21069 a!3170) #b00000000000000000000000000000000)))))

(declare-fun bm!35445 () Bool)

(assert (=> bm!35445 (= call!35448 (arrayNoDuplicates!0 a!3170 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!88662 (Cons!15081 (select (arr!21069 a!3170) #b00000000000000000000000000000000) Nil!15082) Nil!15082)))))

(declare-fun b!810087 () Bool)

(assert (=> b!810087 (= e!448431 call!35448)))

(assert (= (and d!103965 (not res!553580)) b!810085))

(assert (= (and b!810085 res!553582) b!810084))

(assert (= (and b!810085 res!553581) b!810086))

(assert (= (and b!810086 c!88662) b!810087))

(assert (= (and b!810086 (not c!88662)) b!810083))

(assert (= (or b!810087 b!810083) bm!35445))

(assert (=> b!810084 m!752271))

(assert (=> b!810084 m!752271))

(declare-fun m!752387 () Bool)

(assert (=> b!810084 m!752387))

(assert (=> b!810085 m!752271))

(assert (=> b!810085 m!752271))

(assert (=> b!810085 m!752279))

(assert (=> b!810086 m!752271))

(assert (=> b!810086 m!752271))

(assert (=> b!810086 m!752279))

(assert (=> bm!35445 m!752271))

(declare-fun m!752389 () Bool)

(assert (=> bm!35445 m!752389))

(assert (=> b!809775 d!103965))

(declare-fun d!103975 () Bool)

(assert (=> d!103975 (= (validKeyInArray!0 k!2044) (and (not (= k!2044 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2044 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!809776 d!103975))

(declare-fun e!448434 () SeekEntryResult!8667)

(declare-fun b!810088 () Bool)

(assert (=> b!810088 (= e!448434 (seekKeyOrZeroReturnVacant!0 (bvadd x!1077 #b00000000000000000000000000000001) (nextIndex!0 index!1236 x!1077 mask!3266) vacantBefore!23 (select (arr!21069 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!810089 () Bool)

(declare-fun e!448435 () SeekEntryResult!8667)

(declare-fun e!448433 () SeekEntryResult!8667)

(assert (=> b!810089 (= e!448435 e!448433)))

(declare-fun lt!363064 () (_ BitVec 64))

(declare-fun c!88663 () Bool)

(assert (=> b!810089 (= c!88663 (= lt!363064 (select (arr!21069 a!3170) j!153)))))

(declare-fun b!810090 () Bool)

(assert (=> b!810090 (= e!448435 Undefined!8667)))

(declare-fun b!810091 () Bool)

(declare-fun c!88665 () Bool)

(assert (=> b!810091 (= c!88665 (= lt!363064 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!810091 (= e!448433 e!448434)))

(declare-fun b!810092 () Bool)

(assert (=> b!810092 (= e!448434 (MissingVacant!8667 vacantBefore!23))))

(declare-fun d!103977 () Bool)

(declare-fun lt!363063 () SeekEntryResult!8667)

(assert (=> d!103977 (and (or (is-Undefined!8667 lt!363063) (not (is-Found!8667 lt!363063)) (and (bvsge (index!37036 lt!363063) #b00000000000000000000000000000000) (bvslt (index!37036 lt!363063) (size!21490 a!3170)))) (or (is-Undefined!8667 lt!363063) (is-Found!8667 lt!363063) (not (is-MissingVacant!8667 lt!363063)) (not (= (index!37038 lt!363063) vacantBefore!23)) (and (bvsge (index!37038 lt!363063) #b00000000000000000000000000000000) (bvslt (index!37038 lt!363063) (size!21490 a!3170)))) (or (is-Undefined!8667 lt!363063) (ite (is-Found!8667 lt!363063) (= (select (arr!21069 a!3170) (index!37036 lt!363063)) (select (arr!21069 a!3170) j!153)) (and (is-MissingVacant!8667 lt!363063) (= (index!37038 lt!363063) vacantBefore!23) (= (select (arr!21069 a!3170) (index!37038 lt!363063)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!103977 (= lt!363063 e!448435)))

(declare-fun c!88664 () Bool)

(assert (=> d!103977 (= c!88664 (bvsge x!1077 #b01111111111111111111111111111110))))

(assert (=> d!103977 (= lt!363064 (select (arr!21069 a!3170) index!1236))))

(assert (=> d!103977 (validMask!0 mask!3266)))

(assert (=> d!103977 (= (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21069 a!3170) j!153) a!3170 mask!3266) lt!363063)))

(declare-fun b!810093 () Bool)

(assert (=> b!810093 (= e!448433 (Found!8667 index!1236))))

(assert (= (and d!103977 c!88664) b!810090))

(assert (= (and d!103977 (not c!88664)) b!810089))

(assert (= (and b!810089 c!88663) b!810093))

(assert (= (and b!810089 (not c!88663)) b!810091))

(assert (= (and b!810091 c!88665) b!810092))

(assert (= (and b!810091 (not c!88665)) b!810088))

(assert (=> b!810088 m!752087))

(assert (=> b!810088 m!752087))

(assert (=> b!810088 m!752069))

(declare-fun m!752391 () Bool)

(assert (=> b!810088 m!752391))

(declare-fun m!752393 () Bool)

(assert (=> d!103977 m!752393))

(declare-fun m!752395 () Bool)

(assert (=> d!103977 m!752395))

(assert (=> d!103977 m!752077))

(assert (=> d!103977 m!752073))

(assert (=> b!809777 d!103977))

(declare-fun b!810094 () Bool)

(declare-fun e!448437 () SeekEntryResult!8667)

(assert (=> b!810094 (= e!448437 Undefined!8667)))

(declare-fun d!103979 () Bool)

(declare-fun lt!363065 () SeekEntryResult!8667)

(assert (=> d!103979 (and (or (is-Undefined!8667 lt!363065) (not (is-Found!8667 lt!363065)) (and (bvsge (index!37036 lt!363065) #b00000000000000000000000000000000) (bvslt (index!37036 lt!363065) (size!21490 a!3170)))) (or (is-Undefined!8667 lt!363065) (is-Found!8667 lt!363065) (not (is-MissingZero!8667 lt!363065)) (and (bvsge (index!37035 lt!363065) #b00000000000000000000000000000000) (bvslt (index!37035 lt!363065) (size!21490 a!3170)))) (or (is-Undefined!8667 lt!363065) (is-Found!8667 lt!363065) (is-MissingZero!8667 lt!363065) (not (is-MissingVacant!8667 lt!363065)) (and (bvsge (index!37038 lt!363065) #b00000000000000000000000000000000) (bvslt (index!37038 lt!363065) (size!21490 a!3170)))) (or (is-Undefined!8667 lt!363065) (ite (is-Found!8667 lt!363065) (= (select (arr!21069 a!3170) (index!37036 lt!363065)) (select (arr!21069 a!3170) j!153)) (ite (is-MissingZero!8667 lt!363065) (= (select (arr!21069 a!3170) (index!37035 lt!363065)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!8667 lt!363065) (= (select (arr!21069 a!3170) (index!37038 lt!363065)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!103979 (= lt!363065 e!448437)))

(declare-fun c!88666 () Bool)

(declare-fun lt!363067 () SeekEntryResult!8667)

(assert (=> d!103979 (= c!88666 (and (is-Intermediate!8667 lt!363067) (undefined!9479 lt!363067)))))

(assert (=> d!103979 (= lt!363067 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!21069 a!3170) j!153) mask!3266) (select (arr!21069 a!3170) j!153) a!3170 mask!3266))))

(assert (=> d!103979 (validMask!0 mask!3266)))

(assert (=> d!103979 (= (seekEntryOrOpen!0 (select (arr!21069 a!3170) j!153) a!3170 mask!3266) lt!363065)))

(declare-fun b!810095 () Bool)

(declare-fun e!448436 () SeekEntryResult!8667)

(assert (=> b!810095 (= e!448436 (MissingZero!8667 (index!37037 lt!363067)))))

(declare-fun b!810096 () Bool)

(declare-fun e!448438 () SeekEntryResult!8667)

(assert (=> b!810096 (= e!448437 e!448438)))

(declare-fun lt!363066 () (_ BitVec 64))

(assert (=> b!810096 (= lt!363066 (select (arr!21069 a!3170) (index!37037 lt!363067)))))

(declare-fun c!88668 () Bool)

(assert (=> b!810096 (= c!88668 (= lt!363066 (select (arr!21069 a!3170) j!153)))))

(declare-fun b!810097 () Bool)

(declare-fun c!88667 () Bool)

(assert (=> b!810097 (= c!88667 (= lt!363066 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!810097 (= e!448438 e!448436)))

(declare-fun b!810098 () Bool)

(assert (=> b!810098 (= e!448436 (seekKeyOrZeroReturnVacant!0 (x!67874 lt!363067) (index!37037 lt!363067) (index!37037 lt!363067) (select (arr!21069 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!810099 () Bool)

(assert (=> b!810099 (= e!448438 (Found!8667 (index!37037 lt!363067)))))

(assert (= (and d!103979 c!88666) b!810094))

(assert (= (and d!103979 (not c!88666)) b!810096))

(assert (= (and b!810096 c!88668) b!810099))

(assert (= (and b!810096 (not c!88668)) b!810097))

(assert (= (and b!810097 c!88667) b!810095))

(assert (= (and b!810097 (not c!88667)) b!810098))

(declare-fun m!752397 () Bool)

(assert (=> d!103979 m!752397))

(declare-fun m!752399 () Bool)

(assert (=> d!103979 m!752399))

(assert (=> d!103979 m!752069))

(declare-fun m!752401 () Bool)

(assert (=> d!103979 m!752401))

(declare-fun m!752403 () Bool)

(assert (=> d!103979 m!752403))

(assert (=> d!103979 m!752073))

(assert (=> d!103979 m!752069))

(assert (=> d!103979 m!752399))

(declare-fun m!752405 () Bool)

(assert (=> d!103979 m!752405))

(declare-fun m!752407 () Bool)

(assert (=> b!810096 m!752407))

(assert (=> b!810098 m!752069))

(declare-fun m!752409 () Bool)

(assert (=> b!810098 m!752409))

(assert (=> b!809777 d!103979))

(declare-fun e!448440 () SeekEntryResult!8667)

(declare-fun b!810100 () Bool)

(assert (=> b!810100 (= e!448440 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077 #b00000000000000000000000000000001) (nextIndex!0 lt!362927 (bvadd #b00000000000000000000000000000001 x!1077) mask!3266) vacantBefore!23 (select (arr!21069 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!810101 () Bool)

(declare-fun e!448441 () SeekEntryResult!8667)

(declare-fun e!448439 () SeekEntryResult!8667)

(assert (=> b!810101 (= e!448441 e!448439)))

(declare-fun lt!363069 () (_ BitVec 64))

(declare-fun c!88669 () Bool)

(assert (=> b!810101 (= c!88669 (= lt!363069 (select (arr!21069 a!3170) j!153)))))

(declare-fun b!810102 () Bool)

(assert (=> b!810102 (= e!448441 Undefined!8667)))

(declare-fun b!810103 () Bool)

(declare-fun c!88671 () Bool)

(assert (=> b!810103 (= c!88671 (= lt!363069 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!810103 (= e!448439 e!448440)))

(declare-fun b!810104 () Bool)

(assert (=> b!810104 (= e!448440 (MissingVacant!8667 vacantBefore!23))))

(declare-fun lt!363068 () SeekEntryResult!8667)

(declare-fun d!103981 () Bool)

(assert (=> d!103981 (and (or (is-Undefined!8667 lt!363068) (not (is-Found!8667 lt!363068)) (and (bvsge (index!37036 lt!363068) #b00000000000000000000000000000000) (bvslt (index!37036 lt!363068) (size!21490 a!3170)))) (or (is-Undefined!8667 lt!363068) (is-Found!8667 lt!363068) (not (is-MissingVacant!8667 lt!363068)) (not (= (index!37038 lt!363068) vacantBefore!23)) (and (bvsge (index!37038 lt!363068) #b00000000000000000000000000000000) (bvslt (index!37038 lt!363068) (size!21490 a!3170)))) (or (is-Undefined!8667 lt!363068) (ite (is-Found!8667 lt!363068) (= (select (arr!21069 a!3170) (index!37036 lt!363068)) (select (arr!21069 a!3170) j!153)) (and (is-MissingVacant!8667 lt!363068) (= (index!37038 lt!363068) vacantBefore!23) (= (select (arr!21069 a!3170) (index!37038 lt!363068)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!103981 (= lt!363068 e!448441)))

(declare-fun c!88670 () Bool)

(assert (=> d!103981 (= c!88670 (bvsge (bvadd #b00000000000000000000000000000001 x!1077) #b01111111111111111111111111111110))))

(assert (=> d!103981 (= lt!363069 (select (arr!21069 a!3170) lt!362927))))

(assert (=> d!103981 (validMask!0 mask!3266)))

(assert (=> d!103981 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!362927 vacantBefore!23 (select (arr!21069 a!3170) j!153) a!3170 mask!3266) lt!363068)))

(declare-fun b!810105 () Bool)

(assert (=> b!810105 (= e!448439 (Found!8667 lt!362927))))

(assert (= (and d!103981 c!88670) b!810102))

(assert (= (and d!103981 (not c!88670)) b!810101))

(assert (= (and b!810101 c!88669) b!810105))

(assert (= (and b!810101 (not c!88669)) b!810103))

(assert (= (and b!810103 c!88671) b!810104))

(assert (= (and b!810103 (not c!88671)) b!810100))

(assert (=> b!810100 m!752231))

(assert (=> b!810100 m!752231))

(assert (=> b!810100 m!752069))

(declare-fun m!752411 () Bool)

(assert (=> b!810100 m!752411))

(declare-fun m!752413 () Bool)

(assert (=> d!103981 m!752413))

(declare-fun m!752415 () Bool)

(assert (=> d!103981 m!752415))

(declare-fun m!752417 () Bool)

(assert (=> d!103981 m!752417))

(assert (=> d!103981 m!752073))

(assert (=> b!809778 d!103981))

(declare-fun e!448443 () SeekEntryResult!8667)

(declare-fun b!810106 () Bool)

(assert (=> b!810106 (= e!448443 (seekKeyOrZeroReturnVacant!0 (bvadd x!1077 #b00000000000000000000000000000001) (nextIndex!0 index!1236 x!1077 mask!3266) vacantAfter!23 lt!362923 lt!362924 mask!3266))))

(declare-fun b!810107 () Bool)

(declare-fun e!448444 () SeekEntryResult!8667)

(declare-fun e!448442 () SeekEntryResult!8667)

(assert (=> b!810107 (= e!448444 e!448442)))

(declare-fun c!88672 () Bool)

(declare-fun lt!363071 () (_ BitVec 64))

(assert (=> b!810107 (= c!88672 (= lt!363071 lt!362923))))

(declare-fun b!810108 () Bool)

(assert (=> b!810108 (= e!448444 Undefined!8667)))

(declare-fun b!810109 () Bool)

