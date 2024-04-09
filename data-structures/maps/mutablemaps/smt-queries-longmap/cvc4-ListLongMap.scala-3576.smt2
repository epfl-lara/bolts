; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49208 () Bool)

(assert start!49208)

(declare-fun b!541481 () Bool)

(declare-fun res!336360 () Bool)

(declare-fun e!313525 () Bool)

(assert (=> b!541481 (=> (not res!336360) (not e!313525))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!541481 (= res!336360 (validKeyInArray!0 k!1998))))

(declare-fun b!541482 () Bool)

(declare-fun res!336366 () Bool)

(assert (=> b!541482 (=> (not res!336366) (not e!313525))))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!34223 0))(
  ( (array!34224 (arr!16442 (Array (_ BitVec 32) (_ BitVec 64))) (size!16806 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34223)

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!541482 (= res!336366 (and (= (size!16806 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16806 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16806 a!3154)) (not (= i!1153 j!147))))))

(declare-fun res!336367 () Bool)

(assert (=> start!49208 (=> (not res!336367) (not e!313525))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49208 (= res!336367 (validMask!0 mask!3216))))

(assert (=> start!49208 e!313525))

(assert (=> start!49208 true))

(declare-fun array_inv!12216 (array!34223) Bool)

(assert (=> start!49208 (array_inv!12216 a!3154)))

(declare-fun b!541483 () Bool)

(declare-fun res!336361 () Bool)

(declare-fun e!313524 () Bool)

(assert (=> b!541483 (=> (not res!336361) (not e!313524))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!541483 (= res!336361 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16806 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16806 a!3154)) (= (select (arr!16442 a!3154) resIndex!32) (select (arr!16442 a!3154) j!147))))))

(declare-fun b!541484 () Bool)

(declare-fun res!336364 () Bool)

(assert (=> b!541484 (=> (not res!336364) (not e!313525))))

(assert (=> b!541484 (= res!336364 (validKeyInArray!0 (select (arr!16442 a!3154) j!147)))))

(declare-fun b!541485 () Bool)

(assert (=> b!541485 (= e!313524 false)))

(declare-datatypes ((SeekEntryResult!4907 0))(
  ( (MissingZero!4907 (index!21852 (_ BitVec 32))) (Found!4907 (index!21853 (_ BitVec 32))) (Intermediate!4907 (undefined!5719 Bool) (index!21854 (_ BitVec 32)) (x!50791 (_ BitVec 32))) (Undefined!4907) (MissingVacant!4907 (index!21855 (_ BitVec 32))) )
))
(declare-fun lt!247673 () SeekEntryResult!4907)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34223 (_ BitVec 32)) SeekEntryResult!4907)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!541485 (= lt!247673 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16442 a!3154) j!147) mask!3216) (select (arr!16442 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!541486 () Bool)

(declare-fun res!336368 () Bool)

(assert (=> b!541486 (=> (not res!336368) (not e!313524))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34223 (_ BitVec 32)) Bool)

(assert (=> b!541486 (= res!336368 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!541487 () Bool)

(declare-fun res!336359 () Bool)

(assert (=> b!541487 (=> (not res!336359) (not e!313524))))

(assert (=> b!541487 (= res!336359 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16442 a!3154) j!147) a!3154 mask!3216) (Intermediate!4907 false resIndex!32 resX!32)))))

(declare-fun b!541488 () Bool)

(assert (=> b!541488 (= e!313525 e!313524)))

(declare-fun res!336365 () Bool)

(assert (=> b!541488 (=> (not res!336365) (not e!313524))))

(declare-fun lt!247672 () SeekEntryResult!4907)

(assert (=> b!541488 (= res!336365 (or (= lt!247672 (MissingZero!4907 i!1153)) (= lt!247672 (MissingVacant!4907 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34223 (_ BitVec 32)) SeekEntryResult!4907)

(assert (=> b!541488 (= lt!247672 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!541489 () Bool)

(declare-fun res!336363 () Bool)

(assert (=> b!541489 (=> (not res!336363) (not e!313525))))

(declare-fun arrayContainsKey!0 (array!34223 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!541489 (= res!336363 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!541490 () Bool)

(declare-fun res!336362 () Bool)

(assert (=> b!541490 (=> (not res!336362) (not e!313524))))

(declare-datatypes ((List!10614 0))(
  ( (Nil!10611) (Cons!10610 (h!11562 (_ BitVec 64)) (t!16850 List!10614)) )
))
(declare-fun arrayNoDuplicates!0 (array!34223 (_ BitVec 32) List!10614) Bool)

(assert (=> b!541490 (= res!336362 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10611))))

(assert (= (and start!49208 res!336367) b!541482))

(assert (= (and b!541482 res!336366) b!541484))

(assert (= (and b!541484 res!336364) b!541481))

(assert (= (and b!541481 res!336360) b!541489))

(assert (= (and b!541489 res!336363) b!541488))

(assert (= (and b!541488 res!336365) b!541486))

(assert (= (and b!541486 res!336368) b!541490))

(assert (= (and b!541490 res!336362) b!541483))

(assert (= (and b!541483 res!336361) b!541487))

(assert (= (and b!541487 res!336359) b!541485))

(declare-fun m!519971 () Bool)

(assert (=> b!541486 m!519971))

(declare-fun m!519973 () Bool)

(assert (=> b!541490 m!519973))

(declare-fun m!519975 () Bool)

(assert (=> b!541487 m!519975))

(assert (=> b!541487 m!519975))

(declare-fun m!519977 () Bool)

(assert (=> b!541487 m!519977))

(declare-fun m!519979 () Bool)

(assert (=> b!541481 m!519979))

(declare-fun m!519981 () Bool)

(assert (=> start!49208 m!519981))

(declare-fun m!519983 () Bool)

(assert (=> start!49208 m!519983))

(declare-fun m!519985 () Bool)

(assert (=> b!541488 m!519985))

(assert (=> b!541485 m!519975))

(assert (=> b!541485 m!519975))

(declare-fun m!519987 () Bool)

(assert (=> b!541485 m!519987))

(assert (=> b!541485 m!519987))

(assert (=> b!541485 m!519975))

(declare-fun m!519989 () Bool)

(assert (=> b!541485 m!519989))

(declare-fun m!519991 () Bool)

(assert (=> b!541483 m!519991))

(assert (=> b!541483 m!519975))

(declare-fun m!519993 () Bool)

(assert (=> b!541489 m!519993))

(assert (=> b!541484 m!519975))

(assert (=> b!541484 m!519975))

(declare-fun m!519995 () Bool)

(assert (=> b!541484 m!519995))

(push 1)

