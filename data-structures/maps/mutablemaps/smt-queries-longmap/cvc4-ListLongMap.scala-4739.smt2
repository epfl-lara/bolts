; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65516 () Bool)

(assert start!65516)

(declare-fun b!746775 () Bool)

(declare-fun res!503639 () Bool)

(declare-fun e!417032 () Bool)

(assert (=> b!746775 (=> (not res!503639) (not e!417032))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!746775 (= res!503639 (validKeyInArray!0 k!2102))))

(declare-fun b!746776 () Bool)

(declare-fun res!503636 () Bool)

(declare-fun e!417033 () Bool)

(assert (=> b!746776 (=> (not res!503636) (not e!417033))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!41642 0))(
  ( (array!41643 (arr!19931 (Array (_ BitVec 32) (_ BitVec 64))) (size!20352 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41642)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!746776 (= res!503636 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19931 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!746777 () Bool)

(declare-fun res!503633 () Bool)

(assert (=> b!746777 (=> (not res!503633) (not e!417032))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!746777 (= res!503633 (and (= (size!20352 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20352 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20352 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!746778 () Bool)

(declare-fun e!417035 () Bool)

(assert (=> b!746778 (= e!417035 e!417033)))

(declare-fun res!503632 () Bool)

(assert (=> b!746778 (=> (not res!503632) (not e!417033))))

(declare-datatypes ((SeekEntryResult!7538 0))(
  ( (MissingZero!7538 (index!32519 (_ BitVec 32))) (Found!7538 (index!32520 (_ BitVec 32))) (Intermediate!7538 (undefined!8350 Bool) (index!32521 (_ BitVec 32)) (x!63489 (_ BitVec 32))) (Undefined!7538) (MissingVacant!7538 (index!32522 (_ BitVec 32))) )
))
(declare-fun lt!331944 () SeekEntryResult!7538)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41642 (_ BitVec 32)) SeekEntryResult!7538)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!746778 (= res!503632 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19931 a!3186) j!159) mask!3328) (select (arr!19931 a!3186) j!159) a!3186 mask!3328) lt!331944))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!746778 (= lt!331944 (Intermediate!7538 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun e!417029 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun b!746779 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41642 (_ BitVec 32)) SeekEntryResult!7538)

(assert (=> b!746779 (= e!417029 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19931 a!3186) j!159) a!3186 mask!3328) (Found!7538 j!159)))))

(declare-fun b!746780 () Bool)

(declare-fun res!503637 () Bool)

(assert (=> b!746780 (=> (not res!503637) (not e!417032))))

(assert (=> b!746780 (= res!503637 (validKeyInArray!0 (select (arr!19931 a!3186) j!159)))))

(declare-fun b!746781 () Bool)

(declare-fun e!417030 () Bool)

(declare-fun e!417034 () Bool)

(assert (=> b!746781 (= e!417030 (not e!417034))))

(declare-fun res!503643 () Bool)

(assert (=> b!746781 (=> res!503643 e!417034)))

(declare-fun lt!331938 () SeekEntryResult!7538)

(assert (=> b!746781 (= res!503643 (or (not (is-Intermediate!7538 lt!331938)) (bvslt x!1131 (x!63489 lt!331938)) (not (= x!1131 (x!63489 lt!331938))) (not (= index!1321 (index!32521 lt!331938)))))))

(declare-fun e!417036 () Bool)

(assert (=> b!746781 e!417036))

(declare-fun res!503638 () Bool)

(assert (=> b!746781 (=> (not res!503638) (not e!417036))))

(declare-fun lt!331942 () SeekEntryResult!7538)

(declare-fun lt!331946 () SeekEntryResult!7538)

(assert (=> b!746781 (= res!503638 (= lt!331942 lt!331946))))

(assert (=> b!746781 (= lt!331946 (Found!7538 j!159))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41642 (_ BitVec 32)) SeekEntryResult!7538)

(assert (=> b!746781 (= lt!331942 (seekEntryOrOpen!0 (select (arr!19931 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41642 (_ BitVec 32)) Bool)

(assert (=> b!746781 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!25556 0))(
  ( (Unit!25557) )
))
(declare-fun lt!331941 () Unit!25556)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41642 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25556)

(assert (=> b!746781 (= lt!331941 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!746782 () Bool)

(assert (=> b!746782 (= e!417033 e!417030)))

(declare-fun res!503630 () Bool)

(assert (=> b!746782 (=> (not res!503630) (not e!417030))))

(declare-fun lt!331945 () SeekEntryResult!7538)

(assert (=> b!746782 (= res!503630 (= lt!331945 lt!331938))))

(declare-fun lt!331937 () array!41642)

(declare-fun lt!331940 () (_ BitVec 64))

(assert (=> b!746782 (= lt!331938 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!331940 lt!331937 mask!3328))))

(assert (=> b!746782 (= lt!331945 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!331940 mask!3328) lt!331940 lt!331937 mask!3328))))

(assert (=> b!746782 (= lt!331940 (select (store (arr!19931 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!746782 (= lt!331937 (array!41643 (store (arr!19931 a!3186) i!1173 k!2102) (size!20352 a!3186)))))

(declare-fun b!746784 () Bool)

(assert (=> b!746784 (= e!417032 e!417035)))

(declare-fun res!503629 () Bool)

(assert (=> b!746784 (=> (not res!503629) (not e!417035))))

(declare-fun lt!331943 () SeekEntryResult!7538)

(assert (=> b!746784 (= res!503629 (or (= lt!331943 (MissingZero!7538 i!1173)) (= lt!331943 (MissingVacant!7538 i!1173))))))

(assert (=> b!746784 (= lt!331943 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!746785 () Bool)

(declare-fun res!503628 () Bool)

(assert (=> b!746785 (=> (not res!503628) (not e!417032))))

(declare-fun arrayContainsKey!0 (array!41642 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!746785 (= res!503628 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!746786 () Bool)

(assert (=> b!746786 (= e!417036 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19931 a!3186) j!159) a!3186 mask!3328) lt!331946))))

(declare-fun b!746787 () Bool)

(declare-fun res!503642 () Bool)

(assert (=> b!746787 (=> (not res!503642) (not e!417035))))

(declare-datatypes ((List!13986 0))(
  ( (Nil!13983) (Cons!13982 (h!15054 (_ BitVec 64)) (t!20309 List!13986)) )
))
(declare-fun arrayNoDuplicates!0 (array!41642 (_ BitVec 32) List!13986) Bool)

(assert (=> b!746787 (= res!503642 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13983))))

(declare-fun b!746788 () Bool)

(declare-fun e!417028 () Bool)

(assert (=> b!746788 (= e!417034 e!417028)))

(declare-fun res!503635 () Bool)

(assert (=> b!746788 (=> res!503635 e!417028)))

(declare-fun lt!331939 () SeekEntryResult!7538)

(assert (=> b!746788 (= res!503635 (or (not (= lt!331939 lt!331946)) (= (select (store (arr!19931 a!3186) i!1173 k!2102) index!1321) lt!331940) (not (= (select (store (arr!19931 a!3186) i!1173 k!2102) index!1321) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!746788 (= lt!331939 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19931 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!746789 () Bool)

(declare-fun res!503631 () Bool)

(assert (=> b!746789 (=> (not res!503631) (not e!417035))))

(assert (=> b!746789 (= res!503631 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!746790 () Bool)

(assert (=> b!746790 (= e!417029 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19931 a!3186) j!159) a!3186 mask!3328) lt!331944))))

(declare-fun b!746791 () Bool)

(declare-fun res!503634 () Bool)

(assert (=> b!746791 (=> (not res!503634) (not e!417035))))

(assert (=> b!746791 (= res!503634 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20352 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20352 a!3186))))))

(declare-fun b!746792 () Bool)

(declare-fun res!503640 () Bool)

(assert (=> b!746792 (=> (not res!503640) (not e!417033))))

(assert (=> b!746792 (= res!503640 e!417029)))

(declare-fun c!81954 () Bool)

(assert (=> b!746792 (= c!81954 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!746783 () Bool)

(assert (=> b!746783 (= e!417028 true)))

(assert (=> b!746783 (= lt!331942 lt!331939)))

(declare-fun res!503641 () Bool)

(assert (=> start!65516 (=> (not res!503641) (not e!417032))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65516 (= res!503641 (validMask!0 mask!3328))))

(assert (=> start!65516 e!417032))

(assert (=> start!65516 true))

(declare-fun array_inv!15705 (array!41642) Bool)

(assert (=> start!65516 (array_inv!15705 a!3186)))

(assert (= (and start!65516 res!503641) b!746777))

(assert (= (and b!746777 res!503633) b!746780))

(assert (= (and b!746780 res!503637) b!746775))

(assert (= (and b!746775 res!503639) b!746785))

(assert (= (and b!746785 res!503628) b!746784))

(assert (= (and b!746784 res!503629) b!746789))

(assert (= (and b!746789 res!503631) b!746787))

(assert (= (and b!746787 res!503642) b!746791))

(assert (= (and b!746791 res!503634) b!746778))

(assert (= (and b!746778 res!503632) b!746776))

(assert (= (and b!746776 res!503636) b!746792))

(assert (= (and b!746792 c!81954) b!746790))

(assert (= (and b!746792 (not c!81954)) b!746779))

(assert (= (and b!746792 res!503640) b!746782))

(assert (= (and b!746782 res!503630) b!746781))

(assert (= (and b!746781 res!503638) b!746786))

(assert (= (and b!746781 (not res!503643)) b!746788))

(assert (= (and b!746788 (not res!503635)) b!746783))

(declare-fun m!697081 () Bool)

(assert (=> b!746790 m!697081))

(assert (=> b!746790 m!697081))

(declare-fun m!697083 () Bool)

(assert (=> b!746790 m!697083))

(assert (=> b!746786 m!697081))

(assert (=> b!746786 m!697081))

(declare-fun m!697085 () Bool)

(assert (=> b!746786 m!697085))

(declare-fun m!697087 () Bool)

(assert (=> b!746784 m!697087))

(declare-fun m!697089 () Bool)

(assert (=> b!746785 m!697089))

(declare-fun m!697091 () Bool)

(assert (=> b!746787 m!697091))

(declare-fun m!697093 () Bool)

(assert (=> b!746775 m!697093))

(assert (=> b!746780 m!697081))

(assert (=> b!746780 m!697081))

(declare-fun m!697095 () Bool)

(assert (=> b!746780 m!697095))

(assert (=> b!746781 m!697081))

(assert (=> b!746781 m!697081))

(declare-fun m!697097 () Bool)

(assert (=> b!746781 m!697097))

(declare-fun m!697099 () Bool)

(assert (=> b!746781 m!697099))

(declare-fun m!697101 () Bool)

(assert (=> b!746781 m!697101))

(declare-fun m!697103 () Bool)

(assert (=> b!746788 m!697103))

(declare-fun m!697105 () Bool)

(assert (=> b!746788 m!697105))

(assert (=> b!746788 m!697081))

(assert (=> b!746788 m!697081))

(declare-fun m!697107 () Bool)

(assert (=> b!746788 m!697107))

(declare-fun m!697109 () Bool)

(assert (=> start!65516 m!697109))

(declare-fun m!697111 () Bool)

(assert (=> start!65516 m!697111))

(declare-fun m!697113 () Bool)

(assert (=> b!746776 m!697113))

(assert (=> b!746779 m!697081))

(assert (=> b!746779 m!697081))

(assert (=> b!746779 m!697107))

(declare-fun m!697115 () Bool)

(assert (=> b!746782 m!697115))

(assert (=> b!746782 m!697103))

(declare-fun m!697117 () Bool)

(assert (=> b!746782 m!697117))

(assert (=> b!746782 m!697117))

(declare-fun m!697119 () Bool)

(assert (=> b!746782 m!697119))

(declare-fun m!697121 () Bool)

(assert (=> b!746782 m!697121))

(assert (=> b!746778 m!697081))

(assert (=> b!746778 m!697081))

(declare-fun m!697123 () Bool)

(assert (=> b!746778 m!697123))

(assert (=> b!746778 m!697123))

(assert (=> b!746778 m!697081))

(declare-fun m!697125 () Bool)

(assert (=> b!746778 m!697125))

(declare-fun m!697127 () Bool)

(assert (=> b!746789 m!697127))

(push 1)

