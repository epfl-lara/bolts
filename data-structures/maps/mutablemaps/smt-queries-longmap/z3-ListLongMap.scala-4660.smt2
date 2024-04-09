; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64752 () Bool)

(assert start!64752)

(declare-fun b!730446 () Bool)

(declare-fun res!490867 () Bool)

(declare-fun e!408789 () Bool)

(assert (=> b!730446 (=> (not res!490867) (not e!408789))))

(declare-datatypes ((array!41154 0))(
  ( (array!41155 (arr!19693 (Array (_ BitVec 32) (_ BitVec 64))) (size!20114 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41154)

(declare-datatypes ((List!13748 0))(
  ( (Nil!13745) (Cons!13744 (h!14804 (_ BitVec 64)) (t!20071 List!13748)) )
))
(declare-fun arrayNoDuplicates!0 (array!41154 (_ BitVec 32) List!13748) Bool)

(assert (=> b!730446 (= res!490867 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13745))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun b!730447 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun e!408787 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7300 0))(
  ( (MissingZero!7300 (index!31567 (_ BitVec 32))) (Found!7300 (index!31568 (_ BitVec 32))) (Intermediate!7300 (undefined!8112 Bool) (index!31569 (_ BitVec 32)) (x!62571 (_ BitVec 32))) (Undefined!7300) (MissingVacant!7300 (index!31570 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41154 (_ BitVec 32)) SeekEntryResult!7300)

(assert (=> b!730447 (= e!408787 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19693 a!3186) j!159) a!3186 mask!3328) (Found!7300 j!159)))))

(declare-fun b!730448 () Bool)

(declare-fun e!408792 () Bool)

(assert (=> b!730448 (= e!408792 true)))

(declare-fun lt!323691 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!730448 (= lt!323691 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!730449 () Bool)

(declare-fun e!408788 () Bool)

(assert (=> b!730449 (= e!408789 e!408788)))

(declare-fun res!490868 () Bool)

(assert (=> b!730449 (=> (not res!490868) (not e!408788))))

(declare-fun lt!323696 () SeekEntryResult!7300)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41154 (_ BitVec 32)) SeekEntryResult!7300)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!730449 (= res!490868 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19693 a!3186) j!159) mask!3328) (select (arr!19693 a!3186) j!159) a!3186 mask!3328) lt!323696))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!730449 (= lt!323696 (Intermediate!7300 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!730450 () Bool)

(assert (=> b!730450 (= e!408787 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19693 a!3186) j!159) a!3186 mask!3328) lt!323696))))

(declare-fun b!730451 () Bool)

(declare-fun res!490872 () Bool)

(assert (=> b!730451 (=> (not res!490872) (not e!408789))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41154 (_ BitVec 32)) Bool)

(assert (=> b!730451 (= res!490872 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!730452 () Bool)

(declare-fun e!408785 () Bool)

(assert (=> b!730452 (= e!408785 e!408789)))

(declare-fun res!490865 () Bool)

(assert (=> b!730452 (=> (not res!490865) (not e!408789))))

(declare-fun lt!323697 () SeekEntryResult!7300)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!730452 (= res!490865 (or (= lt!323697 (MissingZero!7300 i!1173)) (= lt!323697 (MissingVacant!7300 i!1173))))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41154 (_ BitVec 32)) SeekEntryResult!7300)

(assert (=> b!730452 (= lt!323697 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!730453 () Bool)

(declare-fun res!490874 () Bool)

(assert (=> b!730453 (=> (not res!490874) (not e!408789))))

(assert (=> b!730453 (= res!490874 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20114 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20114 a!3186))))))

(declare-fun b!730454 () Bool)

(declare-fun e!408786 () Bool)

(assert (=> b!730454 (= e!408786 (not e!408792))))

(declare-fun res!490873 () Bool)

(assert (=> b!730454 (=> res!490873 e!408792)))

(declare-fun lt!323692 () SeekEntryResult!7300)

(get-info :version)

(assert (=> b!730454 (= res!490873 (or (not ((_ is Intermediate!7300) lt!323692)) (bvsge x!1131 (x!62571 lt!323692))))))

(declare-fun e!408790 () Bool)

(assert (=> b!730454 e!408790))

(declare-fun res!490871 () Bool)

(assert (=> b!730454 (=> (not res!490871) (not e!408790))))

(assert (=> b!730454 (= res!490871 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24918 0))(
  ( (Unit!24919) )
))
(declare-fun lt!323695 () Unit!24918)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41154 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24918)

(assert (=> b!730454 (= lt!323695 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!730455 () Bool)

(declare-fun res!490875 () Bool)

(assert (=> b!730455 (=> (not res!490875) (not e!408785))))

(assert (=> b!730455 (= res!490875 (and (= (size!20114 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20114 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20114 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!730456 () Bool)

(declare-fun res!490877 () Bool)

(assert (=> b!730456 (=> (not res!490877) (not e!408788))))

(assert (=> b!730456 (= res!490877 e!408787)))

(declare-fun c!80166 () Bool)

(assert (=> b!730456 (= c!80166 (bvsle x!1131 resIntermediateX!5))))

(declare-fun e!408791 () Bool)

(declare-fun lt!323693 () SeekEntryResult!7300)

(declare-fun b!730457 () Bool)

(assert (=> b!730457 (= e!408791 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19693 a!3186) j!159) a!3186 mask!3328) lt!323693))))

(declare-fun b!730458 () Bool)

(declare-fun res!490876 () Bool)

(assert (=> b!730458 (=> (not res!490876) (not e!408788))))

(assert (=> b!730458 (= res!490876 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19693 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!730459 () Bool)

(declare-fun res!490870 () Bool)

(assert (=> b!730459 (=> (not res!490870) (not e!408785))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!730459 (= res!490870 (validKeyInArray!0 (select (arr!19693 a!3186) j!159)))))

(declare-fun b!730460 () Bool)

(assert (=> b!730460 (= e!408790 e!408791)))

(declare-fun res!490863 () Bool)

(assert (=> b!730460 (=> (not res!490863) (not e!408791))))

(assert (=> b!730460 (= res!490863 (= (seekEntryOrOpen!0 (select (arr!19693 a!3186) j!159) a!3186 mask!3328) lt!323693))))

(assert (=> b!730460 (= lt!323693 (Found!7300 j!159))))

(declare-fun res!490864 () Bool)

(assert (=> start!64752 (=> (not res!490864) (not e!408785))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64752 (= res!490864 (validMask!0 mask!3328))))

(assert (=> start!64752 e!408785))

(assert (=> start!64752 true))

(declare-fun array_inv!15467 (array!41154) Bool)

(assert (=> start!64752 (array_inv!15467 a!3186)))

(declare-fun b!730461 () Bool)

(declare-fun res!490878 () Bool)

(assert (=> b!730461 (=> (not res!490878) (not e!408785))))

(declare-fun arrayContainsKey!0 (array!41154 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!730461 (= res!490878 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!730462 () Bool)

(assert (=> b!730462 (= e!408788 e!408786)))

(declare-fun res!490866 () Bool)

(assert (=> b!730462 (=> (not res!490866) (not e!408786))))

(declare-fun lt!323699 () SeekEntryResult!7300)

(assert (=> b!730462 (= res!490866 (= lt!323699 lt!323692))))

(declare-fun lt!323694 () (_ BitVec 64))

(declare-fun lt!323698 () array!41154)

(assert (=> b!730462 (= lt!323692 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!323694 lt!323698 mask!3328))))

(assert (=> b!730462 (= lt!323699 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!323694 mask!3328) lt!323694 lt!323698 mask!3328))))

(assert (=> b!730462 (= lt!323694 (select (store (arr!19693 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!730462 (= lt!323698 (array!41155 (store (arr!19693 a!3186) i!1173 k0!2102) (size!20114 a!3186)))))

(declare-fun b!730463 () Bool)

(declare-fun res!490869 () Bool)

(assert (=> b!730463 (=> (not res!490869) (not e!408785))))

(assert (=> b!730463 (= res!490869 (validKeyInArray!0 k0!2102))))

(assert (= (and start!64752 res!490864) b!730455))

(assert (= (and b!730455 res!490875) b!730459))

(assert (= (and b!730459 res!490870) b!730463))

(assert (= (and b!730463 res!490869) b!730461))

(assert (= (and b!730461 res!490878) b!730452))

(assert (= (and b!730452 res!490865) b!730451))

(assert (= (and b!730451 res!490872) b!730446))

(assert (= (and b!730446 res!490867) b!730453))

(assert (= (and b!730453 res!490874) b!730449))

(assert (= (and b!730449 res!490868) b!730458))

(assert (= (and b!730458 res!490876) b!730456))

(assert (= (and b!730456 c!80166) b!730450))

(assert (= (and b!730456 (not c!80166)) b!730447))

(assert (= (and b!730456 res!490877) b!730462))

(assert (= (and b!730462 res!490866) b!730454))

(assert (= (and b!730454 res!490871) b!730460))

(assert (= (and b!730460 res!490863) b!730457))

(assert (= (and b!730454 (not res!490873)) b!730448))

(declare-fun m!684061 () Bool)

(assert (=> b!730450 m!684061))

(assert (=> b!730450 m!684061))

(declare-fun m!684063 () Bool)

(assert (=> b!730450 m!684063))

(declare-fun m!684065 () Bool)

(assert (=> b!730446 m!684065))

(declare-fun m!684067 () Bool)

(assert (=> b!730458 m!684067))

(assert (=> b!730459 m!684061))

(assert (=> b!730459 m!684061))

(declare-fun m!684069 () Bool)

(assert (=> b!730459 m!684069))

(declare-fun m!684071 () Bool)

(assert (=> b!730448 m!684071))

(assert (=> b!730447 m!684061))

(assert (=> b!730447 m!684061))

(declare-fun m!684073 () Bool)

(assert (=> b!730447 m!684073))

(declare-fun m!684075 () Bool)

(assert (=> b!730461 m!684075))

(declare-fun m!684077 () Bool)

(assert (=> b!730452 m!684077))

(declare-fun m!684079 () Bool)

(assert (=> b!730462 m!684079))

(declare-fun m!684081 () Bool)

(assert (=> b!730462 m!684081))

(declare-fun m!684083 () Bool)

(assert (=> b!730462 m!684083))

(declare-fun m!684085 () Bool)

(assert (=> b!730462 m!684085))

(assert (=> b!730462 m!684081))

(declare-fun m!684087 () Bool)

(assert (=> b!730462 m!684087))

(assert (=> b!730457 m!684061))

(assert (=> b!730457 m!684061))

(declare-fun m!684089 () Bool)

(assert (=> b!730457 m!684089))

(assert (=> b!730449 m!684061))

(assert (=> b!730449 m!684061))

(declare-fun m!684091 () Bool)

(assert (=> b!730449 m!684091))

(assert (=> b!730449 m!684091))

(assert (=> b!730449 m!684061))

(declare-fun m!684093 () Bool)

(assert (=> b!730449 m!684093))

(declare-fun m!684095 () Bool)

(assert (=> b!730451 m!684095))

(declare-fun m!684097 () Bool)

(assert (=> b!730454 m!684097))

(declare-fun m!684099 () Bool)

(assert (=> b!730454 m!684099))

(declare-fun m!684101 () Bool)

(assert (=> start!64752 m!684101))

(declare-fun m!684103 () Bool)

(assert (=> start!64752 m!684103))

(assert (=> b!730460 m!684061))

(assert (=> b!730460 m!684061))

(declare-fun m!684105 () Bool)

(assert (=> b!730460 m!684105))

(declare-fun m!684107 () Bool)

(assert (=> b!730463 m!684107))

(check-sat (not b!730447) (not b!730452) (not b!730463) (not b!730460) (not b!730457) (not b!730448) (not start!64752) (not b!730449) (not b!730459) (not b!730451) (not b!730461) (not b!730446) (not b!730462) (not b!730454) (not b!730450))
(check-sat)
