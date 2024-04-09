; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48710 () Bool)

(assert start!48710)

(declare-fun res!330290 () Bool)

(declare-fun e!310822 () Bool)

(assert (=> start!48710 (=> (not res!330290) (not e!310822))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48710 (= res!330290 (validMask!0 mask!3216))))

(assert (=> start!48710 e!310822))

(assert (=> start!48710 true))

(declare-datatypes ((array!33878 0))(
  ( (array!33879 (arr!16274 (Array (_ BitVec 32) (_ BitVec 64))) (size!16638 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33878)

(declare-fun array_inv!12048 (array!33878) Bool)

(assert (=> start!48710 (array_inv!12048 a!3154)))

(declare-fun b!534928 () Bool)

(declare-fun e!310824 () Bool)

(declare-fun e!310825 () Bool)

(assert (=> b!534928 (= e!310824 e!310825)))

(declare-fun res!330289 () Bool)

(assert (=> b!534928 (=> (not res!330289) (not e!310825))))

(declare-datatypes ((SeekEntryResult!4739 0))(
  ( (MissingZero!4739 (index!21180 (_ BitVec 32))) (Found!4739 (index!21181 (_ BitVec 32))) (Intermediate!4739 (undefined!5551 Bool) (index!21182 (_ BitVec 32)) (x!50157 (_ BitVec 32))) (Undefined!4739) (MissingVacant!4739 (index!21183 (_ BitVec 32))) )
))
(declare-fun lt!245728 () SeekEntryResult!4739)

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!534928 (= res!330289 (= lt!245728 (Intermediate!4739 false resIndex!32 resX!32)))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33878 (_ BitVec 32)) SeekEntryResult!4739)

(assert (=> b!534928 (= lt!245728 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16274 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!534929 () Bool)

(assert (=> b!534929 (= e!310822 e!310824)))

(declare-fun res!330284 () Bool)

(assert (=> b!534929 (=> (not res!330284) (not e!310824))))

(declare-fun lt!245729 () SeekEntryResult!4739)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!534929 (= res!330284 (or (= lt!245729 (MissingZero!4739 i!1153)) (= lt!245729 (MissingVacant!4739 i!1153))))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33878 (_ BitVec 32)) SeekEntryResult!4739)

(assert (=> b!534929 (= lt!245729 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!534930 () Bool)

(declare-fun res!330288 () Bool)

(assert (=> b!534930 (=> (not res!330288) (not e!310822))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!534930 (= res!330288 (validKeyInArray!0 (select (arr!16274 a!3154) j!147)))))

(declare-fun b!534931 () Bool)

(declare-fun res!330287 () Bool)

(assert (=> b!534931 (=> (not res!330287) (not e!310824))))

(declare-datatypes ((List!10446 0))(
  ( (Nil!10443) (Cons!10442 (h!11385 (_ BitVec 64)) (t!16682 List!10446)) )
))
(declare-fun arrayNoDuplicates!0 (array!33878 (_ BitVec 32) List!10446) Bool)

(assert (=> b!534931 (= res!330287 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10443))))

(declare-fun b!534932 () Bool)

(declare-fun res!330292 () Bool)

(assert (=> b!534932 (=> (not res!330292) (not e!310824))))

(assert (=> b!534932 (= res!330292 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16638 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16638 a!3154)) (= (select (arr!16274 a!3154) resIndex!32) (select (arr!16274 a!3154) j!147))))))

(declare-fun b!534933 () Bool)

(declare-fun res!330286 () Bool)

(assert (=> b!534933 (=> (not res!330286) (not e!310822))))

(assert (=> b!534933 (= res!330286 (validKeyInArray!0 k!1998))))

(declare-fun b!534934 () Bool)

(declare-fun res!330283 () Bool)

(assert (=> b!534934 (=> (not res!330283) (not e!310822))))

(assert (=> b!534934 (= res!330283 (and (= (size!16638 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16638 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16638 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!534935 () Bool)

(declare-fun res!330291 () Bool)

(assert (=> b!534935 (=> (not res!330291) (not e!310825))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!534935 (= res!330291 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16274 a!3154) j!147) mask!3216) (select (arr!16274 a!3154) j!147) a!3154 mask!3216) lt!245728))))

(declare-fun b!534936 () Bool)

(declare-fun res!330293 () Bool)

(assert (=> b!534936 (=> (not res!330293) (not e!310822))))

(declare-fun arrayContainsKey!0 (array!33878 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!534936 (= res!330293 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!534937 () Bool)

(assert (=> b!534937 (= e!310825 (and (not (= (select (arr!16274 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16274 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16274 a!3154) index!1177) (select (arr!16274 a!3154) j!147)) (= index!1177 resIndex!32) (bvsge mask!3216 #b00000000000000000000000000000000) (bvsge index!1177 (bvadd #b00000000000000000000000000000001 mask!3216))))))

(declare-fun b!534938 () Bool)

(declare-fun res!330285 () Bool)

(assert (=> b!534938 (=> (not res!330285) (not e!310824))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33878 (_ BitVec 32)) Bool)

(assert (=> b!534938 (= res!330285 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(assert (= (and start!48710 res!330290) b!534934))

(assert (= (and b!534934 res!330283) b!534930))

(assert (= (and b!534930 res!330288) b!534933))

(assert (= (and b!534933 res!330286) b!534936))

(assert (= (and b!534936 res!330293) b!534929))

(assert (= (and b!534929 res!330284) b!534938))

(assert (= (and b!534938 res!330285) b!534931))

(assert (= (and b!534931 res!330287) b!534932))

(assert (= (and b!534932 res!330292) b!534928))

(assert (= (and b!534928 res!330289) b!534935))

(assert (= (and b!534935 res!330291) b!534937))

(declare-fun m!514587 () Bool)

(assert (=> b!534935 m!514587))

(assert (=> b!534935 m!514587))

(declare-fun m!514589 () Bool)

(assert (=> b!534935 m!514589))

(assert (=> b!534935 m!514589))

(assert (=> b!534935 m!514587))

(declare-fun m!514591 () Bool)

(assert (=> b!534935 m!514591))

(declare-fun m!514593 () Bool)

(assert (=> b!534931 m!514593))

(declare-fun m!514595 () Bool)

(assert (=> b!534933 m!514595))

(declare-fun m!514597 () Bool)

(assert (=> b!534937 m!514597))

(assert (=> b!534937 m!514587))

(declare-fun m!514599 () Bool)

(assert (=> b!534938 m!514599))

(assert (=> b!534928 m!514587))

(assert (=> b!534928 m!514587))

(declare-fun m!514601 () Bool)

(assert (=> b!534928 m!514601))

(declare-fun m!514603 () Bool)

(assert (=> start!48710 m!514603))

(declare-fun m!514605 () Bool)

(assert (=> start!48710 m!514605))

(declare-fun m!514607 () Bool)

(assert (=> b!534929 m!514607))

(assert (=> b!534930 m!514587))

(assert (=> b!534930 m!514587))

(declare-fun m!514609 () Bool)

(assert (=> b!534930 m!514609))

(declare-fun m!514611 () Bool)

(assert (=> b!534932 m!514611))

(assert (=> b!534932 m!514587))

(declare-fun m!514613 () Bool)

(assert (=> b!534936 m!514613))

(push 1)

(assert (not b!534933))

(assert (not start!48710))

(assert (not b!534929))

(assert (not b!534931))

(assert (not b!534938))

(assert (not b!534936))

(assert (not b!534928))

(assert (not b!534935))

(assert (not b!534930))

(check-sat)

(pop 1)

(push 1)

(check-sat)

