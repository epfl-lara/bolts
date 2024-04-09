; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48940 () Bool)

(assert start!48940)

(declare-fun b!539079 () Bool)

(declare-fun res!334436 () Bool)

(declare-fun e!312507 () Bool)

(assert (=> b!539079 (=> (not res!334436) (not e!312507))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!34108 0))(
  ( (array!34109 (arr!16389 (Array (_ BitVec 32) (_ BitVec 64))) (size!16753 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34108)

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!539079 (= res!334436 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16753 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16753 a!3154)) (= (select (arr!16389 a!3154) resIndex!32) (select (arr!16389 a!3154) j!147))))))

(declare-fun b!539080 () Bool)

(declare-fun res!334442 () Bool)

(declare-fun e!312506 () Bool)

(assert (=> b!539080 (=> (not res!334442) (not e!312506))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!539080 (= res!334442 (validKeyInArray!0 (select (arr!16389 a!3154) j!147)))))

(declare-fun b!539081 () Bool)

(declare-fun res!334435 () Bool)

(assert (=> b!539081 (=> (not res!334435) (not e!312506))))

(declare-fun k!1998 () (_ BitVec 64))

(assert (=> b!539081 (= res!334435 (validKeyInArray!0 k!1998))))

(declare-fun b!539082 () Bool)

(declare-fun res!334434 () Bool)

(assert (=> b!539082 (=> (not res!334434) (not e!312507))))

(declare-datatypes ((List!10561 0))(
  ( (Nil!10558) (Cons!10557 (h!11500 (_ BitVec 64)) (t!16797 List!10561)) )
))
(declare-fun arrayNoDuplicates!0 (array!34108 (_ BitVec 32) List!10561) Bool)

(assert (=> b!539082 (= res!334434 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10558))))

(declare-fun b!539083 () Bool)

(declare-fun res!334437 () Bool)

(assert (=> b!539083 (=> (not res!334437) (not e!312506))))

(declare-fun arrayContainsKey!0 (array!34108 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!539083 (= res!334437 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!539084 () Bool)

(assert (=> b!539084 (= e!312507 false)))

(declare-datatypes ((SeekEntryResult!4854 0))(
  ( (MissingZero!4854 (index!21640 (_ BitVec 32))) (Found!4854 (index!21641 (_ BitVec 32))) (Intermediate!4854 (undefined!5666 Bool) (index!21642 (_ BitVec 32)) (x!50584 (_ BitVec 32))) (Undefined!4854) (MissingVacant!4854 (index!21643 (_ BitVec 32))) )
))
(declare-fun lt!247066 () SeekEntryResult!4854)

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34108 (_ BitVec 32)) SeekEntryResult!4854)

(assert (=> b!539084 (= lt!247066 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16389 a!3154) j!147) a!3154 mask!3216))))

(declare-fun res!334439 () Bool)

(assert (=> start!48940 (=> (not res!334439) (not e!312506))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48940 (= res!334439 (validMask!0 mask!3216))))

(assert (=> start!48940 e!312506))

(assert (=> start!48940 true))

(declare-fun array_inv!12163 (array!34108) Bool)

(assert (=> start!48940 (array_inv!12163 a!3154)))

(declare-fun b!539085 () Bool)

(declare-fun res!334441 () Bool)

(assert (=> b!539085 (=> (not res!334441) (not e!312507))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34108 (_ BitVec 32)) Bool)

(assert (=> b!539085 (= res!334441 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!539086 () Bool)

(declare-fun res!334438 () Bool)

(assert (=> b!539086 (=> (not res!334438) (not e!312506))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!539086 (= res!334438 (and (= (size!16753 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16753 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16753 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!539087 () Bool)

(assert (=> b!539087 (= e!312506 e!312507)))

(declare-fun res!334440 () Bool)

(assert (=> b!539087 (=> (not res!334440) (not e!312507))))

(declare-fun lt!247067 () SeekEntryResult!4854)

(assert (=> b!539087 (= res!334440 (or (= lt!247067 (MissingZero!4854 i!1153)) (= lt!247067 (MissingVacant!4854 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34108 (_ BitVec 32)) SeekEntryResult!4854)

(assert (=> b!539087 (= lt!247067 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(assert (= (and start!48940 res!334439) b!539086))

(assert (= (and b!539086 res!334438) b!539080))

(assert (= (and b!539080 res!334442) b!539081))

(assert (= (and b!539081 res!334435) b!539083))

(assert (= (and b!539083 res!334437) b!539087))

(assert (= (and b!539087 res!334440) b!539085))

(assert (= (and b!539085 res!334441) b!539082))

(assert (= (and b!539082 res!334434) b!539079))

(assert (= (and b!539079 res!334436) b!539084))

(declare-fun m!518173 () Bool)

(assert (=> b!539083 m!518173))

(declare-fun m!518175 () Bool)

(assert (=> b!539084 m!518175))

(assert (=> b!539084 m!518175))

(declare-fun m!518177 () Bool)

(assert (=> b!539084 m!518177))

(declare-fun m!518179 () Bool)

(assert (=> b!539085 m!518179))

(declare-fun m!518181 () Bool)

(assert (=> b!539082 m!518181))

(declare-fun m!518183 () Bool)

(assert (=> b!539079 m!518183))

(assert (=> b!539079 m!518175))

(declare-fun m!518185 () Bool)

(assert (=> start!48940 m!518185))

(declare-fun m!518187 () Bool)

(assert (=> start!48940 m!518187))

(assert (=> b!539080 m!518175))

(assert (=> b!539080 m!518175))

(declare-fun m!518189 () Bool)

(assert (=> b!539080 m!518189))

(declare-fun m!518191 () Bool)

(assert (=> b!539081 m!518191))

(declare-fun m!518193 () Bool)

(assert (=> b!539087 m!518193))

(push 1)

(assert (not b!539081))

(assert (not b!539080))

