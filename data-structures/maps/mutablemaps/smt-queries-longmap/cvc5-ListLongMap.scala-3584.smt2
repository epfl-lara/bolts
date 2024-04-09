; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49306 () Bool)

(assert start!49306)

(declare-fun b!542523 () Bool)

(declare-fun res!337225 () Bool)

(declare-fun e!313952 () Bool)

(assert (=> b!542523 (=> (not res!337225) (not e!313952))))

(declare-datatypes ((array!34270 0))(
  ( (array!34271 (arr!16464 (Array (_ BitVec 32) (_ BitVec 64))) (size!16828 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34270)

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34270 (_ BitVec 32)) Bool)

(assert (=> b!542523 (= res!337225 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!542524 () Bool)

(declare-fun e!313953 () Bool)

(assert (=> b!542524 (= e!313953 false)))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun lt!247955 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!542524 (= lt!247955 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun res!337233 () Bool)

(declare-fun e!313954 () Bool)

(assert (=> start!49306 (=> (not res!337233) (not e!313954))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49306 (= res!337233 (validMask!0 mask!3216))))

(assert (=> start!49306 e!313954))

(assert (=> start!49306 true))

(declare-fun array_inv!12238 (array!34270) Bool)

(assert (=> start!49306 (array_inv!12238 a!3154)))

(declare-fun b!542525 () Bool)

(declare-fun res!337226 () Bool)

(assert (=> b!542525 (=> (not res!337226) (not e!313953))))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4929 0))(
  ( (MissingZero!4929 (index!21940 (_ BitVec 32))) (Found!4929 (index!21941 (_ BitVec 32))) (Intermediate!4929 (undefined!5741 Bool) (index!21942 (_ BitVec 32)) (x!50883 (_ BitVec 32))) (Undefined!4929) (MissingVacant!4929 (index!21943 (_ BitVec 32))) )
))
(declare-fun lt!247953 () SeekEntryResult!4929)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34270 (_ BitVec 32)) SeekEntryResult!4929)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!542525 (= res!337226 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16464 a!3154) j!147) mask!3216) (select (arr!16464 a!3154) j!147) a!3154 mask!3216) lt!247953))))

(declare-fun b!542526 () Bool)

(declare-fun res!337228 () Bool)

(assert (=> b!542526 (=> (not res!337228) (not e!313953))))

(assert (=> b!542526 (= res!337228 (and (not (= (select (arr!16464 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16464 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16464 a!3154) index!1177) (select (arr!16464 a!3154) j!147)))))))

(declare-fun b!542527 () Bool)

(declare-fun res!337234 () Bool)

(assert (=> b!542527 (=> (not res!337234) (not e!313954))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34270 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!542527 (= res!337234 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!542528 () Bool)

(declare-fun res!337224 () Bool)

(assert (=> b!542528 (=> (not res!337224) (not e!313954))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!542528 (= res!337224 (and (= (size!16828 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16828 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16828 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!542529 () Bool)

(declare-fun res!337229 () Bool)

(assert (=> b!542529 (=> (not res!337229) (not e!313952))))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!542529 (= res!337229 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16828 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16828 a!3154)) (= (select (arr!16464 a!3154) resIndex!32) (select (arr!16464 a!3154) j!147))))))

(declare-fun b!542530 () Bool)

(assert (=> b!542530 (= e!313954 e!313952)))

(declare-fun res!337235 () Bool)

(assert (=> b!542530 (=> (not res!337235) (not e!313952))))

(declare-fun lt!247954 () SeekEntryResult!4929)

(assert (=> b!542530 (= res!337235 (or (= lt!247954 (MissingZero!4929 i!1153)) (= lt!247954 (MissingVacant!4929 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34270 (_ BitVec 32)) SeekEntryResult!4929)

(assert (=> b!542530 (= lt!247954 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!542531 () Bool)

(declare-fun res!337227 () Bool)

(assert (=> b!542531 (=> (not res!337227) (not e!313952))))

(declare-datatypes ((List!10636 0))(
  ( (Nil!10633) (Cons!10632 (h!11587 (_ BitVec 64)) (t!16872 List!10636)) )
))
(declare-fun arrayNoDuplicates!0 (array!34270 (_ BitVec 32) List!10636) Bool)

(assert (=> b!542531 (= res!337227 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10633))))

(declare-fun b!542532 () Bool)

(declare-fun res!337230 () Bool)

(assert (=> b!542532 (=> (not res!337230) (not e!313954))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!542532 (= res!337230 (validKeyInArray!0 (select (arr!16464 a!3154) j!147)))))

(declare-fun b!542533 () Bool)

(declare-fun res!337232 () Bool)

(assert (=> b!542533 (=> (not res!337232) (not e!313954))))

(assert (=> b!542533 (= res!337232 (validKeyInArray!0 k!1998))))

(declare-fun b!542534 () Bool)

(assert (=> b!542534 (= e!313952 e!313953)))

(declare-fun res!337231 () Bool)

(assert (=> b!542534 (=> (not res!337231) (not e!313953))))

(assert (=> b!542534 (= res!337231 (= lt!247953 (Intermediate!4929 false resIndex!32 resX!32)))))

(assert (=> b!542534 (= lt!247953 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16464 a!3154) j!147) a!3154 mask!3216))))

(assert (= (and start!49306 res!337233) b!542528))

(assert (= (and b!542528 res!337224) b!542532))

(assert (= (and b!542532 res!337230) b!542533))

(assert (= (and b!542533 res!337232) b!542527))

(assert (= (and b!542527 res!337234) b!542530))

(assert (= (and b!542530 res!337235) b!542523))

(assert (= (and b!542523 res!337225) b!542531))

(assert (= (and b!542531 res!337227) b!542529))

(assert (= (and b!542529 res!337229) b!542534))

(assert (= (and b!542534 res!337231) b!542525))

(assert (= (and b!542525 res!337226) b!542526))

(assert (= (and b!542526 res!337228) b!542524))

(declare-fun m!520771 () Bool)

(assert (=> b!542526 m!520771))

(declare-fun m!520773 () Bool)

(assert (=> b!542526 m!520773))

(declare-fun m!520775 () Bool)

(assert (=> b!542527 m!520775))

(declare-fun m!520777 () Bool)

(assert (=> b!542530 m!520777))

(declare-fun m!520779 () Bool)

(assert (=> start!49306 m!520779))

(declare-fun m!520781 () Bool)

(assert (=> start!49306 m!520781))

(declare-fun m!520783 () Bool)

(assert (=> b!542533 m!520783))

(assert (=> b!542532 m!520773))

(assert (=> b!542532 m!520773))

(declare-fun m!520785 () Bool)

(assert (=> b!542532 m!520785))

(assert (=> b!542525 m!520773))

(assert (=> b!542525 m!520773))

(declare-fun m!520787 () Bool)

(assert (=> b!542525 m!520787))

(assert (=> b!542525 m!520787))

(assert (=> b!542525 m!520773))

(declare-fun m!520789 () Bool)

(assert (=> b!542525 m!520789))

(declare-fun m!520791 () Bool)

(assert (=> b!542523 m!520791))

(declare-fun m!520793 () Bool)

(assert (=> b!542524 m!520793))

(declare-fun m!520795 () Bool)

(assert (=> b!542529 m!520795))

(assert (=> b!542529 m!520773))

(declare-fun m!520797 () Bool)

(assert (=> b!542531 m!520797))

(assert (=> b!542534 m!520773))

(assert (=> b!542534 m!520773))

(declare-fun m!520799 () Bool)

(assert (=> b!542534 m!520799))

(push 1)

