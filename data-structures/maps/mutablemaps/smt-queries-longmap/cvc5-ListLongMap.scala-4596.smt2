; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64108 () Bool)

(assert start!64108)

(declare-fun b!719748 () Bool)

(declare-fun e!403794 () Bool)

(declare-fun e!403792 () Bool)

(assert (=> b!719748 (= e!403794 e!403792)))

(declare-fun res!482289 () Bool)

(assert (=> b!719748 (=> (not res!482289) (not e!403792))))

(declare-datatypes ((SeekEntryResult!7107 0))(
  ( (MissingZero!7107 (index!30795 (_ BitVec 32))) (Found!7107 (index!30796 (_ BitVec 32))) (Intermediate!7107 (undefined!7919 Bool) (index!30797 (_ BitVec 32)) (x!61827 (_ BitVec 32))) (Undefined!7107) (MissingVacant!7107 (index!30798 (_ BitVec 32))) )
))
(declare-fun lt!319627 () SeekEntryResult!7107)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!719748 (= res!482289 (or (= lt!319627 (MissingZero!7107 i!1173)) (= lt!319627 (MissingVacant!7107 i!1173))))))

(declare-datatypes ((array!40756 0))(
  ( (array!40757 (arr!19500 (Array (_ BitVec 32) (_ BitVec 64))) (size!19921 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40756)

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40756 (_ BitVec 32)) SeekEntryResult!7107)

(assert (=> b!719748 (= lt!319627 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun res!482285 () Bool)

(assert (=> start!64108 (=> (not res!482285) (not e!403794))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64108 (= res!482285 (validMask!0 mask!3328))))

(assert (=> start!64108 e!403794))

(assert (=> start!64108 true))

(declare-fun array_inv!15274 (array!40756) Bool)

(assert (=> start!64108 (array_inv!15274 a!3186)))

(declare-fun b!719749 () Bool)

(declare-fun res!482288 () Bool)

(assert (=> b!719749 (=> (not res!482288) (not e!403792))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!719749 (= res!482288 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19921 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19921 a!3186))))))

(declare-fun b!719750 () Bool)

(declare-fun res!482283 () Bool)

(assert (=> b!719750 (=> (not res!482283) (not e!403794))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!719750 (= res!482283 (validKeyInArray!0 (select (arr!19500 a!3186) j!159)))))

(declare-fun b!719751 () Bool)

(declare-fun res!482287 () Bool)

(assert (=> b!719751 (=> (not res!482287) (not e!403792))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40756 (_ BitVec 32)) Bool)

(assert (=> b!719751 (= res!482287 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!719752 () Bool)

(assert (=> b!719752 (= e!403792 false)))

(declare-fun lt!319628 () SeekEntryResult!7107)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40756 (_ BitVec 32)) SeekEntryResult!7107)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!719752 (= lt!319628 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19500 a!3186) j!159) mask!3328) (select (arr!19500 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!719753 () Bool)

(declare-fun res!482282 () Bool)

(assert (=> b!719753 (=> (not res!482282) (not e!403794))))

(assert (=> b!719753 (= res!482282 (validKeyInArray!0 k!2102))))

(declare-fun b!719754 () Bool)

(declare-fun res!482286 () Bool)

(assert (=> b!719754 (=> (not res!482286) (not e!403792))))

(declare-datatypes ((List!13555 0))(
  ( (Nil!13552) (Cons!13551 (h!14599 (_ BitVec 64)) (t!19878 List!13555)) )
))
(declare-fun arrayNoDuplicates!0 (array!40756 (_ BitVec 32) List!13555) Bool)

(assert (=> b!719754 (= res!482286 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13552))))

(declare-fun b!719755 () Bool)

(declare-fun res!482281 () Bool)

(assert (=> b!719755 (=> (not res!482281) (not e!403794))))

(declare-fun arrayContainsKey!0 (array!40756 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!719755 (= res!482281 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!719756 () Bool)

(declare-fun res!482284 () Bool)

(assert (=> b!719756 (=> (not res!482284) (not e!403794))))

(assert (=> b!719756 (= res!482284 (and (= (size!19921 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19921 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19921 a!3186)) (not (= i!1173 j!159))))))

(assert (= (and start!64108 res!482285) b!719756))

(assert (= (and b!719756 res!482284) b!719750))

(assert (= (and b!719750 res!482283) b!719753))

(assert (= (and b!719753 res!482282) b!719755))

(assert (= (and b!719755 res!482281) b!719748))

(assert (= (and b!719748 res!482289) b!719751))

(assert (= (and b!719751 res!482287) b!719754))

(assert (= (and b!719754 res!482286) b!719749))

(assert (= (and b!719749 res!482288) b!719752))

(declare-fun m!675169 () Bool)

(assert (=> b!719752 m!675169))

(assert (=> b!719752 m!675169))

(declare-fun m!675171 () Bool)

(assert (=> b!719752 m!675171))

(assert (=> b!719752 m!675171))

(assert (=> b!719752 m!675169))

(declare-fun m!675173 () Bool)

(assert (=> b!719752 m!675173))

(assert (=> b!719750 m!675169))

(assert (=> b!719750 m!675169))

(declare-fun m!675175 () Bool)

(assert (=> b!719750 m!675175))

(declare-fun m!675177 () Bool)

(assert (=> b!719753 m!675177))

(declare-fun m!675179 () Bool)

(assert (=> start!64108 m!675179))

(declare-fun m!675181 () Bool)

(assert (=> start!64108 m!675181))

(declare-fun m!675183 () Bool)

(assert (=> b!719755 m!675183))

(declare-fun m!675185 () Bool)

(assert (=> b!719751 m!675185))

(declare-fun m!675187 () Bool)

(assert (=> b!719748 m!675187))

(declare-fun m!675189 () Bool)

(assert (=> b!719754 m!675189))

(push 1)

