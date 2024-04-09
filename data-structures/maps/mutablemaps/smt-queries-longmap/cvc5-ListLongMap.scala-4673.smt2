; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65044 () Bool)

(assert start!65044)

(declare-fun res!493240 () Bool)

(declare-fun e!410676 () Bool)

(assert (=> start!65044 (=> (not res!493240) (not e!410676))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65044 (= res!493240 (validMask!0 mask!3328))))

(assert (=> start!65044 e!410676))

(assert (=> start!65044 true))

(declare-datatypes ((array!41239 0))(
  ( (array!41240 (arr!19731 (Array (_ BitVec 32) (_ BitVec 64))) (size!20152 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41239)

(declare-fun array_inv!15505 (array!41239) Bool)

(assert (=> start!65044 (array_inv!15505 a!3186)))

(declare-fun b!733915 () Bool)

(declare-fun res!493236 () Bool)

(declare-fun e!410679 () Bool)

(assert (=> b!733915 (=> (not res!493236) (not e!410679))))

(declare-datatypes ((List!13786 0))(
  ( (Nil!13783) (Cons!13782 (h!14851 (_ BitVec 64)) (t!20109 List!13786)) )
))
(declare-fun arrayNoDuplicates!0 (array!41239 (_ BitVec 32) List!13786) Bool)

(assert (=> b!733915 (= res!493236 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13783))))

(declare-fun b!733916 () Bool)

(declare-fun res!493231 () Bool)

(assert (=> b!733916 (=> (not res!493231) (not e!410679))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!733916 (= res!493231 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20152 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20152 a!3186))))))

(declare-fun b!733917 () Bool)

(declare-fun res!493243 () Bool)

(assert (=> b!733917 (=> (not res!493243) (not e!410676))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!733917 (= res!493243 (and (= (size!20152 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20152 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20152 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!733918 () Bool)

(declare-fun e!410681 () Bool)

(declare-fun e!410680 () Bool)

(assert (=> b!733918 (= e!410681 e!410680)))

(declare-fun res!493234 () Bool)

(assert (=> b!733918 (=> (not res!493234) (not e!410680))))

(declare-datatypes ((SeekEntryResult!7338 0))(
  ( (MissingZero!7338 (index!31719 (_ BitVec 32))) (Found!7338 (index!31720 (_ BitVec 32))) (Intermediate!7338 (undefined!8150 Bool) (index!31721 (_ BitVec 32)) (x!62749 (_ BitVec 32))) (Undefined!7338) (MissingVacant!7338 (index!31722 (_ BitVec 32))) )
))
(declare-fun lt!325296 () SeekEntryResult!7338)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41239 (_ BitVec 32)) SeekEntryResult!7338)

(assert (=> b!733918 (= res!493234 (= (seekEntryOrOpen!0 (select (arr!19731 a!3186) j!159) a!3186 mask!3328) lt!325296))))

(assert (=> b!733918 (= lt!325296 (Found!7338 j!159))))

(declare-fun b!733919 () Bool)

(declare-fun e!410683 () Bool)

(declare-fun e!410684 () Bool)

(assert (=> b!733919 (= e!410683 e!410684)))

(declare-fun res!493235 () Bool)

(assert (=> b!733919 (=> (not res!493235) (not e!410684))))

(declare-fun lt!325301 () SeekEntryResult!7338)

(declare-fun lt!325293 () SeekEntryResult!7338)

(assert (=> b!733919 (= res!493235 (= lt!325301 lt!325293))))

(declare-fun lt!325297 () array!41239)

(declare-fun lt!325294 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41239 (_ BitVec 32)) SeekEntryResult!7338)

(assert (=> b!733919 (= lt!325293 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!325294 lt!325297 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!733919 (= lt!325301 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!325294 mask!3328) lt!325294 lt!325297 mask!3328))))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!733919 (= lt!325294 (select (store (arr!19731 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!733919 (= lt!325297 (array!41240 (store (arr!19731 a!3186) i!1173 k!2102) (size!20152 a!3186)))))

(declare-fun b!733920 () Bool)

(assert (=> b!733920 (= e!410676 e!410679)))

(declare-fun res!493233 () Bool)

(assert (=> b!733920 (=> (not res!493233) (not e!410679))))

(declare-fun lt!325298 () SeekEntryResult!7338)

(assert (=> b!733920 (= res!493233 (or (= lt!325298 (MissingZero!7338 i!1173)) (= lt!325298 (MissingVacant!7338 i!1173))))))

(assert (=> b!733920 (= lt!325298 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!733921 () Bool)

(assert (=> b!733921 (= e!410679 e!410683)))

(declare-fun res!493237 () Bool)

(assert (=> b!733921 (=> (not res!493237) (not e!410683))))

(declare-fun lt!325295 () SeekEntryResult!7338)

(assert (=> b!733921 (= res!493237 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19731 a!3186) j!159) mask!3328) (select (arr!19731 a!3186) j!159) a!3186 mask!3328) lt!325295))))

(assert (=> b!733921 (= lt!325295 (Intermediate!7338 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!733922 () Bool)

(declare-fun e!410682 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41239 (_ BitVec 32)) SeekEntryResult!7338)

(assert (=> b!733922 (= e!410682 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19731 a!3186) j!159) a!3186 mask!3328) (Found!7338 j!159)))))

(declare-fun b!733923 () Bool)

(assert (=> b!733923 (= e!410680 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19731 a!3186) j!159) a!3186 mask!3328) lt!325296))))

(declare-fun b!733924 () Bool)

(declare-fun res!493241 () Bool)

(assert (=> b!733924 (=> (not res!493241) (not e!410676))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!733924 (= res!493241 (validKeyInArray!0 (select (arr!19731 a!3186) j!159)))))

(declare-fun b!733925 () Bool)

(declare-fun e!410677 () Bool)

(declare-fun e!410685 () Bool)

(assert (=> b!733925 (= e!410677 e!410685)))

(declare-fun res!493242 () Bool)

(assert (=> b!733925 (=> res!493242 e!410685)))

(assert (=> b!733925 (= res!493242 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun lt!325300 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!733925 (= lt!325300 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!733926 () Bool)

(declare-fun res!493246 () Bool)

(assert (=> b!733926 (=> (not res!493246) (not e!410683))))

(assert (=> b!733926 (= res!493246 e!410682)))

(declare-fun c!80721 () Bool)

(assert (=> b!733926 (= c!80721 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!733927 () Bool)

(declare-fun res!493232 () Bool)

(assert (=> b!733927 (=> (not res!493232) (not e!410676))))

(declare-fun arrayContainsKey!0 (array!41239 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!733927 (= res!493232 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!733928 () Bool)

(declare-fun res!493245 () Bool)

(assert (=> b!733928 (=> (not res!493245) (not e!410676))))

(assert (=> b!733928 (= res!493245 (validKeyInArray!0 k!2102))))

(declare-fun b!733929 () Bool)

(assert (=> b!733929 (= e!410685 (or (bvslt mask!3328 #b00000000000000000000000000000000) (bvslt lt!325300 #b00000000000000000000000000000000) (bvsge lt!325300 (bvadd #b00000000000000000000000000000001 mask!3328)) (and (bvsle (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvsge (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000))))))

(declare-fun b!733930 () Bool)

(declare-fun res!493238 () Bool)

(assert (=> b!733930 (=> (not res!493238) (not e!410679))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41239 (_ BitVec 32)) Bool)

(assert (=> b!733930 (= res!493238 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!733931 () Bool)

(assert (=> b!733931 (= e!410682 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19731 a!3186) j!159) a!3186 mask!3328) lt!325295))))

(declare-fun b!733932 () Bool)

(assert (=> b!733932 (= e!410684 (not e!410677))))

(declare-fun res!493239 () Bool)

(assert (=> b!733932 (=> res!493239 e!410677)))

(assert (=> b!733932 (= res!493239 (or (not (is-Intermediate!7338 lt!325293)) (bvsge x!1131 (x!62749 lt!325293))))))

(assert (=> b!733932 e!410681))

(declare-fun res!493244 () Bool)

(assert (=> b!733932 (=> (not res!493244) (not e!410681))))

(assert (=> b!733932 (= res!493244 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24994 0))(
  ( (Unit!24995) )
))
(declare-fun lt!325299 () Unit!24994)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41239 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24994)

(assert (=> b!733932 (= lt!325299 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!733933 () Bool)

(declare-fun res!493247 () Bool)

(assert (=> b!733933 (=> (not res!493247) (not e!410683))))

(assert (=> b!733933 (= res!493247 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19731 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!733934 () Bool)

(declare-fun res!493248 () Bool)

(assert (=> b!733934 (=> res!493248 e!410685)))

(assert (=> b!733934 (= res!493248 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19731 a!3186) j!159) a!3186 mask!3328) (Found!7338 j!159)))))

(assert (= (and start!65044 res!493240) b!733917))

(assert (= (and b!733917 res!493243) b!733924))

(assert (= (and b!733924 res!493241) b!733928))

(assert (= (and b!733928 res!493245) b!733927))

(assert (= (and b!733927 res!493232) b!733920))

(assert (= (and b!733920 res!493233) b!733930))

(assert (= (and b!733930 res!493238) b!733915))

(assert (= (and b!733915 res!493236) b!733916))

(assert (= (and b!733916 res!493231) b!733921))

(assert (= (and b!733921 res!493237) b!733933))

(assert (= (and b!733933 res!493247) b!733926))

(assert (= (and b!733926 c!80721) b!733931))

(assert (= (and b!733926 (not c!80721)) b!733922))

(assert (= (and b!733926 res!493246) b!733919))

(assert (= (and b!733919 res!493235) b!733932))

(assert (= (and b!733932 res!493244) b!733918))

(assert (= (and b!733918 res!493234) b!733923))

(assert (= (and b!733932 (not res!493239)) b!733925))

(assert (= (and b!733925 (not res!493242)) b!733934))

(assert (= (and b!733934 (not res!493248)) b!733929))

(declare-fun m!686731 () Bool)

(assert (=> b!733919 m!686731))

(assert (=> b!733919 m!686731))

(declare-fun m!686733 () Bool)

(assert (=> b!733919 m!686733))

(declare-fun m!686735 () Bool)

(assert (=> b!733919 m!686735))

(declare-fun m!686737 () Bool)

(assert (=> b!733919 m!686737))

(declare-fun m!686739 () Bool)

(assert (=> b!733919 m!686739))

(declare-fun m!686741 () Bool)

(assert (=> b!733932 m!686741))

(declare-fun m!686743 () Bool)

(assert (=> b!733932 m!686743))

(declare-fun m!686745 () Bool)

(assert (=> b!733921 m!686745))

(assert (=> b!733921 m!686745))

(declare-fun m!686747 () Bool)

(assert (=> b!733921 m!686747))

(assert (=> b!733921 m!686747))

(assert (=> b!733921 m!686745))

(declare-fun m!686749 () Bool)

(assert (=> b!733921 m!686749))

(assert (=> b!733918 m!686745))

(assert (=> b!733918 m!686745))

(declare-fun m!686751 () Bool)

(assert (=> b!733918 m!686751))

(declare-fun m!686753 () Bool)

(assert (=> b!733933 m!686753))

(assert (=> b!733924 m!686745))

(assert (=> b!733924 m!686745))

(declare-fun m!686755 () Bool)

(assert (=> b!733924 m!686755))

(declare-fun m!686757 () Bool)

(assert (=> b!733925 m!686757))

(assert (=> b!733934 m!686745))

(assert (=> b!733934 m!686745))

(declare-fun m!686759 () Bool)

(assert (=> b!733934 m!686759))

(declare-fun m!686761 () Bool)

(assert (=> b!733928 m!686761))

(assert (=> b!733931 m!686745))

(assert (=> b!733931 m!686745))

(declare-fun m!686763 () Bool)

(assert (=> b!733931 m!686763))

(declare-fun m!686765 () Bool)

(assert (=> b!733930 m!686765))

(declare-fun m!686767 () Bool)

(assert (=> b!733927 m!686767))

(assert (=> b!733923 m!686745))

(assert (=> b!733923 m!686745))

(declare-fun m!686769 () Bool)

(assert (=> b!733923 m!686769))

(declare-fun m!686771 () Bool)

(assert (=> start!65044 m!686771))

(declare-fun m!686773 () Bool)

(assert (=> start!65044 m!686773))

(assert (=> b!733922 m!686745))

(assert (=> b!733922 m!686745))

(assert (=> b!733922 m!686759))

(declare-fun m!686775 () Bool)

(assert (=> b!733920 m!686775))

(declare-fun m!686777 () Bool)

(assert (=> b!733915 m!686777))

(push 1)

(assert (not b!733921))

(assert (not b!733923))

(assert (not b!733931))

(assert (not b!733918))

(assert (not b!733934))

(assert (not b!733924))

(assert (not b!733927))

(assert (not b!733919))

(assert (not b!733928))

(assert (not b!733915))

(assert (not b!733925))

(assert (not b!733932))

(assert (not b!733920))

(assert (not b!733922))

(assert (not b!733930))

(assert (not start!65044))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!99931 () Bool)

(declare-fun lt!325376 () (_ BitVec 32))

(assert (=> d!99931 (and (bvsge lt!325376 #b00000000000000000000000000000000) (bvslt lt!325376 (bvadd mask!3328 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!99931 (= lt!325376 (choose!52 index!1321 x!1131 mask!3328))))

(assert (=> d!99931 (validMask!0 mask!3328)))

(assert (=> d!99931 (= (nextIndex!0 index!1321 x!1131 mask!3328) lt!325376)))

(declare-fun bs!20975 () Bool)

(assert (= bs!20975 d!99931))

(declare-fun m!686891 () Bool)

(assert (=> bs!20975 m!686891))

(assert (=> bs!20975 m!686771))

(assert (=> b!733925 d!99931))

(declare-fun d!99935 () Bool)

(assert (=> d!99935 (= (validKeyInArray!0 (select (arr!19731 a!3186) j!159)) (and (not (= (select (arr!19731 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!19731 a!3186) j!159) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!733924 d!99935))

(declare-fun b!734139 () Bool)

(declare-fun e!410797 () SeekEntryResult!7338)

(assert (=> b!734139 (= e!410797 (Found!7338 index!1321))))

(declare-fun e!410798 () SeekEntryResult!7338)

(declare-fun b!734140 () Bool)

(assert (=> b!734140 (= e!410798 (seekKeyOrZeroReturnVacant!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) resIntermediateIndex!5 (select (arr!19731 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!734141 () Bool)

(declare-fun c!80760 () Bool)

(declare-fun lt!325383 () (_ BitVec 64))

(assert (=> b!734141 (= c!80760 (= lt!325383 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!734141 (= e!410797 e!410798)))

(declare-fun lt!325384 () SeekEntryResult!7338)

(declare-fun d!99937 () Bool)

(assert (=> d!99937 (and (or (is-Undefined!7338 lt!325384) (not (is-Found!7338 lt!325384)) (and (bvsge (index!31720 lt!325384) #b00000000000000000000000000000000) (bvslt (index!31720 lt!325384) (size!20152 a!3186)))) (or (is-Undefined!7338 lt!325384) (is-Found!7338 lt!325384) (not (is-MissingVacant!7338 lt!325384)) (not (= (index!31722 lt!325384) resIntermediateIndex!5)) (and (bvsge (index!31722 lt!325384) #b00000000000000000000000000000000) (bvslt (index!31722 lt!325384) (size!20152 a!3186)))) (or (is-Undefined!7338 lt!325384) (ite (is-Found!7338 lt!325384) (= (select (arr!19731 a!3186) (index!31720 lt!325384)) (select (arr!19731 a!3186) j!159)) (and (is-MissingVacant!7338 lt!325384) (= (index!31722 lt!325384) resIntermediateIndex!5) (= (select (arr!19731 a!3186) (index!31722 lt!325384)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!410799 () SeekEntryResult!7338)

(assert (=> d!99937 (= lt!325384 e!410799)))

(declare-fun c!80758 () Bool)

(assert (=> d!99937 (= c!80758 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!99937 (= lt!325383 (select (arr!19731 a!3186) index!1321))))

(assert (=> d!99937 (validMask!0 mask!3328)))

(assert (=> d!99937 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19731 a!3186) j!159) a!3186 mask!3328) lt!325384)))

(declare-fun b!734142 () Bool)

(assert (=> b!734142 (= e!410799 Undefined!7338)))

(declare-fun b!734143 () Bool)

(assert (=> b!734143 (= e!410799 e!410797)))

(declare-fun c!80759 () Bool)

(assert (=> b!734143 (= c!80759 (= lt!325383 (select (arr!19731 a!3186) j!159)))))

(declare-fun b!734144 () Bool)

(assert (=> b!734144 (= e!410798 (MissingVacant!7338 resIntermediateIndex!5))))

(assert (= (and d!99937 c!80758) b!734142))

(assert (= (and d!99937 (not c!80758)) b!734143))

(assert (= (and b!734143 c!80759) b!734139))

(assert (= (and b!734143 (not c!80759)) b!734141))

(assert (= (and b!734141 c!80760) b!734144))

(assert (= (and b!734141 (not c!80760)) b!734140))

(assert (=> b!734140 m!686757))

(assert (=> b!734140 m!686757))

(assert (=> b!734140 m!686745))

(declare-fun m!686911 () Bool)

(assert (=> b!734140 m!686911))

(declare-fun m!686913 () Bool)

(assert (=> d!99937 m!686913))

(declare-fun m!686915 () Bool)

(assert (=> d!99937 m!686915))

(declare-fun m!686917 () Bool)

(assert (=> d!99937 m!686917))

(assert (=> d!99937 m!686771))

(assert (=> b!733934 d!99937))

(declare-fun b!734153 () Bool)

(declare-fun e!410806 () SeekEntryResult!7338)

(assert (=> b!734153 (= e!410806 (Found!7338 resIntermediateIndex!5))))

(declare-fun e!410807 () SeekEntryResult!7338)

(declare-fun b!734154 () Bool)

(assert (=> b!734154 (= e!410807 (seekKeyOrZeroReturnVacant!0 (bvadd resIntermediateX!5 #b00000000000000000000000000000001) (nextIndex!0 resIntermediateIndex!5 resIntermediateX!5 mask!3328) resIntermediateIndex!5 (select (arr!19731 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!734155 () Bool)

(declare-fun c!80765 () Bool)

(declare-fun lt!325391 () (_ BitVec 64))

(assert (=> b!734155 (= c!80765 (= lt!325391 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!734155 (= e!410806 e!410807)))

(declare-fun lt!325392 () SeekEntryResult!7338)

(declare-fun d!99951 () Bool)

(assert (=> d!99951 (and (or (is-Undefined!7338 lt!325392) (not (is-Found!7338 lt!325392)) (and (bvsge (index!31720 lt!325392) #b00000000000000000000000000000000) (bvslt (index!31720 lt!325392) (size!20152 a!3186)))) (or (is-Undefined!7338 lt!325392) (is-Found!7338 lt!325392) (not (is-MissingVacant!7338 lt!325392)) (not (= (index!31722 lt!325392) resIntermediateIndex!5)) (and (bvsge (index!31722 lt!325392) #b00000000000000000000000000000000) (bvslt (index!31722 lt!325392) (size!20152 a!3186)))) (or (is-Undefined!7338 lt!325392) (ite (is-Found!7338 lt!325392) (= (select (arr!19731 a!3186) (index!31720 lt!325392)) (select (arr!19731 a!3186) j!159)) (and (is-MissingVacant!7338 lt!325392) (= (index!31722 lt!325392) resIntermediateIndex!5) (= (select (arr!19731 a!3186) (index!31722 lt!325392)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!410808 () SeekEntryResult!7338)

(assert (=> d!99951 (= lt!325392 e!410808)))

(declare-fun c!80763 () Bool)

(assert (=> d!99951 (= c!80763 (bvsge resIntermediateX!5 #b01111111111111111111111111111110))))

(assert (=> d!99951 (= lt!325391 (select (arr!19731 a!3186) resIntermediateIndex!5))))

(assert (=> d!99951 (validMask!0 mask!3328)))

(assert (=> d!99951 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19731 a!3186) j!159) a!3186 mask!3328) lt!325392)))

(declare-fun b!734156 () Bool)

(assert (=> b!734156 (= e!410808 Undefined!7338)))

(declare-fun b!734157 () Bool)

(assert (=> b!734157 (= e!410808 e!410806)))

(declare-fun c!80764 () Bool)

(assert (=> b!734157 (= c!80764 (= lt!325391 (select (arr!19731 a!3186) j!159)))))

(declare-fun b!734158 () Bool)

(assert (=> b!734158 (= e!410807 (MissingVacant!7338 resIntermediateIndex!5))))

(assert (= (and d!99951 c!80763) b!734156))

(assert (= (and d!99951 (not c!80763)) b!734157))

(assert (= (and b!734157 c!80764) b!734153))

(assert (= (and b!734157 (not c!80764)) b!734155))

(assert (= (and b!734155 c!80765) b!734158))

(assert (= (and b!734155 (not c!80765)) b!734154))

(declare-fun m!686919 () Bool)

(assert (=> b!734154 m!686919))

(assert (=> b!734154 m!686919))

(assert (=> b!734154 m!686745))

(declare-fun m!686921 () Bool)

(assert (=> b!734154 m!686921))

(declare-fun m!686923 () Bool)

(assert (=> d!99951 m!686923))

(declare-fun m!686925 () Bool)

(assert (=> d!99951 m!686925))

(assert (=> d!99951 m!686753))

(assert (=> d!99951 m!686771))

(assert (=> b!733923 d!99951))

(assert (=> b!733922 d!99937))

(declare-fun d!99953 () Bool)

(declare-fun res!493410 () Bool)

(declare-fun e!410847 () Bool)

(assert (=> d!99953 (=> res!493410 e!410847)))

(assert (=> d!99953 (= res!493410 (bvsge j!159 (size!20152 a!3186)))))

(assert (=> d!99953 (= (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328) e!410847)))

(declare-fun b!734220 () Bool)

(declare-fun e!410848 () Bool)

(declare-fun e!410846 () Bool)

(assert (=> b!734220 (= e!410848 e!410846)))

(declare-fun lt!325420 () (_ BitVec 64))

(assert (=> b!734220 (= lt!325420 (select (arr!19731 a!3186) j!159))))

(declare-fun lt!325421 () Unit!24994)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!41239 (_ BitVec 64) (_ BitVec 32)) Unit!24994)

(assert (=> b!734220 (= lt!325421 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!325420 j!159))))

(assert (=> b!734220 (arrayContainsKey!0 a!3186 lt!325420 #b00000000000000000000000000000000)))

(declare-fun lt!325422 () Unit!24994)

(assert (=> b!734220 (= lt!325422 lt!325421)))

(declare-fun res!493409 () Bool)

(assert (=> b!734220 (= res!493409 (= (seekEntryOrOpen!0 (select (arr!19731 a!3186) j!159) a!3186 mask!3328) (Found!7338 j!159)))))

(assert (=> b!734220 (=> (not res!493409) (not e!410846))))

(declare-fun call!34900 () Bool)

(declare-fun bm!34897 () Bool)

(assert (=> bm!34897 (= call!34900 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!159 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun b!734221 () Bool)

(assert (=> b!734221 (= e!410848 call!34900)))

(declare-fun b!734222 () Bool)

(assert (=> b!734222 (= e!410847 e!410848)))

(declare-fun c!80785 () Bool)

(assert (=> b!734222 (= c!80785 (validKeyInArray!0 (select (arr!19731 a!3186) j!159)))))

(declare-fun b!734223 () Bool)

(assert (=> b!734223 (= e!410846 call!34900)))

(assert (= (and d!99953 (not res!493410)) b!734222))

(assert (= (and b!734222 c!80785) b!734220))

(assert (= (and b!734222 (not c!80785)) b!734221))

(assert (= (and b!734220 res!493409) b!734223))

(assert (= (or b!734223 b!734221) bm!34897))

(assert (=> b!734220 m!686745))

(declare-fun m!686963 () Bool)

(assert (=> b!734220 m!686963))

(declare-fun m!686965 () Bool)

(assert (=> b!734220 m!686965))

(assert (=> b!734220 m!686745))

(assert (=> b!734220 m!686751))

(declare-fun m!686967 () Bool)

(assert (=> bm!34897 m!686967))

(assert (=> b!734222 m!686745))

(assert (=> b!734222 m!686745))

(assert (=> b!734222 m!686755))

(assert (=> b!733932 d!99953))

(declare-fun d!99975 () Bool)

(assert (=> d!99975 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!325425 () Unit!24994)

(declare-fun choose!38 (array!41239 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24994)

(assert (=> d!99975 (= lt!325425 (choose!38 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(assert (=> d!99975 (validMask!0 mask!3328)))

(assert (=> d!99975 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159) lt!325425)))

(declare-fun bs!20977 () Bool)

(assert (= bs!20977 d!99975))

(assert (=> bs!20977 m!686741))

(declare-fun m!686969 () Bool)

(assert (=> bs!20977 m!686969))

(assert (=> bs!20977 m!686771))

(assert (=> b!733932 d!99975))

(declare-fun b!734301 () Bool)

(declare-fun e!410893 () SeekEntryResult!7338)

(assert (=> b!734301 (= e!410893 (Intermediate!7338 true (toIndex!0 (select (arr!19731 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!734302 () Bool)

(declare-fun lt!325463 () SeekEntryResult!7338)

(assert (=> b!734302 (and (bvsge (index!31721 lt!325463) #b00000000000000000000000000000000) (bvslt (index!31721 lt!325463) (size!20152 a!3186)))))

(declare-fun res!493424 () Bool)

(assert (=> b!734302 (= res!493424 (= (select (arr!19731 a!3186) (index!31721 lt!325463)) (select (arr!19731 a!3186) j!159)))))

(declare-fun e!410894 () Bool)

(assert (=> b!734302 (=> res!493424 e!410894)))

(declare-fun e!410891 () Bool)

(assert (=> b!734302 (= e!410891 e!410894)))

(declare-fun e!410895 () SeekEntryResult!7338)

(declare-fun b!734303 () Bool)

(assert (=> b!734303 (= e!410895 (Intermediate!7338 false (toIndex!0 (select (arr!19731 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!734304 () Bool)

(assert (=> b!734304 (= e!410895 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!19731 a!3186) j!159) mask!3328) #b00000000000000000000000000000000 mask!3328) (select (arr!19731 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!734305 () Bool)

(assert (=> b!734305 (and (bvsge (index!31721 lt!325463) #b00000000000000000000000000000000) (bvslt (index!31721 lt!325463) (size!20152 a!3186)))))

(assert (=> b!734305 (= e!410894 (= (select (arr!19731 a!3186) (index!31721 lt!325463)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!734306 () Bool)

(assert (=> b!734306 (and (bvsge (index!31721 lt!325463) #b00000000000000000000000000000000) (bvslt (index!31721 lt!325463) (size!20152 a!3186)))))

(declare-fun res!493426 () Bool)

(assert (=> b!734306 (= res!493426 (= (select (arr!19731 a!3186) (index!31721 lt!325463)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!734306 (=> res!493426 e!410894)))

(declare-fun d!99977 () Bool)

(declare-fun e!410892 () Bool)

(assert (=> d!99977 e!410892))

(declare-fun c!80818 () Bool)

(assert (=> d!99977 (= c!80818 (and (is-Intermediate!7338 lt!325463) (undefined!8150 lt!325463)))))

(assert (=> d!99977 (= lt!325463 e!410893)))

(declare-fun c!80819 () Bool)

(assert (=> d!99977 (= c!80819 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!325462 () (_ BitVec 64))

(assert (=> d!99977 (= lt!325462 (select (arr!19731 a!3186) (toIndex!0 (select (arr!19731 a!3186) j!159) mask!3328)))))

(assert (=> d!99977 (validMask!0 mask!3328)))

(assert (=> d!99977 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19731 a!3186) j!159) mask!3328) (select (arr!19731 a!3186) j!159) a!3186 mask!3328) lt!325463)))

(declare-fun b!734307 () Bool)

(assert (=> b!734307 (= e!410892 (bvsge (x!62749 lt!325463) #b01111111111111111111111111111110))))

(declare-fun b!734308 () Bool)

(assert (=> b!734308 (= e!410892 e!410891)))

(declare-fun res!493425 () Bool)

(assert (=> b!734308 (= res!493425 (and (is-Intermediate!7338 lt!325463) (not (undefined!8150 lt!325463)) (bvslt (x!62749 lt!325463) #b01111111111111111111111111111110) (bvsge (x!62749 lt!325463) #b00000000000000000000000000000000) (bvsge (x!62749 lt!325463) #b00000000000000000000000000000000)))))

(assert (=> b!734308 (=> (not res!493425) (not e!410891))))

(declare-fun b!734309 () Bool)

(assert (=> b!734309 (= e!410893 e!410895)))

(declare-fun c!80820 () Bool)

(assert (=> b!734309 (= c!80820 (or (= lt!325462 (select (arr!19731 a!3186) j!159)) (= (bvadd lt!325462 lt!325462) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!99977 c!80819) b!734301))

(assert (= (and d!99977 (not c!80819)) b!734309))

(assert (= (and b!734309 c!80820) b!734303))

(assert (= (and b!734309 (not c!80820)) b!734304))

(assert (= (and d!99977 c!80818) b!734307))

(assert (= (and d!99977 (not c!80818)) b!734308))

(assert (= (and b!734308 res!493425) b!734302))

(assert (= (and b!734302 (not res!493424)) b!734306))

(assert (= (and b!734306 (not res!493426)) b!734305))

(declare-fun m!687011 () Bool)

(assert (=> b!734305 m!687011))

(assert (=> b!734302 m!687011))

(assert (=> b!734306 m!687011))

(assert (=> d!99977 m!686747))

(declare-fun m!687013 () Bool)

(assert (=> d!99977 m!687013))

(assert (=> d!99977 m!686771))

(assert (=> b!734304 m!686747))

(declare-fun m!687015 () Bool)

(assert (=> b!734304 m!687015))

(assert (=> b!734304 m!687015))

(assert (=> b!734304 m!686745))

(declare-fun m!687017 () Bool)

(assert (=> b!734304 m!687017))

(assert (=> b!733921 d!99977))

(declare-fun d!99987 () Bool)

(declare-fun lt!325475 () (_ BitVec 32))

(declare-fun lt!325474 () (_ BitVec 32))

(assert (=> d!99987 (= lt!325475 (bvmul (bvxor lt!325474 (bvlshr lt!325474 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!99987 (= lt!325474 ((_ extract 31 0) (bvand (bvxor (select (arr!19731 a!3186) j!159) (bvlshr (select (arr!19731 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!99987 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!493427 (let ((h!14855 ((_ extract 31 0) (bvand (bvxor (select (arr!19731 a!3186) j!159) (bvlshr (select (arr!19731 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!62760 (bvmul (bvxor h!14855 (bvlshr h!14855 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!62760 (bvlshr x!62760 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!493427 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!493427 #b00000000000000000000000000000000))))))

(assert (=> d!99987 (= (toIndex!0 (select (arr!19731 a!3186) j!159) mask!3328) (bvand (bvxor lt!325475 (bvlshr lt!325475 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!733921 d!99987))

(declare-fun d!99993 () Bool)

(declare-fun lt!325496 () SeekEntryResult!7338)

(assert (=> d!99993 (and (or (is-Undefined!7338 lt!325496) (not (is-Found!7338 lt!325496)) (and (bvsge (index!31720 lt!325496) #b00000000000000000000000000000000) (bvslt (index!31720 lt!325496) (size!20152 a!3186)))) (or (is-Undefined!7338 lt!325496) (is-Found!7338 lt!325496) (not (is-MissingZero!7338 lt!325496)) (and (bvsge (index!31719 lt!325496) #b00000000000000000000000000000000) (bvslt (index!31719 lt!325496) (size!20152 a!3186)))) (or (is-Undefined!7338 lt!325496) (is-Found!7338 lt!325496) (is-MissingZero!7338 lt!325496) (not (is-MissingVacant!7338 lt!325496)) (and (bvsge (index!31722 lt!325496) #b00000000000000000000000000000000) (bvslt (index!31722 lt!325496) (size!20152 a!3186)))) (or (is-Undefined!7338 lt!325496) (ite (is-Found!7338 lt!325496) (= (select (arr!19731 a!3186) (index!31720 lt!325496)) k!2102) (ite (is-MissingZero!7338 lt!325496) (= (select (arr!19731 a!3186) (index!31719 lt!325496)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!7338 lt!325496) (= (select (arr!19731 a!3186) (index!31722 lt!325496)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!410929 () SeekEntryResult!7338)

(assert (=> d!99993 (= lt!325496 e!410929)))

(declare-fun c!80840 () Bool)

(declare-fun lt!325494 () SeekEntryResult!7338)

(assert (=> d!99993 (= c!80840 (and (is-Intermediate!7338 lt!325494) (undefined!8150 lt!325494)))))

(assert (=> d!99993 (= lt!325494 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2102 mask!3328) k!2102 a!3186 mask!3328))))

(assert (=> d!99993 (validMask!0 mask!3328)))

(assert (=> d!99993 (= (seekEntryOrOpen!0 k!2102 a!3186 mask!3328) lt!325496)))

(declare-fun b!734360 () Bool)

(declare-fun e!410928 () SeekEntryResult!7338)

(assert (=> b!734360 (= e!410928 (MissingZero!7338 (index!31721 lt!325494)))))

(declare-fun b!734361 () Bool)

(declare-fun e!410930 () SeekEntryResult!7338)

(assert (=> b!734361 (= e!410929 e!410930)))

(declare-fun lt!325495 () (_ BitVec 64))

(assert (=> b!734361 (= lt!325495 (select (arr!19731 a!3186) (index!31721 lt!325494)))))

(declare-fun c!80839 () Bool)

(assert (=> b!734361 (= c!80839 (= lt!325495 k!2102))))

(declare-fun b!734362 () Bool)

(declare-fun c!80838 () Bool)

(assert (=> b!734362 (= c!80838 (= lt!325495 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!734362 (= e!410930 e!410928)))

(declare-fun b!734363 () Bool)

(assert (=> b!734363 (= e!410930 (Found!7338 (index!31721 lt!325494)))))

(declare-fun b!734364 () Bool)

(assert (=> b!734364 (= e!410929 Undefined!7338)))

(declare-fun b!734365 () Bool)

(assert (=> b!734365 (= e!410928 (seekKeyOrZeroReturnVacant!0 (x!62749 lt!325494) (index!31721 lt!325494) (index!31721 lt!325494) k!2102 a!3186 mask!3328))))

(assert (= (and d!99993 c!80840) b!734364))

(assert (= (and d!99993 (not c!80840)) b!734361))

(assert (= (and b!734361 c!80839) b!734363))

(assert (= (and b!734361 (not c!80839)) b!734362))

(assert (= (and b!734362 c!80838) b!734360))

(assert (= (and b!734362 (not c!80838)) b!734365))

(declare-fun m!687065 () Bool)

(assert (=> d!99993 m!687065))

(declare-fun m!687067 () Bool)

(assert (=> d!99993 m!687067))

(declare-fun m!687069 () Bool)

(assert (=> d!99993 m!687069))

(declare-fun m!687071 () Bool)

(assert (=> d!99993 m!687071))

(assert (=> d!99993 m!687069))

(declare-fun m!687073 () Bool)

(assert (=> d!99993 m!687073))

(assert (=> d!99993 m!686771))

(declare-fun m!687075 () Bool)

(assert (=> b!734361 m!687075))

(declare-fun m!687077 () Bool)

(assert (=> b!734365 m!687077))

(assert (=> b!733920 d!99993))

(declare-fun b!734366 () Bool)

(declare-fun e!410933 () SeekEntryResult!7338)

(assert (=> b!734366 (= e!410933 (Intermediate!7338 true index!1321 x!1131))))

(declare-fun b!734367 () Bool)

(declare-fun lt!325500 () SeekEntryResult!7338)

(assert (=> b!734367 (and (bvsge (index!31721 lt!325500) #b00000000000000000000000000000000) (bvslt (index!31721 lt!325500) (size!20152 a!3186)))))

(declare-fun res!493445 () Bool)

(assert (=> b!734367 (= res!493445 (= (select (arr!19731 a!3186) (index!31721 lt!325500)) (select (arr!19731 a!3186) j!159)))))

(declare-fun e!410934 () Bool)

(assert (=> b!734367 (=> res!493445 e!410934)))

(declare-fun e!410931 () Bool)

(assert (=> b!734367 (= e!410931 e!410934)))

(declare-fun b!734368 () Bool)

(declare-fun e!410935 () SeekEntryResult!7338)

(assert (=> b!734368 (= e!410935 (Intermediate!7338 false index!1321 x!1131))))

(declare-fun b!734369 () Bool)

(assert (=> b!734369 (= e!410935 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) (select (arr!19731 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!734370 () Bool)

(assert (=> b!734370 (and (bvsge (index!31721 lt!325500) #b00000000000000000000000000000000) (bvslt (index!31721 lt!325500) (size!20152 a!3186)))))

(assert (=> b!734370 (= e!410934 (= (select (arr!19731 a!3186) (index!31721 lt!325500)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!734371 () Bool)

(assert (=> b!734371 (and (bvsge (index!31721 lt!325500) #b00000000000000000000000000000000) (bvslt (index!31721 lt!325500) (size!20152 a!3186)))))

(declare-fun res!493447 () Bool)

(assert (=> b!734371 (= res!493447 (= (select (arr!19731 a!3186) (index!31721 lt!325500)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!734371 (=> res!493447 e!410934)))

(declare-fun d!100005 () Bool)

(declare-fun e!410932 () Bool)

(assert (=> d!100005 e!410932))

(declare-fun c!80841 () Bool)

(assert (=> d!100005 (= c!80841 (and (is-Intermediate!7338 lt!325500) (undefined!8150 lt!325500)))))

(assert (=> d!100005 (= lt!325500 e!410933)))

(declare-fun c!80842 () Bool)

(assert (=> d!100005 (= c!80842 (bvsge x!1131 #b01111111111111111111111111111110))))

(declare-fun lt!325499 () (_ BitVec 64))

(assert (=> d!100005 (= lt!325499 (select (arr!19731 a!3186) index!1321))))

(assert (=> d!100005 (validMask!0 mask!3328)))

(assert (=> d!100005 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19731 a!3186) j!159) a!3186 mask!3328) lt!325500)))

(declare-fun b!734372 () Bool)

(assert (=> b!734372 (= e!410932 (bvsge (x!62749 lt!325500) #b01111111111111111111111111111110))))

(declare-fun b!734373 () Bool)

(assert (=> b!734373 (= e!410932 e!410931)))

(declare-fun res!493446 () Bool)

(assert (=> b!734373 (= res!493446 (and (is-Intermediate!7338 lt!325500) (not (undefined!8150 lt!325500)) (bvslt (x!62749 lt!325500) #b01111111111111111111111111111110) (bvsge (x!62749 lt!325500) #b00000000000000000000000000000000) (bvsge (x!62749 lt!325500) x!1131)))))

(assert (=> b!734373 (=> (not res!493446) (not e!410931))))

(declare-fun b!734374 () Bool)

(assert (=> b!734374 (= e!410933 e!410935)))

(declare-fun c!80843 () Bool)

(assert (=> b!734374 (= c!80843 (or (= lt!325499 (select (arr!19731 a!3186) j!159)) (= (bvadd lt!325499 lt!325499) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!100005 c!80842) b!734366))

(assert (= (and d!100005 (not c!80842)) b!734374))

(assert (= (and b!734374 c!80843) b!734368))

(assert (= (and b!734374 (not c!80843)) b!734369))

(assert (= (and d!100005 c!80841) b!734372))

(assert (= (and d!100005 (not c!80841)) b!734373))

(assert (= (and b!734373 res!493446) b!734367))

(assert (= (and b!734367 (not res!493445)) b!734371))

(assert (= (and b!734371 (not res!493447)) b!734370))

(declare-fun m!687079 () Bool)

(assert (=> b!734370 m!687079))

(assert (=> b!734367 m!687079))

(assert (=> b!734371 m!687079))

(assert (=> d!100005 m!686917))

(assert (=> d!100005 m!686771))

(assert (=> b!734369 m!686757))

(assert (=> b!734369 m!686757))

(assert (=> b!734369 m!686745))

(declare-fun m!687081 () Bool)

(assert (=> b!734369 m!687081))

(assert (=> b!733931 d!100005))

(declare-fun d!100007 () Bool)

(declare-fun res!493449 () Bool)

(declare-fun e!410937 () Bool)

(assert (=> d!100007 (=> res!493449 e!410937)))

(assert (=> d!100007 (= res!493449 (bvsge #b00000000000000000000000000000000 (size!20152 a!3186)))))

(assert (=> d!100007 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328) e!410937)))

(declare-fun b!734375 () Bool)

(declare-fun e!410938 () Bool)

(declare-fun e!410936 () Bool)

(assert (=> b!734375 (= e!410938 e!410936)))

(declare-fun lt!325501 () (_ BitVec 64))

(assert (=> b!734375 (= lt!325501 (select (arr!19731 a!3186) #b00000000000000000000000000000000))))

(declare-fun lt!325502 () Unit!24994)

(assert (=> b!734375 (= lt!325502 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!325501 #b00000000000000000000000000000000))))

(assert (=> b!734375 (arrayContainsKey!0 a!3186 lt!325501 #b00000000000000000000000000000000)))

(declare-fun lt!325503 () Unit!24994)

(assert (=> b!734375 (= lt!325503 lt!325502)))

(declare-fun res!493448 () Bool)

(assert (=> b!734375 (= res!493448 (= (seekEntryOrOpen!0 (select (arr!19731 a!3186) #b00000000000000000000000000000000) a!3186 mask!3328) (Found!7338 #b00000000000000000000000000000000)))))

(assert (=> b!734375 (=> (not res!493448) (not e!410936))))

(declare-fun bm!34905 () Bool)

(declare-fun call!34908 () Bool)

(assert (=> bm!34905 (= call!34908 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun b!734376 () Bool)

(assert (=> b!734376 (= e!410938 call!34908)))

(declare-fun b!734377 () Bool)

(assert (=> b!734377 (= e!410937 e!410938)))

(declare-fun c!80844 () Bool)

(assert (=> b!734377 (= c!80844 (validKeyInArray!0 (select (arr!19731 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!734378 () Bool)

(assert (=> b!734378 (= e!410936 call!34908)))

(assert (= (and d!100007 (not res!493449)) b!734377))

(assert (= (and b!734377 c!80844) b!734375))

(assert (= (and b!734377 (not c!80844)) b!734376))

(assert (= (and b!734375 res!493448) b!734378))

(assert (= (or b!734378 b!734376) bm!34905))

(declare-fun m!687083 () Bool)

(assert (=> b!734375 m!687083))

(declare-fun m!687085 () Bool)

(assert (=> b!734375 m!687085))

(declare-fun m!687087 () Bool)

(assert (=> b!734375 m!687087))

(assert (=> b!734375 m!687083))

(declare-fun m!687089 () Bool)

(assert (=> b!734375 m!687089))

(declare-fun m!687091 () Bool)

(assert (=> bm!34905 m!687091))

(assert (=> b!734377 m!687083))

(assert (=> b!734377 m!687083))

(declare-fun m!687093 () Bool)

(assert (=> b!734377 m!687093))

(assert (=> b!733930 d!100007))

(declare-fun b!734379 () Bool)

(declare-fun e!410941 () SeekEntryResult!7338)

(assert (=> b!734379 (= e!410941 (Intermediate!7338 true index!1321 x!1131))))

(declare-fun b!734380 () Bool)

(declare-fun lt!325505 () SeekEntryResult!7338)

(assert (=> b!734380 (and (bvsge (index!31721 lt!325505) #b00000000000000000000000000000000) (bvslt (index!31721 lt!325505) (size!20152 lt!325297)))))

(declare-fun res!493450 () Bool)

(assert (=> b!734380 (= res!493450 (= (select (arr!19731 lt!325297) (index!31721 lt!325505)) lt!325294))))

(declare-fun e!410942 () Bool)

(assert (=> b!734380 (=> res!493450 e!410942)))

(declare-fun e!410939 () Bool)

(assert (=> b!734380 (= e!410939 e!410942)))

(declare-fun b!734381 () Bool)

(declare-fun e!410943 () SeekEntryResult!7338)

(assert (=> b!734381 (= e!410943 (Intermediate!7338 false index!1321 x!1131))))

(declare-fun b!734382 () Bool)

(assert (=> b!734382 (= e!410943 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) lt!325294 lt!325297 mask!3328))))

(declare-fun b!734383 () Bool)

(assert (=> b!734383 (and (bvsge (index!31721 lt!325505) #b00000000000000000000000000000000) (bvslt (index!31721 lt!325505) (size!20152 lt!325297)))))

(assert (=> b!734383 (= e!410942 (= (select (arr!19731 lt!325297) (index!31721 lt!325505)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!734384 () Bool)

(assert (=> b!734384 (and (bvsge (index!31721 lt!325505) #b00000000000000000000000000000000) (bvslt (index!31721 lt!325505) (size!20152 lt!325297)))))

(declare-fun res!493452 () Bool)

(assert (=> b!734384 (= res!493452 (= (select (arr!19731 lt!325297) (index!31721 lt!325505)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!734384 (=> res!493452 e!410942)))

(declare-fun d!100009 () Bool)

(declare-fun e!410940 () Bool)

(assert (=> d!100009 e!410940))

(declare-fun c!80845 () Bool)

(assert (=> d!100009 (= c!80845 (and (is-Intermediate!7338 lt!325505) (undefined!8150 lt!325505)))))

(assert (=> d!100009 (= lt!325505 e!410941)))

(declare-fun c!80846 () Bool)

(assert (=> d!100009 (= c!80846 (bvsge x!1131 #b01111111111111111111111111111110))))

(declare-fun lt!325504 () (_ BitVec 64))

(assert (=> d!100009 (= lt!325504 (select (arr!19731 lt!325297) index!1321))))

(assert (=> d!100009 (validMask!0 mask!3328)))

(assert (=> d!100009 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!325294 lt!325297 mask!3328) lt!325505)))

(declare-fun b!734385 () Bool)

(assert (=> b!734385 (= e!410940 (bvsge (x!62749 lt!325505) #b01111111111111111111111111111110))))

(declare-fun b!734386 () Bool)

(assert (=> b!734386 (= e!410940 e!410939)))

(declare-fun res!493451 () Bool)

(assert (=> b!734386 (= res!493451 (and (is-Intermediate!7338 lt!325505) (not (undefined!8150 lt!325505)) (bvslt (x!62749 lt!325505) #b01111111111111111111111111111110) (bvsge (x!62749 lt!325505) #b00000000000000000000000000000000) (bvsge (x!62749 lt!325505) x!1131)))))

(assert (=> b!734386 (=> (not res!493451) (not e!410939))))

(declare-fun b!734387 () Bool)

(assert (=> b!734387 (= e!410941 e!410943)))

(declare-fun c!80847 () Bool)

(assert (=> b!734387 (= c!80847 (or (= lt!325504 lt!325294) (= (bvadd lt!325504 lt!325504) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!100009 c!80846) b!734379))

(assert (= (and d!100009 (not c!80846)) b!734387))

(assert (= (and b!734387 c!80847) b!734381))

(assert (= (and b!734387 (not c!80847)) b!734382))

(assert (= (and d!100009 c!80845) b!734385))

(assert (= (and d!100009 (not c!80845)) b!734386))

(assert (= (and b!734386 res!493451) b!734380))

(assert (= (and b!734380 (not res!493450)) b!734384))

(assert (= (and b!734384 (not res!493452)) b!734383))

(declare-fun m!687095 () Bool)

(assert (=> b!734383 m!687095))

(assert (=> b!734380 m!687095))

(assert (=> b!734384 m!687095))

(declare-fun m!687097 () Bool)

(assert (=> d!100009 m!687097))

(assert (=> d!100009 m!686771))

(assert (=> b!734382 m!686757))

(assert (=> b!734382 m!686757))

(declare-fun m!687099 () Bool)

(assert (=> b!734382 m!687099))

(assert (=> b!733919 d!100009))

(declare-fun b!734388 () Bool)

(declare-fun e!410946 () SeekEntryResult!7338)

(assert (=> b!734388 (= e!410946 (Intermediate!7338 true (toIndex!0 lt!325294 mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!734389 () Bool)

(declare-fun lt!325507 () SeekEntryResult!7338)

(assert (=> b!734389 (and (bvsge (index!31721 lt!325507) #b00000000000000000000000000000000) (bvslt (index!31721 lt!325507) (size!20152 lt!325297)))))

(declare-fun res!493453 () Bool)

(assert (=> b!734389 (= res!493453 (= (select (arr!19731 lt!325297) (index!31721 lt!325507)) lt!325294))))

(declare-fun e!410947 () Bool)

(assert (=> b!734389 (=> res!493453 e!410947)))

(declare-fun e!410944 () Bool)

(assert (=> b!734389 (= e!410944 e!410947)))

(declare-fun b!734390 () Bool)

(declare-fun e!410948 () SeekEntryResult!7338)

(assert (=> b!734390 (= e!410948 (Intermediate!7338 false (toIndex!0 lt!325294 mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!734391 () Bool)

(assert (=> b!734391 (= e!410948 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!325294 mask!3328) #b00000000000000000000000000000000 mask!3328) lt!325294 lt!325297 mask!3328))))

(declare-fun b!734392 () Bool)

(assert (=> b!734392 (and (bvsge (index!31721 lt!325507) #b00000000000000000000000000000000) (bvslt (index!31721 lt!325507) (size!20152 lt!325297)))))

(assert (=> b!734392 (= e!410947 (= (select (arr!19731 lt!325297) (index!31721 lt!325507)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!734393 () Bool)

(assert (=> b!734393 (and (bvsge (index!31721 lt!325507) #b00000000000000000000000000000000) (bvslt (index!31721 lt!325507) (size!20152 lt!325297)))))

(declare-fun res!493455 () Bool)

(assert (=> b!734393 (= res!493455 (= (select (arr!19731 lt!325297) (index!31721 lt!325507)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!734393 (=> res!493455 e!410947)))

(declare-fun d!100011 () Bool)

(declare-fun e!410945 () Bool)

(assert (=> d!100011 e!410945))

(declare-fun c!80848 () Bool)

(assert (=> d!100011 (= c!80848 (and (is-Intermediate!7338 lt!325507) (undefined!8150 lt!325507)))))

(assert (=> d!100011 (= lt!325507 e!410946)))

(declare-fun c!80849 () Bool)

(assert (=> d!100011 (= c!80849 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!325506 () (_ BitVec 64))

(assert (=> d!100011 (= lt!325506 (select (arr!19731 lt!325297) (toIndex!0 lt!325294 mask!3328)))))

(assert (=> d!100011 (validMask!0 mask!3328)))

(assert (=> d!100011 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!325294 mask!3328) lt!325294 lt!325297 mask!3328) lt!325507)))

(declare-fun b!734394 () Bool)

(assert (=> b!734394 (= e!410945 (bvsge (x!62749 lt!325507) #b01111111111111111111111111111110))))

(declare-fun b!734395 () Bool)

(assert (=> b!734395 (= e!410945 e!410944)))

(declare-fun res!493454 () Bool)

(assert (=> b!734395 (= res!493454 (and (is-Intermediate!7338 lt!325507) (not (undefined!8150 lt!325507)) (bvslt (x!62749 lt!325507) #b01111111111111111111111111111110) (bvsge (x!62749 lt!325507) #b00000000000000000000000000000000) (bvsge (x!62749 lt!325507) #b00000000000000000000000000000000)))))

(assert (=> b!734395 (=> (not res!493454) (not e!410944))))

(declare-fun b!734396 () Bool)

(assert (=> b!734396 (= e!410946 e!410948)))

(declare-fun c!80850 () Bool)

(assert (=> b!734396 (= c!80850 (or (= lt!325506 lt!325294) (= (bvadd lt!325506 lt!325506) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!100011 c!80849) b!734388))

(assert (= (and d!100011 (not c!80849)) b!734396))

(assert (= (and b!734396 c!80850) b!734390))

(assert (= (and b!734396 (not c!80850)) b!734391))

(assert (= (and d!100011 c!80848) b!734394))

(assert (= (and d!100011 (not c!80848)) b!734395))

(assert (= (and b!734395 res!493454) b!734389))

(assert (= (and b!734389 (not res!493453)) b!734393))

(assert (= (and b!734393 (not res!493455)) b!734392))

(declare-fun m!687101 () Bool)

(assert (=> b!734392 m!687101))

(assert (=> b!734389 m!687101))

(assert (=> b!734393 m!687101))

(assert (=> d!100011 m!686731))

(declare-fun m!687103 () Bool)

(assert (=> d!100011 m!687103))

(assert (=> d!100011 m!686771))

(assert (=> b!734391 m!686731))

(declare-fun m!687105 () Bool)

(assert (=> b!734391 m!687105))

(assert (=> b!734391 m!687105))

(declare-fun m!687107 () Bool)

(assert (=> b!734391 m!687107))

(assert (=> b!733919 d!100011))

(declare-fun d!100013 () Bool)

(declare-fun lt!325509 () (_ BitVec 32))

(declare-fun lt!325508 () (_ BitVec 32))

(assert (=> d!100013 (= lt!325509 (bvmul (bvxor lt!325508 (bvlshr lt!325508 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!100013 (= lt!325508 ((_ extract 31 0) (bvand (bvxor lt!325294 (bvlshr lt!325294 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!100013 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!493427 (let ((h!14855 ((_ extract 31 0) (bvand (bvxor lt!325294 (bvlshr lt!325294 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!62760 (bvmul (bvxor h!14855 (bvlshr h!14855 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!62760 (bvlshr x!62760 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!493427 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!493427 #b00000000000000000000000000000000))))))

(assert (=> d!100013 (= (toIndex!0 lt!325294 mask!3328) (bvand (bvxor lt!325509 (bvlshr lt!325509 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!733919 d!100013))

(declare-fun d!100015 () Bool)

(assert (=> d!100015 (= (validMask!0 mask!3328) (and (or (= mask!3328 #b00000000000000000000000000000111) (= mask!3328 #b00000000000000000000000000001111) (= mask!3328 #b00000000000000000000000000011111) (= mask!3328 #b00000000000000000000000000111111) (= mask!3328 #b00000000000000000000000001111111) (= mask!3328 #b00000000000000000000000011111111) (= mask!3328 #b00000000000000000000000111111111) (= mask!3328 #b00000000000000000000001111111111) (= mask!3328 #b00000000000000000000011111111111) (= mask!3328 #b00000000000000000000111111111111) (= mask!3328 #b00000000000000000001111111111111) (= mask!3328 #b00000000000000000011111111111111) (= mask!3328 #b00000000000000000111111111111111) (= mask!3328 #b00000000000000001111111111111111) (= mask!3328 #b00000000000000011111111111111111) (= mask!3328 #b00000000000000111111111111111111) (= mask!3328 #b00000000000001111111111111111111) (= mask!3328 #b00000000000011111111111111111111) (= mask!3328 #b00000000000111111111111111111111) (= mask!3328 #b00000000001111111111111111111111) (= mask!3328 #b00000000011111111111111111111111) (= mask!3328 #b00000000111111111111111111111111) (= mask!3328 #b00000001111111111111111111111111) (= mask!3328 #b00000011111111111111111111111111) (= mask!3328 #b00000111111111111111111111111111) (= mask!3328 #b00001111111111111111111111111111) (= mask!3328 #b00011111111111111111111111111111) (= mask!3328 #b00111111111111111111111111111111)) (bvsle mask!3328 #b00111111111111111111111111111111)))))

(assert (=> start!65044 d!100015))

(declare-fun d!100017 () Bool)

(assert (=> d!100017 (= (array_inv!15505 a!3186) (bvsge (size!20152 a!3186) #b00000000000000000000000000000000))))

(assert (=> start!65044 d!100017))

(declare-fun d!100019 () Bool)

(declare-fun lt!325516 () SeekEntryResult!7338)

(assert (=> d!100019 (and (or (is-Undefined!7338 lt!325516) (not (is-Found!7338 lt!325516)) (and (bvsge (index!31720 lt!325516) #b00000000000000000000000000000000) (bvslt (index!31720 lt!325516) (size!20152 a!3186)))) (or (is-Undefined!7338 lt!325516) (is-Found!7338 lt!325516) (not (is-MissingZero!7338 lt!325516)) (and (bvsge (index!31719 lt!325516) #b00000000000000000000000000000000) (bvslt (index!31719 lt!325516) (size!20152 a!3186)))) (or (is-Undefined!7338 lt!325516) (is-Found!7338 lt!325516) (is-MissingZero!7338 lt!325516) (not (is-MissingVacant!7338 lt!325516)) (and (bvsge (index!31722 lt!325516) #b00000000000000000000000000000000) (bvslt (index!31722 lt!325516) (size!20152 a!3186)))) (or (is-Undefined!7338 lt!325516) (ite (is-Found!7338 lt!325516) (= (select (arr!19731 a!3186) (index!31720 lt!325516)) (select (arr!19731 a!3186) j!159)) (ite (is-MissingZero!7338 lt!325516) (= (select (arr!19731 a!3186) (index!31719 lt!325516)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!7338 lt!325516) (= (select (arr!19731 a!3186) (index!31722 lt!325516)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!410956 () SeekEntryResult!7338)

(assert (=> d!100019 (= lt!325516 e!410956)))

(declare-fun c!80859 () Bool)

(declare-fun lt!325514 () SeekEntryResult!7338)

(assert (=> d!100019 (= c!80859 (and (is-Intermediate!7338 lt!325514) (undefined!8150 lt!325514)))))

