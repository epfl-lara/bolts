; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67774 () Bool)

(assert start!67774)

(declare-fun b!786692 () Bool)

(declare-fun res!532843 () Bool)

(declare-fun e!437328 () Bool)

(assert (=> b!786692 (=> (not res!532843) (not e!437328))))

(declare-datatypes ((array!42769 0))(
  ( (array!42770 (arr!20469 (Array (_ BitVec 32) (_ BitVec 64))) (size!20890 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42769)

(declare-datatypes ((List!14524 0))(
  ( (Nil!14521) (Cons!14520 (h!15643 (_ BitVec 64)) (t!20847 List!14524)) )
))
(declare-fun arrayNoDuplicates!0 (array!42769 (_ BitVec 32) List!14524) Bool)

(assert (=> b!786692 (= res!532843 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14521))))

(declare-fun b!786693 () Bool)

(declare-fun e!437330 () Bool)

(declare-datatypes ((SeekEntryResult!8076 0))(
  ( (MissingZero!8076 (index!34671 (_ BitVec 32))) (Found!8076 (index!34672 (_ BitVec 32))) (Intermediate!8076 (undefined!8888 Bool) (index!34673 (_ BitVec 32)) (x!65641 (_ BitVec 32))) (Undefined!8076) (MissingVacant!8076 (index!34674 (_ BitVec 32))) )
))
(declare-fun lt!350903 () SeekEntryResult!8076)

(declare-fun lt!350905 () SeekEntryResult!8076)

(assert (=> b!786693 (= e!437330 (= lt!350903 lt!350905))))

(declare-fun b!786694 () Bool)

(declare-fun e!437335 () Bool)

(assert (=> b!786694 (= e!437328 e!437335)))

(declare-fun res!532851 () Bool)

(assert (=> b!786694 (=> (not res!532851) (not e!437335))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun lt!350898 () SeekEntryResult!8076)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42769 (_ BitVec 32)) SeekEntryResult!8076)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!786694 (= res!532851 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20469 a!3186) j!159) mask!3328) (select (arr!20469 a!3186) j!159) a!3186 mask!3328) lt!350898))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!786694 (= lt!350898 (Intermediate!8076 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!786695 () Bool)

(declare-fun e!437338 () Bool)

(declare-fun e!437334 () Bool)

(assert (=> b!786695 (= e!437338 (not e!437334))))

(declare-fun res!532845 () Bool)

(assert (=> b!786695 (=> res!532845 e!437334)))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun lt!350894 () SeekEntryResult!8076)

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!786695 (= res!532845 (or (not (is-Intermediate!8076 lt!350894)) (bvslt x!1131 (x!65641 lt!350894)) (not (= x!1131 (x!65641 lt!350894))) (not (= index!1321 (index!34673 lt!350894)))))))

(declare-fun e!437337 () Bool)

(assert (=> b!786695 e!437337))

(declare-fun res!532844 () Bool)

(assert (=> b!786695 (=> (not res!532844) (not e!437337))))

(declare-fun lt!350897 () SeekEntryResult!8076)

(assert (=> b!786695 (= res!532844 (= lt!350903 lt!350897))))

(assert (=> b!786695 (= lt!350897 (Found!8076 j!159))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42769 (_ BitVec 32)) SeekEntryResult!8076)

(assert (=> b!786695 (= lt!350903 (seekEntryOrOpen!0 (select (arr!20469 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42769 (_ BitVec 32)) Bool)

(assert (=> b!786695 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!27214 0))(
  ( (Unit!27215) )
))
(declare-fun lt!350900 () Unit!27214)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42769 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27214)

(assert (=> b!786695 (= lt!350900 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!786696 () Bool)

(declare-fun res!532839 () Bool)

(assert (=> b!786696 (=> (not res!532839) (not e!437335))))

(declare-fun e!437327 () Bool)

(assert (=> b!786696 (= res!532839 e!437327)))

(declare-fun c!87336 () Bool)

(assert (=> b!786696 (= c!87336 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!786697 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42769 (_ BitVec 32)) SeekEntryResult!8076)

(assert (=> b!786697 (= e!437327 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20469 a!3186) j!159) a!3186 mask!3328) (Found!8076 j!159)))))

(declare-fun b!786698 () Bool)

(declare-fun e!437333 () Bool)

(assert (=> b!786698 (= e!437333 e!437328)))

(declare-fun res!532842 () Bool)

(assert (=> b!786698 (=> (not res!532842) (not e!437328))))

(declare-fun lt!350899 () SeekEntryResult!8076)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!786698 (= res!532842 (or (= lt!350899 (MissingZero!8076 i!1173)) (= lt!350899 (MissingVacant!8076 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!786698 (= lt!350899 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!786699 () Bool)

(declare-fun e!437332 () Bool)

(declare-fun e!437336 () Bool)

(assert (=> b!786699 (= e!437332 e!437336)))

(declare-fun res!532846 () Bool)

(assert (=> b!786699 (=> res!532846 e!437336)))

(declare-fun lt!350904 () (_ BitVec 64))

(declare-fun lt!350896 () (_ BitVec 64))

(assert (=> b!786699 (= res!532846 (= lt!350904 lt!350896))))

(assert (=> b!786699 (= lt!350904 (select (store (arr!20469 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!786700 () Bool)

(declare-fun res!532838 () Bool)

(assert (=> b!786700 (=> (not res!532838) (not e!437333))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!786700 (= res!532838 (validKeyInArray!0 k!2102))))

(declare-fun b!786701 () Bool)

(declare-fun e!437329 () Unit!27214)

(declare-fun Unit!27216 () Unit!27214)

(assert (=> b!786701 (= e!437329 Unit!27216)))

(assert (=> b!786701 false))

(declare-fun b!786702 () Bool)

(assert (=> b!786702 (= e!437334 e!437332)))

(declare-fun res!532837 () Bool)

(assert (=> b!786702 (=> res!532837 e!437332)))

(assert (=> b!786702 (= res!532837 (not (= lt!350905 lt!350897)))))

(assert (=> b!786702 (= lt!350905 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20469 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!786703 () Bool)

(declare-fun res!532848 () Bool)

(assert (=> b!786703 (=> (not res!532848) (not e!437333))))

(assert (=> b!786703 (= res!532848 (and (= (size!20890 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20890 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20890 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!786704 () Bool)

(assert (=> b!786704 (= e!437336 true)))

(assert (=> b!786704 e!437330))

(declare-fun res!532854 () Bool)

(assert (=> b!786704 (=> (not res!532854) (not e!437330))))

(assert (=> b!786704 (= res!532854 (= lt!350904 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!350895 () Unit!27214)

(assert (=> b!786704 (= lt!350895 e!437329)))

(declare-fun c!87335 () Bool)

(assert (=> b!786704 (= c!87335 (= lt!350904 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!786705 () Bool)

(assert (=> b!786705 (= e!437327 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20469 a!3186) j!159) a!3186 mask!3328) lt!350898))))

(declare-fun b!786706 () Bool)

(assert (=> b!786706 (= e!437337 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20469 a!3186) j!159) a!3186 mask!3328) lt!350897))))

(declare-fun b!786707 () Bool)

(declare-fun res!532852 () Bool)

(assert (=> b!786707 (=> (not res!532852) (not e!437330))))

(declare-fun lt!350902 () array!42769)

(assert (=> b!786707 (= res!532852 (= (seekEntryOrOpen!0 lt!350896 lt!350902 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!350896 lt!350902 mask!3328)))))

(declare-fun b!786708 () Bool)

(declare-fun res!532841 () Bool)

(assert (=> b!786708 (=> (not res!532841) (not e!437333))))

(assert (=> b!786708 (= res!532841 (validKeyInArray!0 (select (arr!20469 a!3186) j!159)))))

(declare-fun res!532853 () Bool)

(assert (=> start!67774 (=> (not res!532853) (not e!437333))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67774 (= res!532853 (validMask!0 mask!3328))))

(assert (=> start!67774 e!437333))

(assert (=> start!67774 true))

(declare-fun array_inv!16243 (array!42769) Bool)

(assert (=> start!67774 (array_inv!16243 a!3186)))

(declare-fun b!786709 () Bool)

(declare-fun res!532850 () Bool)

(assert (=> b!786709 (=> (not res!532850) (not e!437335))))

(assert (=> b!786709 (= res!532850 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20469 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!786710 () Bool)

(declare-fun res!532855 () Bool)

(assert (=> b!786710 (=> (not res!532855) (not e!437333))))

(declare-fun arrayContainsKey!0 (array!42769 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!786710 (= res!532855 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!786711 () Bool)

(assert (=> b!786711 (= e!437335 e!437338)))

(declare-fun res!532849 () Bool)

(assert (=> b!786711 (=> (not res!532849) (not e!437338))))

(declare-fun lt!350901 () SeekEntryResult!8076)

(assert (=> b!786711 (= res!532849 (= lt!350901 lt!350894))))

(assert (=> b!786711 (= lt!350894 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!350896 lt!350902 mask!3328))))

(assert (=> b!786711 (= lt!350901 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!350896 mask!3328) lt!350896 lt!350902 mask!3328))))

(assert (=> b!786711 (= lt!350896 (select (store (arr!20469 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!786711 (= lt!350902 (array!42770 (store (arr!20469 a!3186) i!1173 k!2102) (size!20890 a!3186)))))

(declare-fun b!786712 () Bool)

(declare-fun res!532840 () Bool)

(assert (=> b!786712 (=> (not res!532840) (not e!437328))))

(assert (=> b!786712 (= res!532840 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20890 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20890 a!3186))))))

(declare-fun b!786713 () Bool)

(declare-fun Unit!27217 () Unit!27214)

(assert (=> b!786713 (= e!437329 Unit!27217)))

(declare-fun b!786714 () Bool)

(declare-fun res!532847 () Bool)

(assert (=> b!786714 (=> (not res!532847) (not e!437328))))

(assert (=> b!786714 (= res!532847 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(assert (= (and start!67774 res!532853) b!786703))

(assert (= (and b!786703 res!532848) b!786708))

(assert (= (and b!786708 res!532841) b!786700))

(assert (= (and b!786700 res!532838) b!786710))

(assert (= (and b!786710 res!532855) b!786698))

(assert (= (and b!786698 res!532842) b!786714))

(assert (= (and b!786714 res!532847) b!786692))

(assert (= (and b!786692 res!532843) b!786712))

(assert (= (and b!786712 res!532840) b!786694))

(assert (= (and b!786694 res!532851) b!786709))

(assert (= (and b!786709 res!532850) b!786696))

(assert (= (and b!786696 c!87336) b!786705))

(assert (= (and b!786696 (not c!87336)) b!786697))

(assert (= (and b!786696 res!532839) b!786711))

(assert (= (and b!786711 res!532849) b!786695))

(assert (= (and b!786695 res!532844) b!786706))

(assert (= (and b!786695 (not res!532845)) b!786702))

(assert (= (and b!786702 (not res!532837)) b!786699))

(assert (= (and b!786699 (not res!532846)) b!786704))

(assert (= (and b!786704 c!87335) b!786701))

(assert (= (and b!786704 (not c!87335)) b!786713))

(assert (= (and b!786704 res!532854) b!786707))

(assert (= (and b!786707 res!532852) b!786693))

(declare-fun m!728497 () Bool)

(assert (=> b!786702 m!728497))

(assert (=> b!786702 m!728497))

(declare-fun m!728499 () Bool)

(assert (=> b!786702 m!728499))

(declare-fun m!728501 () Bool)

(assert (=> b!786692 m!728501))

(declare-fun m!728503 () Bool)

(assert (=> start!67774 m!728503))

(declare-fun m!728505 () Bool)

(assert (=> start!67774 m!728505))

(assert (=> b!786708 m!728497))

(assert (=> b!786708 m!728497))

(declare-fun m!728507 () Bool)

(assert (=> b!786708 m!728507))

(assert (=> b!786706 m!728497))

(assert (=> b!786706 m!728497))

(declare-fun m!728509 () Bool)

(assert (=> b!786706 m!728509))

(declare-fun m!728511 () Bool)

(assert (=> b!786709 m!728511))

(declare-fun m!728513 () Bool)

(assert (=> b!786699 m!728513))

(declare-fun m!728515 () Bool)

(assert (=> b!786699 m!728515))

(declare-fun m!728517 () Bool)

(assert (=> b!786698 m!728517))

(declare-fun m!728519 () Bool)

(assert (=> b!786710 m!728519))

(assert (=> b!786695 m!728497))

(assert (=> b!786695 m!728497))

(declare-fun m!728521 () Bool)

(assert (=> b!786695 m!728521))

(declare-fun m!728523 () Bool)

(assert (=> b!786695 m!728523))

(declare-fun m!728525 () Bool)

(assert (=> b!786695 m!728525))

(declare-fun m!728527 () Bool)

(assert (=> b!786707 m!728527))

(declare-fun m!728529 () Bool)

(assert (=> b!786707 m!728529))

(assert (=> b!786697 m!728497))

(assert (=> b!786697 m!728497))

(assert (=> b!786697 m!728499))

(assert (=> b!786705 m!728497))

(assert (=> b!786705 m!728497))

(declare-fun m!728531 () Bool)

(assert (=> b!786705 m!728531))

(declare-fun m!728533 () Bool)

(assert (=> b!786714 m!728533))

(assert (=> b!786694 m!728497))

(assert (=> b!786694 m!728497))

(declare-fun m!728535 () Bool)

(assert (=> b!786694 m!728535))

(assert (=> b!786694 m!728535))

(assert (=> b!786694 m!728497))

(declare-fun m!728537 () Bool)

(assert (=> b!786694 m!728537))

(declare-fun m!728539 () Bool)

(assert (=> b!786711 m!728539))

(declare-fun m!728541 () Bool)

(assert (=> b!786711 m!728541))

(declare-fun m!728543 () Bool)

(assert (=> b!786711 m!728543))

(assert (=> b!786711 m!728539))

(declare-fun m!728545 () Bool)

(assert (=> b!786711 m!728545))

(assert (=> b!786711 m!728513))

(declare-fun m!728547 () Bool)

(assert (=> b!786700 m!728547))

(push 1)

