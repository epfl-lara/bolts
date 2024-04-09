; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30586 () Bool)

(assert start!30586)

(declare-fun b!306383 () Bool)

(declare-fun res!163407 () Bool)

(declare-fun e!192123 () Bool)

(assert (=> b!306383 (=> (not res!163407) (not e!192123))))

(declare-datatypes ((array!15588 0))(
  ( (array!15589 (arr!7377 (Array (_ BitVec 32) (_ BitVec 64))) (size!7729 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15588)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!306383 (= res!163407 (and (= (size!7729 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7729 a!3293))))))

(declare-fun b!306384 () Bool)

(declare-fun res!163410 () Bool)

(assert (=> b!306384 (=> (not res!163410) (not e!192123))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15588 (_ BitVec 32)) Bool)

(assert (=> b!306384 (= res!163410 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun res!163411 () Bool)

(assert (=> start!30586 (=> (not res!163411) (not e!192123))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30586 (= res!163411 (validMask!0 mask!3709))))

(assert (=> start!30586 e!192123))

(declare-fun array_inv!5331 (array!15588) Bool)

(assert (=> start!30586 (array_inv!5331 a!3293)))

(assert (=> start!30586 true))

(declare-fun b!306385 () Bool)

(declare-fun res!163413 () Bool)

(assert (=> b!306385 (=> (not res!163413) (not e!192123))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!2528 0))(
  ( (MissingZero!2528 (index!12288 (_ BitVec 32))) (Found!2528 (index!12289 (_ BitVec 32))) (Intermediate!2528 (undefined!3340 Bool) (index!12290 (_ BitVec 32)) (x!30502 (_ BitVec 32))) (Undefined!2528) (MissingVacant!2528 (index!12291 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15588 (_ BitVec 32)) SeekEntryResult!2528)

(assert (=> b!306385 (= res!163413 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2528 i!1240)))))

(declare-fun b!306386 () Bool)

(declare-fun res!163412 () Bool)

(declare-fun e!192121 () Bool)

(assert (=> b!306386 (=> (not res!163412) (not e!192121))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!306386 (= res!163412 (and (= (select (arr!7377 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7729 a!3293))))))

(declare-fun b!306387 () Bool)

(assert (=> b!306387 false))

(declare-datatypes ((Unit!9518 0))(
  ( (Unit!9519) )
))
(declare-fun e!192122 () Unit!9518)

(declare-fun Unit!9520 () Unit!9518)

(assert (=> b!306387 (= e!192122 Unit!9520)))

(declare-fun b!306388 () Bool)

(declare-fun e!192120 () Unit!9518)

(declare-fun Unit!9521 () Unit!9518)

(assert (=> b!306388 (= e!192120 Unit!9521)))

(declare-fun b!306389 () Bool)

(declare-fun res!163416 () Bool)

(assert (=> b!306389 (=> (not res!163416) (not e!192121))))

(assert (=> b!306389 (= res!163416 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7377 a!3293) index!1781) k!2441)) (= x!1427 resX!52)))))

(declare-fun b!306390 () Bool)

(assert (=> b!306390 false))

(declare-fun lt!150956 () SeekEntryResult!2528)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15588 (_ BitVec 32)) SeekEntryResult!2528)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!306390 (= lt!150956 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun Unit!9522 () Unit!9518)

(assert (=> b!306390 (= e!192122 Unit!9522)))

(declare-fun b!306391 () Bool)

(declare-fun res!163414 () Bool)

(assert (=> b!306391 (=> (not res!163414) (not e!192121))))

(declare-fun lt!150955 () SeekEntryResult!2528)

(assert (=> b!306391 (= res!163414 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!150955))))

(declare-fun b!306392 () Bool)

(assert (=> b!306392 (= e!192120 e!192122)))

(declare-fun c!49091 () Bool)

(assert (=> b!306392 (= c!49091 (or (= (select (arr!7377 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7377 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!306393 () Bool)

(assert (=> b!306393 (= e!192123 e!192121)))

(declare-fun res!163415 () Bool)

(assert (=> b!306393 (=> (not res!163415) (not e!192121))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!306393 (= res!163415 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!150955))))

(assert (=> b!306393 (= lt!150955 (Intermediate!2528 false resIndex!52 resX!52))))

(declare-fun b!306394 () Bool)

(declare-fun res!163409 () Bool)

(assert (=> b!306394 (=> (not res!163409) (not e!192123))))

(declare-fun arrayContainsKey!0 (array!15588 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!306394 (= res!163409 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!306395 () Bool)

(assert (=> b!306395 (= e!192121 (not true))))

(assert (=> b!306395 (= index!1781 resIndex!52)))

(declare-fun lt!150954 () Unit!9518)

(assert (=> b!306395 (= lt!150954 e!192120)))

(declare-fun c!49090 () Bool)

(assert (=> b!306395 (= c!49090 (not (= resIndex!52 index!1781)))))

(declare-fun b!306396 () Bool)

(declare-fun res!163408 () Bool)

(assert (=> b!306396 (=> (not res!163408) (not e!192123))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!306396 (= res!163408 (validKeyInArray!0 k!2441))))

(assert (= (and start!30586 res!163411) b!306383))

(assert (= (and b!306383 res!163407) b!306396))

(assert (= (and b!306396 res!163408) b!306394))

(assert (= (and b!306394 res!163409) b!306385))

(assert (= (and b!306385 res!163413) b!306384))

(assert (= (and b!306384 res!163410) b!306393))

(assert (= (and b!306393 res!163415) b!306386))

(assert (= (and b!306386 res!163412) b!306391))

(assert (= (and b!306391 res!163414) b!306389))

(assert (= (and b!306389 res!163416) b!306395))

(assert (= (and b!306395 c!49090) b!306392))

(assert (= (and b!306395 (not c!49090)) b!306388))

(assert (= (and b!306392 c!49091) b!306387))

(assert (= (and b!306392 (not c!49091)) b!306390))

(declare-fun m!316961 () Bool)

(assert (=> b!306385 m!316961))

(declare-fun m!316963 () Bool)

(assert (=> b!306390 m!316963))

(assert (=> b!306390 m!316963))

(declare-fun m!316965 () Bool)

(assert (=> b!306390 m!316965))

(declare-fun m!316967 () Bool)

(assert (=> b!306384 m!316967))

(declare-fun m!316969 () Bool)

(assert (=> b!306391 m!316969))

(declare-fun m!316971 () Bool)

(assert (=> start!30586 m!316971))

(declare-fun m!316973 () Bool)

(assert (=> start!30586 m!316973))

(declare-fun m!316975 () Bool)

(assert (=> b!306392 m!316975))

(assert (=> b!306389 m!316975))

(declare-fun m!316977 () Bool)

(assert (=> b!306394 m!316977))

(declare-fun m!316979 () Bool)

(assert (=> b!306386 m!316979))

(declare-fun m!316981 () Bool)

(assert (=> b!306396 m!316981))

(declare-fun m!316983 () Bool)

(assert (=> b!306393 m!316983))

(assert (=> b!306393 m!316983))

(declare-fun m!316985 () Bool)

(assert (=> b!306393 m!316985))

(push 1)

