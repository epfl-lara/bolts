; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65528 () Bool)

(assert start!65528)

(declare-fun res!503943 () Bool)

(declare-fun e!417195 () Bool)

(assert (=> start!65528 (=> (not res!503943) (not e!417195))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65528 (= res!503943 (validMask!0 mask!3328))))

(assert (=> start!65528 e!417195))

(assert (=> start!65528 true))

(declare-datatypes ((array!41654 0))(
  ( (array!41655 (arr!19937 (Array (_ BitVec 32) (_ BitVec 64))) (size!20358 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41654)

(declare-fun array_inv!15711 (array!41654) Bool)

(assert (=> start!65528 (array_inv!15711 a!3186)))

(declare-fun b!747150 () Bool)

(declare-fun e!417190 () Bool)

(assert (=> b!747150 (= e!417190 (bvsge mask!3328 #b00000000000000000000000000000000))))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!747150 (= (select (store (arr!19937 a!3186) i!1173 k!2102) index!1321) #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-datatypes ((Unit!25578 0))(
  ( (Unit!25579) )
))
(declare-fun lt!332121 () Unit!25578)

(declare-fun e!417192 () Unit!25578)

(assert (=> b!747150 (= lt!332121 e!417192)))

(declare-fun c!81990 () Bool)

(assert (=> b!747150 (= c!81990 (= (select (store (arr!19937 a!3186) i!1173 k!2102) index!1321) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!747151 () Bool)

(declare-fun res!503940 () Bool)

(declare-fun e!417196 () Bool)

(assert (=> b!747151 (=> (not res!503940) (not e!417196))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41654 (_ BitVec 32)) Bool)

(assert (=> b!747151 (= res!503940 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!747152 () Bool)

(declare-fun res!503935 () Bool)

(assert (=> b!747152 (=> (not res!503935) (not e!417195))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!747152 (= res!503935 (and (= (size!20358 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20358 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20358 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!747153 () Bool)

(declare-fun res!503944 () Bool)

(assert (=> b!747153 (=> (not res!503944) (not e!417195))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!747153 (= res!503944 (validKeyInArray!0 k!2102))))

(declare-fun b!747154 () Bool)

(declare-fun e!417191 () Bool)

(declare-fun e!417193 () Bool)

(assert (=> b!747154 (= e!417191 e!417193)))

(declare-fun res!503947 () Bool)

(assert (=> b!747154 (=> (not res!503947) (not e!417193))))

(declare-datatypes ((SeekEntryResult!7544 0))(
  ( (MissingZero!7544 (index!32543 (_ BitVec 32))) (Found!7544 (index!32544 (_ BitVec 32))) (Intermediate!7544 (undefined!8356 Bool) (index!32545 (_ BitVec 32)) (x!63511 (_ BitVec 32))) (Undefined!7544) (MissingVacant!7544 (index!32546 (_ BitVec 32))) )
))
(declare-fun lt!332124 () SeekEntryResult!7544)

(declare-fun lt!332117 () SeekEntryResult!7544)

(assert (=> b!747154 (= res!503947 (= lt!332124 lt!332117))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun lt!332119 () (_ BitVec 64))

(declare-fun lt!332118 () array!41654)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41654 (_ BitVec 32)) SeekEntryResult!7544)

(assert (=> b!747154 (= lt!332117 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!332119 lt!332118 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!747154 (= lt!332124 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!332119 mask!3328) lt!332119 lt!332118 mask!3328))))

(assert (=> b!747154 (= lt!332119 (select (store (arr!19937 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!747154 (= lt!332118 (array!41655 (store (arr!19937 a!3186) i!1173 k!2102) (size!20358 a!3186)))))

(declare-fun b!747155 () Bool)

(declare-fun Unit!25580 () Unit!25578)

(assert (=> b!747155 (= e!417192 Unit!25580)))

(assert (=> b!747155 false))

(declare-fun b!747156 () Bool)

(assert (=> b!747156 (= e!417195 e!417196)))

(declare-fun res!503938 () Bool)

(assert (=> b!747156 (=> (not res!503938) (not e!417196))))

(declare-fun lt!332123 () SeekEntryResult!7544)

(assert (=> b!747156 (= res!503938 (or (= lt!332123 (MissingZero!7544 i!1173)) (= lt!332123 (MissingVacant!7544 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41654 (_ BitVec 32)) SeekEntryResult!7544)

(assert (=> b!747156 (= lt!332123 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!747157 () Bool)

(declare-fun res!503946 () Bool)

(assert (=> b!747157 (=> (not res!503946) (not e!417191))))

(declare-fun e!417194 () Bool)

(assert (=> b!747157 (= res!503946 e!417194)))

(declare-fun c!81989 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!747157 (= c!81989 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!747158 () Bool)

(declare-fun Unit!25581 () Unit!25578)

(assert (=> b!747158 (= e!417192 Unit!25581)))

(declare-fun b!747159 () Bool)

(assert (=> b!747159 (= e!417196 e!417191)))

(declare-fun res!503937 () Bool)

(assert (=> b!747159 (=> (not res!503937) (not e!417191))))

(declare-fun lt!332122 () SeekEntryResult!7544)

(assert (=> b!747159 (= res!503937 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19937 a!3186) j!159) mask!3328) (select (arr!19937 a!3186) j!159) a!3186 mask!3328) lt!332122))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!747159 (= lt!332122 (Intermediate!7544 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!747160 () Bool)

(declare-fun res!503936 () Bool)

(assert (=> b!747160 (=> res!503936 e!417190)))

(assert (=> b!747160 (= res!503936 (= (select (store (arr!19937 a!3186) i!1173 k!2102) index!1321) lt!332119))))

(declare-fun b!747161 () Bool)

(assert (=> b!747161 (= e!417193 (not e!417190))))

(declare-fun res!503949 () Bool)

(assert (=> b!747161 (=> res!503949 e!417190)))

(assert (=> b!747161 (= res!503949 (or (not (is-Intermediate!7544 lt!332117)) (bvslt x!1131 (x!63511 lt!332117)) (not (= x!1131 (x!63511 lt!332117))) (not (= index!1321 (index!32545 lt!332117)))))))

(declare-fun e!417198 () Bool)

(assert (=> b!747161 e!417198))

(declare-fun res!503942 () Bool)

(assert (=> b!747161 (=> (not res!503942) (not e!417198))))

(declare-fun lt!332125 () SeekEntryResult!7544)

(declare-fun lt!332120 () SeekEntryResult!7544)

(assert (=> b!747161 (= res!503942 (= lt!332125 lt!332120))))

(assert (=> b!747161 (= lt!332120 (Found!7544 j!159))))

(assert (=> b!747161 (= lt!332125 (seekEntryOrOpen!0 (select (arr!19937 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!747161 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!332126 () Unit!25578)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41654 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25578)

(assert (=> b!747161 (= lt!332126 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!747162 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41654 (_ BitVec 32)) SeekEntryResult!7544)

(assert (=> b!747162 (= e!417194 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19937 a!3186) j!159) a!3186 mask!3328) (Found!7544 j!159)))))

(declare-fun b!747163 () Bool)

(declare-fun res!503934 () Bool)

(assert (=> b!747163 (=> res!503934 e!417190)))

(assert (=> b!747163 (= res!503934 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19937 a!3186) j!159) a!3186 mask!3328) lt!332120)))))

(declare-fun b!747164 () Bool)

(declare-fun res!503939 () Bool)

(assert (=> b!747164 (=> (not res!503939) (not e!417196))))

(declare-datatypes ((List!13992 0))(
  ( (Nil!13989) (Cons!13988 (h!15060 (_ BitVec 64)) (t!20315 List!13992)) )
))
(declare-fun arrayNoDuplicates!0 (array!41654 (_ BitVec 32) List!13992) Bool)

(assert (=> b!747164 (= res!503939 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13989))))

(declare-fun b!747165 () Bool)

(declare-fun res!503941 () Bool)

(assert (=> b!747165 (=> (not res!503941) (not e!417195))))

(declare-fun arrayContainsKey!0 (array!41654 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!747165 (= res!503941 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!747166 () Bool)

(declare-fun res!503945 () Bool)

(assert (=> b!747166 (=> (not res!503945) (not e!417195))))

(assert (=> b!747166 (= res!503945 (validKeyInArray!0 (select (arr!19937 a!3186) j!159)))))

(declare-fun b!747167 () Bool)

(assert (=> b!747167 (= e!417194 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19937 a!3186) j!159) a!3186 mask!3328) lt!332122))))

(declare-fun b!747168 () Bool)

(assert (=> b!747168 (= e!417198 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19937 a!3186) j!159) a!3186 mask!3328) lt!332120))))

(declare-fun b!747169 () Bool)

(declare-fun res!503933 () Bool)

(assert (=> b!747169 (=> (not res!503933) (not e!417191))))

(assert (=> b!747169 (= res!503933 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19937 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!747170 () Bool)

(declare-fun res!503948 () Bool)

(assert (=> b!747170 (=> (not res!503948) (not e!417196))))

(assert (=> b!747170 (= res!503948 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20358 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20358 a!3186))))))

(assert (= (and start!65528 res!503943) b!747152))

(assert (= (and b!747152 res!503935) b!747166))

(assert (= (and b!747166 res!503945) b!747153))

(assert (= (and b!747153 res!503944) b!747165))

(assert (= (and b!747165 res!503941) b!747156))

(assert (= (and b!747156 res!503938) b!747151))

(assert (= (and b!747151 res!503940) b!747164))

(assert (= (and b!747164 res!503939) b!747170))

(assert (= (and b!747170 res!503948) b!747159))

(assert (= (and b!747159 res!503937) b!747169))

(assert (= (and b!747169 res!503933) b!747157))

(assert (= (and b!747157 c!81989) b!747167))

(assert (= (and b!747157 (not c!81989)) b!747162))

(assert (= (and b!747157 res!503946) b!747154))

(assert (= (and b!747154 res!503947) b!747161))

(assert (= (and b!747161 res!503942) b!747168))

(assert (= (and b!747161 (not res!503949)) b!747163))

(assert (= (and b!747163 (not res!503934)) b!747160))

(assert (= (and b!747160 (not res!503936)) b!747150))

(assert (= (and b!747150 c!81990) b!747155))

(assert (= (and b!747150 (not c!81990)) b!747158))

(declare-fun m!697369 () Bool)

(assert (=> b!747166 m!697369))

(assert (=> b!747166 m!697369))

(declare-fun m!697371 () Bool)

(assert (=> b!747166 m!697371))

(declare-fun m!697373 () Bool)

(assert (=> b!747160 m!697373))

(declare-fun m!697375 () Bool)

(assert (=> b!747160 m!697375))

(declare-fun m!697377 () Bool)

(assert (=> start!65528 m!697377))

(declare-fun m!697379 () Bool)

(assert (=> start!65528 m!697379))

(assert (=> b!747159 m!697369))

(assert (=> b!747159 m!697369))

(declare-fun m!697381 () Bool)

(assert (=> b!747159 m!697381))

(assert (=> b!747159 m!697381))

(assert (=> b!747159 m!697369))

(declare-fun m!697383 () Bool)

(assert (=> b!747159 m!697383))

(assert (=> b!747168 m!697369))

(assert (=> b!747168 m!697369))

(declare-fun m!697385 () Bool)

(assert (=> b!747168 m!697385))

(assert (=> b!747162 m!697369))

(assert (=> b!747162 m!697369))

(declare-fun m!697387 () Bool)

(assert (=> b!747162 m!697387))

(assert (=> b!747154 m!697373))

(declare-fun m!697389 () Bool)

(assert (=> b!747154 m!697389))

(declare-fun m!697391 () Bool)

(assert (=> b!747154 m!697391))

(declare-fun m!697393 () Bool)

(assert (=> b!747154 m!697393))

(declare-fun m!697395 () Bool)

(assert (=> b!747154 m!697395))

(assert (=> b!747154 m!697393))

(assert (=> b!747167 m!697369))

(assert (=> b!747167 m!697369))

(declare-fun m!697397 () Bool)

(assert (=> b!747167 m!697397))

(declare-fun m!697399 () Bool)

(assert (=> b!747164 m!697399))

(declare-fun m!697401 () Bool)

(assert (=> b!747165 m!697401))

(declare-fun m!697403 () Bool)

(assert (=> b!747151 m!697403))

(assert (=> b!747150 m!697373))

(assert (=> b!747150 m!697375))

(declare-fun m!697405 () Bool)

(assert (=> b!747156 m!697405))

(declare-fun m!697407 () Bool)

(assert (=> b!747169 m!697407))

(assert (=> b!747161 m!697369))

(assert (=> b!747161 m!697369))

(declare-fun m!697409 () Bool)

(assert (=> b!747161 m!697409))

(declare-fun m!697411 () Bool)

(assert (=> b!747161 m!697411))

(declare-fun m!697413 () Bool)

(assert (=> b!747161 m!697413))

(assert (=> b!747163 m!697369))

(assert (=> b!747163 m!697369))

(assert (=> b!747163 m!697387))

(declare-fun m!697415 () Bool)

(assert (=> b!747153 m!697415))

(push 1)

