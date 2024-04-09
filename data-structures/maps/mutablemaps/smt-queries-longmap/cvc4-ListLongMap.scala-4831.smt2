; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!66480 () Bool)

(assert start!66480)

(declare-fun b!765583 () Bool)

(declare-fun res!517974 () Bool)

(declare-fun e!426393 () Bool)

(assert (=> b!765583 (=> (not res!517974) (not e!426393))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!765583 (= res!517974 (validKeyInArray!0 k!2102))))

(declare-datatypes ((array!42212 0))(
  ( (array!42213 (arr!20207 (Array (_ BitVec 32) (_ BitVec 64))) (size!20628 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42212)

(declare-datatypes ((SeekEntryResult!7814 0))(
  ( (MissingZero!7814 (index!33623 (_ BitVec 32))) (Found!7814 (index!33624 (_ BitVec 32))) (Intermediate!7814 (undefined!8626 Bool) (index!33625 (_ BitVec 32)) (x!64557 (_ BitVec 32))) (Undefined!7814) (MissingVacant!7814 (index!33626 (_ BitVec 32))) )
))
(declare-fun lt!340592 () SeekEntryResult!7814)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun e!426398 () Bool)

(declare-fun b!765584 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42212 (_ BitVec 32)) SeekEntryResult!7814)

(assert (=> b!765584 (= e!426398 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20207 a!3186) j!159) a!3186 mask!3328) lt!340592))))

(declare-fun b!765585 () Bool)

(declare-fun e!426397 () Bool)

(declare-fun e!426392 () Bool)

(assert (=> b!765585 (= e!426397 e!426392)))

(declare-fun res!517972 () Bool)

(assert (=> b!765585 (=> (not res!517972) (not e!426392))))

(declare-fun lt!340590 () SeekEntryResult!7814)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42212 (_ BitVec 32)) SeekEntryResult!7814)

(assert (=> b!765585 (= res!517972 (= (seekEntryOrOpen!0 (select (arr!20207 a!3186) j!159) a!3186 mask!3328) lt!340590))))

(assert (=> b!765585 (= lt!340590 (Found!7814 j!159))))

(declare-fun res!517973 () Bool)

(assert (=> start!66480 (=> (not res!517973) (not e!426393))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66480 (= res!517973 (validMask!0 mask!3328))))

(assert (=> start!66480 e!426393))

(assert (=> start!66480 true))

(declare-fun array_inv!15981 (array!42212) Bool)

(assert (=> start!66480 (array_inv!15981 a!3186)))

(declare-fun b!765586 () Bool)

(declare-fun res!517963 () Bool)

(assert (=> b!765586 (=> (not res!517963) (not e!426393))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!765586 (= res!517963 (and (= (size!20628 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20628 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20628 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!765587 () Bool)

(declare-fun e!426395 () Bool)

(assert (=> b!765587 (= e!426393 e!426395)))

(declare-fun res!517962 () Bool)

(assert (=> b!765587 (=> (not res!517962) (not e!426395))))

(declare-fun lt!340593 () SeekEntryResult!7814)

(assert (=> b!765587 (= res!517962 (or (= lt!340593 (MissingZero!7814 i!1173)) (= lt!340593 (MissingVacant!7814 i!1173))))))

(assert (=> b!765587 (= lt!340593 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!765588 () Bool)

(declare-fun res!517968 () Bool)

(assert (=> b!765588 (=> (not res!517968) (not e!426393))))

(assert (=> b!765588 (= res!517968 (validKeyInArray!0 (select (arr!20207 a!3186) j!159)))))

(declare-fun b!765589 () Bool)

(declare-fun e!426394 () Bool)

(declare-fun e!426391 () Bool)

(assert (=> b!765589 (= e!426394 e!426391)))

(declare-fun res!517965 () Bool)

(assert (=> b!765589 (=> (not res!517965) (not e!426391))))

(declare-fun lt!340594 () (_ BitVec 64))

(declare-fun lt!340589 () array!42212)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!765589 (= res!517965 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!340594 mask!3328) lt!340594 lt!340589 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!340594 lt!340589 mask!3328)))))

(assert (=> b!765589 (= lt!340594 (select (store (arr!20207 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!765589 (= lt!340589 (array!42213 (store (arr!20207 a!3186) i!1173 k!2102) (size!20628 a!3186)))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun b!765590 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42212 (_ BitVec 32)) SeekEntryResult!7814)

(assert (=> b!765590 (= e!426392 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20207 a!3186) j!159) a!3186 mask!3328) lt!340590))))

(declare-fun b!765591 () Bool)

(declare-fun res!517971 () Bool)

(assert (=> b!765591 (=> (not res!517971) (not e!426395))))

(declare-datatypes ((List!14262 0))(
  ( (Nil!14259) (Cons!14258 (h!15348 (_ BitVec 64)) (t!20585 List!14262)) )
))
(declare-fun arrayNoDuplicates!0 (array!42212 (_ BitVec 32) List!14262) Bool)

(assert (=> b!765591 (= res!517971 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14259))))

(declare-fun b!765592 () Bool)

(declare-fun res!517960 () Bool)

(assert (=> b!765592 (=> (not res!517960) (not e!426395))))

(assert (=> b!765592 (= res!517960 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20628 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20628 a!3186))))))

(declare-fun b!765593 () Bool)

(declare-fun res!517970 () Bool)

(assert (=> b!765593 (=> (not res!517970) (not e!426393))))

(declare-fun arrayContainsKey!0 (array!42212 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!765593 (= res!517970 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!765594 () Bool)

(assert (=> b!765594 (= e!426398 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20207 a!3186) j!159) a!3186 mask!3328) (Found!7814 j!159)))))

(declare-fun b!765595 () Bool)

(assert (=> b!765595 (= e!426395 e!426394)))

(declare-fun res!517964 () Bool)

(assert (=> b!765595 (=> (not res!517964) (not e!426394))))

(assert (=> b!765595 (= res!517964 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20207 a!3186) j!159) mask!3328) (select (arr!20207 a!3186) j!159) a!3186 mask!3328) lt!340592))))

(assert (=> b!765595 (= lt!340592 (Intermediate!7814 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!765596 () Bool)

(declare-fun res!517961 () Bool)

(assert (=> b!765596 (=> (not res!517961) (not e!426394))))

(assert (=> b!765596 (= res!517961 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20207 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!765597 () Bool)

(assert (=> b!765597 (= e!426391 (not true))))

(assert (=> b!765597 e!426397))

(declare-fun res!517966 () Bool)

(assert (=> b!765597 (=> (not res!517966) (not e!426397))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42212 (_ BitVec 32)) Bool)

(assert (=> b!765597 (= res!517966 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26354 0))(
  ( (Unit!26355) )
))
(declare-fun lt!340591 () Unit!26354)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42212 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26354)

(assert (=> b!765597 (= lt!340591 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!765598 () Bool)

(declare-fun res!517967 () Bool)

(assert (=> b!765598 (=> (not res!517967) (not e!426395))))

(assert (=> b!765598 (= res!517967 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!765599 () Bool)

(declare-fun res!517969 () Bool)

(assert (=> b!765599 (=> (not res!517969) (not e!426394))))

(assert (=> b!765599 (= res!517969 e!426398)))

(declare-fun c!84201 () Bool)

(assert (=> b!765599 (= c!84201 (bvsle x!1131 resIntermediateX!5))))

(assert (= (and start!66480 res!517973) b!765586))

(assert (= (and b!765586 res!517963) b!765588))

(assert (= (and b!765588 res!517968) b!765583))

(assert (= (and b!765583 res!517974) b!765593))

(assert (= (and b!765593 res!517970) b!765587))

(assert (= (and b!765587 res!517962) b!765598))

(assert (= (and b!765598 res!517967) b!765591))

(assert (= (and b!765591 res!517971) b!765592))

(assert (= (and b!765592 res!517960) b!765595))

(assert (= (and b!765595 res!517964) b!765596))

(assert (= (and b!765596 res!517961) b!765599))

(assert (= (and b!765599 c!84201) b!765584))

(assert (= (and b!765599 (not c!84201)) b!765594))

(assert (= (and b!765599 res!517969) b!765589))

(assert (= (and b!765589 res!517965) b!765597))

(assert (= (and b!765597 res!517966) b!765585))

(assert (= (and b!765585 res!517972) b!765590))

(declare-fun m!711727 () Bool)

(assert (=> start!66480 m!711727))

(declare-fun m!711729 () Bool)

(assert (=> start!66480 m!711729))

(declare-fun m!711731 () Bool)

(assert (=> b!765598 m!711731))

(declare-fun m!711733 () Bool)

(assert (=> b!765597 m!711733))

(declare-fun m!711735 () Bool)

(assert (=> b!765597 m!711735))

(declare-fun m!711737 () Bool)

(assert (=> b!765594 m!711737))

(assert (=> b!765594 m!711737))

(declare-fun m!711739 () Bool)

(assert (=> b!765594 m!711739))

(declare-fun m!711741 () Bool)

(assert (=> b!765589 m!711741))

(assert (=> b!765589 m!711741))

(declare-fun m!711743 () Bool)

(assert (=> b!765589 m!711743))

(declare-fun m!711745 () Bool)

(assert (=> b!765589 m!711745))

(declare-fun m!711747 () Bool)

(assert (=> b!765589 m!711747))

(declare-fun m!711749 () Bool)

(assert (=> b!765589 m!711749))

(declare-fun m!711751 () Bool)

(assert (=> b!765591 m!711751))

(declare-fun m!711753 () Bool)

(assert (=> b!765583 m!711753))

(declare-fun m!711755 () Bool)

(assert (=> b!765587 m!711755))

(assert (=> b!765588 m!711737))

(assert (=> b!765588 m!711737))

(declare-fun m!711757 () Bool)

(assert (=> b!765588 m!711757))

(assert (=> b!765584 m!711737))

(assert (=> b!765584 m!711737))

(declare-fun m!711759 () Bool)

(assert (=> b!765584 m!711759))

(declare-fun m!711761 () Bool)

(assert (=> b!765593 m!711761))

(assert (=> b!765585 m!711737))

(assert (=> b!765585 m!711737))

(declare-fun m!711763 () Bool)

(assert (=> b!765585 m!711763))

(assert (=> b!765595 m!711737))

(assert (=> b!765595 m!711737))

(declare-fun m!711765 () Bool)

(assert (=> b!765595 m!711765))

(assert (=> b!765595 m!711765))

(assert (=> b!765595 m!711737))

(declare-fun m!711767 () Bool)

(assert (=> b!765595 m!711767))

(assert (=> b!765590 m!711737))

(assert (=> b!765590 m!711737))

(declare-fun m!711769 () Bool)

(assert (=> b!765590 m!711769))

(declare-fun m!711771 () Bool)

(assert (=> b!765596 m!711771))

(push 1)

