; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!128370 () Bool)

(assert start!128370)

(declare-fun b!1505703 () Bool)

(declare-fun res!1026191 () Bool)

(declare-fun e!841585 () Bool)

(assert (=> b!1505703 (=> (not res!1026191) (not e!841585))))

(declare-datatypes ((List!35100 0))(
  ( (Nil!35097) (Cons!35096 (h!36494 (_ BitVec 64)) (t!49801 List!35100)) )
))
(declare-fun noDuplicate!2661 (List!35100) Bool)

(assert (=> b!1505703 (= res!1026191 (noDuplicate!2661 Nil!35097))))

(declare-fun b!1505704 () Bool)

(declare-fun res!1026185 () Bool)

(assert (=> b!1505704 (=> (not res!1026185) (not e!841585))))

(declare-datatypes ((array!100388 0))(
  ( (array!100389 (arr!48437 (Array (_ BitVec 32) (_ BitVec 64))) (size!48988 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100388)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1505704 (= res!1026185 (validKeyInArray!0 (select (arr!48437 a!2804) j!70)))))

(declare-fun b!1505705 () Bool)

(declare-fun res!1026189 () Bool)

(assert (=> b!1505705 (=> (not res!1026189) (not e!841585))))

(assert (=> b!1505705 (= res!1026189 (and (bvsle #b00000000000000000000000000000000 (size!48988 a!2804)) (bvslt (size!48988 a!2804) #b01111111111111111111111111111111)))))

(declare-fun b!1505706 () Bool)

(declare-fun res!1026190 () Bool)

(assert (=> b!1505706 (=> (not res!1026190) (not e!841585))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(assert (=> b!1505706 (= res!1026190 (and (= (size!48988 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!48988 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!48988 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1505707 () Bool)

(declare-fun e!841586 () Bool)

(assert (=> b!1505707 (= e!841585 e!841586)))

(declare-fun res!1026188 () Bool)

(assert (=> b!1505707 (=> res!1026188 e!841586)))

(declare-fun contains!9970 (List!35100 (_ BitVec 64)) Bool)

(assert (=> b!1505707 (= res!1026188 (contains!9970 Nil!35097 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1505708 () Bool)

(assert (=> b!1505708 (= e!841586 (contains!9970 Nil!35097 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1505709 () Bool)

(declare-fun res!1026192 () Bool)

(assert (=> b!1505709 (=> (not res!1026192) (not e!841585))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100388 (_ BitVec 32)) Bool)

(assert (=> b!1505709 (= res!1026192 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun res!1026186 () Bool)

(assert (=> start!128370 (=> (not res!1026186) (not e!841585))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128370 (= res!1026186 (validMask!0 mask!2512))))

(assert (=> start!128370 e!841585))

(assert (=> start!128370 true))

(declare-fun array_inv!37382 (array!100388) Bool)

(assert (=> start!128370 (array_inv!37382 a!2804)))

(declare-fun b!1505710 () Bool)

(declare-fun res!1026187 () Bool)

(assert (=> b!1505710 (=> (not res!1026187) (not e!841585))))

(assert (=> b!1505710 (= res!1026187 (validKeyInArray!0 (select (arr!48437 a!2804) i!961)))))

(assert (= (and start!128370 res!1026186) b!1505706))

(assert (= (and b!1505706 res!1026190) b!1505710))

(assert (= (and b!1505710 res!1026187) b!1505704))

(assert (= (and b!1505704 res!1026185) b!1505709))

(assert (= (and b!1505709 res!1026192) b!1505705))

(assert (= (and b!1505705 res!1026189) b!1505703))

(assert (= (and b!1505703 res!1026191) b!1505707))

(assert (= (and b!1505707 (not res!1026188)) b!1505708))

(declare-fun m!1388831 () Bool)

(assert (=> b!1505704 m!1388831))

(assert (=> b!1505704 m!1388831))

(declare-fun m!1388833 () Bool)

(assert (=> b!1505704 m!1388833))

(declare-fun m!1388835 () Bool)

(assert (=> start!128370 m!1388835))

(declare-fun m!1388837 () Bool)

(assert (=> start!128370 m!1388837))

(declare-fun m!1388839 () Bool)

(assert (=> b!1505707 m!1388839))

(declare-fun m!1388841 () Bool)

(assert (=> b!1505709 m!1388841))

(declare-fun m!1388843 () Bool)

(assert (=> b!1505708 m!1388843))

(declare-fun m!1388845 () Bool)

(assert (=> b!1505703 m!1388845))

(declare-fun m!1388847 () Bool)

(assert (=> b!1505710 m!1388847))

(assert (=> b!1505710 m!1388847))

(declare-fun m!1388849 () Bool)

(assert (=> b!1505710 m!1388849))

(check-sat (not b!1505708) (not b!1505710) (not b!1505707) (not b!1505704) (not start!128370) (not b!1505709) (not b!1505703))
(check-sat)
(get-model)

(declare-fun b!1505755 () Bool)

(declare-fun e!841616 () Bool)

(declare-fun e!841615 () Bool)

(assert (=> b!1505755 (= e!841616 e!841615)))

(declare-fun c!139298 () Bool)

(assert (=> b!1505755 (= c!139298 (validKeyInArray!0 (select (arr!48437 a!2804) #b00000000000000000000000000000000)))))

(declare-fun b!1505756 () Bool)

(declare-fun e!841614 () Bool)

(assert (=> b!1505756 (= e!841615 e!841614)))

(declare-fun lt!654052 () (_ BitVec 64))

(assert (=> b!1505756 (= lt!654052 (select (arr!48437 a!2804) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!50254 0))(
  ( (Unit!50255) )
))
(declare-fun lt!654050 () Unit!50254)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!100388 (_ BitVec 64) (_ BitVec 32)) Unit!50254)

(assert (=> b!1505756 (= lt!654050 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2804 lt!654052 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!100388 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1505756 (arrayContainsKey!0 a!2804 lt!654052 #b00000000000000000000000000000000)))

(declare-fun lt!654051 () Unit!50254)

(assert (=> b!1505756 (= lt!654051 lt!654050)))

(declare-fun res!1026234 () Bool)

(declare-datatypes ((SeekEntryResult!12646 0))(
  ( (MissingZero!12646 (index!52978 (_ BitVec 32))) (Found!12646 (index!52979 (_ BitVec 32))) (Intermediate!12646 (undefined!13458 Bool) (index!52980 (_ BitVec 32)) (x!134702 (_ BitVec 32))) (Undefined!12646) (MissingVacant!12646 (index!52981 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100388 (_ BitVec 32)) SeekEntryResult!12646)

(assert (=> b!1505756 (= res!1026234 (= (seekEntryOrOpen!0 (select (arr!48437 a!2804) #b00000000000000000000000000000000) a!2804 mask!2512) (Found!12646 #b00000000000000000000000000000000)))))

(assert (=> b!1505756 (=> (not res!1026234) (not e!841614))))

(declare-fun b!1505758 () Bool)

(declare-fun call!68196 () Bool)

(assert (=> b!1505758 (= e!841615 call!68196)))

(declare-fun bm!68193 () Bool)

(assert (=> bm!68193 (= call!68196 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2804 mask!2512))))

(declare-fun d!158057 () Bool)

(declare-fun res!1026233 () Bool)

(assert (=> d!158057 (=> res!1026233 e!841616)))

(assert (=> d!158057 (= res!1026233 (bvsge #b00000000000000000000000000000000 (size!48988 a!2804)))))

(assert (=> d!158057 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512) e!841616)))

(declare-fun b!1505757 () Bool)

(assert (=> b!1505757 (= e!841614 call!68196)))

(assert (= (and d!158057 (not res!1026233)) b!1505755))

(assert (= (and b!1505755 c!139298) b!1505756))

(assert (= (and b!1505755 (not c!139298)) b!1505758))

(assert (= (and b!1505756 res!1026234) b!1505757))

(assert (= (or b!1505757 b!1505758) bm!68193))

(declare-fun m!1388881 () Bool)

(assert (=> b!1505755 m!1388881))

(assert (=> b!1505755 m!1388881))

(declare-fun m!1388883 () Bool)

(assert (=> b!1505755 m!1388883))

(assert (=> b!1505756 m!1388881))

(declare-fun m!1388885 () Bool)

(assert (=> b!1505756 m!1388885))

(declare-fun m!1388887 () Bool)

(assert (=> b!1505756 m!1388887))

(assert (=> b!1505756 m!1388881))

(declare-fun m!1388889 () Bool)

(assert (=> b!1505756 m!1388889))

(declare-fun m!1388891 () Bool)

(assert (=> bm!68193 m!1388891))

(assert (=> b!1505709 d!158057))

(declare-fun d!158071 () Bool)

(assert (=> d!158071 (= (validKeyInArray!0 (select (arr!48437 a!2804) j!70)) (and (not (= (select (arr!48437 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48437 a!2804) j!70) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1505704 d!158071))

(declare-fun d!158073 () Bool)

(assert (=> d!158073 (= (validKeyInArray!0 (select (arr!48437 a!2804) i!961)) (and (not (= (select (arr!48437 a!2804) i!961) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48437 a!2804) i!961) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1505710 d!158073))

(declare-fun d!158075 () Bool)

(declare-fun lt!654058 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!788 (List!35100) (InoxSet (_ BitVec 64)))

(assert (=> d!158075 (= lt!654058 (select (content!788 Nil!35097) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!841627 () Bool)

(assert (=> d!158075 (= lt!654058 e!841627)))

(declare-fun res!1026245 () Bool)

(assert (=> d!158075 (=> (not res!1026245) (not e!841627))))

(get-info :version)

(assert (=> d!158075 (= res!1026245 ((_ is Cons!35096) Nil!35097))))

(assert (=> d!158075 (= (contains!9970 Nil!35097 #b1000000000000000000000000000000000000000000000000000000000000000) lt!654058)))

(declare-fun b!1505769 () Bool)

(declare-fun e!841628 () Bool)

(assert (=> b!1505769 (= e!841627 e!841628)))

(declare-fun res!1026246 () Bool)

(assert (=> b!1505769 (=> res!1026246 e!841628)))

(assert (=> b!1505769 (= res!1026246 (= (h!36494 Nil!35097) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1505770 () Bool)

(assert (=> b!1505770 (= e!841628 (contains!9970 (t!49801 Nil!35097) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!158075 res!1026245) b!1505769))

(assert (= (and b!1505769 (not res!1026246)) b!1505770))

(declare-fun m!1388899 () Bool)

(assert (=> d!158075 m!1388899))

(declare-fun m!1388901 () Bool)

(assert (=> d!158075 m!1388901))

(declare-fun m!1388903 () Bool)

(assert (=> b!1505770 m!1388903))

(assert (=> b!1505708 d!158075))

(declare-fun d!158079 () Bool)

(declare-fun res!1026251 () Bool)

(declare-fun e!841633 () Bool)

(assert (=> d!158079 (=> res!1026251 e!841633)))

(assert (=> d!158079 (= res!1026251 ((_ is Nil!35097) Nil!35097))))

(assert (=> d!158079 (= (noDuplicate!2661 Nil!35097) e!841633)))

(declare-fun b!1505775 () Bool)

(declare-fun e!841634 () Bool)

(assert (=> b!1505775 (= e!841633 e!841634)))

(declare-fun res!1026252 () Bool)

(assert (=> b!1505775 (=> (not res!1026252) (not e!841634))))

(assert (=> b!1505775 (= res!1026252 (not (contains!9970 (t!49801 Nil!35097) (h!36494 Nil!35097))))))

(declare-fun b!1505776 () Bool)

(assert (=> b!1505776 (= e!841634 (noDuplicate!2661 (t!49801 Nil!35097)))))

(assert (= (and d!158079 (not res!1026251)) b!1505775))

(assert (= (and b!1505775 res!1026252) b!1505776))

(declare-fun m!1388905 () Bool)

(assert (=> b!1505775 m!1388905))

(declare-fun m!1388907 () Bool)

(assert (=> b!1505776 m!1388907))

(assert (=> b!1505703 d!158079))

(declare-fun d!158085 () Bool)

(assert (=> d!158085 (= (validMask!0 mask!2512) (and (or (= mask!2512 #b00000000000000000000000000000111) (= mask!2512 #b00000000000000000000000000001111) (= mask!2512 #b00000000000000000000000000011111) (= mask!2512 #b00000000000000000000000000111111) (= mask!2512 #b00000000000000000000000001111111) (= mask!2512 #b00000000000000000000000011111111) (= mask!2512 #b00000000000000000000000111111111) (= mask!2512 #b00000000000000000000001111111111) (= mask!2512 #b00000000000000000000011111111111) (= mask!2512 #b00000000000000000000111111111111) (= mask!2512 #b00000000000000000001111111111111) (= mask!2512 #b00000000000000000011111111111111) (= mask!2512 #b00000000000000000111111111111111) (= mask!2512 #b00000000000000001111111111111111) (= mask!2512 #b00000000000000011111111111111111) (= mask!2512 #b00000000000000111111111111111111) (= mask!2512 #b00000000000001111111111111111111) (= mask!2512 #b00000000000011111111111111111111) (= mask!2512 #b00000000000111111111111111111111) (= mask!2512 #b00000000001111111111111111111111) (= mask!2512 #b00000000011111111111111111111111) (= mask!2512 #b00000000111111111111111111111111) (= mask!2512 #b00000001111111111111111111111111) (= mask!2512 #b00000011111111111111111111111111) (= mask!2512 #b00000111111111111111111111111111) (= mask!2512 #b00001111111111111111111111111111) (= mask!2512 #b00011111111111111111111111111111) (= mask!2512 #b00111111111111111111111111111111)) (bvsle mask!2512 #b00111111111111111111111111111111)))))

(assert (=> start!128370 d!158085))

(declare-fun d!158091 () Bool)

(assert (=> d!158091 (= (array_inv!37382 a!2804) (bvsge (size!48988 a!2804) #b00000000000000000000000000000000))))

(assert (=> start!128370 d!158091))

(declare-fun d!158097 () Bool)

(declare-fun lt!654077 () Bool)

(assert (=> d!158097 (= lt!654077 (select (content!788 Nil!35097) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!841653 () Bool)

(assert (=> d!158097 (= lt!654077 e!841653)))

(declare-fun res!1026265 () Bool)

(assert (=> d!158097 (=> (not res!1026265) (not e!841653))))

(assert (=> d!158097 (= res!1026265 ((_ is Cons!35096) Nil!35097))))

(assert (=> d!158097 (= (contains!9970 Nil!35097 #b0000000000000000000000000000000000000000000000000000000000000000) lt!654077)))

(declare-fun b!1505801 () Bool)

(declare-fun e!841654 () Bool)

(assert (=> b!1505801 (= e!841653 e!841654)))

(declare-fun res!1026266 () Bool)

(assert (=> b!1505801 (=> res!1026266 e!841654)))

(assert (=> b!1505801 (= res!1026266 (= (h!36494 Nil!35097) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1505802 () Bool)

(assert (=> b!1505802 (= e!841654 (contains!9970 (t!49801 Nil!35097) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!158097 res!1026265) b!1505801))

(assert (= (and b!1505801 (not res!1026266)) b!1505802))

(assert (=> d!158097 m!1388899))

(declare-fun m!1388933 () Bool)

(assert (=> d!158097 m!1388933))

(declare-fun m!1388935 () Bool)

(assert (=> b!1505802 m!1388935))

(assert (=> b!1505707 d!158097))

(check-sat (not b!1505776) (not b!1505770) (not b!1505755) (not d!158097) (not bm!68193) (not b!1505756) (not b!1505802) (not d!158075) (not b!1505775))
(check-sat)
