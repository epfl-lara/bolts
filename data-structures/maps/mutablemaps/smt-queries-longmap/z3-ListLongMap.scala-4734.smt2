; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65484 () Bool)

(assert start!65484)

(declare-fun b!745911 () Bool)

(declare-fun e!416604 () Bool)

(declare-fun e!416596 () Bool)

(assert (=> b!745911 (= e!416604 e!416596)))

(declare-fun res!502862 () Bool)

(assert (=> b!745911 (=> (not res!502862) (not e!416596))))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((array!41610 0))(
  ( (array!41611 (arr!19915 (Array (_ BitVec 32) (_ BitVec 64))) (size!20336 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41610)

(declare-datatypes ((SeekEntryResult!7522 0))(
  ( (MissingZero!7522 (index!32455 (_ BitVec 32))) (Found!7522 (index!32456 (_ BitVec 32))) (Intermediate!7522 (undefined!8334 Bool) (index!32457 (_ BitVec 32)) (x!63433 (_ BitVec 32))) (Undefined!7522) (MissingVacant!7522 (index!32458 (_ BitVec 32))) )
))
(declare-fun lt!331460 () SeekEntryResult!7522)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41610 (_ BitVec 32)) SeekEntryResult!7522)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!745911 (= res!502862 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19915 a!3186) j!159) mask!3328) (select (arr!19915 a!3186) j!159) a!3186 mask!3328) lt!331460))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!745911 (= lt!331460 (Intermediate!7522 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!745912 () Bool)

(declare-fun res!502863 () Bool)

(declare-fun e!416601 () Bool)

(assert (=> b!745912 (=> (not res!502863) (not e!416601))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!745912 (= res!502863 (validKeyInArray!0 (select (arr!19915 a!3186) j!159)))))

(declare-fun b!745913 () Bool)

(declare-fun res!502870 () Bool)

(assert (=> b!745913 (=> (not res!502870) (not e!416604))))

(declare-datatypes ((List!13970 0))(
  ( (Nil!13967) (Cons!13966 (h!15038 (_ BitVec 64)) (t!20293 List!13970)) )
))
(declare-fun arrayNoDuplicates!0 (array!41610 (_ BitVec 32) List!13970) Bool)

(assert (=> b!745913 (= res!502870 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13967))))

(declare-fun lt!331463 () SeekEntryResult!7522)

(declare-fun b!745914 () Bool)

(declare-fun e!416597 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41610 (_ BitVec 32)) SeekEntryResult!7522)

(assert (=> b!745914 (= e!416597 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19915 a!3186) j!159) a!3186 mask!3328) lt!331463))))

(declare-fun b!745915 () Bool)

(declare-fun e!416599 () Bool)

(declare-fun e!416603 () Bool)

(assert (=> b!745915 (= e!416599 (not e!416603))))

(declare-fun res!502860 () Bool)

(assert (=> b!745915 (=> res!502860 e!416603)))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!331465 () SeekEntryResult!7522)

(get-info :version)

(assert (=> b!745915 (= res!502860 (or (not ((_ is Intermediate!7522) lt!331465)) (bvslt x!1131 (x!63433 lt!331465)) (not (= x!1131 (x!63433 lt!331465))) (not (= index!1321 (index!32457 lt!331465)))))))

(assert (=> b!745915 e!416597))

(declare-fun res!502875 () Bool)

(assert (=> b!745915 (=> (not res!502875) (not e!416597))))

(declare-fun lt!331461 () SeekEntryResult!7522)

(assert (=> b!745915 (= res!502875 (= lt!331461 lt!331463))))

(assert (=> b!745915 (= lt!331463 (Found!7522 j!159))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41610 (_ BitVec 32)) SeekEntryResult!7522)

(assert (=> b!745915 (= lt!331461 (seekEntryOrOpen!0 (select (arr!19915 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41610 (_ BitVec 32)) Bool)

(assert (=> b!745915 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!25524 0))(
  ( (Unit!25525) )
))
(declare-fun lt!331464 () Unit!25524)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41610 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25524)

(assert (=> b!745915 (= lt!331464 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!745916 () Bool)

(declare-fun res!502874 () Bool)

(assert (=> b!745916 (=> (not res!502874) (not e!416604))))

(assert (=> b!745916 (= res!502874 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20336 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20336 a!3186))))))

(declare-fun b!745917 () Bool)

(declare-fun res!502871 () Bool)

(assert (=> b!745917 (=> (not res!502871) (not e!416596))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!745917 (= res!502871 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19915 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!745918 () Bool)

(declare-fun res!502873 () Bool)

(assert (=> b!745918 (=> (not res!502873) (not e!416601))))

(assert (=> b!745918 (= res!502873 (and (= (size!20336 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20336 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20336 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!745919 () Bool)

(declare-fun res!502865 () Bool)

(assert (=> b!745919 (=> (not res!502865) (not e!416601))))

(declare-fun k0!2102 () (_ BitVec 64))

(assert (=> b!745919 (= res!502865 (validKeyInArray!0 k0!2102))))

(declare-fun b!745920 () Bool)

(declare-fun e!416598 () Bool)

(assert (=> b!745920 (= e!416598 true)))

(declare-fun lt!331462 () SeekEntryResult!7522)

(assert (=> b!745920 (= lt!331461 lt!331462)))

(declare-fun res!502867 () Bool)

(assert (=> start!65484 (=> (not res!502867) (not e!416601))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65484 (= res!502867 (validMask!0 mask!3328))))

(assert (=> start!65484 e!416601))

(assert (=> start!65484 true))

(declare-fun array_inv!15689 (array!41610) Bool)

(assert (=> start!65484 (array_inv!15689 a!3186)))

(declare-fun e!416600 () Bool)

(declare-fun b!745921 () Bool)

(assert (=> b!745921 (= e!416600 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19915 a!3186) j!159) a!3186 mask!3328) lt!331460))))

(declare-fun b!745922 () Bool)

(assert (=> b!745922 (= e!416603 e!416598)))

(declare-fun res!502868 () Bool)

(assert (=> b!745922 (=> res!502868 e!416598)))

(declare-fun lt!331459 () (_ BitVec 64))

(assert (=> b!745922 (= res!502868 (or (not (= lt!331462 lt!331463)) (= (select (store (arr!19915 a!3186) i!1173 k0!2102) index!1321) lt!331459) (not (= (select (store (arr!19915 a!3186) i!1173 k0!2102) index!1321) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!745922 (= lt!331462 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19915 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!745923 () Bool)

(assert (=> b!745923 (= e!416596 e!416599)))

(declare-fun res!502864 () Bool)

(assert (=> b!745923 (=> (not res!502864) (not e!416599))))

(declare-fun lt!331466 () SeekEntryResult!7522)

(assert (=> b!745923 (= res!502864 (= lt!331466 lt!331465))))

(declare-fun lt!331458 () array!41610)

(assert (=> b!745923 (= lt!331465 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!331459 lt!331458 mask!3328))))

(assert (=> b!745923 (= lt!331466 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!331459 mask!3328) lt!331459 lt!331458 mask!3328))))

(assert (=> b!745923 (= lt!331459 (select (store (arr!19915 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!745923 (= lt!331458 (array!41611 (store (arr!19915 a!3186) i!1173 k0!2102) (size!20336 a!3186)))))

(declare-fun b!745924 () Bool)

(assert (=> b!745924 (= e!416601 e!416604)))

(declare-fun res!502861 () Bool)

(assert (=> b!745924 (=> (not res!502861) (not e!416604))))

(declare-fun lt!331457 () SeekEntryResult!7522)

(assert (=> b!745924 (= res!502861 (or (= lt!331457 (MissingZero!7522 i!1173)) (= lt!331457 (MissingVacant!7522 i!1173))))))

(assert (=> b!745924 (= lt!331457 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!745925 () Bool)

(declare-fun res!502866 () Bool)

(assert (=> b!745925 (=> (not res!502866) (not e!416596))))

(assert (=> b!745925 (= res!502866 e!416600)))

(declare-fun c!81906 () Bool)

(assert (=> b!745925 (= c!81906 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!745926 () Bool)

(assert (=> b!745926 (= e!416600 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19915 a!3186) j!159) a!3186 mask!3328) (Found!7522 j!159)))))

(declare-fun b!745927 () Bool)

(declare-fun res!502869 () Bool)

(assert (=> b!745927 (=> (not res!502869) (not e!416601))))

(declare-fun arrayContainsKey!0 (array!41610 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!745927 (= res!502869 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!745928 () Bool)

(declare-fun res!502872 () Bool)

(assert (=> b!745928 (=> (not res!502872) (not e!416604))))

(assert (=> b!745928 (= res!502872 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(assert (= (and start!65484 res!502867) b!745918))

(assert (= (and b!745918 res!502873) b!745912))

(assert (= (and b!745912 res!502863) b!745919))

(assert (= (and b!745919 res!502865) b!745927))

(assert (= (and b!745927 res!502869) b!745924))

(assert (= (and b!745924 res!502861) b!745928))

(assert (= (and b!745928 res!502872) b!745913))

(assert (= (and b!745913 res!502870) b!745916))

(assert (= (and b!745916 res!502874) b!745911))

(assert (= (and b!745911 res!502862) b!745917))

(assert (= (and b!745917 res!502871) b!745925))

(assert (= (and b!745925 c!81906) b!745921))

(assert (= (and b!745925 (not c!81906)) b!745926))

(assert (= (and b!745925 res!502866) b!745923))

(assert (= (and b!745923 res!502864) b!745915))

(assert (= (and b!745915 res!502875) b!745914))

(assert (= (and b!745915 (not res!502860)) b!745922))

(assert (= (and b!745922 (not res!502868)) b!745920))

(declare-fun m!696313 () Bool)

(assert (=> b!745928 m!696313))

(declare-fun m!696315 () Bool)

(assert (=> b!745924 m!696315))

(declare-fun m!696317 () Bool)

(assert (=> b!745921 m!696317))

(assert (=> b!745921 m!696317))

(declare-fun m!696319 () Bool)

(assert (=> b!745921 m!696319))

(assert (=> b!745914 m!696317))

(assert (=> b!745914 m!696317))

(declare-fun m!696321 () Bool)

(assert (=> b!745914 m!696321))

(declare-fun m!696323 () Bool)

(assert (=> b!745919 m!696323))

(declare-fun m!696325 () Bool)

(assert (=> b!745913 m!696325))

(assert (=> b!745912 m!696317))

(assert (=> b!745912 m!696317))

(declare-fun m!696327 () Bool)

(assert (=> b!745912 m!696327))

(assert (=> b!745915 m!696317))

(assert (=> b!745915 m!696317))

(declare-fun m!696329 () Bool)

(assert (=> b!745915 m!696329))

(declare-fun m!696331 () Bool)

(assert (=> b!745915 m!696331))

(declare-fun m!696333 () Bool)

(assert (=> b!745915 m!696333))

(declare-fun m!696335 () Bool)

(assert (=> start!65484 m!696335))

(declare-fun m!696337 () Bool)

(assert (=> start!65484 m!696337))

(declare-fun m!696339 () Bool)

(assert (=> b!745923 m!696339))

(assert (=> b!745923 m!696339))

(declare-fun m!696341 () Bool)

(assert (=> b!745923 m!696341))

(declare-fun m!696343 () Bool)

(assert (=> b!745923 m!696343))

(declare-fun m!696345 () Bool)

(assert (=> b!745923 m!696345))

(declare-fun m!696347 () Bool)

(assert (=> b!745923 m!696347))

(assert (=> b!745926 m!696317))

(assert (=> b!745926 m!696317))

(declare-fun m!696349 () Bool)

(assert (=> b!745926 m!696349))

(assert (=> b!745922 m!696345))

(declare-fun m!696351 () Bool)

(assert (=> b!745922 m!696351))

(assert (=> b!745922 m!696317))

(assert (=> b!745922 m!696317))

(assert (=> b!745922 m!696349))

(declare-fun m!696353 () Bool)

(assert (=> b!745927 m!696353))

(assert (=> b!745911 m!696317))

(assert (=> b!745911 m!696317))

(declare-fun m!696355 () Bool)

(assert (=> b!745911 m!696355))

(assert (=> b!745911 m!696355))

(assert (=> b!745911 m!696317))

(declare-fun m!696357 () Bool)

(assert (=> b!745911 m!696357))

(declare-fun m!696359 () Bool)

(assert (=> b!745917 m!696359))

(check-sat (not b!745922) (not b!745928) (not b!745919) (not start!65484) (not b!745913) (not b!745921) (not b!745911) (not b!745924) (not b!745915) (not b!745927) (not b!745923) (not b!745914) (not b!745926) (not b!745912))
(check-sat)
