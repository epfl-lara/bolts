; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86792 () Bool)

(assert start!86792)

(declare-fun b!1005688 () Bool)

(declare-fun e!566251 () Bool)

(declare-fun e!566252 () Bool)

(assert (=> b!1005688 (= e!566251 e!566252)))

(declare-fun res!674939 () Bool)

(assert (=> b!1005688 (=> (not res!674939) (not e!566252))))

(declare-datatypes ((SeekEntryResult!9472 0))(
  ( (MissingZero!9472 (index!40258 (_ BitVec 32))) (Found!9472 (index!40259 (_ BitVec 32))) (Intermediate!9472 (undefined!10284 Bool) (index!40260 (_ BitVec 32)) (x!87689 (_ BitVec 32))) (Undefined!9472) (MissingVacant!9472 (index!40261 (_ BitVec 32))) )
))
(declare-fun lt!444579 () SeekEntryResult!9472)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1005688 (= res!674939 (or (= lt!444579 (MissingVacant!9472 i!1194)) (= lt!444579 (MissingZero!9472 i!1194))))))

(declare-datatypes ((array!63443 0))(
  ( (array!63444 (arr!30540 (Array (_ BitVec 32) (_ BitVec 64))) (size!31043 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63443)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63443 (_ BitVec 32)) SeekEntryResult!9472)

(assert (=> b!1005688 (= lt!444579 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1005689 () Bool)

(declare-fun res!674935 () Bool)

(assert (=> b!1005689 (=> (not res!674935) (not e!566252))))

(declare-datatypes ((List!21342 0))(
  ( (Nil!21339) (Cons!21338 (h!22521 (_ BitVec 64)) (t!30351 List!21342)) )
))
(declare-fun arrayNoDuplicates!0 (array!63443 (_ BitVec 32) List!21342) Bool)

(assert (=> b!1005689 (= res!674935 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21339))))

(declare-fun b!1005690 () Bool)

(declare-fun res!674937 () Bool)

(assert (=> b!1005690 (=> (not res!674937) (not e!566252))))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1005690 (= res!674937 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31043 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31043 a!3219))))))

(declare-fun b!1005691 () Bool)

(declare-fun res!674940 () Bool)

(assert (=> b!1005691 (=> (not res!674940) (not e!566252))))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63443 (_ BitVec 32)) SeekEntryResult!9472)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1005691 (= res!674940 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30540 a!3219) j!170) mask!3464) (select (arr!30540 a!3219) j!170) a!3219 mask!3464) (Intermediate!9472 false resIndex!38 resX!38)))))

(declare-fun b!1005693 () Bool)

(declare-fun res!674936 () Bool)

(assert (=> b!1005693 (=> (not res!674936) (not e!566251))))

(assert (=> b!1005693 (= res!674936 (and (= (size!31043 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31043 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31043 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1005694 () Bool)

(declare-fun res!674938 () Bool)

(assert (=> b!1005694 (=> (not res!674938) (not e!566252))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63443 (_ BitVec 32)) Bool)

(assert (=> b!1005694 (= res!674938 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1005695 () Bool)

(declare-fun res!674932 () Bool)

(assert (=> b!1005695 (=> (not res!674932) (not e!566251))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1005695 (= res!674932 (validKeyInArray!0 k!2224))))

(declare-fun b!1005696 () Bool)

(assert (=> b!1005696 (= e!566252 false)))

(declare-fun lt!444578 () SeekEntryResult!9472)

(assert (=> b!1005696 (= lt!444578 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30540 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1005697 () Bool)

(declare-fun res!674933 () Bool)

(assert (=> b!1005697 (=> (not res!674933) (not e!566251))))

(declare-fun arrayContainsKey!0 (array!63443 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1005697 (= res!674933 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1005692 () Bool)

(declare-fun res!674941 () Bool)

(assert (=> b!1005692 (=> (not res!674941) (not e!566251))))

(assert (=> b!1005692 (= res!674941 (validKeyInArray!0 (select (arr!30540 a!3219) j!170)))))

(declare-fun res!674934 () Bool)

(assert (=> start!86792 (=> (not res!674934) (not e!566251))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86792 (= res!674934 (validMask!0 mask!3464))))

(assert (=> start!86792 e!566251))

(declare-fun array_inv!23530 (array!63443) Bool)

(assert (=> start!86792 (array_inv!23530 a!3219)))

(assert (=> start!86792 true))

(assert (= (and start!86792 res!674934) b!1005693))

(assert (= (and b!1005693 res!674936) b!1005692))

(assert (= (and b!1005692 res!674941) b!1005695))

(assert (= (and b!1005695 res!674932) b!1005697))

(assert (= (and b!1005697 res!674933) b!1005688))

(assert (= (and b!1005688 res!674939) b!1005694))

(assert (= (and b!1005694 res!674938) b!1005689))

(assert (= (and b!1005689 res!674935) b!1005690))

(assert (= (and b!1005690 res!674937) b!1005691))

(assert (= (and b!1005691 res!674940) b!1005696))

(declare-fun m!930969 () Bool)

(assert (=> b!1005696 m!930969))

(assert (=> b!1005696 m!930969))

(declare-fun m!930971 () Bool)

(assert (=> b!1005696 m!930971))

(declare-fun m!930973 () Bool)

(assert (=> b!1005694 m!930973))

(declare-fun m!930975 () Bool)

(assert (=> b!1005689 m!930975))

(declare-fun m!930977 () Bool)

(assert (=> start!86792 m!930977))

(declare-fun m!930979 () Bool)

(assert (=> start!86792 m!930979))

(assert (=> b!1005692 m!930969))

(assert (=> b!1005692 m!930969))

(declare-fun m!930981 () Bool)

(assert (=> b!1005692 m!930981))

(assert (=> b!1005691 m!930969))

(assert (=> b!1005691 m!930969))

(declare-fun m!930983 () Bool)

(assert (=> b!1005691 m!930983))

(assert (=> b!1005691 m!930983))

(assert (=> b!1005691 m!930969))

(declare-fun m!930985 () Bool)

(assert (=> b!1005691 m!930985))

(declare-fun m!930987 () Bool)

(assert (=> b!1005688 m!930987))

(declare-fun m!930989 () Bool)

(assert (=> b!1005695 m!930989))

(declare-fun m!930991 () Bool)

(assert (=> b!1005697 m!930991))

(push 1)

(assert (not b!1005691))

(assert (not b!1005695))

(assert (not b!1005697))

