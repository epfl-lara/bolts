; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49312 () Bool)

(assert start!49312)

(declare-fun b!542631 () Bool)

(declare-fun e!313988 () Bool)

(declare-fun e!313987 () Bool)

(assert (=> b!542631 (= e!313988 e!313987)))

(declare-fun res!337337 () Bool)

(assert (=> b!542631 (=> (not res!337337) (not e!313987))))

(declare-datatypes ((SeekEntryResult!4932 0))(
  ( (MissingZero!4932 (index!21952 (_ BitVec 32))) (Found!4932 (index!21953 (_ BitVec 32))) (Intermediate!4932 (undefined!5744 Bool) (index!21954 (_ BitVec 32)) (x!50894 (_ BitVec 32))) (Undefined!4932) (MissingVacant!4932 (index!21955 (_ BitVec 32))) )
))
(declare-fun lt!247980 () SeekEntryResult!4932)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!542631 (= res!337337 (or (= lt!247980 (MissingZero!4932 i!1153)) (= lt!247980 (MissingVacant!4932 i!1153))))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun k!1998 () (_ BitVec 64))

(declare-datatypes ((array!34276 0))(
  ( (array!34277 (arr!16467 (Array (_ BitVec 32) (_ BitVec 64))) (size!16831 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34276)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34276 (_ BitVec 32)) SeekEntryResult!4932)

(assert (=> b!542631 (= lt!247980 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!542632 () Bool)

(declare-fun e!313989 () Bool)

(assert (=> b!542632 (= e!313989 false)))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun lt!247982 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!542632 (= lt!247982 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!542633 () Bool)

(declare-fun res!337338 () Bool)

(assert (=> b!542633 (=> (not res!337338) (not e!313988))))

(declare-fun arrayContainsKey!0 (array!34276 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!542633 (= res!337338 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!542634 () Bool)

(declare-fun res!337333 () Bool)

(assert (=> b!542634 (=> (not res!337333) (not e!313987))))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!542634 (= res!337333 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16831 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16831 a!3154)) (= (select (arr!16467 a!3154) resIndex!32) (select (arr!16467 a!3154) j!147))))))

(declare-fun b!542635 () Bool)

(declare-fun res!337334 () Bool)

(assert (=> b!542635 (=> (not res!337334) (not e!313989))))

(assert (=> b!542635 (= res!337334 (and (not (= (select (arr!16467 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16467 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16467 a!3154) index!1177) (select (arr!16467 a!3154) j!147)))))))

(declare-fun b!542636 () Bool)

(assert (=> b!542636 (= e!313987 e!313989)))

(declare-fun res!337342 () Bool)

(assert (=> b!542636 (=> (not res!337342) (not e!313989))))

(declare-fun lt!247981 () SeekEntryResult!4932)

(assert (=> b!542636 (= res!337342 (= lt!247981 (Intermediate!4932 false resIndex!32 resX!32)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34276 (_ BitVec 32)) SeekEntryResult!4932)

(assert (=> b!542636 (= lt!247981 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16467 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!542637 () Bool)

(declare-fun res!337332 () Bool)

(assert (=> b!542637 (=> (not res!337332) (not e!313989))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!542637 (= res!337332 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16467 a!3154) j!147) mask!3216) (select (arr!16467 a!3154) j!147) a!3154 mask!3216) lt!247981))))

(declare-fun b!542638 () Bool)

(declare-fun res!337336 () Bool)

(assert (=> b!542638 (=> (not res!337336) (not e!313987))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34276 (_ BitVec 32)) Bool)

(assert (=> b!542638 (= res!337336 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun res!337341 () Bool)

(assert (=> start!49312 (=> (not res!337341) (not e!313988))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49312 (= res!337341 (validMask!0 mask!3216))))

(assert (=> start!49312 e!313988))

(assert (=> start!49312 true))

(declare-fun array_inv!12241 (array!34276) Bool)

(assert (=> start!49312 (array_inv!12241 a!3154)))

(declare-fun b!542639 () Bool)

(declare-fun res!337339 () Bool)

(assert (=> b!542639 (=> (not res!337339) (not e!313988))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!542639 (= res!337339 (validKeyInArray!0 (select (arr!16467 a!3154) j!147)))))

(declare-fun b!542640 () Bool)

(declare-fun res!337340 () Bool)

(assert (=> b!542640 (=> (not res!337340) (not e!313988))))

(assert (=> b!542640 (= res!337340 (validKeyInArray!0 k!1998))))

(declare-fun b!542641 () Bool)

(declare-fun res!337335 () Bool)

(assert (=> b!542641 (=> (not res!337335) (not e!313987))))

(declare-datatypes ((List!10639 0))(
  ( (Nil!10636) (Cons!10635 (h!11590 (_ BitVec 64)) (t!16875 List!10639)) )
))
(declare-fun arrayNoDuplicates!0 (array!34276 (_ BitVec 32) List!10639) Bool)

(assert (=> b!542641 (= res!337335 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10636))))

(declare-fun b!542642 () Bool)

(declare-fun res!337343 () Bool)

(assert (=> b!542642 (=> (not res!337343) (not e!313988))))

(assert (=> b!542642 (= res!337343 (and (= (size!16831 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16831 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16831 a!3154)) (not (= i!1153 j!147))))))

(assert (= (and start!49312 res!337341) b!542642))

(assert (= (and b!542642 res!337343) b!542639))

(assert (= (and b!542639 res!337339) b!542640))

(assert (= (and b!542640 res!337340) b!542633))

(assert (= (and b!542633 res!337338) b!542631))

(assert (= (and b!542631 res!337337) b!542638))

(assert (= (and b!542638 res!337336) b!542641))

(assert (= (and b!542641 res!337335) b!542634))

(assert (= (and b!542634 res!337333) b!542636))

(assert (= (and b!542636 res!337342) b!542637))

(assert (= (and b!542637 res!337332) b!542635))

(assert (= (and b!542635 res!337334) b!542632))

(declare-fun m!520861 () Bool)

(assert (=> start!49312 m!520861))

(declare-fun m!520863 () Bool)

(assert (=> start!49312 m!520863))

(declare-fun m!520865 () Bool)

(assert (=> b!542631 m!520865))

(declare-fun m!520867 () Bool)

(assert (=> b!542635 m!520867))

(declare-fun m!520869 () Bool)

(assert (=> b!542635 m!520869))

(assert (=> b!542639 m!520869))

(assert (=> b!542639 m!520869))

(declare-fun m!520871 () Bool)

(assert (=> b!542639 m!520871))

(declare-fun m!520873 () Bool)

(assert (=> b!542633 m!520873))

(assert (=> b!542636 m!520869))

(assert (=> b!542636 m!520869))

(declare-fun m!520875 () Bool)

(assert (=> b!542636 m!520875))

(declare-fun m!520877 () Bool)

(assert (=> b!542641 m!520877))

(assert (=> b!542637 m!520869))

(assert (=> b!542637 m!520869))

(declare-fun m!520879 () Bool)

(assert (=> b!542637 m!520879))

(assert (=> b!542637 m!520879))

(assert (=> b!542637 m!520869))

(declare-fun m!520881 () Bool)

(assert (=> b!542637 m!520881))

(declare-fun m!520883 () Bool)

(assert (=> b!542634 m!520883))

(assert (=> b!542634 m!520869))

(declare-fun m!520885 () Bool)

(assert (=> b!542638 m!520885))

(declare-fun m!520887 () Bool)

(assert (=> b!542632 m!520887))

(declare-fun m!520889 () Bool)

(assert (=> b!542640 m!520889))

(push 1)

