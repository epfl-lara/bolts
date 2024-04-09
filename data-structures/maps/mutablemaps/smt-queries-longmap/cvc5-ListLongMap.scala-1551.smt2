; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!29334 () Bool)

(assert start!29334)

(declare-fun b!297066 () Bool)

(declare-fun res!156707 () Bool)

(declare-fun e!187756 () Bool)

(assert (=> b!297066 (=> (not res!156707) (not e!187756))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!297066 (= res!156707 (validKeyInArray!0 k!2524))))

(declare-fun b!297067 () Bool)

(declare-fun e!187757 () Bool)

(declare-fun lt!147676 () Bool)

(declare-datatypes ((SeekEntryResult!2289 0))(
  ( (MissingZero!2289 (index!11326 (_ BitVec 32))) (Found!2289 (index!11327 (_ BitVec 32))) (Intermediate!2289 (undefined!3101 Bool) (index!11328 (_ BitVec 32)) (x!29510 (_ BitVec 32))) (Undefined!2289) (MissingVacant!2289 (index!11329 (_ BitVec 32))) )
))
(declare-fun lt!147674 () SeekEntryResult!2289)

(assert (=> b!297067 (= e!187757 (and lt!147676 (not (is-Intermediate!2289 lt!147674))))))

(declare-fun lt!147675 () SeekEntryResult!2289)

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((array!15044 0))(
  ( (array!15045 (arr!7129 (Array (_ BitVec 32) (_ BitVec 64))) (size!7481 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!15044)

(declare-fun lt!147673 () (_ BitVec 32))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15044 (_ BitVec 32)) SeekEntryResult!2289)

(assert (=> b!297067 (= lt!147675 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!147673 k!2524 (array!15045 (store (arr!7129 a!3312) i!1256 k!2524) (size!7481 a!3312)) mask!3809))))

(assert (=> b!297067 (= lt!147674 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!147673 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!297067 (= lt!147673 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!297068 () Bool)

(assert (=> b!297068 (= e!187756 e!187757)))

(declare-fun res!156709 () Bool)

(assert (=> b!297068 (=> (not res!156709) (not e!187757))))

(declare-fun lt!147677 () SeekEntryResult!2289)

(assert (=> b!297068 (= res!156709 (or lt!147676 (= lt!147677 (MissingVacant!2289 i!1256))))))

(assert (=> b!297068 (= lt!147676 (= lt!147677 (MissingZero!2289 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15044 (_ BitVec 32)) SeekEntryResult!2289)

(assert (=> b!297068 (= lt!147677 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!297069 () Bool)

(declare-fun res!156711 () Bool)

(assert (=> b!297069 (=> (not res!156711) (not e!187756))))

(declare-fun arrayContainsKey!0 (array!15044 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!297069 (= res!156711 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!297070 () Bool)

(declare-fun res!156708 () Bool)

(assert (=> b!297070 (=> (not res!156708) (not e!187757))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15044 (_ BitVec 32)) Bool)

(assert (=> b!297070 (= res!156708 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!297071 () Bool)

(declare-fun res!156706 () Bool)

(assert (=> b!297071 (=> (not res!156706) (not e!187756))))

(assert (=> b!297071 (= res!156706 (and (= (size!7481 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7481 a!3312))))))

(declare-fun res!156710 () Bool)

(assert (=> start!29334 (=> (not res!156710) (not e!187756))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29334 (= res!156710 (validMask!0 mask!3809))))

(assert (=> start!29334 e!187756))

(assert (=> start!29334 true))

(declare-fun array_inv!5083 (array!15044) Bool)

(assert (=> start!29334 (array_inv!5083 a!3312)))

(assert (= (and start!29334 res!156710) b!297071))

(assert (= (and b!297071 res!156706) b!297066))

(assert (= (and b!297066 res!156707) b!297069))

(assert (= (and b!297069 res!156711) b!297068))

(assert (= (and b!297068 res!156709) b!297070))

(assert (= (and b!297070 res!156708) b!297067))

(declare-fun m!309935 () Bool)

(assert (=> b!297070 m!309935))

(declare-fun m!309937 () Bool)

(assert (=> start!29334 m!309937))

(declare-fun m!309939 () Bool)

(assert (=> start!29334 m!309939))

(declare-fun m!309941 () Bool)

(assert (=> b!297066 m!309941))

(declare-fun m!309943 () Bool)

(assert (=> b!297069 m!309943))

(declare-fun m!309945 () Bool)

(assert (=> b!297067 m!309945))

(declare-fun m!309947 () Bool)

(assert (=> b!297067 m!309947))

(declare-fun m!309949 () Bool)

(assert (=> b!297067 m!309949))

(declare-fun m!309951 () Bool)

(assert (=> b!297067 m!309951))

(declare-fun m!309953 () Bool)

(assert (=> b!297068 m!309953))

(push 1)

(assert (not b!297069))

(assert (not b!297070))

(assert (not b!297066))

(assert (not b!297068))

(assert (not b!297067))

(assert (not start!29334))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!67045 () Bool)

(assert (=> d!67045 (= (validKeyInArray!0 k!2524) (and (not (= k!2524 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2524 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!297066 d!67045))

(declare-fun b!297156 () Bool)

(declare-fun e!187802 () Bool)

(declare-fun e!187805 () Bool)

(assert (=> b!297156 (= e!187802 e!187805)))

(declare-fun res!156754 () Bool)

(declare-fun lt!147728 () SeekEntryResult!2289)

(assert (=> b!297156 (= res!156754 (and (is-Intermediate!2289 lt!147728) (not (undefined!3101 lt!147728)) (bvslt (x!29510 lt!147728) #b01111111111111111111111111111110) (bvsge (x!29510 lt!147728) #b00000000000000000000000000000000) (bvsge (x!29510 lt!147728) #b00000000000000000000000000000000)))))

(assert (=> b!297156 (=> (not res!156754) (not e!187805))))

(declare-fun b!297157 () Bool)

(assert (=> b!297157 (and (bvsge (index!11328 lt!147728) #b00000000000000000000000000000000) (bvslt (index!11328 lt!147728) (size!7481 (array!15045 (store (arr!7129 a!3312) i!1256 k!2524) (size!7481 a!3312)))))))

(declare-fun e!187801 () Bool)

(assert (=> b!297157 (= e!187801 (= (select (arr!7129 (array!15045 (store (arr!7129 a!3312) i!1256 k!2524) (size!7481 a!3312))) (index!11328 lt!147728)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!297158 () Bool)

(declare-fun e!187804 () SeekEntryResult!2289)

(declare-fun e!187803 () SeekEntryResult!2289)

(assert (=> b!297158 (= e!187804 e!187803)))

(declare-fun c!47784 () Bool)

(declare-fun lt!147727 () (_ BitVec 64))

(assert (=> b!297158 (= c!47784 (or (= lt!147727 k!2524) (= (bvadd lt!147727 lt!147727) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!297159 () Bool)

(assert (=> b!297159 (and (bvsge (index!11328 lt!147728) #b00000000000000000000000000000000) (bvslt (index!11328 lt!147728) (size!7481 (array!15045 (store (arr!7129 a!3312) i!1256 k!2524) (size!7481 a!3312)))))))

(declare-fun res!156756 () Bool)

(assert (=> b!297159 (= res!156756 (= (select (arr!7129 (array!15045 (store (arr!7129 a!3312) i!1256 k!2524) (size!7481 a!3312))) (index!11328 lt!147728)) k!2524))))

(assert (=> b!297159 (=> res!156756 e!187801)))

(assert (=> b!297159 (= e!187805 e!187801)))

(declare-fun b!297160 () Bool)

(assert (=> b!297160 (and (bvsge (index!11328 lt!147728) #b00000000000000000000000000000000) (bvslt (index!11328 lt!147728) (size!7481 (array!15045 (store (arr!7129 a!3312) i!1256 k!2524) (size!7481 a!3312)))))))

(declare-fun res!156755 () Bool)

(assert (=> b!297160 (= res!156755 (= (select (arr!7129 (array!15045 (store (arr!7129 a!3312) i!1256 k!2524) (size!7481 a!3312))) (index!11328 lt!147728)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!297160 (=> res!156755 e!187801)))

(declare-fun b!297161 () Bool)

(assert (=> b!297161 (= e!187804 (Intermediate!2289 true lt!147673 #b00000000000000000000000000000000))))

(declare-fun d!67047 () Bool)

(assert (=> d!67047 e!187802))

(declare-fun c!47782 () Bool)

(assert (=> d!67047 (= c!47782 (and (is-Intermediate!2289 lt!147728) (undefined!3101 lt!147728)))))

(assert (=> d!67047 (= lt!147728 e!187804)))

(declare-fun c!47783 () Bool)

(assert (=> d!67047 (= c!47783 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!67047 (= lt!147727 (select (arr!7129 (array!15045 (store (arr!7129 a!3312) i!1256 k!2524) (size!7481 a!3312))) lt!147673))))

(assert (=> d!67047 (validMask!0 mask!3809)))

(assert (=> d!67047 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!147673 k!2524 (array!15045 (store (arr!7129 a!3312) i!1256 k!2524) (size!7481 a!3312)) mask!3809) lt!147728)))

(declare-fun b!297162 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!297162 (= e!187803 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!147673 #b00000000000000000000000000000000 mask!3809) k!2524 (array!15045 (store (arr!7129 a!3312) i!1256 k!2524) (size!7481 a!3312)) mask!3809))))

(declare-fun b!297163 () Bool)

(assert (=> b!297163 (= e!187802 (bvsge (x!29510 lt!147728) #b01111111111111111111111111111110))))

(declare-fun b!297164 () Bool)

(assert (=> b!297164 (= e!187803 (Intermediate!2289 false lt!147673 #b00000000000000000000000000000000))))

(assert (= (and d!67047 c!47783) b!297161))

(assert (= (and d!67047 (not c!47783)) b!297158))

(assert (= (and b!297158 c!47784) b!297164))

(assert (= (and b!297158 (not c!47784)) b!297162))

(assert (= (and d!67047 c!47782) b!297163))

(assert (= (and d!67047 (not c!47782)) b!297156))

(assert (= (and b!297156 res!156754) b!297159))

(assert (= (and b!297159 (not res!156756)) b!297160))

(assert (= (and b!297160 (not res!156755)) b!297157))

(declare-fun m!310007 () Bool)

(assert (=> b!297159 m!310007))

(assert (=> b!297157 m!310007))

(declare-fun m!310009 () Bool)

(assert (=> d!67047 m!310009))

(assert (=> d!67047 m!309937))

(assert (=> b!297160 m!310007))

(declare-fun m!310011 () Bool)

(assert (=> b!297162 m!310011))

(assert (=> b!297162 m!310011))

(declare-fun m!310013 () Bool)

(assert (=> b!297162 m!310013))

(assert (=> b!297067 d!67047))

(declare-fun b!297171 () Bool)

(declare-fun e!187810 () Bool)

(declare-fun e!187813 () Bool)

(assert (=> b!297171 (= e!187810 e!187813)))

(declare-fun res!156757 () Bool)

(declare-fun lt!147733 () SeekEntryResult!2289)

(assert (=> b!297171 (= res!156757 (and (is-Intermediate!2289 lt!147733) (not (undefined!3101 lt!147733)) (bvslt (x!29510 lt!147733) #b01111111111111111111111111111110) (bvsge (x!29510 lt!147733) #b00000000000000000000000000000000) (bvsge (x!29510 lt!147733) #b00000000000000000000000000000000)))))

(assert (=> b!297171 (=> (not res!156757) (not e!187813))))

(declare-fun b!297172 () Bool)

(assert (=> b!297172 (and (bvsge (index!11328 lt!147733) #b00000000000000000000000000000000) (bvslt (index!11328 lt!147733) (size!7481 a!3312)))))

(declare-fun e!187809 () Bool)

(assert (=> b!297172 (= e!187809 (= (select (arr!7129 a!3312) (index!11328 lt!147733)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!297173 () Bool)

(declare-fun e!187812 () SeekEntryResult!2289)

(declare-fun e!187811 () SeekEntryResult!2289)

(assert (=> b!297173 (= e!187812 e!187811)))

(declare-fun c!47790 () Bool)

(declare-fun lt!147732 () (_ BitVec 64))

(assert (=> b!297173 (= c!47790 (or (= lt!147732 k!2524) (= (bvadd lt!147732 lt!147732) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!297174 () Bool)

(assert (=> b!297174 (and (bvsge (index!11328 lt!147733) #b00000000000000000000000000000000) (bvslt (index!11328 lt!147733) (size!7481 a!3312)))))

(declare-fun res!156759 () Bool)

(assert (=> b!297174 (= res!156759 (= (select (arr!7129 a!3312) (index!11328 lt!147733)) k!2524))))

(assert (=> b!297174 (=> res!156759 e!187809)))

(assert (=> b!297174 (= e!187813 e!187809)))

(declare-fun b!297175 () Bool)

(assert (=> b!297175 (and (bvsge (index!11328 lt!147733) #b00000000000000000000000000000000) (bvslt (index!11328 lt!147733) (size!7481 a!3312)))))

(declare-fun res!156758 () Bool)

(assert (=> b!297175 (= res!156758 (= (select (arr!7129 a!3312) (index!11328 lt!147733)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!297175 (=> res!156758 e!187809)))

(declare-fun b!297176 () Bool)

(assert (=> b!297176 (= e!187812 (Intermediate!2289 true lt!147673 #b00000000000000000000000000000000))))

(declare-fun d!67053 () Bool)

(assert (=> d!67053 e!187810))

(declare-fun c!47788 () Bool)

(assert (=> d!67053 (= c!47788 (and (is-Intermediate!2289 lt!147733) (undefined!3101 lt!147733)))))

(assert (=> d!67053 (= lt!147733 e!187812)))

(declare-fun c!47789 () Bool)

(assert (=> d!67053 (= c!47789 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!67053 (= lt!147732 (select (arr!7129 a!3312) lt!147673))))

(assert (=> d!67053 (validMask!0 mask!3809)))

(assert (=> d!67053 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!147673 k!2524 a!3312 mask!3809) lt!147733)))

(declare-fun b!297177 () Bool)

(assert (=> b!297177 (= e!187811 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!147673 #b00000000000000000000000000000000 mask!3809) k!2524 a!3312 mask!3809))))

(declare-fun b!297178 () Bool)

(assert (=> b!297178 (= e!187810 (bvsge (x!29510 lt!147733) #b01111111111111111111111111111110))))

(declare-fun b!297179 () Bool)

(assert (=> b!297179 (= e!187811 (Intermediate!2289 false lt!147673 #b00000000000000000000000000000000))))

(assert (= (and d!67053 c!47789) b!297176))

(assert (= (and d!67053 (not c!47789)) b!297173))

(assert (= (and b!297173 c!47790) b!297179))

(assert (= (and b!297173 (not c!47790)) b!297177))

(assert (= (and d!67053 c!47788) b!297178))

(assert (= (and d!67053 (not c!47788)) b!297171))

(assert (= (and b!297171 res!156757) b!297174))

(assert (= (and b!297174 (not res!156759)) b!297175))

(assert (= (and b!297175 (not res!156758)) b!297172))

(declare-fun m!310027 () Bool)

(assert (=> b!297174 m!310027))

(assert (=> b!297172 m!310027))

(declare-fun m!310029 () Bool)

(assert (=> d!67053 m!310029))

(assert (=> d!67053 m!309937))

(assert (=> b!297175 m!310027))

(assert (=> b!297177 m!310011))

(assert (=> b!297177 m!310011))

(declare-fun m!310031 () Bool)

(assert (=> b!297177 m!310031))

(assert (=> b!297067 d!67053))

(declare-fun d!67057 () Bool)

(declare-fun lt!147739 () (_ BitVec 32))

(declare-fun lt!147738 () (_ BitVec 32))

(assert (=> d!67057 (= lt!147739 (bvmul (bvxor lt!147738 (bvlshr lt!147738 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!67057 (= lt!147738 ((_ extract 31 0) (bvand (bvxor k!2524 (bvlshr k!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!67057 (and (bvsge mask!3809 #b00000000000000000000000000000000) (let ((res!156760 (let ((h!5318 ((_ extract 31 0) (bvand (bvxor k!2524 (bvlshr k!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!29514 (bvmul (bvxor h!5318 (bvlshr h!5318 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!29514 (bvlshr x!29514 #b00000000000000000000000000001101)) mask!3809))))) (and (bvslt res!156760 (bvadd mask!3809 #b00000000000000000000000000000001)) (bvsge res!156760 #b00000000000000000000000000000000))))))

(assert (=> d!67057 (= (toIndex!0 k!2524 mask!3809) (bvand (bvxor lt!147739 (bvlshr lt!147739 #b00000000000000000000000000001101)) mask!3809))))

(assert (=> b!297067 d!67057))

(declare-fun b!297246 () Bool)

(declare-fun e!187855 () SeekEntryResult!2289)

(assert (=> b!297246 (= e!187855 Undefined!2289)))

(declare-fun b!297247 () Bool)

(declare-fun c!47813 () Bool)

(declare-fun lt!147765 () (_ BitVec 64))

(assert (=> b!297247 (= c!47813 (= lt!147765 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!187857 () SeekEntryResult!2289)

(declare-fun e!187856 () SeekEntryResult!2289)

(assert (=> b!297247 (= e!187857 e!187856)))

(declare-fun b!297248 () Bool)

(declare-fun lt!147763 () SeekEntryResult!2289)

(assert (=> b!297248 (= e!187856 (MissingZero!2289 (index!11328 lt!147763)))))

(declare-fun d!67063 () Bool)

(declare-fun lt!147764 () SeekEntryResult!2289)

(assert (=> d!67063 (and (or (is-Undefined!2289 lt!147764) (not (is-Found!2289 lt!147764)) (and (bvsge (index!11327 lt!147764) #b00000000000000000000000000000000) (bvslt (index!11327 lt!147764) (size!7481 a!3312)))) (or (is-Undefined!2289 lt!147764) (is-Found!2289 lt!147764) (not (is-MissingZero!2289 lt!147764)) (and (bvsge (index!11326 lt!147764) #b00000000000000000000000000000000) (bvslt (index!11326 lt!147764) (size!7481 a!3312)))) (or (is-Undefined!2289 lt!147764) (is-Found!2289 lt!147764) (is-MissingZero!2289 lt!147764) (not (is-MissingVacant!2289 lt!147764)) (and (bvsge (index!11329 lt!147764) #b00000000000000000000000000000000) (bvslt (index!11329 lt!147764) (size!7481 a!3312)))) (or (is-Undefined!2289 lt!147764) (ite (is-Found!2289 lt!147764) (= (select (arr!7129 a!3312) (index!11327 lt!147764)) k!2524) (ite (is-MissingZero!2289 lt!147764) (= (select (arr!7129 a!3312) (index!11326 lt!147764)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!2289 lt!147764) (= (select (arr!7129 a!3312) (index!11329 lt!147764)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!67063 (= lt!147764 e!187855)))

(declare-fun c!47814 () Bool)

(assert (=> d!67063 (= c!47814 (and (is-Intermediate!2289 lt!147763) (undefined!3101 lt!147763)))))

(assert (=> d!67063 (= lt!147763 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2524 mask!3809) k!2524 a!3312 mask!3809))))

(assert (=> d!67063 (validMask!0 mask!3809)))

(assert (=> d!67063 (= (seekEntryOrOpen!0 k!2524 a!3312 mask!3809) lt!147764)))

(declare-fun b!297249 () Bool)

(assert (=> b!297249 (= e!187855 e!187857)))

(assert (=> b!297249 (= lt!147765 (select (arr!7129 a!3312) (index!11328 lt!147763)))))

(declare-fun c!47812 () Bool)

(assert (=> b!297249 (= c!47812 (= lt!147765 k!2524))))

(declare-fun b!297250 () Bool)

(assert (=> b!297250 (= e!187857 (Found!2289 (index!11328 lt!147763)))))

(declare-fun b!297251 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15044 (_ BitVec 32)) SeekEntryResult!2289)

(assert (=> b!297251 (= e!187856 (seekKeyOrZeroReturnVacant!0 (x!29510 lt!147763) (index!11328 lt!147763) (index!11328 lt!147763) k!2524 a!3312 mask!3809))))

(assert (= (and d!67063 c!47814) b!297246))

(assert (= (and d!67063 (not c!47814)) b!297249))

(assert (= (and b!297249 c!47812) b!297250))

(assert (= (and b!297249 (not c!47812)) b!297247))

(assert (= (and b!297247 c!47813) b!297248))

(assert (= (and b!297247 (not c!47813)) b!297251))

(assert (=> d!67063 m!309951))

(declare-fun m!310061 () Bool)

(assert (=> d!67063 m!310061))

(assert (=> d!67063 m!309951))

(declare-fun m!310063 () Bool)

(assert (=> d!67063 m!310063))

(assert (=> d!67063 m!309937))

(declare-fun m!310065 () Bool)

(assert (=> d!67063 m!310065))

(declare-fun m!310067 () Bool)

(assert (=> d!67063 m!310067))

(declare-fun m!310069 () Bool)

(assert (=> b!297249 m!310069))

(declare-fun m!310071 () Bool)

(assert (=> b!297251 m!310071))

(assert (=> b!297068 d!67063))

(declare-fun d!67073 () Bool)

(declare-fun res!156790 () Bool)

(declare-fun e!187862 () Bool)

(assert (=> d!67073 (=> res!156790 e!187862)))

(assert (=> d!67073 (= res!156790 (= (select (arr!7129 a!3312) #b00000000000000000000000000000000) k!2524))))

(assert (=> d!67073 (= (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000) e!187862)))

(declare-fun b!297256 () Bool)

(declare-fun e!187863 () Bool)

(assert (=> b!297256 (= e!187862 e!187863)))

(declare-fun res!156791 () Bool)

(assert (=> b!297256 (=> (not res!156791) (not e!187863))))

(assert (=> b!297256 (= res!156791 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7481 a!3312)))))

(declare-fun b!297257 () Bool)

(assert (=> b!297257 (= e!187863 (arrayContainsKey!0 a!3312 k!2524 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!67073 (not res!156790)) b!297256))

(assert (= (and b!297256 res!156791) b!297257))

(declare-fun m!310073 () Bool)

(assert (=> d!67073 m!310073))

(declare-fun m!310075 () Bool)

(assert (=> b!297257 m!310075))

(assert (=> b!297069 d!67073))

(declare-fun d!67077 () Bool)

(assert (=> d!67077 (= (validMask!0 mask!3809) (and (or (= mask!3809 #b00000000000000000000000000000111) (= mask!3809 #b00000000000000000000000000001111) (= mask!3809 #b00000000000000000000000000011111) (= mask!3809 #b00000000000000000000000000111111) (= mask!3809 #b00000000000000000000000001111111) (= mask!3809 #b00000000000000000000000011111111) (= mask!3809 #b00000000000000000000000111111111) (= mask!3809 #b00000000000000000000001111111111) (= mask!3809 #b00000000000000000000011111111111) (= mask!3809 #b00000000000000000000111111111111) (= mask!3809 #b00000000000000000001111111111111) (= mask!3809 #b00000000000000000011111111111111) (= mask!3809 #b00000000000000000111111111111111) (= mask!3809 #b00000000000000001111111111111111) (= mask!3809 #b00000000000000011111111111111111) (= mask!3809 #b00000000000000111111111111111111) (= mask!3809 #b00000000000001111111111111111111) (= mask!3809 #b00000000000011111111111111111111) (= mask!3809 #b00000000000111111111111111111111) (= mask!3809 #b00000000001111111111111111111111) (= mask!3809 #b00000000011111111111111111111111) (= mask!3809 #b00000000111111111111111111111111) (= mask!3809 #b00000001111111111111111111111111) (= mask!3809 #b00000011111111111111111111111111) (= mask!3809 #b00000111111111111111111111111111) (= mask!3809 #b00001111111111111111111111111111) (= mask!3809 #b00011111111111111111111111111111) (= mask!3809 #b00111111111111111111111111111111)) (bvsle mask!3809 #b00111111111111111111111111111111)))))

(assert (=> start!29334 d!67077))

(declare-fun d!67087 () Bool)

(assert (=> d!67087 (= (array_inv!5083 a!3312) (bvsge (size!7481 a!3312) #b00000000000000000000000000000000))))

(assert (=> start!29334 d!67087))

(declare-fun d!67089 () Bool)

(declare-fun res!156816 () Bool)

(declare-fun e!187900 () Bool)

(assert (=> d!67089 (=> res!156816 e!187900)))

(assert (=> d!67089 (= res!156816 (bvsge #b00000000000000000000000000000000 (size!7481 a!3312)))))

(assert (=> d!67089 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809) e!187900)))

(declare-fun b!297314 () Bool)

(declare-fun e!187899 () Bool)

(declare-fun call!25758 () Bool)

(assert (=> b!297314 (= e!187899 call!25758)))

(declare-fun b!297315 () Bool)

(declare-fun e!187901 () Bool)

(assert (=> b!297315 (= e!187901 e!187899)))

(declare-fun lt!147802 () (_ BitVec 64))

(assert (=> b!297315 (= lt!147802 (select (arr!7129 a!3312) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9247 0))(
  ( (Unit!9248) )
))
(declare-fun lt!147801 () Unit!9247)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!15044 (_ BitVec 64) (_ BitVec 32)) Unit!9247)

(assert (=> b!297315 (= lt!147801 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3312 lt!147802 #b00000000000000000000000000000000))))

(assert (=> b!297315 (arrayContainsKey!0 a!3312 lt!147802 #b00000000000000000000000000000000)))

(declare-fun lt!147803 () Unit!9247)

(assert (=> b!297315 (= lt!147803 lt!147801)))

(declare-fun res!156815 () Bool)

(assert (=> b!297315 (= res!156815 (= (seekEntryOrOpen!0 (select (arr!7129 a!3312) #b00000000000000000000000000000000) a!3312 mask!3809) (Found!2289 #b00000000000000000000000000000000)))))

(assert (=> b!297315 (=> (not res!156815) (not e!187899))))

(declare-fun b!297316 () Bool)

(assert (=> b!297316 (= e!187901 call!25758)))

(declare-fun bm!25755 () Bool)

(assert (=> bm!25755 (= call!25758 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3312 mask!3809))))

(declare-fun b!297317 () Bool)

(assert (=> b!297317 (= e!187900 e!187901)))

(declare-fun c!47832 () Bool)

(assert (=> b!297317 (= c!47832 (validKeyInArray!0 (select (arr!7129 a!3312) #b00000000000000000000000000000000)))))

(assert (= (and d!67089 (not res!156816)) b!297317))

(assert (= (and b!297317 c!47832) b!297315))

(assert (= (and b!297317 (not c!47832)) b!297316))

(assert (= (and b!297315 res!156815) b!297314))

(assert (= (or b!297314 b!297316) bm!25755))

(assert (=> b!297315 m!310073))

(declare-fun m!310103 () Bool)

(assert (=> b!297315 m!310103))

(declare-fun m!310105 () Bool)

(assert (=> b!297315 m!310105))

(assert (=> b!297315 m!310073))

(declare-fun m!310107 () Bool)

(assert (=> b!297315 m!310107))

(declare-fun m!310109 () Bool)

(assert (=> bm!25755 m!310109))

(assert (=> b!297317 m!310073))

(assert (=> b!297317 m!310073))

(declare-fun m!310111 () Bool)

(assert (=> b!297317 m!310111))

(assert (=> b!297070 d!67089))

(push 1)

