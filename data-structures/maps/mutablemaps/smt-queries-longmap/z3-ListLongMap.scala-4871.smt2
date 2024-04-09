; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!67158 () Bool)

(assert start!67158)

(declare-fun b!775669 () Bool)

(declare-fun res!524721 () Bool)

(declare-fun e!431697 () Bool)

(assert (=> b!775669 (=> (not res!524721) (not e!431697))))

(declare-datatypes ((array!42468 0))(
  ( (array!42469 (arr!20326 (Array (_ BitVec 32) (_ BitVec 64))) (size!20747 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42468)

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42468 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!775669 (= res!524721 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun b!775671 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun e!431703 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7933 0))(
  ( (MissingZero!7933 (index!34099 (_ BitVec 32))) (Found!7933 (index!34100 (_ BitVec 32))) (Intermediate!7933 (undefined!8745 Bool) (index!34101 (_ BitVec 32)) (x!65069 (_ BitVec 32))) (Undefined!7933) (MissingVacant!7933 (index!34102 (_ BitVec 32))) )
))
(declare-fun lt!345567 () SeekEntryResult!7933)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42468 (_ BitVec 32)) SeekEntryResult!7933)

(assert (=> b!775671 (= e!431703 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20326 a!3186) j!159) a!3186 mask!3328) lt!345567))))

(declare-fun b!775672 () Bool)

(declare-fun res!524712 () Bool)

(declare-fun e!431699 () Bool)

(assert (=> b!775672 (=> (not res!524712) (not e!431699))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42468 (_ BitVec 32)) Bool)

(assert (=> b!775672 (= res!524712 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!775673 () Bool)

(declare-fun e!431700 () Bool)

(declare-fun lt!345574 () SeekEntryResult!7933)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42468 (_ BitVec 32)) SeekEntryResult!7933)

(assert (=> b!775673 (= e!431700 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20326 a!3186) j!159) a!3186 mask!3328) lt!345574))))

(declare-fun b!775674 () Bool)

(declare-fun e!431702 () Bool)

(declare-fun e!431704 () Bool)

(assert (=> b!775674 (= e!431702 (not e!431704))))

(declare-fun res!524718 () Bool)

(assert (=> b!775674 (=> res!524718 e!431704)))

(declare-fun lt!345566 () SeekEntryResult!7933)

(get-info :version)

(assert (=> b!775674 (= res!524718 (or (not ((_ is Intermediate!7933) lt!345566)) (bvslt x!1131 (x!65069 lt!345566)) (not (= x!1131 (x!65069 lt!345566))) (not (= index!1321 (index!34101 lt!345566)))))))

(declare-fun e!431696 () Bool)

(assert (=> b!775674 e!431696))

(declare-fun res!524722 () Bool)

(assert (=> b!775674 (=> (not res!524722) (not e!431696))))

(assert (=> b!775674 (= res!524722 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26760 0))(
  ( (Unit!26761) )
))
(declare-fun lt!345571 () Unit!26760)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42468 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26760)

(assert (=> b!775674 (= lt!345571 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!775675 () Bool)

(declare-fun res!524716 () Bool)

(assert (=> b!775675 (=> (not res!524716) (not e!431699))))

(declare-datatypes ((List!14381 0))(
  ( (Nil!14378) (Cons!14377 (h!15485 (_ BitVec 64)) (t!20704 List!14381)) )
))
(declare-fun arrayNoDuplicates!0 (array!42468 (_ BitVec 32) List!14381) Bool)

(assert (=> b!775675 (= res!524716 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14378))))

(declare-fun b!775676 () Bool)

(declare-fun e!431701 () Bool)

(assert (=> b!775676 (= e!431699 e!431701)))

(declare-fun res!524720 () Bool)

(assert (=> b!775676 (=> (not res!524720) (not e!431701))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!775676 (= res!524720 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20326 a!3186) j!159) mask!3328) (select (arr!20326 a!3186) j!159) a!3186 mask!3328) lt!345574))))

(assert (=> b!775676 (= lt!345574 (Intermediate!7933 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!775677 () Bool)

(assert (=> b!775677 (= e!431696 e!431703)))

(declare-fun res!524713 () Bool)

(assert (=> b!775677 (=> (not res!524713) (not e!431703))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42468 (_ BitVec 32)) SeekEntryResult!7933)

(assert (=> b!775677 (= res!524713 (= (seekEntryOrOpen!0 (select (arr!20326 a!3186) j!159) a!3186 mask!3328) lt!345567))))

(assert (=> b!775677 (= lt!345567 (Found!7933 j!159))))

(declare-fun b!775678 () Bool)

(declare-fun res!524715 () Bool)

(assert (=> b!775678 (=> (not res!524715) (not e!431697))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!775678 (= res!524715 (and (= (size!20747 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20747 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20747 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!775679 () Bool)

(declare-fun res!524714 () Bool)

(assert (=> b!775679 (=> (not res!524714) (not e!431697))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!775679 (= res!524714 (validKeyInArray!0 k0!2102))))

(declare-fun b!775680 () Bool)

(declare-fun res!524707 () Bool)

(assert (=> b!775680 (=> (not res!524707) (not e!431701))))

(assert (=> b!775680 (= res!524707 e!431700)))

(declare-fun c!85881 () Bool)

(assert (=> b!775680 (= c!85881 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!775681 () Bool)

(assert (=> b!775681 (= e!431701 e!431702)))

(declare-fun res!524710 () Bool)

(assert (=> b!775681 (=> (not res!524710) (not e!431702))))

(declare-fun lt!345572 () SeekEntryResult!7933)

(assert (=> b!775681 (= res!524710 (= lt!345572 lt!345566))))

(declare-fun lt!345570 () (_ BitVec 64))

(declare-fun lt!345568 () array!42468)

(assert (=> b!775681 (= lt!345566 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!345570 lt!345568 mask!3328))))

(assert (=> b!775681 (= lt!345572 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!345570 mask!3328) lt!345570 lt!345568 mask!3328))))

(assert (=> b!775681 (= lt!345570 (select (store (arr!20326 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!775681 (= lt!345568 (array!42469 (store (arr!20326 a!3186) i!1173 k0!2102) (size!20747 a!3186)))))

(declare-fun b!775682 () Bool)

(assert (=> b!775682 (= e!431697 e!431699)))

(declare-fun res!524717 () Bool)

(assert (=> b!775682 (=> (not res!524717) (not e!431699))))

(declare-fun lt!345573 () SeekEntryResult!7933)

(assert (=> b!775682 (= res!524717 (or (= lt!345573 (MissingZero!7933 i!1173)) (= lt!345573 (MissingVacant!7933 i!1173))))))

(assert (=> b!775682 (= lt!345573 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!775670 () Bool)

(declare-fun res!524708 () Bool)

(assert (=> b!775670 (=> (not res!524708) (not e!431701))))

(assert (=> b!775670 (= res!524708 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20326 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!524711 () Bool)

(assert (=> start!67158 (=> (not res!524711) (not e!431697))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67158 (= res!524711 (validMask!0 mask!3328))))

(assert (=> start!67158 e!431697))

(assert (=> start!67158 true))

(declare-fun array_inv!16100 (array!42468) Bool)

(assert (=> start!67158 (array_inv!16100 a!3186)))

(declare-fun b!775683 () Bool)

(assert (=> b!775683 (= e!431704 true)))

(declare-fun lt!345569 () SeekEntryResult!7933)

(assert (=> b!775683 (= lt!345569 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20326 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!775684 () Bool)

(declare-fun res!524709 () Bool)

(assert (=> b!775684 (=> (not res!524709) (not e!431699))))

(assert (=> b!775684 (= res!524709 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20747 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20747 a!3186))))))

(declare-fun b!775685 () Bool)

(assert (=> b!775685 (= e!431700 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20326 a!3186) j!159) a!3186 mask!3328) (Found!7933 j!159)))))

(declare-fun b!775686 () Bool)

(declare-fun res!524719 () Bool)

(assert (=> b!775686 (=> (not res!524719) (not e!431697))))

(assert (=> b!775686 (= res!524719 (validKeyInArray!0 (select (arr!20326 a!3186) j!159)))))

(assert (= (and start!67158 res!524711) b!775678))

(assert (= (and b!775678 res!524715) b!775686))

(assert (= (and b!775686 res!524719) b!775679))

(assert (= (and b!775679 res!524714) b!775669))

(assert (= (and b!775669 res!524721) b!775682))

(assert (= (and b!775682 res!524717) b!775672))

(assert (= (and b!775672 res!524712) b!775675))

(assert (= (and b!775675 res!524716) b!775684))

(assert (= (and b!775684 res!524709) b!775676))

(assert (= (and b!775676 res!524720) b!775670))

(assert (= (and b!775670 res!524708) b!775680))

(assert (= (and b!775680 c!85881) b!775673))

(assert (= (and b!775680 (not c!85881)) b!775685))

(assert (= (and b!775680 res!524707) b!775681))

(assert (= (and b!775681 res!524710) b!775674))

(assert (= (and b!775674 res!524722) b!775677))

(assert (= (and b!775677 res!524713) b!775671))

(assert (= (and b!775674 (not res!524718)) b!775683))

(declare-fun m!719921 () Bool)

(assert (=> b!775673 m!719921))

(assert (=> b!775673 m!719921))

(declare-fun m!719923 () Bool)

(assert (=> b!775673 m!719923))

(declare-fun m!719925 () Bool)

(assert (=> b!775672 m!719925))

(assert (=> b!775685 m!719921))

(assert (=> b!775685 m!719921))

(declare-fun m!719927 () Bool)

(assert (=> b!775685 m!719927))

(assert (=> b!775683 m!719921))

(assert (=> b!775683 m!719921))

(assert (=> b!775683 m!719927))

(declare-fun m!719929 () Bool)

(assert (=> b!775679 m!719929))

(assert (=> b!775677 m!719921))

(assert (=> b!775677 m!719921))

(declare-fun m!719931 () Bool)

(assert (=> b!775677 m!719931))

(assert (=> b!775671 m!719921))

(assert (=> b!775671 m!719921))

(declare-fun m!719933 () Bool)

(assert (=> b!775671 m!719933))

(declare-fun m!719935 () Bool)

(assert (=> b!775670 m!719935))

(assert (=> b!775676 m!719921))

(assert (=> b!775676 m!719921))

(declare-fun m!719937 () Bool)

(assert (=> b!775676 m!719937))

(assert (=> b!775676 m!719937))

(assert (=> b!775676 m!719921))

(declare-fun m!719939 () Bool)

(assert (=> b!775676 m!719939))

(declare-fun m!719941 () Bool)

(assert (=> b!775682 m!719941))

(declare-fun m!719943 () Bool)

(assert (=> b!775669 m!719943))

(assert (=> b!775686 m!719921))

(assert (=> b!775686 m!719921))

(declare-fun m!719945 () Bool)

(assert (=> b!775686 m!719945))

(declare-fun m!719947 () Bool)

(assert (=> b!775675 m!719947))

(declare-fun m!719949 () Bool)

(assert (=> b!775681 m!719949))

(declare-fun m!719951 () Bool)

(assert (=> b!775681 m!719951))

(declare-fun m!719953 () Bool)

(assert (=> b!775681 m!719953))

(declare-fun m!719955 () Bool)

(assert (=> b!775681 m!719955))

(declare-fun m!719957 () Bool)

(assert (=> b!775681 m!719957))

(assert (=> b!775681 m!719951))

(declare-fun m!719959 () Bool)

(assert (=> start!67158 m!719959))

(declare-fun m!719961 () Bool)

(assert (=> start!67158 m!719961))

(declare-fun m!719963 () Bool)

(assert (=> b!775674 m!719963))

(declare-fun m!719965 () Bool)

(assert (=> b!775674 m!719965))

(check-sat (not b!775681) (not b!775671) (not b!775675) (not b!775669) (not b!775686) (not b!775683) (not b!775679) (not b!775677) (not b!775672) (not b!775685) (not b!775676) (not start!67158) (not b!775674) (not b!775673) (not b!775682))
(check-sat)
