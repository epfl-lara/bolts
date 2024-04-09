; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!66276 () Bool)

(assert start!66276)

(declare-fun b!763169 () Bool)

(declare-fun res!516327 () Bool)

(declare-fun e!425261 () Bool)

(assert (=> b!763169 (=> (not res!516327) (not e!425261))))

(declare-datatypes ((array!42134 0))(
  ( (array!42135 (arr!20171 (Array (_ BitVec 32) (_ BitVec 64))) (size!20592 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42134)

(declare-datatypes ((List!14226 0))(
  ( (Nil!14223) (Cons!14222 (h!15306 (_ BitVec 64)) (t!20549 List!14226)) )
))
(declare-fun arrayNoDuplicates!0 (array!42134 (_ BitVec 32) List!14226) Bool)

(assert (=> b!763169 (= res!516327 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14223))))

(declare-fun b!763170 () Bool)

(declare-fun res!516331 () Bool)

(declare-fun e!425262 () Bool)

(assert (=> b!763170 (=> (not res!516331) (not e!425262))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!763170 (= res!516331 (validKeyInArray!0 k!2102))))

(declare-fun b!763171 () Bool)

(declare-fun e!425263 () Bool)

(assert (=> b!763171 (= e!425263 false)))

(declare-fun lt!339720 () Bool)

(declare-fun e!425260 () Bool)

(assert (=> b!763171 (= lt!339720 e!425260)))

(declare-fun c!83808 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!763171 (= c!83808 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!763172 () Bool)

(assert (=> b!763172 (= e!425262 e!425261)))

(declare-fun res!516329 () Bool)

(assert (=> b!763172 (=> (not res!516329) (not e!425261))))

(declare-datatypes ((SeekEntryResult!7778 0))(
  ( (MissingZero!7778 (index!33479 (_ BitVec 32))) (Found!7778 (index!33480 (_ BitVec 32))) (Intermediate!7778 (undefined!8590 Bool) (index!33481 (_ BitVec 32)) (x!64407 (_ BitVec 32))) (Undefined!7778) (MissingVacant!7778 (index!33482 (_ BitVec 32))) )
))
(declare-fun lt!339721 () SeekEntryResult!7778)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!763172 (= res!516329 (or (= lt!339721 (MissingZero!7778 i!1173)) (= lt!339721 (MissingVacant!7778 i!1173))))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42134 (_ BitVec 32)) SeekEntryResult!7778)

(assert (=> b!763172 (= lt!339721 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!339719 () SeekEntryResult!7778)

(declare-fun b!763173 () Bool)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42134 (_ BitVec 32)) SeekEntryResult!7778)

(assert (=> b!763173 (= e!425260 (not (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20171 a!3186) j!159) a!3186 mask!3328) lt!339719)))))

(declare-fun b!763174 () Bool)

(assert (=> b!763174 (= e!425261 e!425263)))

(declare-fun res!516326 () Bool)

(assert (=> b!763174 (=> (not res!516326) (not e!425263))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!763174 (= res!516326 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20171 a!3186) j!159) mask!3328) (select (arr!20171 a!3186) j!159) a!3186 mask!3328) lt!339719))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!763174 (= lt!339719 (Intermediate!7778 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun res!516333 () Bool)

(assert (=> start!66276 (=> (not res!516333) (not e!425262))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66276 (= res!516333 (validMask!0 mask!3328))))

(assert (=> start!66276 e!425262))

(assert (=> start!66276 true))

(declare-fun array_inv!15945 (array!42134) Bool)

(assert (=> start!66276 (array_inv!15945 a!3186)))

(declare-fun b!763175 () Bool)

(declare-fun res!516332 () Bool)

(assert (=> b!763175 (=> (not res!516332) (not e!425262))))

(assert (=> b!763175 (= res!516332 (validKeyInArray!0 (select (arr!20171 a!3186) j!159)))))

(declare-fun b!763176 () Bool)

(declare-fun res!516334 () Bool)

(assert (=> b!763176 (=> (not res!516334) (not e!425262))))

(assert (=> b!763176 (= res!516334 (and (= (size!20592 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20592 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20592 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!763177 () Bool)

(declare-fun res!516330 () Bool)

(assert (=> b!763177 (=> (not res!516330) (not e!425262))))

(declare-fun arrayContainsKey!0 (array!42134 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!763177 (= res!516330 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!763178 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42134 (_ BitVec 32)) SeekEntryResult!7778)

(assert (=> b!763178 (= e!425260 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20171 a!3186) j!159) a!3186 mask!3328) (Found!7778 j!159))))))

(declare-fun b!763179 () Bool)

(declare-fun res!516335 () Bool)

(assert (=> b!763179 (=> (not res!516335) (not e!425261))))

(assert (=> b!763179 (= res!516335 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20592 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20592 a!3186))))))

(declare-fun b!763180 () Bool)

(declare-fun res!516336 () Bool)

(assert (=> b!763180 (=> (not res!516336) (not e!425263))))

(assert (=> b!763180 (= res!516336 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20171 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!763181 () Bool)

(declare-fun res!516328 () Bool)

(assert (=> b!763181 (=> (not res!516328) (not e!425261))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42134 (_ BitVec 32)) Bool)

(assert (=> b!763181 (= res!516328 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(assert (= (and start!66276 res!516333) b!763176))

(assert (= (and b!763176 res!516334) b!763175))

(assert (= (and b!763175 res!516332) b!763170))

(assert (= (and b!763170 res!516331) b!763177))

(assert (= (and b!763177 res!516330) b!763172))

(assert (= (and b!763172 res!516329) b!763181))

(assert (= (and b!763181 res!516328) b!763169))

(assert (= (and b!763169 res!516327) b!763179))

(assert (= (and b!763179 res!516335) b!763174))

(assert (= (and b!763174 res!516326) b!763180))

(assert (= (and b!763180 res!516336) b!763171))

(assert (= (and b!763171 c!83808) b!763173))

(assert (= (and b!763171 (not c!83808)) b!763178))

(declare-fun m!709771 () Bool)

(assert (=> b!763172 m!709771))

(declare-fun m!709773 () Bool)

(assert (=> b!763177 m!709773))

(declare-fun m!709775 () Bool)

(assert (=> b!763178 m!709775))

(assert (=> b!763178 m!709775))

(declare-fun m!709777 () Bool)

(assert (=> b!763178 m!709777))

(assert (=> b!763174 m!709775))

(assert (=> b!763174 m!709775))

(declare-fun m!709779 () Bool)

(assert (=> b!763174 m!709779))

(assert (=> b!763174 m!709779))

(assert (=> b!763174 m!709775))

(declare-fun m!709781 () Bool)

(assert (=> b!763174 m!709781))

(declare-fun m!709783 () Bool)

(assert (=> b!763169 m!709783))

(declare-fun m!709785 () Bool)

(assert (=> b!763181 m!709785))

(declare-fun m!709787 () Bool)

(assert (=> b!763180 m!709787))

(assert (=> b!763175 m!709775))

(assert (=> b!763175 m!709775))

(declare-fun m!709789 () Bool)

(assert (=> b!763175 m!709789))

(declare-fun m!709791 () Bool)

(assert (=> start!66276 m!709791))

(declare-fun m!709793 () Bool)

(assert (=> start!66276 m!709793))

(assert (=> b!763173 m!709775))

(assert (=> b!763173 m!709775))

(declare-fun m!709795 () Bool)

(assert (=> b!763173 m!709795))

(declare-fun m!709797 () Bool)

(assert (=> b!763170 m!709797))

(push 1)

