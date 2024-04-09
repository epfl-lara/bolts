; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49226 () Bool)

(assert start!49226)

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun e!313612 () Bool)

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!34241 0))(
  ( (array!34242 (arr!16451 (Array (_ BitVec 32) (_ BitVec 64))) (size!16815 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34241)

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun i!1153 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4916 0))(
  ( (MissingZero!4916 (index!21888 (_ BitVec 32))) (Found!4916 (index!21889 (_ BitVec 32))) (Intermediate!4916 (undefined!5728 Bool) (index!21890 (_ BitVec 32)) (x!50824 (_ BitVec 32))) (Undefined!4916) (MissingVacant!4916 (index!21891 (_ BitVec 32))) )
))
(declare-fun lt!247734 () SeekEntryResult!4916)

(declare-fun b!541767 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34241 (_ BitVec 32)) SeekEntryResult!4916)

(assert (=> b!541767 (= e!313612 (not (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (store (arr!16451 a!3154) i!1153 k!1998) j!147) (array!34242 (store (arr!16451 a!3154) i!1153 k!1998) (size!16815 a!3154)) mask!3216) lt!247734)))))

(declare-fun b!541768 () Bool)

(declare-fun res!336655 () Bool)

(assert (=> b!541768 (=> (not res!336655) (not e!313612))))

(declare-fun lt!247735 () SeekEntryResult!4916)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!541768 (= res!336655 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16451 a!3154) j!147) mask!3216) (select (arr!16451 a!3154) j!147) a!3154 mask!3216) lt!247735))))

(declare-fun b!541769 () Bool)

(declare-fun res!336647 () Bool)

(declare-fun e!313614 () Bool)

(assert (=> b!541769 (=> (not res!336647) (not e!313614))))

(assert (=> b!541769 (= res!336647 (and (= (size!16815 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16815 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16815 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!541770 () Bool)

(declare-fun e!313613 () Bool)

(assert (=> b!541770 (= e!313613 e!313612)))

(declare-fun res!336648 () Bool)

(assert (=> b!541770 (=> (not res!336648) (not e!313612))))

(assert (=> b!541770 (= res!336648 (= lt!247735 lt!247734))))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!541770 (= lt!247734 (Intermediate!4916 false resIndex!32 resX!32))))

(assert (=> b!541770 (= lt!247735 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16451 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!541771 () Bool)

(declare-fun res!336646 () Bool)

(assert (=> b!541771 (=> (not res!336646) (not e!313614))))

(declare-fun arrayContainsKey!0 (array!34241 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!541771 (= res!336646 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!541772 () Bool)

(declare-fun res!336649 () Bool)

(assert (=> b!541772 (=> (not res!336649) (not e!313614))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!541772 (= res!336649 (validKeyInArray!0 k!1998))))

(declare-fun b!541773 () Bool)

(declare-fun res!336654 () Bool)

(assert (=> b!541773 (=> (not res!336654) (not e!313613))))

(assert (=> b!541773 (= res!336654 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16815 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16815 a!3154)) (= (select (arr!16451 a!3154) resIndex!32) (select (arr!16451 a!3154) j!147))))))

(declare-fun b!541774 () Bool)

(declare-fun res!336652 () Bool)

(assert (=> b!541774 (=> (not res!336652) (not e!313613))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34241 (_ BitVec 32)) Bool)

(assert (=> b!541774 (= res!336652 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!541776 () Bool)

(declare-fun res!336651 () Bool)

(assert (=> b!541776 (=> (not res!336651) (not e!313613))))

(declare-datatypes ((List!10623 0))(
  ( (Nil!10620) (Cons!10619 (h!11571 (_ BitVec 64)) (t!16859 List!10623)) )
))
(declare-fun arrayNoDuplicates!0 (array!34241 (_ BitVec 32) List!10623) Bool)

(assert (=> b!541776 (= res!336651 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10620))))

(declare-fun b!541777 () Bool)

(assert (=> b!541777 (= e!313614 e!313613)))

(declare-fun res!336656 () Bool)

(assert (=> b!541777 (=> (not res!336656) (not e!313613))))

(declare-fun lt!247736 () SeekEntryResult!4916)

(assert (=> b!541777 (= res!336656 (or (= lt!247736 (MissingZero!4916 i!1153)) (= lt!247736 (MissingVacant!4916 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34241 (_ BitVec 32)) SeekEntryResult!4916)

(assert (=> b!541777 (= lt!247736 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!541778 () Bool)

(declare-fun res!336650 () Bool)

(assert (=> b!541778 (=> (not res!336650) (not e!313612))))

(assert (=> b!541778 (= res!336650 (and (not (= (select (arr!16451 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16451 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16451 a!3154) index!1177) (select (arr!16451 a!3154) j!147)) (= index!1177 resIndex!32)))))

(declare-fun b!541775 () Bool)

(declare-fun res!336653 () Bool)

(assert (=> b!541775 (=> (not res!336653) (not e!313614))))

(assert (=> b!541775 (= res!336653 (validKeyInArray!0 (select (arr!16451 a!3154) j!147)))))

(declare-fun res!336645 () Bool)

(assert (=> start!49226 (=> (not res!336645) (not e!313614))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49226 (= res!336645 (validMask!0 mask!3216))))

(assert (=> start!49226 e!313614))

(assert (=> start!49226 true))

(declare-fun array_inv!12225 (array!34241) Bool)

(assert (=> start!49226 (array_inv!12225 a!3154)))

(assert (= (and start!49226 res!336645) b!541769))

(assert (= (and b!541769 res!336647) b!541775))

(assert (= (and b!541775 res!336653) b!541772))

(assert (= (and b!541772 res!336649) b!541771))

(assert (= (and b!541771 res!336646) b!541777))

(assert (= (and b!541777 res!336656) b!541774))

(assert (= (and b!541774 res!336652) b!541776))

(assert (= (and b!541776 res!336651) b!541773))

(assert (= (and b!541773 res!336654) b!541770))

(assert (= (and b!541770 res!336648) b!541768))

(assert (= (and b!541768 res!336655) b!541778))

(assert (= (and b!541778 res!336650) b!541767))

(declare-fun m!520221 () Bool)

(assert (=> b!541772 m!520221))

(declare-fun m!520223 () Bool)

(assert (=> b!541775 m!520223))

(assert (=> b!541775 m!520223))

(declare-fun m!520225 () Bool)

(assert (=> b!541775 m!520225))

(declare-fun m!520227 () Bool)

(assert (=> b!541776 m!520227))

(assert (=> b!541768 m!520223))

(assert (=> b!541768 m!520223))

(declare-fun m!520229 () Bool)

(assert (=> b!541768 m!520229))

(assert (=> b!541768 m!520229))

(assert (=> b!541768 m!520223))

(declare-fun m!520231 () Bool)

(assert (=> b!541768 m!520231))

(declare-fun m!520233 () Bool)

(assert (=> b!541777 m!520233))

(declare-fun m!520235 () Bool)

(assert (=> b!541774 m!520235))

(declare-fun m!520237 () Bool)

(assert (=> b!541778 m!520237))

(assert (=> b!541778 m!520223))

(declare-fun m!520239 () Bool)

(assert (=> b!541767 m!520239))

(declare-fun m!520241 () Bool)

(assert (=> b!541767 m!520241))

(assert (=> b!541767 m!520241))

(declare-fun m!520243 () Bool)

(assert (=> b!541767 m!520243))

(declare-fun m!520245 () Bool)

(assert (=> b!541771 m!520245))

(assert (=> b!541770 m!520223))

(assert (=> b!541770 m!520223))

(declare-fun m!520247 () Bool)

(assert (=> b!541770 m!520247))

(declare-fun m!520249 () Bool)

(assert (=> start!49226 m!520249))

(declare-fun m!520251 () Bool)

(assert (=> start!49226 m!520251))

(declare-fun m!520253 () Bool)

(assert (=> b!541773 m!520253))

(assert (=> b!541773 m!520223))

(push 1)

(assert (not b!541777))

(assert (not b!541768))

(assert (not b!541776))

(assert (not b!541770))

(assert (not b!541774))

(assert (not b!541772))

(assert (not start!49226))

(assert (not b!541771))

(assert (not b!541767))

(assert (not b!541775))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!541835 () Bool)

(declare-fun e!313656 () Bool)

(declare-fun call!32054 () Bool)

(assert (=> b!541835 (= e!313656 call!32054)))

(declare-fun b!541836 () Bool)

(declare-fun e!313657 () Bool)

(assert (=> b!541836 (= e!313657 call!32054)))

(declare-fun b!541837 () Bool)

(declare-fun e!313655 () Bool)

(assert (=> b!541837 (= e!313655 e!313657)))

(declare-fun c!62891 () Bool)

(assert (=> b!541837 (= c!62891 (validKeyInArray!0 (select (arr!16451 a!3154) #b00000000000000000000000000000000)))))

(declare-fun b!541838 () Bool)

(assert (=> b!541838 (= e!313657 e!313656)))

(declare-fun lt!247750 () (_ BitVec 64))

(assert (=> b!541838 (= lt!247750 (select (arr!16451 a!3154) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!16874 0))(
  ( (Unit!16875) )
))
(declare-fun lt!247749 () Unit!16874)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!34241 (_ BitVec 64) (_ BitVec 32)) Unit!16874)

(assert (=> b!541838 (= lt!247749 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3154 lt!247750 #b00000000000000000000000000000000))))

(assert (=> b!541838 (arrayContainsKey!0 a!3154 lt!247750 #b00000000000000000000000000000000)))

(declare-fun lt!247751 () Unit!16874)

(assert (=> b!541838 (= lt!247751 lt!247749)))

(declare-fun res!336686 () Bool)

(assert (=> b!541838 (= res!336686 (= (seekEntryOrOpen!0 (select (arr!16451 a!3154) #b00000000000000000000000000000000) a!3154 mask!3216) (Found!4916 #b00000000000000000000000000000000)))))

(assert (=> b!541838 (=> (not res!336686) (not e!313656))))

(declare-fun d!81713 () Bool)

(declare-fun res!336685 () Bool)

(assert (=> d!81713 (=> res!336685 e!313655)))

(assert (=> d!81713 (= res!336685 (bvsge #b00000000000000000000000000000000 (size!16815 a!3154)))))

(assert (=> d!81713 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216) e!313655)))

(declare-fun bm!32051 () Bool)

(assert (=> bm!32051 (= call!32054 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3154 mask!3216))))

(assert (= (and d!81713 (not res!336685)) b!541837))

(assert (= (and b!541837 c!62891) b!541838))

(assert (= (and b!541837 (not c!62891)) b!541836))

(assert (= (and b!541838 res!336686) b!541835))

(assert (= (or b!541835 b!541836) bm!32051))

(declare-fun m!520273 () Bool)

(assert (=> b!541837 m!520273))

(assert (=> b!541837 m!520273))

(declare-fun m!520275 () Bool)

(assert (=> b!541837 m!520275))

(assert (=> b!541838 m!520273))

(declare-fun m!520277 () Bool)

(assert (=> b!541838 m!520277))

(declare-fun m!520279 () Bool)

(assert (=> b!541838 m!520279))

(assert (=> b!541838 m!520273))

(declare-fun m!520281 () Bool)

(assert (=> b!541838 m!520281))

(declare-fun m!520283 () Bool)

(assert (=> bm!32051 m!520283))

(assert (=> b!541774 d!81713))

(declare-fun d!81723 () Bool)

(assert (=> d!81723 (= (validMask!0 mask!3216) (and (or (= mask!3216 #b00000000000000000000000000000111) (= mask!3216 #b00000000000000000000000000001111) (= mask!3216 #b00000000000000000000000000011111) (= mask!3216 #b00000000000000000000000000111111) (= mask!3216 #b00000000000000000000000001111111) (= mask!3216 #b00000000000000000000000011111111) (= mask!3216 #b00000000000000000000000111111111) (= mask!3216 #b00000000000000000000001111111111) (= mask!3216 #b00000000000000000000011111111111) (= mask!3216 #b00000000000000000000111111111111) (= mask!3216 #b00000000000000000001111111111111) (= mask!3216 #b00000000000000000011111111111111) (= mask!3216 #b00000000000000000111111111111111) (= mask!3216 #b00000000000000001111111111111111) (= mask!3216 #b00000000000000011111111111111111) (= mask!3216 #b00000000000000111111111111111111) (= mask!3216 #b00000000000001111111111111111111) (= mask!3216 #b00000000000011111111111111111111) (= mask!3216 #b00000000000111111111111111111111) (= mask!3216 #b00000000001111111111111111111111) (= mask!3216 #b00000000011111111111111111111111) (= mask!3216 #b00000000111111111111111111111111) (= mask!3216 #b00000001111111111111111111111111) (= mask!3216 #b00000011111111111111111111111111) (= mask!3216 #b00000111111111111111111111111111) (= mask!3216 #b00001111111111111111111111111111) (= mask!3216 #b00011111111111111111111111111111) (= mask!3216 #b00111111111111111111111111111111)) (bvsle mask!3216 #b00111111111111111111111111111111)))))

(assert (=> start!49226 d!81723))

(declare-fun d!81725 () Bool)

(assert (=> d!81725 (= (array_inv!12225 a!3154) (bvsge (size!16815 a!3154) #b00000000000000000000000000000000))))

(assert (=> start!49226 d!81725))

(declare-fun b!541888 () Bool)

(declare-fun e!313689 () Bool)

(declare-fun e!313690 () Bool)

(assert (=> b!541888 (= e!313689 e!313690)))

(declare-fun res!336702 () Bool)

(assert (=> b!541888 (=> (not res!336702) (not e!313690))))

(declare-fun e!313688 () Bool)

(assert (=> b!541888 (= res!336702 (not e!313688))))

(declare-fun res!336703 () Bool)

(assert (=> b!541888 (=> (not res!336703) (not e!313688))))

(assert (=> b!541888 (= res!336703 (validKeyInArray!0 (select (arr!16451 a!3154) #b00000000000000000000000000000000)))))

(declare-fun d!81727 () Bool)

(declare-fun res!336704 () Bool)

(assert (=> d!81727 (=> res!336704 e!313689)))

(assert (=> d!81727 (= res!336704 (bvsge #b00000000000000000000000000000000 (size!16815 a!3154)))))

(assert (=> d!81727 (= (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10620) e!313689)))

(declare-fun b!541889 () Bool)

(declare-fun e!313687 () Bool)

(assert (=> b!541889 (= e!313690 e!313687)))

(declare-fun c!62909 () Bool)

(assert (=> b!541889 (= c!62909 (validKeyInArray!0 (select (arr!16451 a!3154) #b00000000000000000000000000000000)))))

(declare-fun b!541890 () Bool)

(declare-fun call!32057 () Bool)

(assert (=> b!541890 (= e!313687 call!32057)))

(declare-fun b!541891 () Bool)

(declare-fun contains!2808 (List!10623 (_ BitVec 64)) Bool)

(assert (=> b!541891 (= e!313688 (contains!2808 Nil!10620 (select (arr!16451 a!3154) #b00000000000000000000000000000000)))))

(declare-fun b!541892 () Bool)

(assert (=> b!541892 (= e!313687 call!32057)))

(declare-fun bm!32054 () Bool)

(assert (=> bm!32054 (= call!32057 (arrayNoDuplicates!0 a!3154 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!62909 (Cons!10619 (select (arr!16451 a!3154) #b00000000000000000000000000000000) Nil!10620) Nil!10620)))))

(assert (= (and d!81727 (not res!336704)) b!541888))

(assert (= (and b!541888 res!336703) b!541891))

(assert (= (and b!541888 res!336702) b!541889))

(assert (= (and b!541889 c!62909) b!541890))

(assert (= (and b!541889 (not c!62909)) b!541892))

(assert (= (or b!541890 b!541892) bm!32054))

(assert (=> b!541888 m!520273))

(assert (=> b!541888 m!520273))

(assert (=> b!541888 m!520275))

(assert (=> b!541889 m!520273))

(assert (=> b!541889 m!520273))

(assert (=> b!541889 m!520275))

(assert (=> b!541891 m!520273))

(assert (=> b!541891 m!520273))

(declare-fun m!520293 () Bool)

(assert (=> b!541891 m!520293))

(assert (=> bm!32054 m!520273))

(declare-fun m!520295 () Bool)

(assert (=> bm!32054 m!520295))

(assert (=> b!541776 d!81727))

(declare-fun d!81733 () Bool)

(assert (=> d!81733 (= (validKeyInArray!0 (select (arr!16451 a!3154) j!147)) (and (not (= (select (arr!16451 a!3154) j!147) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16451 a!3154) j!147) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!541775 d!81733))

(declare-fun b!541974 () Bool)

(declare-fun e!313740 () Bool)

(declare-fun lt!247805 () SeekEntryResult!4916)

(assert (=> b!541974 (= e!313740 (bvsge (x!50824 lt!247805) #b01111111111111111111111111111110))))

(declare-fun b!541975 () Bool)

(declare-fun e!313739 () SeekEntryResult!4916)

(assert (=> b!541975 (= e!313739 (Intermediate!4916 true index!1177 x!1030))))

(declare-fun b!541976 () Bool)

(assert (=> b!541976 (and (bvsge (index!21890 lt!247805) #b00000000000000000000000000000000) (bvslt (index!21890 lt!247805) (size!16815 a!3154)))))

(declare-fun e!313737 () Bool)

(assert (=> b!541976 (= e!313737 (= (select (arr!16451 a!3154) (index!21890 lt!247805)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!313741 () SeekEntryResult!4916)

(declare-fun b!541978 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!541978 (= e!313741 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1030 #b00000000000000000000000000000001) (nextIndex!0 index!1177 x!1030 mask!3216) (select (arr!16451 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!541979 () Bool)

(assert (=> b!541979 (= e!313739 e!313741)))

(declare-fun lt!247806 () (_ BitVec 64))

(declare-fun c!62942 () Bool)

(assert (=> b!541979 (= c!62942 (or (= lt!247806 (select (arr!16451 a!3154) j!147)) (= (bvadd lt!247806 lt!247806) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!541980 () Bool)

(assert (=> b!541980 (= e!313741 (Intermediate!4916 false index!1177 x!1030))))

(declare-fun b!541981 () Bool)

(declare-fun e!313738 () Bool)

(assert (=> b!541981 (= e!313740 e!313738)))

(declare-fun res!336729 () Bool)

(assert (=> b!541981 (= res!336729 (and (is-Intermediate!4916 lt!247805) (not (undefined!5728 lt!247805)) (bvslt (x!50824 lt!247805) #b01111111111111111111111111111110) (bvsge (x!50824 lt!247805) #b00000000000000000000000000000000) (bvsge (x!50824 lt!247805) x!1030)))))

(assert (=> b!541981 (=> (not res!336729) (not e!313738))))

(declare-fun b!541982 () Bool)

(assert (=> b!541982 (and (bvsge (index!21890 lt!247805) #b00000000000000000000000000000000) (bvslt (index!21890 lt!247805) (size!16815 a!3154)))))

(declare-fun res!336730 () Bool)

(assert (=> b!541982 (= res!336730 (= (select (arr!16451 a!3154) (index!21890 lt!247805)) (select (arr!16451 a!3154) j!147)))))

(assert (=> b!541982 (=> res!336730 e!313737)))

(assert (=> b!541982 (= e!313738 e!313737)))

(declare-fun b!541977 () Bool)

(assert (=> b!541977 (and (bvsge (index!21890 lt!247805) #b00000000000000000000000000000000) (bvslt (index!21890 lt!247805) (size!16815 a!3154)))))

(declare-fun res!336728 () Bool)

(assert (=> b!541977 (= res!336728 (= (select (arr!16451 a!3154) (index!21890 lt!247805)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!541977 (=> res!336728 e!313737)))

(declare-fun d!81735 () Bool)

(assert (=> d!81735 e!313740))

(declare-fun c!62941 () Bool)

(assert (=> d!81735 (= c!62941 (and (is-Intermediate!4916 lt!247805) (undefined!5728 lt!247805)))))

(assert (=> d!81735 (= lt!247805 e!313739)))

(declare-fun c!62940 () Bool)

(assert (=> d!81735 (= c!62940 (bvsge x!1030 #b01111111111111111111111111111110))))

(assert (=> d!81735 (= lt!247806 (select (arr!16451 a!3154) index!1177))))

(assert (=> d!81735 (validMask!0 mask!3216)))

(assert (=> d!81735 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16451 a!3154) j!147) a!3154 mask!3216) lt!247805)))

(assert (= (and d!81735 c!62940) b!541975))

(assert (= (and d!81735 (not c!62940)) b!541979))

(assert (= (and b!541979 c!62942) b!541980))

(assert (= (and b!541979 (not c!62942)) b!541978))

(assert (= (and d!81735 c!62941) b!541974))

(assert (= (and d!81735 (not c!62941)) b!541981))

(assert (= (and b!541981 res!336729) b!541982))

(assert (= (and b!541982 (not res!336730)) b!541977))

(assert (= (and b!541977 (not res!336728)) b!541976))

(assert (=> d!81735 m!520237))

(assert (=> d!81735 m!520249))

(declare-fun m!520353 () Bool)

(assert (=> b!541978 m!520353))

(assert (=> b!541978 m!520353))

(assert (=> b!541978 m!520223))

(declare-fun m!520355 () Bool)

(assert (=> b!541978 m!520355))

(declare-fun m!520357 () Bool)

(assert (=> b!541976 m!520357))

(assert (=> b!541977 m!520357))

(assert (=> b!541982 m!520357))

(assert (=> b!541770 d!81735))

(declare-fun b!542024 () Bool)

(declare-fun e!313772 () SeekEntryResult!4916)

(declare-fun e!313773 () SeekEntryResult!4916)

(assert (=> b!542024 (= e!313772 e!313773)))

(declare-fun lt!247823 () (_ BitVec 64))

(declare-fun lt!247822 () SeekEntryResult!4916)

(assert (=> b!542024 (= lt!247823 (select (arr!16451 a!3154) (index!21890 lt!247822)))))

(declare-fun c!62954 () Bool)

(assert (=> b!542024 (= c!62954 (= lt!247823 k!1998))))

(declare-fun b!542025 () Bool)

(assert (=> b!542025 (= e!313773 (Found!4916 (index!21890 lt!247822)))))

(declare-fun b!542026 () Bool)

(declare-fun c!62955 () Bool)

(assert (=> b!542026 (= c!62955 (= lt!247823 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!313774 () SeekEntryResult!4916)

(assert (=> b!542026 (= e!313773 e!313774)))

(declare-fun b!542028 () Bool)

(assert (=> b!542028 (= e!313774 (MissingZero!4916 (index!21890 lt!247822)))))

(declare-fun b!542029 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34241 (_ BitVec 32)) SeekEntryResult!4916)

(assert (=> b!542029 (= e!313774 (seekKeyOrZeroReturnVacant!0 (x!50824 lt!247822) (index!21890 lt!247822) (index!21890 lt!247822) k!1998 a!3154 mask!3216))))

(declare-fun b!542027 () Bool)

(assert (=> b!542027 (= e!313772 Undefined!4916)))

(declare-fun d!81751 () Bool)

(declare-fun lt!247821 () SeekEntryResult!4916)

(assert (=> d!81751 (and (or (is-Undefined!4916 lt!247821) (not (is-Found!4916 lt!247821)) (and (bvsge (index!21889 lt!247821) #b00000000000000000000000000000000) (bvslt (index!21889 lt!247821) (size!16815 a!3154)))) (or (is-Undefined!4916 lt!247821) (is-Found!4916 lt!247821) (not (is-MissingZero!4916 lt!247821)) (and (bvsge (index!21888 lt!247821) #b00000000000000000000000000000000) (bvslt (index!21888 lt!247821) (size!16815 a!3154)))) (or (is-Undefined!4916 lt!247821) (is-Found!4916 lt!247821) (is-MissingZero!4916 lt!247821) (not (is-MissingVacant!4916 lt!247821)) (and (bvsge (index!21891 lt!247821) #b00000000000000000000000000000000) (bvslt (index!21891 lt!247821) (size!16815 a!3154)))) (or (is-Undefined!4916 lt!247821) (ite (is-Found!4916 lt!247821) (= (select (arr!16451 a!3154) (index!21889 lt!247821)) k!1998) (ite (is-MissingZero!4916 lt!247821) (= (select (arr!16451 a!3154) (index!21888 lt!247821)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!4916 lt!247821) (= (select (arr!16451 a!3154) (index!21891 lt!247821)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!81751 (= lt!247821 e!313772)))

(declare-fun c!62956 () Bool)

(assert (=> d!81751 (= c!62956 (and (is-Intermediate!4916 lt!247822) (undefined!5728 lt!247822)))))

(assert (=> d!81751 (= lt!247822 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1998 mask!3216) k!1998 a!3154 mask!3216))))

(assert (=> d!81751 (validMask!0 mask!3216)))

(assert (=> d!81751 (= (seekEntryOrOpen!0 k!1998 a!3154 mask!3216) lt!247821)))

(assert (= (and d!81751 c!62956) b!542027))

(assert (= (and d!81751 (not c!62956)) b!542024))

(assert (= (and b!542024 c!62954) b!542025))

(assert (= (and b!542024 (not c!62954)) b!542026))

(assert (= (and b!542026 c!62955) b!542028))

(assert (= (and b!542026 (not c!62955)) b!542029))

(declare-fun m!520369 () Bool)

(assert (=> b!542024 m!520369))

(declare-fun m!520371 () Bool)

(assert (=> b!542029 m!520371))

(assert (=> d!81751 m!520249))

(declare-fun m!520373 () Bool)

(assert (=> d!81751 m!520373))

(declare-fun m!520375 () Bool)

(assert (=> d!81751 m!520375))

(assert (=> d!81751 m!520373))

(declare-fun m!520377 () Bool)

(assert (=> d!81751 m!520377))

(declare-fun m!520379 () Bool)

(assert (=> d!81751 m!520379))

(declare-fun m!520381 () Bool)

(assert (=> d!81751 m!520381))

(assert (=> b!541777 d!81751))

(declare-fun d!81759 () Bool)

(assert (=> d!81759 (= (validKeyInArray!0 k!1998) (and (not (= k!1998 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1998 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!541772 d!81759))

(declare-fun d!81761 () Bool)

(declare-fun res!336759 () Bool)

(declare-fun e!313787 () Bool)

(assert (=> d!81761 (=> res!336759 e!313787)))

(assert (=> d!81761 (= res!336759 (= (select (arr!16451 a!3154) #b00000000000000000000000000000000) k!1998))))

(assert (=> d!81761 (= (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000) e!313787)))

(declare-fun b!542047 () Bool)

(declare-fun e!313788 () Bool)

(assert (=> b!542047 (= e!313787 e!313788)))

(declare-fun res!336760 () Bool)

(assert (=> b!542047 (=> (not res!336760) (not e!313788))))

(assert (=> b!542047 (= res!336760 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16815 a!3154)))))

(declare-fun b!542048 () Bool)

(assert (=> b!542048 (= e!313788 (arrayContainsKey!0 a!3154 k!1998 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!81761 (not res!336759)) b!542047))

(assert (= (and b!542047 res!336760) b!542048))

(assert (=> d!81761 m!520273))

(declare-fun m!520395 () Bool)

(assert (=> b!542048 m!520395))

(assert (=> b!541771 d!81761))

(declare-fun b!542049 () Bool)

(declare-fun e!313792 () Bool)

(declare-fun lt!247829 () SeekEntryResult!4916)

(assert (=> b!542049 (= e!313792 (bvsge (x!50824 lt!247829) #b01111111111111111111111111111110))))

(declare-fun e!313791 () SeekEntryResult!4916)

(declare-fun b!542050 () Bool)

(assert (=> b!542050 (= e!313791 (Intermediate!4916 true (toIndex!0 (select (arr!16451 a!3154) j!147) mask!3216) #b00000000000000000000000000000000))))

(declare-fun b!542051 () Bool)

(assert (=> b!542051 (and (bvsge (index!21890 lt!247829) #b00000000000000000000000000000000) (bvslt (index!21890 lt!247829) (size!16815 a!3154)))))

(declare-fun e!313789 () Bool)

(assert (=> b!542051 (= e!313789 (= (select (arr!16451 a!3154) (index!21890 lt!247829)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!542053 () Bool)

(declare-fun e!313793 () SeekEntryResult!4916)

(assert (=> b!542053 (= e!313793 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!16451 a!3154) j!147) mask!3216) #b00000000000000000000000000000000 mask!3216) (select (arr!16451 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!542054 () Bool)

(assert (=> b!542054 (= e!313791 e!313793)))

(declare-fun lt!247830 () (_ BitVec 64))

(declare-fun c!62963 () Bool)

(assert (=> b!542054 (= c!62963 (or (= lt!247830 (select (arr!16451 a!3154) j!147)) (= (bvadd lt!247830 lt!247830) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!542055 () Bool)

(assert (=> b!542055 (= e!313793 (Intermediate!4916 false (toIndex!0 (select (arr!16451 a!3154) j!147) mask!3216) #b00000000000000000000000000000000))))

(declare-fun b!542056 () Bool)

(declare-fun e!313790 () Bool)

(assert (=> b!542056 (= e!313792 e!313790)))

(declare-fun res!336762 () Bool)

(assert (=> b!542056 (= res!336762 (and (is-Intermediate!4916 lt!247829) (not (undefined!5728 lt!247829)) (bvslt (x!50824 lt!247829) #b01111111111111111111111111111110) (bvsge (x!50824 lt!247829) #b00000000000000000000000000000000) (bvsge (x!50824 lt!247829) #b00000000000000000000000000000000)))))

(assert (=> b!542056 (=> (not res!336762) (not e!313790))))

(declare-fun b!542057 () Bool)

(assert (=> b!542057 (and (bvsge (index!21890 lt!247829) #b00000000000000000000000000000000) (bvslt (index!21890 lt!247829) (size!16815 a!3154)))))

(declare-fun res!336763 () Bool)

(assert (=> b!542057 (= res!336763 (= (select (arr!16451 a!3154) (index!21890 lt!247829)) (select (arr!16451 a!3154) j!147)))))

(assert (=> b!542057 (=> res!336763 e!313789)))

(assert (=> b!542057 (= e!313790 e!313789)))

(declare-fun b!542052 () Bool)

(assert (=> b!542052 (and (bvsge (index!21890 lt!247829) #b00000000000000000000000000000000) (bvslt (index!21890 lt!247829) (size!16815 a!3154)))))

(declare-fun res!336761 () Bool)

(assert (=> b!542052 (= res!336761 (= (select (arr!16451 a!3154) (index!21890 lt!247829)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!542052 (=> res!336761 e!313789)))

(declare-fun d!81767 () Bool)

(assert (=> d!81767 e!313792))

(declare-fun c!62962 () Bool)

(assert (=> d!81767 (= c!62962 (and (is-Intermediate!4916 lt!247829) (undefined!5728 lt!247829)))))

(assert (=> d!81767 (= lt!247829 e!313791)))

(declare-fun c!62961 () Bool)

(assert (=> d!81767 (= c!62961 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!81767 (= lt!247830 (select (arr!16451 a!3154) (toIndex!0 (select (arr!16451 a!3154) j!147) mask!3216)))))

(assert (=> d!81767 (validMask!0 mask!3216)))

(assert (=> d!81767 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16451 a!3154) j!147) mask!3216) (select (arr!16451 a!3154) j!147) a!3154 mask!3216) lt!247829)))

(assert (= (and d!81767 c!62961) b!542050))

(assert (= (and d!81767 (not c!62961)) b!542054))

(assert (= (and b!542054 c!62963) b!542055))

(assert (= (and b!542054 (not c!62963)) b!542053))

(assert (= (and d!81767 c!62962) b!542049))

(assert (= (and d!81767 (not c!62962)) b!542056))

(assert (= (and b!542056 res!336762) b!542057))

(assert (= (and b!542057 (not res!336763)) b!542052))

(assert (= (and b!542052 (not res!336761)) b!542051))

(assert (=> d!81767 m!520229))

(declare-fun m!520397 () Bool)

(assert (=> d!81767 m!520397))

(assert (=> d!81767 m!520249))

(assert (=> b!542053 m!520229))

(declare-fun m!520399 () Bool)

(assert (=> b!542053 m!520399))

(assert (=> b!542053 m!520399))

(assert (=> b!542053 m!520223))

(declare-fun m!520401 () Bool)

(assert (=> b!542053 m!520401))

(declare-fun m!520403 () Bool)

(assert (=> b!542051 m!520403))

(assert (=> b!542052 m!520403))

(assert (=> b!542057 m!520403))

(assert (=> b!541768 d!81767))

(declare-fun d!81769 () Bool)

(declare-fun lt!247836 () (_ BitVec 32))

(declare-fun lt!247835 () (_ BitVec 32))

(assert (=> d!81769 (= lt!247836 (bvmul (bvxor lt!247835 (bvlshr lt!247835 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!81769 (= lt!247835 ((_ extract 31 0) (bvand (bvxor (select (arr!16451 a!3154) j!147) (bvlshr (select (arr!16451 a!3154) j!147) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!81769 (and (bvsge mask!3216 #b00000000000000000000000000000000) (let ((res!336764 (let ((h!11574 ((_ extract 31 0) (bvand (bvxor (select (arr!16451 a!3154) j!147) (bvlshr (select (arr!16451 a!3154) j!147) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!50830 (bvmul (bvxor h!11574 (bvlshr h!11574 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!50830 (bvlshr x!50830 #b00000000000000000000000000001101)) mask!3216))))) (and (bvslt res!336764 (bvadd mask!3216 #b00000000000000000000000000000001)) (bvsge res!336764 #b00000000000000000000000000000000))))))

(assert (=> d!81769 (= (toIndex!0 (select (arr!16451 a!3154) j!147) mask!3216) (bvand (bvxor lt!247836 (bvlshr lt!247836 #b00000000000000000000000000001101)) mask!3216))))

(assert (=> b!541768 d!81769))

(declare-fun b!542058 () Bool)

(declare-fun e!313797 () Bool)

(declare-fun lt!247837 () SeekEntryResult!4916)

(assert (=> b!542058 (= e!313797 (bvsge (x!50824 lt!247837) #b01111111111111111111111111111110))))

(declare-fun b!542059 () Bool)

(declare-fun e!313796 () SeekEntryResult!4916)

(assert (=> b!542059 (= e!313796 (Intermediate!4916 true index!1177 x!1030))))

(declare-fun b!542060 () Bool)

(assert (=> b!542060 (and (bvsge (index!21890 lt!247837) #b00000000000000000000000000000000) (bvslt (index!21890 lt!247837) (size!16815 (array!34242 (store (arr!16451 a!3154) i!1153 k!1998) (size!16815 a!3154)))))))

(declare-fun e!313794 () Bool)

(assert (=> b!542060 (= e!313794 (= (select (arr!16451 (array!34242 (store (arr!16451 a!3154) i!1153 k!1998) (size!16815 a!3154))) (index!21890 lt!247837)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!313798 () SeekEntryResult!4916)

(declare-fun b!542062 () Bool)

(assert (=> b!542062 (= e!313798 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1030 #b00000000000000000000000000000001) (nextIndex!0 index!1177 x!1030 mask!3216) (select (store (arr!16451 a!3154) i!1153 k!1998) j!147) (array!34242 (store (arr!16451 a!3154) i!1153 k!1998) (size!16815 a!3154)) mask!3216))))

(declare-fun b!542063 () Bool)

(assert (=> b!542063 (= e!313796 e!313798)))

(declare-fun c!62966 () Bool)

(declare-fun lt!247838 () (_ BitVec 64))

(assert (=> b!542063 (= c!62966 (or (= lt!247838 (select (store (arr!16451 a!3154) i!1153 k!1998) j!147)) (= (bvadd lt!247838 lt!247838) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!542064 () Bool)

(assert (=> b!542064 (= e!313798 (Intermediate!4916 false index!1177 x!1030))))

(declare-fun b!542065 () Bool)

(declare-fun e!313795 () Bool)

(assert (=> b!542065 (= e!313797 e!313795)))

(declare-fun res!336766 () Bool)

(assert (=> b!542065 (= res!336766 (and (is-Intermediate!4916 lt!247837) (not (undefined!5728 lt!247837)) (bvslt (x!50824 lt!247837) #b01111111111111111111111111111110) (bvsge (x!50824 lt!247837) #b00000000000000000000000000000000) (bvsge (x!50824 lt!247837) x!1030)))))

(assert (=> b!542065 (=> (not res!336766) (not e!313795))))

(declare-fun b!542066 () Bool)

(assert (=> b!542066 (and (bvsge (index!21890 lt!247837) #b00000000000000000000000000000000) (bvslt (index!21890 lt!247837) (size!16815 (array!34242 (store (arr!16451 a!3154) i!1153 k!1998) (size!16815 a!3154)))))))

(declare-fun res!336767 () Bool)

(assert (=> b!542066 (= res!336767 (= (select (arr!16451 (array!34242 (store (arr!16451 a!3154) i!1153 k!1998) (size!16815 a!3154))) (index!21890 lt!247837)) (select (store (arr!16451 a!3154) i!1153 k!1998) j!147)))))

(assert (=> b!542066 (=> res!336767 e!313794)))

(assert (=> b!542066 (= e!313795 e!313794)))

(declare-fun b!542061 () Bool)

(assert (=> b!542061 (and (bvsge (index!21890 lt!247837) #b00000000000000000000000000000000) (bvslt (index!21890 lt!247837) (size!16815 (array!34242 (store (arr!16451 a!3154) i!1153 k!1998) (size!16815 a!3154)))))))

(declare-fun res!336765 () Bool)

(assert (=> b!542061 (= res!336765 (= (select (arr!16451 (array!34242 (store (arr!16451 a!3154) i!1153 k!1998) (size!16815 a!3154))) (index!21890 lt!247837)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!542061 (=> res!336765 e!313794)))

(declare-fun d!81771 () Bool)

(assert (=> d!81771 e!313797))

(declare-fun c!62965 () Bool)

(assert (=> d!81771 (= c!62965 (and (is-Intermediate!4916 lt!247837) (undefined!5728 lt!247837)))))

(assert (=> d!81771 (= lt!247837 e!313796)))

(declare-fun c!62964 () Bool)

(assert (=> d!81771 (= c!62964 (bvsge x!1030 #b01111111111111111111111111111110))))

(assert (=> d!81771 (= lt!247838 (select (arr!16451 (array!34242 (store (arr!16451 a!3154) i!1153 k!1998) (size!16815 a!3154))) index!1177))))

(assert (=> d!81771 (validMask!0 mask!3216)))

(assert (=> d!81771 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (store (arr!16451 a!3154) i!1153 k!1998) j!147) (array!34242 (store (arr!16451 a!3154) i!1153 k!1998) (size!16815 a!3154)) mask!3216) lt!247837)))

(assert (= (and d!81771 c!62964) b!542059))

(assert (= (and d!81771 (not c!62964)) b!542063))

(assert (= (and b!542063 c!62966) b!542064))

(assert (= (and b!542063 (not c!62966)) b!542062))

(assert (= (and d!81771 c!62965) b!542058))

(assert (= (and d!81771 (not c!62965)) b!542065))

(assert (= (and b!542065 res!336766) b!542066))

(assert (= (and b!542066 (not res!336767)) b!542061))

(assert (= (and b!542061 (not res!336765)) b!542060))

(declare-fun m!520405 () Bool)

(assert (=> d!81771 m!520405))

(assert (=> d!81771 m!520249))

(assert (=> b!542062 m!520353))

(assert (=> b!542062 m!520353))

(assert (=> b!542062 m!520241))

(declare-fun m!520407 () Bool)

(assert (=> b!542062 m!520407))

(declare-fun m!520409 () Bool)

(assert (=> b!542060 m!520409))

(assert (=> b!542061 m!520409))

(assert (=> b!542066 m!520409))

(assert (=> b!541767 d!81771))

(push 1)

