; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64114 () Bool)

(assert start!64114)

(declare-fun b!719829 () Bool)

(declare-fun res!482370 () Bool)

(declare-fun e!403821 () Bool)

(assert (=> b!719829 (=> (not res!482370) (not e!403821))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!40762 0))(
  ( (array!40763 (arr!19503 (Array (_ BitVec 32) (_ BitVec 64))) (size!19924 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40762)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!719829 (= res!482370 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19924 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19924 a!3186))))))

(declare-fun b!719830 () Bool)

(declare-fun e!403820 () Bool)

(assert (=> b!719830 (= e!403820 e!403821)))

(declare-fun res!482365 () Bool)

(assert (=> b!719830 (=> (not res!482365) (not e!403821))))

(declare-datatypes ((SeekEntryResult!7110 0))(
  ( (MissingZero!7110 (index!30807 (_ BitVec 32))) (Found!7110 (index!30808 (_ BitVec 32))) (Intermediate!7110 (undefined!7922 Bool) (index!30809 (_ BitVec 32)) (x!61838 (_ BitVec 32))) (Undefined!7110) (MissingVacant!7110 (index!30810 (_ BitVec 32))) )
))
(declare-fun lt!319646 () SeekEntryResult!7110)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!719830 (= res!482365 (or (= lt!319646 (MissingZero!7110 i!1173)) (= lt!319646 (MissingVacant!7110 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40762 (_ BitVec 32)) SeekEntryResult!7110)

(assert (=> b!719830 (= lt!319646 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!719832 () Bool)

(declare-fun res!482368 () Bool)

(assert (=> b!719832 (=> (not res!482368) (not e!403821))))

(declare-datatypes ((List!13558 0))(
  ( (Nil!13555) (Cons!13554 (h!14602 (_ BitVec 64)) (t!19881 List!13558)) )
))
(declare-fun arrayNoDuplicates!0 (array!40762 (_ BitVec 32) List!13558) Bool)

(assert (=> b!719832 (= res!482368 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13555))))

(declare-fun b!719833 () Bool)

(declare-fun res!482363 () Bool)

(assert (=> b!719833 (=> (not res!482363) (not e!403820))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!719833 (= res!482363 (validKeyInArray!0 (select (arr!19503 a!3186) j!159)))))

(declare-fun b!719834 () Bool)

(declare-fun res!482369 () Bool)

(assert (=> b!719834 (=> (not res!482369) (not e!403820))))

(assert (=> b!719834 (= res!482369 (and (= (size!19924 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19924 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19924 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!719835 () Bool)

(declare-fun res!482364 () Bool)

(assert (=> b!719835 (=> (not res!482364) (not e!403821))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40762 (_ BitVec 32)) Bool)

(assert (=> b!719835 (= res!482364 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!719836 () Bool)

(declare-fun res!482366 () Bool)

(assert (=> b!719836 (=> (not res!482366) (not e!403820))))

(declare-fun arrayContainsKey!0 (array!40762 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!719836 (= res!482366 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!719837 () Bool)

(declare-fun res!482362 () Bool)

(assert (=> b!719837 (=> (not res!482362) (not e!403820))))

(assert (=> b!719837 (= res!482362 (validKeyInArray!0 k!2102))))

(declare-fun b!719831 () Bool)

(assert (=> b!719831 (= e!403821 false)))

(declare-fun lt!319645 () SeekEntryResult!7110)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40762 (_ BitVec 32)) SeekEntryResult!7110)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!719831 (= lt!319645 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19503 a!3186) j!159) mask!3328) (select (arr!19503 a!3186) j!159) a!3186 mask!3328))))

(declare-fun res!482367 () Bool)

(assert (=> start!64114 (=> (not res!482367) (not e!403820))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64114 (= res!482367 (validMask!0 mask!3328))))

(assert (=> start!64114 e!403820))

(assert (=> start!64114 true))

(declare-fun array_inv!15277 (array!40762) Bool)

(assert (=> start!64114 (array_inv!15277 a!3186)))

(assert (= (and start!64114 res!482367) b!719834))

(assert (= (and b!719834 res!482369) b!719833))

(assert (= (and b!719833 res!482363) b!719837))

(assert (= (and b!719837 res!482362) b!719836))

(assert (= (and b!719836 res!482366) b!719830))

(assert (= (and b!719830 res!482365) b!719835))

(assert (= (and b!719835 res!482364) b!719832))

(assert (= (and b!719832 res!482368) b!719829))

(assert (= (and b!719829 res!482370) b!719831))

(declare-fun m!675235 () Bool)

(assert (=> b!719831 m!675235))

(assert (=> b!719831 m!675235))

(declare-fun m!675237 () Bool)

(assert (=> b!719831 m!675237))

(assert (=> b!719831 m!675237))

(assert (=> b!719831 m!675235))

(declare-fun m!675239 () Bool)

(assert (=> b!719831 m!675239))

(declare-fun m!675241 () Bool)

(assert (=> start!64114 m!675241))

(declare-fun m!675243 () Bool)

(assert (=> start!64114 m!675243))

(declare-fun m!675245 () Bool)

(assert (=> b!719837 m!675245))

(declare-fun m!675247 () Bool)

(assert (=> b!719835 m!675247))

(declare-fun m!675249 () Bool)

(assert (=> b!719832 m!675249))

(declare-fun m!675251 () Bool)

(assert (=> b!719836 m!675251))

(declare-fun m!675253 () Bool)

(assert (=> b!719830 m!675253))

(assert (=> b!719833 m!675235))

(assert (=> b!719833 m!675235))

(declare-fun m!675255 () Bool)

(assert (=> b!719833 m!675255))

(push 1)

