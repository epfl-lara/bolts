; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67156 () Bool)

(assert start!67156)

(declare-fun b!775615 () Bool)

(declare-fun res!524668 () Bool)

(declare-fun e!431676 () Bool)

(assert (=> b!775615 (=> (not res!524668) (not e!431676))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!42466 0))(
  ( (array!42467 (arr!20325 (Array (_ BitVec 32) (_ BitVec 64))) (size!20746 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42466)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!775615 (= res!524668 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20325 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!524671 () Bool)

(declare-fun e!431677 () Bool)

(assert (=> start!67156 (=> (not res!524671) (not e!431677))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67156 (= res!524671 (validMask!0 mask!3328))))

(assert (=> start!67156 e!431677))

(assert (=> start!67156 true))

(declare-fun array_inv!16099 (array!42466) Bool)

(assert (=> start!67156 (array_inv!16099 a!3186)))

(declare-fun b!775616 () Bool)

(declare-fun e!431672 () Bool)

(assert (=> b!775616 (= e!431672 e!431676)))

(declare-fun res!524674 () Bool)

(assert (=> b!775616 (=> (not res!524674) (not e!431676))))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7932 0))(
  ( (MissingZero!7932 (index!34095 (_ BitVec 32))) (Found!7932 (index!34096 (_ BitVec 32))) (Intermediate!7932 (undefined!8744 Bool) (index!34097 (_ BitVec 32)) (x!65068 (_ BitVec 32))) (Undefined!7932) (MissingVacant!7932 (index!34098 (_ BitVec 32))) )
))
(declare-fun lt!345542 () SeekEntryResult!7932)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42466 (_ BitVec 32)) SeekEntryResult!7932)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!775616 (= res!524674 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20325 a!3186) j!159) mask!3328) (select (arr!20325 a!3186) j!159) a!3186 mask!3328) lt!345542))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!775616 (= lt!345542 (Intermediate!7932 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!775617 () Bool)

(declare-fun e!431669 () Bool)

(assert (=> b!775617 (= e!431676 e!431669)))

(declare-fun res!524669 () Bool)

(assert (=> b!775617 (=> (not res!524669) (not e!431669))))

(declare-fun lt!345544 () SeekEntryResult!7932)

(declare-fun lt!345540 () SeekEntryResult!7932)

(assert (=> b!775617 (= res!524669 (= lt!345544 lt!345540))))

(declare-fun lt!345543 () (_ BitVec 64))

(declare-fun lt!345545 () array!42466)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!775617 (= lt!345540 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!345543 lt!345545 mask!3328))))

(assert (=> b!775617 (= lt!345544 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!345543 mask!3328) lt!345543 lt!345545 mask!3328))))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!775617 (= lt!345543 (select (store (arr!20325 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!775617 (= lt!345545 (array!42467 (store (arr!20325 a!3186) i!1173 k!2102) (size!20746 a!3186)))))

(declare-fun b!775618 () Bool)

(declare-fun res!524659 () Bool)

(assert (=> b!775618 (=> (not res!524659) (not e!431677))))

(assert (=> b!775618 (= res!524659 (and (= (size!20746 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20746 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20746 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!775619 () Bool)

(declare-fun e!431673 () Bool)

(assert (=> b!775619 (= e!431669 (not e!431673))))

(declare-fun res!524665 () Bool)

(assert (=> b!775619 (=> res!524665 e!431673)))

(assert (=> b!775619 (= res!524665 (or (not (is-Intermediate!7932 lt!345540)) (bvslt x!1131 (x!65068 lt!345540)) (not (= x!1131 (x!65068 lt!345540))) (not (= index!1321 (index!34097 lt!345540)))))))

(declare-fun e!431670 () Bool)

(assert (=> b!775619 e!431670))

(declare-fun res!524666 () Bool)

(assert (=> b!775619 (=> (not res!524666) (not e!431670))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42466 (_ BitVec 32)) Bool)

(assert (=> b!775619 (= res!524666 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26758 0))(
  ( (Unit!26759) )
))
(declare-fun lt!345541 () Unit!26758)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42466 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26758)

(assert (=> b!775619 (= lt!345541 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun e!431675 () Bool)

(declare-fun b!775620 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42466 (_ BitVec 32)) SeekEntryResult!7932)

(assert (=> b!775620 (= e!431675 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20325 a!3186) j!159) a!3186 mask!3328) (Found!7932 j!159)))))

(declare-fun lt!345539 () SeekEntryResult!7932)

(declare-fun b!775621 () Bool)

(declare-fun e!431671 () Bool)

(assert (=> b!775621 (= e!431671 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20325 a!3186) j!159) a!3186 mask!3328) lt!345539))))

(declare-fun b!775622 () Bool)

(declare-fun res!524673 () Bool)

(assert (=> b!775622 (=> (not res!524673) (not e!431672))))

(assert (=> b!775622 (= res!524673 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!775623 () Bool)

(declare-fun res!524672 () Bool)

(assert (=> b!775623 (=> (not res!524672) (not e!431676))))

(assert (=> b!775623 (= res!524672 e!431675)))

(declare-fun c!85878 () Bool)

(assert (=> b!775623 (= c!85878 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!775624 () Bool)

(declare-fun res!524661 () Bool)

(assert (=> b!775624 (=> (not res!524661) (not e!431677))))

(declare-fun arrayContainsKey!0 (array!42466 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!775624 (= res!524661 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!775625 () Bool)

(declare-fun res!524664 () Bool)

(assert (=> b!775625 (=> (not res!524664) (not e!431672))))

(declare-datatypes ((List!14380 0))(
  ( (Nil!14377) (Cons!14376 (h!15484 (_ BitVec 64)) (t!20703 List!14380)) )
))
(declare-fun arrayNoDuplicates!0 (array!42466 (_ BitVec 32) List!14380) Bool)

(assert (=> b!775625 (= res!524664 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14377))))

(declare-fun b!775626 () Bool)

(assert (=> b!775626 (= e!431677 e!431672)))

(declare-fun res!524663 () Bool)

(assert (=> b!775626 (=> (not res!524663) (not e!431672))))

(declare-fun lt!345547 () SeekEntryResult!7932)

(assert (=> b!775626 (= res!524663 (or (= lt!345547 (MissingZero!7932 i!1173)) (= lt!345547 (MissingVacant!7932 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42466 (_ BitVec 32)) SeekEntryResult!7932)

(assert (=> b!775626 (= lt!345547 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!775627 () Bool)

(assert (=> b!775627 (= e!431673 true)))

(declare-fun lt!345546 () SeekEntryResult!7932)

(assert (=> b!775627 (= lt!345546 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20325 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!775628 () Bool)

(assert (=> b!775628 (= e!431675 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20325 a!3186) j!159) a!3186 mask!3328) lt!345542))))

(declare-fun b!775629 () Bool)

(assert (=> b!775629 (= e!431670 e!431671)))

(declare-fun res!524670 () Bool)

(assert (=> b!775629 (=> (not res!524670) (not e!431671))))

(assert (=> b!775629 (= res!524670 (= (seekEntryOrOpen!0 (select (arr!20325 a!3186) j!159) a!3186 mask!3328) lt!345539))))

(assert (=> b!775629 (= lt!345539 (Found!7932 j!159))))

(declare-fun b!775630 () Bool)

(declare-fun res!524662 () Bool)

(assert (=> b!775630 (=> (not res!524662) (not e!431672))))

(assert (=> b!775630 (= res!524662 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20746 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20746 a!3186))))))

(declare-fun b!775631 () Bool)

(declare-fun res!524667 () Bool)

(assert (=> b!775631 (=> (not res!524667) (not e!431677))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!775631 (= res!524667 (validKeyInArray!0 k!2102))))

(declare-fun b!775632 () Bool)

(declare-fun res!524660 () Bool)

(assert (=> b!775632 (=> (not res!524660) (not e!431677))))

(assert (=> b!775632 (= res!524660 (validKeyInArray!0 (select (arr!20325 a!3186) j!159)))))

(assert (= (and start!67156 res!524671) b!775618))

(assert (= (and b!775618 res!524659) b!775632))

(assert (= (and b!775632 res!524660) b!775631))

(assert (= (and b!775631 res!524667) b!775624))

(assert (= (and b!775624 res!524661) b!775626))

(assert (= (and b!775626 res!524663) b!775622))

(assert (= (and b!775622 res!524673) b!775625))

(assert (= (and b!775625 res!524664) b!775630))

(assert (= (and b!775630 res!524662) b!775616))

(assert (= (and b!775616 res!524674) b!775615))

(assert (= (and b!775615 res!524668) b!775623))

(assert (= (and b!775623 c!85878) b!775628))

(assert (= (and b!775623 (not c!85878)) b!775620))

(assert (= (and b!775623 res!524672) b!775617))

(assert (= (and b!775617 res!524669) b!775619))

(assert (= (and b!775619 res!524666) b!775629))

(assert (= (and b!775629 res!524670) b!775621))

(assert (= (and b!775619 (not res!524665)) b!775627))

(declare-fun m!719875 () Bool)

(assert (=> b!775628 m!719875))

(assert (=> b!775628 m!719875))

(declare-fun m!719877 () Bool)

(assert (=> b!775628 m!719877))

(declare-fun m!719879 () Bool)

(assert (=> b!775625 m!719879))

(assert (=> b!775620 m!719875))

(assert (=> b!775620 m!719875))

(declare-fun m!719881 () Bool)

(assert (=> b!775620 m!719881))

(declare-fun m!719883 () Bool)

(assert (=> b!775615 m!719883))

(declare-fun m!719885 () Bool)

(assert (=> b!775626 m!719885))

(declare-fun m!719887 () Bool)

(assert (=> start!67156 m!719887))

(declare-fun m!719889 () Bool)

(assert (=> start!67156 m!719889))

(declare-fun m!719891 () Bool)

(assert (=> b!775617 m!719891))

(declare-fun m!719893 () Bool)

(assert (=> b!775617 m!719893))

(declare-fun m!719895 () Bool)

(assert (=> b!775617 m!719895))

(declare-fun m!719897 () Bool)

(assert (=> b!775617 m!719897))

(assert (=> b!775617 m!719893))

(declare-fun m!719899 () Bool)

(assert (=> b!775617 m!719899))

(declare-fun m!719901 () Bool)

(assert (=> b!775631 m!719901))

(assert (=> b!775632 m!719875))

(assert (=> b!775632 m!719875))

(declare-fun m!719903 () Bool)

(assert (=> b!775632 m!719903))

(assert (=> b!775621 m!719875))

(assert (=> b!775621 m!719875))

(declare-fun m!719905 () Bool)

(assert (=> b!775621 m!719905))

(declare-fun m!719907 () Bool)

(assert (=> b!775622 m!719907))

(assert (=> b!775616 m!719875))

(assert (=> b!775616 m!719875))

(declare-fun m!719909 () Bool)

(assert (=> b!775616 m!719909))

(assert (=> b!775616 m!719909))

(assert (=> b!775616 m!719875))

(declare-fun m!719911 () Bool)

(assert (=> b!775616 m!719911))

(declare-fun m!719913 () Bool)

(assert (=> b!775624 m!719913))

(assert (=> b!775629 m!719875))

(assert (=> b!775629 m!719875))

(declare-fun m!719915 () Bool)

(assert (=> b!775629 m!719915))

(declare-fun m!719917 () Bool)

(assert (=> b!775619 m!719917))

(declare-fun m!719919 () Bool)

(assert (=> b!775619 m!719919))

(assert (=> b!775627 m!719875))

(assert (=> b!775627 m!719875))

(assert (=> b!775627 m!719881))

(push 1)

