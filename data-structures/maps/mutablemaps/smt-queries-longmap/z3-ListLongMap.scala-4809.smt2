; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!66214 () Bool)

(assert start!66214)

(declare-fun res!515347 () Bool)

(declare-fun e!424859 () Bool)

(assert (=> start!66214 (=> (not res!515347) (not e!424859))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66214 (= res!515347 (validMask!0 mask!3328))))

(assert (=> start!66214 e!424859))

(assert (=> start!66214 true))

(declare-datatypes ((array!42072 0))(
  ( (array!42073 (arr!20140 (Array (_ BitVec 32) (_ BitVec 64))) (size!20561 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42072)

(declare-fun array_inv!15914 (array!42072) Bool)

(assert (=> start!66214 (array_inv!15914 a!3186)))

(declare-fun b!762066 () Bool)

(declare-fun res!515348 () Bool)

(assert (=> b!762066 (=> (not res!515348) (not e!424859))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!762066 (= res!515348 (validKeyInArray!0 (select (arr!20140 a!3186) j!159)))))

(declare-fun b!762067 () Bool)

(declare-fun res!515352 () Bool)

(assert (=> b!762067 (=> (not res!515352) (not e!424859))))

(declare-fun k0!2102 () (_ BitVec 64))

(assert (=> b!762067 (= res!515352 (validKeyInArray!0 k0!2102))))

(declare-fun b!762068 () Bool)

(declare-fun res!515353 () Bool)

(declare-fun e!424858 () Bool)

(assert (=> b!762068 (=> (not res!515353) (not e!424858))))

(declare-datatypes ((List!14195 0))(
  ( (Nil!14192) (Cons!14191 (h!15275 (_ BitVec 64)) (t!20518 List!14195)) )
))
(declare-fun arrayNoDuplicates!0 (array!42072 (_ BitVec 32) List!14195) Bool)

(assert (=> b!762068 (= res!515353 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14192))))

(declare-fun b!762069 () Bool)

(declare-fun res!515354 () Bool)

(assert (=> b!762069 (=> (not res!515354) (not e!424858))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!762069 (= res!515354 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20561 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20561 a!3186))))))

(declare-fun b!762070 () Bool)

(assert (=> b!762070 (= e!424859 e!424858)))

(declare-fun res!515349 () Bool)

(assert (=> b!762070 (=> (not res!515349) (not e!424858))))

(declare-datatypes ((SeekEntryResult!7747 0))(
  ( (MissingZero!7747 (index!33355 (_ BitVec 32))) (Found!7747 (index!33356 (_ BitVec 32))) (Intermediate!7747 (undefined!8559 Bool) (index!33357 (_ BitVec 32)) (x!64296 (_ BitVec 32))) (Undefined!7747) (MissingVacant!7747 (index!33358 (_ BitVec 32))) )
))
(declare-fun lt!339471 () SeekEntryResult!7747)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!762070 (= res!515349 (or (= lt!339471 (MissingZero!7747 i!1173)) (= lt!339471 (MissingVacant!7747 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42072 (_ BitVec 32)) SeekEntryResult!7747)

(assert (=> b!762070 (= lt!339471 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!762071 () Bool)

(assert (=> b!762071 (= e!424858 false)))

(declare-fun lt!339472 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!762071 (= lt!339472 (toIndex!0 (select (arr!20140 a!3186) j!159) mask!3328))))

(declare-fun b!762072 () Bool)

(declare-fun res!515355 () Bool)

(assert (=> b!762072 (=> (not res!515355) (not e!424859))))

(assert (=> b!762072 (= res!515355 (and (= (size!20561 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20561 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20561 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!762073 () Bool)

(declare-fun res!515350 () Bool)

(assert (=> b!762073 (=> (not res!515350) (not e!424858))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42072 (_ BitVec 32)) Bool)

(assert (=> b!762073 (= res!515350 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!762074 () Bool)

(declare-fun res!515351 () Bool)

(assert (=> b!762074 (=> (not res!515351) (not e!424859))))

(declare-fun arrayContainsKey!0 (array!42072 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!762074 (= res!515351 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(assert (= (and start!66214 res!515347) b!762072))

(assert (= (and b!762072 res!515355) b!762066))

(assert (= (and b!762066 res!515348) b!762067))

(assert (= (and b!762067 res!515352) b!762074))

(assert (= (and b!762074 res!515351) b!762070))

(assert (= (and b!762070 res!515349) b!762073))

(assert (= (and b!762073 res!515350) b!762068))

(assert (= (and b!762068 res!515353) b!762069))

(assert (= (and b!762069 res!515354) b!762071))

(declare-fun m!708937 () Bool)

(assert (=> b!762068 m!708937))

(declare-fun m!708939 () Bool)

(assert (=> b!762074 m!708939))

(declare-fun m!708941 () Bool)

(assert (=> b!762071 m!708941))

(assert (=> b!762071 m!708941))

(declare-fun m!708943 () Bool)

(assert (=> b!762071 m!708943))

(assert (=> b!762066 m!708941))

(assert (=> b!762066 m!708941))

(declare-fun m!708945 () Bool)

(assert (=> b!762066 m!708945))

(declare-fun m!708947 () Bool)

(assert (=> b!762070 m!708947))

(declare-fun m!708949 () Bool)

(assert (=> b!762073 m!708949))

(declare-fun m!708951 () Bool)

(assert (=> b!762067 m!708951))

(declare-fun m!708953 () Bool)

(assert (=> start!66214 m!708953))

(declare-fun m!708955 () Bool)

(assert (=> start!66214 m!708955))

(check-sat (not b!762071) (not b!762067) (not b!762068) (not b!762066) (not start!66214) (not b!762074) (not b!762073) (not b!762070))
(check-sat)
