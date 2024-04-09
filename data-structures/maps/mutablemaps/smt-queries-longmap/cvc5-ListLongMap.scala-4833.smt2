; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!66488 () Bool)

(assert start!66488)

(declare-fun b!765787 () Bool)

(declare-fun res!518149 () Bool)

(declare-fun e!426491 () Bool)

(assert (=> b!765787 (=> (not res!518149) (not e!426491))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!42220 0))(
  ( (array!42221 (arr!20211 (Array (_ BitVec 32) (_ BitVec 64))) (size!20632 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42220)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!765787 (= res!518149 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20211 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((SeekEntryResult!7818 0))(
  ( (MissingZero!7818 (index!33639 (_ BitVec 32))) (Found!7818 (index!33640 (_ BitVec 32))) (Intermediate!7818 (undefined!8630 Bool) (index!33641 (_ BitVec 32)) (x!64577 (_ BitVec 32))) (Undefined!7818) (MissingVacant!7818 (index!33642 (_ BitVec 32))) )
))
(declare-fun lt!340665 () SeekEntryResult!7818)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun b!765788 () Bool)

(declare-fun e!426488 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42220 (_ BitVec 32)) SeekEntryResult!7818)

(assert (=> b!765788 (= e!426488 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20211 a!3186) j!159) a!3186 mask!3328) lt!340665))))

(declare-fun b!765789 () Bool)

(declare-fun e!426492 () Bool)

(assert (=> b!765789 (= e!426491 e!426492)))

(declare-fun res!518140 () Bool)

(assert (=> b!765789 (=> (not res!518140) (not e!426492))))

(declare-fun lt!340661 () (_ BitVec 64))

(declare-fun lt!340662 () array!42220)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!765789 (= res!518140 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!340661 mask!3328) lt!340661 lt!340662 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!340661 lt!340662 mask!3328)))))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!765789 (= lt!340661 (select (store (arr!20211 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!765789 (= lt!340662 (array!42221 (store (arr!20211 a!3186) i!1173 k!2102) (size!20632 a!3186)))))

(declare-fun b!765790 () Bool)

(declare-fun res!518154 () Bool)

(declare-fun e!426493 () Bool)

(assert (=> b!765790 (=> (not res!518154) (not e!426493))))

(assert (=> b!765790 (= res!518154 (and (= (size!20632 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20632 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20632 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!765791 () Bool)

(declare-fun e!426490 () Bool)

(declare-fun e!426489 () Bool)

(assert (=> b!765791 (= e!426490 e!426489)))

(declare-fun res!518145 () Bool)

(assert (=> b!765791 (=> (not res!518145) (not e!426489))))

(declare-fun lt!340664 () SeekEntryResult!7818)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42220 (_ BitVec 32)) SeekEntryResult!7818)

(assert (=> b!765791 (= res!518145 (= (seekEntryOrOpen!0 (select (arr!20211 a!3186) j!159) a!3186 mask!3328) lt!340664))))

(assert (=> b!765791 (= lt!340664 (Found!7818 j!159))))

(declare-fun b!765792 () Bool)

(declare-fun res!518151 () Bool)

(assert (=> b!765792 (=> (not res!518151) (not e!426491))))

(assert (=> b!765792 (= res!518151 e!426488)))

(declare-fun c!84213 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!765792 (= c!84213 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!765793 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42220 (_ BitVec 32)) SeekEntryResult!7818)

(assert (=> b!765793 (= e!426488 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20211 a!3186) j!159) a!3186 mask!3328) (Found!7818 j!159)))))

(declare-fun res!518152 () Bool)

(assert (=> start!66488 (=> (not res!518152) (not e!426493))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66488 (= res!518152 (validMask!0 mask!3328))))

(assert (=> start!66488 e!426493))

(assert (=> start!66488 true))

(declare-fun array_inv!15985 (array!42220) Bool)

(assert (=> start!66488 (array_inv!15985 a!3186)))

(declare-fun b!765794 () Bool)

(declare-fun res!518150 () Bool)

(declare-fun e!426494 () Bool)

(assert (=> b!765794 (=> (not res!518150) (not e!426494))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42220 (_ BitVec 32)) Bool)

(assert (=> b!765794 (= res!518150 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!765795 () Bool)

(assert (=> b!765795 (= e!426493 e!426494)))

(declare-fun res!518144 () Bool)

(assert (=> b!765795 (=> (not res!518144) (not e!426494))))

(declare-fun lt!340663 () SeekEntryResult!7818)

(assert (=> b!765795 (= res!518144 (or (= lt!340663 (MissingZero!7818 i!1173)) (= lt!340663 (MissingVacant!7818 i!1173))))))

(assert (=> b!765795 (= lt!340663 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!765796 () Bool)

(assert (=> b!765796 (= e!426492 (not true))))

(assert (=> b!765796 e!426490))

(declare-fun res!518143 () Bool)

(assert (=> b!765796 (=> (not res!518143) (not e!426490))))

(assert (=> b!765796 (= res!518143 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26362 0))(
  ( (Unit!26363) )
))
(declare-fun lt!340666 () Unit!26362)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42220 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26362)

(assert (=> b!765796 (= lt!340666 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!765797 () Bool)

(declare-fun res!518148 () Bool)

(assert (=> b!765797 (=> (not res!518148) (not e!426494))))

(declare-datatypes ((List!14266 0))(
  ( (Nil!14263) (Cons!14262 (h!15352 (_ BitVec 64)) (t!20589 List!14266)) )
))
(declare-fun arrayNoDuplicates!0 (array!42220 (_ BitVec 32) List!14266) Bool)

(assert (=> b!765797 (= res!518148 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14263))))

(declare-fun b!765798 () Bool)

(declare-fun res!518153 () Bool)

(assert (=> b!765798 (=> (not res!518153) (not e!426494))))

(assert (=> b!765798 (= res!518153 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20632 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20632 a!3186))))))

(declare-fun b!765799 () Bool)

(declare-fun res!518147 () Bool)

(assert (=> b!765799 (=> (not res!518147) (not e!426493))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!765799 (= res!518147 (validKeyInArray!0 (select (arr!20211 a!3186) j!159)))))

(declare-fun b!765800 () Bool)

(declare-fun res!518142 () Bool)

(assert (=> b!765800 (=> (not res!518142) (not e!426493))))

(declare-fun arrayContainsKey!0 (array!42220 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!765800 (= res!518142 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!765801 () Bool)

(declare-fun res!518141 () Bool)

(assert (=> b!765801 (=> (not res!518141) (not e!426493))))

(assert (=> b!765801 (= res!518141 (validKeyInArray!0 k!2102))))

(declare-fun b!765802 () Bool)

(assert (=> b!765802 (= e!426494 e!426491)))

(declare-fun res!518146 () Bool)

(assert (=> b!765802 (=> (not res!518146) (not e!426491))))

(assert (=> b!765802 (= res!518146 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20211 a!3186) j!159) mask!3328) (select (arr!20211 a!3186) j!159) a!3186 mask!3328) lt!340665))))

(assert (=> b!765802 (= lt!340665 (Intermediate!7818 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!765803 () Bool)

(assert (=> b!765803 (= e!426489 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20211 a!3186) j!159) a!3186 mask!3328) lt!340664))))

(assert (= (and start!66488 res!518152) b!765790))

(assert (= (and b!765790 res!518154) b!765799))

(assert (= (and b!765799 res!518147) b!765801))

(assert (= (and b!765801 res!518141) b!765800))

(assert (= (and b!765800 res!518142) b!765795))

(assert (= (and b!765795 res!518144) b!765794))

(assert (= (and b!765794 res!518150) b!765797))

(assert (= (and b!765797 res!518148) b!765798))

(assert (= (and b!765798 res!518153) b!765802))

(assert (= (and b!765802 res!518146) b!765787))

(assert (= (and b!765787 res!518149) b!765792))

(assert (= (and b!765792 c!84213) b!765788))

(assert (= (and b!765792 (not c!84213)) b!765793))

(assert (= (and b!765792 res!518151) b!765789))

(assert (= (and b!765789 res!518140) b!765796))

(assert (= (and b!765796 res!518143) b!765791))

(assert (= (and b!765791 res!518145) b!765803))

(declare-fun m!711911 () Bool)

(assert (=> b!765796 m!711911))

(declare-fun m!711913 () Bool)

(assert (=> b!765796 m!711913))

(declare-fun m!711915 () Bool)

(assert (=> b!765788 m!711915))

(assert (=> b!765788 m!711915))

(declare-fun m!711917 () Bool)

(assert (=> b!765788 m!711917))

(declare-fun m!711919 () Bool)

(assert (=> start!66488 m!711919))

(declare-fun m!711921 () Bool)

(assert (=> start!66488 m!711921))

(declare-fun m!711923 () Bool)

(assert (=> b!765789 m!711923))

(declare-fun m!711925 () Bool)

(assert (=> b!765789 m!711925))

(declare-fun m!711927 () Bool)

(assert (=> b!765789 m!711927))

(declare-fun m!711929 () Bool)

(assert (=> b!765789 m!711929))

(assert (=> b!765789 m!711927))

(declare-fun m!711931 () Bool)

(assert (=> b!765789 m!711931))

(assert (=> b!765803 m!711915))

(assert (=> b!765803 m!711915))

(declare-fun m!711933 () Bool)

(assert (=> b!765803 m!711933))

(declare-fun m!711935 () Bool)

(assert (=> b!765797 m!711935))

(declare-fun m!711937 () Bool)

(assert (=> b!765800 m!711937))

(declare-fun m!711939 () Bool)

(assert (=> b!765795 m!711939))

(declare-fun m!711941 () Bool)

(assert (=> b!765794 m!711941))

(assert (=> b!765791 m!711915))

(assert (=> b!765791 m!711915))

(declare-fun m!711943 () Bool)

(assert (=> b!765791 m!711943))

(assert (=> b!765799 m!711915))

(assert (=> b!765799 m!711915))

(declare-fun m!711945 () Bool)

(assert (=> b!765799 m!711945))

(declare-fun m!711947 () Bool)

(assert (=> b!765787 m!711947))

(assert (=> b!765802 m!711915))

(assert (=> b!765802 m!711915))

(declare-fun m!711949 () Bool)

(assert (=> b!765802 m!711949))

(assert (=> b!765802 m!711949))

(assert (=> b!765802 m!711915))

(declare-fun m!711951 () Bool)

(assert (=> b!765802 m!711951))

(declare-fun m!711953 () Bool)

(assert (=> b!765801 m!711953))

(assert (=> b!765793 m!711915))

(assert (=> b!765793 m!711915))

(declare-fun m!711955 () Bool)

(assert (=> b!765793 m!711955))

(push 1)

