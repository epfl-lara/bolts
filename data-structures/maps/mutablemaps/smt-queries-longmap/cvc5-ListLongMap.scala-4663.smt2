; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64768 () Bool)

(assert start!64768)

(declare-fun b!730907 () Bool)

(declare-fun e!409021 () Bool)

(declare-fun e!409029 () Bool)

(assert (=> b!730907 (= e!409021 e!409029)))

(declare-fun res!491288 () Bool)

(assert (=> b!730907 (=> (not res!491288) (not e!409029))))

(declare-datatypes ((array!41170 0))(
  ( (array!41171 (arr!19701 (Array (_ BitVec 32) (_ BitVec 64))) (size!20122 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41170)

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7308 0))(
  ( (MissingZero!7308 (index!31599 (_ BitVec 32))) (Found!7308 (index!31600 (_ BitVec 32))) (Intermediate!7308 (undefined!8120 Bool) (index!31601 (_ BitVec 32)) (x!62603 (_ BitVec 32))) (Undefined!7308) (MissingVacant!7308 (index!31602 (_ BitVec 32))) )
))
(declare-fun lt!323923 () SeekEntryResult!7308)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41170 (_ BitVec 32)) SeekEntryResult!7308)

(assert (=> b!730907 (= res!491288 (= (seekEntryOrOpen!0 (select (arr!19701 a!3186) j!159) a!3186 mask!3328) lt!323923))))

(assert (=> b!730907 (= lt!323923 (Found!7308 j!159))))

(declare-fun b!730908 () Bool)

(declare-fun res!491290 () Bool)

(declare-fun e!409025 () Bool)

(assert (=> b!730908 (=> (not res!491290) (not e!409025))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!730908 (= res!491290 (validKeyInArray!0 (select (arr!19701 a!3186) j!159)))))

(declare-fun res!491281 () Bool)

(assert (=> start!64768 (=> (not res!491281) (not e!409025))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64768 (= res!491281 (validMask!0 mask!3328))))

(assert (=> start!64768 e!409025))

(assert (=> start!64768 true))

(declare-fun array_inv!15475 (array!41170) Bool)

(assert (=> start!64768 (array_inv!15475 a!3186)))

(declare-fun b!730909 () Bool)

(declare-fun e!409022 () Bool)

(declare-fun e!409028 () Bool)

(assert (=> b!730909 (= e!409022 e!409028)))

(declare-fun res!491282 () Bool)

(assert (=> b!730909 (=> (not res!491282) (not e!409028))))

(declare-fun lt!323925 () SeekEntryResult!7308)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41170 (_ BitVec 32)) SeekEntryResult!7308)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!730909 (= res!491282 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19701 a!3186) j!159) mask!3328) (select (arr!19701 a!3186) j!159) a!3186 mask!3328) lt!323925))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!730909 (= lt!323925 (Intermediate!7308 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!730910 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41170 (_ BitVec 32)) SeekEntryResult!7308)

(assert (=> b!730910 (= e!409029 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19701 a!3186) j!159) a!3186 mask!3328) lt!323923))))

(declare-fun b!730911 () Bool)

(declare-fun e!409026 () Bool)

(declare-fun e!409023 () Bool)

(assert (=> b!730911 (= e!409026 e!409023)))

(declare-fun res!491284 () Bool)

(assert (=> b!730911 (=> res!491284 e!409023)))

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!730911 (= res!491284 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun lt!323922 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!730911 (= lt!323922 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!730912 () Bool)

(declare-fun e!409027 () Bool)

(assert (=> b!730912 (= e!409027 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19701 a!3186) j!159) a!3186 mask!3328) lt!323925))))

(declare-fun b!730913 () Bool)

(declare-fun res!491292 () Bool)

(assert (=> b!730913 (=> (not res!491292) (not e!409028))))

(assert (=> b!730913 (= res!491292 e!409027)))

(declare-fun c!80190 () Bool)

(assert (=> b!730913 (= c!80190 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!730914 () Bool)

(declare-fun res!491278 () Bool)

(assert (=> b!730914 (=> (not res!491278) (not e!409028))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!730914 (= res!491278 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19701 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!730915 () Bool)

(assert (=> b!730915 (= e!409025 e!409022)))

(declare-fun res!491283 () Bool)

(assert (=> b!730915 (=> (not res!491283) (not e!409022))))

(declare-fun lt!323924 () SeekEntryResult!7308)

(assert (=> b!730915 (= res!491283 (or (= lt!323924 (MissingZero!7308 i!1173)) (= lt!323924 (MissingVacant!7308 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!730915 (= lt!323924 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!730916 () Bool)

(assert (=> b!730916 (= e!409027 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19701 a!3186) j!159) a!3186 mask!3328) (Found!7308 j!159)))))

(declare-fun b!730917 () Bool)

(declare-fun res!491289 () Bool)

(assert (=> b!730917 (=> (not res!491289) (not e!409022))))

(declare-datatypes ((List!13756 0))(
  ( (Nil!13753) (Cons!13752 (h!14812 (_ BitVec 64)) (t!20079 List!13756)) )
))
(declare-fun arrayNoDuplicates!0 (array!41170 (_ BitVec 32) List!13756) Bool)

(assert (=> b!730917 (= res!491289 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13753))))

(declare-fun b!730918 () Bool)

(declare-fun res!491279 () Bool)

(assert (=> b!730918 (=> (not res!491279) (not e!409025))))

(assert (=> b!730918 (= res!491279 (validKeyInArray!0 k!2102))))

(declare-fun b!730919 () Bool)

(declare-fun e!409024 () Bool)

(assert (=> b!730919 (= e!409024 (not e!409026))))

(declare-fun res!491286 () Bool)

(assert (=> b!730919 (=> res!491286 e!409026)))

(declare-fun lt!323918 () SeekEntryResult!7308)

(assert (=> b!730919 (= res!491286 (or (not (is-Intermediate!7308 lt!323918)) (bvsge x!1131 (x!62603 lt!323918))))))

(assert (=> b!730919 e!409021))

(declare-fun res!491276 () Bool)

(assert (=> b!730919 (=> (not res!491276) (not e!409021))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41170 (_ BitVec 32)) Bool)

(assert (=> b!730919 (= res!491276 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24934 0))(
  ( (Unit!24935) )
))
(declare-fun lt!323920 () Unit!24934)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41170 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24934)

(assert (=> b!730919 (= lt!323920 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!730920 () Bool)

(declare-fun res!491277 () Bool)

(assert (=> b!730920 (=> (not res!491277) (not e!409025))))

(assert (=> b!730920 (= res!491277 (and (= (size!20122 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20122 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20122 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!730921 () Bool)

(declare-fun res!491287 () Bool)

(assert (=> b!730921 (=> (not res!491287) (not e!409022))))

(assert (=> b!730921 (= res!491287 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20122 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20122 a!3186))))))

(declare-fun b!730922 () Bool)

(assert (=> b!730922 (= e!409028 e!409024)))

(declare-fun res!491280 () Bool)

(assert (=> b!730922 (=> (not res!491280) (not e!409024))))

(declare-fun lt!323919 () SeekEntryResult!7308)

(assert (=> b!730922 (= res!491280 (= lt!323919 lt!323918))))

(declare-fun lt!323921 () (_ BitVec 64))

(declare-fun lt!323927 () array!41170)

(assert (=> b!730922 (= lt!323918 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!323921 lt!323927 mask!3328))))

(assert (=> b!730922 (= lt!323919 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!323921 mask!3328) lt!323921 lt!323927 mask!3328))))

(assert (=> b!730922 (= lt!323921 (select (store (arr!19701 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!730922 (= lt!323927 (array!41171 (store (arr!19701 a!3186) i!1173 k!2102) (size!20122 a!3186)))))

(declare-fun b!730923 () Bool)

(assert (=> b!730923 (= e!409023 true)))

(declare-fun lt!323926 () SeekEntryResult!7308)

(assert (=> b!730923 (= lt!323926 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19701 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!730924 () Bool)

(declare-fun res!491285 () Bool)

(assert (=> b!730924 (=> (not res!491285) (not e!409025))))

(declare-fun arrayContainsKey!0 (array!41170 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!730924 (= res!491285 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!730925 () Bool)

(declare-fun res!491291 () Bool)

(assert (=> b!730925 (=> (not res!491291) (not e!409022))))

(assert (=> b!730925 (= res!491291 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(assert (= (and start!64768 res!491281) b!730920))

(assert (= (and b!730920 res!491277) b!730908))

(assert (= (and b!730908 res!491290) b!730918))

(assert (= (and b!730918 res!491279) b!730924))

(assert (= (and b!730924 res!491285) b!730915))

(assert (= (and b!730915 res!491283) b!730925))

(assert (= (and b!730925 res!491291) b!730917))

(assert (= (and b!730917 res!491289) b!730921))

(assert (= (and b!730921 res!491287) b!730909))

(assert (= (and b!730909 res!491282) b!730914))

(assert (= (and b!730914 res!491278) b!730913))

(assert (= (and b!730913 c!80190) b!730912))

(assert (= (and b!730913 (not c!80190)) b!730916))

(assert (= (and b!730913 res!491292) b!730922))

(assert (= (and b!730922 res!491280) b!730919))

(assert (= (and b!730919 res!491276) b!730907))

(assert (= (and b!730907 res!491288) b!730910))

(assert (= (and b!730919 (not res!491286)) b!730911))

(assert (= (and b!730911 (not res!491284)) b!730923))

(declare-fun m!684445 () Bool)

(assert (=> b!730911 m!684445))

(declare-fun m!684447 () Bool)

(assert (=> b!730917 m!684447))

(declare-fun m!684449 () Bool)

(assert (=> b!730918 m!684449))

(declare-fun m!684451 () Bool)

(assert (=> b!730908 m!684451))

(assert (=> b!730908 m!684451))

(declare-fun m!684453 () Bool)

(assert (=> b!730908 m!684453))

(declare-fun m!684455 () Bool)

(assert (=> b!730919 m!684455))

(declare-fun m!684457 () Bool)

(assert (=> b!730919 m!684457))

(declare-fun m!684459 () Bool)

(assert (=> b!730924 m!684459))

(declare-fun m!684461 () Bool)

(assert (=> b!730915 m!684461))

(assert (=> b!730909 m!684451))

(assert (=> b!730909 m!684451))

(declare-fun m!684463 () Bool)

(assert (=> b!730909 m!684463))

(assert (=> b!730909 m!684463))

(assert (=> b!730909 m!684451))

(declare-fun m!684465 () Bool)

(assert (=> b!730909 m!684465))

(declare-fun m!684467 () Bool)

(assert (=> b!730922 m!684467))

(declare-fun m!684469 () Bool)

(assert (=> b!730922 m!684469))

(assert (=> b!730922 m!684467))

(declare-fun m!684471 () Bool)

(assert (=> b!730922 m!684471))

(declare-fun m!684473 () Bool)

(assert (=> b!730922 m!684473))

(declare-fun m!684475 () Bool)

(assert (=> b!730922 m!684475))

(declare-fun m!684477 () Bool)

(assert (=> b!730914 m!684477))

(declare-fun m!684479 () Bool)

(assert (=> b!730925 m!684479))

(assert (=> b!730923 m!684451))

(assert (=> b!730923 m!684451))

(declare-fun m!684481 () Bool)

(assert (=> b!730923 m!684481))

(assert (=> b!730912 m!684451))

(assert (=> b!730912 m!684451))

(declare-fun m!684483 () Bool)

(assert (=> b!730912 m!684483))

(assert (=> b!730916 m!684451))

(assert (=> b!730916 m!684451))

(assert (=> b!730916 m!684481))

(assert (=> b!730907 m!684451))

(assert (=> b!730907 m!684451))

(declare-fun m!684485 () Bool)

(assert (=> b!730907 m!684485))

(assert (=> b!730910 m!684451))

(assert (=> b!730910 m!684451))

(declare-fun m!684487 () Bool)

(assert (=> b!730910 m!684487))

(declare-fun m!684489 () Bool)

(assert (=> start!64768 m!684489))

(declare-fun m!684491 () Bool)

(assert (=> start!64768 m!684491))

(push 1)

