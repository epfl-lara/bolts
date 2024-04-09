; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48574 () Bool)

(assert start!48574)

(declare-fun b!532898 () Bool)

(declare-fun res!328253 () Bool)

(declare-fun e!310193 () Bool)

(assert (=> b!532898 (=> (not res!328253) (not e!310193))))

(declare-datatypes ((array!33742 0))(
  ( (array!33743 (arr!16206 (Array (_ BitVec 32) (_ BitVec 64))) (size!16570 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33742)

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33742 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!532898 (= res!328253 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!532899 () Bool)

(declare-fun res!328261 () Bool)

(declare-fun e!310194 () Bool)

(assert (=> b!532899 (=> (not res!328261) (not e!310194))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(assert (=> b!532899 (= res!328261 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16570 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16570 a!3154)) (= (select (arr!16206 a!3154) resIndex!32) (select (arr!16206 a!3154) j!147))))))

(declare-fun b!532900 () Bool)

(declare-fun res!328257 () Bool)

(assert (=> b!532900 (=> (not res!328257) (not e!310193))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!532900 (= res!328257 (and (= (size!16570 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16570 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16570 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!532901 () Bool)

(declare-fun res!328260 () Bool)

(assert (=> b!532901 (=> (not res!328260) (not e!310194))))

(declare-datatypes ((SeekEntryResult!4671 0))(
  ( (MissingZero!4671 (index!20908 (_ BitVec 32))) (Found!4671 (index!20909 (_ BitVec 32))) (Intermediate!4671 (undefined!5483 Bool) (index!20910 (_ BitVec 32)) (x!49913 (_ BitVec 32))) (Undefined!4671) (MissingVacant!4671 (index!20911 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33742 (_ BitVec 32)) SeekEntryResult!4671)

(assert (=> b!532901 (= res!328260 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16206 a!3154) j!147) a!3154 mask!3216) (Intermediate!4671 false resIndex!32 resX!32)))))

(declare-fun b!532902 () Bool)

(declare-fun res!328255 () Bool)

(assert (=> b!532902 (=> (not res!328255) (not e!310194))))

(declare-datatypes ((List!10378 0))(
  ( (Nil!10375) (Cons!10374 (h!11317 (_ BitVec 64)) (t!16614 List!10378)) )
))
(declare-fun arrayNoDuplicates!0 (array!33742 (_ BitVec 32) List!10378) Bool)

(assert (=> b!532902 (= res!328255 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10375))))

(declare-fun b!532903 () Bool)

(declare-fun res!328262 () Bool)

(assert (=> b!532903 (=> (not res!328262) (not e!310193))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!532903 (= res!328262 (validKeyInArray!0 (select (arr!16206 a!3154) j!147)))))

(declare-fun b!532904 () Bool)

(assert (=> b!532904 (= e!310193 e!310194)))

(declare-fun res!328256 () Bool)

(assert (=> b!532904 (=> (not res!328256) (not e!310194))))

(declare-fun lt!245348 () SeekEntryResult!4671)

(assert (=> b!532904 (= res!328256 (or (= lt!245348 (MissingZero!4671 i!1153)) (= lt!245348 (MissingVacant!4671 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33742 (_ BitVec 32)) SeekEntryResult!4671)

(assert (=> b!532904 (= lt!245348 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!532906 () Bool)

(declare-fun res!328254 () Bool)

(assert (=> b!532906 (=> (not res!328254) (not e!310193))))

(assert (=> b!532906 (= res!328254 (validKeyInArray!0 k!1998))))

(declare-fun b!532907 () Bool)

(declare-fun res!328258 () Bool)

(assert (=> b!532907 (=> (not res!328258) (not e!310194))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33742 (_ BitVec 32)) Bool)

(assert (=> b!532907 (= res!328258 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!532905 () Bool)

(assert (=> b!532905 (= e!310194 false)))

(declare-fun lt!245347 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!532905 (= lt!245347 (toIndex!0 (select (arr!16206 a!3154) j!147) mask!3216))))

(declare-fun res!328259 () Bool)

(assert (=> start!48574 (=> (not res!328259) (not e!310193))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48574 (= res!328259 (validMask!0 mask!3216))))

(assert (=> start!48574 e!310193))

(assert (=> start!48574 true))

(declare-fun array_inv!11980 (array!33742) Bool)

(assert (=> start!48574 (array_inv!11980 a!3154)))

(assert (= (and start!48574 res!328259) b!532900))

(assert (= (and b!532900 res!328257) b!532903))

(assert (= (and b!532903 res!328262) b!532906))

(assert (= (and b!532906 res!328254) b!532898))

(assert (= (and b!532898 res!328253) b!532904))

(assert (= (and b!532904 res!328256) b!532907))

(assert (= (and b!532907 res!328258) b!532902))

(assert (= (and b!532902 res!328255) b!532899))

(assert (= (and b!532899 res!328261) b!532901))

(assert (= (and b!532901 res!328260) b!532905))

(declare-fun m!512887 () Bool)

(assert (=> b!532906 m!512887))

(declare-fun m!512889 () Bool)

(assert (=> b!532898 m!512889))

(declare-fun m!512891 () Bool)

(assert (=> b!532899 m!512891))

(declare-fun m!512893 () Bool)

(assert (=> b!532899 m!512893))

(declare-fun m!512895 () Bool)

(assert (=> b!532904 m!512895))

(assert (=> b!532905 m!512893))

(assert (=> b!532905 m!512893))

(declare-fun m!512897 () Bool)

(assert (=> b!532905 m!512897))

(assert (=> b!532903 m!512893))

(assert (=> b!532903 m!512893))

(declare-fun m!512899 () Bool)

(assert (=> b!532903 m!512899))

(assert (=> b!532901 m!512893))

(assert (=> b!532901 m!512893))

(declare-fun m!512901 () Bool)

(assert (=> b!532901 m!512901))

(declare-fun m!512903 () Bool)

(assert (=> b!532902 m!512903))

(declare-fun m!512905 () Bool)

(assert (=> start!48574 m!512905))

(declare-fun m!512907 () Bool)

(assert (=> start!48574 m!512907))

(declare-fun m!512909 () Bool)

(assert (=> b!532907 m!512909))

(push 1)

(assert (not b!532903))

(assert (not b!532905))

(assert (not b!532904))

(assert (not b!532901))

(assert (not start!48574))

(assert (not b!532907))

(assert (not b!532902))

(assert (not b!532906))

(assert (not b!532898))

(check-sat)

