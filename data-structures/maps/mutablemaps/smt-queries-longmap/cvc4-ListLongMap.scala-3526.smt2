; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48746 () Bool)

(assert start!48746)

(declare-fun b!535522 () Bool)

(declare-fun e!311032 () Bool)

(declare-fun e!311030 () Bool)

(assert (=> b!535522 (= e!311032 e!311030)))

(declare-fun res!330879 () Bool)

(assert (=> b!535522 (=> (not res!330879) (not e!311030))))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4757 0))(
  ( (MissingZero!4757 (index!21252 (_ BitVec 32))) (Found!4757 (index!21253 (_ BitVec 32))) (Intermediate!4757 (undefined!5569 Bool) (index!21254 (_ BitVec 32)) (x!50223 (_ BitVec 32))) (Undefined!4757) (MissingVacant!4757 (index!21255 (_ BitVec 32))) )
))
(declare-fun lt!245836 () SeekEntryResult!4757)

(assert (=> b!535522 (= res!330879 (= lt!245836 (Intermediate!4757 false resIndex!32 resX!32)))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!33914 0))(
  ( (array!33915 (arr!16292 (Array (_ BitVec 32) (_ BitVec 64))) (size!16656 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33914)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33914 (_ BitVec 32)) SeekEntryResult!4757)

(assert (=> b!535522 (= lt!245836 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16292 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!535523 () Bool)

(declare-fun res!330880 () Bool)

(declare-fun e!311029 () Bool)

(assert (=> b!535523 (=> (not res!330880) (not e!311029))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33914 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!535523 (= res!330880 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!535524 () Bool)

(assert (=> b!535524 (= e!311030 (and (not (= (select (arr!16292 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16292 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16292 a!3154) index!1177) (select (arr!16292 a!3154) j!147))) (bvsge mask!3216 #b00000000000000000000000000000000) (bvslt index!1177 (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsgt x!1030 #b01111111111111111111111111111110)))))

(declare-fun b!535525 () Bool)

(declare-fun res!330886 () Bool)

(assert (=> b!535525 (=> (not res!330886) (not e!311030))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!535525 (= res!330886 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16292 a!3154) j!147) mask!3216) (select (arr!16292 a!3154) j!147) a!3154 mask!3216) lt!245836))))

(declare-fun b!535526 () Bool)

(declare-fun res!330884 () Bool)

(assert (=> b!535526 (=> (not res!330884) (not e!311032))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33914 (_ BitVec 32)) Bool)

(assert (=> b!535526 (= res!330884 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!535527 () Bool)

(declare-fun res!330877 () Bool)

(assert (=> b!535527 (=> (not res!330877) (not e!311029))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!535527 (= res!330877 (validKeyInArray!0 k!1998))))

(declare-fun b!535528 () Bool)

(assert (=> b!535528 (= e!311029 e!311032)))

(declare-fun res!330878 () Bool)

(assert (=> b!535528 (=> (not res!330878) (not e!311032))))

(declare-fun lt!245837 () SeekEntryResult!4757)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!535528 (= res!330878 (or (= lt!245837 (MissingZero!4757 i!1153)) (= lt!245837 (MissingVacant!4757 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33914 (_ BitVec 32)) SeekEntryResult!4757)

(assert (=> b!535528 (= lt!245837 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!535529 () Bool)

(declare-fun res!330883 () Bool)

(assert (=> b!535529 (=> (not res!330883) (not e!311032))))

(declare-datatypes ((List!10464 0))(
  ( (Nil!10461) (Cons!10460 (h!11403 (_ BitVec 64)) (t!16700 List!10464)) )
))
(declare-fun arrayNoDuplicates!0 (array!33914 (_ BitVec 32) List!10464) Bool)

(assert (=> b!535529 (= res!330883 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10461))))

(declare-fun b!535530 () Bool)

(declare-fun res!330881 () Bool)

(assert (=> b!535530 (=> (not res!330881) (not e!311032))))

(assert (=> b!535530 (= res!330881 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16656 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16656 a!3154)) (= (select (arr!16292 a!3154) resIndex!32) (select (arr!16292 a!3154) j!147))))))

(declare-fun b!535531 () Bool)

(declare-fun res!330887 () Bool)

(assert (=> b!535531 (=> (not res!330887) (not e!311029))))

(assert (=> b!535531 (= res!330887 (validKeyInArray!0 (select (arr!16292 a!3154) j!147)))))

(declare-fun res!330882 () Bool)

(assert (=> start!48746 (=> (not res!330882) (not e!311029))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48746 (= res!330882 (validMask!0 mask!3216))))

(assert (=> start!48746 e!311029))

(assert (=> start!48746 true))

(declare-fun array_inv!12066 (array!33914) Bool)

(assert (=> start!48746 (array_inv!12066 a!3154)))

(declare-fun b!535532 () Bool)

(declare-fun res!330885 () Bool)

(assert (=> b!535532 (=> (not res!330885) (not e!311029))))

(assert (=> b!535532 (= res!330885 (and (= (size!16656 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16656 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16656 a!3154)) (not (= i!1153 j!147))))))

(assert (= (and start!48746 res!330882) b!535532))

(assert (= (and b!535532 res!330885) b!535531))

(assert (= (and b!535531 res!330887) b!535527))

(assert (= (and b!535527 res!330877) b!535523))

(assert (= (and b!535523 res!330880) b!535528))

(assert (= (and b!535528 res!330878) b!535526))

(assert (= (and b!535526 res!330884) b!535529))

(assert (= (and b!535529 res!330883) b!535530))

(assert (= (and b!535530 res!330881) b!535522))

(assert (= (and b!535522 res!330879) b!535525))

(assert (= (and b!535525 res!330886) b!535524))

(declare-fun m!515103 () Bool)

(assert (=> b!535528 m!515103))

(declare-fun m!515105 () Bool)

(assert (=> b!535524 m!515105))

(declare-fun m!515107 () Bool)

(assert (=> b!535524 m!515107))

(assert (=> b!535525 m!515107))

(assert (=> b!535525 m!515107))

(declare-fun m!515109 () Bool)

(assert (=> b!535525 m!515109))

(assert (=> b!535525 m!515109))

(assert (=> b!535525 m!515107))

(declare-fun m!515111 () Bool)

(assert (=> b!535525 m!515111))

(declare-fun m!515113 () Bool)

(assert (=> b!535530 m!515113))

(assert (=> b!535530 m!515107))

(declare-fun m!515115 () Bool)

(assert (=> start!48746 m!515115))

(declare-fun m!515117 () Bool)

(assert (=> start!48746 m!515117))

(declare-fun m!515119 () Bool)

(assert (=> b!535529 m!515119))

(assert (=> b!535522 m!515107))

(assert (=> b!535522 m!515107))

(declare-fun m!515121 () Bool)

(assert (=> b!535522 m!515121))

(declare-fun m!515123 () Bool)

(assert (=> b!535526 m!515123))

(declare-fun m!515125 () Bool)

(assert (=> b!535527 m!515125))

(assert (=> b!535531 m!515107))

(assert (=> b!535531 m!515107))

(declare-fun m!515127 () Bool)

(assert (=> b!535531 m!515127))

(declare-fun m!515129 () Bool)

(assert (=> b!535523 m!515129))

(push 1)

(assert (not b!535523))

(assert (not b!535527))

(assert (not b!535529))

(assert (not b!535526))

