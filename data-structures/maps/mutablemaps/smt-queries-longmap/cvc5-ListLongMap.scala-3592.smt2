; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49354 () Bool)

(assert start!49354)

(declare-fun b!543387 () Bool)

(declare-fun res!338097 () Bool)

(declare-fun e!314241 () Bool)

(assert (=> b!543387 (=> (not res!338097) (not e!314241))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!543387 (= res!338097 (validKeyInArray!0 k!1998))))

(declare-fun b!543388 () Bool)

(declare-fun res!338099 () Bool)

(declare-fun e!314239 () Bool)

(assert (=> b!543388 (=> (not res!338099) (not e!314239))))

(declare-datatypes ((array!34318 0))(
  ( (array!34319 (arr!16488 (Array (_ BitVec 32) (_ BitVec 64))) (size!16852 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34318)

(declare-datatypes ((List!10660 0))(
  ( (Nil!10657) (Cons!10656 (h!11611 (_ BitVec 64)) (t!16896 List!10660)) )
))
(declare-fun arrayNoDuplicates!0 (array!34318 (_ BitVec 32) List!10660) Bool)

(assert (=> b!543388 (= res!338099 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10657))))

(declare-fun b!543389 () Bool)

(assert (=> b!543389 (= e!314241 e!314239)))

(declare-fun res!338094 () Bool)

(assert (=> b!543389 (=> (not res!338094) (not e!314239))))

(declare-datatypes ((SeekEntryResult!4953 0))(
  ( (MissingZero!4953 (index!22036 (_ BitVec 32))) (Found!4953 (index!22037 (_ BitVec 32))) (Intermediate!4953 (undefined!5765 Bool) (index!22038 (_ BitVec 32)) (x!50971 (_ BitVec 32))) (Undefined!4953) (MissingVacant!4953 (index!22039 (_ BitVec 32))) )
))
(declare-fun lt!248170 () SeekEntryResult!4953)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!543389 (= res!338094 (or (= lt!248170 (MissingZero!4953 i!1153)) (= lt!248170 (MissingVacant!4953 i!1153))))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34318 (_ BitVec 32)) SeekEntryResult!4953)

(assert (=> b!543389 (= lt!248170 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!543390 () Bool)

(declare-fun res!338093 () Bool)

(assert (=> b!543390 (=> (not res!338093) (not e!314241))))

(declare-fun j!147 () (_ BitVec 32))

(assert (=> b!543390 (= res!338093 (validKeyInArray!0 (select (arr!16488 a!3154) j!147)))))

(declare-fun b!543391 () Bool)

(declare-fun res!338089 () Bool)

(assert (=> b!543391 (=> (not res!338089) (not e!314239))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!543391 (= res!338089 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16852 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16852 a!3154)) (= (select (arr!16488 a!3154) resIndex!32) (select (arr!16488 a!3154) j!147))))))

(declare-fun b!543392 () Bool)

(declare-fun e!314240 () Bool)

(assert (=> b!543392 (= e!314239 e!314240)))

(declare-fun res!338096 () Bool)

(assert (=> b!543392 (=> (not res!338096) (not e!314240))))

(declare-fun lt!248169 () SeekEntryResult!4953)

(assert (=> b!543392 (= res!338096 (= lt!248169 (Intermediate!4953 false resIndex!32 resX!32)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34318 (_ BitVec 32)) SeekEntryResult!4953)

(assert (=> b!543392 (= lt!248169 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16488 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!543393 () Bool)

(declare-fun res!338091 () Bool)

(assert (=> b!543393 (=> (not res!338091) (not e!314241))))

(assert (=> b!543393 (= res!338091 (and (= (size!16852 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16852 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16852 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!543394 () Bool)

(declare-fun res!338095 () Bool)

(assert (=> b!543394 (=> (not res!338095) (not e!314239))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34318 (_ BitVec 32)) Bool)

(assert (=> b!543394 (= res!338095 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun res!338092 () Bool)

(assert (=> start!49354 (=> (not res!338092) (not e!314241))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49354 (= res!338092 (validMask!0 mask!3216))))

(assert (=> start!49354 e!314241))

(assert (=> start!49354 true))

(declare-fun array_inv!12262 (array!34318) Bool)

(assert (=> start!49354 (array_inv!12262 a!3154)))

(declare-fun b!543395 () Bool)

(assert (=> b!543395 (= e!314240 false)))

(declare-fun lt!248171 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!543395 (= lt!248171 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!543396 () Bool)

(declare-fun res!338088 () Bool)

(assert (=> b!543396 (=> (not res!338088) (not e!314240))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!543396 (= res!338088 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16488 a!3154) j!147) mask!3216) (select (arr!16488 a!3154) j!147) a!3154 mask!3216) lt!248169))))

(declare-fun b!543397 () Bool)

(declare-fun res!338090 () Bool)

(assert (=> b!543397 (=> (not res!338090) (not e!314241))))

(declare-fun arrayContainsKey!0 (array!34318 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!543397 (= res!338090 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!543398 () Bool)

(declare-fun res!338098 () Bool)

(assert (=> b!543398 (=> (not res!338098) (not e!314240))))

(assert (=> b!543398 (= res!338098 (and (not (= (select (arr!16488 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16488 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16488 a!3154) index!1177) (select (arr!16488 a!3154) j!147)))))))

(assert (= (and start!49354 res!338092) b!543393))

(assert (= (and b!543393 res!338091) b!543390))

(assert (= (and b!543390 res!338093) b!543387))

(assert (= (and b!543387 res!338097) b!543397))

(assert (= (and b!543397 res!338090) b!543389))

(assert (= (and b!543389 res!338094) b!543394))

(assert (= (and b!543394 res!338095) b!543388))

(assert (= (and b!543388 res!338099) b!543391))

(assert (= (and b!543391 res!338089) b!543392))

(assert (= (and b!543392 res!338096) b!543396))

(assert (= (and b!543396 res!338088) b!543398))

(assert (= (and b!543398 res!338098) b!543395))

(declare-fun m!521491 () Bool)

(assert (=> b!543389 m!521491))

(declare-fun m!521493 () Bool)

(assert (=> b!543392 m!521493))

(assert (=> b!543392 m!521493))

(declare-fun m!521495 () Bool)

(assert (=> b!543392 m!521495))

(declare-fun m!521497 () Bool)

(assert (=> b!543387 m!521497))

(declare-fun m!521499 () Bool)

(assert (=> start!49354 m!521499))

(declare-fun m!521501 () Bool)

(assert (=> start!49354 m!521501))

(declare-fun m!521503 () Bool)

(assert (=> b!543394 m!521503))

(declare-fun m!521505 () Bool)

(assert (=> b!543395 m!521505))

(declare-fun m!521507 () Bool)

(assert (=> b!543391 m!521507))

(assert (=> b!543391 m!521493))

(assert (=> b!543396 m!521493))

(assert (=> b!543396 m!521493))

(declare-fun m!521509 () Bool)

(assert (=> b!543396 m!521509))

(assert (=> b!543396 m!521509))

(assert (=> b!543396 m!521493))

(declare-fun m!521511 () Bool)

(assert (=> b!543396 m!521511))

(declare-fun m!521513 () Bool)

(assert (=> b!543397 m!521513))

(assert (=> b!543390 m!521493))

(assert (=> b!543390 m!521493))

(declare-fun m!521515 () Bool)

(assert (=> b!543390 m!521515))

(declare-fun m!521517 () Bool)

(assert (=> b!543398 m!521517))

(assert (=> b!543398 m!521493))

(declare-fun m!521519 () Bool)

(assert (=> b!543388 m!521519))

(push 1)

