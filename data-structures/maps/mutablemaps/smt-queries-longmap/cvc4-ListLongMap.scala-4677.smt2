; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65144 () Bool)

(assert start!65144)

(declare-fun b!735186 () Bool)

(declare-fun res!494108 () Bool)

(declare-fun e!411365 () Bool)

(assert (=> b!735186 (=> (not res!494108) (not e!411365))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!735186 (= res!494108 (validKeyInArray!0 k!2102))))

(declare-datatypes ((array!41270 0))(
  ( (array!41271 (arr!19745 (Array (_ BitVec 32) (_ BitVec 64))) (size!20166 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41270)

(declare-datatypes ((SeekEntryResult!7352 0))(
  ( (MissingZero!7352 (index!31775 (_ BitVec 32))) (Found!7352 (index!31776 (_ BitVec 32))) (Intermediate!7352 (undefined!8164 Bool) (index!31777 (_ BitVec 32)) (x!62807 (_ BitVec 32))) (Undefined!7352) (MissingVacant!7352 (index!31778 (_ BitVec 32))) )
))
(declare-fun lt!325916 () SeekEntryResult!7352)

(declare-fun b!735187 () Bool)

(declare-fun lt!325913 () (_ BitVec 32))

(declare-fun e!411368 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41270 (_ BitVec 32)) SeekEntryResult!7352)

(assert (=> b!735187 (= e!411368 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!325913 (select (arr!19745 a!3186) j!159) a!3186 mask!3328) lt!325916)))))

(declare-fun b!735188 () Bool)

(declare-fun res!494112 () Bool)

(declare-fun e!411374 () Bool)

(assert (=> b!735188 (=> (not res!494112) (not e!411374))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!735188 (= res!494112 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20166 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20166 a!3186))))))

(declare-fun b!735189 () Bool)

(declare-datatypes ((Unit!25026 0))(
  ( (Unit!25027) )
))
(declare-fun e!411371 () Unit!25026)

(declare-fun Unit!25028 () Unit!25026)

(assert (=> b!735189 (= e!411371 Unit!25028)))

(assert (=> b!735189 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!325913 (select (arr!19745 a!3186) j!159) a!3186 mask!3328) lt!325916)))

(declare-fun b!735191 () Bool)

(declare-fun e!411373 () Bool)

(declare-fun e!411372 () Bool)

(assert (=> b!735191 (= e!411373 e!411372)))

(declare-fun res!494101 () Bool)

(assert (=> b!735191 (=> (not res!494101) (not e!411372))))

(declare-fun lt!325904 () SeekEntryResult!7352)

(declare-fun lt!325915 () SeekEntryResult!7352)

(assert (=> b!735191 (= res!494101 (= lt!325904 lt!325915))))

(declare-fun lt!325906 () (_ BitVec 64))

(declare-fun lt!325912 () array!41270)

(assert (=> b!735191 (= lt!325915 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!325906 lt!325912 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!735191 (= lt!325904 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!325906 mask!3328) lt!325906 lt!325912 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!735191 (= lt!325906 (select (store (arr!19745 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!735191 (= lt!325912 (array!41271 (store (arr!19745 a!3186) i!1173 k!2102) (size!20166 a!3186)))))

(declare-fun b!735192 () Bool)

(assert (=> b!735192 (= e!411374 e!411373)))

(declare-fun res!494105 () Bool)

(assert (=> b!735192 (=> (not res!494105) (not e!411373))))

(assert (=> b!735192 (= res!494105 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19745 a!3186) j!159) mask!3328) (select (arr!19745 a!3186) j!159) a!3186 mask!3328) lt!325916))))

(assert (=> b!735192 (= lt!325916 (Intermediate!7352 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun lt!325908 () SeekEntryResult!7352)

(declare-fun e!411366 () Bool)

(declare-fun b!735193 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41270 (_ BitVec 32)) SeekEntryResult!7352)

(assert (=> b!735193 (= e!411366 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19745 a!3186) j!159) a!3186 mask!3328) lt!325908))))

(declare-fun b!735194 () Bool)

(declare-fun e!411364 () Bool)

(declare-fun e!411367 () Bool)

(assert (=> b!735194 (= e!411364 e!411367)))

(declare-fun res!494109 () Bool)

(assert (=> b!735194 (=> res!494109 e!411367)))

(assert (=> b!735194 (= res!494109 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000) (bvslt lt!325913 #b00000000000000000000000000000000) (bvsge lt!325913 (size!20166 a!3186))))))

(declare-fun lt!325903 () Unit!25026)

(assert (=> b!735194 (= lt!325903 e!411371)))

(declare-fun c!80927 () Bool)

(declare-fun lt!325911 () Bool)

(assert (=> b!735194 (= c!80927 lt!325911)))

(assert (=> b!735194 (= lt!325911 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!735194 (= lt!325913 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!735195 () Bool)

(declare-fun res!494097 () Bool)

(assert (=> b!735195 (=> (not res!494097) (not e!411373))))

(assert (=> b!735195 (= res!494097 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19745 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!735196 () Bool)

(declare-fun e!411375 () Bool)

(assert (=> b!735196 (= e!411375 e!411366)))

(declare-fun res!494099 () Bool)

(assert (=> b!735196 (=> (not res!494099) (not e!411366))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41270 (_ BitVec 32)) SeekEntryResult!7352)

(assert (=> b!735196 (= res!494099 (= (seekEntryOrOpen!0 (select (arr!19745 a!3186) j!159) a!3186 mask!3328) lt!325908))))

(assert (=> b!735196 (= lt!325908 (Found!7352 j!159))))

(declare-fun b!735197 () Bool)

(declare-fun e!411370 () Bool)

(assert (=> b!735197 (= e!411370 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19745 a!3186) j!159) a!3186 mask!3328) lt!325916))))

(declare-fun b!735198 () Bool)

(declare-fun res!494096 () Bool)

(assert (=> b!735198 (=> (not res!494096) (not e!411373))))

(assert (=> b!735198 (= res!494096 e!411370)))

(declare-fun c!80926 () Bool)

(assert (=> b!735198 (= c!80926 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!735199 () Bool)

(declare-fun lt!325914 () SeekEntryResult!7352)

(assert (=> b!735199 (= e!411368 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!325913 resIntermediateIndex!5 (select (arr!19745 a!3186) j!159) a!3186 mask!3328) lt!325914)))))

(declare-fun b!735200 () Bool)

(declare-fun Unit!25029 () Unit!25026)

(assert (=> b!735200 (= e!411371 Unit!25029)))

(declare-fun lt!325907 () SeekEntryResult!7352)

(assert (=> b!735200 (= lt!325907 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19745 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!735200 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!325913 resIntermediateIndex!5 (select (arr!19745 a!3186) j!159) a!3186 mask!3328) lt!325914)))

(declare-fun b!735201 () Bool)

(declare-fun res!494103 () Bool)

(assert (=> b!735201 (=> res!494103 e!411367)))

(assert (=> b!735201 (= res!494103 e!411368)))

(declare-fun c!80928 () Bool)

(assert (=> b!735201 (= c!80928 lt!325911)))

(declare-fun b!735202 () Bool)

(declare-fun res!494102 () Bool)

(assert (=> b!735202 (=> (not res!494102) (not e!411374))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41270 (_ BitVec 32)) Bool)

(assert (=> b!735202 (= res!494102 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!735203 () Bool)

(assert (=> b!735203 (= e!411365 e!411374)))

(declare-fun res!494110 () Bool)

(assert (=> b!735203 (=> (not res!494110) (not e!411374))))

(declare-fun lt!325905 () SeekEntryResult!7352)

(assert (=> b!735203 (= res!494110 (or (= lt!325905 (MissingZero!7352 i!1173)) (= lt!325905 (MissingVacant!7352 i!1173))))))

(assert (=> b!735203 (= lt!325905 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!735204 () Bool)

(declare-fun res!494106 () Bool)

(assert (=> b!735204 (=> (not res!494106) (not e!411365))))

(assert (=> b!735204 (= res!494106 (validKeyInArray!0 (select (arr!19745 a!3186) j!159)))))

(declare-fun res!494104 () Bool)

(assert (=> start!65144 (=> (not res!494104) (not e!411365))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65144 (= res!494104 (validMask!0 mask!3328))))

(assert (=> start!65144 e!411365))

(assert (=> start!65144 true))

(declare-fun array_inv!15519 (array!41270) Bool)

(assert (=> start!65144 (array_inv!15519 a!3186)))

(declare-fun b!735190 () Bool)

(declare-fun res!494111 () Bool)

(assert (=> b!735190 (=> (not res!494111) (not e!411365))))

(assert (=> b!735190 (= res!494111 (and (= (size!20166 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20166 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20166 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!735205 () Bool)

(assert (=> b!735205 (= e!411367 true)))

(declare-fun lt!325910 () SeekEntryResult!7352)

(assert (=> b!735205 (= lt!325910 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!325913 lt!325906 lt!325912 mask!3328))))

(declare-fun b!735206 () Bool)

(declare-fun res!494095 () Bool)

(assert (=> b!735206 (=> (not res!494095) (not e!411365))))

(declare-fun arrayContainsKey!0 (array!41270 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!735206 (= res!494095 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!735207 () Bool)

(assert (=> b!735207 (= e!411370 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19745 a!3186) j!159) a!3186 mask!3328) (Found!7352 j!159)))))

(declare-fun b!735208 () Bool)

(declare-fun res!494100 () Bool)

(assert (=> b!735208 (=> (not res!494100) (not e!411374))))

(declare-datatypes ((List!13800 0))(
  ( (Nil!13797) (Cons!13796 (h!14868 (_ BitVec 64)) (t!20123 List!13800)) )
))
(declare-fun arrayNoDuplicates!0 (array!41270 (_ BitVec 32) List!13800) Bool)

(assert (=> b!735208 (= res!494100 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13797))))

(declare-fun b!735209 () Bool)

(assert (=> b!735209 (= e!411372 (not e!411364))))

(declare-fun res!494107 () Bool)

(assert (=> b!735209 (=> res!494107 e!411364)))

(assert (=> b!735209 (= res!494107 (or (not (is-Intermediate!7352 lt!325915)) (bvsge x!1131 (x!62807 lt!325915))))))

(assert (=> b!735209 (= lt!325914 (Found!7352 j!159))))

(assert (=> b!735209 e!411375))

(declare-fun res!494098 () Bool)

(assert (=> b!735209 (=> (not res!494098) (not e!411375))))

(assert (=> b!735209 (= res!494098 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!325909 () Unit!25026)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41270 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25026)

(assert (=> b!735209 (= lt!325909 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(assert (= (and start!65144 res!494104) b!735190))

(assert (= (and b!735190 res!494111) b!735204))

(assert (= (and b!735204 res!494106) b!735186))

(assert (= (and b!735186 res!494108) b!735206))

(assert (= (and b!735206 res!494095) b!735203))

(assert (= (and b!735203 res!494110) b!735202))

(assert (= (and b!735202 res!494102) b!735208))

(assert (= (and b!735208 res!494100) b!735188))

(assert (= (and b!735188 res!494112) b!735192))

(assert (= (and b!735192 res!494105) b!735195))

(assert (= (and b!735195 res!494097) b!735198))

(assert (= (and b!735198 c!80926) b!735197))

(assert (= (and b!735198 (not c!80926)) b!735207))

(assert (= (and b!735198 res!494096) b!735191))

(assert (= (and b!735191 res!494101) b!735209))

(assert (= (and b!735209 res!494098) b!735196))

(assert (= (and b!735196 res!494099) b!735193))

(assert (= (and b!735209 (not res!494107)) b!735194))

(assert (= (and b!735194 c!80927) b!735189))

(assert (= (and b!735194 (not c!80927)) b!735200))

(assert (= (and b!735194 (not res!494109)) b!735201))

(assert (= (and b!735201 c!80928) b!735187))

(assert (= (and b!735201 (not c!80928)) b!735199))

(assert (= (and b!735201 (not res!494103)) b!735205))

(declare-fun m!687697 () Bool)

(assert (=> b!735193 m!687697))

(assert (=> b!735193 m!687697))

(declare-fun m!687699 () Bool)

(assert (=> b!735193 m!687699))

(declare-fun m!687701 () Bool)

(assert (=> b!735195 m!687701))

(assert (=> b!735200 m!687697))

(assert (=> b!735200 m!687697))

(declare-fun m!687703 () Bool)

(assert (=> b!735200 m!687703))

(assert (=> b!735200 m!687697))

(declare-fun m!687705 () Bool)

(assert (=> b!735200 m!687705))

(declare-fun m!687707 () Bool)

(assert (=> start!65144 m!687707))

(declare-fun m!687709 () Bool)

(assert (=> start!65144 m!687709))

(assert (=> b!735207 m!687697))

(assert (=> b!735207 m!687697))

(assert (=> b!735207 m!687703))

(assert (=> b!735187 m!687697))

(assert (=> b!735187 m!687697))

(declare-fun m!687711 () Bool)

(assert (=> b!735187 m!687711))

(assert (=> b!735196 m!687697))

(assert (=> b!735196 m!687697))

(declare-fun m!687713 () Bool)

(assert (=> b!735196 m!687713))

(declare-fun m!687715 () Bool)

(assert (=> b!735191 m!687715))

(declare-fun m!687717 () Bool)

(assert (=> b!735191 m!687717))

(declare-fun m!687719 () Bool)

(assert (=> b!735191 m!687719))

(declare-fun m!687721 () Bool)

(assert (=> b!735191 m!687721))

(declare-fun m!687723 () Bool)

(assert (=> b!735191 m!687723))

(assert (=> b!735191 m!687715))

(assert (=> b!735204 m!687697))

(assert (=> b!735204 m!687697))

(declare-fun m!687725 () Bool)

(assert (=> b!735204 m!687725))

(declare-fun m!687727 () Bool)

(assert (=> b!735206 m!687727))

(assert (=> b!735189 m!687697))

(assert (=> b!735189 m!687697))

(assert (=> b!735189 m!687711))

(declare-fun m!687729 () Bool)

(assert (=> b!735202 m!687729))

(declare-fun m!687731 () Bool)

(assert (=> b!735186 m!687731))

(assert (=> b!735199 m!687697))

(assert (=> b!735199 m!687697))

(assert (=> b!735199 m!687705))

(declare-fun m!687733 () Bool)

(assert (=> b!735209 m!687733))

(declare-fun m!687735 () Bool)

(assert (=> b!735209 m!687735))

(assert (=> b!735192 m!687697))

(assert (=> b!735192 m!687697))

(declare-fun m!687737 () Bool)

(assert (=> b!735192 m!687737))

(assert (=> b!735192 m!687737))

(assert (=> b!735192 m!687697))

(declare-fun m!687739 () Bool)

(assert (=> b!735192 m!687739))

(declare-fun m!687741 () Bool)

(assert (=> b!735194 m!687741))

(declare-fun m!687743 () Bool)

(assert (=> b!735208 m!687743))

(assert (=> b!735197 m!687697))

(assert (=> b!735197 m!687697))

(declare-fun m!687745 () Bool)

(assert (=> b!735197 m!687745))

(declare-fun m!687747 () Bool)

(assert (=> b!735205 m!687747))

(declare-fun m!687749 () Bool)

(assert (=> b!735203 m!687749))

(push 1)

