; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32520 () Bool)

(assert start!32520)

(declare-fun b!324930 () Bool)

(declare-fun res!178426 () Bool)

(declare-fun e!200377 () Bool)

(assert (=> b!324930 (=> (not res!178426) (not e!200377))))

(declare-datatypes ((array!16655 0))(
  ( (array!16656 (arr!7882 (Array (_ BitVec 32) (_ BitVec 64))) (size!8234 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16655)

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(assert (=> b!324930 (= res!178426 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7882 a!3305) index!1840) k!2497)) (not (= x!1490 resX!58))))))

(declare-fun b!324931 () Bool)

(declare-fun res!178423 () Bool)

(declare-fun e!200376 () Bool)

(assert (=> b!324931 (=> (not res!178423) (not e!200376))))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!324931 (= res!178423 (and (= (size!8234 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8234 a!3305))))))

(declare-fun b!324932 () Bool)

(declare-fun res!178422 () Bool)

(assert (=> b!324932 (=> (not res!178422) (not e!200376))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!324932 (= res!178422 (validKeyInArray!0 k!2497))))

(declare-fun b!324933 () Bool)

(assert (=> b!324933 (= e!200376 e!200377)))

(declare-fun res!178419 () Bool)

(assert (=> b!324933 (=> (not res!178419) (not e!200377))))

(declare-datatypes ((SeekEntryResult!3024 0))(
  ( (MissingZero!3024 (index!14272 (_ BitVec 32))) (Found!3024 (index!14273 (_ BitVec 32))) (Intermediate!3024 (undefined!3836 Bool) (index!14274 (_ BitVec 32)) (x!32479 (_ BitVec 32))) (Undefined!3024) (MissingVacant!3024 (index!14275 (_ BitVec 32))) )
))
(declare-fun lt!156902 () SeekEntryResult!3024)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16655 (_ BitVec 32)) SeekEntryResult!3024)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!324933 (= res!178419 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!156902))))

(declare-fun resIndex!58 () (_ BitVec 32))

(assert (=> b!324933 (= lt!156902 (Intermediate!3024 false resIndex!58 resX!58))))

(declare-fun b!324935 () Bool)

(declare-fun res!178425 () Bool)

(assert (=> b!324935 (=> (not res!178425) (not e!200377))))

(assert (=> b!324935 (= res!178425 (and (= (select (arr!7882 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8234 a!3305))))))

(declare-fun b!324936 () Bool)

(assert (=> b!324936 (= e!200377 false)))

(declare-fun lt!156901 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!324936 (= lt!156901 (nextIndex!0 index!1840 x!1490 mask!3777))))

(declare-fun b!324937 () Bool)

(declare-fun res!178427 () Bool)

(assert (=> b!324937 (=> (not res!178427) (not e!200376))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16655 (_ BitVec 32)) Bool)

(assert (=> b!324937 (= res!178427 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!324938 () Bool)

(declare-fun res!178421 () Bool)

(assert (=> b!324938 (=> (not res!178421) (not e!200376))))

(declare-fun arrayContainsKey!0 (array!16655 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!324938 (= res!178421 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!324939 () Bool)

(declare-fun res!178428 () Bool)

(assert (=> b!324939 (=> (not res!178428) (not e!200376))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16655 (_ BitVec 32)) SeekEntryResult!3024)

(assert (=> b!324939 (= res!178428 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!3024 i!1250)))))

(declare-fun b!324934 () Bool)

(declare-fun res!178420 () Bool)

(assert (=> b!324934 (=> (not res!178420) (not e!200377))))

(assert (=> b!324934 (= res!178420 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!156902))))

(declare-fun res!178424 () Bool)

(assert (=> start!32520 (=> (not res!178424) (not e!200376))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32520 (= res!178424 (validMask!0 mask!3777))))

(assert (=> start!32520 e!200376))

(declare-fun array_inv!5836 (array!16655) Bool)

(assert (=> start!32520 (array_inv!5836 a!3305)))

(assert (=> start!32520 true))

(assert (= (and start!32520 res!178424) b!324931))

(assert (= (and b!324931 res!178423) b!324932))

(assert (= (and b!324932 res!178422) b!324938))

(assert (= (and b!324938 res!178421) b!324939))

(assert (= (and b!324939 res!178428) b!324937))

(assert (= (and b!324937 res!178427) b!324933))

(assert (= (and b!324933 res!178419) b!324935))

(assert (= (and b!324935 res!178425) b!324934))

(assert (= (and b!324934 res!178420) b!324930))

(assert (= (and b!324930 res!178426) b!324936))

(declare-fun m!331879 () Bool)

(assert (=> b!324932 m!331879))

(declare-fun m!331881 () Bool)

(assert (=> b!324935 m!331881))

(declare-fun m!331883 () Bool)

(assert (=> b!324936 m!331883))

(declare-fun m!331885 () Bool)

(assert (=> b!324939 m!331885))

(declare-fun m!331887 () Bool)

(assert (=> b!324933 m!331887))

(assert (=> b!324933 m!331887))

(declare-fun m!331889 () Bool)

(assert (=> b!324933 m!331889))

(declare-fun m!331891 () Bool)

(assert (=> start!32520 m!331891))

(declare-fun m!331893 () Bool)

(assert (=> start!32520 m!331893))

(declare-fun m!331895 () Bool)

(assert (=> b!324937 m!331895))

(declare-fun m!331897 () Bool)

(assert (=> b!324934 m!331897))

(declare-fun m!331899 () Bool)

(assert (=> b!324930 m!331899))

(declare-fun m!331901 () Bool)

(assert (=> b!324938 m!331901))

(push 1)

