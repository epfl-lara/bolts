; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49612 () Bool)

(assert start!49612)

(declare-fun b!545388 () Bool)

(declare-fun res!339474 () Bool)

(declare-fun e!315249 () Bool)

(assert (=> b!545388 (=> (not res!339474) (not e!315249))))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!34381 0))(
  ( (array!34382 (arr!16515 (Array (_ BitVec 32) (_ BitVec 64))) (size!16879 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34381)

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!545388 (= res!339474 (and (= (size!16879 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16879 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16879 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!545389 () Bool)

(declare-fun e!315247 () Bool)

(declare-fun e!315246 () Bool)

(assert (=> b!545389 (= e!315247 e!315246)))

(declare-fun res!339473 () Bool)

(assert (=> b!545389 (=> (not res!339473) (not e!315246))))

(declare-datatypes ((SeekEntryResult!4980 0))(
  ( (MissingZero!4980 (index!22144 (_ BitVec 32))) (Found!4980 (index!22145 (_ BitVec 32))) (Intermediate!4980 (undefined!5792 Bool) (index!22146 (_ BitVec 32)) (x!51103 (_ BitVec 32))) (Undefined!4980) (MissingVacant!4980 (index!22147 (_ BitVec 32))) )
))
(declare-fun lt!248859 () SeekEntryResult!4980)

(declare-fun lt!248861 () SeekEntryResult!4980)

(assert (=> b!545389 (= res!339473 (= lt!248859 lt!248861))))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!545389 (= lt!248861 (Intermediate!4980 false resIndex!32 resX!32))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34381 (_ BitVec 32)) SeekEntryResult!4980)

(assert (=> b!545389 (= lt!248859 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16515 a!3154) j!147) a!3154 mask!3216))))

(declare-fun res!339469 () Bool)

(assert (=> start!49612 (=> (not res!339469) (not e!315249))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49612 (= res!339469 (validMask!0 mask!3216))))

(assert (=> start!49612 e!315249))

(assert (=> start!49612 true))

(declare-fun array_inv!12289 (array!34381) Bool)

(assert (=> start!49612 (array_inv!12289 a!3154)))

(declare-fun b!545390 () Bool)

(assert (=> b!545390 (= e!315249 e!315247)))

(declare-fun res!339475 () Bool)

(assert (=> b!545390 (=> (not res!339475) (not e!315247))))

(declare-fun lt!248858 () SeekEntryResult!4980)

(assert (=> b!545390 (= res!339475 (or (= lt!248858 (MissingZero!4980 i!1153)) (= lt!248858 (MissingVacant!4980 i!1153))))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34381 (_ BitVec 32)) SeekEntryResult!4980)

(assert (=> b!545390 (= lt!248858 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!545391 () Bool)

(declare-fun res!339472 () Bool)

(assert (=> b!545391 (=> (not res!339472) (not e!315247))))

(assert (=> b!545391 (= res!339472 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16879 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16879 a!3154)) (= (select (arr!16515 a!3154) resIndex!32) (select (arr!16515 a!3154) j!147))))))

(declare-fun b!545392 () Bool)

(declare-fun e!315248 () Bool)

(assert (=> b!545392 (= e!315246 e!315248)))

(declare-fun res!339465 () Bool)

(assert (=> b!545392 (=> (not res!339465) (not e!315248))))

(declare-fun lt!248860 () SeekEntryResult!4980)

(assert (=> b!545392 (= res!339465 (and (= lt!248860 lt!248859) (not (= (select (arr!16515 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16515 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16515 a!3154) index!1177) (select (arr!16515 a!3154) j!147)))))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!545392 (= lt!248860 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16515 a!3154) j!147) mask!3216) (select (arr!16515 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!545393 () Bool)

(declare-fun res!339468 () Bool)

(assert (=> b!545393 (=> (not res!339468) (not e!315249))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!545393 (= res!339468 (validKeyInArray!0 (select (arr!16515 a!3154) j!147)))))

(declare-fun b!545394 () Bool)

(declare-fun e!315245 () Bool)

(assert (=> b!545394 (= e!315248 e!315245)))

(declare-fun res!339470 () Bool)

(assert (=> b!545394 (=> (not res!339470) (not e!315245))))

(declare-fun lt!248856 () (_ BitVec 32))

(assert (=> b!545394 (= res!339470 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1030) resX!32) (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b00000000000000000000000000000000) (bvsge lt!248856 #b00000000000000000000000000000000) (bvslt lt!248856 (size!16879 a!3154))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!545394 (= lt!248856 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!545395 () Bool)

(declare-fun res!339466 () Bool)

(assert (=> b!545395 (=> (not res!339466) (not e!315247))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34381 (_ BitVec 32)) Bool)

(assert (=> b!545395 (= res!339466 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun lt!248857 () SeekEntryResult!4980)

(declare-fun b!545396 () Bool)

(assert (=> b!545396 (= e!315245 (and (= lt!248857 lt!248861) (= lt!248860 lt!248857) (bvsge (bvsub #b01111111111111111111111111111110 (bvadd #b00000000000000000000000000000001 x!1030)) (bvsub #b01111111111111111111111111111110 x!1030))))))

(assert (=> b!545396 (= lt!248857 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!248856 (select (arr!16515 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!545397 () Bool)

(declare-fun res!339476 () Bool)

(assert (=> b!545397 (=> (not res!339476) (not e!315247))))

(declare-datatypes ((List!10687 0))(
  ( (Nil!10684) (Cons!10683 (h!11647 (_ BitVec 64)) (t!16923 List!10687)) )
))
(declare-fun arrayNoDuplicates!0 (array!34381 (_ BitVec 32) List!10687) Bool)

(assert (=> b!545397 (= res!339476 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10684))))

(declare-fun b!545398 () Bool)

(declare-fun res!339467 () Bool)

(assert (=> b!545398 (=> (not res!339467) (not e!315249))))

(assert (=> b!545398 (= res!339467 (validKeyInArray!0 k!1998))))

(declare-fun b!545399 () Bool)

(declare-fun res!339471 () Bool)

(assert (=> b!545399 (=> (not res!339471) (not e!315249))))

(declare-fun arrayContainsKey!0 (array!34381 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!545399 (= res!339471 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(assert (= (and start!49612 res!339469) b!545388))

(assert (= (and b!545388 res!339474) b!545393))

(assert (= (and b!545393 res!339468) b!545398))

(assert (= (and b!545398 res!339467) b!545399))

(assert (= (and b!545399 res!339471) b!545390))

(assert (= (and b!545390 res!339475) b!545395))

(assert (= (and b!545395 res!339466) b!545397))

(assert (= (and b!545397 res!339476) b!545391))

(assert (= (and b!545391 res!339472) b!545389))

(assert (= (and b!545389 res!339473) b!545392))

(assert (= (and b!545392 res!339465) b!545394))

(assert (= (and b!545394 res!339470) b!545396))

(declare-fun m!522979 () Bool)

(assert (=> b!545391 m!522979))

(declare-fun m!522981 () Bool)

(assert (=> b!545391 m!522981))

(declare-fun m!522983 () Bool)

(assert (=> b!545390 m!522983))

(declare-fun m!522985 () Bool)

(assert (=> b!545395 m!522985))

(assert (=> b!545393 m!522981))

(assert (=> b!545393 m!522981))

(declare-fun m!522987 () Bool)

(assert (=> b!545393 m!522987))

(declare-fun m!522989 () Bool)

(assert (=> b!545399 m!522989))

(declare-fun m!522991 () Bool)

(assert (=> b!545392 m!522991))

(assert (=> b!545392 m!522981))

(assert (=> b!545392 m!522981))

(declare-fun m!522993 () Bool)

(assert (=> b!545392 m!522993))

(assert (=> b!545392 m!522993))

(assert (=> b!545392 m!522981))

(declare-fun m!522995 () Bool)

(assert (=> b!545392 m!522995))

(declare-fun m!522997 () Bool)

(assert (=> start!49612 m!522997))

(declare-fun m!522999 () Bool)

(assert (=> start!49612 m!522999))

(assert (=> b!545396 m!522981))

(assert (=> b!545396 m!522981))

(declare-fun m!523001 () Bool)

(assert (=> b!545396 m!523001))

(declare-fun m!523003 () Bool)

(assert (=> b!545397 m!523003))

(assert (=> b!545389 m!522981))

(assert (=> b!545389 m!522981))

(declare-fun m!523005 () Bool)

(assert (=> b!545389 m!523005))

(declare-fun m!523007 () Bool)

(assert (=> b!545398 m!523007))

(declare-fun m!523009 () Bool)

(assert (=> b!545394 m!523009))

(push 1)

(assert (not b!545398))

(assert (not b!545389))

(assert (not b!545393))

(assert (not b!545392))

(assert (not b!545397))

(assert (not b!545396))

(assert (not b!545390))

(assert (not b!545399))

(assert (not b!545395))

(assert (not start!49612))

(assert (not b!545394))

(check-sat)

(pop 1)

(push 1)

(check-sat)

