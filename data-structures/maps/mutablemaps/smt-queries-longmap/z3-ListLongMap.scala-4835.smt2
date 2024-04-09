; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!66502 () Bool)

(assert start!66502)

(declare-fun b!766158 () Bool)

(declare-fun e!426675 () Bool)

(assert (=> b!766158 (= e!426675 true)))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!340836 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!766158 (= lt!340836 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun b!766159 () Bool)

(declare-datatypes ((SeekEntryResult!7825 0))(
  ( (MissingZero!7825 (index!33667 (_ BitVec 32))) (Found!7825 (index!33668 (_ BitVec 32))) (Intermediate!7825 (undefined!8637 Bool) (index!33669 (_ BitVec 32)) (x!64600 (_ BitVec 32))) (Undefined!7825) (MissingVacant!7825 (index!33670 (_ BitVec 32))) )
))
(declare-fun lt!340831 () SeekEntryResult!7825)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-datatypes ((array!42234 0))(
  ( (array!42235 (arr!20218 (Array (_ BitVec 32) (_ BitVec 64))) (size!20639 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42234)

(declare-fun e!426672 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42234 (_ BitVec 32)) SeekEntryResult!7825)

(assert (=> b!766159 (= e!426672 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20218 a!3186) j!159) a!3186 mask!3328) lt!340831))))

(declare-fun b!766160 () Bool)

(declare-fun e!426671 () Bool)

(assert (=> b!766160 (= e!426671 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20218 a!3186) j!159) a!3186 mask!3328) (Found!7825 j!159)))))

(declare-fun b!766161 () Bool)

(declare-fun e!426677 () Bool)

(assert (=> b!766161 (= e!426677 (not e!426675))))

(declare-fun res!518473 () Bool)

(assert (=> b!766161 (=> res!518473 e!426675)))

(declare-fun lt!340834 () SeekEntryResult!7825)

(get-info :version)

(assert (=> b!766161 (= res!518473 (or (not ((_ is Intermediate!7825) lt!340834)) (bvsge x!1131 (x!64600 lt!340834))))))

(declare-fun e!426670 () Bool)

(assert (=> b!766161 e!426670))

(declare-fun res!518482 () Bool)

(assert (=> b!766161 (=> (not res!518482) (not e!426670))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42234 (_ BitVec 32)) Bool)

(assert (=> b!766161 (= res!518482 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26376 0))(
  ( (Unit!26377) )
))
(declare-fun lt!340835 () Unit!26376)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42234 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26376)

(assert (=> b!766161 (= lt!340835 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!766162 () Bool)

(declare-fun res!518484 () Bool)

(declare-fun e!426669 () Bool)

(assert (=> b!766162 (=> (not res!518484) (not e!426669))))

(assert (=> b!766162 (= res!518484 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20639 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20639 a!3186))))))

(declare-fun b!766163 () Bool)

(declare-fun res!518479 () Bool)

(declare-fun e!426676 () Bool)

(assert (=> b!766163 (=> (not res!518479) (not e!426676))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!766163 (= res!518479 (validKeyInArray!0 k0!2102))))

(declare-fun b!766164 () Bool)

(assert (=> b!766164 (= e!426670 e!426672)))

(declare-fun res!518483 () Bool)

(assert (=> b!766164 (=> (not res!518483) (not e!426672))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42234 (_ BitVec 32)) SeekEntryResult!7825)

(assert (=> b!766164 (= res!518483 (= (seekEntryOrOpen!0 (select (arr!20218 a!3186) j!159) a!3186 mask!3328) lt!340831))))

(assert (=> b!766164 (= lt!340831 (Found!7825 j!159))))

(declare-fun res!518476 () Bool)

(assert (=> start!66502 (=> (not res!518476) (not e!426676))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66502 (= res!518476 (validMask!0 mask!3328))))

(assert (=> start!66502 e!426676))

(assert (=> start!66502 true))

(declare-fun array_inv!15992 (array!42234) Bool)

(assert (=> start!66502 (array_inv!15992 a!3186)))

(declare-fun b!766165 () Bool)

(declare-fun e!426674 () Bool)

(assert (=> b!766165 (= e!426674 e!426677)))

(declare-fun res!518471 () Bool)

(assert (=> b!766165 (=> (not res!518471) (not e!426677))))

(declare-fun lt!340830 () SeekEntryResult!7825)

(assert (=> b!766165 (= res!518471 (= lt!340830 lt!340834))))

(declare-fun lt!340833 () (_ BitVec 64))

(declare-fun lt!340837 () array!42234)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42234 (_ BitVec 32)) SeekEntryResult!7825)

(assert (=> b!766165 (= lt!340834 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!340833 lt!340837 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!766165 (= lt!340830 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!340833 mask!3328) lt!340833 lt!340837 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!766165 (= lt!340833 (select (store (arr!20218 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!766165 (= lt!340837 (array!42235 (store (arr!20218 a!3186) i!1173 k0!2102) (size!20639 a!3186)))))

(declare-fun b!766166 () Bool)

(declare-fun res!518472 () Bool)

(assert (=> b!766166 (=> (not res!518472) (not e!426676))))

(assert (=> b!766166 (= res!518472 (and (= (size!20639 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20639 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20639 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!766167 () Bool)

(declare-fun res!518475 () Bool)

(assert (=> b!766167 (=> (not res!518475) (not e!426674))))

(assert (=> b!766167 (= res!518475 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20218 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!766168 () Bool)

(assert (=> b!766168 (= e!426676 e!426669)))

(declare-fun res!518480 () Bool)

(assert (=> b!766168 (=> (not res!518480) (not e!426669))))

(declare-fun lt!340829 () SeekEntryResult!7825)

(assert (=> b!766168 (= res!518480 (or (= lt!340829 (MissingZero!7825 i!1173)) (= lt!340829 (MissingVacant!7825 i!1173))))))

(assert (=> b!766168 (= lt!340829 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun lt!340832 () SeekEntryResult!7825)

(declare-fun b!766169 () Bool)

(assert (=> b!766169 (= e!426671 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20218 a!3186) j!159) a!3186 mask!3328) lt!340832))))

(declare-fun b!766170 () Bool)

(declare-fun res!518474 () Bool)

(assert (=> b!766170 (=> (not res!518474) (not e!426676))))

(assert (=> b!766170 (= res!518474 (validKeyInArray!0 (select (arr!20218 a!3186) j!159)))))

(declare-fun b!766171 () Bool)

(declare-fun res!518469 () Bool)

(assert (=> b!766171 (=> (not res!518469) (not e!426669))))

(declare-datatypes ((List!14273 0))(
  ( (Nil!14270) (Cons!14269 (h!15359 (_ BitVec 64)) (t!20596 List!14273)) )
))
(declare-fun arrayNoDuplicates!0 (array!42234 (_ BitVec 32) List!14273) Bool)

(assert (=> b!766171 (= res!518469 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14270))))

(declare-fun b!766172 () Bool)

(declare-fun res!518481 () Bool)

(assert (=> b!766172 (=> (not res!518481) (not e!426676))))

(declare-fun arrayContainsKey!0 (array!42234 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!766172 (= res!518481 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!766173 () Bool)

(declare-fun res!518477 () Bool)

(assert (=> b!766173 (=> (not res!518477) (not e!426669))))

(assert (=> b!766173 (= res!518477 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!766174 () Bool)

(assert (=> b!766174 (= e!426669 e!426674)))

(declare-fun res!518470 () Bool)

(assert (=> b!766174 (=> (not res!518470) (not e!426674))))

(assert (=> b!766174 (= res!518470 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20218 a!3186) j!159) mask!3328) (select (arr!20218 a!3186) j!159) a!3186 mask!3328) lt!340832))))

(assert (=> b!766174 (= lt!340832 (Intermediate!7825 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!766175 () Bool)

(declare-fun res!518478 () Bool)

(assert (=> b!766175 (=> (not res!518478) (not e!426674))))

(assert (=> b!766175 (= res!518478 e!426671)))

(declare-fun c!84234 () Bool)

(assert (=> b!766175 (= c!84234 (bvsle x!1131 resIntermediateX!5))))

(assert (= (and start!66502 res!518476) b!766166))

(assert (= (and b!766166 res!518472) b!766170))

(assert (= (and b!766170 res!518474) b!766163))

(assert (= (and b!766163 res!518479) b!766172))

(assert (= (and b!766172 res!518481) b!766168))

(assert (= (and b!766168 res!518480) b!766173))

(assert (= (and b!766173 res!518477) b!766171))

(assert (= (and b!766171 res!518469) b!766162))

(assert (= (and b!766162 res!518484) b!766174))

(assert (= (and b!766174 res!518470) b!766167))

(assert (= (and b!766167 res!518475) b!766175))

(assert (= (and b!766175 c!84234) b!766169))

(assert (= (and b!766175 (not c!84234)) b!766160))

(assert (= (and b!766175 res!518478) b!766165))

(assert (= (and b!766165 res!518471) b!766161))

(assert (= (and b!766161 res!518482) b!766164))

(assert (= (and b!766164 res!518483) b!766159))

(assert (= (and b!766161 (not res!518473)) b!766158))

(declare-fun m!712241 () Bool)

(assert (=> b!766164 m!712241))

(assert (=> b!766164 m!712241))

(declare-fun m!712243 () Bool)

(assert (=> b!766164 m!712243))

(declare-fun m!712245 () Bool)

(assert (=> b!766168 m!712245))

(assert (=> b!766159 m!712241))

(assert (=> b!766159 m!712241))

(declare-fun m!712247 () Bool)

(assert (=> b!766159 m!712247))

(declare-fun m!712249 () Bool)

(assert (=> b!766173 m!712249))

(declare-fun m!712251 () Bool)

(assert (=> b!766171 m!712251))

(declare-fun m!712253 () Bool)

(assert (=> b!766163 m!712253))

(declare-fun m!712255 () Bool)

(assert (=> b!766167 m!712255))

(declare-fun m!712257 () Bool)

(assert (=> b!766158 m!712257))

(declare-fun m!712259 () Bool)

(assert (=> start!66502 m!712259))

(declare-fun m!712261 () Bool)

(assert (=> start!66502 m!712261))

(declare-fun m!712263 () Bool)

(assert (=> b!766161 m!712263))

(declare-fun m!712265 () Bool)

(assert (=> b!766161 m!712265))

(assert (=> b!766170 m!712241))

(assert (=> b!766170 m!712241))

(declare-fun m!712267 () Bool)

(assert (=> b!766170 m!712267))

(declare-fun m!712269 () Bool)

(assert (=> b!766172 m!712269))

(assert (=> b!766174 m!712241))

(assert (=> b!766174 m!712241))

(declare-fun m!712271 () Bool)

(assert (=> b!766174 m!712271))

(assert (=> b!766174 m!712271))

(assert (=> b!766174 m!712241))

(declare-fun m!712273 () Bool)

(assert (=> b!766174 m!712273))

(declare-fun m!712275 () Bool)

(assert (=> b!766165 m!712275))

(declare-fun m!712277 () Bool)

(assert (=> b!766165 m!712277))

(declare-fun m!712279 () Bool)

(assert (=> b!766165 m!712279))

(declare-fun m!712281 () Bool)

(assert (=> b!766165 m!712281))

(declare-fun m!712283 () Bool)

(assert (=> b!766165 m!712283))

(assert (=> b!766165 m!712281))

(assert (=> b!766160 m!712241))

(assert (=> b!766160 m!712241))

(declare-fun m!712285 () Bool)

(assert (=> b!766160 m!712285))

(assert (=> b!766169 m!712241))

(assert (=> b!766169 m!712241))

(declare-fun m!712287 () Bool)

(assert (=> b!766169 m!712287))

(check-sat (not b!766164) (not b!766163) (not b!766160) (not b!766161) (not b!766170) (not b!766169) (not b!766165) (not start!66502) (not b!766174) (not b!766158) (not b!766173) (not b!766168) (not b!766172) (not b!766159) (not b!766171))
(check-sat)
