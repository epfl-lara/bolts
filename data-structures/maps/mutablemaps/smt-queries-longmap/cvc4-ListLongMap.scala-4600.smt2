; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64196 () Bool)

(assert start!64196)

(declare-fun b!720571 () Bool)

(declare-fun e!404166 () Bool)

(declare-fun e!404168 () Bool)

(assert (=> b!720571 (= e!404166 e!404168)))

(declare-fun res!482847 () Bool)

(assert (=> b!720571 (=> (not res!482847) (not e!404168))))

(declare-datatypes ((array!40787 0))(
  ( (array!40788 (arr!19514 (Array (_ BitVec 32) (_ BitVec 64))) (size!19935 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40787)

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7121 0))(
  ( (MissingZero!7121 (index!30851 (_ BitVec 32))) (Found!7121 (index!30852 (_ BitVec 32))) (Intermediate!7121 (undefined!7933 Bool) (index!30853 (_ BitVec 32)) (x!61882 (_ BitVec 32))) (Undefined!7121) (MissingVacant!7121 (index!30854 (_ BitVec 32))) )
))
(declare-fun lt!319835 () SeekEntryResult!7121)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40787 (_ BitVec 32)) SeekEntryResult!7121)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!720571 (= res!482847 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19514 a!3186) j!159) mask!3328) (select (arr!19514 a!3186) j!159) a!3186 mask!3328) lt!319835))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!720571 (= lt!319835 (Intermediate!7121 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!720572 () Bool)

(declare-fun res!482849 () Bool)

(assert (=> b!720572 (=> (not res!482849) (not e!404166))))

(declare-datatypes ((List!13569 0))(
  ( (Nil!13566) (Cons!13565 (h!14616 (_ BitVec 64)) (t!19892 List!13569)) )
))
(declare-fun arrayNoDuplicates!0 (array!40787 (_ BitVec 32) List!13569) Bool)

(assert (=> b!720572 (= res!482849 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13566))))

(declare-fun b!720573 () Bool)

(declare-fun res!482850 () Bool)

(declare-fun e!404165 () Bool)

(assert (=> b!720573 (=> (not res!482850) (not e!404165))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!720573 (= res!482850 (validKeyInArray!0 (select (arr!19514 a!3186) j!159)))))

(declare-fun b!720574 () Bool)

(declare-fun res!482846 () Bool)

(assert (=> b!720574 (=> (not res!482846) (not e!404168))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!720574 (= res!482846 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19514 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!720575 () Bool)

(declare-fun res!482839 () Bool)

(assert (=> b!720575 (=> (not res!482839) (not e!404165))))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!720575 (= res!482839 (validKeyInArray!0 k!2102))))

(declare-fun b!720576 () Bool)

(declare-fun res!482840 () Bool)

(assert (=> b!720576 (=> (not res!482840) (not e!404165))))

(declare-fun arrayContainsKey!0 (array!40787 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!720576 (= res!482840 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!720577 () Bool)

(declare-fun res!482842 () Bool)

(assert (=> b!720577 (=> (not res!482842) (not e!404168))))

(declare-fun e!404167 () Bool)

(assert (=> b!720577 (= res!482842 e!404167)))

(declare-fun c!79236 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!720577 (= c!79236 (bvsle x!1131 resIntermediateX!5))))

(declare-fun res!482841 () Bool)

(assert (=> start!64196 (=> (not res!482841) (not e!404165))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64196 (= res!482841 (validMask!0 mask!3328))))

(assert (=> start!64196 e!404165))

(assert (=> start!64196 true))

(declare-fun array_inv!15288 (array!40787) Bool)

(assert (=> start!64196 (array_inv!15288 a!3186)))

(declare-fun b!720578 () Bool)

(assert (=> b!720578 (= e!404168 false)))

(declare-fun lt!319834 () (_ BitVec 32))

(assert (=> b!720578 (= lt!319834 (toIndex!0 (select (store (arr!19514 a!3186) i!1173 k!2102) j!159) mask!3328))))

(declare-fun b!720579 () Bool)

(declare-fun res!482844 () Bool)

(assert (=> b!720579 (=> (not res!482844) (not e!404165))))

(assert (=> b!720579 (= res!482844 (and (= (size!19935 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19935 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19935 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!720580 () Bool)

(declare-fun res!482845 () Bool)

(assert (=> b!720580 (=> (not res!482845) (not e!404166))))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!720580 (= res!482845 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19935 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19935 a!3186))))))

(declare-fun b!720581 () Bool)

(assert (=> b!720581 (= e!404167 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19514 a!3186) j!159) a!3186 mask!3328) lt!319835))))

(declare-fun b!720582 () Bool)

(assert (=> b!720582 (= e!404165 e!404166)))

(declare-fun res!482843 () Bool)

(assert (=> b!720582 (=> (not res!482843) (not e!404166))))

(declare-fun lt!319833 () SeekEntryResult!7121)

(assert (=> b!720582 (= res!482843 (or (= lt!319833 (MissingZero!7121 i!1173)) (= lt!319833 (MissingVacant!7121 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40787 (_ BitVec 32)) SeekEntryResult!7121)

(assert (=> b!720582 (= lt!319833 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!720583 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40787 (_ BitVec 32)) SeekEntryResult!7121)

(assert (=> b!720583 (= e!404167 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19514 a!3186) j!159) a!3186 mask!3328) (Found!7121 j!159)))))

(declare-fun b!720584 () Bool)

(declare-fun res!482848 () Bool)

(assert (=> b!720584 (=> (not res!482848) (not e!404166))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40787 (_ BitVec 32)) Bool)

(assert (=> b!720584 (= res!482848 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(assert (= (and start!64196 res!482841) b!720579))

(assert (= (and b!720579 res!482844) b!720573))

(assert (= (and b!720573 res!482850) b!720575))

(assert (= (and b!720575 res!482839) b!720576))

(assert (= (and b!720576 res!482840) b!720582))

(assert (= (and b!720582 res!482843) b!720584))

(assert (= (and b!720584 res!482848) b!720572))

(assert (= (and b!720572 res!482849) b!720580))

(assert (= (and b!720580 res!482845) b!720571))

(assert (= (and b!720571 res!482847) b!720574))

(assert (= (and b!720574 res!482846) b!720577))

(assert (= (and b!720577 c!79236) b!720581))

(assert (= (and b!720577 (not c!79236)) b!720583))

(assert (= (and b!720577 res!482842) b!720578))

(declare-fun m!675699 () Bool)

(assert (=> b!720581 m!675699))

(assert (=> b!720581 m!675699))

(declare-fun m!675701 () Bool)

(assert (=> b!720581 m!675701))

(assert (=> b!720571 m!675699))

(assert (=> b!720571 m!675699))

(declare-fun m!675703 () Bool)

(assert (=> b!720571 m!675703))

(assert (=> b!720571 m!675703))

(assert (=> b!720571 m!675699))

(declare-fun m!675705 () Bool)

(assert (=> b!720571 m!675705))

(declare-fun m!675707 () Bool)

(assert (=> b!720574 m!675707))

(declare-fun m!675709 () Bool)

(assert (=> b!720572 m!675709))

(declare-fun m!675711 () Bool)

(assert (=> b!720576 m!675711))

(declare-fun m!675713 () Bool)

(assert (=> b!720582 m!675713))

(assert (=> b!720573 m!675699))

(assert (=> b!720573 m!675699))

(declare-fun m!675715 () Bool)

(assert (=> b!720573 m!675715))

(declare-fun m!675717 () Bool)

(assert (=> b!720578 m!675717))

(declare-fun m!675719 () Bool)

(assert (=> b!720578 m!675719))

(assert (=> b!720578 m!675719))

(declare-fun m!675721 () Bool)

(assert (=> b!720578 m!675721))

(assert (=> b!720583 m!675699))

(assert (=> b!720583 m!675699))

(declare-fun m!675723 () Bool)

(assert (=> b!720583 m!675723))

(declare-fun m!675725 () Bool)

(assert (=> start!64196 m!675725))

(declare-fun m!675727 () Bool)

(assert (=> start!64196 m!675727))

(declare-fun m!675729 () Bool)

(assert (=> b!720575 m!675729))

(declare-fun m!675731 () Bool)

(assert (=> b!720584 m!675731))

(push 1)

(assert (not b!720578))

