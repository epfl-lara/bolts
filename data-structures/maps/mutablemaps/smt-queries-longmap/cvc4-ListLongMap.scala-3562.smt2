; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48962 () Bool)

(assert start!48962)

(declare-fun b!539419 () Bool)

(declare-fun res!334781 () Bool)

(declare-fun e!312622 () Bool)

(assert (=> b!539419 (=> (not res!334781) (not e!312622))))

(declare-datatypes ((array!34130 0))(
  ( (array!34131 (arr!16400 (Array (_ BitVec 32) (_ BitVec 64))) (size!16764 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34130)

(declare-datatypes ((List!10572 0))(
  ( (Nil!10569) (Cons!10568 (h!11511 (_ BitVec 64)) (t!16808 List!10572)) )
))
(declare-fun arrayNoDuplicates!0 (array!34130 (_ BitVec 32) List!10572) Bool)

(assert (=> b!539419 (= res!334781 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10569))))

(declare-fun b!539420 () Bool)

(declare-fun e!312625 () Bool)

(declare-fun index!1177 () (_ BitVec 32))

(assert (=> b!539420 (= e!312625 (= (select (arr!16400 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!539421 () Bool)

(declare-fun res!334778 () Bool)

(declare-fun e!312624 () Bool)

(assert (=> b!539421 (=> (not res!334778) (not e!312624))))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!539421 (= res!334778 (validKeyInArray!0 (select (arr!16400 a!3154) j!147)))))

(declare-fun b!539422 () Bool)

(assert (=> b!539422 (= e!312624 e!312622)))

(declare-fun res!334774 () Bool)

(assert (=> b!539422 (=> (not res!334774) (not e!312622))))

(declare-datatypes ((SeekEntryResult!4865 0))(
  ( (MissingZero!4865 (index!21684 (_ BitVec 32))) (Found!4865 (index!21685 (_ BitVec 32))) (Intermediate!4865 (undefined!5677 Bool) (index!21686 (_ BitVec 32)) (x!50619 (_ BitVec 32))) (Undefined!4865) (MissingVacant!4865 (index!21687 (_ BitVec 32))) )
))
(declare-fun lt!247133 () SeekEntryResult!4865)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!539422 (= res!334774 (or (= lt!247133 (MissingZero!4865 i!1153)) (= lt!247133 (MissingVacant!4865 i!1153))))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34130 (_ BitVec 32)) SeekEntryResult!4865)

(assert (=> b!539422 (= lt!247133 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun res!334782 () Bool)

(assert (=> start!48962 (=> (not res!334782) (not e!312624))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48962 (= res!334782 (validMask!0 mask!3216))))

(assert (=> start!48962 e!312624))

(assert (=> start!48962 true))

(declare-fun array_inv!12174 (array!34130) Bool)

(assert (=> start!48962 (array_inv!12174 a!3154)))

(declare-fun b!539423 () Bool)

(declare-fun res!334783 () Bool)

(assert (=> b!539423 (=> (not res!334783) (not e!312624))))

(declare-fun arrayContainsKey!0 (array!34130 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!539423 (= res!334783 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!539424 () Bool)

(declare-fun res!334776 () Bool)

(assert (=> b!539424 (=> (not res!334776) (not e!312625))))

(declare-fun lt!247132 () SeekEntryResult!4865)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34130 (_ BitVec 32)) SeekEntryResult!4865)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!539424 (= res!334776 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16400 a!3154) j!147) mask!3216) (select (arr!16400 a!3154) j!147) a!3154 mask!3216) lt!247132))))

(declare-fun b!539425 () Bool)

(declare-fun res!334775 () Bool)

(assert (=> b!539425 (=> (not res!334775) (not e!312622))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34130 (_ BitVec 32)) Bool)

(assert (=> b!539425 (= res!334775 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!539426 () Bool)

(assert (=> b!539426 (= e!312622 e!312625)))

(declare-fun res!334779 () Bool)

(assert (=> b!539426 (=> (not res!334779) (not e!312625))))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!539426 (= res!334779 (= lt!247132 (Intermediate!4865 false resIndex!32 resX!32)))))

(declare-fun x!1030 () (_ BitVec 32))

(assert (=> b!539426 (= lt!247132 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16400 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!539427 () Bool)

(declare-fun res!334784 () Bool)

(assert (=> b!539427 (=> (not res!334784) (not e!312622))))

(assert (=> b!539427 (= res!334784 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16764 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16764 a!3154)) (= (select (arr!16400 a!3154) resIndex!32) (select (arr!16400 a!3154) j!147))))))

(declare-fun b!539428 () Bool)

(declare-fun res!334777 () Bool)

(assert (=> b!539428 (=> (not res!334777) (not e!312624))))

(assert (=> b!539428 (= res!334777 (and (= (size!16764 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16764 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16764 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!539429 () Bool)

(declare-fun res!334780 () Bool)

(assert (=> b!539429 (=> (not res!334780) (not e!312624))))

(assert (=> b!539429 (= res!334780 (validKeyInArray!0 k!1998))))

(assert (= (and start!48962 res!334782) b!539428))

(assert (= (and b!539428 res!334777) b!539421))

(assert (= (and b!539421 res!334778) b!539429))

(assert (= (and b!539429 res!334780) b!539423))

(assert (= (and b!539423 res!334783) b!539422))

(assert (= (and b!539422 res!334774) b!539425))

(assert (= (and b!539425 res!334775) b!539419))

(assert (= (and b!539419 res!334781) b!539427))

(assert (= (and b!539427 res!334784) b!539426))

(assert (= (and b!539426 res!334779) b!539424))

(assert (= (and b!539424 res!334776) b!539420))

(declare-fun m!518451 () Bool)

(assert (=> b!539422 m!518451))

(declare-fun m!518453 () Bool)

(assert (=> b!539426 m!518453))

(assert (=> b!539426 m!518453))

(declare-fun m!518455 () Bool)

(assert (=> b!539426 m!518455))

(declare-fun m!518457 () Bool)

(assert (=> b!539429 m!518457))

(declare-fun m!518459 () Bool)

(assert (=> b!539425 m!518459))

(declare-fun m!518461 () Bool)

(assert (=> b!539423 m!518461))

(assert (=> b!539421 m!518453))

(assert (=> b!539421 m!518453))

(declare-fun m!518463 () Bool)

(assert (=> b!539421 m!518463))

(declare-fun m!518465 () Bool)

(assert (=> start!48962 m!518465))

(declare-fun m!518467 () Bool)

(assert (=> start!48962 m!518467))

(declare-fun m!518469 () Bool)

(assert (=> b!539419 m!518469))

(declare-fun m!518471 () Bool)

(assert (=> b!539420 m!518471))

(declare-fun m!518473 () Bool)

(assert (=> b!539427 m!518473))

(assert (=> b!539427 m!518453))

(assert (=> b!539424 m!518453))

(assert (=> b!539424 m!518453))

(declare-fun m!518475 () Bool)

(assert (=> b!539424 m!518475))

(assert (=> b!539424 m!518475))

(assert (=> b!539424 m!518453))

(declare-fun m!518477 () Bool)

(assert (=> b!539424 m!518477))

(push 1)

(assert (not b!539426))

(assert (not b!539425))

(assert (not b!539419))

(assert (not b!539429))

(assert (not b!539421))

(assert (not start!48962))

(assert (not b!539422))

(assert (not b!539423))

(assert (not b!539424))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!539505 () Bool)

(declare-fun lt!247154 () SeekEntryResult!4865)

(assert (=> b!539505 (and (bvsge (index!21686 lt!247154) #b00000000000000000000000000000000) (bvslt (index!21686 lt!247154) (size!16764 a!3154)))))

(declare-fun res!334820 () Bool)

(assert (=> b!539505 (= res!334820 (= (select (arr!16400 a!3154) (index!21686 lt!247154)) (select (arr!16400 a!3154) j!147)))))

(declare-fun e!312675 () Bool)

(assert (=> b!539505 (=> res!334820 e!312675)))

(declare-fun e!312674 () Bool)

(assert (=> b!539505 (= e!312674 e!312675)))

(declare-fun b!539506 () Bool)

(declare-fun e!312676 () SeekEntryResult!4865)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!539506 (= e!312676 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!16400 a!3154) j!147) mask!3216) #b00000000000000000000000000000000 mask!3216) (select (arr!16400 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!539508 () Bool)

(declare-fun e!312677 () Bool)

(assert (=> b!539508 (= e!312677 (bvsge (x!50619 lt!247154) #b01111111111111111111111111111110))))

(declare-fun b!539509 () Bool)

(assert (=> b!539509 (= e!312677 e!312674)))

(declare-fun res!334819 () Bool)

(assert (=> b!539509 (= res!334819 (and (is-Intermediate!4865 lt!247154) (not (undefined!5677 lt!247154)) (bvslt (x!50619 lt!247154) #b01111111111111111111111111111110) (bvsge (x!50619 lt!247154) #b00000000000000000000000000000000) (bvsge (x!50619 lt!247154) #b00000000000000000000000000000000)))))

(assert (=> b!539509 (=> (not res!334819) (not e!312674))))

(declare-fun b!539510 () Bool)

(assert (=> b!539510 (= e!312676 (Intermediate!4865 false (toIndex!0 (select (arr!16400 a!3154) j!147) mask!3216) #b00000000000000000000000000000000))))

(declare-fun b!539511 () Bool)

(assert (=> b!539511 (and (bvsge (index!21686 lt!247154) #b00000000000000000000000000000000) (bvslt (index!21686 lt!247154) (size!16764 a!3154)))))

(declare-fun res!334821 () Bool)

(assert (=> b!539511 (= res!334821 (= (select (arr!16400 a!3154) (index!21686 lt!247154)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!539511 (=> res!334821 e!312675)))

(declare-fun b!539512 () Bool)

(assert (=> b!539512 (and (bvsge (index!21686 lt!247154) #b00000000000000000000000000000000) (bvslt (index!21686 lt!247154) (size!16764 a!3154)))))

(assert (=> b!539512 (= e!312675 (= (select (arr!16400 a!3154) (index!21686 lt!247154)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!539513 () Bool)

(declare-fun e!312673 () SeekEntryResult!4865)

(assert (=> b!539513 (= e!312673 e!312676)))

(declare-fun lt!247155 () (_ BitVec 64))

(declare-fun c!62656 () Bool)

(assert (=> b!539513 (= c!62656 (or (= lt!247155 (select (arr!16400 a!3154) j!147)) (= (bvadd lt!247155 lt!247155) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!539507 () Bool)

(assert (=> b!539507 (= e!312673 (Intermediate!4865 true (toIndex!0 (select (arr!16400 a!3154) j!147) mask!3216) #b00000000000000000000000000000000))))

(declare-fun d!81483 () Bool)

(assert (=> d!81483 e!312677))

(declare-fun c!62655 () Bool)

(assert (=> d!81483 (= c!62655 (and (is-Intermediate!4865 lt!247154) (undefined!5677 lt!247154)))))

(assert (=> d!81483 (= lt!247154 e!312673)))

(declare-fun c!62657 () Bool)

(assert (=> d!81483 (= c!62657 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!81483 (= lt!247155 (select (arr!16400 a!3154) (toIndex!0 (select (arr!16400 a!3154) j!147) mask!3216)))))

(assert (=> d!81483 (validMask!0 mask!3216)))

(assert (=> d!81483 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16400 a!3154) j!147) mask!3216) (select (arr!16400 a!3154) j!147) a!3154 mask!3216) lt!247154)))

(assert (= (and d!81483 c!62657) b!539507))

(assert (= (and d!81483 (not c!62657)) b!539513))

(assert (= (and b!539513 c!62656) b!539510))

(assert (= (and b!539513 (not c!62656)) b!539506))

(assert (= (and d!81483 c!62655) b!539508))

(assert (= (and d!81483 (not c!62655)) b!539509))

(assert (= (and b!539509 res!334819) b!539505))

(assert (= (and b!539505 (not res!334820)) b!539511))

(assert (= (and b!539511 (not res!334821)) b!539512))

(declare-fun m!518495 () Bool)

(assert (=> b!539505 m!518495))

(assert (=> b!539506 m!518475))

(declare-fun m!518497 () Bool)

(assert (=> b!539506 m!518497))

(assert (=> b!539506 m!518497))

(assert (=> b!539506 m!518453))

(declare-fun m!518499 () Bool)

(assert (=> b!539506 m!518499))

(assert (=> d!81483 m!518475))

(declare-fun m!518501 () Bool)

(assert (=> d!81483 m!518501))

(assert (=> d!81483 m!518465))

(assert (=> b!539512 m!518495))

(assert (=> b!539511 m!518495))

(assert (=> b!539424 d!81483))

(declare-fun d!81495 () Bool)

(declare-fun lt!247165 () (_ BitVec 32))

(declare-fun lt!247164 () (_ BitVec 32))

(assert (=> d!81495 (= lt!247165 (bvmul (bvxor lt!247164 (bvlshr lt!247164 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!81495 (= lt!247164 ((_ extract 31 0) (bvand (bvxor (select (arr!16400 a!3154) j!147) (bvlshr (select (arr!16400 a!3154) j!147) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!81495 (and (bvsge mask!3216 #b00000000000000000000000000000000) (let ((res!334825 (let ((h!11513 ((_ extract 31 0) (bvand (bvxor (select (arr!16400 a!3154) j!147) (bvlshr (select (arr!16400 a!3154) j!147) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!50624 (bvmul (bvxor h!11513 (bvlshr h!11513 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!50624 (bvlshr x!50624 #b00000000000000000000000000001101)) mask!3216))))) (and (bvslt res!334825 (bvadd mask!3216 #b00000000000000000000000000000001)) (bvsge res!334825 #b00000000000000000000000000000000))))))

(assert (=> d!81495 (= (toIndex!0 (select (arr!16400 a!3154) j!147) mask!3216) (bvand (bvxor lt!247165 (bvlshr lt!247165 #b00000000000000000000000000001101)) mask!3216))))

(assert (=> b!539424 d!81495))

(declare-fun d!81503 () Bool)

(assert (=> d!81503 (= (validKeyInArray!0 k!1998) (and (not (= k!1998 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1998 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!539429 d!81503))

(declare-fun b!539548 () Bool)

(declare-fun e!312704 () Bool)

(declare-fun call!31997 () Bool)

(assert (=> b!539548 (= e!312704 call!31997)))

(declare-fun b!539549 () Bool)

(assert (=> b!539549 (= e!312704 call!31997)))

(declare-fun b!539550 () Bool)

(declare-fun e!312702 () Bool)

(assert (=> b!539550 (= e!312702 e!312704)))

(declare-fun c!62666 () Bool)

(assert (=> b!539550 (= c!62666 (validKeyInArray!0 (select (arr!16400 a!3154) #b00000000000000000000000000000000)))))

(declare-fun bm!31994 () Bool)

(assert (=> bm!31994 (= call!31997 (arrayNoDuplicates!0 a!3154 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!62666 (Cons!10568 (select (arr!16400 a!3154) #b00000000000000000000000000000000) Nil!10569) Nil!10569)))))

(declare-fun b!539551 () Bool)

(declare-fun e!312703 () Bool)

(declare-fun contains!2799 (List!10572 (_ BitVec 64)) Bool)

(assert (=> b!539551 (= e!312703 (contains!2799 Nil!10569 (select (arr!16400 a!3154) #b00000000000000000000000000000000)))))

(declare-fun b!539552 () Bool)

(declare-fun e!312705 () Bool)

(assert (=> b!539552 (= e!312705 e!312702)))

(declare-fun res!334844 () Bool)

(assert (=> b!539552 (=> (not res!334844) (not e!312702))))

(assert (=> b!539552 (= res!334844 (not e!312703))))

(declare-fun res!334842 () Bool)

(assert (=> b!539552 (=> (not res!334842) (not e!312703))))

(assert (=> b!539552 (= res!334842 (validKeyInArray!0 (select (arr!16400 a!3154) #b00000000000000000000000000000000)))))

(declare-fun d!81505 () Bool)

(declare-fun res!334843 () Bool)

(assert (=> d!81505 (=> res!334843 e!312705)))

(assert (=> d!81505 (= res!334843 (bvsge #b00000000000000000000000000000000 (size!16764 a!3154)))))

(assert (=> d!81505 (= (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10569) e!312705)))

(assert (= (and d!81505 (not res!334843)) b!539552))

(assert (= (and b!539552 res!334842) b!539551))

(assert (= (and b!539552 res!334844) b!539550))

(assert (= (and b!539550 c!62666) b!539549))

(assert (= (and b!539550 (not c!62666)) b!539548))

(assert (= (or b!539549 b!539548) bm!31994))

(declare-fun m!518517 () Bool)

(assert (=> b!539550 m!518517))

(assert (=> b!539550 m!518517))

(declare-fun m!518519 () Bool)

(assert (=> b!539550 m!518519))

(assert (=> bm!31994 m!518517))

(declare-fun m!518521 () Bool)

(assert (=> bm!31994 m!518521))

(assert (=> b!539551 m!518517))

(assert (=> b!539551 m!518517))

(declare-fun m!518523 () Bool)

(assert (=> b!539551 m!518523))

(assert (=> b!539552 m!518517))

(assert (=> b!539552 m!518517))

(assert (=> b!539552 m!518519))

(assert (=> b!539419 d!81505))

(declare-fun d!81509 () Bool)

(declare-fun res!334849 () Bool)

(declare-fun e!312714 () Bool)

(assert (=> d!81509 (=> res!334849 e!312714)))

(assert (=> d!81509 (= res!334849 (= (select (arr!16400 a!3154) #b00000000000000000000000000000000) k!1998))))

(assert (=> d!81509 (= (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000) e!312714)))

(declare-fun b!539565 () Bool)

(declare-fun e!312715 () Bool)

(assert (=> b!539565 (= e!312714 e!312715)))

(declare-fun res!334850 () Bool)

(assert (=> b!539565 (=> (not res!334850) (not e!312715))))

(assert (=> b!539565 (= res!334850 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16764 a!3154)))))

(declare-fun b!539566 () Bool)

(assert (=> b!539566 (= e!312715 (arrayContainsKey!0 a!3154 k!1998 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!81509 (not res!334849)) b!539565))

(assert (= (and b!539565 res!334850) b!539566))

(assert (=> d!81509 m!518517))

(declare-fun m!518525 () Bool)

(assert (=> b!539566 m!518525))

(assert (=> b!539423 d!81509))

(declare-fun d!81511 () Bool)

(assert (=> d!81511 (= (validKeyInArray!0 (select (arr!16400 a!3154) j!147)) (and (not (= (select (arr!16400 a!3154) j!147) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16400 a!3154) j!147) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!539421 d!81511))

(declare-fun lt!247207 () SeekEntryResult!4865)

(declare-fun e!312759 () SeekEntryResult!4865)

(declare-fun b!539632 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34130 (_ BitVec 32)) SeekEntryResult!4865)

(assert (=> b!539632 (= e!312759 (seekKeyOrZeroReturnVacant!0 (x!50619 lt!247207) (index!21686 lt!247207) (index!21686 lt!247207) k!1998 a!3154 mask!3216))))

(declare-fun b!539633 () Bool)

(assert (=> b!539633 (= e!312759 (MissingZero!4865 (index!21686 lt!247207)))))

(declare-fun b!539634 () Bool)

(declare-fun e!312760 () SeekEntryResult!4865)

(assert (=> b!539634 (= e!312760 Undefined!4865)))

(declare-fun b!539635 () Bool)

(declare-fun c!62694 () Bool)

(declare-fun lt!247206 () (_ BitVec 64))

(assert (=> b!539635 (= c!62694 (= lt!247206 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!312761 () SeekEntryResult!4865)

(assert (=> b!539635 (= e!312761 e!312759)))

(declare-fun b!539636 () Bool)

(assert (=> b!539636 (= e!312761 (Found!4865 (index!21686 lt!247207)))))

(declare-fun d!81513 () Bool)

(declare-fun lt!247205 () SeekEntryResult!4865)

(assert (=> d!81513 (and (or (is-Undefined!4865 lt!247205) (not (is-Found!4865 lt!247205)) (and (bvsge (index!21685 lt!247205) #b00000000000000000000000000000000) (bvslt (index!21685 lt!247205) (size!16764 a!3154)))) (or (is-Undefined!4865 lt!247205) (is-Found!4865 lt!247205) (not (is-MissingZero!4865 lt!247205)) (and (bvsge (index!21684 lt!247205) #b00000000000000000000000000000000) (bvslt (index!21684 lt!247205) (size!16764 a!3154)))) (or (is-Undefined!4865 lt!247205) (is-Found!4865 lt!247205) (is-MissingZero!4865 lt!247205) (not (is-MissingVacant!4865 lt!247205)) (and (bvsge (index!21687 lt!247205) #b00000000000000000000000000000000) (bvslt (index!21687 lt!247205) (size!16764 a!3154)))) (or (is-Undefined!4865 lt!247205) (ite (is-Found!4865 lt!247205) (= (select (arr!16400 a!3154) (index!21685 lt!247205)) k!1998) (ite (is-MissingZero!4865 lt!247205) (= (select (arr!16400 a!3154) (index!21684 lt!247205)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!4865 lt!247205) (= (select (arr!16400 a!3154) (index!21687 lt!247205)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!81513 (= lt!247205 e!312760)))

(declare-fun c!62693 () Bool)

(assert (=> d!81513 (= c!62693 (and (is-Intermediate!4865 lt!247207) (undefined!5677 lt!247207)))))

(assert (=> d!81513 (= lt!247207 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1998 mask!3216) k!1998 a!3154 mask!3216))))

(assert (=> d!81513 (validMask!0 mask!3216)))

(assert (=> d!81513 (= (seekEntryOrOpen!0 k!1998 a!3154 mask!3216) lt!247205)))

(declare-fun b!539637 () Bool)

(assert (=> b!539637 (= e!312760 e!312761)))

(assert (=> b!539637 (= lt!247206 (select (arr!16400 a!3154) (index!21686 lt!247207)))))

(declare-fun c!62695 () Bool)

(assert (=> b!539637 (= c!62695 (= lt!247206 k!1998))))

(assert (= (and d!81513 c!62693) b!539634))

(assert (= (and d!81513 (not c!62693)) b!539637))

(assert (= (and b!539637 c!62695) b!539636))

(assert (= (and b!539637 (not c!62695)) b!539635))

(assert (= (and b!539635 c!62694) b!539633))

(assert (= (and b!539635 (not c!62694)) b!539632))

(declare-fun m!518565 () Bool)

(assert (=> b!539632 m!518565))

(declare-fun m!518567 () Bool)

(assert (=> d!81513 m!518567))

(declare-fun m!518569 () Bool)

(assert (=> d!81513 m!518569))

(declare-fun m!518571 () Bool)

(assert (=> d!81513 m!518571))

(declare-fun m!518573 () Bool)

(assert (=> d!81513 m!518573))

(assert (=> d!81513 m!518571))

(declare-fun m!518575 () Bool)

(assert (=> d!81513 m!518575))

(assert (=> d!81513 m!518465))

(declare-fun m!518577 () Bool)

(assert (=> b!539637 m!518577))

(assert (=> b!539422 d!81513))

(declare-fun bm!32009 () Bool)

(declare-fun call!32012 () Bool)

(assert (=> bm!32009 (= call!32012 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3154 mask!3216))))

(declare-fun b!539660 () Bool)

(declare-fun e!312778 () Bool)

(declare-fun e!312779 () Bool)

(assert (=> b!539660 (= e!312778 e!312779)))

(declare-fun c!62702 () Bool)

(assert (=> b!539660 (= c!62702 (validKeyInArray!0 (select (arr!16400 a!3154) #b00000000000000000000000000000000)))))

(declare-fun b!539661 () Bool)

(declare-fun e!312777 () Bool)

(assert (=> b!539661 (= e!312777 call!32012)))

(declare-fun b!539662 () Bool)

(assert (=> b!539662 (= e!312779 call!32012)))

(declare-fun b!539663 () Bool)

(assert (=> b!539663 (= e!312779 e!312777)))

(declare-fun lt!247216 () (_ BitVec 64))

(assert (=> b!539663 (= lt!247216 (select (arr!16400 a!3154) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!16860 0))(
  ( (Unit!16861) )
))
(declare-fun lt!247218 () Unit!16860)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!34130 (_ BitVec 64) (_ BitVec 32)) Unit!16860)

(assert (=> b!539663 (= lt!247218 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3154 lt!247216 #b00000000000000000000000000000000))))

(assert (=> b!539663 (arrayContainsKey!0 a!3154 lt!247216 #b00000000000000000000000000000000)))

(declare-fun lt!247217 () Unit!16860)

(assert (=> b!539663 (= lt!247217 lt!247218)))

(declare-fun res!334883 () Bool)

(assert (=> b!539663 (= res!334883 (= (seekEntryOrOpen!0 (select (arr!16400 a!3154) #b00000000000000000000000000000000) a!3154 mask!3216) (Found!4865 #b00000000000000000000000000000000)))))

(assert (=> b!539663 (=> (not res!334883) (not e!312777))))

(declare-fun d!81523 () Bool)

(declare-fun res!334882 () Bool)

(assert (=> d!81523 (=> res!334882 e!312778)))

(assert (=> d!81523 (= res!334882 (bvsge #b00000000000000000000000000000000 (size!16764 a!3154)))))

(assert (=> d!81523 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216) e!312778)))

(assert (= (and d!81523 (not res!334882)) b!539660))

(assert (= (and b!539660 c!62702) b!539663))

(assert (= (and b!539660 (not c!62702)) b!539662))

(assert (= (and b!539663 res!334883) b!539661))

(assert (= (or b!539661 b!539662) bm!32009))

(declare-fun m!518589 () Bool)

(assert (=> bm!32009 m!518589))

(assert (=> b!539660 m!518517))

(assert (=> b!539660 m!518517))

