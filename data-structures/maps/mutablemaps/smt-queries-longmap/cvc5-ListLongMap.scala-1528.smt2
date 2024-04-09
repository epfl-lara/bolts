; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28860 () Bool)

(assert start!28860)

(declare-fun res!154600 () Bool)

(declare-fun e!185869 () Bool)

(assert (=> start!28860 (=> (not res!154600) (not e!185869))))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28860 (= res!154600 (validMask!0 mask!3809))))

(assert (=> start!28860 e!185869))

(assert (=> start!28860 true))

(declare-datatypes ((array!14885 0))(
  ( (array!14886 (arr!7060 (Array (_ BitVec 32) (_ BitVec 64))) (size!7412 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14885)

(declare-fun array_inv!5014 (array!14885) Bool)

(assert (=> start!28860 (array_inv!5014 a!3312)))

(declare-fun b!293970 () Bool)

(declare-fun e!185868 () Bool)

(declare-datatypes ((SeekEntryResult!2220 0))(
  ( (MissingZero!2220 (index!11050 (_ BitVec 32))) (Found!2220 (index!11051 (_ BitVec 32))) (Intermediate!2220 (undefined!3032 Bool) (index!11052 (_ BitVec 32)) (x!29215 (_ BitVec 32))) (Undefined!2220) (MissingVacant!2220 (index!11053 (_ BitVec 32))) )
))
(declare-fun lt!145768 () SeekEntryResult!2220)

(declare-fun lt!145772 () Bool)

(assert (=> b!293970 (= e!185868 (and lt!145772 (let ((bdg!6229 (not (is-Intermediate!2220 lt!145768)))) (and (or bdg!6229 (not (undefined!3032 lt!145768))) (or bdg!6229 (not (= (select (arr!7060 a!3312) (index!11052 lt!145768)) #b1000000000000000000000000000000000000000000000000000000000000000))) (not bdg!6229) (or (bvslt (index!11052 lt!145768) #b00000000000000000000000000000000) (bvsge (index!11052 lt!145768) (size!7412 a!3312)))))))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-fun lt!145770 () (_ BitVec 32))

(declare-fun lt!145771 () SeekEntryResult!2220)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14885 (_ BitVec 32)) SeekEntryResult!2220)

(assert (=> b!293970 (= lt!145771 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!145770 k!2524 (array!14886 (store (arr!7060 a!3312) i!1256 k!2524) (size!7412 a!3312)) mask!3809))))

(assert (=> b!293970 (= lt!145768 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!145770 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!293970 (= lt!145770 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!293971 () Bool)

(declare-fun res!154599 () Bool)

(assert (=> b!293971 (=> (not res!154599) (not e!185868))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14885 (_ BitVec 32)) Bool)

(assert (=> b!293971 (= res!154599 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!293972 () Bool)

(declare-fun res!154601 () Bool)

(assert (=> b!293972 (=> (not res!154601) (not e!185869))))

(assert (=> b!293972 (= res!154601 (and (= (size!7412 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7412 a!3312))))))

(declare-fun b!293973 () Bool)

(declare-fun res!154597 () Bool)

(assert (=> b!293973 (=> (not res!154597) (not e!185869))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!293973 (= res!154597 (validKeyInArray!0 k!2524))))

(declare-fun b!293974 () Bool)

(assert (=> b!293974 (= e!185869 e!185868)))

(declare-fun res!154602 () Bool)

(assert (=> b!293974 (=> (not res!154602) (not e!185868))))

(declare-fun lt!145769 () SeekEntryResult!2220)

(assert (=> b!293974 (= res!154602 (or lt!145772 (= lt!145769 (MissingVacant!2220 i!1256))))))

(assert (=> b!293974 (= lt!145772 (= lt!145769 (MissingZero!2220 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14885 (_ BitVec 32)) SeekEntryResult!2220)

(assert (=> b!293974 (= lt!145769 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!293975 () Bool)

(declare-fun res!154598 () Bool)

(assert (=> b!293975 (=> (not res!154598) (not e!185869))))

(declare-fun arrayContainsKey!0 (array!14885 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!293975 (= res!154598 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(assert (= (and start!28860 res!154600) b!293972))

(assert (= (and b!293972 res!154601) b!293973))

(assert (= (and b!293973 res!154597) b!293975))

(assert (= (and b!293975 res!154598) b!293974))

(assert (= (and b!293974 res!154602) b!293971))

(assert (= (and b!293971 res!154599) b!293970))

(declare-fun m!307553 () Bool)

(assert (=> b!293973 m!307553))

(declare-fun m!307555 () Bool)

(assert (=> b!293970 m!307555))

(declare-fun m!307557 () Bool)

(assert (=> b!293970 m!307557))

(declare-fun m!307559 () Bool)

(assert (=> b!293970 m!307559))

(declare-fun m!307561 () Bool)

(assert (=> b!293970 m!307561))

(declare-fun m!307563 () Bool)

(assert (=> b!293970 m!307563))

(declare-fun m!307565 () Bool)

(assert (=> b!293971 m!307565))

(declare-fun m!307567 () Bool)

(assert (=> b!293975 m!307567))

(declare-fun m!307569 () Bool)

(assert (=> start!28860 m!307569))

(declare-fun m!307571 () Bool)

(assert (=> start!28860 m!307571))

(declare-fun m!307573 () Bool)

(assert (=> b!293974 m!307573))

(push 1)

(assert (not b!293974))

(assert (not b!293973))

(assert (not b!293970))

(assert (not start!28860))

(assert (not b!293975))

(assert (not b!293971))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!66629 () Bool)

(assert (=> d!66629 (= (validKeyInArray!0 k!2524) (and (not (= k!2524 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2524 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!293973 d!66629))

(declare-fun d!66633 () Bool)

(assert (=> d!66633 (= (validMask!0 mask!3809) (and (or (= mask!3809 #b00000000000000000000000000000111) (= mask!3809 #b00000000000000000000000000001111) (= mask!3809 #b00000000000000000000000000011111) (= mask!3809 #b00000000000000000000000000111111) (= mask!3809 #b00000000000000000000000001111111) (= mask!3809 #b00000000000000000000000011111111) (= mask!3809 #b00000000000000000000000111111111) (= mask!3809 #b00000000000000000000001111111111) (= mask!3809 #b00000000000000000000011111111111) (= mask!3809 #b00000000000000000000111111111111) (= mask!3809 #b00000000000000000001111111111111) (= mask!3809 #b00000000000000000011111111111111) (= mask!3809 #b00000000000000000111111111111111) (= mask!3809 #b00000000000000001111111111111111) (= mask!3809 #b00000000000000011111111111111111) (= mask!3809 #b00000000000000111111111111111111) (= mask!3809 #b00000000000001111111111111111111) (= mask!3809 #b00000000000011111111111111111111) (= mask!3809 #b00000000000111111111111111111111) (= mask!3809 #b00000000001111111111111111111111) (= mask!3809 #b00000000011111111111111111111111) (= mask!3809 #b00000000111111111111111111111111) (= mask!3809 #b00000001111111111111111111111111) (= mask!3809 #b00000011111111111111111111111111) (= mask!3809 #b00000111111111111111111111111111) (= mask!3809 #b00001111111111111111111111111111) (= mask!3809 #b00011111111111111111111111111111) (= mask!3809 #b00111111111111111111111111111111)) (bvsle mask!3809 #b00111111111111111111111111111111)))))

(assert (=> start!28860 d!66633))

(declare-fun d!66639 () Bool)

(assert (=> d!66639 (= (array_inv!5014 a!3312) (bvsge (size!7412 a!3312) #b00000000000000000000000000000000))))

(assert (=> start!28860 d!66639))

(declare-fun b!294078 () Bool)

(declare-fun e!185929 () SeekEntryResult!2220)

(declare-fun lt!145837 () SeekEntryResult!2220)

(assert (=> b!294078 (= e!185929 (Found!2220 (index!11052 lt!145837)))))

(declare-fun d!66641 () Bool)

(declare-fun lt!145836 () SeekEntryResult!2220)

(assert (=> d!66641 (and (or (is-Undefined!2220 lt!145836) (not (is-Found!2220 lt!145836)) (and (bvsge (index!11051 lt!145836) #b00000000000000000000000000000000) (bvslt (index!11051 lt!145836) (size!7412 a!3312)))) (or (is-Undefined!2220 lt!145836) (is-Found!2220 lt!145836) (not (is-MissingZero!2220 lt!145836)) (and (bvsge (index!11050 lt!145836) #b00000000000000000000000000000000) (bvslt (index!11050 lt!145836) (size!7412 a!3312)))) (or (is-Undefined!2220 lt!145836) (is-Found!2220 lt!145836) (is-MissingZero!2220 lt!145836) (not (is-MissingVacant!2220 lt!145836)) (and (bvsge (index!11053 lt!145836) #b00000000000000000000000000000000) (bvslt (index!11053 lt!145836) (size!7412 a!3312)))) (or (is-Undefined!2220 lt!145836) (ite (is-Found!2220 lt!145836) (= (select (arr!7060 a!3312) (index!11051 lt!145836)) k!2524) (ite (is-MissingZero!2220 lt!145836) (= (select (arr!7060 a!3312) (index!11050 lt!145836)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!2220 lt!145836) (= (select (arr!7060 a!3312) (index!11053 lt!145836)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!185928 () SeekEntryResult!2220)

(assert (=> d!66641 (= lt!145836 e!185928)))

(declare-fun c!47285 () Bool)

(assert (=> d!66641 (= c!47285 (and (is-Intermediate!2220 lt!145837) (undefined!3032 lt!145837)))))

(assert (=> d!66641 (= lt!145837 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2524 mask!3809) k!2524 a!3312 mask!3809))))

(assert (=> d!66641 (validMask!0 mask!3809)))

(assert (=> d!66641 (= (seekEntryOrOpen!0 k!2524 a!3312 mask!3809) lt!145836)))

(declare-fun b!294079 () Bool)

(declare-fun c!47284 () Bool)

(declare-fun lt!145838 () (_ BitVec 64))

(assert (=> b!294079 (= c!47284 (= lt!145838 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!185930 () SeekEntryResult!2220)

(assert (=> b!294079 (= e!185929 e!185930)))

(declare-fun b!294080 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14885 (_ BitVec 32)) SeekEntryResult!2220)

(assert (=> b!294080 (= e!185930 (seekKeyOrZeroReturnVacant!0 (x!29215 lt!145837) (index!11052 lt!145837) (index!11052 lt!145837) k!2524 a!3312 mask!3809))))

(declare-fun b!294081 () Bool)

(assert (=> b!294081 (= e!185928 e!185929)))

(assert (=> b!294081 (= lt!145838 (select (arr!7060 a!3312) (index!11052 lt!145837)))))

(declare-fun c!47286 () Bool)

(assert (=> b!294081 (= c!47286 (= lt!145838 k!2524))))

(declare-fun b!294082 () Bool)

(assert (=> b!294082 (= e!185930 (MissingZero!2220 (index!11052 lt!145837)))))

(declare-fun b!294083 () Bool)

(assert (=> b!294083 (= e!185928 Undefined!2220)))

(assert (= (and d!66641 c!47285) b!294083))

(assert (= (and d!66641 (not c!47285)) b!294081))

(assert (= (and b!294081 c!47286) b!294078))

(assert (= (and b!294081 (not c!47286)) b!294079))

(assert (= (and b!294079 c!47284) b!294082))

(assert (= (and b!294079 (not c!47284)) b!294080))

(assert (=> d!66641 m!307563))

(declare-fun m!307657 () Bool)

(assert (=> d!66641 m!307657))

(assert (=> d!66641 m!307569))

(declare-fun m!307659 () Bool)

(assert (=> d!66641 m!307659))

(declare-fun m!307661 () Bool)

(assert (=> d!66641 m!307661))

(assert (=> d!66641 m!307563))

(declare-fun m!307663 () Bool)

(assert (=> d!66641 m!307663))

(declare-fun m!307665 () Bool)

(assert (=> b!294080 m!307665))

(declare-fun m!307667 () Bool)

(assert (=> b!294081 m!307667))

(assert (=> b!293974 d!66641))

(declare-fun d!66649 () Bool)

(declare-fun res!154661 () Bool)

(declare-fun e!185941 () Bool)

(assert (=> d!66649 (=> res!154661 e!185941)))

(assert (=> d!66649 (= res!154661 (= (select (arr!7060 a!3312) #b00000000000000000000000000000000) k!2524))))

(assert (=> d!66649 (= (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000) e!185941)))

(declare-fun b!294094 () Bool)

(declare-fun e!185942 () Bool)

(assert (=> b!294094 (= e!185941 e!185942)))

(declare-fun res!154662 () Bool)

(assert (=> b!294094 (=> (not res!154662) (not e!185942))))

(assert (=> b!294094 (= res!154662 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7412 a!3312)))))

(declare-fun b!294095 () Bool)

(assert (=> b!294095 (= e!185942 (arrayContainsKey!0 a!3312 k!2524 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!66649 (not res!154661)) b!294094))

(assert (= (and b!294094 res!154662) b!294095))

(declare-fun m!307673 () Bool)

(assert (=> d!66649 m!307673))

(declare-fun m!307675 () Bool)

(assert (=> b!294095 m!307675))

(assert (=> b!293975 d!66649))

(declare-fun b!294177 () Bool)

(declare-fun e!185989 () Bool)

(declare-fun lt!145863 () SeekEntryResult!2220)

(assert (=> b!294177 (= e!185989 (bvsge (x!29215 lt!145863) #b01111111111111111111111111111110))))

(declare-fun b!294179 () Bool)

(declare-fun e!185990 () SeekEntryResult!2220)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!294179 (= e!185990 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!145770 #b00000000000000000000000000000000 mask!3809) k!2524 (array!14886 (store (arr!7060 a!3312) i!1256 k!2524) (size!7412 a!3312)) mask!3809))))

(declare-fun b!294180 () Bool)

(assert (=> b!294180 (and (bvsge (index!11052 lt!145863) #b00000000000000000000000000000000) (bvslt (index!11052 lt!145863) (size!7412 (array!14886 (store (arr!7060 a!3312) i!1256 k!2524) (size!7412 a!3312)))))))

(declare-fun e!185992 () Bool)

(assert (=> b!294180 (= e!185992 (= (select (arr!7060 (array!14886 (store (arr!7060 a!3312) i!1256 k!2524) (size!7412 a!3312))) (index!11052 lt!145863)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!294181 () Bool)

(assert (=> b!294181 (and (bvsge (index!11052 lt!145863) #b00000000000000000000000000000000) (bvslt (index!11052 lt!145863) (size!7412 (array!14886 (store (arr!7060 a!3312) i!1256 k!2524) (size!7412 a!3312)))))))

(declare-fun res!154691 () Bool)

(assert (=> b!294181 (= res!154691 (= (select (arr!7060 (array!14886 (store (arr!7060 a!3312) i!1256 k!2524) (size!7412 a!3312))) (index!11052 lt!145863)) k!2524))))

(assert (=> b!294181 (=> res!154691 e!185992)))

(declare-fun e!185991 () Bool)

(assert (=> b!294181 (= e!185991 e!185992)))

(declare-fun b!294182 () Bool)

(declare-fun e!185988 () SeekEntryResult!2220)

(assert (=> b!294182 (= e!185988 (Intermediate!2220 true lt!145770 #b00000000000000000000000000000000))))

(declare-fun b!294183 () Bool)

(assert (=> b!294183 (= e!185990 (Intermediate!2220 false lt!145770 #b00000000000000000000000000000000))))

(declare-fun d!66653 () Bool)

(assert (=> d!66653 e!185989))

(declare-fun c!47314 () Bool)

(assert (=> d!66653 (= c!47314 (and (is-Intermediate!2220 lt!145863) (undefined!3032 lt!145863)))))

(assert (=> d!66653 (= lt!145863 e!185988)))

(declare-fun c!47315 () Bool)

(assert (=> d!66653 (= c!47315 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!145864 () (_ BitVec 64))

(assert (=> d!66653 (= lt!145864 (select (arr!7060 (array!14886 (store (arr!7060 a!3312) i!1256 k!2524) (size!7412 a!3312))) lt!145770))))

(assert (=> d!66653 (validMask!0 mask!3809)))

(assert (=> d!66653 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!145770 k!2524 (array!14886 (store (arr!7060 a!3312) i!1256 k!2524) (size!7412 a!3312)) mask!3809) lt!145863)))

(declare-fun b!294178 () Bool)

(assert (=> b!294178 (= e!185989 e!185991)))

(declare-fun res!154693 () Bool)

(assert (=> b!294178 (= res!154693 (and (is-Intermediate!2220 lt!145863) (not (undefined!3032 lt!145863)) (bvslt (x!29215 lt!145863) #b01111111111111111111111111111110) (bvsge (x!29215 lt!145863) #b00000000000000000000000000000000) (bvsge (x!29215 lt!145863) #b00000000000000000000000000000000)))))

(assert (=> b!294178 (=> (not res!154693) (not e!185991))))

(declare-fun b!294184 () Bool)

(assert (=> b!294184 (and (bvsge (index!11052 lt!145863) #b00000000000000000000000000000000) (bvslt (index!11052 lt!145863) (size!7412 (array!14886 (store (arr!7060 a!3312) i!1256 k!2524) (size!7412 a!3312)))))))

(declare-fun res!154692 () Bool)

(assert (=> b!294184 (= res!154692 (= (select (arr!7060 (array!14886 (store (arr!7060 a!3312) i!1256 k!2524) (size!7412 a!3312))) (index!11052 lt!145863)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!294184 (=> res!154692 e!185992)))

(declare-fun b!294185 () Bool)

(assert (=> b!294185 (= e!185988 e!185990)))

(declare-fun c!47316 () Bool)

(assert (=> b!294185 (= c!47316 (or (= lt!145864 k!2524) (= (bvadd lt!145864 lt!145864) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!66653 c!47315) b!294182))

(assert (= (and d!66653 (not c!47315)) b!294185))

(assert (= (and b!294185 c!47316) b!294183))

(assert (= (and b!294185 (not c!47316)) b!294179))

(assert (= (and d!66653 c!47314) b!294177))

(assert (= (and d!66653 (not c!47314)) b!294178))

(assert (= (and b!294178 res!154693) b!294181))

(assert (= (and b!294181 (not res!154691)) b!294184))

(assert (= (and b!294184 (not res!154692)) b!294180))

(declare-fun m!307699 () Bool)

(assert (=> b!294180 m!307699))

(assert (=> b!294184 m!307699))

(declare-fun m!307701 () Bool)

(assert (=> b!294179 m!307701))

(assert (=> b!294179 m!307701))

(declare-fun m!307703 () Bool)

(assert (=> b!294179 m!307703))

(assert (=> b!294181 m!307699))

(declare-fun m!307705 () Bool)

(assert (=> d!66653 m!307705))

(assert (=> d!66653 m!307569))

(assert (=> b!293970 d!66653))

(declare-fun b!294195 () Bool)

(declare-fun e!185999 () Bool)

(declare-fun lt!145867 () SeekEntryResult!2220)

(assert (=> b!294195 (= e!185999 (bvsge (x!29215 lt!145867) #b01111111111111111111111111111110))))

(declare-fun e!186000 () SeekEntryResult!2220)

(declare-fun b!294197 () Bool)

(assert (=> b!294197 (= e!186000 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!145770 #b00000000000000000000000000000000 mask!3809) k!2524 a!3312 mask!3809))))

(declare-fun b!294198 () Bool)

(assert (=> b!294198 (and (bvsge (index!11052 lt!145867) #b00000000000000000000000000000000) (bvslt (index!11052 lt!145867) (size!7412 a!3312)))))

(declare-fun e!186002 () Bool)

(assert (=> b!294198 (= e!186002 (= (select (arr!7060 a!3312) (index!11052 lt!145867)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!294199 () Bool)

(assert (=> b!294199 (and (bvsge (index!11052 lt!145867) #b00000000000000000000000000000000) (bvslt (index!11052 lt!145867) (size!7412 a!3312)))))

(declare-fun res!154697 () Bool)

(assert (=> b!294199 (= res!154697 (= (select (arr!7060 a!3312) (index!11052 lt!145867)) k!2524))))

(assert (=> b!294199 (=> res!154697 e!186002)))

(declare-fun e!186001 () Bool)

(assert (=> b!294199 (= e!186001 e!186002)))

(declare-fun b!294200 () Bool)

(declare-fun e!185998 () SeekEntryResult!2220)

(assert (=> b!294200 (= e!185998 (Intermediate!2220 true lt!145770 #b00000000000000000000000000000000))))

(declare-fun b!294201 () Bool)

(assert (=> b!294201 (= e!186000 (Intermediate!2220 false lt!145770 #b00000000000000000000000000000000))))

(declare-fun d!66661 () Bool)

(assert (=> d!66661 e!185999))

(declare-fun c!47320 () Bool)

(assert (=> d!66661 (= c!47320 (and (is-Intermediate!2220 lt!145867) (undefined!3032 lt!145867)))))

(assert (=> d!66661 (= lt!145867 e!185998)))

(declare-fun c!47321 () Bool)

(assert (=> d!66661 (= c!47321 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!145868 () (_ BitVec 64))

(assert (=> d!66661 (= lt!145868 (select (arr!7060 a!3312) lt!145770))))

(assert (=> d!66661 (validMask!0 mask!3809)))

(assert (=> d!66661 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!145770 k!2524 a!3312 mask!3809) lt!145867)))

(declare-fun b!294196 () Bool)

(assert (=> b!294196 (= e!185999 e!186001)))

(declare-fun res!154699 () Bool)

(assert (=> b!294196 (= res!154699 (and (is-Intermediate!2220 lt!145867) (not (undefined!3032 lt!145867)) (bvslt (x!29215 lt!145867) #b01111111111111111111111111111110) (bvsge (x!29215 lt!145867) #b00000000000000000000000000000000) (bvsge (x!29215 lt!145867) #b00000000000000000000000000000000)))))

(assert (=> b!294196 (=> (not res!154699) (not e!186001))))

(declare-fun b!294202 () Bool)

(assert (=> b!294202 (and (bvsge (index!11052 lt!145867) #b00000000000000000000000000000000) (bvslt (index!11052 lt!145867) (size!7412 a!3312)))))

(declare-fun res!154698 () Bool)

(assert (=> b!294202 (= res!154698 (= (select (arr!7060 a!3312) (index!11052 lt!145867)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!294202 (=> res!154698 e!186002)))

(declare-fun b!294203 () Bool)

(assert (=> b!294203 (= e!185998 e!186000)))

(declare-fun c!47322 () Bool)

(assert (=> b!294203 (= c!47322 (or (= lt!145868 k!2524) (= (bvadd lt!145868 lt!145868) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!66661 c!47321) b!294200))

(assert (= (and d!66661 (not c!47321)) b!294203))

(assert (= (and b!294203 c!47322) b!294201))

(assert (= (and b!294203 (not c!47322)) b!294197))

(assert (= (and d!66661 c!47320) b!294195))

(assert (= (and d!66661 (not c!47320)) b!294196))

(assert (= (and b!294196 res!154699) b!294199))

(assert (= (and b!294199 (not res!154697)) b!294202))

(assert (= (and b!294202 (not res!154698)) b!294198))

(declare-fun m!307713 () Bool)

(assert (=> b!294198 m!307713))

(assert (=> b!294202 m!307713))

(assert (=> b!294197 m!307701))

(assert (=> b!294197 m!307701))

(declare-fun m!307715 () Bool)

(assert (=> b!294197 m!307715))

(assert (=> b!294199 m!307713))

(declare-fun m!307717 () Bool)

(assert (=> d!66661 m!307717))

(assert (=> d!66661 m!307569))

(assert (=> b!293970 d!66661))

(declare-fun d!66665 () Bool)

(declare-fun lt!145878 () (_ BitVec 32))

(declare-fun lt!145877 () (_ BitVec 32))

(assert (=> d!66665 (= lt!145878 (bvmul (bvxor lt!145877 (bvlshr lt!145877 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!66665 (= lt!145877 ((_ extract 31 0) (bvand (bvxor k!2524 (bvlshr k!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!66665 (and (bvsge mask!3809 #b00000000000000000000000000000000) (let ((res!154701 (let ((h!5299 ((_ extract 31 0) (bvand (bvxor k!2524 (bvlshr k!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!29223 (bvmul (bvxor h!5299 (bvlshr h!5299 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!29223 (bvlshr x!29223 #b00000000000000000000000000001101)) mask!3809))))) (and (bvslt res!154701 (bvadd mask!3809 #b00000000000000000000000000000001)) (bvsge res!154701 #b00000000000000000000000000000000))))))

(assert (=> d!66665 (= (toIndex!0 k!2524 mask!3809) (bvand (bvxor lt!145878 (bvlshr lt!145878 #b00000000000000000000000000001101)) mask!3809))))

(assert (=> b!293970 d!66665))

(declare-fun b!294220 () Bool)

(declare-fun e!186016 () Bool)

(declare-fun e!186017 () Bool)

(assert (=> b!294220 (= e!186016 e!186017)))

(declare-fun c!47327 () Bool)

(assert (=> b!294220 (= c!47327 (validKeyInArray!0 (select (arr!7060 a!3312) #b00000000000000000000000000000000)))))

(declare-fun d!66667 () Bool)

(declare-fun res!154711 () Bool)

(assert (=> d!66667 (=> res!154711 e!186016)))

(assert (=> d!66667 (= res!154711 (bvsge #b00000000000000000000000000000000 (size!7412 a!3312)))))

(assert (=> d!66667 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809) e!186016)))

(declare-fun bm!25691 () Bool)

(declare-fun call!25694 () Bool)

(assert (=> bm!25691 (= call!25694 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3312 mask!3809))))

(declare-fun b!294221 () Bool)

(declare-fun e!186015 () Bool)

(assert (=> b!294221 (= e!186017 e!186015)))

(declare-fun lt!145893 () (_ BitVec 64))

(assert (=> b!294221 (= lt!145893 (select (arr!7060 a!3312) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9189 0))(
  ( (Unit!9190) )
))
(declare-fun lt!145895 () Unit!9189)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!14885 (_ BitVec 64) (_ BitVec 32)) Unit!9189)

(assert (=> b!294221 (= lt!145895 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3312 lt!145893 #b00000000000000000000000000000000))))

(assert (=> b!294221 (arrayContainsKey!0 a!3312 lt!145893 #b00000000000000000000000000000000)))

(declare-fun lt!145894 () Unit!9189)

(assert (=> b!294221 (= lt!145894 lt!145895)))

(declare-fun res!154710 () Bool)

(assert (=> b!294221 (= res!154710 (= (seekEntryOrOpen!0 (select (arr!7060 a!3312) #b00000000000000000000000000000000) a!3312 mask!3809) (Found!2220 #b00000000000000000000000000000000)))))

(assert (=> b!294221 (=> (not res!154710) (not e!186015))))

(declare-fun b!294222 () Bool)

(assert (=> b!294222 (= e!186015 call!25694)))

(declare-fun b!294223 () Bool)

(assert (=> b!294223 (= e!186017 call!25694)))

(assert (= (and d!66667 (not res!154711)) b!294220))

(assert (= (and b!294220 c!47327) b!294221))

(assert (= (and b!294220 (not c!47327)) b!294223))

(assert (= (and b!294221 res!154710) b!294222))

(assert (= (or b!294222 b!294223) bm!25691))

(assert (=> b!294220 m!307673))

(assert (=> b!294220 m!307673))

(declare-fun m!307719 () Bool)

(assert (=> b!294220 m!307719))

(declare-fun m!307721 () Bool)

(assert (=> bm!25691 m!307721))

(assert (=> b!294221 m!307673))

(declare-fun m!307723 () Bool)

(assert (=> b!294221 m!307723))

(declare-fun m!307725 () Bool)

(assert (=> b!294221 m!307725))

(assert (=> b!294221 m!307673))

(declare-fun m!307727 () Bool)

(assert (=> b!294221 m!307727))

(assert (=> b!293971 d!66667))

(push 1)

