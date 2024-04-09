; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65508 () Bool)

(assert start!65508)

(declare-fun b!746559 () Bool)

(declare-fun e!416920 () Bool)

(declare-fun e!416926 () Bool)

(assert (=> b!746559 (= e!416920 (not e!416926))))

(declare-fun res!503450 () Bool)

(assert (=> b!746559 (=> res!503450 e!416926)))

(declare-fun x!1131 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7534 0))(
  ( (MissingZero!7534 (index!32503 (_ BitVec 32))) (Found!7534 (index!32504 (_ BitVec 32))) (Intermediate!7534 (undefined!8346 Bool) (index!32505 (_ BitVec 32)) (x!63477 (_ BitVec 32))) (Undefined!7534) (MissingVacant!7534 (index!32506 (_ BitVec 32))) )
))
(declare-fun lt!331823 () SeekEntryResult!7534)

(declare-fun index!1321 () (_ BitVec 32))

(get-info :version)

(assert (=> b!746559 (= res!503450 (or (not ((_ is Intermediate!7534) lt!331823)) (bvslt x!1131 (x!63477 lt!331823)) (not (= x!1131 (x!63477 lt!331823))) (not (= index!1321 (index!32505 lt!331823)))))))

(declare-fun e!416925 () Bool)

(assert (=> b!746559 e!416925))

(declare-fun res!503448 () Bool)

(assert (=> b!746559 (=> (not res!503448) (not e!416925))))

(declare-fun lt!331819 () SeekEntryResult!7534)

(declare-fun lt!331817 () SeekEntryResult!7534)

(assert (=> b!746559 (= res!503448 (= lt!331819 lt!331817))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!746559 (= lt!331817 (Found!7534 j!159))))

(declare-datatypes ((array!41634 0))(
  ( (array!41635 (arr!19927 (Array (_ BitVec 32) (_ BitVec 64))) (size!20348 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41634)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41634 (_ BitVec 32)) SeekEntryResult!7534)

(assert (=> b!746559 (= lt!331819 (seekEntryOrOpen!0 (select (arr!19927 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41634 (_ BitVec 32)) Bool)

(assert (=> b!746559 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!25548 0))(
  ( (Unit!25549) )
))
(declare-fun lt!331825 () Unit!25548)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41634 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25548)

(assert (=> b!746559 (= lt!331825 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!746560 () Bool)

(declare-fun res!503441 () Bool)

(declare-fun e!416922 () Bool)

(assert (=> b!746560 (=> (not res!503441) (not e!416922))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!746560 (= res!503441 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19927 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!746561 () Bool)

(declare-fun e!416923 () Bool)

(assert (=> b!746561 (= e!416923 true)))

(declare-fun lt!331818 () SeekEntryResult!7534)

(assert (=> b!746561 (= lt!331819 lt!331818)))

(declare-fun b!746562 () Bool)

(declare-fun e!416924 () Bool)

(declare-fun e!416928 () Bool)

(assert (=> b!746562 (= e!416924 e!416928)))

(declare-fun res!503449 () Bool)

(assert (=> b!746562 (=> (not res!503449) (not e!416928))))

(declare-fun lt!331826 () SeekEntryResult!7534)

(assert (=> b!746562 (= res!503449 (or (= lt!331826 (MissingZero!7534 i!1173)) (= lt!331826 (MissingVacant!7534 i!1173))))))

(declare-fun k0!2102 () (_ BitVec 64))

(assert (=> b!746562 (= lt!331826 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!746563 () Bool)

(declare-fun res!503437 () Bool)

(assert (=> b!746563 (=> (not res!503437) (not e!416928))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!746563 (= res!503437 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20348 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20348 a!3186))))))

(declare-fun b!746564 () Bool)

(declare-fun res!503451 () Bool)

(assert (=> b!746564 (=> (not res!503451) (not e!416924))))

(declare-fun arrayContainsKey!0 (array!41634 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!746564 (= res!503451 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!746565 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41634 (_ BitVec 32)) SeekEntryResult!7534)

(assert (=> b!746565 (= e!416925 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19927 a!3186) j!159) a!3186 mask!3328) lt!331817))))

(declare-fun b!746566 () Bool)

(assert (=> b!746566 (= e!416926 e!416923)))

(declare-fun res!503446 () Bool)

(assert (=> b!746566 (=> res!503446 e!416923)))

(declare-fun lt!331820 () (_ BitVec 64))

(assert (=> b!746566 (= res!503446 (or (not (= lt!331818 lt!331817)) (= (select (store (arr!19927 a!3186) i!1173 k0!2102) index!1321) lt!331820) (not (= (select (store (arr!19927 a!3186) i!1173 k0!2102) index!1321) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!746566 (= lt!331818 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19927 a!3186) j!159) a!3186 mask!3328))))

(declare-fun res!503440 () Bool)

(assert (=> start!65508 (=> (not res!503440) (not e!416924))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65508 (= res!503440 (validMask!0 mask!3328))))

(assert (=> start!65508 e!416924))

(assert (=> start!65508 true))

(declare-fun array_inv!15701 (array!41634) Bool)

(assert (=> start!65508 (array_inv!15701 a!3186)))

(declare-fun b!746567 () Bool)

(assert (=> b!746567 (= e!416928 e!416922)))

(declare-fun res!503443 () Bool)

(assert (=> b!746567 (=> (not res!503443) (not e!416922))))

(declare-fun lt!331821 () SeekEntryResult!7534)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41634 (_ BitVec 32)) SeekEntryResult!7534)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!746567 (= res!503443 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19927 a!3186) j!159) mask!3328) (select (arr!19927 a!3186) j!159) a!3186 mask!3328) lt!331821))))

(assert (=> b!746567 (= lt!331821 (Intermediate!7534 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!746568 () Bool)

(declare-fun e!416927 () Bool)

(assert (=> b!746568 (= e!416927 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19927 a!3186) j!159) a!3186 mask!3328) lt!331821))))

(declare-fun b!746569 () Bool)

(declare-fun res!503436 () Bool)

(assert (=> b!746569 (=> (not res!503436) (not e!416924))))

(assert (=> b!746569 (= res!503436 (and (= (size!20348 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20348 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20348 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!746570 () Bool)

(assert (=> b!746570 (= e!416927 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19927 a!3186) j!159) a!3186 mask!3328) (Found!7534 j!159)))))

(declare-fun b!746571 () Bool)

(declare-fun res!503447 () Bool)

(assert (=> b!746571 (=> (not res!503447) (not e!416928))))

(declare-datatypes ((List!13982 0))(
  ( (Nil!13979) (Cons!13978 (h!15050 (_ BitVec 64)) (t!20305 List!13982)) )
))
(declare-fun arrayNoDuplicates!0 (array!41634 (_ BitVec 32) List!13982) Bool)

(assert (=> b!746571 (= res!503447 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13979))))

(declare-fun b!746572 () Bool)

(declare-fun res!503444 () Bool)

(assert (=> b!746572 (=> (not res!503444) (not e!416928))))

(assert (=> b!746572 (= res!503444 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!746573 () Bool)

(declare-fun res!503445 () Bool)

(assert (=> b!746573 (=> (not res!503445) (not e!416924))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!746573 (= res!503445 (validKeyInArray!0 k0!2102))))

(declare-fun b!746574 () Bool)

(declare-fun res!503438 () Bool)

(assert (=> b!746574 (=> (not res!503438) (not e!416924))))

(assert (=> b!746574 (= res!503438 (validKeyInArray!0 (select (arr!19927 a!3186) j!159)))))

(declare-fun b!746575 () Bool)

(assert (=> b!746575 (= e!416922 e!416920)))

(declare-fun res!503442 () Bool)

(assert (=> b!746575 (=> (not res!503442) (not e!416920))))

(declare-fun lt!331822 () SeekEntryResult!7534)

(assert (=> b!746575 (= res!503442 (= lt!331822 lt!331823))))

(declare-fun lt!331824 () array!41634)

(assert (=> b!746575 (= lt!331823 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!331820 lt!331824 mask!3328))))

(assert (=> b!746575 (= lt!331822 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!331820 mask!3328) lt!331820 lt!331824 mask!3328))))

(assert (=> b!746575 (= lt!331820 (select (store (arr!19927 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!746575 (= lt!331824 (array!41635 (store (arr!19927 a!3186) i!1173 k0!2102) (size!20348 a!3186)))))

(declare-fun b!746576 () Bool)

(declare-fun res!503439 () Bool)

(assert (=> b!746576 (=> (not res!503439) (not e!416922))))

(assert (=> b!746576 (= res!503439 e!416927)))

(declare-fun c!81942 () Bool)

(assert (=> b!746576 (= c!81942 (bvsle x!1131 resIntermediateX!5))))

(assert (= (and start!65508 res!503440) b!746569))

(assert (= (and b!746569 res!503436) b!746574))

(assert (= (and b!746574 res!503438) b!746573))

(assert (= (and b!746573 res!503445) b!746564))

(assert (= (and b!746564 res!503451) b!746562))

(assert (= (and b!746562 res!503449) b!746572))

(assert (= (and b!746572 res!503444) b!746571))

(assert (= (and b!746571 res!503447) b!746563))

(assert (= (and b!746563 res!503437) b!746567))

(assert (= (and b!746567 res!503443) b!746560))

(assert (= (and b!746560 res!503441) b!746576))

(assert (= (and b!746576 c!81942) b!746568))

(assert (= (and b!746576 (not c!81942)) b!746570))

(assert (= (and b!746576 res!503439) b!746575))

(assert (= (and b!746575 res!503442) b!746559))

(assert (= (and b!746559 res!503448) b!746565))

(assert (= (and b!746559 (not res!503450)) b!746566))

(assert (= (and b!746566 (not res!503446)) b!746561))

(declare-fun m!696889 () Bool)

(assert (=> b!746573 m!696889))

(declare-fun m!696891 () Bool)

(assert (=> b!746574 m!696891))

(assert (=> b!746574 m!696891))

(declare-fun m!696893 () Bool)

(assert (=> b!746574 m!696893))

(assert (=> b!746568 m!696891))

(assert (=> b!746568 m!696891))

(declare-fun m!696895 () Bool)

(assert (=> b!746568 m!696895))

(declare-fun m!696897 () Bool)

(assert (=> b!746572 m!696897))

(declare-fun m!696899 () Bool)

(assert (=> b!746564 m!696899))

(declare-fun m!696901 () Bool)

(assert (=> b!746575 m!696901))

(declare-fun m!696903 () Bool)

(assert (=> b!746575 m!696903))

(declare-fun m!696905 () Bool)

(assert (=> b!746575 m!696905))

(declare-fun m!696907 () Bool)

(assert (=> b!746575 m!696907))

(assert (=> b!746575 m!696901))

(declare-fun m!696909 () Bool)

(assert (=> b!746575 m!696909))

(declare-fun m!696911 () Bool)

(assert (=> start!65508 m!696911))

(declare-fun m!696913 () Bool)

(assert (=> start!65508 m!696913))

(declare-fun m!696915 () Bool)

(assert (=> b!746562 m!696915))

(assert (=> b!746565 m!696891))

(assert (=> b!746565 m!696891))

(declare-fun m!696917 () Bool)

(assert (=> b!746565 m!696917))

(assert (=> b!746559 m!696891))

(assert (=> b!746559 m!696891))

(declare-fun m!696919 () Bool)

(assert (=> b!746559 m!696919))

(declare-fun m!696921 () Bool)

(assert (=> b!746559 m!696921))

(declare-fun m!696923 () Bool)

(assert (=> b!746559 m!696923))

(assert (=> b!746570 m!696891))

(assert (=> b!746570 m!696891))

(declare-fun m!696925 () Bool)

(assert (=> b!746570 m!696925))

(declare-fun m!696927 () Bool)

(assert (=> b!746560 m!696927))

(declare-fun m!696929 () Bool)

(assert (=> b!746571 m!696929))

(assert (=> b!746567 m!696891))

(assert (=> b!746567 m!696891))

(declare-fun m!696931 () Bool)

(assert (=> b!746567 m!696931))

(assert (=> b!746567 m!696931))

(assert (=> b!746567 m!696891))

(declare-fun m!696933 () Bool)

(assert (=> b!746567 m!696933))

(assert (=> b!746566 m!696905))

(declare-fun m!696935 () Bool)

(assert (=> b!746566 m!696935))

(assert (=> b!746566 m!696891))

(assert (=> b!746566 m!696891))

(assert (=> b!746566 m!696925))

(check-sat (not b!746565) (not b!746566) (not b!746573) (not start!65508) (not b!746574) (not b!746575) (not b!746562) (not b!746572) (not b!746568) (not b!746564) (not b!746567) (not b!746570) (not b!746559) (not b!746571))
(check-sat)
