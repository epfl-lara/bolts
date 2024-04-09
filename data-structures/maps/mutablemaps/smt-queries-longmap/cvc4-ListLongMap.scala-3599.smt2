; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49544 () Bool)

(assert start!49544)

(declare-fun b!544955 () Bool)

(declare-fun res!339214 () Bool)

(declare-fun e!314993 () Bool)

(assert (=> b!544955 (=> (not res!339214) (not e!314993))))

(declare-datatypes ((SeekEntryResult!4976 0))(
  ( (MissingZero!4976 (index!22128 (_ BitVec 32))) (Found!4976 (index!22129 (_ BitVec 32))) (Intermediate!4976 (undefined!5788 Bool) (index!22130 (_ BitVec 32)) (x!51074 (_ BitVec 32))) (Undefined!4976) (MissingVacant!4976 (index!22131 (_ BitVec 32))) )
))
(declare-fun lt!248678 () SeekEntryResult!4976)

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!34370 0))(
  ( (array!34371 (arr!16511 (Array (_ BitVec 32) (_ BitVec 64))) (size!16875 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34370)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34370 (_ BitVec 32)) SeekEntryResult!4976)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!544955 (= res!339214 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16511 a!3154) j!147) mask!3216) (select (arr!16511 a!3154) j!147) a!3154 mask!3216) lt!248678))))

(declare-fun b!544956 () Bool)

(declare-fun res!339216 () Bool)

(declare-fun e!314992 () Bool)

(assert (=> b!544956 (=> (not res!339216) (not e!314992))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!544956 (= res!339216 (and (= (size!16875 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16875 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16875 a!3154)) (not (= i!1153 j!147))))))

(declare-fun lt!248675 () SeekEntryResult!4976)

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun b!544957 () Bool)

(declare-fun e!314995 () Bool)

(declare-fun lt!248676 () (_ BitVec 32))

(assert (=> b!544957 (= e!314995 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!248676 (select (arr!16511 a!3154) j!147) a!3154 mask!3216) lt!248675)))))

(declare-fun b!544958 () Bool)

(declare-fun res!339211 () Bool)

(assert (=> b!544958 (=> (not res!339211) (not e!314992))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!544958 (= res!339211 (validKeyInArray!0 (select (arr!16511 a!3154) j!147)))))

(declare-fun b!544959 () Bool)

(declare-fun e!314994 () Bool)

(assert (=> b!544959 (= e!314994 e!314993)))

(declare-fun res!339221 () Bool)

(assert (=> b!544959 (=> (not res!339221) (not e!314993))))

(assert (=> b!544959 (= res!339221 (= lt!248678 lt!248675))))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!544959 (= lt!248675 (Intermediate!4976 false resIndex!32 resX!32))))

(declare-fun index!1177 () (_ BitVec 32))

(assert (=> b!544959 (= lt!248678 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16511 a!3154) j!147) a!3154 mask!3216))))

(declare-fun res!339220 () Bool)

(assert (=> start!49544 (=> (not res!339220) (not e!314992))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49544 (= res!339220 (validMask!0 mask!3216))))

(assert (=> start!49544 e!314992))

(assert (=> start!49544 true))

(declare-fun array_inv!12285 (array!34370) Bool)

(assert (=> start!49544 (array_inv!12285 a!3154)))

(declare-fun b!544960 () Bool)

(assert (=> b!544960 (= e!314992 e!314994)))

(declare-fun res!339213 () Bool)

(assert (=> b!544960 (=> (not res!339213) (not e!314994))))

(declare-fun lt!248677 () SeekEntryResult!4976)

(assert (=> b!544960 (= res!339213 (or (= lt!248677 (MissingZero!4976 i!1153)) (= lt!248677 (MissingVacant!4976 i!1153))))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34370 (_ BitVec 32)) SeekEntryResult!4976)

(assert (=> b!544960 (= lt!248677 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!544961 () Bool)

(declare-fun res!339210 () Bool)

(assert (=> b!544961 (=> (not res!339210) (not e!314994))))

(assert (=> b!544961 (= res!339210 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16875 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16875 a!3154)) (= (select (arr!16511 a!3154) resIndex!32) (select (arr!16511 a!3154) j!147))))))

(declare-fun b!544962 () Bool)

(declare-fun res!339209 () Bool)

(assert (=> b!544962 (=> (not res!339209) (not e!314992))))

(assert (=> b!544962 (= res!339209 (validKeyInArray!0 k!1998))))

(declare-fun b!544963 () Bool)

(declare-fun res!339215 () Bool)

(assert (=> b!544963 (=> (not res!339215) (not e!314994))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34370 (_ BitVec 32)) Bool)

(assert (=> b!544963 (= res!339215 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!544964 () Bool)

(assert (=> b!544964 (= e!314993 e!314995)))

(declare-fun res!339212 () Bool)

(assert (=> b!544964 (=> (not res!339212) (not e!314995))))

(assert (=> b!544964 (= res!339212 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1030) resX!32) (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b00000000000000000000000000000000) (bvsge lt!248676 #b00000000000000000000000000000000) (bvslt lt!248676 (size!16875 a!3154))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!544964 (= lt!248676 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!544965 () Bool)

(declare-fun res!339219 () Bool)

(assert (=> b!544965 (=> (not res!339219) (not e!314994))))

(declare-datatypes ((List!10683 0))(
  ( (Nil!10680) (Cons!10679 (h!11640 (_ BitVec 64)) (t!16919 List!10683)) )
))
(declare-fun arrayNoDuplicates!0 (array!34370 (_ BitVec 32) List!10683) Bool)

(assert (=> b!544965 (= res!339219 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10680))))

(declare-fun b!544966 () Bool)

(declare-fun res!339217 () Bool)

(assert (=> b!544966 (=> (not res!339217) (not e!314992))))

(declare-fun arrayContainsKey!0 (array!34370 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!544966 (= res!339217 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!544967 () Bool)

(declare-fun res!339218 () Bool)

(assert (=> b!544967 (=> (not res!339218) (not e!314993))))

(assert (=> b!544967 (= res!339218 (and (not (= (select (arr!16511 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16511 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16511 a!3154) index!1177) (select (arr!16511 a!3154) j!147)))))))

(assert (= (and start!49544 res!339220) b!544956))

(assert (= (and b!544956 res!339216) b!544958))

(assert (= (and b!544958 res!339211) b!544962))

(assert (= (and b!544962 res!339209) b!544966))

(assert (= (and b!544966 res!339217) b!544960))

(assert (= (and b!544960 res!339213) b!544963))

(assert (= (and b!544963 res!339215) b!544965))

(assert (= (and b!544965 res!339219) b!544961))

(assert (= (and b!544961 res!339210) b!544959))

(assert (= (and b!544959 res!339221) b!544955))

(assert (= (and b!544955 res!339214) b!544967))

(assert (= (and b!544967 res!339218) b!544964))

(assert (= (and b!544964 res!339212) b!544957))

(declare-fun m!522689 () Bool)

(assert (=> b!544960 m!522689))

(declare-fun m!522691 () Bool)

(assert (=> start!49544 m!522691))

(declare-fun m!522693 () Bool)

(assert (=> start!49544 m!522693))

(declare-fun m!522695 () Bool)

(assert (=> b!544967 m!522695))

(declare-fun m!522697 () Bool)

(assert (=> b!544967 m!522697))

(assert (=> b!544957 m!522697))

(assert (=> b!544957 m!522697))

(declare-fun m!522699 () Bool)

(assert (=> b!544957 m!522699))

(declare-fun m!522701 () Bool)

(assert (=> b!544965 m!522701))

(declare-fun m!522703 () Bool)

(assert (=> b!544961 m!522703))

(assert (=> b!544961 m!522697))

(assert (=> b!544958 m!522697))

(assert (=> b!544958 m!522697))

(declare-fun m!522705 () Bool)

(assert (=> b!544958 m!522705))

(declare-fun m!522707 () Bool)

(assert (=> b!544964 m!522707))

(assert (=> b!544955 m!522697))

(assert (=> b!544955 m!522697))

(declare-fun m!522709 () Bool)

(assert (=> b!544955 m!522709))

(assert (=> b!544955 m!522709))

(assert (=> b!544955 m!522697))

(declare-fun m!522711 () Bool)

(assert (=> b!544955 m!522711))

(declare-fun m!522713 () Bool)

(assert (=> b!544963 m!522713))

(declare-fun m!522715 () Bool)

(assert (=> b!544966 m!522715))

(declare-fun m!522717 () Bool)

(assert (=> b!544962 m!522717))

(assert (=> b!544959 m!522697))

(assert (=> b!544959 m!522697))

(declare-fun m!522719 () Bool)

(assert (=> b!544959 m!522719))

(push 1)

(assert (not b!544963))

(assert (not b!544958))

(assert (not b!544960))

(assert (not b!544965))

(assert (not start!49544))

(assert (not b!544962))

(assert (not b!544964))

(assert (not b!544955))

(assert (not b!544959))

(assert (not b!544966))

(assert (not b!544957))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!82055 () Bool)

(declare-fun lt!248688 () (_ BitVec 32))

(assert (=> d!82055 (and (bvsge lt!248688 #b00000000000000000000000000000000) (bvslt lt!248688 (bvadd mask!3216 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!82055 (= lt!248688 (choose!52 index!1177 x!1030 mask!3216))))

(assert (=> d!82055 (validMask!0 mask!3216)))

(assert (=> d!82055 (= (nextIndex!0 index!1177 x!1030 mask!3216) lt!248688)))

(declare-fun bs!16999 () Bool)

(assert (= bs!16999 d!82055))

(declare-fun m!522723 () Bool)

(assert (=> bs!16999 m!522723))

(assert (=> bs!16999 m!522691))

(assert (=> b!544964 d!82055))

(declare-fun d!82057 () Bool)

(assert (=> d!82057 (= (validKeyInArray!0 (select (arr!16511 a!3154) j!147)) (and (not (= (select (arr!16511 a!3154) j!147) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16511 a!3154) j!147) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!544958 d!82057))

(declare-fun d!82059 () Bool)

(assert (=> d!82059 (= (validMask!0 mask!3216) (and (or (= mask!3216 #b00000000000000000000000000000111) (= mask!3216 #b00000000000000000000000000001111) (= mask!3216 #b00000000000000000000000000011111) (= mask!3216 #b00000000000000000000000000111111) (= mask!3216 #b00000000000000000000000001111111) (= mask!3216 #b00000000000000000000000011111111) (= mask!3216 #b00000000000000000000000111111111) (= mask!3216 #b00000000000000000000001111111111) (= mask!3216 #b00000000000000000000011111111111) (= mask!3216 #b00000000000000000000111111111111) (= mask!3216 #b00000000000000000001111111111111) (= mask!3216 #b00000000000000000011111111111111) (= mask!3216 #b00000000000000000111111111111111) (= mask!3216 #b00000000000000001111111111111111) (= mask!3216 #b00000000000000011111111111111111) (= mask!3216 #b00000000000000111111111111111111) (= mask!3216 #b00000000000001111111111111111111) (= mask!3216 #b00000000000011111111111111111111) (= mask!3216 #b00000000000111111111111111111111) (= mask!3216 #b00000000001111111111111111111111) (= mask!3216 #b00000000011111111111111111111111) (= mask!3216 #b00000000111111111111111111111111) (= mask!3216 #b00000001111111111111111111111111) (= mask!3216 #b00000011111111111111111111111111) (= mask!3216 #b00000111111111111111111111111111) (= mask!3216 #b00001111111111111111111111111111) (= mask!3216 #b00011111111111111111111111111111) (= mask!3216 #b00111111111111111111111111111111)) (bvsle mask!3216 #b00111111111111111111111111111111)))))

(assert (=> start!49544 d!82059))

(declare-fun d!82069 () Bool)

(assert (=> d!82069 (= (array_inv!12285 a!3154) (bvsge (size!16875 a!3154) #b00000000000000000000000000000000))))

(assert (=> start!49544 d!82069))

(declare-fun b!545054 () Bool)

(declare-fun e!315054 () Bool)

(declare-fun call!32117 () Bool)

(assert (=> b!545054 (= e!315054 call!32117)))

(declare-fun d!82071 () Bool)

(declare-fun res!339264 () Bool)

(declare-fun e!315055 () Bool)

(assert (=> d!82071 (=> res!339264 e!315055)))

(assert (=> d!82071 (= res!339264 (bvsge #b00000000000000000000000000000000 (size!16875 a!3154)))))

(assert (=> d!82071 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216) e!315055)))

(declare-fun b!545055 () Bool)

(declare-fun e!315056 () Bool)

(assert (=> b!545055 (= e!315056 call!32117)))

(declare-fun bm!32114 () Bool)

(assert (=> bm!32114 (= call!32117 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3154 mask!3216))))

(declare-fun b!545056 () Bool)

(assert (=> b!545056 (= e!315055 e!315056)))

(declare-fun c!63221 () Bool)

(assert (=> b!545056 (= c!63221 (validKeyInArray!0 (select (arr!16511 a!3154) #b00000000000000000000000000000000)))))

(declare-fun b!545057 () Bool)

(assert (=> b!545057 (= e!315056 e!315054)))

(declare-fun lt!248713 () (_ BitVec 64))

(assert (=> b!545057 (= lt!248713 (select (arr!16511 a!3154) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!16894 0))(
  ( (Unit!16895) )
))
(declare-fun lt!248715 () Unit!16894)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!34370 (_ BitVec 64) (_ BitVec 32)) Unit!16894)

(assert (=> b!545057 (= lt!248715 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3154 lt!248713 #b00000000000000000000000000000000))))

(assert (=> b!545057 (arrayContainsKey!0 a!3154 lt!248713 #b00000000000000000000000000000000)))

(declare-fun lt!248714 () Unit!16894)

(assert (=> b!545057 (= lt!248714 lt!248715)))

(declare-fun res!339263 () Bool)

(assert (=> b!545057 (= res!339263 (= (seekEntryOrOpen!0 (select (arr!16511 a!3154) #b00000000000000000000000000000000) a!3154 mask!3216) (Found!4976 #b00000000000000000000000000000000)))))

(assert (=> b!545057 (=> (not res!339263) (not e!315054))))

(assert (= (and d!82071 (not res!339264)) b!545056))

(assert (= (and b!545056 c!63221) b!545057))

(assert (= (and b!545056 (not c!63221)) b!545055))

(assert (= (and b!545057 res!339263) b!545054))

(assert (= (or b!545054 b!545055) bm!32114))

(declare-fun m!522769 () Bool)

(assert (=> bm!32114 m!522769))

(declare-fun m!522771 () Bool)

(assert (=> b!545056 m!522771))

(assert (=> b!545056 m!522771))

(declare-fun m!522773 () Bool)

(assert (=> b!545056 m!522773))

(assert (=> b!545057 m!522771))

(declare-fun m!522775 () Bool)

(assert (=> b!545057 m!522775))

(declare-fun m!522777 () Bool)

(assert (=> b!545057 m!522777))

(assert (=> b!545057 m!522771))

(declare-fun m!522779 () Bool)

(assert (=> b!545057 m!522779))

(assert (=> b!544963 d!82071))

(declare-fun b!545118 () Bool)

(declare-fun e!315096 () SeekEntryResult!4976)

(declare-fun lt!248742 () SeekEntryResult!4976)

(assert (=> b!545118 (= e!315096 (Found!4976 (index!22130 lt!248742)))))

(declare-fun b!545119 () Bool)

(declare-fun c!63241 () Bool)

(declare-fun lt!248741 () (_ BitVec 64))

(assert (=> b!545119 (= c!63241 (= lt!248741 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!315098 () SeekEntryResult!4976)

(assert (=> b!545119 (= e!315096 e!315098)))

(declare-fun b!545120 () Bool)

(declare-fun e!315097 () SeekEntryResult!4976)

(assert (=> b!545120 (= e!315097 Undefined!4976)))

(declare-fun d!82081 () Bool)

(declare-fun lt!248740 () SeekEntryResult!4976)

(assert (=> d!82081 (and (or (is-Undefined!4976 lt!248740) (not (is-Found!4976 lt!248740)) (and (bvsge (index!22129 lt!248740) #b00000000000000000000000000000000) (bvslt (index!22129 lt!248740) (size!16875 a!3154)))) (or (is-Undefined!4976 lt!248740) (is-Found!4976 lt!248740) (not (is-MissingZero!4976 lt!248740)) (and (bvsge (index!22128 lt!248740) #b00000000000000000000000000000000) (bvslt (index!22128 lt!248740) (size!16875 a!3154)))) (or (is-Undefined!4976 lt!248740) (is-Found!4976 lt!248740) (is-MissingZero!4976 lt!248740) (not (is-MissingVacant!4976 lt!248740)) (and (bvsge (index!22131 lt!248740) #b00000000000000000000000000000000) (bvslt (index!22131 lt!248740) (size!16875 a!3154)))) (or (is-Undefined!4976 lt!248740) (ite (is-Found!4976 lt!248740) (= (select (arr!16511 a!3154) (index!22129 lt!248740)) k!1998) (ite (is-MissingZero!4976 lt!248740) (= (select (arr!16511 a!3154) (index!22128 lt!248740)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!4976 lt!248740) (= (select (arr!16511 a!3154) (index!22131 lt!248740)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!82081 (= lt!248740 e!315097)))

(declare-fun c!63242 () Bool)

(assert (=> d!82081 (= c!63242 (and (is-Intermediate!4976 lt!248742) (undefined!5788 lt!248742)))))

(assert (=> d!82081 (= lt!248742 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1998 mask!3216) k!1998 a!3154 mask!3216))))

(assert (=> d!82081 (validMask!0 mask!3216)))

(assert (=> d!82081 (= (seekEntryOrOpen!0 k!1998 a!3154 mask!3216) lt!248740)))

(declare-fun b!545121 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34370 (_ BitVec 32)) SeekEntryResult!4976)

(assert (=> b!545121 (= e!315098 (seekKeyOrZeroReturnVacant!0 (x!51074 lt!248742) (index!22130 lt!248742) (index!22130 lt!248742) k!1998 a!3154 mask!3216))))

(declare-fun b!545122 () Bool)

(assert (=> b!545122 (= e!315097 e!315096)))

(assert (=> b!545122 (= lt!248741 (select (arr!16511 a!3154) (index!22130 lt!248742)))))

(declare-fun c!63240 () Bool)

(assert (=> b!545122 (= c!63240 (= lt!248741 k!1998))))

(declare-fun b!545123 () Bool)

(assert (=> b!545123 (= e!315098 (MissingZero!4976 (index!22130 lt!248742)))))

(assert (= (and d!82081 c!63242) b!545120))

(assert (= (and d!82081 (not c!63242)) b!545122))

(assert (= (and b!545122 c!63240) b!545118))

(assert (= (and b!545122 (not c!63240)) b!545119))

(assert (= (and b!545119 c!63241) b!545123))

(assert (= (and b!545119 (not c!63241)) b!545121))

(declare-fun m!522795 () Bool)

(assert (=> d!82081 m!522795))

(declare-fun m!522797 () Bool)

(assert (=> d!82081 m!522797))

(assert (=> d!82081 m!522795))

(declare-fun m!522799 () Bool)

(assert (=> d!82081 m!522799))

(declare-fun m!522801 () Bool)

(assert (=> d!82081 m!522801))

(declare-fun m!522803 () Bool)

(assert (=> d!82081 m!522803))

(assert (=> d!82081 m!522691))

(declare-fun m!522805 () Bool)

(assert (=> b!545121 m!522805))

(declare-fun m!522807 () Bool)

(assert (=> b!545122 m!522807))

(assert (=> b!544960 d!82081))

(declare-fun bm!32120 () Bool)

(declare-fun call!32123 () Bool)

(declare-fun c!63254 () Bool)

(assert (=> bm!32120 (= call!32123 (arrayNoDuplicates!0 a!3154 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!63254 (Cons!10679 (select (arr!16511 a!3154) #b00000000000000000000000000000000) Nil!10680) Nil!10680)))))

(declare-fun b!545155 () Bool)

(declare-fun e!315121 () Bool)

(declare-fun e!315119 () Bool)

(assert (=> b!545155 (= e!315121 e!315119)))

(declare-fun res!339299 () Bool)

(assert (=> b!545155 (=> (not res!339299) (not e!315119))))

(declare-fun e!315120 () Bool)

(assert (=> b!545155 (= res!339299 (not e!315120))))

(declare-fun res!339301 () Bool)

(assert (=> b!545155 (=> (not res!339301) (not e!315120))))

(assert (=> b!545155 (= res!339301 (validKeyInArray!0 (select (arr!16511 a!3154) #b00000000000000000000000000000000)))))

(declare-fun b!545156 () Bool)

(declare-fun e!315118 () Bool)

(assert (=> b!545156 (= e!315118 call!32123)))

(declare-fun d!82097 () Bool)

(declare-fun res!339300 () Bool)

(assert (=> d!82097 (=> res!339300 e!315121)))

(assert (=> d!82097 (= res!339300 (bvsge #b00000000000000000000000000000000 (size!16875 a!3154)))))

(assert (=> d!82097 (= (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10680) e!315121)))

(declare-fun b!545157 () Bool)

(assert (=> b!545157 (= e!315118 call!32123)))

(declare-fun b!545158 () Bool)

(assert (=> b!545158 (= e!315119 e!315118)))

(assert (=> b!545158 (= c!63254 (validKeyInArray!0 (select (arr!16511 a!3154) #b00000000000000000000000000000000)))))

(declare-fun b!545159 () Bool)

(declare-fun contains!2818 (List!10683 (_ BitVec 64)) Bool)

(assert (=> b!545159 (= e!315120 (contains!2818 Nil!10680 (select (arr!16511 a!3154) #b00000000000000000000000000000000)))))

(assert (= (and d!82097 (not res!339300)) b!545155))

(assert (= (and b!545155 res!339301) b!545159))

(assert (= (and b!545155 res!339299) b!545158))

(assert (= (and b!545158 c!63254) b!545156))

(assert (= (and b!545158 (not c!63254)) b!545157))

(assert (= (or b!545156 b!545157) bm!32120))

(assert (=> bm!32120 m!522771))

(declare-fun m!522813 () Bool)

(assert (=> bm!32120 m!522813))

(assert (=> b!545155 m!522771))

(assert (=> b!545155 m!522771))

(assert (=> b!545155 m!522773))

(assert (=> b!545158 m!522771))

(assert (=> b!545158 m!522771))

(assert (=> b!545158 m!522773))

(assert (=> b!545159 m!522771))

(assert (=> b!545159 m!522771))

(declare-fun m!522815 () Bool)

(assert (=> b!545159 m!522815))

(assert (=> b!544965 d!82097))

(declare-fun b!545196 () Bool)

(declare-fun e!315141 () Bool)

(declare-fun e!315144 () Bool)

(assert (=> b!545196 (= e!315141 e!315144)))

(declare-fun res!339309 () Bool)

(declare-fun lt!248765 () SeekEntryResult!4976)

(assert (=> b!545196 (= res!339309 (and (is-Intermediate!4976 lt!248765) (not (undefined!5788 lt!248765)) (bvslt (x!51074 lt!248765) #b01111111111111111111111111111110) (bvsge (x!51074 lt!248765) #b00000000000000000000000000000000) (bvsge (x!51074 lt!248765) x!1030)))))

(assert (=> b!545196 (=> (not res!339309) (not e!315144))))

(declare-fun b!545197 () Bool)

(declare-fun e!315145 () SeekEntryResult!4976)

(declare-fun e!315142 () SeekEntryResult!4976)

(assert (=> b!545197 (= e!315145 e!315142)))

(declare-fun c!63270 () Bool)

(declare-fun lt!248764 () (_ BitVec 64))

(assert (=> b!545197 (= c!63270 (or (= lt!248764 (select (arr!16511 a!3154) j!147)) (= (bvadd lt!248764 lt!248764) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!545198 () Bool)

(assert (=> b!545198 (and (bvsge (index!22130 lt!248765) #b00000000000000000000000000000000) (bvslt (index!22130 lt!248765) (size!16875 a!3154)))))

(declare-fun e!315143 () Bool)

(assert (=> b!545198 (= e!315143 (= (select (arr!16511 a!3154) (index!22130 lt!248765)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!545199 () Bool)

(assert (=> b!545199 (= e!315145 (Intermediate!4976 true index!1177 x!1030))))

(declare-fun b!545200 () Bool)

(assert (=> b!545200 (and (bvsge (index!22130 lt!248765) #b00000000000000000000000000000000) (bvslt (index!22130 lt!248765) (size!16875 a!3154)))))

(declare-fun res!339308 () Bool)

(assert (=> b!545200 (= res!339308 (= (select (arr!16511 a!3154) (index!22130 lt!248765)) (select (arr!16511 a!3154) j!147)))))

(assert (=> b!545200 (=> res!339308 e!315143)))

(assert (=> b!545200 (= e!315144 e!315143)))

(declare-fun d!82101 () Bool)

(assert (=> d!82101 e!315141))

(declare-fun c!63272 () Bool)

(assert (=> d!82101 (= c!63272 (and (is-Intermediate!4976 lt!248765) (undefined!5788 lt!248765)))))

(assert (=> d!82101 (= lt!248765 e!315145)))

(declare-fun c!63271 () Bool)

(assert (=> d!82101 (= c!63271 (bvsge x!1030 #b01111111111111111111111111111110))))

(assert (=> d!82101 (= lt!248764 (select (arr!16511 a!3154) index!1177))))

(assert (=> d!82101 (validMask!0 mask!3216)))

(assert (=> d!82101 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16511 a!3154) j!147) a!3154 mask!3216) lt!248765)))

(declare-fun b!545201 () Bool)

(assert (=> b!545201 (= e!315141 (bvsge (x!51074 lt!248765) #b01111111111111111111111111111110))))

(declare-fun b!545202 () Bool)

(assert (=> b!545202 (= e!315142 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1030 #b00000000000000000000000000000001) (nextIndex!0 index!1177 x!1030 mask!3216) (select (arr!16511 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!545203 () Bool)

(assert (=> b!545203 (= e!315142 (Intermediate!4976 false index!1177 x!1030))))

(declare-fun b!545204 () Bool)

(assert (=> b!545204 (and (bvsge (index!22130 lt!248765) #b00000000000000000000000000000000) (bvslt (index!22130 lt!248765) (size!16875 a!3154)))))

(declare-fun res!339310 () Bool)

(assert (=> b!545204 (= res!339310 (= (select (arr!16511 a!3154) (index!22130 lt!248765)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!545204 (=> res!339310 e!315143)))

(assert (= (and d!82101 c!63271) b!545199))

(assert (= (and d!82101 (not c!63271)) b!545197))

(assert (= (and b!545197 c!63270) b!545203))

(assert (= (and b!545197 (not c!63270)) b!545202))

(assert (= (and d!82101 c!63272) b!545201))

(assert (= (and d!82101 (not c!63272)) b!545196))

(assert (= (and b!545196 res!339309) b!545200))

(assert (= (and b!545200 (not res!339308)) b!545204))

(assert (= (and b!545204 (not res!339310)) b!545198))

(assert (=> b!545202 m!522707))

(assert (=> b!545202 m!522707))

(assert (=> b!545202 m!522697))

(declare-fun m!522831 () Bool)

(assert (=> b!545202 m!522831))

(declare-fun m!522833 () Bool)

(assert (=> b!545200 m!522833))

(assert (=> b!545204 m!522833))

(assert (=> b!545198 m!522833))

(assert (=> d!82101 m!522695))

(assert (=> d!82101 m!522691))

(assert (=> b!544959 d!82101))

(declare-fun d!82113 () Bool)

(declare-fun res!339315 () Bool)

(declare-fun e!315150 () Bool)

(assert (=> d!82113 (=> res!339315 e!315150)))

(assert (=> d!82113 (= res!339315 (= (select (arr!16511 a!3154) #b00000000000000000000000000000000) k!1998))))

(assert (=> d!82113 (= (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000) e!315150)))

(declare-fun b!545209 () Bool)

(declare-fun e!315151 () Bool)

(assert (=> b!545209 (= e!315150 e!315151)))

(declare-fun res!339316 () Bool)

(assert (=> b!545209 (=> (not res!339316) (not e!315151))))

(assert (=> b!545209 (= res!339316 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16875 a!3154)))))

(declare-fun b!545210 () Bool)

(assert (=> b!545210 (= e!315151 (arrayContainsKey!0 a!3154 k!1998 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!82113 (not res!339315)) b!545209))

(assert (= (and b!545209 res!339316) b!545210))

(assert (=> d!82113 m!522771))

(declare-fun m!522835 () Bool)

(assert (=> b!545210 m!522835))

(assert (=> b!544966 d!82113))

(declare-fun b!545217 () Bool)

(declare-fun e!315155 () Bool)

(declare-fun e!315158 () Bool)

(assert (=> b!545217 (= e!315155 e!315158)))

(declare-fun res!339318 () Bool)

(declare-fun lt!248770 () SeekEntryResult!4976)

(assert (=> b!545217 (= res!339318 (and (is-Intermediate!4976 lt!248770) (not (undefined!5788 lt!248770)) (bvslt (x!51074 lt!248770) #b01111111111111111111111111111110) (bvsge (x!51074 lt!248770) #b00000000000000000000000000000000) (bvsge (x!51074 lt!248770) #b00000000000000000000000000000000)))))

(assert (=> b!545217 (=> (not res!339318) (not e!315158))))

(declare-fun b!545218 () Bool)

(declare-fun e!315159 () SeekEntryResult!4976)

(declare-fun e!315156 () SeekEntryResult!4976)

(assert (=> b!545218 (= e!315159 e!315156)))

(declare-fun lt!248769 () (_ BitVec 64))

(declare-fun c!63276 () Bool)

(assert (=> b!545218 (= c!63276 (or (= lt!248769 (select (arr!16511 a!3154) j!147)) (= (bvadd lt!248769 lt!248769) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!545219 () Bool)

(assert (=> b!545219 (and (bvsge (index!22130 lt!248770) #b00000000000000000000000000000000) (bvslt (index!22130 lt!248770) (size!16875 a!3154)))))

(declare-fun e!315157 () Bool)

(assert (=> b!545219 (= e!315157 (= (select (arr!16511 a!3154) (index!22130 lt!248770)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!545220 () Bool)

(assert (=> b!545220 (= e!315159 (Intermediate!4976 true (toIndex!0 (select (arr!16511 a!3154) j!147) mask!3216) #b00000000000000000000000000000000))))

(declare-fun b!545221 () Bool)

(assert (=> b!545221 (and (bvsge (index!22130 lt!248770) #b00000000000000000000000000000000) (bvslt (index!22130 lt!248770) (size!16875 a!3154)))))

(declare-fun res!339317 () Bool)

(assert (=> b!545221 (= res!339317 (= (select (arr!16511 a!3154) (index!22130 lt!248770)) (select (arr!16511 a!3154) j!147)))))

(assert (=> b!545221 (=> res!339317 e!315157)))

(assert (=> b!545221 (= e!315158 e!315157)))

(declare-fun d!82115 () Bool)

(assert (=> d!82115 e!315155))

(declare-fun c!63278 () Bool)

(assert (=> d!82115 (= c!63278 (and (is-Intermediate!4976 lt!248770) (undefined!5788 lt!248770)))))

(assert (=> d!82115 (= lt!248770 e!315159)))

(declare-fun c!63277 () Bool)

(assert (=> d!82115 (= c!63277 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!82115 (= lt!248769 (select (arr!16511 a!3154) (toIndex!0 (select (arr!16511 a!3154) j!147) mask!3216)))))

(assert (=> d!82115 (validMask!0 mask!3216)))

(assert (=> d!82115 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16511 a!3154) j!147) mask!3216) (select (arr!16511 a!3154) j!147) a!3154 mask!3216) lt!248770)))

(declare-fun b!545222 () Bool)

(assert (=> b!545222 (= e!315155 (bvsge (x!51074 lt!248770) #b01111111111111111111111111111110))))

(declare-fun b!545223 () Bool)

(assert (=> b!545223 (= e!315156 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!16511 a!3154) j!147) mask!3216) #b00000000000000000000000000000000 mask!3216) (select (arr!16511 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!545224 () Bool)

(assert (=> b!545224 (= e!315156 (Intermediate!4976 false (toIndex!0 (select (arr!16511 a!3154) j!147) mask!3216) #b00000000000000000000000000000000))))

(declare-fun b!545225 () Bool)

(assert (=> b!545225 (and (bvsge (index!22130 lt!248770) #b00000000000000000000000000000000) (bvslt (index!22130 lt!248770) (size!16875 a!3154)))))

(declare-fun res!339319 () Bool)

(assert (=> b!545225 (= res!339319 (= (select (arr!16511 a!3154) (index!22130 lt!248770)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!545225 (=> res!339319 e!315157)))

(assert (= (and d!82115 c!63277) b!545220))

(assert (= (and d!82115 (not c!63277)) b!545218))

(assert (= (and b!545218 c!63276) b!545224))

(assert (= (and b!545218 (not c!63276)) b!545223))

(assert (= (and d!82115 c!63278) b!545222))

(assert (= (and d!82115 (not c!63278)) b!545217))

(assert (= (and b!545217 res!339318) b!545221))

(assert (= (and b!545221 (not res!339317)) b!545225))

(assert (= (and b!545225 (not res!339319)) b!545219))

(assert (=> b!545223 m!522709))

(declare-fun m!522851 () Bool)

(assert (=> b!545223 m!522851))

(assert (=> b!545223 m!522851))

(assert (=> b!545223 m!522697))

(declare-fun m!522853 () Bool)

(assert (=> b!545223 m!522853))

(declare-fun m!522855 () Bool)

(assert (=> b!545221 m!522855))

(assert (=> b!545225 m!522855))

(assert (=> b!545219 m!522855))

(assert (=> d!82115 m!522709))

(declare-fun m!522857 () Bool)

(assert (=> d!82115 m!522857))

(assert (=> d!82115 m!522691))

(assert (=> b!544955 d!82115))

(declare-fun d!82119 () Bool)

(declare-fun lt!248776 () (_ BitVec 32))

(declare-fun lt!248775 () (_ BitVec 32))

(assert (=> d!82119 (= lt!248776 (bvmul (bvxor lt!248775 (bvlshr lt!248775 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!82119 (= lt!248775 ((_ extract 31 0) (bvand (bvxor (select (arr!16511 a!3154) j!147) (bvlshr (select (arr!16511 a!3154) j!147) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!82119 (and (bvsge mask!3216 #b00000000000000000000000000000000) (let ((res!339320 (let ((h!11643 ((_ extract 31 0) (bvand (bvxor (select (arr!16511 a!3154) j!147) (bvlshr (select (arr!16511 a!3154) j!147) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!51083 (bvmul (bvxor h!11643 (bvlshr h!11643 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!51083 (bvlshr x!51083 #b00000000000000000000000000001101)) mask!3216))))) (and (bvslt res!339320 (bvadd mask!3216 #b00000000000000000000000000000001)) (bvsge res!339320 #b00000000000000000000000000000000))))))

(assert (=> d!82119 (= (toIndex!0 (select (arr!16511 a!3154) j!147) mask!3216) (bvand (bvxor lt!248776 (bvlshr lt!248776 #b00000000000000000000000000001101)) mask!3216))))

(assert (=> b!544955 d!82119))

(declare-fun b!545228 () Bool)

(declare-fun e!315162 () Bool)

(declare-fun e!315165 () Bool)

(assert (=> b!545228 (= e!315162 e!315165)))

(declare-fun res!339324 () Bool)

(declare-fun lt!248778 () SeekEntryResult!4976)

(assert (=> b!545228 (= res!339324 (and (is-Intermediate!4976 lt!248778) (not (undefined!5788 lt!248778)) (bvslt (x!51074 lt!248778) #b01111111111111111111111111111110) (bvsge (x!51074 lt!248778) #b00000000000000000000000000000000) (bvsge (x!51074 lt!248778) (bvadd #b00000000000000000000000000000001 x!1030))))))

(assert (=> b!545228 (=> (not res!339324) (not e!315165))))

(declare-fun b!545231 () Bool)

(declare-fun e!315166 () SeekEntryResult!4976)

(declare-fun e!315163 () SeekEntryResult!4976)

(assert (=> b!545231 (= e!315166 e!315163)))

(declare-fun lt!248777 () (_ BitVec 64))

(declare-fun c!63279 () Bool)

(assert (=> b!545231 (= c!63279 (or (= lt!248777 (select (arr!16511 a!3154) j!147)) (= (bvadd lt!248777 lt!248777) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!545232 () Bool)

(assert (=> b!545232 (and (bvsge (index!22130 lt!248778) #b00000000000000000000000000000000) (bvslt (index!22130 lt!248778) (size!16875 a!3154)))))

(declare-fun e!315164 () Bool)

(assert (=> b!545232 (= e!315164 (= (select (arr!16511 a!3154) (index!22130 lt!248778)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!545233 () Bool)

(assert (=> b!545233 (= e!315166 (Intermediate!4976 true lt!248676 (bvadd #b00000000000000000000000000000001 x!1030)))))

(declare-fun b!545234 () Bool)

(assert (=> b!545234 (and (bvsge (index!22130 lt!248778) #b00000000000000000000000000000000) (bvslt (index!22130 lt!248778) (size!16875 a!3154)))))

(declare-fun res!339323 () Bool)

(assert (=> b!545234 (= res!339323 (= (select (arr!16511 a!3154) (index!22130 lt!248778)) (select (arr!16511 a!3154) j!147)))))

(assert (=> b!545234 (=> res!339323 e!315164)))

(assert (=> b!545234 (= e!315165 e!315164)))

(declare-fun d!82121 () Bool)

(assert (=> d!82121 e!315162))

(declare-fun c!63281 () Bool)

(assert (=> d!82121 (= c!63281 (and (is-Intermediate!4976 lt!248778) (undefined!5788 lt!248778)))))

(assert (=> d!82121 (= lt!248778 e!315166)))

(declare-fun c!63280 () Bool)

(assert (=> d!82121 (= c!63280 (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b01111111111111111111111111111110))))

(assert (=> d!82121 (= lt!248777 (select (arr!16511 a!3154) lt!248676))))

(assert (=> d!82121 (validMask!0 mask!3216)))

(assert (=> d!82121 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!248676 (select (arr!16511 a!3154) j!147) a!3154 mask!3216) lt!248778)))

