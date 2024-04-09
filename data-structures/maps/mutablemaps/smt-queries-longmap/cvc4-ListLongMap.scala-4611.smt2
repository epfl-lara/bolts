; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64322 () Bool)

(assert start!64322)

(declare-fun b!722262 () Bool)

(declare-fun e!404864 () Bool)

(declare-fun e!404867 () Bool)

(assert (=> b!722262 (= e!404864 e!404867)))

(declare-fun res!484119 () Bool)

(assert (=> b!722262 (=> (not res!484119) (not e!404867))))

(declare-datatypes ((SeekEntryResult!7154 0))(
  ( (MissingZero!7154 (index!30983 (_ BitVec 32))) (Found!7154 (index!30984 (_ BitVec 32))) (Intermediate!7154 (undefined!7966 Bool) (index!30985 (_ BitVec 32)) (x!62012 (_ BitVec 32))) (Undefined!7154) (MissingVacant!7154 (index!30986 (_ BitVec 32))) )
))
(declare-fun lt!320224 () SeekEntryResult!7154)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!722262 (= res!484119 (or (= lt!320224 (MissingZero!7154 i!1173)) (= lt!320224 (MissingVacant!7154 i!1173))))))

(declare-datatypes ((array!40856 0))(
  ( (array!40857 (arr!19547 (Array (_ BitVec 32) (_ BitVec 64))) (size!19968 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40856)

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40856 (_ BitVec 32)) SeekEntryResult!7154)

(assert (=> b!722262 (= lt!320224 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!722263 () Bool)

(declare-fun res!484123 () Bool)

(assert (=> b!722263 (=> (not res!484123) (not e!404867))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40856 (_ BitVec 32)) Bool)

(assert (=> b!722263 (= res!484123 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!722264 () Bool)

(declare-fun res!484131 () Bool)

(assert (=> b!722264 (=> (not res!484131) (not e!404867))))

(declare-datatypes ((List!13602 0))(
  ( (Nil!13599) (Cons!13598 (h!14652 (_ BitVec 64)) (t!19925 List!13602)) )
))
(declare-fun arrayNoDuplicates!0 (array!40856 (_ BitVec 32) List!13602) Bool)

(assert (=> b!722264 (= res!484131 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13599))))

(declare-fun b!722265 () Bool)

(declare-fun res!484128 () Bool)

(assert (=> b!722265 (=> (not res!484128) (not e!404864))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!722265 (= res!484128 (and (= (size!19968 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19968 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19968 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!722266 () Bool)

(declare-fun res!484129 () Bool)

(declare-fun e!404865 () Bool)

(assert (=> b!722266 (=> (not res!484129) (not e!404865))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!722266 (= res!484129 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19547 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!722267 () Bool)

(declare-fun lt!320225 () SeekEntryResult!7154)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun e!404866 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40856 (_ BitVec 32)) SeekEntryResult!7154)

(assert (=> b!722267 (= e!404866 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19547 a!3186) j!159) a!3186 mask!3328) lt!320225))))

(declare-fun b!722268 () Bool)

(declare-fun res!484130 () Bool)

(assert (=> b!722268 (=> (not res!484130) (not e!404865))))

(assert (=> b!722268 (= res!484130 e!404866)))

(declare-fun c!79443 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!722268 (= c!79443 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!722269 () Bool)

(assert (=> b!722269 (= e!404867 e!404865)))

(declare-fun res!484121 () Bool)

(assert (=> b!722269 (=> (not res!484121) (not e!404865))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!722269 (= res!484121 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19547 a!3186) j!159) mask!3328) (select (arr!19547 a!3186) j!159) a!3186 mask!3328) lt!320225))))

(assert (=> b!722269 (= lt!320225 (Intermediate!7154 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!722270 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40856 (_ BitVec 32)) SeekEntryResult!7154)

(assert (=> b!722270 (= e!404866 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19547 a!3186) j!159) a!3186 mask!3328) (Found!7154 j!159)))))

(declare-fun b!722272 () Bool)

(declare-fun res!484125 () Bool)

(assert (=> b!722272 (=> (not res!484125) (not e!404864))))

(declare-fun arrayContainsKey!0 (array!40856 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!722272 (= res!484125 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!722273 () Bool)

(declare-fun res!484127 () Bool)

(assert (=> b!722273 (=> (not res!484127) (not e!404864))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!722273 (= res!484127 (validKeyInArray!0 k!2102))))

(declare-fun b!722274 () Bool)

(declare-fun res!484126 () Bool)

(assert (=> b!722274 (=> (not res!484126) (not e!404864))))

(assert (=> b!722274 (= res!484126 (validKeyInArray!0 (select (arr!19547 a!3186) j!159)))))

(declare-fun b!722275 () Bool)

(declare-fun res!484124 () Bool)

(assert (=> b!722275 (=> (not res!484124) (not e!404867))))

(assert (=> b!722275 (= res!484124 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19968 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19968 a!3186))))))

(declare-fun b!722276 () Bool)

(declare-fun res!484122 () Bool)

(assert (=> b!722276 (=> (not res!484122) (not e!404865))))

(assert (=> b!722276 (= res!484122 (and (bvsge mask!3328 #b00000000000000000000000000000000) (bvslt index!1321 (bvadd #b00000000000000000000000000000001 mask!3328))))))

(declare-fun res!484120 () Bool)

(assert (=> start!64322 (=> (not res!484120) (not e!404864))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64322 (= res!484120 (validMask!0 mask!3328))))

(assert (=> start!64322 e!404864))

(assert (=> start!64322 true))

(declare-fun array_inv!15321 (array!40856) Bool)

(assert (=> start!64322 (array_inv!15321 a!3186)))

(declare-fun b!722271 () Bool)

(assert (=> b!722271 (= e!404865 (not (validKeyInArray!0 (select (store (arr!19547 a!3186) i!1173 k!2102) j!159))))))

(assert (= (and start!64322 res!484120) b!722265))

(assert (= (and b!722265 res!484128) b!722274))

(assert (= (and b!722274 res!484126) b!722273))

(assert (= (and b!722273 res!484127) b!722272))

(assert (= (and b!722272 res!484125) b!722262))

(assert (= (and b!722262 res!484119) b!722263))

(assert (= (and b!722263 res!484123) b!722264))

(assert (= (and b!722264 res!484131) b!722275))

(assert (= (and b!722275 res!484124) b!722269))

(assert (= (and b!722269 res!484121) b!722266))

(assert (= (and b!722266 res!484129) b!722268))

(assert (= (and b!722268 c!79443) b!722267))

(assert (= (and b!722268 (not c!79443)) b!722270))

(assert (= (and b!722268 res!484130) b!722276))

(assert (= (and b!722276 res!484122) b!722271))

(declare-fun m!676899 () Bool)

(assert (=> b!722267 m!676899))

(assert (=> b!722267 m!676899))

(declare-fun m!676901 () Bool)

(assert (=> b!722267 m!676901))

(assert (=> b!722269 m!676899))

(assert (=> b!722269 m!676899))

(declare-fun m!676903 () Bool)

(assert (=> b!722269 m!676903))

(assert (=> b!722269 m!676903))

(assert (=> b!722269 m!676899))

(declare-fun m!676905 () Bool)

(assert (=> b!722269 m!676905))

(declare-fun m!676907 () Bool)

(assert (=> b!722264 m!676907))

(declare-fun m!676909 () Bool)

(assert (=> b!722271 m!676909))

(declare-fun m!676911 () Bool)

(assert (=> b!722271 m!676911))

(assert (=> b!722271 m!676911))

(declare-fun m!676913 () Bool)

(assert (=> b!722271 m!676913))

(declare-fun m!676915 () Bool)

(assert (=> b!722263 m!676915))

(assert (=> b!722270 m!676899))

(assert (=> b!722270 m!676899))

(declare-fun m!676917 () Bool)

(assert (=> b!722270 m!676917))

(declare-fun m!676919 () Bool)

(assert (=> b!722266 m!676919))

(declare-fun m!676921 () Bool)

(assert (=> b!722262 m!676921))

(declare-fun m!676923 () Bool)

(assert (=> start!64322 m!676923))

(declare-fun m!676925 () Bool)

(assert (=> start!64322 m!676925))

(assert (=> b!722274 m!676899))

(assert (=> b!722274 m!676899))

(declare-fun m!676927 () Bool)

(assert (=> b!722274 m!676927))

(declare-fun m!676929 () Bool)

(assert (=> b!722272 m!676929))

(declare-fun m!676931 () Bool)

(assert (=> b!722273 m!676931))

(push 1)

(assert (not start!64322))

(assert (not b!722264))

