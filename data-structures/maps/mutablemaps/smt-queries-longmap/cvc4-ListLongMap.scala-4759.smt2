; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65636 () Bool)

(assert start!65636)

(declare-fun b!750641 () Bool)

(declare-fun e!418818 () Bool)

(declare-fun e!418811 () Bool)

(assert (=> b!750641 (= e!418818 e!418811)))

(declare-fun res!506793 () Bool)

(assert (=> b!750641 (=> (not res!506793) (not e!418811))))

(declare-datatypes ((SeekEntryResult!7598 0))(
  ( (MissingZero!7598 (index!32759 (_ BitVec 32))) (Found!7598 (index!32760 (_ BitVec 32))) (Intermediate!7598 (undefined!8410 Bool) (index!32761 (_ BitVec 32)) (x!63709 (_ BitVec 32))) (Undefined!7598) (MissingVacant!7598 (index!32762 (_ BitVec 32))) )
))
(declare-fun lt!333817 () SeekEntryResult!7598)

(declare-fun lt!333811 () SeekEntryResult!7598)

(assert (=> b!750641 (= res!506793 (= lt!333817 lt!333811))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-datatypes ((array!41762 0))(
  ( (array!41763 (arr!19991 (Array (_ BitVec 32) (_ BitVec 64))) (size!20412 (_ BitVec 32))) )
))
(declare-fun lt!333809 () array!41762)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun lt!333813 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41762 (_ BitVec 32)) SeekEntryResult!7598)

(assert (=> b!750641 (= lt!333811 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!333813 lt!333809 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!750641 (= lt!333817 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!333813 mask!3328) lt!333813 lt!333809 mask!3328))))

(declare-fun a!3186 () array!41762)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!750641 (= lt!333813 (select (store (arr!19991 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!750641 (= lt!333809 (array!41763 (store (arr!19991 a!3186) i!1173 k!2102) (size!20412 a!3186)))))

(declare-fun b!750642 () Bool)

(declare-fun e!418812 () Bool)

(assert (=> b!750642 (= e!418812 (or (bvslt mask!3328 #b00000000000000000000000000000000) (bvslt index!1321 (bvadd #b00000000000000000000000000000001 mask!3328))))))

(declare-fun e!418808 () Bool)

(assert (=> b!750642 e!418808))

(declare-fun res!506785 () Bool)

(assert (=> b!750642 (=> (not res!506785) (not e!418808))))

(declare-fun lt!333815 () (_ BitVec 64))

(assert (=> b!750642 (= res!506785 (= lt!333815 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!25794 0))(
  ( (Unit!25795) )
))
(declare-fun lt!333816 () Unit!25794)

(declare-fun e!418817 () Unit!25794)

(assert (=> b!750642 (= lt!333816 e!418817)))

(declare-fun c!82314 () Bool)

(assert (=> b!750642 (= c!82314 (= lt!333815 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!750643 () Bool)

(declare-fun res!506778 () Bool)

(declare-fun e!418814 () Bool)

(assert (=> b!750643 (=> (not res!506778) (not e!418814))))

(assert (=> b!750643 (= res!506778 (and (= (size!20412 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20412 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20412 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!750644 () Bool)

(declare-fun res!506784 () Bool)

(assert (=> b!750644 (=> (not res!506784) (not e!418814))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!750644 (= res!506784 (validKeyInArray!0 k!2102))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun b!750645 () Bool)

(declare-fun lt!333818 () SeekEntryResult!7598)

(declare-fun e!418816 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41762 (_ BitVec 32)) SeekEntryResult!7598)

(assert (=> b!750645 (= e!418816 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19991 a!3186) j!159) a!3186 mask!3328) lt!333818))))

(declare-fun e!418813 () Bool)

(declare-fun b!750646 () Bool)

(assert (=> b!750646 (= e!418813 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19991 a!3186) j!159) a!3186 mask!3328) (Found!7598 j!159)))))

(declare-fun b!750647 () Bool)

(declare-fun res!506786 () Bool)

(assert (=> b!750647 (=> (not res!506786) (not e!418814))))

(assert (=> b!750647 (= res!506786 (validKeyInArray!0 (select (arr!19991 a!3186) j!159)))))

(declare-fun b!750648 () Bool)

(declare-fun Unit!25796 () Unit!25794)

(assert (=> b!750648 (= e!418817 Unit!25796)))

(assert (=> b!750648 false))

(declare-fun b!750650 () Bool)

(declare-fun res!506780 () Bool)

(declare-fun e!418809 () Bool)

(assert (=> b!750650 (=> (not res!506780) (not e!418809))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41762 (_ BitVec 32)) Bool)

(assert (=> b!750650 (= res!506780 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!750651 () Bool)

(declare-fun res!506789 () Bool)

(assert (=> b!750651 (=> (not res!506789) (not e!418818))))

(assert (=> b!750651 (= res!506789 e!418813)))

(declare-fun c!82313 () Bool)

(assert (=> b!750651 (= c!82313 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!750652 () Bool)

(declare-fun res!506783 () Bool)

(assert (=> b!750652 (=> (not res!506783) (not e!418814))))

(declare-fun arrayContainsKey!0 (array!41762 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!750652 (= res!506783 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!750653 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41762 (_ BitVec 32)) SeekEntryResult!7598)

(assert (=> b!750653 (= e!418808 (= (seekEntryOrOpen!0 lt!333813 lt!333809 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!333813 lt!333809 mask!3328)))))

(declare-fun b!750654 () Bool)

(declare-fun Unit!25797 () Unit!25794)

(assert (=> b!750654 (= e!418817 Unit!25797)))

(declare-fun b!750655 () Bool)

(declare-fun e!418815 () Bool)

(assert (=> b!750655 (= e!418815 e!418812)))

(declare-fun res!506790 () Bool)

(assert (=> b!750655 (=> res!506790 e!418812)))

(assert (=> b!750655 (= res!506790 (= lt!333815 lt!333813))))

(assert (=> b!750655 (= lt!333815 (select (store (arr!19991 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!750656 () Bool)

(declare-fun res!506781 () Bool)

(assert (=> b!750656 (=> (not res!506781) (not e!418809))))

(declare-datatypes ((List!14046 0))(
  ( (Nil!14043) (Cons!14042 (h!15114 (_ BitVec 64)) (t!20369 List!14046)) )
))
(declare-fun arrayNoDuplicates!0 (array!41762 (_ BitVec 32) List!14046) Bool)

(assert (=> b!750656 (= res!506781 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14043))))

(declare-fun b!750657 () Bool)

(declare-fun res!506787 () Bool)

(assert (=> b!750657 (=> res!506787 e!418815)))

(assert (=> b!750657 (= res!506787 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19991 a!3186) j!159) a!3186 mask!3328) lt!333818)))))

(declare-fun b!750658 () Bool)

(declare-fun res!506788 () Bool)

(assert (=> b!750658 (=> (not res!506788) (not e!418809))))

(assert (=> b!750658 (= res!506788 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20412 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20412 a!3186))))))

(declare-fun b!750659 () Bool)

(assert (=> b!750659 (= e!418811 (not e!418815))))

(declare-fun res!506779 () Bool)

(assert (=> b!750659 (=> res!506779 e!418815)))

(assert (=> b!750659 (= res!506779 (or (not (is-Intermediate!7598 lt!333811)) (bvslt x!1131 (x!63709 lt!333811)) (not (= x!1131 (x!63709 lt!333811))) (not (= index!1321 (index!32761 lt!333811)))))))

(assert (=> b!750659 e!418816))

(declare-fun res!506791 () Bool)

(assert (=> b!750659 (=> (not res!506791) (not e!418816))))

(declare-fun lt!333810 () SeekEntryResult!7598)

(assert (=> b!750659 (= res!506791 (= lt!333810 lt!333818))))

(assert (=> b!750659 (= lt!333818 (Found!7598 j!159))))

(assert (=> b!750659 (= lt!333810 (seekEntryOrOpen!0 (select (arr!19991 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!750659 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!333814 () Unit!25794)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41762 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25794)

(assert (=> b!750659 (= lt!333814 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!750660 () Bool)

(assert (=> b!750660 (= e!418814 e!418809)))

(declare-fun res!506782 () Bool)

(assert (=> b!750660 (=> (not res!506782) (not e!418809))))

(declare-fun lt!333808 () SeekEntryResult!7598)

(assert (=> b!750660 (= res!506782 (or (= lt!333808 (MissingZero!7598 i!1173)) (= lt!333808 (MissingVacant!7598 i!1173))))))

(assert (=> b!750660 (= lt!333808 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun res!506777 () Bool)

(assert (=> start!65636 (=> (not res!506777) (not e!418814))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65636 (= res!506777 (validMask!0 mask!3328))))

(assert (=> start!65636 e!418814))

(assert (=> start!65636 true))

(declare-fun array_inv!15765 (array!41762) Bool)

(assert (=> start!65636 (array_inv!15765 a!3186)))

(declare-fun b!750649 () Bool)

(declare-fun res!506792 () Bool)

(assert (=> b!750649 (=> (not res!506792) (not e!418818))))

(assert (=> b!750649 (= res!506792 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19991 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!333812 () SeekEntryResult!7598)

(declare-fun b!750661 () Bool)

(assert (=> b!750661 (= e!418813 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19991 a!3186) j!159) a!3186 mask!3328) lt!333812))))

(declare-fun b!750662 () Bool)

(assert (=> b!750662 (= e!418809 e!418818)))

(declare-fun res!506776 () Bool)

(assert (=> b!750662 (=> (not res!506776) (not e!418818))))

(assert (=> b!750662 (= res!506776 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19991 a!3186) j!159) mask!3328) (select (arr!19991 a!3186) j!159) a!3186 mask!3328) lt!333812))))

(assert (=> b!750662 (= lt!333812 (Intermediate!7598 false resIntermediateIndex!5 resIntermediateX!5))))

(assert (= (and start!65636 res!506777) b!750643))

(assert (= (and b!750643 res!506778) b!750647))

(assert (= (and b!750647 res!506786) b!750644))

(assert (= (and b!750644 res!506784) b!750652))

(assert (= (and b!750652 res!506783) b!750660))

(assert (= (and b!750660 res!506782) b!750650))

(assert (= (and b!750650 res!506780) b!750656))

(assert (= (and b!750656 res!506781) b!750658))

(assert (= (and b!750658 res!506788) b!750662))

(assert (= (and b!750662 res!506776) b!750649))

(assert (= (and b!750649 res!506792) b!750651))

(assert (= (and b!750651 c!82313) b!750661))

(assert (= (and b!750651 (not c!82313)) b!750646))

(assert (= (and b!750651 res!506789) b!750641))

(assert (= (and b!750641 res!506793) b!750659))

(assert (= (and b!750659 res!506791) b!750645))

(assert (= (and b!750659 (not res!506779)) b!750657))

(assert (= (and b!750657 (not res!506787)) b!750655))

(assert (= (and b!750655 (not res!506790)) b!750642))

(assert (= (and b!750642 c!82314) b!750648))

(assert (= (and b!750642 (not c!82314)) b!750654))

(assert (= (and b!750642 res!506785) b!750653))

(declare-fun m!700065 () Bool)

(assert (=> b!750649 m!700065))

(declare-fun m!700067 () Bool)

(assert (=> b!750641 m!700067))

(declare-fun m!700069 () Bool)

(assert (=> b!750641 m!700069))

(declare-fun m!700071 () Bool)

(assert (=> b!750641 m!700071))

(declare-fun m!700073 () Bool)

(assert (=> b!750641 m!700073))

(assert (=> b!750641 m!700071))

(declare-fun m!700075 () Bool)

(assert (=> b!750641 m!700075))

(assert (=> b!750655 m!700069))

(declare-fun m!700077 () Bool)

(assert (=> b!750655 m!700077))

(declare-fun m!700079 () Bool)

(assert (=> b!750662 m!700079))

(assert (=> b!750662 m!700079))

(declare-fun m!700081 () Bool)

(assert (=> b!750662 m!700081))

(assert (=> b!750662 m!700081))

(assert (=> b!750662 m!700079))

(declare-fun m!700083 () Bool)

(assert (=> b!750662 m!700083))

(assert (=> b!750646 m!700079))

(assert (=> b!750646 m!700079))

(declare-fun m!700085 () Bool)

(assert (=> b!750646 m!700085))

(assert (=> b!750657 m!700079))

(assert (=> b!750657 m!700079))

(assert (=> b!750657 m!700085))

(assert (=> b!750647 m!700079))

(assert (=> b!750647 m!700079))

(declare-fun m!700087 () Bool)

(assert (=> b!750647 m!700087))

(declare-fun m!700089 () Bool)

(assert (=> b!750656 m!700089))

(assert (=> b!750661 m!700079))

(assert (=> b!750661 m!700079))

(declare-fun m!700091 () Bool)

(assert (=> b!750661 m!700091))

(declare-fun m!700093 () Bool)

(assert (=> b!750660 m!700093))

(declare-fun m!700095 () Bool)

(assert (=> b!750652 m!700095))

(assert (=> b!750659 m!700079))

(assert (=> b!750659 m!700079))

(declare-fun m!700097 () Bool)

(assert (=> b!750659 m!700097))

(declare-fun m!700099 () Bool)

(assert (=> b!750659 m!700099))

(declare-fun m!700101 () Bool)

(assert (=> b!750659 m!700101))

(declare-fun m!700103 () Bool)

(assert (=> b!750644 m!700103))

(declare-fun m!700105 () Bool)

(assert (=> start!65636 m!700105))

(declare-fun m!700107 () Bool)

(assert (=> start!65636 m!700107))

(assert (=> b!750645 m!700079))

(assert (=> b!750645 m!700079))

(declare-fun m!700109 () Bool)

(assert (=> b!750645 m!700109))

(declare-fun m!700111 () Bool)

(assert (=> b!750653 m!700111))

(declare-fun m!700113 () Bool)

(assert (=> b!750653 m!700113))

(declare-fun m!700115 () Bool)

(assert (=> b!750650 m!700115))

(push 1)

(assert (not b!750647))

(assert (not b!750641))

(assert (not b!750645))

(assert (not b!750660))

(assert (not b!750657))

(assert (not b!750659))

(assert (not b!750646))

(assert (not b!750653))

(assert (not b!750656))

(assert (not b!750662))

(assert (not b!750652))

(assert (not b!750661))

(assert (not b!750650))

(assert (not b!750644))

(assert (not start!65636))

(check-sat)

(pop 1)

(push 1)

(check-sat)

