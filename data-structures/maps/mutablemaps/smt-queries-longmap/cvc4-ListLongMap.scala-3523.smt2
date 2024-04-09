; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48728 () Bool)

(assert start!48728)

(declare-fun b!535226 () Bool)

(declare-fun res!330582 () Bool)

(declare-fun e!310923 () Bool)

(assert (=> b!535226 (=> (not res!330582) (not e!310923))))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!33896 0))(
  ( (array!33897 (arr!16283 (Array (_ BitVec 32) (_ BitVec 64))) (size!16647 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33896)

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!535226 (= res!330582 (and (= (size!16647 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16647 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16647 a!3154)) (not (= i!1153 j!147))))))

(declare-fun res!330584 () Bool)

(assert (=> start!48728 (=> (not res!330584) (not e!310923))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48728 (= res!330584 (validMask!0 mask!3216))))

(assert (=> start!48728 e!310923))

(assert (=> start!48728 true))

(declare-fun array_inv!12057 (array!33896) Bool)

(assert (=> start!48728 (array_inv!12057 a!3154)))

(declare-fun b!535227 () Bool)

(declare-fun e!310924 () Bool)

(assert (=> b!535227 (= e!310923 e!310924)))

(declare-fun res!330586 () Bool)

(assert (=> b!535227 (=> (not res!330586) (not e!310924))))

(declare-datatypes ((SeekEntryResult!4748 0))(
  ( (MissingZero!4748 (index!21216 (_ BitVec 32))) (Found!4748 (index!21217 (_ BitVec 32))) (Intermediate!4748 (undefined!5560 Bool) (index!21218 (_ BitVec 32)) (x!50190 (_ BitVec 32))) (Undefined!4748) (MissingVacant!4748 (index!21219 (_ BitVec 32))) )
))
(declare-fun lt!245783 () SeekEntryResult!4748)

(assert (=> b!535227 (= res!330586 (or (= lt!245783 (MissingZero!4748 i!1153)) (= lt!245783 (MissingVacant!4748 i!1153))))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33896 (_ BitVec 32)) SeekEntryResult!4748)

(assert (=> b!535227 (= lt!245783 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!535228 () Bool)

(declare-fun res!330588 () Bool)

(assert (=> b!535228 (=> (not res!330588) (not e!310923))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!535228 (= res!330588 (validKeyInArray!0 (select (arr!16283 a!3154) j!147)))))

(declare-fun b!535229 () Bool)

(declare-fun res!330581 () Bool)

(assert (=> b!535229 (=> (not res!330581) (not e!310923))))

(assert (=> b!535229 (= res!330581 (validKeyInArray!0 k!1998))))

(declare-fun b!535230 () Bool)

(declare-fun res!330585 () Bool)

(assert (=> b!535230 (=> (not res!330585) (not e!310924))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33896 (_ BitVec 32)) Bool)

(assert (=> b!535230 (= res!330585 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!535231 () Bool)

(declare-fun res!330589 () Bool)

(assert (=> b!535231 (=> (not res!330589) (not e!310924))))

(declare-datatypes ((List!10455 0))(
  ( (Nil!10452) (Cons!10451 (h!11394 (_ BitVec 64)) (t!16691 List!10455)) )
))
(declare-fun arrayNoDuplicates!0 (array!33896 (_ BitVec 32) List!10455) Bool)

(assert (=> b!535231 (= res!330589 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10452))))

(declare-fun b!535232 () Bool)

(declare-fun res!330590 () Bool)

(assert (=> b!535232 (=> (not res!330590) (not e!310923))))

(declare-fun arrayContainsKey!0 (array!33896 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!535232 (= res!330590 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!535233 () Bool)

(declare-fun res!330587 () Bool)

(assert (=> b!535233 (=> (not res!330587) (not e!310924))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!535233 (= res!330587 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16647 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16647 a!3154)) (= (select (arr!16283 a!3154) resIndex!32) (select (arr!16283 a!3154) j!147))))))

(declare-fun b!535234 () Bool)

(assert (=> b!535234 (= e!310924 false)))

(declare-fun lt!245782 () SeekEntryResult!4748)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33896 (_ BitVec 32)) SeekEntryResult!4748)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!535234 (= lt!245782 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16283 a!3154) j!147) mask!3216) (select (arr!16283 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!535235 () Bool)

(declare-fun res!330583 () Bool)

(assert (=> b!535235 (=> (not res!330583) (not e!310924))))

(assert (=> b!535235 (= res!330583 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16283 a!3154) j!147) a!3154 mask!3216) (Intermediate!4748 false resIndex!32 resX!32)))))

(assert (= (and start!48728 res!330584) b!535226))

(assert (= (and b!535226 res!330582) b!535228))

(assert (= (and b!535228 res!330588) b!535229))

(assert (= (and b!535229 res!330581) b!535232))

(assert (= (and b!535232 res!330590) b!535227))

(assert (= (and b!535227 res!330586) b!535230))

(assert (= (and b!535230 res!330585) b!535231))

(assert (= (and b!535231 res!330589) b!535233))

(assert (= (and b!535233 res!330587) b!535235))

(assert (= (and b!535235 res!330583) b!535234))

(declare-fun m!514853 () Bool)

(assert (=> b!535234 m!514853))

(assert (=> b!535234 m!514853))

(declare-fun m!514855 () Bool)

(assert (=> b!535234 m!514855))

(assert (=> b!535234 m!514855))

(assert (=> b!535234 m!514853))

(declare-fun m!514857 () Bool)

(assert (=> b!535234 m!514857))

(declare-fun m!514859 () Bool)

(assert (=> b!535233 m!514859))

(assert (=> b!535233 m!514853))

(declare-fun m!514861 () Bool)

(assert (=> b!535227 m!514861))

(assert (=> b!535235 m!514853))

(assert (=> b!535235 m!514853))

(declare-fun m!514863 () Bool)

(assert (=> b!535235 m!514863))

(declare-fun m!514865 () Bool)

(assert (=> b!535232 m!514865))

(declare-fun m!514867 () Bool)

(assert (=> b!535231 m!514867))

(declare-fun m!514869 () Bool)

(assert (=> b!535230 m!514869))

(assert (=> b!535228 m!514853))

(assert (=> b!535228 m!514853))

(declare-fun m!514871 () Bool)

(assert (=> b!535228 m!514871))

(declare-fun m!514873 () Bool)

(assert (=> b!535229 m!514873))

(declare-fun m!514875 () Bool)

(assert (=> start!48728 m!514875))

(declare-fun m!514877 () Bool)

(assert (=> start!48728 m!514877))

(push 1)

(assert (not b!535232))

(assert (not b!535229))

(assert (not b!535235))

(assert (not start!48728))

(assert (not b!535230))

(assert (not b!535231))

(assert (not b!535228))

(assert (not b!535234))

(assert (not b!535227))

(check-sat)

