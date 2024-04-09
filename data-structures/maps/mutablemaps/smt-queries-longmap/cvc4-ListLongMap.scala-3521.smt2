; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48716 () Bool)

(assert start!48716)

(declare-fun b!535027 () Bool)

(declare-fun e!310858 () Bool)

(declare-fun e!310860 () Bool)

(assert (=> b!535027 (= e!310858 e!310860)))

(declare-fun res!330382 () Bool)

(assert (=> b!535027 (=> (not res!330382) (not e!310860))))

(declare-datatypes ((SeekEntryResult!4742 0))(
  ( (MissingZero!4742 (index!21192 (_ BitVec 32))) (Found!4742 (index!21193 (_ BitVec 32))) (Intermediate!4742 (undefined!5554 Bool) (index!21194 (_ BitVec 32)) (x!50168 (_ BitVec 32))) (Undefined!4742) (MissingVacant!4742 (index!21195 (_ BitVec 32))) )
))
(declare-fun lt!245746 () SeekEntryResult!4742)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!535027 (= res!330382 (or (= lt!245746 (MissingZero!4742 i!1153)) (= lt!245746 (MissingVacant!4742 i!1153))))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun k!1998 () (_ BitVec 64))

(declare-datatypes ((array!33884 0))(
  ( (array!33885 (arr!16277 (Array (_ BitVec 32) (_ BitVec 64))) (size!16641 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33884)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33884 (_ BitVec 32)) SeekEntryResult!4742)

(assert (=> b!535027 (= lt!245746 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!535028 () Bool)

(declare-fun res!330384 () Bool)

(assert (=> b!535028 (=> (not res!330384) (not e!310858))))

(declare-fun arrayContainsKey!0 (array!33884 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!535028 (= res!330384 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!535029 () Bool)

(declare-fun res!330389 () Bool)

(declare-fun e!310861 () Bool)

(assert (=> b!535029 (=> (not res!330389) (not e!310861))))

(declare-fun lt!245747 () SeekEntryResult!4742)

(declare-fun j!147 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33884 (_ BitVec 32)) SeekEntryResult!4742)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!535029 (= res!330389 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16277 a!3154) j!147) mask!3216) (select (arr!16277 a!3154) j!147) a!3154 mask!3216) lt!245747))))

(declare-fun b!535030 () Bool)

(assert (=> b!535030 (= e!310860 e!310861)))

(declare-fun res!330388 () Bool)

(assert (=> b!535030 (=> (not res!330388) (not e!310861))))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!535030 (= res!330388 (= lt!245747 (Intermediate!4742 false resIndex!32 resX!32)))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(assert (=> b!535030 (= lt!245747 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16277 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!535031 () Bool)

(declare-fun res!330390 () Bool)

(assert (=> b!535031 (=> (not res!330390) (not e!310858))))

(assert (=> b!535031 (= res!330390 (and (= (size!16641 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16641 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16641 a!3154)) (not (= i!1153 j!147))))))

(declare-fun res!330385 () Bool)

(assert (=> start!48716 (=> (not res!330385) (not e!310858))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48716 (= res!330385 (validMask!0 mask!3216))))

(assert (=> start!48716 e!310858))

(assert (=> start!48716 true))

(declare-fun array_inv!12051 (array!33884) Bool)

(assert (=> start!48716 (array_inv!12051 a!3154)))

(declare-fun b!535032 () Bool)

(declare-fun res!330391 () Bool)

(assert (=> b!535032 (=> (not res!330391) (not e!310858))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!535032 (= res!330391 (validKeyInArray!0 k!1998))))

(declare-fun b!535033 () Bool)

(declare-fun res!330392 () Bool)

(assert (=> b!535033 (=> (not res!330392) (not e!310860))))

(assert (=> b!535033 (= res!330392 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16641 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16641 a!3154)) (= (select (arr!16277 a!3154) resIndex!32) (select (arr!16277 a!3154) j!147))))))

(declare-fun b!535034 () Bool)

(assert (=> b!535034 (= e!310861 (and (not (= (select (arr!16277 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16277 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16277 a!3154) index!1177) (select (arr!16277 a!3154) j!147)) (= index!1177 resIndex!32) (bvsge mask!3216 #b00000000000000000000000000000000) (bvslt index!1177 (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsgt x!1030 #b01111111111111111111111111111110)))))

(declare-fun b!535035 () Bool)

(declare-fun res!330386 () Bool)

(assert (=> b!535035 (=> (not res!330386) (not e!310858))))

(assert (=> b!535035 (= res!330386 (validKeyInArray!0 (select (arr!16277 a!3154) j!147)))))

(declare-fun b!535036 () Bool)

(declare-fun res!330387 () Bool)

(assert (=> b!535036 (=> (not res!330387) (not e!310860))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33884 (_ BitVec 32)) Bool)

(assert (=> b!535036 (= res!330387 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!535037 () Bool)

(declare-fun res!330383 () Bool)

(assert (=> b!535037 (=> (not res!330383) (not e!310860))))

(declare-datatypes ((List!10449 0))(
  ( (Nil!10446) (Cons!10445 (h!11388 (_ BitVec 64)) (t!16685 List!10449)) )
))
(declare-fun arrayNoDuplicates!0 (array!33884 (_ BitVec 32) List!10449) Bool)

(assert (=> b!535037 (= res!330383 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10446))))

(assert (= (and start!48716 res!330385) b!535031))

(assert (= (and b!535031 res!330390) b!535035))

(assert (= (and b!535035 res!330386) b!535032))

(assert (= (and b!535032 res!330391) b!535028))

(assert (= (and b!535028 res!330384) b!535027))

(assert (= (and b!535027 res!330382) b!535036))

(assert (= (and b!535036 res!330387) b!535037))

(assert (= (and b!535037 res!330383) b!535033))

(assert (= (and b!535033 res!330392) b!535030))

(assert (= (and b!535030 res!330388) b!535029))

(assert (= (and b!535029 res!330389) b!535034))

(declare-fun m!514671 () Bool)

(assert (=> b!535032 m!514671))

(declare-fun m!514673 () Bool)

(assert (=> b!535028 m!514673))

(declare-fun m!514675 () Bool)

(assert (=> b!535034 m!514675))

(declare-fun m!514677 () Bool)

(assert (=> b!535034 m!514677))

(declare-fun m!514679 () Bool)

(assert (=> start!48716 m!514679))

(declare-fun m!514681 () Bool)

(assert (=> start!48716 m!514681))

(assert (=> b!535035 m!514677))

(assert (=> b!535035 m!514677))

(declare-fun m!514683 () Bool)

(assert (=> b!535035 m!514683))

(declare-fun m!514685 () Bool)

(assert (=> b!535037 m!514685))

(assert (=> b!535030 m!514677))

(assert (=> b!535030 m!514677))

(declare-fun m!514687 () Bool)

(assert (=> b!535030 m!514687))

(declare-fun m!514689 () Bool)

(assert (=> b!535033 m!514689))

(assert (=> b!535033 m!514677))

(declare-fun m!514691 () Bool)

(assert (=> b!535036 m!514691))

(assert (=> b!535029 m!514677))

(assert (=> b!535029 m!514677))

(declare-fun m!514693 () Bool)

(assert (=> b!535029 m!514693))

(assert (=> b!535029 m!514693))

(assert (=> b!535029 m!514677))

(declare-fun m!514695 () Bool)

(assert (=> b!535029 m!514695))

(declare-fun m!514697 () Bool)

(assert (=> b!535027 m!514697))

(push 1)

(assert (not b!535037))

(assert (not b!535029))

(assert (not b!535030))

(assert (not b!535028))

(assert (not b!535032))

(assert (not b!535036))

(assert (not b!535035))

(assert (not b!535027))

(assert (not start!48716))

(check-sat)

(pop 1)

(push 1)

(check-sat)

