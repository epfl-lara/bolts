; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52818 () Bool)

(assert start!52818)

(declare-fun b!575666 () Bool)

(declare-fun res!364237 () Bool)

(declare-fun e!331230 () Bool)

(assert (=> b!575666 (=> (not res!364237) (not e!331230))))

(declare-datatypes ((array!35917 0))(
  ( (array!35918 (arr!17237 (Array (_ BitVec 32) (_ BitVec 64))) (size!17601 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35917)

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!35917 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!575666 (= res!364237 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!575667 () Bool)

(declare-fun res!364235 () Bool)

(assert (=> b!575667 (=> (not res!364235) (not e!331230))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!575667 (= res!364235 (validKeyInArray!0 k!1914))))

(declare-fun b!575668 () Bool)

(declare-fun e!331233 () Bool)

(declare-fun lt!263438 () Bool)

(declare-datatypes ((SeekEntryResult!5693 0))(
  ( (MissingZero!5693 (index!24999 (_ BitVec 32))) (Found!5693 (index!25000 (_ BitVec 32))) (Intermediate!5693 (undefined!6505 Bool) (index!25001 (_ BitVec 32)) (x!53913 (_ BitVec 32))) (Undefined!5693) (MissingVacant!5693 (index!25002 (_ BitVec 32))) )
))
(declare-fun lt!263437 () SeekEntryResult!5693)

(assert (=> b!575668 (= e!331233 (not (or (and (not lt!263438) (undefined!6505 lt!263437)) (and (not lt!263438) (not (undefined!6505 lt!263437))))))))

(assert (=> b!575668 (= lt!263438 (not (is-Intermediate!5693 lt!263437)))))

(declare-fun e!331232 () Bool)

(assert (=> b!575668 e!331232))

(declare-fun res!364232 () Bool)

(assert (=> b!575668 (=> (not res!364232) (not e!331232))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35917 (_ BitVec 32)) Bool)

(assert (=> b!575668 (= res!364232 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!18088 0))(
  ( (Unit!18089) )
))
(declare-fun lt!263433 () Unit!18088)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35917 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18088)

(assert (=> b!575668 (= lt!263433 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!575669 () Bool)

(declare-fun e!331234 () Bool)

(assert (=> b!575669 (= e!331230 e!331234)))

(declare-fun res!364238 () Bool)

(assert (=> b!575669 (=> (not res!364238) (not e!331234))))

(declare-fun lt!263435 () SeekEntryResult!5693)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!575669 (= res!364238 (or (= lt!263435 (MissingZero!5693 i!1132)) (= lt!263435 (MissingVacant!5693 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35917 (_ BitVec 32)) SeekEntryResult!5693)

(assert (=> b!575669 (= lt!263435 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!575670 () Bool)

(assert (=> b!575670 (= e!331232 (= (seekEntryOrOpen!0 (select (arr!17237 a!3118) j!142) a!3118 mask!3119) (Found!5693 j!142)))))

(declare-fun b!575671 () Bool)

(assert (=> b!575671 (= e!331234 e!331233)))

(declare-fun res!364241 () Bool)

(assert (=> b!575671 (=> (not res!364241) (not e!331233))))

(declare-fun lt!263436 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35917 (_ BitVec 32)) SeekEntryResult!5693)

(assert (=> b!575671 (= res!364241 (= lt!263437 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!263436 (select (store (arr!17237 a!3118) i!1132 k!1914) j!142) (array!35918 (store (arr!17237 a!3118) i!1132 k!1914) (size!17601 a!3118)) mask!3119)))))

(declare-fun lt!263434 () (_ BitVec 32))

(assert (=> b!575671 (= lt!263437 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!263434 (select (arr!17237 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!575671 (= lt!263436 (toIndex!0 (select (store (arr!17237 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!575671 (= lt!263434 (toIndex!0 (select (arr!17237 a!3118) j!142) mask!3119))))

(declare-fun res!364233 () Bool)

(assert (=> start!52818 (=> (not res!364233) (not e!331230))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52818 (= res!364233 (validMask!0 mask!3119))))

(assert (=> start!52818 e!331230))

(assert (=> start!52818 true))

(declare-fun array_inv!13011 (array!35917) Bool)

(assert (=> start!52818 (array_inv!13011 a!3118)))

(declare-fun b!575672 () Bool)

(declare-fun res!364239 () Bool)

(assert (=> b!575672 (=> (not res!364239) (not e!331234))))

(assert (=> b!575672 (= res!364239 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!575673 () Bool)

(declare-fun res!364236 () Bool)

(assert (=> b!575673 (=> (not res!364236) (not e!331234))))

(declare-datatypes ((List!11370 0))(
  ( (Nil!11367) (Cons!11366 (h!12405 (_ BitVec 64)) (t!17606 List!11370)) )
))
(declare-fun arrayNoDuplicates!0 (array!35917 (_ BitVec 32) List!11370) Bool)

(assert (=> b!575673 (= res!364236 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11367))))

(declare-fun b!575674 () Bool)

(declare-fun res!364240 () Bool)

(assert (=> b!575674 (=> (not res!364240) (not e!331230))))

(assert (=> b!575674 (= res!364240 (and (= (size!17601 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17601 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17601 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!575675 () Bool)

(declare-fun res!364234 () Bool)

(assert (=> b!575675 (=> (not res!364234) (not e!331230))))

(assert (=> b!575675 (= res!364234 (validKeyInArray!0 (select (arr!17237 a!3118) j!142)))))

(assert (= (and start!52818 res!364233) b!575674))

(assert (= (and b!575674 res!364240) b!575675))

(assert (= (and b!575675 res!364234) b!575667))

(assert (= (and b!575667 res!364235) b!575666))

(assert (= (and b!575666 res!364237) b!575669))

(assert (= (and b!575669 res!364238) b!575672))

(assert (= (and b!575672 res!364239) b!575673))

(assert (= (and b!575673 res!364236) b!575671))

(assert (= (and b!575671 res!364241) b!575668))

(assert (= (and b!575668 res!364232) b!575670))

(declare-fun m!554695 () Bool)

(assert (=> start!52818 m!554695))

(declare-fun m!554697 () Bool)

(assert (=> start!52818 m!554697))

(declare-fun m!554699 () Bool)

(assert (=> b!575667 m!554699))

(declare-fun m!554701 () Bool)

(assert (=> b!575671 m!554701))

(declare-fun m!554703 () Bool)

(assert (=> b!575671 m!554703))

(assert (=> b!575671 m!554703))

(declare-fun m!554705 () Bool)

(assert (=> b!575671 m!554705))

(declare-fun m!554707 () Bool)

(assert (=> b!575671 m!554707))

(assert (=> b!575671 m!554703))

(declare-fun m!554709 () Bool)

(assert (=> b!575671 m!554709))

(assert (=> b!575671 m!554701))

(declare-fun m!554711 () Bool)

(assert (=> b!575671 m!554711))

(assert (=> b!575671 m!554701))

(declare-fun m!554713 () Bool)

(assert (=> b!575671 m!554713))

(assert (=> b!575675 m!554701))

(assert (=> b!575675 m!554701))

(declare-fun m!554715 () Bool)

(assert (=> b!575675 m!554715))

(declare-fun m!554717 () Bool)

(assert (=> b!575666 m!554717))

(declare-fun m!554719 () Bool)

(assert (=> b!575673 m!554719))

(declare-fun m!554721 () Bool)

(assert (=> b!575669 m!554721))

(declare-fun m!554723 () Bool)

(assert (=> b!575672 m!554723))

(assert (=> b!575670 m!554701))

(assert (=> b!575670 m!554701))

(declare-fun m!554725 () Bool)

(assert (=> b!575670 m!554725))

(declare-fun m!554727 () Bool)

(assert (=> b!575668 m!554727))

(declare-fun m!554729 () Bool)

(assert (=> b!575668 m!554729))

(push 1)

(assert (not start!52818))

(assert (not b!575667))

(assert (not b!575670))

(assert (not b!575669))

(assert (not b!575675))

(assert (not b!575668))

(assert (not b!575672))

(assert (not b!575673))

(assert (not b!575666))

(assert (not b!575671))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!32707 () Bool)

(declare-fun call!32710 () Bool)

(declare-fun c!66085 () Bool)

(assert (=> bm!32707 (= call!32710 (arrayNoDuplicates!0 a!3118 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!66085 (Cons!11366 (select (arr!17237 a!3118) #b00000000000000000000000000000000) Nil!11367) Nil!11367)))))

(declare-fun b!575694 () Bool)

(declare-fun e!331249 () Bool)

(declare-fun e!331252 () Bool)

(assert (=> b!575694 (= e!331249 e!331252)))

(declare-fun res!364252 () Bool)

(assert (=> b!575694 (=> (not res!364252) (not e!331252))))

(declare-fun e!331251 () Bool)

(assert (=> b!575694 (= res!364252 (not e!331251))))

(declare-fun res!364254 () Bool)

(assert (=> b!575694 (=> (not res!364254) (not e!331251))))

(assert (=> b!575694 (= res!364254 (validKeyInArray!0 (select (arr!17237 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!575695 () Bool)

(declare-fun e!331250 () Bool)

(assert (=> b!575695 (= e!331250 call!32710)))

(declare-fun d!85193 () Bool)

(declare-fun res!364253 () Bool)

(assert (=> d!85193 (=> res!364253 e!331249)))

(assert (=> d!85193 (= res!364253 (bvsge #b00000000000000000000000000000000 (size!17601 a!3118)))))

(assert (=> d!85193 (= (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11367) e!331249)))

(declare-fun b!575696 () Bool)

(assert (=> b!575696 (= e!331252 e!331250)))

(assert (=> b!575696 (= c!66085 (validKeyInArray!0 (select (arr!17237 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!575697 () Bool)

(declare-fun contains!2898 (List!11370 (_ BitVec 64)) Bool)

(assert (=> b!575697 (= e!331251 (contains!2898 Nil!11367 (select (arr!17237 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!575698 () Bool)

(assert (=> b!575698 (= e!331250 call!32710)))

(assert (= (and d!85193 (not res!364253)) b!575694))

(assert (= (and b!575694 res!364254) b!575697))

(assert (= (and b!575694 res!364252) b!575696))

(assert (= (and b!575696 c!66085) b!575698))

(assert (= (and b!575696 (not c!66085)) b!575695))

(assert (= (or b!575698 b!575695) bm!32707))

(declare-fun m!554731 () Bool)

(assert (=> bm!32707 m!554731))

(declare-fun m!554733 () Bool)

(assert (=> bm!32707 m!554733))

(assert (=> b!575694 m!554731))

(assert (=> b!575694 m!554731))

(declare-fun m!554735 () Bool)

(assert (=> b!575694 m!554735))

(assert (=> b!575696 m!554731))

(assert (=> b!575696 m!554731))

(assert (=> b!575696 m!554735))

(assert (=> b!575697 m!554731))

(assert (=> b!575697 m!554731))

(declare-fun m!554737 () Bool)

(assert (=> b!575697 m!554737))

(assert (=> b!575673 d!85193))

(declare-fun b!575726 () Bool)

(declare-fun e!331276 () Bool)

(declare-fun call!32717 () Bool)

(assert (=> b!575726 (= e!331276 call!32717)))

(declare-fun b!575727 () Bool)

(declare-fun e!331275 () Bool)

(assert (=> b!575727 (= e!331276 e!331275)))

(declare-fun lt!263455 () (_ BitVec 64))

(assert (=> b!575727 (= lt!263455 (select (arr!17237 a!3118) j!142))))

(declare-fun lt!263454 () Unit!18088)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!35917 (_ BitVec 64) (_ BitVec 32)) Unit!18088)

(assert (=> b!575727 (= lt!263454 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!263455 j!142))))

(assert (=> b!575727 (arrayContainsKey!0 a!3118 lt!263455 #b00000000000000000000000000000000)))

(declare-fun lt!263456 () Unit!18088)

(assert (=> b!575727 (= lt!263456 lt!263454)))

(declare-fun res!364271 () Bool)

(assert (=> b!575727 (= res!364271 (= (seekEntryOrOpen!0 (select (arr!17237 a!3118) j!142) a!3118 mask!3119) (Found!5693 j!142)))))

(assert (=> b!575727 (=> (not res!364271) (not e!331275))))

(declare-fun d!85197 () Bool)

(declare-fun res!364270 () Bool)

(declare-fun e!331274 () Bool)

(assert (=> d!85197 (=> res!364270 e!331274)))

(assert (=> d!85197 (= res!364270 (bvsge j!142 (size!17601 a!3118)))))

(assert (=> d!85197 (= (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119) e!331274)))

(declare-fun b!575728 () Bool)

(assert (=> b!575728 (= e!331274 e!331276)))

(declare-fun c!66092 () Bool)

(assert (=> b!575728 (= c!66092 (validKeyInArray!0 (select (arr!17237 a!3118) j!142)))))

(declare-fun bm!32714 () Bool)

(assert (=> bm!32714 (= call!32717 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!142 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun b!575729 () Bool)

(assert (=> b!575729 (= e!331275 call!32717)))

(assert (= (and d!85197 (not res!364270)) b!575728))

(assert (= (and b!575728 c!66092) b!575727))

(assert (= (and b!575728 (not c!66092)) b!575726))

(assert (= (and b!575727 res!364271) b!575729))

(assert (= (or b!575729 b!575726) bm!32714))

(assert (=> b!575727 m!554701))

(declare-fun m!554755 () Bool)

(assert (=> b!575727 m!554755))

(declare-fun m!554757 () Bool)

(assert (=> b!575727 m!554757))

(assert (=> b!575727 m!554701))

(assert (=> b!575727 m!554725))

(assert (=> b!575728 m!554701))

(assert (=> b!575728 m!554701))

(assert (=> b!575728 m!554715))

(declare-fun m!554759 () Bool)

(assert (=> bm!32714 m!554759))

(assert (=> b!575668 d!85197))

(declare-fun d!85203 () Bool)

(assert (=> d!85203 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-fun lt!263465 () Unit!18088)

(declare-fun choose!38 (array!35917 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18088)

(assert (=> d!85203 (= lt!263465 (choose!38 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(assert (=> d!85203 (validMask!0 mask!3119)))

(assert (=> d!85203 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142) lt!263465)))

(declare-fun bs!17796 () Bool)

(assert (= bs!17796 d!85203))

(assert (=> bs!17796 m!554727))

(declare-fun m!554761 () Bool)

(assert (=> bs!17796 m!554761))

(assert (=> bs!17796 m!554695))

(assert (=> b!575668 d!85203))

(declare-fun b!575820 () Bool)

(declare-fun e!331330 () SeekEntryResult!5693)

(declare-fun lt!263500 () SeekEntryResult!5693)

(assert (=> b!575820 (= e!331330 (MissingZero!5693 (index!25001 lt!263500)))))

(declare-fun b!575821 () Bool)

(declare-fun e!331331 () SeekEntryResult!5693)

(assert (=> b!575821 (= e!331331 (Found!5693 (index!25001 lt!263500)))))

(declare-fun d!85205 () Bool)

(declare-fun lt!263501 () SeekEntryResult!5693)

(assert (=> d!85205 (and (or (is-Undefined!5693 lt!263501) (not (is-Found!5693 lt!263501)) (and (bvsge (index!25000 lt!263501) #b00000000000000000000000000000000) (bvslt (index!25000 lt!263501) (size!17601 a!3118)))) (or (is-Undefined!5693 lt!263501) (is-Found!5693 lt!263501) (not (is-MissingZero!5693 lt!263501)) (and (bvsge (index!24999 lt!263501) #b00000000000000000000000000000000) (bvslt (index!24999 lt!263501) (size!17601 a!3118)))) (or (is-Undefined!5693 lt!263501) (is-Found!5693 lt!263501) (is-MissingZero!5693 lt!263501) (not (is-MissingVacant!5693 lt!263501)) (and (bvsge (index!25002 lt!263501) #b00000000000000000000000000000000) (bvslt (index!25002 lt!263501) (size!17601 a!3118)))) (or (is-Undefined!5693 lt!263501) (ite (is-Found!5693 lt!263501) (= (select (arr!17237 a!3118) (index!25000 lt!263501)) k!1914) (ite (is-MissingZero!5693 lt!263501) (= (select (arr!17237 a!3118) (index!24999 lt!263501)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5693 lt!263501) (= (select (arr!17237 a!3118) (index!25002 lt!263501)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!331332 () SeekEntryResult!5693)

(assert (=> d!85205 (= lt!263501 e!331332)))

(declare-fun c!66127 () Bool)

(assert (=> d!85205 (= c!66127 (and (is-Intermediate!5693 lt!263500) (undefined!6505 lt!263500)))))

(assert (=> d!85205 (= lt!263500 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1914 mask!3119) k!1914 a!3118 mask!3119))))

(assert (=> d!85205 (validMask!0 mask!3119)))

(assert (=> d!85205 (= (seekEntryOrOpen!0 k!1914 a!3118 mask!3119) lt!263501)))

(declare-fun b!575822 () Bool)

(assert (=> b!575822 (= e!331332 Undefined!5693)))

(declare-fun b!575823 () Bool)

(declare-fun c!66126 () Bool)

(declare-fun lt!263499 () (_ BitVec 64))

(assert (=> b!575823 (= c!66126 (= lt!263499 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!575823 (= e!331331 e!331330)))

(declare-fun b!575824 () Bool)

(assert (=> b!575824 (= e!331332 e!331331)))

(assert (=> b!575824 (= lt!263499 (select (arr!17237 a!3118) (index!25001 lt!263500)))))

(declare-fun c!66128 () Bool)

(assert (=> b!575824 (= c!66128 (= lt!263499 k!1914))))

(declare-fun b!575825 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35917 (_ BitVec 32)) SeekEntryResult!5693)

(assert (=> b!575825 (= e!331330 (seekKeyOrZeroReturnVacant!0 (x!53913 lt!263500) (index!25001 lt!263500) (index!25001 lt!263500) k!1914 a!3118 mask!3119))))

(assert (= (and d!85205 c!66127) b!575822))

(assert (= (and d!85205 (not c!66127)) b!575824))

(assert (= (and b!575824 c!66128) b!575821))

(assert (= (and b!575824 (not c!66128)) b!575823))

(assert (= (and b!575823 c!66126) b!575820))

(assert (= (and b!575823 (not c!66126)) b!575825))

(declare-fun m!554815 () Bool)

(assert (=> d!85205 m!554815))

(declare-fun m!554817 () Bool)

(assert (=> d!85205 m!554817))

(declare-fun m!554819 () Bool)

(assert (=> d!85205 m!554819))

(assert (=> d!85205 m!554695))

(declare-fun m!554821 () Bool)

(assert (=> d!85205 m!554821))

(assert (=> d!85205 m!554819))

(declare-fun m!554823 () Bool)

(assert (=> d!85205 m!554823))

(declare-fun m!554825 () Bool)

(assert (=> b!575824 m!554825))

(declare-fun m!554827 () Bool)

(assert (=> b!575825 m!554827))

(assert (=> b!575669 d!85205))

(declare-fun d!85219 () Bool)

(assert (=> d!85219 (= (validKeyInArray!0 (select (arr!17237 a!3118) j!142)) (and (not (= (select (arr!17237 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!17237 a!3118) j!142) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!575675 d!85219))

(declare-fun b!575830 () Bool)

(declare-fun e!331336 () SeekEntryResult!5693)

(declare-fun lt!263513 () SeekEntryResult!5693)

(assert (=> b!575830 (= e!331336 (MissingZero!5693 (index!25001 lt!263513)))))

(declare-fun b!575831 () Bool)

(declare-fun e!331337 () SeekEntryResult!5693)

(assert (=> b!575831 (= e!331337 (Found!5693 (index!25001 lt!263513)))))

(declare-fun d!85227 () Bool)

(declare-fun lt!263514 () SeekEntryResult!5693)

(assert (=> d!85227 (and (or (is-Undefined!5693 lt!263514) (not (is-Found!5693 lt!263514)) (and (bvsge (index!25000 lt!263514) #b00000000000000000000000000000000) (bvslt (index!25000 lt!263514) (size!17601 a!3118)))) (or (is-Undefined!5693 lt!263514) (is-Found!5693 lt!263514) (not (is-MissingZero!5693 lt!263514)) (and (bvsge (index!24999 lt!263514) #b00000000000000000000000000000000) (bvslt (index!24999 lt!263514) (size!17601 a!3118)))) (or (is-Undefined!5693 lt!263514) (is-Found!5693 lt!263514) (is-MissingZero!5693 lt!263514) (not (is-MissingVacant!5693 lt!263514)) (and (bvsge (index!25002 lt!263514) #b00000000000000000000000000000000) (bvslt (index!25002 lt!263514) (size!17601 a!3118)))) (or (is-Undefined!5693 lt!263514) (ite (is-Found!5693 lt!263514) (= (select (arr!17237 a!3118) (index!25000 lt!263514)) (select (arr!17237 a!3118) j!142)) (ite (is-MissingZero!5693 lt!263514) (= (select (arr!17237 a!3118) (index!24999 lt!263514)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5693 lt!263514) (= (select (arr!17237 a!3118) (index!25002 lt!263514)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!331338 () SeekEntryResult!5693)

(assert (=> d!85227 (= lt!263514 e!331338)))

(declare-fun c!66131 () Bool)

(assert (=> d!85227 (= c!66131 (and (is-Intermediate!5693 lt!263513) (undefined!6505 lt!263513)))))

(assert (=> d!85227 (= lt!263513 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17237 a!3118) j!142) mask!3119) (select (arr!17237 a!3118) j!142) a!3118 mask!3119))))

(assert (=> d!85227 (validMask!0 mask!3119)))

(assert (=> d!85227 (= (seekEntryOrOpen!0 (select (arr!17237 a!3118) j!142) a!3118 mask!3119) lt!263514)))

(declare-fun b!575832 () Bool)

(assert (=> b!575832 (= e!331338 Undefined!5693)))

(declare-fun b!575833 () Bool)

(declare-fun c!66130 () Bool)

(declare-fun lt!263512 () (_ BitVec 64))

(assert (=> b!575833 (= c!66130 (= lt!263512 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!575833 (= e!331337 e!331336)))

(declare-fun b!575834 () Bool)

(assert (=> b!575834 (= e!331338 e!331337)))

(assert (=> b!575834 (= lt!263512 (select (arr!17237 a!3118) (index!25001 lt!263513)))))

(declare-fun c!66132 () Bool)

(assert (=> b!575834 (= c!66132 (= lt!263512 (select (arr!17237 a!3118) j!142)))))

(declare-fun b!575835 () Bool)

(assert (=> b!575835 (= e!331336 (seekKeyOrZeroReturnVacant!0 (x!53913 lt!263513) (index!25001 lt!263513) (index!25001 lt!263513) (select (arr!17237 a!3118) j!142) a!3118 mask!3119))))

(assert (= (and d!85227 c!66131) b!575832))

(assert (= (and d!85227 (not c!66131)) b!575834))

(assert (= (and b!575834 c!66132) b!575831))

(assert (= (and b!575834 (not c!66132)) b!575833))

(assert (= (and b!575833 c!66130) b!575830))

(assert (= (and b!575833 (not c!66130)) b!575835))

(declare-fun m!554837 () Bool)

(assert (=> d!85227 m!554837))

(declare-fun m!554839 () Bool)

(assert (=> d!85227 m!554839))

(assert (=> d!85227 m!554701))

(assert (=> d!85227 m!554711))

(assert (=> d!85227 m!554695))

(declare-fun m!554841 () Bool)

(assert (=> d!85227 m!554841))

(assert (=> d!85227 m!554711))

(assert (=> d!85227 m!554701))

(declare-fun m!554843 () Bool)

(assert (=> d!85227 m!554843))

(declare-fun m!554845 () Bool)

(assert (=> b!575834 m!554845))

(assert (=> b!575835 m!554701))

(declare-fun m!554847 () Bool)

(assert (=> b!575835 m!554847))

(assert (=> b!575670 d!85227))

(declare-fun b!575881 () Bool)

(declare-fun e!331368 () Bool)

(declare-fun lt!263532 () SeekEntryResult!5693)

(assert (=> b!575881 (= e!331368 (bvsge (x!53913 lt!263532) #b01111111111111111111111111111110))))

(declare-fun b!575882 () Bool)

(assert (=> b!575882 (and (bvsge (index!25001 lt!263532) #b00000000000000000000000000000000) (bvslt (index!25001 lt!263532) (size!17601 (array!35918 (store (arr!17237 a!3118) i!1132 k!1914) (size!17601 a!3118)))))))

(declare-fun res!364314 () Bool)

(assert (=> b!575882 (= res!364314 (= (select (arr!17237 (array!35918 (store (arr!17237 a!3118) i!1132 k!1914) (size!17601 a!3118))) (index!25001 lt!263532)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!331367 () Bool)

(assert (=> b!575882 (=> res!364314 e!331367)))

(declare-fun b!575883 () Bool)

(declare-fun e!331371 () SeekEntryResult!5693)

(declare-fun e!331370 () SeekEntryResult!5693)

(assert (=> b!575883 (= e!331371 e!331370)))

(declare-fun c!66148 () Bool)

(declare-fun lt!263533 () (_ BitVec 64))

(assert (=> b!575883 (= c!66148 (or (= lt!263533 (select (store (arr!17237 a!3118) i!1132 k!1914) j!142)) (= (bvadd lt!263533 lt!263533) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!85233 () Bool)

(assert (=> d!85233 e!331368))

(declare-fun c!66150 () Bool)

(assert (=> d!85233 (= c!66150 (and (is-Intermediate!5693 lt!263532) (undefined!6505 lt!263532)))))

(assert (=> d!85233 (= lt!263532 e!331371)))

(declare-fun c!66149 () Bool)

(assert (=> d!85233 (= c!66149 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!85233 (= lt!263533 (select (arr!17237 (array!35918 (store (arr!17237 a!3118) i!1132 k!1914) (size!17601 a!3118))) lt!263436))))

(assert (=> d!85233 (validMask!0 mask!3119)))

(assert (=> d!85233 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!263436 (select (store (arr!17237 a!3118) i!1132 k!1914) j!142) (array!35918 (store (arr!17237 a!3118) i!1132 k!1914) (size!17601 a!3118)) mask!3119) lt!263532)))

(declare-fun b!575884 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!575884 (= e!331370 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!263436 #b00000000000000000000000000000000 mask!3119) (select (store (arr!17237 a!3118) i!1132 k!1914) j!142) (array!35918 (store (arr!17237 a!3118) i!1132 k!1914) (size!17601 a!3118)) mask!3119))))

(declare-fun b!575885 () Bool)

(assert (=> b!575885 (= e!331370 (Intermediate!5693 false lt!263436 #b00000000000000000000000000000000))))

(declare-fun b!575886 () Bool)

(declare-fun e!331369 () Bool)

(assert (=> b!575886 (= e!331368 e!331369)))

(declare-fun res!364315 () Bool)

(assert (=> b!575886 (= res!364315 (and (is-Intermediate!5693 lt!263532) (not (undefined!6505 lt!263532)) (bvslt (x!53913 lt!263532) #b01111111111111111111111111111110) (bvsge (x!53913 lt!263532) #b00000000000000000000000000000000) (bvsge (x!53913 lt!263532) #b00000000000000000000000000000000)))))

(assert (=> b!575886 (=> (not res!364315) (not e!331369))))

(declare-fun b!575887 () Bool)

(assert (=> b!575887 (= e!331371 (Intermediate!5693 true lt!263436 #b00000000000000000000000000000000))))

(declare-fun b!575888 () Bool)

(assert (=> b!575888 (and (bvsge (index!25001 lt!263532) #b00000000000000000000000000000000) (bvslt (index!25001 lt!263532) (size!17601 (array!35918 (store (arr!17237 a!3118) i!1132 k!1914) (size!17601 a!3118)))))))

(declare-fun res!364316 () Bool)

(assert (=> b!575888 (= res!364316 (= (select (arr!17237 (array!35918 (store (arr!17237 a!3118) i!1132 k!1914) (size!17601 a!3118))) (index!25001 lt!263532)) (select (store (arr!17237 a!3118) i!1132 k!1914) j!142)))))

(assert (=> b!575888 (=> res!364316 e!331367)))

(assert (=> b!575888 (= e!331369 e!331367)))

(declare-fun b!575889 () Bool)

(assert (=> b!575889 (and (bvsge (index!25001 lt!263532) #b00000000000000000000000000000000) (bvslt (index!25001 lt!263532) (size!17601 (array!35918 (store (arr!17237 a!3118) i!1132 k!1914) (size!17601 a!3118)))))))

(assert (=> b!575889 (= e!331367 (= (select (arr!17237 (array!35918 (store (arr!17237 a!3118) i!1132 k!1914) (size!17601 a!3118))) (index!25001 lt!263532)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!85233 c!66149) b!575887))

(assert (= (and d!85233 (not c!66149)) b!575883))

(assert (= (and b!575883 c!66148) b!575885))

(assert (= (and b!575883 (not c!66148)) b!575884))

(assert (= (and d!85233 c!66150) b!575881))

(assert (= (and d!85233 (not c!66150)) b!575886))

(assert (= (and b!575886 res!364315) b!575888))

(assert (= (and b!575888 (not res!364316)) b!575882))

(assert (= (and b!575882 (not res!364314)) b!575889))

(declare-fun m!554857 () Bool)

(assert (=> b!575884 m!554857))

(assert (=> b!575884 m!554857))

(assert (=> b!575884 m!554703))

(declare-fun m!554859 () Bool)

(assert (=> b!575884 m!554859))

(declare-fun m!554861 () Bool)

(assert (=> d!85233 m!554861))

(assert (=> d!85233 m!554695))

(declare-fun m!554863 () Bool)

(assert (=> b!575888 m!554863))

(assert (=> b!575882 m!554863))

(assert (=> b!575889 m!554863))

(assert (=> b!575671 d!85233))

(declare-fun b!575900 () Bool)

(declare-fun e!331377 () Bool)

(declare-fun lt!263534 () SeekEntryResult!5693)

(assert (=> b!575900 (= e!331377 (bvsge (x!53913 lt!263534) #b01111111111111111111111111111110))))

(declare-fun b!575901 () Bool)

(assert (=> b!575901 (and (bvsge (index!25001 lt!263534) #b00000000000000000000000000000000) (bvslt (index!25001 lt!263534) (size!17601 a!3118)))))

(declare-fun res!364317 () Bool)

(assert (=> b!575901 (= res!364317 (= (select (arr!17237 a!3118) (index!25001 lt!263534)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!331376 () Bool)

(assert (=> b!575901 (=> res!364317 e!331376)))

(declare-fun b!575902 () Bool)

(declare-fun e!331380 () SeekEntryResult!5693)

(declare-fun e!331379 () SeekEntryResult!5693)

(assert (=> b!575902 (= e!331380 e!331379)))

(declare-fun lt!263535 () (_ BitVec 64))

(declare-fun c!66155 () Bool)

(assert (=> b!575902 (= c!66155 (or (= lt!263535 (select (arr!17237 a!3118) j!142)) (= (bvadd lt!263535 lt!263535) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!85241 () Bool)

(assert (=> d!85241 e!331377))

(declare-fun c!66157 () Bool)

(assert (=> d!85241 (= c!66157 (and (is-Intermediate!5693 lt!263534) (undefined!6505 lt!263534)))))

(assert (=> d!85241 (= lt!263534 e!331380)))

(declare-fun c!66156 () Bool)

(assert (=> d!85241 (= c!66156 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!85241 (= lt!263535 (select (arr!17237 a!3118) lt!263434))))

(assert (=> d!85241 (validMask!0 mask!3119)))

(assert (=> d!85241 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!263434 (select (arr!17237 a!3118) j!142) a!3118 mask!3119) lt!263534)))

(declare-fun b!575903 () Bool)

(assert (=> b!575903 (= e!331379 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!263434 #b00000000000000000000000000000000 mask!3119) (select (arr!17237 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!575904 () Bool)

(assert (=> b!575904 (= e!331379 (Intermediate!5693 false lt!263434 #b00000000000000000000000000000000))))

(declare-fun b!575905 () Bool)

(declare-fun e!331378 () Bool)

(assert (=> b!575905 (= e!331377 e!331378)))

(declare-fun res!364318 () Bool)

(assert (=> b!575905 (= res!364318 (and (is-Intermediate!5693 lt!263534) (not (undefined!6505 lt!263534)) (bvslt (x!53913 lt!263534) #b01111111111111111111111111111110) (bvsge (x!53913 lt!263534) #b00000000000000000000000000000000) (bvsge (x!53913 lt!263534) #b00000000000000000000000000000000)))))

(assert (=> b!575905 (=> (not res!364318) (not e!331378))))

(declare-fun b!575906 () Bool)

(assert (=> b!575906 (= e!331380 (Intermediate!5693 true lt!263434 #b00000000000000000000000000000000))))

(declare-fun b!575907 () Bool)

(assert (=> b!575907 (and (bvsge (index!25001 lt!263534) #b00000000000000000000000000000000) (bvslt (index!25001 lt!263534) (size!17601 a!3118)))))

(declare-fun res!364319 () Bool)

(assert (=> b!575907 (= res!364319 (= (select (arr!17237 a!3118) (index!25001 lt!263534)) (select (arr!17237 a!3118) j!142)))))

(assert (=> b!575907 (=> res!364319 e!331376)))

(assert (=> b!575907 (= e!331378 e!331376)))

(declare-fun b!575908 () Bool)

(assert (=> b!575908 (and (bvsge (index!25001 lt!263534) #b00000000000000000000000000000000) (bvslt (index!25001 lt!263534) (size!17601 a!3118)))))

(assert (=> b!575908 (= e!331376 (= (select (arr!17237 a!3118) (index!25001 lt!263534)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!85241 c!66156) b!575906))

(assert (= (and d!85241 (not c!66156)) b!575902))

(assert (= (and b!575902 c!66155) b!575904))

(assert (= (and b!575902 (not c!66155)) b!575903))

(assert (= (and d!85241 c!66157) b!575900))

(assert (= (and d!85241 (not c!66157)) b!575905))

(assert (= (and b!575905 res!364318) b!575907))

(assert (= (and b!575907 (not res!364319)) b!575901))

(assert (= (and b!575901 (not res!364317)) b!575908))

(declare-fun m!554865 () Bool)

(assert (=> b!575903 m!554865))

(assert (=> b!575903 m!554865))

(assert (=> b!575903 m!554701))

(declare-fun m!554867 () Bool)

(assert (=> b!575903 m!554867))

(declare-fun m!554869 () Bool)

(assert (=> d!85241 m!554869))

(assert (=> d!85241 m!554695))

(declare-fun m!554871 () Bool)

(assert (=> b!575907 m!554871))

(assert (=> b!575901 m!554871))

(assert (=> b!575908 m!554871))

(assert (=> b!575671 d!85241))

(declare-fun d!85243 () Bool)

(declare-fun lt!263546 () (_ BitVec 32))

(declare-fun lt!263545 () (_ BitVec 32))

(assert (=> d!85243 (= lt!263546 (bvmul (bvxor lt!263545 (bvlshr lt!263545 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!85243 (= lt!263545 ((_ extract 31 0) (bvand (bvxor (select (store (arr!17237 a!3118) i!1132 k!1914) j!142) (bvlshr (select (store (arr!17237 a!3118) i!1132 k!1914) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!85243 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!364326 (let ((h!12407 ((_ extract 31 0) (bvand (bvxor (select (store (arr!17237 a!3118) i!1132 k!1914) j!142) (bvlshr (select (store (arr!17237 a!3118) i!1132 k!1914) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!53918 (bvmul (bvxor h!12407 (bvlshr h!12407 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!53918 (bvlshr x!53918 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!364326 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!364326 #b00000000000000000000000000000000))))))

(assert (=> d!85243 (= (toIndex!0 (select (store (arr!17237 a!3118) i!1132 k!1914) j!142) mask!3119) (bvand (bvxor lt!263546 (bvlshr lt!263546 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!575671 d!85243))

(declare-fun d!85249 () Bool)

(declare-fun lt!263550 () (_ BitVec 32))

(declare-fun lt!263549 () (_ BitVec 32))

(assert (=> d!85249 (= lt!263550 (bvmul (bvxor lt!263549 (bvlshr lt!263549 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!85249 (= lt!263549 ((_ extract 31 0) (bvand (bvxor (select (arr!17237 a!3118) j!142) (bvlshr (select (arr!17237 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!85249 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!364326 (let ((h!12407 ((_ extract 31 0) (bvand (bvxor (select (arr!17237 a!3118) j!142) (bvlshr (select (arr!17237 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!53918 (bvmul (bvxor h!12407 (bvlshr h!12407 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!53918 (bvlshr x!53918 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!364326 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!364326 #b00000000000000000000000000000000))))))

(assert (=> d!85249 (= (toIndex!0 (select (arr!17237 a!3118) j!142) mask!3119) (bvand (bvxor lt!263550 (bvlshr lt!263550 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!575671 d!85249))

(declare-fun d!85253 () Bool)

(declare-fun res!364344 () Bool)

(declare-fun e!331410 () Bool)

(assert (=> d!85253 (=> res!364344 e!331410)))

(assert (=> d!85253 (= res!364344 (= (select (arr!17237 a!3118) #b00000000000000000000000000000000) k!1914))))

(assert (=> d!85253 (= (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000) e!331410)))

(declare-fun b!575951 () Bool)

(declare-fun e!331411 () Bool)

(assert (=> b!575951 (= e!331410 e!331411)))

(declare-fun res!364345 () Bool)

(assert (=> b!575951 (=> (not res!364345) (not e!331411))))

(assert (=> b!575951 (= res!364345 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!17601 a!3118)))))

(declare-fun b!575952 () Bool)

(assert (=> b!575952 (= e!331411 (arrayContainsKey!0 a!3118 k!1914 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!85253 (not res!364344)) b!575951))

(assert (= (and b!575951 res!364345) b!575952))

(assert (=> d!85253 m!554731))

(declare-fun m!554903 () Bool)

(assert (=> b!575952 m!554903))

(assert (=> b!575666 d!85253))

(declare-fun b!575953 () Bool)

(declare-fun e!331414 () Bool)

(declare-fun call!32725 () Bool)

(assert (=> b!575953 (= e!331414 call!32725)))

(declare-fun b!575954 () Bool)

(declare-fun e!331413 () Bool)

(assert (=> b!575954 (= e!331414 e!331413)))

(declare-fun lt!263552 () (_ BitVec 64))

(assert (=> b!575954 (= lt!263552 (select (arr!17237 a!3118) #b00000000000000000000000000000000))))

(declare-fun lt!263551 () Unit!18088)

(assert (=> b!575954 (= lt!263551 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!263552 #b00000000000000000000000000000000))))

(assert (=> b!575954 (arrayContainsKey!0 a!3118 lt!263552 #b00000000000000000000000000000000)))

(declare-fun lt!263553 () Unit!18088)

(assert (=> b!575954 (= lt!263553 lt!263551)))

(declare-fun res!364347 () Bool)

(assert (=> b!575954 (= res!364347 (= (seekEntryOrOpen!0 (select (arr!17237 a!3118) #b00000000000000000000000000000000) a!3118 mask!3119) (Found!5693 #b00000000000000000000000000000000)))))

(assert (=> b!575954 (=> (not res!364347) (not e!331413))))

(declare-fun d!85259 () Bool)

(declare-fun res!364346 () Bool)

(declare-fun e!331412 () Bool)

(assert (=> d!85259 (=> res!364346 e!331412)))

(assert (=> d!85259 (= res!364346 (bvsge #b00000000000000000000000000000000 (size!17601 a!3118)))))

(assert (=> d!85259 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119) e!331412)))

(declare-fun b!575955 () Bool)

(assert (=> b!575955 (= e!331412 e!331414)))

(declare-fun c!66169 () Bool)

(assert (=> b!575955 (= c!66169 (validKeyInArray!0 (select (arr!17237 a!3118) #b00000000000000000000000000000000)))))

(declare-fun bm!32722 () Bool)

(assert (=> bm!32722 (= call!32725 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun b!575956 () Bool)

(assert (=> b!575956 (= e!331413 call!32725)))

(assert (= (and d!85259 (not res!364346)) b!575955))

(assert (= (and b!575955 c!66169) b!575954))

(assert (= (and b!575955 (not c!66169)) b!575953))

(assert (= (and b!575954 res!364347) b!575956))

(assert (= (or b!575956 b!575953) bm!32722))

(assert (=> b!575954 m!554731))

(declare-fun m!554905 () Bool)

(assert (=> b!575954 m!554905))

(declare-fun m!554907 () Bool)

(assert (=> b!575954 m!554907))

(assert (=> b!575954 m!554731))

(declare-fun m!554909 () Bool)

(assert (=> b!575954 m!554909))

(assert (=> b!575955 m!554731))

(assert (=> b!575955 m!554731))

(assert (=> b!575955 m!554735))

(declare-fun m!554911 () Bool)

(assert (=> bm!32722 m!554911))

(assert (=> b!575672 d!85259))

(declare-fun d!85261 () Bool)

(assert (=> d!85261 (= (validKeyInArray!0 k!1914) (and (not (= k!1914 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1914 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!575667 d!85261))

(declare-fun d!85263 () Bool)

(assert (=> d!85263 (= (validMask!0 mask!3119) (and (or (= mask!3119 #b00000000000000000000000000000111) (= mask!3119 #b00000000000000000000000000001111) (= mask!3119 #b00000000000000000000000000011111) (= mask!3119 #b00000000000000000000000000111111) (= mask!3119 #b00000000000000000000000001111111) (= mask!3119 #b00000000000000000000000011111111) (= mask!3119 #b00000000000000000000000111111111) (= mask!3119 #b00000000000000000000001111111111) (= mask!3119 #b00000000000000000000011111111111) (= mask!3119 #b00000000000000000000111111111111) (= mask!3119 #b00000000000000000001111111111111) (= mask!3119 #b00000000000000000011111111111111) (= mask!3119 #b00000000000000000111111111111111) (= mask!3119 #b00000000000000001111111111111111) (= mask!3119 #b00000000000000011111111111111111) (= mask!3119 #b00000000000000111111111111111111) (= mask!3119 #b00000000000001111111111111111111) (= mask!3119 #b00000000000011111111111111111111) (= mask!3119 #b00000000000111111111111111111111) (= mask!3119 #b00000000001111111111111111111111) (= mask!3119 #b00000000011111111111111111111111) (= mask!3119 #b00000000111111111111111111111111) (= mask!3119 #b00000001111111111111111111111111) (= mask!3119 #b00000011111111111111111111111111) (= mask!3119 #b00000111111111111111111111111111) (= mask!3119 #b00001111111111111111111111111111) (= mask!3119 #b00011111111111111111111111111111) (= mask!3119 #b00111111111111111111111111111111)) (bvsle mask!3119 #b00111111111111111111111111111111)))))

(assert (=> start!52818 d!85263))

(declare-fun d!85273 () Bool)

(assert (=> d!85273 (= (array_inv!13011 a!3118) (bvsge (size!17601 a!3118) #b00000000000000000000000000000000))))

(assert (=> start!52818 d!85273))

(push 1)

