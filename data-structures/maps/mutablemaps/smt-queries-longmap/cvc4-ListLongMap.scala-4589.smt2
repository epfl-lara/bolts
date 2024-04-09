; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64070 () Bool)

(assert start!64070)

(declare-fun b!719208 () Bool)

(declare-fun res!481747 () Bool)

(declare-fun e!403622 () Bool)

(assert (=> b!719208 (=> (not res!481747) (not e!403622))))

(declare-datatypes ((array!40718 0))(
  ( (array!40719 (arr!19481 (Array (_ BitVec 32) (_ BitVec 64))) (size!19902 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40718)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!719208 (= res!481747 (validKeyInArray!0 (select (arr!19481 a!3186) j!159)))))

(declare-fun res!481749 () Bool)

(assert (=> start!64070 (=> (not res!481749) (not e!403622))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64070 (= res!481749 (validMask!0 mask!3328))))

(assert (=> start!64070 e!403622))

(assert (=> start!64070 true))

(declare-fun array_inv!15255 (array!40718) Bool)

(assert (=> start!64070 (array_inv!15255 a!3186)))

(declare-fun b!719209 () Bool)

(declare-fun e!403621 () Bool)

(assert (=> b!719209 (= e!403621 false)))

(declare-datatypes ((SeekEntryResult!7088 0))(
  ( (MissingZero!7088 (index!30719 (_ BitVec 32))) (Found!7088 (index!30720 (_ BitVec 32))) (Intermediate!7088 (undefined!7900 Bool) (index!30721 (_ BitVec 32)) (x!61752 (_ BitVec 32))) (Undefined!7088) (MissingVacant!7088 (index!30722 (_ BitVec 32))) )
))
(declare-fun lt!319541 () SeekEntryResult!7088)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40718 (_ BitVec 32)) SeekEntryResult!7088)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!719209 (= lt!319541 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19481 a!3186) j!159) mask!3328) (select (arr!19481 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!719210 () Bool)

(declare-fun res!481745 () Bool)

(assert (=> b!719210 (=> (not res!481745) (not e!403622))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!40718 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!719210 (= res!481745 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!719211 () Bool)

(declare-fun res!481748 () Bool)

(assert (=> b!719211 (=> (not res!481748) (not e!403622))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!719211 (= res!481748 (and (= (size!19902 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19902 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19902 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!719212 () Bool)

(declare-fun res!481741 () Bool)

(assert (=> b!719212 (=> (not res!481741) (not e!403621))))

(declare-datatypes ((List!13536 0))(
  ( (Nil!13533) (Cons!13532 (h!14580 (_ BitVec 64)) (t!19859 List!13536)) )
))
(declare-fun arrayNoDuplicates!0 (array!40718 (_ BitVec 32) List!13536) Bool)

(assert (=> b!719212 (= res!481741 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13533))))

(declare-fun b!719213 () Bool)

(declare-fun res!481746 () Bool)

(assert (=> b!719213 (=> (not res!481746) (not e!403621))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!719213 (= res!481746 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19902 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19902 a!3186))))))

(declare-fun b!719214 () Bool)

(declare-fun res!481743 () Bool)

(assert (=> b!719214 (=> (not res!481743) (not e!403621))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40718 (_ BitVec 32)) Bool)

(assert (=> b!719214 (= res!481743 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!719215 () Bool)

(assert (=> b!719215 (= e!403622 e!403621)))

(declare-fun res!481742 () Bool)

(assert (=> b!719215 (=> (not res!481742) (not e!403621))))

(declare-fun lt!319540 () SeekEntryResult!7088)

(assert (=> b!719215 (= res!481742 (or (= lt!319540 (MissingZero!7088 i!1173)) (= lt!319540 (MissingVacant!7088 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40718 (_ BitVec 32)) SeekEntryResult!7088)

(assert (=> b!719215 (= lt!319540 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!719216 () Bool)

(declare-fun res!481744 () Bool)

(assert (=> b!719216 (=> (not res!481744) (not e!403622))))

(assert (=> b!719216 (= res!481744 (validKeyInArray!0 k!2102))))

(assert (= (and start!64070 res!481749) b!719211))

(assert (= (and b!719211 res!481748) b!719208))

(assert (= (and b!719208 res!481747) b!719216))

(assert (= (and b!719216 res!481744) b!719210))

(assert (= (and b!719210 res!481745) b!719215))

(assert (= (and b!719215 res!481742) b!719214))

(assert (= (and b!719214 res!481743) b!719212))

(assert (= (and b!719212 res!481741) b!719213))

(assert (= (and b!719213 res!481746) b!719209))

(declare-fun m!674733 () Bool)

(assert (=> b!719209 m!674733))

(assert (=> b!719209 m!674733))

(declare-fun m!674735 () Bool)

(assert (=> b!719209 m!674735))

(assert (=> b!719209 m!674735))

(assert (=> b!719209 m!674733))

(declare-fun m!674737 () Bool)

(assert (=> b!719209 m!674737))

(declare-fun m!674739 () Bool)

(assert (=> b!719214 m!674739))

(declare-fun m!674741 () Bool)

(assert (=> b!719210 m!674741))

(declare-fun m!674743 () Bool)

(assert (=> start!64070 m!674743))

(declare-fun m!674745 () Bool)

(assert (=> start!64070 m!674745))

(declare-fun m!674747 () Bool)

(assert (=> b!719216 m!674747))

(assert (=> b!719208 m!674733))

(assert (=> b!719208 m!674733))

(declare-fun m!674749 () Bool)

(assert (=> b!719208 m!674749))

(declare-fun m!674751 () Bool)

(assert (=> b!719212 m!674751))

(declare-fun m!674753 () Bool)

(assert (=> b!719215 m!674753))

(push 1)

(assert (not b!719214))

(assert (not b!719210))

(assert (not b!719212))

(assert (not b!719209))

(assert (not b!719215))

(assert (not b!719208))

(assert (not start!64070))

