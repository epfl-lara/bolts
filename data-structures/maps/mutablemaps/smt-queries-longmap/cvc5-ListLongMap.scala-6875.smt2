; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86536 () Bool)

(assert start!86536)

(declare-fun b!1001923 () Bool)

(declare-fun res!671568 () Bool)

(declare-fun e!564533 () Bool)

(assert (=> b!1001923 (=> (not res!671568) (not e!564533))))

(declare-datatypes ((array!63289 0))(
  ( (array!63290 (arr!30466 (Array (_ BitVec 32) (_ BitVec 64))) (size!30969 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63289)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63289 (_ BitVec 32)) Bool)

(assert (=> b!1001923 (= res!671568 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1001924 () Bool)

(declare-fun e!564536 () Bool)

(declare-fun e!564534 () Bool)

(assert (=> b!1001924 (= e!564536 e!564534)))

(declare-fun res!671559 () Bool)

(assert (=> b!1001924 (=> (not res!671559) (not e!564534))))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun lt!442932 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1001924 (= res!671559 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1245) resX!38) (bvsge (bvadd #b00000000000000000000000000000001 x!1245) #b00000000000000000000000000000000) (bvsge lt!442932 #b00000000000000000000000000000000) (bvslt lt!442932 (size!30969 a!3219))))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1001924 (= lt!442932 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1001925 () Bool)

(declare-fun res!671566 () Bool)

(declare-fun e!564532 () Bool)

(assert (=> b!1001925 (=> (not res!671566) (not e!564532))))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1001925 (= res!671566 (and (= (size!30969 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30969 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30969 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1001926 () Bool)

(declare-fun res!671567 () Bool)

(assert (=> b!1001926 (=> (not res!671567) (not e!564534))))

(declare-datatypes ((SeekEntryResult!9398 0))(
  ( (MissingZero!9398 (index!39962 (_ BitVec 32))) (Found!9398 (index!39963 (_ BitVec 32))) (Intermediate!9398 (undefined!10210 Bool) (index!39964 (_ BitVec 32)) (x!87411 (_ BitVec 32))) (Undefined!9398) (MissingVacant!9398 (index!39965 (_ BitVec 32))) )
))
(declare-fun lt!442934 () SeekEntryResult!9398)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63289 (_ BitVec 32)) SeekEntryResult!9398)

(assert (=> b!1001926 (= res!671567 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!442932 (select (arr!30466 a!3219) j!170) a!3219 mask!3464) lt!442934))))

(declare-fun res!671557 () Bool)

(assert (=> start!86536 (=> (not res!671557) (not e!564532))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86536 (= res!671557 (validMask!0 mask!3464))))

(assert (=> start!86536 e!564532))

(declare-fun array_inv!23456 (array!63289) Bool)

(assert (=> start!86536 (array_inv!23456 a!3219)))

(assert (=> start!86536 true))

(declare-fun b!1001927 () Bool)

(declare-fun res!671570 () Bool)

(assert (=> b!1001927 (=> (not res!671570) (not e!564536))))

(declare-fun lt!442929 () (_ BitVec 64))

(declare-fun lt!442935 () array!63289)

(declare-fun lt!442931 () SeekEntryResult!9398)

(assert (=> b!1001927 (= res!671570 (not (= lt!442931 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!442929 lt!442935 mask!3464))))))

(declare-fun b!1001928 () Bool)

(declare-fun res!671569 () Bool)

(assert (=> b!1001928 (=> (not res!671569) (not e!564532))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!63289 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1001928 (= res!671569 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1001929 () Bool)

(declare-fun e!564530 () Bool)

(declare-fun e!564531 () Bool)

(assert (=> b!1001929 (= e!564530 e!564531)))

(declare-fun res!671560 () Bool)

(assert (=> b!1001929 (=> (not res!671560) (not e!564531))))

(assert (=> b!1001929 (= res!671560 (= lt!442931 lt!442934))))

(assert (=> b!1001929 (= lt!442931 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30466 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1001930 () Bool)

(assert (=> b!1001930 (= e!564533 e!564530)))

(declare-fun res!671565 () Bool)

(assert (=> b!1001930 (=> (not res!671565) (not e!564530))))

(declare-fun lt!442930 () SeekEntryResult!9398)

(assert (=> b!1001930 (= res!671565 (= lt!442930 lt!442934))))

(declare-fun resIndex!38 () (_ BitVec 32))

(assert (=> b!1001930 (= lt!442934 (Intermediate!9398 false resIndex!38 resX!38))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1001930 (= lt!442930 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30466 a!3219) j!170) mask!3464) (select (arr!30466 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1001931 () Bool)

(declare-fun res!671564 () Bool)

(assert (=> b!1001931 (=> (not res!671564) (not e!564532))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1001931 (= res!671564 (validKeyInArray!0 k!2224))))

(declare-fun b!1001932 () Bool)

(assert (=> b!1001932 (= e!564534 false)))

(declare-fun lt!442933 () SeekEntryResult!9398)

(assert (=> b!1001932 (= lt!442933 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!442932 lt!442929 lt!442935 mask!3464))))

(declare-fun b!1001933 () Bool)

(declare-fun res!671561 () Bool)

(assert (=> b!1001933 (=> (not res!671561) (not e!564532))))

(assert (=> b!1001933 (= res!671561 (validKeyInArray!0 (select (arr!30466 a!3219) j!170)))))

(declare-fun b!1001934 () Bool)

(declare-fun res!671562 () Bool)

(assert (=> b!1001934 (=> (not res!671562) (not e!564536))))

(assert (=> b!1001934 (= res!671562 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1001935 () Bool)

(assert (=> b!1001935 (= e!564532 e!564533)))

(declare-fun res!671563 () Bool)

(assert (=> b!1001935 (=> (not res!671563) (not e!564533))))

(declare-fun lt!442928 () SeekEntryResult!9398)

(assert (=> b!1001935 (= res!671563 (or (= lt!442928 (MissingVacant!9398 i!1194)) (= lt!442928 (MissingZero!9398 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63289 (_ BitVec 32)) SeekEntryResult!9398)

(assert (=> b!1001935 (= lt!442928 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1001936 () Bool)

(declare-fun res!671571 () Bool)

(assert (=> b!1001936 (=> (not res!671571) (not e!564533))))

(assert (=> b!1001936 (= res!671571 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30969 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30969 a!3219))))))

(declare-fun b!1001937 () Bool)

(declare-fun res!671558 () Bool)

(assert (=> b!1001937 (=> (not res!671558) (not e!564533))))

(declare-datatypes ((List!21268 0))(
  ( (Nil!21265) (Cons!21264 (h!22441 (_ BitVec 64)) (t!30277 List!21268)) )
))
(declare-fun arrayNoDuplicates!0 (array!63289 (_ BitVec 32) List!21268) Bool)

(assert (=> b!1001937 (= res!671558 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21265))))

(declare-fun b!1001938 () Bool)

(assert (=> b!1001938 (= e!564531 e!564536)))

(declare-fun res!671572 () Bool)

(assert (=> b!1001938 (=> (not res!671572) (not e!564536))))

(assert (=> b!1001938 (= res!671572 (not (= lt!442930 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!442929 mask!3464) lt!442929 lt!442935 mask!3464))))))

(assert (=> b!1001938 (= lt!442929 (select (store (arr!30466 a!3219) i!1194 k!2224) j!170))))

(assert (=> b!1001938 (= lt!442935 (array!63290 (store (arr!30466 a!3219) i!1194 k!2224) (size!30969 a!3219)))))

(assert (= (and start!86536 res!671557) b!1001925))

(assert (= (and b!1001925 res!671566) b!1001933))

(assert (= (and b!1001933 res!671561) b!1001931))

(assert (= (and b!1001931 res!671564) b!1001928))

(assert (= (and b!1001928 res!671569) b!1001935))

(assert (= (and b!1001935 res!671563) b!1001923))

(assert (= (and b!1001923 res!671568) b!1001937))

(assert (= (and b!1001937 res!671558) b!1001936))

(assert (= (and b!1001936 res!671571) b!1001930))

(assert (= (and b!1001930 res!671565) b!1001929))

(assert (= (and b!1001929 res!671560) b!1001938))

(assert (= (and b!1001938 res!671572) b!1001927))

(assert (= (and b!1001927 res!671570) b!1001934))

(assert (= (and b!1001934 res!671562) b!1001924))

(assert (= (and b!1001924 res!671559) b!1001926))

(assert (= (and b!1001926 res!671567) b!1001932))

(declare-fun m!927981 () Bool)

(assert (=> b!1001927 m!927981))

(declare-fun m!927983 () Bool)

(assert (=> b!1001938 m!927983))

(assert (=> b!1001938 m!927983))

(declare-fun m!927985 () Bool)

(assert (=> b!1001938 m!927985))

(declare-fun m!927987 () Bool)

(assert (=> b!1001938 m!927987))

(declare-fun m!927989 () Bool)

(assert (=> b!1001938 m!927989))

(declare-fun m!927991 () Bool)

(assert (=> b!1001935 m!927991))

(declare-fun m!927993 () Bool)

(assert (=> b!1001928 m!927993))

(declare-fun m!927995 () Bool)

(assert (=> b!1001931 m!927995))

(declare-fun m!927997 () Bool)

(assert (=> b!1001937 m!927997))

(declare-fun m!927999 () Bool)

(assert (=> b!1001932 m!927999))

(declare-fun m!928001 () Bool)

(assert (=> b!1001929 m!928001))

(assert (=> b!1001929 m!928001))

(declare-fun m!928003 () Bool)

(assert (=> b!1001929 m!928003))

(declare-fun m!928005 () Bool)

(assert (=> b!1001923 m!928005))

(assert (=> b!1001926 m!928001))

(assert (=> b!1001926 m!928001))

(declare-fun m!928007 () Bool)

(assert (=> b!1001926 m!928007))

(assert (=> b!1001930 m!928001))

(assert (=> b!1001930 m!928001))

(declare-fun m!928009 () Bool)

(assert (=> b!1001930 m!928009))

(assert (=> b!1001930 m!928009))

(assert (=> b!1001930 m!928001))

(declare-fun m!928011 () Bool)

(assert (=> b!1001930 m!928011))

(declare-fun m!928013 () Bool)

(assert (=> b!1001924 m!928013))

(assert (=> b!1001933 m!928001))

(assert (=> b!1001933 m!928001))

(declare-fun m!928015 () Bool)

(assert (=> b!1001933 m!928015))

(declare-fun m!928017 () Bool)

(assert (=> start!86536 m!928017))

(declare-fun m!928019 () Bool)

(assert (=> start!86536 m!928019))

(push 1)

