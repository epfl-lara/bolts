; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31042 () Bool)

(assert start!31042)

(declare-fun b!311904 () Bool)

(declare-fun res!168520 () Bool)

(declare-fun e!194543 () Bool)

(assert (=> b!311904 (=> (not res!168520) (not e!194543))))

(declare-datatypes ((array!15942 0))(
  ( (array!15943 (arr!7551 (Array (_ BitVec 32) (_ BitVec 64))) (size!7903 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15942)

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!311904 (= res!168520 (and (= (select (arr!7551 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7903 a!3293))))))

(declare-fun b!311905 () Bool)

(declare-fun res!168516 () Bool)

(declare-fun e!194542 () Bool)

(assert (=> b!311905 (=> (not res!168516) (not e!194542))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!311905 (= res!168516 (validKeyInArray!0 k!2441))))

(declare-fun b!311906 () Bool)

(declare-fun e!194544 () Bool)

(declare-fun e!194541 () Bool)

(assert (=> b!311906 (= e!194544 (not e!194541))))

(declare-fun res!168518 () Bool)

(assert (=> b!311906 (=> res!168518 e!194541)))

(declare-fun lt!152723 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2702 0))(
  ( (MissingZero!2702 (index!12984 (_ BitVec 32))) (Found!2702 (index!12985 (_ BitVec 32))) (Intermediate!2702 (undefined!3514 Bool) (index!12986 (_ BitVec 32)) (x!31158 (_ BitVec 32))) (Undefined!2702) (MissingVacant!2702 (index!12987 (_ BitVec 32))) )
))
(declare-fun lt!152724 () SeekEntryResult!2702)

(declare-fun lt!152728 () SeekEntryResult!2702)

(assert (=> b!311906 (= res!168518 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1427) resX!52) (bvslt (bvadd #b00000000000000000000000000000001 x!1427) #b00000000000000000000000000000000) (bvslt lt!152723 #b00000000000000000000000000000000) (bvsge lt!152723 (size!7903 a!3293)) (not (= lt!152728 lt!152724))))))

(declare-fun lt!152726 () SeekEntryResult!2702)

(declare-fun lt!152722 () SeekEntryResult!2702)

(assert (=> b!311906 (= lt!152726 lt!152722)))

(declare-fun lt!152729 () array!15942)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15942 (_ BitVec 32)) SeekEntryResult!2702)

(assert (=> b!311906 (= lt!152722 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152723 k!2441 lt!152729 mask!3709))))

(assert (=> b!311906 (= lt!152726 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 lt!152729 mask!3709))))

(assert (=> b!311906 (= lt!152729 (array!15943 (store (arr!7551 a!3293) i!1240 k!2441) (size!7903 a!3293)))))

(declare-fun lt!152725 () SeekEntryResult!2702)

(assert (=> b!311906 (= lt!152725 lt!152728)))

(assert (=> b!311906 (= lt!152728 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152723 k!2441 a!3293 mask!3709))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!311906 (= lt!152723 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!311907 () Bool)

(declare-fun res!168521 () Bool)

(assert (=> b!311907 (=> (not res!168521) (not e!194542))))

(assert (=> b!311907 (= res!168521 (and (= (size!7903 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7903 a!3293))))))

(declare-fun b!311908 () Bool)

(assert (=> b!311908 (= e!194541 (or (bvslt mask!3709 #b00000000000000000000000000000000) (bvslt index!1781 (bvadd #b00000000000000000000000000000001 mask!3709))))))

(assert (=> b!311908 (= lt!152722 lt!152728)))

(declare-datatypes ((Unit!9602 0))(
  ( (Unit!9603) )
))
(declare-fun lt!152727 () Unit!9602)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 (array!15942 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9602)

(assert (=> b!311908 (= lt!152727 (lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 a!3293 i!1240 k!2441 (bvadd #b00000000000000000000000000000001 x!1427) lt!152723 resIndex!52 resX!52 mask!3709))))

(declare-fun b!311909 () Bool)

(declare-fun res!168525 () Bool)

(assert (=> b!311909 (=> (not res!168525) (not e!194542))))

(declare-fun arrayContainsKey!0 (array!15942 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!311909 (= res!168525 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun res!168524 () Bool)

(assert (=> start!31042 (=> (not res!168524) (not e!194542))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31042 (= res!168524 (validMask!0 mask!3709))))

(assert (=> start!31042 e!194542))

(declare-fun array_inv!5505 (array!15942) Bool)

(assert (=> start!31042 (array_inv!5505 a!3293)))

(assert (=> start!31042 true))

(declare-fun b!311910 () Bool)

(assert (=> b!311910 (= e!194542 e!194543)))

(declare-fun res!168519 () Bool)

(assert (=> b!311910 (=> (not res!168519) (not e!194543))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!311910 (= res!168519 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!152724))))

(assert (=> b!311910 (= lt!152724 (Intermediate!2702 false resIndex!52 resX!52))))

(declare-fun b!311911 () Bool)

(assert (=> b!311911 (= e!194543 e!194544)))

(declare-fun res!168522 () Bool)

(assert (=> b!311911 (=> (not res!168522) (not e!194544))))

(assert (=> b!311911 (= res!168522 (and (= lt!152725 lt!152724) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7551 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!311911 (= lt!152725 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!311912 () Bool)

(declare-fun res!168517 () Bool)

(assert (=> b!311912 (=> (not res!168517) (not e!194542))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15942 (_ BitVec 32)) SeekEntryResult!2702)

(assert (=> b!311912 (= res!168517 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2702 i!1240)))))

(declare-fun b!311913 () Bool)

(declare-fun res!168523 () Bool)

(assert (=> b!311913 (=> (not res!168523) (not e!194542))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15942 (_ BitVec 32)) Bool)

(assert (=> b!311913 (= res!168523 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(assert (= (and start!31042 res!168524) b!311907))

(assert (= (and b!311907 res!168521) b!311905))

(assert (= (and b!311905 res!168516) b!311909))

(assert (= (and b!311909 res!168525) b!311912))

(assert (= (and b!311912 res!168517) b!311913))

(assert (= (and b!311913 res!168523) b!311910))

(assert (= (and b!311910 res!168519) b!311904))

(assert (= (and b!311904 res!168520) b!311911))

(assert (= (and b!311911 res!168522) b!311906))

(assert (= (and b!311906 (not res!168518)) b!311908))

(declare-fun m!321987 () Bool)

(assert (=> b!311913 m!321987))

(declare-fun m!321989 () Bool)

(assert (=> b!311908 m!321989))

(declare-fun m!321991 () Bool)

(assert (=> b!311910 m!321991))

(assert (=> b!311910 m!321991))

(declare-fun m!321993 () Bool)

(assert (=> b!311910 m!321993))

(declare-fun m!321995 () Bool)

(assert (=> b!311904 m!321995))

(declare-fun m!321997 () Bool)

(assert (=> b!311905 m!321997))

(declare-fun m!321999 () Bool)

(assert (=> b!311906 m!321999))

(declare-fun m!322001 () Bool)

(assert (=> b!311906 m!322001))

(declare-fun m!322003 () Bool)

(assert (=> b!311906 m!322003))

(declare-fun m!322005 () Bool)

(assert (=> b!311906 m!322005))

(declare-fun m!322007 () Bool)

(assert (=> b!311906 m!322007))

(declare-fun m!322009 () Bool)

(assert (=> b!311909 m!322009))

(declare-fun m!322011 () Bool)

(assert (=> b!311911 m!322011))

(declare-fun m!322013 () Bool)

(assert (=> b!311911 m!322013))

(declare-fun m!322015 () Bool)

(assert (=> start!31042 m!322015))

(declare-fun m!322017 () Bool)

(assert (=> start!31042 m!322017))

(declare-fun m!322019 () Bool)

(assert (=> b!311912 m!322019))

(push 1)

(assert (not b!311906))

(assert (not b!311905))

(assert (not b!311910))

(assert (not start!31042))

(assert (not b!311909))

(assert (not b!311912))

(assert (not b!311908))

(assert (not b!311913))

(assert (not b!311911))

(check-sat)

(pop 1)

(push 1)

(check-sat)

