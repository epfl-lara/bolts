; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!67362 () Bool)

(assert start!67362)

(declare-fun b!778573 () Bool)

(declare-fun res!526784 () Bool)

(declare-fun e!433196 () Bool)

(assert (=> b!778573 (=> (not res!526784) (not e!433196))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!42546 0))(
  ( (array!42547 (arr!20362 (Array (_ BitVec 32) (_ BitVec 64))) (size!20783 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42546)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!778573 (= res!526784 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20783 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20783 a!3186))))))

(declare-fun b!778574 () Bool)

(declare-fun e!433192 () Bool)

(declare-fun e!433191 () Bool)

(assert (=> b!778574 (= e!433192 e!433191)))

(declare-fun res!526787 () Bool)

(assert (=> b!778574 (=> (not res!526787) (not e!433191))))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7969 0))(
  ( (MissingZero!7969 (index!34243 (_ BitVec 32))) (Found!7969 (index!34244 (_ BitVec 32))) (Intermediate!7969 (undefined!8781 Bool) (index!34245 (_ BitVec 32)) (x!65219 (_ BitVec 32))) (Undefined!7969) (MissingVacant!7969 (index!34246 (_ BitVec 32))) )
))
(declare-fun lt!346892 () SeekEntryResult!7969)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42546 (_ BitVec 32)) SeekEntryResult!7969)

(assert (=> b!778574 (= res!526787 (= (seekEntryOrOpen!0 (select (arr!20362 a!3186) j!159) a!3186 mask!3328) lt!346892))))

(assert (=> b!778574 (= lt!346892 (Found!7969 j!159))))

(declare-fun b!778575 () Bool)

(declare-fun e!433194 () Bool)

(declare-fun e!433195 () Bool)

(assert (=> b!778575 (= e!433194 (not e!433195))))

(declare-fun res!526791 () Bool)

(assert (=> b!778575 (=> res!526791 e!433195)))

(declare-fun lt!346888 () SeekEntryResult!7969)

(get-info :version)

(assert (=> b!778575 (= res!526791 (or (not ((_ is Intermediate!7969) lt!346888)) (bvslt x!1131 (x!65219 lt!346888)) (not (= x!1131 (x!65219 lt!346888))) (not (= index!1321 (index!34245 lt!346888)))))))

(assert (=> b!778575 e!433192))

(declare-fun res!526785 () Bool)

(assert (=> b!778575 (=> (not res!526785) (not e!433192))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42546 (_ BitVec 32)) Bool)

(assert (=> b!778575 (= res!526785 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26832 0))(
  ( (Unit!26833) )
))
(declare-fun lt!346889 () Unit!26832)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42546 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26832)

(assert (=> b!778575 (= lt!346889 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!778576 () Bool)

(declare-fun res!526788 () Bool)

(declare-fun e!433197 () Bool)

(assert (=> b!778576 (=> (not res!526788) (not e!433197))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!778576 (= res!526788 (validKeyInArray!0 k0!2102))))

(declare-fun b!778577 () Bool)

(declare-fun res!526782 () Bool)

(declare-fun e!433193 () Bool)

(assert (=> b!778577 (=> (not res!526782) (not e!433193))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!778577 (= res!526782 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20362 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!778578 () Bool)

(assert (=> b!778578 (= e!433193 e!433194)))

(declare-fun res!526789 () Bool)

(assert (=> b!778578 (=> (not res!526789) (not e!433194))))

(declare-fun lt!346887 () SeekEntryResult!7969)

(assert (=> b!778578 (= res!526789 (= lt!346887 lt!346888))))

(declare-fun lt!346890 () array!42546)

(declare-fun lt!346886 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42546 (_ BitVec 32)) SeekEntryResult!7969)

(assert (=> b!778578 (= lt!346888 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!346886 lt!346890 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!778578 (= lt!346887 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!346886 mask!3328) lt!346886 lt!346890 mask!3328))))

(assert (=> b!778578 (= lt!346886 (select (store (arr!20362 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!778578 (= lt!346890 (array!42547 (store (arr!20362 a!3186) i!1173 k0!2102) (size!20783 a!3186)))))

(declare-fun b!778579 () Bool)

(declare-fun lt!346893 () SeekEntryResult!7969)

(declare-fun e!433198 () Bool)

(assert (=> b!778579 (= e!433198 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20362 a!3186) j!159) a!3186 mask!3328) lt!346893))))

(declare-fun b!778580 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42546 (_ BitVec 32)) SeekEntryResult!7969)

(assert (=> b!778580 (= e!433191 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20362 a!3186) j!159) a!3186 mask!3328) lt!346892))))

(declare-fun b!778582 () Bool)

(assert (=> b!778582 (= e!433197 e!433196)))

(declare-fun res!526790 () Bool)

(assert (=> b!778582 (=> (not res!526790) (not e!433196))))

(declare-fun lt!346894 () SeekEntryResult!7969)

(assert (=> b!778582 (= res!526790 (or (= lt!346894 (MissingZero!7969 i!1173)) (= lt!346894 (MissingVacant!7969 i!1173))))))

(assert (=> b!778582 (= lt!346894 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!778583 () Bool)

(declare-fun res!526778 () Bool)

(assert (=> b!778583 (=> (not res!526778) (not e!433196))))

(declare-datatypes ((List!14417 0))(
  ( (Nil!14414) (Cons!14413 (h!15527 (_ BitVec 64)) (t!20740 List!14417)) )
))
(declare-fun arrayNoDuplicates!0 (array!42546 (_ BitVec 32) List!14417) Bool)

(assert (=> b!778583 (= res!526778 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14414))))

(declare-fun b!778584 () Bool)

(declare-fun res!526786 () Bool)

(assert (=> b!778584 (=> (not res!526786) (not e!433197))))

(assert (=> b!778584 (= res!526786 (validKeyInArray!0 (select (arr!20362 a!3186) j!159)))))

(declare-fun res!526792 () Bool)

(assert (=> start!67362 (=> (not res!526792) (not e!433197))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67362 (= res!526792 (validMask!0 mask!3328))))

(assert (=> start!67362 e!433197))

(assert (=> start!67362 true))

(declare-fun array_inv!16136 (array!42546) Bool)

(assert (=> start!67362 (array_inv!16136 a!3186)))

(declare-fun b!778581 () Bool)

(declare-fun res!526783 () Bool)

(assert (=> b!778581 (=> (not res!526783) (not e!433197))))

(assert (=> b!778581 (= res!526783 (and (= (size!20783 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20783 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20783 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!778585 () Bool)

(declare-fun res!526779 () Bool)

(assert (=> b!778585 (=> (not res!526779) (not e!433196))))

(assert (=> b!778585 (= res!526779 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!778586 () Bool)

(declare-fun res!526777 () Bool)

(assert (=> b!778586 (=> (not res!526777) (not e!433193))))

(assert (=> b!778586 (= res!526777 e!433198)))

(declare-fun c!86301 () Bool)

(assert (=> b!778586 (= c!86301 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!778587 () Bool)

(assert (=> b!778587 (= e!433198 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20362 a!3186) j!159) a!3186 mask!3328) (Found!7969 j!159)))))

(declare-fun b!778588 () Bool)

(assert (=> b!778588 (= e!433196 e!433193)))

(declare-fun res!526781 () Bool)

(assert (=> b!778588 (=> (not res!526781) (not e!433193))))

(assert (=> b!778588 (= res!526781 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20362 a!3186) j!159) mask!3328) (select (arr!20362 a!3186) j!159) a!3186 mask!3328) lt!346893))))

(assert (=> b!778588 (= lt!346893 (Intermediate!7969 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!778589 () Bool)

(assert (=> b!778589 (= e!433195 true)))

(declare-fun lt!346891 () SeekEntryResult!7969)

(assert (=> b!778589 (= lt!346891 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20362 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!778590 () Bool)

(declare-fun res!526780 () Bool)

(assert (=> b!778590 (=> (not res!526780) (not e!433197))))

(declare-fun arrayContainsKey!0 (array!42546 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!778590 (= res!526780 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(assert (= (and start!67362 res!526792) b!778581))

(assert (= (and b!778581 res!526783) b!778584))

(assert (= (and b!778584 res!526786) b!778576))

(assert (= (and b!778576 res!526788) b!778590))

(assert (= (and b!778590 res!526780) b!778582))

(assert (= (and b!778582 res!526790) b!778585))

(assert (= (and b!778585 res!526779) b!778583))

(assert (= (and b!778583 res!526778) b!778573))

(assert (= (and b!778573 res!526784) b!778588))

(assert (= (and b!778588 res!526781) b!778577))

(assert (= (and b!778577 res!526782) b!778586))

(assert (= (and b!778586 c!86301) b!778579))

(assert (= (and b!778586 (not c!86301)) b!778587))

(assert (= (and b!778586 res!526777) b!778578))

(assert (= (and b!778578 res!526789) b!778575))

(assert (= (and b!778575 res!526785) b!778574))

(assert (= (and b!778574 res!526787) b!778580))

(assert (= (and b!778575 (not res!526791)) b!778589))

(declare-fun m!722261 () Bool)

(assert (=> b!778578 m!722261))

(declare-fun m!722263 () Bool)

(assert (=> b!778578 m!722263))

(assert (=> b!778578 m!722261))

(declare-fun m!722265 () Bool)

(assert (=> b!778578 m!722265))

(declare-fun m!722267 () Bool)

(assert (=> b!778578 m!722267))

(declare-fun m!722269 () Bool)

(assert (=> b!778578 m!722269))

(declare-fun m!722271 () Bool)

(assert (=> b!778589 m!722271))

(assert (=> b!778589 m!722271))

(declare-fun m!722273 () Bool)

(assert (=> b!778589 m!722273))

(assert (=> b!778588 m!722271))

(assert (=> b!778588 m!722271))

(declare-fun m!722275 () Bool)

(assert (=> b!778588 m!722275))

(assert (=> b!778588 m!722275))

(assert (=> b!778588 m!722271))

(declare-fun m!722277 () Bool)

(assert (=> b!778588 m!722277))

(declare-fun m!722279 () Bool)

(assert (=> b!778576 m!722279))

(assert (=> b!778587 m!722271))

(assert (=> b!778587 m!722271))

(assert (=> b!778587 m!722273))

(declare-fun m!722281 () Bool)

(assert (=> b!778575 m!722281))

(declare-fun m!722283 () Bool)

(assert (=> b!778575 m!722283))

(declare-fun m!722285 () Bool)

(assert (=> start!67362 m!722285))

(declare-fun m!722287 () Bool)

(assert (=> start!67362 m!722287))

(declare-fun m!722289 () Bool)

(assert (=> b!778590 m!722289))

(declare-fun m!722291 () Bool)

(assert (=> b!778582 m!722291))

(declare-fun m!722293 () Bool)

(assert (=> b!778585 m!722293))

(assert (=> b!778584 m!722271))

(assert (=> b!778584 m!722271))

(declare-fun m!722295 () Bool)

(assert (=> b!778584 m!722295))

(assert (=> b!778580 m!722271))

(assert (=> b!778580 m!722271))

(declare-fun m!722297 () Bool)

(assert (=> b!778580 m!722297))

(declare-fun m!722299 () Bool)

(assert (=> b!778577 m!722299))

(assert (=> b!778579 m!722271))

(assert (=> b!778579 m!722271))

(declare-fun m!722301 () Bool)

(assert (=> b!778579 m!722301))

(declare-fun m!722303 () Bool)

(assert (=> b!778583 m!722303))

(assert (=> b!778574 m!722271))

(assert (=> b!778574 m!722271))

(declare-fun m!722305 () Bool)

(assert (=> b!778574 m!722305))

(check-sat (not start!67362) (not b!778582) (not b!778590) (not b!778589) (not b!778580) (not b!778575) (not b!778579) (not b!778587) (not b!778588) (not b!778574) (not b!778578) (not b!778583) (not b!778576) (not b!778584) (not b!778585))
(check-sat)
