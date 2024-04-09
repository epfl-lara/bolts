; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67034 () Bool)

(assert start!67034)

(declare-datatypes ((array!42413 0))(
  ( (array!42414 (arr!20300 (Array (_ BitVec 32) (_ BitVec 64))) (size!20721 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42413)

(declare-fun e!430524 () Bool)

(declare-datatypes ((SeekEntryResult!7907 0))(
  ( (MissingZero!7907 (index!33995 (_ BitVec 32))) (Found!7907 (index!33996 (_ BitVec 32))) (Intermediate!7907 (undefined!8719 Bool) (index!33997 (_ BitVec 32)) (x!64959 (_ BitVec 32))) (Undefined!7907) (MissingVacant!7907 (index!33998 (_ BitVec 32))) )
))
(declare-fun lt!344418 () SeekEntryResult!7907)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun b!773369 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42413 (_ BitVec 32)) SeekEntryResult!7907)

(assert (=> b!773369 (= e!430524 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20300 a!3186) j!159) a!3186 mask!3328) lt!344418))))

(declare-fun b!773370 () Bool)

(declare-fun res!523164 () Bool)

(declare-fun e!430529 () Bool)

(assert (=> b!773370 (=> (not res!523164) (not e!430529))))

(assert (=> b!773370 (= res!523164 e!430524)))

(declare-fun c!85503 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!773370 (= c!85503 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!773371 () Bool)

(declare-fun e!430528 () Bool)

(declare-fun e!430525 () Bool)

(assert (=> b!773371 (= e!430528 (not e!430525))))

(declare-fun res!523163 () Bool)

(assert (=> b!773371 (=> res!523163 e!430525)))

(declare-fun lt!344411 () SeekEntryResult!7907)

(assert (=> b!773371 (= res!523163 (or (not (is-Intermediate!7907 lt!344411)) (bvsge x!1131 (x!64959 lt!344411))))))

(declare-fun e!430523 () Bool)

(assert (=> b!773371 e!430523))

(declare-fun res!523175 () Bool)

(assert (=> b!773371 (=> (not res!523175) (not e!430523))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42413 (_ BitVec 32)) Bool)

(assert (=> b!773371 (= res!523175 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26664 0))(
  ( (Unit!26665) )
))
(declare-fun lt!344410 () Unit!26664)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42413 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26664)

(assert (=> b!773371 (= lt!344410 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!773372 () Bool)

(declare-fun e!430522 () Bool)

(assert (=> b!773372 (= e!430522 e!430529)))

(declare-fun res!523167 () Bool)

(assert (=> b!773372 (=> (not res!523167) (not e!430529))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!773372 (= res!523167 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20300 a!3186) j!159) mask!3328) (select (arr!20300 a!3186) j!159) a!3186 mask!3328) lt!344418))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!773372 (= lt!344418 (Intermediate!7907 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!773373 () Bool)

(declare-fun e!430531 () Unit!26664)

(declare-fun Unit!26666 () Unit!26664)

(assert (=> b!773373 (= e!430531 Unit!26666)))

(declare-fun lt!344409 () (_ BitVec 32))

(assert (=> b!773373 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!344409 (select (arr!20300 a!3186) j!159) a!3186 mask!3328) lt!344418)))

(declare-fun b!773374 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42413 (_ BitVec 32)) SeekEntryResult!7907)

(assert (=> b!773374 (= e!430524 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20300 a!3186) j!159) a!3186 mask!3328) (Found!7907 j!159)))))

(declare-fun b!773375 () Bool)

(declare-fun res!523173 () Bool)

(assert (=> b!773375 (=> (not res!523173) (not e!430522))))

(declare-datatypes ((List!14355 0))(
  ( (Nil!14352) (Cons!14351 (h!15456 (_ BitVec 64)) (t!20678 List!14355)) )
))
(declare-fun arrayNoDuplicates!0 (array!42413 (_ BitVec 32) List!14355) Bool)

(assert (=> b!773375 (= res!523173 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14352))))

(declare-fun b!773377 () Bool)

(assert (=> b!773377 (= e!430525 true)))

(declare-fun lt!344416 () Unit!26664)

(assert (=> b!773377 (= lt!344416 e!430531)))

(declare-fun c!85502 () Bool)

(assert (=> b!773377 (= c!85502 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!773377 (= lt!344409 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!773378 () Bool)

(declare-fun res!523168 () Bool)

(declare-fun e!430527 () Bool)

(assert (=> b!773378 (=> (not res!523168) (not e!430527))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42413 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!773378 (= res!523168 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun e!430526 () Bool)

(declare-fun lt!344415 () SeekEntryResult!7907)

(declare-fun b!773379 () Bool)

(assert (=> b!773379 (= e!430526 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20300 a!3186) j!159) a!3186 mask!3328) lt!344415))))

(declare-fun b!773380 () Bool)

(declare-fun res!523170 () Bool)

(assert (=> b!773380 (=> (not res!523170) (not e!430527))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!773380 (= res!523170 (validKeyInArray!0 k!2102))))

(declare-fun b!773381 () Bool)

(declare-fun res!523166 () Bool)

(assert (=> b!773381 (=> (not res!523166) (not e!430527))))

(assert (=> b!773381 (= res!523166 (validKeyInArray!0 (select (arr!20300 a!3186) j!159)))))

(declare-fun b!773382 () Bool)

(assert (=> b!773382 (= e!430527 e!430522)))

(declare-fun res!523169 () Bool)

(assert (=> b!773382 (=> (not res!523169) (not e!430522))))

(declare-fun lt!344417 () SeekEntryResult!7907)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!773382 (= res!523169 (or (= lt!344417 (MissingZero!7907 i!1173)) (= lt!344417 (MissingVacant!7907 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42413 (_ BitVec 32)) SeekEntryResult!7907)

(assert (=> b!773382 (= lt!344417 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!773383 () Bool)

(declare-fun res!523174 () Bool)

(assert (=> b!773383 (=> (not res!523174) (not e!430527))))

(assert (=> b!773383 (= res!523174 (and (= (size!20721 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20721 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20721 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!773384 () Bool)

(declare-fun res!523171 () Bool)

(assert (=> b!773384 (=> (not res!523171) (not e!430522))))

(assert (=> b!773384 (= res!523171 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!773385 () Bool)

(assert (=> b!773385 (= e!430529 e!430528)))

(declare-fun res!523162 () Bool)

(assert (=> b!773385 (=> (not res!523162) (not e!430528))))

(declare-fun lt!344419 () SeekEntryResult!7907)

(assert (=> b!773385 (= res!523162 (= lt!344419 lt!344411))))

(declare-fun lt!344412 () array!42413)

(declare-fun lt!344414 () (_ BitVec 64))

(assert (=> b!773385 (= lt!344411 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!344414 lt!344412 mask!3328))))

(assert (=> b!773385 (= lt!344419 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!344414 mask!3328) lt!344414 lt!344412 mask!3328))))

(assert (=> b!773385 (= lt!344414 (select (store (arr!20300 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!773385 (= lt!344412 (array!42414 (store (arr!20300 a!3186) i!1173 k!2102) (size!20721 a!3186)))))

(declare-fun b!773386 () Bool)

(declare-fun res!523176 () Bool)

(assert (=> b!773386 (=> (not res!523176) (not e!430529))))

(assert (=> b!773386 (= res!523176 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20300 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!773387 () Bool)

(declare-fun res!523177 () Bool)

(assert (=> b!773387 (=> (not res!523177) (not e!430522))))

(assert (=> b!773387 (= res!523177 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20721 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20721 a!3186))))))

(declare-fun b!773388 () Bool)

(declare-fun Unit!26667 () Unit!26664)

(assert (=> b!773388 (= e!430531 Unit!26667)))

(declare-fun lt!344413 () SeekEntryResult!7907)

(assert (=> b!773388 (= lt!344413 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20300 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!773388 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!344409 resIntermediateIndex!5 (select (arr!20300 a!3186) j!159) a!3186 mask!3328) (Found!7907 j!159))))

(declare-fun res!523165 () Bool)

(assert (=> start!67034 (=> (not res!523165) (not e!430527))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67034 (= res!523165 (validMask!0 mask!3328))))

(assert (=> start!67034 e!430527))

(assert (=> start!67034 true))

(declare-fun array_inv!16074 (array!42413) Bool)

(assert (=> start!67034 (array_inv!16074 a!3186)))

(declare-fun b!773376 () Bool)

(assert (=> b!773376 (= e!430523 e!430526)))

(declare-fun res!523172 () Bool)

(assert (=> b!773376 (=> (not res!523172) (not e!430526))))

(assert (=> b!773376 (= res!523172 (= (seekEntryOrOpen!0 (select (arr!20300 a!3186) j!159) a!3186 mask!3328) lt!344415))))

(assert (=> b!773376 (= lt!344415 (Found!7907 j!159))))

(assert (= (and start!67034 res!523165) b!773383))

(assert (= (and b!773383 res!523174) b!773381))

(assert (= (and b!773381 res!523166) b!773380))

(assert (= (and b!773380 res!523170) b!773378))

(assert (= (and b!773378 res!523168) b!773382))

(assert (= (and b!773382 res!523169) b!773384))

(assert (= (and b!773384 res!523171) b!773375))

(assert (= (and b!773375 res!523173) b!773387))

(assert (= (and b!773387 res!523177) b!773372))

(assert (= (and b!773372 res!523167) b!773386))

(assert (= (and b!773386 res!523176) b!773370))

(assert (= (and b!773370 c!85503) b!773369))

(assert (= (and b!773370 (not c!85503)) b!773374))

(assert (= (and b!773370 res!523164) b!773385))

(assert (= (and b!773385 res!523162) b!773371))

(assert (= (and b!773371 res!523175) b!773376))

(assert (= (and b!773376 res!523172) b!773379))

(assert (= (and b!773371 (not res!523163)) b!773377))

(assert (= (and b!773377 c!85502) b!773373))

(assert (= (and b!773377 (not c!85502)) b!773388))

(declare-fun m!718167 () Bool)

(assert (=> b!773379 m!718167))

(assert (=> b!773379 m!718167))

(declare-fun m!718169 () Bool)

(assert (=> b!773379 m!718169))

(declare-fun m!718171 () Bool)

(assert (=> b!773384 m!718171))

(assert (=> b!773376 m!718167))

(assert (=> b!773376 m!718167))

(declare-fun m!718173 () Bool)

(assert (=> b!773376 m!718173))

(assert (=> b!773381 m!718167))

(assert (=> b!773381 m!718167))

(declare-fun m!718175 () Bool)

(assert (=> b!773381 m!718175))

(declare-fun m!718177 () Bool)

(assert (=> b!773386 m!718177))

(declare-fun m!718179 () Bool)

(assert (=> b!773378 m!718179))

(declare-fun m!718181 () Bool)

(assert (=> b!773380 m!718181))

(declare-fun m!718183 () Bool)

(assert (=> b!773382 m!718183))

(assert (=> b!773372 m!718167))

(assert (=> b!773372 m!718167))

(declare-fun m!718185 () Bool)

(assert (=> b!773372 m!718185))

(assert (=> b!773372 m!718185))

(assert (=> b!773372 m!718167))

(declare-fun m!718187 () Bool)

(assert (=> b!773372 m!718187))

(declare-fun m!718189 () Bool)

(assert (=> b!773375 m!718189))

(assert (=> b!773388 m!718167))

(assert (=> b!773388 m!718167))

(declare-fun m!718191 () Bool)

(assert (=> b!773388 m!718191))

(assert (=> b!773388 m!718167))

(declare-fun m!718193 () Bool)

(assert (=> b!773388 m!718193))

(declare-fun m!718195 () Bool)

(assert (=> b!773371 m!718195))

(declare-fun m!718197 () Bool)

(assert (=> b!773371 m!718197))

(declare-fun m!718199 () Bool)

(assert (=> b!773385 m!718199))

(declare-fun m!718201 () Bool)

(assert (=> b!773385 m!718201))

(declare-fun m!718203 () Bool)

(assert (=> b!773385 m!718203))

(declare-fun m!718205 () Bool)

(assert (=> b!773385 m!718205))

(assert (=> b!773385 m!718203))

(declare-fun m!718207 () Bool)

(assert (=> b!773385 m!718207))

(declare-fun m!718209 () Bool)

(assert (=> b!773377 m!718209))

(declare-fun m!718211 () Bool)

(assert (=> start!67034 m!718211))

(declare-fun m!718213 () Bool)

(assert (=> start!67034 m!718213))

(assert (=> b!773369 m!718167))

(assert (=> b!773369 m!718167))

(declare-fun m!718215 () Bool)

(assert (=> b!773369 m!718215))

(assert (=> b!773374 m!718167))

(assert (=> b!773374 m!718167))

(assert (=> b!773374 m!718191))

(assert (=> b!773373 m!718167))

(assert (=> b!773373 m!718167))

(declare-fun m!718217 () Bool)

(assert (=> b!773373 m!718217))

(push 1)

