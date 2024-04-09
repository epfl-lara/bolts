; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!66226 () Bool)

(assert start!66226)

(declare-fun b!762228 () Bool)

(declare-fun res!515511 () Bool)

(declare-fun e!424913 () Bool)

(assert (=> b!762228 (=> (not res!515511) (not e!424913))))

(declare-datatypes ((array!42084 0))(
  ( (array!42085 (arr!20146 (Array (_ BitVec 32) (_ BitVec 64))) (size!20567 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42084)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!762228 (= res!515511 (validKeyInArray!0 (select (arr!20146 a!3186) j!159)))))

(declare-fun res!515509 () Bool)

(assert (=> start!66226 (=> (not res!515509) (not e!424913))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66226 (= res!515509 (validMask!0 mask!3328))))

(assert (=> start!66226 e!424913))

(assert (=> start!66226 true))

(declare-fun array_inv!15920 (array!42084) Bool)

(assert (=> start!66226 (array_inv!15920 a!3186)))

(declare-fun b!762229 () Bool)

(declare-fun res!515515 () Bool)

(declare-fun e!424912 () Bool)

(assert (=> b!762229 (=> (not res!515515) (not e!424912))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!762229 (= res!515515 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20567 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20567 a!3186))))))

(declare-fun b!762230 () Bool)

(declare-fun res!515512 () Bool)

(assert (=> b!762230 (=> (not res!515512) (not e!424912))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42084 (_ BitVec 32)) Bool)

(assert (=> b!762230 (= res!515512 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!762231 () Bool)

(declare-fun res!515516 () Bool)

(assert (=> b!762231 (=> (not res!515516) (not e!424913))))

(declare-fun k0!2102 () (_ BitVec 64))

(assert (=> b!762231 (= res!515516 (validKeyInArray!0 k0!2102))))

(declare-fun b!762232 () Bool)

(declare-fun res!515517 () Bool)

(assert (=> b!762232 (=> (not res!515517) (not e!424913))))

(declare-fun arrayContainsKey!0 (array!42084 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!762232 (= res!515517 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!762233 () Bool)

(declare-fun res!515510 () Bool)

(assert (=> b!762233 (=> (not res!515510) (not e!424913))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!762233 (= res!515510 (and (= (size!20567 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20567 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20567 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!762234 () Bool)

(assert (=> b!762234 (= e!424913 e!424912)))

(declare-fun res!515513 () Bool)

(assert (=> b!762234 (=> (not res!515513) (not e!424912))))

(declare-datatypes ((SeekEntryResult!7753 0))(
  ( (MissingZero!7753 (index!33379 (_ BitVec 32))) (Found!7753 (index!33380 (_ BitVec 32))) (Intermediate!7753 (undefined!8565 Bool) (index!33381 (_ BitVec 32)) (x!64318 (_ BitVec 32))) (Undefined!7753) (MissingVacant!7753 (index!33382 (_ BitVec 32))) )
))
(declare-fun lt!339508 () SeekEntryResult!7753)

(assert (=> b!762234 (= res!515513 (or (= lt!339508 (MissingZero!7753 i!1173)) (= lt!339508 (MissingVacant!7753 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42084 (_ BitVec 32)) SeekEntryResult!7753)

(assert (=> b!762234 (= lt!339508 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!762235 () Bool)

(declare-fun res!515514 () Bool)

(assert (=> b!762235 (=> (not res!515514) (not e!424912))))

(declare-datatypes ((List!14201 0))(
  ( (Nil!14198) (Cons!14197 (h!15281 (_ BitVec 64)) (t!20524 List!14201)) )
))
(declare-fun arrayNoDuplicates!0 (array!42084 (_ BitVec 32) List!14201) Bool)

(assert (=> b!762235 (= res!515514 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14198))))

(declare-fun b!762236 () Bool)

(assert (=> b!762236 (= e!424912 false)))

(declare-fun lt!339507 () SeekEntryResult!7753)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42084 (_ BitVec 32)) SeekEntryResult!7753)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!762236 (= lt!339507 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20146 a!3186) j!159) mask!3328) (select (arr!20146 a!3186) j!159) a!3186 mask!3328))))

(assert (= (and start!66226 res!515509) b!762233))

(assert (= (and b!762233 res!515510) b!762228))

(assert (= (and b!762228 res!515511) b!762231))

(assert (= (and b!762231 res!515516) b!762232))

(assert (= (and b!762232 res!515517) b!762234))

(assert (= (and b!762234 res!515513) b!762230))

(assert (= (and b!762230 res!515512) b!762235))

(assert (= (and b!762235 res!515514) b!762229))

(assert (= (and b!762229 res!515515) b!762236))

(declare-fun m!709065 () Bool)

(assert (=> b!762232 m!709065))

(declare-fun m!709067 () Bool)

(assert (=> b!762236 m!709067))

(assert (=> b!762236 m!709067))

(declare-fun m!709069 () Bool)

(assert (=> b!762236 m!709069))

(assert (=> b!762236 m!709069))

(assert (=> b!762236 m!709067))

(declare-fun m!709071 () Bool)

(assert (=> b!762236 m!709071))

(declare-fun m!709073 () Bool)

(assert (=> b!762231 m!709073))

(declare-fun m!709075 () Bool)

(assert (=> b!762234 m!709075))

(declare-fun m!709077 () Bool)

(assert (=> start!66226 m!709077))

(declare-fun m!709079 () Bool)

(assert (=> start!66226 m!709079))

(declare-fun m!709081 () Bool)

(assert (=> b!762235 m!709081))

(assert (=> b!762228 m!709067))

(assert (=> b!762228 m!709067))

(declare-fun m!709083 () Bool)

(assert (=> b!762228 m!709083))

(declare-fun m!709085 () Bool)

(assert (=> b!762230 m!709085))

(check-sat (not start!66226) (not b!762235) (not b!762228) (not b!762232) (not b!762236) (not b!762231) (not b!762234) (not b!762230))
(check-sat)
