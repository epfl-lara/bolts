; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48742 () Bool)

(assert start!48742)

(declare-fun b!535456 () Bool)

(declare-fun res!330820 () Bool)

(declare-fun e!311007 () Bool)

(assert (=> b!535456 (=> (not res!330820) (not e!311007))))

(declare-datatypes ((array!33910 0))(
  ( (array!33911 (arr!16290 (Array (_ BitVec 32) (_ BitVec 64))) (size!16654 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33910)

(declare-fun j!147 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!535456 (= res!330820 (validKeyInArray!0 (select (arr!16290 a!3154) j!147)))))

(declare-fun b!535457 () Bool)

(declare-fun e!311008 () Bool)

(declare-fun e!311006 () Bool)

(assert (=> b!535457 (= e!311008 e!311006)))

(declare-fun res!330816 () Bool)

(assert (=> b!535457 (=> (not res!330816) (not e!311006))))

(declare-datatypes ((SeekEntryResult!4755 0))(
  ( (MissingZero!4755 (index!21244 (_ BitVec 32))) (Found!4755 (index!21245 (_ BitVec 32))) (Intermediate!4755 (undefined!5567 Bool) (index!21246 (_ BitVec 32)) (x!50221 (_ BitVec 32))) (Undefined!4755) (MissingVacant!4755 (index!21247 (_ BitVec 32))) )
))
(declare-fun lt!245825 () SeekEntryResult!4755)

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!535457 (= res!330816 (= lt!245825 (Intermediate!4755 false resIndex!32 resX!32)))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33910 (_ BitVec 32)) SeekEntryResult!4755)

(assert (=> b!535457 (= lt!245825 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16290 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!535458 () Bool)

(assert (=> b!535458 (= e!311007 e!311008)))

(declare-fun res!330815 () Bool)

(assert (=> b!535458 (=> (not res!330815) (not e!311008))))

(declare-fun lt!245824 () SeekEntryResult!4755)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!535458 (= res!330815 (or (= lt!245824 (MissingZero!4755 i!1153)) (= lt!245824 (MissingVacant!4755 i!1153))))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33910 (_ BitVec 32)) SeekEntryResult!4755)

(assert (=> b!535458 (= lt!245824 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!535460 () Bool)

(declare-fun res!330818 () Bool)

(assert (=> b!535460 (=> (not res!330818) (not e!311008))))

(assert (=> b!535460 (= res!330818 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16654 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16654 a!3154)) (= (select (arr!16290 a!3154) resIndex!32) (select (arr!16290 a!3154) j!147))))))

(declare-fun b!535461 () Bool)

(declare-fun res!330811 () Bool)

(assert (=> b!535461 (=> (not res!330811) (not e!311006))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!535461 (= res!330811 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16290 a!3154) j!147) mask!3216) (select (arr!16290 a!3154) j!147) a!3154 mask!3216) lt!245825))))

(declare-fun b!535462 () Bool)

(declare-fun res!330814 () Bool)

(assert (=> b!535462 (=> (not res!330814) (not e!311008))))

(declare-datatypes ((List!10462 0))(
  ( (Nil!10459) (Cons!10458 (h!11401 (_ BitVec 64)) (t!16698 List!10462)) )
))
(declare-fun arrayNoDuplicates!0 (array!33910 (_ BitVec 32) List!10462) Bool)

(assert (=> b!535462 (= res!330814 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10459))))

(declare-fun b!535463 () Bool)

(declare-fun res!330813 () Bool)

(assert (=> b!535463 (=> (not res!330813) (not e!311008))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33910 (_ BitVec 32)) Bool)

(assert (=> b!535463 (= res!330813 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!535464 () Bool)

(declare-fun res!330812 () Bool)

(assert (=> b!535464 (=> (not res!330812) (not e!311007))))

(declare-fun arrayContainsKey!0 (array!33910 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!535464 (= res!330812 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun res!330821 () Bool)

(assert (=> start!48742 (=> (not res!330821) (not e!311007))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48742 (= res!330821 (validMask!0 mask!3216))))

(assert (=> start!48742 e!311007))

(assert (=> start!48742 true))

(declare-fun array_inv!12064 (array!33910) Bool)

(assert (=> start!48742 (array_inv!12064 a!3154)))

(declare-fun b!535459 () Bool)

(declare-fun res!330819 () Bool)

(assert (=> b!535459 (=> (not res!330819) (not e!311007))))

(assert (=> b!535459 (= res!330819 (and (= (size!16654 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16654 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16654 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!535465 () Bool)

(assert (=> b!535465 (= e!311006 (and (not (= (select (arr!16290 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16290 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16290 a!3154) index!1177) (select (arr!16290 a!3154) j!147))) (bvsge mask!3216 #b00000000000000000000000000000000) (bvslt index!1177 (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsgt x!1030 #b01111111111111111111111111111110)))))

(declare-fun b!535466 () Bool)

(declare-fun res!330817 () Bool)

(assert (=> b!535466 (=> (not res!330817) (not e!311007))))

(assert (=> b!535466 (= res!330817 (validKeyInArray!0 k!1998))))

(assert (= (and start!48742 res!330821) b!535459))

(assert (= (and b!535459 res!330819) b!535456))

(assert (= (and b!535456 res!330820) b!535466))

(assert (= (and b!535466 res!330817) b!535464))

(assert (= (and b!535464 res!330812) b!535458))

(assert (= (and b!535458 res!330815) b!535463))

(assert (= (and b!535463 res!330813) b!535462))

(assert (= (and b!535462 res!330814) b!535460))

(assert (= (and b!535460 res!330818) b!535457))

(assert (= (and b!535457 res!330816) b!535461))

(assert (= (and b!535461 res!330811) b!535465))

(declare-fun m!515047 () Bool)

(assert (=> b!535466 m!515047))

(declare-fun m!515049 () Bool)

(assert (=> b!535464 m!515049))

(declare-fun m!515051 () Bool)

(assert (=> b!535462 m!515051))

(declare-fun m!515053 () Bool)

(assert (=> b!535463 m!515053))

(declare-fun m!515055 () Bool)

(assert (=> b!535456 m!515055))

(assert (=> b!535456 m!515055))

(declare-fun m!515057 () Bool)

(assert (=> b!535456 m!515057))

(declare-fun m!515059 () Bool)

(assert (=> b!535465 m!515059))

(assert (=> b!535465 m!515055))

(declare-fun m!515061 () Bool)

(assert (=> start!48742 m!515061))

(declare-fun m!515063 () Bool)

(assert (=> start!48742 m!515063))

(declare-fun m!515065 () Bool)

(assert (=> b!535458 m!515065))

(declare-fun m!515067 () Bool)

(assert (=> b!535460 m!515067))

(assert (=> b!535460 m!515055))

(assert (=> b!535457 m!515055))

(assert (=> b!535457 m!515055))

(declare-fun m!515069 () Bool)

(assert (=> b!535457 m!515069))

(assert (=> b!535461 m!515055))

(assert (=> b!535461 m!515055))

(declare-fun m!515071 () Bool)

(assert (=> b!535461 m!515071))

(assert (=> b!535461 m!515071))

(assert (=> b!535461 m!515055))

(declare-fun m!515073 () Bool)

(assert (=> b!535461 m!515073))

(push 1)

