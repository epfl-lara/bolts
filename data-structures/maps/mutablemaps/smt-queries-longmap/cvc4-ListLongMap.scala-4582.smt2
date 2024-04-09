; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64028 () Bool)

(assert start!64028)

(declare-fun res!481161 () Bool)

(declare-fun e!403434 () Bool)

(assert (=> start!64028 (=> (not res!481161) (not e!403434))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64028 (= res!481161 (validMask!0 mask!3328))))

(assert (=> start!64028 e!403434))

(assert (=> start!64028 true))

(declare-datatypes ((array!40676 0))(
  ( (array!40677 (arr!19460 (Array (_ BitVec 32) (_ BitVec 64))) (size!19881 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40676)

(declare-fun array_inv!15234 (array!40676) Bool)

(assert (=> start!64028 (array_inv!15234 a!3186)))

(declare-fun b!718623 () Bool)

(declare-fun res!481159 () Bool)

(declare-fun e!403432 () Bool)

(assert (=> b!718623 (=> (not res!481159) (not e!403432))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40676 (_ BitVec 32)) Bool)

(assert (=> b!718623 (= res!481159 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!718624 () Bool)

(declare-fun res!481162 () Bool)

(assert (=> b!718624 (=> (not res!481162) (not e!403432))))

(declare-datatypes ((List!13515 0))(
  ( (Nil!13512) (Cons!13511 (h!14559 (_ BitVec 64)) (t!19838 List!13515)) )
))
(declare-fun arrayNoDuplicates!0 (array!40676 (_ BitVec 32) List!13515) Bool)

(assert (=> b!718624 (= res!481162 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13512))))

(declare-fun b!718625 () Bool)

(declare-fun res!481158 () Bool)

(assert (=> b!718625 (=> (not res!481158) (not e!403432))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!718625 (= res!481158 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19881 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19881 a!3186))))))

(declare-fun b!718626 () Bool)

(declare-fun res!481163 () Bool)

(assert (=> b!718626 (=> (not res!481163) (not e!403434))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!40676 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!718626 (= res!481163 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!718627 () Bool)

(declare-fun res!481164 () Bool)

(assert (=> b!718627 (=> (not res!481164) (not e!403434))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!718627 (= res!481164 (validKeyInArray!0 k!2102))))

(declare-fun b!718628 () Bool)

(assert (=> b!718628 (= e!403434 e!403432)))

(declare-fun res!481160 () Bool)

(assert (=> b!718628 (=> (not res!481160) (not e!403432))))

(declare-datatypes ((SeekEntryResult!7067 0))(
  ( (MissingZero!7067 (index!30635 (_ BitVec 32))) (Found!7067 (index!30636 (_ BitVec 32))) (Intermediate!7067 (undefined!7879 Bool) (index!30637 (_ BitVec 32)) (x!61675 (_ BitVec 32))) (Undefined!7067) (MissingVacant!7067 (index!30638 (_ BitVec 32))) )
))
(declare-fun lt!319433 () SeekEntryResult!7067)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!718628 (= res!481160 (or (= lt!319433 (MissingZero!7067 i!1173)) (= lt!319433 (MissingVacant!7067 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40676 (_ BitVec 32)) SeekEntryResult!7067)

(assert (=> b!718628 (= lt!319433 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!718629 () Bool)

(declare-fun res!481156 () Bool)

(assert (=> b!718629 (=> (not res!481156) (not e!403434))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!718629 (= res!481156 (and (= (size!19881 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19881 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19881 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!718630 () Bool)

(declare-fun res!481157 () Bool)

(assert (=> b!718630 (=> (not res!481157) (not e!403434))))

(assert (=> b!718630 (= res!481157 (validKeyInArray!0 (select (arr!19460 a!3186) j!159)))))

(declare-fun b!718631 () Bool)

(assert (=> b!718631 (= e!403432 false)))

(declare-fun lt!319432 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!718631 (= lt!319432 (toIndex!0 (select (arr!19460 a!3186) j!159) mask!3328))))

(assert (= (and start!64028 res!481161) b!718629))

(assert (= (and b!718629 res!481156) b!718630))

(assert (= (and b!718630 res!481157) b!718627))

(assert (= (and b!718627 res!481164) b!718626))

(assert (= (and b!718626 res!481163) b!718628))

(assert (= (and b!718628 res!481160) b!718623))

(assert (= (and b!718623 res!481159) b!718624))

(assert (= (and b!718624 res!481162) b!718625))

(assert (= (and b!718625 res!481158) b!718631))

(declare-fun m!674267 () Bool)

(assert (=> b!718626 m!674267))

(declare-fun m!674269 () Bool)

(assert (=> b!718628 m!674269))

(declare-fun m!674271 () Bool)

(assert (=> b!718624 m!674271))

(declare-fun m!674273 () Bool)

(assert (=> b!718630 m!674273))

(assert (=> b!718630 m!674273))

(declare-fun m!674275 () Bool)

(assert (=> b!718630 m!674275))

(declare-fun m!674277 () Bool)

(assert (=> start!64028 m!674277))

(declare-fun m!674279 () Bool)

(assert (=> start!64028 m!674279))

(declare-fun m!674281 () Bool)

(assert (=> b!718627 m!674281))

(declare-fun m!674283 () Bool)

(assert (=> b!718623 m!674283))

(assert (=> b!718631 m!674273))

(assert (=> b!718631 m!674273))

(declare-fun m!674285 () Bool)

(assert (=> b!718631 m!674285))

(push 1)

(assert (not b!718627))

(assert (not b!718626))

(assert (not start!64028))

(assert (not b!718628))

(assert (not b!718624))

(assert (not b!718631))

(assert (not b!718623))

(assert (not b!718630))

