; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69586 () Bool)

(assert start!69586)

(declare-fun b!810629 () Bool)

(declare-fun e!448705 () Bool)

(declare-fun e!448708 () Bool)

(assert (=> b!810629 (= e!448705 e!448708)))

(declare-fun res!554077 () Bool)

(assert (=> b!810629 (=> (not res!554077) (not e!448708))))

(declare-datatypes ((array!44033 0))(
  ( (array!44034 (arr!21084 (Array (_ BitVec 32) (_ BitVec 64))) (size!21505 (_ BitVec 32))) )
))
(declare-fun lt!363394 () array!44033)

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun lt!363396 () (_ BitVec 64))

(declare-fun x!1077 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8682 0))(
  ( (MissingZero!8682 (index!37095 (_ BitVec 32))) (Found!8682 (index!37096 (_ BitVec 32))) (Intermediate!8682 (undefined!9494 Bool) (index!37097 (_ BitVec 32)) (x!67935 (_ BitVec 32))) (Undefined!8682) (MissingVacant!8682 (index!37098 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!44033 (_ BitVec 32)) SeekEntryResult!8682)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!44033 (_ BitVec 32)) SeekEntryResult!8682)

(assert (=> b!810629 (= res!554077 (= (seekEntryOrOpen!0 lt!363396 lt!363394 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!363396 lt!363394 mask!3266)))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun a!3170 () array!44033)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun k!2044 () (_ BitVec 64))

(assert (=> b!810629 (= lt!363396 (select (store (arr!21084 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!810629 (= lt!363394 (array!44034 (store (arr!21084 a!3170) i!1163 k!2044) (size!21505 a!3170)))))

(declare-fun b!810630 () Bool)

(declare-fun res!554082 () Bool)

(declare-fun e!448706 () Bool)

(assert (=> b!810630 (=> (not res!554082) (not e!448706))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!810630 (= res!554082 (validKeyInArray!0 k!2044))))

(declare-fun b!810631 () Bool)

(declare-fun e!448704 () Bool)

(assert (=> b!810631 (= e!448704 (not true))))

(declare-fun lt!363391 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!810631 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!363391 vacantAfter!23 lt!363396 lt!363394 mask!3266) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!363391 vacantBefore!23 (select (arr!21084 a!3170) j!153) a!3170 mask!3266))))

(declare-datatypes ((Unit!27626 0))(
  ( (Unit!27627) )
))
(declare-fun lt!363397 () Unit!27626)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!44033 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27626)

(assert (=> b!810631 (= lt!363397 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3170 i!1163 k!2044 j!153 lt!363391 (bvadd #b00000000000000000000000000000001 x!1077) vacantBefore!23 vacantAfter!23 mask!3266))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!810631 (= lt!363391 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!810632 () Bool)

(declare-fun res!554076 () Bool)

(assert (=> b!810632 (=> (not res!554076) (not e!448706))))

(declare-fun arrayContainsKey!0 (array!44033 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!810632 (= res!554076 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!810633 () Bool)

(assert (=> b!810633 (= e!448708 e!448704)))

(declare-fun res!554086 () Bool)

(assert (=> b!810633 (=> (not res!554086) (not e!448704))))

(declare-fun lt!363395 () SeekEntryResult!8682)

(declare-fun lt!363392 () SeekEntryResult!8682)

(assert (=> b!810633 (= res!554086 (and (= lt!363395 lt!363392) (= lt!363392 (Found!8682 j!153)) (not (= (select (arr!21084 a!3170) index!1236) (select (arr!21084 a!3170) j!153)))))))

(assert (=> b!810633 (= lt!363392 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21084 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!810633 (= lt!363395 (seekEntryOrOpen!0 (select (arr!21084 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!810634 () Bool)

(assert (=> b!810634 (= e!448706 e!448705)))

(declare-fun res!554078 () Bool)

(assert (=> b!810634 (=> (not res!554078) (not e!448705))))

(declare-fun lt!363393 () SeekEntryResult!8682)

(assert (=> b!810634 (= res!554078 (or (= lt!363393 (MissingZero!8682 i!1163)) (= lt!363393 (MissingVacant!8682 i!1163))))))

(assert (=> b!810634 (= lt!363393 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!810635 () Bool)

(declare-fun res!554081 () Bool)

(assert (=> b!810635 (=> (not res!554081) (not e!448705))))

(assert (=> b!810635 (= res!554081 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21505 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!21084 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21505 a!3170)) (= (select (arr!21084 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!810636 () Bool)

(declare-fun res!554083 () Bool)

(assert (=> b!810636 (=> (not res!554083) (not e!448706))))

(assert (=> b!810636 (= res!554083 (and (= (size!21505 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21505 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21505 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!810637 () Bool)

(declare-fun res!554079 () Bool)

(assert (=> b!810637 (=> (not res!554079) (not e!448705))))

(declare-datatypes ((List!15100 0))(
  ( (Nil!15097) (Cons!15096 (h!16225 (_ BitVec 64)) (t!21423 List!15100)) )
))
(declare-fun arrayNoDuplicates!0 (array!44033 (_ BitVec 32) List!15100) Bool)

(assert (=> b!810637 (= res!554079 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15097))))

(declare-fun res!554085 () Bool)

(assert (=> start!69586 (=> (not res!554085) (not e!448706))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69586 (= res!554085 (validMask!0 mask!3266))))

(assert (=> start!69586 e!448706))

(assert (=> start!69586 true))

(declare-fun array_inv!16858 (array!44033) Bool)

(assert (=> start!69586 (array_inv!16858 a!3170)))

(declare-fun b!810638 () Bool)

(declare-fun res!554084 () Bool)

(assert (=> b!810638 (=> (not res!554084) (not e!448706))))

(assert (=> b!810638 (= res!554084 (validKeyInArray!0 (select (arr!21084 a!3170) j!153)))))

(declare-fun b!810639 () Bool)

(declare-fun res!554080 () Bool)

(assert (=> b!810639 (=> (not res!554080) (not e!448705))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44033 (_ BitVec 32)) Bool)

(assert (=> b!810639 (= res!554080 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(assert (= (and start!69586 res!554085) b!810636))

(assert (= (and b!810636 res!554083) b!810638))

(assert (= (and b!810638 res!554084) b!810630))

(assert (= (and b!810630 res!554082) b!810632))

(assert (= (and b!810632 res!554076) b!810634))

(assert (= (and b!810634 res!554078) b!810639))

(assert (= (and b!810639 res!554080) b!810637))

(assert (= (and b!810637 res!554079) b!810635))

(assert (= (and b!810635 res!554081) b!810629))

(assert (= (and b!810629 res!554077) b!810633))

(assert (= (and b!810633 res!554086) b!810631))

(declare-fun m!752983 () Bool)

(assert (=> b!810639 m!752983))

(declare-fun m!752985 () Bool)

(assert (=> b!810632 m!752985))

(declare-fun m!752987 () Bool)

(assert (=> start!69586 m!752987))

(declare-fun m!752989 () Bool)

(assert (=> start!69586 m!752989))

(declare-fun m!752991 () Bool)

(assert (=> b!810629 m!752991))

(declare-fun m!752993 () Bool)

(assert (=> b!810629 m!752993))

(declare-fun m!752995 () Bool)

(assert (=> b!810629 m!752995))

(declare-fun m!752997 () Bool)

(assert (=> b!810629 m!752997))

(declare-fun m!752999 () Bool)

(assert (=> b!810631 m!752999))

(declare-fun m!753001 () Bool)

(assert (=> b!810631 m!753001))

(declare-fun m!753003 () Bool)

(assert (=> b!810631 m!753003))

(assert (=> b!810631 m!752999))

(declare-fun m!753005 () Bool)

(assert (=> b!810631 m!753005))

(declare-fun m!753007 () Bool)

(assert (=> b!810631 m!753007))

(declare-fun m!753009 () Bool)

(assert (=> b!810633 m!753009))

(assert (=> b!810633 m!752999))

(assert (=> b!810633 m!752999))

(declare-fun m!753011 () Bool)

(assert (=> b!810633 m!753011))

(assert (=> b!810633 m!752999))

(declare-fun m!753013 () Bool)

(assert (=> b!810633 m!753013))

(declare-fun m!753015 () Bool)

(assert (=> b!810635 m!753015))

(declare-fun m!753017 () Bool)

(assert (=> b!810635 m!753017))

(assert (=> b!810638 m!752999))

(assert (=> b!810638 m!752999))

(declare-fun m!753019 () Bool)

(assert (=> b!810638 m!753019))

(declare-fun m!753021 () Bool)

(assert (=> b!810637 m!753021))

(declare-fun m!753023 () Bool)

(assert (=> b!810630 m!753023))

(declare-fun m!753025 () Bool)

(assert (=> b!810634 m!753025))

(push 1)

