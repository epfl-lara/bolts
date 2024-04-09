; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!32906 () Bool)

(assert start!32906)

(declare-fun b!327960 () Bool)

(declare-fun res!180713 () Bool)

(declare-fun e!201646 () Bool)

(assert (=> b!327960 (=> (not res!180713) (not e!201646))))

(declare-datatypes ((array!16798 0))(
  ( (array!16799 (arr!7946 (Array (_ BitVec 32) (_ BitVec 64))) (size!8298 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16798)

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!327960 (= res!180713 (and (= (size!8298 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8298 a!3305))))))

(declare-fun b!327961 () Bool)

(declare-fun res!180714 () Bool)

(assert (=> b!327961 (=> (not res!180714) (not e!201646))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16798 (_ BitVec 32)) Bool)

(assert (=> b!327961 (= res!180714 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!327962 () Bool)

(declare-fun res!180708 () Bool)

(assert (=> b!327962 (=> (not res!180708) (not e!201646))))

(declare-fun k0!2497 () (_ BitVec 64))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3088 0))(
  ( (MissingZero!3088 (index!14528 (_ BitVec 32))) (Found!3088 (index!14529 (_ BitVec 32))) (Intermediate!3088 (undefined!3900 Bool) (index!14530 (_ BitVec 32)) (x!32750 (_ BitVec 32))) (Undefined!3088) (MissingVacant!3088 (index!14531 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16798 (_ BitVec 32)) SeekEntryResult!3088)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!327962 (= res!180708 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777) (Intermediate!3088 false resIndex!58 resX!58)))))

(declare-fun b!327963 () Bool)

(assert (=> b!327963 (= e!201646 (or (bvslt resIndex!58 #b00000000000000000000000000000000) (bvsge resIndex!58 (size!8298 a!3305))))))

(declare-fun b!327964 () Bool)

(declare-fun res!180712 () Bool)

(assert (=> b!327964 (=> (not res!180712) (not e!201646))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16798 (_ BitVec 32)) SeekEntryResult!3088)

(assert (=> b!327964 (= res!180712 (= (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777) (MissingVacant!3088 i!1250)))))

(declare-fun b!327965 () Bool)

(declare-fun res!180710 () Bool)

(assert (=> b!327965 (=> (not res!180710) (not e!201646))))

(declare-fun arrayContainsKey!0 (array!16798 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!327965 (= res!180710 (not (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000)))))

(declare-fun res!180709 () Bool)

(assert (=> start!32906 (=> (not res!180709) (not e!201646))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32906 (= res!180709 (validMask!0 mask!3777))))

(assert (=> start!32906 e!201646))

(declare-fun array_inv!5900 (array!16798) Bool)

(assert (=> start!32906 (array_inv!5900 a!3305)))

(assert (=> start!32906 true))

(declare-fun b!327966 () Bool)

(declare-fun res!180711 () Bool)

(assert (=> b!327966 (=> (not res!180711) (not e!201646))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!327966 (= res!180711 (validKeyInArray!0 k0!2497))))

(assert (= (and start!32906 res!180709) b!327960))

(assert (= (and b!327960 res!180713) b!327966))

(assert (= (and b!327966 res!180711) b!327965))

(assert (= (and b!327965 res!180710) b!327964))

(assert (= (and b!327964 res!180712) b!327961))

(assert (= (and b!327961 res!180714) b!327962))

(assert (= (and b!327962 res!180708) b!327963))

(declare-fun m!334097 () Bool)

(assert (=> b!327961 m!334097))

(declare-fun m!334099 () Bool)

(assert (=> b!327965 m!334099))

(declare-fun m!334101 () Bool)

(assert (=> b!327966 m!334101))

(declare-fun m!334103 () Bool)

(assert (=> start!32906 m!334103))

(declare-fun m!334105 () Bool)

(assert (=> start!32906 m!334105))

(declare-fun m!334107 () Bool)

(assert (=> b!327964 m!334107))

(declare-fun m!334109 () Bool)

(assert (=> b!327962 m!334109))

(assert (=> b!327962 m!334109))

(declare-fun m!334111 () Bool)

(assert (=> b!327962 m!334111))

(check-sat (not b!327964) (not b!327966) (not b!327961) (not b!327965) (not b!327962) (not start!32906))
(check-sat)
(get-model)

(declare-fun d!69849 () Bool)

(declare-fun e!201683 () Bool)

(assert (=> d!69849 e!201683))

(declare-fun c!51275 () Bool)

(declare-fun lt!157785 () SeekEntryResult!3088)

(get-info :version)

(assert (=> d!69849 (= c!51275 (and ((_ is Intermediate!3088) lt!157785) (undefined!3900 lt!157785)))))

(declare-fun e!201681 () SeekEntryResult!3088)

(assert (=> d!69849 (= lt!157785 e!201681)))

(declare-fun c!51273 () Bool)

(assert (=> d!69849 (= c!51273 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!157784 () (_ BitVec 64))

(assert (=> d!69849 (= lt!157784 (select (arr!7946 a!3305) (toIndex!0 k0!2497 mask!3777)))))

(assert (=> d!69849 (validMask!0 mask!3777)))

(assert (=> d!69849 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777) lt!157785)))

(declare-fun b!328028 () Bool)

(assert (=> b!328028 (= e!201683 (bvsge (x!32750 lt!157785) #b01111111111111111111111111111110))))

(declare-fun b!328029 () Bool)

(declare-fun e!201679 () SeekEntryResult!3088)

(assert (=> b!328029 (= e!201679 (Intermediate!3088 false (toIndex!0 k0!2497 mask!3777) #b00000000000000000000000000000000))))

(declare-fun b!328030 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!328030 (= e!201679 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k0!2497 mask!3777) #b00000000000000000000000000000000 mask!3777) k0!2497 a!3305 mask!3777))))

(declare-fun b!328031 () Bool)

(assert (=> b!328031 (= e!201681 (Intermediate!3088 true (toIndex!0 k0!2497 mask!3777) #b00000000000000000000000000000000))))

(declare-fun b!328032 () Bool)

(assert (=> b!328032 (and (bvsge (index!14530 lt!157785) #b00000000000000000000000000000000) (bvslt (index!14530 lt!157785) (size!8298 a!3305)))))

(declare-fun res!180754 () Bool)

(assert (=> b!328032 (= res!180754 (= (select (arr!7946 a!3305) (index!14530 lt!157785)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!201682 () Bool)

(assert (=> b!328032 (=> res!180754 e!201682)))

(declare-fun b!328033 () Bool)

(assert (=> b!328033 (= e!201681 e!201679)))

(declare-fun c!51274 () Bool)

(assert (=> b!328033 (= c!51274 (or (= lt!157784 k0!2497) (= (bvadd lt!157784 lt!157784) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!328034 () Bool)

(assert (=> b!328034 (and (bvsge (index!14530 lt!157785) #b00000000000000000000000000000000) (bvslt (index!14530 lt!157785) (size!8298 a!3305)))))

(declare-fun res!180755 () Bool)

(assert (=> b!328034 (= res!180755 (= (select (arr!7946 a!3305) (index!14530 lt!157785)) k0!2497))))

(assert (=> b!328034 (=> res!180755 e!201682)))

(declare-fun e!201680 () Bool)

(assert (=> b!328034 (= e!201680 e!201682)))

(declare-fun b!328035 () Bool)

(assert (=> b!328035 (and (bvsge (index!14530 lt!157785) #b00000000000000000000000000000000) (bvslt (index!14530 lt!157785) (size!8298 a!3305)))))

(assert (=> b!328035 (= e!201682 (= (select (arr!7946 a!3305) (index!14530 lt!157785)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!328036 () Bool)

(assert (=> b!328036 (= e!201683 e!201680)))

(declare-fun res!180756 () Bool)

(assert (=> b!328036 (= res!180756 (and ((_ is Intermediate!3088) lt!157785) (not (undefined!3900 lt!157785)) (bvslt (x!32750 lt!157785) #b01111111111111111111111111111110) (bvsge (x!32750 lt!157785) #b00000000000000000000000000000000) (bvsge (x!32750 lt!157785) #b00000000000000000000000000000000)))))

(assert (=> b!328036 (=> (not res!180756) (not e!201680))))

(assert (= (and d!69849 c!51273) b!328031))

(assert (= (and d!69849 (not c!51273)) b!328033))

(assert (= (and b!328033 c!51274) b!328029))

(assert (= (and b!328033 (not c!51274)) b!328030))

(assert (= (and d!69849 c!51275) b!328028))

(assert (= (and d!69849 (not c!51275)) b!328036))

(assert (= (and b!328036 res!180756) b!328034))

(assert (= (and b!328034 (not res!180755)) b!328032))

(assert (= (and b!328032 (not res!180754)) b!328035))

(declare-fun m!334133 () Bool)

(assert (=> b!328035 m!334133))

(assert (=> b!328030 m!334109))

(declare-fun m!334135 () Bool)

(assert (=> b!328030 m!334135))

(assert (=> b!328030 m!334135))

(declare-fun m!334137 () Bool)

(assert (=> b!328030 m!334137))

(assert (=> b!328034 m!334133))

(assert (=> b!328032 m!334133))

(assert (=> d!69849 m!334109))

(declare-fun m!334139 () Bool)

(assert (=> d!69849 m!334139))

(assert (=> d!69849 m!334103))

(assert (=> b!327962 d!69849))

(declare-fun d!69857 () Bool)

(declare-fun lt!157797 () (_ BitVec 32))

(declare-fun lt!157796 () (_ BitVec 32))

(assert (=> d!69857 (= lt!157797 (bvmul (bvxor lt!157796 (bvlshr lt!157796 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!69857 (= lt!157796 ((_ extract 31 0) (bvand (bvxor k0!2497 (bvlshr k0!2497 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!69857 (and (bvsge mask!3777 #b00000000000000000000000000000000) (let ((res!180757 (let ((h!5426 ((_ extract 31 0) (bvand (bvxor k0!2497 (bvlshr k0!2497 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!32754 (bvmul (bvxor h!5426 (bvlshr h!5426 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!32754 (bvlshr x!32754 #b00000000000000000000000000001101)) mask!3777))))) (and (bvslt res!180757 (bvadd mask!3777 #b00000000000000000000000000000001)) (bvsge res!180757 #b00000000000000000000000000000000))))))

(assert (=> d!69857 (= (toIndex!0 k0!2497 mask!3777) (bvand (bvxor lt!157797 (bvlshr lt!157797 #b00000000000000000000000000001101)) mask!3777))))

(assert (=> b!327962 d!69857))

(declare-fun b!328099 () Bool)

(declare-fun c!51298 () Bool)

(declare-fun lt!157827 () (_ BitVec 64))

(assert (=> b!328099 (= c!51298 (= lt!157827 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!201720 () SeekEntryResult!3088)

(declare-fun e!201719 () SeekEntryResult!3088)

(assert (=> b!328099 (= e!201720 e!201719)))

(declare-fun b!328100 () Bool)

(declare-fun e!201721 () SeekEntryResult!3088)

(assert (=> b!328100 (= e!201721 Undefined!3088)))

(declare-fun b!328101 () Bool)

(declare-fun lt!157829 () SeekEntryResult!3088)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16798 (_ BitVec 32)) SeekEntryResult!3088)

(assert (=> b!328101 (= e!201719 (seekKeyOrZeroReturnVacant!0 (x!32750 lt!157829) (index!14530 lt!157829) (index!14530 lt!157829) k0!2497 a!3305 mask!3777))))

(declare-fun d!69861 () Bool)

(declare-fun lt!157828 () SeekEntryResult!3088)

(assert (=> d!69861 (and (or ((_ is Undefined!3088) lt!157828) (not ((_ is Found!3088) lt!157828)) (and (bvsge (index!14529 lt!157828) #b00000000000000000000000000000000) (bvslt (index!14529 lt!157828) (size!8298 a!3305)))) (or ((_ is Undefined!3088) lt!157828) ((_ is Found!3088) lt!157828) (not ((_ is MissingZero!3088) lt!157828)) (and (bvsge (index!14528 lt!157828) #b00000000000000000000000000000000) (bvslt (index!14528 lt!157828) (size!8298 a!3305)))) (or ((_ is Undefined!3088) lt!157828) ((_ is Found!3088) lt!157828) ((_ is MissingZero!3088) lt!157828) (not ((_ is MissingVacant!3088) lt!157828)) (and (bvsge (index!14531 lt!157828) #b00000000000000000000000000000000) (bvslt (index!14531 lt!157828) (size!8298 a!3305)))) (or ((_ is Undefined!3088) lt!157828) (ite ((_ is Found!3088) lt!157828) (= (select (arr!7946 a!3305) (index!14529 lt!157828)) k0!2497) (ite ((_ is MissingZero!3088) lt!157828) (= (select (arr!7946 a!3305) (index!14528 lt!157828)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!3088) lt!157828) (= (select (arr!7946 a!3305) (index!14531 lt!157828)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!69861 (= lt!157828 e!201721)))

(declare-fun c!51299 () Bool)

(assert (=> d!69861 (= c!51299 (and ((_ is Intermediate!3088) lt!157829) (undefined!3900 lt!157829)))))

(assert (=> d!69861 (= lt!157829 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777))))

(assert (=> d!69861 (validMask!0 mask!3777)))

(assert (=> d!69861 (= (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777) lt!157828)))

(declare-fun b!328102 () Bool)

(assert (=> b!328102 (= e!201720 (Found!3088 (index!14530 lt!157829)))))

(declare-fun b!328103 () Bool)

(assert (=> b!328103 (= e!201721 e!201720)))

(assert (=> b!328103 (= lt!157827 (select (arr!7946 a!3305) (index!14530 lt!157829)))))

(declare-fun c!51297 () Bool)

(assert (=> b!328103 (= c!51297 (= lt!157827 k0!2497))))

(declare-fun b!328104 () Bool)

(assert (=> b!328104 (= e!201719 (MissingZero!3088 (index!14530 lt!157829)))))

(assert (= (and d!69861 c!51299) b!328100))

(assert (= (and d!69861 (not c!51299)) b!328103))

(assert (= (and b!328103 c!51297) b!328102))

(assert (= (and b!328103 (not c!51297)) b!328099))

(assert (= (and b!328099 c!51298) b!328104))

(assert (= (and b!328099 (not c!51298)) b!328101))

(declare-fun m!334169 () Bool)

(assert (=> b!328101 m!334169))

(assert (=> d!69861 m!334109))

(assert (=> d!69861 m!334109))

(assert (=> d!69861 m!334111))

(assert (=> d!69861 m!334103))

(declare-fun m!334171 () Bool)

(assert (=> d!69861 m!334171))

(declare-fun m!334173 () Bool)

(assert (=> d!69861 m!334173))

(declare-fun m!334175 () Bool)

(assert (=> d!69861 m!334175))

(declare-fun m!334177 () Bool)

(assert (=> b!328103 m!334177))

(assert (=> b!327964 d!69861))

(declare-fun d!69875 () Bool)

(declare-fun res!180782 () Bool)

(declare-fun e!201726 () Bool)

(assert (=> d!69875 (=> res!180782 e!201726)))

(assert (=> d!69875 (= res!180782 (= (select (arr!7946 a!3305) #b00000000000000000000000000000000) k0!2497))))

(assert (=> d!69875 (= (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000) e!201726)))

(declare-fun b!328109 () Bool)

(declare-fun e!201727 () Bool)

(assert (=> b!328109 (= e!201726 e!201727)))

(declare-fun res!180783 () Bool)

(assert (=> b!328109 (=> (not res!180783) (not e!201727))))

(assert (=> b!328109 (= res!180783 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!8298 a!3305)))))

(declare-fun b!328110 () Bool)

(assert (=> b!328110 (= e!201727 (arrayContainsKey!0 a!3305 k0!2497 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!69875 (not res!180782)) b!328109))

(assert (= (and b!328109 res!180783) b!328110))

(declare-fun m!334179 () Bool)

(assert (=> d!69875 m!334179))

(declare-fun m!334181 () Bool)

(assert (=> b!328110 m!334181))

(assert (=> b!327965 d!69875))

(declare-fun b!328137 () Bool)

(declare-fun e!201749 () Bool)

(declare-fun call!26120 () Bool)

(assert (=> b!328137 (= e!201749 call!26120)))

(declare-fun b!328138 () Bool)

(declare-fun e!201750 () Bool)

(assert (=> b!328138 (= e!201749 e!201750)))

(declare-fun lt!157846 () (_ BitVec 64))

(assert (=> b!328138 (= lt!157846 (select (arr!7946 a!3305) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!10183 0))(
  ( (Unit!10184) )
))
(declare-fun lt!157845 () Unit!10183)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!16798 (_ BitVec 64) (_ BitVec 32)) Unit!10183)

(assert (=> b!328138 (= lt!157845 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3305 lt!157846 #b00000000000000000000000000000000))))

(assert (=> b!328138 (arrayContainsKey!0 a!3305 lt!157846 #b00000000000000000000000000000000)))

(declare-fun lt!157847 () Unit!10183)

(assert (=> b!328138 (= lt!157847 lt!157845)))

(declare-fun res!180801 () Bool)

(assert (=> b!328138 (= res!180801 (= (seekEntryOrOpen!0 (select (arr!7946 a!3305) #b00000000000000000000000000000000) a!3305 mask!3777) (Found!3088 #b00000000000000000000000000000000)))))

(assert (=> b!328138 (=> (not res!180801) (not e!201750))))

(declare-fun d!69879 () Bool)

(declare-fun res!180800 () Bool)

(declare-fun e!201751 () Bool)

(assert (=> d!69879 (=> res!180800 e!201751)))

(assert (=> d!69879 (= res!180800 (bvsge #b00000000000000000000000000000000 (size!8298 a!3305)))))

(assert (=> d!69879 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777) e!201751)))

(declare-fun bm!26117 () Bool)

(assert (=> bm!26117 (= call!26120 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3305 mask!3777))))

(declare-fun b!328139 () Bool)

(assert (=> b!328139 (= e!201751 e!201749)))

(declare-fun c!51305 () Bool)

(assert (=> b!328139 (= c!51305 (validKeyInArray!0 (select (arr!7946 a!3305) #b00000000000000000000000000000000)))))

(declare-fun b!328140 () Bool)

(assert (=> b!328140 (= e!201750 call!26120)))

(assert (= (and d!69879 (not res!180800)) b!328139))

(assert (= (and b!328139 c!51305) b!328138))

(assert (= (and b!328139 (not c!51305)) b!328137))

(assert (= (and b!328138 res!180801) b!328140))

(assert (= (or b!328140 b!328137) bm!26117))

(assert (=> b!328138 m!334179))

(declare-fun m!334195 () Bool)

(assert (=> b!328138 m!334195))

(declare-fun m!334197 () Bool)

(assert (=> b!328138 m!334197))

(assert (=> b!328138 m!334179))

(declare-fun m!334199 () Bool)

(assert (=> b!328138 m!334199))

(declare-fun m!334201 () Bool)

(assert (=> bm!26117 m!334201))

(assert (=> b!328139 m!334179))

(assert (=> b!328139 m!334179))

(declare-fun m!334203 () Bool)

(assert (=> b!328139 m!334203))

(assert (=> b!327961 d!69879))

(declare-fun d!69891 () Bool)

(assert (=> d!69891 (= (validKeyInArray!0 k0!2497) (and (not (= k0!2497 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2497 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!327966 d!69891))

(declare-fun d!69893 () Bool)

(assert (=> d!69893 (= (validMask!0 mask!3777) (and (or (= mask!3777 #b00000000000000000000000000000111) (= mask!3777 #b00000000000000000000000000001111) (= mask!3777 #b00000000000000000000000000011111) (= mask!3777 #b00000000000000000000000000111111) (= mask!3777 #b00000000000000000000000001111111) (= mask!3777 #b00000000000000000000000011111111) (= mask!3777 #b00000000000000000000000111111111) (= mask!3777 #b00000000000000000000001111111111) (= mask!3777 #b00000000000000000000011111111111) (= mask!3777 #b00000000000000000000111111111111) (= mask!3777 #b00000000000000000001111111111111) (= mask!3777 #b00000000000000000011111111111111) (= mask!3777 #b00000000000000000111111111111111) (= mask!3777 #b00000000000000001111111111111111) (= mask!3777 #b00000000000000011111111111111111) (= mask!3777 #b00000000000000111111111111111111) (= mask!3777 #b00000000000001111111111111111111) (= mask!3777 #b00000000000011111111111111111111) (= mask!3777 #b00000000000111111111111111111111) (= mask!3777 #b00000000001111111111111111111111) (= mask!3777 #b00000000011111111111111111111111) (= mask!3777 #b00000000111111111111111111111111) (= mask!3777 #b00000001111111111111111111111111) (= mask!3777 #b00000011111111111111111111111111) (= mask!3777 #b00000111111111111111111111111111) (= mask!3777 #b00001111111111111111111111111111) (= mask!3777 #b00011111111111111111111111111111) (= mask!3777 #b00111111111111111111111111111111)) (bvsle mask!3777 #b00111111111111111111111111111111)))))

(assert (=> start!32906 d!69893))

(declare-fun d!69895 () Bool)

(assert (=> d!69895 (= (array_inv!5900 a!3305) (bvsge (size!8298 a!3305) #b00000000000000000000000000000000))))

(assert (=> start!32906 d!69895))

(check-sat (not b!328139) (not d!69861) (not d!69849) (not bm!26117) (not b!328110) (not b!328138) (not b!328030) (not b!328101))
(check-sat)
