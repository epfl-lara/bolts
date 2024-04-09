; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31318 () Bool)

(assert start!31318)

(declare-fun res!169928 () Bool)

(declare-fun e!195568 () Bool)

(assert (=> start!31318 (=> (not res!169928) (not e!195568))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31318 (= res!169928 (validMask!0 mask!3709))))

(assert (=> start!31318 e!195568))

(declare-datatypes ((array!16032 0))(
  ( (array!16033 (arr!7590 (Array (_ BitVec 32) (_ BitVec 64))) (size!7942 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!16032)

(declare-fun array_inv!5544 (array!16032) Bool)

(assert (=> start!31318 (array_inv!5544 a!3293)))

(assert (=> start!31318 true))

(declare-fun b!313876 () Bool)

(declare-fun e!195566 () Bool)

(assert (=> b!313876 (= e!195568 e!195566)))

(declare-fun res!169924 () Bool)

(assert (=> b!313876 (=> (not res!169924) (not e!195566))))

(declare-datatypes ((SeekEntryResult!2741 0))(
  ( (MissingZero!2741 (index!13140 (_ BitVec 32))) (Found!2741 (index!13141 (_ BitVec 32))) (Intermediate!2741 (undefined!3553 Bool) (index!13142 (_ BitVec 32)) (x!31328 (_ BitVec 32))) (Undefined!2741) (MissingVacant!2741 (index!13143 (_ BitVec 32))) )
))
(declare-fun lt!153752 () SeekEntryResult!2741)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16032 (_ BitVec 32)) SeekEntryResult!2741)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!313876 (= res!169924 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!153752))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!313876 (= lt!153752 (Intermediate!2741 false resIndex!52 resX!52))))

(declare-fun b!313877 () Bool)

(declare-fun res!169927 () Bool)

(assert (=> b!313877 (=> (not res!169927) (not e!195568))))

(declare-fun arrayContainsKey!0 (array!16032 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!313877 (= res!169927 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!313878 () Bool)

(declare-fun x!1427 () (_ BitVec 32))

(assert (=> b!313878 (= e!195566 (bvslt (bvsub #b01111111111111111111111111111110 x!1427) #b00000000000000000000000000000000))))

(declare-fun b!313879 () Bool)

(declare-fun res!169930 () Bool)

(assert (=> b!313879 (=> (not res!169930) (not e!195568))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16032 (_ BitVec 32)) Bool)

(assert (=> b!313879 (= res!169930 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!313880 () Bool)

(declare-fun res!169932 () Bool)

(assert (=> b!313880 (=> (not res!169932) (not e!195566))))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!313880 (= res!169932 (and (= (select (arr!7590 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7942 a!3293))))))

(declare-fun b!313881 () Bool)

(declare-fun res!169931 () Bool)

(assert (=> b!313881 (=> (not res!169931) (not e!195568))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!313881 (= res!169931 (validKeyInArray!0 k!2441))))

(declare-fun b!313882 () Bool)

(declare-fun res!169926 () Bool)

(assert (=> b!313882 (=> (not res!169926) (not e!195566))))

(assert (=> b!313882 (= res!169926 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!153752))))

(declare-fun b!313883 () Bool)

(declare-fun res!169929 () Bool)

(assert (=> b!313883 (=> (not res!169929) (not e!195568))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16032 (_ BitVec 32)) SeekEntryResult!2741)

(assert (=> b!313883 (= res!169929 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2741 i!1240)))))

(declare-fun b!313884 () Bool)

(declare-fun res!169925 () Bool)

(assert (=> b!313884 (=> (not res!169925) (not e!195568))))

(assert (=> b!313884 (= res!169925 (and (= (size!7942 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7942 a!3293))))))

(assert (= (and start!31318 res!169928) b!313884))

(assert (= (and b!313884 res!169925) b!313881))

(assert (= (and b!313881 res!169931) b!313877))

(assert (= (and b!313877 res!169927) b!313883))

(assert (= (and b!313883 res!169929) b!313879))

(assert (= (and b!313879 res!169930) b!313876))

(assert (= (and b!313876 res!169924) b!313880))

(assert (= (and b!313880 res!169932) b!313882))

(assert (= (and b!313882 res!169926) b!313878))

(declare-fun m!323597 () Bool)

(assert (=> b!313882 m!323597))

(declare-fun m!323599 () Bool)

(assert (=> b!313877 m!323599))

(declare-fun m!323601 () Bool)

(assert (=> b!313879 m!323601))

(declare-fun m!323603 () Bool)

(assert (=> b!313880 m!323603))

(declare-fun m!323605 () Bool)

(assert (=> b!313881 m!323605))

(declare-fun m!323607 () Bool)

(assert (=> start!31318 m!323607))

(declare-fun m!323609 () Bool)

(assert (=> start!31318 m!323609))

(declare-fun m!323611 () Bool)

(assert (=> b!313883 m!323611))

(declare-fun m!323613 () Bool)

(assert (=> b!313876 m!323613))

(assert (=> b!313876 m!323613))

(declare-fun m!323615 () Bool)

(assert (=> b!313876 m!323615))

(push 1)

(assert (not b!313876))

(assert (not start!31318))

(assert (not b!313883))

(assert (not b!313879))

(assert (not b!313881))

(assert (not b!313882))

(assert (not b!313877))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!68583 () Bool)

(assert (=> d!68583 (= (validKeyInArray!0 k!2441) (and (not (= k!2441 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2441 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!313881 d!68583))

(declare-fun e!195610 () SeekEntryResult!2741)

(declare-fun b!313939 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!313939 (= e!195610 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!2441 mask!3709) #b00000000000000000000000000000000 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun b!313940 () Bool)

(declare-fun e!195611 () Bool)

(declare-fun lt!153776 () SeekEntryResult!2741)

(assert (=> b!313940 (= e!195611 (bvsge (x!31328 lt!153776) #b01111111111111111111111111111110))))

(declare-fun b!313941 () Bool)

(assert (=> b!313941 (and (bvsge (index!13142 lt!153776) #b00000000000000000000000000000000) (bvslt (index!13142 lt!153776) (size!7942 a!3293)))))

(declare-fun res!169963 () Bool)

(assert (=> b!313941 (= res!169963 (= (select (arr!7590 a!3293) (index!13142 lt!153776)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!195612 () Bool)

(assert (=> b!313941 (=> res!169963 e!195612)))

(declare-fun b!313942 () Bool)

(assert (=> b!313942 (and (bvsge (index!13142 lt!153776) #b00000000000000000000000000000000) (bvslt (index!13142 lt!153776) (size!7942 a!3293)))))

(assert (=> b!313942 (= e!195612 (= (select (arr!7590 a!3293) (index!13142 lt!153776)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!313943 () Bool)

(declare-fun e!195609 () SeekEntryResult!2741)

(assert (=> b!313943 (= e!195609 e!195610)))

(declare-fun c!49600 () Bool)

(declare-fun lt!153775 () (_ BitVec 64))

(assert (=> b!313943 (= c!49600 (or (= lt!153775 k!2441) (= (bvadd lt!153775 lt!153775) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!313944 () Bool)

(assert (=> b!313944 (= e!195610 (Intermediate!2741 false (toIndex!0 k!2441 mask!3709) #b00000000000000000000000000000000))))

(declare-fun b!313945 () Bool)

(declare-fun e!195613 () Bool)

(assert (=> b!313945 (= e!195611 e!195613)))

(declare-fun res!169965 () Bool)

(assert (=> b!313945 (= res!169965 (and (is-Intermediate!2741 lt!153776) (not (undefined!3553 lt!153776)) (bvslt (x!31328 lt!153776) #b01111111111111111111111111111110) (bvsge (x!31328 lt!153776) #b00000000000000000000000000000000) (bvsge (x!31328 lt!153776) #b00000000000000000000000000000000)))))

(assert (=> b!313945 (=> (not res!169965) (not e!195613))))

(declare-fun d!68585 () Bool)

(assert (=> d!68585 e!195611))

(declare-fun c!49601 () Bool)

(assert (=> d!68585 (= c!49601 (and (is-Intermediate!2741 lt!153776) (undefined!3553 lt!153776)))))

(assert (=> d!68585 (= lt!153776 e!195609)))

(declare-fun c!49599 () Bool)

(assert (=> d!68585 (= c!49599 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!68585 (= lt!153775 (select (arr!7590 a!3293) (toIndex!0 k!2441 mask!3709)))))

(assert (=> d!68585 (validMask!0 mask!3709)))

(assert (=> d!68585 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!153776)))

(declare-fun b!313946 () Bool)

(assert (=> b!313946 (and (bvsge (index!13142 lt!153776) #b00000000000000000000000000000000) (bvslt (index!13142 lt!153776) (size!7942 a!3293)))))

(declare-fun res!169964 () Bool)

(assert (=> b!313946 (= res!169964 (= (select (arr!7590 a!3293) (index!13142 lt!153776)) k!2441))))

(assert (=> b!313946 (=> res!169964 e!195612)))

(assert (=> b!313946 (= e!195613 e!195612)))

(declare-fun b!313947 () Bool)

(assert (=> b!313947 (= e!195609 (Intermediate!2741 true (toIndex!0 k!2441 mask!3709) #b00000000000000000000000000000000))))

(assert (= (and d!68585 c!49599) b!313947))

(assert (= (and d!68585 (not c!49599)) b!313943))

(assert (= (and b!313943 c!49600) b!313944))

(assert (= (and b!313943 (not c!49600)) b!313939))

(assert (= (and d!68585 c!49601) b!313940))

(assert (= (and d!68585 (not c!49601)) b!313945))

(assert (= (and b!313945 res!169965) b!313946))

(assert (= (and b!313946 (not res!169964)) b!313941))

(assert (= (and b!313941 (not res!169963)) b!313942))

(assert (=> b!313939 m!323613))

(declare-fun m!323645 () Bool)

(assert (=> b!313939 m!323645))

(assert (=> b!313939 m!323645))

(declare-fun m!323647 () Bool)

(assert (=> b!313939 m!323647))

(assert (=> d!68585 m!323613))

(declare-fun m!323649 () Bool)

(assert (=> d!68585 m!323649))

(assert (=> d!68585 m!323607))

(declare-fun m!323651 () Bool)

(assert (=> b!313946 m!323651))

(assert (=> b!313942 m!323651))

(assert (=> b!313941 m!323651))

(assert (=> b!313876 d!68585))

(declare-fun d!68597 () Bool)

(declare-fun lt!153792 () (_ BitVec 32))

(declare-fun lt!153791 () (_ BitVec 32))

(assert (=> d!68597 (= lt!153792 (bvmul (bvxor lt!153791 (bvlshr lt!153791 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!68597 (= lt!153791 ((_ extract 31 0) (bvand (bvxor k!2441 (bvlshr k!2441 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!68597 (and (bvsge mask!3709 #b00000000000000000000000000000000) (let ((res!169966 (let ((h!5378 ((_ extract 31 0) (bvand (bvxor k!2441 (bvlshr k!2441 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!31330 (bvmul (bvxor h!5378 (bvlshr h!5378 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!31330 (bvlshr x!31330 #b00000000000000000000000000001101)) mask!3709))))) (and (bvslt res!169966 (bvadd mask!3709 #b00000000000000000000000000000001)) (bvsge res!169966 #b00000000000000000000000000000000))))))

(assert (=> d!68597 (= (toIndex!0 k!2441 mask!3709) (bvand (bvxor lt!153792 (bvlshr lt!153792 #b00000000000000000000000000001101)) mask!3709))))

(assert (=> b!313876 d!68597))

(declare-fun d!68599 () Bool)

(assert (=> d!68599 (= (validMask!0 mask!3709) (and (or (= mask!3709 #b00000000000000000000000000000111) (= mask!3709 #b00000000000000000000000000001111) (= mask!3709 #b00000000000000000000000000011111) (= mask!3709 #b00000000000000000000000000111111) (= mask!3709 #b00000000000000000000000001111111) (= mask!3709 #b00000000000000000000000011111111) (= mask!3709 #b00000000000000000000000111111111) (= mask!3709 #b00000000000000000000001111111111) (= mask!3709 #b00000000000000000000011111111111) (= mask!3709 #b00000000000000000000111111111111) (= mask!3709 #b00000000000000000001111111111111) (= mask!3709 #b00000000000000000011111111111111) (= mask!3709 #b00000000000000000111111111111111) (= mask!3709 #b00000000000000001111111111111111) (= mask!3709 #b00000000000000011111111111111111) (= mask!3709 #b00000000000000111111111111111111) (= mask!3709 #b00000000000001111111111111111111) (= mask!3709 #b00000000000011111111111111111111) (= mask!3709 #b00000000000111111111111111111111) (= mask!3709 #b00000000001111111111111111111111) (= mask!3709 #b00000000011111111111111111111111) (= mask!3709 #b00000000111111111111111111111111) (= mask!3709 #b00000001111111111111111111111111) (= mask!3709 #b00000011111111111111111111111111) (= mask!3709 #b00000111111111111111111111111111) (= mask!3709 #b00001111111111111111111111111111) (= mask!3709 #b00011111111111111111111111111111) (= mask!3709 #b00111111111111111111111111111111)) (bvsle mask!3709 #b00111111111111111111111111111111)))))

(assert (=> start!31318 d!68599))

(declare-fun d!68609 () Bool)

(assert (=> d!68609 (= (array_inv!5544 a!3293) (bvsge (size!7942 a!3293) #b00000000000000000000000000000000))))

(assert (=> start!31318 d!68609))

(declare-fun e!195644 () SeekEntryResult!2741)

(declare-fun b!314002 () Bool)

(assert (=> b!314002 (= e!195644 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1427 #b00000000000000000000000000000001) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun b!314003 () Bool)

(declare-fun e!195645 () Bool)

(declare-fun lt!153807 () SeekEntryResult!2741)

(assert (=> b!314003 (= e!195645 (bvsge (x!31328 lt!153807) #b01111111111111111111111111111110))))

(declare-fun b!314004 () Bool)

(assert (=> b!314004 (and (bvsge (index!13142 lt!153807) #b00000000000000000000000000000000) (bvslt (index!13142 lt!153807) (size!7942 a!3293)))))

(declare-fun res!169980 () Bool)

(assert (=> b!314004 (= res!169980 (= (select (arr!7590 a!3293) (index!13142 lt!153807)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!195646 () Bool)

(assert (=> b!314004 (=> res!169980 e!195646)))

(declare-fun b!314005 () Bool)

(assert (=> b!314005 (and (bvsge (index!13142 lt!153807) #b00000000000000000000000000000000) (bvslt (index!13142 lt!153807) (size!7942 a!3293)))))

(assert (=> b!314005 (= e!195646 (= (select (arr!7590 a!3293) (index!13142 lt!153807)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!314006 () Bool)

(declare-fun e!195643 () SeekEntryResult!2741)

(assert (=> b!314006 (= e!195643 e!195644)))

(declare-fun c!49624 () Bool)

(declare-fun lt!153806 () (_ BitVec 64))

(assert (=> b!314006 (= c!49624 (or (= lt!153806 k!2441) (= (bvadd lt!153806 lt!153806) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!314007 () Bool)

(assert (=> b!314007 (= e!195644 (Intermediate!2741 false index!1781 x!1427))))

(declare-fun b!314008 () Bool)

(declare-fun e!195647 () Bool)

(assert (=> b!314008 (= e!195645 e!195647)))

(declare-fun res!169982 () Bool)

(assert (=> b!314008 (= res!169982 (and (is-Intermediate!2741 lt!153807) (not (undefined!3553 lt!153807)) (bvslt (x!31328 lt!153807) #b01111111111111111111111111111110) (bvsge (x!31328 lt!153807) #b00000000000000000000000000000000) (bvsge (x!31328 lt!153807) x!1427)))))

(assert (=> b!314008 (=> (not res!169982) (not e!195647))))

(declare-fun d!68611 () Bool)

(assert (=> d!68611 e!195645))

(declare-fun c!49625 () Bool)

(assert (=> d!68611 (= c!49625 (and (is-Intermediate!2741 lt!153807) (undefined!3553 lt!153807)))))

(assert (=> d!68611 (= lt!153807 e!195643)))

(declare-fun c!49623 () Bool)

(assert (=> d!68611 (= c!49623 (bvsge x!1427 #b01111111111111111111111111111110))))

(assert (=> d!68611 (= lt!153806 (select (arr!7590 a!3293) index!1781))))

(assert (=> d!68611 (validMask!0 mask!3709)))

(assert (=> d!68611 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!153807)))

(declare-fun b!314009 () Bool)

(assert (=> b!314009 (and (bvsge (index!13142 lt!153807) #b00000000000000000000000000000000) (bvslt (index!13142 lt!153807) (size!7942 a!3293)))))

(declare-fun res!169981 () Bool)

(assert (=> b!314009 (= res!169981 (= (select (arr!7590 a!3293) (index!13142 lt!153807)) k!2441))))

(assert (=> b!314009 (=> res!169981 e!195646)))

(assert (=> b!314009 (= e!195647 e!195646)))

(declare-fun b!314010 () Bool)

(assert (=> b!314010 (= e!195643 (Intermediate!2741 true index!1781 x!1427))))

(assert (= (and d!68611 c!49623) b!314010))

(assert (= (and d!68611 (not c!49623)) b!314006))

(assert (= (and b!314006 c!49624) b!314007))

(assert (= (and b!314006 (not c!49624)) b!314002))

(assert (= (and d!68611 c!49625) b!314003))

(assert (= (and d!68611 (not c!49625)) b!314008))

(assert (= (and b!314008 res!169982) b!314009))

(assert (= (and b!314009 (not res!169981)) b!314004))

(assert (= (and b!314004 (not res!169980)) b!314005))

(declare-fun m!323679 () Bool)

(assert (=> b!314002 m!323679))

(assert (=> b!314002 m!323679))

(declare-fun m!323681 () Bool)

(assert (=> b!314002 m!323681))

(declare-fun m!323683 () Bool)

(assert (=> d!68611 m!323683))

(assert (=> d!68611 m!323607))

(declare-fun m!323685 () Bool)

(assert (=> b!314009 m!323685))

(assert (=> b!314005 m!323685))

(assert (=> b!314004 m!323685))

(assert (=> b!313882 d!68611))

(declare-fun d!68613 () Bool)

(declare-fun res!169987 () Bool)

(declare-fun e!195652 () Bool)

(assert (=> d!68613 (=> res!169987 e!195652)))

(assert (=> d!68613 (= res!169987 (= (select (arr!7590 a!3293) #b00000000000000000000000000000000) k!2441))))

(assert (=> d!68613 (= (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000) e!195652)))

(declare-fun b!314015 () Bool)

(declare-fun e!195653 () Bool)

(assert (=> b!314015 (= e!195652 e!195653)))

(declare-fun res!169988 () Bool)

(assert (=> b!314015 (=> (not res!169988) (not e!195653))))

(assert (=> b!314015 (= res!169988 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7942 a!3293)))))

(declare-fun b!314016 () Bool)

(assert (=> b!314016 (= e!195653 (arrayContainsKey!0 a!3293 k!2441 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!68613 (not res!169987)) b!314015))

(assert (= (and b!314015 res!169988) b!314016))

(declare-fun m!323687 () Bool)

(assert (=> d!68613 m!323687))

(declare-fun m!323689 () Bool)

(assert (=> b!314016 m!323689))

(assert (=> b!313877 d!68613))

(declare-fun b!314077 () Bool)

(declare-fun e!195687 () SeekEntryResult!2741)

(declare-fun e!195686 () SeekEntryResult!2741)

(assert (=> b!314077 (= e!195687 e!195686)))

(declare-fun lt!153835 () (_ BitVec 64))

(declare-fun lt!153836 () SeekEntryResult!2741)

(assert (=> b!314077 (= lt!153835 (select (arr!7590 a!3293) (index!13142 lt!153836)))))

(declare-fun c!49651 () Bool)

(assert (=> b!314077 (= c!49651 (= lt!153835 k!2441))))

(declare-fun b!314078 () Bool)

(assert (=> b!314078 (= e!195687 Undefined!2741)))

(declare-fun b!314079 () Bool)

(assert (=> b!314079 (= e!195686 (Found!2741 (index!13142 lt!153836)))))

(declare-fun e!195688 () SeekEntryResult!2741)

(declare-fun b!314080 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16032 (_ BitVec 32)) SeekEntryResult!2741)

(assert (=> b!314080 (= e!195688 (seekKeyOrZeroReturnVacant!0 (x!31328 lt!153836) (index!13142 lt!153836) (index!13142 lt!153836) k!2441 a!3293 mask!3709))))

(declare-fun d!68615 () Bool)

(declare-fun lt!153834 () SeekEntryResult!2741)

(assert (=> d!68615 (and (or (is-Undefined!2741 lt!153834) (not (is-Found!2741 lt!153834)) (and (bvsge (index!13141 lt!153834) #b00000000000000000000000000000000) (bvslt (index!13141 lt!153834) (size!7942 a!3293)))) (or (is-Undefined!2741 lt!153834) (is-Found!2741 lt!153834) (not (is-MissingZero!2741 lt!153834)) (and (bvsge (index!13140 lt!153834) #b00000000000000000000000000000000) (bvslt (index!13140 lt!153834) (size!7942 a!3293)))) (or (is-Undefined!2741 lt!153834) (is-Found!2741 lt!153834) (is-MissingZero!2741 lt!153834) (not (is-MissingVacant!2741 lt!153834)) (and (bvsge (index!13143 lt!153834) #b00000000000000000000000000000000) (bvslt (index!13143 lt!153834) (size!7942 a!3293)))) (or (is-Undefined!2741 lt!153834) (ite (is-Found!2741 lt!153834) (= (select (arr!7590 a!3293) (index!13141 lt!153834)) k!2441) (ite (is-MissingZero!2741 lt!153834) (= (select (arr!7590 a!3293) (index!13140 lt!153834)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!2741 lt!153834) (= (select (arr!7590 a!3293) (index!13143 lt!153834)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!68615 (= lt!153834 e!195687)))

(declare-fun c!49650 () Bool)

(assert (=> d!68615 (= c!49650 (and (is-Intermediate!2741 lt!153836) (undefined!3553 lt!153836)))))

(assert (=> d!68615 (= lt!153836 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709))))

(assert (=> d!68615 (validMask!0 mask!3709)))

(assert (=> d!68615 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) lt!153834)))

(declare-fun b!314081 () Bool)

(declare-fun c!49652 () Bool)

(assert (=> b!314081 (= c!49652 (= lt!153835 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!314081 (= e!195686 e!195688)))

(declare-fun b!314082 () Bool)

(assert (=> b!314082 (= e!195688 (MissingZero!2741 (index!13142 lt!153836)))))

(assert (= (and d!68615 c!49650) b!314078))

(assert (= (and d!68615 (not c!49650)) b!314077))

(assert (= (and b!314077 c!49651) b!314079))

(assert (= (and b!314077 (not c!49651)) b!314081))

(assert (= (and b!314081 c!49652) b!314082))

(assert (= (and b!314081 (not c!49652)) b!314080))

(declare-fun m!323707 () Bool)

(assert (=> b!314077 m!323707))

(declare-fun m!323709 () Bool)

(assert (=> b!314080 m!323709))

(declare-fun m!323711 () Bool)

(assert (=> d!68615 m!323711))

(declare-fun m!323713 () Bool)

(assert (=> d!68615 m!323713))

(assert (=> d!68615 m!323607))

(assert (=> d!68615 m!323613))

(declare-fun m!323715 () Bool)

(assert (=> d!68615 m!323715))

(assert (=> d!68615 m!323613))

(assert (=> d!68615 m!323615))

(assert (=> b!313883 d!68615))

(declare-fun b!314097 () Bool)

(declare-fun e!195698 () Bool)

(declare-fun call!25967 () Bool)

(assert (=> b!314097 (= e!195698 call!25967)))

(declare-fun bm!25964 () Bool)

(assert (=> bm!25964 (= call!25967 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3293 mask!3709))))

(declare-fun b!314098 () Bool)

(declare-fun e!195699 () Bool)

(assert (=> b!314098 (= e!195698 e!195699)))

(declare-fun lt!153848 () (_ BitVec 64))

(assert (=> b!314098 (= lt!153848 (select (arr!7590 a!3293) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9680 0))(
  ( (Unit!9681) )
))
(declare-fun lt!153846 () Unit!9680)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!16032 (_ BitVec 64) (_ BitVec 32)) Unit!9680)

