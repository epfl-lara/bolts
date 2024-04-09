; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!66482 () Bool)

(assert start!66482)

(declare-datatypes ((array!42214 0))(
  ( (array!42215 (arr!20208 (Array (_ BitVec 32) (_ BitVec 64))) (size!20629 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42214)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!765634 () Bool)

(declare-datatypes ((SeekEntryResult!7815 0))(
  ( (MissingZero!7815 (index!33627 (_ BitVec 32))) (Found!7815 (index!33628 (_ BitVec 32))) (Intermediate!7815 (undefined!8627 Bool) (index!33629 (_ BitVec 32)) (x!64566 (_ BitVec 32))) (Undefined!7815) (MissingVacant!7815 (index!33630 (_ BitVec 32))) )
))
(declare-fun lt!340608 () SeekEntryResult!7815)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun e!426418 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42214 (_ BitVec 32)) SeekEntryResult!7815)

(assert (=> b!765634 (= e!426418 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20208 a!3186) j!159) a!3186 mask!3328) lt!340608))))

(declare-fun b!765635 () Bool)

(declare-fun res!518007 () Bool)

(declare-fun e!426422 () Bool)

(assert (=> b!765635 (=> (not res!518007) (not e!426422))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!765635 (= res!518007 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20208 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!765636 () Bool)

(declare-fun e!426417 () Bool)

(declare-fun e!426415 () Bool)

(assert (=> b!765636 (= e!426417 e!426415)))

(declare-fun res!518008 () Bool)

(assert (=> b!765636 (=> (not res!518008) (not e!426415))))

(declare-fun lt!340612 () SeekEntryResult!7815)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42214 (_ BitVec 32)) SeekEntryResult!7815)

(assert (=> b!765636 (= res!518008 (= (seekEntryOrOpen!0 (select (arr!20208 a!3186) j!159) a!3186 mask!3328) lt!340612))))

(assert (=> b!765636 (= lt!340612 (Found!7815 j!159))))

(declare-fun b!765637 () Bool)

(declare-fun res!518009 () Bool)

(declare-fun e!426419 () Bool)

(assert (=> b!765637 (=> (not res!518009) (not e!426419))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!765637 (= res!518009 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20629 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20629 a!3186))))))

(declare-fun res!518016 () Bool)

(declare-fun e!426416 () Bool)

(assert (=> start!66482 (=> (not res!518016) (not e!426416))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66482 (= res!518016 (validMask!0 mask!3328))))

(assert (=> start!66482 e!426416))

(assert (=> start!66482 true))

(declare-fun array_inv!15982 (array!42214) Bool)

(assert (=> start!66482 (array_inv!15982 a!3186)))

(declare-fun b!765638 () Bool)

(declare-fun res!518014 () Bool)

(assert (=> b!765638 (=> (not res!518014) (not e!426422))))

(assert (=> b!765638 (= res!518014 e!426418)))

(declare-fun c!84204 () Bool)

(assert (=> b!765638 (= c!84204 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!765639 () Bool)

(assert (=> b!765639 (= e!426416 e!426419)))

(declare-fun res!518019 () Bool)

(assert (=> b!765639 (=> (not res!518019) (not e!426419))))

(declare-fun lt!340610 () SeekEntryResult!7815)

(assert (=> b!765639 (= res!518019 (or (= lt!340610 (MissingZero!7815 i!1173)) (= lt!340610 (MissingVacant!7815 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!765639 (= lt!340610 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!765640 () Bool)

(assert (=> b!765640 (= e!426419 e!426422)))

(declare-fun res!518013 () Bool)

(assert (=> b!765640 (=> (not res!518013) (not e!426422))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!765640 (= res!518013 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20208 a!3186) j!159) mask!3328) (select (arr!20208 a!3186) j!159) a!3186 mask!3328) lt!340608))))

(assert (=> b!765640 (= lt!340608 (Intermediate!7815 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!765641 () Bool)

(declare-fun res!518018 () Bool)

(assert (=> b!765641 (=> (not res!518018) (not e!426416))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!765641 (= res!518018 (validKeyInArray!0 k!2102))))

(declare-fun b!765642 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42214 (_ BitVec 32)) SeekEntryResult!7815)

(assert (=> b!765642 (= e!426415 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20208 a!3186) j!159) a!3186 mask!3328) lt!340612))))

(declare-fun b!765643 () Bool)

(declare-fun res!518017 () Bool)

(assert (=> b!765643 (=> (not res!518017) (not e!426416))))

(assert (=> b!765643 (= res!518017 (and (= (size!20629 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20629 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20629 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!765644 () Bool)

(declare-fun res!518005 () Bool)

(assert (=> b!765644 (=> (not res!518005) (not e!426416))))

(declare-fun arrayContainsKey!0 (array!42214 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!765644 (= res!518005 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!765645 () Bool)

(declare-fun res!518012 () Bool)

(assert (=> b!765645 (=> (not res!518012) (not e!426419))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42214 (_ BitVec 32)) Bool)

(assert (=> b!765645 (= res!518012 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!765646 () Bool)

(declare-fun e!426421 () Bool)

(assert (=> b!765646 (= e!426421 (not true))))

(assert (=> b!765646 e!426417))

(declare-fun res!518010 () Bool)

(assert (=> b!765646 (=> (not res!518010) (not e!426417))))

(assert (=> b!765646 (= res!518010 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26356 0))(
  ( (Unit!26357) )
))
(declare-fun lt!340607 () Unit!26356)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42214 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26356)

(assert (=> b!765646 (= lt!340607 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!765647 () Bool)

(assert (=> b!765647 (= e!426418 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20208 a!3186) j!159) a!3186 mask!3328) (Found!7815 j!159)))))

(declare-fun b!765648 () Bool)

(assert (=> b!765648 (= e!426422 e!426421)))

(declare-fun res!518015 () Bool)

(assert (=> b!765648 (=> (not res!518015) (not e!426421))))

(declare-fun lt!340609 () array!42214)

(declare-fun lt!340611 () (_ BitVec 64))

(assert (=> b!765648 (= res!518015 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!340611 mask!3328) lt!340611 lt!340609 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!340611 lt!340609 mask!3328)))))

(assert (=> b!765648 (= lt!340611 (select (store (arr!20208 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!765648 (= lt!340609 (array!42215 (store (arr!20208 a!3186) i!1173 k!2102) (size!20629 a!3186)))))

(declare-fun b!765649 () Bool)

(declare-fun res!518011 () Bool)

(assert (=> b!765649 (=> (not res!518011) (not e!426416))))

(assert (=> b!765649 (= res!518011 (validKeyInArray!0 (select (arr!20208 a!3186) j!159)))))

(declare-fun b!765650 () Bool)

(declare-fun res!518006 () Bool)

(assert (=> b!765650 (=> (not res!518006) (not e!426419))))

(declare-datatypes ((List!14263 0))(
  ( (Nil!14260) (Cons!14259 (h!15349 (_ BitVec 64)) (t!20586 List!14263)) )
))
(declare-fun arrayNoDuplicates!0 (array!42214 (_ BitVec 32) List!14263) Bool)

(assert (=> b!765650 (= res!518006 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14260))))

(assert (= (and start!66482 res!518016) b!765643))

(assert (= (and b!765643 res!518017) b!765649))

(assert (= (and b!765649 res!518011) b!765641))

(assert (= (and b!765641 res!518018) b!765644))

(assert (= (and b!765644 res!518005) b!765639))

(assert (= (and b!765639 res!518019) b!765645))

(assert (= (and b!765645 res!518012) b!765650))

(assert (= (and b!765650 res!518006) b!765637))

(assert (= (and b!765637 res!518009) b!765640))

(assert (= (and b!765640 res!518013) b!765635))

(assert (= (and b!765635 res!518007) b!765638))

(assert (= (and b!765638 c!84204) b!765634))

(assert (= (and b!765638 (not c!84204)) b!765647))

(assert (= (and b!765638 res!518014) b!765648))

(assert (= (and b!765648 res!518015) b!765646))

(assert (= (and b!765646 res!518010) b!765636))

(assert (= (and b!765636 res!518008) b!765642))

(declare-fun m!711773 () Bool)

(assert (=> b!765646 m!711773))

(declare-fun m!711775 () Bool)

(assert (=> b!765646 m!711775))

(declare-fun m!711777 () Bool)

(assert (=> b!765650 m!711777))

(declare-fun m!711779 () Bool)

(assert (=> b!765639 m!711779))

(declare-fun m!711781 () Bool)

(assert (=> b!765635 m!711781))

(declare-fun m!711783 () Bool)

(assert (=> b!765649 m!711783))

(assert (=> b!765649 m!711783))

(declare-fun m!711785 () Bool)

(assert (=> b!765649 m!711785))

(assert (=> b!765640 m!711783))

(assert (=> b!765640 m!711783))

(declare-fun m!711787 () Bool)

(assert (=> b!765640 m!711787))

(assert (=> b!765640 m!711787))

(assert (=> b!765640 m!711783))

(declare-fun m!711789 () Bool)

(assert (=> b!765640 m!711789))

(assert (=> b!765647 m!711783))

(assert (=> b!765647 m!711783))

(declare-fun m!711791 () Bool)

(assert (=> b!765647 m!711791))

(declare-fun m!711793 () Bool)

(assert (=> b!765644 m!711793))

(assert (=> b!765634 m!711783))

(assert (=> b!765634 m!711783))

(declare-fun m!711795 () Bool)

(assert (=> b!765634 m!711795))

(declare-fun m!711797 () Bool)

(assert (=> b!765641 m!711797))

(declare-fun m!711799 () Bool)

(assert (=> start!66482 m!711799))

(declare-fun m!711801 () Bool)

(assert (=> start!66482 m!711801))

(declare-fun m!711803 () Bool)

(assert (=> b!765648 m!711803))

(declare-fun m!711805 () Bool)

(assert (=> b!765648 m!711805))

(declare-fun m!711807 () Bool)

(assert (=> b!765648 m!711807))

(assert (=> b!765648 m!711805))

(declare-fun m!711809 () Bool)

(assert (=> b!765648 m!711809))

(declare-fun m!711811 () Bool)

(assert (=> b!765648 m!711811))

(assert (=> b!765642 m!711783))

(assert (=> b!765642 m!711783))

(declare-fun m!711813 () Bool)

(assert (=> b!765642 m!711813))

(assert (=> b!765636 m!711783))

(assert (=> b!765636 m!711783))

(declare-fun m!711815 () Bool)

(assert (=> b!765636 m!711815))

(declare-fun m!711817 () Bool)

(assert (=> b!765645 m!711817))

(push 1)

