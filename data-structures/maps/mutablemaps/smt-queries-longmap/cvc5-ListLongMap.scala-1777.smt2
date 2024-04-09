; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32370 () Bool)

(assert start!32370)

(declare-fun b!322089 () Bool)

(declare-fun res!176220 () Bool)

(declare-fun e!199396 () Bool)

(assert (=> b!322089 (=> (not res!176220) (not e!199396))))

(declare-datatypes ((array!16505 0))(
  ( (array!16506 (arr!7807 (Array (_ BitVec 32) (_ BitVec 64))) (size!8159 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16505)

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2949 0))(
  ( (MissingZero!2949 (index!13972 (_ BitVec 32))) (Found!2949 (index!13973 (_ BitVec 32))) (Intermediate!2949 (undefined!3761 Bool) (index!13974 (_ BitVec 32)) (x!32204 (_ BitVec 32))) (Undefined!2949) (MissingVacant!2949 (index!13975 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16505 (_ BitVec 32)) SeekEntryResult!2949)

(assert (=> b!322089 (= res!176220 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!2949 i!1250)))))

(declare-fun b!322090 () Bool)

(declare-fun e!199395 () Bool)

(assert (=> b!322090 (= e!199396 e!199395)))

(declare-fun res!176219 () Bool)

(assert (=> b!322090 (=> (not res!176219) (not e!199395))))

(declare-fun lt!156382 () SeekEntryResult!2949)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16505 (_ BitVec 32)) SeekEntryResult!2949)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!322090 (= res!176219 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!156382))))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(assert (=> b!322090 (= lt!156382 (Intermediate!2949 false resIndex!58 resX!58))))

(declare-fun b!322091 () Bool)

(declare-datatypes ((Unit!9829 0))(
  ( (Unit!9830) )
))
(declare-fun e!199394 () Unit!9829)

(declare-fun Unit!9831 () Unit!9829)

(assert (=> b!322091 (= e!199394 Unit!9831)))

(assert (=> b!322091 false))

(declare-fun b!322092 () Bool)

(declare-fun Unit!9832 () Unit!9829)

(assert (=> b!322092 (= e!199394 Unit!9832)))

(declare-fun b!322093 () Bool)

(declare-fun res!176214 () Bool)

(assert (=> b!322093 (=> (not res!176214) (not e!199395))))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(assert (=> b!322093 (= res!176214 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!156382))))

(declare-fun b!322094 () Bool)

(declare-fun e!199391 () Unit!9829)

(declare-fun Unit!9833 () Unit!9829)

(assert (=> b!322094 (= e!199391 Unit!9833)))

(declare-fun b!322096 () Bool)

(declare-fun e!199392 () Unit!9829)

(assert (=> b!322096 (= e!199391 e!199392)))

(declare-fun c!50565 () Bool)

(assert (=> b!322096 (= c!50565 (or (= (select (arr!7807 a!3305) index!1840) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7807 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!322097 () Bool)

(assert (=> b!322097 false))

(declare-fun Unit!9834 () Unit!9829)

(assert (=> b!322097 (= e!199392 Unit!9834)))

(declare-fun b!322098 () Bool)

(assert (=> b!322098 (= e!199395 (not true))))

(assert (=> b!322098 (= index!1840 resIndex!58)))

(declare-fun lt!156381 () Unit!9829)

(assert (=> b!322098 (= lt!156381 e!199391)))

(declare-fun c!50566 () Bool)

(assert (=> b!322098 (= c!50566 (not (= resIndex!58 index!1840)))))

(declare-fun b!322099 () Bool)

(declare-fun res!176216 () Bool)

(assert (=> b!322099 (=> (not res!176216) (not e!199396))))

(assert (=> b!322099 (= res!176216 (and (= (size!8159 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8159 a!3305))))))

(declare-fun b!322100 () Bool)

(assert (=> b!322100 false))

(declare-fun lt!156383 () Unit!9829)

(assert (=> b!322100 (= lt!156383 e!199394)))

(declare-fun c!50567 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!322100 (= c!50567 (is-Intermediate!2949 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) k!2497 a!3305 mask!3777)))))

(declare-fun Unit!9835 () Unit!9829)

(assert (=> b!322100 (= e!199392 Unit!9835)))

(declare-fun b!322095 () Bool)

(declare-fun res!176215 () Bool)

(assert (=> b!322095 (=> (not res!176215) (not e!199396))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16505 (_ BitVec 32)) Bool)

(assert (=> b!322095 (= res!176215 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun res!176221 () Bool)

(assert (=> start!32370 (=> (not res!176221) (not e!199396))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32370 (= res!176221 (validMask!0 mask!3777))))

(assert (=> start!32370 e!199396))

(declare-fun array_inv!5761 (array!16505) Bool)

(assert (=> start!32370 (array_inv!5761 a!3305)))

(assert (=> start!32370 true))

(declare-fun b!322101 () Bool)

(declare-fun res!176218 () Bool)

(assert (=> b!322101 (=> (not res!176218) (not e!199395))))

(assert (=> b!322101 (= res!176218 (and (= (select (arr!7807 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8159 a!3305))))))

(declare-fun b!322102 () Bool)

(declare-fun res!176223 () Bool)

(assert (=> b!322102 (=> (not res!176223) (not e!199396))))

(declare-fun arrayContainsKey!0 (array!16505 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!322102 (= res!176223 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!322103 () Bool)

(declare-fun res!176222 () Bool)

(assert (=> b!322103 (=> (not res!176222) (not e!199395))))

(assert (=> b!322103 (= res!176222 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7807 a!3305) index!1840) k!2497)) (= x!1490 resX!58)))))

(declare-fun b!322104 () Bool)

(declare-fun res!176217 () Bool)

(assert (=> b!322104 (=> (not res!176217) (not e!199396))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!322104 (= res!176217 (validKeyInArray!0 k!2497))))

(assert (= (and start!32370 res!176221) b!322099))

(assert (= (and b!322099 res!176216) b!322104))

(assert (= (and b!322104 res!176217) b!322102))

(assert (= (and b!322102 res!176223) b!322089))

(assert (= (and b!322089 res!176220) b!322095))

(assert (= (and b!322095 res!176215) b!322090))

(assert (= (and b!322090 res!176219) b!322101))

(assert (= (and b!322101 res!176218) b!322093))

(assert (= (and b!322093 res!176214) b!322103))

(assert (= (and b!322103 res!176222) b!322098))

(assert (= (and b!322098 c!50566) b!322096))

(assert (= (and b!322098 (not c!50566)) b!322094))

(assert (= (and b!322096 c!50565) b!322097))

(assert (= (and b!322096 (not c!50565)) b!322100))

(assert (= (and b!322100 c!50567) b!322092))

(assert (= (and b!322100 (not c!50567)) b!322091))

(declare-fun m!330037 () Bool)

(assert (=> b!322101 m!330037))

(declare-fun m!330039 () Bool)

(assert (=> b!322095 m!330039))

(declare-fun m!330041 () Bool)

(assert (=> b!322089 m!330041))

(declare-fun m!330043 () Bool)

(assert (=> start!32370 m!330043))

(declare-fun m!330045 () Bool)

(assert (=> start!32370 m!330045))

(declare-fun m!330047 () Bool)

(assert (=> b!322090 m!330047))

(assert (=> b!322090 m!330047))

(declare-fun m!330049 () Bool)

(assert (=> b!322090 m!330049))

(declare-fun m!330051 () Bool)

(assert (=> b!322100 m!330051))

(assert (=> b!322100 m!330051))

(declare-fun m!330053 () Bool)

(assert (=> b!322100 m!330053))

(declare-fun m!330055 () Bool)

(assert (=> b!322104 m!330055))

(declare-fun m!330057 () Bool)

(assert (=> b!322103 m!330057))

(assert (=> b!322096 m!330057))

(declare-fun m!330059 () Bool)

(assert (=> b!322102 m!330059))

(declare-fun m!330061 () Bool)

(assert (=> b!322093 m!330061))

(push 1)

