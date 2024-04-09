; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46726 () Bool)

(assert start!46726)

(declare-fun b!515482 () Bool)

(declare-fun res!315206 () Bool)

(declare-fun e!300950 () Bool)

(assert (=> b!515482 (=> (not res!315206) (not e!300950))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!515482 (= res!315206 (validKeyInArray!0 k!2280))))

(declare-fun b!515483 () Bool)

(declare-fun e!300951 () Bool)

(declare-fun e!300948 () Bool)

(assert (=> b!515483 (= e!300951 (not e!300948))))

(declare-fun res!315201 () Bool)

(assert (=> b!515483 (=> res!315201 e!300948)))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4338 0))(
  ( (MissingZero!4338 (index!19540 (_ BitVec 32))) (Found!4338 (index!19541 (_ BitVec 32))) (Intermediate!4338 (undefined!5150 Bool) (index!19542 (_ BitVec 32)) (x!48536 (_ BitVec 32))) (Undefined!4338) (MissingVacant!4338 (index!19543 (_ BitVec 32))) )
))
(declare-fun lt!236034 () SeekEntryResult!4338)

(declare-datatypes ((array!32998 0))(
  ( (array!32999 (arr!15864 (Array (_ BitVec 32) (_ BitVec 64))) (size!16228 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32998)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!236032 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32998 (_ BitVec 32)) SeekEntryResult!4338)

(assert (=> b!515483 (= res!315201 (= lt!236034 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!236032 (select (store (arr!15864 a!3235) i!1204 k!2280) j!176) (array!32999 (store (arr!15864 a!3235) i!1204 k!2280) (size!16228 a!3235)) mask!3524)))))

(declare-fun lt!236033 () (_ BitVec 32))

(assert (=> b!515483 (= lt!236034 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!236033 (select (arr!15864 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!515483 (= lt!236032 (toIndex!0 (select (store (arr!15864 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!515483 (= lt!236033 (toIndex!0 (select (arr!15864 a!3235) j!176) mask!3524))))

(declare-fun e!300952 () Bool)

(assert (=> b!515483 e!300952))

(declare-fun res!315199 () Bool)

(assert (=> b!515483 (=> (not res!315199) (not e!300952))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32998 (_ BitVec 32)) Bool)

(assert (=> b!515483 (= res!315199 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15926 0))(
  ( (Unit!15927) )
))
(declare-fun lt!236036 () Unit!15926)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32998 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15926)

(assert (=> b!515483 (= lt!236036 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!515484 () Bool)

(declare-fun res!315205 () Bool)

(assert (=> b!515484 (=> (not res!315205) (not e!300950))))

(assert (=> b!515484 (= res!315205 (and (= (size!16228 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16228 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16228 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!515485 () Bool)

(declare-fun res!315202 () Bool)

(assert (=> b!515485 (=> (not res!315202) (not e!300951))))

(declare-datatypes ((List!10075 0))(
  ( (Nil!10072) (Cons!10071 (h!10969 (_ BitVec 64)) (t!16311 List!10075)) )
))
(declare-fun arrayNoDuplicates!0 (array!32998 (_ BitVec 32) List!10075) Bool)

(assert (=> b!515485 (= res!315202 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10072))))

(declare-fun b!515487 () Bool)

(declare-fun res!315196 () Bool)

(assert (=> b!515487 (=> (not res!315196) (not e!300950))))

(assert (=> b!515487 (= res!315196 (validKeyInArray!0 (select (arr!15864 a!3235) j!176)))))

(declare-fun b!515488 () Bool)

(declare-fun res!315204 () Bool)

(assert (=> b!515488 (=> (not res!315204) (not e!300951))))

(assert (=> b!515488 (= res!315204 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!515489 () Bool)

(declare-fun res!315200 () Bool)

(assert (=> b!515489 (=> res!315200 e!300948)))

(assert (=> b!515489 (= res!315200 (or (undefined!5150 lt!236034) (not (is-Intermediate!4338 lt!236034))))))

(declare-fun b!515490 () Bool)

(declare-fun res!315203 () Bool)

(assert (=> b!515490 (=> (not res!315203) (not e!300950))))

(declare-fun arrayContainsKey!0 (array!32998 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!515490 (= res!315203 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!515491 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32998 (_ BitVec 32)) SeekEntryResult!4338)

(assert (=> b!515491 (= e!300952 (= (seekEntryOrOpen!0 (select (arr!15864 a!3235) j!176) a!3235 mask!3524) (Found!4338 j!176)))))

(declare-fun b!515492 () Bool)

(assert (=> b!515492 (= e!300948 true)))

(assert (=> b!515492 (and (bvslt (x!48536 lt!236034) #b01111111111111111111111111111110) (or (= (select (arr!15864 a!3235) (index!19542 lt!236034)) (select (arr!15864 a!3235) j!176)) (= (select (arr!15864 a!3235) (index!19542 lt!236034)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15864 a!3235) (index!19542 lt!236034)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!515486 () Bool)

(assert (=> b!515486 (= e!300950 e!300951)))

(declare-fun res!315197 () Bool)

(assert (=> b!515486 (=> (not res!315197) (not e!300951))))

(declare-fun lt!236035 () SeekEntryResult!4338)

(assert (=> b!515486 (= res!315197 (or (= lt!236035 (MissingZero!4338 i!1204)) (= lt!236035 (MissingVacant!4338 i!1204))))))

(assert (=> b!515486 (= lt!236035 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun res!315198 () Bool)

(assert (=> start!46726 (=> (not res!315198) (not e!300950))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46726 (= res!315198 (validMask!0 mask!3524))))

(assert (=> start!46726 e!300950))

(assert (=> start!46726 true))

(declare-fun array_inv!11638 (array!32998) Bool)

(assert (=> start!46726 (array_inv!11638 a!3235)))

(assert (= (and start!46726 res!315198) b!515484))

(assert (= (and b!515484 res!315205) b!515487))

(assert (= (and b!515487 res!315196) b!515482))

(assert (= (and b!515482 res!315206) b!515490))

(assert (= (and b!515490 res!315203) b!515486))

(assert (= (and b!515486 res!315197) b!515488))

(assert (= (and b!515488 res!315204) b!515485))

(assert (= (and b!515485 res!315202) b!515483))

(assert (= (and b!515483 res!315199) b!515491))

(assert (= (and b!515483 (not res!315201)) b!515489))

(assert (= (and b!515489 (not res!315200)) b!515492))

(declare-fun m!496891 () Bool)

(assert (=> b!515488 m!496891))

(declare-fun m!496893 () Bool)

(assert (=> b!515485 m!496893))

(declare-fun m!496895 () Bool)

(assert (=> b!515492 m!496895))

(declare-fun m!496897 () Bool)

(assert (=> b!515492 m!496897))

(declare-fun m!496899 () Bool)

(assert (=> b!515486 m!496899))

(declare-fun m!496901 () Bool)

(assert (=> start!46726 m!496901))

(declare-fun m!496903 () Bool)

(assert (=> start!46726 m!496903))

(declare-fun m!496905 () Bool)

(assert (=> b!515490 m!496905))

(assert (=> b!515487 m!496897))

(assert (=> b!515487 m!496897))

(declare-fun m!496907 () Bool)

(assert (=> b!515487 m!496907))

(declare-fun m!496909 () Bool)

(assert (=> b!515483 m!496909))

(declare-fun m!496911 () Bool)

(assert (=> b!515483 m!496911))

(declare-fun m!496913 () Bool)

(assert (=> b!515483 m!496913))

(assert (=> b!515483 m!496897))

(declare-fun m!496915 () Bool)

(assert (=> b!515483 m!496915))

(assert (=> b!515483 m!496897))

(declare-fun m!496917 () Bool)

(assert (=> b!515483 m!496917))

(assert (=> b!515483 m!496897))

(declare-fun m!496919 () Bool)

(assert (=> b!515483 m!496919))

(assert (=> b!515483 m!496913))

(declare-fun m!496921 () Bool)

(assert (=> b!515483 m!496921))

(assert (=> b!515483 m!496913))

(declare-fun m!496923 () Bool)

(assert (=> b!515483 m!496923))

(declare-fun m!496925 () Bool)

(assert (=> b!515482 m!496925))

(assert (=> b!515491 m!496897))

(assert (=> b!515491 m!496897))

(declare-fun m!496927 () Bool)

(assert (=> b!515491 m!496927))

(push 1)

