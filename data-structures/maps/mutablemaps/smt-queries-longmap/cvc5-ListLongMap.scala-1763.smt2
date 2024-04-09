; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32232 () Bool)

(assert start!32232)

(declare-fun b!320696 () Bool)

(declare-fun res!174975 () Bool)

(declare-fun e!198900 () Bool)

(assert (=> b!320696 (=> (not res!174975) (not e!198900))))

(declare-datatypes ((array!16418 0))(
  ( (array!16419 (arr!7765 (Array (_ BitVec 32) (_ BitVec 64))) (size!8117 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16418)

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2907 0))(
  ( (MissingZero!2907 (index!13804 (_ BitVec 32))) (Found!2907 (index!13805 (_ BitVec 32))) (Intermediate!2907 (undefined!3719 Bool) (index!13806 (_ BitVec 32)) (x!32041 (_ BitVec 32))) (Undefined!2907) (MissingVacant!2907 (index!13807 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16418 (_ BitVec 32)) SeekEntryResult!2907)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!320696 (= res!174975 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) (Intermediate!2907 false resIndex!58 resX!58)))))

(declare-fun b!320697 () Bool)

(declare-fun res!174979 () Bool)

(assert (=> b!320697 (=> (not res!174979) (not e!198900))))

(declare-fun arrayContainsKey!0 (array!16418 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!320697 (= res!174979 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun res!174980 () Bool)

(assert (=> start!32232 (=> (not res!174980) (not e!198900))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32232 (= res!174980 (validMask!0 mask!3777))))

(assert (=> start!32232 e!198900))

(declare-fun array_inv!5719 (array!16418) Bool)

(assert (=> start!32232 (array_inv!5719 a!3305)))

(assert (=> start!32232 true))

(declare-fun b!320698 () Bool)

(assert (=> b!320698 (= e!198900 false)))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun lt!156092 () SeekEntryResult!2907)

(assert (=> b!320698 (= lt!156092 (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777))))

(declare-fun b!320699 () Bool)

(declare-fun res!174977 () Bool)

(assert (=> b!320699 (=> (not res!174977) (not e!198900))))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!320699 (= res!174977 (and (= (select (arr!7765 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8117 a!3305))))))

(declare-fun b!320700 () Bool)

(declare-fun res!174976 () Bool)

(assert (=> b!320700 (=> (not res!174976) (not e!198900))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16418 (_ BitVec 32)) Bool)

(assert (=> b!320700 (= res!174976 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!320701 () Bool)

(declare-fun res!174981 () Bool)

(assert (=> b!320701 (=> (not res!174981) (not e!198900))))

(assert (=> b!320701 (= res!174981 (and (= (size!8117 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8117 a!3305))))))

(declare-fun b!320702 () Bool)

(declare-fun res!174978 () Bool)

(assert (=> b!320702 (=> (not res!174978) (not e!198900))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16418 (_ BitVec 32)) SeekEntryResult!2907)

(assert (=> b!320702 (= res!174978 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!2907 i!1250)))))

(declare-fun b!320703 () Bool)

(declare-fun res!174974 () Bool)

(assert (=> b!320703 (=> (not res!174974) (not e!198900))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!320703 (= res!174974 (validKeyInArray!0 k!2497))))

(assert (= (and start!32232 res!174980) b!320701))

(assert (= (and b!320701 res!174981) b!320703))

(assert (= (and b!320703 res!174974) b!320697))

(assert (= (and b!320697 res!174979) b!320702))

(assert (= (and b!320702 res!174978) b!320700))

(assert (= (and b!320700 res!174976) b!320696))

(assert (= (and b!320696 res!174975) b!320699))

(assert (= (and b!320699 res!174977) b!320698))

(declare-fun m!328981 () Bool)

(assert (=> b!320697 m!328981))

(declare-fun m!328983 () Bool)

(assert (=> b!320696 m!328983))

(assert (=> b!320696 m!328983))

(declare-fun m!328985 () Bool)

(assert (=> b!320696 m!328985))

(declare-fun m!328987 () Bool)

(assert (=> b!320699 m!328987))

(declare-fun m!328989 () Bool)

(assert (=> b!320700 m!328989))

(declare-fun m!328991 () Bool)

(assert (=> b!320698 m!328991))

(declare-fun m!328993 () Bool)

(assert (=> b!320702 m!328993))

(declare-fun m!328995 () Bool)

(assert (=> b!320703 m!328995))

(declare-fun m!328997 () Bool)

(assert (=> start!32232 m!328997))

(declare-fun m!328999 () Bool)

(assert (=> start!32232 m!328999))

(push 1)

(assert (not b!320702))

(assert (not b!320700))

(assert (not start!32232))

(assert (not b!320698))

(assert (not b!320696))

(assert (not b!320703))

(assert (not b!320697))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

