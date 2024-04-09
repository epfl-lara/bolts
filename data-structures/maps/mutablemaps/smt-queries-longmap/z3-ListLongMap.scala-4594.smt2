; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64098 () Bool)

(assert start!64098)

(declare-fun b!719604 () Bool)

(declare-fun res!482144 () Bool)

(declare-fun e!403749 () Bool)

(assert (=> b!719604 (=> (not res!482144) (not e!403749))))

(declare-datatypes ((array!40746 0))(
  ( (array!40747 (arr!19495 (Array (_ BitVec 32) (_ BitVec 64))) (size!19916 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40746)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!719604 (= res!482144 (and (= (size!19916 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19916 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19916 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!719605 () Bool)

(declare-fun res!482143 () Bool)

(declare-fun e!403748 () Bool)

(assert (=> b!719605 (=> (not res!482143) (not e!403748))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40746 (_ BitVec 32)) Bool)

(assert (=> b!719605 (= res!482143 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!719606 () Bool)

(assert (=> b!719606 (= e!403748 false)))

(declare-datatypes ((SeekEntryResult!7102 0))(
  ( (MissingZero!7102 (index!30775 (_ BitVec 32))) (Found!7102 (index!30776 (_ BitVec 32))) (Intermediate!7102 (undefined!7914 Bool) (index!30777 (_ BitVec 32)) (x!61806 (_ BitVec 32))) (Undefined!7102) (MissingVacant!7102 (index!30778 (_ BitVec 32))) )
))
(declare-fun lt!319607 () SeekEntryResult!7102)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40746 (_ BitVec 32)) SeekEntryResult!7102)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!719606 (= lt!319607 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19495 a!3186) j!159) mask!3328) (select (arr!19495 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!719607 () Bool)

(assert (=> b!719607 (= e!403749 e!403748)))

(declare-fun res!482141 () Bool)

(assert (=> b!719607 (=> (not res!482141) (not e!403748))))

(declare-fun lt!319606 () SeekEntryResult!7102)

(assert (=> b!719607 (= res!482141 (or (= lt!319606 (MissingZero!7102 i!1173)) (= lt!319606 (MissingVacant!7102 i!1173))))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40746 (_ BitVec 32)) SeekEntryResult!7102)

(assert (=> b!719607 (= lt!319606 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!719608 () Bool)

(declare-fun res!482140 () Bool)

(assert (=> b!719608 (=> (not res!482140) (not e!403748))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!719608 (= res!482140 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19916 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19916 a!3186))))))

(declare-fun res!482145 () Bool)

(assert (=> start!64098 (=> (not res!482145) (not e!403749))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64098 (= res!482145 (validMask!0 mask!3328))))

(assert (=> start!64098 e!403749))

(assert (=> start!64098 true))

(declare-fun array_inv!15269 (array!40746) Bool)

(assert (=> start!64098 (array_inv!15269 a!3186)))

(declare-fun b!719609 () Bool)

(declare-fun res!482139 () Bool)

(assert (=> b!719609 (=> (not res!482139) (not e!403748))))

(declare-datatypes ((List!13550 0))(
  ( (Nil!13547) (Cons!13546 (h!14594 (_ BitVec 64)) (t!19873 List!13550)) )
))
(declare-fun arrayNoDuplicates!0 (array!40746 (_ BitVec 32) List!13550) Bool)

(assert (=> b!719609 (= res!482139 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13547))))

(declare-fun b!719610 () Bool)

(declare-fun res!482137 () Bool)

(assert (=> b!719610 (=> (not res!482137) (not e!403749))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!719610 (= res!482137 (validKeyInArray!0 k0!2102))))

(declare-fun b!719611 () Bool)

(declare-fun res!482142 () Bool)

(assert (=> b!719611 (=> (not res!482142) (not e!403749))))

(declare-fun arrayContainsKey!0 (array!40746 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!719611 (= res!482142 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!719612 () Bool)

(declare-fun res!482138 () Bool)

(assert (=> b!719612 (=> (not res!482138) (not e!403749))))

(assert (=> b!719612 (= res!482138 (validKeyInArray!0 (select (arr!19495 a!3186) j!159)))))

(assert (= (and start!64098 res!482145) b!719604))

(assert (= (and b!719604 res!482144) b!719612))

(assert (= (and b!719612 res!482138) b!719610))

(assert (= (and b!719610 res!482137) b!719611))

(assert (= (and b!719611 res!482142) b!719607))

(assert (= (and b!719607 res!482141) b!719605))

(assert (= (and b!719605 res!482143) b!719609))

(assert (= (and b!719609 res!482139) b!719608))

(assert (= (and b!719608 res!482140) b!719606))

(declare-fun m!675053 () Bool)

(assert (=> b!719612 m!675053))

(assert (=> b!719612 m!675053))

(declare-fun m!675055 () Bool)

(assert (=> b!719612 m!675055))

(declare-fun m!675057 () Bool)

(assert (=> start!64098 m!675057))

(declare-fun m!675059 () Bool)

(assert (=> start!64098 m!675059))

(declare-fun m!675061 () Bool)

(assert (=> b!719611 m!675061))

(declare-fun m!675063 () Bool)

(assert (=> b!719610 m!675063))

(declare-fun m!675065 () Bool)

(assert (=> b!719605 m!675065))

(declare-fun m!675067 () Bool)

(assert (=> b!719607 m!675067))

(assert (=> b!719606 m!675053))

(assert (=> b!719606 m!675053))

(declare-fun m!675069 () Bool)

(assert (=> b!719606 m!675069))

(assert (=> b!719606 m!675069))

(assert (=> b!719606 m!675053))

(declare-fun m!675071 () Bool)

(assert (=> b!719606 m!675071))

(declare-fun m!675073 () Bool)

(assert (=> b!719609 m!675073))

(check-sat (not b!719607) (not b!719612) (not b!719611) (not b!719610) (not start!64098) (not b!719605) (not b!719606) (not b!719609))
