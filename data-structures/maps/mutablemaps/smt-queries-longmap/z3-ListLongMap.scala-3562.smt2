; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48960 () Bool)

(assert start!48960)

(declare-fun b!539386 () Bool)

(declare-fun e!312611 () Bool)

(declare-fun e!312610 () Bool)

(assert (=> b!539386 (= e!312611 e!312610)))

(declare-fun res!334743 () Bool)

(assert (=> b!539386 (=> (not res!334743) (not e!312610))))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4864 0))(
  ( (MissingZero!4864 (index!21680 (_ BitVec 32))) (Found!4864 (index!21681 (_ BitVec 32))) (Intermediate!4864 (undefined!5676 Bool) (index!21682 (_ BitVec 32)) (x!50618 (_ BitVec 32))) (Undefined!4864) (MissingVacant!4864 (index!21683 (_ BitVec 32))) )
))
(declare-fun lt!247126 () SeekEntryResult!4864)

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!539386 (= res!334743 (= lt!247126 (Intermediate!4864 false resIndex!32 resX!32)))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-datatypes ((array!34128 0))(
  ( (array!34129 (arr!16399 (Array (_ BitVec 32) (_ BitVec 64))) (size!16763 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34128)

(declare-fun j!147 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34128 (_ BitVec 32)) SeekEntryResult!4864)

(assert (=> b!539386 (= lt!247126 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16399 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!539387 () Bool)

(declare-fun res!334747 () Bool)

(declare-fun e!312612 () Bool)

(assert (=> b!539387 (=> (not res!334747) (not e!312612))))

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34128 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!539387 (= res!334747 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!539388 () Bool)

(assert (=> b!539388 (= e!312610 (= (select (arr!16399 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!539389 () Bool)

(declare-fun res!334745 () Bool)

(assert (=> b!539389 (=> (not res!334745) (not e!312611))))

(assert (=> b!539389 (= res!334745 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16763 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16763 a!3154)) (= (select (arr!16399 a!3154) resIndex!32) (select (arr!16399 a!3154) j!147))))))

(declare-fun res!334744 () Bool)

(assert (=> start!48960 (=> (not res!334744) (not e!312612))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48960 (= res!334744 (validMask!0 mask!3216))))

(assert (=> start!48960 e!312612))

(assert (=> start!48960 true))

(declare-fun array_inv!12173 (array!34128) Bool)

(assert (=> start!48960 (array_inv!12173 a!3154)))

(declare-fun b!539390 () Bool)

(declare-fun res!334751 () Bool)

(assert (=> b!539390 (=> (not res!334751) (not e!312612))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!539390 (= res!334751 (validKeyInArray!0 (select (arr!16399 a!3154) j!147)))))

(declare-fun b!539391 () Bool)

(declare-fun res!334750 () Bool)

(assert (=> b!539391 (=> (not res!334750) (not e!312611))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34128 (_ BitVec 32)) Bool)

(assert (=> b!539391 (= res!334750 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!539392 () Bool)

(declare-fun res!334748 () Bool)

(assert (=> b!539392 (=> (not res!334748) (not e!312612))))

(assert (=> b!539392 (= res!334748 (validKeyInArray!0 k0!1998))))

(declare-fun b!539393 () Bool)

(assert (=> b!539393 (= e!312612 e!312611)))

(declare-fun res!334741 () Bool)

(assert (=> b!539393 (=> (not res!334741) (not e!312611))))

(declare-fun lt!247127 () SeekEntryResult!4864)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!539393 (= res!334741 (or (= lt!247127 (MissingZero!4864 i!1153)) (= lt!247127 (MissingVacant!4864 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34128 (_ BitVec 32)) SeekEntryResult!4864)

(assert (=> b!539393 (= lt!247127 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun b!539394 () Bool)

(declare-fun res!334742 () Bool)

(assert (=> b!539394 (=> (not res!334742) (not e!312610))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!539394 (= res!334742 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16399 a!3154) j!147) mask!3216) (select (arr!16399 a!3154) j!147) a!3154 mask!3216) lt!247126))))

(declare-fun b!539395 () Bool)

(declare-fun res!334749 () Bool)

(assert (=> b!539395 (=> (not res!334749) (not e!312612))))

(assert (=> b!539395 (= res!334749 (and (= (size!16763 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16763 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16763 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!539396 () Bool)

(declare-fun res!334746 () Bool)

(assert (=> b!539396 (=> (not res!334746) (not e!312611))))

(declare-datatypes ((List!10571 0))(
  ( (Nil!10568) (Cons!10567 (h!11510 (_ BitVec 64)) (t!16807 List!10571)) )
))
(declare-fun arrayNoDuplicates!0 (array!34128 (_ BitVec 32) List!10571) Bool)

(assert (=> b!539396 (= res!334746 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10568))))

(assert (= (and start!48960 res!334744) b!539395))

(assert (= (and b!539395 res!334749) b!539390))

(assert (= (and b!539390 res!334751) b!539392))

(assert (= (and b!539392 res!334748) b!539387))

(assert (= (and b!539387 res!334747) b!539393))

(assert (= (and b!539393 res!334741) b!539391))

(assert (= (and b!539391 res!334750) b!539396))

(assert (= (and b!539396 res!334746) b!539389))

(assert (= (and b!539389 res!334745) b!539386))

(assert (= (and b!539386 res!334743) b!539394))

(assert (= (and b!539394 res!334742) b!539388))

(declare-fun m!518423 () Bool)

(assert (=> b!539393 m!518423))

(declare-fun m!518425 () Bool)

(assert (=> b!539392 m!518425))

(declare-fun m!518427 () Bool)

(assert (=> start!48960 m!518427))

(declare-fun m!518429 () Bool)

(assert (=> start!48960 m!518429))

(declare-fun m!518431 () Bool)

(assert (=> b!539391 m!518431))

(declare-fun m!518433 () Bool)

(assert (=> b!539390 m!518433))

(assert (=> b!539390 m!518433))

(declare-fun m!518435 () Bool)

(assert (=> b!539390 m!518435))

(declare-fun m!518437 () Bool)

(assert (=> b!539396 m!518437))

(assert (=> b!539386 m!518433))

(assert (=> b!539386 m!518433))

(declare-fun m!518439 () Bool)

(assert (=> b!539386 m!518439))

(assert (=> b!539394 m!518433))

(assert (=> b!539394 m!518433))

(declare-fun m!518441 () Bool)

(assert (=> b!539394 m!518441))

(assert (=> b!539394 m!518441))

(assert (=> b!539394 m!518433))

(declare-fun m!518443 () Bool)

(assert (=> b!539394 m!518443))

(declare-fun m!518445 () Bool)

(assert (=> b!539388 m!518445))

(declare-fun m!518447 () Bool)

(assert (=> b!539387 m!518447))

(declare-fun m!518449 () Bool)

(assert (=> b!539389 m!518449))

(assert (=> b!539389 m!518433))

(check-sat (not b!539391) (not b!539396) (not b!539386) (not b!539387) (not b!539393) (not b!539394) (not b!539390) (not start!48960) (not b!539392))
(check-sat)
(get-model)

(declare-fun b!539454 () Bool)

(declare-fun e!312646 () SeekEntryResult!4864)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!539454 (= e!312646 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!16399 a!3154) j!147) mask!3216) #b00000000000000000000000000000000 mask!3216) (select (arr!16399 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!539455 () Bool)

(declare-fun e!312642 () Bool)

(declare-fun lt!247139 () SeekEntryResult!4864)

(assert (=> b!539455 (= e!312642 (bvsge (x!50618 lt!247139) #b01111111111111111111111111111110))))

(declare-fun e!312643 () SeekEntryResult!4864)

(declare-fun b!539456 () Bool)

(assert (=> b!539456 (= e!312643 (Intermediate!4864 true (toIndex!0 (select (arr!16399 a!3154) j!147) mask!3216) #b00000000000000000000000000000000))))

(declare-fun d!81473 () Bool)

(assert (=> d!81473 e!312642))

(declare-fun c!62641 () Bool)

(get-info :version)

(assert (=> d!81473 (= c!62641 (and ((_ is Intermediate!4864) lt!247139) (undefined!5676 lt!247139)))))

(assert (=> d!81473 (= lt!247139 e!312643)))

(declare-fun c!62640 () Bool)

(assert (=> d!81473 (= c!62640 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!247138 () (_ BitVec 64))

(assert (=> d!81473 (= lt!247138 (select (arr!16399 a!3154) (toIndex!0 (select (arr!16399 a!3154) j!147) mask!3216)))))

(assert (=> d!81473 (validMask!0 mask!3216)))

(assert (=> d!81473 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16399 a!3154) j!147) mask!3216) (select (arr!16399 a!3154) j!147) a!3154 mask!3216) lt!247139)))

(declare-fun b!539457 () Bool)

(assert (=> b!539457 (= e!312646 (Intermediate!4864 false (toIndex!0 (select (arr!16399 a!3154) j!147) mask!3216) #b00000000000000000000000000000000))))

(declare-fun b!539458 () Bool)

(assert (=> b!539458 (= e!312643 e!312646)))

(declare-fun c!62642 () Bool)

(assert (=> b!539458 (= c!62642 (or (= lt!247138 (select (arr!16399 a!3154) j!147)) (= (bvadd lt!247138 lt!247138) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!539459 () Bool)

(declare-fun e!312644 () Bool)

(assert (=> b!539459 (= e!312642 e!312644)))

(declare-fun res!334798 () Bool)

(assert (=> b!539459 (= res!334798 (and ((_ is Intermediate!4864) lt!247139) (not (undefined!5676 lt!247139)) (bvslt (x!50618 lt!247139) #b01111111111111111111111111111110) (bvsge (x!50618 lt!247139) #b00000000000000000000000000000000) (bvsge (x!50618 lt!247139) #b00000000000000000000000000000000)))))

(assert (=> b!539459 (=> (not res!334798) (not e!312644))))

(declare-fun b!539460 () Bool)

(assert (=> b!539460 (and (bvsge (index!21682 lt!247139) #b00000000000000000000000000000000) (bvslt (index!21682 lt!247139) (size!16763 a!3154)))))

(declare-fun e!312645 () Bool)

(assert (=> b!539460 (= e!312645 (= (select (arr!16399 a!3154) (index!21682 lt!247139)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!539461 () Bool)

(assert (=> b!539461 (and (bvsge (index!21682 lt!247139) #b00000000000000000000000000000000) (bvslt (index!21682 lt!247139) (size!16763 a!3154)))))

(declare-fun res!334797 () Bool)

(assert (=> b!539461 (= res!334797 (= (select (arr!16399 a!3154) (index!21682 lt!247139)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!539461 (=> res!334797 e!312645)))

(declare-fun b!539462 () Bool)

(assert (=> b!539462 (and (bvsge (index!21682 lt!247139) #b00000000000000000000000000000000) (bvslt (index!21682 lt!247139) (size!16763 a!3154)))))

(declare-fun res!334799 () Bool)

(assert (=> b!539462 (= res!334799 (= (select (arr!16399 a!3154) (index!21682 lt!247139)) (select (arr!16399 a!3154) j!147)))))

(assert (=> b!539462 (=> res!334799 e!312645)))

(assert (=> b!539462 (= e!312644 e!312645)))

(assert (= (and d!81473 c!62640) b!539456))

(assert (= (and d!81473 (not c!62640)) b!539458))

(assert (= (and b!539458 c!62642) b!539457))

(assert (= (and b!539458 (not c!62642)) b!539454))

(assert (= (and d!81473 c!62641) b!539455))

(assert (= (and d!81473 (not c!62641)) b!539459))

(assert (= (and b!539459 res!334798) b!539462))

(assert (= (and b!539462 (not res!334799)) b!539461))

(assert (= (and b!539461 (not res!334797)) b!539460))

(declare-fun m!518483 () Bool)

(assert (=> b!539462 m!518483))

(assert (=> b!539454 m!518441))

(declare-fun m!518485 () Bool)

(assert (=> b!539454 m!518485))

(assert (=> b!539454 m!518485))

(assert (=> b!539454 m!518433))

(declare-fun m!518487 () Bool)

(assert (=> b!539454 m!518487))

(assert (=> b!539460 m!518483))

(assert (=> b!539461 m!518483))

(assert (=> d!81473 m!518441))

(declare-fun m!518489 () Bool)

(assert (=> d!81473 m!518489))

(assert (=> d!81473 m!518427))

(assert (=> b!539394 d!81473))

(declare-fun d!81485 () Bool)

(declare-fun lt!247145 () (_ BitVec 32))

(declare-fun lt!247144 () (_ BitVec 32))

(assert (=> d!81485 (= lt!247145 (bvmul (bvxor lt!247144 (bvlshr lt!247144 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!81485 (= lt!247144 ((_ extract 31 0) (bvand (bvxor (select (arr!16399 a!3154) j!147) (bvlshr (select (arr!16399 a!3154) j!147) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!81485 (and (bvsge mask!3216 #b00000000000000000000000000000000) (let ((res!334800 (let ((h!11512 ((_ extract 31 0) (bvand (bvxor (select (arr!16399 a!3154) j!147) (bvlshr (select (arr!16399 a!3154) j!147) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!50621 (bvmul (bvxor h!11512 (bvlshr h!11512 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!50621 (bvlshr x!50621 #b00000000000000000000000000001101)) mask!3216))))) (and (bvslt res!334800 (bvadd mask!3216 #b00000000000000000000000000000001)) (bvsge res!334800 #b00000000000000000000000000000000))))))

(assert (=> d!81485 (= (toIndex!0 (select (arr!16399 a!3154) j!147) mask!3216) (bvand (bvxor lt!247145 (bvlshr lt!247145 #b00000000000000000000000000001101)) mask!3216))))

(assert (=> b!539394 d!81485))

(declare-fun d!81487 () Bool)

(declare-fun res!334805 () Bool)

(declare-fun e!312651 () Bool)

(assert (=> d!81487 (=> res!334805 e!312651)))

(assert (=> d!81487 (= res!334805 (= (select (arr!16399 a!3154) #b00000000000000000000000000000000) k0!1998))))

(assert (=> d!81487 (= (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000) e!312651)))

(declare-fun b!539467 () Bool)

(declare-fun e!312652 () Bool)

(assert (=> b!539467 (= e!312651 e!312652)))

(declare-fun res!334806 () Bool)

(assert (=> b!539467 (=> (not res!334806) (not e!312652))))

(assert (=> b!539467 (= res!334806 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16763 a!3154)))))

(declare-fun b!539468 () Bool)

(assert (=> b!539468 (= e!312652 (arrayContainsKey!0 a!3154 k0!1998 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!81487 (not res!334805)) b!539467))

(assert (= (and b!539467 res!334806) b!539468))

(declare-fun m!518491 () Bool)

(assert (=> d!81487 m!518491))

(declare-fun m!518493 () Bool)

(assert (=> b!539468 m!518493))

(assert (=> b!539387 d!81487))

(declare-fun d!81489 () Bool)

(assert (=> d!81489 (= (validKeyInArray!0 k0!1998) (and (not (= k0!1998 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1998 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!539392 d!81489))

(declare-fun d!81491 () Bool)

(assert (=> d!81491 (= (validMask!0 mask!3216) (and (or (= mask!3216 #b00000000000000000000000000000111) (= mask!3216 #b00000000000000000000000000001111) (= mask!3216 #b00000000000000000000000000011111) (= mask!3216 #b00000000000000000000000000111111) (= mask!3216 #b00000000000000000000000001111111) (= mask!3216 #b00000000000000000000000011111111) (= mask!3216 #b00000000000000000000000111111111) (= mask!3216 #b00000000000000000000001111111111) (= mask!3216 #b00000000000000000000011111111111) (= mask!3216 #b00000000000000000000111111111111) (= mask!3216 #b00000000000000000001111111111111) (= mask!3216 #b00000000000000000011111111111111) (= mask!3216 #b00000000000000000111111111111111) (= mask!3216 #b00000000000000001111111111111111) (= mask!3216 #b00000000000000011111111111111111) (= mask!3216 #b00000000000000111111111111111111) (= mask!3216 #b00000000000001111111111111111111) (= mask!3216 #b00000000000011111111111111111111) (= mask!3216 #b00000000000111111111111111111111) (= mask!3216 #b00000000001111111111111111111111) (= mask!3216 #b00000000011111111111111111111111) (= mask!3216 #b00000000111111111111111111111111) (= mask!3216 #b00000001111111111111111111111111) (= mask!3216 #b00000011111111111111111111111111) (= mask!3216 #b00000111111111111111111111111111) (= mask!3216 #b00001111111111111111111111111111) (= mask!3216 #b00011111111111111111111111111111) (= mask!3216 #b00111111111111111111111111111111)) (bvsle mask!3216 #b00111111111111111111111111111111)))))

(assert (=> start!48960 d!81491))

(declare-fun d!81493 () Bool)

(assert (=> d!81493 (= (array_inv!12173 a!3154) (bvsge (size!16763 a!3154) #b00000000000000000000000000000000))))

(assert (=> start!48960 d!81493))

(declare-fun b!539580 () Bool)

(declare-fun e!312726 () SeekEntryResult!4864)

(assert (=> b!539580 (= e!312726 Undefined!4864)))

(declare-fun b!539581 () Bool)

(declare-fun c!62676 () Bool)

(declare-fun lt!247178 () (_ BitVec 64))

(assert (=> b!539581 (= c!62676 (= lt!247178 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!312725 () SeekEntryResult!4864)

(declare-fun e!312724 () SeekEntryResult!4864)

(assert (=> b!539581 (= e!312725 e!312724)))

(declare-fun b!539582 () Bool)

(declare-fun lt!247179 () SeekEntryResult!4864)

(assert (=> b!539582 (= e!312725 (Found!4864 (index!21682 lt!247179)))))

(declare-fun b!539583 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34128 (_ BitVec 32)) SeekEntryResult!4864)

(assert (=> b!539583 (= e!312724 (seekKeyOrZeroReturnVacant!0 (x!50618 lt!247179) (index!21682 lt!247179) (index!21682 lt!247179) k0!1998 a!3154 mask!3216))))

(declare-fun b!539585 () Bool)

(assert (=> b!539585 (= e!312724 (MissingZero!4864 (index!21682 lt!247179)))))

(declare-fun b!539584 () Bool)

(assert (=> b!539584 (= e!312726 e!312725)))

(assert (=> b!539584 (= lt!247178 (select (arr!16399 a!3154) (index!21682 lt!247179)))))

(declare-fun c!62677 () Bool)

(assert (=> b!539584 (= c!62677 (= lt!247178 k0!1998))))

(declare-fun d!81497 () Bool)

(declare-fun lt!247180 () SeekEntryResult!4864)

(assert (=> d!81497 (and (or ((_ is Undefined!4864) lt!247180) (not ((_ is Found!4864) lt!247180)) (and (bvsge (index!21681 lt!247180) #b00000000000000000000000000000000) (bvslt (index!21681 lt!247180) (size!16763 a!3154)))) (or ((_ is Undefined!4864) lt!247180) ((_ is Found!4864) lt!247180) (not ((_ is MissingZero!4864) lt!247180)) (and (bvsge (index!21680 lt!247180) #b00000000000000000000000000000000) (bvslt (index!21680 lt!247180) (size!16763 a!3154)))) (or ((_ is Undefined!4864) lt!247180) ((_ is Found!4864) lt!247180) ((_ is MissingZero!4864) lt!247180) (not ((_ is MissingVacant!4864) lt!247180)) (and (bvsge (index!21683 lt!247180) #b00000000000000000000000000000000) (bvslt (index!21683 lt!247180) (size!16763 a!3154)))) (or ((_ is Undefined!4864) lt!247180) (ite ((_ is Found!4864) lt!247180) (= (select (arr!16399 a!3154) (index!21681 lt!247180)) k0!1998) (ite ((_ is MissingZero!4864) lt!247180) (= (select (arr!16399 a!3154) (index!21680 lt!247180)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!4864) lt!247180) (= (select (arr!16399 a!3154) (index!21683 lt!247180)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!81497 (= lt!247180 e!312726)))

(declare-fun c!62678 () Bool)

(assert (=> d!81497 (= c!62678 (and ((_ is Intermediate!4864) lt!247179) (undefined!5676 lt!247179)))))

(assert (=> d!81497 (= lt!247179 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1998 mask!3216) k0!1998 a!3154 mask!3216))))

(assert (=> d!81497 (validMask!0 mask!3216)))

(assert (=> d!81497 (= (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216) lt!247180)))

(assert (= (and d!81497 c!62678) b!539580))

(assert (= (and d!81497 (not c!62678)) b!539584))

(assert (= (and b!539584 c!62677) b!539582))

(assert (= (and b!539584 (not c!62677)) b!539581))

(assert (= (and b!539581 c!62676) b!539585))

(assert (= (and b!539581 (not c!62676)) b!539583))

(declare-fun m!518533 () Bool)

(assert (=> b!539583 m!518533))

(declare-fun m!518535 () Bool)

(assert (=> b!539584 m!518535))

(declare-fun m!518537 () Bool)

(assert (=> d!81497 m!518537))

(declare-fun m!518539 () Bool)

(assert (=> d!81497 m!518539))

(declare-fun m!518541 () Bool)

(assert (=> d!81497 m!518541))

(declare-fun m!518543 () Bool)

(assert (=> d!81497 m!518543))

(declare-fun m!518545 () Bool)

(assert (=> d!81497 m!518545))

(assert (=> d!81497 m!518427))

(assert (=> d!81497 m!518543))

(assert (=> b!539393 d!81497))

(declare-fun b!539606 () Bool)

(declare-fun e!312743 () Bool)

(declare-fun e!312742 () Bool)

(assert (=> b!539606 (= e!312743 e!312742)))

(declare-fun c!62684 () Bool)

(assert (=> b!539606 (= c!62684 (validKeyInArray!0 (select (arr!16399 a!3154) #b00000000000000000000000000000000)))))

(declare-fun b!539607 () Bool)

(declare-fun call!32006 () Bool)

(assert (=> b!539607 (= e!312742 call!32006)))

(declare-fun d!81517 () Bool)

(declare-fun res!334864 () Bool)

(assert (=> d!81517 (=> res!334864 e!312743)))

(assert (=> d!81517 (= res!334864 (bvsge #b00000000000000000000000000000000 (size!16763 a!3154)))))

(assert (=> d!81517 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216) e!312743)))

(declare-fun bm!32003 () Bool)

(assert (=> bm!32003 (= call!32006 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3154 mask!3216))))

(declare-fun b!539608 () Bool)

(declare-fun e!312744 () Bool)

(assert (=> b!539608 (= e!312744 call!32006)))

(declare-fun b!539609 () Bool)

(assert (=> b!539609 (= e!312742 e!312744)))

(declare-fun lt!247198 () (_ BitVec 64))

(assert (=> b!539609 (= lt!247198 (select (arr!16399 a!3154) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!16856 0))(
  ( (Unit!16857) )
))
(declare-fun lt!247196 () Unit!16856)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!34128 (_ BitVec 64) (_ BitVec 32)) Unit!16856)

(assert (=> b!539609 (= lt!247196 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3154 lt!247198 #b00000000000000000000000000000000))))

(assert (=> b!539609 (arrayContainsKey!0 a!3154 lt!247198 #b00000000000000000000000000000000)))

(declare-fun lt!247197 () Unit!16856)

(assert (=> b!539609 (= lt!247197 lt!247196)))

(declare-fun res!334865 () Bool)

(assert (=> b!539609 (= res!334865 (= (seekEntryOrOpen!0 (select (arr!16399 a!3154) #b00000000000000000000000000000000) a!3154 mask!3216) (Found!4864 #b00000000000000000000000000000000)))))

(assert (=> b!539609 (=> (not res!334865) (not e!312744))))

(assert (= (and d!81517 (not res!334864)) b!539606))

(assert (= (and b!539606 c!62684) b!539609))

(assert (= (and b!539606 (not c!62684)) b!539607))

(assert (= (and b!539609 res!334865) b!539608))

(assert (= (or b!539608 b!539607) bm!32003))

(assert (=> b!539606 m!518491))

(assert (=> b!539606 m!518491))

(declare-fun m!518555 () Bool)

(assert (=> b!539606 m!518555))

(declare-fun m!518557 () Bool)

(assert (=> bm!32003 m!518557))

(assert (=> b!539609 m!518491))

(declare-fun m!518559 () Bool)

(assert (=> b!539609 m!518559))

(declare-fun m!518561 () Bool)

(assert (=> b!539609 m!518561))

(assert (=> b!539609 m!518491))

(declare-fun m!518563 () Bool)

(assert (=> b!539609 m!518563))

(assert (=> b!539391 d!81517))

(declare-fun b!539639 () Bool)

(declare-fun e!312765 () Bool)

(declare-fun e!312762 () Bool)

(assert (=> b!539639 (= e!312765 e!312762)))

(declare-fun res!334873 () Bool)

(assert (=> b!539639 (=> (not res!334873) (not e!312762))))

(declare-fun e!312764 () Bool)

(assert (=> b!539639 (= res!334873 (not e!312764))))

(declare-fun res!334872 () Bool)

(assert (=> b!539639 (=> (not res!334872) (not e!312764))))

(assert (=> b!539639 (= res!334872 (validKeyInArray!0 (select (arr!16399 a!3154) #b00000000000000000000000000000000)))))

(declare-fun b!539640 () Bool)

(declare-fun e!312763 () Bool)

(assert (=> b!539640 (= e!312762 e!312763)))

(declare-fun c!62696 () Bool)

(assert (=> b!539640 (= c!62696 (validKeyInArray!0 (select (arr!16399 a!3154) #b00000000000000000000000000000000)))))

(declare-fun b!539641 () Bool)

(declare-fun call!32009 () Bool)

(assert (=> b!539641 (= e!312763 call!32009)))

(declare-fun b!539642 () Bool)

(declare-fun contains!2798 (List!10571 (_ BitVec 64)) Bool)

(assert (=> b!539642 (= e!312764 (contains!2798 Nil!10568 (select (arr!16399 a!3154) #b00000000000000000000000000000000)))))

(declare-fun bm!32006 () Bool)

(assert (=> bm!32006 (= call!32009 (arrayNoDuplicates!0 a!3154 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!62696 (Cons!10567 (select (arr!16399 a!3154) #b00000000000000000000000000000000) Nil!10568) Nil!10568)))))

(declare-fun b!539638 () Bool)

(assert (=> b!539638 (= e!312763 call!32009)))

(declare-fun d!81521 () Bool)

(declare-fun res!334874 () Bool)

(assert (=> d!81521 (=> res!334874 e!312765)))

(assert (=> d!81521 (= res!334874 (bvsge #b00000000000000000000000000000000 (size!16763 a!3154)))))

(assert (=> d!81521 (= (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10568) e!312765)))

(assert (= (and d!81521 (not res!334874)) b!539639))

(assert (= (and b!539639 res!334872) b!539642))

(assert (= (and b!539639 res!334873) b!539640))

(assert (= (and b!539640 c!62696) b!539641))

(assert (= (and b!539640 (not c!62696)) b!539638))

(assert (= (or b!539641 b!539638) bm!32006))

(assert (=> b!539639 m!518491))

(assert (=> b!539639 m!518491))

(assert (=> b!539639 m!518555))

(assert (=> b!539640 m!518491))

(assert (=> b!539640 m!518491))

(assert (=> b!539640 m!518555))

(assert (=> b!539642 m!518491))

(assert (=> b!539642 m!518491))

(declare-fun m!518579 () Bool)

(assert (=> b!539642 m!518579))

(assert (=> bm!32006 m!518491))

(declare-fun m!518581 () Bool)

(assert (=> bm!32006 m!518581))

(assert (=> b!539396 d!81521))

(declare-fun e!312770 () SeekEntryResult!4864)

(declare-fun b!539643 () Bool)

(assert (=> b!539643 (= e!312770 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1030 #b00000000000000000000000000000001) (nextIndex!0 index!1177 x!1030 mask!3216) (select (arr!16399 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!539644 () Bool)

(declare-fun e!312766 () Bool)

(declare-fun lt!247209 () SeekEntryResult!4864)

(assert (=> b!539644 (= e!312766 (bvsge (x!50618 lt!247209) #b01111111111111111111111111111110))))

(declare-fun b!539645 () Bool)

(declare-fun e!312767 () SeekEntryResult!4864)

(assert (=> b!539645 (= e!312767 (Intermediate!4864 true index!1177 x!1030))))

(declare-fun d!81525 () Bool)

(assert (=> d!81525 e!312766))

(declare-fun c!62698 () Bool)

(assert (=> d!81525 (= c!62698 (and ((_ is Intermediate!4864) lt!247209) (undefined!5676 lt!247209)))))

(assert (=> d!81525 (= lt!247209 e!312767)))

(declare-fun c!62697 () Bool)

(assert (=> d!81525 (= c!62697 (bvsge x!1030 #b01111111111111111111111111111110))))

(declare-fun lt!247208 () (_ BitVec 64))

(assert (=> d!81525 (= lt!247208 (select (arr!16399 a!3154) index!1177))))

(assert (=> d!81525 (validMask!0 mask!3216)))

(assert (=> d!81525 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16399 a!3154) j!147) a!3154 mask!3216) lt!247209)))

(declare-fun b!539646 () Bool)

(assert (=> b!539646 (= e!312770 (Intermediate!4864 false index!1177 x!1030))))

(declare-fun b!539647 () Bool)

(assert (=> b!539647 (= e!312767 e!312770)))

(declare-fun c!62699 () Bool)

(assert (=> b!539647 (= c!62699 (or (= lt!247208 (select (arr!16399 a!3154) j!147)) (= (bvadd lt!247208 lt!247208) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!539648 () Bool)

(declare-fun e!312768 () Bool)

(assert (=> b!539648 (= e!312766 e!312768)))

(declare-fun res!334876 () Bool)

(assert (=> b!539648 (= res!334876 (and ((_ is Intermediate!4864) lt!247209) (not (undefined!5676 lt!247209)) (bvslt (x!50618 lt!247209) #b01111111111111111111111111111110) (bvsge (x!50618 lt!247209) #b00000000000000000000000000000000) (bvsge (x!50618 lt!247209) x!1030)))))

(assert (=> b!539648 (=> (not res!334876) (not e!312768))))

(declare-fun b!539649 () Bool)

(assert (=> b!539649 (and (bvsge (index!21682 lt!247209) #b00000000000000000000000000000000) (bvslt (index!21682 lt!247209) (size!16763 a!3154)))))

(declare-fun e!312769 () Bool)

(assert (=> b!539649 (= e!312769 (= (select (arr!16399 a!3154) (index!21682 lt!247209)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!539650 () Bool)

(assert (=> b!539650 (and (bvsge (index!21682 lt!247209) #b00000000000000000000000000000000) (bvslt (index!21682 lt!247209) (size!16763 a!3154)))))

(declare-fun res!334875 () Bool)

(assert (=> b!539650 (= res!334875 (= (select (arr!16399 a!3154) (index!21682 lt!247209)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!539650 (=> res!334875 e!312769)))

(declare-fun b!539651 () Bool)

(assert (=> b!539651 (and (bvsge (index!21682 lt!247209) #b00000000000000000000000000000000) (bvslt (index!21682 lt!247209) (size!16763 a!3154)))))

(declare-fun res!334877 () Bool)

(assert (=> b!539651 (= res!334877 (= (select (arr!16399 a!3154) (index!21682 lt!247209)) (select (arr!16399 a!3154) j!147)))))

(assert (=> b!539651 (=> res!334877 e!312769)))

(assert (=> b!539651 (= e!312768 e!312769)))

(assert (= (and d!81525 c!62697) b!539645))

(assert (= (and d!81525 (not c!62697)) b!539647))

(assert (= (and b!539647 c!62699) b!539646))

(assert (= (and b!539647 (not c!62699)) b!539643))

(assert (= (and d!81525 c!62698) b!539644))

(assert (= (and d!81525 (not c!62698)) b!539648))

(assert (= (and b!539648 res!334876) b!539651))

(assert (= (and b!539651 (not res!334877)) b!539650))

(assert (= (and b!539650 (not res!334875)) b!539649))

(declare-fun m!518583 () Bool)

(assert (=> b!539651 m!518583))

(declare-fun m!518585 () Bool)

(assert (=> b!539643 m!518585))

(assert (=> b!539643 m!518585))

(assert (=> b!539643 m!518433))

(declare-fun m!518587 () Bool)

(assert (=> b!539643 m!518587))

(assert (=> b!539649 m!518583))

(assert (=> b!539650 m!518583))

(assert (=> d!81525 m!518445))

(assert (=> d!81525 m!518427))

(assert (=> b!539386 d!81525))

(declare-fun d!81527 () Bool)

(assert (=> d!81527 (= (validKeyInArray!0 (select (arr!16399 a!3154) j!147)) (and (not (= (select (arr!16399 a!3154) j!147) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16399 a!3154) j!147) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!539390 d!81527))

(check-sat (not bm!32003) (not b!539609) (not b!539642) (not b!539639) (not b!539454) (not d!81473) (not b!539468) (not d!81525) (not d!81497) (not bm!32006) (not b!539606) (not b!539583) (not b!539640) (not b!539643))
(check-sat)
