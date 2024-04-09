; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65186 () Bool)

(assert start!65186)

(declare-fun b!736698 () Bool)

(declare-fun e!412130 () Bool)

(declare-fun e!412126 () Bool)

(assert (=> b!736698 (= e!412130 e!412126)))

(declare-fun res!495245 () Bool)

(assert (=> b!736698 (=> (not res!495245) (not e!412126))))

(declare-datatypes ((array!41312 0))(
  ( (array!41313 (arr!19766 (Array (_ BitVec 32) (_ BitVec 64))) (size!20187 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41312)

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7373 0))(
  ( (MissingZero!7373 (index!31859 (_ BitVec 32))) (Found!7373 (index!31860 (_ BitVec 32))) (Intermediate!7373 (undefined!8185 Bool) (index!31861 (_ BitVec 32)) (x!62884 (_ BitVec 32))) (Undefined!7373) (MissingVacant!7373 (index!31862 (_ BitVec 32))) )
))
(declare-fun lt!326794 () SeekEntryResult!7373)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41312 (_ BitVec 32)) SeekEntryResult!7373)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!736698 (= res!495245 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19766 a!3186) j!159) mask!3328) (select (arr!19766 a!3186) j!159) a!3186 mask!3328) lt!326794))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!736698 (= lt!326794 (Intermediate!7373 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!736699 () Bool)

(declare-fun res!495242 () Bool)

(declare-fun e!412128 () Bool)

(assert (=> b!736699 (=> (not res!495242) (not e!412128))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!736699 (= res!495242 (validKeyInArray!0 k!2102))))

(declare-fun res!495235 () Bool)

(assert (=> start!65186 (=> (not res!495235) (not e!412128))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65186 (= res!495235 (validMask!0 mask!3328))))

(assert (=> start!65186 e!412128))

(assert (=> start!65186 true))

(declare-fun array_inv!15540 (array!41312) Bool)

(assert (=> start!65186 (array_inv!15540 a!3186)))

(declare-fun b!736700 () Bool)

(declare-fun e!412122 () Bool)

(declare-fun lt!326791 () SeekEntryResult!7373)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41312 (_ BitVec 32)) SeekEntryResult!7373)

(assert (=> b!736700 (= e!412122 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19766 a!3186) j!159) a!3186 mask!3328) lt!326791))))

(declare-fun b!736701 () Bool)

(declare-fun e!412121 () Bool)

(declare-fun e!412120 () Bool)

(assert (=> b!736701 (= e!412121 e!412120)))

(declare-fun res!495241 () Bool)

(assert (=> b!736701 (=> res!495241 e!412120)))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun lt!326795 () (_ BitVec 32))

(assert (=> b!736701 (= res!495241 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000) (bvslt lt!326795 #b00000000000000000000000000000000) (bvsge lt!326795 (size!20187 a!3186))))))

(declare-datatypes ((Unit!25110 0))(
  ( (Unit!25111) )
))
(declare-fun lt!326790 () Unit!25110)

(declare-fun e!412129 () Unit!25110)

(assert (=> b!736701 (= lt!326790 e!412129)))

(declare-fun c!81117 () Bool)

(declare-fun lt!326789 () Bool)

(assert (=> b!736701 (= c!81117 lt!326789)))

(assert (=> b!736701 (= lt!326789 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!736701 (= lt!326795 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!736702 () Bool)

(assert (=> b!736702 (= e!412120 true)))

(declare-fun lt!326785 () array!41312)

(declare-fun lt!326792 () (_ BitVec 64))

(declare-fun lt!326786 () SeekEntryResult!7373)

(assert (=> b!736702 (= lt!326786 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326795 lt!326792 lt!326785 mask!3328))))

(declare-fun b!736703 () Bool)

(declare-fun res!495239 () Bool)

(assert (=> b!736703 (=> (not res!495239) (not e!412130))))

(declare-datatypes ((List!13821 0))(
  ( (Nil!13818) (Cons!13817 (h!14889 (_ BitVec 64)) (t!20144 List!13821)) )
))
(declare-fun arrayNoDuplicates!0 (array!41312 (_ BitVec 32) List!13821) Bool)

(assert (=> b!736703 (= res!495239 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13818))))

(declare-fun b!736704 () Bool)

(declare-fun e!412124 () Bool)

(assert (=> b!736704 (= e!412126 e!412124)))

(declare-fun res!495232 () Bool)

(assert (=> b!736704 (=> (not res!495232) (not e!412124))))

(declare-fun lt!326797 () SeekEntryResult!7373)

(declare-fun lt!326798 () SeekEntryResult!7373)

(assert (=> b!736704 (= res!495232 (= lt!326797 lt!326798))))

(assert (=> b!736704 (= lt!326798 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!326792 lt!326785 mask!3328))))

(assert (=> b!736704 (= lt!326797 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!326792 mask!3328) lt!326792 lt!326785 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!736704 (= lt!326792 (select (store (arr!19766 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!736704 (= lt!326785 (array!41313 (store (arr!19766 a!3186) i!1173 k!2102) (size!20187 a!3186)))))

(declare-fun b!736705 () Bool)

(declare-fun e!412125 () Bool)

(assert (=> b!736705 (= e!412125 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326795 (select (arr!19766 a!3186) j!159) a!3186 mask!3328) lt!326794)))))

(declare-fun b!736706 () Bool)

(declare-fun res!495234 () Bool)

(assert (=> b!736706 (=> (not res!495234) (not e!412126))))

(assert (=> b!736706 (= res!495234 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19766 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!736707 () Bool)

(assert (=> b!736707 (= e!412124 (not e!412121))))

(declare-fun res!495240 () Bool)

(assert (=> b!736707 (=> res!495240 e!412121)))

(assert (=> b!736707 (= res!495240 (or (not (is-Intermediate!7373 lt!326798)) (bvsge x!1131 (x!62884 lt!326798))))))

(declare-fun lt!326796 () SeekEntryResult!7373)

(assert (=> b!736707 (= lt!326796 (Found!7373 j!159))))

(declare-fun e!412123 () Bool)

(assert (=> b!736707 e!412123))

(declare-fun res!495230 () Bool)

(assert (=> b!736707 (=> (not res!495230) (not e!412123))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41312 (_ BitVec 32)) Bool)

(assert (=> b!736707 (= res!495230 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!326793 () Unit!25110)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41312 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25110)

(assert (=> b!736707 (= lt!326793 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!736708 () Bool)

(declare-fun Unit!25112 () Unit!25110)

(assert (=> b!736708 (= e!412129 Unit!25112)))

(assert (=> b!736708 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326795 (select (arr!19766 a!3186) j!159) a!3186 mask!3328) lt!326794)))

(declare-fun b!736709 () Bool)

(assert (=> b!736709 (= e!412128 e!412130)))

(declare-fun res!495238 () Bool)

(assert (=> b!736709 (=> (not res!495238) (not e!412130))))

(declare-fun lt!326788 () SeekEntryResult!7373)

(assert (=> b!736709 (= res!495238 (or (= lt!326788 (MissingZero!7373 i!1173)) (= lt!326788 (MissingVacant!7373 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41312 (_ BitVec 32)) SeekEntryResult!7373)

(assert (=> b!736709 (= lt!326788 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!736710 () Bool)

(assert (=> b!736710 (= e!412123 e!412122)))

(declare-fun res!495231 () Bool)

(assert (=> b!736710 (=> (not res!495231) (not e!412122))))

(assert (=> b!736710 (= res!495231 (= (seekEntryOrOpen!0 (select (arr!19766 a!3186) j!159) a!3186 mask!3328) lt!326791))))

(assert (=> b!736710 (= lt!326791 (Found!7373 j!159))))

(declare-fun b!736711 () Bool)

(assert (=> b!736711 (= e!412125 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326795 resIntermediateIndex!5 (select (arr!19766 a!3186) j!159) a!3186 mask!3328) lt!326796)))))

(declare-fun b!736712 () Bool)

(declare-fun res!495243 () Bool)

(assert (=> b!736712 (=> (not res!495243) (not e!412130))))

(assert (=> b!736712 (= res!495243 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!736713 () Bool)

(declare-fun Unit!25113 () Unit!25110)

(assert (=> b!736713 (= e!412129 Unit!25113)))

(declare-fun lt!326787 () SeekEntryResult!7373)

(assert (=> b!736713 (= lt!326787 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19766 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!736713 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326795 resIntermediateIndex!5 (select (arr!19766 a!3186) j!159) a!3186 mask!3328) lt!326796)))

(declare-fun b!736714 () Bool)

(declare-fun res!495229 () Bool)

(assert (=> b!736714 (=> (not res!495229) (not e!412128))))

(assert (=> b!736714 (= res!495229 (and (= (size!20187 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20187 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20187 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!736715 () Bool)

(declare-fun res!495233 () Bool)

(assert (=> b!736715 (=> (not res!495233) (not e!412130))))

(assert (=> b!736715 (= res!495233 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20187 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20187 a!3186))))))

(declare-fun e!412127 () Bool)

(declare-fun b!736716 () Bool)

(assert (=> b!736716 (= e!412127 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19766 a!3186) j!159) a!3186 mask!3328) (Found!7373 j!159)))))

(declare-fun b!736717 () Bool)

(assert (=> b!736717 (= e!412127 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19766 a!3186) j!159) a!3186 mask!3328) lt!326794))))

(declare-fun b!736718 () Bool)

(declare-fun res!495246 () Bool)

(assert (=> b!736718 (=> (not res!495246) (not e!412128))))

(declare-fun arrayContainsKey!0 (array!41312 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!736718 (= res!495246 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!736719 () Bool)

(declare-fun res!495236 () Bool)

(assert (=> b!736719 (=> (not res!495236) (not e!412126))))

(assert (=> b!736719 (= res!495236 e!412127)))

(declare-fun c!81115 () Bool)

(assert (=> b!736719 (= c!81115 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!736720 () Bool)

(declare-fun res!495244 () Bool)

(assert (=> b!736720 (=> (not res!495244) (not e!412128))))

(assert (=> b!736720 (= res!495244 (validKeyInArray!0 (select (arr!19766 a!3186) j!159)))))

(declare-fun b!736721 () Bool)

(declare-fun res!495237 () Bool)

(assert (=> b!736721 (=> res!495237 e!412120)))

(assert (=> b!736721 (= res!495237 e!412125)))

(declare-fun c!81116 () Bool)

(assert (=> b!736721 (= c!81116 lt!326789)))

(assert (= (and start!65186 res!495235) b!736714))

(assert (= (and b!736714 res!495229) b!736720))

(assert (= (and b!736720 res!495244) b!736699))

(assert (= (and b!736699 res!495242) b!736718))

(assert (= (and b!736718 res!495246) b!736709))

(assert (= (and b!736709 res!495238) b!736712))

(assert (= (and b!736712 res!495243) b!736703))

(assert (= (and b!736703 res!495239) b!736715))

(assert (= (and b!736715 res!495233) b!736698))

(assert (= (and b!736698 res!495245) b!736706))

(assert (= (and b!736706 res!495234) b!736719))

(assert (= (and b!736719 c!81115) b!736717))

(assert (= (and b!736719 (not c!81115)) b!736716))

(assert (= (and b!736719 res!495236) b!736704))

(assert (= (and b!736704 res!495232) b!736707))

(assert (= (and b!736707 res!495230) b!736710))

(assert (= (and b!736710 res!495231) b!736700))

(assert (= (and b!736707 (not res!495240)) b!736701))

(assert (= (and b!736701 c!81117) b!736708))

(assert (= (and b!736701 (not c!81117)) b!736713))

(assert (= (and b!736701 (not res!495241)) b!736721))

(assert (= (and b!736721 c!81116) b!736705))

(assert (= (and b!736721 (not c!81116)) b!736711))

(assert (= (and b!736721 (not res!495237)) b!736702))

(declare-fun m!688831 () Bool)

(assert (=> b!736705 m!688831))

(assert (=> b!736705 m!688831))

(declare-fun m!688833 () Bool)

(assert (=> b!736705 m!688833))

(declare-fun m!688835 () Bool)

(assert (=> b!736707 m!688835))

(declare-fun m!688837 () Bool)

(assert (=> b!736707 m!688837))

(assert (=> b!736717 m!688831))

(assert (=> b!736717 m!688831))

(declare-fun m!688839 () Bool)

(assert (=> b!736717 m!688839))

(declare-fun m!688841 () Bool)

(assert (=> b!736703 m!688841))

(assert (=> b!736708 m!688831))

(assert (=> b!736708 m!688831))

(assert (=> b!736708 m!688833))

(declare-fun m!688843 () Bool)

(assert (=> start!65186 m!688843))

(declare-fun m!688845 () Bool)

(assert (=> start!65186 m!688845))

(declare-fun m!688847 () Bool)

(assert (=> b!736709 m!688847))

(declare-fun m!688849 () Bool)

(assert (=> b!736699 m!688849))

(declare-fun m!688851 () Bool)

(assert (=> b!736704 m!688851))

(declare-fun m!688853 () Bool)

(assert (=> b!736704 m!688853))

(declare-fun m!688855 () Bool)

(assert (=> b!736704 m!688855))

(assert (=> b!736704 m!688853))

(declare-fun m!688857 () Bool)

(assert (=> b!736704 m!688857))

(declare-fun m!688859 () Bool)

(assert (=> b!736704 m!688859))

(declare-fun m!688861 () Bool)

(assert (=> b!736718 m!688861))

(assert (=> b!736711 m!688831))

(assert (=> b!736711 m!688831))

(declare-fun m!688863 () Bool)

(assert (=> b!736711 m!688863))

(assert (=> b!736710 m!688831))

(assert (=> b!736710 m!688831))

(declare-fun m!688865 () Bool)

(assert (=> b!736710 m!688865))

(assert (=> b!736700 m!688831))

(assert (=> b!736700 m!688831))

(declare-fun m!688867 () Bool)

(assert (=> b!736700 m!688867))

(assert (=> b!736698 m!688831))

(assert (=> b!736698 m!688831))

(declare-fun m!688869 () Bool)

(assert (=> b!736698 m!688869))

(assert (=> b!736698 m!688869))

(assert (=> b!736698 m!688831))

(declare-fun m!688871 () Bool)

(assert (=> b!736698 m!688871))

(declare-fun m!688873 () Bool)

(assert (=> b!736712 m!688873))

(assert (=> b!736713 m!688831))

(assert (=> b!736713 m!688831))

(declare-fun m!688875 () Bool)

(assert (=> b!736713 m!688875))

(assert (=> b!736713 m!688831))

(assert (=> b!736713 m!688863))

(declare-fun m!688877 () Bool)

(assert (=> b!736701 m!688877))

(assert (=> b!736716 m!688831))

(assert (=> b!736716 m!688831))

(assert (=> b!736716 m!688875))

(assert (=> b!736720 m!688831))

(assert (=> b!736720 m!688831))

(declare-fun m!688879 () Bool)

(assert (=> b!736720 m!688879))

(declare-fun m!688881 () Bool)

(assert (=> b!736702 m!688881))

(declare-fun m!688883 () Bool)

(assert (=> b!736706 m!688883))

(push 1)

