; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68152 () Bool)

(assert start!68152)

(declare-fun b!792086 () Bool)

(declare-fun res!536919 () Bool)

(declare-fun e!440137 () Bool)

(assert (=> b!792086 (=> (not res!536919) (not e!440137))))

(declare-datatypes ((array!42977 0))(
  ( (array!42978 (arr!20568 (Array (_ BitVec 32) (_ BitVec 64))) (size!20989 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!42977)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!792086 (= res!536919 (validKeyInArray!0 (select (arr!20568 a!3170) j!153)))))

(declare-fun b!792087 () Bool)

(declare-fun res!536922 () Bool)

(assert (=> b!792087 (=> (not res!536922) (not e!440137))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42977 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!792087 (= res!536922 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!792088 () Bool)

(declare-fun e!440135 () Bool)

(declare-datatypes ((List!14584 0))(
  ( (Nil!14581) (Cons!14580 (h!15709 (_ BitVec 64)) (t!20907 List!14584)) )
))
(declare-fun noDuplicate!1285 (List!14584) Bool)

(assert (=> b!792088 (= e!440135 (not (noDuplicate!1285 Nil!14581)))))

(declare-fun b!792089 () Bool)

(declare-fun res!536925 () Bool)

(assert (=> b!792089 (=> (not res!536925) (not e!440135))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42977 (_ BitVec 32)) Bool)

(assert (=> b!792089 (= res!536925 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!792091 () Bool)

(declare-fun res!536924 () Bool)

(assert (=> b!792091 (=> (not res!536924) (not e!440137))))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!792091 (= res!536924 (and (= (size!20989 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!20989 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!20989 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!792092 () Bool)

(declare-fun res!536926 () Bool)

(assert (=> b!792092 (=> (not res!536926) (not e!440137))))

(assert (=> b!792092 (= res!536926 (validKeyInArray!0 k!2044))))

(declare-fun b!792093 () Bool)

(assert (=> b!792093 (= e!440137 e!440135)))

(declare-fun res!536920 () Bool)

(assert (=> b!792093 (=> (not res!536920) (not e!440135))))

(declare-datatypes ((SeekEntryResult!8166 0))(
  ( (MissingZero!8166 (index!35031 (_ BitVec 32))) (Found!8166 (index!35032 (_ BitVec 32))) (Intermediate!8166 (undefined!8978 Bool) (index!35033 (_ BitVec 32)) (x!66013 (_ BitVec 32))) (Undefined!8166) (MissingVacant!8166 (index!35034 (_ BitVec 32))) )
))
(declare-fun lt!353368 () SeekEntryResult!8166)

(assert (=> b!792093 (= res!536920 (or (= lt!353368 (MissingZero!8166 i!1163)) (= lt!353368 (MissingVacant!8166 i!1163))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42977 (_ BitVec 32)) SeekEntryResult!8166)

(assert (=> b!792093 (= lt!353368 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!792090 () Bool)

(declare-fun res!536921 () Bool)

(assert (=> b!792090 (=> (not res!536921) (not e!440135))))

(assert (=> b!792090 (= res!536921 (and (bvsle #b00000000000000000000000000000000 (size!20989 a!3170)) (bvslt (size!20989 a!3170) #b01111111111111111111111111111111)))))

(declare-fun res!536923 () Bool)

(assert (=> start!68152 (=> (not res!536923) (not e!440137))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68152 (= res!536923 (validMask!0 mask!3266))))

(assert (=> start!68152 e!440137))

(assert (=> start!68152 true))

(declare-fun array_inv!16342 (array!42977) Bool)

(assert (=> start!68152 (array_inv!16342 a!3170)))

(assert (= (and start!68152 res!536923) b!792091))

(assert (= (and b!792091 res!536924) b!792086))

(assert (= (and b!792086 res!536919) b!792092))

(assert (= (and b!792092 res!536926) b!792087))

(assert (= (and b!792087 res!536922) b!792093))

(assert (= (and b!792093 res!536920) b!792089))

(assert (= (and b!792089 res!536925) b!792090))

(assert (= (and b!792090 res!536921) b!792088))

(declare-fun m!732805 () Bool)

(assert (=> b!792087 m!732805))

(declare-fun m!732807 () Bool)

(assert (=> b!792092 m!732807))

(declare-fun m!732809 () Bool)

(assert (=> b!792089 m!732809))

(declare-fun m!732811 () Bool)

(assert (=> start!68152 m!732811))

(declare-fun m!732813 () Bool)

(assert (=> start!68152 m!732813))

(declare-fun m!732815 () Bool)

(assert (=> b!792086 m!732815))

(assert (=> b!792086 m!732815))

(declare-fun m!732817 () Bool)

(assert (=> b!792086 m!732817))

(declare-fun m!732819 () Bool)

(assert (=> b!792088 m!732819))

(declare-fun m!732821 () Bool)

(assert (=> b!792093 m!732821))

(push 1)

(assert (not b!792087))

(assert (not b!792092))

(assert (not b!792093))

(assert (not start!68152))

(assert (not b!792088))

(assert (not b!792089))

(assert (not b!792086))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!103093 () Bool)

(declare-fun res!536979 () Bool)

(declare-fun e!440160 () Bool)

(assert (=> d!103093 (=> res!536979 e!440160)))

(assert (=> d!103093 (= res!536979 (= (select (arr!20568 a!3170) #b00000000000000000000000000000000) k!2044))))

(assert (=> d!103093 (= (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000) e!440160)))

(declare-fun b!792146 () Bool)

(declare-fun e!440161 () Bool)

(assert (=> b!792146 (= e!440160 e!440161)))

(declare-fun res!536980 () Bool)

(assert (=> b!792146 (=> (not res!536980) (not e!440161))))

(assert (=> b!792146 (= res!536980 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!20989 a!3170)))))

(declare-fun b!792147 () Bool)

(assert (=> b!792147 (= e!440161 (arrayContainsKey!0 a!3170 k!2044 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!103093 (not res!536979)) b!792146))

(assert (= (and b!792146 res!536980) b!792147))

(declare-fun m!732859 () Bool)

(assert (=> d!103093 m!732859))

(declare-fun m!732861 () Bool)

(assert (=> b!792147 m!732861))

(assert (=> b!792087 d!103093))

(declare-fun d!103099 () Bool)

(assert (=> d!103099 (= (validMask!0 mask!3266) (and (or (= mask!3266 #b00000000000000000000000000000111) (= mask!3266 #b00000000000000000000000000001111) (= mask!3266 #b00000000000000000000000000011111) (= mask!3266 #b00000000000000000000000000111111) (= mask!3266 #b00000000000000000000000001111111) (= mask!3266 #b00000000000000000000000011111111) (= mask!3266 #b00000000000000000000000111111111) (= mask!3266 #b00000000000000000000001111111111) (= mask!3266 #b00000000000000000000011111111111) (= mask!3266 #b00000000000000000000111111111111) (= mask!3266 #b00000000000000000001111111111111) (= mask!3266 #b00000000000000000011111111111111) (= mask!3266 #b00000000000000000111111111111111) (= mask!3266 #b00000000000000001111111111111111) (= mask!3266 #b00000000000000011111111111111111) (= mask!3266 #b00000000000000111111111111111111) (= mask!3266 #b00000000000001111111111111111111) (= mask!3266 #b00000000000011111111111111111111) (= mask!3266 #b00000000000111111111111111111111) (= mask!3266 #b00000000001111111111111111111111) (= mask!3266 #b00000000011111111111111111111111) (= mask!3266 #b00000000111111111111111111111111) (= mask!3266 #b00000001111111111111111111111111) (= mask!3266 #b00000011111111111111111111111111) (= mask!3266 #b00000111111111111111111111111111) (= mask!3266 #b00001111111111111111111111111111) (= mask!3266 #b00011111111111111111111111111111) (= mask!3266 #b00111111111111111111111111111111)) (bvsle mask!3266 #b00111111111111111111111111111111)))))

(assert (=> start!68152 d!103099))

(declare-fun d!103105 () Bool)

(assert (=> d!103105 (= (array_inv!16342 a!3170) (bvsge (size!20989 a!3170) #b00000000000000000000000000000000))))

(assert (=> start!68152 d!103105))

(declare-fun d!103107 () Bool)

(assert (=> d!103107 (= (validKeyInArray!0 k!2044) (and (not (= k!2044 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2044 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!792092 d!103107))

(declare-fun d!103109 () Bool)

(assert (=> d!103109 (= (validKeyInArray!0 (select (arr!20568 a!3170) j!153)) (and (not (= (select (arr!20568 a!3170) j!153) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!20568 a!3170) j!153) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!792086 d!103109))

(declare-fun b!792206 () Bool)

(declare-fun e!440202 () Bool)

(declare-fun call!35333 () Bool)

(assert (=> b!792206 (= e!440202 call!35333)))

(declare-fun b!792207 () Bool)

(declare-fun e!440201 () Bool)

(assert (=> b!792207 (= e!440201 call!35333)))

(declare-fun bm!35330 () Bool)

(assert (=> bm!35330 (= call!35333 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3170 mask!3266))))

(declare-fun b!792208 () Bool)

(declare-fun e!440203 () Bool)

(assert (=> b!792208 (= e!440203 e!440201)))

(declare-fun c!88013 () Bool)

(assert (=> b!792208 (= c!88013 (validKeyInArray!0 (select (arr!20568 a!3170) #b00000000000000000000000000000000)))))

(declare-fun b!792209 () Bool)

(assert (=> b!792209 (= e!440201 e!440202)))

(declare-fun lt!353402 () (_ BitVec 64))

(assert (=> b!792209 (= lt!353402 (select (arr!20568 a!3170) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!27432 0))(
  ( (Unit!27433) )
))
(declare-fun lt!353403 () Unit!27432)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!42977 (_ BitVec 64) (_ BitVec 32)) Unit!27432)

(assert (=> b!792209 (= lt!353403 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3170 lt!353402 #b00000000000000000000000000000000))))

(assert (=> b!792209 (arrayContainsKey!0 a!3170 lt!353402 #b00000000000000000000000000000000)))

(declare-fun lt!353404 () Unit!27432)

(assert (=> b!792209 (= lt!353404 lt!353403)))

(declare-fun res!537002 () Bool)

(assert (=> b!792209 (= res!537002 (= (seekEntryOrOpen!0 (select (arr!20568 a!3170) #b00000000000000000000000000000000) a!3170 mask!3266) (Found!8166 #b00000000000000000000000000000000)))))

(assert (=> b!792209 (=> (not res!537002) (not e!440202))))

(declare-fun d!103111 () Bool)

(declare-fun res!537001 () Bool)

(assert (=> d!103111 (=> res!537001 e!440203)))

(assert (=> d!103111 (= res!537001 (bvsge #b00000000000000000000000000000000 (size!20989 a!3170)))))

(assert (=> d!103111 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266) e!440203)))

(assert (= (and d!103111 (not res!537001)) b!792208))

(assert (= (and b!792208 c!88013) b!792209))

(assert (= (and b!792208 (not c!88013)) b!792207))

(assert (= (and b!792209 res!537002) b!792206))

(assert (= (or b!792206 b!792207) bm!35330))

(declare-fun m!732885 () Bool)

(assert (=> bm!35330 m!732885))

(assert (=> b!792208 m!732859))

(assert (=> b!792208 m!732859))

(declare-fun m!732887 () Bool)

(assert (=> b!792208 m!732887))

(assert (=> b!792209 m!732859))

(declare-fun m!732889 () Bool)

(assert (=> b!792209 m!732889))

(declare-fun m!732891 () Bool)

(assert (=> b!792209 m!732891))

(assert (=> b!792209 m!732859))

(declare-fun m!732893 () Bool)

(assert (=> b!792209 m!732893))

(assert (=> b!792089 d!103111))

(declare-fun b!792256 () Bool)

(declare-fun e!440238 () SeekEntryResult!8166)

(declare-fun lt!353428 () SeekEntryResult!8166)

(assert (=> b!792256 (= e!440238 (MissingZero!8166 (index!35033 lt!353428)))))

(declare-fun b!792258 () Bool)

(declare-fun e!440239 () SeekEntryResult!8166)

(assert (=> b!792258 (= e!440239 (Found!8166 (index!35033 lt!353428)))))

(declare-fun b!792259 () Bool)

(declare-fun c!88028 () Bool)

(declare-fun lt!353427 () (_ BitVec 64))

(assert (=> b!792259 (= c!88028 (= lt!353427 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!792259 (= e!440239 e!440238)))

(declare-fun b!792260 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42977 (_ BitVec 32)) SeekEntryResult!8166)

(assert (=> b!792260 (= e!440238 (seekKeyOrZeroReturnVacant!0 (x!66013 lt!353428) (index!35033 lt!353428) (index!35033 lt!353428) k!2044 a!3170 mask!3266))))

(declare-fun b!792261 () Bool)

(declare-fun e!440237 () SeekEntryResult!8166)

(assert (=> b!792261 (= e!440237 Undefined!8166)))

(declare-fun d!103117 () Bool)

(declare-fun lt!353426 () SeekEntryResult!8166)

(assert (=> d!103117 (and (or (is-Undefined!8166 lt!353426) (not (is-Found!8166 lt!353426)) (and (bvsge (index!35032 lt!353426) #b00000000000000000000000000000000) (bvslt (index!35032 lt!353426) (size!20989 a!3170)))) (or (is-Undefined!8166 lt!353426) (is-Found!8166 lt!353426) (not (is-MissingZero!8166 lt!353426)) (and (bvsge (index!35031 lt!353426) #b00000000000000000000000000000000) (bvslt (index!35031 lt!353426) (size!20989 a!3170)))) (or (is-Undefined!8166 lt!353426) (is-Found!8166 lt!353426) (is-MissingZero!8166 lt!353426) (not (is-MissingVacant!8166 lt!353426)) (and (bvsge (index!35034 lt!353426) #b00000000000000000000000000000000) (bvslt (index!35034 lt!353426) (size!20989 a!3170)))) (or (is-Undefined!8166 lt!353426) (ite (is-Found!8166 lt!353426) (= (select (arr!20568 a!3170) (index!35032 lt!353426)) k!2044) (ite (is-MissingZero!8166 lt!353426) (= (select (arr!20568 a!3170) (index!35031 lt!353426)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!8166 lt!353426) (= (select (arr!20568 a!3170) (index!35034 lt!353426)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!103117 (= lt!353426 e!440237)))

(declare-fun c!88029 () Bool)

(assert (=> d!103117 (= c!88029 (and (is-Intermediate!8166 lt!353428) (undefined!8978 lt!353428)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42977 (_ BitVec 32)) SeekEntryResult!8166)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!103117 (= lt!353428 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2044 mask!3266) k!2044 a!3170 mask!3266))))

(assert (=> d!103117 (validMask!0 mask!3266)))

(assert (=> d!103117 (= (seekEntryOrOpen!0 k!2044 a!3170 mask!3266) lt!353426)))

(declare-fun b!792257 () Bool)

(assert (=> b!792257 (= e!440237 e!440239)))

(assert (=> b!792257 (= lt!353427 (select (arr!20568 a!3170) (index!35033 lt!353428)))))

(declare-fun c!88027 () Bool)

(assert (=> b!792257 (= c!88027 (= lt!353427 k!2044))))

(assert (= (and d!103117 c!88029) b!792261))

(assert (= (and d!103117 (not c!88029)) b!792257))

