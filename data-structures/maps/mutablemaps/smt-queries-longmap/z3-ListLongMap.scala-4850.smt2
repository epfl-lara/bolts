; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!66816 () Bool)

(assert start!66816)

(declare-fun b!770225 () Bool)

(declare-fun res!521128 () Bool)

(declare-fun e!428868 () Bool)

(assert (=> b!770225 (=> (not res!521128) (not e!428868))))

(declare-datatypes ((array!42333 0))(
  ( (array!42334 (arr!20263 (Array (_ BitVec 32) (_ BitVec 64))) (size!20684 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42333)

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42333 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!770225 (= res!521128 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!770226 () Bool)

(declare-fun res!521126 () Bool)

(assert (=> b!770226 (=> (not res!521126) (not e!428868))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!770226 (= res!521126 (validKeyInArray!0 k0!2102))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun e!428866 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun b!770227 () Bool)

(declare-datatypes ((SeekEntryResult!7870 0))(
  ( (MissingZero!7870 (index!33847 (_ BitVec 32))) (Found!7870 (index!33848 (_ BitVec 32))) (Intermediate!7870 (undefined!8682 Bool) (index!33849 (_ BitVec 32)) (x!64802 (_ BitVec 32))) (Undefined!7870) (MissingVacant!7870 (index!33850 (_ BitVec 32))) )
))
(declare-fun lt!342823 () SeekEntryResult!7870)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42333 (_ BitVec 32)) SeekEntryResult!7870)

(assert (=> b!770227 (= e!428866 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20263 a!3186) j!159) a!3186 mask!3328) lt!342823))))

(declare-fun b!770228 () Bool)

(declare-fun res!521116 () Bool)

(declare-fun e!428867 () Bool)

(assert (=> b!770228 (=> (not res!521116) (not e!428867))))

(declare-datatypes ((List!14318 0))(
  ( (Nil!14315) (Cons!14314 (h!15413 (_ BitVec 64)) (t!20641 List!14318)) )
))
(declare-fun arrayNoDuplicates!0 (array!42333 (_ BitVec 32) List!14318) Bool)

(assert (=> b!770228 (= res!521116 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14315))))

(declare-fun b!770229 () Bool)

(declare-fun res!521119 () Bool)

(assert (=> b!770229 (=> (not res!521119) (not e!428867))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42333 (_ BitVec 32)) Bool)

(assert (=> b!770229 (= res!521119 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!770230 () Bool)

(declare-fun res!521124 () Bool)

(declare-fun e!428863 () Bool)

(assert (=> b!770230 (=> (not res!521124) (not e!428863))))

(assert (=> b!770230 (= res!521124 e!428866)))

(declare-fun c!84950 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!770230 (= c!84950 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!770231 () Bool)

(declare-datatypes ((Unit!26516 0))(
  ( (Unit!26517) )
))
(declare-fun e!428865 () Unit!26516)

(declare-fun Unit!26518 () Unit!26516)

(assert (=> b!770231 (= e!428865 Unit!26518)))

(declare-fun lt!342825 () SeekEntryResult!7870)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42333 (_ BitVec 32)) SeekEntryResult!7870)

(assert (=> b!770231 (= lt!342825 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20263 a!3186) j!159) a!3186 mask!3328))))

(declare-fun lt!342816 () (_ BitVec 32))

(assert (=> b!770231 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!342816 resIntermediateIndex!5 (select (arr!20263 a!3186) j!159) a!3186 mask!3328) (Found!7870 j!159))))

(declare-fun b!770233 () Bool)

(declare-fun Unit!26519 () Unit!26516)

(assert (=> b!770233 (= e!428865 Unit!26519)))

(assert (=> b!770233 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!342816 (select (arr!20263 a!3186) j!159) a!3186 mask!3328) lt!342823)))

(declare-fun b!770234 () Bool)

(declare-fun res!521118 () Bool)

(assert (=> b!770234 (=> (not res!521118) (not e!428867))))

(assert (=> b!770234 (= res!521118 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20684 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20684 a!3186))))))

(declare-fun e!428861 () Bool)

(declare-fun lt!342817 () SeekEntryResult!7870)

(declare-fun b!770235 () Bool)

(assert (=> b!770235 (= e!428861 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20263 a!3186) j!159) a!3186 mask!3328) lt!342817))))

(declare-fun b!770236 () Bool)

(declare-fun res!521127 () Bool)

(assert (=> b!770236 (=> (not res!521127) (not e!428863))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!770236 (= res!521127 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20263 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!770237 () Bool)

(assert (=> b!770237 (= e!428867 e!428863)))

(declare-fun res!521130 () Bool)

(assert (=> b!770237 (=> (not res!521130) (not e!428863))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!770237 (= res!521130 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20263 a!3186) j!159) mask!3328) (select (arr!20263 a!3186) j!159) a!3186 mask!3328) lt!342823))))

(assert (=> b!770237 (= lt!342823 (Intermediate!7870 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!770238 () Bool)

(declare-fun e!428864 () Bool)

(assert (=> b!770238 (= e!428864 true)))

(declare-fun lt!342822 () Unit!26516)

(assert (=> b!770238 (= lt!342822 e!428865)))

(declare-fun c!84951 () Bool)

(assert (=> b!770238 (= c!84951 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!770238 (= lt!342816 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!770232 () Bool)

(declare-fun e!428862 () Bool)

(assert (=> b!770232 (= e!428862 e!428861)))

(declare-fun res!521117 () Bool)

(assert (=> b!770232 (=> (not res!521117) (not e!428861))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42333 (_ BitVec 32)) SeekEntryResult!7870)

(assert (=> b!770232 (= res!521117 (= (seekEntryOrOpen!0 (select (arr!20263 a!3186) j!159) a!3186 mask!3328) lt!342817))))

(assert (=> b!770232 (= lt!342817 (Found!7870 j!159))))

(declare-fun res!521125 () Bool)

(assert (=> start!66816 (=> (not res!521125) (not e!428868))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66816 (= res!521125 (validMask!0 mask!3328))))

(assert (=> start!66816 e!428868))

(assert (=> start!66816 true))

(declare-fun array_inv!16037 (array!42333) Bool)

(assert (=> start!66816 (array_inv!16037 a!3186)))

(declare-fun b!770239 () Bool)

(declare-fun res!521131 () Bool)

(assert (=> b!770239 (=> (not res!521131) (not e!428868))))

(assert (=> b!770239 (= res!521131 (and (= (size!20684 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20684 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20684 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!770240 () Bool)

(declare-fun e!428860 () Bool)

(assert (=> b!770240 (= e!428863 e!428860)))

(declare-fun res!521123 () Bool)

(assert (=> b!770240 (=> (not res!521123) (not e!428860))))

(declare-fun lt!342819 () SeekEntryResult!7870)

(declare-fun lt!342820 () SeekEntryResult!7870)

(assert (=> b!770240 (= res!521123 (= lt!342819 lt!342820))))

(declare-fun lt!342824 () (_ BitVec 64))

(declare-fun lt!342826 () array!42333)

(assert (=> b!770240 (= lt!342820 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!342824 lt!342826 mask!3328))))

(assert (=> b!770240 (= lt!342819 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!342824 mask!3328) lt!342824 lt!342826 mask!3328))))

(assert (=> b!770240 (= lt!342824 (select (store (arr!20263 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!770240 (= lt!342826 (array!42334 (store (arr!20263 a!3186) i!1173 k0!2102) (size!20684 a!3186)))))

(declare-fun b!770241 () Bool)

(assert (=> b!770241 (= e!428866 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20263 a!3186) j!159) a!3186 mask!3328) (Found!7870 j!159)))))

(declare-fun b!770242 () Bool)

(declare-fun res!521122 () Bool)

(assert (=> b!770242 (=> (not res!521122) (not e!428868))))

(assert (=> b!770242 (= res!521122 (validKeyInArray!0 (select (arr!20263 a!3186) j!159)))))

(declare-fun b!770243 () Bool)

(assert (=> b!770243 (= e!428868 e!428867)))

(declare-fun res!521121 () Bool)

(assert (=> b!770243 (=> (not res!521121) (not e!428867))))

(declare-fun lt!342818 () SeekEntryResult!7870)

(assert (=> b!770243 (= res!521121 (or (= lt!342818 (MissingZero!7870 i!1173)) (= lt!342818 (MissingVacant!7870 i!1173))))))

(assert (=> b!770243 (= lt!342818 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!770244 () Bool)

(assert (=> b!770244 (= e!428860 (not e!428864))))

(declare-fun res!521129 () Bool)

(assert (=> b!770244 (=> res!521129 e!428864)))

(get-info :version)

(assert (=> b!770244 (= res!521129 (or (not ((_ is Intermediate!7870) lt!342820)) (bvsge x!1131 (x!64802 lt!342820))))))

(assert (=> b!770244 e!428862))

(declare-fun res!521120 () Bool)

(assert (=> b!770244 (=> (not res!521120) (not e!428862))))

(assert (=> b!770244 (= res!521120 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!342821 () Unit!26516)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42333 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26516)

(assert (=> b!770244 (= lt!342821 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(assert (= (and start!66816 res!521125) b!770239))

(assert (= (and b!770239 res!521131) b!770242))

(assert (= (and b!770242 res!521122) b!770226))

(assert (= (and b!770226 res!521126) b!770225))

(assert (= (and b!770225 res!521128) b!770243))

(assert (= (and b!770243 res!521121) b!770229))

(assert (= (and b!770229 res!521119) b!770228))

(assert (= (and b!770228 res!521116) b!770234))

(assert (= (and b!770234 res!521118) b!770237))

(assert (= (and b!770237 res!521130) b!770236))

(assert (= (and b!770236 res!521127) b!770230))

(assert (= (and b!770230 c!84950) b!770227))

(assert (= (and b!770230 (not c!84950)) b!770241))

(assert (= (and b!770230 res!521124) b!770240))

(assert (= (and b!770240 res!521123) b!770244))

(assert (= (and b!770244 res!521120) b!770232))

(assert (= (and b!770232 res!521117) b!770235))

(assert (= (and b!770244 (not res!521129)) b!770238))

(assert (= (and b!770238 c!84951) b!770233))

(assert (= (and b!770238 (not c!84951)) b!770231))

(declare-fun m!715595 () Bool)

(assert (=> b!770235 m!715595))

(assert (=> b!770235 m!715595))

(declare-fun m!715597 () Bool)

(assert (=> b!770235 m!715597))

(assert (=> b!770232 m!715595))

(assert (=> b!770232 m!715595))

(declare-fun m!715599 () Bool)

(assert (=> b!770232 m!715599))

(declare-fun m!715601 () Bool)

(assert (=> b!770229 m!715601))

(assert (=> b!770241 m!715595))

(assert (=> b!770241 m!715595))

(declare-fun m!715603 () Bool)

(assert (=> b!770241 m!715603))

(declare-fun m!715605 () Bool)

(assert (=> start!66816 m!715605))

(declare-fun m!715607 () Bool)

(assert (=> start!66816 m!715607))

(assert (=> b!770242 m!715595))

(assert (=> b!770242 m!715595))

(declare-fun m!715609 () Bool)

(assert (=> b!770242 m!715609))

(declare-fun m!715611 () Bool)

(assert (=> b!770244 m!715611))

(declare-fun m!715613 () Bool)

(assert (=> b!770244 m!715613))

(assert (=> b!770233 m!715595))

(assert (=> b!770233 m!715595))

(declare-fun m!715615 () Bool)

(assert (=> b!770233 m!715615))

(declare-fun m!715617 () Bool)

(assert (=> b!770226 m!715617))

(declare-fun m!715619 () Bool)

(assert (=> b!770243 m!715619))

(declare-fun m!715621 () Bool)

(assert (=> b!770238 m!715621))

(declare-fun m!715623 () Bool)

(assert (=> b!770228 m!715623))

(assert (=> b!770237 m!715595))

(assert (=> b!770237 m!715595))

(declare-fun m!715625 () Bool)

(assert (=> b!770237 m!715625))

(assert (=> b!770237 m!715625))

(assert (=> b!770237 m!715595))

(declare-fun m!715627 () Bool)

(assert (=> b!770237 m!715627))

(declare-fun m!715629 () Bool)

(assert (=> b!770236 m!715629))

(assert (=> b!770227 m!715595))

(assert (=> b!770227 m!715595))

(declare-fun m!715631 () Bool)

(assert (=> b!770227 m!715631))

(assert (=> b!770231 m!715595))

(assert (=> b!770231 m!715595))

(assert (=> b!770231 m!715603))

(assert (=> b!770231 m!715595))

(declare-fun m!715633 () Bool)

(assert (=> b!770231 m!715633))

(declare-fun m!715635 () Bool)

(assert (=> b!770240 m!715635))

(assert (=> b!770240 m!715635))

(declare-fun m!715637 () Bool)

(assert (=> b!770240 m!715637))

(declare-fun m!715639 () Bool)

(assert (=> b!770240 m!715639))

(declare-fun m!715641 () Bool)

(assert (=> b!770240 m!715641))

(declare-fun m!715643 () Bool)

(assert (=> b!770240 m!715643))

(declare-fun m!715645 () Bool)

(assert (=> b!770225 m!715645))

(check-sat (not start!66816) (not b!770243) (not b!770233) (not b!770244) (not b!770231) (not b!770228) (not b!770229) (not b!770241) (not b!770238) (not b!770235) (not b!770225) (not b!770237) (not b!770227) (not b!770242) (not b!770240) (not b!770232) (not b!770226))
(check-sat)
