; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65124 () Bool)

(assert start!65124)

(declare-fun b!734572 () Bool)

(declare-fun e!411056 () Bool)

(declare-fun e!411049 () Bool)

(assert (=> b!734572 (= e!411056 e!411049)))

(declare-fun res!493575 () Bool)

(assert (=> b!734572 (=> (not res!493575) (not e!411049))))

(declare-datatypes ((SeekEntryResult!7342 0))(
  ( (MissingZero!7342 (index!31735 (_ BitVec 32))) (Found!7342 (index!31736 (_ BitVec 32))) (Intermediate!7342 (undefined!8154 Bool) (index!31737 (_ BitVec 32)) (x!62773 (_ BitVec 32))) (Undefined!7342) (MissingVacant!7342 (index!31738 (_ BitVec 32))) )
))
(declare-fun lt!325577 () SeekEntryResult!7342)

(declare-fun lt!325576 () SeekEntryResult!7342)

(assert (=> b!734572 (= res!493575 (= lt!325577 lt!325576))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!325578 () (_ BitVec 64))

(declare-datatypes ((array!41250 0))(
  ( (array!41251 (arr!19735 (Array (_ BitVec 32) (_ BitVec 64))) (size!20156 (_ BitVec 32))) )
))
(declare-fun lt!325583 () array!41250)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41250 (_ BitVec 32)) SeekEntryResult!7342)

(assert (=> b!734572 (= lt!325576 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!325578 lt!325583 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!734572 (= lt!325577 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!325578 mask!3328) lt!325578 lt!325583 mask!3328))))

(declare-fun a!3186 () array!41250)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k0!2102 () (_ BitVec 64))

(assert (=> b!734572 (= lt!325578 (select (store (arr!19735 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!734572 (= lt!325583 (array!41251 (store (arr!19735 a!3186) i!1173 k0!2102) (size!20156 a!3186)))))

(declare-fun b!734573 () Bool)

(declare-fun e!411052 () Bool)

(declare-fun e!411057 () Bool)

(assert (=> b!734573 (= e!411052 e!411057)))

(declare-fun res!493585 () Bool)

(assert (=> b!734573 (=> (not res!493585) (not e!411057))))

(declare-fun lt!325581 () SeekEntryResult!7342)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41250 (_ BitVec 32)) SeekEntryResult!7342)

(assert (=> b!734573 (= res!493585 (= (seekEntryOrOpen!0 (select (arr!19735 a!3186) j!159) a!3186 mask!3328) lt!325581))))

(assert (=> b!734573 (= lt!325581 (Found!7342 j!159))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun b!734574 () Bool)

(declare-fun e!411048 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41250 (_ BitVec 32)) SeekEntryResult!7342)

(assert (=> b!734574 (= e!411048 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19735 a!3186) j!159) a!3186 mask!3328) (Found!7342 j!159)))))

(declare-fun b!734575 () Bool)

(declare-fun res!493581 () Bool)

(assert (=> b!734575 (=> (not res!493581) (not e!411056))))

(assert (=> b!734575 (= res!493581 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19735 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!734576 () Bool)

(declare-fun res!493582 () Bool)

(declare-fun e!411055 () Bool)

(assert (=> b!734576 (=> (not res!493582) (not e!411055))))

(declare-fun arrayContainsKey!0 (array!41250 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!734576 (= res!493582 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!734577 () Bool)

(declare-fun res!493587 () Bool)

(declare-fun e!411051 () Bool)

(assert (=> b!734577 (=> (not res!493587) (not e!411051))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!734577 (= res!493587 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20156 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20156 a!3186))))))

(declare-fun b!734578 () Bool)

(assert (=> b!734578 (= e!411051 e!411056)))

(declare-fun res!493588 () Bool)

(assert (=> b!734578 (=> (not res!493588) (not e!411056))))

(declare-fun lt!325579 () SeekEntryResult!7342)

(assert (=> b!734578 (= res!493588 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19735 a!3186) j!159) mask!3328) (select (arr!19735 a!3186) j!159) a!3186 mask!3328) lt!325579))))

(assert (=> b!734578 (= lt!325579 (Intermediate!7342 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun res!493584 () Bool)

(assert (=> start!65124 (=> (not res!493584) (not e!411055))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65124 (= res!493584 (validMask!0 mask!3328))))

(assert (=> start!65124 e!411055))

(assert (=> start!65124 true))

(declare-fun array_inv!15509 (array!41250) Bool)

(assert (=> start!65124 (array_inv!15509 a!3186)))

(declare-fun b!734579 () Bool)

(declare-fun res!493590 () Bool)

(assert (=> b!734579 (=> (not res!493590) (not e!411055))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!734579 (= res!493590 (validKeyInArray!0 k0!2102))))

(declare-fun b!734580 () Bool)

(assert (=> b!734580 (= e!411055 e!411051)))

(declare-fun res!493573 () Bool)

(assert (=> b!734580 (=> (not res!493573) (not e!411051))))

(declare-fun lt!325575 () SeekEntryResult!7342)

(assert (=> b!734580 (= res!493573 (or (= lt!325575 (MissingZero!7342 i!1173)) (= lt!325575 (MissingVacant!7342 i!1173))))))

(assert (=> b!734580 (= lt!325575 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!734581 () Bool)

(declare-fun res!493574 () Bool)

(declare-fun e!411050 () Bool)

(assert (=> b!734581 (=> res!493574 e!411050)))

(assert (=> b!734581 (= res!493574 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19735 a!3186) j!159) a!3186 mask!3328) (Found!7342 j!159)))))

(declare-fun b!734582 () Bool)

(declare-fun res!493589 () Bool)

(assert (=> b!734582 (=> (not res!493589) (not e!411051))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41250 (_ BitVec 32)) Bool)

(assert (=> b!734582 (= res!493589 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!734583 () Bool)

(assert (=> b!734583 (= e!411048 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19735 a!3186) j!159) a!3186 mask!3328) lt!325579))))

(declare-fun b!734584 () Bool)

(declare-fun res!493576 () Bool)

(assert (=> b!734584 (=> (not res!493576) (not e!411055))))

(assert (=> b!734584 (= res!493576 (and (= (size!20156 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20156 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20156 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!734585 () Bool)

(assert (=> b!734585 (= e!411057 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19735 a!3186) j!159) a!3186 mask!3328) lt!325581))))

(declare-fun lt!325580 () (_ BitVec 32))

(declare-fun b!734586 () Bool)

(assert (=> b!734586 (= e!411050 (or (bvslt mask!3328 #b00000000000000000000000000000000) (bvslt lt!325580 #b00000000000000000000000000000000) (bvsge lt!325580 (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (bvadd #b00000000000000000000000000000001 mask!3328))))))

(declare-fun b!734587 () Bool)

(declare-fun e!411053 () Bool)

(assert (=> b!734587 (= e!411049 (not e!411053))))

(declare-fun res!493580 () Bool)

(assert (=> b!734587 (=> res!493580 e!411053)))

(get-info :version)

(assert (=> b!734587 (= res!493580 (or (not ((_ is Intermediate!7342) lt!325576)) (bvsge x!1131 (x!62773 lt!325576))))))

(assert (=> b!734587 e!411052))

(declare-fun res!493586 () Bool)

(assert (=> b!734587 (=> (not res!493586) (not e!411052))))

(assert (=> b!734587 (= res!493586 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!25002 0))(
  ( (Unit!25003) )
))
(declare-fun lt!325582 () Unit!25002)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41250 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25002)

(assert (=> b!734587 (= lt!325582 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!734588 () Bool)

(declare-fun res!493579 () Bool)

(assert (=> b!734588 (=> (not res!493579) (not e!411051))))

(declare-datatypes ((List!13790 0))(
  ( (Nil!13787) (Cons!13786 (h!14858 (_ BitVec 64)) (t!20113 List!13790)) )
))
(declare-fun arrayNoDuplicates!0 (array!41250 (_ BitVec 32) List!13790) Bool)

(assert (=> b!734588 (= res!493579 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13787))))

(declare-fun b!734589 () Bool)

(declare-fun res!493577 () Bool)

(assert (=> b!734589 (=> (not res!493577) (not e!411055))))

(assert (=> b!734589 (= res!493577 (validKeyInArray!0 (select (arr!19735 a!3186) j!159)))))

(declare-fun b!734590 () Bool)

(assert (=> b!734590 (= e!411053 e!411050)))

(declare-fun res!493578 () Bool)

(assert (=> b!734590 (=> res!493578 e!411050)))

(assert (=> b!734590 (= res!493578 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!734590 (= lt!325580 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!734591 () Bool)

(declare-fun res!493583 () Bool)

(assert (=> b!734591 (=> (not res!493583) (not e!411056))))

(assert (=> b!734591 (= res!493583 e!411048)))

(declare-fun c!80880 () Bool)

(assert (=> b!734591 (= c!80880 (bvsle x!1131 resIntermediateX!5))))

(assert (= (and start!65124 res!493584) b!734584))

(assert (= (and b!734584 res!493576) b!734589))

(assert (= (and b!734589 res!493577) b!734579))

(assert (= (and b!734579 res!493590) b!734576))

(assert (= (and b!734576 res!493582) b!734580))

(assert (= (and b!734580 res!493573) b!734582))

(assert (= (and b!734582 res!493589) b!734588))

(assert (= (and b!734588 res!493579) b!734577))

(assert (= (and b!734577 res!493587) b!734578))

(assert (= (and b!734578 res!493588) b!734575))

(assert (= (and b!734575 res!493581) b!734591))

(assert (= (and b!734591 c!80880) b!734583))

(assert (= (and b!734591 (not c!80880)) b!734574))

(assert (= (and b!734591 res!493583) b!734572))

(assert (= (and b!734572 res!493575) b!734587))

(assert (= (and b!734587 res!493586) b!734573))

(assert (= (and b!734573 res!493585) b!734585))

(assert (= (and b!734587 (not res!493580)) b!734590))

(assert (= (and b!734590 (not res!493578)) b!734581))

(assert (= (and b!734581 (not res!493574)) b!734586))

(declare-fun m!687205 () Bool)

(assert (=> b!734572 m!687205))

(declare-fun m!687207 () Bool)

(assert (=> b!734572 m!687207))

(declare-fun m!687209 () Bool)

(assert (=> b!734572 m!687209))

(declare-fun m!687211 () Bool)

(assert (=> b!734572 m!687211))

(declare-fun m!687213 () Bool)

(assert (=> b!734572 m!687213))

(assert (=> b!734572 m!687207))

(declare-fun m!687215 () Bool)

(assert (=> b!734580 m!687215))

(declare-fun m!687217 () Bool)

(assert (=> b!734590 m!687217))

(declare-fun m!687219 () Bool)

(assert (=> b!734575 m!687219))

(declare-fun m!687221 () Bool)

(assert (=> b!734588 m!687221))

(declare-fun m!687223 () Bool)

(assert (=> start!65124 m!687223))

(declare-fun m!687225 () Bool)

(assert (=> start!65124 m!687225))

(declare-fun m!687227 () Bool)

(assert (=> b!734576 m!687227))

(declare-fun m!687229 () Bool)

(assert (=> b!734574 m!687229))

(assert (=> b!734574 m!687229))

(declare-fun m!687231 () Bool)

(assert (=> b!734574 m!687231))

(assert (=> b!734589 m!687229))

(assert (=> b!734589 m!687229))

(declare-fun m!687233 () Bool)

(assert (=> b!734589 m!687233))

(declare-fun m!687235 () Bool)

(assert (=> b!734582 m!687235))

(assert (=> b!734573 m!687229))

(assert (=> b!734573 m!687229))

(declare-fun m!687237 () Bool)

(assert (=> b!734573 m!687237))

(assert (=> b!734578 m!687229))

(assert (=> b!734578 m!687229))

(declare-fun m!687239 () Bool)

(assert (=> b!734578 m!687239))

(assert (=> b!734578 m!687239))

(assert (=> b!734578 m!687229))

(declare-fun m!687241 () Bool)

(assert (=> b!734578 m!687241))

(assert (=> b!734585 m!687229))

(assert (=> b!734585 m!687229))

(declare-fun m!687243 () Bool)

(assert (=> b!734585 m!687243))

(assert (=> b!734581 m!687229))

(assert (=> b!734581 m!687229))

(assert (=> b!734581 m!687231))

(declare-fun m!687245 () Bool)

(assert (=> b!734587 m!687245))

(declare-fun m!687247 () Bool)

(assert (=> b!734587 m!687247))

(assert (=> b!734583 m!687229))

(assert (=> b!734583 m!687229))

(declare-fun m!687249 () Bool)

(assert (=> b!734583 m!687249))

(declare-fun m!687251 () Bool)

(assert (=> b!734579 m!687251))

(check-sat (not b!734578) (not b!734574) (not b!734590) (not start!65124) (not b!734583) (not b!734588) (not b!734576) (not b!734572) (not b!734580) (not b!734573) (not b!734579) (not b!734585) (not b!734589) (not b!734582) (not b!734587) (not b!734581))
(check-sat)
