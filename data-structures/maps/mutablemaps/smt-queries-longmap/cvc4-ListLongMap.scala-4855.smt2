; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!66848 () Bool)

(assert start!66848)

(declare-fun b!771185 () Bool)

(declare-fun res!521898 () Bool)

(declare-fun e!429340 () Bool)

(assert (=> b!771185 (=> (not res!521898) (not e!429340))))

(declare-datatypes ((array!42365 0))(
  ( (array!42366 (arr!20279 (Array (_ BitVec 32) (_ BitVec 64))) (size!20700 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42365)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!771185 (= res!521898 (validKeyInArray!0 (select (arr!20279 a!3186) j!159)))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun b!771186 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7886 0))(
  ( (MissingZero!7886 (index!33911 (_ BitVec 32))) (Found!7886 (index!33912 (_ BitVec 32))) (Intermediate!7886 (undefined!8698 Bool) (index!33913 (_ BitVec 32)) (x!64858 (_ BitVec 32))) (Undefined!7886) (MissingVacant!7886 (index!33914 (_ BitVec 32))) )
))
(declare-fun lt!343348 () SeekEntryResult!7886)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun e!429345 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42365 (_ BitVec 32)) SeekEntryResult!7886)

(assert (=> b!771186 (= e!429345 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20279 a!3186) j!159) a!3186 mask!3328) lt!343348))))

(declare-fun b!771187 () Bool)

(declare-fun res!521891 () Bool)

(declare-fun e!429342 () Bool)

(assert (=> b!771187 (=> (not res!521891) (not e!429342))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!771187 (= res!521891 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20279 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!343351 () SeekEntryResult!7886)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun e!429343 () Bool)

(declare-fun b!771188 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42365 (_ BitVec 32)) SeekEntryResult!7886)

(assert (=> b!771188 (= e!429343 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20279 a!3186) j!159) a!3186 mask!3328) lt!343351))))

(declare-fun b!771189 () Bool)

(assert (=> b!771189 (= e!429343 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20279 a!3186) j!159) a!3186 mask!3328) (Found!7886 j!159)))))

(declare-fun b!771190 () Bool)

(declare-fun e!429347 () Bool)

(assert (=> b!771190 (= e!429347 e!429345)))

(declare-fun res!521884 () Bool)

(assert (=> b!771190 (=> (not res!521884) (not e!429345))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42365 (_ BitVec 32)) SeekEntryResult!7886)

(assert (=> b!771190 (= res!521884 (= (seekEntryOrOpen!0 (select (arr!20279 a!3186) j!159) a!3186 mask!3328) lt!343348))))

(assert (=> b!771190 (= lt!343348 (Found!7886 j!159))))

(declare-fun b!771191 () Bool)

(declare-fun e!429341 () Bool)

(assert (=> b!771191 (= e!429342 e!429341)))

(declare-fun res!521893 () Bool)

(assert (=> b!771191 (=> (not res!521893) (not e!429341))))

(declare-fun lt!343344 () SeekEntryResult!7886)

(declare-fun lt!343345 () SeekEntryResult!7886)

(assert (=> b!771191 (= res!521893 (= lt!343344 lt!343345))))

(declare-fun lt!343347 () array!42365)

(declare-fun lt!343353 () (_ BitVec 64))

(assert (=> b!771191 (= lt!343345 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!343353 lt!343347 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!771191 (= lt!343344 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!343353 mask!3328) lt!343353 lt!343347 mask!3328))))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!771191 (= lt!343353 (select (store (arr!20279 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!771191 (= lt!343347 (array!42366 (store (arr!20279 a!3186) i!1173 k!2102) (size!20700 a!3186)))))

(declare-fun b!771192 () Bool)

(declare-fun res!521887 () Bool)

(declare-fun e!429346 () Bool)

(assert (=> b!771192 (=> (not res!521887) (not e!429346))))

(declare-datatypes ((List!14334 0))(
  ( (Nil!14331) (Cons!14330 (h!15429 (_ BitVec 64)) (t!20657 List!14334)) )
))
(declare-fun arrayNoDuplicates!0 (array!42365 (_ BitVec 32) List!14334) Bool)

(assert (=> b!771192 (= res!521887 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14331))))

(declare-fun b!771193 () Bool)

(declare-fun res!521895 () Bool)

(assert (=> b!771193 (=> (not res!521895) (not e!429346))))

(assert (=> b!771193 (= res!521895 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20700 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20700 a!3186))))))

(declare-fun b!771194 () Bool)

(declare-datatypes ((Unit!26580 0))(
  ( (Unit!26581) )
))
(declare-fun e!429349 () Unit!26580)

(declare-fun Unit!26582 () Unit!26580)

(assert (=> b!771194 (= e!429349 Unit!26582)))

(declare-fun lt!343350 () (_ BitVec 32))

(assert (=> b!771194 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!343350 (select (arr!20279 a!3186) j!159) a!3186 mask!3328) lt!343351)))

(declare-fun b!771195 () Bool)

(declare-fun Unit!26583 () Unit!26580)

(assert (=> b!771195 (= e!429349 Unit!26583)))

(declare-fun lt!343346 () SeekEntryResult!7886)

(assert (=> b!771195 (= lt!343346 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20279 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!771195 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!343350 resIntermediateIndex!5 (select (arr!20279 a!3186) j!159) a!3186 mask!3328) (Found!7886 j!159))))

(declare-fun b!771196 () Bool)

(declare-fun res!521897 () Bool)

(assert (=> b!771196 (=> (not res!521897) (not e!429342))))

(assert (=> b!771196 (= res!521897 e!429343)))

(declare-fun c!85047 () Bool)

(assert (=> b!771196 (= c!85047 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!771197 () Bool)

(assert (=> b!771197 (= e!429346 e!429342)))

(declare-fun res!521899 () Bool)

(assert (=> b!771197 (=> (not res!521899) (not e!429342))))

(assert (=> b!771197 (= res!521899 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20279 a!3186) j!159) mask!3328) (select (arr!20279 a!3186) j!159) a!3186 mask!3328) lt!343351))))

(assert (=> b!771197 (= lt!343351 (Intermediate!7886 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!771199 () Bool)

(assert (=> b!771199 (= e!429340 e!429346)))

(declare-fun res!521885 () Bool)

(assert (=> b!771199 (=> (not res!521885) (not e!429346))))

(declare-fun lt!343354 () SeekEntryResult!7886)

(assert (=> b!771199 (= res!521885 (or (= lt!343354 (MissingZero!7886 i!1173)) (= lt!343354 (MissingVacant!7886 i!1173))))))

(assert (=> b!771199 (= lt!343354 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!771198 () Bool)

(declare-fun res!521888 () Bool)

(assert (=> b!771198 (=> (not res!521888) (not e!429340))))

(assert (=> b!771198 (= res!521888 (and (= (size!20700 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20700 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20700 a!3186)) (not (= i!1173 j!159))))))

(declare-fun res!521890 () Bool)

(assert (=> start!66848 (=> (not res!521890) (not e!429340))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66848 (= res!521890 (validMask!0 mask!3328))))

(assert (=> start!66848 e!429340))

(assert (=> start!66848 true))

(declare-fun array_inv!16053 (array!42365) Bool)

(assert (=> start!66848 (array_inv!16053 a!3186)))

(declare-fun b!771200 () Bool)

(declare-fun res!521892 () Bool)

(assert (=> b!771200 (=> (not res!521892) (not e!429340))))

(declare-fun arrayContainsKey!0 (array!42365 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!771200 (= res!521892 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!771201 () Bool)

(declare-fun res!521886 () Bool)

(assert (=> b!771201 (=> (not res!521886) (not e!429346))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42365 (_ BitVec 32)) Bool)

(assert (=> b!771201 (= res!521886 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!771202 () Bool)

(declare-fun e!429348 () Bool)

(assert (=> b!771202 (= e!429348 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110))))

(declare-fun lt!343349 () Unit!26580)

(assert (=> b!771202 (= lt!343349 e!429349)))

(declare-fun c!85046 () Bool)

(assert (=> b!771202 (= c!85046 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!771202 (= lt!343350 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!771203 () Bool)

(declare-fun res!521896 () Bool)

(assert (=> b!771203 (=> (not res!521896) (not e!429340))))

(assert (=> b!771203 (= res!521896 (validKeyInArray!0 k!2102))))

(declare-fun b!771204 () Bool)

(assert (=> b!771204 (= e!429341 (not e!429348))))

(declare-fun res!521894 () Bool)

(assert (=> b!771204 (=> res!521894 e!429348)))

(assert (=> b!771204 (= res!521894 (or (not (is-Intermediate!7886 lt!343345)) (bvsge x!1131 (x!64858 lt!343345))))))

(assert (=> b!771204 e!429347))

(declare-fun res!521889 () Bool)

(assert (=> b!771204 (=> (not res!521889) (not e!429347))))

(assert (=> b!771204 (= res!521889 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!343352 () Unit!26580)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42365 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26580)

(assert (=> b!771204 (= lt!343352 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(assert (= (and start!66848 res!521890) b!771198))

(assert (= (and b!771198 res!521888) b!771185))

(assert (= (and b!771185 res!521898) b!771203))

(assert (= (and b!771203 res!521896) b!771200))

(assert (= (and b!771200 res!521892) b!771199))

(assert (= (and b!771199 res!521885) b!771201))

(assert (= (and b!771201 res!521886) b!771192))

(assert (= (and b!771192 res!521887) b!771193))

(assert (= (and b!771193 res!521895) b!771197))

(assert (= (and b!771197 res!521899) b!771187))

(assert (= (and b!771187 res!521891) b!771196))

(assert (= (and b!771196 c!85047) b!771188))

(assert (= (and b!771196 (not c!85047)) b!771189))

(assert (= (and b!771196 res!521897) b!771191))

(assert (= (and b!771191 res!521893) b!771204))

(assert (= (and b!771204 res!521889) b!771190))

(assert (= (and b!771190 res!521884) b!771186))

(assert (= (and b!771204 (not res!521894)) b!771202))

(assert (= (and b!771202 c!85046) b!771194))

(assert (= (and b!771202 (not c!85046)) b!771195))

(declare-fun m!716427 () Bool)

(assert (=> b!771188 m!716427))

(assert (=> b!771188 m!716427))

(declare-fun m!716429 () Bool)

(assert (=> b!771188 m!716429))

(declare-fun m!716431 () Bool)

(assert (=> b!771191 m!716431))

(declare-fun m!716433 () Bool)

(assert (=> b!771191 m!716433))

(declare-fun m!716435 () Bool)

(assert (=> b!771191 m!716435))

(declare-fun m!716437 () Bool)

(assert (=> b!771191 m!716437))

(declare-fun m!716439 () Bool)

(assert (=> b!771191 m!716439))

(assert (=> b!771191 m!716433))

(declare-fun m!716441 () Bool)

(assert (=> b!771200 m!716441))

(assert (=> b!771197 m!716427))

(assert (=> b!771197 m!716427))

(declare-fun m!716443 () Bool)

(assert (=> b!771197 m!716443))

(assert (=> b!771197 m!716443))

(assert (=> b!771197 m!716427))

(declare-fun m!716445 () Bool)

(assert (=> b!771197 m!716445))

(declare-fun m!716447 () Bool)

(assert (=> b!771201 m!716447))

(declare-fun m!716449 () Bool)

(assert (=> b!771192 m!716449))

(assert (=> b!771195 m!716427))

(assert (=> b!771195 m!716427))

(declare-fun m!716451 () Bool)

(assert (=> b!771195 m!716451))

(assert (=> b!771195 m!716427))

(declare-fun m!716453 () Bool)

(assert (=> b!771195 m!716453))

(assert (=> b!771189 m!716427))

(assert (=> b!771189 m!716427))

(assert (=> b!771189 m!716451))

(declare-fun m!716455 () Bool)

(assert (=> b!771199 m!716455))

(assert (=> b!771190 m!716427))

(assert (=> b!771190 m!716427))

(declare-fun m!716457 () Bool)

(assert (=> b!771190 m!716457))

(declare-fun m!716459 () Bool)

(assert (=> b!771202 m!716459))

(declare-fun m!716461 () Bool)

(assert (=> b!771187 m!716461))

(declare-fun m!716463 () Bool)

(assert (=> b!771204 m!716463))

(declare-fun m!716465 () Bool)

(assert (=> b!771204 m!716465))

(assert (=> b!771185 m!716427))

(assert (=> b!771185 m!716427))

(declare-fun m!716467 () Bool)

(assert (=> b!771185 m!716467))

(assert (=> b!771194 m!716427))

(assert (=> b!771194 m!716427))

(declare-fun m!716469 () Bool)

(assert (=> b!771194 m!716469))

(declare-fun m!716471 () Bool)

(assert (=> start!66848 m!716471))

(declare-fun m!716473 () Bool)

(assert (=> start!66848 m!716473))

(assert (=> b!771186 m!716427))

(assert (=> b!771186 m!716427))

(declare-fun m!716475 () Bool)

(assert (=> b!771186 m!716475))

(declare-fun m!716477 () Bool)

(assert (=> b!771203 m!716477))

(push 1)

(assert (not b!771192))

(assert (not b!771199))

(assert (not b!771200))

(assert (not b!771194))

(assert (not b!771190))

(assert (not b!771204))

(assert (not b!771191))

(assert (not b!771185))

(assert (not start!66848))

(assert (not b!771189))

(assert (not b!771201))

(assert (not b!771186))

(assert (not b!771195))

(assert (not b!771188))

(assert (not b!771202))

(assert (not b!771203))

(assert (not b!771197))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!771300 () Bool)

(declare-fun e!429407 () SeekEntryResult!7886)

(assert (=> b!771300 (= e!429407 (MissingVacant!7886 resIntermediateIndex!5))))

(declare-fun b!771301 () Bool)

(declare-fun e!429408 () SeekEntryResult!7886)

(assert (=> b!771301 (= e!429408 (Found!7886 resIntermediateIndex!5))))

(declare-fun b!771302 () Bool)

(declare-fun e!429406 () SeekEntryResult!7886)

(assert (=> b!771302 (= e!429406 Undefined!7886)))

(declare-fun b!771303 () Bool)

(assert (=> b!771303 (= e!429406 e!429408)))

(declare-fun lt!343391 () (_ BitVec 64))

(declare-fun c!85084 () Bool)

(assert (=> b!771303 (= c!85084 (= lt!343391 (select (arr!20279 a!3186) j!159)))))

(declare-fun d!101613 () Bool)

(declare-fun lt!343390 () SeekEntryResult!7886)

(assert (=> d!101613 (and (or (is-Undefined!7886 lt!343390) (not (is-Found!7886 lt!343390)) (and (bvsge (index!33912 lt!343390) #b00000000000000000000000000000000) (bvslt (index!33912 lt!343390) (size!20700 a!3186)))) (or (is-Undefined!7886 lt!343390) (is-Found!7886 lt!343390) (not (is-MissingVacant!7886 lt!343390)) (not (= (index!33914 lt!343390) resIntermediateIndex!5)) (and (bvsge (index!33914 lt!343390) #b00000000000000000000000000000000) (bvslt (index!33914 lt!343390) (size!20700 a!3186)))) (or (is-Undefined!7886 lt!343390) (ite (is-Found!7886 lt!343390) (= (select (arr!20279 a!3186) (index!33912 lt!343390)) (select (arr!20279 a!3186) j!159)) (and (is-MissingVacant!7886 lt!343390) (= (index!33914 lt!343390) resIntermediateIndex!5) (= (select (arr!20279 a!3186) (index!33914 lt!343390)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!101613 (= lt!343390 e!429406)))

(declare-fun c!85085 () Bool)

(assert (=> d!101613 (= c!85085 (bvsge resIntermediateX!5 #b01111111111111111111111111111110))))

(assert (=> d!101613 (= lt!343391 (select (arr!20279 a!3186) resIntermediateIndex!5))))

(assert (=> d!101613 (validMask!0 mask!3328)))

(assert (=> d!101613 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20279 a!3186) j!159) a!3186 mask!3328) lt!343390)))

(declare-fun b!771304 () Bool)

(assert (=> b!771304 (= e!429407 (seekKeyOrZeroReturnVacant!0 (bvadd resIntermediateX!5 #b00000000000000000000000000000001) (nextIndex!0 resIntermediateIndex!5 resIntermediateX!5 mask!3328) resIntermediateIndex!5 (select (arr!20279 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!771305 () Bool)

(declare-fun c!85083 () Bool)

(assert (=> b!771305 (= c!85083 (= lt!343391 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!771305 (= e!429408 e!429407)))

(assert (= (and d!101613 c!85085) b!771302))

(assert (= (and d!101613 (not c!85085)) b!771303))

(assert (= (and b!771303 c!85084) b!771301))

(assert (= (and b!771303 (not c!85084)) b!771305))

(assert (= (and b!771305 c!85083) b!771300))

(assert (= (and b!771305 (not c!85083)) b!771304))

(declare-fun m!716521 () Bool)

(assert (=> d!101613 m!716521))

(declare-fun m!716523 () Bool)

(assert (=> d!101613 m!716523))

(assert (=> d!101613 m!716461))

(assert (=> d!101613 m!716471))

(declare-fun m!716525 () Bool)

(assert (=> b!771304 m!716525))

(assert (=> b!771304 m!716525))

(assert (=> b!771304 m!716427))

(declare-fun m!716527 () Bool)

(assert (=> b!771304 m!716527))

(assert (=> b!771186 d!101613))

(declare-fun d!101623 () Bool)

(assert (=> d!101623 (= (validMask!0 mask!3328) (and (or (= mask!3328 #b00000000000000000000000000000111) (= mask!3328 #b00000000000000000000000000001111) (= mask!3328 #b00000000000000000000000000011111) (= mask!3328 #b00000000000000000000000000111111) (= mask!3328 #b00000000000000000000000001111111) (= mask!3328 #b00000000000000000000000011111111) (= mask!3328 #b00000000000000000000000111111111) (= mask!3328 #b00000000000000000000001111111111) (= mask!3328 #b00000000000000000000011111111111) (= mask!3328 #b00000000000000000000111111111111) (= mask!3328 #b00000000000000000001111111111111) (= mask!3328 #b00000000000000000011111111111111) (= mask!3328 #b00000000000000000111111111111111) (= mask!3328 #b00000000000000001111111111111111) (= mask!3328 #b00000000000000011111111111111111) (= mask!3328 #b00000000000000111111111111111111) (= mask!3328 #b00000000000001111111111111111111) (= mask!3328 #b00000000000011111111111111111111) (= mask!3328 #b00000000000111111111111111111111) (= mask!3328 #b00000000001111111111111111111111) (= mask!3328 #b00000000011111111111111111111111) (= mask!3328 #b00000000111111111111111111111111) (= mask!3328 #b00000001111111111111111111111111) (= mask!3328 #b00000011111111111111111111111111) (= mask!3328 #b00000111111111111111111111111111) (= mask!3328 #b00001111111111111111111111111111) (= mask!3328 #b00011111111111111111111111111111) (= mask!3328 #b00111111111111111111111111111111)) (bvsle mask!3328 #b00111111111111111111111111111111)))))

(assert (=> start!66848 d!101623))

(declare-fun d!101631 () Bool)

(assert (=> d!101631 (= (array_inv!16053 a!3186) (bvsge (size!20700 a!3186) #b00000000000000000000000000000000))))

(assert (=> start!66848 d!101631))

(declare-fun b!771403 () Bool)

(declare-fun e!429468 () Bool)

(declare-fun lt!343439 () SeekEntryResult!7886)

(assert (=> b!771403 (= e!429468 (bvsge (x!64858 lt!343439) #b01111111111111111111111111111110))))

(declare-fun b!771404 () Bool)

(declare-fun e!429469 () Bool)

(assert (=> b!771404 (= e!429468 e!429469)))

(declare-fun res!521956 () Bool)

(assert (=> b!771404 (= res!521956 (and (is-Intermediate!7886 lt!343439) (not (undefined!8698 lt!343439)) (bvslt (x!64858 lt!343439) #b01111111111111111111111111111110) (bvsge (x!64858 lt!343439) #b00000000000000000000000000000000) (bvsge (x!64858 lt!343439) #b00000000000000000000000000000000)))))

(assert (=> b!771404 (=> (not res!521956) (not e!429469))))

(declare-fun b!771405 () Bool)

(declare-fun e!429465 () SeekEntryResult!7886)

(assert (=> b!771405 (= e!429465 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!20279 a!3186) j!159) mask!3328) #b00000000000000000000000000000000 mask!3328) (select (arr!20279 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!771406 () Bool)

(assert (=> b!771406 (and (bvsge (index!33913 lt!343439) #b00000000000000000000000000000000) (bvslt (index!33913 lt!343439) (size!20700 a!3186)))))

(declare-fun e!429466 () Bool)

(assert (=> b!771406 (= e!429466 (= (select (arr!20279 a!3186) (index!33913 lt!343439)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!429467 () SeekEntryResult!7886)

(declare-fun b!771407 () Bool)

(assert (=> b!771407 (= e!429467 (Intermediate!7886 true (toIndex!0 (select (arr!20279 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!771408 () Bool)

(assert (=> b!771408 (and (bvsge (index!33913 lt!343439) #b00000000000000000000000000000000) (bvslt (index!33913 lt!343439) (size!20700 a!3186)))))

(declare-fun res!521957 () Bool)

(assert (=> b!771408 (= res!521957 (= (select (arr!20279 a!3186) (index!33913 lt!343439)) (select (arr!20279 a!3186) j!159)))))

(assert (=> b!771408 (=> res!521957 e!429466)))

(assert (=> b!771408 (= e!429469 e!429466)))

(declare-fun d!101633 () Bool)

(assert (=> d!101633 e!429468))

(declare-fun c!85121 () Bool)

(assert (=> d!101633 (= c!85121 (and (is-Intermediate!7886 lt!343439) (undefined!8698 lt!343439)))))

(assert (=> d!101633 (= lt!343439 e!429467)))

(declare-fun c!85120 () Bool)

(assert (=> d!101633 (= c!85120 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!343438 () (_ BitVec 64))

(assert (=> d!101633 (= lt!343438 (select (arr!20279 a!3186) (toIndex!0 (select (arr!20279 a!3186) j!159) mask!3328)))))

(assert (=> d!101633 (validMask!0 mask!3328)))

(assert (=> d!101633 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20279 a!3186) j!159) mask!3328) (select (arr!20279 a!3186) j!159) a!3186 mask!3328) lt!343439)))

(declare-fun b!771409 () Bool)

(assert (=> b!771409 (and (bvsge (index!33913 lt!343439) #b00000000000000000000000000000000) (bvslt (index!33913 lt!343439) (size!20700 a!3186)))))

(declare-fun res!521958 () Bool)

(assert (=> b!771409 (= res!521958 (= (select (arr!20279 a!3186) (index!33913 lt!343439)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!771409 (=> res!521958 e!429466)))

(declare-fun b!771410 () Bool)

(assert (=> b!771410 (= e!429465 (Intermediate!7886 false (toIndex!0 (select (arr!20279 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!771411 () Bool)

(assert (=> b!771411 (= e!429467 e!429465)))

(declare-fun c!85122 () Bool)

(assert (=> b!771411 (= c!85122 (or (= lt!343438 (select (arr!20279 a!3186) j!159)) (= (bvadd lt!343438 lt!343438) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!101633 c!85120) b!771407))

(assert (= (and d!101633 (not c!85120)) b!771411))

(assert (= (and b!771411 c!85122) b!771410))

(assert (= (and b!771411 (not c!85122)) b!771405))

(assert (= (and d!101633 c!85121) b!771403))

(assert (= (and d!101633 (not c!85121)) b!771404))

(assert (= (and b!771404 res!521956) b!771408))

(assert (= (and b!771408 (not res!521957)) b!771409))

(assert (= (and b!771409 (not res!521958)) b!771406))

(declare-fun m!716577 () Bool)

(assert (=> b!771406 m!716577))

(assert (=> b!771408 m!716577))

(assert (=> d!101633 m!716443))

(declare-fun m!716581 () Bool)

(assert (=> d!101633 m!716581))

(assert (=> d!101633 m!716471))

(assert (=> b!771405 m!716443))

(declare-fun m!716583 () Bool)

(assert (=> b!771405 m!716583))

(assert (=> b!771405 m!716583))

(assert (=> b!771405 m!716427))

(declare-fun m!716585 () Bool)

(assert (=> b!771405 m!716585))

(assert (=> b!771409 m!716577))

(assert (=> b!771197 d!101633))

(declare-fun d!101651 () Bool)

(declare-fun lt!343459 () (_ BitVec 32))

(declare-fun lt!343458 () (_ BitVec 32))

(assert (=> d!101651 (= lt!343459 (bvmul (bvxor lt!343458 (bvlshr lt!343458 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!101651 (= lt!343458 ((_ extract 31 0) (bvand (bvxor (select (arr!20279 a!3186) j!159) (bvlshr (select (arr!20279 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!101651 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!521962 (let ((h!15432 ((_ extract 31 0) (bvand (bvxor (select (arr!20279 a!3186) j!159) (bvlshr (select (arr!20279 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!64868 (bvmul (bvxor h!15432 (bvlshr h!15432 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!64868 (bvlshr x!64868 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!521962 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!521962 #b00000000000000000000000000000000))))))

(assert (=> d!101651 (= (toIndex!0 (select (arr!20279 a!3186) j!159) mask!3328) (bvand (bvxor lt!343459 (bvlshr lt!343459 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!771197 d!101651))

(declare-fun d!101663 () Bool)

(declare-fun res!521973 () Bool)

(declare-fun e!429495 () Bool)

(assert (=> d!101663 (=> res!521973 e!429495)))

(assert (=> d!101663 (= res!521973 (= (select (arr!20279 a!3186) #b00000000000000000000000000000000) k!2102))))

(assert (=> d!101663 (= (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000) e!429495)))

(declare-fun b!771455 () Bool)

(declare-fun e!429496 () Bool)

(assert (=> b!771455 (= e!429495 e!429496)))

(declare-fun res!521974 () Bool)

(assert (=> b!771455 (=> (not res!521974) (not e!429496))))

(assert (=> b!771455 (= res!521974 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!20700 a!3186)))))

(declare-fun b!771456 () Bool)

(assert (=> b!771456 (= e!429496 (arrayContainsKey!0 a!3186 k!2102 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!101663 (not res!521973)) b!771455))

(assert (= (and b!771455 res!521974) b!771456))

(declare-fun m!716625 () Bool)

(assert (=> d!101663 m!716625))

(declare-fun m!716627 () Bool)

(assert (=> b!771456 m!716627))

(assert (=> b!771200 d!101663))

(declare-fun b!771521 () Bool)

(declare-fun e!429538 () SeekEntryResult!7886)

(declare-fun e!429539 () SeekEntryResult!7886)

(assert (=> b!771521 (= e!429538 e!429539)))

(declare-fun lt!343482 () (_ BitVec 64))

(declare-fun lt!343484 () SeekEntryResult!7886)

(assert (=> b!771521 (= lt!343482 (select (arr!20279 a!3186) (index!33913 lt!343484)))))

(declare-fun c!85160 () Bool)

(assert (=> b!771521 (= c!85160 (= lt!343482 (select (arr!20279 a!3186) j!159)))))

(declare-fun b!771522 () Bool)

(declare-fun e!429540 () SeekEntryResult!7886)

(assert (=> b!771522 (= e!429540 (MissingZero!7886 (index!33913 lt!343484)))))

(declare-fun b!771523 () Bool)

(assert (=> b!771523 (= e!429540 (seekKeyOrZeroReturnVacant!0 (x!64858 lt!343484) (index!33913 lt!343484) (index!33913 lt!343484) (select (arr!20279 a!3186) j!159) a!3186 mask!3328))))

(declare-fun d!101667 () Bool)

(declare-fun lt!343483 () SeekEntryResult!7886)

(assert (=> d!101667 (and (or (is-Undefined!7886 lt!343483) (not (is-Found!7886 lt!343483)) (and (bvsge (index!33912 lt!343483) #b00000000000000000000000000000000) (bvslt (index!33912 lt!343483) (size!20700 a!3186)))) (or (is-Undefined!7886 lt!343483) (is-Found!7886 lt!343483) (not (is-MissingZero!7886 lt!343483)) (and (bvsge (index!33911 lt!343483) #b00000000000000000000000000000000) (bvslt (index!33911 lt!343483) (size!20700 a!3186)))) (or (is-Undefined!7886 lt!343483) (is-Found!7886 lt!343483) (is-MissingZero!7886 lt!343483) (not (is-MissingVacant!7886 lt!343483)) (and (bvsge (index!33914 lt!343483) #b00000000000000000000000000000000) (bvslt (index!33914 lt!343483) (size!20700 a!3186)))) (or (is-Undefined!7886 lt!343483) (ite (is-Found!7886 lt!343483) (= (select (arr!20279 a!3186) (index!33912 lt!343483)) (select (arr!20279 a!3186) j!159)) (ite (is-MissingZero!7886 lt!343483) (= (select (arr!20279 a!3186) (index!33911 lt!343483)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!7886 lt!343483) (= (select (arr!20279 a!3186) (index!33914 lt!343483)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!101667 (= lt!343483 e!429538)))

(declare-fun c!85162 () Bool)

(assert (=> d!101667 (= c!85162 (and (is-Intermediate!7886 lt!343484) (undefined!8698 lt!343484)))))

(assert (=> d!101667 (= lt!343484 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20279 a!3186) j!159) mask!3328) (select (arr!20279 a!3186) j!159) a!3186 mask!3328))))

(assert (=> d!101667 (validMask!0 mask!3328)))

(assert (=> d!101667 (= (seekEntryOrOpen!0 (select (arr!20279 a!3186) j!159) a!3186 mask!3328) lt!343483)))

(declare-fun b!771524 () Bool)

(assert (=> b!771524 (= e!429539 (Found!7886 (index!33913 lt!343484)))))

(declare-fun b!771525 () Bool)

(assert (=> b!771525 (= e!429538 Undefined!7886)))

(declare-fun b!771526 () Bool)

(declare-fun c!85161 () Bool)

(assert (=> b!771526 (= c!85161 (= lt!343482 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!771526 (= e!429539 e!429540)))

(assert (= (and d!101667 c!85162) b!771525))

(assert (= (and d!101667 (not c!85162)) b!771521))

(assert (= (and b!771521 c!85160) b!771524))

(assert (= (and b!771521 (not c!85160)) b!771526))

(assert (= (and b!771526 c!85161) b!771522))

(assert (= (and b!771526 (not c!85161)) b!771523))

(declare-fun m!716663 () Bool)

(assert (=> b!771521 m!716663))

(assert (=> b!771523 m!716427))

(declare-fun m!716665 () Bool)

(assert (=> b!771523 m!716665))

(declare-fun m!716667 () Bool)

(assert (=> d!101667 m!716667))

(assert (=> d!101667 m!716443))

(assert (=> d!101667 m!716427))

(assert (=> d!101667 m!716445))

(assert (=> d!101667 m!716471))

(assert (=> d!101667 m!716427))

(assert (=> d!101667 m!716443))

(declare-fun m!716669 () Bool)

(assert (=> d!101667 m!716669))

(declare-fun m!716671 () Bool)

(assert (=> d!101667 m!716671))

(assert (=> b!771190 d!101667))

(declare-fun b!771569 () Bool)

(declare-fun e!429566 () Bool)

(declare-fun e!429568 () Bool)

(assert (=> b!771569 (= e!429566 e!429568)))

(declare-fun c!85180 () Bool)

(assert (=> b!771569 (= c!85180 (validKeyInArray!0 (select (arr!20279 a!3186) #b00000000000000000000000000000000)))))

(declare-fun d!101683 () Bool)

(declare-fun res!522003 () Bool)

(assert (=> d!101683 (=> res!522003 e!429566)))

(assert (=> d!101683 (= res!522003 (bvsge #b00000000000000000000000000000000 (size!20700 a!3186)))))

(assert (=> d!101683 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328) e!429566)))

(declare-fun b!771570 () Bool)

(declare-fun call!35125 () Bool)

(assert (=> b!771570 (= e!429568 call!35125)))

(declare-fun b!771571 () Bool)

(declare-fun e!429567 () Bool)

(assert (=> b!771571 (= e!429568 e!429567)))

(declare-fun lt!343503 () (_ BitVec 64))

(assert (=> b!771571 (= lt!343503 (select (arr!20279 a!3186) #b00000000000000000000000000000000))))

(declare-fun lt!343502 () Unit!26580)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!42365 (_ BitVec 64) (_ BitVec 32)) Unit!26580)

(assert (=> b!771571 (= lt!343502 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!343503 #b00000000000000000000000000000000))))

(assert (=> b!771571 (arrayContainsKey!0 a!3186 lt!343503 #b00000000000000000000000000000000)))

(declare-fun lt!343501 () Unit!26580)

(assert (=> b!771571 (= lt!343501 lt!343502)))

(declare-fun res!522004 () Bool)

(assert (=> b!771571 (= res!522004 (= (seekEntryOrOpen!0 (select (arr!20279 a!3186) #b00000000000000000000000000000000) a!3186 mask!3328) (Found!7886 #b00000000000000000000000000000000)))))

(assert (=> b!771571 (=> (not res!522004) (not e!429567))))

(declare-fun bm!35122 () Bool)

(assert (=> bm!35122 (= call!35125 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun b!771572 () Bool)

(assert (=> b!771572 (= e!429567 call!35125)))

(assert (= (and d!101683 (not res!522003)) b!771569))

(assert (= (and b!771569 c!85180) b!771571))

(assert (= (and b!771569 (not c!85180)) b!771570))

(assert (= (and b!771571 res!522004) b!771572))

(assert (= (or b!771572 b!771570) bm!35122))

(assert (=> b!771569 m!716625))

(assert (=> b!771569 m!716625))

(declare-fun m!716699 () Bool)

(assert (=> b!771569 m!716699))

(assert (=> b!771571 m!716625))

(declare-fun m!716701 () Bool)

(assert (=> b!771571 m!716701))

(declare-fun m!716703 () Bool)

(assert (=> b!771571 m!716703))

(assert (=> b!771571 m!716625))

(declare-fun m!716705 () Bool)

(assert (=> b!771571 m!716705))

(declare-fun m!716707 () Bool)

(assert (=> bm!35122 m!716707))

(assert (=> b!771201 d!101683))

(declare-fun b!771575 () Bool)

(declare-fun e!429574 () Bool)

(declare-fun lt!343505 () SeekEntryResult!7886)

(assert (=> b!771575 (= e!429574 (bvsge (x!64858 lt!343505) #b01111111111111111111111111111110))))

(declare-fun b!771576 () Bool)

(declare-fun e!429575 () Bool)

(assert (=> b!771576 (= e!429574 e!429575)))

(declare-fun res!522007 () Bool)

(assert (=> b!771576 (= res!522007 (and (is-Intermediate!7886 lt!343505) (not (undefined!8698 lt!343505)) (bvslt (x!64858 lt!343505) #b01111111111111111111111111111110) (bvsge (x!64858 lt!343505) #b00000000000000000000000000000000) (bvsge (x!64858 lt!343505) x!1131)))))

(assert (=> b!771576 (=> (not res!522007) (not e!429575))))

(declare-fun b!771577 () Bool)

(declare-fun e!429571 () SeekEntryResult!7886)

(assert (=> b!771577 (= e!429571 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) (select (arr!20279 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!771578 () Bool)

(assert (=> b!771578 (and (bvsge (index!33913 lt!343505) #b00000000000000000000000000000000) (bvslt (index!33913 lt!343505) (size!20700 a!3186)))))

(declare-fun e!429572 () Bool)

(assert (=> b!771578 (= e!429572 (= (select (arr!20279 a!3186) (index!33913 lt!343505)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!771579 () Bool)

(declare-fun e!429573 () SeekEntryResult!7886)

(assert (=> b!771579 (= e!429573 (Intermediate!7886 true index!1321 x!1131))))

(declare-fun b!771580 () Bool)

(assert (=> b!771580 (and (bvsge (index!33913 lt!343505) #b00000000000000000000000000000000) (bvslt (index!33913 lt!343505) (size!20700 a!3186)))))

(declare-fun res!522008 () Bool)

(assert (=> b!771580 (= res!522008 (= (select (arr!20279 a!3186) (index!33913 lt!343505)) (select (arr!20279 a!3186) j!159)))))

(assert (=> b!771580 (=> res!522008 e!429572)))

(assert (=> b!771580 (= e!429575 e!429572)))

(declare-fun d!101693 () Bool)

(assert (=> d!101693 e!429574))

(declare-fun c!85182 () Bool)

(assert (=> d!101693 (= c!85182 (and (is-Intermediate!7886 lt!343505) (undefined!8698 lt!343505)))))

(assert (=> d!101693 (= lt!343505 e!429573)))

(declare-fun c!85181 () Bool)

(assert (=> d!101693 (= c!85181 (bvsge x!1131 #b01111111111111111111111111111110))))

(declare-fun lt!343504 () (_ BitVec 64))

(assert (=> d!101693 (= lt!343504 (select (arr!20279 a!3186) index!1321))))

(assert (=> d!101693 (validMask!0 mask!3328)))

(assert (=> d!101693 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20279 a!3186) j!159) a!3186 mask!3328) lt!343505)))

(declare-fun b!771581 () Bool)

(assert (=> b!771581 (and (bvsge (index!33913 lt!343505) #b00000000000000000000000000000000) (bvslt (index!33913 lt!343505) (size!20700 a!3186)))))

(declare-fun res!522009 () Bool)

(assert (=> b!771581 (= res!522009 (= (select (arr!20279 a!3186) (index!33913 lt!343505)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!771581 (=> res!522009 e!429572)))

(declare-fun b!771582 () Bool)

(assert (=> b!771582 (= e!429571 (Intermediate!7886 false index!1321 x!1131))))

(declare-fun b!771583 () Bool)

(assert (=> b!771583 (= e!429573 e!429571)))

(declare-fun c!85183 () Bool)

(assert (=> b!771583 (= c!85183 (or (= lt!343504 (select (arr!20279 a!3186) j!159)) (= (bvadd lt!343504 lt!343504) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!101693 c!85181) b!771579))

(assert (= (and d!101693 (not c!85181)) b!771583))

(assert (= (and b!771583 c!85183) b!771582))

(assert (= (and b!771583 (not c!85183)) b!771577))

(assert (= (and d!101693 c!85182) b!771575))

(assert (= (and d!101693 (not c!85182)) b!771576))

(assert (= (and b!771576 res!522007) b!771580))

(assert (= (and b!771580 (not res!522008)) b!771581))

(assert (= (and b!771581 (not res!522009)) b!771578))

(declare-fun m!716709 () Bool)

(assert (=> b!771578 m!716709))

(assert (=> b!771580 m!716709))

(declare-fun m!716711 () Bool)

(assert (=> d!101693 m!716711))

(assert (=> d!101693 m!716471))

(assert (=> b!771577 m!716459))

(assert (=> b!771577 m!716459))

(assert (=> b!771577 m!716427))

(declare-fun m!716713 () Bool)

(assert (=> b!771577 m!716713))

(assert (=> b!771581 m!716709))

(assert (=> b!771188 d!101693))

(declare-fun b!771584 () Bool)

(declare-fun e!429576 () SeekEntryResult!7886)

(declare-fun e!429577 () SeekEntryResult!7886)

(assert (=> b!771584 (= e!429576 e!429577)))

(declare-fun lt!343506 () (_ BitVec 64))

(declare-fun lt!343508 () SeekEntryResult!7886)

(assert (=> b!771584 (= lt!343506 (select (arr!20279 a!3186) (index!33913 lt!343508)))))

(declare-fun c!85184 () Bool)

(assert (=> b!771584 (= c!85184 (= lt!343506 k!2102))))

(declare-fun b!771585 () Bool)

(declare-fun e!429578 () SeekEntryResult!7886)

(assert (=> b!771585 (= e!429578 (MissingZero!7886 (index!33913 lt!343508)))))

(declare-fun b!771586 () Bool)

(assert (=> b!771586 (= e!429578 (seekKeyOrZeroReturnVacant!0 (x!64858 lt!343508) (index!33913 lt!343508) (index!33913 lt!343508) k!2102 a!3186 mask!3328))))

(declare-fun d!101695 () Bool)

(declare-fun lt!343507 () SeekEntryResult!7886)

(assert (=> d!101695 (and (or (is-Undefined!7886 lt!343507) (not (is-Found!7886 lt!343507)) (and (bvsge (index!33912 lt!343507) #b00000000000000000000000000000000) (bvslt (index!33912 lt!343507) (size!20700 a!3186)))) (or (is-Undefined!7886 lt!343507) (is-Found!7886 lt!343507) (not (is-MissingZero!7886 lt!343507)) (and (bvsge (index!33911 lt!343507) #b00000000000000000000000000000000) (bvslt (index!33911 lt!343507) (size!20700 a!3186)))) (or (is-Undefined!7886 lt!343507) (is-Found!7886 lt!343507) (is-MissingZero!7886 lt!343507) (not (is-MissingVacant!7886 lt!343507)) (and (bvsge (index!33914 lt!343507) #b00000000000000000000000000000000) (bvslt (index!33914 lt!343507) (size!20700 a!3186)))) (or (is-Undefined!7886 lt!343507) (ite (is-Found!7886 lt!343507) (= (select (arr!20279 a!3186) (index!33912 lt!343507)) k!2102) (ite (is-MissingZero!7886 lt!343507) (= (select (arr!20279 a!3186) (index!33911 lt!343507)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!7886 lt!343507) (= (select (arr!20279 a!3186) (index!33914 lt!343507)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!101695 (= lt!343507 e!429576)))

(declare-fun c!85186 () Bool)

(assert (=> d!101695 (= c!85186 (and (is-Intermediate!7886 lt!343508) (undefined!8698 lt!343508)))))

(assert (=> d!101695 (= lt!343508 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2102 mask!3328) k!2102 a!3186 mask!3328))))

(assert (=> d!101695 (validMask!0 mask!3328)))

(assert (=> d!101695 (= (seekEntryOrOpen!0 k!2102 a!3186 mask!3328) lt!343507)))

(declare-fun b!771587 () Bool)

(assert (=> b!771587 (= e!429577 (Found!7886 (index!33913 lt!343508)))))

(declare-fun b!771588 () Bool)

(assert (=> b!771588 (= e!429576 Undefined!7886)))

(declare-fun b!771589 () Bool)

(declare-fun c!85185 () Bool)

(assert (=> b!771589 (= c!85185 (= lt!343506 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!771589 (= e!429577 e!429578)))

(assert (= (and d!101695 c!85186) b!771588))

(assert (= (and d!101695 (not c!85186)) b!771584))

(assert (= (and b!771584 c!85184) b!771587))

(assert (= (and b!771584 (not c!85184)) b!771589))

(assert (= (and b!771589 c!85185) b!771585))

(assert (= (and b!771589 (not c!85185)) b!771586))

(declare-fun m!716715 () Bool)

(assert (=> b!771584 m!716715))

(declare-fun m!716717 () Bool)

(assert (=> b!771586 m!716717))

(declare-fun m!716719 () Bool)

(assert (=> d!101695 m!716719))

(declare-fun m!716721 () Bool)

(assert (=> d!101695 m!716721))

(declare-fun m!716723 () Bool)

(assert (=> d!101695 m!716723))

(assert (=> d!101695 m!716471))

(assert (=> d!101695 m!716721))

(declare-fun m!716725 () Bool)

(assert (=> d!101695 m!716725))

(declare-fun m!716727 () Bool)

(assert (=> d!101695 m!716727))

(assert (=> b!771199 d!101695))

(declare-fun b!771590 () Bool)

(declare-fun e!429580 () SeekEntryResult!7886)

(assert (=> b!771590 (= e!429580 (MissingVacant!7886 resIntermediateIndex!5))))

(declare-fun b!771591 () Bool)

(declare-fun e!429581 () SeekEntryResult!7886)

(assert (=> b!771591 (= e!429581 (Found!7886 index!1321))))

(declare-fun b!771592 () Bool)

(declare-fun e!429579 () SeekEntryResult!7886)

(assert (=> b!771592 (= e!429579 Undefined!7886)))

(declare-fun b!771593 () Bool)

(assert (=> b!771593 (= e!429579 e!429581)))

(declare-fun c!85188 () Bool)

(declare-fun lt!343510 () (_ BitVec 64))

(assert (=> b!771593 (= c!85188 (= lt!343510 (select (arr!20279 a!3186) j!159)))))

(declare-fun d!101697 () Bool)

(declare-fun lt!343509 () SeekEntryResult!7886)

(assert (=> d!101697 (and (or (is-Undefined!7886 lt!343509) (not (is-Found!7886 lt!343509)) (and (bvsge (index!33912 lt!343509) #b00000000000000000000000000000000) (bvslt (index!33912 lt!343509) (size!20700 a!3186)))) (or (is-Undefined!7886 lt!343509) (is-Found!7886 lt!343509) (not (is-MissingVacant!7886 lt!343509)) (not (= (index!33914 lt!343509) resIntermediateIndex!5)) (and (bvsge (index!33914 lt!343509) #b00000000000000000000000000000000) (bvslt (index!33914 lt!343509) (size!20700 a!3186)))) (or (is-Undefined!7886 lt!343509) (ite (is-Found!7886 lt!343509) (= (select (arr!20279 a!3186) (index!33912 lt!343509)) (select (arr!20279 a!3186) j!159)) (and (is-MissingVacant!7886 lt!343509) (= (index!33914 lt!343509) resIntermediateIndex!5) (= (select (arr!20279 a!3186) (index!33914 lt!343509)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!101697 (= lt!343509 e!429579)))

(declare-fun c!85189 () Bool)

(assert (=> d!101697 (= c!85189 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!101697 (= lt!343510 (select (arr!20279 a!3186) index!1321))))

(assert (=> d!101697 (validMask!0 mask!3328)))

(assert (=> d!101697 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20279 a!3186) j!159) a!3186 mask!3328) lt!343509)))

(declare-fun b!771594 () Bool)

(assert (=> b!771594 (= e!429580 (seekKeyOrZeroReturnVacant!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) resIntermediateIndex!5 (select (arr!20279 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!771595 () Bool)

(declare-fun c!85187 () Bool)

(assert (=> b!771595 (= c!85187 (= lt!343510 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!771595 (= e!429581 e!429580)))

(assert (= (and d!101697 c!85189) b!771592))

(assert (= (and d!101697 (not c!85189)) b!771593))

(assert (= (and b!771593 c!85188) b!771591))

(assert (= (and b!771593 (not c!85188)) b!771595))

(assert (= (and b!771595 c!85187) b!771590))

(assert (= (and b!771595 (not c!85187)) b!771594))

(declare-fun m!716729 () Bool)

(assert (=> d!101697 m!716729))

(declare-fun m!716731 () Bool)

(assert (=> d!101697 m!716731))

(assert (=> d!101697 m!716711))

(assert (=> d!101697 m!716471))

(assert (=> b!771594 m!716459))

(assert (=> b!771594 m!716459))

(assert (=> b!771594 m!716427))

(declare-fun m!716733 () Bool)

(assert (=> b!771594 m!716733))

(assert (=> b!771189 d!101697))

(declare-fun b!771606 () Bool)

(declare-fun e!429593 () Bool)

(declare-fun contains!4091 (List!14334 (_ BitVec 64)) Bool)

(assert (=> b!771606 (= e!429593 (contains!4091 Nil!14331 (select (arr!20279 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!771607 () Bool)

(declare-fun e!429590 () Bool)

(declare-fun e!429592 () Bool)

(assert (=> b!771607 (= e!429590 e!429592)))

(declare-fun c!85192 () Bool)

(assert (=> b!771607 (= c!85192 (validKeyInArray!0 (select (arr!20279 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!771608 () Bool)

(declare-fun call!35128 () Bool)

(assert (=> b!771608 (= e!429592 call!35128)))

(declare-fun b!771609 () Bool)

(declare-fun e!429591 () Bool)

(assert (=> b!771609 (= e!429591 e!429590)))

(declare-fun res!522016 () Bool)

(assert (=> b!771609 (=> (not res!522016) (not e!429590))))

(assert (=> b!771609 (= res!522016 (not e!429593))))

(declare-fun res!522018 () Bool)

(assert (=> b!771609 (=> (not res!522018) (not e!429593))))

(assert (=> b!771609 (= res!522018 (validKeyInArray!0 (select (arr!20279 a!3186) #b00000000000000000000000000000000)))))

(declare-fun d!101699 () Bool)

(declare-fun res!522017 () Bool)

(assert (=> d!101699 (=> res!522017 e!429591)))

(assert (=> d!101699 (= res!522017 (bvsge #b00000000000000000000000000000000 (size!20700 a!3186)))))

(assert (=> d!101699 (= (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14331) e!429591)))

(declare-fun bm!35125 () Bool)

(assert (=> bm!35125 (= call!35128 (arrayNoDuplicates!0 a!3186 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!85192 (Cons!14330 (select (arr!20279 a!3186) #b00000000000000000000000000000000) Nil!14331) Nil!14331)))))

(declare-fun b!771610 () Bool)

(assert (=> b!771610 (= e!429592 call!35128)))

(assert (= (and d!101699 (not res!522017)) b!771609))

(assert (= (and b!771609 res!522018) b!771606))

(assert (= (and b!771609 res!522016) b!771607))

(assert (= (and b!771607 c!85192) b!771608))

(assert (= (and b!771607 (not c!85192)) b!771610))

(assert (= (or b!771608 b!771610) bm!35125))

(assert (=> b!771606 m!716625))

(assert (=> b!771606 m!716625))

(declare-fun m!716735 () Bool)

(assert (=> b!771606 m!716735))

(assert (=> b!771607 m!716625))

(assert (=> b!771607 m!716625))

(assert (=> b!771607 m!716699))

(assert (=> b!771609 m!716625))

(assert (=> b!771609 m!716625))

(assert (=> b!771609 m!716699))

(assert (=> bm!35125 m!716625))

(declare-fun m!716737 () Bool)

(assert (=> bm!35125 m!716737))

(assert (=> b!771192 d!101699))

(declare-fun d!101705 () Bool)

(assert (=> d!101705 (= (validKeyInArray!0 k!2102) (and (not (= k!2102 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2102 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!771203 d!101705))

(declare-fun b!771615 () Bool)

(declare-fun e!429600 () Bool)

(declare-fun lt!343515 () SeekEntryResult!7886)

(assert (=> b!771615 (= e!429600 (bvsge (x!64858 lt!343515) #b01111111111111111111111111111110))))

(declare-fun b!771616 () Bool)

(declare-fun e!429601 () Bool)

(assert (=> b!771616 (= e!429600 e!429601)))

(declare-fun res!522021 () Bool)

(assert (=> b!771616 (= res!522021 (and (is-Intermediate!7886 lt!343515) (not (undefined!8698 lt!343515)) (bvslt (x!64858 lt!343515) #b01111111111111111111111111111110) (bvsge (x!64858 lt!343515) #b00000000000000000000000000000000) (bvsge (x!64858 lt!343515) x!1131)))))

(assert (=> b!771616 (=> (not res!522021) (not e!429601))))

(declare-fun e!429597 () SeekEntryResult!7886)

(declare-fun b!771617 () Bool)

(assert (=> b!771617 (= e!429597 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) lt!343353 lt!343347 mask!3328))))

(declare-fun b!771618 () Bool)

(assert (=> b!771618 (and (bvsge (index!33913 lt!343515) #b00000000000000000000000000000000) (bvslt (index!33913 lt!343515) (size!20700 lt!343347)))))

(declare-fun e!429598 () Bool)

(assert (=> b!771618 (= e!429598 (= (select (arr!20279 lt!343347) (index!33913 lt!343515)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!771619 () Bool)

(declare-fun e!429599 () SeekEntryResult!7886)

(assert (=> b!771619 (= e!429599 (Intermediate!7886 true index!1321 x!1131))))

(declare-fun b!771620 () Bool)

(assert (=> b!771620 (and (bvsge (index!33913 lt!343515) #b00000000000000000000000000000000) (bvslt (index!33913 lt!343515) (size!20700 lt!343347)))))

(declare-fun res!522022 () Bool)

(assert (=> b!771620 (= res!522022 (= (select (arr!20279 lt!343347) (index!33913 lt!343515)) lt!343353))))

(assert (=> b!771620 (=> res!522022 e!429598)))

(assert (=> b!771620 (= e!429601 e!429598)))

(declare-fun d!101709 () Bool)

(assert (=> d!101709 e!429600))

(declare-fun c!85195 () Bool)

(assert (=> d!101709 (= c!85195 (and (is-Intermediate!7886 lt!343515) (undefined!8698 lt!343515)))))

(assert (=> d!101709 (= lt!343515 e!429599)))

(declare-fun c!85194 () Bool)

(assert (=> d!101709 (= c!85194 (bvsge x!1131 #b01111111111111111111111111111110))))

(declare-fun lt!343514 () (_ BitVec 64))

(assert (=> d!101709 (= lt!343514 (select (arr!20279 lt!343347) index!1321))))

(assert (=> d!101709 (validMask!0 mask!3328)))

(assert (=> d!101709 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!343353 lt!343347 mask!3328) lt!343515)))

(declare-fun b!771621 () Bool)

(assert (=> b!771621 (and (bvsge (index!33913 lt!343515) #b00000000000000000000000000000000) (bvslt (index!33913 lt!343515) (size!20700 lt!343347)))))

(declare-fun res!522023 () Bool)

(assert (=> b!771621 (= res!522023 (= (select (arr!20279 lt!343347) (index!33913 lt!343515)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!771621 (=> res!522023 e!429598)))

(declare-fun b!771622 () Bool)

(assert (=> b!771622 (= e!429597 (Intermediate!7886 false index!1321 x!1131))))

(declare-fun b!771623 () Bool)

(assert (=> b!771623 (= e!429599 e!429597)))

(declare-fun c!85196 () Bool)

(assert (=> b!771623 (= c!85196 (or (= lt!343514 lt!343353) (= (bvadd lt!343514 lt!343514) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!101709 c!85194) b!771619))

(assert (= (and d!101709 (not c!85194)) b!771623))

(assert (= (and b!771623 c!85196) b!771622))

(assert (= (and b!771623 (not c!85196)) b!771617))

(assert (= (and d!101709 c!85195) b!771615))

(assert (= (and d!101709 (not c!85195)) b!771616))

(assert (= (and b!771616 res!522021) b!771620))

(assert (= (and b!771620 (not res!522022)) b!771621))

(assert (= (and b!771621 (not res!522023)) b!771618))

(declare-fun m!716745 () Bool)

(assert (=> b!771618 m!716745))

(assert (=> b!771620 m!716745))

(declare-fun m!716747 () Bool)

(assert (=> d!101709 m!716747))

(assert (=> d!101709 m!716471))

(assert (=> b!771617 m!716459))

(assert (=> b!771617 m!716459))

(declare-fun m!716749 () Bool)

(assert (=> b!771617 m!716749))

(assert (=> b!771621 m!716745))

(assert (=> b!771191 d!101709))

(declare-fun b!771624 () Bool)

(declare-fun e!429605 () Bool)

(declare-fun lt!343517 () SeekEntryResult!7886)

(assert (=> b!771624 (= e!429605 (bvsge (x!64858 lt!343517) #b01111111111111111111111111111110))))

(declare-fun b!771625 () Bool)

(declare-fun e!429606 () Bool)

(assert (=> b!771625 (= e!429605 e!429606)))

(declare-fun res!522024 () Bool)

(assert (=> b!771625 (= res!522024 (and (is-Intermediate!7886 lt!343517) (not (undefined!8698 lt!343517)) (bvslt (x!64858 lt!343517) #b01111111111111111111111111111110) (bvsge (x!64858 lt!343517) #b00000000000000000000000000000000) (bvsge (x!64858 lt!343517) #b00000000000000000000000000000000)))))

(assert (=> b!771625 (=> (not res!522024) (not e!429606))))

(declare-fun e!429602 () SeekEntryResult!7886)

(declare-fun b!771626 () Bool)

(assert (=> b!771626 (= e!429602 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!343353 mask!3328) #b00000000000000000000000000000000 mask!3328) lt!343353 lt!343347 mask!3328))))

(declare-fun b!771627 () Bool)

(assert (=> b!771627 (and (bvsge (index!33913 lt!343517) #b00000000000000000000000000000000) (bvslt (index!33913 lt!343517) (size!20700 lt!343347)))))

(declare-fun e!429603 () Bool)

(assert (=> b!771627 (= e!429603 (= (select (arr!20279 lt!343347) (index!33913 lt!343517)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!771628 () Bool)

(declare-fun e!429604 () SeekEntryResult!7886)

(assert (=> b!771628 (= e!429604 (Intermediate!7886 true (toIndex!0 lt!343353 mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!771629 () Bool)

(assert (=> b!771629 (and (bvsge (index!33913 lt!343517) #b00000000000000000000000000000000) (bvslt (index!33913 lt!343517) (size!20700 lt!343347)))))

(declare-fun res!522025 () Bool)

(assert (=> b!771629 (= res!522025 (= (select (arr!20279 lt!343347) (index!33913 lt!343517)) lt!343353))))

(assert (=> b!771629 (=> res!522025 e!429603)))

(assert (=> b!771629 (= e!429606 e!429603)))

