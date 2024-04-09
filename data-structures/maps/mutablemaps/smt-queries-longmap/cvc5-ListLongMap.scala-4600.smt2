; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64192 () Bool)

(assert start!64192)

(declare-fun b!720487 () Bool)

(declare-datatypes ((array!40783 0))(
  ( (array!40784 (arr!19512 (Array (_ BitVec 32) (_ BitVec 64))) (size!19933 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40783)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun e!404138 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7119 0))(
  ( (MissingZero!7119 (index!30843 (_ BitVec 32))) (Found!7119 (index!30844 (_ BitVec 32))) (Intermediate!7119 (undefined!7931 Bool) (index!30845 (_ BitVec 32)) (x!61880 (_ BitVec 32))) (Undefined!7119) (MissingVacant!7119 (index!30846 (_ BitVec 32))) )
))
(declare-fun lt!319817 () SeekEntryResult!7119)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40783 (_ BitVec 32)) SeekEntryResult!7119)

(assert (=> b!720487 (= e!404138 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19512 a!3186) j!159) a!3186 mask!3328) lt!319817))))

(declare-fun b!720488 () Bool)

(declare-fun res!482775 () Bool)

(declare-fun e!404136 () Bool)

(assert (=> b!720488 (=> (not res!482775) (not e!404136))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!720488 (= res!482775 (validKeyInArray!0 k!2102))))

(declare-fun b!720489 () Bool)

(declare-fun res!482772 () Bool)

(declare-fun e!404137 () Bool)

(assert (=> b!720489 (=> (not res!482772) (not e!404137))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!720489 (= res!482772 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19933 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19933 a!3186))))))

(declare-fun b!720490 () Bool)

(declare-fun res!482774 () Bool)

(assert (=> b!720490 (=> (not res!482774) (not e!404136))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!720490 (= res!482774 (and (= (size!19933 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19933 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19933 a!3186)) (not (= i!1173 j!159))))))

(declare-fun res!482768 () Bool)

(assert (=> start!64192 (=> (not res!482768) (not e!404136))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64192 (= res!482768 (validMask!0 mask!3328))))

(assert (=> start!64192 e!404136))

(assert (=> start!64192 true))

(declare-fun array_inv!15286 (array!40783) Bool)

(assert (=> start!64192 (array_inv!15286 a!3186)))

(declare-fun b!720491 () Bool)

(declare-fun res!482777 () Bool)

(declare-fun e!404139 () Bool)

(assert (=> b!720491 (=> (not res!482777) (not e!404139))))

(assert (=> b!720491 (= res!482777 e!404138)))

(declare-fun c!79230 () Bool)

(assert (=> b!720491 (= c!79230 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!720492 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40783 (_ BitVec 32)) SeekEntryResult!7119)

(assert (=> b!720492 (= e!404138 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19512 a!3186) j!159) a!3186 mask!3328) (Found!7119 j!159)))))

(declare-fun b!720493 () Bool)

(declare-fun res!482770 () Bool)

(assert (=> b!720493 (=> (not res!482770) (not e!404137))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40783 (_ BitVec 32)) Bool)

(assert (=> b!720493 (= res!482770 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!720494 () Bool)

(assert (=> b!720494 (= e!404136 e!404137)))

(declare-fun res!482776 () Bool)

(assert (=> b!720494 (=> (not res!482776) (not e!404137))))

(declare-fun lt!319816 () SeekEntryResult!7119)

(assert (=> b!720494 (= res!482776 (or (= lt!319816 (MissingZero!7119 i!1173)) (= lt!319816 (MissingVacant!7119 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40783 (_ BitVec 32)) SeekEntryResult!7119)

(assert (=> b!720494 (= lt!319816 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!720495 () Bool)

(declare-fun res!482769 () Bool)

(assert (=> b!720495 (=> (not res!482769) (not e!404137))))

(declare-datatypes ((List!13567 0))(
  ( (Nil!13564) (Cons!13563 (h!14614 (_ BitVec 64)) (t!19890 List!13567)) )
))
(declare-fun arrayNoDuplicates!0 (array!40783 (_ BitVec 32) List!13567) Bool)

(assert (=> b!720495 (= res!482769 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13564))))

(declare-fun b!720496 () Bool)

(declare-fun res!482773 () Bool)

(assert (=> b!720496 (=> (not res!482773) (not e!404139))))

(assert (=> b!720496 (= res!482773 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19512 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!720497 () Bool)

(declare-fun res!482778 () Bool)

(assert (=> b!720497 (=> (not res!482778) (not e!404136))))

(assert (=> b!720497 (= res!482778 (validKeyInArray!0 (select (arr!19512 a!3186) j!159)))))

(declare-fun b!720498 () Bool)

(assert (=> b!720498 (= e!404137 e!404139)))

(declare-fun res!482771 () Bool)

(assert (=> b!720498 (=> (not res!482771) (not e!404139))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!720498 (= res!482771 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19512 a!3186) j!159) mask!3328) (select (arr!19512 a!3186) j!159) a!3186 mask!3328) lt!319817))))

(assert (=> b!720498 (= lt!319817 (Intermediate!7119 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!720499 () Bool)

(assert (=> b!720499 (= e!404139 false)))

(declare-fun lt!319815 () (_ BitVec 32))

(assert (=> b!720499 (= lt!319815 (toIndex!0 (select (store (arr!19512 a!3186) i!1173 k!2102) j!159) mask!3328))))

(declare-fun b!720500 () Bool)

(declare-fun res!482767 () Bool)

(assert (=> b!720500 (=> (not res!482767) (not e!404136))))

(declare-fun arrayContainsKey!0 (array!40783 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!720500 (= res!482767 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(assert (= (and start!64192 res!482768) b!720490))

(assert (= (and b!720490 res!482774) b!720497))

(assert (= (and b!720497 res!482778) b!720488))

(assert (= (and b!720488 res!482775) b!720500))

(assert (= (and b!720500 res!482767) b!720494))

(assert (= (and b!720494 res!482776) b!720493))

(assert (= (and b!720493 res!482770) b!720495))

(assert (= (and b!720495 res!482769) b!720489))

(assert (= (and b!720489 res!482772) b!720498))

(assert (= (and b!720498 res!482771) b!720496))

(assert (= (and b!720496 res!482773) b!720491))

(assert (= (and b!720491 c!79230) b!720487))

(assert (= (and b!720491 (not c!79230)) b!720492))

(assert (= (and b!720491 res!482777) b!720499))

(declare-fun m!675631 () Bool)

(assert (=> b!720499 m!675631))

(declare-fun m!675633 () Bool)

(assert (=> b!720499 m!675633))

(assert (=> b!720499 m!675633))

(declare-fun m!675635 () Bool)

(assert (=> b!720499 m!675635))

(declare-fun m!675637 () Bool)

(assert (=> b!720487 m!675637))

(assert (=> b!720487 m!675637))

(declare-fun m!675639 () Bool)

(assert (=> b!720487 m!675639))

(declare-fun m!675641 () Bool)

(assert (=> start!64192 m!675641))

(declare-fun m!675643 () Bool)

(assert (=> start!64192 m!675643))

(assert (=> b!720492 m!675637))

(assert (=> b!720492 m!675637))

(declare-fun m!675645 () Bool)

(assert (=> b!720492 m!675645))

(declare-fun m!675647 () Bool)

(assert (=> b!720496 m!675647))

(assert (=> b!720497 m!675637))

(assert (=> b!720497 m!675637))

(declare-fun m!675649 () Bool)

(assert (=> b!720497 m!675649))

(assert (=> b!720498 m!675637))

(assert (=> b!720498 m!675637))

(declare-fun m!675651 () Bool)

(assert (=> b!720498 m!675651))

(assert (=> b!720498 m!675651))

(assert (=> b!720498 m!675637))

(declare-fun m!675653 () Bool)

(assert (=> b!720498 m!675653))

(declare-fun m!675655 () Bool)

(assert (=> b!720500 m!675655))

(declare-fun m!675657 () Bool)

(assert (=> b!720488 m!675657))

(declare-fun m!675659 () Bool)

(assert (=> b!720495 m!675659))

(declare-fun m!675661 () Bool)

(assert (=> b!720493 m!675661))

(declare-fun m!675663 () Bool)

(assert (=> b!720494 m!675663))

(push 1)

