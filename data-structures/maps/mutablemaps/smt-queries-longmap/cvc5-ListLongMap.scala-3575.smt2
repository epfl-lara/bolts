; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49144 () Bool)

(assert start!49144)

(declare-fun b!541063 () Bool)

(declare-fun res!336103 () Bool)

(declare-fun e!313304 () Bool)

(assert (=> b!541063 (=> (not res!336103) (not e!313304))))

(declare-datatypes ((SeekEntryResult!4902 0))(
  ( (MissingZero!4902 (index!21832 (_ BitVec 32))) (Found!4902 (index!21833 (_ BitVec 32))) (Intermediate!4902 (undefined!5714 Bool) (index!21834 (_ BitVec 32)) (x!50772 (_ BitVec 32))) (Undefined!4902) (MissingVacant!4902 (index!21835 (_ BitVec 32))) )
))
(declare-fun lt!247546 () SeekEntryResult!4902)

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!34210 0))(
  ( (array!34211 (arr!16437 (Array (_ BitVec 32) (_ BitVec 64))) (size!16801 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34210)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34210 (_ BitVec 32)) SeekEntryResult!4902)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!541063 (= res!336103 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16437 a!3154) j!147) mask!3216) (select (arr!16437 a!3154) j!147) a!3154 mask!3216) lt!247546))))

(declare-fun b!541064 () Bool)

(declare-fun res!336109 () Bool)

(declare-fun e!313303 () Bool)

(assert (=> b!541064 (=> (not res!336109) (not e!313303))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34210 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!541064 (= res!336109 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!541065 () Bool)

(declare-fun e!313306 () Bool)

(assert (=> b!541065 (= e!313303 e!313306)))

(declare-fun res!336107 () Bool)

(assert (=> b!541065 (=> (not res!336107) (not e!313306))))

(declare-fun lt!247547 () SeekEntryResult!4902)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!541065 (= res!336107 (or (= lt!247547 (MissingZero!4902 i!1153)) (= lt!247547 (MissingVacant!4902 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34210 (_ BitVec 32)) SeekEntryResult!4902)

(assert (=> b!541065 (= lt!247547 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!541066 () Bool)

(declare-fun res!336108 () Bool)

(assert (=> b!541066 (=> (not res!336108) (not e!313306))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(assert (=> b!541066 (= res!336108 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16801 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16801 a!3154)) (= (select (arr!16437 a!3154) resIndex!32) (select (arr!16437 a!3154) j!147))))))

(declare-fun b!541067 () Bool)

(declare-fun res!336110 () Bool)

(assert (=> b!541067 (=> (not res!336110) (not e!313303))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!541067 (= res!336110 (validKeyInArray!0 (select (arr!16437 a!3154) j!147)))))

(declare-fun b!541068 () Bool)

(declare-fun res!336100 () Bool)

(assert (=> b!541068 (=> (not res!336100) (not e!313303))))

(assert (=> b!541068 (= res!336100 (and (= (size!16801 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16801 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16801 a!3154)) (not (= i!1153 j!147))))))

(declare-fun res!336102 () Bool)

(assert (=> start!49144 (=> (not res!336102) (not e!313303))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49144 (= res!336102 (validMask!0 mask!3216))))

(assert (=> start!49144 e!313303))

(assert (=> start!49144 true))

(declare-fun array_inv!12211 (array!34210) Bool)

(assert (=> start!49144 (array_inv!12211 a!3154)))

(declare-fun b!541069 () Bool)

(declare-fun res!336106 () Bool)

(assert (=> b!541069 (=> (not res!336106) (not e!313306))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34210 (_ BitVec 32)) Bool)

(assert (=> b!541069 (= res!336106 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!541070 () Bool)

(assert (=> b!541070 (= e!313306 e!313304)))

(declare-fun res!336105 () Bool)

(assert (=> b!541070 (=> (not res!336105) (not e!313304))))

(assert (=> b!541070 (= res!336105 (= lt!247546 (Intermediate!4902 false resIndex!32 resX!32)))))

(assert (=> b!541070 (= lt!247546 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16437 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!541071 () Bool)

(declare-fun res!336104 () Bool)

(assert (=> b!541071 (=> (not res!336104) (not e!313303))))

(assert (=> b!541071 (= res!336104 (validKeyInArray!0 k!1998))))

(declare-fun b!541072 () Bool)

(declare-fun res!336101 () Bool)

(assert (=> b!541072 (=> (not res!336101) (not e!313306))))

(declare-datatypes ((List!10609 0))(
  ( (Nil!10606) (Cons!10605 (h!11554 (_ BitVec 64)) (t!16845 List!10609)) )
))
(declare-fun arrayNoDuplicates!0 (array!34210 (_ BitVec 32) List!10609) Bool)

(assert (=> b!541072 (= res!336101 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10606))))

(declare-fun b!541073 () Bool)

(assert (=> b!541073 (= e!313304 (and (not (= (select (arr!16437 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16437 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16437 a!3154) index!1177) (select (arr!16437 a!3154) j!147)) (not (= index!1177 resIndex!32))))))

(assert (= (and start!49144 res!336102) b!541068))

(assert (= (and b!541068 res!336100) b!541067))

(assert (= (and b!541067 res!336110) b!541071))

(assert (= (and b!541071 res!336104) b!541064))

(assert (= (and b!541064 res!336109) b!541065))

(assert (= (and b!541065 res!336107) b!541069))

(assert (= (and b!541069 res!336106) b!541072))

(assert (= (and b!541072 res!336101) b!541066))

(assert (= (and b!541066 res!336108) b!541070))

(assert (= (and b!541070 res!336105) b!541063))

(assert (= (and b!541063 res!336103) b!541073))

(declare-fun m!519697 () Bool)

(assert (=> b!541073 m!519697))

(declare-fun m!519699 () Bool)

(assert (=> b!541073 m!519699))

(declare-fun m!519701 () Bool)

(assert (=> b!541066 m!519701))

(assert (=> b!541066 m!519699))

(assert (=> b!541067 m!519699))

(assert (=> b!541067 m!519699))

(declare-fun m!519703 () Bool)

(assert (=> b!541067 m!519703))

(declare-fun m!519705 () Bool)

(assert (=> b!541069 m!519705))

(declare-fun m!519707 () Bool)

(assert (=> start!49144 m!519707))

(declare-fun m!519709 () Bool)

(assert (=> start!49144 m!519709))

(declare-fun m!519711 () Bool)

(assert (=> b!541065 m!519711))

(declare-fun m!519713 () Bool)

(assert (=> b!541072 m!519713))

(assert (=> b!541063 m!519699))

(assert (=> b!541063 m!519699))

(declare-fun m!519715 () Bool)

(assert (=> b!541063 m!519715))

(assert (=> b!541063 m!519715))

(assert (=> b!541063 m!519699))

(declare-fun m!519717 () Bool)

(assert (=> b!541063 m!519717))

(declare-fun m!519719 () Bool)

(assert (=> b!541064 m!519719))

(declare-fun m!519721 () Bool)

(assert (=> b!541071 m!519721))

(assert (=> b!541070 m!519699))

(assert (=> b!541070 m!519699))

(declare-fun m!519723 () Bool)

(assert (=> b!541070 m!519723))

(push 1)

(assert (not b!541069))

(assert (not b!541065))

(assert (not start!49144))

(assert (not b!541063))

(assert (not b!541071))

(assert (not b!541072))

(assert (not b!541070))

(assert (not b!541064))

(assert (not b!541067))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!81633 () Bool)

(declare-fun res!336181 () Bool)

(declare-fun e!313335 () Bool)

(assert (=> d!81633 (=> res!336181 e!313335)))

(assert (=> d!81633 (= res!336181 (= (select (arr!16437 a!3154) #b00000000000000000000000000000000) k!1998))))

(assert (=> d!81633 (= (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000) e!313335)))

(declare-fun b!541144 () Bool)

(declare-fun e!313336 () Bool)

(assert (=> b!541144 (= e!313335 e!313336)))

(declare-fun res!336182 () Bool)

(assert (=> b!541144 (=> (not res!336182) (not e!313336))))

(assert (=> b!541144 (= res!336182 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16801 a!3154)))))

(declare-fun b!541145 () Bool)

(assert (=> b!541145 (= e!313336 (arrayContainsKey!0 a!3154 k!1998 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!81633 (not res!336181)) b!541144))

(assert (= (and b!541144 res!336182) b!541145))

(declare-fun m!519781 () Bool)

(assert (=> d!81633 m!519781))

(declare-fun m!519783 () Bool)

(assert (=> b!541145 m!519783))

(assert (=> b!541064 d!81633))

(declare-fun b!541200 () Bool)

(declare-fun e!313372 () SeekEntryResult!4902)

(declare-fun lt!247574 () SeekEntryResult!4902)

(assert (=> b!541200 (= e!313372 (MissingZero!4902 (index!21834 lt!247574)))))

(declare-fun b!541201 () Bool)

(declare-fun e!313371 () SeekEntryResult!4902)

(declare-fun e!313370 () SeekEntryResult!4902)

(assert (=> b!541201 (= e!313371 e!313370)))

(declare-fun lt!247573 () (_ BitVec 64))

(assert (=> b!541201 (= lt!247573 (select (arr!16437 a!3154) (index!21834 lt!247574)))))

(declare-fun c!62815 () Bool)

(assert (=> b!541201 (= c!62815 (= lt!247573 k!1998))))

(declare-fun b!541202 () Bool)

(declare-fun c!62816 () Bool)

(assert (=> b!541202 (= c!62816 (= lt!247573 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!541202 (= e!313370 e!313372)))

(declare-fun b!541203 () Bool)

(assert (=> b!541203 (= e!313371 Undefined!4902)))

(declare-fun d!81639 () Bool)

(declare-fun lt!247572 () SeekEntryResult!4902)

(assert (=> d!81639 (and (or (is-Undefined!4902 lt!247572) (not (is-Found!4902 lt!247572)) (and (bvsge (index!21833 lt!247572) #b00000000000000000000000000000000) (bvslt (index!21833 lt!247572) (size!16801 a!3154)))) (or (is-Undefined!4902 lt!247572) (is-Found!4902 lt!247572) (not (is-MissingZero!4902 lt!247572)) (and (bvsge (index!21832 lt!247572) #b00000000000000000000000000000000) (bvslt (index!21832 lt!247572) (size!16801 a!3154)))) (or (is-Undefined!4902 lt!247572) (is-Found!4902 lt!247572) (is-MissingZero!4902 lt!247572) (not (is-MissingVacant!4902 lt!247572)) (and (bvsge (index!21835 lt!247572) #b00000000000000000000000000000000) (bvslt (index!21835 lt!247572) (size!16801 a!3154)))) (or (is-Undefined!4902 lt!247572) (ite (is-Found!4902 lt!247572) (= (select (arr!16437 a!3154) (index!21833 lt!247572)) k!1998) (ite (is-MissingZero!4902 lt!247572) (= (select (arr!16437 a!3154) (index!21832 lt!247572)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!4902 lt!247572) (= (select (arr!16437 a!3154) (index!21835 lt!247572)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!81639 (= lt!247572 e!313371)))

(declare-fun c!62814 () Bool)

(assert (=> d!81639 (= c!62814 (and (is-Intermediate!4902 lt!247574) (undefined!5714 lt!247574)))))

(assert (=> d!81639 (= lt!247574 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1998 mask!3216) k!1998 a!3154 mask!3216))))

(assert (=> d!81639 (validMask!0 mask!3216)))

(assert (=> d!81639 (= (seekEntryOrOpen!0 k!1998 a!3154 mask!3216) lt!247572)))

(declare-fun b!541204 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34210 (_ BitVec 32)) SeekEntryResult!4902)

(assert (=> b!541204 (= e!313372 (seekKeyOrZeroReturnVacant!0 (x!50772 lt!247574) (index!21834 lt!247574) (index!21834 lt!247574) k!1998 a!3154 mask!3216))))

(declare-fun b!541205 () Bool)

(assert (=> b!541205 (= e!313370 (Found!4902 (index!21834 lt!247574)))))

(assert (= (and d!81639 c!62814) b!541203))

(assert (= (and d!81639 (not c!62814)) b!541201))

(assert (= (and b!541201 c!62815) b!541205))

(assert (= (and b!541201 (not c!62815)) b!541202))

(assert (= (and b!541202 c!62816) b!541200))

(assert (= (and b!541202 (not c!62816)) b!541204))

(declare-fun m!519799 () Bool)

(assert (=> b!541201 m!519799))

(assert (=> d!81639 m!519707))

(declare-fun m!519801 () Bool)

(assert (=> d!81639 m!519801))

(declare-fun m!519803 () Bool)

(assert (=> d!81639 m!519803))

(declare-fun m!519805 () Bool)

(assert (=> d!81639 m!519805))

(declare-fun m!519807 () Bool)

(assert (=> d!81639 m!519807))

(assert (=> d!81639 m!519803))

(declare-fun m!519809 () Bool)

(assert (=> d!81639 m!519809))

(declare-fun m!519811 () Bool)

(assert (=> b!541204 m!519811))

(assert (=> b!541065 d!81639))

(declare-fun b!541278 () Bool)

(declare-fun e!313413 () SeekEntryResult!4902)

(assert (=> b!541278 (= e!313413 (Intermediate!4902 true index!1177 x!1030))))

(declare-fun b!541279 () Bool)

(declare-fun lt!247596 () SeekEntryResult!4902)

(assert (=> b!541279 (and (bvsge (index!21834 lt!247596) #b00000000000000000000000000000000) (bvslt (index!21834 lt!247596) (size!16801 a!3154)))))

(declare-fun res!336222 () Bool)

(assert (=> b!541279 (= res!336222 (= (select (arr!16437 a!3154) (index!21834 lt!247596)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!313412 () Bool)

(assert (=> b!541279 (=> res!336222 e!313412)))

(declare-fun b!541280 () Bool)

(declare-fun e!313416 () Bool)

(declare-fun e!313415 () Bool)

(assert (=> b!541280 (= e!313416 e!313415)))

(declare-fun res!336221 () Bool)

(assert (=> b!541280 (= res!336221 (and (is-Intermediate!4902 lt!247596) (not (undefined!5714 lt!247596)) (bvslt (x!50772 lt!247596) #b01111111111111111111111111111110) (bvsge (x!50772 lt!247596) #b00000000000000000000000000000000) (bvsge (x!50772 lt!247596) x!1030)))))

(assert (=> b!541280 (=> (not res!336221) (not e!313415))))

(declare-fun b!541281 () Bool)

(assert (=> b!541281 (and (bvsge (index!21834 lt!247596) #b00000000000000000000000000000000) (bvslt (index!21834 lt!247596) (size!16801 a!3154)))))

(declare-fun res!336220 () Bool)

(assert (=> b!541281 (= res!336220 (= (select (arr!16437 a!3154) (index!21834 lt!247596)) (select (arr!16437 a!3154) j!147)))))

(assert (=> b!541281 (=> res!336220 e!313412)))

(assert (=> b!541281 (= e!313415 e!313412)))

(declare-fun b!541282 () Bool)

(assert (=> b!541282 (= e!313416 (bvsge (x!50772 lt!247596) #b01111111111111111111111111111110))))

(declare-fun b!541283 () Bool)

(declare-fun e!313414 () SeekEntryResult!4902)

(assert (=> b!541283 (= e!313413 e!313414)))

(declare-fun lt!247597 () (_ BitVec 64))

(declare-fun c!62844 () Bool)

(assert (=> b!541283 (= c!62844 (or (= lt!247597 (select (arr!16437 a!3154) j!147)) (= (bvadd lt!247597 lt!247597) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!81645 () Bool)

(assert (=> d!81645 e!313416))

(declare-fun c!62846 () Bool)

(assert (=> d!81645 (= c!62846 (and (is-Intermediate!4902 lt!247596) (undefined!5714 lt!247596)))))

(assert (=> d!81645 (= lt!247596 e!313413)))

(declare-fun c!62845 () Bool)

(assert (=> d!81645 (= c!62845 (bvsge x!1030 #b01111111111111111111111111111110))))

(assert (=> d!81645 (= lt!247597 (select (arr!16437 a!3154) index!1177))))

(assert (=> d!81645 (validMask!0 mask!3216)))

(assert (=> d!81645 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16437 a!3154) j!147) a!3154 mask!3216) lt!247596)))

(declare-fun b!541284 () Bool)

(assert (=> b!541284 (and (bvsge (index!21834 lt!247596) #b00000000000000000000000000000000) (bvslt (index!21834 lt!247596) (size!16801 a!3154)))))

(assert (=> b!541284 (= e!313412 (= (select (arr!16437 a!3154) (index!21834 lt!247596)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!541285 () Bool)

(assert (=> b!541285 (= e!313414 (Intermediate!4902 false index!1177 x!1030))))

(declare-fun b!541286 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!541286 (= e!313414 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1030 #b00000000000000000000000000000001) (nextIndex!0 index!1177 x!1030 mask!3216) (select (arr!16437 a!3154) j!147) a!3154 mask!3216))))

(assert (= (and d!81645 c!62845) b!541278))

(assert (= (and d!81645 (not c!62845)) b!541283))

(assert (= (and b!541283 c!62844) b!541285))

(assert (= (and b!541283 (not c!62844)) b!541286))

(assert (= (and d!81645 c!62846) b!541282))

(assert (= (and d!81645 (not c!62846)) b!541280))

(assert (= (and b!541280 res!336221) b!541281))

(assert (= (and b!541281 (not res!336220)) b!541279))

(assert (= (and b!541279 (not res!336222)) b!541284))

(declare-fun m!519841 () Bool)

(assert (=> b!541284 m!519841))

(assert (=> b!541281 m!519841))

(assert (=> d!81645 m!519697))

(assert (=> d!81645 m!519707))

(assert (=> b!541279 m!519841))

(declare-fun m!519843 () Bool)

(assert (=> b!541286 m!519843))

(assert (=> b!541286 m!519843))

(assert (=> b!541286 m!519699))

(declare-fun m!519845 () Bool)

(assert (=> b!541286 m!519845))

(assert (=> b!541070 d!81645))

(declare-fun b!541287 () Bool)

(declare-fun e!313418 () SeekEntryResult!4902)

(assert (=> b!541287 (= e!313418 (Intermediate!4902 true (toIndex!0 (select (arr!16437 a!3154) j!147) mask!3216) #b00000000000000000000000000000000))))

(declare-fun b!541288 () Bool)

(declare-fun lt!247604 () SeekEntryResult!4902)

(assert (=> b!541288 (and (bvsge (index!21834 lt!247604) #b00000000000000000000000000000000) (bvslt (index!21834 lt!247604) (size!16801 a!3154)))))

(declare-fun res!336225 () Bool)

(assert (=> b!541288 (= res!336225 (= (select (arr!16437 a!3154) (index!21834 lt!247604)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!313417 () Bool)

(assert (=> b!541288 (=> res!336225 e!313417)))

(declare-fun b!541289 () Bool)

(declare-fun e!313421 () Bool)

(declare-fun e!313420 () Bool)

(assert (=> b!541289 (= e!313421 e!313420)))

(declare-fun res!336224 () Bool)

(assert (=> b!541289 (= res!336224 (and (is-Intermediate!4902 lt!247604) (not (undefined!5714 lt!247604)) (bvslt (x!50772 lt!247604) #b01111111111111111111111111111110) (bvsge (x!50772 lt!247604) #b00000000000000000000000000000000) (bvsge (x!50772 lt!247604) #b00000000000000000000000000000000)))))

(assert (=> b!541289 (=> (not res!336224) (not e!313420))))

(declare-fun b!541290 () Bool)

(assert (=> b!541290 (and (bvsge (index!21834 lt!247604) #b00000000000000000000000000000000) (bvslt (index!21834 lt!247604) (size!16801 a!3154)))))

(declare-fun res!336223 () Bool)

(assert (=> b!541290 (= res!336223 (= (select (arr!16437 a!3154) (index!21834 lt!247604)) (select (arr!16437 a!3154) j!147)))))

(assert (=> b!541290 (=> res!336223 e!313417)))

(assert (=> b!541290 (= e!313420 e!313417)))

(declare-fun b!541291 () Bool)

(assert (=> b!541291 (= e!313421 (bvsge (x!50772 lt!247604) #b01111111111111111111111111111110))))

(declare-fun b!541292 () Bool)

(declare-fun e!313419 () SeekEntryResult!4902)

(assert (=> b!541292 (= e!313418 e!313419)))

(declare-fun c!62847 () Bool)

(declare-fun lt!247605 () (_ BitVec 64))

(assert (=> b!541292 (= c!62847 (or (= lt!247605 (select (arr!16437 a!3154) j!147)) (= (bvadd lt!247605 lt!247605) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!81653 () Bool)

(assert (=> d!81653 e!313421))

(declare-fun c!62849 () Bool)

(assert (=> d!81653 (= c!62849 (and (is-Intermediate!4902 lt!247604) (undefined!5714 lt!247604)))))

(assert (=> d!81653 (= lt!247604 e!313418)))

(declare-fun c!62848 () Bool)

(assert (=> d!81653 (= c!62848 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!81653 (= lt!247605 (select (arr!16437 a!3154) (toIndex!0 (select (arr!16437 a!3154) j!147) mask!3216)))))

(assert (=> d!81653 (validMask!0 mask!3216)))

(assert (=> d!81653 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16437 a!3154) j!147) mask!3216) (select (arr!16437 a!3154) j!147) a!3154 mask!3216) lt!247604)))

(declare-fun b!541293 () Bool)

(assert (=> b!541293 (and (bvsge (index!21834 lt!247604) #b00000000000000000000000000000000) (bvslt (index!21834 lt!247604) (size!16801 a!3154)))))

(assert (=> b!541293 (= e!313417 (= (select (arr!16437 a!3154) (index!21834 lt!247604)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!541294 () Bool)

(assert (=> b!541294 (= e!313419 (Intermediate!4902 false (toIndex!0 (select (arr!16437 a!3154) j!147) mask!3216) #b00000000000000000000000000000000))))

(declare-fun b!541295 () Bool)

(assert (=> b!541295 (= e!313419 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!16437 a!3154) j!147) mask!3216) #b00000000000000000000000000000000 mask!3216) (select (arr!16437 a!3154) j!147) a!3154 mask!3216))))

(assert (= (and d!81653 c!62848) b!541287))

(assert (= (and d!81653 (not c!62848)) b!541292))

(assert (= (and b!541292 c!62847) b!541294))

(assert (= (and b!541292 (not c!62847)) b!541295))

(assert (= (and d!81653 c!62849) b!541291))

(assert (= (and d!81653 (not c!62849)) b!541289))

(assert (= (and b!541289 res!336224) b!541290))

(assert (= (and b!541290 (not res!336223)) b!541288))

(assert (= (and b!541288 (not res!336225)) b!541293))

(declare-fun m!519847 () Bool)

(assert (=> b!541293 m!519847))

(assert (=> b!541290 m!519847))

(assert (=> d!81653 m!519715))

(declare-fun m!519849 () Bool)

(assert (=> d!81653 m!519849))

(assert (=> d!81653 m!519707))

(assert (=> b!541288 m!519847))

(assert (=> b!541295 m!519715))

(declare-fun m!519851 () Bool)

(assert (=> b!541295 m!519851))

(assert (=> b!541295 m!519851))

(assert (=> b!541295 m!519699))

(declare-fun m!519853 () Bool)

(assert (=> b!541295 m!519853))

(assert (=> b!541063 d!81653))

(declare-fun d!81657 () Bool)

(declare-fun lt!247623 () (_ BitVec 32))

(declare-fun lt!247622 () (_ BitVec 32))

(assert (=> d!81657 (= lt!247623 (bvmul (bvxor lt!247622 (bvlshr lt!247622 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!81657 (= lt!247622 ((_ extract 31 0) (bvand (bvxor (select (arr!16437 a!3154) j!147) (bvlshr (select (arr!16437 a!3154) j!147) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!81657 (and (bvsge mask!3216 #b00000000000000000000000000000000) (let ((res!336226 (let ((h!11558 ((_ extract 31 0) (bvand (bvxor (select (arr!16437 a!3154) j!147) (bvlshr (select (arr!16437 a!3154) j!147) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!50779 (bvmul (bvxor h!11558 (bvlshr h!11558 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!50779 (bvlshr x!50779 #b00000000000000000000000000001101)) mask!3216))))) (and (bvslt res!336226 (bvadd mask!3216 #b00000000000000000000000000000001)) (bvsge res!336226 #b00000000000000000000000000000000))))))

(assert (=> d!81657 (= (toIndex!0 (select (arr!16437 a!3154) j!147) mask!3216) (bvand (bvxor lt!247623 (bvlshr lt!247623 #b00000000000000000000000000001101)) mask!3216))))

(assert (=> b!541063 d!81657))

(declare-fun b!541340 () Bool)

(declare-fun e!313453 () Bool)

(declare-fun e!313452 () Bool)

(assert (=> b!541340 (= e!313453 e!313452)))

(declare-fun lt!247638 () (_ BitVec 64))

(assert (=> b!541340 (= lt!247638 (select (arr!16437 a!3154) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!16870 0))(
  ( (Unit!16871) )
))
(declare-fun lt!247637 () Unit!16870)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!34210 (_ BitVec 64) (_ BitVec 32)) Unit!16870)

(assert (=> b!541340 (= lt!247637 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3154 lt!247638 #b00000000000000000000000000000000))))

(assert (=> b!541340 (arrayContainsKey!0 a!3154 lt!247638 #b00000000000000000000000000000000)))

(declare-fun lt!247636 () Unit!16870)

(assert (=> b!541340 (= lt!247636 lt!247637)))

(declare-fun res!336244 () Bool)

(assert (=> b!541340 (= res!336244 (= (seekEntryOrOpen!0 (select (arr!16437 a!3154) #b00000000000000000000000000000000) a!3154 mask!3216) (Found!4902 #b00000000000000000000000000000000)))))

(assert (=> b!541340 (=> (not res!336244) (not e!313452))))

(declare-fun bm!32036 () Bool)

(declare-fun call!32039 () Bool)

(assert (=> bm!32036 (= call!32039 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3154 mask!3216))))

(declare-fun d!81659 () Bool)

(declare-fun res!336243 () Bool)

(declare-fun e!313454 () Bool)

(assert (=> d!81659 (=> res!336243 e!313454)))

(assert (=> d!81659 (= res!336243 (bvsge #b00000000000000000000000000000000 (size!16801 a!3154)))))

(assert (=> d!81659 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216) e!313454)))

(declare-fun b!541341 () Bool)

(assert (=> b!541341 (= e!313452 call!32039)))

(declare-fun b!541342 () Bool)

(assert (=> b!541342 (= e!313453 call!32039)))

(declare-fun b!541343 () Bool)

(assert (=> b!541343 (= e!313454 e!313453)))

(declare-fun c!62864 () Bool)

(assert (=> b!541343 (= c!62864 (validKeyInArray!0 (select (arr!16437 a!3154) #b00000000000000000000000000000000)))))

(assert (= (and d!81659 (not res!336243)) b!541343))

(assert (= (and b!541343 c!62864) b!541340))

(assert (= (and b!541343 (not c!62864)) b!541342))

(assert (= (and b!541340 res!336244) b!541341))

(assert (= (or b!541341 b!541342) bm!32036))

(assert (=> b!541340 m!519781))

(declare-fun m!519883 () Bool)

(assert (=> b!541340 m!519883))

(declare-fun m!519885 () Bool)

(assert (=> b!541340 m!519885))

(assert (=> b!541340 m!519781))

(declare-fun m!519887 () Bool)

(assert (=> b!541340 m!519887))

(declare-fun m!519889 () Bool)

(assert (=> bm!32036 m!519889))

(assert (=> b!541343 m!519781))

(assert (=> b!541343 m!519781))

(declare-fun m!519891 () Bool)

(assert (=> b!541343 m!519891))

(assert (=> b!541069 d!81659))

(declare-fun d!81671 () Bool)

(assert (=> d!81671 (= (validMask!0 mask!3216) (and (or (= mask!3216 #b00000000000000000000000000000111) (= mask!3216 #b00000000000000000000000000001111) (= mask!3216 #b00000000000000000000000000011111) (= mask!3216 #b00000000000000000000000000111111) (= mask!3216 #b00000000000000000000000001111111) (= mask!3216 #b00000000000000000000000011111111) (= mask!3216 #b00000000000000000000000111111111) (= mask!3216 #b00000000000000000000001111111111) (= mask!3216 #b00000000000000000000011111111111) (= mask!3216 #b00000000000000000000111111111111) (= mask!3216 #b00000000000000000001111111111111) (= mask!3216 #b00000000000000000011111111111111) (= mask!3216 #b00000000000000000111111111111111) (= mask!3216 #b00000000000000001111111111111111) (= mask!3216 #b00000000000000011111111111111111) (= mask!3216 #b00000000000000111111111111111111) (= mask!3216 #b00000000000001111111111111111111) (= mask!3216 #b00000000000011111111111111111111) (= mask!3216 #b00000000000111111111111111111111) (= mask!3216 #b00000000001111111111111111111111) (= mask!3216 #b00000000011111111111111111111111) (= mask!3216 #b00000000111111111111111111111111) (= mask!3216 #b00000001111111111111111111111111) (= mask!3216 #b00000011111111111111111111111111) (= mask!3216 #b00000111111111111111111111111111) (= mask!3216 #b00001111111111111111111111111111) (= mask!3216 #b00011111111111111111111111111111) (= mask!3216 #b00111111111111111111111111111111)) (bvsle mask!3216 #b00111111111111111111111111111111)))))

(assert (=> start!49144 d!81671))

(declare-fun d!81685 () Bool)

(assert (=> d!81685 (= (array_inv!12211 a!3154) (bvsge (size!16801 a!3154) #b00000000000000000000000000000000))))

(assert (=> start!49144 d!81685))

(declare-fun d!81687 () Bool)

(assert (=> d!81687 (= (validKeyInArray!0 (select (arr!16437 a!3154) j!147)) (and (not (= (select (arr!16437 a!3154) j!147) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16437 a!3154) j!147) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!541067 d!81687))

(declare-fun b!541384 () Bool)

(declare-fun e!313488 () Bool)

(declare-fun call!32045 () Bool)

(assert (=> b!541384 (= e!313488 call!32045)))

(declare-fun b!541385 () Bool)

(declare-fun e!313489 () Bool)

(declare-fun contains!2806 (List!10609 (_ BitVec 64)) Bool)

(assert (=> b!541385 (= e!313489 (contains!2806 Nil!10606 (select (arr!16437 a!3154) #b00000000000000000000000000000000)))))

(declare-fun bm!32042 () Bool)

(declare-fun c!62873 () Bool)

(assert (=> bm!32042 (= call!32045 (arrayNoDuplicates!0 a!3154 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!62873 (Cons!10605 (select (arr!16437 a!3154) #b00000000000000000000000000000000) Nil!10606) Nil!10606)))))

(declare-fun b!541387 () Bool)

(assert (=> b!541387 (= e!313488 call!32045)))

(declare-fun b!541388 () Bool)

(declare-fun e!313486 () Bool)

(assert (=> b!541388 (= e!313486 e!313488)))

(assert (=> b!541388 (= c!62873 (validKeyInArray!0 (select (arr!16437 a!3154) #b00000000000000000000000000000000)))))

(declare-fun d!81689 () Bool)

(declare-fun res!336271 () Bool)

(declare-fun e!313487 () Bool)

(assert (=> d!81689 (=> res!336271 e!313487)))

(assert (=> d!81689 (= res!336271 (bvsge #b00000000000000000000000000000000 (size!16801 a!3154)))))

(assert (=> d!81689 (= (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10606) e!313487)))

(declare-fun b!541386 () Bool)

(assert (=> b!541386 (= e!313487 e!313486)))

(declare-fun res!336272 () Bool)

(assert (=> b!541386 (=> (not res!336272) (not e!313486))))

(assert (=> b!541386 (= res!336272 (not e!313489))))

(declare-fun res!336270 () Bool)

(assert (=> b!541386 (=> (not res!336270) (not e!313489))))

(assert (=> b!541386 (= res!336270 (validKeyInArray!0 (select (arr!16437 a!3154) #b00000000000000000000000000000000)))))

(assert (= (and d!81689 (not res!336271)) b!541386))

(assert (= (and b!541386 res!336270) b!541385))

(assert (= (and b!541386 res!336272) b!541388))

(assert (= (and b!541388 c!62873) b!541387))

(assert (= (and b!541388 (not c!62873)) b!541384))

(assert (= (or b!541387 b!541384) bm!32042))

(assert (=> b!541385 m!519781))

(assert (=> b!541385 m!519781))

(declare-fun m!519907 () Bool)

(assert (=> b!541385 m!519907))

(assert (=> bm!32042 m!519781))

(declare-fun m!519909 () Bool)

(assert (=> bm!32042 m!519909))

(assert (=> b!541388 m!519781))

(assert (=> b!541388 m!519781))

(assert (=> b!541388 m!519891))

(assert (=> b!541386 m!519781))

(assert (=> b!541386 m!519781))

(assert (=> b!541386 m!519891))

(assert (=> b!541072 d!81689))

(declare-fun d!81695 () Bool)

(assert (=> d!81695 (= (validKeyInArray!0 k!1998) (and (not (= k!1998 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1998 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!541071 d!81695))

(push 1)

(assert (not bm!32042))

(assert (not b!541388))

(assert (not b!541386))

(assert (not b!541385))

(assert (not d!81653))

(assert (not b!541204))

(assert (not d!81645))

(assert (not b!541286))

(assert (not b!541340))

(assert (not bm!32036))

(assert (not b!541343))

(assert (not b!541295))

(assert (not b!541145))

(assert (not d!81639))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

