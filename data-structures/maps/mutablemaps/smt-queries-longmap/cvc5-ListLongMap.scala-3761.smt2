; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51578 () Bool)

(assert start!51578)

(declare-fun b!563999 () Bool)

(declare-fun res!355305 () Bool)

(declare-fun e!324916 () Bool)

(assert (=> b!563999 (=> (not res!355305) (not e!324916))))

(declare-datatypes ((array!35397 0))(
  ( (array!35398 (arr!16995 (Array (_ BitVec 32) (_ BitVec 64))) (size!17359 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35397)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35397 (_ BitVec 32)) Bool)

(assert (=> b!563999 (= res!355305 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun res!355304 () Bool)

(declare-fun e!324914 () Bool)

(assert (=> start!51578 (=> (not res!355304) (not e!324914))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51578 (= res!355304 (validMask!0 mask!3119))))

(assert (=> start!51578 e!324914))

(assert (=> start!51578 true))

(declare-fun array_inv!12769 (array!35397) Bool)

(assert (=> start!51578 (array_inv!12769 a!3118)))

(declare-fun b!564000 () Bool)

(assert (=> b!564000 (= e!324916 false)))

(declare-fun lt!257429 () Bool)

(declare-datatypes ((List!11128 0))(
  ( (Nil!11125) (Cons!11124 (h!12127 (_ BitVec 64)) (t!17364 List!11128)) )
))
(declare-fun arrayNoDuplicates!0 (array!35397 (_ BitVec 32) List!11128) Bool)

(assert (=> b!564000 (= lt!257429 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11125))))

(declare-fun b!564001 () Bool)

(declare-fun res!355306 () Bool)

(assert (=> b!564001 (=> (not res!355306) (not e!324914))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!35397 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!564001 (= res!355306 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!564002 () Bool)

(declare-fun res!355303 () Bool)

(assert (=> b!564002 (=> (not res!355303) (not e!324914))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!564002 (= res!355303 (validKeyInArray!0 (select (arr!16995 a!3118) j!142)))))

(declare-fun b!564003 () Bool)

(declare-fun res!355302 () Bool)

(assert (=> b!564003 (=> (not res!355302) (not e!324914))))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!564003 (= res!355302 (and (= (size!17359 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17359 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17359 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!564004 () Bool)

(assert (=> b!564004 (= e!324914 e!324916)))

(declare-fun res!355301 () Bool)

(assert (=> b!564004 (=> (not res!355301) (not e!324916))))

(declare-datatypes ((SeekEntryResult!5451 0))(
  ( (MissingZero!5451 (index!24031 (_ BitVec 32))) (Found!5451 (index!24032 (_ BitVec 32))) (Intermediate!5451 (undefined!6263 Bool) (index!24033 (_ BitVec 32)) (x!52941 (_ BitVec 32))) (Undefined!5451) (MissingVacant!5451 (index!24034 (_ BitVec 32))) )
))
(declare-fun lt!257428 () SeekEntryResult!5451)

(assert (=> b!564004 (= res!355301 (or (= lt!257428 (MissingZero!5451 i!1132)) (= lt!257428 (MissingVacant!5451 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35397 (_ BitVec 32)) SeekEntryResult!5451)

(assert (=> b!564004 (= lt!257428 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!564005 () Bool)

(declare-fun res!355307 () Bool)

(assert (=> b!564005 (=> (not res!355307) (not e!324914))))

(assert (=> b!564005 (= res!355307 (validKeyInArray!0 k!1914))))

(assert (= (and start!51578 res!355304) b!564003))

(assert (= (and b!564003 res!355302) b!564002))

(assert (= (and b!564002 res!355303) b!564005))

(assert (= (and b!564005 res!355307) b!564001))

(assert (= (and b!564001 res!355306) b!564004))

(assert (= (and b!564004 res!355301) b!563999))

(assert (= (and b!563999 res!355305) b!564000))

(declare-fun m!542491 () Bool)

(assert (=> start!51578 m!542491))

(declare-fun m!542493 () Bool)

(assert (=> start!51578 m!542493))

(declare-fun m!542495 () Bool)

(assert (=> b!564004 m!542495))

(declare-fun m!542497 () Bool)

(assert (=> b!564002 m!542497))

(assert (=> b!564002 m!542497))

(declare-fun m!542499 () Bool)

(assert (=> b!564002 m!542499))

(declare-fun m!542501 () Bool)

(assert (=> b!563999 m!542501))

(declare-fun m!542503 () Bool)

(assert (=> b!564001 m!542503))

(declare-fun m!542505 () Bool)

(assert (=> b!564000 m!542505))

(declare-fun m!542507 () Bool)

(assert (=> b!564005 m!542507))

(push 1)

