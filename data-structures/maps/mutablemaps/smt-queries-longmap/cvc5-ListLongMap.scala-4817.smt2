; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!66260 () Bool)

(assert start!66260)

(declare-fun b!762841 () Bool)

(declare-fun res!516051 () Bool)

(declare-fun e!425143 () Bool)

(assert (=> b!762841 (=> (not res!516051) (not e!425143))))

(declare-datatypes ((array!42118 0))(
  ( (array!42119 (arr!20163 (Array (_ BitVec 32) (_ BitVec 64))) (size!20584 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42118)

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42118 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!762841 (= res!516051 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!762842 () Bool)

(declare-fun res!516053 () Bool)

(declare-fun e!425142 () Bool)

(assert (=> b!762842 (=> (not res!516053) (not e!425142))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42118 (_ BitVec 32)) Bool)

(assert (=> b!762842 (= res!516053 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!762843 () Bool)

(declare-fun res!516052 () Bool)

(assert (=> b!762843 (=> (not res!516052) (not e!425142))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!762843 (= res!516052 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20584 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20584 a!3186))))))

(declare-fun b!762844 () Bool)

(declare-fun res!516050 () Bool)

(declare-fun e!425144 () Bool)

(assert (=> b!762844 (=> (not res!516050) (not e!425144))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!762844 (= res!516050 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20163 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!762845 () Bool)

(declare-fun res!516057 () Bool)

(assert (=> b!762845 (=> (not res!516057) (not e!425144))))

(declare-fun e!425140 () Bool)

(assert (=> b!762845 (= res!516057 e!425140)))

(declare-fun c!83784 () Bool)

(assert (=> b!762845 (= c!83784 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!762846 () Bool)

(assert (=> b!762846 (= e!425142 e!425144)))

(declare-fun res!516055 () Bool)

(assert (=> b!762846 (=> (not res!516055) (not e!425144))))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7770 0))(
  ( (MissingZero!7770 (index!33447 (_ BitVec 32))) (Found!7770 (index!33448 (_ BitVec 32))) (Intermediate!7770 (undefined!8582 Bool) (index!33449 (_ BitVec 32)) (x!64383 (_ BitVec 32))) (Undefined!7770) (MissingVacant!7770 (index!33450 (_ BitVec 32))) )
))
(declare-fun lt!339648 () SeekEntryResult!7770)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42118 (_ BitVec 32)) SeekEntryResult!7770)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!762846 (= res!516055 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20163 a!3186) j!159) mask!3328) (select (arr!20163 a!3186) j!159) a!3186 mask!3328) lt!339648))))

(assert (=> b!762846 (= lt!339648 (Intermediate!7770 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!762847 () Bool)

(declare-fun res!516049 () Bool)

(assert (=> b!762847 (=> (not res!516049) (not e!425143))))

(assert (=> b!762847 (= res!516049 (and (= (size!20584 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20584 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20584 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!762848 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42118 (_ BitVec 32)) SeekEntryResult!7770)

(assert (=> b!762848 (= e!425140 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20163 a!3186) j!159) a!3186 mask!3328) (Found!7770 j!159)))))

(declare-fun b!762849 () Bool)

(assert (=> b!762849 (= e!425143 e!425142)))

(declare-fun res!516054 () Bool)

(assert (=> b!762849 (=> (not res!516054) (not e!425142))))

(declare-fun lt!339649 () SeekEntryResult!7770)

(assert (=> b!762849 (= res!516054 (or (= lt!339649 (MissingZero!7770 i!1173)) (= lt!339649 (MissingVacant!7770 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42118 (_ BitVec 32)) SeekEntryResult!7770)

(assert (=> b!762849 (= lt!339649 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!762850 () Bool)

(assert (=> b!762850 (= e!425144 false)))

(declare-fun lt!339647 () (_ BitVec 32))

(assert (=> b!762850 (= lt!339647 (toIndex!0 (select (store (arr!20163 a!3186) i!1173 k!2102) j!159) mask!3328))))

(declare-fun b!762851 () Bool)

(declare-fun res!516056 () Bool)

(assert (=> b!762851 (=> (not res!516056) (not e!425143))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!762851 (= res!516056 (validKeyInArray!0 (select (arr!20163 a!3186) j!159)))))

(declare-fun b!762853 () Bool)

(assert (=> b!762853 (= e!425140 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20163 a!3186) j!159) a!3186 mask!3328) lt!339648))))

(declare-fun b!762854 () Bool)

(declare-fun res!516046 () Bool)

(assert (=> b!762854 (=> (not res!516046) (not e!425142))))

(declare-datatypes ((List!14218 0))(
  ( (Nil!14215) (Cons!14214 (h!15298 (_ BitVec 64)) (t!20541 List!14218)) )
))
(declare-fun arrayNoDuplicates!0 (array!42118 (_ BitVec 32) List!14218) Bool)

(assert (=> b!762854 (= res!516046 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14215))))

(declare-fun res!516047 () Bool)

(assert (=> start!66260 (=> (not res!516047) (not e!425143))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66260 (= res!516047 (validMask!0 mask!3328))))

(assert (=> start!66260 e!425143))

(assert (=> start!66260 true))

(declare-fun array_inv!15937 (array!42118) Bool)

(assert (=> start!66260 (array_inv!15937 a!3186)))

(declare-fun b!762852 () Bool)

(declare-fun res!516048 () Bool)

(assert (=> b!762852 (=> (not res!516048) (not e!425143))))

(assert (=> b!762852 (= res!516048 (validKeyInArray!0 k!2102))))

(assert (= (and start!66260 res!516047) b!762847))

(assert (= (and b!762847 res!516049) b!762851))

(assert (= (and b!762851 res!516056) b!762852))

(assert (= (and b!762852 res!516048) b!762841))

(assert (= (and b!762841 res!516051) b!762849))

(assert (= (and b!762849 res!516054) b!762842))

(assert (= (and b!762842 res!516053) b!762854))

(assert (= (and b!762854 res!516046) b!762843))

(assert (= (and b!762843 res!516052) b!762846))

(assert (= (and b!762846 res!516055) b!762844))

(assert (= (and b!762844 res!516050) b!762845))

(assert (= (and b!762845 c!83784) b!762853))

(assert (= (and b!762845 (not c!83784)) b!762848))

(assert (= (and b!762845 res!516057) b!762850))

(declare-fun m!709511 () Bool)

(assert (=> b!762846 m!709511))

(assert (=> b!762846 m!709511))

(declare-fun m!709513 () Bool)

(assert (=> b!762846 m!709513))

(assert (=> b!762846 m!709513))

(assert (=> b!762846 m!709511))

(declare-fun m!709515 () Bool)

(assert (=> b!762846 m!709515))

(assert (=> b!762848 m!709511))

(assert (=> b!762848 m!709511))

(declare-fun m!709517 () Bool)

(assert (=> b!762848 m!709517))

(declare-fun m!709519 () Bool)

(assert (=> b!762844 m!709519))

(declare-fun m!709521 () Bool)

(assert (=> b!762850 m!709521))

(declare-fun m!709523 () Bool)

(assert (=> b!762850 m!709523))

(assert (=> b!762850 m!709523))

(declare-fun m!709525 () Bool)

(assert (=> b!762850 m!709525))

(declare-fun m!709527 () Bool)

(assert (=> b!762849 m!709527))

(declare-fun m!709529 () Bool)

(assert (=> b!762852 m!709529))

(assert (=> b!762851 m!709511))

(assert (=> b!762851 m!709511))

(declare-fun m!709531 () Bool)

(assert (=> b!762851 m!709531))

(assert (=> b!762853 m!709511))

(assert (=> b!762853 m!709511))

(declare-fun m!709533 () Bool)

(assert (=> b!762853 m!709533))

(declare-fun m!709535 () Bool)

(assert (=> b!762854 m!709535))

(declare-fun m!709537 () Bool)

(assert (=> start!66260 m!709537))

(declare-fun m!709539 () Bool)

(assert (=> start!66260 m!709539))

(declare-fun m!709541 () Bool)

(assert (=> b!762841 m!709541))

(declare-fun m!709543 () Bool)

(assert (=> b!762842 m!709543))

(push 1)

