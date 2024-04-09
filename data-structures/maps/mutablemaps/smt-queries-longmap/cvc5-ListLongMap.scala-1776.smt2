; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32364 () Bool)

(assert start!32364)

(declare-fun b!321987 () Bool)

(declare-fun res!176125 () Bool)

(declare-fun e!199358 () Bool)

(assert (=> b!321987 (=> (not res!176125) (not e!199358))))

(declare-datatypes ((array!16499 0))(
  ( (array!16500 (arr!7804 (Array (_ BitVec 32) (_ BitVec 64))) (size!8156 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16499)

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16499 (_ BitVec 32)) Bool)

(assert (=> b!321987 (= res!176125 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!321988 () Bool)

(declare-fun res!176133 () Bool)

(declare-fun e!199360 () Bool)

(assert (=> b!321988 (=> (not res!176133) (not e!199360))))

(declare-datatypes ((SeekEntryResult!2946 0))(
  ( (MissingZero!2946 (index!13960 (_ BitVec 32))) (Found!2946 (index!13961 (_ BitVec 32))) (Intermediate!2946 (undefined!3758 Bool) (index!13962 (_ BitVec 32)) (x!32193 (_ BitVec 32))) (Undefined!2946) (MissingVacant!2946 (index!13963 (_ BitVec 32))) )
))
(declare-fun lt!156362 () SeekEntryResult!2946)

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16499 (_ BitVec 32)) SeekEntryResult!2946)

(assert (=> b!321988 (= res!176133 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!156362))))

(declare-fun b!321989 () Bool)

(declare-fun res!176131 () Bool)

(assert (=> b!321989 (=> (not res!176131) (not e!199358))))

(declare-fun i!1250 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16499 (_ BitVec 32)) SeekEntryResult!2946)

(assert (=> b!321989 (= res!176131 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!2946 i!1250)))))

(declare-fun res!176128 () Bool)

(assert (=> start!32364 (=> (not res!176128) (not e!199358))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32364 (= res!176128 (validMask!0 mask!3777))))

(assert (=> start!32364 e!199358))

(declare-fun array_inv!5758 (array!16499) Bool)

(assert (=> start!32364 (array_inv!5758 a!3305)))

(assert (=> start!32364 true))

(declare-fun b!321990 () Bool)

(assert (=> b!321990 (= e!199358 e!199360)))

(declare-fun res!176127 () Bool)

(assert (=> b!321990 (=> (not res!176127) (not e!199360))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!321990 (= res!176127 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!156362))))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(assert (=> b!321990 (= lt!156362 (Intermediate!2946 false resIndex!58 resX!58))))

(declare-fun b!321991 () Bool)

(assert (=> b!321991 (= e!199360 false)))

(declare-fun lt!156361 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!321991 (= lt!156361 (nextIndex!0 index!1840 x!1490 mask!3777))))

(declare-fun b!321992 () Bool)

(declare-fun res!176126 () Bool)

(assert (=> b!321992 (=> (not res!176126) (not e!199358))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!321992 (= res!176126 (validKeyInArray!0 k!2497))))

(declare-fun b!321993 () Bool)

(declare-fun res!176124 () Bool)

(assert (=> b!321993 (=> (not res!176124) (not e!199358))))

(declare-fun arrayContainsKey!0 (array!16499 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!321993 (= res!176124 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!321994 () Bool)

(declare-fun res!176132 () Bool)

(assert (=> b!321994 (=> (not res!176132) (not e!199358))))

(assert (=> b!321994 (= res!176132 (and (= (size!8156 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8156 a!3305))))))

(declare-fun b!321995 () Bool)

(declare-fun res!176130 () Bool)

(assert (=> b!321995 (=> (not res!176130) (not e!199360))))

(assert (=> b!321995 (= res!176130 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7804 a!3305) index!1840) k!2497)) (= x!1490 resX!58) (not (= resIndex!58 index!1840)) (not (= (select (arr!7804 a!3305) index!1840) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7804 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!321996 () Bool)

(declare-fun res!176129 () Bool)

(assert (=> b!321996 (=> (not res!176129) (not e!199360))))

(assert (=> b!321996 (= res!176129 (and (= (select (arr!7804 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8156 a!3305))))))

(assert (= (and start!32364 res!176128) b!321994))

(assert (= (and b!321994 res!176132) b!321992))

(assert (= (and b!321992 res!176126) b!321993))

(assert (= (and b!321993 res!176124) b!321989))

(assert (= (and b!321989 res!176131) b!321987))

(assert (= (and b!321987 res!176125) b!321990))

(assert (= (and b!321990 res!176127) b!321996))

(assert (= (and b!321996 res!176129) b!321988))

(assert (= (and b!321988 res!176133) b!321995))

(assert (= (and b!321995 res!176130) b!321991))

(declare-fun m!329965 () Bool)

(assert (=> b!321991 m!329965))

(declare-fun m!329967 () Bool)

(assert (=> start!32364 m!329967))

(declare-fun m!329969 () Bool)

(assert (=> start!32364 m!329969))

(declare-fun m!329971 () Bool)

(assert (=> b!321993 m!329971))

(declare-fun m!329973 () Bool)

(assert (=> b!321987 m!329973))

(declare-fun m!329975 () Bool)

(assert (=> b!321996 m!329975))

(declare-fun m!329977 () Bool)

(assert (=> b!321995 m!329977))

(declare-fun m!329979 () Bool)

(assert (=> b!321988 m!329979))

(declare-fun m!329981 () Bool)

(assert (=> b!321989 m!329981))

(declare-fun m!329983 () Bool)

(assert (=> b!321992 m!329983))

(declare-fun m!329985 () Bool)

(assert (=> b!321990 m!329985))

(assert (=> b!321990 m!329985))

(declare-fun m!329987 () Bool)

(assert (=> b!321990 m!329987))

(push 1)

