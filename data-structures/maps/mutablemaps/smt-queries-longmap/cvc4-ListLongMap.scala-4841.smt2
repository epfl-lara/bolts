; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!66684 () Bool)

(assert start!66684)

(declare-fun b!768124 () Bool)

(declare-fun res!519719 () Bool)

(declare-fun e!427758 () Bool)

(assert (=> b!768124 (=> (not res!519719) (not e!427758))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!42278 0))(
  ( (array!42279 (arr!20237 (Array (_ BitVec 32) (_ BitVec 64))) (size!20658 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42278)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!768124 (= res!519719 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20237 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!768125 () Bool)

(declare-fun res!519716 () Bool)

(declare-fun e!427756 () Bool)

(assert (=> b!768125 (=> (not res!519716) (not e!427756))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42278 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!768125 (= res!519716 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!768126 () Bool)

(declare-fun e!427762 () Bool)

(assert (=> b!768126 (= e!427756 e!427762)))

(declare-fun res!519705 () Bool)

(assert (=> b!768126 (=> (not res!519705) (not e!427762))))

(declare-datatypes ((SeekEntryResult!7844 0))(
  ( (MissingZero!7844 (index!33743 (_ BitVec 32))) (Found!7844 (index!33744 (_ BitVec 32))) (Intermediate!7844 (undefined!8656 Bool) (index!33745 (_ BitVec 32)) (x!64691 (_ BitVec 32))) (Undefined!7844) (MissingVacant!7844 (index!33746 (_ BitVec 32))) )
))
(declare-fun lt!341743 () SeekEntryResult!7844)

(assert (=> b!768126 (= res!519705 (or (= lt!341743 (MissingZero!7844 i!1173)) (= lt!341743 (MissingVacant!7844 i!1173))))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42278 (_ BitVec 32)) SeekEntryResult!7844)

(assert (=> b!768126 (= lt!341743 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!768127 () Bool)

(declare-fun e!427760 () Bool)

(declare-fun e!427763 () Bool)

(assert (=> b!768127 (= e!427760 (not e!427763))))

(declare-fun res!519713 () Bool)

(assert (=> b!768127 (=> res!519713 e!427763)))

(declare-fun lt!341745 () SeekEntryResult!7844)

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!768127 (= res!519713 (or (not (is-Intermediate!7844 lt!341745)) (bvsge x!1131 (x!64691 lt!341745))))))

(declare-fun lt!341742 () SeekEntryResult!7844)

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!768127 (= lt!341742 (Found!7844 j!159))))

(declare-fun e!427754 () Bool)

(assert (=> b!768127 e!427754))

(declare-fun res!519708 () Bool)

(assert (=> b!768127 (=> (not res!519708) (not e!427754))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42278 (_ BitVec 32)) Bool)

(assert (=> b!768127 (= res!519708 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26414 0))(
  ( (Unit!26415) )
))
(declare-fun lt!341744 () Unit!26414)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42278 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26414)

(assert (=> b!768127 (= lt!341744 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!768129 () Bool)

(declare-fun res!519711 () Bool)

(assert (=> b!768129 (=> (not res!519711) (not e!427756))))

(assert (=> b!768129 (= res!519711 (and (= (size!20658 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20658 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20658 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!768130 () Bool)

(assert (=> b!768130 (= e!427762 e!427758)))

(declare-fun res!519709 () Bool)

(assert (=> b!768130 (=> (not res!519709) (not e!427758))))

(declare-fun lt!341741 () SeekEntryResult!7844)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42278 (_ BitVec 32)) SeekEntryResult!7844)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!768130 (= res!519709 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20237 a!3186) j!159) mask!3328) (select (arr!20237 a!3186) j!159) a!3186 mask!3328) lt!341741))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!768130 (= lt!341741 (Intermediate!7844 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!768131 () Bool)

(declare-fun res!519718 () Bool)

(assert (=> b!768131 (=> (not res!519718) (not e!427762))))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!768131 (= res!519718 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20658 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20658 a!3186))))))

(declare-fun b!768132 () Bool)

(declare-fun res!519704 () Bool)

(assert (=> b!768132 (=> (not res!519704) (not e!427758))))

(declare-fun e!427757 () Bool)

(assert (=> b!768132 (= res!519704 e!427757)))

(declare-fun c!84603 () Bool)

(assert (=> b!768132 (= c!84603 (bvsle x!1131 resIntermediateX!5))))

(declare-fun e!427761 () Bool)

(declare-fun lt!341738 () (_ BitVec 32))

(declare-fun b!768133 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42278 (_ BitVec 32)) SeekEntryResult!7844)

(assert (=> b!768133 (= e!427761 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!341738 resIntermediateIndex!5 (select (arr!20237 a!3186) j!159) a!3186 mask!3328) lt!341742))))

(declare-fun b!768134 () Bool)

(declare-fun e!427755 () Bool)

(assert (=> b!768134 (= e!427754 e!427755)))

(declare-fun res!519710 () Bool)

(assert (=> b!768134 (=> (not res!519710) (not e!427755))))

(declare-fun lt!341746 () SeekEntryResult!7844)

(assert (=> b!768134 (= res!519710 (= (seekEntryOrOpen!0 (select (arr!20237 a!3186) j!159) a!3186 mask!3328) lt!341746))))

(assert (=> b!768134 (= lt!341746 (Found!7844 j!159))))

(declare-fun res!519714 () Bool)

(assert (=> start!66684 (=> (not res!519714) (not e!427756))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66684 (= res!519714 (validMask!0 mask!3328))))

(assert (=> start!66684 e!427756))

(assert (=> start!66684 true))

(declare-fun array_inv!16011 (array!42278) Bool)

(assert (=> start!66684 (array_inv!16011 a!3186)))

(declare-fun b!768128 () Bool)

(declare-fun res!519715 () Bool)

(assert (=> b!768128 (=> (not res!519715) (not e!427756))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!768128 (= res!519715 (validKeyInArray!0 (select (arr!20237 a!3186) j!159)))))

(declare-fun b!768135 () Bool)

(declare-fun res!519706 () Bool)

(assert (=> b!768135 (=> res!519706 e!427761)))

(assert (=> b!768135 (= res!519706 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20237 a!3186) j!159) a!3186 mask!3328) lt!341742))))

(declare-fun b!768136 () Bool)

(assert (=> b!768136 (= e!427758 e!427760)))

(declare-fun res!519703 () Bool)

(assert (=> b!768136 (=> (not res!519703) (not e!427760))))

(declare-fun lt!341740 () SeekEntryResult!7844)

(assert (=> b!768136 (= res!519703 (= lt!341740 lt!341745))))

(declare-fun lt!341739 () array!42278)

(declare-fun lt!341737 () (_ BitVec 64))

(assert (=> b!768136 (= lt!341745 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!341737 lt!341739 mask!3328))))

(assert (=> b!768136 (= lt!341740 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!341737 mask!3328) lt!341737 lt!341739 mask!3328))))

(assert (=> b!768136 (= lt!341737 (select (store (arr!20237 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!768136 (= lt!341739 (array!42279 (store (arr!20237 a!3186) i!1173 k!2102) (size!20658 a!3186)))))

(declare-fun b!768137 () Bool)

(declare-fun res!519717 () Bool)

(assert (=> b!768137 (=> (not res!519717) (not e!427762))))

(assert (=> b!768137 (= res!519717 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!768138 () Bool)

(assert (=> b!768138 (= e!427763 e!427761)))

(declare-fun res!519712 () Bool)

(assert (=> b!768138 (=> res!519712 e!427761)))

(assert (=> b!768138 (= res!519712 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!768138 (= lt!341738 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!768139 () Bool)

(declare-fun res!519707 () Bool)

(assert (=> b!768139 (=> (not res!519707) (not e!427762))))

(declare-datatypes ((List!14292 0))(
  ( (Nil!14289) (Cons!14288 (h!15384 (_ BitVec 64)) (t!20615 List!14292)) )
))
(declare-fun arrayNoDuplicates!0 (array!42278 (_ BitVec 32) List!14292) Bool)

(assert (=> b!768139 (= res!519707 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14289))))

(declare-fun b!768140 () Bool)

(assert (=> b!768140 (= e!427755 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20237 a!3186) j!159) a!3186 mask!3328) lt!341746))))

(declare-fun b!768141 () Bool)

(assert (=> b!768141 (= e!427757 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20237 a!3186) j!159) a!3186 mask!3328) (Found!7844 j!159)))))

(declare-fun b!768142 () Bool)

(declare-fun res!519720 () Bool)

(assert (=> b!768142 (=> (not res!519720) (not e!427756))))

(assert (=> b!768142 (= res!519720 (validKeyInArray!0 k!2102))))

(declare-fun b!768143 () Bool)

(assert (=> b!768143 (= e!427757 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20237 a!3186) j!159) a!3186 mask!3328) lt!341741))))

(assert (= (and start!66684 res!519714) b!768129))

(assert (= (and b!768129 res!519711) b!768128))

(assert (= (and b!768128 res!519715) b!768142))

(assert (= (and b!768142 res!519720) b!768125))

(assert (= (and b!768125 res!519716) b!768126))

(assert (= (and b!768126 res!519705) b!768137))

(assert (= (and b!768137 res!519717) b!768139))

(assert (= (and b!768139 res!519707) b!768131))

(assert (= (and b!768131 res!519718) b!768130))

(assert (= (and b!768130 res!519709) b!768124))

(assert (= (and b!768124 res!519719) b!768132))

(assert (= (and b!768132 c!84603) b!768143))

(assert (= (and b!768132 (not c!84603)) b!768141))

(assert (= (and b!768132 res!519704) b!768136))

(assert (= (and b!768136 res!519703) b!768127))

(assert (= (and b!768127 res!519708) b!768134))

(assert (= (and b!768134 res!519710) b!768140))

(assert (= (and b!768127 (not res!519713)) b!768138))

(assert (= (and b!768138 (not res!519712)) b!768135))

(assert (= (and b!768135 (not res!519706)) b!768133))

(declare-fun m!713787 () Bool)

(assert (=> b!768124 m!713787))

(declare-fun m!713789 () Bool)

(assert (=> b!768137 m!713789))

(declare-fun m!713791 () Bool)

(assert (=> b!768140 m!713791))

(assert (=> b!768140 m!713791))

(declare-fun m!713793 () Bool)

(assert (=> b!768140 m!713793))

(assert (=> b!768143 m!713791))

(assert (=> b!768143 m!713791))

(declare-fun m!713795 () Bool)

(assert (=> b!768143 m!713795))

(assert (=> b!768128 m!713791))

(assert (=> b!768128 m!713791))

(declare-fun m!713797 () Bool)

(assert (=> b!768128 m!713797))

(assert (=> b!768133 m!713791))

(assert (=> b!768133 m!713791))

(declare-fun m!713799 () Bool)

(assert (=> b!768133 m!713799))

(declare-fun m!713801 () Bool)

(assert (=> b!768136 m!713801))

(declare-fun m!713803 () Bool)

(assert (=> b!768136 m!713803))

(declare-fun m!713805 () Bool)

(assert (=> b!768136 m!713805))

(assert (=> b!768136 m!713801))

(declare-fun m!713807 () Bool)

(assert (=> b!768136 m!713807))

(declare-fun m!713809 () Bool)

(assert (=> b!768136 m!713809))

(assert (=> b!768134 m!713791))

(assert (=> b!768134 m!713791))

(declare-fun m!713811 () Bool)

(assert (=> b!768134 m!713811))

(assert (=> b!768141 m!713791))

(assert (=> b!768141 m!713791))

(declare-fun m!713813 () Bool)

(assert (=> b!768141 m!713813))

(assert (=> b!768130 m!713791))

(assert (=> b!768130 m!713791))

(declare-fun m!713815 () Bool)

(assert (=> b!768130 m!713815))

(assert (=> b!768130 m!713815))

(assert (=> b!768130 m!713791))

(declare-fun m!713817 () Bool)

(assert (=> b!768130 m!713817))

(declare-fun m!713819 () Bool)

(assert (=> b!768127 m!713819))

(declare-fun m!713821 () Bool)

(assert (=> b!768127 m!713821))

(declare-fun m!713823 () Bool)

(assert (=> start!66684 m!713823))

(declare-fun m!713825 () Bool)

(assert (=> start!66684 m!713825))

(declare-fun m!713827 () Bool)

(assert (=> b!768138 m!713827))

(declare-fun m!713829 () Bool)

(assert (=> b!768139 m!713829))

(declare-fun m!713831 () Bool)

(assert (=> b!768126 m!713831))

(declare-fun m!713833 () Bool)

(assert (=> b!768142 m!713833))

(assert (=> b!768135 m!713791))

(assert (=> b!768135 m!713791))

(assert (=> b!768135 m!713813))

(declare-fun m!713835 () Bool)

(assert (=> b!768125 m!713835))

(push 1)

(assert (not b!768143))

(assert (not b!768128))

(assert (not start!66684))

(assert (not b!768138))

(assert (not b!768134))

(assert (not b!768133))

(assert (not b!768127))

(assert (not b!768126))

(assert (not b!768136))

(assert (not b!768142))

(assert (not b!768139))

(assert (not b!768130))

(assert (not b!768141))

(assert (not b!768137))

(assert (not b!768125))

(assert (not b!768135))

(assert (not b!768140))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!768250 () Bool)

(declare-fun e!427826 () SeekEntryResult!7844)

(declare-fun e!427824 () SeekEntryResult!7844)

(assert (=> b!768250 (= e!427826 e!427824)))

(declare-fun c!84645 () Bool)

(declare-fun lt!341797 () (_ BitVec 64))

(assert (=> b!768250 (= c!84645 (= lt!341797 (select (arr!20237 a!3186) j!159)))))

(declare-fun b!768252 () Bool)

(assert (=> b!768252 (= e!427824 (Found!7844 lt!341738))))

(declare-fun b!768253 () Bool)

(declare-fun e!427825 () SeekEntryResult!7844)

(assert (=> b!768253 (= e!427825 (MissingVacant!7844 resIntermediateIndex!5))))

(declare-fun b!768254 () Bool)

(assert (=> b!768254 (= e!427825 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131 #b00000000000000000000000000000001) (nextIndex!0 lt!341738 (bvadd #b00000000000000000000000000000001 x!1131) mask!3328) resIntermediateIndex!5 (select (arr!20237 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!768255 () Bool)

(assert (=> b!768255 (= e!427826 Undefined!7844)))

(declare-fun b!768251 () Bool)

(declare-fun c!84644 () Bool)

(assert (=> b!768251 (= c!84644 (= lt!341797 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!768251 (= e!427824 e!427825)))

(declare-fun lt!341798 () SeekEntryResult!7844)

(declare-fun d!101415 () Bool)

(assert (=> d!101415 (and (or (is-Undefined!7844 lt!341798) (not (is-Found!7844 lt!341798)) (and (bvsge (index!33744 lt!341798) #b00000000000000000000000000000000) (bvslt (index!33744 lt!341798) (size!20658 a!3186)))) (or (is-Undefined!7844 lt!341798) (is-Found!7844 lt!341798) (not (is-MissingVacant!7844 lt!341798)) (not (= (index!33746 lt!341798) resIntermediateIndex!5)) (and (bvsge (index!33746 lt!341798) #b00000000000000000000000000000000) (bvslt (index!33746 lt!341798) (size!20658 a!3186)))) (or (is-Undefined!7844 lt!341798) (ite (is-Found!7844 lt!341798) (= (select (arr!20237 a!3186) (index!33744 lt!341798)) (select (arr!20237 a!3186) j!159)) (and (is-MissingVacant!7844 lt!341798) (= (index!33746 lt!341798) resIntermediateIndex!5) (= (select (arr!20237 a!3186) (index!33746 lt!341798)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!101415 (= lt!341798 e!427826)))

(declare-fun c!84646 () Bool)

(assert (=> d!101415 (= c!84646 (bvsge (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110))))

(assert (=> d!101415 (= lt!341797 (select (arr!20237 a!3186) lt!341738))))

(assert (=> d!101415 (validMask!0 mask!3328)))

(assert (=> d!101415 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!341738 resIntermediateIndex!5 (select (arr!20237 a!3186) j!159) a!3186 mask!3328) lt!341798)))

(assert (= (and d!101415 c!84646) b!768255))

(assert (= (and d!101415 (not c!84646)) b!768250))

(assert (= (and b!768250 c!84645) b!768252))

(assert (= (and b!768250 (not c!84645)) b!768251))

(assert (= (and b!768251 c!84644) b!768253))

(assert (= (and b!768251 (not c!84644)) b!768254))

(declare-fun m!713903 () Bool)

(assert (=> b!768254 m!713903))

(assert (=> b!768254 m!713903))

(assert (=> b!768254 m!713791))

(declare-fun m!713905 () Bool)

(assert (=> b!768254 m!713905))

(declare-fun m!713907 () Bool)

(assert (=> d!101415 m!713907))

(declare-fun m!713909 () Bool)

(assert (=> d!101415 m!713909))

(declare-fun m!713911 () Bool)

(assert (=> d!101415 m!713911))

(assert (=> d!101415 m!713823))

(assert (=> b!768133 d!101415))

(declare-fun b!768314 () Bool)

(declare-fun e!427867 () SeekEntryResult!7844)

(assert (=> b!768314 (= e!427867 (Intermediate!7844 false index!1321 x!1131))))

(declare-fun b!768315 () Bool)

(declare-fun e!427863 () Bool)

(declare-fun lt!341821 () SeekEntryResult!7844)

(assert (=> b!768315 (= e!427863 (bvsge (x!64691 lt!341821) #b01111111111111111111111111111110))))

(declare-fun b!768316 () Bool)

(assert (=> b!768316 (and (bvsge (index!33745 lt!341821) #b00000000000000000000000000000000) (bvslt (index!33745 lt!341821) (size!20658 a!3186)))))

(declare-fun e!427865 () Bool)

(assert (=> b!768316 (= e!427865 (= (select (arr!20237 a!3186) (index!33745 lt!341821)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!768317 () Bool)

(declare-fun e!427866 () SeekEntryResult!7844)

(assert (=> b!768317 (= e!427866 (Intermediate!7844 true index!1321 x!1131))))

(declare-fun b!768318 () Bool)

(assert (=> b!768318 (= e!427867 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) (select (arr!20237 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!768319 () Bool)

(assert (=> b!768319 (and (bvsge (index!33745 lt!341821) #b00000000000000000000000000000000) (bvslt (index!33745 lt!341821) (size!20658 a!3186)))))

(declare-fun res!519767 () Bool)

(assert (=> b!768319 (= res!519767 (= (select (arr!20237 a!3186) (index!33745 lt!341821)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!768319 (=> res!519767 e!427865)))

(declare-fun b!768320 () Bool)

(assert (=> b!768320 (and (bvsge (index!33745 lt!341821) #b00000000000000000000000000000000) (bvslt (index!33745 lt!341821) (size!20658 a!3186)))))

(declare-fun res!519766 () Bool)

(assert (=> b!768320 (= res!519766 (= (select (arr!20237 a!3186) (index!33745 lt!341821)) (select (arr!20237 a!3186) j!159)))))

(assert (=> b!768320 (=> res!519766 e!427865)))

(declare-fun e!427864 () Bool)

(assert (=> b!768320 (= e!427864 e!427865)))

(declare-fun d!101427 () Bool)

(assert (=> d!101427 e!427863))

(declare-fun c!84668 () Bool)

(assert (=> d!101427 (= c!84668 (and (is-Intermediate!7844 lt!341821) (undefined!8656 lt!341821)))))

(assert (=> d!101427 (= lt!341821 e!427866)))

(declare-fun c!84667 () Bool)

(assert (=> d!101427 (= c!84667 (bvsge x!1131 #b01111111111111111111111111111110))))

(declare-fun lt!341822 () (_ BitVec 64))

(assert (=> d!101427 (= lt!341822 (select (arr!20237 a!3186) index!1321))))

(assert (=> d!101427 (validMask!0 mask!3328)))

(assert (=> d!101427 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20237 a!3186) j!159) a!3186 mask!3328) lt!341821)))

(declare-fun b!768321 () Bool)

(assert (=> b!768321 (= e!427866 e!427867)))

(declare-fun c!84669 () Bool)

(assert (=> b!768321 (= c!84669 (or (= lt!341822 (select (arr!20237 a!3186) j!159)) (= (bvadd lt!341822 lt!341822) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!768322 () Bool)

(assert (=> b!768322 (= e!427863 e!427864)))

(declare-fun res!519768 () Bool)

(assert (=> b!768322 (= res!519768 (and (is-Intermediate!7844 lt!341821) (not (undefined!8656 lt!341821)) (bvslt (x!64691 lt!341821) #b01111111111111111111111111111110) (bvsge (x!64691 lt!341821) #b00000000000000000000000000000000) (bvsge (x!64691 lt!341821) x!1131)))))

(assert (=> b!768322 (=> (not res!519768) (not e!427864))))

(assert (= (and d!101427 c!84667) b!768317))

(assert (= (and d!101427 (not c!84667)) b!768321))

(assert (= (and b!768321 c!84669) b!768314))

(assert (= (and b!768321 (not c!84669)) b!768318))

(assert (= (and d!101427 c!84668) b!768315))

(assert (= (and d!101427 (not c!84668)) b!768322))

(assert (= (and b!768322 res!519768) b!768320))

(assert (= (and b!768320 (not res!519766)) b!768319))

(assert (= (and b!768319 (not res!519767)) b!768316))

(assert (=> b!768318 m!713827))

(assert (=> b!768318 m!713827))

(assert (=> b!768318 m!713791))

(declare-fun m!713935 () Bool)

(assert (=> b!768318 m!713935))

(declare-fun m!713937 () Bool)

(assert (=> d!101427 m!713937))

(assert (=> d!101427 m!713823))

(declare-fun m!713939 () Bool)

(assert (=> b!768319 m!713939))

(assert (=> b!768320 m!713939))

(assert (=> b!768316 m!713939))

(assert (=> b!768143 d!101427))

(declare-fun b!768386 () Bool)

(declare-fun e!427908 () SeekEntryResult!7844)

(declare-fun lt!341846 () SeekEntryResult!7844)

(assert (=> b!768386 (= e!427908 (Found!7844 (index!33745 lt!341846)))))

(declare-fun b!768387 () Bool)

(declare-fun e!427910 () SeekEntryResult!7844)

(assert (=> b!768387 (= e!427910 Undefined!7844)))

(declare-fun b!768388 () Bool)

(assert (=> b!768388 (= e!427910 e!427908)))

(declare-fun lt!341847 () (_ BitVec 64))

(assert (=> b!768388 (= lt!341847 (select (arr!20237 a!3186) (index!33745 lt!341846)))))

(declare-fun c!84693 () Bool)

(assert (=> b!768388 (= c!84693 (= lt!341847 (select (arr!20237 a!3186) j!159)))))

(declare-fun e!427909 () SeekEntryResult!7844)

(declare-fun b!768389 () Bool)

(assert (=> b!768389 (= e!427909 (seekKeyOrZeroReturnVacant!0 (x!64691 lt!341846) (index!33745 lt!341846) (index!33745 lt!341846) (select (arr!20237 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!768390 () Bool)

(assert (=> b!768390 (= e!427909 (MissingZero!7844 (index!33745 lt!341846)))))

(declare-fun d!101435 () Bool)

(declare-fun lt!341848 () SeekEntryResult!7844)

(assert (=> d!101435 (and (or (is-Undefined!7844 lt!341848) (not (is-Found!7844 lt!341848)) (and (bvsge (index!33744 lt!341848) #b00000000000000000000000000000000) (bvslt (index!33744 lt!341848) (size!20658 a!3186)))) (or (is-Undefined!7844 lt!341848) (is-Found!7844 lt!341848) (not (is-MissingZero!7844 lt!341848)) (and (bvsge (index!33743 lt!341848) #b00000000000000000000000000000000) (bvslt (index!33743 lt!341848) (size!20658 a!3186)))) (or (is-Undefined!7844 lt!341848) (is-Found!7844 lt!341848) (is-MissingZero!7844 lt!341848) (not (is-MissingVacant!7844 lt!341848)) (and (bvsge (index!33746 lt!341848) #b00000000000000000000000000000000) (bvslt (index!33746 lt!341848) (size!20658 a!3186)))) (or (is-Undefined!7844 lt!341848) (ite (is-Found!7844 lt!341848) (= (select (arr!20237 a!3186) (index!33744 lt!341848)) (select (arr!20237 a!3186) j!159)) (ite (is-MissingZero!7844 lt!341848) (= (select (arr!20237 a!3186) (index!33743 lt!341848)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!7844 lt!341848) (= (select (arr!20237 a!3186) (index!33746 lt!341848)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!101435 (= lt!341848 e!427910)))

(declare-fun c!84695 () Bool)

(assert (=> d!101435 (= c!84695 (and (is-Intermediate!7844 lt!341846) (undefined!8656 lt!341846)))))

(assert (=> d!101435 (= lt!341846 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20237 a!3186) j!159) mask!3328) (select (arr!20237 a!3186) j!159) a!3186 mask!3328))))

(assert (=> d!101435 (validMask!0 mask!3328)))

(assert (=> d!101435 (= (seekEntryOrOpen!0 (select (arr!20237 a!3186) j!159) a!3186 mask!3328) lt!341848)))

(declare-fun b!768391 () Bool)

(declare-fun c!84694 () Bool)

(assert (=> b!768391 (= c!84694 (= lt!341847 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!768391 (= e!427908 e!427909)))

(assert (= (and d!101435 c!84695) b!768387))

(assert (= (and d!101435 (not c!84695)) b!768388))

(assert (= (and b!768388 c!84693) b!768386))

(assert (= (and b!768388 (not c!84693)) b!768391))

(assert (= (and b!768391 c!84694) b!768390))

(assert (= (and b!768391 (not c!84694)) b!768389))

(declare-fun m!713987 () Bool)

(assert (=> b!768388 m!713987))

(assert (=> b!768389 m!713791))

(declare-fun m!713989 () Bool)

(assert (=> b!768389 m!713989))

(assert (=> d!101435 m!713791))

(assert (=> d!101435 m!713815))

(declare-fun m!713991 () Bool)

(assert (=> d!101435 m!713991))

(assert (=> d!101435 m!713815))

(assert (=> d!101435 m!713791))

(assert (=> d!101435 m!713817))

(assert (=> d!101435 m!713823))

(declare-fun m!713993 () Bool)

(assert (=> d!101435 m!713993))

(declare-fun m!713995 () Bool)

(assert (=> d!101435 m!713995))

(assert (=> b!768134 d!101435))

(declare-fun d!101457 () Bool)

(declare-fun res!519790 () Bool)

(declare-fun e!427915 () Bool)

(assert (=> d!101457 (=> res!519790 e!427915)))

(assert (=> d!101457 (= res!519790 (= (select (arr!20237 a!3186) #b00000000000000000000000000000000) k!2102))))

(assert (=> d!101457 (= (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000) e!427915)))

(declare-fun b!768396 () Bool)

(declare-fun e!427916 () Bool)

(assert (=> b!768396 (= e!427915 e!427916)))

(declare-fun res!519791 () Bool)

(assert (=> b!768396 (=> (not res!519791) (not e!427916))))

(assert (=> b!768396 (= res!519791 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!20658 a!3186)))))

(declare-fun b!768397 () Bool)

(assert (=> b!768397 (= e!427916 (arrayContainsKey!0 a!3186 k!2102 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!101457 (not res!519790)) b!768396))

(assert (= (and b!768396 res!519791) b!768397))

(declare-fun m!713997 () Bool)

(assert (=> d!101457 m!713997))

(declare-fun m!713999 () Bool)

(assert (=> b!768397 m!713999))

(assert (=> b!768125 d!101457))

(declare-fun d!101459 () Bool)

(assert (=> d!101459 (= (validMask!0 mask!3328) (and (or (= mask!3328 #b00000000000000000000000000000111) (= mask!3328 #b00000000000000000000000000001111) (= mask!3328 #b00000000000000000000000000011111) (= mask!3328 #b00000000000000000000000000111111) (= mask!3328 #b00000000000000000000000001111111) (= mask!3328 #b00000000000000000000000011111111) (= mask!3328 #b00000000000000000000000111111111) (= mask!3328 #b00000000000000000000001111111111) (= mask!3328 #b00000000000000000000011111111111) (= mask!3328 #b00000000000000000000111111111111) (= mask!3328 #b00000000000000000001111111111111) (= mask!3328 #b00000000000000000011111111111111) (= mask!3328 #b00000000000000000111111111111111) (= mask!3328 #b00000000000000001111111111111111) (= mask!3328 #b00000000000000011111111111111111) (= mask!3328 #b00000000000000111111111111111111) (= mask!3328 #b00000000000001111111111111111111) (= mask!3328 #b00000000000011111111111111111111) (= mask!3328 #b00000000000111111111111111111111) (= mask!3328 #b00000000001111111111111111111111) (= mask!3328 #b00000000011111111111111111111111) (= mask!3328 #b00000000111111111111111111111111) (= mask!3328 #b00000001111111111111111111111111) (= mask!3328 #b00000011111111111111111111111111) (= mask!3328 #b00000111111111111111111111111111) (= mask!3328 #b00001111111111111111111111111111) (= mask!3328 #b00011111111111111111111111111111) (= mask!3328 #b00111111111111111111111111111111)) (bvsle mask!3328 #b00111111111111111111111111111111)))))

(assert (=> start!66684 d!101459))

(declare-fun d!101465 () Bool)

(assert (=> d!101465 (= (array_inv!16011 a!3186) (bvsge (size!20658 a!3186) #b00000000000000000000000000000000))))

(assert (=> start!66684 d!101465))

(declare-fun b!768422 () Bool)

(declare-fun e!427933 () SeekEntryResult!7844)

(assert (=> b!768422 (= e!427933 (Intermediate!7844 false index!1321 x!1131))))

(declare-fun b!768423 () Bool)

(declare-fun e!427929 () Bool)

(declare-fun lt!341860 () SeekEntryResult!7844)

(assert (=> b!768423 (= e!427929 (bvsge (x!64691 lt!341860) #b01111111111111111111111111111110))))

(declare-fun b!768424 () Bool)

(assert (=> b!768424 (and (bvsge (index!33745 lt!341860) #b00000000000000000000000000000000) (bvslt (index!33745 lt!341860) (size!20658 lt!341739)))))

(declare-fun e!427931 () Bool)

(assert (=> b!768424 (= e!427931 (= (select (arr!20237 lt!341739) (index!33745 lt!341860)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!768425 () Bool)

(declare-fun e!427932 () SeekEntryResult!7844)

(assert (=> b!768425 (= e!427932 (Intermediate!7844 true index!1321 x!1131))))

(declare-fun b!768426 () Bool)

(assert (=> b!768426 (= e!427933 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) lt!341737 lt!341739 mask!3328))))

(declare-fun b!768427 () Bool)

(assert (=> b!768427 (and (bvsge (index!33745 lt!341860) #b00000000000000000000000000000000) (bvslt (index!33745 lt!341860) (size!20658 lt!341739)))))

(declare-fun res!519793 () Bool)

(assert (=> b!768427 (= res!519793 (= (select (arr!20237 lt!341739) (index!33745 lt!341860)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!768427 (=> res!519793 e!427931)))

(declare-fun b!768428 () Bool)

(assert (=> b!768428 (and (bvsge (index!33745 lt!341860) #b00000000000000000000000000000000) (bvslt (index!33745 lt!341860) (size!20658 lt!341739)))))

(declare-fun res!519792 () Bool)

(assert (=> b!768428 (= res!519792 (= (select (arr!20237 lt!341739) (index!33745 lt!341860)) lt!341737))))

(assert (=> b!768428 (=> res!519792 e!427931)))

(declare-fun e!427930 () Bool)

(assert (=> b!768428 (= e!427930 e!427931)))

(declare-fun d!101467 () Bool)

(assert (=> d!101467 e!427929))

(declare-fun c!84709 () Bool)

(assert (=> d!101467 (= c!84709 (and (is-Intermediate!7844 lt!341860) (undefined!8656 lt!341860)))))

(assert (=> d!101467 (= lt!341860 e!427932)))

(declare-fun c!84708 () Bool)

(assert (=> d!101467 (= c!84708 (bvsge x!1131 #b01111111111111111111111111111110))))

(declare-fun lt!341861 () (_ BitVec 64))

(assert (=> d!101467 (= lt!341861 (select (arr!20237 lt!341739) index!1321))))

(assert (=> d!101467 (validMask!0 mask!3328)))

(assert (=> d!101467 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!341737 lt!341739 mask!3328) lt!341860)))

(declare-fun b!768429 () Bool)

(assert (=> b!768429 (= e!427932 e!427933)))

(declare-fun c!84710 () Bool)

(assert (=> b!768429 (= c!84710 (or (= lt!341861 lt!341737) (= (bvadd lt!341861 lt!341861) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!768430 () Bool)

(assert (=> b!768430 (= e!427929 e!427930)))

(declare-fun res!519794 () Bool)

(assert (=> b!768430 (= res!519794 (and (is-Intermediate!7844 lt!341860) (not (undefined!8656 lt!341860)) (bvslt (x!64691 lt!341860) #b01111111111111111111111111111110) (bvsge (x!64691 lt!341860) #b00000000000000000000000000000000) (bvsge (x!64691 lt!341860) x!1131)))))

(assert (=> b!768430 (=> (not res!519794) (not e!427930))))

(assert (= (and d!101467 c!84708) b!768425))

(assert (= (and d!101467 (not c!84708)) b!768429))

(assert (= (and b!768429 c!84710) b!768422))

(assert (= (and b!768429 (not c!84710)) b!768426))

(assert (= (and d!101467 c!84709) b!768423))

(assert (= (and d!101467 (not c!84709)) b!768430))

(assert (= (and b!768430 res!519794) b!768428))

(assert (= (and b!768428 (not res!519792)) b!768427))

(assert (= (and b!768427 (not res!519793)) b!768424))

(assert (=> b!768426 m!713827))

(assert (=> b!768426 m!713827))

(declare-fun m!714019 () Bool)

(assert (=> b!768426 m!714019))

(declare-fun m!714021 () Bool)

(assert (=> d!101467 m!714021))

(assert (=> d!101467 m!713823))

(declare-fun m!714023 () Bool)

(assert (=> b!768427 m!714023))

(assert (=> b!768428 m!714023))

(assert (=> b!768424 m!714023))

(assert (=> b!768136 d!101467))

(declare-fun b!768431 () Bool)

(declare-fun e!427938 () SeekEntryResult!7844)

(assert (=> b!768431 (= e!427938 (Intermediate!7844 false (toIndex!0 lt!341737 mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!768432 () Bool)

(declare-fun e!427934 () Bool)

(declare-fun lt!341862 () SeekEntryResult!7844)

(assert (=> b!768432 (= e!427934 (bvsge (x!64691 lt!341862) #b01111111111111111111111111111110))))

(declare-fun b!768433 () Bool)

(assert (=> b!768433 (and (bvsge (index!33745 lt!341862) #b00000000000000000000000000000000) (bvslt (index!33745 lt!341862) (size!20658 lt!341739)))))

(declare-fun e!427936 () Bool)

(assert (=> b!768433 (= e!427936 (= (select (arr!20237 lt!341739) (index!33745 lt!341862)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!768434 () Bool)

(declare-fun e!427937 () SeekEntryResult!7844)

(assert (=> b!768434 (= e!427937 (Intermediate!7844 true (toIndex!0 lt!341737 mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!768435 () Bool)

(assert (=> b!768435 (= e!427938 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!341737 mask!3328) #b00000000000000000000000000000000 mask!3328) lt!341737 lt!341739 mask!3328))))

(declare-fun b!768436 () Bool)

(assert (=> b!768436 (and (bvsge (index!33745 lt!341862) #b00000000000000000000000000000000) (bvslt (index!33745 lt!341862) (size!20658 lt!341739)))))

(declare-fun res!519796 () Bool)

(assert (=> b!768436 (= res!519796 (= (select (arr!20237 lt!341739) (index!33745 lt!341862)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!768436 (=> res!519796 e!427936)))

(declare-fun b!768437 () Bool)

(assert (=> b!768437 (and (bvsge (index!33745 lt!341862) #b00000000000000000000000000000000) (bvslt (index!33745 lt!341862) (size!20658 lt!341739)))))

(declare-fun res!519795 () Bool)

(assert (=> b!768437 (= res!519795 (= (select (arr!20237 lt!341739) (index!33745 lt!341862)) lt!341737))))

(assert (=> b!768437 (=> res!519795 e!427936)))

(declare-fun e!427935 () Bool)

(assert (=> b!768437 (= e!427935 e!427936)))

(declare-fun d!101469 () Bool)

(assert (=> d!101469 e!427934))

(declare-fun c!84712 () Bool)

(assert (=> d!101469 (= c!84712 (and (is-Intermediate!7844 lt!341862) (undefined!8656 lt!341862)))))

(assert (=> d!101469 (= lt!341862 e!427937)))

(declare-fun c!84711 () Bool)

(assert (=> d!101469 (= c!84711 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!341863 () (_ BitVec 64))

(assert (=> d!101469 (= lt!341863 (select (arr!20237 lt!341739) (toIndex!0 lt!341737 mask!3328)))))

(assert (=> d!101469 (validMask!0 mask!3328)))

(assert (=> d!101469 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!341737 mask!3328) lt!341737 lt!341739 mask!3328) lt!341862)))

(declare-fun b!768438 () Bool)

(assert (=> b!768438 (= e!427937 e!427938)))

(declare-fun c!84713 () Bool)

(assert (=> b!768438 (= c!84713 (or (= lt!341863 lt!341737) (= (bvadd lt!341863 lt!341863) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!768439 () Bool)

(assert (=> b!768439 (= e!427934 e!427935)))

(declare-fun res!519797 () Bool)

(assert (=> b!768439 (= res!519797 (and (is-Intermediate!7844 lt!341862) (not (undefined!8656 lt!341862)) (bvslt (x!64691 lt!341862) #b01111111111111111111111111111110) (bvsge (x!64691 lt!341862) #b00000000000000000000000000000000) (bvsge (x!64691 lt!341862) #b00000000000000000000000000000000)))))

(assert (=> b!768439 (=> (not res!519797) (not e!427935))))

(assert (= (and d!101469 c!84711) b!768434))

(assert (= (and d!101469 (not c!84711)) b!768438))

(assert (= (and b!768438 c!84713) b!768431))

(assert (= (and b!768438 (not c!84713)) b!768435))

(assert (= (and d!101469 c!84712) b!768432))

(assert (= (and d!101469 (not c!84712)) b!768439))

(assert (= (and b!768439 res!519797) b!768437))

(assert (= (and b!768437 (not res!519795)) b!768436))

(assert (= (and b!768436 (not res!519796)) b!768433))

(assert (=> b!768435 m!713801))

(declare-fun m!714025 () Bool)

(assert (=> b!768435 m!714025))

(assert (=> b!768435 m!714025))

(declare-fun m!714027 () Bool)

(assert (=> b!768435 m!714027))

(assert (=> d!101469 m!713801))

(declare-fun m!714029 () Bool)

(assert (=> d!101469 m!714029))

(assert (=> d!101469 m!713823))

(declare-fun m!714031 () Bool)

(assert (=> b!768436 m!714031))

(assert (=> b!768437 m!714031))

(assert (=> b!768433 m!714031))

(assert (=> b!768136 d!101469))

(declare-fun d!101471 () Bool)

(declare-fun lt!341869 () (_ BitVec 32))

(declare-fun lt!341868 () (_ BitVec 32))

(assert (=> d!101471 (= lt!341869 (bvmul (bvxor lt!341868 (bvlshr lt!341868 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!101471 (= lt!341868 ((_ extract 31 0) (bvand (bvxor lt!341737 (bvlshr lt!341737 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!101471 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!519798 (let ((h!15386 ((_ extract 31 0) (bvand (bvxor lt!341737 (bvlshr lt!341737 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!64699 (bvmul (bvxor h!15386 (bvlshr h!15386 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!64699 (bvlshr x!64699 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!519798 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!519798 #b00000000000000000000000000000000))))))

(assert (=> d!101471 (= (toIndex!0 lt!341737 mask!3328) (bvand (bvxor lt!341869 (bvlshr lt!341869 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!768136 d!101471))

(declare-fun b!768440 () Bool)

(declare-fun e!427941 () SeekEntryResult!7844)

(declare-fun e!427939 () SeekEntryResult!7844)

(assert (=> b!768440 (= e!427941 e!427939)))

(declare-fun lt!341870 () (_ BitVec 64))

(declare-fun c!84715 () Bool)

(assert (=> b!768440 (= c!84715 (= lt!341870 (select (arr!20237 a!3186) j!159)))))

(declare-fun b!768442 () Bool)

(assert (=> b!768442 (= e!427939 (Found!7844 index!1321))))

(declare-fun b!768443 () Bool)

(declare-fun e!427940 () SeekEntryResult!7844)

(assert (=> b!768443 (= e!427940 (MissingVacant!7844 resIntermediateIndex!5))))

(declare-fun b!768444 () Bool)

(assert (=> b!768444 (= e!427940 (seekKeyOrZeroReturnVacant!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) resIntermediateIndex!5 (select (arr!20237 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!768445 () Bool)

(assert (=> b!768445 (= e!427941 Undefined!7844)))

(declare-fun b!768441 () Bool)

(declare-fun c!84714 () Bool)

(assert (=> b!768441 (= c!84714 (= lt!341870 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!768441 (= e!427939 e!427940)))

(declare-fun d!101473 () Bool)

(declare-fun lt!341871 () SeekEntryResult!7844)

(assert (=> d!101473 (and (or (is-Undefined!7844 lt!341871) (not (is-Found!7844 lt!341871)) (and (bvsge (index!33744 lt!341871) #b00000000000000000000000000000000) (bvslt (index!33744 lt!341871) (size!20658 a!3186)))) (or (is-Undefined!7844 lt!341871) (is-Found!7844 lt!341871) (not (is-MissingVacant!7844 lt!341871)) (not (= (index!33746 lt!341871) resIntermediateIndex!5)) (and (bvsge (index!33746 lt!341871) #b00000000000000000000000000000000) (bvslt (index!33746 lt!341871) (size!20658 a!3186)))) (or (is-Undefined!7844 lt!341871) (ite (is-Found!7844 lt!341871) (= (select (arr!20237 a!3186) (index!33744 lt!341871)) (select (arr!20237 a!3186) j!159)) (and (is-MissingVacant!7844 lt!341871) (= (index!33746 lt!341871) resIntermediateIndex!5) (= (select (arr!20237 a!3186) (index!33746 lt!341871)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!101473 (= lt!341871 e!427941)))

(declare-fun c!84716 () Bool)

(assert (=> d!101473 (= c!84716 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!101473 (= lt!341870 (select (arr!20237 a!3186) index!1321))))

(assert (=> d!101473 (validMask!0 mask!3328)))

(assert (=> d!101473 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20237 a!3186) j!159) a!3186 mask!3328) lt!341871)))

(assert (= (and d!101473 c!84716) b!768445))

(assert (= (and d!101473 (not c!84716)) b!768440))

(assert (= (and b!768440 c!84715) b!768442))

(assert (= (and b!768440 (not c!84715)) b!768441))

(assert (= (and b!768441 c!84714) b!768443))

(assert (= (and b!768441 (not c!84714)) b!768444))

(assert (=> b!768444 m!713827))

(assert (=> b!768444 m!713827))

(assert (=> b!768444 m!713791))

(declare-fun m!714033 () Bool)

(assert (=> b!768444 m!714033))

(declare-fun m!714035 () Bool)

(assert (=> d!101473 m!714035))

(declare-fun m!714037 () Bool)

(assert (=> d!101473 m!714037))

(assert (=> d!101473 m!713937))

(assert (=> d!101473 m!713823))

(assert (=> b!768135 d!101473))

(declare-fun d!101475 () Bool)

(declare-fun res!519817 () Bool)

(declare-fun e!427968 () Bool)

(assert (=> d!101475 (=> res!519817 e!427968)))

(assert (=> d!101475 (= res!519817 (bvsge #b00000000000000000000000000000000 (size!20658 a!3186)))))

(assert (=> d!101475 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328) e!427968)))

(declare-fun b!768490 () Bool)

(declare-fun e!427970 () Bool)

(assert (=> b!768490 (= e!427968 e!427970)))

(declare-fun c!84731 () Bool)

(assert (=> b!768490 (= c!84731 (validKeyInArray!0 (select (arr!20237 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!768491 () Bool)

(declare-fun e!427969 () Bool)

(assert (=> b!768491 (= e!427970 e!427969)))

(declare-fun lt!341890 () (_ BitVec 64))

(assert (=> b!768491 (= lt!341890 (select (arr!20237 a!3186) #b00000000000000000000000000000000))))

(declare-fun lt!341892 () Unit!26414)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!42278 (_ BitVec 64) (_ BitVec 32)) Unit!26414)

(assert (=> b!768491 (= lt!341892 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!341890 #b00000000000000000000000000000000))))

(assert (=> b!768491 (arrayContainsKey!0 a!3186 lt!341890 #b00000000000000000000000000000000)))

(declare-fun lt!341891 () Unit!26414)

(assert (=> b!768491 (= lt!341891 lt!341892)))

(declare-fun res!519816 () Bool)

(assert (=> b!768491 (= res!519816 (= (seekEntryOrOpen!0 (select (arr!20237 a!3186) #b00000000000000000000000000000000) a!3186 mask!3328) (Found!7844 #b00000000000000000000000000000000)))))

(assert (=> b!768491 (=> (not res!519816) (not e!427969))))

(declare-fun b!768492 () Bool)

(declare-fun call!35099 () Bool)

(assert (=> b!768492 (= e!427970 call!35099)))

(declare-fun bm!35096 () Bool)

(assert (=> bm!35096 (= call!35099 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun b!768493 () Bool)

(assert (=> b!768493 (= e!427969 call!35099)))

(assert (= (and d!101475 (not res!519817)) b!768490))

(assert (= (and b!768490 c!84731) b!768491))

(assert (= (and b!768490 (not c!84731)) b!768492))

(assert (= (and b!768491 res!519816) b!768493))

(assert (= (or b!768493 b!768492) bm!35096))

(assert (=> b!768490 m!713997))

(assert (=> b!768490 m!713997))

(declare-fun m!714053 () Bool)

(assert (=> b!768490 m!714053))

(assert (=> b!768491 m!713997))

(declare-fun m!714055 () Bool)

(assert (=> b!768491 m!714055))

(declare-fun m!714057 () Bool)

(assert (=> b!768491 m!714057))

(assert (=> b!768491 m!713997))

(declare-fun m!714059 () Bool)

(assert (=> b!768491 m!714059))

(declare-fun m!714061 () Bool)

(assert (=> bm!35096 m!714061))

(assert (=> b!768137 d!101475))

(declare-fun b!768494 () Bool)

(declare-fun e!427971 () SeekEntryResult!7844)

(declare-fun lt!341895 () SeekEntryResult!7844)

(assert (=> b!768494 (= e!427971 (Found!7844 (index!33745 lt!341895)))))

(declare-fun b!768495 () Bool)

(declare-fun e!427973 () SeekEntryResult!7844)

(assert (=> b!768495 (= e!427973 Undefined!7844)))

(declare-fun b!768496 () Bool)

(assert (=> b!768496 (= e!427973 e!427971)))

(declare-fun lt!341896 () (_ BitVec 64))

(assert (=> b!768496 (= lt!341896 (select (arr!20237 a!3186) (index!33745 lt!341895)))))

(declare-fun c!84732 () Bool)

(assert (=> b!768496 (= c!84732 (= lt!341896 k!2102))))

(declare-fun b!768497 () Bool)

(declare-fun e!427972 () SeekEntryResult!7844)

(assert (=> b!768497 (= e!427972 (seekKeyOrZeroReturnVacant!0 (x!64691 lt!341895) (index!33745 lt!341895) (index!33745 lt!341895) k!2102 a!3186 mask!3328))))

(declare-fun b!768498 () Bool)

(assert (=> b!768498 (= e!427972 (MissingZero!7844 (index!33745 lt!341895)))))

(declare-fun d!101483 () Bool)

(declare-fun lt!341897 () SeekEntryResult!7844)

(assert (=> d!101483 (and (or (is-Undefined!7844 lt!341897) (not (is-Found!7844 lt!341897)) (and (bvsge (index!33744 lt!341897) #b00000000000000000000000000000000) (bvslt (index!33744 lt!341897) (size!20658 a!3186)))) (or (is-Undefined!7844 lt!341897) (is-Found!7844 lt!341897) (not (is-MissingZero!7844 lt!341897)) (and (bvsge (index!33743 lt!341897) #b00000000000000000000000000000000) (bvslt (index!33743 lt!341897) (size!20658 a!3186)))) (or (is-Undefined!7844 lt!341897) (is-Found!7844 lt!341897) (is-MissingZero!7844 lt!341897) (not (is-MissingVacant!7844 lt!341897)) (and (bvsge (index!33746 lt!341897) #b00000000000000000000000000000000) (bvslt (index!33746 lt!341897) (size!20658 a!3186)))) (or (is-Undefined!7844 lt!341897) (ite (is-Found!7844 lt!341897) (= (select (arr!20237 a!3186) (index!33744 lt!341897)) k!2102) (ite (is-MissingZero!7844 lt!341897) (= (select (arr!20237 a!3186) (index!33743 lt!341897)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!7844 lt!341897) (= (select (arr!20237 a!3186) (index!33746 lt!341897)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!101483 (= lt!341897 e!427973)))

(declare-fun c!84734 () Bool)

(assert (=> d!101483 (= c!84734 (and (is-Intermediate!7844 lt!341895) (undefined!8656 lt!341895)))))

(assert (=> d!101483 (= lt!341895 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2102 mask!3328) k!2102 a!3186 mask!3328))))

(assert (=> d!101483 (validMask!0 mask!3328)))

(assert (=> d!101483 (= (seekEntryOrOpen!0 k!2102 a!3186 mask!3328) lt!341897)))

(declare-fun b!768499 () Bool)

(declare-fun c!84733 () Bool)

(assert (=> b!768499 (= c!84733 (= lt!341896 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!768499 (= e!427971 e!427972)))

(assert (= (and d!101483 c!84734) b!768495))

(assert (= (and d!101483 (not c!84734)) b!768496))

(assert (= (and b!768496 c!84732) b!768494))

(assert (= (and b!768496 (not c!84732)) b!768499))

(assert (= (and b!768499 c!84733) b!768498))

(assert (= (and b!768499 (not c!84733)) b!768497))

(declare-fun m!714063 () Bool)

(assert (=> b!768496 m!714063))

(declare-fun m!714065 () Bool)

(assert (=> b!768497 m!714065))

(declare-fun m!714067 () Bool)

(assert (=> d!101483 m!714067))

(declare-fun m!714069 () Bool)

(assert (=> d!101483 m!714069))

(assert (=> d!101483 m!714067))

(declare-fun m!714071 () Bool)

(assert (=> d!101483 m!714071))

(assert (=> d!101483 m!713823))

(declare-fun m!714073 () Bool)

(assert (=> d!101483 m!714073))

(declare-fun m!714075 () Bool)

(assert (=> d!101483 m!714075))

(assert (=> b!768126 d!101483))

(declare-fun d!101485 () Bool)

(assert (=> d!101485 (= (validKeyInArray!0 (select (arr!20237 a!3186) j!159)) (and (not (= (select (arr!20237 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!20237 a!3186) j!159) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!768128 d!101485))

(declare-fun d!101489 () Bool)

(declare-fun res!519819 () Bool)

(declare-fun e!427974 () Bool)

(assert (=> d!101489 (=> res!519819 e!427974)))

(assert (=> d!101489 (= res!519819 (bvsge j!159 (size!20658 a!3186)))))

(assert (=> d!101489 (= (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328) e!427974)))

(declare-fun b!768500 () Bool)

(declare-fun e!427976 () Bool)

(assert (=> b!768500 (= e!427974 e!427976)))

(declare-fun c!84735 () Bool)

(assert (=> b!768500 (= c!84735 (validKeyInArray!0 (select (arr!20237 a!3186) j!159)))))

(declare-fun b!768501 () Bool)

(declare-fun e!427975 () Bool)

(assert (=> b!768501 (= e!427976 e!427975)))

(declare-fun lt!341901 () (_ BitVec 64))

(assert (=> b!768501 (= lt!341901 (select (arr!20237 a!3186) j!159))))

(declare-fun lt!341903 () Unit!26414)

(assert (=> b!768501 (= lt!341903 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!341901 j!159))))

(assert (=> b!768501 (arrayContainsKey!0 a!3186 lt!341901 #b00000000000000000000000000000000)))

(declare-fun lt!341902 () Unit!26414)

(assert (=> b!768501 (= lt!341902 lt!341903)))

(declare-fun res!519818 () Bool)

(assert (=> b!768501 (= res!519818 (= (seekEntryOrOpen!0 (select (arr!20237 a!3186) j!159) a!3186 mask!3328) (Found!7844 j!159)))))

(assert (=> b!768501 (=> (not res!519818) (not e!427975))))

(declare-fun b!768502 () Bool)

(declare-fun call!35100 () Bool)

(assert (=> b!768502 (= e!427976 call!35100)))

(declare-fun bm!35097 () Bool)

(assert (=> bm!35097 (= call!35100 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!159 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun b!768503 () Bool)

(assert (=> b!768503 (= e!427975 call!35100)))

(assert (= (and d!101489 (not res!519819)) b!768500))

(assert (= (and b!768500 c!84735) b!768501))

(assert (= (and b!768500 (not c!84735)) b!768502))

(assert (= (and b!768501 res!519818) b!768503))

(assert (= (or b!768503 b!768502) bm!35097))

(assert (=> b!768500 m!713791))

(assert (=> b!768500 m!713791))

(assert (=> b!768500 m!713797))

(assert (=> b!768501 m!713791))

(declare-fun m!714079 () Bool)

(assert (=> b!768501 m!714079))

(declare-fun m!714081 () Bool)

(assert (=> b!768501 m!714081))

(assert (=> b!768501 m!713791))

(assert (=> b!768501 m!713811))

(declare-fun m!714083 () Bool)

(assert (=> bm!35097 m!714083))

(assert (=> b!768127 d!101489))

(declare-fun d!101491 () Bool)

(assert (=> d!101491 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!341906 () Unit!26414)

(declare-fun choose!38 (array!42278 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26414)

(assert (=> d!101491 (= lt!341906 (choose!38 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(assert (=> d!101491 (validMask!0 mask!3328)))

(assert (=> d!101491 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159) lt!341906)))

(declare-fun bs!21529 () Bool)

(assert (= bs!21529 d!101491))

(assert (=> bs!21529 m!713819))

(declare-fun m!714089 () Bool)

(assert (=> bs!21529 m!714089))

(assert (=> bs!21529 m!713823))

(assert (=> b!768127 d!101491))

(declare-fun d!101495 () Bool)

(declare-fun lt!341911 () (_ BitVec 32))

(assert (=> d!101495 (and (bvsge lt!341911 #b00000000000000000000000000000000) (bvslt lt!341911 (bvadd mask!3328 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!101495 (= lt!341911 (choose!52 index!1321 x!1131 mask!3328))))

(assert (=> d!101495 (validMask!0 mask!3328)))

(assert (=> d!101495 (= (nextIndex!0 index!1321 x!1131 mask!3328) lt!341911)))

(declare-fun bs!21530 () Bool)

(assert (= bs!21530 d!101495))

(declare-fun m!714095 () Bool)

(assert (=> bs!21530 m!714095))

(assert (=> bs!21530 m!713823))

(assert (=> b!768138 d!101495))

(declare-fun b!768528 () Bool)

(declare-fun e!427996 () SeekEntryResult!7844)

(declare-fun e!427994 () SeekEntryResult!7844)

(assert (=> b!768528 (= e!427996 e!427994)))

(declare-fun c!84743 () Bool)

(declare-fun lt!341912 () (_ BitVec 64))

(assert (=> b!768528 (= c!84743 (= lt!341912 (select (arr!20237 a!3186) j!159)))))

(declare-fun b!768530 () Bool)

(assert (=> b!768530 (= e!427994 (Found!7844 resIntermediateIndex!5))))

(declare-fun b!768531 () Bool)

(declare-fun e!427995 () SeekEntryResult!7844)

(assert (=> b!768531 (= e!427995 (MissingVacant!7844 resIntermediateIndex!5))))

(declare-fun b!768532 () Bool)

(assert (=> b!768532 (= e!427995 (seekKeyOrZeroReturnVacant!0 (bvadd resIntermediateX!5 #b00000000000000000000000000000001) (nextIndex!0 resIntermediateIndex!5 resIntermediateX!5 mask!3328) resIntermediateIndex!5 (select (arr!20237 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!768533 () Bool)

(assert (=> b!768533 (= e!427996 Undefined!7844)))

(declare-fun b!768529 () Bool)

(declare-fun c!84742 () Bool)

(assert (=> b!768529 (= c!84742 (= lt!341912 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!768529 (= e!427994 e!427995)))

(declare-fun d!101499 () Bool)

(declare-fun lt!341913 () SeekEntryResult!7844)

(assert (=> d!101499 (and (or (is-Undefined!7844 lt!341913) (not (is-Found!7844 lt!341913)) (and (bvsge (index!33744 lt!341913) #b00000000000000000000000000000000) (bvslt (index!33744 lt!341913) (size!20658 a!3186)))) (or (is-Undefined!7844 lt!341913) (is-Found!7844 lt!341913) (not (is-MissingVacant!7844 lt!341913)) (not (= (index!33746 lt!341913) resIntermediateIndex!5)) (and (bvsge (index!33746 lt!341913) #b00000000000000000000000000000000) (bvslt (index!33746 lt!341913) (size!20658 a!3186)))) (or (is-Undefined!7844 lt!341913) (ite (is-Found!7844 lt!341913) (= (select (arr!20237 a!3186) (index!33744 lt!341913)) (select (arr!20237 a!3186) j!159)) (and (is-MissingVacant!7844 lt!341913) (= (index!33746 lt!341913) resIntermediateIndex!5) (= (select (arr!20237 a!3186) (index!33746 lt!341913)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!101499 (= lt!341913 e!427996)))

(declare-fun c!84744 () Bool)

(assert (=> d!101499 (= c!84744 (bvsge resIntermediateX!5 #b01111111111111111111111111111110))))

(assert (=> d!101499 (= lt!341912 (select (arr!20237 a!3186) resIntermediateIndex!5))))

(assert (=> d!101499 (validMask!0 mask!3328)))

(assert (=> d!101499 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20237 a!3186) j!159) a!3186 mask!3328) lt!341913)))

(assert (= (and d!101499 c!84744) b!768533))

(assert (= (and d!101499 (not c!84744)) b!768528))

(assert (= (and b!768528 c!84743) b!768530))

(assert (= (and b!768528 (not c!84743)) b!768529))

(assert (= (and b!768529 c!84742) b!768531))

(assert (= (and b!768529 (not c!84742)) b!768532))

(declare-fun m!714097 () Bool)

(assert (=> b!768532 m!714097))

(assert (=> b!768532 m!714097))

(assert (=> b!768532 m!713791))

(declare-fun m!714099 () Bool)

(assert (=> b!768532 m!714099))

(declare-fun m!714101 () Bool)

(assert (=> d!101499 m!714101))

(declare-fun m!714103 () Bool)

(assert (=> d!101499 m!714103))

(assert (=> d!101499 m!713787))

(assert (=> d!101499 m!713823))

(assert (=> b!768140 d!101499))

(declare-fun bm!35103 () Bool)

(declare-fun call!35106 () Bool)

(declare-fun c!84750 () Bool)

(assert (=> bm!35103 (= call!35106 (arrayNoDuplicates!0 a!3186 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!84750 (Cons!14288 (select (arr!20237 a!3186) #b00000000000000000000000000000000) Nil!14289) Nil!14289)))))

(declare-fun b!768550 () Bool)

(declare-fun e!428011 () Bool)

(assert (=> b!768550 (= e!428011 call!35106)))

(declare-fun b!768551 () Bool)

(declare-fun e!428008 () Bool)

(declare-fun e!428009 () Bool)

(assert (=> b!768551 (= e!428008 e!428009)))

(declare-fun res!519840 () Bool)

(assert (=> b!768551 (=> (not res!519840) (not e!428009))))

(declare-fun e!428010 () Bool)

(assert (=> b!768551 (= res!519840 (not e!428010))))

(declare-fun res!519838 () Bool)

(assert (=> b!768551 (=> (not res!519838) (not e!428010))))

(assert (=> b!768551 (= res!519838 (validKeyInArray!0 (select (arr!20237 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!768552 () Bool)

(assert (=> b!768552 (= e!428009 e!428011)))

(assert (=> b!768552 (= c!84750 (validKeyInArray!0 (select (arr!20237 a!3186) #b00000000000000000000000000000000)))))

(declare-fun d!101501 () Bool)

(declare-fun res!519839 () Bool)

(assert (=> d!101501 (=> res!519839 e!428008)))

(assert (=> d!101501 (= res!519839 (bvsge #b00000000000000000000000000000000 (size!20658 a!3186)))))

(assert (=> d!101501 (= (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14289) e!428008)))

(declare-fun b!768553 () Bool)

(assert (=> b!768553 (= e!428011 call!35106)))

(declare-fun b!768554 () Bool)

(declare-fun contains!4088 (List!14292 (_ BitVec 64)) Bool)

(assert (=> b!768554 (= e!428010 (contains!4088 Nil!14289 (select (arr!20237 a!3186) #b00000000000000000000000000000000)))))

(assert (= (and d!101501 (not res!519839)) b!768551))

(assert (= (and b!768551 res!519838) b!768554))

(assert (= (and b!768551 res!519840) b!768552))

(assert (= (and b!768552 c!84750) b!768550))

(assert (= (and b!768552 (not c!84750)) b!768553))

(assert (= (or b!768550 b!768553) bm!35103))

(assert (=> bm!35103 m!713997))

(declare-fun m!714119 () Bool)

(assert (=> bm!35103 m!714119))

(assert (=> b!768551 m!713997))

(assert (=> b!768551 m!713997))

(assert (=> b!768551 m!714053))

(assert (=> b!768552 m!713997))

(assert (=> b!768552 m!713997))

(assert (=> b!768552 m!714053))

(assert (=> b!768554 m!713997))

(assert (=> b!768554 m!713997))

(declare-fun m!714129 () Bool)

(assert (=> b!768554 m!714129))

(assert (=> b!768139 d!101501))

(assert (=> b!768141 d!101473))

(declare-fun b!768564 () Bool)

(declare-fun e!428021 () SeekEntryResult!7844)

(assert (=> b!768564 (= e!428021 (Intermediate!7844 false (toIndex!0 (select (arr!20237 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!768565 () Bool)

(declare-fun e!428017 () Bool)

(declare-fun lt!341921 () SeekEntryResult!7844)

(assert (=> b!768565 (= e!428017 (bvsge (x!64691 lt!341921) #b01111111111111111111111111111110))))

(declare-fun b!768566 () Bool)

(assert (=> b!768566 (and (bvsge (index!33745 lt!341921) #b00000000000000000000000000000000) (bvslt (index!33745 lt!341921) (size!20658 a!3186)))))

(declare-fun e!428019 () Bool)

(assert (=> b!768566 (= e!428019 (= (select (arr!20237 a!3186) (index!33745 lt!341921)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!768567 () Bool)

(declare-fun e!428020 () SeekEntryResult!7844)

(assert (=> b!768567 (= e!428020 (Intermediate!7844 true (toIndex!0 (select (arr!20237 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!768568 () Bool)

(assert (=> b!768568 (= e!428021 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!20237 a!3186) j!159) mask!3328) #b00000000000000000000000000000000 mask!3328) (select (arr!20237 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!768569 () Bool)

(assert (=> b!768569 (and (bvsge (index!33745 lt!341921) #b00000000000000000000000000000000) (bvslt (index!33745 lt!341921) (size!20658 a!3186)))))

(declare-fun res!519845 () Bool)

(assert (=> b!768569 (= res!519845 (= (select (arr!20237 a!3186) (index!33745 lt!341921)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!768569 (=> res!519845 e!428019)))

(declare-fun b!768570 () Bool)

(assert (=> b!768570 (and (bvsge (index!33745 lt!341921) #b00000000000000000000000000000000) (bvslt (index!33745 lt!341921) (size!20658 a!3186)))))

(declare-fun res!519844 () Bool)

(assert (=> b!768570 (= res!519844 (= (select (arr!20237 a!3186) (index!33745 lt!341921)) (select (arr!20237 a!3186) j!159)))))

(assert (=> b!768570 (=> res!519844 e!428019)))

(declare-fun e!428018 () Bool)

(assert (=> b!768570 (= e!428018 e!428019)))

(declare-fun d!101511 () Bool)

(assert (=> d!101511 e!428017))

(declare-fun c!84755 () Bool)

(assert (=> d!101511 (= c!84755 (and (is-Intermediate!7844 lt!341921) (undefined!8656 lt!341921)))))

(assert (=> d!101511 (= lt!341921 e!428020)))

(declare-fun c!84754 () Bool)

(assert (=> d!101511 (= c!84754 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!341922 () (_ BitVec 64))

(assert (=> d!101511 (= lt!341922 (select (arr!20237 a!3186) (toIndex!0 (select (arr!20237 a!3186) j!159) mask!3328)))))

(assert (=> d!101511 (validMask!0 mask!3328)))

(assert (=> d!101511 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20237 a!3186) j!159) mask!3328) (select (arr!20237 a!3186) j!159) a!3186 mask!3328) lt!341921)))

(declare-fun b!768571 () Bool)

(assert (=> b!768571 (= e!428020 e!428021)))

(declare-fun c!84756 () Bool)

(assert (=> b!768571 (= c!84756 (or (= lt!341922 (select (arr!20237 a!3186) j!159)) (= (bvadd lt!341922 lt!341922) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!768572 () Bool)

(assert (=> b!768572 (= e!428017 e!428018)))

(declare-fun res!519846 () Bool)

(assert (=> b!768572 (= res!519846 (and (is-Intermediate!7844 lt!341921) (not (undefined!8656 lt!341921)) (bvslt (x!64691 lt!341921) #b01111111111111111111111111111110) (bvsge (x!64691 lt!341921) #b00000000000000000000000000000000) (bvsge (x!64691 lt!341921) #b00000000000000000000000000000000)))))

(assert (=> b!768572 (=> (not res!519846) (not e!428018))))

(assert (= (and d!101511 c!84754) b!768567))

(assert (= (and d!101511 (not c!84754)) b!768571))

(assert (= (and b!768571 c!84756) b!768564))

(assert (= (and b!768571 (not c!84756)) b!768568))

(assert (= (and d!101511 c!84755) b!768565))

(assert (= (and d!101511 (not c!84755)) b!768572))

(assert (= (and b!768572 res!519846) b!768570))

(assert (= (and b!768570 (not res!519844)) b!768569))

(assert (= (and b!768569 (not res!519845)) b!768566))

(assert (=> b!768568 m!713815))

(declare-fun m!714139 () Bool)

(assert (=> b!768568 m!714139))

(assert (=> b!768568 m!714139))

(assert (=> b!768568 m!713791))

(declare-fun m!714143 () Bool)

(assert (=> b!768568 m!714143))

(assert (=> d!101511 m!713815))

(declare-fun m!714145 () Bool)

(assert (=> d!101511 m!714145))

(assert (=> d!101511 m!713823))

(declare-fun m!714147 () Bool)

(assert (=> b!768569 m!714147))

(assert (=> b!768570 m!714147))

(assert (=> b!768566 m!714147))

(assert (=> b!768130 d!101511))

(declare-fun d!101515 () Bool)

(declare-fun lt!341926 () (_ BitVec 32))

(declare-fun lt!341925 () (_ BitVec 32))

(assert (=> d!101515 (= lt!341926 (bvmul (bvxor lt!341925 (bvlshr lt!341925 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!101515 (= lt!341925 ((_ extract 31 0) (bvand (bvxor (select (arr!20237 a!3186) j!159) (bvlshr (select (arr!20237 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!101515 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!519798 (let ((h!15386 ((_ extract 31 0) (bvand (bvxor (select (arr!20237 a!3186) j!159) (bvlshr (select (arr!20237 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!64699 (bvmul (bvxor h!15386 (bvlshr h!15386 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!64699 (bvlshr x!64699 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!519798 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!519798 #b00000000000000000000000000000000))))))

(assert (=> d!101515 (= (toIndex!0 (select (arr!20237 a!3186) j!159) mask!3328) (bvand (bvxor lt!341926 (bvlshr lt!341926 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!768130 d!101515))

(declare-fun d!101517 () Bool)

(assert (=> d!101517 (= (validKeyInArray!0 k!2102) (and (not (= k!2102 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2102 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!768142 d!101517))

(push 1)

(assert (not d!101499))

(assert (not d!101469))

(assert (not bm!35097))

(assert (not b!768551))

(assert (not b!768254))

(assert (not b!768491))

(assert (not b!768497))

(assert (not b!768426))

(assert (not b!768500))

(assert (not d!101427))

(assert (not b!768397))

(assert (not b!768435))

(assert (not d!101491))

(assert (not b!768501))

(assert (not b!768568))

(assert (not d!101467))

(assert (not d!101435))

(assert (not d!101473))

(assert (not b!768532))

(assert (not b!768444))

(assert (not bm!35103))

(assert (not b!768490))

(assert (not b!768554))

(assert (not bm!35096))

(assert (not d!101415))

(assert (not b!768318))

(assert (not d!101511))

(assert (not d!101495))

(assert (not b!768389))

(assert (not b!768552))

(assert (not d!101483))

(check-sat)

(pop 1)

(push 1)

(check-sat)

