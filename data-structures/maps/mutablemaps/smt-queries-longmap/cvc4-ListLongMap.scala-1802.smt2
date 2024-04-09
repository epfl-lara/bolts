; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32524 () Bool)

(assert start!32524)

(declare-fun b!324990 () Bool)

(declare-fun res!178480 () Bool)

(declare-fun e!200394 () Bool)

(assert (=> b!324990 (=> (not res!178480) (not e!200394))))

(declare-datatypes ((array!16659 0))(
  ( (array!16660 (arr!7884 (Array (_ BitVec 32) (_ BitVec 64))) (size!8236 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16659)

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(assert (=> b!324990 (= res!178480 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7884 a!3305) index!1840) k!2497)) (not (= x!1490 resX!58))))))

(declare-fun b!324991 () Bool)

(declare-fun res!178482 () Bool)

(declare-fun e!200393 () Bool)

(assert (=> b!324991 (=> (not res!178482) (not e!200393))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!324991 (= res!178482 (validKeyInArray!0 k!2497))))

(declare-fun b!324992 () Bool)

(declare-fun res!178487 () Bool)

(assert (=> b!324992 (=> (not res!178487) (not e!200394))))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3026 0))(
  ( (MissingZero!3026 (index!14280 (_ BitVec 32))) (Found!3026 (index!14281 (_ BitVec 32))) (Intermediate!3026 (undefined!3838 Bool) (index!14282 (_ BitVec 32)) (x!32481 (_ BitVec 32))) (Undefined!3026) (MissingVacant!3026 (index!14283 (_ BitVec 32))) )
))
(declare-fun lt!156913 () SeekEntryResult!3026)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16659 (_ BitVec 32)) SeekEntryResult!3026)

(assert (=> b!324992 (= res!178487 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!156913))))

(declare-fun b!324993 () Bool)

(declare-fun res!178486 () Bool)

(assert (=> b!324993 (=> (not res!178486) (not e!200393))))

(declare-fun arrayContainsKey!0 (array!16659 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!324993 (= res!178486 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!324994 () Bool)

(declare-fun res!178479 () Bool)

(assert (=> b!324994 (=> (not res!178479) (not e!200393))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16659 (_ BitVec 32)) Bool)

(assert (=> b!324994 (= res!178479 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!324995 () Bool)

(assert (=> b!324995 (= e!200393 e!200394)))

(declare-fun res!178485 () Bool)

(assert (=> b!324995 (=> (not res!178485) (not e!200394))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!324995 (= res!178485 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!156913))))

(declare-fun resIndex!58 () (_ BitVec 32))

(assert (=> b!324995 (= lt!156913 (Intermediate!3026 false resIndex!58 resX!58))))

(declare-fun res!178488 () Bool)

(assert (=> start!32524 (=> (not res!178488) (not e!200393))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32524 (= res!178488 (validMask!0 mask!3777))))

(assert (=> start!32524 e!200393))

(declare-fun array_inv!5838 (array!16659) Bool)

(assert (=> start!32524 (array_inv!5838 a!3305)))

(assert (=> start!32524 true))

(declare-fun b!324996 () Bool)

(assert (=> b!324996 (= e!200394 false)))

(declare-fun lt!156914 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!324996 (= lt!156914 (nextIndex!0 index!1840 x!1490 mask!3777))))

(declare-fun b!324997 () Bool)

(declare-fun res!178484 () Bool)

(assert (=> b!324997 (=> (not res!178484) (not e!200393))))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!324997 (= res!178484 (and (= (size!8236 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8236 a!3305))))))

(declare-fun b!324998 () Bool)

(declare-fun res!178483 () Bool)

(assert (=> b!324998 (=> (not res!178483) (not e!200393))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16659 (_ BitVec 32)) SeekEntryResult!3026)

(assert (=> b!324998 (= res!178483 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!3026 i!1250)))))

(declare-fun b!324999 () Bool)

(declare-fun res!178481 () Bool)

(assert (=> b!324999 (=> (not res!178481) (not e!200394))))

(assert (=> b!324999 (= res!178481 (and (= (select (arr!7884 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8236 a!3305))))))

(assert (= (and start!32524 res!178488) b!324997))

(assert (= (and b!324997 res!178484) b!324991))

(assert (= (and b!324991 res!178482) b!324993))

(assert (= (and b!324993 res!178486) b!324998))

(assert (= (and b!324998 res!178483) b!324994))

(assert (= (and b!324994 res!178479) b!324995))

(assert (= (and b!324995 res!178485) b!324999))

(assert (= (and b!324999 res!178481) b!324992))

(assert (= (and b!324992 res!178487) b!324990))

(assert (= (and b!324990 res!178480) b!324996))

(declare-fun m!331927 () Bool)

(assert (=> b!324995 m!331927))

(assert (=> b!324995 m!331927))

(declare-fun m!331929 () Bool)

(assert (=> b!324995 m!331929))

(declare-fun m!331931 () Bool)

(assert (=> b!324992 m!331931))

(declare-fun m!331933 () Bool)

(assert (=> b!324990 m!331933))

(declare-fun m!331935 () Bool)

(assert (=> b!324993 m!331935))

(declare-fun m!331937 () Bool)

(assert (=> start!32524 m!331937))

(declare-fun m!331939 () Bool)

(assert (=> start!32524 m!331939))

(declare-fun m!331941 () Bool)

(assert (=> b!324991 m!331941))

(declare-fun m!331943 () Bool)

(assert (=> b!324996 m!331943))

(declare-fun m!331945 () Bool)

(assert (=> b!324994 m!331945))

(declare-fun m!331947 () Bool)

(assert (=> b!324999 m!331947))

(declare-fun m!331949 () Bool)

(assert (=> b!324998 m!331949))

(push 1)

(assert (not b!324994))

(assert (not b!324995))

(assert (not b!324993))

(assert (not b!324996))

(assert (not b!324991))

(assert (not b!324992))

