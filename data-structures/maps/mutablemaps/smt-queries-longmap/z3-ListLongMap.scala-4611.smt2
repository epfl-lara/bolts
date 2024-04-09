; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64320 () Bool)

(assert start!64320)

(declare-fun b!722217 () Bool)

(declare-fun res!484084 () Bool)

(declare-fun e!404852 () Bool)

(assert (=> b!722217 (=> (not res!484084) (not e!404852))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!722217 (= res!484084 (validKeyInArray!0 k0!2102))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!40854 0))(
  ( (array!40855 (arr!19546 (Array (_ BitVec 32) (_ BitVec 64))) (size!19967 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40854)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!722218 () Bool)

(declare-fun e!404853 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7153 0))(
  ( (MissingZero!7153 (index!30979 (_ BitVec 32))) (Found!7153 (index!30980 (_ BitVec 32))) (Intermediate!7153 (undefined!7965 Bool) (index!30981 (_ BitVec 32)) (x!62011 (_ BitVec 32))) (Undefined!7153) (MissingVacant!7153 (index!30982 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40854 (_ BitVec 32)) SeekEntryResult!7153)

(assert (=> b!722218 (= e!404853 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19546 a!3186) j!159) a!3186 mask!3328) (Found!7153 j!159)))))

(declare-fun res!484087 () Bool)

(assert (=> start!64320 (=> (not res!484087) (not e!404852))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64320 (= res!484087 (validMask!0 mask!3328))))

(assert (=> start!64320 e!404852))

(assert (=> start!64320 true))

(declare-fun array_inv!15320 (array!40854) Bool)

(assert (=> start!64320 (array_inv!15320 a!3186)))

(declare-fun b!722219 () Bool)

(declare-fun res!484092 () Bool)

(assert (=> b!722219 (=> (not res!484092) (not e!404852))))

(declare-fun arrayContainsKey!0 (array!40854 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!722219 (= res!484092 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!722220 () Bool)

(declare-fun res!484091 () Bool)

(declare-fun e!404849 () Bool)

(assert (=> b!722220 (=> (not res!484091) (not e!404849))))

(assert (=> b!722220 (= res!484091 (and (bvsge mask!3328 #b00000000000000000000000000000000) (bvslt index!1321 (bvadd #b00000000000000000000000000000001 mask!3328))))))

(declare-fun b!722221 () Bool)

(declare-fun res!484080 () Bool)

(declare-fun e!404851 () Bool)

(assert (=> b!722221 (=> (not res!484080) (not e!404851))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40854 (_ BitVec 32)) Bool)

(assert (=> b!722221 (= res!484080 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!722222 () Bool)

(declare-fun res!484081 () Bool)

(assert (=> b!722222 (=> (not res!484081) (not e!404852))))

(assert (=> b!722222 (= res!484081 (validKeyInArray!0 (select (arr!19546 a!3186) j!159)))))

(declare-fun b!722223 () Bool)

(declare-fun res!484085 () Bool)

(assert (=> b!722223 (=> (not res!484085) (not e!404852))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!722223 (= res!484085 (and (= (size!19967 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19967 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19967 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!722224 () Bool)

(assert (=> b!722224 (= e!404849 (not (validKeyInArray!0 (select (store (arr!19546 a!3186) i!1173 k0!2102) j!159))))))

(declare-fun b!722225 () Bool)

(declare-fun res!484088 () Bool)

(assert (=> b!722225 (=> (not res!484088) (not e!404849))))

(assert (=> b!722225 (= res!484088 e!404853)))

(declare-fun c!79440 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!722225 (= c!79440 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!722226 () Bool)

(assert (=> b!722226 (= e!404852 e!404851)))

(declare-fun res!484086 () Bool)

(assert (=> b!722226 (=> (not res!484086) (not e!404851))))

(declare-fun lt!320218 () SeekEntryResult!7153)

(assert (=> b!722226 (= res!484086 (or (= lt!320218 (MissingZero!7153 i!1173)) (= lt!320218 (MissingVacant!7153 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40854 (_ BitVec 32)) SeekEntryResult!7153)

(assert (=> b!722226 (= lt!320218 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!722227 () Bool)

(assert (=> b!722227 (= e!404851 e!404849)))

(declare-fun res!484089 () Bool)

(assert (=> b!722227 (=> (not res!484089) (not e!404849))))

(declare-fun lt!320219 () SeekEntryResult!7153)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40854 (_ BitVec 32)) SeekEntryResult!7153)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!722227 (= res!484089 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19546 a!3186) j!159) mask!3328) (select (arr!19546 a!3186) j!159) a!3186 mask!3328) lt!320219))))

(assert (=> b!722227 (= lt!320219 (Intermediate!7153 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!722228 () Bool)

(declare-fun res!484083 () Bool)

(assert (=> b!722228 (=> (not res!484083) (not e!404851))))

(assert (=> b!722228 (= res!484083 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19967 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19967 a!3186))))))

(declare-fun b!722229 () Bool)

(declare-fun res!484090 () Bool)

(assert (=> b!722229 (=> (not res!484090) (not e!404849))))

(assert (=> b!722229 (= res!484090 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19546 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!722230 () Bool)

(assert (=> b!722230 (= e!404853 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19546 a!3186) j!159) a!3186 mask!3328) lt!320219))))

(declare-fun b!722231 () Bool)

(declare-fun res!484082 () Bool)

(assert (=> b!722231 (=> (not res!484082) (not e!404851))))

(declare-datatypes ((List!13601 0))(
  ( (Nil!13598) (Cons!13597 (h!14651 (_ BitVec 64)) (t!19924 List!13601)) )
))
(declare-fun arrayNoDuplicates!0 (array!40854 (_ BitVec 32) List!13601) Bool)

(assert (=> b!722231 (= res!484082 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13598))))

(assert (= (and start!64320 res!484087) b!722223))

(assert (= (and b!722223 res!484085) b!722222))

(assert (= (and b!722222 res!484081) b!722217))

(assert (= (and b!722217 res!484084) b!722219))

(assert (= (and b!722219 res!484092) b!722226))

(assert (= (and b!722226 res!484086) b!722221))

(assert (= (and b!722221 res!484080) b!722231))

(assert (= (and b!722231 res!484082) b!722228))

(assert (= (and b!722228 res!484083) b!722227))

(assert (= (and b!722227 res!484089) b!722229))

(assert (= (and b!722229 res!484090) b!722225))

(assert (= (and b!722225 c!79440) b!722230))

(assert (= (and b!722225 (not c!79440)) b!722218))

(assert (= (and b!722225 res!484088) b!722220))

(assert (= (and b!722220 res!484091) b!722224))

(declare-fun m!676865 () Bool)

(assert (=> b!722218 m!676865))

(assert (=> b!722218 m!676865))

(declare-fun m!676867 () Bool)

(assert (=> b!722218 m!676867))

(assert (=> b!722222 m!676865))

(assert (=> b!722222 m!676865))

(declare-fun m!676869 () Bool)

(assert (=> b!722222 m!676869))

(declare-fun m!676871 () Bool)

(assert (=> b!722221 m!676871))

(declare-fun m!676873 () Bool)

(assert (=> b!722217 m!676873))

(assert (=> b!722227 m!676865))

(assert (=> b!722227 m!676865))

(declare-fun m!676875 () Bool)

(assert (=> b!722227 m!676875))

(assert (=> b!722227 m!676875))

(assert (=> b!722227 m!676865))

(declare-fun m!676877 () Bool)

(assert (=> b!722227 m!676877))

(declare-fun m!676879 () Bool)

(assert (=> b!722224 m!676879))

(declare-fun m!676881 () Bool)

(assert (=> b!722224 m!676881))

(assert (=> b!722224 m!676881))

(declare-fun m!676883 () Bool)

(assert (=> b!722224 m!676883))

(declare-fun m!676885 () Bool)

(assert (=> b!722226 m!676885))

(declare-fun m!676887 () Bool)

(assert (=> b!722229 m!676887))

(declare-fun m!676889 () Bool)

(assert (=> start!64320 m!676889))

(declare-fun m!676891 () Bool)

(assert (=> start!64320 m!676891))

(declare-fun m!676893 () Bool)

(assert (=> b!722231 m!676893))

(declare-fun m!676895 () Bool)

(assert (=> b!722219 m!676895))

(assert (=> b!722230 m!676865))

(assert (=> b!722230 m!676865))

(declare-fun m!676897 () Bool)

(assert (=> b!722230 m!676897))

(check-sat (not b!722230) (not b!722227) (not b!722221) (not b!722219) (not b!722226) (not b!722222) (not b!722218) (not b!722231) (not b!722217) (not b!722224) (not start!64320))
(check-sat)
