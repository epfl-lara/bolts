; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32844 () Bool)

(assert start!32844)

(declare-fun b!327612 () Bool)

(declare-fun res!180525 () Bool)

(declare-fun e!201469 () Bool)

(assert (=> b!327612 (=> (not res!180525) (not e!201469))))

(declare-datatypes ((array!16787 0))(
  ( (array!16788 (arr!7942 (Array (_ BitVec 32) (_ BitVec 64))) (size!8294 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16787)

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!327612 (= res!180525 (and (= (select (arr!7942 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8294 a!3305))))))

(declare-fun b!327613 () Bool)

(declare-fun res!180523 () Bool)

(assert (=> b!327613 (=> (not res!180523) (not e!201469))))

(declare-fun k!2497 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!3084 0))(
  ( (MissingZero!3084 (index!14512 (_ BitVec 32))) (Found!3084 (index!14513 (_ BitVec 32))) (Intermediate!3084 (undefined!3896 Bool) (index!14514 (_ BitVec 32)) (x!32729 (_ BitVec 32))) (Undefined!3084) (MissingVacant!3084 (index!14515 (_ BitVec 32))) )
))
(declare-fun lt!157652 () SeekEntryResult!3084)

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16787 (_ BitVec 32)) SeekEntryResult!3084)

(assert (=> b!327613 (= res!180523 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!157652))))

(declare-fun b!327614 () Bool)

(declare-fun res!180527 () Bool)

(declare-fun e!201468 () Bool)

(assert (=> b!327614 (=> (not res!180527) (not e!201468))))

(assert (=> b!327614 (= res!180527 (and (= (size!8294 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8294 a!3305))))))

(declare-fun res!180521 () Bool)

(assert (=> start!32844 (=> (not res!180521) (not e!201468))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32844 (= res!180521 (validMask!0 mask!3777))))

(assert (=> start!32844 e!201468))

(declare-fun array_inv!5896 (array!16787) Bool)

(assert (=> start!32844 (array_inv!5896 a!3305)))

(assert (=> start!32844 true))

(declare-fun b!327615 () Bool)

(declare-fun res!180524 () Bool)

(assert (=> b!327615 (=> (not res!180524) (not e!201468))))

(declare-fun arrayContainsKey!0 (array!16787 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!327615 (= res!180524 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!327616 () Bool)

(declare-fun res!180520 () Bool)

(assert (=> b!327616 (=> (not res!180520) (not e!201468))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16787 (_ BitVec 32)) SeekEntryResult!3084)

(assert (=> b!327616 (= res!180520 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!3084 i!1250)))))

(declare-fun b!327617 () Bool)

(declare-fun res!180528 () Bool)

(assert (=> b!327617 (=> (not res!180528) (not e!201468))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16787 (_ BitVec 32)) Bool)

(assert (=> b!327617 (= res!180528 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!327618 () Bool)

(declare-fun res!180526 () Bool)

(assert (=> b!327618 (=> (not res!180526) (not e!201468))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!327618 (= res!180526 (validKeyInArray!0 k!2497))))

(declare-fun b!327619 () Bool)

(declare-fun res!180522 () Bool)

(assert (=> b!327619 (=> (not res!180522) (not e!201469))))

(assert (=> b!327619 (= res!180522 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7942 a!3305) index!1840) k!2497)) (= x!1490 resX!58) (not (= resIndex!58 index!1840)) (not (= (select (arr!7942 a!3305) index!1840) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7942 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!327620 () Bool)

(declare-fun lt!157651 () SeekEntryResult!3084)

(assert (=> b!327620 (= e!201469 (and (is-Intermediate!3084 lt!157651) (bvslt (x!32729 lt!157651) (bvadd #b00000000000000000000000000000001 x!1490))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!327620 (= lt!157651 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) k!2497 a!3305 mask!3777))))

(declare-fun b!327621 () Bool)

(assert (=> b!327621 (= e!201468 e!201469)))

(declare-fun res!180519 () Bool)

(assert (=> b!327621 (=> (not res!180519) (not e!201469))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!327621 (= res!180519 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!157652))))

(assert (=> b!327621 (= lt!157652 (Intermediate!3084 false resIndex!58 resX!58))))

(assert (= (and start!32844 res!180521) b!327614))

(assert (= (and b!327614 res!180527) b!327618))

(assert (= (and b!327618 res!180526) b!327615))

(assert (= (and b!327615 res!180524) b!327616))

(assert (= (and b!327616 res!180520) b!327617))

(assert (= (and b!327617 res!180528) b!327621))

(assert (= (and b!327621 res!180519) b!327612))

(assert (= (and b!327612 res!180525) b!327613))

(assert (= (and b!327613 res!180523) b!327619))

(assert (= (and b!327619 res!180522) b!327620))

(declare-fun m!333865 () Bool)

(assert (=> b!327621 m!333865))

(assert (=> b!327621 m!333865))

(declare-fun m!333867 () Bool)

(assert (=> b!327621 m!333867))

(declare-fun m!333869 () Bool)

(assert (=> b!327616 m!333869))

(declare-fun m!333871 () Bool)

(assert (=> b!327612 m!333871))

(declare-fun m!333873 () Bool)

(assert (=> b!327617 m!333873))

(declare-fun m!333875 () Bool)

(assert (=> b!327615 m!333875))

(declare-fun m!333877 () Bool)

(assert (=> b!327620 m!333877))

(assert (=> b!327620 m!333877))

(declare-fun m!333879 () Bool)

(assert (=> b!327620 m!333879))

(declare-fun m!333881 () Bool)

(assert (=> b!327613 m!333881))

(declare-fun m!333883 () Bool)

(assert (=> b!327619 m!333883))

(declare-fun m!333885 () Bool)

(assert (=> b!327618 m!333885))

(declare-fun m!333887 () Bool)

(assert (=> start!32844 m!333887))

(declare-fun m!333889 () Bool)

(assert (=> start!32844 m!333889))

(push 1)

(assert (not b!327615))

(assert (not b!327620))

(assert (not b!327618))

(assert (not start!32844))

(assert (not b!327613))

(assert (not b!327616))

(assert (not b!327617))

(assert (not b!327621))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!69781 () Bool)

(assert (=> d!69781 (= (validMask!0 mask!3777) (and (or (= mask!3777 #b00000000000000000000000000000111) (= mask!3777 #b00000000000000000000000000001111) (= mask!3777 #b00000000000000000000000000011111) (= mask!3777 #b00000000000000000000000000111111) (= mask!3777 #b00000000000000000000000001111111) (= mask!3777 #b00000000000000000000000011111111) (= mask!3777 #b00000000000000000000000111111111) (= mask!3777 #b00000000000000000000001111111111) (= mask!3777 #b00000000000000000000011111111111) (= mask!3777 #b00000000000000000000111111111111) (= mask!3777 #b00000000000000000001111111111111) (= mask!3777 #b00000000000000000011111111111111) (= mask!3777 #b00000000000000000111111111111111) (= mask!3777 #b00000000000000001111111111111111) (= mask!3777 #b00000000000000011111111111111111) (= mask!3777 #b00000000000000111111111111111111) (= mask!3777 #b00000000000001111111111111111111) (= mask!3777 #b00000000000011111111111111111111) (= mask!3777 #b00000000000111111111111111111111) (= mask!3777 #b00000000001111111111111111111111) (= mask!3777 #b00000000011111111111111111111111) (= mask!3777 #b00000000111111111111111111111111) (= mask!3777 #b00000001111111111111111111111111) (= mask!3777 #b00000011111111111111111111111111) (= mask!3777 #b00000111111111111111111111111111) (= mask!3777 #b00001111111111111111111111111111) (= mask!3777 #b00011111111111111111111111111111) (= mask!3777 #b00111111111111111111111111111111)) (bvsle mask!3777 #b00111111111111111111111111111111)))))

(assert (=> start!32844 d!69781))

(declare-fun d!69787 () Bool)

(assert (=> d!69787 (= (array_inv!5896 a!3305) (bvsge (size!8294 a!3305) #b00000000000000000000000000000000))))

(assert (=> start!32844 d!69787))

(declare-fun b!327736 () Bool)

(declare-fun e!201517 () Bool)

(declare-fun lt!157683 () SeekEntryResult!3084)

(assert (=> b!327736 (= e!201517 (bvsge (x!32729 lt!157683) #b01111111111111111111111111111110))))

(declare-fun b!327737 () Bool)

(declare-fun e!201519 () Bool)

(assert (=> b!327737 (= e!201517 e!201519)))

(declare-fun res!180602 () Bool)

(assert (=> b!327737 (= res!180602 (and (is-Intermediate!3084 lt!157683) (not (undefined!3896 lt!157683)) (bvslt (x!32729 lt!157683) #b01111111111111111111111111111110) (bvsge (x!32729 lt!157683) #b00000000000000000000000000000000) (bvsge (x!32729 lt!157683) #b00000000000000000000000000000000)))))

(assert (=> b!327737 (=> (not res!180602) (not e!201519))))

(declare-fun b!327738 () Bool)

(assert (=> b!327738 (and (bvsge (index!14514 lt!157683) #b00000000000000000000000000000000) (bvslt (index!14514 lt!157683) (size!8294 a!3305)))))

(declare-fun res!180603 () Bool)

(assert (=> b!327738 (= res!180603 (= (select (arr!7942 a!3305) (index!14514 lt!157683)) k!2497))))

(declare-fun e!201518 () Bool)

(assert (=> b!327738 (=> res!180603 e!201518)))

(assert (=> b!327738 (= e!201519 e!201518)))

(declare-fun b!327739 () Bool)

(declare-fun e!201521 () SeekEntryResult!3084)

(assert (=> b!327739 (= e!201521 (Intermediate!3084 false (toIndex!0 k!2497 mask!3777) #b00000000000000000000000000000000))))

(declare-fun b!327740 () Bool)

(declare-fun e!201520 () SeekEntryResult!3084)

(assert (=> b!327740 (= e!201520 e!201521)))

(declare-fun c!51202 () Bool)

(declare-fun lt!157682 () (_ BitVec 64))

(assert (=> b!327740 (= c!51202 (or (= lt!157682 k!2497) (= (bvadd lt!157682 lt!157682) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!327741 () Bool)

(assert (=> b!327741 (= e!201520 (Intermediate!3084 true (toIndex!0 k!2497 mask!3777) #b00000000000000000000000000000000))))

(declare-fun b!327742 () Bool)

(assert (=> b!327742 (= e!201521 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!2497 mask!3777) #b00000000000000000000000000000000 mask!3777) k!2497 a!3305 mask!3777))))

(declare-fun b!327743 () Bool)

(assert (=> b!327743 (and (bvsge (index!14514 lt!157683) #b00000000000000000000000000000000) (bvslt (index!14514 lt!157683) (size!8294 a!3305)))))

(declare-fun res!180601 () Bool)

(assert (=> b!327743 (= res!180601 (= (select (arr!7942 a!3305) (index!14514 lt!157683)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!327743 (=> res!180601 e!201518)))

(declare-fun d!69793 () Bool)

(assert (=> d!69793 e!201517))

(declare-fun c!51201 () Bool)

(assert (=> d!69793 (= c!51201 (and (is-Intermediate!3084 lt!157683) (undefined!3896 lt!157683)))))

(assert (=> d!69793 (= lt!157683 e!201520)))

(declare-fun c!51203 () Bool)

(assert (=> d!69793 (= c!51203 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!69793 (= lt!157682 (select (arr!7942 a!3305) (toIndex!0 k!2497 mask!3777)))))

(assert (=> d!69793 (validMask!0 mask!3777)))

(assert (=> d!69793 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!157683)))

(declare-fun b!327744 () Bool)

(assert (=> b!327744 (and (bvsge (index!14514 lt!157683) #b00000000000000000000000000000000) (bvslt (index!14514 lt!157683) (size!8294 a!3305)))))

(assert (=> b!327744 (= e!201518 (= (select (arr!7942 a!3305) (index!14514 lt!157683)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!69793 c!51203) b!327741))

(assert (= (and d!69793 (not c!51203)) b!327740))

(assert (= (and b!327740 c!51202) b!327739))

(assert (= (and b!327740 (not c!51202)) b!327742))

(assert (= (and d!69793 c!51201) b!327736))

(assert (= (and d!69793 (not c!51201)) b!327737))

(assert (= (and b!327737 res!180602) b!327738))

(assert (= (and b!327738 (not res!180603)) b!327743))

(assert (= (and b!327743 (not res!180601)) b!327744))

(declare-fun m!333953 () Bool)

(assert (=> b!327743 m!333953))

(assert (=> b!327744 m!333953))

(assert (=> b!327738 m!333953))

(assert (=> d!69793 m!333865))

(declare-fun m!333957 () Bool)

(assert (=> d!69793 m!333957))

(assert (=> d!69793 m!333887))

(assert (=> b!327742 m!333865))

(declare-fun m!333961 () Bool)

(assert (=> b!327742 m!333961))

(assert (=> b!327742 m!333961))

(declare-fun m!333963 () Bool)

(assert (=> b!327742 m!333963))

(assert (=> b!327621 d!69793))

(declare-fun d!69799 () Bool)

(declare-fun lt!157693 () (_ BitVec 32))

(declare-fun lt!157692 () (_ BitVec 32))

(assert (=> d!69799 (= lt!157693 (bvmul (bvxor lt!157692 (bvlshr lt!157692 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!69799 (= lt!157692 ((_ extract 31 0) (bvand (bvxor k!2497 (bvlshr k!2497 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!69799 (and (bvsge mask!3777 #b00000000000000000000000000000000) (let ((res!180610 (let ((h!5423 ((_ extract 31 0) (bvand (bvxor k!2497 (bvlshr k!2497 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!32734 (bvmul (bvxor h!5423 (bvlshr h!5423 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!32734 (bvlshr x!32734 #b00000000000000000000000000001101)) mask!3777))))) (and (bvslt res!180610 (bvadd mask!3777 #b00000000000000000000000000000001)) (bvsge res!180610 #b00000000000000000000000000000000))))))

(assert (=> d!69799 (= (toIndex!0 k!2497 mask!3777) (bvand (bvxor lt!157693 (bvlshr lt!157693 #b00000000000000000000000000001101)) mask!3777))))

(assert (=> b!327621 d!69799))

(declare-fun d!69803 () Bool)

(declare-fun res!180616 () Bool)

(declare-fun e!201536 () Bool)

(assert (=> d!69803 (=> res!180616 e!201536)))

(assert (=> d!69803 (= res!180616 (= (select (arr!7942 a!3305) #b00000000000000000000000000000000) k!2497))))

(assert (=> d!69803 (= (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000) e!201536)))

(declare-fun b!327767 () Bool)

(declare-fun e!201537 () Bool)

(assert (=> b!327767 (= e!201536 e!201537)))

(declare-fun res!180617 () Bool)

(assert (=> b!327767 (=> (not res!180617) (not e!201537))))

(assert (=> b!327767 (= res!180617 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!8294 a!3305)))))

(declare-fun b!327768 () Bool)

(assert (=> b!327768 (= e!201537 (arrayContainsKey!0 a!3305 k!2497 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!69803 (not res!180616)) b!327767))

(assert (= (and b!327767 res!180617) b!327768))

(declare-fun m!333973 () Bool)

(assert (=> d!69803 m!333973))

(declare-fun m!333975 () Bool)

(assert (=> b!327768 m!333975))

(assert (=> b!327615 d!69803))

(declare-fun b!327769 () Bool)

(declare-fun e!201538 () Bool)

(declare-fun lt!157701 () SeekEntryResult!3084)

(assert (=> b!327769 (= e!201538 (bvsge (x!32729 lt!157701) #b01111111111111111111111111111110))))

(declare-fun b!327770 () Bool)

(declare-fun e!201540 () Bool)

(assert (=> b!327770 (= e!201538 e!201540)))

(declare-fun res!180619 () Bool)

(assert (=> b!327770 (= res!180619 (and (is-Intermediate!3084 lt!157701) (not (undefined!3896 lt!157701)) (bvslt (x!32729 lt!157701) #b01111111111111111111111111111110) (bvsge (x!32729 lt!157701) #b00000000000000000000000000000000) (bvsge (x!32729 lt!157701) (bvadd #b00000000000000000000000000000001 x!1490))))))

(assert (=> b!327770 (=> (not res!180619) (not e!201540))))

(declare-fun b!327771 () Bool)

(assert (=> b!327771 (and (bvsge (index!14514 lt!157701) #b00000000000000000000000000000000) (bvslt (index!14514 lt!157701) (size!8294 a!3305)))))

(declare-fun res!180620 () Bool)

(assert (=> b!327771 (= res!180620 (= (select (arr!7942 a!3305) (index!14514 lt!157701)) k!2497))))

(declare-fun e!201539 () Bool)

(assert (=> b!327771 (=> res!180620 e!201539)))

(assert (=> b!327771 (= e!201540 e!201539)))

(declare-fun e!201542 () SeekEntryResult!3084)

(declare-fun b!327772 () Bool)

(assert (=> b!327772 (= e!201542 (Intermediate!3084 false (nextIndex!0 index!1840 x!1490 mask!3777) (bvadd #b00000000000000000000000000000001 x!1490)))))

(declare-fun b!327773 () Bool)

(declare-fun e!201541 () SeekEntryResult!3084)

(assert (=> b!327773 (= e!201541 e!201542)))

(declare-fun c!51211 () Bool)

(declare-fun lt!157700 () (_ BitVec 64))

(assert (=> b!327773 (= c!51211 (or (= lt!157700 k!2497) (= (bvadd lt!157700 lt!157700) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!327774 () Bool)

(assert (=> b!327774 (= e!201541 (Intermediate!3084 true (nextIndex!0 index!1840 x!1490 mask!3777) (bvadd #b00000000000000000000000000000001 x!1490)))))

(declare-fun b!327775 () Bool)

(assert (=> b!327775 (= e!201542 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1490 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 index!1840 x!1490 mask!3777) (bvadd #b00000000000000000000000000000001 x!1490) mask!3777) k!2497 a!3305 mask!3777))))

(declare-fun b!327776 () Bool)

(assert (=> b!327776 (and (bvsge (index!14514 lt!157701) #b00000000000000000000000000000000) (bvslt (index!14514 lt!157701) (size!8294 a!3305)))))

(declare-fun res!180618 () Bool)

(assert (=> b!327776 (= res!180618 (= (select (arr!7942 a!3305) (index!14514 lt!157701)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!327776 (=> res!180618 e!201539)))

(declare-fun d!69807 () Bool)

(assert (=> d!69807 e!201538))

(declare-fun c!51210 () Bool)

(assert (=> d!69807 (= c!51210 (and (is-Intermediate!3084 lt!157701) (undefined!3896 lt!157701)))))

(assert (=> d!69807 (= lt!157701 e!201541)))

(declare-fun c!51212 () Bool)

(assert (=> d!69807 (= c!51212 (bvsge (bvadd #b00000000000000000000000000000001 x!1490) #b01111111111111111111111111111110))))

(assert (=> d!69807 (= lt!157700 (select (arr!7942 a!3305) (nextIndex!0 index!1840 x!1490 mask!3777)))))

(assert (=> d!69807 (validMask!0 mask!3777)))

(assert (=> d!69807 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) k!2497 a!3305 mask!3777) lt!157701)))

(declare-fun b!327777 () Bool)

(assert (=> b!327777 (and (bvsge (index!14514 lt!157701) #b00000000000000000000000000000000) (bvslt (index!14514 lt!157701) (size!8294 a!3305)))))

(assert (=> b!327777 (= e!201539 (= (select (arr!7942 a!3305) (index!14514 lt!157701)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!69807 c!51212) b!327774))

(assert (= (and d!69807 (not c!51212)) b!327773))

(assert (= (and b!327773 c!51211) b!327772))

(assert (= (and b!327773 (not c!51211)) b!327775))

(assert (= (and d!69807 c!51210) b!327769))

(assert (= (and d!69807 (not c!51210)) b!327770))

(assert (= (and b!327770 res!180619) b!327771))

(assert (= (and b!327771 (not res!180620)) b!327776))

(assert (= (and b!327776 (not res!180618)) b!327777))

(declare-fun m!333977 () Bool)

(assert (=> b!327776 m!333977))

(assert (=> b!327777 m!333977))

(assert (=> b!327771 m!333977))

(assert (=> d!69807 m!333877))

(declare-fun m!333979 () Bool)

(assert (=> d!69807 m!333979))

(assert (=> d!69807 m!333887))

(assert (=> b!327775 m!333877))

(declare-fun m!333981 () Bool)

(assert (=> b!327775 m!333981))

(assert (=> b!327775 m!333981))

(declare-fun m!333983 () Bool)

(assert (=> b!327775 m!333983))

(assert (=> b!327620 d!69807))

(declare-fun d!69809 () Bool)

(declare-fun lt!157704 () (_ BitVec 32))

(assert (=> d!69809 (and (bvsge lt!157704 #b00000000000000000000000000000000) (bvslt lt!157704 (bvadd mask!3777 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!69809 (= lt!157704 (choose!52 index!1840 x!1490 mask!3777))))

(assert (=> d!69809 (validMask!0 mask!3777)))

(assert (=> d!69809 (= (nextIndex!0 index!1840 x!1490 mask!3777) lt!157704)))

(declare-fun bs!11377 () Bool)

(assert (= bs!11377 d!69809))

(declare-fun m!333985 () Bool)

(assert (=> bs!11377 m!333985))

(assert (=> bs!11377 m!333887))

(assert (=> b!327620 d!69809))

(declare-fun b!327831 () Bool)

(declare-fun e!201574 () Bool)

(declare-fun call!26105 () Bool)

(assert (=> b!327831 (= e!201574 call!26105)))

(declare-fun bm!26102 () Bool)

(assert (=> bm!26102 (= call!26105 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3305 mask!3777))))

(declare-fun b!327832 () Bool)

(declare-fun e!201576 () Bool)

(assert (=> b!327832 (= e!201576 e!201574)))

(declare-fun lt!157725 () (_ BitVec 64))

(assert (=> b!327832 (= lt!157725 (select (arr!7942 a!3305) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!10175 0))(
  ( (Unit!10176) )
))
(declare-fun lt!157724 () Unit!10175)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!16787 (_ BitVec 64) (_ BitVec 32)) Unit!10175)

(assert (=> b!327832 (= lt!157724 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3305 lt!157725 #b00000000000000000000000000000000))))

(assert (=> b!327832 (arrayContainsKey!0 a!3305 lt!157725 #b00000000000000000000000000000000)))

(declare-fun lt!157726 () Unit!10175)

(assert (=> b!327832 (= lt!157726 lt!157724)))

(declare-fun res!180641 () Bool)

(assert (=> b!327832 (= res!180641 (= (seekEntryOrOpen!0 (select (arr!7942 a!3305) #b00000000000000000000000000000000) a!3305 mask!3777) (Found!3084 #b00000000000000000000000000000000)))))

(assert (=> b!327832 (=> (not res!180641) (not e!201574))))

(declare-fun d!69811 () Bool)

(declare-fun res!180640 () Bool)

(declare-fun e!201575 () Bool)

(assert (=> d!69811 (=> res!180640 e!201575)))

(assert (=> d!69811 (= res!180640 (bvsge #b00000000000000000000000000000000 (size!8294 a!3305)))))

(assert (=> d!69811 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777) e!201575)))

(declare-fun b!327833 () Bool)

(assert (=> b!327833 (= e!201576 call!26105)))

(declare-fun b!327834 () Bool)

(assert (=> b!327834 (= e!201575 e!201576)))

(declare-fun c!51230 () Bool)

(assert (=> b!327834 (= c!51230 (validKeyInArray!0 (select (arr!7942 a!3305) #b00000000000000000000000000000000)))))

(assert (= (and d!69811 (not res!180640)) b!327834))

(assert (= (and b!327834 c!51230) b!327832))

(assert (= (and b!327834 (not c!51230)) b!327833))

(assert (= (and b!327832 res!180641) b!327831))

(assert (= (or b!327831 b!327833) bm!26102))

(declare-fun m!334009 () Bool)

(assert (=> bm!26102 m!334009))

(assert (=> b!327832 m!333973))

(declare-fun m!334011 () Bool)

(assert (=> b!327832 m!334011))

(declare-fun m!334013 () Bool)

(assert (=> b!327832 m!334013))

(assert (=> b!327832 m!333973))

(declare-fun m!334015 () Bool)

(assert (=> b!327832 m!334015))

(assert (=> b!327834 m!333973))

(assert (=> b!327834 m!333973))

(declare-fun m!334017 () Bool)

(assert (=> b!327834 m!334017))

(assert (=> b!327617 d!69811))

(declare-fun b!327886 () Bool)

(declare-fun lt!157763 () SeekEntryResult!3084)

(declare-fun e!201613 () SeekEntryResult!3084)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16787 (_ BitVec 32)) SeekEntryResult!3084)

(assert (=> b!327886 (= e!201613 (seekKeyOrZeroReturnVacant!0 (x!32729 lt!157763) (index!14514 lt!157763) (index!14514 lt!157763) k!2497 a!3305 mask!3777))))

(declare-fun d!69825 () Bool)

(declare-fun lt!157762 () SeekEntryResult!3084)

(assert (=> d!69825 (and (or (is-Undefined!3084 lt!157762) (not (is-Found!3084 lt!157762)) (and (bvsge (index!14513 lt!157762) #b00000000000000000000000000000000) (bvslt (index!14513 lt!157762) (size!8294 a!3305)))) (or (is-Undefined!3084 lt!157762) (is-Found!3084 lt!157762) (not (is-MissingZero!3084 lt!157762)) (and (bvsge (index!14512 lt!157762) #b00000000000000000000000000000000) (bvslt (index!14512 lt!157762) (size!8294 a!3305)))) (or (is-Undefined!3084 lt!157762) (is-Found!3084 lt!157762) (is-MissingZero!3084 lt!157762) (not (is-MissingVacant!3084 lt!157762)) (and (bvsge (index!14515 lt!157762) #b00000000000000000000000000000000) (bvslt (index!14515 lt!157762) (size!8294 a!3305)))) (or (is-Undefined!3084 lt!157762) (ite (is-Found!3084 lt!157762) (= (select (arr!7942 a!3305) (index!14513 lt!157762)) k!2497) (ite (is-MissingZero!3084 lt!157762) (= (select (arr!7942 a!3305) (index!14512 lt!157762)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!3084 lt!157762) (= (select (arr!7942 a!3305) (index!14515 lt!157762)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!201614 () SeekEntryResult!3084)

(assert (=> d!69825 (= lt!157762 e!201614)))

(declare-fun c!51248 () Bool)

(assert (=> d!69825 (= c!51248 (and (is-Intermediate!3084 lt!157763) (undefined!3896 lt!157763)))))

(assert (=> d!69825 (= lt!157763 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777))))

(assert (=> d!69825 (validMask!0 mask!3777)))

(assert (=> d!69825 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) lt!157762)))

(declare-fun b!327887 () Bool)

(assert (=> b!327887 (= e!201614 Undefined!3084)))

(declare-fun b!327888 () Bool)

(declare-fun e!201612 () SeekEntryResult!3084)

(assert (=> b!327888 (= e!201612 (Found!3084 (index!14514 lt!157763)))))

(declare-fun b!327889 () Bool)

(declare-fun c!51247 () Bool)

(declare-fun lt!157764 () (_ BitVec 64))

(assert (=> b!327889 (= c!51247 (= lt!157764 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!327889 (= e!201612 e!201613)))

(declare-fun b!327890 () Bool)

(assert (=> b!327890 (= e!201613 (MissingZero!3084 (index!14514 lt!157763)))))

(declare-fun b!327891 () Bool)

(assert (=> b!327891 (= e!201614 e!201612)))

(assert (=> b!327891 (= lt!157764 (select (arr!7942 a!3305) (index!14514 lt!157763)))))

(declare-fun c!51246 () Bool)

(assert (=> b!327891 (= c!51246 (= lt!157764 k!2497))))

(assert (= (and d!69825 c!51248) b!327887))

(assert (= (and d!69825 (not c!51248)) b!327891))

(assert (= (and b!327891 c!51246) b!327888))

(assert (= (and b!327891 (not c!51246)) b!327889))

(assert (= (and b!327889 c!51247) b!327890))

(assert (= (and b!327889 (not c!51247)) b!327886))

(declare-fun m!334055 () Bool)

(assert (=> b!327886 m!334055))

(assert (=> d!69825 m!333887))

(declare-fun m!334057 () Bool)

(assert (=> d!69825 m!334057))

(assert (=> d!69825 m!333865))

(assert (=> d!69825 m!333867))

(assert (=> d!69825 m!333865))

(declare-fun m!334059 () Bool)

(assert (=> d!69825 m!334059))

(declare-fun m!334061 () Bool)

(assert (=> d!69825 m!334061))

(declare-fun m!334063 () Bool)

(assert (=> b!327891 m!334063))

(assert (=> b!327616 d!69825))

(declare-fun b!327892 () Bool)

(declare-fun e!201615 () Bool)

(declare-fun lt!157766 () SeekEntryResult!3084)

(assert (=> b!327892 (= e!201615 (bvsge (x!32729 lt!157766) #b01111111111111111111111111111110))))

(declare-fun b!327893 () Bool)

(declare-fun e!201617 () Bool)

(assert (=> b!327893 (= e!201615 e!201617)))

(declare-fun res!180665 () Bool)

(assert (=> b!327893 (= res!180665 (and (is-Intermediate!3084 lt!157766) (not (undefined!3896 lt!157766)) (bvslt (x!32729 lt!157766) #b01111111111111111111111111111110) (bvsge (x!32729 lt!157766) #b00000000000000000000000000000000) (bvsge (x!32729 lt!157766) x!1490)))))

(assert (=> b!327893 (=> (not res!180665) (not e!201617))))

(declare-fun b!327894 () Bool)

(assert (=> b!327894 (and (bvsge (index!14514 lt!157766) #b00000000000000000000000000000000) (bvslt (index!14514 lt!157766) (size!8294 a!3305)))))

(declare-fun res!180666 () Bool)

(assert (=> b!327894 (= res!180666 (= (select (arr!7942 a!3305) (index!14514 lt!157766)) k!2497))))

(declare-fun e!201616 () Bool)

(assert (=> b!327894 (=> res!180666 e!201616)))

(assert (=> b!327894 (= e!201617 e!201616)))

(declare-fun b!327895 () Bool)

(declare-fun e!201619 () SeekEntryResult!3084)

(assert (=> b!327895 (= e!201619 (Intermediate!3084 false index!1840 x!1490))))

(declare-fun b!327896 () Bool)

(declare-fun e!201618 () SeekEntryResult!3084)

(assert (=> b!327896 (= e!201618 e!201619)))

(declare-fun c!51250 () Bool)

(declare-fun lt!157765 () (_ BitVec 64))

(assert (=> b!327896 (= c!51250 (or (= lt!157765 k!2497) (= (bvadd lt!157765 lt!157765) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!327897 () Bool)

(assert (=> b!327897 (= e!201618 (Intermediate!3084 true index!1840 x!1490))))

(declare-fun b!327898 () Bool)

(assert (=> b!327898 (= e!201619 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1490 #b00000000000000000000000000000001) (nextIndex!0 index!1840 x!1490 mask!3777) k!2497 a!3305 mask!3777))))

(declare-fun b!327899 () Bool)

(assert (=> b!327899 (and (bvsge (index!14514 lt!157766) #b00000000000000000000000000000000) (bvslt (index!14514 lt!157766) (size!8294 a!3305)))))

(declare-fun res!180664 () Bool)

(assert (=> b!327899 (= res!180664 (= (select (arr!7942 a!3305) (index!14514 lt!157766)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!327899 (=> res!180664 e!201616)))

(declare-fun d!69839 () Bool)

(assert (=> d!69839 e!201615))

(declare-fun c!51249 () Bool)

(assert (=> d!69839 (= c!51249 (and (is-Intermediate!3084 lt!157766) (undefined!3896 lt!157766)))))

(assert (=> d!69839 (= lt!157766 e!201618)))

(declare-fun c!51251 () Bool)

(assert (=> d!69839 (= c!51251 (bvsge x!1490 #b01111111111111111111111111111110))))

(assert (=> d!69839 (= lt!157765 (select (arr!7942 a!3305) index!1840))))

(assert (=> d!69839 (validMask!0 mask!3777)))

(assert (=> d!69839 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!157766)))

(declare-fun b!327900 () Bool)

(assert (=> b!327900 (and (bvsge (index!14514 lt!157766) #b00000000000000000000000000000000) (bvslt (index!14514 lt!157766) (size!8294 a!3305)))))

(assert (=> b!327900 (= e!201616 (= (select (arr!7942 a!3305) (index!14514 lt!157766)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!69839 c!51251) b!327897))

(assert (= (and d!69839 (not c!51251)) b!327896))

(assert (= (and b!327896 c!51250) b!327895))

(assert (= (and b!327896 (not c!51250)) b!327898))

(assert (= (and d!69839 c!51249) b!327892))

(assert (= (and d!69839 (not c!51249)) b!327893))

(assert (= (and b!327893 res!180665) b!327894))

(assert (= (and b!327894 (not res!180666)) b!327899))

(assert (= (and b!327899 (not res!180664)) b!327900))

(declare-fun m!334065 () Bool)

(assert (=> b!327899 m!334065))

(assert (=> b!327900 m!334065))

(assert (=> b!327894 m!334065))

(assert (=> d!69839 m!333883))

(assert (=> d!69839 m!333887))

(assert (=> b!327898 m!333877))

(assert (=> b!327898 m!333877))

(declare-fun m!334067 () Bool)

(assert (=> b!327898 m!334067))

(assert (=> b!327613 d!69839))

(declare-fun d!69841 () Bool)

(assert (=> d!69841 (= (validKeyInArray!0 k!2497) (and (not (= k!2497 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2497 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!327618 d!69841))

(push 1)

(assert (not b!327832))

(assert (not bm!26102))

(assert (not d!69793))

(assert (not d!69825))

(assert (not d!69839))

(assert (not b!327775))

(assert (not b!327898))

(assert (not b!327834))

(assert (not b!327886))

(assert (not b!327742))

(assert (not b!327768))

(assert (not d!69807))

(assert (not d!69809))

(check-sat)

(pop 1)

(push 1)

(check-sat)

