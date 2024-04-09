; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49618 () Bool)

(assert start!49618)

(declare-fun res!339580 () Bool)

(declare-fun e!315306 () Bool)

(assert (=> start!49618 (=> (not res!339580) (not e!315306))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49618 (= res!339580 (validMask!0 mask!3216))))

(assert (=> start!49618 e!315306))

(assert (=> start!49618 true))

(declare-datatypes ((array!34387 0))(
  ( (array!34388 (arr!16518 (Array (_ BitVec 32) (_ BitVec 64))) (size!16882 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34387)

(declare-fun array_inv!12292 (array!34387) Bool)

(assert (=> start!49618 (array_inv!12292 a!3154)))

(declare-fun b!545498 () Bool)

(declare-fun res!339578 () Bool)

(assert (=> b!545498 (=> (not res!339578) (not e!315306))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!545498 (= res!339578 (validKeyInArray!0 k!1998))))

(declare-fun b!545499 () Bool)

(declare-fun e!315301 () Bool)

(declare-fun e!315304 () Bool)

(assert (=> b!545499 (= e!315301 e!315304)))

(declare-fun res!339579 () Bool)

(assert (=> b!545499 (=> (not res!339579) (not e!315304))))

(declare-datatypes ((SeekEntryResult!4983 0))(
  ( (MissingZero!4983 (index!22156 (_ BitVec 32))) (Found!4983 (index!22157 (_ BitVec 32))) (Intermediate!4983 (undefined!5795 Bool) (index!22158 (_ BitVec 32)) (x!51114 (_ BitVec 32))) (Undefined!4983) (MissingVacant!4983 (index!22159 (_ BitVec 32))) )
))
(declare-fun lt!248918 () SeekEntryResult!4983)

(declare-fun lt!248916 () SeekEntryResult!4983)

(assert (=> b!545499 (= res!339579 (= lt!248918 lt!248916))))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!545499 (= lt!248916 (Intermediate!4983 false resIndex!32 resX!32))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34387 (_ BitVec 32)) SeekEntryResult!4983)

(assert (=> b!545499 (= lt!248918 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16518 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!545500 () Bool)

(declare-fun e!315305 () Bool)

(declare-fun e!315307 () Bool)

(assert (=> b!545500 (= e!315305 e!315307)))

(declare-fun res!339575 () Bool)

(assert (=> b!545500 (=> (not res!339575) (not e!315307))))

(declare-fun lt!248913 () (_ BitVec 32))

(assert (=> b!545500 (= res!339575 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1030) resX!32) (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b00000000000000000000000000000000) (bvsge lt!248913 #b00000000000000000000000000000000) (bvslt lt!248913 (size!16882 a!3154))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!545500 (= lt!248913 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!545501 () Bool)

(declare-fun res!339585 () Bool)

(assert (=> b!545501 (=> (not res!339585) (not e!315301))))

(assert (=> b!545501 (= res!339585 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16882 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16882 a!3154)) (= (select (arr!16518 a!3154) resIndex!32) (select (arr!16518 a!3154) j!147))))))

(declare-fun b!545502 () Bool)

(declare-fun res!339587 () Bool)

(assert (=> b!545502 (=> (not res!339587) (not e!315306))))

(declare-fun arrayContainsKey!0 (array!34387 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!545502 (= res!339587 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!545503 () Bool)

(assert (=> b!545503 (= e!315304 e!315305)))

(declare-fun res!339583 () Bool)

(assert (=> b!545503 (=> (not res!339583) (not e!315305))))

(declare-fun lt!248912 () SeekEntryResult!4983)

(assert (=> b!545503 (= res!339583 (and (= lt!248912 lt!248918) (not (= (select (arr!16518 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16518 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16518 a!3154) index!1177) (select (arr!16518 a!3154) j!147)))))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!545503 (= lt!248912 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16518 a!3154) j!147) mask!3216) (select (arr!16518 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!545504 () Bool)

(declare-fun res!339582 () Bool)

(assert (=> b!545504 (=> (not res!339582) (not e!315301))))

(declare-datatypes ((List!10690 0))(
  ( (Nil!10687) (Cons!10686 (h!11650 (_ BitVec 64)) (t!16926 List!10690)) )
))
(declare-fun arrayNoDuplicates!0 (array!34387 (_ BitVec 32) List!10690) Bool)

(assert (=> b!545504 (= res!339582 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10687))))

(declare-fun b!545505 () Bool)

(declare-fun e!315303 () Bool)

(assert (=> b!545505 (= e!315303 (not true))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!545505 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!248913 (select (store (arr!16518 a!3154) i!1153 k!1998) j!147) (array!34388 (store (arr!16518 a!3154) i!1153 k!1998) (size!16882 a!3154)) mask!3216) lt!248916)))

(declare-datatypes ((Unit!16898 0))(
  ( (Unit!16899) )
))
(declare-fun lt!248917 () Unit!16898)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!34387 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16898)

(assert (=> b!545505 (= lt!248917 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3154 i!1153 k!1998 j!147 lt!248913 (bvadd #b00000000000000000000000000000001 x!1030) resIndex!32 resX!32 mask!3216))))

(declare-fun b!545506 () Bool)

(assert (=> b!545506 (= e!315307 e!315303)))

(declare-fun res!339577 () Bool)

(assert (=> b!545506 (=> (not res!339577) (not e!315303))))

(declare-fun lt!248914 () SeekEntryResult!4983)

(assert (=> b!545506 (= res!339577 (and (= lt!248914 lt!248916) (= lt!248912 lt!248914)))))

(assert (=> b!545506 (= lt!248914 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!248913 (select (arr!16518 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!545507 () Bool)

(declare-fun res!339586 () Bool)

(assert (=> b!545507 (=> (not res!339586) (not e!315301))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34387 (_ BitVec 32)) Bool)

(assert (=> b!545507 (= res!339586 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!545508 () Bool)

(assert (=> b!545508 (= e!315306 e!315301)))

(declare-fun res!339576 () Bool)

(assert (=> b!545508 (=> (not res!339576) (not e!315301))))

(declare-fun lt!248915 () SeekEntryResult!4983)

(assert (=> b!545508 (= res!339576 (or (= lt!248915 (MissingZero!4983 i!1153)) (= lt!248915 (MissingVacant!4983 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34387 (_ BitVec 32)) SeekEntryResult!4983)

(assert (=> b!545508 (= lt!248915 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!545509 () Bool)

(declare-fun res!339584 () Bool)

(assert (=> b!545509 (=> (not res!339584) (not e!315306))))

(assert (=> b!545509 (= res!339584 (validKeyInArray!0 (select (arr!16518 a!3154) j!147)))))

(declare-fun b!545510 () Bool)

(declare-fun res!339581 () Bool)

(assert (=> b!545510 (=> (not res!339581) (not e!315306))))

(assert (=> b!545510 (= res!339581 (and (= (size!16882 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16882 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16882 a!3154)) (not (= i!1153 j!147))))))

(assert (= (and start!49618 res!339580) b!545510))

(assert (= (and b!545510 res!339581) b!545509))

(assert (= (and b!545509 res!339584) b!545498))

(assert (= (and b!545498 res!339578) b!545502))

(assert (= (and b!545502 res!339587) b!545508))

(assert (= (and b!545508 res!339576) b!545507))

(assert (= (and b!545507 res!339586) b!545504))

(assert (= (and b!545504 res!339582) b!545501))

(assert (= (and b!545501 res!339585) b!545499))

(assert (= (and b!545499 res!339579) b!545503))

(assert (= (and b!545503 res!339583) b!545500))

(assert (= (and b!545500 res!339575) b!545506))

(assert (= (and b!545506 res!339577) b!545505))

(declare-fun m!523075 () Bool)

(assert (=> b!545504 m!523075))

(declare-fun m!523077 () Bool)

(assert (=> b!545499 m!523077))

(assert (=> b!545499 m!523077))

(declare-fun m!523079 () Bool)

(assert (=> b!545499 m!523079))

(declare-fun m!523081 () Bool)

(assert (=> b!545501 m!523081))

(assert (=> b!545501 m!523077))

(declare-fun m!523083 () Bool)

(assert (=> b!545508 m!523083))

(declare-fun m!523085 () Bool)

(assert (=> b!545505 m!523085))

(declare-fun m!523087 () Bool)

(assert (=> b!545505 m!523087))

(assert (=> b!545505 m!523087))

(declare-fun m!523089 () Bool)

(assert (=> b!545505 m!523089))

(declare-fun m!523091 () Bool)

(assert (=> b!545505 m!523091))

(declare-fun m!523093 () Bool)

(assert (=> b!545503 m!523093))

(assert (=> b!545503 m!523077))

(assert (=> b!545503 m!523077))

(declare-fun m!523095 () Bool)

(assert (=> b!545503 m!523095))

(assert (=> b!545503 m!523095))

(assert (=> b!545503 m!523077))

(declare-fun m!523097 () Bool)

(assert (=> b!545503 m!523097))

(declare-fun m!523099 () Bool)

(assert (=> b!545502 m!523099))

(declare-fun m!523101 () Bool)

(assert (=> b!545507 m!523101))

(declare-fun m!523103 () Bool)

(assert (=> b!545498 m!523103))

(assert (=> b!545509 m!523077))

(assert (=> b!545509 m!523077))

(declare-fun m!523105 () Bool)

(assert (=> b!545509 m!523105))

(declare-fun m!523107 () Bool)

(assert (=> b!545500 m!523107))

(assert (=> b!545506 m!523077))

(assert (=> b!545506 m!523077))

(declare-fun m!523109 () Bool)

(assert (=> b!545506 m!523109))

(declare-fun m!523111 () Bool)

(assert (=> start!49618 m!523111))

(declare-fun m!523113 () Bool)

(assert (=> start!49618 m!523113))

(push 1)

