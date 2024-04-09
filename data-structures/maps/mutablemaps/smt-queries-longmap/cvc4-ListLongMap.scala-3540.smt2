; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48830 () Bool)

(assert start!48830)

(declare-fun b!537158 () Bool)

(declare-fun res!332513 () Bool)

(declare-fun e!311661 () Bool)

(assert (=> b!537158 (=> (not res!332513) (not e!311661))))

(declare-datatypes ((array!33998 0))(
  ( (array!33999 (arr!16334 (Array (_ BitVec 32) (_ BitVec 64))) (size!16698 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33998)

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33998 (_ BitVec 32)) Bool)

(assert (=> b!537158 (= res!332513 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!537159 () Bool)

(declare-fun e!311662 () Bool)

(declare-fun e!311658 () Bool)

(assert (=> b!537159 (= e!311662 e!311658)))

(declare-fun res!332524 () Bool)

(assert (=> b!537159 (=> (not res!332524) (not e!311658))))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun lt!246339 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!537159 (= res!332524 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1030) resX!32) (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b00000000000000000000000000000000) (bvsge lt!246339 #b00000000000000000000000000000000) (bvslt lt!246339 (size!16698 a!3154))))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!537159 (= lt!246339 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!537160 () Bool)

(declare-fun res!332515 () Bool)

(declare-fun e!311660 () Bool)

(assert (=> b!537160 (=> (not res!332515) (not e!311660))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33998 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!537160 (= res!332515 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!537162 () Bool)

(declare-fun res!332519 () Bool)

(assert (=> b!537162 (=> (not res!332519) (not e!311660))))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!537162 (= res!332519 (validKeyInArray!0 (select (arr!16334 a!3154) j!147)))))

(declare-fun b!537163 () Bool)

(declare-fun res!332520 () Bool)

(assert (=> b!537163 (=> (not res!332520) (not e!311661))))

(declare-datatypes ((List!10506 0))(
  ( (Nil!10503) (Cons!10502 (h!11445 (_ BitVec 64)) (t!16742 List!10506)) )
))
(declare-fun arrayNoDuplicates!0 (array!33998 (_ BitVec 32) List!10506) Bool)

(assert (=> b!537163 (= res!332520 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10503))))

(declare-fun b!537164 () Bool)

(assert (=> b!537164 (= e!311658 false)))

(declare-datatypes ((SeekEntryResult!4799 0))(
  ( (MissingZero!4799 (index!21420 (_ BitVec 32))) (Found!4799 (index!21421 (_ BitVec 32))) (Intermediate!4799 (undefined!5611 Bool) (index!21422 (_ BitVec 32)) (x!50377 (_ BitVec 32))) (Undefined!4799) (MissingVacant!4799 (index!21423 (_ BitVec 32))) )
))
(declare-fun lt!246340 () SeekEntryResult!4799)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33998 (_ BitVec 32)) SeekEntryResult!4799)

(assert (=> b!537164 (= lt!246340 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!246339 (select (arr!16334 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!537165 () Bool)

(declare-fun res!332522 () Bool)

(assert (=> b!537165 (=> (not res!332522) (not e!311660))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!537165 (= res!332522 (and (= (size!16698 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16698 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16698 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!537166 () Bool)

(declare-fun res!332516 () Bool)

(assert (=> b!537166 (=> (not res!332516) (not e!311662))))

(declare-fun lt!246338 () SeekEntryResult!4799)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!537166 (= res!332516 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16334 a!3154) j!147) mask!3216) (select (arr!16334 a!3154) j!147) a!3154 mask!3216) lt!246338))))

(declare-fun b!537167 () Bool)

(declare-fun res!332518 () Bool)

(assert (=> b!537167 (=> (not res!332518) (not e!311661))))

(declare-fun resIndex!32 () (_ BitVec 32))

(assert (=> b!537167 (= res!332518 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16698 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16698 a!3154)) (= (select (arr!16334 a!3154) resIndex!32) (select (arr!16334 a!3154) j!147))))))

(declare-fun b!537168 () Bool)

(assert (=> b!537168 (= e!311661 e!311662)))

(declare-fun res!332514 () Bool)

(assert (=> b!537168 (=> (not res!332514) (not e!311662))))

(assert (=> b!537168 (= res!332514 (= lt!246338 (Intermediate!4799 false resIndex!32 resX!32)))))

(assert (=> b!537168 (= lt!246338 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16334 a!3154) j!147) a!3154 mask!3216))))

(declare-fun res!332521 () Bool)

(assert (=> start!48830 (=> (not res!332521) (not e!311660))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48830 (= res!332521 (validMask!0 mask!3216))))

(assert (=> start!48830 e!311660))

(assert (=> start!48830 true))

(declare-fun array_inv!12108 (array!33998) Bool)

(assert (=> start!48830 (array_inv!12108 a!3154)))

(declare-fun b!537161 () Bool)

(declare-fun res!332525 () Bool)

(assert (=> b!537161 (=> (not res!332525) (not e!311662))))

(assert (=> b!537161 (= res!332525 (and (not (= (select (arr!16334 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16334 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16334 a!3154) index!1177) (select (arr!16334 a!3154) j!147)))))))

(declare-fun b!537169 () Bool)

(declare-fun res!332523 () Bool)

(assert (=> b!537169 (=> (not res!332523) (not e!311660))))

(assert (=> b!537169 (= res!332523 (validKeyInArray!0 k!1998))))

(declare-fun b!537170 () Bool)

(assert (=> b!537170 (= e!311660 e!311661)))

(declare-fun res!332517 () Bool)

(assert (=> b!537170 (=> (not res!332517) (not e!311661))))

(declare-fun lt!246341 () SeekEntryResult!4799)

(assert (=> b!537170 (= res!332517 (or (= lt!246341 (MissingZero!4799 i!1153)) (= lt!246341 (MissingVacant!4799 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33998 (_ BitVec 32)) SeekEntryResult!4799)

(assert (=> b!537170 (= lt!246341 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(assert (= (and start!48830 res!332521) b!537165))

(assert (= (and b!537165 res!332522) b!537162))

(assert (= (and b!537162 res!332519) b!537169))

(assert (= (and b!537169 res!332523) b!537160))

(assert (= (and b!537160 res!332515) b!537170))

(assert (= (and b!537170 res!332517) b!537158))

(assert (= (and b!537158 res!332513) b!537163))

(assert (= (and b!537163 res!332520) b!537167))

(assert (= (and b!537167 res!332518) b!537168))

(assert (= (and b!537168 res!332514) b!537166))

(assert (= (and b!537166 res!332516) b!537161))

(assert (= (and b!537161 res!332525) b!537159))

(assert (= (and b!537159 res!332524) b!537164))

(declare-fun m!516443 () Bool)

(assert (=> start!48830 m!516443))

(declare-fun m!516445 () Bool)

(assert (=> start!48830 m!516445))

(declare-fun m!516447 () Bool)

(assert (=> b!537162 m!516447))

(assert (=> b!537162 m!516447))

(declare-fun m!516449 () Bool)

(assert (=> b!537162 m!516449))

(declare-fun m!516451 () Bool)

(assert (=> b!537160 m!516451))

(declare-fun m!516453 () Bool)

(assert (=> b!537169 m!516453))

(assert (=> b!537166 m!516447))

(assert (=> b!537166 m!516447))

(declare-fun m!516455 () Bool)

(assert (=> b!537166 m!516455))

(assert (=> b!537166 m!516455))

(assert (=> b!537166 m!516447))

(declare-fun m!516457 () Bool)

(assert (=> b!537166 m!516457))

(declare-fun m!516459 () Bool)

(assert (=> b!537163 m!516459))

(declare-fun m!516461 () Bool)

(assert (=> b!537159 m!516461))

(assert (=> b!537168 m!516447))

(assert (=> b!537168 m!516447))

(declare-fun m!516463 () Bool)

(assert (=> b!537168 m!516463))

(declare-fun m!516465 () Bool)

(assert (=> b!537161 m!516465))

(assert (=> b!537161 m!516447))

(declare-fun m!516467 () Bool)

(assert (=> b!537158 m!516467))

(declare-fun m!516469 () Bool)

(assert (=> b!537170 m!516469))

(assert (=> b!537164 m!516447))

(assert (=> b!537164 m!516447))

(declare-fun m!516471 () Bool)

(assert (=> b!537164 m!516471))

(declare-fun m!516473 () Bool)

(assert (=> b!537167 m!516473))

(assert (=> b!537167 m!516447))

(push 1)

(assert (not b!537164))

(assert (not b!537166))

(assert (not b!537162))

(assert (not b!537158))

(assert (not start!48830))

