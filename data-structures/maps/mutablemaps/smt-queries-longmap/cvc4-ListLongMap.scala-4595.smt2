; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64106 () Bool)

(assert start!64106)

(declare-fun b!719720 () Bool)

(declare-fun res!482262 () Bool)

(declare-fun e!403783 () Bool)

(assert (=> b!719720 (=> (not res!482262) (not e!403783))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!40754 0))(
  ( (array!40755 (arr!19499 (Array (_ BitVec 32) (_ BitVec 64))) (size!19920 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40754)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7106 0))(
  ( (MissingZero!7106 (index!30791 (_ BitVec 32))) (Found!7106 (index!30792 (_ BitVec 32))) (Intermediate!7106 (undefined!7918 Bool) (index!30793 (_ BitVec 32)) (x!61818 (_ BitVec 32))) (Undefined!7106) (MissingVacant!7106 (index!30794 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40754 (_ BitVec 32)) SeekEntryResult!7106)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!719720 (= res!482262 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19499 a!3186) j!159) mask!3328) (select (arr!19499 a!3186) j!159) a!3186 mask!3328) (Intermediate!7106 false resIntermediateIndex!5 resIntermediateX!5)))))

(declare-fun b!719721 () Bool)

(declare-fun res!482253 () Bool)

(assert (=> b!719721 (=> (not res!482253) (not e!403783))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!719721 (= res!482253 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19920 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19920 a!3186))))))

(declare-fun b!719722 () Bool)

(declare-fun res!482258 () Bool)

(declare-fun e!403785 () Bool)

(assert (=> b!719722 (=> (not res!482258) (not e!403785))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!719722 (= res!482258 (and (= (size!19920 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19920 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19920 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!719723 () Bool)

(declare-fun res!482257 () Bool)

(assert (=> b!719723 (=> (not res!482257) (not e!403785))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!719723 (= res!482257 (validKeyInArray!0 k!2102))))

(declare-fun b!719724 () Bool)

(assert (=> b!719724 (= e!403783 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19499 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsgt x!1131 resIntermediateX!5) (bvsge mask!3328 #b00000000000000000000000000000000) (bvslt index!1321 (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge resIntermediateIndex!5 (bvadd #b00000000000000000000000000000001 mask!3328))))))

(declare-fun res!482254 () Bool)

(assert (=> start!64106 (=> (not res!482254) (not e!403785))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64106 (= res!482254 (validMask!0 mask!3328))))

(assert (=> start!64106 e!403785))

(assert (=> start!64106 true))

(declare-fun array_inv!15273 (array!40754) Bool)

(assert (=> start!64106 (array_inv!15273 a!3186)))

(declare-fun b!719725 () Bool)

(declare-fun res!482256 () Bool)

(assert (=> b!719725 (=> (not res!482256) (not e!403785))))

(declare-fun arrayContainsKey!0 (array!40754 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!719725 (= res!482256 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!719726 () Bool)

(declare-fun res!482260 () Bool)

(assert (=> b!719726 (=> (not res!482260) (not e!403783))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40754 (_ BitVec 32)) Bool)

(assert (=> b!719726 (= res!482260 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!719727 () Bool)

(declare-fun res!482255 () Bool)

(assert (=> b!719727 (=> (not res!482255) (not e!403785))))

(assert (=> b!719727 (= res!482255 (validKeyInArray!0 (select (arr!19499 a!3186) j!159)))))

(declare-fun b!719728 () Bool)

(declare-fun res!482259 () Bool)

(assert (=> b!719728 (=> (not res!482259) (not e!403783))))

(declare-datatypes ((List!13554 0))(
  ( (Nil!13551) (Cons!13550 (h!14598 (_ BitVec 64)) (t!19877 List!13554)) )
))
(declare-fun arrayNoDuplicates!0 (array!40754 (_ BitVec 32) List!13554) Bool)

(assert (=> b!719728 (= res!482259 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13551))))

(declare-fun b!719729 () Bool)

(assert (=> b!719729 (= e!403785 e!403783)))

(declare-fun res!482261 () Bool)

(assert (=> b!719729 (=> (not res!482261) (not e!403783))))

(declare-fun lt!319622 () SeekEntryResult!7106)

(assert (=> b!719729 (= res!482261 (or (= lt!319622 (MissingZero!7106 i!1173)) (= lt!319622 (MissingVacant!7106 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40754 (_ BitVec 32)) SeekEntryResult!7106)

(assert (=> b!719729 (= lt!319622 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(assert (= (and start!64106 res!482254) b!719722))

(assert (= (and b!719722 res!482258) b!719727))

(assert (= (and b!719727 res!482255) b!719723))

(assert (= (and b!719723 res!482257) b!719725))

(assert (= (and b!719725 res!482256) b!719729))

(assert (= (and b!719729 res!482261) b!719726))

(assert (= (and b!719726 res!482260) b!719728))

(assert (= (and b!719728 res!482259) b!719721))

(assert (= (and b!719721 res!482253) b!719720))

(assert (= (and b!719720 res!482262) b!719724))

(declare-fun m!675145 () Bool)

(assert (=> b!719726 m!675145))

(declare-fun m!675147 () Bool)

(assert (=> b!719720 m!675147))

(assert (=> b!719720 m!675147))

(declare-fun m!675149 () Bool)

(assert (=> b!719720 m!675149))

(assert (=> b!719720 m!675149))

(assert (=> b!719720 m!675147))

(declare-fun m!675151 () Bool)

(assert (=> b!719720 m!675151))

(declare-fun m!675153 () Bool)

(assert (=> b!719728 m!675153))

(declare-fun m!675155 () Bool)

(assert (=> start!64106 m!675155))

(declare-fun m!675157 () Bool)

(assert (=> start!64106 m!675157))

(assert (=> b!719727 m!675147))

(assert (=> b!719727 m!675147))

(declare-fun m!675159 () Bool)

(assert (=> b!719727 m!675159))

(declare-fun m!675161 () Bool)

(assert (=> b!719729 m!675161))

(declare-fun m!675163 () Bool)

(assert (=> b!719723 m!675163))

(declare-fun m!675165 () Bool)

(assert (=> b!719724 m!675165))

(declare-fun m!675167 () Bool)

(assert (=> b!719725 m!675167))

(push 1)

(assert (not b!719725))

(assert (not b!719727))

(assert (not b!719728))

(assert (not b!719726))

(assert (not b!719729))

(assert (not start!64106))

(assert (not b!719720))

(assert (not b!719723))

(check-sat)

(pop 1)

(push 1)

(check-sat)

