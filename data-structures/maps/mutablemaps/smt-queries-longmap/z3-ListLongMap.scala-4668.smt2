; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64944 () Bool)

(assert start!64944)

(declare-fun b!732680 () Bool)

(declare-fun e!410009 () Bool)

(declare-fun e!410010 () Bool)

(assert (=> b!732680 (= e!410009 e!410010)))

(declare-fun res!492378 () Bool)

(assert (=> b!732680 (=> (not res!492378) (not e!410010))))

(declare-datatypes ((array!41208 0))(
  ( (array!41209 (arr!19717 (Array (_ BitVec 32) (_ BitVec 64))) (size!20138 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41208)

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7324 0))(
  ( (MissingZero!7324 (index!31663 (_ BitVec 32))) (Found!7324 (index!31664 (_ BitVec 32))) (Intermediate!7324 (undefined!8136 Bool) (index!31665 (_ BitVec 32)) (x!62683 (_ BitVec 32))) (Undefined!7324) (MissingVacant!7324 (index!31666 (_ BitVec 32))) )
))
(declare-fun lt!324722 () SeekEntryResult!7324)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41208 (_ BitVec 32)) SeekEntryResult!7324)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!732680 (= res!492378 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19717 a!3186) j!159) mask!3328) (select (arr!19717 a!3186) j!159) a!3186 mask!3328) lt!324722))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!732680 (= lt!324722 (Intermediate!7324 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!732681 () Bool)

(declare-fun res!492377 () Bool)

(assert (=> b!732681 (=> (not res!492377) (not e!410010))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!732681 (= res!492377 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19717 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!732682 () Bool)

(declare-fun res!492387 () Bool)

(declare-fun e!410013 () Bool)

(assert (=> b!732682 (=> (not res!492387) (not e!410013))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!732682 (= res!492387 (validKeyInArray!0 (select (arr!19717 a!3186) j!159)))))

(declare-fun b!732683 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun e!410012 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!732683 (= e!410012 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19717 a!3186) j!159) a!3186 mask!3328) lt!324722))))

(declare-fun b!732684 () Bool)

(declare-fun lt!324726 () SeekEntryResult!7324)

(declare-fun e!410011 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41208 (_ BitVec 32)) SeekEntryResult!7324)

(assert (=> b!732684 (= e!410011 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19717 a!3186) j!159) a!3186 mask!3328) lt!324726))))

(declare-fun b!732685 () Bool)

(declare-fun res!492382 () Bool)

(assert (=> b!732685 (=> (not res!492382) (not e!410009))))

(assert (=> b!732685 (= res!492382 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20138 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20138 a!3186))))))

(declare-fun b!732686 () Bool)

(declare-fun e!410007 () Bool)

(assert (=> b!732686 (= e!410007 true)))

(declare-fun lt!324720 () SeekEntryResult!7324)

(assert (=> b!732686 (= lt!324720 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19717 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!732687 () Bool)

(declare-fun res!492381 () Bool)

(assert (=> b!732687 (=> (not res!492381) (not e!410013))))

(assert (=> b!732687 (= res!492381 (and (= (size!20138 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20138 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20138 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!732688 () Bool)

(declare-fun res!492371 () Bool)

(assert (=> b!732688 (=> (not res!492371) (not e!410010))))

(assert (=> b!732688 (= res!492371 e!410012)))

(declare-fun c!80532 () Bool)

(assert (=> b!732688 (= c!80532 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!732689 () Bool)

(declare-fun e!410008 () Bool)

(assert (=> b!732689 (= e!410008 e!410011)))

(declare-fun res!492379 () Bool)

(assert (=> b!732689 (=> (not res!492379) (not e!410011))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41208 (_ BitVec 32)) SeekEntryResult!7324)

(assert (=> b!732689 (= res!492379 (= (seekEntryOrOpen!0 (select (arr!19717 a!3186) j!159) a!3186 mask!3328) lt!324726))))

(assert (=> b!732689 (= lt!324726 (Found!7324 j!159))))

(declare-fun b!732690 () Bool)

(declare-fun res!492380 () Bool)

(assert (=> b!732690 (=> (not res!492380) (not e!410013))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!41208 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!732690 (= res!492380 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!732692 () Bool)

(declare-fun res!492386 () Bool)

(assert (=> b!732692 (=> (not res!492386) (not e!410009))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41208 (_ BitVec 32)) Bool)

(assert (=> b!732692 (= res!492386 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!732693 () Bool)

(declare-fun e!410004 () Bool)

(declare-fun e!410005 () Bool)

(assert (=> b!732693 (= e!410004 (not e!410005))))

(declare-fun res!492376 () Bool)

(assert (=> b!732693 (=> res!492376 e!410005)))

(declare-fun lt!324725 () SeekEntryResult!7324)

(get-info :version)

(assert (=> b!732693 (= res!492376 (or (not ((_ is Intermediate!7324) lt!324725)) (bvsge x!1131 (x!62683 lt!324725))))))

(assert (=> b!732693 e!410008))

(declare-fun res!492374 () Bool)

(assert (=> b!732693 (=> (not res!492374) (not e!410008))))

(assert (=> b!732693 (= res!492374 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24966 0))(
  ( (Unit!24967) )
))
(declare-fun lt!324721 () Unit!24966)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41208 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24966)

(assert (=> b!732693 (= lt!324721 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!732694 () Bool)

(declare-fun res!492372 () Bool)

(assert (=> b!732694 (=> (not res!492372) (not e!410013))))

(assert (=> b!732694 (= res!492372 (validKeyInArray!0 k0!2102))))

(declare-fun b!732695 () Bool)

(assert (=> b!732695 (= e!410013 e!410009)))

(declare-fun res!492385 () Bool)

(assert (=> b!732695 (=> (not res!492385) (not e!410009))))

(declare-fun lt!324724 () SeekEntryResult!7324)

(assert (=> b!732695 (= res!492385 (or (= lt!324724 (MissingZero!7324 i!1173)) (= lt!324724 (MissingVacant!7324 i!1173))))))

(assert (=> b!732695 (= lt!324724 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!732696 () Bool)

(assert (=> b!732696 (= e!410005 e!410007)))

(declare-fun res!492383 () Bool)

(assert (=> b!732696 (=> res!492383 e!410007)))

(assert (=> b!732696 (= res!492383 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun lt!324728 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!732696 (= lt!324728 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!732697 () Bool)

(assert (=> b!732697 (= e!410012 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19717 a!3186) j!159) a!3186 mask!3328) (Found!7324 j!159)))))

(declare-fun b!732698 () Bool)

(assert (=> b!732698 (= e!410010 e!410004)))

(declare-fun res!492384 () Bool)

(assert (=> b!732698 (=> (not res!492384) (not e!410004))))

(declare-fun lt!324723 () SeekEntryResult!7324)

(assert (=> b!732698 (= res!492384 (= lt!324723 lt!324725))))

(declare-fun lt!324727 () array!41208)

(declare-fun lt!324719 () (_ BitVec 64))

(assert (=> b!732698 (= lt!324725 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!324719 lt!324727 mask!3328))))

(assert (=> b!732698 (= lt!324723 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!324719 mask!3328) lt!324719 lt!324727 mask!3328))))

(assert (=> b!732698 (= lt!324719 (select (store (arr!19717 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!732698 (= lt!324727 (array!41209 (store (arr!19717 a!3186) i!1173 k0!2102) (size!20138 a!3186)))))

(declare-fun b!732691 () Bool)

(declare-fun res!492373 () Bool)

(assert (=> b!732691 (=> (not res!492373) (not e!410009))))

(declare-datatypes ((List!13772 0))(
  ( (Nil!13769) (Cons!13768 (h!14834 (_ BitVec 64)) (t!20095 List!13772)) )
))
(declare-fun arrayNoDuplicates!0 (array!41208 (_ BitVec 32) List!13772) Bool)

(assert (=> b!732691 (= res!492373 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13769))))

(declare-fun res!492375 () Bool)

(assert (=> start!64944 (=> (not res!492375) (not e!410013))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64944 (= res!492375 (validMask!0 mask!3328))))

(assert (=> start!64944 e!410013))

(assert (=> start!64944 true))

(declare-fun array_inv!15491 (array!41208) Bool)

(assert (=> start!64944 (array_inv!15491 a!3186)))

(assert (= (and start!64944 res!492375) b!732687))

(assert (= (and b!732687 res!492381) b!732682))

(assert (= (and b!732682 res!492387) b!732694))

(assert (= (and b!732694 res!492372) b!732690))

(assert (= (and b!732690 res!492380) b!732695))

(assert (= (and b!732695 res!492385) b!732692))

(assert (= (and b!732692 res!492386) b!732691))

(assert (= (and b!732691 res!492373) b!732685))

(assert (= (and b!732685 res!492382) b!732680))

(assert (= (and b!732680 res!492378) b!732681))

(assert (= (and b!732681 res!492377) b!732688))

(assert (= (and b!732688 c!80532) b!732683))

(assert (= (and b!732688 (not c!80532)) b!732697))

(assert (= (and b!732688 res!492371) b!732698))

(assert (= (and b!732698 res!492384) b!732693))

(assert (= (and b!732693 res!492374) b!732689))

(assert (= (and b!732689 res!492379) b!732684))

(assert (= (and b!732693 (not res!492376)) b!732696))

(assert (= (and b!732696 (not res!492383)) b!732686))

(declare-fun m!685777 () Bool)

(assert (=> b!732691 m!685777))

(declare-fun m!685779 () Bool)

(assert (=> b!732689 m!685779))

(assert (=> b!732689 m!685779))

(declare-fun m!685781 () Bool)

(assert (=> b!732689 m!685781))

(assert (=> b!732697 m!685779))

(assert (=> b!732697 m!685779))

(declare-fun m!685783 () Bool)

(assert (=> b!732697 m!685783))

(assert (=> b!732684 m!685779))

(assert (=> b!732684 m!685779))

(declare-fun m!685785 () Bool)

(assert (=> b!732684 m!685785))

(assert (=> b!732686 m!685779))

(assert (=> b!732686 m!685779))

(assert (=> b!732686 m!685783))

(declare-fun m!685787 () Bool)

(assert (=> b!732681 m!685787))

(declare-fun m!685789 () Bool)

(assert (=> b!732698 m!685789))

(declare-fun m!685791 () Bool)

(assert (=> b!732698 m!685791))

(declare-fun m!685793 () Bool)

(assert (=> b!732698 m!685793))

(declare-fun m!685795 () Bool)

(assert (=> b!732698 m!685795))

(assert (=> b!732698 m!685793))

(declare-fun m!685797 () Bool)

(assert (=> b!732698 m!685797))

(assert (=> b!732680 m!685779))

(assert (=> b!732680 m!685779))

(declare-fun m!685799 () Bool)

(assert (=> b!732680 m!685799))

(assert (=> b!732680 m!685799))

(assert (=> b!732680 m!685779))

(declare-fun m!685801 () Bool)

(assert (=> b!732680 m!685801))

(declare-fun m!685803 () Bool)

(assert (=> b!732696 m!685803))

(declare-fun m!685805 () Bool)

(assert (=> b!732694 m!685805))

(assert (=> b!732682 m!685779))

(assert (=> b!732682 m!685779))

(declare-fun m!685807 () Bool)

(assert (=> b!732682 m!685807))

(declare-fun m!685809 () Bool)

(assert (=> start!64944 m!685809))

(declare-fun m!685811 () Bool)

(assert (=> start!64944 m!685811))

(assert (=> b!732683 m!685779))

(assert (=> b!732683 m!685779))

(declare-fun m!685813 () Bool)

(assert (=> b!732683 m!685813))

(declare-fun m!685815 () Bool)

(assert (=> b!732695 m!685815))

(declare-fun m!685817 () Bool)

(assert (=> b!732692 m!685817))

(declare-fun m!685819 () Bool)

(assert (=> b!732693 m!685819))

(declare-fun m!685821 () Bool)

(assert (=> b!732693 m!685821))

(declare-fun m!685823 () Bool)

(assert (=> b!732690 m!685823))

(check-sat (not b!732686) (not b!732695) (not b!732680) (not start!64944) (not b!732683) (not b!732684) (not b!732690) (not b!732698) (not b!732697) (not b!732696) (not b!732682) (not b!732691) (not b!732693) (not b!732694) (not b!732692) (not b!732689))
(check-sat)
