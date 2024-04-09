; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!50938 () Bool)

(assert start!50938)

(declare-fun b!556775 () Bool)

(declare-fun e!320767 () Bool)

(declare-fun e!320766 () Bool)

(assert (=> b!556775 (= e!320767 e!320766)))

(declare-fun res!349158 () Bool)

(assert (=> b!556775 (=> (not res!349158) (not e!320766))))

(declare-datatypes ((SeekEntryResult!5290 0))(
  ( (MissingZero!5290 (index!23387 (_ BitVec 32))) (Found!5290 (index!23388 (_ BitVec 32))) (Intermediate!5290 (undefined!6102 Bool) (index!23389 (_ BitVec 32)) (x!52309 (_ BitVec 32))) (Undefined!5290) (MissingVacant!5290 (index!23390 (_ BitVec 32))) )
))
(declare-fun lt!253069 () SeekEntryResult!5290)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!556775 (= res!349158 (or (= lt!253069 (MissingZero!5290 i!1132)) (= lt!253069 (MissingVacant!5290 i!1132))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-datatypes ((array!35060 0))(
  ( (array!35061 (arr!16834 (Array (_ BitVec 32) (_ BitVec 64))) (size!17198 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35060)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35060 (_ BitVec 32)) SeekEntryResult!5290)

(assert (=> b!556775 (= lt!253069 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!556776 () Bool)

(declare-fun res!349156 () Bool)

(assert (=> b!556776 (=> (not res!349156) (not e!320766))))

(declare-datatypes ((List!10967 0))(
  ( (Nil!10964) (Cons!10963 (h!11951 (_ BitVec 64)) (t!17203 List!10967)) )
))
(declare-fun arrayNoDuplicates!0 (array!35060 (_ BitVec 32) List!10967) Bool)

(assert (=> b!556776 (= res!349156 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10964))))

(declare-fun b!556777 () Bool)

(declare-fun res!349163 () Bool)

(assert (=> b!556777 (=> (not res!349163) (not e!320767))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!556777 (= res!349163 (validKeyInArray!0 (select (arr!16834 a!3118) j!142)))))

(declare-fun b!556778 () Bool)

(declare-fun e!320763 () Bool)

(declare-fun lt!253073 () SeekEntryResult!5290)

(get-info :version)

(assert (=> b!556778 (= e!320763 (not (or (not ((_ is Intermediate!5290) lt!253073)) (undefined!6102 lt!253073) (= (select (arr!16834 a!3118) (index!23389 lt!253073)) (select (arr!16834 a!3118) j!142)) (= (select (arr!16834 a!3118) (index!23389 lt!253073)) #b0000000000000000000000000000000000000000000000000000000000000000) (bvslt mask!3119 #b00000000000000000000000000000000) (bvslt (index!23389 lt!253073) #b00000000000000000000000000000000) (bvsge (index!23389 lt!253073) (bvadd #b00000000000000000000000000000001 mask!3119)) (and (bvsle (x!52309 lt!253073) #b01111111111111111111111111111110) (bvsge (x!52309 lt!253073) #b00000000000000000000000000000000)))))))

(declare-fun e!320765 () Bool)

(assert (=> b!556778 e!320765))

(declare-fun res!349157 () Bool)

(assert (=> b!556778 (=> (not res!349157) (not e!320765))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35060 (_ BitVec 32)) Bool)

(assert (=> b!556778 (= res!349157 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17354 0))(
  ( (Unit!17355) )
))
(declare-fun lt!253071 () Unit!17354)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35060 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17354)

(assert (=> b!556778 (= lt!253071 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!556779 () Bool)

(declare-fun res!349162 () Bool)

(assert (=> b!556779 (=> (not res!349162) (not e!320767))))

(assert (=> b!556779 (= res!349162 (validKeyInArray!0 k0!1914))))

(declare-fun b!556780 () Bool)

(assert (=> b!556780 (= e!320765 (= (seekEntryOrOpen!0 (select (arr!16834 a!3118) j!142) a!3118 mask!3119) (Found!5290 j!142)))))

(declare-fun b!556781 () Bool)

(declare-fun res!349155 () Bool)

(assert (=> b!556781 (=> (not res!349155) (not e!320767))))

(assert (=> b!556781 (= res!349155 (and (= (size!17198 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17198 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17198 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!556783 () Bool)

(assert (=> b!556783 (= e!320766 e!320763)))

(declare-fun res!349161 () Bool)

(assert (=> b!556783 (=> (not res!349161) (not e!320763))))

(declare-fun lt!253072 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35060 (_ BitVec 32)) SeekEntryResult!5290)

(assert (=> b!556783 (= res!349161 (= lt!253073 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!253072 (select (store (arr!16834 a!3118) i!1132 k0!1914) j!142) (array!35061 (store (arr!16834 a!3118) i!1132 k0!1914) (size!17198 a!3118)) mask!3119)))))

(declare-fun lt!253070 () (_ BitVec 32))

(assert (=> b!556783 (= lt!253073 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!253070 (select (arr!16834 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!556783 (= lt!253072 (toIndex!0 (select (store (arr!16834 a!3118) i!1132 k0!1914) j!142) mask!3119))))

(assert (=> b!556783 (= lt!253070 (toIndex!0 (select (arr!16834 a!3118) j!142) mask!3119))))

(declare-fun b!556784 () Bool)

(declare-fun res!349159 () Bool)

(assert (=> b!556784 (=> (not res!349159) (not e!320767))))

(declare-fun arrayContainsKey!0 (array!35060 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!556784 (= res!349159 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!556782 () Bool)

(declare-fun res!349154 () Bool)

(assert (=> b!556782 (=> (not res!349154) (not e!320766))))

(assert (=> b!556782 (= res!349154 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun res!349160 () Bool)

(assert (=> start!50938 (=> (not res!349160) (not e!320767))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50938 (= res!349160 (validMask!0 mask!3119))))

(assert (=> start!50938 e!320767))

(assert (=> start!50938 true))

(declare-fun array_inv!12608 (array!35060) Bool)

(assert (=> start!50938 (array_inv!12608 a!3118)))

(assert (= (and start!50938 res!349160) b!556781))

(assert (= (and b!556781 res!349155) b!556777))

(assert (= (and b!556777 res!349163) b!556779))

(assert (= (and b!556779 res!349162) b!556784))

(assert (= (and b!556784 res!349159) b!556775))

(assert (= (and b!556775 res!349158) b!556782))

(assert (= (and b!556782 res!349154) b!556776))

(assert (= (and b!556776 res!349156) b!556783))

(assert (= (and b!556783 res!349161) b!556778))

(assert (= (and b!556778 res!349157) b!556780))

(declare-fun m!534777 () Bool)

(assert (=> b!556780 m!534777))

(assert (=> b!556780 m!534777))

(declare-fun m!534779 () Bool)

(assert (=> b!556780 m!534779))

(declare-fun m!534781 () Bool)

(assert (=> start!50938 m!534781))

(declare-fun m!534783 () Bool)

(assert (=> start!50938 m!534783))

(declare-fun m!534785 () Bool)

(assert (=> b!556775 m!534785))

(declare-fun m!534787 () Bool)

(assert (=> b!556782 m!534787))

(declare-fun m!534789 () Bool)

(assert (=> b!556776 m!534789))

(declare-fun m!534791 () Bool)

(assert (=> b!556778 m!534791))

(assert (=> b!556778 m!534777))

(declare-fun m!534793 () Bool)

(assert (=> b!556778 m!534793))

(declare-fun m!534795 () Bool)

(assert (=> b!556778 m!534795))

(declare-fun m!534797 () Bool)

(assert (=> b!556779 m!534797))

(declare-fun m!534799 () Bool)

(assert (=> b!556784 m!534799))

(assert (=> b!556777 m!534777))

(assert (=> b!556777 m!534777))

(declare-fun m!534801 () Bool)

(assert (=> b!556777 m!534801))

(assert (=> b!556783 m!534777))

(declare-fun m!534803 () Bool)

(assert (=> b!556783 m!534803))

(assert (=> b!556783 m!534777))

(declare-fun m!534805 () Bool)

(assert (=> b!556783 m!534805))

(declare-fun m!534807 () Bool)

(assert (=> b!556783 m!534807))

(declare-fun m!534809 () Bool)

(assert (=> b!556783 m!534809))

(assert (=> b!556783 m!534777))

(assert (=> b!556783 m!534807))

(declare-fun m!534811 () Bool)

(assert (=> b!556783 m!534811))

(assert (=> b!556783 m!534807))

(declare-fun m!534813 () Bool)

(assert (=> b!556783 m!534813))

(check-sat (not b!556775) (not b!556784) (not b!556782) (not b!556780) (not b!556777) (not b!556783) (not b!556779) (not b!556778) (not start!50938) (not b!556776))
(check-sat)
(get-model)

(declare-fun b!556823 () Bool)

(declare-fun e!320790 () Bool)

(declare-fun call!32351 () Bool)

(assert (=> b!556823 (= e!320790 call!32351)))

(declare-fun b!556824 () Bool)

(declare-fun e!320789 () Bool)

(assert (=> b!556824 (= e!320789 call!32351)))

(declare-fun b!556825 () Bool)

(assert (=> b!556825 (= e!320789 e!320790)))

(declare-fun lt!253096 () (_ BitVec 64))

(assert (=> b!556825 (= lt!253096 (select (arr!16834 a!3118) #b00000000000000000000000000000000))))

(declare-fun lt!253095 () Unit!17354)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!35060 (_ BitVec 64) (_ BitVec 32)) Unit!17354)

(assert (=> b!556825 (= lt!253095 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!253096 #b00000000000000000000000000000000))))

(assert (=> b!556825 (arrayContainsKey!0 a!3118 lt!253096 #b00000000000000000000000000000000)))

(declare-fun lt!253097 () Unit!17354)

(assert (=> b!556825 (= lt!253097 lt!253095)))

(declare-fun res!349198 () Bool)

(assert (=> b!556825 (= res!349198 (= (seekEntryOrOpen!0 (select (arr!16834 a!3118) #b00000000000000000000000000000000) a!3118 mask!3119) (Found!5290 #b00000000000000000000000000000000)))))

(assert (=> b!556825 (=> (not res!349198) (not e!320790))))

(declare-fun bm!32348 () Bool)

(assert (=> bm!32348 (= call!32351 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun d!83267 () Bool)

(declare-fun res!349199 () Bool)

(declare-fun e!320791 () Bool)

(assert (=> d!83267 (=> res!349199 e!320791)))

(assert (=> d!83267 (= res!349199 (bvsge #b00000000000000000000000000000000 (size!17198 a!3118)))))

(assert (=> d!83267 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119) e!320791)))

(declare-fun b!556826 () Bool)

(assert (=> b!556826 (= e!320791 e!320789)))

(declare-fun c!64151 () Bool)

(assert (=> b!556826 (= c!64151 (validKeyInArray!0 (select (arr!16834 a!3118) #b00000000000000000000000000000000)))))

(assert (= (and d!83267 (not res!349199)) b!556826))

(assert (= (and b!556826 c!64151) b!556825))

(assert (= (and b!556826 (not c!64151)) b!556824))

(assert (= (and b!556825 res!349198) b!556823))

(assert (= (or b!556823 b!556824) bm!32348))

(declare-fun m!534853 () Bool)

(assert (=> b!556825 m!534853))

(declare-fun m!534855 () Bool)

(assert (=> b!556825 m!534855))

(declare-fun m!534857 () Bool)

(assert (=> b!556825 m!534857))

(assert (=> b!556825 m!534853))

(declare-fun m!534859 () Bool)

(assert (=> b!556825 m!534859))

(declare-fun m!534861 () Bool)

(assert (=> bm!32348 m!534861))

(assert (=> b!556826 m!534853))

(assert (=> b!556826 m!534853))

(declare-fun m!534863 () Bool)

(assert (=> b!556826 m!534863))

(assert (=> b!556782 d!83267))

(declare-fun d!83269 () Bool)

(assert (=> d!83269 (= (validKeyInArray!0 (select (arr!16834 a!3118) j!142)) (and (not (= (select (arr!16834 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16834 a!3118) j!142) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!556777 d!83269))

(declare-fun lt!253108 () SeekEntryResult!5290)

(declare-fun b!556861 () Bool)

(assert (=> b!556861 (and (bvsge (index!23389 lt!253108) #b00000000000000000000000000000000) (bvslt (index!23389 lt!253108) (size!17198 (array!35061 (store (arr!16834 a!3118) i!1132 k0!1914) (size!17198 a!3118)))))))

(declare-fun e!320815 () Bool)

(assert (=> b!556861 (= e!320815 (= (select (arr!16834 (array!35061 (store (arr!16834 a!3118) i!1132 k0!1914) (size!17198 a!3118))) (index!23389 lt!253108)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!556862 () Bool)

(assert (=> b!556862 (and (bvsge (index!23389 lt!253108) #b00000000000000000000000000000000) (bvslt (index!23389 lt!253108) (size!17198 (array!35061 (store (arr!16834 a!3118) i!1132 k0!1914) (size!17198 a!3118)))))))

(declare-fun res!349212 () Bool)

(assert (=> b!556862 (= res!349212 (= (select (arr!16834 (array!35061 (store (arr!16834 a!3118) i!1132 k0!1914) (size!17198 a!3118))) (index!23389 lt!253108)) (select (store (arr!16834 a!3118) i!1132 k0!1914) j!142)))))

(assert (=> b!556862 (=> res!349212 e!320815)))

(declare-fun e!320813 () Bool)

(assert (=> b!556862 (= e!320813 e!320815)))

(declare-fun b!556863 () Bool)

(declare-fun e!320814 () SeekEntryResult!5290)

(assert (=> b!556863 (= e!320814 (Intermediate!5290 true lt!253072 #b00000000000000000000000000000000))))

(declare-fun d!83271 () Bool)

(declare-fun e!320816 () Bool)

(assert (=> d!83271 e!320816))

(declare-fun c!64166 () Bool)

(assert (=> d!83271 (= c!64166 (and ((_ is Intermediate!5290) lt!253108) (undefined!6102 lt!253108)))))

(assert (=> d!83271 (= lt!253108 e!320814)))

(declare-fun c!64165 () Bool)

(assert (=> d!83271 (= c!64165 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!253109 () (_ BitVec 64))

(assert (=> d!83271 (= lt!253109 (select (arr!16834 (array!35061 (store (arr!16834 a!3118) i!1132 k0!1914) (size!17198 a!3118))) lt!253072))))

(assert (=> d!83271 (validMask!0 mask!3119)))

(assert (=> d!83271 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!253072 (select (store (arr!16834 a!3118) i!1132 k0!1914) j!142) (array!35061 (store (arr!16834 a!3118) i!1132 k0!1914) (size!17198 a!3118)) mask!3119) lt!253108)))

(declare-fun e!320812 () SeekEntryResult!5290)

(declare-fun b!556864 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!556864 (= e!320812 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!253072 #b00000000000000000000000000000000 mask!3119) (select (store (arr!16834 a!3118) i!1132 k0!1914) j!142) (array!35061 (store (arr!16834 a!3118) i!1132 k0!1914) (size!17198 a!3118)) mask!3119))))

(declare-fun b!556865 () Bool)

(assert (=> b!556865 (= e!320816 e!320813)))

(declare-fun res!349211 () Bool)

(assert (=> b!556865 (= res!349211 (and ((_ is Intermediate!5290) lt!253108) (not (undefined!6102 lt!253108)) (bvslt (x!52309 lt!253108) #b01111111111111111111111111111110) (bvsge (x!52309 lt!253108) #b00000000000000000000000000000000) (bvsge (x!52309 lt!253108) #b00000000000000000000000000000000)))))

(assert (=> b!556865 (=> (not res!349211) (not e!320813))))

(declare-fun b!556866 () Bool)

(assert (=> b!556866 (= e!320816 (bvsge (x!52309 lt!253108) #b01111111111111111111111111111110))))

(declare-fun b!556867 () Bool)

(assert (=> b!556867 (and (bvsge (index!23389 lt!253108) #b00000000000000000000000000000000) (bvslt (index!23389 lt!253108) (size!17198 (array!35061 (store (arr!16834 a!3118) i!1132 k0!1914) (size!17198 a!3118)))))))

(declare-fun res!349210 () Bool)

(assert (=> b!556867 (= res!349210 (= (select (arr!16834 (array!35061 (store (arr!16834 a!3118) i!1132 k0!1914) (size!17198 a!3118))) (index!23389 lt!253108)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!556867 (=> res!349210 e!320815)))

(declare-fun b!556868 () Bool)

(assert (=> b!556868 (= e!320814 e!320812)))

(declare-fun c!64164 () Bool)

(assert (=> b!556868 (= c!64164 (or (= lt!253109 (select (store (arr!16834 a!3118) i!1132 k0!1914) j!142)) (= (bvadd lt!253109 lt!253109) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!556869 () Bool)

(assert (=> b!556869 (= e!320812 (Intermediate!5290 false lt!253072 #b00000000000000000000000000000000))))

(assert (= (and d!83271 c!64165) b!556863))

(assert (= (and d!83271 (not c!64165)) b!556868))

(assert (= (and b!556868 c!64164) b!556869))

(assert (= (and b!556868 (not c!64164)) b!556864))

(assert (= (and d!83271 c!64166) b!556866))

(assert (= (and d!83271 (not c!64166)) b!556865))

(assert (= (and b!556865 res!349211) b!556862))

(assert (= (and b!556862 (not res!349212)) b!556867))

(assert (= (and b!556867 (not res!349210)) b!556861))

(declare-fun m!534869 () Bool)

(assert (=> b!556864 m!534869))

(assert (=> b!556864 m!534869))

(assert (=> b!556864 m!534807))

(declare-fun m!534871 () Bool)

(assert (=> b!556864 m!534871))

(declare-fun m!534873 () Bool)

(assert (=> b!556861 m!534873))

(assert (=> b!556862 m!534873))

(declare-fun m!534875 () Bool)

(assert (=> d!83271 m!534875))

(assert (=> d!83271 m!534781))

(assert (=> b!556867 m!534873))

(assert (=> b!556783 d!83271))

(declare-fun b!556872 () Bool)

(declare-fun lt!253110 () SeekEntryResult!5290)

(assert (=> b!556872 (and (bvsge (index!23389 lt!253110) #b00000000000000000000000000000000) (bvslt (index!23389 lt!253110) (size!17198 a!3118)))))

(declare-fun e!320822 () Bool)

(assert (=> b!556872 (= e!320822 (= (select (arr!16834 a!3118) (index!23389 lt!253110)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!556873 () Bool)

(assert (=> b!556873 (and (bvsge (index!23389 lt!253110) #b00000000000000000000000000000000) (bvslt (index!23389 lt!253110) (size!17198 a!3118)))))

(declare-fun res!349217 () Bool)

(assert (=> b!556873 (= res!349217 (= (select (arr!16834 a!3118) (index!23389 lt!253110)) (select (arr!16834 a!3118) j!142)))))

(assert (=> b!556873 (=> res!349217 e!320822)))

(declare-fun e!320820 () Bool)

(assert (=> b!556873 (= e!320820 e!320822)))

(declare-fun b!556874 () Bool)

(declare-fun e!320821 () SeekEntryResult!5290)

(assert (=> b!556874 (= e!320821 (Intermediate!5290 true lt!253070 #b00000000000000000000000000000000))))

(declare-fun d!83279 () Bool)

(declare-fun e!320823 () Bool)

(assert (=> d!83279 e!320823))

(declare-fun c!64169 () Bool)

(assert (=> d!83279 (= c!64169 (and ((_ is Intermediate!5290) lt!253110) (undefined!6102 lt!253110)))))

(assert (=> d!83279 (= lt!253110 e!320821)))

(declare-fun c!64168 () Bool)

(assert (=> d!83279 (= c!64168 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!253111 () (_ BitVec 64))

(assert (=> d!83279 (= lt!253111 (select (arr!16834 a!3118) lt!253070))))

(assert (=> d!83279 (validMask!0 mask!3119)))

(assert (=> d!83279 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!253070 (select (arr!16834 a!3118) j!142) a!3118 mask!3119) lt!253110)))

(declare-fun e!320819 () SeekEntryResult!5290)

(declare-fun b!556875 () Bool)

(assert (=> b!556875 (= e!320819 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!253070 #b00000000000000000000000000000000 mask!3119) (select (arr!16834 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!556876 () Bool)

(assert (=> b!556876 (= e!320823 e!320820)))

(declare-fun res!349216 () Bool)

(assert (=> b!556876 (= res!349216 (and ((_ is Intermediate!5290) lt!253110) (not (undefined!6102 lt!253110)) (bvslt (x!52309 lt!253110) #b01111111111111111111111111111110) (bvsge (x!52309 lt!253110) #b00000000000000000000000000000000) (bvsge (x!52309 lt!253110) #b00000000000000000000000000000000)))))

(assert (=> b!556876 (=> (not res!349216) (not e!320820))))

(declare-fun b!556877 () Bool)

(assert (=> b!556877 (= e!320823 (bvsge (x!52309 lt!253110) #b01111111111111111111111111111110))))

(declare-fun b!556878 () Bool)

(assert (=> b!556878 (and (bvsge (index!23389 lt!253110) #b00000000000000000000000000000000) (bvslt (index!23389 lt!253110) (size!17198 a!3118)))))

(declare-fun res!349215 () Bool)

(assert (=> b!556878 (= res!349215 (= (select (arr!16834 a!3118) (index!23389 lt!253110)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!556878 (=> res!349215 e!320822)))

(declare-fun b!556879 () Bool)

(assert (=> b!556879 (= e!320821 e!320819)))

(declare-fun c!64167 () Bool)

(assert (=> b!556879 (= c!64167 (or (= lt!253111 (select (arr!16834 a!3118) j!142)) (= (bvadd lt!253111 lt!253111) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!556880 () Bool)

(assert (=> b!556880 (= e!320819 (Intermediate!5290 false lt!253070 #b00000000000000000000000000000000))))

(assert (= (and d!83279 c!64168) b!556874))

(assert (= (and d!83279 (not c!64168)) b!556879))

(assert (= (and b!556879 c!64167) b!556880))

(assert (= (and b!556879 (not c!64167)) b!556875))

(assert (= (and d!83279 c!64169) b!556877))

(assert (= (and d!83279 (not c!64169)) b!556876))

(assert (= (and b!556876 res!349216) b!556873))

(assert (= (and b!556873 (not res!349217)) b!556878))

(assert (= (and b!556878 (not res!349215)) b!556872))

(declare-fun m!534877 () Bool)

(assert (=> b!556875 m!534877))

(assert (=> b!556875 m!534877))

(assert (=> b!556875 m!534777))

(declare-fun m!534879 () Bool)

(assert (=> b!556875 m!534879))

(declare-fun m!534881 () Bool)

(assert (=> b!556872 m!534881))

(assert (=> b!556873 m!534881))

(declare-fun m!534883 () Bool)

(assert (=> d!83279 m!534883))

(assert (=> d!83279 m!534781))

(assert (=> b!556878 m!534881))

(assert (=> b!556783 d!83279))

(declare-fun d!83281 () Bool)

(declare-fun lt!253126 () (_ BitVec 32))

(declare-fun lt!253125 () (_ BitVec 32))

(assert (=> d!83281 (= lt!253126 (bvmul (bvxor lt!253125 (bvlshr lt!253125 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!83281 (= lt!253125 ((_ extract 31 0) (bvand (bvxor (select (store (arr!16834 a!3118) i!1132 k0!1914) j!142) (bvlshr (select (store (arr!16834 a!3118) i!1132 k0!1914) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!83281 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!349218 (let ((h!11953 ((_ extract 31 0) (bvand (bvxor (select (store (arr!16834 a!3118) i!1132 k0!1914) j!142) (bvlshr (select (store (arr!16834 a!3118) i!1132 k0!1914) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!52312 (bvmul (bvxor h!11953 (bvlshr h!11953 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!52312 (bvlshr x!52312 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!349218 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!349218 #b00000000000000000000000000000000))))))

(assert (=> d!83281 (= (toIndex!0 (select (store (arr!16834 a!3118) i!1132 k0!1914) j!142) mask!3119) (bvand (bvxor lt!253126 (bvlshr lt!253126 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!556783 d!83281))

(declare-fun d!83285 () Bool)

(declare-fun lt!253128 () (_ BitVec 32))

(declare-fun lt!253127 () (_ BitVec 32))

(assert (=> d!83285 (= lt!253128 (bvmul (bvxor lt!253127 (bvlshr lt!253127 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!83285 (= lt!253127 ((_ extract 31 0) (bvand (bvxor (select (arr!16834 a!3118) j!142) (bvlshr (select (arr!16834 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!83285 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!349218 (let ((h!11953 ((_ extract 31 0) (bvand (bvxor (select (arr!16834 a!3118) j!142) (bvlshr (select (arr!16834 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!52312 (bvmul (bvxor h!11953 (bvlshr h!11953 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!52312 (bvlshr x!52312 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!349218 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!349218 #b00000000000000000000000000000000))))))

(assert (=> d!83285 (= (toIndex!0 (select (arr!16834 a!3118) j!142) mask!3119) (bvand (bvxor lt!253128 (bvlshr lt!253128 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!556783 d!83285))

(declare-fun b!556901 () Bool)

(declare-fun e!320840 () Bool)

(declare-fun call!32354 () Bool)

(assert (=> b!556901 (= e!320840 call!32354)))

(declare-fun b!556902 () Bool)

(declare-fun e!320839 () Bool)

(assert (=> b!556902 (= e!320839 call!32354)))

(declare-fun b!556903 () Bool)

(assert (=> b!556903 (= e!320839 e!320840)))

(declare-fun lt!253130 () (_ BitVec 64))

(assert (=> b!556903 (= lt!253130 (select (arr!16834 a!3118) j!142))))

(declare-fun lt!253129 () Unit!17354)

(assert (=> b!556903 (= lt!253129 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!253130 j!142))))

(assert (=> b!556903 (arrayContainsKey!0 a!3118 lt!253130 #b00000000000000000000000000000000)))

(declare-fun lt!253131 () Unit!17354)

(assert (=> b!556903 (= lt!253131 lt!253129)))

(declare-fun res!349229 () Bool)

(assert (=> b!556903 (= res!349229 (= (seekEntryOrOpen!0 (select (arr!16834 a!3118) j!142) a!3118 mask!3119) (Found!5290 j!142)))))

(assert (=> b!556903 (=> (not res!349229) (not e!320840))))

(declare-fun bm!32351 () Bool)

(assert (=> bm!32351 (= call!32354 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!142 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun d!83287 () Bool)

(declare-fun res!349230 () Bool)

(declare-fun e!320841 () Bool)

(assert (=> d!83287 (=> res!349230 e!320841)))

(assert (=> d!83287 (= res!349230 (bvsge j!142 (size!17198 a!3118)))))

(assert (=> d!83287 (= (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119) e!320841)))

(declare-fun b!556904 () Bool)

(assert (=> b!556904 (= e!320841 e!320839)))

(declare-fun c!64175 () Bool)

(assert (=> b!556904 (= c!64175 (validKeyInArray!0 (select (arr!16834 a!3118) j!142)))))

(assert (= (and d!83287 (not res!349230)) b!556904))

(assert (= (and b!556904 c!64175) b!556903))

(assert (= (and b!556904 (not c!64175)) b!556902))

(assert (= (and b!556903 res!349229) b!556901))

(assert (= (or b!556901 b!556902) bm!32351))

(assert (=> b!556903 m!534777))

(declare-fun m!534901 () Bool)

(assert (=> b!556903 m!534901))

(declare-fun m!534903 () Bool)

(assert (=> b!556903 m!534903))

(assert (=> b!556903 m!534777))

(assert (=> b!556903 m!534779))

(declare-fun m!534905 () Bool)

(assert (=> bm!32351 m!534905))

(assert (=> b!556904 m!534777))

(assert (=> b!556904 m!534777))

(assert (=> b!556904 m!534801))

(assert (=> b!556778 d!83287))

(declare-fun d!83291 () Bool)

(assert (=> d!83291 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-fun lt!253137 () Unit!17354)

(declare-fun choose!38 (array!35060 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17354)

(assert (=> d!83291 (= lt!253137 (choose!38 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(assert (=> d!83291 (validMask!0 mask!3119)))

(assert (=> d!83291 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142) lt!253137)))

(declare-fun bs!17343 () Bool)

(assert (= bs!17343 d!83291))

(assert (=> bs!17343 m!534793))

(declare-fun m!534917 () Bool)

(assert (=> bs!17343 m!534917))

(assert (=> bs!17343 m!534781))

(assert (=> b!556778 d!83291))

(declare-fun d!83297 () Bool)

(declare-fun res!349241 () Bool)

(declare-fun e!320855 () Bool)

(assert (=> d!83297 (=> res!349241 e!320855)))

(assert (=> d!83297 (= res!349241 (= (select (arr!16834 a!3118) #b00000000000000000000000000000000) k0!1914))))

(assert (=> d!83297 (= (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000) e!320855)))

(declare-fun b!556921 () Bool)

(declare-fun e!320856 () Bool)

(assert (=> b!556921 (= e!320855 e!320856)))

(declare-fun res!349242 () Bool)

(assert (=> b!556921 (=> (not res!349242) (not e!320856))))

(assert (=> b!556921 (= res!349242 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!17198 a!3118)))))

(declare-fun b!556922 () Bool)

(assert (=> b!556922 (= e!320856 (arrayContainsKey!0 a!3118 k0!1914 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!83297 (not res!349241)) b!556921))

(assert (= (and b!556921 res!349242) b!556922))

(assert (=> d!83297 m!534853))

(declare-fun m!534919 () Bool)

(assert (=> b!556922 m!534919))

(assert (=> b!556784 d!83297))

(declare-fun d!83299 () Bool)

(assert (=> d!83299 (= (validKeyInArray!0 k0!1914) (and (not (= k0!1914 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1914 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!556779 d!83299))

(declare-fun d!83301 () Bool)

(assert (=> d!83301 (= (validMask!0 mask!3119) (and (or (= mask!3119 #b00000000000000000000000000000111) (= mask!3119 #b00000000000000000000000000001111) (= mask!3119 #b00000000000000000000000000011111) (= mask!3119 #b00000000000000000000000000111111) (= mask!3119 #b00000000000000000000000001111111) (= mask!3119 #b00000000000000000000000011111111) (= mask!3119 #b00000000000000000000000111111111) (= mask!3119 #b00000000000000000000001111111111) (= mask!3119 #b00000000000000000000011111111111) (= mask!3119 #b00000000000000000000111111111111) (= mask!3119 #b00000000000000000001111111111111) (= mask!3119 #b00000000000000000011111111111111) (= mask!3119 #b00000000000000000111111111111111) (= mask!3119 #b00000000000000001111111111111111) (= mask!3119 #b00000000000000011111111111111111) (= mask!3119 #b00000000000000111111111111111111) (= mask!3119 #b00000000000001111111111111111111) (= mask!3119 #b00000000000011111111111111111111) (= mask!3119 #b00000000000111111111111111111111) (= mask!3119 #b00000000001111111111111111111111) (= mask!3119 #b00000000011111111111111111111111) (= mask!3119 #b00000000111111111111111111111111) (= mask!3119 #b00000001111111111111111111111111) (= mask!3119 #b00000011111111111111111111111111) (= mask!3119 #b00000111111111111111111111111111) (= mask!3119 #b00001111111111111111111111111111) (= mask!3119 #b00011111111111111111111111111111) (= mask!3119 #b00111111111111111111111111111111)) (bvsle mask!3119 #b00111111111111111111111111111111)))))

(assert (=> start!50938 d!83301))

(declare-fun d!83307 () Bool)

(assert (=> d!83307 (= (array_inv!12608 a!3118) (bvsge (size!17198 a!3118) #b00000000000000000000000000000000))))

(assert (=> start!50938 d!83307))

(declare-fun b!557003 () Bool)

(declare-fun e!320905 () SeekEntryResult!5290)

(declare-fun e!320906 () SeekEntryResult!5290)

(assert (=> b!557003 (= e!320905 e!320906)))

(declare-fun lt!253172 () (_ BitVec 64))

(declare-fun lt!253171 () SeekEntryResult!5290)

(assert (=> b!557003 (= lt!253172 (select (arr!16834 a!3118) (index!23389 lt!253171)))))

(declare-fun c!64209 () Bool)

(assert (=> b!557003 (= c!64209 (= lt!253172 (select (arr!16834 a!3118) j!142)))))

(declare-fun b!557004 () Bool)

(declare-fun c!64208 () Bool)

(assert (=> b!557004 (= c!64208 (= lt!253172 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!320907 () SeekEntryResult!5290)

(assert (=> b!557004 (= e!320906 e!320907)))

(declare-fun b!557005 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35060 (_ BitVec 32)) SeekEntryResult!5290)

(assert (=> b!557005 (= e!320907 (seekKeyOrZeroReturnVacant!0 (x!52309 lt!253171) (index!23389 lt!253171) (index!23389 lt!253171) (select (arr!16834 a!3118) j!142) a!3118 mask!3119))))

(declare-fun d!83309 () Bool)

(declare-fun lt!253173 () SeekEntryResult!5290)

(assert (=> d!83309 (and (or ((_ is Undefined!5290) lt!253173) (not ((_ is Found!5290) lt!253173)) (and (bvsge (index!23388 lt!253173) #b00000000000000000000000000000000) (bvslt (index!23388 lt!253173) (size!17198 a!3118)))) (or ((_ is Undefined!5290) lt!253173) ((_ is Found!5290) lt!253173) (not ((_ is MissingZero!5290) lt!253173)) (and (bvsge (index!23387 lt!253173) #b00000000000000000000000000000000) (bvslt (index!23387 lt!253173) (size!17198 a!3118)))) (or ((_ is Undefined!5290) lt!253173) ((_ is Found!5290) lt!253173) ((_ is MissingZero!5290) lt!253173) (not ((_ is MissingVacant!5290) lt!253173)) (and (bvsge (index!23390 lt!253173) #b00000000000000000000000000000000) (bvslt (index!23390 lt!253173) (size!17198 a!3118)))) (or ((_ is Undefined!5290) lt!253173) (ite ((_ is Found!5290) lt!253173) (= (select (arr!16834 a!3118) (index!23388 lt!253173)) (select (arr!16834 a!3118) j!142)) (ite ((_ is MissingZero!5290) lt!253173) (= (select (arr!16834 a!3118) (index!23387 lt!253173)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!5290) lt!253173) (= (select (arr!16834 a!3118) (index!23390 lt!253173)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!83309 (= lt!253173 e!320905)))

(declare-fun c!64210 () Bool)

(assert (=> d!83309 (= c!64210 (and ((_ is Intermediate!5290) lt!253171) (undefined!6102 lt!253171)))))

(assert (=> d!83309 (= lt!253171 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16834 a!3118) j!142) mask!3119) (select (arr!16834 a!3118) j!142) a!3118 mask!3119))))

(assert (=> d!83309 (validMask!0 mask!3119)))

(assert (=> d!83309 (= (seekEntryOrOpen!0 (select (arr!16834 a!3118) j!142) a!3118 mask!3119) lt!253173)))

(declare-fun b!557006 () Bool)

(assert (=> b!557006 (= e!320907 (MissingZero!5290 (index!23389 lt!253171)))))

(declare-fun b!557007 () Bool)

(assert (=> b!557007 (= e!320906 (Found!5290 (index!23389 lt!253171)))))

(declare-fun b!557008 () Bool)

(assert (=> b!557008 (= e!320905 Undefined!5290)))

(assert (= (and d!83309 c!64210) b!557008))

(assert (= (and d!83309 (not c!64210)) b!557003))

(assert (= (and b!557003 c!64209) b!557007))

(assert (= (and b!557003 (not c!64209)) b!557004))

(assert (= (and b!557004 c!64208) b!557006))

(assert (= (and b!557004 (not c!64208)) b!557005))

(declare-fun m!534961 () Bool)

(assert (=> b!557003 m!534961))

(assert (=> b!557005 m!534777))

(declare-fun m!534963 () Bool)

(assert (=> b!557005 m!534963))

(assert (=> d!83309 m!534805))

(assert (=> d!83309 m!534777))

(declare-fun m!534965 () Bool)

(assert (=> d!83309 m!534965))

(declare-fun m!534969 () Bool)

(assert (=> d!83309 m!534969))

(assert (=> d!83309 m!534781))

(assert (=> d!83309 m!534777))

(assert (=> d!83309 m!534805))

(declare-fun m!534973 () Bool)

(assert (=> d!83309 m!534973))

(declare-fun m!534977 () Bool)

(assert (=> d!83309 m!534977))

(assert (=> b!556780 d!83309))

(declare-fun b!557018 () Bool)

(declare-fun e!320913 () SeekEntryResult!5290)

(declare-fun e!320914 () SeekEntryResult!5290)

(assert (=> b!557018 (= e!320913 e!320914)))

(declare-fun lt!253179 () (_ BitVec 64))

(declare-fun lt!253178 () SeekEntryResult!5290)

(assert (=> b!557018 (= lt!253179 (select (arr!16834 a!3118) (index!23389 lt!253178)))))

(declare-fun c!64215 () Bool)

(assert (=> b!557018 (= c!64215 (= lt!253179 k0!1914))))

(declare-fun b!557019 () Bool)

(declare-fun c!64214 () Bool)

(assert (=> b!557019 (= c!64214 (= lt!253179 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!320915 () SeekEntryResult!5290)

(assert (=> b!557019 (= e!320914 e!320915)))

(declare-fun b!557020 () Bool)

(assert (=> b!557020 (= e!320915 (seekKeyOrZeroReturnVacant!0 (x!52309 lt!253178) (index!23389 lt!253178) (index!23389 lt!253178) k0!1914 a!3118 mask!3119))))

(declare-fun d!83321 () Bool)

(declare-fun lt!253180 () SeekEntryResult!5290)

(assert (=> d!83321 (and (or ((_ is Undefined!5290) lt!253180) (not ((_ is Found!5290) lt!253180)) (and (bvsge (index!23388 lt!253180) #b00000000000000000000000000000000) (bvslt (index!23388 lt!253180) (size!17198 a!3118)))) (or ((_ is Undefined!5290) lt!253180) ((_ is Found!5290) lt!253180) (not ((_ is MissingZero!5290) lt!253180)) (and (bvsge (index!23387 lt!253180) #b00000000000000000000000000000000) (bvslt (index!23387 lt!253180) (size!17198 a!3118)))) (or ((_ is Undefined!5290) lt!253180) ((_ is Found!5290) lt!253180) ((_ is MissingZero!5290) lt!253180) (not ((_ is MissingVacant!5290) lt!253180)) (and (bvsge (index!23390 lt!253180) #b00000000000000000000000000000000) (bvslt (index!23390 lt!253180) (size!17198 a!3118)))) (or ((_ is Undefined!5290) lt!253180) (ite ((_ is Found!5290) lt!253180) (= (select (arr!16834 a!3118) (index!23388 lt!253180)) k0!1914) (ite ((_ is MissingZero!5290) lt!253180) (= (select (arr!16834 a!3118) (index!23387 lt!253180)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!5290) lt!253180) (= (select (arr!16834 a!3118) (index!23390 lt!253180)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!83321 (= lt!253180 e!320913)))

(declare-fun c!64216 () Bool)

(assert (=> d!83321 (= c!64216 (and ((_ is Intermediate!5290) lt!253178) (undefined!6102 lt!253178)))))

(assert (=> d!83321 (= lt!253178 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1914 mask!3119) k0!1914 a!3118 mask!3119))))

(assert (=> d!83321 (validMask!0 mask!3119)))

(assert (=> d!83321 (= (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119) lt!253180)))

(declare-fun b!557021 () Bool)

(assert (=> b!557021 (= e!320915 (MissingZero!5290 (index!23389 lt!253178)))))

(declare-fun b!557022 () Bool)

(assert (=> b!557022 (= e!320914 (Found!5290 (index!23389 lt!253178)))))

(declare-fun b!557023 () Bool)

(assert (=> b!557023 (= e!320913 Undefined!5290)))

(assert (= (and d!83321 c!64216) b!557023))

(assert (= (and d!83321 (not c!64216)) b!557018))

(assert (= (and b!557018 c!64215) b!557022))

(assert (= (and b!557018 (not c!64215)) b!557019))

(assert (= (and b!557019 c!64214) b!557021))

(assert (= (and b!557019 (not c!64214)) b!557020))

(declare-fun m!534981 () Bool)

(assert (=> b!557018 m!534981))

(declare-fun m!534983 () Bool)

(assert (=> b!557020 m!534983))

(declare-fun m!534985 () Bool)

(assert (=> d!83321 m!534985))

(declare-fun m!534989 () Bool)

(assert (=> d!83321 m!534989))

(declare-fun m!534991 () Bool)

(assert (=> d!83321 m!534991))

(assert (=> d!83321 m!534781))

(assert (=> d!83321 m!534985))

(declare-fun m!534993 () Bool)

(assert (=> d!83321 m!534993))

(declare-fun m!534995 () Bool)

(assert (=> d!83321 m!534995))

(assert (=> b!556775 d!83321))

(declare-fun b!557040 () Bool)

(declare-fun e!320930 () Bool)

(declare-fun contains!2853 (List!10967 (_ BitVec 64)) Bool)

(assert (=> b!557040 (= e!320930 (contains!2853 Nil!10964 (select (arr!16834 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!557041 () Bool)

(declare-fun e!320927 () Bool)

(declare-fun call!32365 () Bool)

(assert (=> b!557041 (= e!320927 call!32365)))

(declare-fun bm!32362 () Bool)

(declare-fun c!64222 () Bool)

(assert (=> bm!32362 (= call!32365 (arrayNoDuplicates!0 a!3118 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!64222 (Cons!10963 (select (arr!16834 a!3118) #b00000000000000000000000000000000) Nil!10964) Nil!10964)))))

(declare-fun b!557042 () Bool)

(assert (=> b!557042 (= e!320927 call!32365)))

(declare-fun d!83327 () Bool)

(declare-fun res!349276 () Bool)

(declare-fun e!320929 () Bool)

(assert (=> d!83327 (=> res!349276 e!320929)))

(assert (=> d!83327 (= res!349276 (bvsge #b00000000000000000000000000000000 (size!17198 a!3118)))))

(assert (=> d!83327 (= (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10964) e!320929)))

(declare-fun b!557043 () Bool)

(declare-fun e!320928 () Bool)

(assert (=> b!557043 (= e!320928 e!320927)))

(assert (=> b!557043 (= c!64222 (validKeyInArray!0 (select (arr!16834 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!557044 () Bool)

(assert (=> b!557044 (= e!320929 e!320928)))

(declare-fun res!349277 () Bool)

(assert (=> b!557044 (=> (not res!349277) (not e!320928))))

(assert (=> b!557044 (= res!349277 (not e!320930))))

(declare-fun res!349275 () Bool)

(assert (=> b!557044 (=> (not res!349275) (not e!320930))))

(assert (=> b!557044 (= res!349275 (validKeyInArray!0 (select (arr!16834 a!3118) #b00000000000000000000000000000000)))))

(assert (= (and d!83327 (not res!349276)) b!557044))

(assert (= (and b!557044 res!349275) b!557040))

(assert (= (and b!557044 res!349277) b!557043))

(assert (= (and b!557043 c!64222) b!557041))

(assert (= (and b!557043 (not c!64222)) b!557042))

(assert (= (or b!557041 b!557042) bm!32362))

(assert (=> b!557040 m!534853))

(assert (=> b!557040 m!534853))

(declare-fun m!535011 () Bool)

(assert (=> b!557040 m!535011))

(assert (=> bm!32362 m!534853))

(declare-fun m!535013 () Bool)

(assert (=> bm!32362 m!535013))

(assert (=> b!557043 m!534853))

(assert (=> b!557043 m!534853))

(assert (=> b!557043 m!534863))

(assert (=> b!557044 m!534853))

(assert (=> b!557044 m!534853))

(assert (=> b!557044 m!534863))

(assert (=> b!556776 d!83327))

(check-sat (not d!83321) (not d!83271) (not b!556875) (not b!556826) (not bm!32362) (not b!556922) (not b!557040) (not d!83291) (not b!557005) (not bm!32351) (not b!557044) (not d!83309) (not b!556903) (not b!556825) (not b!557020) (not b!556864) (not bm!32348) (not b!556904) (not d!83279) (not b!557043))
(check-sat)
