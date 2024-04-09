; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67726 () Bool)

(assert start!67726)

(declare-fun b!785036 () Bool)

(declare-fun res!531482 () Bool)

(declare-fun e!436465 () Bool)

(assert (=> b!785036 (=> (not res!531482) (not e!436465))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!42721 0))(
  ( (array!42722 (arr!20445 (Array (_ BitVec 32) (_ BitVec 64))) (size!20866 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42721)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!785036 (= res!531482 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20445 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!785038 () Bool)

(declare-fun e!436474 () Bool)

(assert (=> b!785038 (= e!436465 e!436474)))

(declare-fun res!531469 () Bool)

(assert (=> b!785038 (=> (not res!531469) (not e!436474))))

(declare-datatypes ((SeekEntryResult!8052 0))(
  ( (MissingZero!8052 (index!34575 (_ BitVec 32))) (Found!8052 (index!34576 (_ BitVec 32))) (Intermediate!8052 (undefined!8864 Bool) (index!34577 (_ BitVec 32)) (x!65553 (_ BitVec 32))) (Undefined!8052) (MissingVacant!8052 (index!34578 (_ BitVec 32))) )
))
(declare-fun lt!350032 () SeekEntryResult!8052)

(declare-fun lt!350030 () SeekEntryResult!8052)

(assert (=> b!785038 (= res!531469 (= lt!350032 lt!350030))))

(declare-fun lt!350038 () array!42721)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!350035 () (_ BitVec 64))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42721 (_ BitVec 32)) SeekEntryResult!8052)

(assert (=> b!785038 (= lt!350030 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!350035 lt!350038 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!785038 (= lt!350032 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!350035 mask!3328) lt!350035 lt!350038 mask!3328))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!785038 (= lt!350035 (select (store (arr!20445 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!785038 (= lt!350038 (array!42722 (store (arr!20445 a!3186) i!1173 k!2102) (size!20866 a!3186)))))

(declare-fun e!436473 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun b!785039 () Bool)

(declare-fun lt!350039 () SeekEntryResult!8052)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42721 (_ BitVec 32)) SeekEntryResult!8052)

(assert (=> b!785039 (= e!436473 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20445 a!3186) j!159) a!3186 mask!3328) lt!350039))))

(declare-fun b!785040 () Bool)

(declare-fun e!436472 () Bool)

(declare-fun lt!350036 () SeekEntryResult!8052)

(declare-fun lt!350033 () SeekEntryResult!8052)

(assert (=> b!785040 (= e!436472 (= lt!350036 lt!350033))))

(declare-fun e!436469 () Bool)

(declare-fun b!785041 () Bool)

(assert (=> b!785041 (= e!436469 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20445 a!3186) j!159) a!3186 mask!3328) (Found!8052 j!159)))))

(declare-fun b!785042 () Bool)

(declare-fun res!531476 () Bool)

(assert (=> b!785042 (=> (not res!531476) (not e!436465))))

(assert (=> b!785042 (= res!531476 e!436469)))

(declare-fun c!87191 () Bool)

(assert (=> b!785042 (= c!87191 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!785043 () Bool)

(declare-fun e!436467 () Bool)

(declare-fun e!436463 () Bool)

(assert (=> b!785043 (= e!436467 e!436463)))

(declare-fun res!531480 () Bool)

(assert (=> b!785043 (=> (not res!531480) (not e!436463))))

(declare-fun lt!350031 () SeekEntryResult!8052)

(assert (=> b!785043 (= res!531480 (or (= lt!350031 (MissingZero!8052 i!1173)) (= lt!350031 (MissingVacant!8052 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42721 (_ BitVec 32)) SeekEntryResult!8052)

(assert (=> b!785043 (= lt!350031 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!785044 () Bool)

(declare-fun res!531472 () Bool)

(assert (=> b!785044 (=> (not res!531472) (not e!436467))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!785044 (= res!531472 (validKeyInArray!0 (select (arr!20445 a!3186) j!159)))))

(declare-fun b!785045 () Bool)

(declare-fun e!436464 () Bool)

(declare-fun e!436470 () Bool)

(assert (=> b!785045 (= e!436464 e!436470)))

(declare-fun res!531486 () Bool)

(assert (=> b!785045 (=> res!531486 e!436470)))

(declare-fun lt!350040 () (_ BitVec 64))

(assert (=> b!785045 (= res!531486 (= lt!350040 lt!350035))))

(assert (=> b!785045 (= lt!350040 (select (store (arr!20445 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!785046 () Bool)

(declare-fun res!531475 () Bool)

(assert (=> b!785046 (=> (not res!531475) (not e!436463))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42721 (_ BitVec 32)) Bool)

(assert (=> b!785046 (= res!531475 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!785047 () Bool)

(declare-fun res!531485 () Bool)

(assert (=> b!785047 (=> (not res!531485) (not e!436467))))

(declare-fun arrayContainsKey!0 (array!42721 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!785047 (= res!531485 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!785048 () Bool)

(declare-fun res!531473 () Bool)

(assert (=> b!785048 (=> (not res!531473) (not e!436463))))

(assert (=> b!785048 (= res!531473 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20866 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20866 a!3186))))))

(declare-fun b!785049 () Bool)

(declare-fun res!531483 () Bool)

(assert (=> b!785049 (=> (not res!531483) (not e!436467))))

(assert (=> b!785049 (= res!531483 (validKeyInArray!0 k!2102))))

(declare-fun b!785050 () Bool)

(declare-fun e!436468 () Bool)

(assert (=> b!785050 (= e!436474 (not e!436468))))

(declare-fun res!531471 () Bool)

(assert (=> b!785050 (=> res!531471 e!436468)))

(assert (=> b!785050 (= res!531471 (or (not (is-Intermediate!8052 lt!350030)) (bvslt x!1131 (x!65553 lt!350030)) (not (= x!1131 (x!65553 lt!350030))) (not (= index!1321 (index!34577 lt!350030)))))))

(assert (=> b!785050 e!436473))

(declare-fun res!531484 () Bool)

(assert (=> b!785050 (=> (not res!531484) (not e!436473))))

(assert (=> b!785050 (= res!531484 (= lt!350036 lt!350039))))

(assert (=> b!785050 (= lt!350039 (Found!8052 j!159))))

(assert (=> b!785050 (= lt!350036 (seekEntryOrOpen!0 (select (arr!20445 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!785050 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!27118 0))(
  ( (Unit!27119) )
))
(declare-fun lt!350041 () Unit!27118)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42721 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27118)

(assert (=> b!785050 (= lt!350041 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!785037 () Bool)

(assert (=> b!785037 (= e!436468 e!436464)))

(declare-fun res!531478 () Bool)

(assert (=> b!785037 (=> res!531478 e!436464)))

(assert (=> b!785037 (= res!531478 (not (= lt!350033 lt!350039)))))

(assert (=> b!785037 (= lt!350033 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20445 a!3186) j!159) a!3186 mask!3328))))

(declare-fun res!531477 () Bool)

(assert (=> start!67726 (=> (not res!531477) (not e!436467))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67726 (= res!531477 (validMask!0 mask!3328))))

(assert (=> start!67726 e!436467))

(assert (=> start!67726 true))

(declare-fun array_inv!16219 (array!42721) Bool)

(assert (=> start!67726 (array_inv!16219 a!3186)))

(declare-fun b!785051 () Bool)

(declare-fun res!531479 () Bool)

(assert (=> b!785051 (=> (not res!531479) (not e!436467))))

(assert (=> b!785051 (= res!531479 (and (= (size!20866 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20866 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20866 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!785052 () Bool)

(declare-fun res!531474 () Bool)

(assert (=> b!785052 (=> (not res!531474) (not e!436463))))

(declare-datatypes ((List!14500 0))(
  ( (Nil!14497) (Cons!14496 (h!15619 (_ BitVec 64)) (t!20823 List!14500)) )
))
(declare-fun arrayNoDuplicates!0 (array!42721 (_ BitVec 32) List!14500) Bool)

(assert (=> b!785052 (= res!531474 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14497))))

(declare-fun b!785053 () Bool)

(assert (=> b!785053 (= e!436470 true)))

(assert (=> b!785053 e!436472))

(declare-fun res!531470 () Bool)

(assert (=> b!785053 (=> (not res!531470) (not e!436472))))

(assert (=> b!785053 (= res!531470 (= lt!350040 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!350034 () Unit!27118)

(declare-fun e!436466 () Unit!27118)

(assert (=> b!785053 (= lt!350034 e!436466)))

(declare-fun c!87192 () Bool)

(assert (=> b!785053 (= c!87192 (= lt!350040 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!785054 () Bool)

(declare-fun Unit!27120 () Unit!27118)

(assert (=> b!785054 (= e!436466 Unit!27120)))

(declare-fun lt!350037 () SeekEntryResult!8052)

(declare-fun b!785055 () Bool)

(assert (=> b!785055 (= e!436469 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20445 a!3186) j!159) a!3186 mask!3328) lt!350037))))

(declare-fun b!785056 () Bool)

(declare-fun Unit!27121 () Unit!27118)

(assert (=> b!785056 (= e!436466 Unit!27121)))

(assert (=> b!785056 false))

(declare-fun b!785057 () Bool)

(assert (=> b!785057 (= e!436463 e!436465)))

(declare-fun res!531487 () Bool)

(assert (=> b!785057 (=> (not res!531487) (not e!436465))))

(assert (=> b!785057 (= res!531487 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20445 a!3186) j!159) mask!3328) (select (arr!20445 a!3186) j!159) a!3186 mask!3328) lt!350037))))

(assert (=> b!785057 (= lt!350037 (Intermediate!8052 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!785058 () Bool)

(declare-fun res!531481 () Bool)

(assert (=> b!785058 (=> (not res!531481) (not e!436472))))

(assert (=> b!785058 (= res!531481 (= (seekEntryOrOpen!0 lt!350035 lt!350038 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!350035 lt!350038 mask!3328)))))

(assert (= (and start!67726 res!531477) b!785051))

(assert (= (and b!785051 res!531479) b!785044))

(assert (= (and b!785044 res!531472) b!785049))

(assert (= (and b!785049 res!531483) b!785047))

(assert (= (and b!785047 res!531485) b!785043))

(assert (= (and b!785043 res!531480) b!785046))

(assert (= (and b!785046 res!531475) b!785052))

(assert (= (and b!785052 res!531474) b!785048))

(assert (= (and b!785048 res!531473) b!785057))

(assert (= (and b!785057 res!531487) b!785036))

(assert (= (and b!785036 res!531482) b!785042))

(assert (= (and b!785042 c!87191) b!785055))

(assert (= (and b!785042 (not c!87191)) b!785041))

(assert (= (and b!785042 res!531476) b!785038))

(assert (= (and b!785038 res!531469) b!785050))

(assert (= (and b!785050 res!531484) b!785039))

(assert (= (and b!785050 (not res!531471)) b!785037))

(assert (= (and b!785037 (not res!531478)) b!785045))

(assert (= (and b!785045 (not res!531486)) b!785053))

(assert (= (and b!785053 c!87192) b!785056))

(assert (= (and b!785053 (not c!87192)) b!785054))

(assert (= (and b!785053 res!531470) b!785058))

(assert (= (and b!785058 res!531481) b!785040))

(declare-fun m!727249 () Bool)

(assert (=> b!785036 m!727249))

(declare-fun m!727251 () Bool)

(assert (=> b!785058 m!727251))

(declare-fun m!727253 () Bool)

(assert (=> b!785058 m!727253))

(declare-fun m!727255 () Bool)

(assert (=> b!785039 m!727255))

(assert (=> b!785039 m!727255))

(declare-fun m!727257 () Bool)

(assert (=> b!785039 m!727257))

(declare-fun m!727259 () Bool)

(assert (=> start!67726 m!727259))

(declare-fun m!727261 () Bool)

(assert (=> start!67726 m!727261))

(declare-fun m!727263 () Bool)

(assert (=> b!785043 m!727263))

(declare-fun m!727265 () Bool)

(assert (=> b!785038 m!727265))

(declare-fun m!727267 () Bool)

(assert (=> b!785038 m!727267))

(declare-fun m!727269 () Bool)

(assert (=> b!785038 m!727269))

(declare-fun m!727271 () Bool)

(assert (=> b!785038 m!727271))

(assert (=> b!785038 m!727265))

(declare-fun m!727273 () Bool)

(assert (=> b!785038 m!727273))

(assert (=> b!785045 m!727269))

(declare-fun m!727275 () Bool)

(assert (=> b!785045 m!727275))

(assert (=> b!785055 m!727255))

(assert (=> b!785055 m!727255))

(declare-fun m!727277 () Bool)

(assert (=> b!785055 m!727277))

(declare-fun m!727279 () Bool)

(assert (=> b!785046 m!727279))

(assert (=> b!785041 m!727255))

(assert (=> b!785041 m!727255))

(declare-fun m!727281 () Bool)

(assert (=> b!785041 m!727281))

(assert (=> b!785037 m!727255))

(assert (=> b!785037 m!727255))

(assert (=> b!785037 m!727281))

(assert (=> b!785057 m!727255))

(assert (=> b!785057 m!727255))

(declare-fun m!727283 () Bool)

(assert (=> b!785057 m!727283))

(assert (=> b!785057 m!727283))

(assert (=> b!785057 m!727255))

(declare-fun m!727285 () Bool)

(assert (=> b!785057 m!727285))

(assert (=> b!785044 m!727255))

(assert (=> b!785044 m!727255))

(declare-fun m!727287 () Bool)

(assert (=> b!785044 m!727287))

(assert (=> b!785050 m!727255))

(assert (=> b!785050 m!727255))

(declare-fun m!727289 () Bool)

(assert (=> b!785050 m!727289))

(declare-fun m!727291 () Bool)

(assert (=> b!785050 m!727291))

(declare-fun m!727293 () Bool)

(assert (=> b!785050 m!727293))

(declare-fun m!727295 () Bool)

(assert (=> b!785047 m!727295))

(declare-fun m!727297 () Bool)

(assert (=> b!785052 m!727297))

(declare-fun m!727299 () Bool)

(assert (=> b!785049 m!727299))

(push 1)

