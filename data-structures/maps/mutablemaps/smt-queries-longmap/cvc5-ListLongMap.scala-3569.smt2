; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49108 () Bool)

(assert start!49108)

(declare-fun b!540521 () Bool)

(declare-fun res!335565 () Bool)

(declare-fun e!313140 () Bool)

(assert (=> b!540521 (=> (not res!335565) (not e!313140))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!34174 0))(
  ( (array!34175 (arr!16419 (Array (_ BitVec 32) (_ BitVec 64))) (size!16783 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34174)

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!540521 (= res!335565 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16783 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16783 a!3154)) (= (select (arr!16419 a!3154) resIndex!32) (select (arr!16419 a!3154) j!147))))))

(declare-fun b!540522 () Bool)

(declare-fun res!335559 () Bool)

(declare-fun e!313139 () Bool)

(assert (=> b!540522 (=> (not res!335559) (not e!313139))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!540522 (= res!335559 (validKeyInArray!0 (select (arr!16419 a!3154) j!147)))))

(declare-fun b!540523 () Bool)

(declare-fun res!335560 () Bool)

(assert (=> b!540523 (=> (not res!335560) (not e!313140))))

(declare-datatypes ((List!10591 0))(
  ( (Nil!10588) (Cons!10587 (h!11536 (_ BitVec 64)) (t!16827 List!10591)) )
))
(declare-fun arrayNoDuplicates!0 (array!34174 (_ BitVec 32) List!10591) Bool)

(assert (=> b!540523 (= res!335560 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10588))))

(declare-fun b!540524 () Bool)

(declare-fun res!335558 () Bool)

(assert (=> b!540524 (=> (not res!335558) (not e!313140))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4884 0))(
  ( (MissingZero!4884 (index!21760 (_ BitVec 32))) (Found!4884 (index!21761 (_ BitVec 32))) (Intermediate!4884 (undefined!5696 Bool) (index!21762 (_ BitVec 32)) (x!50706 (_ BitVec 32))) (Undefined!4884) (MissingVacant!4884 (index!21763 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34174 (_ BitVec 32)) SeekEntryResult!4884)

(assert (=> b!540524 (= res!335558 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16419 a!3154) j!147) a!3154 mask!3216) (Intermediate!4884 false resIndex!32 resX!32)))))

(declare-fun b!540525 () Bool)

(declare-fun res!335563 () Bool)

(assert (=> b!540525 (=> (not res!335563) (not e!313139))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!540525 (= res!335563 (and (= (size!16783 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16783 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16783 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!540526 () Bool)

(declare-fun res!335566 () Bool)

(assert (=> b!540526 (=> (not res!335566) (not e!313139))))

(declare-fun k!1998 () (_ BitVec 64))

(assert (=> b!540526 (= res!335566 (validKeyInArray!0 k!1998))))

(declare-fun b!540527 () Bool)

(assert (=> b!540527 (= e!313139 e!313140)))

(declare-fun res!335562 () Bool)

(assert (=> b!540527 (=> (not res!335562) (not e!313140))))

(declare-fun lt!247438 () SeekEntryResult!4884)

(assert (=> b!540527 (= res!335562 (or (= lt!247438 (MissingZero!4884 i!1153)) (= lt!247438 (MissingVacant!4884 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34174 (_ BitVec 32)) SeekEntryResult!4884)

(assert (=> b!540527 (= lt!247438 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!540528 () Bool)

(declare-fun res!335561 () Bool)

(assert (=> b!540528 (=> (not res!335561) (not e!313140))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34174 (_ BitVec 32)) Bool)

(assert (=> b!540528 (= res!335561 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun res!335564 () Bool)

(assert (=> start!49108 (=> (not res!335564) (not e!313139))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49108 (= res!335564 (validMask!0 mask!3216))))

(assert (=> start!49108 e!313139))

(assert (=> start!49108 true))

(declare-fun array_inv!12193 (array!34174) Bool)

(assert (=> start!49108 (array_inv!12193 a!3154)))

(declare-fun b!540529 () Bool)

(assert (=> b!540529 (= e!313140 false)))

(declare-fun lt!247439 () SeekEntryResult!4884)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!540529 (= lt!247439 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16419 a!3154) j!147) mask!3216) (select (arr!16419 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!540530 () Bool)

(declare-fun res!335567 () Bool)

(assert (=> b!540530 (=> (not res!335567) (not e!313139))))

(declare-fun arrayContainsKey!0 (array!34174 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!540530 (= res!335567 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(assert (= (and start!49108 res!335564) b!540525))

(assert (= (and b!540525 res!335563) b!540522))

(assert (= (and b!540522 res!335559) b!540526))

(assert (= (and b!540526 res!335566) b!540530))

(assert (= (and b!540530 res!335567) b!540527))

(assert (= (and b!540527 res!335562) b!540528))

(assert (= (and b!540528 res!335561) b!540523))

(assert (= (and b!540523 res!335560) b!540521))

(assert (= (and b!540521 res!335565) b!540524))

(assert (= (and b!540524 res!335558) b!540529))

(declare-fun m!519229 () Bool)

(assert (=> b!540521 m!519229))

(declare-fun m!519231 () Bool)

(assert (=> b!540521 m!519231))

(declare-fun m!519233 () Bool)

(assert (=> b!540523 m!519233))

(declare-fun m!519235 () Bool)

(assert (=> b!540528 m!519235))

(declare-fun m!519237 () Bool)

(assert (=> b!540530 m!519237))

(assert (=> b!540529 m!519231))

(assert (=> b!540529 m!519231))

(declare-fun m!519239 () Bool)

(assert (=> b!540529 m!519239))

(assert (=> b!540529 m!519239))

(assert (=> b!540529 m!519231))

(declare-fun m!519241 () Bool)

(assert (=> b!540529 m!519241))

(assert (=> b!540524 m!519231))

(assert (=> b!540524 m!519231))

(declare-fun m!519243 () Bool)

(assert (=> b!540524 m!519243))

(declare-fun m!519245 () Bool)

(assert (=> b!540526 m!519245))

(declare-fun m!519247 () Bool)

(assert (=> b!540527 m!519247))

(declare-fun m!519249 () Bool)

(assert (=> start!49108 m!519249))

(declare-fun m!519251 () Bool)

(assert (=> start!49108 m!519251))

(assert (=> b!540522 m!519231))

(assert (=> b!540522 m!519231))

(declare-fun m!519253 () Bool)

(assert (=> b!540522 m!519253))

(push 1)

