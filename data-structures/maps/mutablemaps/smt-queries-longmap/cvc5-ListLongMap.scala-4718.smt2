; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65386 () Bool)

(assert start!65386)

(declare-fun b!743179 () Bool)

(declare-fun e!415277 () Bool)

(declare-fun e!415279 () Bool)

(assert (=> b!743179 (= e!415277 e!415279)))

(declare-fun res!500427 () Bool)

(assert (=> b!743179 (=> (not res!500427) (not e!415279))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((array!41512 0))(
  ( (array!41513 (arr!19866 (Array (_ BitVec 32) (_ BitVec 64))) (size!20287 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41512)

(declare-datatypes ((SeekEntryResult!7473 0))(
  ( (MissingZero!7473 (index!32259 (_ BitVec 32))) (Found!7473 (index!32260 (_ BitVec 32))) (Intermediate!7473 (undefined!8285 Bool) (index!32261 (_ BitVec 32)) (x!63256 (_ BitVec 32))) (Undefined!7473) (MissingVacant!7473 (index!32262 (_ BitVec 32))) )
))
(declare-fun lt!330160 () SeekEntryResult!7473)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41512 (_ BitVec 32)) SeekEntryResult!7473)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!743179 (= res!500427 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19866 a!3186) j!159) mask!3328) (select (arr!19866 a!3186) j!159) a!3186 mask!3328) lt!330160))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!743179 (= lt!330160 (Intermediate!7473 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!743180 () Bool)

(declare-fun e!415280 () Bool)

(declare-fun e!415276 () Bool)

(assert (=> b!743180 (= e!415280 (not e!415276))))

(declare-fun res!500437 () Bool)

(assert (=> b!743180 (=> res!500437 e!415276)))

(declare-fun lt!330159 () SeekEntryResult!7473)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!743180 (= res!500437 (or (not (is-Intermediate!7473 lt!330159)) (bvslt x!1131 (x!63256 lt!330159)) (not (= x!1131 (x!63256 lt!330159))) (not (= index!1321 (index!32261 lt!330159)))))))

(declare-fun e!415273 () Bool)

(assert (=> b!743180 e!415273))

(declare-fun res!500434 () Bool)

(assert (=> b!743180 (=> (not res!500434) (not e!415273))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41512 (_ BitVec 32)) Bool)

(assert (=> b!743180 (= res!500434 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!25426 0))(
  ( (Unit!25427) )
))
(declare-fun lt!330164 () Unit!25426)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41512 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25426)

(assert (=> b!743180 (= lt!330164 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!743181 () Bool)

(declare-fun res!500438 () Bool)

(assert (=> b!743181 (=> (not res!500438) (not e!415277))))

(declare-datatypes ((List!13921 0))(
  ( (Nil!13918) (Cons!13917 (h!14989 (_ BitVec 64)) (t!20244 List!13921)) )
))
(declare-fun arrayNoDuplicates!0 (array!41512 (_ BitVec 32) List!13921) Bool)

(assert (=> b!743181 (= res!500438 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13918))))

(declare-fun e!415275 () Bool)

(declare-fun b!743182 () Bool)

(declare-fun lt!330157 () SeekEntryResult!7473)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41512 (_ BitVec 32)) SeekEntryResult!7473)

(assert (=> b!743182 (= e!415275 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19866 a!3186) j!159) a!3186 mask!3328) lt!330157))))

(declare-fun b!743183 () Bool)

(declare-fun res!500429 () Bool)

(declare-fun e!415281 () Bool)

(assert (=> b!743183 (=> (not res!500429) (not e!415281))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!743183 (= res!500429 (validKeyInArray!0 k!2102))))

(declare-fun b!743184 () Bool)

(declare-fun e!415278 () Bool)

(assert (=> b!743184 (= e!415278 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19866 a!3186) j!159) a!3186 mask!3328) (Found!7473 j!159)))))

(declare-fun b!743185 () Bool)

(assert (=> b!743185 (= e!415279 e!415280)))

(declare-fun res!500424 () Bool)

(assert (=> b!743185 (=> (not res!500424) (not e!415280))))

(declare-fun lt!330161 () SeekEntryResult!7473)

(assert (=> b!743185 (= res!500424 (= lt!330161 lt!330159))))

(declare-fun lt!330162 () (_ BitVec 64))

(declare-fun lt!330156 () array!41512)

(assert (=> b!743185 (= lt!330159 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!330162 lt!330156 mask!3328))))

(assert (=> b!743185 (= lt!330161 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!330162 mask!3328) lt!330162 lt!330156 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!743185 (= lt!330162 (select (store (arr!19866 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!743185 (= lt!330156 (array!41513 (store (arr!19866 a!3186) i!1173 k!2102) (size!20287 a!3186)))))

(declare-fun b!743186 () Bool)

(assert (=> b!743186 (= e!415278 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19866 a!3186) j!159) a!3186 mask!3328) lt!330160))))

(declare-fun b!743187 () Bool)

(declare-fun res!500422 () Bool)

(assert (=> b!743187 (=> (not res!500422) (not e!415281))))

(declare-fun arrayContainsKey!0 (array!41512 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!743187 (= res!500422 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!743188 () Bool)

(assert (=> b!743188 (= e!415281 e!415277)))

(declare-fun res!500423 () Bool)

(assert (=> b!743188 (=> (not res!500423) (not e!415277))))

(declare-fun lt!330163 () SeekEntryResult!7473)

(assert (=> b!743188 (= res!500423 (or (= lt!330163 (MissingZero!7473 i!1173)) (= lt!330163 (MissingVacant!7473 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41512 (_ BitVec 32)) SeekEntryResult!7473)

(assert (=> b!743188 (= lt!330163 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun res!500436 () Bool)

(assert (=> start!65386 (=> (not res!500436) (not e!415281))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65386 (= res!500436 (validMask!0 mask!3328))))

(assert (=> start!65386 e!415281))

(assert (=> start!65386 true))

(declare-fun array_inv!15640 (array!41512) Bool)

(assert (=> start!65386 (array_inv!15640 a!3186)))

(declare-fun b!743189 () Bool)

(declare-fun res!500439 () Bool)

(assert (=> b!743189 (=> (not res!500439) (not e!415277))))

(assert (=> b!743189 (= res!500439 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20287 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20287 a!3186))))))

(declare-fun b!743190 () Bool)

(declare-fun res!500430 () Bool)

(assert (=> b!743190 (=> res!500430 e!415276)))

(assert (=> b!743190 (= res!500430 (or (not (= (select (store (arr!19866 a!3186) i!1173 k!2102) index!1321) lt!330162)) (undefined!8285 lt!330159)))))

(declare-fun b!743191 () Bool)

(assert (=> b!743191 (= e!415276 true)))

(declare-fun lt!330158 () SeekEntryResult!7473)

(assert (=> b!743191 (= lt!330158 (seekEntryOrOpen!0 lt!330162 lt!330156 mask!3328))))

(declare-fun b!743192 () Bool)

(declare-fun res!500428 () Bool)

(assert (=> b!743192 (=> (not res!500428) (not e!415281))))

(assert (=> b!743192 (= res!500428 (validKeyInArray!0 (select (arr!19866 a!3186) j!159)))))

(declare-fun b!743193 () Bool)

(assert (=> b!743193 (= e!415273 e!415275)))

(declare-fun res!500425 () Bool)

(assert (=> b!743193 (=> (not res!500425) (not e!415275))))

(assert (=> b!743193 (= res!500425 (= (seekEntryOrOpen!0 (select (arr!19866 a!3186) j!159) a!3186 mask!3328) lt!330157))))

(assert (=> b!743193 (= lt!330157 (Found!7473 j!159))))

(declare-fun b!743194 () Bool)

(declare-fun res!500435 () Bool)

(assert (=> b!743194 (=> (not res!500435) (not e!415277))))

(assert (=> b!743194 (= res!500435 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!743195 () Bool)

(declare-fun res!500432 () Bool)

(assert (=> b!743195 (=> (not res!500432) (not e!415279))))

(assert (=> b!743195 (= res!500432 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19866 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!743196 () Bool)

(declare-fun res!500426 () Bool)

(assert (=> b!743196 (=> res!500426 e!415276)))

(assert (=> b!743196 (= res!500426 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19866 a!3186) j!159) a!3186 mask!3328) (Found!7473 j!159))))))

(declare-fun b!743197 () Bool)

(declare-fun res!500433 () Bool)

(assert (=> b!743197 (=> (not res!500433) (not e!415281))))

(assert (=> b!743197 (= res!500433 (and (= (size!20287 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20287 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20287 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!743198 () Bool)

(declare-fun res!500431 () Bool)

(assert (=> b!743198 (=> (not res!500431) (not e!415279))))

(assert (=> b!743198 (= res!500431 e!415278)))

(declare-fun c!81759 () Bool)

(assert (=> b!743198 (= c!81759 (bvsle x!1131 resIntermediateX!5))))

(assert (= (and start!65386 res!500436) b!743197))

(assert (= (and b!743197 res!500433) b!743192))

(assert (= (and b!743192 res!500428) b!743183))

(assert (= (and b!743183 res!500429) b!743187))

(assert (= (and b!743187 res!500422) b!743188))

(assert (= (and b!743188 res!500423) b!743194))

(assert (= (and b!743194 res!500435) b!743181))

(assert (= (and b!743181 res!500438) b!743189))

(assert (= (and b!743189 res!500439) b!743179))

(assert (= (and b!743179 res!500427) b!743195))

(assert (= (and b!743195 res!500432) b!743198))

(assert (= (and b!743198 c!81759) b!743186))

(assert (= (and b!743198 (not c!81759)) b!743184))

(assert (= (and b!743198 res!500431) b!743185))

(assert (= (and b!743185 res!500424) b!743180))

(assert (= (and b!743180 res!500434) b!743193))

(assert (= (and b!743193 res!500425) b!743182))

(assert (= (and b!743180 (not res!500437)) b!743196))

(assert (= (and b!743196 (not res!500426)) b!743190))

(assert (= (and b!743190 (not res!500430)) b!743191))

(declare-fun m!693991 () Bool)

(assert (=> b!743182 m!693991))

(assert (=> b!743182 m!693991))

(declare-fun m!693993 () Bool)

(assert (=> b!743182 m!693993))

(assert (=> b!743179 m!693991))

(assert (=> b!743179 m!693991))

(declare-fun m!693995 () Bool)

(assert (=> b!743179 m!693995))

(assert (=> b!743179 m!693995))

(assert (=> b!743179 m!693991))

(declare-fun m!693997 () Bool)

(assert (=> b!743179 m!693997))

(assert (=> b!743193 m!693991))

(assert (=> b!743193 m!693991))

(declare-fun m!693999 () Bool)

(assert (=> b!743193 m!693999))

(declare-fun m!694001 () Bool)

(assert (=> b!743195 m!694001))

(declare-fun m!694003 () Bool)

(assert (=> b!743191 m!694003))

(declare-fun m!694005 () Bool)

(assert (=> start!65386 m!694005))

(declare-fun m!694007 () Bool)

(assert (=> start!65386 m!694007))

(assert (=> b!743196 m!693991))

(assert (=> b!743196 m!693991))

(declare-fun m!694009 () Bool)

(assert (=> b!743196 m!694009))

(declare-fun m!694011 () Bool)

(assert (=> b!743194 m!694011))

(declare-fun m!694013 () Bool)

(assert (=> b!743183 m!694013))

(assert (=> b!743192 m!693991))

(assert (=> b!743192 m!693991))

(declare-fun m!694015 () Bool)

(assert (=> b!743192 m!694015))

(declare-fun m!694017 () Bool)

(assert (=> b!743180 m!694017))

(declare-fun m!694019 () Bool)

(assert (=> b!743180 m!694019))

(declare-fun m!694021 () Bool)

(assert (=> b!743181 m!694021))

(declare-fun m!694023 () Bool)

(assert (=> b!743185 m!694023))

(declare-fun m!694025 () Bool)

(assert (=> b!743185 m!694025))

(assert (=> b!743185 m!694025))

(declare-fun m!694027 () Bool)

(assert (=> b!743185 m!694027))

(declare-fun m!694029 () Bool)

(assert (=> b!743185 m!694029))

(declare-fun m!694031 () Bool)

(assert (=> b!743185 m!694031))

(assert (=> b!743186 m!693991))

(assert (=> b!743186 m!693991))

(declare-fun m!694033 () Bool)

(assert (=> b!743186 m!694033))

(declare-fun m!694035 () Bool)

(assert (=> b!743188 m!694035))

(assert (=> b!743190 m!694023))

(declare-fun m!694037 () Bool)

(assert (=> b!743190 m!694037))

(declare-fun m!694039 () Bool)

(assert (=> b!743187 m!694039))

(assert (=> b!743184 m!693991))

(assert (=> b!743184 m!693991))

(assert (=> b!743184 m!694009))

(push 1)

