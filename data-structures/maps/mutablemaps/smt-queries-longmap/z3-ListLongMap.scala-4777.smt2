; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65742 () Bool)

(assert start!65742)

(declare-fun b!754261 () Bool)

(declare-fun res!509764 () Bool)

(declare-fun e!420679 () Bool)

(assert (=> b!754261 (=> (not res!509764) (not e!420679))))

(declare-datatypes ((array!41868 0))(
  ( (array!41869 (arr!20044 (Array (_ BitVec 32) (_ BitVec 64))) (size!20465 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41868)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!754261 (= res!509764 (and (= (size!20465 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20465 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20465 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!754262 () Bool)

(declare-fun e!420685 () Bool)

(declare-fun e!420690 () Bool)

(assert (=> b!754262 (= e!420685 e!420690)))

(declare-fun res!509766 () Bool)

(assert (=> b!754262 (=> res!509766 e!420690)))

(declare-datatypes ((SeekEntryResult!7651 0))(
  ( (MissingZero!7651 (index!32971 (_ BitVec 32))) (Found!7651 (index!32972 (_ BitVec 32))) (Intermediate!7651 (undefined!8463 Bool) (index!32973 (_ BitVec 32)) (x!63906 (_ BitVec 32))) (Undefined!7651) (MissingVacant!7651 (index!32974 (_ BitVec 32))) )
))
(declare-fun lt!335689 () SeekEntryResult!7651)

(declare-fun lt!335688 () SeekEntryResult!7651)

(assert (=> b!754262 (= res!509766 (not (= lt!335689 lt!335688)))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41868 (_ BitVec 32)) SeekEntryResult!7651)

(assert (=> b!754262 (= lt!335689 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20044 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!754263 () Bool)

(declare-fun e!420687 () Bool)

(declare-fun lt!335680 () SeekEntryResult!7651)

(assert (=> b!754263 (= e!420687 (= lt!335680 lt!335689))))

(declare-fun e!420682 () Bool)

(declare-fun b!754264 () Bool)

(declare-fun lt!335684 () SeekEntryResult!7651)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41868 (_ BitVec 32)) SeekEntryResult!7651)

(assert (=> b!754264 (= e!420682 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20044 a!3186) j!159) a!3186 mask!3328) lt!335684))))

(declare-fun b!754266 () Bool)

(declare-fun res!509761 () Bool)

(declare-fun e!420686 () Bool)

(assert (=> b!754266 (=> (not res!509761) (not e!420686))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41868 (_ BitVec 32)) Bool)

(assert (=> b!754266 (= res!509761 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!754267 () Bool)

(declare-datatypes ((Unit!26006 0))(
  ( (Unit!26007) )
))
(declare-fun e!420680 () Unit!26006)

(declare-fun Unit!26008 () Unit!26006)

(assert (=> b!754267 (= e!420680 Unit!26008)))

(declare-fun b!754268 () Bool)

(declare-fun e!420683 () Bool)

(assert (=> b!754268 (= e!420686 e!420683)))

(declare-fun res!509768 () Bool)

(assert (=> b!754268 (=> (not res!509768) (not e!420683))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!754268 (= res!509768 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20044 a!3186) j!159) mask!3328) (select (arr!20044 a!3186) j!159) a!3186 mask!3328) lt!335684))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!754268 (= lt!335684 (Intermediate!7651 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!754269 () Bool)

(declare-fun res!509772 () Bool)

(assert (=> b!754269 (=> (not res!509772) (not e!420679))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!754269 (= res!509772 (validKeyInArray!0 (select (arr!20044 a!3186) j!159)))))

(declare-fun b!754270 () Bool)

(declare-fun e!420688 () Bool)

(assert (=> b!754270 (= e!420683 e!420688)))

(declare-fun res!509760 () Bool)

(assert (=> b!754270 (=> (not res!509760) (not e!420688))))

(declare-fun lt!335683 () SeekEntryResult!7651)

(declare-fun lt!335687 () SeekEntryResult!7651)

(assert (=> b!754270 (= res!509760 (= lt!335683 lt!335687))))

(declare-fun lt!335686 () array!41868)

(declare-fun lt!335682 () (_ BitVec 64))

(assert (=> b!754270 (= lt!335687 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!335682 lt!335686 mask!3328))))

(assert (=> b!754270 (= lt!335683 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!335682 mask!3328) lt!335682 lt!335686 mask!3328))))

(declare-fun k0!2102 () (_ BitVec 64))

(assert (=> b!754270 (= lt!335682 (select (store (arr!20044 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!754270 (= lt!335686 (array!41869 (store (arr!20044 a!3186) i!1173 k0!2102) (size!20465 a!3186)))))

(declare-fun b!754271 () Bool)

(declare-fun res!509776 () Bool)

(assert (=> b!754271 (=> (not res!509776) (not e!420679))))

(declare-fun arrayContainsKey!0 (array!41868 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!754271 (= res!509776 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!754272 () Bool)

(declare-fun res!509778 () Bool)

(assert (=> b!754272 (=> (not res!509778) (not e!420686))))

(assert (=> b!754272 (= res!509778 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20465 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20465 a!3186))))))

(declare-fun b!754273 () Bool)

(declare-fun res!509774 () Bool)

(assert (=> b!754273 (=> (not res!509774) (not e!420679))))

(assert (=> b!754273 (= res!509774 (validKeyInArray!0 k0!2102))))

(declare-fun b!754274 () Bool)

(declare-fun res!509769 () Bool)

(assert (=> b!754274 (=> (not res!509769) (not e!420683))))

(assert (=> b!754274 (= res!509769 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20044 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!420689 () Bool)

(declare-fun b!754275 () Bool)

(assert (=> b!754275 (= e!420689 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20044 a!3186) j!159) a!3186 mask!3328) lt!335688))))

(declare-fun b!754276 () Bool)

(assert (=> b!754276 (= e!420682 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20044 a!3186) j!159) a!3186 mask!3328) (Found!7651 j!159)))))

(declare-fun b!754277 () Bool)

(assert (=> b!754277 (= e!420688 (not e!420685))))

(declare-fun res!509775 () Bool)

(assert (=> b!754277 (=> res!509775 e!420685)))

(get-info :version)

(assert (=> b!754277 (= res!509775 (or (not ((_ is Intermediate!7651) lt!335687)) (bvslt x!1131 (x!63906 lt!335687)) (not (= x!1131 (x!63906 lt!335687))) (not (= index!1321 (index!32973 lt!335687)))))))

(assert (=> b!754277 e!420689))

(declare-fun res!509777 () Bool)

(assert (=> b!754277 (=> (not res!509777) (not e!420689))))

(assert (=> b!754277 (= res!509777 (= lt!335680 lt!335688))))

(assert (=> b!754277 (= lt!335688 (Found!7651 j!159))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41868 (_ BitVec 32)) SeekEntryResult!7651)

(assert (=> b!754277 (= lt!335680 (seekEntryOrOpen!0 (select (arr!20044 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!754277 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!335681 () Unit!26006)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41868 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26006)

(assert (=> b!754277 (= lt!335681 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!754278 () Bool)

(declare-fun res!509771 () Bool)

(assert (=> b!754278 (=> (not res!509771) (not e!420683))))

(assert (=> b!754278 (= res!509771 e!420682)))

(declare-fun c!82631 () Bool)

(assert (=> b!754278 (= c!82631 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!754279 () Bool)

(declare-fun e!420684 () Bool)

(assert (=> b!754279 (= e!420690 e!420684)))

(declare-fun res!509770 () Bool)

(assert (=> b!754279 (=> res!509770 e!420684)))

(declare-fun lt!335685 () (_ BitVec 64))

(assert (=> b!754279 (= res!509770 (= lt!335685 lt!335682))))

(assert (=> b!754279 (= lt!335685 (select (store (arr!20044 a!3186) i!1173 k0!2102) index!1321))))

(declare-fun b!754280 () Bool)

(declare-fun res!509765 () Bool)

(assert (=> b!754280 (=> (not res!509765) (not e!420687))))

(assert (=> b!754280 (= res!509765 (= (seekEntryOrOpen!0 lt!335682 lt!335686 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!335682 lt!335686 mask!3328)))))

(declare-fun b!754281 () Bool)

(assert (=> b!754281 (= e!420679 e!420686)))

(declare-fun res!509773 () Bool)

(assert (=> b!754281 (=> (not res!509773) (not e!420686))))

(declare-fun lt!335690 () SeekEntryResult!7651)

(assert (=> b!754281 (= res!509773 (or (= lt!335690 (MissingZero!7651 i!1173)) (= lt!335690 (MissingVacant!7651 i!1173))))))

(assert (=> b!754281 (= lt!335690 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!754265 () Bool)

(assert (=> b!754265 (= e!420684 true)))

(assert (=> b!754265 e!420687))

(declare-fun res!509767 () Bool)

(assert (=> b!754265 (=> (not res!509767) (not e!420687))))

(assert (=> b!754265 (= res!509767 (= lt!335685 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!335679 () Unit!26006)

(assert (=> b!754265 (= lt!335679 e!420680)))

(declare-fun c!82632 () Bool)

(assert (=> b!754265 (= c!82632 (= lt!335685 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!509763 () Bool)

(assert (=> start!65742 (=> (not res!509763) (not e!420679))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65742 (= res!509763 (validMask!0 mask!3328))))

(assert (=> start!65742 e!420679))

(assert (=> start!65742 true))

(declare-fun array_inv!15818 (array!41868) Bool)

(assert (=> start!65742 (array_inv!15818 a!3186)))

(declare-fun b!754282 () Bool)

(declare-fun Unit!26009 () Unit!26006)

(assert (=> b!754282 (= e!420680 Unit!26009)))

(assert (=> b!754282 false))

(declare-fun b!754283 () Bool)

(declare-fun res!509762 () Bool)

(assert (=> b!754283 (=> (not res!509762) (not e!420686))))

(declare-datatypes ((List!14099 0))(
  ( (Nil!14096) (Cons!14095 (h!15167 (_ BitVec 64)) (t!20422 List!14099)) )
))
(declare-fun arrayNoDuplicates!0 (array!41868 (_ BitVec 32) List!14099) Bool)

(assert (=> b!754283 (= res!509762 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14096))))

(assert (= (and start!65742 res!509763) b!754261))

(assert (= (and b!754261 res!509764) b!754269))

(assert (= (and b!754269 res!509772) b!754273))

(assert (= (and b!754273 res!509774) b!754271))

(assert (= (and b!754271 res!509776) b!754281))

(assert (= (and b!754281 res!509773) b!754266))

(assert (= (and b!754266 res!509761) b!754283))

(assert (= (and b!754283 res!509762) b!754272))

(assert (= (and b!754272 res!509778) b!754268))

(assert (= (and b!754268 res!509768) b!754274))

(assert (= (and b!754274 res!509769) b!754278))

(assert (= (and b!754278 c!82631) b!754264))

(assert (= (and b!754278 (not c!82631)) b!754276))

(assert (= (and b!754278 res!509771) b!754270))

(assert (= (and b!754270 res!509760) b!754277))

(assert (= (and b!754277 res!509777) b!754275))

(assert (= (and b!754277 (not res!509775)) b!754262))

(assert (= (and b!754262 (not res!509766)) b!754279))

(assert (= (and b!754279 (not res!509770)) b!754265))

(assert (= (and b!754265 c!82632) b!754282))

(assert (= (and b!754265 (not c!82632)) b!754267))

(assert (= (and b!754265 res!509767) b!754280))

(assert (= (and b!754280 res!509765) b!754263))

(declare-fun m!702821 () Bool)

(assert (=> b!754264 m!702821))

(assert (=> b!754264 m!702821))

(declare-fun m!702823 () Bool)

(assert (=> b!754264 m!702823))

(assert (=> b!754277 m!702821))

(assert (=> b!754277 m!702821))

(declare-fun m!702825 () Bool)

(assert (=> b!754277 m!702825))

(declare-fun m!702827 () Bool)

(assert (=> b!754277 m!702827))

(declare-fun m!702829 () Bool)

(assert (=> b!754277 m!702829))

(declare-fun m!702831 () Bool)

(assert (=> b!754279 m!702831))

(declare-fun m!702833 () Bool)

(assert (=> b!754279 m!702833))

(declare-fun m!702835 () Bool)

(assert (=> start!65742 m!702835))

(declare-fun m!702837 () Bool)

(assert (=> start!65742 m!702837))

(assert (=> b!754276 m!702821))

(assert (=> b!754276 m!702821))

(declare-fun m!702839 () Bool)

(assert (=> b!754276 m!702839))

(assert (=> b!754275 m!702821))

(assert (=> b!754275 m!702821))

(declare-fun m!702841 () Bool)

(assert (=> b!754275 m!702841))

(assert (=> b!754269 m!702821))

(assert (=> b!754269 m!702821))

(declare-fun m!702843 () Bool)

(assert (=> b!754269 m!702843))

(declare-fun m!702845 () Bool)

(assert (=> b!754270 m!702845))

(assert (=> b!754270 m!702831))

(declare-fun m!702847 () Bool)

(assert (=> b!754270 m!702847))

(assert (=> b!754270 m!702847))

(declare-fun m!702849 () Bool)

(assert (=> b!754270 m!702849))

(declare-fun m!702851 () Bool)

(assert (=> b!754270 m!702851))

(declare-fun m!702853 () Bool)

(assert (=> b!754271 m!702853))

(declare-fun m!702855 () Bool)

(assert (=> b!754283 m!702855))

(assert (=> b!754268 m!702821))

(assert (=> b!754268 m!702821))

(declare-fun m!702857 () Bool)

(assert (=> b!754268 m!702857))

(assert (=> b!754268 m!702857))

(assert (=> b!754268 m!702821))

(declare-fun m!702859 () Bool)

(assert (=> b!754268 m!702859))

(declare-fun m!702861 () Bool)

(assert (=> b!754273 m!702861))

(declare-fun m!702863 () Bool)

(assert (=> b!754281 m!702863))

(declare-fun m!702865 () Bool)

(assert (=> b!754274 m!702865))

(declare-fun m!702867 () Bool)

(assert (=> b!754266 m!702867))

(declare-fun m!702869 () Bool)

(assert (=> b!754280 m!702869))

(declare-fun m!702871 () Bool)

(assert (=> b!754280 m!702871))

(assert (=> b!754262 m!702821))

(assert (=> b!754262 m!702821))

(assert (=> b!754262 m!702839))

(check-sat (not b!754268) (not b!754276) (not b!754262) (not b!754280) (not start!65742) (not b!754264) (not b!754275) (not b!754271) (not b!754273) (not b!754283) (not b!754277) (not b!754269) (not b!754270) (not b!754281) (not b!754266))
(check-sat)
