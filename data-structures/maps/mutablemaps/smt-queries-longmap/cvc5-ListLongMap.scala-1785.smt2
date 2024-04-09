; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32418 () Bool)

(assert start!32418)

(declare-fun b!323242 () Bool)

(declare-fun res!176934 () Bool)

(declare-fun e!199825 () Bool)

(assert (=> b!323242 (=> (not res!176934) (not e!199825))))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!323242 (= res!176934 (validKeyInArray!0 k!2497))))

(declare-fun b!323243 () Bool)

(declare-fun res!176941 () Bool)

(declare-fun e!199827 () Bool)

(assert (=> b!323243 (=> (not res!176941) (not e!199827))))

(declare-datatypes ((array!16553 0))(
  ( (array!16554 (arr!7831 (Array (_ BitVec 32) (_ BitVec 64))) (size!8183 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16553)

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(assert (=> b!323243 (= res!176941 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7831 a!3305) index!1840) k!2497)) (= x!1490 resX!58)))))

(declare-fun b!323244 () Bool)

(declare-fun res!176942 () Bool)

(assert (=> b!323244 (=> (not res!176942) (not e!199825))))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16553 (_ BitVec 32)) Bool)

(assert (=> b!323244 (= res!176942 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!323245 () Bool)

(declare-fun res!176938 () Bool)

(assert (=> b!323245 (=> (not res!176938) (not e!199825))))

(declare-fun i!1250 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2973 0))(
  ( (MissingZero!2973 (index!14068 (_ BitVec 32))) (Found!2973 (index!14069 (_ BitVec 32))) (Intermediate!2973 (undefined!3785 Bool) (index!14070 (_ BitVec 32)) (x!32292 (_ BitVec 32))) (Undefined!2973) (MissingVacant!2973 (index!14071 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16553 (_ BitVec 32)) SeekEntryResult!2973)

(assert (=> b!323245 (= res!176938 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!2973 i!1250)))))

(declare-fun b!323246 () Bool)

(assert (=> b!323246 false))

(declare-datatypes ((Unit!9997 0))(
  ( (Unit!9998) )
))
(declare-fun e!199826 () Unit!9997)

(declare-fun Unit!9999 () Unit!9997)

(assert (=> b!323246 (= e!199826 Unit!9999)))

(declare-fun b!323247 () Bool)

(assert (=> b!323247 (= e!199825 e!199827)))

(declare-fun res!176936 () Bool)

(assert (=> b!323247 (=> (not res!176936) (not e!199827))))

(declare-fun lt!156599 () SeekEntryResult!2973)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16553 (_ BitVec 32)) SeekEntryResult!2973)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!323247 (= res!176936 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!156599))))

(declare-fun resIndex!58 () (_ BitVec 32))

(assert (=> b!323247 (= lt!156599 (Intermediate!2973 false resIndex!58 resX!58))))

(declare-fun b!323248 () Bool)

(declare-fun e!199823 () Unit!9997)

(assert (=> b!323248 (= e!199823 e!199826)))

(declare-fun c!50782 () Bool)

(assert (=> b!323248 (= c!50782 (or (= (select (arr!7831 a!3305) index!1840) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7831 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!323249 () Bool)

(assert (=> b!323249 false))

(declare-fun lt!156597 () Unit!9997)

(declare-fun e!199824 () Unit!9997)

(assert (=> b!323249 (= lt!156597 e!199824)))

(declare-fun c!50781 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!323249 (= c!50781 (is-Intermediate!2973 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) k!2497 a!3305 mask!3777)))))

(declare-fun Unit!10000 () Unit!9997)

(assert (=> b!323249 (= e!199826 Unit!10000)))

(declare-fun b!323250 () Bool)

(declare-fun res!176943 () Bool)

(assert (=> b!323250 (=> (not res!176943) (not e!199827))))

(assert (=> b!323250 (= res!176943 (and (= (select (arr!7831 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8183 a!3305))))))

(declare-fun b!323251 () Bool)

(declare-fun Unit!10001 () Unit!9997)

(assert (=> b!323251 (= e!199824 Unit!10001)))

(declare-fun b!323252 () Bool)

(assert (=> b!323252 (= e!199827 (not true))))

(assert (=> b!323252 (= index!1840 resIndex!58)))

(declare-fun lt!156598 () Unit!9997)

(assert (=> b!323252 (= lt!156598 e!199823)))

(declare-fun c!50783 () Bool)

(assert (=> b!323252 (= c!50783 (not (= resIndex!58 index!1840)))))

(declare-fun b!323253 () Bool)

(declare-fun res!176937 () Bool)

(assert (=> b!323253 (=> (not res!176937) (not e!199827))))

(assert (=> b!323253 (= res!176937 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!156599))))

(declare-fun b!323254 () Bool)

(declare-fun Unit!10002 () Unit!9997)

(assert (=> b!323254 (= e!199823 Unit!10002)))

(declare-fun res!176939 () Bool)

(assert (=> start!32418 (=> (not res!176939) (not e!199825))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32418 (= res!176939 (validMask!0 mask!3777))))

(assert (=> start!32418 e!199825))

(declare-fun array_inv!5785 (array!16553) Bool)

(assert (=> start!32418 (array_inv!5785 a!3305)))

(assert (=> start!32418 true))

(declare-fun b!323241 () Bool)

(declare-fun res!176935 () Bool)

(assert (=> b!323241 (=> (not res!176935) (not e!199825))))

(assert (=> b!323241 (= res!176935 (and (= (size!8183 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8183 a!3305))))))

(declare-fun b!323255 () Bool)

(declare-fun Unit!10003 () Unit!9997)

(assert (=> b!323255 (= e!199824 Unit!10003)))

(assert (=> b!323255 false))

(declare-fun b!323256 () Bool)

(declare-fun res!176940 () Bool)

(assert (=> b!323256 (=> (not res!176940) (not e!199825))))

(declare-fun arrayContainsKey!0 (array!16553 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!323256 (= res!176940 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(assert (= (and start!32418 res!176939) b!323241))

(assert (= (and b!323241 res!176935) b!323242))

(assert (= (and b!323242 res!176934) b!323256))

(assert (= (and b!323256 res!176940) b!323245))

(assert (= (and b!323245 res!176938) b!323244))

(assert (= (and b!323244 res!176942) b!323247))

(assert (= (and b!323247 res!176936) b!323250))

(assert (= (and b!323250 res!176943) b!323253))

(assert (= (and b!323253 res!176937) b!323243))

(assert (= (and b!323243 res!176941) b!323252))

(assert (= (and b!323252 c!50783) b!323248))

(assert (= (and b!323252 (not c!50783)) b!323254))

(assert (= (and b!323248 c!50782) b!323246))

(assert (= (and b!323248 (not c!50782)) b!323249))

(assert (= (and b!323249 c!50781) b!323251))

(assert (= (and b!323249 (not c!50781)) b!323255))

(declare-fun m!330661 () Bool)

(assert (=> b!323249 m!330661))

(assert (=> b!323249 m!330661))

(declare-fun m!330663 () Bool)

(assert (=> b!323249 m!330663))

(declare-fun m!330665 () Bool)

(assert (=> b!323256 m!330665))

(declare-fun m!330667 () Bool)

(assert (=> b!323243 m!330667))

(declare-fun m!330669 () Bool)

(assert (=> b!323242 m!330669))

(declare-fun m!330671 () Bool)

(assert (=> b!323253 m!330671))

(assert (=> b!323248 m!330667))

(declare-fun m!330673 () Bool)

(assert (=> b!323244 m!330673))

(declare-fun m!330675 () Bool)

(assert (=> start!32418 m!330675))

(declare-fun m!330677 () Bool)

(assert (=> start!32418 m!330677))

(declare-fun m!330679 () Bool)

(assert (=> b!323245 m!330679))

(declare-fun m!330681 () Bool)

(assert (=> b!323247 m!330681))

(assert (=> b!323247 m!330681))

(declare-fun m!330683 () Bool)

(assert (=> b!323247 m!330683))

(declare-fun m!330685 () Bool)

(assert (=> b!323250 m!330685))

(push 1)

