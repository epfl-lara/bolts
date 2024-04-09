; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48772 () Bool)

(assert start!48772)

(declare-fun res!331389 () Bool)

(declare-fun e!311225 () Bool)

(assert (=> start!48772 (=> (not res!331389) (not e!311225))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48772 (= res!331389 (validMask!0 mask!3216))))

(assert (=> start!48772 e!311225))

(assert (=> start!48772 true))

(declare-datatypes ((array!33940 0))(
  ( (array!33941 (arr!16305 (Array (_ BitVec 32) (_ BitVec 64))) (size!16669 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33940)

(declare-fun array_inv!12079 (array!33940) Bool)

(assert (=> start!48772 (array_inv!12079 a!3154)))

(declare-fun b!536027 () Bool)

(declare-fun res!331383 () Bool)

(declare-fun e!311226 () Bool)

(assert (=> b!536027 (=> (not res!331383) (not e!311226))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(assert (=> b!536027 (= res!331383 (and (not (= (select (arr!16305 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16305 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16305 a!3154) index!1177) (select (arr!16305 a!3154) j!147)))))))

(declare-fun b!536028 () Bool)

(declare-fun res!331386 () Bool)

(assert (=> b!536028 (=> (not res!331386) (not e!311225))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!536028 (= res!331386 (validKeyInArray!0 (select (arr!16305 a!3154) j!147)))))

(declare-fun b!536029 () Bool)

(declare-fun res!331384 () Bool)

(declare-fun e!311227 () Bool)

(assert (=> b!536029 (=> (not res!331384) (not e!311227))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33940 (_ BitVec 32)) Bool)

(assert (=> b!536029 (= res!331384 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!536030 () Bool)

(declare-fun e!311224 () Bool)

(assert (=> b!536030 (= e!311224 false)))

(declare-fun x!1030 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4770 0))(
  ( (MissingZero!4770 (index!21304 (_ BitVec 32))) (Found!4770 (index!21305 (_ BitVec 32))) (Intermediate!4770 (undefined!5582 Bool) (index!21306 (_ BitVec 32)) (x!50276 (_ BitVec 32))) (Undefined!4770) (MissingVacant!4770 (index!21307 (_ BitVec 32))) )
))
(declare-fun lt!245991 () SeekEntryResult!4770)

(declare-fun lt!245990 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33940 (_ BitVec 32)) SeekEntryResult!4770)

(assert (=> b!536030 (= lt!245991 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!245990 (select (arr!16305 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!536031 () Bool)

(assert (=> b!536031 (= e!311225 e!311227)))

(declare-fun res!331392 () Bool)

(assert (=> b!536031 (=> (not res!331392) (not e!311227))))

(declare-fun lt!245993 () SeekEntryResult!4770)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!536031 (= res!331392 (or (= lt!245993 (MissingZero!4770 i!1153)) (= lt!245993 (MissingVacant!4770 i!1153))))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33940 (_ BitVec 32)) SeekEntryResult!4770)

(assert (=> b!536031 (= lt!245993 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!536032 () Bool)

(declare-fun res!331394 () Bool)

(assert (=> b!536032 (=> (not res!331394) (not e!311226))))

(declare-fun lt!245992 () SeekEntryResult!4770)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!536032 (= res!331394 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16305 a!3154) j!147) mask!3216) (select (arr!16305 a!3154) j!147) a!3154 mask!3216) lt!245992))))

(declare-fun b!536033 () Bool)

(declare-fun res!331393 () Bool)

(assert (=> b!536033 (=> (not res!331393) (not e!311225))))

(declare-fun arrayContainsKey!0 (array!33940 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!536033 (= res!331393 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!536034 () Bool)

(declare-fun res!331387 () Bool)

(assert (=> b!536034 (=> (not res!331387) (not e!311225))))

(assert (=> b!536034 (= res!331387 (validKeyInArray!0 k!1998))))

(declare-fun b!536035 () Bool)

(declare-fun res!331385 () Bool)

(assert (=> b!536035 (=> (not res!331385) (not e!311227))))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!536035 (= res!331385 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16669 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16669 a!3154)) (= (select (arr!16305 a!3154) resIndex!32) (select (arr!16305 a!3154) j!147))))))

(declare-fun b!536036 () Bool)

(declare-fun res!331382 () Bool)

(assert (=> b!536036 (=> (not res!331382) (not e!311225))))

(assert (=> b!536036 (= res!331382 (and (= (size!16669 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16669 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16669 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!536037 () Bool)

(assert (=> b!536037 (= e!311226 e!311224)))

(declare-fun res!331390 () Bool)

(assert (=> b!536037 (=> (not res!331390) (not e!311224))))

(assert (=> b!536037 (= res!331390 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1030) resX!32) (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b00000000000000000000000000000000) (bvsge lt!245990 #b00000000000000000000000000000000) (bvslt lt!245990 (size!16669 a!3154))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!536037 (= lt!245990 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!536038 () Bool)

(declare-fun res!331391 () Bool)

(assert (=> b!536038 (=> (not res!331391) (not e!311227))))

(declare-datatypes ((List!10477 0))(
  ( (Nil!10474) (Cons!10473 (h!11416 (_ BitVec 64)) (t!16713 List!10477)) )
))
(declare-fun arrayNoDuplicates!0 (array!33940 (_ BitVec 32) List!10477) Bool)

(assert (=> b!536038 (= res!331391 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10474))))

(declare-fun b!536039 () Bool)

(assert (=> b!536039 (= e!311227 e!311226)))

(declare-fun res!331388 () Bool)

(assert (=> b!536039 (=> (not res!331388) (not e!311226))))

(assert (=> b!536039 (= res!331388 (= lt!245992 (Intermediate!4770 false resIndex!32 resX!32)))))

(assert (=> b!536039 (= lt!245992 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16305 a!3154) j!147) a!3154 mask!3216))))

(assert (= (and start!48772 res!331389) b!536036))

(assert (= (and b!536036 res!331382) b!536028))

(assert (= (and b!536028 res!331386) b!536034))

(assert (= (and b!536034 res!331387) b!536033))

(assert (= (and b!536033 res!331393) b!536031))

(assert (= (and b!536031 res!331392) b!536029))

(assert (= (and b!536029 res!331384) b!536038))

(assert (= (and b!536038 res!331391) b!536035))

(assert (= (and b!536035 res!331385) b!536039))

(assert (= (and b!536039 res!331388) b!536032))

(assert (= (and b!536032 res!331394) b!536027))

(assert (= (and b!536027 res!331383) b!536037))

(assert (= (and b!536037 res!331390) b!536030))

(declare-fun m!515515 () Bool)

(assert (=> start!48772 m!515515))

(declare-fun m!515517 () Bool)

(assert (=> start!48772 m!515517))

(declare-fun m!515519 () Bool)

(assert (=> b!536028 m!515519))

(assert (=> b!536028 m!515519))

(declare-fun m!515521 () Bool)

(assert (=> b!536028 m!515521))

(declare-fun m!515523 () Bool)

(assert (=> b!536027 m!515523))

(assert (=> b!536027 m!515519))

(declare-fun m!515525 () Bool)

(assert (=> b!536037 m!515525))

(assert (=> b!536039 m!515519))

(assert (=> b!536039 m!515519))

(declare-fun m!515527 () Bool)

(assert (=> b!536039 m!515527))

(assert (=> b!536030 m!515519))

(assert (=> b!536030 m!515519))

(declare-fun m!515529 () Bool)

(assert (=> b!536030 m!515529))

(declare-fun m!515531 () Bool)

(assert (=> b!536029 m!515531))

(declare-fun m!515533 () Bool)

(assert (=> b!536031 m!515533))

(declare-fun m!515535 () Bool)

(assert (=> b!536038 m!515535))

(declare-fun m!515537 () Bool)

(assert (=> b!536035 m!515537))

(assert (=> b!536035 m!515519))

(assert (=> b!536032 m!515519))

(assert (=> b!536032 m!515519))

(declare-fun m!515539 () Bool)

(assert (=> b!536032 m!515539))

(assert (=> b!536032 m!515539))

(assert (=> b!536032 m!515519))

(declare-fun m!515541 () Bool)

(assert (=> b!536032 m!515541))

(declare-fun m!515543 () Bool)

(assert (=> b!536033 m!515543))

(declare-fun m!515545 () Bool)

(assert (=> b!536034 m!515545))

(push 1)

