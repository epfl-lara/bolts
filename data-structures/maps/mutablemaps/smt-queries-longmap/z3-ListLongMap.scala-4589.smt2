; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64068 () Bool)

(assert start!64068)

(declare-fun b!719181 () Bool)

(declare-fun e!403612 () Bool)

(declare-fun e!403614 () Bool)

(assert (=> b!719181 (= e!403612 e!403614)))

(declare-fun res!481715 () Bool)

(assert (=> b!719181 (=> (not res!481715) (not e!403614))))

(declare-datatypes ((SeekEntryResult!7087 0))(
  ( (MissingZero!7087 (index!30715 (_ BitVec 32))) (Found!7087 (index!30716 (_ BitVec 32))) (Intermediate!7087 (undefined!7899 Bool) (index!30717 (_ BitVec 32)) (x!61751 (_ BitVec 32))) (Undefined!7087) (MissingVacant!7087 (index!30718 (_ BitVec 32))) )
))
(declare-fun lt!319535 () SeekEntryResult!7087)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!719181 (= res!481715 (or (= lt!319535 (MissingZero!7087 i!1173)) (= lt!319535 (MissingVacant!7087 i!1173))))))

(declare-datatypes ((array!40716 0))(
  ( (array!40717 (arr!19480 (Array (_ BitVec 32) (_ BitVec 64))) (size!19901 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40716)

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40716 (_ BitVec 32)) SeekEntryResult!7087)

(assert (=> b!719181 (= lt!319535 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!719182 () Bool)

(declare-fun res!481718 () Bool)

(assert (=> b!719182 (=> (not res!481718) (not e!403612))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!719182 (= res!481718 (validKeyInArray!0 (select (arr!19480 a!3186) j!159)))))

(declare-fun b!719184 () Bool)

(declare-fun res!481714 () Bool)

(assert (=> b!719184 (=> (not res!481714) (not e!403612))))

(assert (=> b!719184 (= res!481714 (and (= (size!19901 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19901 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19901 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!719185 () Bool)

(declare-fun res!481722 () Bool)

(assert (=> b!719185 (=> (not res!481722) (not e!403614))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!719185 (= res!481722 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19901 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19901 a!3186))))))

(declare-fun b!719186 () Bool)

(declare-fun res!481717 () Bool)

(assert (=> b!719186 (=> (not res!481717) (not e!403612))))

(assert (=> b!719186 (= res!481717 (validKeyInArray!0 k0!2102))))

(declare-fun b!719187 () Bool)

(assert (=> b!719187 (= e!403614 false)))

(declare-fun lt!319534 () SeekEntryResult!7087)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40716 (_ BitVec 32)) SeekEntryResult!7087)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!719187 (= lt!319534 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19480 a!3186) j!159) mask!3328) (select (arr!19480 a!3186) j!159) a!3186 mask!3328))))

(declare-fun res!481716 () Bool)

(assert (=> start!64068 (=> (not res!481716) (not e!403612))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64068 (= res!481716 (validMask!0 mask!3328))))

(assert (=> start!64068 e!403612))

(assert (=> start!64068 true))

(declare-fun array_inv!15254 (array!40716) Bool)

(assert (=> start!64068 (array_inv!15254 a!3186)))

(declare-fun b!719183 () Bool)

(declare-fun res!481719 () Bool)

(assert (=> b!719183 (=> (not res!481719) (not e!403612))))

(declare-fun arrayContainsKey!0 (array!40716 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!719183 (= res!481719 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!719188 () Bool)

(declare-fun res!481721 () Bool)

(assert (=> b!719188 (=> (not res!481721) (not e!403614))))

(declare-datatypes ((List!13535 0))(
  ( (Nil!13532) (Cons!13531 (h!14579 (_ BitVec 64)) (t!19858 List!13535)) )
))
(declare-fun arrayNoDuplicates!0 (array!40716 (_ BitVec 32) List!13535) Bool)

(assert (=> b!719188 (= res!481721 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13532))))

(declare-fun b!719189 () Bool)

(declare-fun res!481720 () Bool)

(assert (=> b!719189 (=> (not res!481720) (not e!403614))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40716 (_ BitVec 32)) Bool)

(assert (=> b!719189 (= res!481720 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(assert (= (and start!64068 res!481716) b!719184))

(assert (= (and b!719184 res!481714) b!719182))

(assert (= (and b!719182 res!481718) b!719186))

(assert (= (and b!719186 res!481717) b!719183))

(assert (= (and b!719183 res!481719) b!719181))

(assert (= (and b!719181 res!481715) b!719189))

(assert (= (and b!719189 res!481720) b!719188))

(assert (= (and b!719188 res!481721) b!719185))

(assert (= (and b!719185 res!481722) b!719187))

(declare-fun m!674711 () Bool)

(assert (=> b!719182 m!674711))

(assert (=> b!719182 m!674711))

(declare-fun m!674713 () Bool)

(assert (=> b!719182 m!674713))

(declare-fun m!674715 () Bool)

(assert (=> start!64068 m!674715))

(declare-fun m!674717 () Bool)

(assert (=> start!64068 m!674717))

(declare-fun m!674719 () Bool)

(assert (=> b!719183 m!674719))

(assert (=> b!719187 m!674711))

(assert (=> b!719187 m!674711))

(declare-fun m!674721 () Bool)

(assert (=> b!719187 m!674721))

(assert (=> b!719187 m!674721))

(assert (=> b!719187 m!674711))

(declare-fun m!674723 () Bool)

(assert (=> b!719187 m!674723))

(declare-fun m!674725 () Bool)

(assert (=> b!719189 m!674725))

(declare-fun m!674727 () Bool)

(assert (=> b!719181 m!674727))

(declare-fun m!674729 () Bool)

(assert (=> b!719186 m!674729))

(declare-fun m!674731 () Bool)

(assert (=> b!719188 m!674731))

(check-sat (not b!719186) (not b!719187) (not b!719183) (not start!64068) (not b!719181) (not b!719182) (not b!719188) (not b!719189))
(check-sat)
