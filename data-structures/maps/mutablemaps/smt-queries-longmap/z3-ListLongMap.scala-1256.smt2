; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26106 () Bool)

(assert start!26106)

(declare-fun b!269145 () Bool)

(declare-fun e!173726 () Bool)

(assert (=> b!269145 (= e!173726 false)))

(declare-datatypes ((Unit!8316 0))(
  ( (Unit!8317) )
))
(declare-fun lt!135145 () Unit!8316)

(declare-fun e!173728 () Unit!8316)

(assert (=> b!269145 (= lt!135145 e!173728)))

(declare-fun c!45407 () Bool)

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-datatypes ((array!13192 0))(
  ( (array!13193 (arr!6245 (Array (_ BitVec 32) (_ BitVec 64))) (size!6597 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13192)

(assert (=> b!269145 (= c!45407 (bvslt startIndex!26 (bvsub (size!6597 a!3325) #b00000000000000000000000000000001)))))

(declare-fun b!269146 () Bool)

(declare-fun Unit!8318 () Unit!8316)

(assert (=> b!269146 (= e!173728 Unit!8318)))

(declare-fun b!269147 () Bool)

(declare-fun res!133436 () Bool)

(declare-fun e!173727 () Bool)

(assert (=> b!269147 (=> (not res!133436) (not e!173727))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!269147 (= res!133436 (validKeyInArray!0 k0!2581))))

(declare-fun b!269148 () Bool)

(declare-fun res!133437 () Bool)

(assert (=> b!269148 (=> (not res!133437) (not e!173727))))

(declare-datatypes ((List!4074 0))(
  ( (Nil!4071) (Cons!4070 (h!4737 (_ BitVec 64)) (t!9164 List!4074)) )
))
(declare-fun arrayNoDuplicates!0 (array!13192 (_ BitVec 32) List!4074) Bool)

(assert (=> b!269148 (= res!133437 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4071))))

(declare-fun b!269149 () Bool)

(declare-fun res!133433 () Bool)

(assert (=> b!269149 (=> (not res!133433) (not e!173726))))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!269149 (= res!133433 (= startIndex!26 i!1267))))

(declare-fun res!133435 () Bool)

(assert (=> start!26106 (=> (not res!133435) (not e!173727))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26106 (= res!133435 (validMask!0 mask!3868))))

(assert (=> start!26106 e!173727))

(declare-fun array_inv!4199 (array!13192) Bool)

(assert (=> start!26106 (array_inv!4199 a!3325)))

(assert (=> start!26106 true))

(declare-fun b!269150 () Bool)

(assert (=> b!269150 (= e!173727 e!173726)))

(declare-fun res!133439 () Bool)

(assert (=> b!269150 (=> (not res!133439) (not e!173726))))

(declare-datatypes ((SeekEntryResult!1414 0))(
  ( (MissingZero!1414 (index!7826 (_ BitVec 32))) (Found!1414 (index!7827 (_ BitVec 32))) (Intermediate!1414 (undefined!2226 Bool) (index!7828 (_ BitVec 32)) (x!26147 (_ BitVec 32))) (Undefined!1414) (MissingVacant!1414 (index!7829 (_ BitVec 32))) )
))
(declare-fun lt!135146 () SeekEntryResult!1414)

(assert (=> b!269150 (= res!133439 (or (= lt!135146 (MissingZero!1414 i!1267)) (= lt!135146 (MissingVacant!1414 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13192 (_ BitVec 32)) SeekEntryResult!1414)

(assert (=> b!269150 (= lt!135146 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!269151 () Bool)

(declare-fun res!133438 () Bool)

(assert (=> b!269151 (=> (not res!133438) (not e!173727))))

(assert (=> b!269151 (= res!133438 (and (= (size!6597 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6597 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6597 a!3325))))))

(declare-fun b!269152 () Bool)

(declare-fun res!133440 () Bool)

(assert (=> b!269152 (=> (not res!133440) (not e!173726))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13192 (_ BitVec 32)) Bool)

(assert (=> b!269152 (= res!133440 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!269153 () Bool)

(declare-fun res!133434 () Bool)

(assert (=> b!269153 (=> (not res!133434) (not e!173727))))

(declare-fun arrayContainsKey!0 (array!13192 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!269153 (= res!133434 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!269154 () Bool)

(declare-fun lt!135144 () Unit!8316)

(assert (=> b!269154 (= e!173728 lt!135144)))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!13192 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8316)

(assert (=> b!269154 (= lt!135144 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k0!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(assert (=> b!269154 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) (array!13193 (store (arr!6245 a!3325) i!1267 k0!2581) (size!6597 a!3325)) mask!3868)))

(assert (= (and start!26106 res!133435) b!269151))

(assert (= (and b!269151 res!133438) b!269147))

(assert (= (and b!269147 res!133436) b!269148))

(assert (= (and b!269148 res!133437) b!269153))

(assert (= (and b!269153 res!133434) b!269150))

(assert (= (and b!269150 res!133439) b!269152))

(assert (= (and b!269152 res!133440) b!269149))

(assert (= (and b!269149 res!133433) b!269145))

(assert (= (and b!269145 c!45407) b!269154))

(assert (= (and b!269145 (not c!45407)) b!269146))

(declare-fun m!285129 () Bool)

(assert (=> b!269147 m!285129))

(declare-fun m!285131 () Bool)

(assert (=> b!269152 m!285131))

(declare-fun m!285133 () Bool)

(assert (=> b!269153 m!285133))

(declare-fun m!285135 () Bool)

(assert (=> b!269148 m!285135))

(declare-fun m!285137 () Bool)

(assert (=> b!269154 m!285137))

(declare-fun m!285139 () Bool)

(assert (=> b!269154 m!285139))

(declare-fun m!285141 () Bool)

(assert (=> b!269154 m!285141))

(declare-fun m!285143 () Bool)

(assert (=> b!269150 m!285143))

(declare-fun m!285145 () Bool)

(assert (=> start!26106 m!285145))

(declare-fun m!285147 () Bool)

(assert (=> start!26106 m!285147))

(check-sat (not b!269153) (not b!269148) (not b!269152) (not b!269150) (not start!26106) (not b!269154) (not b!269147))
(check-sat)
