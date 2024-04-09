; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!66222 () Bool)

(assert start!66222)

(declare-fun res!515457 () Bool)

(declare-fun e!424894 () Bool)

(assert (=> start!66222 (=> (not res!515457) (not e!424894))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66222 (= res!515457 (validMask!0 mask!3328))))

(assert (=> start!66222 e!424894))

(assert (=> start!66222 true))

(declare-datatypes ((array!42080 0))(
  ( (array!42081 (arr!20144 (Array (_ BitVec 32) (_ BitVec 64))) (size!20565 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42080)

(declare-fun array_inv!15918 (array!42080) Bool)

(assert (=> start!66222 (array_inv!15918 a!3186)))

(declare-fun b!762174 () Bool)

(declare-fun res!515462 () Bool)

(assert (=> b!762174 (=> (not res!515462) (not e!424894))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!762174 (= res!515462 (validKeyInArray!0 k!2102))))

(declare-fun b!762175 () Bool)

(declare-fun res!515458 () Bool)

(assert (=> b!762175 (=> (not res!515458) (not e!424894))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!762175 (= res!515458 (and (= (size!20565 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20565 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20565 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!762176 () Bool)

(declare-fun res!515456 () Bool)

(assert (=> b!762176 (=> (not res!515456) (not e!424894))))

(declare-fun arrayContainsKey!0 (array!42080 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!762176 (= res!515456 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!762177 () Bool)

(declare-fun res!515455 () Bool)

(declare-fun e!424893 () Bool)

(assert (=> b!762177 (=> (not res!515455) (not e!424893))))

(declare-datatypes ((List!14199 0))(
  ( (Nil!14196) (Cons!14195 (h!15279 (_ BitVec 64)) (t!20522 List!14199)) )
))
(declare-fun arrayNoDuplicates!0 (array!42080 (_ BitVec 32) List!14199) Bool)

(assert (=> b!762177 (= res!515455 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14196))))

(declare-fun b!762178 () Bool)

(declare-fun res!515460 () Bool)

(assert (=> b!762178 (=> (not res!515460) (not e!424894))))

(assert (=> b!762178 (= res!515460 (validKeyInArray!0 (select (arr!20144 a!3186) j!159)))))

(declare-fun b!762179 () Bool)

(assert (=> b!762179 (= e!424894 e!424893)))

(declare-fun res!515463 () Bool)

(assert (=> b!762179 (=> (not res!515463) (not e!424893))))

(declare-datatypes ((SeekEntryResult!7751 0))(
  ( (MissingZero!7751 (index!33371 (_ BitVec 32))) (Found!7751 (index!33372 (_ BitVec 32))) (Intermediate!7751 (undefined!8563 Bool) (index!33373 (_ BitVec 32)) (x!64308 (_ BitVec 32))) (Undefined!7751) (MissingVacant!7751 (index!33374 (_ BitVec 32))) )
))
(declare-fun lt!339495 () SeekEntryResult!7751)

(assert (=> b!762179 (= res!515463 (or (= lt!339495 (MissingZero!7751 i!1173)) (= lt!339495 (MissingVacant!7751 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42080 (_ BitVec 32)) SeekEntryResult!7751)

(assert (=> b!762179 (= lt!339495 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!762180 () Bool)

(assert (=> b!762180 (= e!424893 false)))

(declare-fun lt!339496 () SeekEntryResult!7751)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42080 (_ BitVec 32)) SeekEntryResult!7751)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!762180 (= lt!339496 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20144 a!3186) j!159) mask!3328) (select (arr!20144 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!762181 () Bool)

(declare-fun res!515461 () Bool)

(assert (=> b!762181 (=> (not res!515461) (not e!424893))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!762181 (= res!515461 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20565 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20565 a!3186))))))

(declare-fun b!762182 () Bool)

(declare-fun res!515459 () Bool)

(assert (=> b!762182 (=> (not res!515459) (not e!424893))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42080 (_ BitVec 32)) Bool)

(assert (=> b!762182 (= res!515459 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(assert (= (and start!66222 res!515457) b!762175))

(assert (= (and b!762175 res!515458) b!762178))

(assert (= (and b!762178 res!515460) b!762174))

(assert (= (and b!762174 res!515462) b!762176))

(assert (= (and b!762176 res!515456) b!762179))

(assert (= (and b!762179 res!515463) b!762182))

(assert (= (and b!762182 res!515459) b!762177))

(assert (= (and b!762177 res!515455) b!762181))

(assert (= (and b!762181 res!515461) b!762180))

(declare-fun m!709021 () Bool)

(assert (=> b!762177 m!709021))

(declare-fun m!709023 () Bool)

(assert (=> b!762174 m!709023))

(declare-fun m!709025 () Bool)

(assert (=> b!762182 m!709025))

(declare-fun m!709027 () Bool)

(assert (=> b!762179 m!709027))

(declare-fun m!709029 () Bool)

(assert (=> b!762178 m!709029))

(assert (=> b!762178 m!709029))

(declare-fun m!709031 () Bool)

(assert (=> b!762178 m!709031))

(assert (=> b!762180 m!709029))

(assert (=> b!762180 m!709029))

(declare-fun m!709033 () Bool)

(assert (=> b!762180 m!709033))

(assert (=> b!762180 m!709033))

(assert (=> b!762180 m!709029))

(declare-fun m!709035 () Bool)

(assert (=> b!762180 m!709035))

(declare-fun m!709037 () Bool)

(assert (=> b!762176 m!709037))

(declare-fun m!709039 () Bool)

(assert (=> start!66222 m!709039))

(declare-fun m!709041 () Bool)

(assert (=> start!66222 m!709041))

(push 1)

(assert (not b!762182))

(assert (not b!762174))

(assert (not start!66222))

(assert (not b!762178))

(assert (not b!762180))

(assert (not b!762176))

(assert (not b!762179))

(assert (not b!762177))

(check-sat)

(pop 1)

