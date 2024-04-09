; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65634 () Bool)

(assert start!65634)

(declare-fun b!750575 () Bool)

(declare-fun e!418783 () Bool)

(declare-fun e!418778 () Bool)

(assert (=> b!750575 (= e!418783 e!418778)))

(declare-fun res!506732 () Bool)

(assert (=> b!750575 (=> (not res!506732) (not e!418778))))

(declare-datatypes ((SeekEntryResult!7597 0))(
  ( (MissingZero!7597 (index!32755 (_ BitVec 32))) (Found!7597 (index!32756 (_ BitVec 32))) (Intermediate!7597 (undefined!8409 Bool) (index!32757 (_ BitVec 32)) (x!63708 (_ BitVec 32))) (Undefined!7597) (MissingVacant!7597 (index!32758 (_ BitVec 32))) )
))
(declare-fun lt!333776 () SeekEntryResult!7597)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!750575 (= res!506732 (or (= lt!333776 (MissingZero!7597 i!1173)) (= lt!333776 (MissingVacant!7597 i!1173))))))

(declare-datatypes ((array!41760 0))(
  ( (array!41761 (arr!19990 (Array (_ BitVec 32) (_ BitVec 64))) (size!20411 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41760)

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41760 (_ BitVec 32)) SeekEntryResult!7597)

(assert (=> b!750575 (= lt!333776 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!750576 () Bool)

(declare-fun res!506734 () Bool)

(assert (=> b!750576 (=> (not res!506734) (not e!418778))))

(declare-datatypes ((List!14045 0))(
  ( (Nil!14042) (Cons!14041 (h!15113 (_ BitVec 64)) (t!20368 List!14045)) )
))
(declare-fun arrayNoDuplicates!0 (array!41760 (_ BitVec 32) List!14045) Bool)

(assert (=> b!750576 (= res!506734 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14042))))

(declare-fun b!750577 () Bool)

(declare-fun res!506725 () Bool)

(assert (=> b!750577 (=> (not res!506725) (not e!418783))))

(declare-fun arrayContainsKey!0 (array!41760 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!750577 (= res!506725 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!333777 () array!41760)

(declare-fun lt!333785 () (_ BitVec 64))

(declare-fun b!750578 () Bool)

(declare-fun e!418775 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41760 (_ BitVec 32)) SeekEntryResult!7597)

(assert (=> b!750578 (= e!418775 (= (seekEntryOrOpen!0 lt!333785 lt!333777 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!333785 lt!333777 mask!3328)))))

(declare-fun b!750579 () Bool)

(declare-fun e!418776 () Bool)

(declare-fun e!418785 () Bool)

(assert (=> b!750579 (= e!418776 e!418785)))

(declare-fun res!506724 () Bool)

(assert (=> b!750579 (=> res!506724 e!418785)))

(declare-fun lt!333782 () (_ BitVec 64))

(assert (=> b!750579 (= res!506724 (= lt!333782 lt!333785))))

(assert (=> b!750579 (= lt!333782 (select (store (arr!19990 a!3186) i!1173 k0!2102) index!1321))))

(declare-fun b!750580 () Bool)

(declare-fun e!418777 () Bool)

(assert (=> b!750580 (= e!418778 e!418777)))

(declare-fun res!506726 () Bool)

(assert (=> b!750580 (=> (not res!506726) (not e!418777))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun lt!333775 () SeekEntryResult!7597)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41760 (_ BitVec 32)) SeekEntryResult!7597)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!750580 (= res!506726 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19990 a!3186) j!159) mask!3328) (select (arr!19990 a!3186) j!159) a!3186 mask!3328) lt!333775))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!750580 (= lt!333775 (Intermediate!7597 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun e!418781 () Bool)

(declare-fun b!750581 () Bool)

(assert (=> b!750581 (= e!418781 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19990 a!3186) j!159) a!3186 mask!3328) lt!333775))))

(declare-fun res!506733 () Bool)

(assert (=> start!65634 (=> (not res!506733) (not e!418783))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65634 (= res!506733 (validMask!0 mask!3328))))

(assert (=> start!65634 e!418783))

(assert (=> start!65634 true))

(declare-fun array_inv!15764 (array!41760) Bool)

(assert (=> start!65634 (array_inv!15764 a!3186)))

(declare-fun b!750582 () Bool)

(declare-fun res!506731 () Bool)

(assert (=> b!750582 (=> (not res!506731) (not e!418777))))

(assert (=> b!750582 (= res!506731 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19990 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!750583 () Bool)

(declare-fun res!506737 () Bool)

(assert (=> b!750583 (=> (not res!506737) (not e!418777))))

(assert (=> b!750583 (= res!506737 e!418781)))

(declare-fun c!82307 () Bool)

(assert (=> b!750583 (= c!82307 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!750584 () Bool)

(declare-fun res!506738 () Bool)

(assert (=> b!750584 (=> (not res!506738) (not e!418783))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!750584 (= res!506738 (validKeyInArray!0 (select (arr!19990 a!3186) j!159)))))

(declare-fun b!750585 () Bool)

(declare-fun e!418784 () Bool)

(assert (=> b!750585 (= e!418777 e!418784)))

(declare-fun res!506735 () Bool)

(assert (=> b!750585 (=> (not res!506735) (not e!418784))))

(declare-fun lt!333783 () SeekEntryResult!7597)

(declare-fun lt!333781 () SeekEntryResult!7597)

(assert (=> b!750585 (= res!506735 (= lt!333783 lt!333781))))

(assert (=> b!750585 (= lt!333781 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!333785 lt!333777 mask!3328))))

(assert (=> b!750585 (= lt!333783 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!333785 mask!3328) lt!333785 lt!333777 mask!3328))))

(assert (=> b!750585 (= lt!333785 (select (store (arr!19990 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!750585 (= lt!333777 (array!41761 (store (arr!19990 a!3186) i!1173 k0!2102) (size!20411 a!3186)))))

(declare-fun b!750586 () Bool)

(assert (=> b!750586 (= e!418781 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19990 a!3186) j!159) a!3186 mask!3328) (Found!7597 j!159)))))

(declare-fun b!750587 () Bool)

(declare-datatypes ((Unit!25790 0))(
  ( (Unit!25791) )
))
(declare-fun e!418782 () Unit!25790)

(declare-fun Unit!25792 () Unit!25790)

(assert (=> b!750587 (= e!418782 Unit!25792)))

(declare-fun b!750588 () Bool)

(declare-fun e!418780 () Bool)

(declare-fun lt!333779 () SeekEntryResult!7597)

(assert (=> b!750588 (= e!418780 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19990 a!3186) j!159) a!3186 mask!3328) lt!333779))))

(declare-fun b!750589 () Bool)

(assert (=> b!750589 (= e!418785 (or (bvslt mask!3328 #b00000000000000000000000000000000) (bvslt index!1321 (bvadd #b00000000000000000000000000000001 mask!3328))))))

(assert (=> b!750589 e!418775))

(declare-fun res!506729 () Bool)

(assert (=> b!750589 (=> (not res!506729) (not e!418775))))

(assert (=> b!750589 (= res!506729 (= lt!333782 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!333784 () Unit!25790)

(assert (=> b!750589 (= lt!333784 e!418782)))

(declare-fun c!82308 () Bool)

(assert (=> b!750589 (= c!82308 (= lt!333782 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!750590 () Bool)

(declare-fun res!506730 () Bool)

(assert (=> b!750590 (=> (not res!506730) (not e!418783))))

(assert (=> b!750590 (= res!506730 (and (= (size!20411 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20411 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20411 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!750591 () Bool)

(assert (=> b!750591 (= e!418784 (not e!418776))))

(declare-fun res!506727 () Bool)

(assert (=> b!750591 (=> res!506727 e!418776)))

(get-info :version)

(assert (=> b!750591 (= res!506727 (or (not ((_ is Intermediate!7597) lt!333781)) (bvslt x!1131 (x!63708 lt!333781)) (not (= x!1131 (x!63708 lt!333781))) (not (= index!1321 (index!32757 lt!333781)))))))

(assert (=> b!750591 e!418780))

(declare-fun res!506723 () Bool)

(assert (=> b!750591 (=> (not res!506723) (not e!418780))))

(declare-fun lt!333780 () SeekEntryResult!7597)

(assert (=> b!750591 (= res!506723 (= lt!333780 lt!333779))))

(assert (=> b!750591 (= lt!333779 (Found!7597 j!159))))

(assert (=> b!750591 (= lt!333780 (seekEntryOrOpen!0 (select (arr!19990 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41760 (_ BitVec 32)) Bool)

(assert (=> b!750591 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!333778 () Unit!25790)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41760 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25790)

(assert (=> b!750591 (= lt!333778 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!750592 () Bool)

(declare-fun res!506722 () Bool)

(assert (=> b!750592 (=> (not res!506722) (not e!418783))))

(assert (=> b!750592 (= res!506722 (validKeyInArray!0 k0!2102))))

(declare-fun b!750593 () Bool)

(declare-fun res!506739 () Bool)

(assert (=> b!750593 (=> (not res!506739) (not e!418778))))

(assert (=> b!750593 (= res!506739 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!750594 () Bool)

(declare-fun Unit!25793 () Unit!25790)

(assert (=> b!750594 (= e!418782 Unit!25793)))

(assert (=> b!750594 false))

(declare-fun b!750595 () Bool)

(declare-fun res!506736 () Bool)

(assert (=> b!750595 (=> (not res!506736) (not e!418778))))

(assert (=> b!750595 (= res!506736 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20411 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20411 a!3186))))))

(declare-fun b!750596 () Bool)

(declare-fun res!506728 () Bool)

(assert (=> b!750596 (=> res!506728 e!418776)))

(assert (=> b!750596 (= res!506728 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19990 a!3186) j!159) a!3186 mask!3328) lt!333779)))))

(assert (= (and start!65634 res!506733) b!750590))

(assert (= (and b!750590 res!506730) b!750584))

(assert (= (and b!750584 res!506738) b!750592))

(assert (= (and b!750592 res!506722) b!750577))

(assert (= (and b!750577 res!506725) b!750575))

(assert (= (and b!750575 res!506732) b!750593))

(assert (= (and b!750593 res!506739) b!750576))

(assert (= (and b!750576 res!506734) b!750595))

(assert (= (and b!750595 res!506736) b!750580))

(assert (= (and b!750580 res!506726) b!750582))

(assert (= (and b!750582 res!506731) b!750583))

(assert (= (and b!750583 c!82307) b!750581))

(assert (= (and b!750583 (not c!82307)) b!750586))

(assert (= (and b!750583 res!506737) b!750585))

(assert (= (and b!750585 res!506735) b!750591))

(assert (= (and b!750591 res!506723) b!750588))

(assert (= (and b!750591 (not res!506727)) b!750596))

(assert (= (and b!750596 (not res!506728)) b!750579))

(assert (= (and b!750579 (not res!506724)) b!750589))

(assert (= (and b!750589 c!82308) b!750594))

(assert (= (and b!750589 (not c!82308)) b!750587))

(assert (= (and b!750589 res!506729) b!750578))

(declare-fun m!700013 () Bool)

(assert (=> b!750581 m!700013))

(assert (=> b!750581 m!700013))

(declare-fun m!700015 () Bool)

(assert (=> b!750581 m!700015))

(declare-fun m!700017 () Bool)

(assert (=> b!750578 m!700017))

(declare-fun m!700019 () Bool)

(assert (=> b!750578 m!700019))

(declare-fun m!700021 () Bool)

(assert (=> b!750592 m!700021))

(assert (=> b!750584 m!700013))

(assert (=> b!750584 m!700013))

(declare-fun m!700023 () Bool)

(assert (=> b!750584 m!700023))

(assert (=> b!750591 m!700013))

(assert (=> b!750591 m!700013))

(declare-fun m!700025 () Bool)

(assert (=> b!750591 m!700025))

(declare-fun m!700027 () Bool)

(assert (=> b!750591 m!700027))

(declare-fun m!700029 () Bool)

(assert (=> b!750591 m!700029))

(declare-fun m!700031 () Bool)

(assert (=> b!750585 m!700031))

(declare-fun m!700033 () Bool)

(assert (=> b!750585 m!700033))

(declare-fun m!700035 () Bool)

(assert (=> b!750585 m!700035))

(declare-fun m!700037 () Bool)

(assert (=> b!750585 m!700037))

(assert (=> b!750585 m!700031))

(declare-fun m!700039 () Bool)

(assert (=> b!750585 m!700039))

(declare-fun m!700041 () Bool)

(assert (=> b!750593 m!700041))

(assert (=> b!750579 m!700037))

(declare-fun m!700043 () Bool)

(assert (=> b!750579 m!700043))

(assert (=> b!750588 m!700013))

(assert (=> b!750588 m!700013))

(declare-fun m!700045 () Bool)

(assert (=> b!750588 m!700045))

(declare-fun m!700047 () Bool)

(assert (=> start!65634 m!700047))

(declare-fun m!700049 () Bool)

(assert (=> start!65634 m!700049))

(assert (=> b!750586 m!700013))

(assert (=> b!750586 m!700013))

(declare-fun m!700051 () Bool)

(assert (=> b!750586 m!700051))

(assert (=> b!750596 m!700013))

(assert (=> b!750596 m!700013))

(assert (=> b!750596 m!700051))

(declare-fun m!700053 () Bool)

(assert (=> b!750577 m!700053))

(declare-fun m!700055 () Bool)

(assert (=> b!750576 m!700055))

(declare-fun m!700057 () Bool)

(assert (=> b!750582 m!700057))

(assert (=> b!750580 m!700013))

(assert (=> b!750580 m!700013))

(declare-fun m!700059 () Bool)

(assert (=> b!750580 m!700059))

(assert (=> b!750580 m!700059))

(assert (=> b!750580 m!700013))

(declare-fun m!700061 () Bool)

(assert (=> b!750580 m!700061))

(declare-fun m!700063 () Bool)

(assert (=> b!750575 m!700063))

(check-sat (not b!750586) (not b!750592) (not b!750575) (not start!65634) (not b!750578) (not b!750596) (not b!750580) (not b!750576) (not b!750584) (not b!750591) (not b!750577) (not b!750593) (not b!750581) (not b!750585) (not b!750588))
(check-sat)
