; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!66246 () Bool)

(assert start!66246)

(declare-fun b!762566 () Bool)

(declare-fun res!515822 () Bool)

(declare-fun e!425039 () Bool)

(assert (=> b!762566 (=> (not res!515822) (not e!425039))))

(declare-datatypes ((array!42104 0))(
  ( (array!42105 (arr!20156 (Array (_ BitVec 32) (_ BitVec 64))) (size!20577 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42104)

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42104 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!762566 (= res!515822 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!762567 () Bool)

(declare-fun e!425036 () Bool)

(declare-fun e!425035 () Bool)

(assert (=> b!762567 (= e!425036 e!425035)))

(declare-fun res!515821 () Bool)

(assert (=> b!762567 (=> (not res!515821) (not e!425035))))

(declare-datatypes ((SeekEntryResult!7763 0))(
  ( (MissingZero!7763 (index!33419 (_ BitVec 32))) (Found!7763 (index!33420 (_ BitVec 32))) (Intermediate!7763 (undefined!8575 Bool) (index!33421 (_ BitVec 32)) (x!64352 (_ BitVec 32))) (Undefined!7763) (MissingVacant!7763 (index!33422 (_ BitVec 32))) )
))
(declare-fun lt!339586 () SeekEntryResult!7763)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42104 (_ BitVec 32)) SeekEntryResult!7763)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!762567 (= res!515821 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20156 a!3186) j!159) mask!3328) (select (arr!20156 a!3186) j!159) a!3186 mask!3328) lt!339586))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!762567 (= lt!339586 (Intermediate!7763 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!762568 () Bool)

(assert (=> b!762568 (= e!425035 false)))

(declare-fun lt!339584 () Bool)

(declare-fun e!425037 () Bool)

(assert (=> b!762568 (= lt!339584 e!425037)))

(declare-fun c!83763 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!762568 (= c!83763 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!762569 () Bool)

(declare-fun res!515820 () Bool)

(assert (=> b!762569 (=> (not res!515820) (not e!425036))))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!762569 (= res!515820 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20577 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20577 a!3186))))))

(declare-fun b!762570 () Bool)

(assert (=> b!762570 (= e!425039 e!425036)))

(declare-fun res!515813 () Bool)

(assert (=> b!762570 (=> (not res!515813) (not e!425036))))

(declare-fun lt!339585 () SeekEntryResult!7763)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!762570 (= res!515813 (or (= lt!339585 (MissingZero!7763 i!1173)) (= lt!339585 (MissingVacant!7763 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42104 (_ BitVec 32)) SeekEntryResult!7763)

(assert (=> b!762570 (= lt!339585 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!762571 () Bool)

(declare-fun res!515817 () Bool)

(assert (=> b!762571 (=> (not res!515817) (not e!425039))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!762571 (= res!515817 (validKeyInArray!0 (select (arr!20156 a!3186) j!159)))))

(declare-fun b!762572 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42104 (_ BitVec 32)) SeekEntryResult!7763)

(assert (=> b!762572 (= e!425037 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20156 a!3186) j!159) a!3186 mask!3328) (Found!7763 j!159))))))

(declare-fun res!515815 () Bool)

(assert (=> start!66246 (=> (not res!515815) (not e!425039))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66246 (= res!515815 (validMask!0 mask!3328))))

(assert (=> start!66246 e!425039))

(assert (=> start!66246 true))

(declare-fun array_inv!15930 (array!42104) Bool)

(assert (=> start!66246 (array_inv!15930 a!3186)))

(declare-fun b!762573 () Bool)

(declare-fun res!515823 () Bool)

(assert (=> b!762573 (=> (not res!515823) (not e!425039))))

(assert (=> b!762573 (= res!515823 (and (= (size!20577 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20577 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20577 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!762574 () Bool)

(declare-fun res!515816 () Bool)

(assert (=> b!762574 (=> (not res!515816) (not e!425035))))

(assert (=> b!762574 (= res!515816 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20156 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!762575 () Bool)

(declare-fun res!515818 () Bool)

(assert (=> b!762575 (=> (not res!515818) (not e!425036))))

(declare-datatypes ((List!14211 0))(
  ( (Nil!14208) (Cons!14207 (h!15291 (_ BitVec 64)) (t!20534 List!14211)) )
))
(declare-fun arrayNoDuplicates!0 (array!42104 (_ BitVec 32) List!14211) Bool)

(assert (=> b!762575 (= res!515818 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14208))))

(declare-fun b!762576 () Bool)

(assert (=> b!762576 (= e!425037 (not (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20156 a!3186) j!159) a!3186 mask!3328) lt!339586)))))

(declare-fun b!762577 () Bool)

(declare-fun res!515819 () Bool)

(assert (=> b!762577 (=> (not res!515819) (not e!425039))))

(assert (=> b!762577 (= res!515819 (validKeyInArray!0 k!2102))))

(declare-fun b!762578 () Bool)

(declare-fun res!515814 () Bool)

(assert (=> b!762578 (=> (not res!515814) (not e!425036))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42104 (_ BitVec 32)) Bool)

(assert (=> b!762578 (= res!515814 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(assert (= (and start!66246 res!515815) b!762573))

(assert (= (and b!762573 res!515823) b!762571))

(assert (= (and b!762571 res!515817) b!762577))

(assert (= (and b!762577 res!515819) b!762566))

(assert (= (and b!762566 res!515822) b!762570))

(assert (= (and b!762570 res!515813) b!762578))

(assert (= (and b!762578 res!515814) b!762575))

(assert (= (and b!762575 res!515818) b!762569))

(assert (= (and b!762569 res!515820) b!762567))

(assert (= (and b!762567 res!515821) b!762574))

(assert (= (and b!762574 res!515816) b!762568))

(assert (= (and b!762568 c!83763) b!762576))

(assert (= (and b!762568 (not c!83763)) b!762572))

(declare-fun m!709315 () Bool)

(assert (=> b!762577 m!709315))

(declare-fun m!709317 () Bool)

(assert (=> b!762575 m!709317))

(declare-fun m!709319 () Bool)

(assert (=> b!762574 m!709319))

(declare-fun m!709321 () Bool)

(assert (=> b!762567 m!709321))

(assert (=> b!762567 m!709321))

(declare-fun m!709323 () Bool)

(assert (=> b!762567 m!709323))

(assert (=> b!762567 m!709323))

(assert (=> b!762567 m!709321))

(declare-fun m!709325 () Bool)

(assert (=> b!762567 m!709325))

(declare-fun m!709327 () Bool)

(assert (=> start!66246 m!709327))

(declare-fun m!709329 () Bool)

(assert (=> start!66246 m!709329))

(declare-fun m!709331 () Bool)

(assert (=> b!762578 m!709331))

(declare-fun m!709333 () Bool)

(assert (=> b!762570 m!709333))

(assert (=> b!762571 m!709321))

(assert (=> b!762571 m!709321))

(declare-fun m!709335 () Bool)

(assert (=> b!762571 m!709335))

(declare-fun m!709337 () Bool)

(assert (=> b!762566 m!709337))

(assert (=> b!762572 m!709321))

(assert (=> b!762572 m!709321))

(declare-fun m!709339 () Bool)

(assert (=> b!762572 m!709339))

(assert (=> b!762576 m!709321))

(assert (=> b!762576 m!709321))

(declare-fun m!709341 () Bool)

(assert (=> b!762576 m!709341))

(push 1)

