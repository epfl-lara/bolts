; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48958 () Bool)

(assert start!48958)

(declare-fun b!539353 () Bool)

(declare-fun res!334708 () Bool)

(declare-fun e!312598 () Bool)

(assert (=> b!539353 (=> (not res!334708) (not e!312598))))

(declare-datatypes ((array!34126 0))(
  ( (array!34127 (arr!16398 (Array (_ BitVec 32) (_ BitVec 64))) (size!16762 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34126)

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34126 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!539353 (= res!334708 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!539354 () Bool)

(declare-fun e!312601 () Bool)

(assert (=> b!539354 (= e!312598 e!312601)))

(declare-fun res!334718 () Bool)

(assert (=> b!539354 (=> (not res!334718) (not e!312601))))

(declare-datatypes ((SeekEntryResult!4863 0))(
  ( (MissingZero!4863 (index!21676 (_ BitVec 32))) (Found!4863 (index!21677 (_ BitVec 32))) (Intermediate!4863 (undefined!5675 Bool) (index!21678 (_ BitVec 32)) (x!50617 (_ BitVec 32))) (Undefined!4863) (MissingVacant!4863 (index!21679 (_ BitVec 32))) )
))
(declare-fun lt!247121 () SeekEntryResult!4863)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!539354 (= res!334718 (or (= lt!247121 (MissingZero!4863 i!1153)) (= lt!247121 (MissingVacant!4863 i!1153))))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34126 (_ BitVec 32)) SeekEntryResult!4863)

(assert (=> b!539354 (= lt!247121 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!539355 () Bool)

(declare-fun res!334716 () Bool)

(declare-fun e!312600 () Bool)

(assert (=> b!539355 (=> (not res!334716) (not e!312600))))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun lt!247120 () SeekEntryResult!4863)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34126 (_ BitVec 32)) SeekEntryResult!4863)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!539355 (= res!334716 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16398 a!3154) j!147) mask!3216) (select (arr!16398 a!3154) j!147) a!3154 mask!3216) lt!247120))))

(declare-fun b!539356 () Bool)

(declare-fun res!334710 () Bool)

(assert (=> b!539356 (=> (not res!334710) (not e!312601))))

(declare-datatypes ((List!10570 0))(
  ( (Nil!10567) (Cons!10566 (h!11509 (_ BitVec 64)) (t!16806 List!10570)) )
))
(declare-fun arrayNoDuplicates!0 (array!34126 (_ BitVec 32) List!10570) Bool)

(assert (=> b!539356 (= res!334710 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10567))))

(declare-fun b!539357 () Bool)

(assert (=> b!539357 (= e!312601 e!312600)))

(declare-fun res!334711 () Bool)

(assert (=> b!539357 (=> (not res!334711) (not e!312600))))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!539357 (= res!334711 (= lt!247120 (Intermediate!4863 false resIndex!32 resX!32)))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(assert (=> b!539357 (= lt!247120 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16398 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!539358 () Bool)

(declare-fun res!334709 () Bool)

(assert (=> b!539358 (=> (not res!334709) (not e!312598))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!539358 (= res!334709 (validKeyInArray!0 k!1998))))

(declare-fun res!334713 () Bool)

(assert (=> start!48958 (=> (not res!334713) (not e!312598))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48958 (= res!334713 (validMask!0 mask!3216))))

(assert (=> start!48958 e!312598))

(assert (=> start!48958 true))

(declare-fun array_inv!12172 (array!34126) Bool)

(assert (=> start!48958 (array_inv!12172 a!3154)))

(declare-fun b!539359 () Bool)

(declare-fun res!334717 () Bool)

(assert (=> b!539359 (=> (not res!334717) (not e!312598))))

(assert (=> b!539359 (= res!334717 (and (= (size!16762 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16762 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16762 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!539360 () Bool)

(assert (=> b!539360 (= e!312600 (= (select (arr!16398 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!539361 () Bool)

(declare-fun res!334712 () Bool)

(assert (=> b!539361 (=> (not res!334712) (not e!312601))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34126 (_ BitVec 32)) Bool)

(assert (=> b!539361 (= res!334712 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!539362 () Bool)

(declare-fun res!334715 () Bool)

(assert (=> b!539362 (=> (not res!334715) (not e!312598))))

(assert (=> b!539362 (= res!334715 (validKeyInArray!0 (select (arr!16398 a!3154) j!147)))))

(declare-fun b!539363 () Bool)

(declare-fun res!334714 () Bool)

(assert (=> b!539363 (=> (not res!334714) (not e!312601))))

(assert (=> b!539363 (= res!334714 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16762 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16762 a!3154)) (= (select (arr!16398 a!3154) resIndex!32) (select (arr!16398 a!3154) j!147))))))

(assert (= (and start!48958 res!334713) b!539359))

(assert (= (and b!539359 res!334717) b!539362))

(assert (= (and b!539362 res!334715) b!539358))

(assert (= (and b!539358 res!334709) b!539353))

(assert (= (and b!539353 res!334708) b!539354))

(assert (= (and b!539354 res!334718) b!539361))

(assert (= (and b!539361 res!334712) b!539356))

(assert (= (and b!539356 res!334710) b!539363))

(assert (= (and b!539363 res!334714) b!539357))

(assert (= (and b!539357 res!334711) b!539355))

(assert (= (and b!539355 res!334716) b!539360))

(declare-fun m!518395 () Bool)

(assert (=> start!48958 m!518395))

(declare-fun m!518397 () Bool)

(assert (=> start!48958 m!518397))

(declare-fun m!518399 () Bool)

(assert (=> b!539356 m!518399))

(declare-fun m!518401 () Bool)

(assert (=> b!539360 m!518401))

(declare-fun m!518403 () Bool)

(assert (=> b!539363 m!518403))

(declare-fun m!518405 () Bool)

(assert (=> b!539363 m!518405))

(assert (=> b!539357 m!518405))

(assert (=> b!539357 m!518405))

(declare-fun m!518407 () Bool)

(assert (=> b!539357 m!518407))

(assert (=> b!539362 m!518405))

(assert (=> b!539362 m!518405))

(declare-fun m!518409 () Bool)

(assert (=> b!539362 m!518409))

(declare-fun m!518411 () Bool)

(assert (=> b!539358 m!518411))

(declare-fun m!518413 () Bool)

(assert (=> b!539361 m!518413))

(declare-fun m!518415 () Bool)

(assert (=> b!539353 m!518415))

(declare-fun m!518417 () Bool)

(assert (=> b!539354 m!518417))

(assert (=> b!539355 m!518405))

(assert (=> b!539355 m!518405))

(declare-fun m!518419 () Bool)

(assert (=> b!539355 m!518419))

(assert (=> b!539355 m!518419))

(assert (=> b!539355 m!518405))

(declare-fun m!518421 () Bool)

(assert (=> b!539355 m!518421))

(push 1)

(assert (not b!539361))

(assert (not b!539354))

(assert (not b!539355))

(assert (not b!539357))

(assert (not b!539353))

(assert (not b!539356))

(assert (not b!539358))

(assert (not b!539362))

(assert (not start!48958))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!81475 () Bool)

(assert (=> d!81475 (= (validKeyInArray!0 k!1998) (and (not (= k!1998 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1998 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!539358 d!81475))

(declare-fun d!81477 () Bool)

(declare-fun res!334789 () Bool)

(declare-fun e!312630 () Bool)

(assert (=> d!81477 (=> res!334789 e!312630)))

(assert (=> d!81477 (= res!334789 (= (select (arr!16398 a!3154) #b00000000000000000000000000000000) k!1998))))

(assert (=> d!81477 (= (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000) e!312630)))

(declare-fun b!539434 () Bool)

(declare-fun e!312631 () Bool)

(assert (=> b!539434 (= e!312630 e!312631)))

(declare-fun res!334790 () Bool)

(assert (=> b!539434 (=> (not res!334790) (not e!312631))))

(assert (=> b!539434 (= res!334790 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16762 a!3154)))))

(declare-fun b!539435 () Bool)

(assert (=> b!539435 (= e!312631 (arrayContainsKey!0 a!3154 k!1998 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!81477 (not res!334789)) b!539434))

(assert (= (and b!539434 res!334790) b!539435))

(declare-fun m!518479 () Bool)

(assert (=> d!81477 m!518479))

(declare-fun m!518481 () Bool)

(assert (=> b!539435 m!518481))

(assert (=> b!539353 d!81477))

(declare-fun d!81479 () Bool)

(assert (=> d!81479 (= (validKeyInArray!0 (select (arr!16398 a!3154) j!147)) (and (not (= (select (arr!16398 a!3154) j!147) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16398 a!3154) j!147) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!539362 d!81479))

(declare-fun e!312681 () SeekEntryResult!4863)

(declare-fun b!539514 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!539514 (= e!312681 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1030 #b00000000000000000000000000000001) (nextIndex!0 index!1177 x!1030 mask!3216) (select (arr!16398 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!539515 () Bool)

(declare-fun e!312682 () Bool)

(declare-fun lt!247156 () SeekEntryResult!4863)

(assert (=> b!539515 (= e!312682 (bvsge (x!50617 lt!247156) #b01111111111111111111111111111110))))

(declare-fun b!539516 () Bool)

(declare-fun e!312679 () SeekEntryResult!4863)

(assert (=> b!539516 (= e!312679 e!312681)))

(declare-fun c!62659 () Bool)

(declare-fun lt!247157 () (_ BitVec 64))

(assert (=> b!539516 (= c!62659 (or (= lt!247157 (select (arr!16398 a!3154) j!147)) (= (bvadd lt!247157 lt!247157) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!539517 () Bool)

(declare-fun e!312680 () Bool)

(assert (=> b!539517 (= e!312682 e!312680)))

(declare-fun res!334824 () Bool)

(assert (=> b!539517 (= res!334824 (and (is-Intermediate!4863 lt!247156) (not (undefined!5675 lt!247156)) (bvslt (x!50617 lt!247156) #b01111111111111111111111111111110) (bvsge (x!50617 lt!247156) #b00000000000000000000000000000000) (bvsge (x!50617 lt!247156) x!1030)))))

(assert (=> b!539517 (=> (not res!334824) (not e!312680))))

(declare-fun b!539518 () Bool)

(assert (=> b!539518 (and (bvsge (index!21678 lt!247156) #b00000000000000000000000000000000) (bvslt (index!21678 lt!247156) (size!16762 a!3154)))))

(declare-fun res!334823 () Bool)

(assert (=> b!539518 (= res!334823 (= (select (arr!16398 a!3154) (index!21678 lt!247156)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!312678 () Bool)

(assert (=> b!539518 (=> res!334823 e!312678)))

(declare-fun b!539519 () Bool)

(assert (=> b!539519 (and (bvsge (index!21678 lt!247156) #b00000000000000000000000000000000) (bvslt (index!21678 lt!247156) (size!16762 a!3154)))))

(declare-fun res!334822 () Bool)

(assert (=> b!539519 (= res!334822 (= (select (arr!16398 a!3154) (index!21678 lt!247156)) (select (arr!16398 a!3154) j!147)))))

(assert (=> b!539519 (=> res!334822 e!312678)))

(assert (=> b!539519 (= e!312680 e!312678)))

(declare-fun b!539520 () Bool)

(assert (=> b!539520 (= e!312679 (Intermediate!4863 true index!1177 x!1030))))

(declare-fun b!539521 () Bool)

(assert (=> b!539521 (and (bvsge (index!21678 lt!247156) #b00000000000000000000000000000000) (bvslt (index!21678 lt!247156) (size!16762 a!3154)))))

(assert (=> b!539521 (= e!312678 (= (select (arr!16398 a!3154) (index!21678 lt!247156)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!81481 () Bool)

(assert (=> d!81481 e!312682))

(declare-fun c!62660 () Bool)

(assert (=> d!81481 (= c!62660 (and (is-Intermediate!4863 lt!247156) (undefined!5675 lt!247156)))))

(assert (=> d!81481 (= lt!247156 e!312679)))

(declare-fun c!62658 () Bool)

(assert (=> d!81481 (= c!62658 (bvsge x!1030 #b01111111111111111111111111111110))))

(assert (=> d!81481 (= lt!247157 (select (arr!16398 a!3154) index!1177))))

(assert (=> d!81481 (validMask!0 mask!3216)))

(assert (=> d!81481 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16398 a!3154) j!147) a!3154 mask!3216) lt!247156)))

(declare-fun b!539522 () Bool)

(assert (=> b!539522 (= e!312681 (Intermediate!4863 false index!1177 x!1030))))

(assert (= (and d!81481 c!62658) b!539520))

(assert (= (and d!81481 (not c!62658)) b!539516))

(assert (= (and b!539516 c!62659) b!539522))

(assert (= (and b!539516 (not c!62659)) b!539514))

(assert (= (and d!81481 c!62660) b!539515))

(assert (= (and d!81481 (not c!62660)) b!539517))

(assert (= (and b!539517 res!334824) b!539519))

(assert (= (and b!539519 (not res!334822)) b!539518))

(assert (= (and b!539518 (not res!334823)) b!539521))

(declare-fun m!518503 () Bool)

(assert (=> b!539514 m!518503))

(assert (=> b!539514 m!518503))

(assert (=> b!539514 m!518405))

(declare-fun m!518505 () Bool)

(assert (=> b!539514 m!518505))

(declare-fun m!518507 () Bool)

(assert (=> b!539521 m!518507))

(assert (=> d!81481 m!518401))

(assert (=> d!81481 m!518395))

(assert (=> b!539519 m!518507))

(assert (=> b!539518 m!518507))

(assert (=> b!539357 d!81481))

(declare-fun e!312686 () SeekEntryResult!4863)

(declare-fun b!539523 () Bool)

(assert (=> b!539523 (= e!312686 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!16398 a!3154) j!147) mask!3216) #b00000000000000000000000000000000 mask!3216) (select (arr!16398 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!539524 () Bool)

(declare-fun e!312687 () Bool)

(declare-fun lt!247158 () SeekEntryResult!4863)

(assert (=> b!539524 (= e!312687 (bvsge (x!50617 lt!247158) #b01111111111111111111111111111110))))

(declare-fun b!539525 () Bool)

(declare-fun e!312684 () SeekEntryResult!4863)

(assert (=> b!539525 (= e!312684 e!312686)))

(declare-fun c!62662 () Bool)

(declare-fun lt!247159 () (_ BitVec 64))

(assert (=> b!539525 (= c!62662 (or (= lt!247159 (select (arr!16398 a!3154) j!147)) (= (bvadd lt!247159 lt!247159) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!539526 () Bool)

(declare-fun e!312685 () Bool)

(assert (=> b!539526 (= e!312687 e!312685)))

(declare-fun res!334828 () Bool)

(assert (=> b!539526 (= res!334828 (and (is-Intermediate!4863 lt!247158) (not (undefined!5675 lt!247158)) (bvslt (x!50617 lt!247158) #b01111111111111111111111111111110) (bvsge (x!50617 lt!247158) #b00000000000000000000000000000000) (bvsge (x!50617 lt!247158) #b00000000000000000000000000000000)))))

(assert (=> b!539526 (=> (not res!334828) (not e!312685))))

(declare-fun b!539527 () Bool)

(assert (=> b!539527 (and (bvsge (index!21678 lt!247158) #b00000000000000000000000000000000) (bvslt (index!21678 lt!247158) (size!16762 a!3154)))))

(declare-fun res!334827 () Bool)

(assert (=> b!539527 (= res!334827 (= (select (arr!16398 a!3154) (index!21678 lt!247158)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!312683 () Bool)

(assert (=> b!539527 (=> res!334827 e!312683)))

(declare-fun b!539528 () Bool)

(assert (=> b!539528 (and (bvsge (index!21678 lt!247158) #b00000000000000000000000000000000) (bvslt (index!21678 lt!247158) (size!16762 a!3154)))))

(declare-fun res!334826 () Bool)

(assert (=> b!539528 (= res!334826 (= (select (arr!16398 a!3154) (index!21678 lt!247158)) (select (arr!16398 a!3154) j!147)))))

(assert (=> b!539528 (=> res!334826 e!312683)))

(assert (=> b!539528 (= e!312685 e!312683)))

(declare-fun b!539529 () Bool)

(assert (=> b!539529 (= e!312684 (Intermediate!4863 true (toIndex!0 (select (arr!16398 a!3154) j!147) mask!3216) #b00000000000000000000000000000000))))

(declare-fun b!539530 () Bool)

(assert (=> b!539530 (and (bvsge (index!21678 lt!247158) #b00000000000000000000000000000000) (bvslt (index!21678 lt!247158) (size!16762 a!3154)))))

(assert (=> b!539530 (= e!312683 (= (select (arr!16398 a!3154) (index!21678 lt!247158)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!81499 () Bool)

(assert (=> d!81499 e!312687))

(declare-fun c!62663 () Bool)

(assert (=> d!81499 (= c!62663 (and (is-Intermediate!4863 lt!247158) (undefined!5675 lt!247158)))))

(assert (=> d!81499 (= lt!247158 e!312684)))

(declare-fun c!62661 () Bool)

(assert (=> d!81499 (= c!62661 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!81499 (= lt!247159 (select (arr!16398 a!3154) (toIndex!0 (select (arr!16398 a!3154) j!147) mask!3216)))))

(assert (=> d!81499 (validMask!0 mask!3216)))

(assert (=> d!81499 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16398 a!3154) j!147) mask!3216) (select (arr!16398 a!3154) j!147) a!3154 mask!3216) lt!247158)))

(declare-fun b!539531 () Bool)

(assert (=> b!539531 (= e!312686 (Intermediate!4863 false (toIndex!0 (select (arr!16398 a!3154) j!147) mask!3216) #b00000000000000000000000000000000))))

(assert (= (and d!81499 c!62661) b!539529))

(assert (= (and d!81499 (not c!62661)) b!539525))

(assert (= (and b!539525 c!62662) b!539531))

(assert (= (and b!539525 (not c!62662)) b!539523))

(assert (= (and d!81499 c!62663) b!539524))

(assert (= (and d!81499 (not c!62663)) b!539526))

(assert (= (and b!539526 res!334828) b!539528))

(assert (= (and b!539528 (not res!334826)) b!539527))

(assert (= (and b!539527 (not res!334827)) b!539530))

(assert (=> b!539523 m!518419))

(declare-fun m!518509 () Bool)

(assert (=> b!539523 m!518509))

(assert (=> b!539523 m!518509))

(assert (=> b!539523 m!518405))

(declare-fun m!518511 () Bool)

(assert (=> b!539523 m!518511))

(declare-fun m!518513 () Bool)

(assert (=> b!539530 m!518513))

(assert (=> d!81499 m!518419))

(declare-fun m!518515 () Bool)

(assert (=> d!81499 m!518515))

(assert (=> d!81499 m!518395))

(assert (=> b!539528 m!518513))

(assert (=> b!539527 m!518513))

(assert (=> b!539355 d!81499))

(declare-fun d!81501 () Bool)

(declare-fun lt!247171 () (_ BitVec 32))

(declare-fun lt!247170 () (_ BitVec 32))

(assert (=> d!81501 (= lt!247171 (bvmul (bvxor lt!247170 (bvlshr lt!247170 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!81501 (= lt!247170 ((_ extract 31 0) (bvand (bvxor (select (arr!16398 a!3154) j!147) (bvlshr (select (arr!16398 a!3154) j!147) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!81501 (and (bvsge mask!3216 #b00000000000000000000000000000000) (let ((res!334829 (let ((h!11514 ((_ extract 31 0) (bvand (bvxor (select (arr!16398 a!3154) j!147) (bvlshr (select (arr!16398 a!3154) j!147) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!50625 (bvmul (bvxor h!11514 (bvlshr h!11514 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!50625 (bvlshr x!50625 #b00000000000000000000000000001101)) mask!3216))))) (and (bvslt res!334829 (bvadd mask!3216 #b00000000000000000000000000000001)) (bvsge res!334829 #b00000000000000000000000000000000))))))

(assert (=> d!81501 (= (toIndex!0 (select (arr!16398 a!3154) j!147) mask!3216) (bvand (bvxor lt!247171 (bvlshr lt!247171 #b00000000000000000000000000001101)) mask!3216))))

(assert (=> b!539355 d!81501))

(declare-fun b!539575 () Bool)

(declare-fun e!312722 () Bool)

(declare-fun call!32000 () Bool)

(assert (=> b!539575 (= e!312722 call!32000)))

(declare-fun d!81507 () Bool)

(declare-fun res!334851 () Bool)

(declare-fun e!312721 () Bool)

(assert (=> d!81507 (=> res!334851 e!312721)))

(assert (=> d!81507 (= res!334851 (bvsge #b00000000000000000000000000000000 (size!16762 a!3154)))))

(assert (=> d!81507 (= (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10567) e!312721)))

(declare-fun b!539576 () Bool)

(assert (=> b!539576 (= e!312722 call!32000)))

(declare-fun bm!31997 () Bool)

(declare-fun c!62675 () Bool)

(assert (=> bm!31997 (= call!32000 (arrayNoDuplicates!0 a!3154 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!62675 (Cons!10566 (select (arr!16398 a!3154) #b00000000000000000000000000000000) Nil!10567) Nil!10567)))))

(declare-fun b!539577 () Bool)

(declare-fun e!312723 () Bool)

(declare-fun contains!2800 (List!10570 (_ BitVec 64)) Bool)

(assert (=> b!539577 (= e!312723 (contains!2800 Nil!10567 (select (arr!16398 a!3154) #b00000000000000000000000000000000)))))

(declare-fun b!539578 () Bool)

(declare-fun e!312720 () Bool)

(assert (=> b!539578 (= e!312720 e!312722)))

(assert (=> b!539578 (= c!62675 (validKeyInArray!0 (select (arr!16398 a!3154) #b00000000000000000000000000000000)))))

(declare-fun b!539579 () Bool)

(assert (=> b!539579 (= e!312721 e!312720)))

(declare-fun res!334852 () Bool)

(assert (=> b!539579 (=> (not res!334852) (not e!312720))))

(assert (=> b!539579 (= res!334852 (not e!312723))))

(declare-fun res!334853 () Bool)

(assert (=> b!539579 (=> (not res!334853) (not e!312723))))

(assert (=> b!539579 (= res!334853 (validKeyInArray!0 (select (arr!16398 a!3154) #b00000000000000000000000000000000)))))

(assert (= (and d!81507 (not res!334851)) b!539579))

(assert (= (and b!539579 res!334853) b!539577))

(assert (= (and b!539579 res!334852) b!539578))

(assert (= (and b!539578 c!62675) b!539576))

(assert (= (and b!539578 (not c!62675)) b!539575))

(assert (= (or b!539576 b!539575) bm!31997))

(assert (=> bm!31997 m!518479))

(declare-fun m!518527 () Bool)

(assert (=> bm!31997 m!518527))

(assert (=> b!539577 m!518479))

(assert (=> b!539577 m!518479))

(declare-fun m!518529 () Bool)

(assert (=> b!539577 m!518529))

(assert (=> b!539578 m!518479))

(assert (=> b!539578 m!518479))

(declare-fun m!518531 () Bool)

(assert (=> b!539578 m!518531))

(assert (=> b!539579 m!518479))

(assert (=> b!539579 m!518479))

(assert (=> b!539579 m!518531))

(assert (=> b!539356 d!81507))

(declare-fun bm!32002 () Bool)

(declare-fun call!32005 () Bool)

(assert (=> bm!32002 (= call!32005 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3154 mask!3216))))

(declare-fun b!539602 () Bool)

(declare-fun e!312741 () Bool)

(assert (=> b!539602 (= e!312741 call!32005)))

(declare-fun b!539603 () Bool)

(declare-fun e!312740 () Bool)

(assert (=> b!539603 (= e!312740 e!312741)))

(declare-fun c!62683 () Bool)

(assert (=> b!539603 (= c!62683 (validKeyInArray!0 (select (arr!16398 a!3154) #b00000000000000000000000000000000)))))

(declare-fun d!81515 () Bool)

(declare-fun res!334863 () Bool)

(assert (=> d!81515 (=> res!334863 e!312740)))

(assert (=> d!81515 (= res!334863 (bvsge #b00000000000000000000000000000000 (size!16762 a!3154)))))

(assert (=> d!81515 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216) e!312740)))

(declare-fun b!539604 () Bool)

(declare-fun e!312739 () Bool)

(assert (=> b!539604 (= e!312741 e!312739)))

(declare-fun lt!247193 () (_ BitVec 64))

(assert (=> b!539604 (= lt!247193 (select (arr!16398 a!3154) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!16858 0))(
  ( (Unit!16859) )
))
(declare-fun lt!247194 () Unit!16858)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!34126 (_ BitVec 64) (_ BitVec 32)) Unit!16858)

(assert (=> b!539604 (= lt!247194 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3154 lt!247193 #b00000000000000000000000000000000))))

(assert (=> b!539604 (arrayContainsKey!0 a!3154 lt!247193 #b00000000000000000000000000000000)))

(declare-fun lt!247195 () Unit!16858)

(assert (=> b!539604 (= lt!247195 lt!247194)))

(declare-fun res!334862 () Bool)

(assert (=> b!539604 (= res!334862 (= (seekEntryOrOpen!0 (select (arr!16398 a!3154) #b00000000000000000000000000000000) a!3154 mask!3216) (Found!4863 #b00000000000000000000000000000000)))))

(assert (=> b!539604 (=> (not res!334862) (not e!312739))))

(declare-fun b!539605 () Bool)

(assert (=> b!539605 (= e!312739 call!32005)))

(assert (= (and d!81515 (not res!334863)) b!539603))

(assert (= (and b!539603 c!62683) b!539604))

(assert (= (and b!539603 (not c!62683)) b!539602))

(assert (= (and b!539604 res!334862) b!539605))

(assert (= (or b!539605 b!539602) bm!32002))

(declare-fun m!518547 () Bool)

(assert (=> bm!32002 m!518547))

(assert (=> b!539603 m!518479))

(assert (=> b!539603 m!518479))

(assert (=> b!539603 m!518531))

(assert (=> b!539604 m!518479))

(declare-fun m!518549 () Bool)

(assert (=> b!539604 m!518549))

(declare-fun m!518551 () Bool)

(assert (=> b!539604 m!518551))

(assert (=> b!539604 m!518479))

(declare-fun m!518553 () Bool)

(assert (=> b!539604 m!518553))

(assert (=> b!539361 d!81515))

(declare-fun b!539676 () Bool)

(declare-fun c!62711 () Bool)

(declare-fun lt!247227 () (_ BitVec 64))

(assert (=> b!539676 (= c!62711 (= lt!247227 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!312786 () SeekEntryResult!4863)

(declare-fun e!312787 () SeekEntryResult!4863)

(assert (=> b!539676 (= e!312786 e!312787)))

(declare-fun b!539677 () Bool)

(declare-fun lt!247225 () SeekEntryResult!4863)

(assert (=> b!539677 (= e!312787 (MissingZero!4863 (index!21678 lt!247225)))))

(declare-fun b!539678 () Bool)

(declare-fun e!312788 () SeekEntryResult!4863)

(assert (=> b!539678 (= e!312788 e!312786)))

(assert (=> b!539678 (= lt!247227 (select (arr!16398 a!3154) (index!21678 lt!247225)))))

(declare-fun c!62710 () Bool)

(assert (=> b!539678 (= c!62710 (= lt!247227 k!1998))))

(declare-fun b!539679 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34126 (_ BitVec 32)) SeekEntryResult!4863)

(assert (=> b!539679 (= e!312787 (seekKeyOrZeroReturnVacant!0 (x!50617 lt!247225) (index!21678 lt!247225) (index!21678 lt!247225) k!1998 a!3154 mask!3216))))

(declare-fun b!539680 () Bool)

(assert (=> b!539680 (= e!312786 (Found!4863 (index!21678 lt!247225)))))

(declare-fun d!81519 () Bool)

(declare-fun lt!247226 () SeekEntryResult!4863)

(assert (=> d!81519 (and (or (is-Undefined!4863 lt!247226) (not (is-Found!4863 lt!247226)) (and (bvsge (index!21677 lt!247226) #b00000000000000000000000000000000) (bvslt (index!21677 lt!247226) (size!16762 a!3154)))) (or (is-Undefined!4863 lt!247226) (is-Found!4863 lt!247226) (not (is-MissingZero!4863 lt!247226)) (and (bvsge (index!21676 lt!247226) #b00000000000000000000000000000000) (bvslt (index!21676 lt!247226) (size!16762 a!3154)))) (or (is-Undefined!4863 lt!247226) (is-Found!4863 lt!247226) (is-MissingZero!4863 lt!247226) (not (is-MissingVacant!4863 lt!247226)) (and (bvsge (index!21679 lt!247226) #b00000000000000000000000000000000) (bvslt (index!21679 lt!247226) (size!16762 a!3154)))) (or (is-Undefined!4863 lt!247226) (ite (is-Found!4863 lt!247226) (= (select (arr!16398 a!3154) (index!21677 lt!247226)) k!1998) (ite (is-MissingZero!4863 lt!247226) (= (select (arr!16398 a!3154) (index!21676 lt!247226)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!4863 lt!247226) (= (select (arr!16398 a!3154) (index!21679 lt!247226)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!81519 (= lt!247226 e!312788)))

(declare-fun c!62709 () Bool)

(assert (=> d!81519 (= c!62709 (and (is-Intermediate!4863 lt!247225) (undefined!5675 lt!247225)))))

(assert (=> d!81519 (= lt!247225 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1998 mask!3216) k!1998 a!3154 mask!3216))))

(assert (=> d!81519 (validMask!0 mask!3216)))

(assert (=> d!81519 (= (seekEntryOrOpen!0 k!1998 a!3154 mask!3216) lt!247226)))

(declare-fun b!539681 () Bool)

(assert (=> b!539681 (= e!312788 Undefined!4863)))

(assert (= (and d!81519 c!62709) b!539681))

(assert (= (and d!81519 (not c!62709)) b!539678))

(assert (= (and b!539678 c!62710) b!539680))

(assert (= (and b!539678 (not c!62710)) b!539676))

(assert (= (and b!539676 c!62711) b!539677))

(assert (= (and b!539676 (not c!62711)) b!539679))

(declare-fun m!518597 () Bool)

(assert (=> b!539678 m!518597))

(declare-fun m!518599 () Bool)

(assert (=> b!539679 m!518599))

(declare-fun m!518601 () Bool)

(assert (=> d!81519 m!518601))

(declare-fun m!518603 () Bool)

(assert (=> d!81519 m!518603))

(declare-fun m!518605 () Bool)

(assert (=> d!81519 m!518605))

(declare-fun m!518607 () Bool)

(assert (=> d!81519 m!518607))

(assert (=> d!81519 m!518395))

(declare-fun m!518609 () Bool)

(assert (=> d!81519 m!518609))

(assert (=> d!81519 m!518601))

(assert (=> b!539354 d!81519))

