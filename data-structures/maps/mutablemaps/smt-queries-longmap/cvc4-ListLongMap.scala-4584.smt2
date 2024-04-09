; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64040 () Bool)

(assert start!64040)

(declare-fun b!718785 () Bool)

(declare-fun e!403486 () Bool)

(assert (=> b!718785 (= e!403486 false)))

(declare-datatypes ((array!40688 0))(
  ( (array!40689 (arr!19466 (Array (_ BitVec 32) (_ BitVec 64))) (size!19887 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40688)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7073 0))(
  ( (MissingZero!7073 (index!30659 (_ BitVec 32))) (Found!7073 (index!30660 (_ BitVec 32))) (Intermediate!7073 (undefined!7885 Bool) (index!30661 (_ BitVec 32)) (x!61697 (_ BitVec 32))) (Undefined!7073) (MissingVacant!7073 (index!30662 (_ BitVec 32))) )
))
(declare-fun lt!319469 () SeekEntryResult!7073)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40688 (_ BitVec 32)) SeekEntryResult!7073)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!718785 (= lt!319469 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19466 a!3186) j!159) mask!3328) (select (arr!19466 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!718786 () Bool)

(declare-fun res!481319 () Bool)

(declare-fun e!403487 () Bool)

(assert (=> b!718786 (=> (not res!481319) (not e!403487))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!718786 (= res!481319 (validKeyInArray!0 (select (arr!19466 a!3186) j!159)))))

(declare-fun b!718787 () Bool)

(declare-fun res!481318 () Bool)

(assert (=> b!718787 (=> (not res!481318) (not e!403487))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!40688 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!718787 (= res!481318 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!718788 () Bool)

(declare-fun res!481321 () Bool)

(assert (=> b!718788 (=> (not res!481321) (not e!403487))))

(assert (=> b!718788 (= res!481321 (validKeyInArray!0 k!2102))))

(declare-fun b!718790 () Bool)

(declare-fun res!481320 () Bool)

(assert (=> b!718790 (=> (not res!481320) (not e!403486))))

(declare-datatypes ((List!13521 0))(
  ( (Nil!13518) (Cons!13517 (h!14565 (_ BitVec 64)) (t!19844 List!13521)) )
))
(declare-fun arrayNoDuplicates!0 (array!40688 (_ BitVec 32) List!13521) Bool)

(assert (=> b!718790 (= res!481320 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13518))))

(declare-fun b!718791 () Bool)

(declare-fun res!481322 () Bool)

(assert (=> b!718791 (=> (not res!481322) (not e!403486))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40688 (_ BitVec 32)) Bool)

(assert (=> b!718791 (= res!481322 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!718792 () Bool)

(declare-fun res!481323 () Bool)

(assert (=> b!718792 (=> (not res!481323) (not e!403487))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!718792 (= res!481323 (and (= (size!19887 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19887 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19887 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!718793 () Bool)

(assert (=> b!718793 (= e!403487 e!403486)))

(declare-fun res!481324 () Bool)

(assert (=> b!718793 (=> (not res!481324) (not e!403486))))

(declare-fun lt!319468 () SeekEntryResult!7073)

(assert (=> b!718793 (= res!481324 (or (= lt!319468 (MissingZero!7073 i!1173)) (= lt!319468 (MissingVacant!7073 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40688 (_ BitVec 32)) SeekEntryResult!7073)

(assert (=> b!718793 (= lt!319468 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun res!481326 () Bool)

(assert (=> start!64040 (=> (not res!481326) (not e!403487))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64040 (= res!481326 (validMask!0 mask!3328))))

(assert (=> start!64040 e!403487))

(assert (=> start!64040 true))

(declare-fun array_inv!15240 (array!40688) Bool)

(assert (=> start!64040 (array_inv!15240 a!3186)))

(declare-fun b!718789 () Bool)

(declare-fun res!481325 () Bool)

(assert (=> b!718789 (=> (not res!481325) (not e!403486))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!718789 (= res!481325 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19887 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19887 a!3186))))))

(assert (= (and start!64040 res!481326) b!718792))

(assert (= (and b!718792 res!481323) b!718786))

(assert (= (and b!718786 res!481319) b!718788))

(assert (= (and b!718788 res!481321) b!718787))

(assert (= (and b!718787 res!481318) b!718793))

(assert (= (and b!718793 res!481324) b!718791))

(assert (= (and b!718791 res!481322) b!718790))

(assert (= (and b!718790 res!481320) b!718789))

(assert (= (and b!718789 res!481325) b!718785))

(declare-fun m!674391 () Bool)

(assert (=> b!718790 m!674391))

(declare-fun m!674393 () Bool)

(assert (=> b!718785 m!674393))

(assert (=> b!718785 m!674393))

(declare-fun m!674395 () Bool)

(assert (=> b!718785 m!674395))

(assert (=> b!718785 m!674395))

(assert (=> b!718785 m!674393))

(declare-fun m!674397 () Bool)

(assert (=> b!718785 m!674397))

(declare-fun m!674399 () Bool)

(assert (=> b!718791 m!674399))

(declare-fun m!674401 () Bool)

(assert (=> b!718788 m!674401))

(declare-fun m!674403 () Bool)

(assert (=> b!718793 m!674403))

(declare-fun m!674405 () Bool)

(assert (=> b!718787 m!674405))

(assert (=> b!718786 m!674393))

(assert (=> b!718786 m!674393))

(declare-fun m!674407 () Bool)

(assert (=> b!718786 m!674407))

(declare-fun m!674409 () Bool)

(assert (=> start!64040 m!674409))

(declare-fun m!674411 () Bool)

(assert (=> start!64040 m!674411))

(push 1)

(assert (not b!718788))

(assert (not start!64040))

(assert (not b!718793))

(assert (not b!718785))

(assert (not b!718790))

(assert (not b!718787))

(assert (not b!718786))

(assert (not b!718791))

