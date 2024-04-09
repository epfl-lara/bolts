; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65844 () Bool)

(assert start!65844)

(declare-fun b!757780 () Bool)

(declare-fun res!512684 () Bool)

(declare-fun e!422516 () Bool)

(assert (=> b!757780 (=> (not res!512684) (not e!422516))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!757780 (= res!512684 (validKeyInArray!0 k0!2102))))

(declare-fun b!757781 () Bool)

(declare-fun res!512682 () Bool)

(declare-fun e!422520 () Bool)

(assert (=> b!757781 (=> (not res!512682) (not e!422520))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!41970 0))(
  ( (array!41971 (arr!20095 (Array (_ BitVec 32) (_ BitVec 64))) (size!20516 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41970)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!757781 (= res!512682 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20516 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20516 a!3186))))))

(declare-fun b!757782 () Bool)

(declare-fun res!512670 () Bool)

(declare-fun e!422523 () Bool)

(assert (=> b!757782 (=> (not res!512670) (not e!422523))))

(declare-fun e!422522 () Bool)

(assert (=> b!757782 (= res!512670 e!422522)))

(declare-fun c!82937 () Bool)

(assert (=> b!757782 (= c!82937 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!757783 () Bool)

(declare-fun e!422526 () Bool)

(declare-datatypes ((SeekEntryResult!7702 0))(
  ( (MissingZero!7702 (index!33175 (_ BitVec 32))) (Found!7702 (index!33176 (_ BitVec 32))) (Intermediate!7702 (undefined!8514 Bool) (index!33177 (_ BitVec 32)) (x!64093 (_ BitVec 32))) (Undefined!7702) (MissingVacant!7702 (index!33178 (_ BitVec 32))) )
))
(declare-fun lt!337519 () SeekEntryResult!7702)

(declare-fun lt!337526 () SeekEntryResult!7702)

(assert (=> b!757783 (= e!422526 (= lt!337519 lt!337526))))

(declare-fun b!757784 () Bool)

(declare-fun e!422521 () Bool)

(assert (=> b!757784 (= e!422523 e!422521)))

(declare-fun res!512673 () Bool)

(assert (=> b!757784 (=> (not res!512673) (not e!422521))))

(declare-fun lt!337518 () SeekEntryResult!7702)

(declare-fun lt!337525 () SeekEntryResult!7702)

(assert (=> b!757784 (= res!512673 (= lt!337518 lt!337525))))

(declare-fun lt!337522 () array!41970)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun lt!337517 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41970 (_ BitVec 32)) SeekEntryResult!7702)

(assert (=> b!757784 (= lt!337525 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!337517 lt!337522 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!757784 (= lt!337518 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!337517 mask!3328) lt!337517 lt!337522 mask!3328))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!757784 (= lt!337517 (select (store (arr!20095 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!757784 (= lt!337522 (array!41971 (store (arr!20095 a!3186) i!1173 k0!2102) (size!20516 a!3186)))))

(declare-fun b!757785 () Bool)

(declare-fun res!512669 () Bool)

(assert (=> b!757785 (=> (not res!512669) (not e!422516))))

(assert (=> b!757785 (= res!512669 (validKeyInArray!0 (select (arr!20095 a!3186) j!159)))))

(declare-fun lt!337520 () SeekEntryResult!7702)

(declare-fun b!757786 () Bool)

(assert (=> b!757786 (= e!422522 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20095 a!3186) j!159) a!3186 mask!3328) lt!337520))))

(declare-fun b!757787 () Bool)

(assert (=> b!757787 (= e!422520 e!422523)))

(declare-fun res!512677 () Bool)

(assert (=> b!757787 (=> (not res!512677) (not e!422523))))

(assert (=> b!757787 (= res!512677 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20095 a!3186) j!159) mask!3328) (select (arr!20095 a!3186) j!159) a!3186 mask!3328) lt!337520))))

(assert (=> b!757787 (= lt!337520 (Intermediate!7702 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!757789 () Bool)

(declare-fun res!512676 () Bool)

(assert (=> b!757789 (=> (not res!512676) (not e!422516))))

(assert (=> b!757789 (= res!512676 (and (= (size!20516 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20516 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20516 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!757790 () Bool)

(declare-datatypes ((Unit!26210 0))(
  ( (Unit!26211) )
))
(declare-fun e!422525 () Unit!26210)

(declare-fun Unit!26212 () Unit!26210)

(assert (=> b!757790 (= e!422525 Unit!26212)))

(declare-fun b!757791 () Bool)

(declare-fun Unit!26213 () Unit!26210)

(assert (=> b!757791 (= e!422525 Unit!26213)))

(assert (=> b!757791 false))

(declare-fun b!757792 () Bool)

(declare-fun res!512671 () Bool)

(assert (=> b!757792 (=> (not res!512671) (not e!422520))))

(declare-datatypes ((List!14150 0))(
  ( (Nil!14147) (Cons!14146 (h!15218 (_ BitVec 64)) (t!20473 List!14150)) )
))
(declare-fun arrayNoDuplicates!0 (array!41970 (_ BitVec 32) List!14150) Bool)

(assert (=> b!757792 (= res!512671 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14147))))

(declare-fun b!757793 () Bool)

(declare-fun res!512685 () Bool)

(assert (=> b!757793 (=> (not res!512685) (not e!422516))))

(declare-fun arrayContainsKey!0 (array!41970 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!757793 (= res!512685 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!757794 () Bool)

(declare-fun e!422517 () Bool)

(declare-fun e!422518 () Bool)

(assert (=> b!757794 (= e!422517 e!422518)))

(declare-fun res!512679 () Bool)

(assert (=> b!757794 (=> res!512679 e!422518)))

(declare-fun lt!337523 () (_ BitVec 64))

(assert (=> b!757794 (= res!512679 (= lt!337523 lt!337517))))

(assert (=> b!757794 (= lt!337523 (select (store (arr!20095 a!3186) i!1173 k0!2102) index!1321))))

(declare-fun b!757795 () Bool)

(declare-fun res!512672 () Bool)

(assert (=> b!757795 (=> (not res!512672) (not e!422526))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41970 (_ BitVec 32)) SeekEntryResult!7702)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41970 (_ BitVec 32)) SeekEntryResult!7702)

(assert (=> b!757795 (= res!512672 (= (seekEntryOrOpen!0 lt!337517 lt!337522 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!337517 lt!337522 mask!3328)))))

(declare-fun b!757796 () Bool)

(declare-fun e!422524 () Bool)

(assert (=> b!757796 (= e!422524 e!422517)))

(declare-fun res!512674 () Bool)

(assert (=> b!757796 (=> res!512674 e!422517)))

(declare-fun lt!337515 () SeekEntryResult!7702)

(assert (=> b!757796 (= res!512674 (not (= lt!337526 lt!337515)))))

(assert (=> b!757796 (= lt!337526 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20095 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!757797 () Bool)

(declare-fun res!512675 () Bool)

(assert (=> b!757797 (=> (not res!512675) (not e!422523))))

(assert (=> b!757797 (= res!512675 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20095 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!757798 () Bool)

(declare-fun e!422519 () Bool)

(assert (=> b!757798 (= e!422519 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20095 a!3186) j!159) a!3186 mask!3328) lt!337515))))

(declare-fun b!757799 () Bool)

(assert (=> b!757799 (= e!422522 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20095 a!3186) j!159) a!3186 mask!3328) (Found!7702 j!159)))))

(declare-fun b!757800 () Bool)

(assert (=> b!757800 (= e!422518 true)))

(assert (=> b!757800 e!422526))

(declare-fun res!512683 () Bool)

(assert (=> b!757800 (=> (not res!512683) (not e!422526))))

(assert (=> b!757800 (= res!512683 (= lt!337523 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!337521 () Unit!26210)

(assert (=> b!757800 (= lt!337521 e!422525)))

(declare-fun c!82938 () Bool)

(assert (=> b!757800 (= c!82938 (= lt!337523 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!757801 () Bool)

(declare-fun res!512667 () Bool)

(assert (=> b!757801 (=> (not res!512667) (not e!422520))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41970 (_ BitVec 32)) Bool)

(assert (=> b!757801 (= res!512667 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!757802 () Bool)

(assert (=> b!757802 (= e!422521 (not e!422524))))

(declare-fun res!512678 () Bool)

(assert (=> b!757802 (=> res!512678 e!422524)))

(get-info :version)

(assert (=> b!757802 (= res!512678 (or (not ((_ is Intermediate!7702) lt!337525)) (bvslt x!1131 (x!64093 lt!337525)) (not (= x!1131 (x!64093 lt!337525))) (not (= index!1321 (index!33177 lt!337525)))))))

(assert (=> b!757802 e!422519))

(declare-fun res!512680 () Bool)

(assert (=> b!757802 (=> (not res!512680) (not e!422519))))

(assert (=> b!757802 (= res!512680 (= lt!337519 lt!337515))))

(assert (=> b!757802 (= lt!337515 (Found!7702 j!159))))

(assert (=> b!757802 (= lt!337519 (seekEntryOrOpen!0 (select (arr!20095 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!757802 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!337524 () Unit!26210)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41970 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26210)

(assert (=> b!757802 (= lt!337524 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!757788 () Bool)

(assert (=> b!757788 (= e!422516 e!422520)))

(declare-fun res!512681 () Bool)

(assert (=> b!757788 (=> (not res!512681) (not e!422520))))

(declare-fun lt!337516 () SeekEntryResult!7702)

(assert (=> b!757788 (= res!512681 (or (= lt!337516 (MissingZero!7702 i!1173)) (= lt!337516 (MissingVacant!7702 i!1173))))))

(assert (=> b!757788 (= lt!337516 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun res!512668 () Bool)

(assert (=> start!65844 (=> (not res!512668) (not e!422516))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65844 (= res!512668 (validMask!0 mask!3328))))

(assert (=> start!65844 e!422516))

(assert (=> start!65844 true))

(declare-fun array_inv!15869 (array!41970) Bool)

(assert (=> start!65844 (array_inv!15869 a!3186)))

(assert (= (and start!65844 res!512668) b!757789))

(assert (= (and b!757789 res!512676) b!757785))

(assert (= (and b!757785 res!512669) b!757780))

(assert (= (and b!757780 res!512684) b!757793))

(assert (= (and b!757793 res!512685) b!757788))

(assert (= (and b!757788 res!512681) b!757801))

(assert (= (and b!757801 res!512667) b!757792))

(assert (= (and b!757792 res!512671) b!757781))

(assert (= (and b!757781 res!512682) b!757787))

(assert (= (and b!757787 res!512677) b!757797))

(assert (= (and b!757797 res!512675) b!757782))

(assert (= (and b!757782 c!82937) b!757786))

(assert (= (and b!757782 (not c!82937)) b!757799))

(assert (= (and b!757782 res!512670) b!757784))

(assert (= (and b!757784 res!512673) b!757802))

(assert (= (and b!757802 res!512680) b!757798))

(assert (= (and b!757802 (not res!512678)) b!757796))

(assert (= (and b!757796 (not res!512674)) b!757794))

(assert (= (and b!757794 (not res!512679)) b!757800))

(assert (= (and b!757800 c!82938) b!757791))

(assert (= (and b!757800 (not c!82938)) b!757790))

(assert (= (and b!757800 res!512683) b!757795))

(assert (= (and b!757795 res!512672) b!757783))

(declare-fun m!705473 () Bool)

(assert (=> b!757794 m!705473))

(declare-fun m!705475 () Bool)

(assert (=> b!757794 m!705475))

(declare-fun m!705477 () Bool)

(assert (=> b!757795 m!705477))

(declare-fun m!705479 () Bool)

(assert (=> b!757795 m!705479))

(declare-fun m!705481 () Bool)

(assert (=> b!757780 m!705481))

(declare-fun m!705483 () Bool)

(assert (=> b!757802 m!705483))

(assert (=> b!757802 m!705483))

(declare-fun m!705485 () Bool)

(assert (=> b!757802 m!705485))

(declare-fun m!705487 () Bool)

(assert (=> b!757802 m!705487))

(declare-fun m!705489 () Bool)

(assert (=> b!757802 m!705489))

(assert (=> b!757799 m!705483))

(assert (=> b!757799 m!705483))

(declare-fun m!705491 () Bool)

(assert (=> b!757799 m!705491))

(declare-fun m!705493 () Bool)

(assert (=> b!757788 m!705493))

(assert (=> b!757784 m!705473))

(declare-fun m!705495 () Bool)

(assert (=> b!757784 m!705495))

(declare-fun m!705497 () Bool)

(assert (=> b!757784 m!705497))

(declare-fun m!705499 () Bool)

(assert (=> b!757784 m!705499))

(assert (=> b!757784 m!705497))

(declare-fun m!705501 () Bool)

(assert (=> b!757784 m!705501))

(declare-fun m!705503 () Bool)

(assert (=> start!65844 m!705503))

(declare-fun m!705505 () Bool)

(assert (=> start!65844 m!705505))

(assert (=> b!757785 m!705483))

(assert (=> b!757785 m!705483))

(declare-fun m!705507 () Bool)

(assert (=> b!757785 m!705507))

(assert (=> b!757787 m!705483))

(assert (=> b!757787 m!705483))

(declare-fun m!705509 () Bool)

(assert (=> b!757787 m!705509))

(assert (=> b!757787 m!705509))

(assert (=> b!757787 m!705483))

(declare-fun m!705511 () Bool)

(assert (=> b!757787 m!705511))

(assert (=> b!757786 m!705483))

(assert (=> b!757786 m!705483))

(declare-fun m!705513 () Bool)

(assert (=> b!757786 m!705513))

(declare-fun m!705515 () Bool)

(assert (=> b!757797 m!705515))

(assert (=> b!757796 m!705483))

(assert (=> b!757796 m!705483))

(assert (=> b!757796 m!705491))

(declare-fun m!705517 () Bool)

(assert (=> b!757793 m!705517))

(assert (=> b!757798 m!705483))

(assert (=> b!757798 m!705483))

(declare-fun m!705519 () Bool)

(assert (=> b!757798 m!705519))

(declare-fun m!705521 () Bool)

(assert (=> b!757801 m!705521))

(declare-fun m!705523 () Bool)

(assert (=> b!757792 m!705523))

(check-sat (not b!757788) (not b!757786) (not b!757802) (not b!757787) (not b!757796) (not b!757785) (not start!65844) (not b!757780) (not b!757792) (not b!757795) (not b!757793) (not b!757801) (not b!757784) (not b!757799) (not b!757798))
(check-sat)
