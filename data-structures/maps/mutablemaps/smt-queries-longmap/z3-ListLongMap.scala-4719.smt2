; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65394 () Bool)

(assert start!65394)

(declare-fun b!743429 () Bool)

(declare-fun e!415382 () Bool)

(declare-fun e!415384 () Bool)

(assert (=> b!743429 (= e!415382 e!415384)))

(declare-fun res!500663 () Bool)

(assert (=> b!743429 (=> (not res!500663) (not e!415384))))

(declare-datatypes ((SeekEntryResult!7477 0))(
  ( (MissingZero!7477 (index!32275 (_ BitVec 32))) (Found!7477 (index!32276 (_ BitVec 32))) (Intermediate!7477 (undefined!8289 Bool) (index!32277 (_ BitVec 32)) (x!63268 (_ BitVec 32))) (Undefined!7477) (MissingVacant!7477 (index!32278 (_ BitVec 32))) )
))
(declare-fun lt!330263 () SeekEntryResult!7477)

(declare-fun lt!330264 () SeekEntryResult!7477)

(assert (=> b!743429 (= res!500663 (= lt!330263 lt!330264))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-datatypes ((array!41520 0))(
  ( (array!41521 (arr!19870 (Array (_ BitVec 32) (_ BitVec 64))) (size!20291 (_ BitVec 32))) )
))
(declare-fun lt!330260 () array!41520)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun lt!330259 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41520 (_ BitVec 32)) SeekEntryResult!7477)

(assert (=> b!743429 (= lt!330264 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!330259 lt!330260 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!743429 (= lt!330263 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!330259 mask!3328) lt!330259 lt!330260 mask!3328))))

(declare-fun a!3186 () array!41520)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k0!2102 () (_ BitVec 64))

(assert (=> b!743429 (= lt!330259 (select (store (arr!19870 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!743429 (= lt!330260 (array!41521 (store (arr!19870 a!3186) i!1173 k0!2102) (size!20291 a!3186)))))

(declare-fun b!743430 () Bool)

(declare-fun e!415383 () Bool)

(assert (=> b!743430 (= e!415383 e!415382)))

(declare-fun res!500657 () Bool)

(assert (=> b!743430 (=> (not res!500657) (not e!415382))))

(declare-fun lt!330261 () SeekEntryResult!7477)

(assert (=> b!743430 (= res!500657 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19870 a!3186) j!159) mask!3328) (select (arr!19870 a!3186) j!159) a!3186 mask!3328) lt!330261))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!743430 (= lt!330261 (Intermediate!7477 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun e!415386 () Bool)

(declare-fun b!743431 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41520 (_ BitVec 32)) SeekEntryResult!7477)

(assert (=> b!743431 (= e!415386 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19870 a!3186) j!159) a!3186 mask!3328) (Found!7477 j!159)))))

(declare-fun b!743432 () Bool)

(declare-fun res!500665 () Bool)

(assert (=> b!743432 (=> (not res!500665) (not e!415382))))

(assert (=> b!743432 (= res!500665 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19870 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!743433 () Bool)

(declare-fun res!500650 () Bool)

(assert (=> b!743433 (=> (not res!500650) (not e!415382))))

(assert (=> b!743433 (= res!500650 e!415386)))

(declare-fun c!81771 () Bool)

(assert (=> b!743433 (= c!81771 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!743434 () Bool)

(declare-fun res!500662 () Bool)

(declare-fun e!415388 () Bool)

(assert (=> b!743434 (=> (not res!500662) (not e!415388))))

(declare-fun arrayContainsKey!0 (array!41520 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!743434 (= res!500662 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!743435 () Bool)

(declare-fun res!500656 () Bool)

(assert (=> b!743435 (=> (not res!500656) (not e!415388))))

(assert (=> b!743435 (= res!500656 (and (= (size!20291 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20291 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20291 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!743436 () Bool)

(declare-fun e!415387 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!743436 (= e!415387 (validKeyInArray!0 lt!330259))))

(declare-fun b!743437 () Bool)

(assert (=> b!743437 (= e!415388 e!415383)))

(declare-fun res!500664 () Bool)

(assert (=> b!743437 (=> (not res!500664) (not e!415383))))

(declare-fun lt!330262 () SeekEntryResult!7477)

(assert (=> b!743437 (= res!500664 (or (= lt!330262 (MissingZero!7477 i!1173)) (= lt!330262 (MissingVacant!7477 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41520 (_ BitVec 32)) SeekEntryResult!7477)

(assert (=> b!743437 (= lt!330262 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun e!415381 () Bool)

(declare-fun lt!330265 () SeekEntryResult!7477)

(declare-fun b!743438 () Bool)

(assert (=> b!743438 (= e!415381 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19870 a!3186) j!159) a!3186 mask!3328) lt!330265))))

(declare-fun b!743439 () Bool)

(declare-fun res!500666 () Bool)

(assert (=> b!743439 (=> res!500666 e!415387)))

(assert (=> b!743439 (= res!500666 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19870 a!3186) j!159) a!3186 mask!3328) (Found!7477 j!159))))))

(declare-fun b!743440 () Bool)

(declare-fun res!500661 () Bool)

(assert (=> b!743440 (=> res!500661 e!415387)))

(assert (=> b!743440 (= res!500661 (or (not (= (select (store (arr!19870 a!3186) i!1173 k0!2102) index!1321) lt!330259)) (undefined!8289 lt!330264)))))

(declare-fun b!743441 () Bool)

(declare-fun res!500652 () Bool)

(assert (=> b!743441 (=> (not res!500652) (not e!415383))))

(declare-datatypes ((List!13925 0))(
  ( (Nil!13922) (Cons!13921 (h!14993 (_ BitVec 64)) (t!20248 List!13925)) )
))
(declare-fun arrayNoDuplicates!0 (array!41520 (_ BitVec 32) List!13925) Bool)

(assert (=> b!743441 (= res!500652 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13922))))

(declare-fun b!743442 () Bool)

(declare-fun res!500660 () Bool)

(assert (=> b!743442 (=> (not res!500660) (not e!415388))))

(assert (=> b!743442 (= res!500660 (validKeyInArray!0 (select (arr!19870 a!3186) j!159)))))

(declare-fun res!500658 () Bool)

(assert (=> start!65394 (=> (not res!500658) (not e!415388))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65394 (= res!500658 (validMask!0 mask!3328))))

(assert (=> start!65394 e!415388))

(assert (=> start!65394 true))

(declare-fun array_inv!15644 (array!41520) Bool)

(assert (=> start!65394 (array_inv!15644 a!3186)))

(declare-fun b!743443 () Bool)

(declare-fun res!500654 () Bool)

(assert (=> b!743443 (=> (not res!500654) (not e!415388))))

(assert (=> b!743443 (= res!500654 (validKeyInArray!0 k0!2102))))

(declare-fun b!743444 () Bool)

(assert (=> b!743444 (= e!415384 (not e!415387))))

(declare-fun res!500655 () Bool)

(assert (=> b!743444 (=> res!500655 e!415387)))

(get-info :version)

(assert (=> b!743444 (= res!500655 (or (not ((_ is Intermediate!7477) lt!330264)) (bvslt x!1131 (x!63268 lt!330264)) (not (= x!1131 (x!63268 lt!330264))) (not (= index!1321 (index!32277 lt!330264)))))))

(declare-fun e!415389 () Bool)

(assert (=> b!743444 e!415389))

(declare-fun res!500667 () Bool)

(assert (=> b!743444 (=> (not res!500667) (not e!415389))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41520 (_ BitVec 32)) Bool)

(assert (=> b!743444 (= res!500667 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!25434 0))(
  ( (Unit!25435) )
))
(declare-fun lt!330266 () Unit!25434)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41520 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25434)

(assert (=> b!743444 (= lt!330266 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!743445 () Bool)

(assert (=> b!743445 (= e!415386 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19870 a!3186) j!159) a!3186 mask!3328) lt!330261))))

(declare-fun b!743446 () Bool)

(assert (=> b!743446 (= e!415389 e!415381)))

(declare-fun res!500653 () Bool)

(assert (=> b!743446 (=> (not res!500653) (not e!415381))))

(assert (=> b!743446 (= res!500653 (= (seekEntryOrOpen!0 (select (arr!19870 a!3186) j!159) a!3186 mask!3328) lt!330265))))

(assert (=> b!743446 (= lt!330265 (Found!7477 j!159))))

(declare-fun b!743447 () Bool)

(declare-fun res!500659 () Bool)

(assert (=> b!743447 (=> res!500659 e!415387)))

(assert (=> b!743447 (= res!500659 (bvslt mask!3328 #b00000000000000000000000000000000))))

(declare-fun b!743448 () Bool)

(declare-fun res!500648 () Bool)

(assert (=> b!743448 (=> (not res!500648) (not e!415383))))

(assert (=> b!743448 (= res!500648 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!743449 () Bool)

(declare-fun res!500651 () Bool)

(assert (=> b!743449 (=> (not res!500651) (not e!415383))))

(assert (=> b!743449 (= res!500651 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20291 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20291 a!3186))))))

(declare-fun b!743450 () Bool)

(declare-fun res!500649 () Bool)

(assert (=> b!743450 (=> res!500649 e!415387)))

(assert (=> b!743450 (= res!500649 (not (= (seekEntryOrOpen!0 lt!330259 lt!330260 mask!3328) (Found!7477 index!1321))))))

(assert (= (and start!65394 res!500658) b!743435))

(assert (= (and b!743435 res!500656) b!743442))

(assert (= (and b!743442 res!500660) b!743443))

(assert (= (and b!743443 res!500654) b!743434))

(assert (= (and b!743434 res!500662) b!743437))

(assert (= (and b!743437 res!500664) b!743448))

(assert (= (and b!743448 res!500648) b!743441))

(assert (= (and b!743441 res!500652) b!743449))

(assert (= (and b!743449 res!500651) b!743430))

(assert (= (and b!743430 res!500657) b!743432))

(assert (= (and b!743432 res!500665) b!743433))

(assert (= (and b!743433 c!81771) b!743445))

(assert (= (and b!743433 (not c!81771)) b!743431))

(assert (= (and b!743433 res!500650) b!743429))

(assert (= (and b!743429 res!500663) b!743444))

(assert (= (and b!743444 res!500667) b!743446))

(assert (= (and b!743446 res!500653) b!743438))

(assert (= (and b!743444 (not res!500655)) b!743439))

(assert (= (and b!743439 (not res!500666)) b!743440))

(assert (= (and b!743440 (not res!500661)) b!743450))

(assert (= (and b!743450 (not res!500649)) b!743447))

(assert (= (and b!743447 (not res!500659)) b!743436))

(declare-fun m!694193 () Bool)

(assert (=> b!743440 m!694193))

(declare-fun m!694195 () Bool)

(assert (=> b!743440 m!694195))

(declare-fun m!694197 () Bool)

(assert (=> b!743446 m!694197))

(assert (=> b!743446 m!694197))

(declare-fun m!694199 () Bool)

(assert (=> b!743446 m!694199))

(declare-fun m!694201 () Bool)

(assert (=> start!65394 m!694201))

(declare-fun m!694203 () Bool)

(assert (=> start!65394 m!694203))

(declare-fun m!694205 () Bool)

(assert (=> b!743444 m!694205))

(declare-fun m!694207 () Bool)

(assert (=> b!743444 m!694207))

(assert (=> b!743439 m!694197))

(assert (=> b!743439 m!694197))

(declare-fun m!694209 () Bool)

(assert (=> b!743439 m!694209))

(declare-fun m!694211 () Bool)

(assert (=> b!743437 m!694211))

(declare-fun m!694213 () Bool)

(assert (=> b!743434 m!694213))

(declare-fun m!694215 () Bool)

(assert (=> b!743441 m!694215))

(assert (=> b!743431 m!694197))

(assert (=> b!743431 m!694197))

(assert (=> b!743431 m!694209))

(declare-fun m!694217 () Bool)

(assert (=> b!743443 m!694217))

(assert (=> b!743442 m!694197))

(assert (=> b!743442 m!694197))

(declare-fun m!694219 () Bool)

(assert (=> b!743442 m!694219))

(declare-fun m!694221 () Bool)

(assert (=> b!743432 m!694221))

(declare-fun m!694223 () Bool)

(assert (=> b!743450 m!694223))

(assert (=> b!743430 m!694197))

(assert (=> b!743430 m!694197))

(declare-fun m!694225 () Bool)

(assert (=> b!743430 m!694225))

(assert (=> b!743430 m!694225))

(assert (=> b!743430 m!694197))

(declare-fun m!694227 () Bool)

(assert (=> b!743430 m!694227))

(assert (=> b!743445 m!694197))

(assert (=> b!743445 m!694197))

(declare-fun m!694229 () Bool)

(assert (=> b!743445 m!694229))

(declare-fun m!694231 () Bool)

(assert (=> b!743429 m!694231))

(declare-fun m!694233 () Bool)

(assert (=> b!743429 m!694233))

(assert (=> b!743429 m!694193))

(declare-fun m!694235 () Bool)

(assert (=> b!743429 m!694235))

(assert (=> b!743429 m!694231))

(declare-fun m!694237 () Bool)

(assert (=> b!743429 m!694237))

(assert (=> b!743438 m!694197))

(assert (=> b!743438 m!694197))

(declare-fun m!694239 () Bool)

(assert (=> b!743438 m!694239))

(declare-fun m!694241 () Bool)

(assert (=> b!743436 m!694241))

(declare-fun m!694243 () Bool)

(assert (=> b!743448 m!694243))

(check-sat (not b!743439) (not b!743443) (not b!743446) (not b!743450) (not b!743448) (not b!743434) (not start!65394) (not b!743438) (not b!743436) (not b!743445) (not b!743430) (not b!743437) (not b!743444) (not b!743441) (not b!743442) (not b!743429) (not b!743431))
(check-sat)
