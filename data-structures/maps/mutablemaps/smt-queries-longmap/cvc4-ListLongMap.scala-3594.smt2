; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49370 () Bool)

(assert start!49370)

(declare-fun res!338384 () Bool)

(declare-fun e!314338 () Bool)

(assert (=> start!49370 (=> (not res!338384) (not e!314338))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49370 (= res!338384 (validMask!0 mask!3216))))

(assert (=> start!49370 e!314338))

(assert (=> start!49370 true))

(declare-datatypes ((array!34334 0))(
  ( (array!34335 (arr!16496 (Array (_ BitVec 32) (_ BitVec 64))) (size!16860 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34334)

(declare-fun array_inv!12270 (array!34334) Bool)

(assert (=> start!49370 (array_inv!12270 a!3154)))

(declare-fun b!543675 () Bool)

(declare-fun res!338382 () Bool)

(assert (=> b!543675 (=> (not res!338382) (not e!314338))))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!543675 (= res!338382 (and (= (size!16860 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16860 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16860 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!543676 () Bool)

(declare-fun res!338383 () Bool)

(declare-fun e!314337 () Bool)

(assert (=> b!543676 (=> (not res!338383) (not e!314337))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!543676 (= res!338383 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16860 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16860 a!3154)) (= (select (arr!16496 a!3154) resIndex!32) (select (arr!16496 a!3154) j!147))))))

(declare-fun b!543677 () Bool)

(declare-fun res!338379 () Bool)

(declare-fun e!314335 () Bool)

(assert (=> b!543677 (=> (not res!338379) (not e!314335))))

(declare-datatypes ((SeekEntryResult!4961 0))(
  ( (MissingZero!4961 (index!22068 (_ BitVec 32))) (Found!4961 (index!22069 (_ BitVec 32))) (Intermediate!4961 (undefined!5773 Bool) (index!22070 (_ BitVec 32)) (x!50995 (_ BitVec 32))) (Undefined!4961) (MissingVacant!4961 (index!22071 (_ BitVec 32))) )
))
(declare-fun lt!248242 () SeekEntryResult!4961)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34334 (_ BitVec 32)) SeekEntryResult!4961)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!543677 (= res!338379 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16496 a!3154) j!147) mask!3216) (select (arr!16496 a!3154) j!147) a!3154 mask!3216) lt!248242))))

(declare-fun b!543678 () Bool)

(declare-fun res!338377 () Bool)

(assert (=> b!543678 (=> (not res!338377) (not e!314338))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34334 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!543678 (= res!338377 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!543679 () Bool)

(assert (=> b!543679 (= e!314335 (bvsgt (bvadd #b00000000000000000000000000000001 x!1030) resX!32))))

(declare-fun lt!248243 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!543679 (= lt!248243 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!543680 () Bool)

(declare-fun res!338380 () Bool)

(assert (=> b!543680 (=> (not res!338380) (not e!314335))))

(assert (=> b!543680 (= res!338380 (and (not (= (select (arr!16496 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16496 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16496 a!3154) index!1177) (select (arr!16496 a!3154) j!147)))))))

(declare-fun b!543681 () Bool)

(declare-fun res!338385 () Bool)

(assert (=> b!543681 (=> (not res!338385) (not e!314338))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!543681 (= res!338385 (validKeyInArray!0 (select (arr!16496 a!3154) j!147)))))

(declare-fun b!543682 () Bool)

(assert (=> b!543682 (= e!314337 e!314335)))

(declare-fun res!338386 () Bool)

(assert (=> b!543682 (=> (not res!338386) (not e!314335))))

(assert (=> b!543682 (= res!338386 (= lt!248242 (Intermediate!4961 false resIndex!32 resX!32)))))

(assert (=> b!543682 (= lt!248242 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16496 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!543683 () Bool)

(assert (=> b!543683 (= e!314338 e!314337)))

(declare-fun res!338376 () Bool)

(assert (=> b!543683 (=> (not res!338376) (not e!314337))))

(declare-fun lt!248241 () SeekEntryResult!4961)

(assert (=> b!543683 (= res!338376 (or (= lt!248241 (MissingZero!4961 i!1153)) (= lt!248241 (MissingVacant!4961 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34334 (_ BitVec 32)) SeekEntryResult!4961)

(assert (=> b!543683 (= lt!248241 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!543684 () Bool)

(declare-fun res!338378 () Bool)

(assert (=> b!543684 (=> (not res!338378) (not e!314337))))

(declare-datatypes ((List!10668 0))(
  ( (Nil!10665) (Cons!10664 (h!11619 (_ BitVec 64)) (t!16904 List!10668)) )
))
(declare-fun arrayNoDuplicates!0 (array!34334 (_ BitVec 32) List!10668) Bool)

(assert (=> b!543684 (= res!338378 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10665))))

(declare-fun b!543685 () Bool)

(declare-fun res!338387 () Bool)

(assert (=> b!543685 (=> (not res!338387) (not e!314337))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34334 (_ BitVec 32)) Bool)

(assert (=> b!543685 (= res!338387 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!543686 () Bool)

(declare-fun res!338381 () Bool)

(assert (=> b!543686 (=> (not res!338381) (not e!314338))))

(assert (=> b!543686 (= res!338381 (validKeyInArray!0 k!1998))))

(assert (= (and start!49370 res!338384) b!543675))

(assert (= (and b!543675 res!338382) b!543681))

(assert (= (and b!543681 res!338385) b!543686))

(assert (= (and b!543686 res!338381) b!543678))

(assert (= (and b!543678 res!338377) b!543683))

(assert (= (and b!543683 res!338376) b!543685))

(assert (= (and b!543685 res!338387) b!543684))

(assert (= (and b!543684 res!338378) b!543676))

(assert (= (and b!543676 res!338383) b!543682))

(assert (= (and b!543682 res!338386) b!543677))

(assert (= (and b!543677 res!338379) b!543680))

(assert (= (and b!543680 res!338380) b!543679))

(declare-fun m!521731 () Bool)

(assert (=> b!543686 m!521731))

(declare-fun m!521733 () Bool)

(assert (=> b!543684 m!521733))

(declare-fun m!521735 () Bool)

(assert (=> b!543685 m!521735))

(declare-fun m!521737 () Bool)

(assert (=> start!49370 m!521737))

(declare-fun m!521739 () Bool)

(assert (=> start!49370 m!521739))

(declare-fun m!521741 () Bool)

(assert (=> b!543677 m!521741))

(assert (=> b!543677 m!521741))

(declare-fun m!521743 () Bool)

(assert (=> b!543677 m!521743))

(assert (=> b!543677 m!521743))

(assert (=> b!543677 m!521741))

(declare-fun m!521745 () Bool)

(assert (=> b!543677 m!521745))

(declare-fun m!521747 () Bool)

(assert (=> b!543680 m!521747))

(assert (=> b!543680 m!521741))

(declare-fun m!521749 () Bool)

(assert (=> b!543683 m!521749))

(assert (=> b!543681 m!521741))

(assert (=> b!543681 m!521741))

(declare-fun m!521751 () Bool)

(assert (=> b!543681 m!521751))

(declare-fun m!521753 () Bool)

(assert (=> b!543679 m!521753))

(declare-fun m!521755 () Bool)

(assert (=> b!543678 m!521755))

(declare-fun m!521757 () Bool)

(assert (=> b!543676 m!521757))

(assert (=> b!543676 m!521741))

(assert (=> b!543682 m!521741))

(assert (=> b!543682 m!521741))

(declare-fun m!521759 () Bool)

(assert (=> b!543682 m!521759))

(push 1)

(assert (not b!543684))

(assert (not b!543682))

(assert (not b!543677))

(assert (not b!543681))

(assert (not b!543679))

(assert (not b!543683))

(assert (not b!543678))

(assert (not b!543686))

(assert (not b!543685))

(assert (not start!49370))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!543767 () Bool)

(declare-fun e!314391 () SeekEntryResult!4961)

(assert (=> b!543767 (= e!314391 Undefined!4961)))

(declare-fun b!543768 () Bool)

(declare-fun e!314393 () SeekEntryResult!4961)

(declare-fun lt!248277 () SeekEntryResult!4961)

(assert (=> b!543768 (= e!314393 (Found!4961 (index!22070 lt!248277)))))

(declare-fun d!81827 () Bool)

(declare-fun lt!248275 () SeekEntryResult!4961)

(assert (=> d!81827 (and (or (is-Undefined!4961 lt!248275) (not (is-Found!4961 lt!248275)) (and (bvsge (index!22069 lt!248275) #b00000000000000000000000000000000) (bvslt (index!22069 lt!248275) (size!16860 a!3154)))) (or (is-Undefined!4961 lt!248275) (is-Found!4961 lt!248275) (not (is-MissingZero!4961 lt!248275)) (and (bvsge (index!22068 lt!248275) #b00000000000000000000000000000000) (bvslt (index!22068 lt!248275) (size!16860 a!3154)))) (or (is-Undefined!4961 lt!248275) (is-Found!4961 lt!248275) (is-MissingZero!4961 lt!248275) (not (is-MissingVacant!4961 lt!248275)) (and (bvsge (index!22071 lt!248275) #b00000000000000000000000000000000) (bvslt (index!22071 lt!248275) (size!16860 a!3154)))) (or (is-Undefined!4961 lt!248275) (ite (is-Found!4961 lt!248275) (= (select (arr!16496 a!3154) (index!22069 lt!248275)) k!1998) (ite (is-MissingZero!4961 lt!248275) (= (select (arr!16496 a!3154) (index!22068 lt!248275)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!4961 lt!248275) (= (select (arr!16496 a!3154) (index!22071 lt!248275)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!81827 (= lt!248275 e!314391)))

(declare-fun c!62992 () Bool)

(assert (=> d!81827 (= c!62992 (and (is-Intermediate!4961 lt!248277) (undefined!5773 lt!248277)))))

(assert (=> d!81827 (= lt!248277 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1998 mask!3216) k!1998 a!3154 mask!3216))))

(assert (=> d!81827 (validMask!0 mask!3216)))

(assert (=> d!81827 (= (seekEntryOrOpen!0 k!1998 a!3154 mask!3216) lt!248275)))

(declare-fun b!543769 () Bool)

(assert (=> b!543769 (= e!314391 e!314393)))

(declare-fun lt!248276 () (_ BitVec 64))

(assert (=> b!543769 (= lt!248276 (select (arr!16496 a!3154) (index!22070 lt!248277)))))

(declare-fun c!62994 () Bool)

(assert (=> b!543769 (= c!62994 (= lt!248276 k!1998))))

(declare-fun b!543770 () Bool)

(declare-fun e!314392 () SeekEntryResult!4961)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34334 (_ BitVec 32)) SeekEntryResult!4961)

(assert (=> b!543770 (= e!314392 (seekKeyOrZeroReturnVacant!0 (x!50995 lt!248277) (index!22070 lt!248277) (index!22070 lt!248277) k!1998 a!3154 mask!3216))))

(declare-fun b!543771 () Bool)

(declare-fun c!62993 () Bool)

(assert (=> b!543771 (= c!62993 (= lt!248276 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!543771 (= e!314393 e!314392)))

(declare-fun b!543772 () Bool)

(assert (=> b!543772 (= e!314392 (MissingZero!4961 (index!22070 lt!248277)))))

(assert (= (and d!81827 c!62992) b!543767))

(assert (= (and d!81827 (not c!62992)) b!543769))

(assert (= (and b!543769 c!62994) b!543768))

(assert (= (and b!543769 (not c!62994)) b!543771))

(assert (= (and b!543771 c!62993) b!543772))

(assert (= (and b!543771 (not c!62993)) b!543770))

(declare-fun m!521787 () Bool)

(assert (=> d!81827 m!521787))

(declare-fun m!521789 () Bool)

(assert (=> d!81827 m!521789))

(assert (=> d!81827 m!521737))

(declare-fun m!521791 () Bool)

(assert (=> d!81827 m!521791))

(declare-fun m!521793 () Bool)

(assert (=> d!81827 m!521793))

(declare-fun m!521795 () Bool)

(assert (=> d!81827 m!521795))

(assert (=> d!81827 m!521787))

(declare-fun m!521797 () Bool)

(assert (=> b!543769 m!521797))

(declare-fun m!521799 () Bool)

(assert (=> b!543770 m!521799))

(assert (=> b!543683 d!81827))

(declare-fun d!81837 () Bool)

(declare-fun res!338429 () Bool)

(declare-fun e!314410 () Bool)

(assert (=> d!81837 (=> res!338429 e!314410)))

(assert (=> d!81837 (= res!338429 (= (select (arr!16496 a!3154) #b00000000000000000000000000000000) k!1998))))

(assert (=> d!81837 (= (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000) e!314410)))

(declare-fun b!543799 () Bool)

(declare-fun e!314411 () Bool)

(assert (=> b!543799 (= e!314410 e!314411)))

(declare-fun res!338430 () Bool)

(assert (=> b!543799 (=> (not res!338430) (not e!314411))))

(assert (=> b!543799 (= res!338430 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16860 a!3154)))))

(declare-fun b!543800 () Bool)

(assert (=> b!543800 (= e!314411 (arrayContainsKey!0 a!3154 k!1998 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!81837 (not res!338429)) b!543799))

(assert (= (and b!543799 res!338430) b!543800))

(declare-fun m!521801 () Bool)

(assert (=> d!81837 m!521801))

(declare-fun m!521803 () Bool)

(assert (=> b!543800 m!521803))

(assert (=> b!543678 d!81837))

(declare-fun d!81839 () Bool)

(assert (=> d!81839 (= (validMask!0 mask!3216) (and (or (= mask!3216 #b00000000000000000000000000000111) (= mask!3216 #b00000000000000000000000000001111) (= mask!3216 #b00000000000000000000000000011111) (= mask!3216 #b00000000000000000000000000111111) (= mask!3216 #b00000000000000000000000001111111) (= mask!3216 #b00000000000000000000000011111111) (= mask!3216 #b00000000000000000000000111111111) (= mask!3216 #b00000000000000000000001111111111) (= mask!3216 #b00000000000000000000011111111111) (= mask!3216 #b00000000000000000000111111111111) (= mask!3216 #b00000000000000000001111111111111) (= mask!3216 #b00000000000000000011111111111111) (= mask!3216 #b00000000000000000111111111111111) (= mask!3216 #b00000000000000001111111111111111) (= mask!3216 #b00000000000000011111111111111111) (= mask!3216 #b00000000000000111111111111111111) (= mask!3216 #b00000000000001111111111111111111) (= mask!3216 #b00000000000011111111111111111111) (= mask!3216 #b00000000000111111111111111111111) (= mask!3216 #b00000000001111111111111111111111) (= mask!3216 #b00000000011111111111111111111111) (= mask!3216 #b00000000111111111111111111111111) (= mask!3216 #b00000001111111111111111111111111) (= mask!3216 #b00000011111111111111111111111111) (= mask!3216 #b00000111111111111111111111111111) (= mask!3216 #b00001111111111111111111111111111) (= mask!3216 #b00011111111111111111111111111111) (= mask!3216 #b00111111111111111111111111111111)) (bvsle mask!3216 #b00111111111111111111111111111111)))))

(assert (=> start!49370 d!81839))

(declare-fun d!81849 () Bool)

(assert (=> d!81849 (= (array_inv!12270 a!3154) (bvsge (size!16860 a!3154) #b00000000000000000000000000000000))))

(assert (=> start!49370 d!81849))

(declare-fun b!543854 () Bool)

(declare-fun e!314452 () Bool)

(declare-fun call!32078 () Bool)

(assert (=> b!543854 (= e!314452 call!32078)))

(declare-fun b!543855 () Bool)

(assert (=> b!543855 (= e!314452 call!32078)))

(declare-fun b!543856 () Bool)

(declare-fun e!314451 () Bool)

(declare-fun e!314450 () Bool)

(assert (=> b!543856 (= e!314451 e!314450)))

(declare-fun res!338459 () Bool)

(assert (=> b!543856 (=> (not res!338459) (not e!314450))))

(declare-fun e!314449 () Bool)

(assert (=> b!543856 (= res!338459 (not e!314449))))

(declare-fun res!338457 () Bool)

(assert (=> b!543856 (=> (not res!338457) (not e!314449))))

(assert (=> b!543856 (= res!338457 (validKeyInArray!0 (select (arr!16496 a!3154) #b00000000000000000000000000000000)))))

(declare-fun d!81851 () Bool)

(declare-fun res!338458 () Bool)

(assert (=> d!81851 (=> res!338458 e!314451)))

(assert (=> d!81851 (= res!338458 (bvsge #b00000000000000000000000000000000 (size!16860 a!3154)))))

(assert (=> d!81851 (= (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10665) e!314451)))

(declare-fun b!543857 () Bool)

(declare-fun contains!2812 (List!10668 (_ BitVec 64)) Bool)

(assert (=> b!543857 (= e!314449 (contains!2812 Nil!10665 (select (arr!16496 a!3154) #b00000000000000000000000000000000)))))

(declare-fun bm!32075 () Bool)

(declare-fun c!63017 () Bool)

(assert (=> bm!32075 (= call!32078 (arrayNoDuplicates!0 a!3154 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!63017 (Cons!10664 (select (arr!16496 a!3154) #b00000000000000000000000000000000) Nil!10665) Nil!10665)))))

(declare-fun b!543858 () Bool)

(assert (=> b!543858 (= e!314450 e!314452)))

(assert (=> b!543858 (= c!63017 (validKeyInArray!0 (select (arr!16496 a!3154) #b00000000000000000000000000000000)))))

(assert (= (and d!81851 (not res!338458)) b!543856))

(assert (= (and b!543856 res!338457) b!543857))

(assert (= (and b!543856 res!338459) b!543858))

(assert (= (and b!543858 c!63017) b!543854))

(assert (= (and b!543858 (not c!63017)) b!543855))

(assert (= (or b!543854 b!543855) bm!32075))

(assert (=> b!543856 m!521801))

(assert (=> b!543856 m!521801))

(declare-fun m!521841 () Bool)

(assert (=> b!543856 m!521841))

(assert (=> b!543857 m!521801))

(assert (=> b!543857 m!521801))

(declare-fun m!521843 () Bool)

(assert (=> b!543857 m!521843))

(assert (=> bm!32075 m!521801))

(declare-fun m!521845 () Bool)

(assert (=> bm!32075 m!521845))

(assert (=> b!543858 m!521801))

(assert (=> b!543858 m!521801))

(assert (=> b!543858 m!521841))

(assert (=> b!543684 d!81851))

(declare-fun d!81855 () Bool)

(declare-fun lt!248302 () (_ BitVec 32))

(assert (=> d!81855 (and (bvsge lt!248302 #b00000000000000000000000000000000) (bvslt lt!248302 (bvadd mask!3216 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!81855 (= lt!248302 (choose!52 index!1177 x!1030 mask!3216))))

(assert (=> d!81855 (validMask!0 mask!3216)))

(assert (=> d!81855 (= (nextIndex!0 index!1177 x!1030 mask!3216) lt!248302)))

(declare-fun bs!16972 () Bool)

(assert (= bs!16972 d!81855))

(declare-fun m!521849 () Bool)

(assert (=> bs!16972 m!521849))

(assert (=> bs!16972 m!521737))

(assert (=> b!543679 d!81855))

(declare-fun d!81859 () Bool)

(declare-fun res!338467 () Bool)

(declare-fun e!314462 () Bool)

(assert (=> d!81859 (=> res!338467 e!314462)))

(assert (=> d!81859 (= res!338467 (bvsge #b00000000000000000000000000000000 (size!16860 a!3154)))))

(assert (=> d!81859 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216) e!314462)))

(declare-fun b!543869 () Bool)

(declare-fun e!314463 () Bool)

(declare-fun call!32081 () Bool)

(assert (=> b!543869 (= e!314463 call!32081)))

(declare-fun b!543870 () Bool)

(declare-fun e!314461 () Bool)

(assert (=> b!543870 (= e!314462 e!314461)))

(declare-fun c!63020 () Bool)

(assert (=> b!543870 (= c!63020 (validKeyInArray!0 (select (arr!16496 a!3154) #b00000000000000000000000000000000)))))

(declare-fun b!543871 () Bool)

(assert (=> b!543871 (= e!314461 e!314463)))

(declare-fun lt!248309 () (_ BitVec 64))

(assert (=> b!543871 (= lt!248309 (select (arr!16496 a!3154) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!16884 0))(
  ( (Unit!16885) )
))
(declare-fun lt!248311 () Unit!16884)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!34334 (_ BitVec 64) (_ BitVec 32)) Unit!16884)

(assert (=> b!543871 (= lt!248311 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3154 lt!248309 #b00000000000000000000000000000000))))

(assert (=> b!543871 (arrayContainsKey!0 a!3154 lt!248309 #b00000000000000000000000000000000)))

(declare-fun lt!248310 () Unit!16884)

(assert (=> b!543871 (= lt!248310 lt!248311)))

(declare-fun res!338466 () Bool)

(assert (=> b!543871 (= res!338466 (= (seekEntryOrOpen!0 (select (arr!16496 a!3154) #b00000000000000000000000000000000) a!3154 mask!3216) (Found!4961 #b00000000000000000000000000000000)))))

(assert (=> b!543871 (=> (not res!338466) (not e!314463))))

(declare-fun bm!32078 () Bool)

(assert (=> bm!32078 (= call!32081 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3154 mask!3216))))

(declare-fun b!543872 () Bool)

(assert (=> b!543872 (= e!314461 call!32081)))

(assert (= (and d!81859 (not res!338467)) b!543870))

(assert (= (and b!543870 c!63020) b!543871))

(assert (= (and b!543870 (not c!63020)) b!543872))

(assert (= (and b!543871 res!338466) b!543869))

(assert (= (or b!543869 b!543872) bm!32078))

(assert (=> b!543870 m!521801))

(assert (=> b!543870 m!521801))

(assert (=> b!543870 m!521841))

(assert (=> b!543871 m!521801))

(declare-fun m!521851 () Bool)

(assert (=> b!543871 m!521851))

(declare-fun m!521853 () Bool)

(assert (=> b!543871 m!521853))

(assert (=> b!543871 m!521801))

(declare-fun m!521855 () Bool)

(assert (=> b!543871 m!521855))

(declare-fun m!521857 () Bool)

(assert (=> bm!32078 m!521857))

(assert (=> b!543685 d!81859))

(declare-fun d!81861 () Bool)

(assert (=> d!81861 (= (validKeyInArray!0 k!1998) (and (not (= k!1998 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1998 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!543686 d!81861))

(declare-fun d!81863 () Bool)

(assert (=> d!81863 (= (validKeyInArray!0 (select (arr!16496 a!3154) j!147)) (and (not (= (select (arr!16496 a!3154) j!147) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16496 a!3154) j!147) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!543681 d!81863))

(declare-fun b!543931 () Bool)

(declare-fun e!314497 () Bool)

(declare-fun lt!248337 () SeekEntryResult!4961)

(assert (=> b!543931 (= e!314497 (bvsge (x!50995 lt!248337) #b01111111111111111111111111111110))))

(declare-fun e!314501 () SeekEntryResult!4961)

(declare-fun b!543932 () Bool)

(assert (=> b!543932 (= e!314501 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1030 #b00000000000000000000000000000001) (nextIndex!0 index!1177 x!1030 mask!3216) (select (arr!16496 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!543933 () Bool)

(declare-fun e!314500 () SeekEntryResult!4961)

(assert (=> b!543933 (= e!314500 (Intermediate!4961 true index!1177 x!1030))))

(declare-fun b!543934 () Bool)

(assert (=> b!543934 (and (bvsge (index!22070 lt!248337) #b00000000000000000000000000000000) (bvslt (index!22070 lt!248337) (size!16860 a!3154)))))

(declare-fun res!338485 () Bool)

(assert (=> b!543934 (= res!338485 (= (select (arr!16496 a!3154) (index!22070 lt!248337)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!314498 () Bool)

(assert (=> b!543934 (=> res!338485 e!314498)))

(declare-fun b!543935 () Bool)

(assert (=> b!543935 (= e!314501 (Intermediate!4961 false index!1177 x!1030))))

(declare-fun b!543936 () Bool)

(assert (=> b!543936 (= e!314500 e!314501)))

(declare-fun c!63043 () Bool)

(declare-fun lt!248336 () (_ BitVec 64))

(assert (=> b!543936 (= c!63043 (or (= lt!248336 (select (arr!16496 a!3154) j!147)) (= (bvadd lt!248336 lt!248336) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!543937 () Bool)

(declare-fun e!314499 () Bool)

(assert (=> b!543937 (= e!314497 e!314499)))

(declare-fun res!338483 () Bool)

(assert (=> b!543937 (= res!338483 (and (is-Intermediate!4961 lt!248337) (not (undefined!5773 lt!248337)) (bvslt (x!50995 lt!248337) #b01111111111111111111111111111110) (bvsge (x!50995 lt!248337) #b00000000000000000000000000000000) (bvsge (x!50995 lt!248337) x!1030)))))

(assert (=> b!543937 (=> (not res!338483) (not e!314499))))

(declare-fun b!543938 () Bool)

(assert (=> b!543938 (and (bvsge (index!22070 lt!248337) #b00000000000000000000000000000000) (bvslt (index!22070 lt!248337) (size!16860 a!3154)))))

(declare-fun res!338484 () Bool)

(assert (=> b!543938 (= res!338484 (= (select (arr!16496 a!3154) (index!22070 lt!248337)) (select (arr!16496 a!3154) j!147)))))

(assert (=> b!543938 (=> res!338484 e!314498)))

(assert (=> b!543938 (= e!314499 e!314498)))

(declare-fun b!543930 () Bool)

(assert (=> b!543930 (and (bvsge (index!22070 lt!248337) #b00000000000000000000000000000000) (bvslt (index!22070 lt!248337) (size!16860 a!3154)))))

(assert (=> b!543930 (= e!314498 (= (select (arr!16496 a!3154) (index!22070 lt!248337)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!81865 () Bool)

(assert (=> d!81865 e!314497))

(declare-fun c!63042 () Bool)

(assert (=> d!81865 (= c!63042 (and (is-Intermediate!4961 lt!248337) (undefined!5773 lt!248337)))))

(assert (=> d!81865 (= lt!248337 e!314500)))

(declare-fun c!63044 () Bool)

(assert (=> d!81865 (= c!63044 (bvsge x!1030 #b01111111111111111111111111111110))))

(assert (=> d!81865 (= lt!248336 (select (arr!16496 a!3154) index!1177))))

(assert (=> d!81865 (validMask!0 mask!3216)))

(assert (=> d!81865 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16496 a!3154) j!147) a!3154 mask!3216) lt!248337)))

(assert (= (and d!81865 c!63044) b!543933))

(assert (= (and d!81865 (not c!63044)) b!543936))

(assert (= (and b!543936 c!63043) b!543935))

(assert (= (and b!543936 (not c!63043)) b!543932))

(assert (= (and d!81865 c!63042) b!543931))

(assert (= (and d!81865 (not c!63042)) b!543937))

(assert (= (and b!543937 res!338483) b!543938))

(assert (= (and b!543938 (not res!338484)) b!543934))

(assert (= (and b!543934 (not res!338485)) b!543930))

(declare-fun m!521885 () Bool)

(assert (=> b!543934 m!521885))

(assert (=> b!543938 m!521885))

(assert (=> d!81865 m!521747))

(assert (=> d!81865 m!521737))

(assert (=> b!543930 m!521885))

(assert (=> b!543932 m!521753))

(assert (=> b!543932 m!521753))

(assert (=> b!543932 m!521741))

(declare-fun m!521889 () Bool)

(assert (=> b!543932 m!521889))

(assert (=> b!543682 d!81865))

(declare-fun b!543940 () Bool)

(declare-fun e!314502 () Bool)

(declare-fun lt!248342 () SeekEntryResult!4961)

(assert (=> b!543940 (= e!314502 (bvsge (x!50995 lt!248342) #b01111111111111111111111111111110))))

(declare-fun b!543941 () Bool)

(declare-fun e!314506 () SeekEntryResult!4961)

(assert (=> b!543941 (= e!314506 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!16496 a!3154) j!147) mask!3216) #b00000000000000000000000000000000 mask!3216) (select (arr!16496 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!543942 () Bool)

(declare-fun e!314505 () SeekEntryResult!4961)

(assert (=> b!543942 (= e!314505 (Intermediate!4961 true (toIndex!0 (select (arr!16496 a!3154) j!147) mask!3216) #b00000000000000000000000000000000))))

(declare-fun b!543943 () Bool)

(assert (=> b!543943 (and (bvsge (index!22070 lt!248342) #b00000000000000000000000000000000) (bvslt (index!22070 lt!248342) (size!16860 a!3154)))))

(declare-fun res!338488 () Bool)

(assert (=> b!543943 (= res!338488 (= (select (arr!16496 a!3154) (index!22070 lt!248342)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!314503 () Bool)

(assert (=> b!543943 (=> res!338488 e!314503)))

(declare-fun b!543944 () Bool)

(assert (=> b!543944 (= e!314506 (Intermediate!4961 false (toIndex!0 (select (arr!16496 a!3154) j!147) mask!3216) #b00000000000000000000000000000000))))

(declare-fun b!543945 () Bool)

(assert (=> b!543945 (= e!314505 e!314506)))

(declare-fun lt!248341 () (_ BitVec 64))

(declare-fun c!63046 () Bool)

(assert (=> b!543945 (= c!63046 (or (= lt!248341 (select (arr!16496 a!3154) j!147)) (= (bvadd lt!248341 lt!248341) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!543946 () Bool)

(declare-fun e!314504 () Bool)

(assert (=> b!543946 (= e!314502 e!314504)))

(declare-fun res!338486 () Bool)

(assert (=> b!543946 (= res!338486 (and (is-Intermediate!4961 lt!248342) (not (undefined!5773 lt!248342)) (bvslt (x!50995 lt!248342) #b01111111111111111111111111111110) (bvsge (x!50995 lt!248342) #b00000000000000000000000000000000) (bvsge (x!50995 lt!248342) #b00000000000000000000000000000000)))))

(assert (=> b!543946 (=> (not res!338486) (not e!314504))))

(declare-fun b!543947 () Bool)

(assert (=> b!543947 (and (bvsge (index!22070 lt!248342) #b00000000000000000000000000000000) (bvslt (index!22070 lt!248342) (size!16860 a!3154)))))

(declare-fun res!338487 () Bool)

(assert (=> b!543947 (= res!338487 (= (select (arr!16496 a!3154) (index!22070 lt!248342)) (select (arr!16496 a!3154) j!147)))))

(assert (=> b!543947 (=> res!338487 e!314503)))

(assert (=> b!543947 (= e!314504 e!314503)))

(declare-fun b!543939 () Bool)

(assert (=> b!543939 (and (bvsge (index!22070 lt!248342) #b00000000000000000000000000000000) (bvslt (index!22070 lt!248342) (size!16860 a!3154)))))

(assert (=> b!543939 (= e!314503 (= (select (arr!16496 a!3154) (index!22070 lt!248342)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!81875 () Bool)

(assert (=> d!81875 e!314502))

(declare-fun c!63045 () Bool)

(assert (=> d!81875 (= c!63045 (and (is-Intermediate!4961 lt!248342) (undefined!5773 lt!248342)))))

(assert (=> d!81875 (= lt!248342 e!314505)))

(declare-fun c!63047 () Bool)

(assert (=> d!81875 (= c!63047 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!81875 (= lt!248341 (select (arr!16496 a!3154) (toIndex!0 (select (arr!16496 a!3154) j!147) mask!3216)))))

(assert (=> d!81875 (validMask!0 mask!3216)))

(assert (=> d!81875 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16496 a!3154) j!147) mask!3216) (select (arr!16496 a!3154) j!147) a!3154 mask!3216) lt!248342)))

(assert (= (and d!81875 c!63047) b!543942))

(assert (= (and d!81875 (not c!63047)) b!543945))

(assert (= (and b!543945 c!63046) b!543944))

(assert (= (and b!543945 (not c!63046)) b!543941))

(assert (= (and d!81875 c!63045) b!543940))

(assert (= (and d!81875 (not c!63045)) b!543946))

(assert (= (and b!543946 res!338486) b!543947))

(assert (= (and b!543947 (not res!338487)) b!543943))

(assert (= (and b!543943 (not res!338488)) b!543939))

(declare-fun m!521891 () Bool)

(assert (=> b!543943 m!521891))

(assert (=> b!543947 m!521891))

(assert (=> d!81875 m!521743))

(declare-fun m!521893 () Bool)

(assert (=> d!81875 m!521893))

(assert (=> d!81875 m!521737))

(assert (=> b!543939 m!521891))

(assert (=> b!543941 m!521743))

(declare-fun m!521895 () Bool)

(assert (=> b!543941 m!521895))

(assert (=> b!543941 m!521895))

(assert (=> b!543941 m!521741))

(declare-fun m!521897 () Bool)

(assert (=> b!543941 m!521897))

(assert (=> b!543677 d!81875))

(declare-fun d!81877 () Bool)

(declare-fun lt!248348 () (_ BitVec 32))

(declare-fun lt!248347 () (_ BitVec 32))

(assert (=> d!81877 (= lt!248348 (bvmul (bvxor lt!248347 (bvlshr lt!248347 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!81877 (= lt!248347 ((_ extract 31 0) (bvand (bvxor (select (arr!16496 a!3154) j!147) (bvlshr (select (arr!16496 a!3154) j!147) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!81877 (and (bvsge mask!3216 #b00000000000000000000000000000000) (let ((res!338489 (let ((h!11622 ((_ extract 31 0) (bvand (bvxor (select (arr!16496 a!3154) j!147) (bvlshr (select (arr!16496 a!3154) j!147) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!51004 (bvmul (bvxor h!11622 (bvlshr h!11622 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!51004 (bvlshr x!51004 #b00000000000000000000000000001101)) mask!3216))))) (and (bvslt res!338489 (bvadd mask!3216 #b00000000000000000000000000000001)) (bvsge res!338489 #b00000000000000000000000000000000))))))

(assert (=> d!81877 (= (toIndex!0 (select (arr!16496 a!3154) j!147) mask!3216) (bvand (bvxor lt!248348 (bvlshr lt!248348 #b00000000000000000000000000001101)) mask!3216))))

(assert (=> b!543677 d!81877))

(push 1)

(assert (not b!543770))

(assert (not b!543858))

(assert (not d!81865))

(assert (not bm!32075))

(assert (not b!543871))

(assert (not b!543932))

(assert (not bm!32078))

(assert (not b!543800))

(assert (not d!81855))

(assert (not d!81827))

(assert (not d!81875))

(assert (not b!543857))

(assert (not b!543941))

(assert (not b!543856))

(assert (not b!543870))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!81939 () Bool)

(declare-fun res!338546 () (_ BitVec 32))

(assert (=> d!81939 (and (bvsge res!338546 #b00000000000000000000000000000000) (bvslt res!338546 (bvadd mask!3216 #b00000000000000000000000000000001)))))

(assert (=> d!81939 true))

(assert (=> d!81939 (= (choose!52 index!1177 x!1030 mask!3216) res!338546)))

(assert (=> d!81855 d!81939))

(assert (=> d!81855 d!81839))

(declare-fun b!544089 () Bool)

(declare-fun e!314595 () Bool)

(declare-fun lt!248404 () SeekEntryResult!4961)

(assert (=> b!544089 (= e!314595 (bvsge (x!50995 lt!248404) #b01111111111111111111111111111110))))

(declare-fun b!544090 () Bool)

(declare-fun e!314599 () SeekEntryResult!4961)

(assert (=> b!544090 (= e!314599 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 (toIndex!0 (select (arr!16496 a!3154) j!147) mask!3216) #b00000000000000000000000000000000 mask!3216) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) mask!3216) (select (arr!16496 a!3154) j!147) a!3154 mask!3216))))

(declare-fun e!314598 () SeekEntryResult!4961)

(declare-fun b!544091 () Bool)

(assert (=> b!544091 (= e!314598 (Intermediate!4961 true (nextIndex!0 (toIndex!0 (select (arr!16496 a!3154) j!147) mask!3216) #b00000000000000000000000000000000 mask!3216) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun b!544092 () Bool)

(assert (=> b!544092 (and (bvsge (index!22070 lt!248404) #b00000000000000000000000000000000) (bvslt (index!22070 lt!248404) (size!16860 a!3154)))))

(declare-fun res!338549 () Bool)

(assert (=> b!544092 (= res!338549 (= (select (arr!16496 a!3154) (index!22070 lt!248404)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!314596 () Bool)

(assert (=> b!544092 (=> res!338549 e!314596)))

(declare-fun b!544093 () Bool)

(assert (=> b!544093 (= e!314599 (Intermediate!4961 false (nextIndex!0 (toIndex!0 (select (arr!16496 a!3154) j!147) mask!3216) #b00000000000000000000000000000000 mask!3216) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun b!544094 () Bool)

(assert (=> b!544094 (= e!314598 e!314599)))

(declare-fun c!63095 () Bool)

(declare-fun lt!248403 () (_ BitVec 64))

(assert (=> b!544094 (= c!63095 (or (= lt!248403 (select (arr!16496 a!3154) j!147)) (= (bvadd lt!248403 lt!248403) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!544095 () Bool)

(declare-fun e!314597 () Bool)

(assert (=> b!544095 (= e!314595 e!314597)))

(declare-fun res!338547 () Bool)

(assert (=> b!544095 (= res!338547 (and (is-Intermediate!4961 lt!248404) (not (undefined!5773 lt!248404)) (bvslt (x!50995 lt!248404) #b01111111111111111111111111111110) (bvsge (x!50995 lt!248404) #b00000000000000000000000000000000) (bvsge (x!50995 lt!248404) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!544095 (=> (not res!338547) (not e!314597))))

(declare-fun b!544096 () Bool)

(assert (=> b!544096 (and (bvsge (index!22070 lt!248404) #b00000000000000000000000000000000) (bvslt (index!22070 lt!248404) (size!16860 a!3154)))))

(declare-fun res!338548 () Bool)

(assert (=> b!544096 (= res!338548 (= (select (arr!16496 a!3154) (index!22070 lt!248404)) (select (arr!16496 a!3154) j!147)))))

(assert (=> b!544096 (=> res!338548 e!314596)))

(assert (=> b!544096 (= e!314597 e!314596)))

(declare-fun b!544088 () Bool)

(assert (=> b!544088 (and (bvsge (index!22070 lt!248404) #b00000000000000000000000000000000) (bvslt (index!22070 lt!248404) (size!16860 a!3154)))))

(assert (=> b!544088 (= e!314596 (= (select (arr!16496 a!3154) (index!22070 lt!248404)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!81941 () Bool)

(assert (=> d!81941 e!314595))

(declare-fun c!63094 () Bool)

(assert (=> d!81941 (= c!63094 (and (is-Intermediate!4961 lt!248404) (undefined!5773 lt!248404)))))

(assert (=> d!81941 (= lt!248404 e!314598)))

(declare-fun c!63096 () Bool)

(assert (=> d!81941 (= c!63096 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b01111111111111111111111111111110))))

(assert (=> d!81941 (= lt!248403 (select (arr!16496 a!3154) (nextIndex!0 (toIndex!0 (select (arr!16496 a!3154) j!147) mask!3216) #b00000000000000000000000000000000 mask!3216)))))

(assert (=> d!81941 (validMask!0 mask!3216)))

(assert (=> d!81941 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!16496 a!3154) j!147) mask!3216) #b00000000000000000000000000000000 mask!3216) (select (arr!16496 a!3154) j!147) a!3154 mask!3216) lt!248404)))

(assert (= (and d!81941 c!63096) b!544091))

(assert (= (and d!81941 (not c!63096)) b!544094))

(assert (= (and b!544094 c!63095) b!544093))

(assert (= (and b!544094 (not c!63095)) b!544090))

(assert (= (and d!81941 c!63094) b!544089))

(assert (= (and d!81941 (not c!63094)) b!544095))

(assert (= (and b!544095 res!338547) b!544096))

(assert (= (and b!544096 (not res!338548)) b!544092))

(assert (= (and b!544092 (not res!338549)) b!544088))

(declare-fun m!522051 () Bool)

(assert (=> b!544092 m!522051))

(assert (=> b!544096 m!522051))

(assert (=> d!81941 m!521895))

(declare-fun m!522053 () Bool)

(assert (=> d!81941 m!522053))

(assert (=> d!81941 m!521737))

(assert (=> b!544088 m!522051))

(assert (=> b!544090 m!521895))

(declare-fun m!522055 () Bool)

(assert (=> b!544090 m!522055))

(assert (=> b!544090 m!522055))

(assert (=> b!544090 m!521741))

(declare-fun m!522057 () Bool)

(assert (=> b!544090 m!522057))

(assert (=> b!543941 d!81941))

(declare-fun d!81943 () Bool)

(declare-fun lt!248405 () (_ BitVec 32))

(assert (=> d!81943 (and (bvsge lt!248405 #b00000000000000000000000000000000) (bvslt lt!248405 (bvadd mask!3216 #b00000000000000000000000000000001)))))

(assert (=> d!81943 (= lt!248405 (choose!52 (toIndex!0 (select (arr!16496 a!3154) j!147) mask!3216) #b00000000000000000000000000000000 mask!3216))))

(assert (=> d!81943 (validMask!0 mask!3216)))

(assert (=> d!81943 (= (nextIndex!0 (toIndex!0 (select (arr!16496 a!3154) j!147) mask!3216) #b00000000000000000000000000000000 mask!3216) lt!248405)))

(declare-fun bs!16978 () Bool)

(assert (= bs!16978 d!81943))

(assert (=> bs!16978 m!521743))

(declare-fun m!522059 () Bool)

(assert (=> bs!16978 m!522059))

(assert (=> bs!16978 m!521737))

(assert (=> b!543941 d!81943))

(declare-fun d!81945 () Bool)

(declare-fun res!338550 () Bool)

(declare-fun e!314600 () Bool)

(assert (=> d!81945 (=> res!338550 e!314600)))

(assert (=> d!81945 (= res!338550 (= (select (arr!16496 a!3154) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) k!1998))))

(assert (=> d!81945 (= (arrayContainsKey!0 a!3154 k!1998 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) e!314600)))

(declare-fun b!544097 () Bool)

(declare-fun e!314601 () Bool)

(assert (=> b!544097 (= e!314600 e!314601)))

(declare-fun res!338551 () Bool)

(assert (=> b!544097 (=> (not res!338551) (not e!314601))))

(assert (=> b!544097 (= res!338551 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!16860 a!3154)))))

(declare-fun b!544098 () Bool)

(assert (=> b!544098 (= e!314601 (arrayContainsKey!0 a!3154 k!1998 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!81945 (not res!338550)) b!544097))

(assert (= (and b!544097 res!338551) b!544098))

(declare-fun m!522061 () Bool)

(assert (=> d!81945 m!522061))

(declare-fun m!522063 () Bool)

(assert (=> b!544098 m!522063))

(assert (=> b!543800 d!81945))

(assert (=> d!81865 d!81839))

(declare-fun d!81947 () Bool)

(assert (=> d!81947 (= (validKeyInArray!0 (select (arr!16496 a!3154) #b00000000000000000000000000000000)) (and (not (= (select (arr!16496 a!3154) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16496 a!3154) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!543856 d!81947))

(assert (=> b!543870 d!81947))

(declare-fun d!81949 () Bool)

(declare-fun lt!248408 () Bool)

(declare-fun content!227 (List!10668) (Set (_ BitVec 64)))

(assert (=> d!81949 (= lt!248408 (member (select (arr!16496 a!3154) #b00000000000000000000000000000000) (content!227 Nil!10665)))))

(declare-fun e!314606 () Bool)

(assert (=> d!81949 (= lt!248408 e!314606)))

(declare-fun res!338557 () Bool)

(assert (=> d!81949 (=> (not res!338557) (not e!314606))))

(assert (=> d!81949 (= res!338557 (is-Cons!10664 Nil!10665))))

(assert (=> d!81949 (= (contains!2812 Nil!10665 (select (arr!16496 a!3154) #b00000000000000000000000000000000)) lt!248408)))

(declare-fun b!544103 () Bool)

(declare-fun e!314607 () Bool)

(assert (=> b!544103 (= e!314606 e!314607)))

(declare-fun res!338556 () Bool)

(assert (=> b!544103 (=> res!338556 e!314607)))

(assert (=> b!544103 (= res!338556 (= (h!11619 Nil!10665) (select (arr!16496 a!3154) #b00000000000000000000000000000000)))))

(declare-fun b!544104 () Bool)

(assert (=> b!544104 (= e!314607 (contains!2812 (t!16904 Nil!10665) (select (arr!16496 a!3154) #b00000000000000000000000000000000)))))

(assert (= (and d!81949 res!338557) b!544103))

(assert (= (and b!544103 (not res!338556)) b!544104))

(declare-fun m!522065 () Bool)

(assert (=> d!81949 m!522065))

(assert (=> d!81949 m!521801))

(declare-fun m!522067 () Bool)

(assert (=> d!81949 m!522067))

(assert (=> b!544104 m!521801))

(declare-fun m!522069 () Bool)

(assert (=> b!544104 m!522069))

(assert (=> b!543857 d!81949))

(declare-fun d!81951 () Bool)

(assert (=> d!81951 (arrayContainsKey!0 a!3154 lt!248309 #b00000000000000000000000000000000)))

(declare-fun lt!248411 () Unit!16884)

(declare-fun choose!13 (array!34334 (_ BitVec 64) (_ BitVec 32)) Unit!16884)

(assert (=> d!81951 (= lt!248411 (choose!13 a!3154 lt!248309 #b00000000000000000000000000000000))))

(assert (=> d!81951 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!81951 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3154 lt!248309 #b00000000000000000000000000000000) lt!248411)))

(declare-fun bs!16979 () Bool)

(assert (= bs!16979 d!81951))

(assert (=> bs!16979 m!521853))

(declare-fun m!522071 () Bool)

(assert (=> bs!16979 m!522071))

(assert (=> b!543871 d!81951))

(declare-fun d!81953 () Bool)

(declare-fun res!338558 () Bool)

(declare-fun e!314608 () Bool)

(assert (=> d!81953 (=> res!338558 e!314608)))

(assert (=> d!81953 (= res!338558 (= (select (arr!16496 a!3154) #b00000000000000000000000000000000) lt!248309))))

(assert (=> d!81953 (= (arrayContainsKey!0 a!3154 lt!248309 #b00000000000000000000000000000000) e!314608)))

(declare-fun b!544105 () Bool)

(declare-fun e!314609 () Bool)

(assert (=> b!544105 (= e!314608 e!314609)))

(declare-fun res!338559 () Bool)

(assert (=> b!544105 (=> (not res!338559) (not e!314609))))

(assert (=> b!544105 (= res!338559 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16860 a!3154)))))

(declare-fun b!544106 () Bool)

(assert (=> b!544106 (= e!314609 (arrayContainsKey!0 a!3154 lt!248309 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!81953 (not res!338558)) b!544105))

(assert (= (and b!544105 res!338559) b!544106))

(assert (=> d!81953 m!521801))

(declare-fun m!522073 () Bool)

(assert (=> b!544106 m!522073))

(assert (=> b!543871 d!81953))

(declare-fun b!544107 () Bool)

(declare-fun e!314610 () SeekEntryResult!4961)

(assert (=> b!544107 (= e!314610 Undefined!4961)))

(declare-fun b!544108 () Bool)

(declare-fun e!314612 () SeekEntryResult!4961)

(declare-fun lt!248414 () SeekEntryResult!4961)

(assert (=> b!544108 (= e!314612 (Found!4961 (index!22070 lt!248414)))))

(declare-fun d!81955 () Bool)

(declare-fun lt!248412 () SeekEntryResult!4961)

(assert (=> d!81955 (and (or (is-Undefined!4961 lt!248412) (not (is-Found!4961 lt!248412)) (and (bvsge (index!22069 lt!248412) #b00000000000000000000000000000000) (bvslt (index!22069 lt!248412) (size!16860 a!3154)))) (or (is-Undefined!4961 lt!248412) (is-Found!4961 lt!248412) (not (is-MissingZero!4961 lt!248412)) (and (bvsge (index!22068 lt!248412) #b00000000000000000000000000000000) (bvslt (index!22068 lt!248412) (size!16860 a!3154)))) (or (is-Undefined!4961 lt!248412) (is-Found!4961 lt!248412) (is-MissingZero!4961 lt!248412) (not (is-MissingVacant!4961 lt!248412)) (and (bvsge (index!22071 lt!248412) #b00000000000000000000000000000000) (bvslt (index!22071 lt!248412) (size!16860 a!3154)))) (or (is-Undefined!4961 lt!248412) (ite (is-Found!4961 lt!248412) (= (select (arr!16496 a!3154) (index!22069 lt!248412)) (select (arr!16496 a!3154) #b00000000000000000000000000000000)) (ite (is-MissingZero!4961 lt!248412) (= (select (arr!16496 a!3154) (index!22068 lt!248412)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!4961 lt!248412) (= (select (arr!16496 a!3154) (index!22071 lt!248412)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!81955 (= lt!248412 e!314610)))

(declare-fun c!63097 () Bool)

(assert (=> d!81955 (= c!63097 (and (is-Intermediate!4961 lt!248414) (undefined!5773 lt!248414)))))

(assert (=> d!81955 (= lt!248414 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16496 a!3154) #b00000000000000000000000000000000) mask!3216) (select (arr!16496 a!3154) #b00000000000000000000000000000000) a!3154 mask!3216))))

(assert (=> d!81955 (validMask!0 mask!3216)))

(assert (=> d!81955 (= (seekEntryOrOpen!0 (select (arr!16496 a!3154) #b00000000000000000000000000000000) a!3154 mask!3216) lt!248412)))

(declare-fun b!544109 () Bool)

(assert (=> b!544109 (= e!314610 e!314612)))

(declare-fun lt!248413 () (_ BitVec 64))

(assert (=> b!544109 (= lt!248413 (select (arr!16496 a!3154) (index!22070 lt!248414)))))

(declare-fun c!63099 () Bool)

(assert (=> b!544109 (= c!63099 (= lt!248413 (select (arr!16496 a!3154) #b00000000000000000000000000000000)))))

(declare-fun e!314611 () SeekEntryResult!4961)

(declare-fun b!544110 () Bool)

(assert (=> b!544110 (= e!314611 (seekKeyOrZeroReturnVacant!0 (x!50995 lt!248414) (index!22070 lt!248414) (index!22070 lt!248414) (select (arr!16496 a!3154) #b00000000000000000000000000000000) a!3154 mask!3216))))

(declare-fun b!544111 () Bool)

(declare-fun c!63098 () Bool)

(assert (=> b!544111 (= c!63098 (= lt!248413 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!544111 (= e!314612 e!314611)))

(declare-fun b!544112 () Bool)

(assert (=> b!544112 (= e!314611 (MissingZero!4961 (index!22070 lt!248414)))))

(assert (= (and d!81955 c!63097) b!544107))

(assert (= (and d!81955 (not c!63097)) b!544109))

(assert (= (and b!544109 c!63099) b!544108))

(assert (= (and b!544109 (not c!63099)) b!544111))

(assert (= (and b!544111 c!63098) b!544112))

(assert (= (and b!544111 (not c!63098)) b!544110))

(declare-fun m!522075 () Bool)

(assert (=> d!81955 m!522075))

(assert (=> d!81955 m!521801))

(declare-fun m!522077 () Bool)

(assert (=> d!81955 m!522077))

(assert (=> d!81955 m!521737))

(declare-fun m!522079 () Bool)

(assert (=> d!81955 m!522079))

(declare-fun m!522081 () Bool)

(assert (=> d!81955 m!522081))

(declare-fun m!522083 () Bool)

(assert (=> d!81955 m!522083))

(assert (=> d!81955 m!521801))

(assert (=> d!81955 m!522075))

(declare-fun m!522085 () Bool)

(assert (=> b!544109 m!522085))

(assert (=> b!544110 m!521801))

(declare-fun m!522087 () Bool)

(assert (=> b!544110 m!522087))

(assert (=> b!543871 d!81955))

(declare-fun b!544113 () Bool)

(declare-fun e!314616 () Bool)

(declare-fun call!32089 () Bool)

(assert (=> b!544113 (= e!314616 call!32089)))

(declare-fun b!544114 () Bool)

(assert (=> b!544114 (= e!314616 call!32089)))

(declare-fun b!544115 () Bool)

(declare-fun e!314615 () Bool)

(declare-fun e!314614 () Bool)

(assert (=> b!544115 (= e!314615 e!314614)))

(declare-fun res!338562 () Bool)

(assert (=> b!544115 (=> (not res!338562) (not e!314614))))

(declare-fun e!314613 () Bool)

(assert (=> b!544115 (= res!338562 (not e!314613))))

(declare-fun res!338560 () Bool)

(assert (=> b!544115 (=> (not res!338560) (not e!314613))))

(assert (=> b!544115 (= res!338560 (validKeyInArray!0 (select (arr!16496 a!3154) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!81957 () Bool)

(declare-fun res!338561 () Bool)

(assert (=> d!81957 (=> res!338561 e!314615)))

(assert (=> d!81957 (= res!338561 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16860 a!3154)))))

(assert (=> d!81957 (= (arrayNoDuplicates!0 a!3154 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!63017 (Cons!10664 (select (arr!16496 a!3154) #b00000000000000000000000000000000) Nil!10665) Nil!10665)) e!314615)))

(declare-fun b!544116 () Bool)

(assert (=> b!544116 (= e!314613 (contains!2812 (ite c!63017 (Cons!10664 (select (arr!16496 a!3154) #b00000000000000000000000000000000) Nil!10665) Nil!10665) (select (arr!16496 a!3154) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun c!63100 () Bool)

(declare-fun bm!32086 () Bool)

(assert (=> bm!32086 (= call!32089 (arrayNoDuplicates!0 a!3154 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!63100 (Cons!10664 (select (arr!16496 a!3154) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!63017 (Cons!10664 (select (arr!16496 a!3154) #b00000000000000000000000000000000) Nil!10665) Nil!10665)) (ite c!63017 (Cons!10664 (select (arr!16496 a!3154) #b00000000000000000000000000000000) Nil!10665) Nil!10665))))))

(declare-fun b!544117 () Bool)

(assert (=> b!544117 (= e!314614 e!314616)))

(assert (=> b!544117 (= c!63100 (validKeyInArray!0 (select (arr!16496 a!3154) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (= (and d!81957 (not res!338561)) b!544115))

(assert (= (and b!544115 res!338560) b!544116))

(assert (= (and b!544115 res!338562) b!544117))

(assert (= (and b!544117 c!63100) b!544113))

(assert (= (and b!544117 (not c!63100)) b!544114))

(assert (= (or b!544113 b!544114) bm!32086))

(assert (=> b!544115 m!522061))

(assert (=> b!544115 m!522061))

(declare-fun m!522089 () Bool)

(assert (=> b!544115 m!522089))

(assert (=> b!544116 m!522061))

(assert (=> b!544116 m!522061))

(declare-fun m!522091 () Bool)

(assert (=> b!544116 m!522091))

(assert (=> bm!32086 m!522061))

(declare-fun m!522093 () Bool)

(assert (=> bm!32086 m!522093))

(assert (=> b!544117 m!522061))

(assert (=> b!544117 m!522061))

(assert (=> b!544117 m!522089))

(assert (=> bm!32075 d!81957))

(declare-fun d!81959 () Bool)

(declare-fun res!338564 () Bool)

(declare-fun e!314618 () Bool)

(assert (=> d!81959 (=> res!338564 e!314618)))

(assert (=> d!81959 (= res!338564 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16860 a!3154)))))

(assert (=> d!81959 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3154 mask!3216) e!314618)))

(declare-fun b!544118 () Bool)

(declare-fun e!314619 () Bool)

(declare-fun call!32090 () Bool)

(assert (=> b!544118 (= e!314619 call!32090)))

(declare-fun b!544119 () Bool)

(declare-fun e!314617 () Bool)

(assert (=> b!544119 (= e!314618 e!314617)))

(declare-fun c!63101 () Bool)

(assert (=> b!544119 (= c!63101 (validKeyInArray!0 (select (arr!16496 a!3154) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!544120 () Bool)

(assert (=> b!544120 (= e!314617 e!314619)))

(declare-fun lt!248415 () (_ BitVec 64))

(assert (=> b!544120 (= lt!248415 (select (arr!16496 a!3154) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!248417 () Unit!16884)

(assert (=> b!544120 (= lt!248417 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3154 lt!248415 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!544120 (arrayContainsKey!0 a!3154 lt!248415 #b00000000000000000000000000000000)))

(declare-fun lt!248416 () Unit!16884)

(assert (=> b!544120 (= lt!248416 lt!248417)))

(declare-fun res!338563 () Bool)

(assert (=> b!544120 (= res!338563 (= (seekEntryOrOpen!0 (select (arr!16496 a!3154) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) a!3154 mask!3216) (Found!4961 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

