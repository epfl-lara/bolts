; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51566 () Bool)

(assert start!51566)

(declare-fun b!563873 () Bool)

(declare-fun res!355175 () Bool)

(declare-fun e!324862 () Bool)

(assert (=> b!563873 (=> (not res!355175) (not e!324862))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!563873 (= res!355175 (validKeyInArray!0 k!1914))))

(declare-fun b!563874 () Bool)

(declare-fun e!324860 () Bool)

(assert (=> b!563874 (= e!324860 false)))

(declare-fun lt!257393 () Bool)

(declare-datatypes ((array!35385 0))(
  ( (array!35386 (arr!16989 (Array (_ BitVec 32) (_ BitVec 64))) (size!17353 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35385)

(declare-datatypes ((List!11122 0))(
  ( (Nil!11119) (Cons!11118 (h!12121 (_ BitVec 64)) (t!17358 List!11122)) )
))
(declare-fun arrayNoDuplicates!0 (array!35385 (_ BitVec 32) List!11122) Bool)

(assert (=> b!563874 (= lt!257393 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11119))))

(declare-fun b!563875 () Bool)

(declare-fun res!355178 () Bool)

(assert (=> b!563875 (=> (not res!355178) (not e!324862))))

(declare-fun arrayContainsKey!0 (array!35385 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!563875 (= res!355178 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!563876 () Bool)

(declare-fun res!355177 () Bool)

(assert (=> b!563876 (=> (not res!355177) (not e!324860))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35385 (_ BitVec 32)) Bool)

(assert (=> b!563876 (= res!355177 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!563877 () Bool)

(declare-fun res!355181 () Bool)

(assert (=> b!563877 (=> (not res!355181) (not e!324862))))

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!563877 (= res!355181 (validKeyInArray!0 (select (arr!16989 a!3118) j!142)))))

(declare-fun b!563878 () Bool)

(assert (=> b!563878 (= e!324862 e!324860)))

(declare-fun res!355179 () Bool)

(assert (=> b!563878 (=> (not res!355179) (not e!324860))))

(declare-datatypes ((SeekEntryResult!5445 0))(
  ( (MissingZero!5445 (index!24007 (_ BitVec 32))) (Found!5445 (index!24008 (_ BitVec 32))) (Intermediate!5445 (undefined!6257 Bool) (index!24009 (_ BitVec 32)) (x!52919 (_ BitVec 32))) (Undefined!5445) (MissingVacant!5445 (index!24010 (_ BitVec 32))) )
))
(declare-fun lt!257392 () SeekEntryResult!5445)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!563878 (= res!355179 (or (= lt!257392 (MissingZero!5445 i!1132)) (= lt!257392 (MissingVacant!5445 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35385 (_ BitVec 32)) SeekEntryResult!5445)

(assert (=> b!563878 (= lt!257392 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!563879 () Bool)

(declare-fun res!355180 () Bool)

(assert (=> b!563879 (=> (not res!355180) (not e!324862))))

(assert (=> b!563879 (= res!355180 (and (= (size!17353 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17353 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17353 a!3118)) (not (= i!1132 j!142))))))

(declare-fun res!355176 () Bool)

(assert (=> start!51566 (=> (not res!355176) (not e!324862))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51566 (= res!355176 (validMask!0 mask!3119))))

(assert (=> start!51566 e!324862))

(assert (=> start!51566 true))

(declare-fun array_inv!12763 (array!35385) Bool)

(assert (=> start!51566 (array_inv!12763 a!3118)))

(assert (= (and start!51566 res!355176) b!563879))

(assert (= (and b!563879 res!355180) b!563877))

(assert (= (and b!563877 res!355181) b!563873))

(assert (= (and b!563873 res!355175) b!563875))

(assert (= (and b!563875 res!355178) b!563878))

(assert (= (and b!563878 res!355179) b!563876))

(assert (= (and b!563876 res!355177) b!563874))

(declare-fun m!542383 () Bool)

(assert (=> b!563877 m!542383))

(assert (=> b!563877 m!542383))

(declare-fun m!542385 () Bool)

(assert (=> b!563877 m!542385))

(declare-fun m!542387 () Bool)

(assert (=> b!563873 m!542387))

(declare-fun m!542389 () Bool)

(assert (=> b!563878 m!542389))

(declare-fun m!542391 () Bool)

(assert (=> b!563876 m!542391))

(declare-fun m!542393 () Bool)

(assert (=> b!563875 m!542393))

(declare-fun m!542395 () Bool)

(assert (=> b!563874 m!542395))

(declare-fun m!542397 () Bool)

(assert (=> start!51566 m!542397))

(declare-fun m!542399 () Bool)

(assert (=> start!51566 m!542399))

(push 1)

