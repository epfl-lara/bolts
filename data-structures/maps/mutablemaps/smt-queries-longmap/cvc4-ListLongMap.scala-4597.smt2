; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64118 () Bool)

(assert start!64118)

(declare-fun res!482420 () Bool)

(declare-fun e!403837 () Bool)

(assert (=> start!64118 (=> (not res!482420) (not e!403837))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64118 (= res!482420 (validMask!0 mask!3328))))

(assert (=> start!64118 e!403837))

(assert (=> start!64118 true))

(declare-datatypes ((array!40766 0))(
  ( (array!40767 (arr!19505 (Array (_ BitVec 32) (_ BitVec 64))) (size!19926 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40766)

(declare-fun array_inv!15279 (array!40766) Bool)

(assert (=> start!64118 (array_inv!15279 a!3186)))

(declare-fun b!719883 () Bool)

(declare-fun res!482418 () Bool)

(declare-fun e!403838 () Bool)

(assert (=> b!719883 (=> (not res!482418) (not e!403838))))

(declare-datatypes ((List!13560 0))(
  ( (Nil!13557) (Cons!13556 (h!14604 (_ BitVec 64)) (t!19883 List!13560)) )
))
(declare-fun arrayNoDuplicates!0 (array!40766 (_ BitVec 32) List!13560) Bool)

(assert (=> b!719883 (= res!482418 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13557))))

(declare-fun b!719884 () Bool)

(declare-fun res!482417 () Bool)

(assert (=> b!719884 (=> (not res!482417) (not e!403837))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!40766 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!719884 (= res!482417 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!719885 () Bool)

(declare-fun res!482419 () Bool)

(assert (=> b!719885 (=> (not res!482419) (not e!403838))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!719885 (= res!482419 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19926 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19926 a!3186))))))

(declare-fun b!719886 () Bool)

(declare-fun res!482424 () Bool)

(assert (=> b!719886 (=> (not res!482424) (not e!403837))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!719886 (= res!482424 (validKeyInArray!0 k!2102))))

(declare-fun b!719887 () Bool)

(assert (=> b!719887 (= e!403837 e!403838)))

(declare-fun res!482421 () Bool)

(assert (=> b!719887 (=> (not res!482421) (not e!403838))))

(declare-datatypes ((SeekEntryResult!7112 0))(
  ( (MissingZero!7112 (index!30815 (_ BitVec 32))) (Found!7112 (index!30816 (_ BitVec 32))) (Intermediate!7112 (undefined!7924 Bool) (index!30817 (_ BitVec 32)) (x!61840 (_ BitVec 32))) (Undefined!7112) (MissingVacant!7112 (index!30818 (_ BitVec 32))) )
))
(declare-fun lt!319658 () SeekEntryResult!7112)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!719887 (= res!482421 (or (= lt!319658 (MissingZero!7112 i!1173)) (= lt!319658 (MissingVacant!7112 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40766 (_ BitVec 32)) SeekEntryResult!7112)

(assert (=> b!719887 (= lt!319658 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!719888 () Bool)

(assert (=> b!719888 (= e!403838 false)))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun lt!319657 () SeekEntryResult!7112)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40766 (_ BitVec 32)) SeekEntryResult!7112)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!719888 (= lt!319657 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19505 a!3186) j!159) mask!3328) (select (arr!19505 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!719889 () Bool)

(declare-fun res!482416 () Bool)

(assert (=> b!719889 (=> (not res!482416) (not e!403837))))

(assert (=> b!719889 (= res!482416 (validKeyInArray!0 (select (arr!19505 a!3186) j!159)))))

(declare-fun b!719890 () Bool)

(declare-fun res!482423 () Bool)

(assert (=> b!719890 (=> (not res!482423) (not e!403838))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40766 (_ BitVec 32)) Bool)

(assert (=> b!719890 (= res!482423 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!719891 () Bool)

(declare-fun res!482422 () Bool)

(assert (=> b!719891 (=> (not res!482422) (not e!403837))))

(assert (=> b!719891 (= res!482422 (and (= (size!19926 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19926 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19926 a!3186)) (not (= i!1173 j!159))))))

(assert (= (and start!64118 res!482420) b!719891))

(assert (= (and b!719891 res!482422) b!719889))

(assert (= (and b!719889 res!482416) b!719886))

(assert (= (and b!719886 res!482424) b!719884))

(assert (= (and b!719884 res!482417) b!719887))

(assert (= (and b!719887 res!482421) b!719890))

(assert (= (and b!719890 res!482423) b!719883))

(assert (= (and b!719883 res!482418) b!719885))

(assert (= (and b!719885 res!482419) b!719888))

(declare-fun m!675279 () Bool)

(assert (=> b!719884 m!675279))

(declare-fun m!675281 () Bool)

(assert (=> b!719888 m!675281))

(assert (=> b!719888 m!675281))

(declare-fun m!675283 () Bool)

(assert (=> b!719888 m!675283))

(assert (=> b!719888 m!675283))

(assert (=> b!719888 m!675281))

(declare-fun m!675285 () Bool)

(assert (=> b!719888 m!675285))

(declare-fun m!675287 () Bool)

(assert (=> start!64118 m!675287))

(declare-fun m!675289 () Bool)

(assert (=> start!64118 m!675289))

(declare-fun m!675291 () Bool)

(assert (=> b!719886 m!675291))

(declare-fun m!675293 () Bool)

(assert (=> b!719887 m!675293))

(declare-fun m!675295 () Bool)

(assert (=> b!719890 m!675295))

(declare-fun m!675297 () Bool)

(assert (=> b!719883 m!675297))

(assert (=> b!719889 m!675281))

(assert (=> b!719889 m!675281))

(declare-fun m!675299 () Bool)

(assert (=> b!719889 m!675299))

(push 1)

(assert (not b!719886))

(assert (not b!719887))

(assert (not b!719884))

(assert (not b!719889))

(assert (not b!719883))

(assert (not b!719890))

(assert (not start!64118))

(assert (not b!719888))

