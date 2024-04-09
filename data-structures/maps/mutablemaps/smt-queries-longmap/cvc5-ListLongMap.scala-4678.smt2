; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65146 () Bool)

(assert start!65146)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!41272 0))(
  ( (array!41273 (arr!19746 (Array (_ BitVec 32) (_ BitVec 64))) (size!20167 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41272)

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7353 0))(
  ( (MissingZero!7353 (index!31779 (_ BitVec 32))) (Found!7353 (index!31780 (_ BitVec 32))) (Intermediate!7353 (undefined!8165 Bool) (index!31781 (_ BitVec 32)) (x!62816 (_ BitVec 32))) (Undefined!7353) (MissingVacant!7353 (index!31782 (_ BitVec 32))) )
))
(declare-fun lt!325958 () SeekEntryResult!7353)

(declare-fun e!411408 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun b!735258 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41272 (_ BitVec 32)) SeekEntryResult!7353)

(assert (=> b!735258 (= e!411408 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19746 a!3186) j!159) a!3186 mask!3328) lt!325958))))

(declare-fun b!735259 () Bool)

(declare-fun e!411404 () Bool)

(declare-fun e!411409 () Bool)

(assert (=> b!735259 (= e!411404 (not e!411409))))

(declare-fun res!494162 () Bool)

(assert (=> b!735259 (=> res!494162 e!411409)))

(declare-fun lt!325952 () SeekEntryResult!7353)

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!735259 (= res!494162 (or (not (is-Intermediate!7353 lt!325952)) (bvsge x!1131 (x!62816 lt!325952))))))

(declare-fun lt!325954 () SeekEntryResult!7353)

(assert (=> b!735259 (= lt!325954 (Found!7353 j!159))))

(declare-fun e!411400 () Bool)

(assert (=> b!735259 e!411400))

(declare-fun res!494149 () Bool)

(assert (=> b!735259 (=> (not res!494149) (not e!411400))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41272 (_ BitVec 32)) Bool)

(assert (=> b!735259 (= res!494149 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!25030 0))(
  ( (Unit!25031) )
))
(declare-fun lt!325949 () Unit!25030)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41272 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25030)

(assert (=> b!735259 (= lt!325949 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!735260 () Bool)

(declare-fun e!411401 () Bool)

(declare-fun e!411405 () Bool)

(assert (=> b!735260 (= e!411401 e!411405)))

(declare-fun res!494160 () Bool)

(assert (=> b!735260 (=> (not res!494160) (not e!411405))))

(declare-fun lt!325946 () SeekEntryResult!7353)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41272 (_ BitVec 32)) SeekEntryResult!7353)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!735260 (= res!494160 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19746 a!3186) j!159) mask!3328) (select (arr!19746 a!3186) j!159) a!3186 mask!3328) lt!325946))))

(assert (=> b!735260 (= lt!325946 (Intermediate!7353 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!735261 () Bool)

(declare-fun res!494154 () Bool)

(assert (=> b!735261 (=> (not res!494154) (not e!411401))))

(declare-datatypes ((List!13801 0))(
  ( (Nil!13798) (Cons!13797 (h!14869 (_ BitVec 64)) (t!20124 List!13801)) )
))
(declare-fun arrayNoDuplicates!0 (array!41272 (_ BitVec 32) List!13801) Bool)

(assert (=> b!735261 (= res!494154 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13798))))

(declare-fun b!735262 () Bool)

(declare-fun e!411411 () Bool)

(assert (=> b!735262 (= e!411411 e!411401)))

(declare-fun res!494166 () Bool)

(assert (=> b!735262 (=> (not res!494166) (not e!411401))))

(declare-fun lt!325947 () SeekEntryResult!7353)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!735262 (= res!494166 (or (= lt!325947 (MissingZero!7353 i!1173)) (= lt!325947 (MissingVacant!7353 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41272 (_ BitVec 32)) SeekEntryResult!7353)

(assert (=> b!735262 (= lt!325947 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!735263 () Bool)

(declare-fun res!494161 () Bool)

(assert (=> b!735263 (=> (not res!494161) (not e!411411))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!735263 (= res!494161 (validKeyInArray!0 k!2102))))

(declare-fun b!735264 () Bool)

(declare-fun res!494163 () Bool)

(assert (=> b!735264 (=> (not res!494163) (not e!411405))))

(declare-fun e!411406 () Bool)

(assert (=> b!735264 (= res!494163 e!411406)))

(declare-fun c!80937 () Bool)

(assert (=> b!735264 (= c!80937 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!735265 () Bool)

(declare-fun res!494150 () Bool)

(assert (=> b!735265 (=> (not res!494150) (not e!411411))))

(declare-fun arrayContainsKey!0 (array!41272 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!735265 (= res!494150 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!735266 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!735266 (= e!411406 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19746 a!3186) j!159) a!3186 mask!3328) (Found!7353 j!159)))))

(declare-fun b!735267 () Bool)

(assert (=> b!735267 (= e!411406 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19746 a!3186) j!159) a!3186 mask!3328) lt!325946))))

(declare-fun res!494165 () Bool)

(assert (=> start!65146 (=> (not res!494165) (not e!411411))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65146 (= res!494165 (validMask!0 mask!3328))))

(assert (=> start!65146 e!411411))

(assert (=> start!65146 true))

(declare-fun array_inv!15520 (array!41272) Bool)

(assert (=> start!65146 (array_inv!15520 a!3186)))

(declare-fun e!411410 () Bool)

(declare-fun b!735268 () Bool)

(declare-fun lt!325953 () (_ BitVec 32))

(assert (=> b!735268 (= e!411410 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!325953 resIntermediateIndex!5 (select (arr!19746 a!3186) j!159) a!3186 mask!3328) lt!325954)))))

(declare-fun b!735269 () Bool)

(declare-fun e!411402 () Unit!25030)

(declare-fun Unit!25032 () Unit!25030)

(assert (=> b!735269 (= e!411402 Unit!25032)))

(declare-fun lt!325945 () SeekEntryResult!7353)

(assert (=> b!735269 (= lt!325945 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19746 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!735269 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!325953 resIntermediateIndex!5 (select (arr!19746 a!3186) j!159) a!3186 mask!3328) lt!325954)))

(declare-fun b!735270 () Bool)

(declare-fun res!494153 () Bool)

(assert (=> b!735270 (=> (not res!494153) (not e!411401))))

(assert (=> b!735270 (= res!494153 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20167 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20167 a!3186))))))

(declare-fun b!735271 () Bool)

(declare-fun res!494164 () Bool)

(assert (=> b!735271 (=> (not res!494164) (not e!411411))))

(assert (=> b!735271 (= res!494164 (and (= (size!20167 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20167 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20167 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!735272 () Bool)

(assert (=> b!735272 (= e!411410 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!325953 (select (arr!19746 a!3186) j!159) a!3186 mask!3328) lt!325946)))))

(declare-fun b!735273 () Bool)

(declare-fun res!494159 () Bool)

(declare-fun e!411407 () Bool)

(assert (=> b!735273 (=> res!494159 e!411407)))

(assert (=> b!735273 (= res!494159 e!411410)))

(declare-fun c!80936 () Bool)

(declare-fun lt!325957 () Bool)

(assert (=> b!735273 (= c!80936 lt!325957)))

(declare-fun b!735274 () Bool)

(assert (=> b!735274 (= e!411407 true)))

(declare-fun lt!325956 () SeekEntryResult!7353)

(declare-fun lt!325950 () array!41272)

(declare-fun lt!325948 () (_ BitVec 64))

(assert (=> b!735274 (= lt!325956 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!325953 lt!325948 lt!325950 mask!3328))))

(declare-fun b!735275 () Bool)

(declare-fun res!494155 () Bool)

(assert (=> b!735275 (=> (not res!494155) (not e!411405))))

(assert (=> b!735275 (= res!494155 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19746 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!735276 () Bool)

(assert (=> b!735276 (= e!411409 e!411407)))

(declare-fun res!494158 () Bool)

(assert (=> b!735276 (=> res!494158 e!411407)))

(assert (=> b!735276 (= res!494158 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000) (bvslt lt!325953 #b00000000000000000000000000000000) (bvsge lt!325953 (size!20167 a!3186))))))

(declare-fun lt!325955 () Unit!25030)

(assert (=> b!735276 (= lt!325955 e!411402)))

(declare-fun c!80935 () Bool)

(assert (=> b!735276 (= c!80935 lt!325957)))

(assert (=> b!735276 (= lt!325957 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!735276 (= lt!325953 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!735277 () Bool)

(assert (=> b!735277 (= e!411400 e!411408)))

(declare-fun res!494157 () Bool)

(assert (=> b!735277 (=> (not res!494157) (not e!411408))))

(assert (=> b!735277 (= res!494157 (= (seekEntryOrOpen!0 (select (arr!19746 a!3186) j!159) a!3186 mask!3328) lt!325958))))

(assert (=> b!735277 (= lt!325958 (Found!7353 j!159))))

(declare-fun b!735278 () Bool)

(assert (=> b!735278 (= e!411405 e!411404)))

(declare-fun res!494156 () Bool)

(assert (=> b!735278 (=> (not res!494156) (not e!411404))))

(declare-fun lt!325951 () SeekEntryResult!7353)

(assert (=> b!735278 (= res!494156 (= lt!325951 lt!325952))))

(assert (=> b!735278 (= lt!325952 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!325948 lt!325950 mask!3328))))

(assert (=> b!735278 (= lt!325951 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!325948 mask!3328) lt!325948 lt!325950 mask!3328))))

(assert (=> b!735278 (= lt!325948 (select (store (arr!19746 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!735278 (= lt!325950 (array!41273 (store (arr!19746 a!3186) i!1173 k!2102) (size!20167 a!3186)))))

(declare-fun b!735279 () Bool)

(declare-fun res!494151 () Bool)

(assert (=> b!735279 (=> (not res!494151) (not e!411401))))

(assert (=> b!735279 (= res!494151 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!735280 () Bool)

(declare-fun res!494152 () Bool)

(assert (=> b!735280 (=> (not res!494152) (not e!411411))))

(assert (=> b!735280 (= res!494152 (validKeyInArray!0 (select (arr!19746 a!3186) j!159)))))

(declare-fun b!735281 () Bool)

(declare-fun Unit!25033 () Unit!25030)

(assert (=> b!735281 (= e!411402 Unit!25033)))

(assert (=> b!735281 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!325953 (select (arr!19746 a!3186) j!159) a!3186 mask!3328) lt!325946)))

(assert (= (and start!65146 res!494165) b!735271))

(assert (= (and b!735271 res!494164) b!735280))

(assert (= (and b!735280 res!494152) b!735263))

(assert (= (and b!735263 res!494161) b!735265))

(assert (= (and b!735265 res!494150) b!735262))

(assert (= (and b!735262 res!494166) b!735279))

(assert (= (and b!735279 res!494151) b!735261))

(assert (= (and b!735261 res!494154) b!735270))

(assert (= (and b!735270 res!494153) b!735260))

(assert (= (and b!735260 res!494160) b!735275))

(assert (= (and b!735275 res!494155) b!735264))

(assert (= (and b!735264 c!80937) b!735267))

(assert (= (and b!735264 (not c!80937)) b!735266))

(assert (= (and b!735264 res!494163) b!735278))

(assert (= (and b!735278 res!494156) b!735259))

(assert (= (and b!735259 res!494149) b!735277))

(assert (= (and b!735277 res!494157) b!735258))

(assert (= (and b!735259 (not res!494162)) b!735276))

(assert (= (and b!735276 c!80935) b!735281))

(assert (= (and b!735276 (not c!80935)) b!735269))

(assert (= (and b!735276 (not res!494158)) b!735273))

(assert (= (and b!735273 c!80936) b!735272))

(assert (= (and b!735273 (not c!80936)) b!735268))

(assert (= (and b!735273 (not res!494159)) b!735274))

(declare-fun m!687751 () Bool)

(assert (=> b!735281 m!687751))

(assert (=> b!735281 m!687751))

(declare-fun m!687753 () Bool)

(assert (=> b!735281 m!687753))

(declare-fun m!687755 () Bool)

(assert (=> start!65146 m!687755))

(declare-fun m!687757 () Bool)

(assert (=> start!65146 m!687757))

(declare-fun m!687759 () Bool)

(assert (=> b!735265 m!687759))

(assert (=> b!735268 m!687751))

(assert (=> b!735268 m!687751))

(declare-fun m!687761 () Bool)

(assert (=> b!735268 m!687761))

(declare-fun m!687763 () Bool)

(assert (=> b!735279 m!687763))

(declare-fun m!687765 () Bool)

(assert (=> b!735278 m!687765))

(assert (=> b!735278 m!687765))

(declare-fun m!687767 () Bool)

(assert (=> b!735278 m!687767))

(declare-fun m!687769 () Bool)

(assert (=> b!735278 m!687769))

(declare-fun m!687771 () Bool)

(assert (=> b!735278 m!687771))

(declare-fun m!687773 () Bool)

(assert (=> b!735278 m!687773))

(assert (=> b!735269 m!687751))

(assert (=> b!735269 m!687751))

(declare-fun m!687775 () Bool)

(assert (=> b!735269 m!687775))

(assert (=> b!735269 m!687751))

(assert (=> b!735269 m!687761))

(assert (=> b!735260 m!687751))

(assert (=> b!735260 m!687751))

(declare-fun m!687777 () Bool)

(assert (=> b!735260 m!687777))

(assert (=> b!735260 m!687777))

(assert (=> b!735260 m!687751))

(declare-fun m!687779 () Bool)

(assert (=> b!735260 m!687779))

(declare-fun m!687781 () Bool)

(assert (=> b!735276 m!687781))

(declare-fun m!687783 () Bool)

(assert (=> b!735261 m!687783))

(declare-fun m!687785 () Bool)

(assert (=> b!735275 m!687785))

(declare-fun m!687787 () Bool)

(assert (=> b!735259 m!687787))

(declare-fun m!687789 () Bool)

(assert (=> b!735259 m!687789))

(declare-fun m!687791 () Bool)

(assert (=> b!735263 m!687791))

(assert (=> b!735277 m!687751))

(assert (=> b!735277 m!687751))

(declare-fun m!687793 () Bool)

(assert (=> b!735277 m!687793))

(assert (=> b!735258 m!687751))

(assert (=> b!735258 m!687751))

(declare-fun m!687795 () Bool)

(assert (=> b!735258 m!687795))

(declare-fun m!687797 () Bool)

(assert (=> b!735274 m!687797))

(assert (=> b!735280 m!687751))

(assert (=> b!735280 m!687751))

(declare-fun m!687799 () Bool)

(assert (=> b!735280 m!687799))

(assert (=> b!735267 m!687751))

(assert (=> b!735267 m!687751))

(declare-fun m!687801 () Bool)

(assert (=> b!735267 m!687801))

(assert (=> b!735266 m!687751))

(assert (=> b!735266 m!687751))

(assert (=> b!735266 m!687775))

(assert (=> b!735272 m!687751))

(assert (=> b!735272 m!687751))

(assert (=> b!735272 m!687753))

(declare-fun m!687803 () Bool)

(assert (=> b!735262 m!687803))

(push 1)

