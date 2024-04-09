; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49360 () Bool)

(assert start!49360)

(declare-fun b!543495 () Bool)

(declare-fun res!338197 () Bool)

(declare-fun e!314275 () Bool)

(assert (=> b!543495 (=> (not res!338197) (not e!314275))))

(declare-datatypes ((array!34324 0))(
  ( (array!34325 (arr!16491 (Array (_ BitVec 32) (_ BitVec 64))) (size!16855 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34324)

(declare-fun j!147 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!543495 (= res!338197 (validKeyInArray!0 (select (arr!16491 a!3154) j!147)))))

(declare-fun b!543497 () Bool)

(declare-fun res!338206 () Bool)

(declare-fun e!314277 () Bool)

(assert (=> b!543497 (=> (not res!338206) (not e!314277))))

(declare-fun index!1177 () (_ BitVec 32))

(assert (=> b!543497 (= res!338206 (and (not (= (select (arr!16491 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16491 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16491 a!3154) index!1177) (select (arr!16491 a!3154) j!147)))))))

(declare-fun b!543498 () Bool)

(assert (=> b!543498 (= e!314277 false)))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun lt!248198 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!543498 (= lt!248198 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!543499 () Bool)

(declare-fun e!314276 () Bool)

(assert (=> b!543499 (= e!314275 e!314276)))

(declare-fun res!338202 () Bool)

(assert (=> b!543499 (=> (not res!338202) (not e!314276))))

(declare-datatypes ((SeekEntryResult!4956 0))(
  ( (MissingZero!4956 (index!22048 (_ BitVec 32))) (Found!4956 (index!22049 (_ BitVec 32))) (Intermediate!4956 (undefined!5768 Bool) (index!22050 (_ BitVec 32)) (x!50982 (_ BitVec 32))) (Undefined!4956) (MissingVacant!4956 (index!22051 (_ BitVec 32))) )
))
(declare-fun lt!248197 () SeekEntryResult!4956)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!543499 (= res!338202 (or (= lt!248197 (MissingZero!4956 i!1153)) (= lt!248197 (MissingVacant!4956 i!1153))))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34324 (_ BitVec 32)) SeekEntryResult!4956)

(assert (=> b!543499 (= lt!248197 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!543500 () Bool)

(declare-fun res!338201 () Bool)

(assert (=> b!543500 (=> (not res!338201) (not e!314275))))

(declare-fun arrayContainsKey!0 (array!34324 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!543500 (= res!338201 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!543501 () Bool)

(declare-fun res!338205 () Bool)

(assert (=> b!543501 (=> (not res!338205) (not e!314277))))

(declare-fun lt!248196 () SeekEntryResult!4956)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34324 (_ BitVec 32)) SeekEntryResult!4956)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!543501 (= res!338205 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16491 a!3154) j!147) mask!3216) (select (arr!16491 a!3154) j!147) a!3154 mask!3216) lt!248196))))

(declare-fun b!543502 () Bool)

(declare-fun res!338204 () Bool)

(assert (=> b!543502 (=> (not res!338204) (not e!314276))))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!543502 (= res!338204 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16855 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16855 a!3154)) (= (select (arr!16491 a!3154) resIndex!32) (select (arr!16491 a!3154) j!147))))))

(declare-fun b!543503 () Bool)

(declare-fun res!338196 () Bool)

(assert (=> b!543503 (=> (not res!338196) (not e!314275))))

(assert (=> b!543503 (= res!338196 (validKeyInArray!0 k!1998))))

(declare-fun b!543504 () Bool)

(declare-fun res!338203 () Bool)

(assert (=> b!543504 (=> (not res!338203) (not e!314275))))

(assert (=> b!543504 (= res!338203 (and (= (size!16855 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16855 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16855 a!3154)) (not (= i!1153 j!147))))))

(declare-fun res!338207 () Bool)

(assert (=> start!49360 (=> (not res!338207) (not e!314275))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49360 (= res!338207 (validMask!0 mask!3216))))

(assert (=> start!49360 e!314275))

(assert (=> start!49360 true))

(declare-fun array_inv!12265 (array!34324) Bool)

(assert (=> start!49360 (array_inv!12265 a!3154)))

(declare-fun b!543496 () Bool)

(declare-fun res!338198 () Bool)

(assert (=> b!543496 (=> (not res!338198) (not e!314276))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34324 (_ BitVec 32)) Bool)

(assert (=> b!543496 (= res!338198 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!543505 () Bool)

(declare-fun res!338199 () Bool)

(assert (=> b!543505 (=> (not res!338199) (not e!314276))))

(declare-datatypes ((List!10663 0))(
  ( (Nil!10660) (Cons!10659 (h!11614 (_ BitVec 64)) (t!16899 List!10663)) )
))
(declare-fun arrayNoDuplicates!0 (array!34324 (_ BitVec 32) List!10663) Bool)

(assert (=> b!543505 (= res!338199 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10660))))

(declare-fun b!543506 () Bool)

(assert (=> b!543506 (= e!314276 e!314277)))

(declare-fun res!338200 () Bool)

(assert (=> b!543506 (=> (not res!338200) (not e!314277))))

(assert (=> b!543506 (= res!338200 (= lt!248196 (Intermediate!4956 false resIndex!32 resX!32)))))

(assert (=> b!543506 (= lt!248196 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16491 a!3154) j!147) a!3154 mask!3216))))

(assert (= (and start!49360 res!338207) b!543504))

(assert (= (and b!543504 res!338203) b!543495))

(assert (= (and b!543495 res!338197) b!543503))

(assert (= (and b!543503 res!338196) b!543500))

(assert (= (and b!543500 res!338201) b!543499))

(assert (= (and b!543499 res!338202) b!543496))

(assert (= (and b!543496 res!338198) b!543505))

(assert (= (and b!543505 res!338199) b!543502))

(assert (= (and b!543502 res!338204) b!543506))

(assert (= (and b!543506 res!338200) b!543501))

(assert (= (and b!543501 res!338205) b!543497))

(assert (= (and b!543497 res!338206) b!543498))

(declare-fun m!521581 () Bool)

(assert (=> b!543506 m!521581))

(assert (=> b!543506 m!521581))

(declare-fun m!521583 () Bool)

(assert (=> b!543506 m!521583))

(declare-fun m!521585 () Bool)

(assert (=> start!49360 m!521585))

(declare-fun m!521587 () Bool)

(assert (=> start!49360 m!521587))

(assert (=> b!543501 m!521581))

(assert (=> b!543501 m!521581))

(declare-fun m!521589 () Bool)

(assert (=> b!543501 m!521589))

(assert (=> b!543501 m!521589))

(assert (=> b!543501 m!521581))

(declare-fun m!521591 () Bool)

(assert (=> b!543501 m!521591))

(assert (=> b!543495 m!521581))

(assert (=> b!543495 m!521581))

(declare-fun m!521593 () Bool)

(assert (=> b!543495 m!521593))

(declare-fun m!521595 () Bool)

(assert (=> b!543505 m!521595))

(declare-fun m!521597 () Bool)

(assert (=> b!543499 m!521597))

(declare-fun m!521599 () Bool)

(assert (=> b!543500 m!521599))

(declare-fun m!521601 () Bool)

(assert (=> b!543498 m!521601))

(declare-fun m!521603 () Bool)

(assert (=> b!543502 m!521603))

(assert (=> b!543502 m!521581))

(declare-fun m!521605 () Bool)

(assert (=> b!543497 m!521605))

(assert (=> b!543497 m!521581))

(declare-fun m!521607 () Bool)

(assert (=> b!543503 m!521607))

(declare-fun m!521609 () Bool)

(assert (=> b!543496 m!521609))

(push 1)

