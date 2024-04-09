; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!66272 () Bool)

(assert start!66272)

(declare-fun b!763091 () Bool)

(declare-fun res!516261 () Bool)

(declare-fun e!425231 () Bool)

(assert (=> b!763091 (=> (not res!516261) (not e!425231))))

(declare-datatypes ((array!42130 0))(
  ( (array!42131 (arr!20169 (Array (_ BitVec 32) (_ BitVec 64))) (size!20590 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42130)

(declare-datatypes ((List!14224 0))(
  ( (Nil!14221) (Cons!14220 (h!15304 (_ BitVec 64)) (t!20547 List!14224)) )
))
(declare-fun arrayNoDuplicates!0 (array!42130 (_ BitVec 32) List!14224) Bool)

(assert (=> b!763091 (= res!516261 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14221))))

(declare-fun b!763092 () Bool)

(declare-fun res!516269 () Bool)

(declare-fun e!425234 () Bool)

(assert (=> b!763092 (=> (not res!516269) (not e!425234))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!763092 (= res!516269 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20169 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!763093 () Bool)

(declare-fun res!516262 () Bool)

(declare-fun e!425232 () Bool)

(assert (=> b!763093 (=> (not res!516262) (not e!425232))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42130 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!763093 (= res!516262 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!763094 () Bool)

(declare-fun res!516265 () Bool)

(assert (=> b!763094 (=> (not res!516265) (not e!425232))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!763094 (= res!516265 (validKeyInArray!0 k!2102))))

(declare-fun b!763095 () Bool)

(declare-fun res!516268 () Bool)

(assert (=> b!763095 (=> (not res!516268) (not e!425231))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42130 (_ BitVec 32)) Bool)

(assert (=> b!763095 (= res!516268 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!763096 () Bool)

(declare-fun res!516263 () Bool)

(assert (=> b!763096 (=> (not res!516263) (not e!425231))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!763096 (= res!516263 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20590 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20590 a!3186))))))

(declare-fun b!763097 () Bool)

(assert (=> b!763097 (= e!425232 e!425231)))

(declare-fun res!516264 () Bool)

(assert (=> b!763097 (=> (not res!516264) (not e!425231))))

(declare-datatypes ((SeekEntryResult!7776 0))(
  ( (MissingZero!7776 (index!33471 (_ BitVec 32))) (Found!7776 (index!33472 (_ BitVec 32))) (Intermediate!7776 (undefined!8588 Bool) (index!33473 (_ BitVec 32)) (x!64405 (_ BitVec 32))) (Undefined!7776) (MissingVacant!7776 (index!33474 (_ BitVec 32))) )
))
(declare-fun lt!339701 () SeekEntryResult!7776)

(assert (=> b!763097 (= res!516264 (or (= lt!339701 (MissingZero!7776 i!1173)) (= lt!339701 (MissingVacant!7776 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42130 (_ BitVec 32)) SeekEntryResult!7776)

(assert (=> b!763097 (= lt!339701 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!763098 () Bool)

(assert (=> b!763098 (= e!425234 false)))

(declare-fun lt!339703 () Bool)

(declare-fun e!425233 () Bool)

(assert (=> b!763098 (= lt!339703 e!425233)))

(declare-fun c!83802 () Bool)

(assert (=> b!763098 (= c!83802 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!763099 () Bool)

(declare-fun res!516270 () Bool)

(assert (=> b!763099 (=> (not res!516270) (not e!425232))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!763099 (= res!516270 (and (= (size!20590 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20590 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20590 a!3186)) (not (= i!1173 j!159))))))

(declare-fun lt!339702 () SeekEntryResult!7776)

(declare-fun b!763100 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42130 (_ BitVec 32)) SeekEntryResult!7776)

(assert (=> b!763100 (= e!425233 (not (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20169 a!3186) j!159) a!3186 mask!3328) lt!339702)))))

(declare-fun res!516266 () Bool)

(assert (=> start!66272 (=> (not res!516266) (not e!425232))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66272 (= res!516266 (validMask!0 mask!3328))))

(assert (=> start!66272 e!425232))

(assert (=> start!66272 true))

(declare-fun array_inv!15943 (array!42130) Bool)

(assert (=> start!66272 (array_inv!15943 a!3186)))

(declare-fun b!763101 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42130 (_ BitVec 32)) SeekEntryResult!7776)

(assert (=> b!763101 (= e!425233 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20169 a!3186) j!159) a!3186 mask!3328) (Found!7776 j!159))))))

(declare-fun b!763102 () Bool)

(declare-fun res!516267 () Bool)

(assert (=> b!763102 (=> (not res!516267) (not e!425232))))

(assert (=> b!763102 (= res!516267 (validKeyInArray!0 (select (arr!20169 a!3186) j!159)))))

(declare-fun b!763103 () Bool)

(assert (=> b!763103 (= e!425231 e!425234)))

(declare-fun res!516260 () Bool)

(assert (=> b!763103 (=> (not res!516260) (not e!425234))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!763103 (= res!516260 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20169 a!3186) j!159) mask!3328) (select (arr!20169 a!3186) j!159) a!3186 mask!3328) lt!339702))))

(assert (=> b!763103 (= lt!339702 (Intermediate!7776 false resIntermediateIndex!5 resIntermediateX!5))))

(assert (= (and start!66272 res!516266) b!763099))

(assert (= (and b!763099 res!516270) b!763102))

(assert (= (and b!763102 res!516267) b!763094))

(assert (= (and b!763094 res!516265) b!763093))

(assert (= (and b!763093 res!516262) b!763097))

(assert (= (and b!763097 res!516264) b!763095))

(assert (= (and b!763095 res!516268) b!763091))

(assert (= (and b!763091 res!516261) b!763096))

(assert (= (and b!763096 res!516263) b!763103))

(assert (= (and b!763103 res!516260) b!763092))

(assert (= (and b!763092 res!516269) b!763098))

(assert (= (and b!763098 c!83802) b!763100))

(assert (= (and b!763098 (not c!83802)) b!763101))

(declare-fun m!709715 () Bool)

(assert (=> b!763091 m!709715))

(declare-fun m!709717 () Bool)

(assert (=> b!763092 m!709717))

(declare-fun m!709719 () Bool)

(assert (=> start!66272 m!709719))

(declare-fun m!709721 () Bool)

(assert (=> start!66272 m!709721))

(declare-fun m!709723 () Bool)

(assert (=> b!763097 m!709723))

(declare-fun m!709725 () Bool)

(assert (=> b!763100 m!709725))

(assert (=> b!763100 m!709725))

(declare-fun m!709727 () Bool)

(assert (=> b!763100 m!709727))

(assert (=> b!763102 m!709725))

(assert (=> b!763102 m!709725))

(declare-fun m!709729 () Bool)

(assert (=> b!763102 m!709729))

(declare-fun m!709731 () Bool)

(assert (=> b!763094 m!709731))

(assert (=> b!763103 m!709725))

(assert (=> b!763103 m!709725))

(declare-fun m!709733 () Bool)

(assert (=> b!763103 m!709733))

(assert (=> b!763103 m!709733))

(assert (=> b!763103 m!709725))

(declare-fun m!709735 () Bool)

(assert (=> b!763103 m!709735))

(assert (=> b!763101 m!709725))

(assert (=> b!763101 m!709725))

(declare-fun m!709737 () Bool)

(assert (=> b!763101 m!709737))

(declare-fun m!709739 () Bool)

(assert (=> b!763093 m!709739))

(declare-fun m!709741 () Bool)

(assert (=> b!763095 m!709741))

(push 1)

