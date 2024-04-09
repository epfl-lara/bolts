; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32734 () Bool)

(assert start!32734)

(declare-fun b!326988 () Bool)

(declare-fun res!180186 () Bool)

(declare-fun e!201140 () Bool)

(assert (=> b!326988 (=> (not res!180186) (not e!201140))))

(declare-datatypes ((array!16767 0))(
  ( (array!16768 (arr!7935 (Array (_ BitVec 32) (_ BitVec 64))) (size!8287 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16767)

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3077 0))(
  ( (MissingZero!3077 (index!14484 (_ BitVec 32))) (Found!3077 (index!14485 (_ BitVec 32))) (Intermediate!3077 (undefined!3889 Bool) (index!14486 (_ BitVec 32)) (x!32686 (_ BitVec 32))) (Undefined!3077) (MissingVacant!3077 (index!14487 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16767 (_ BitVec 32)) SeekEntryResult!3077)

(assert (=> b!326988 (= res!180186 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!3077 i!1250)))))

(declare-fun res!180177 () Bool)

(assert (=> start!32734 (=> (not res!180177) (not e!201140))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32734 (= res!180177 (validMask!0 mask!3777))))

(assert (=> start!32734 e!201140))

(declare-fun array_inv!5889 (array!16767) Bool)

(assert (=> start!32734 (array_inv!5889 a!3305)))

(assert (=> start!32734 true))

(declare-fun b!326989 () Bool)

(declare-fun res!180178 () Bool)

(declare-fun e!201141 () Bool)

(assert (=> b!326989 (=> (not res!180178) (not e!201141))))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(assert (=> b!326989 (= res!180178 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7935 a!3305) index!1840) k!2497)) (not (= x!1490 resX!58))))))

(declare-fun b!326990 () Bool)

(declare-fun res!180179 () Bool)

(assert (=> b!326990 (=> (not res!180179) (not e!201140))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16767 (_ BitVec 32)) Bool)

(assert (=> b!326990 (= res!180179 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!326991 () Bool)

(declare-fun res!180183 () Bool)

(assert (=> b!326991 (=> (not res!180183) (not e!201141))))

(declare-fun resIndex!58 () (_ BitVec 32))

(assert (=> b!326991 (= res!180183 (and (= (select (arr!7935 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8287 a!3305))))))

(declare-fun b!326992 () Bool)

(assert (=> b!326992 (= e!201141 false)))

(declare-datatypes ((Unit!10163 0))(
  ( (Unit!10164) )
))
(declare-fun lt!157435 () Unit!10163)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 (array!16767 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!10163)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!326992 (= lt!157435 (lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 a!3305 i!1250 k!2497 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) resIndex!58 resX!58 mask!3777))))

(declare-fun b!326993 () Bool)

(declare-fun res!180180 () Bool)

(assert (=> b!326993 (=> (not res!180180) (not e!201141))))

(declare-fun lt!157436 () SeekEntryResult!3077)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16767 (_ BitVec 32)) SeekEntryResult!3077)

(assert (=> b!326993 (= res!180180 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!157436))))

(declare-fun b!326994 () Bool)

(declare-fun res!180182 () Bool)

(assert (=> b!326994 (=> (not res!180182) (not e!201140))))

(declare-fun arrayContainsKey!0 (array!16767 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!326994 (= res!180182 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!326995 () Bool)

(declare-fun res!180181 () Bool)

(assert (=> b!326995 (=> (not res!180181) (not e!201140))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!326995 (= res!180181 (validKeyInArray!0 k!2497))))

(declare-fun b!326996 () Bool)

(declare-fun res!180184 () Bool)

(assert (=> b!326996 (=> (not res!180184) (not e!201140))))

(assert (=> b!326996 (= res!180184 (and (= (size!8287 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8287 a!3305))))))

(declare-fun b!326997 () Bool)

(assert (=> b!326997 (= e!201140 e!201141)))

(declare-fun res!180185 () Bool)

(assert (=> b!326997 (=> (not res!180185) (not e!201141))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!326997 (= res!180185 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!157436))))

(assert (=> b!326997 (= lt!157436 (Intermediate!3077 false resIndex!58 resX!58))))

(assert (= (and start!32734 res!180177) b!326996))

(assert (= (and b!326996 res!180184) b!326995))

(assert (= (and b!326995 res!180181) b!326994))

(assert (= (and b!326994 res!180182) b!326988))

(assert (= (and b!326988 res!180186) b!326990))

(assert (= (and b!326990 res!180179) b!326997))

(assert (= (and b!326997 res!180185) b!326991))

(assert (= (and b!326991 res!180183) b!326993))

(assert (= (and b!326993 res!180180) b!326989))

(assert (= (and b!326989 res!180178) b!326992))

(declare-fun m!333479 () Bool)

(assert (=> b!326995 m!333479))

(declare-fun m!333481 () Bool)

(assert (=> start!32734 m!333481))

(declare-fun m!333483 () Bool)

(assert (=> start!32734 m!333483))

(declare-fun m!333485 () Bool)

(assert (=> b!326997 m!333485))

(assert (=> b!326997 m!333485))

(declare-fun m!333487 () Bool)

(assert (=> b!326997 m!333487))

(declare-fun m!333489 () Bool)

(assert (=> b!326989 m!333489))

(declare-fun m!333491 () Bool)

(assert (=> b!326993 m!333491))

(declare-fun m!333493 () Bool)

(assert (=> b!326991 m!333493))

(declare-fun m!333495 () Bool)

(assert (=> b!326992 m!333495))

(assert (=> b!326992 m!333495))

(declare-fun m!333497 () Bool)

(assert (=> b!326992 m!333497))

(declare-fun m!333499 () Bool)

(assert (=> b!326988 m!333499))

(declare-fun m!333501 () Bool)

(assert (=> b!326990 m!333501))

(declare-fun m!333503 () Bool)

(assert (=> b!326994 m!333503))

(push 1)

(assert (not b!326988))

(assert (not b!326990))

(assert (not start!32734))

(assert (not b!326994))

(assert (not b!326995))

