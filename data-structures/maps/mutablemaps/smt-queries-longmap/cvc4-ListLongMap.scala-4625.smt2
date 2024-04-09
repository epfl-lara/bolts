; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64406 () Bool)

(assert start!64406)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!724151 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((array!40940 0))(
  ( (array!40941 (arr!19589 (Array (_ BitVec 32) (_ BitVec 64))) (size!20010 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40940)

(declare-fun e!405624 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7196 0))(
  ( (MissingZero!7196 (index!31151 (_ BitVec 32))) (Found!7196 (index!31152 (_ BitVec 32))) (Intermediate!7196 (undefined!8008 Bool) (index!31153 (_ BitVec 32)) (x!62166 (_ BitVec 32))) (Undefined!7196) (MissingVacant!7196 (index!31154 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40940 (_ BitVec 32)) SeekEntryResult!7196)

(assert (=> b!724151 (= e!405624 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19589 a!3186) j!159) a!3186 mask!3328) (Found!7196 j!159)))))

(declare-fun b!724152 () Bool)

(declare-fun res!485769 () Bool)

(declare-fun e!405622 () Bool)

(assert (=> b!724152 (=> (not res!485769) (not e!405622))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40940 (_ BitVec 32)) Bool)

(assert (=> b!724152 (= res!485769 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!724153 () Bool)

(declare-fun res!485767 () Bool)

(assert (=> b!724153 (=> (not res!485767) (not e!405622))))

(declare-datatypes ((List!13644 0))(
  ( (Nil!13641) (Cons!13640 (h!14694 (_ BitVec 64)) (t!19967 List!13644)) )
))
(declare-fun arrayNoDuplicates!0 (array!40940 (_ BitVec 32) List!13644) Bool)

(assert (=> b!724153 (= res!485767 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13641))))

(declare-fun b!724154 () Bool)

(declare-fun e!405621 () Bool)

(declare-fun e!405620 () Bool)

(assert (=> b!724154 (= e!405621 e!405620)))

(declare-fun res!485757 () Bool)

(assert (=> b!724154 (=> (not res!485757) (not e!405620))))

(declare-fun lt!320898 () (_ BitVec 64))

(declare-fun lt!320897 () array!40940)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40940 (_ BitVec 32)) SeekEntryResult!7196)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!724154 (= res!485757 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!320898 mask!3328) lt!320898 lt!320897 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!320898 lt!320897 mask!3328)))))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!724154 (= lt!320898 (select (store (arr!19589 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!724154 (= lt!320897 (array!40941 (store (arr!19589 a!3186) i!1173 k!2102) (size!20010 a!3186)))))

(declare-fun b!724155 () Bool)

(assert (=> b!724155 (= e!405622 e!405621)))

(declare-fun res!485764 () Bool)

(assert (=> b!724155 (=> (not res!485764) (not e!405621))))

(declare-fun lt!320899 () SeekEntryResult!7196)

(assert (=> b!724155 (= res!485764 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19589 a!3186) j!159) mask!3328) (select (arr!19589 a!3186) j!159) a!3186 mask!3328) lt!320899))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!724155 (= lt!320899 (Intermediate!7196 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!724156 () Bool)

(declare-fun res!485760 () Bool)

(declare-fun e!405619 () Bool)

(assert (=> b!724156 (=> (not res!485760) (not e!405619))))

(declare-fun arrayContainsKey!0 (array!40940 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!724156 (= res!485760 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!724157 () Bool)

(declare-fun res!485759 () Bool)

(assert (=> b!724157 (=> (not res!485759) (not e!405619))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!724157 (= res!485759 (validKeyInArray!0 k!2102))))

(declare-fun b!724158 () Bool)

(assert (=> b!724158 (= e!405624 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19589 a!3186) j!159) a!3186 mask!3328) lt!320899))))

(declare-fun b!724159 () Bool)

(declare-fun res!485756 () Bool)

(assert (=> b!724159 (=> (not res!485756) (not e!405621))))

(assert (=> b!724159 (= res!485756 e!405624)))

(declare-fun c!79569 () Bool)

(assert (=> b!724159 (= c!79569 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!724160 () Bool)

(assert (=> b!724160 (= e!405619 e!405622)))

(declare-fun res!485768 () Bool)

(assert (=> b!724160 (=> (not res!485768) (not e!405622))))

(declare-fun lt!320896 () SeekEntryResult!7196)

(assert (=> b!724160 (= res!485768 (or (= lt!320896 (MissingZero!7196 i!1173)) (= lt!320896 (MissingVacant!7196 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40940 (_ BitVec 32)) SeekEntryResult!7196)

(assert (=> b!724160 (= lt!320896 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun res!485763 () Bool)

(assert (=> start!64406 (=> (not res!485763) (not e!405619))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64406 (= res!485763 (validMask!0 mask!3328))))

(assert (=> start!64406 e!405619))

(assert (=> start!64406 true))

(declare-fun array_inv!15363 (array!40940) Bool)

(assert (=> start!64406 (array_inv!15363 a!3186)))

(declare-fun b!724161 () Bool)

(declare-fun res!485761 () Bool)

(assert (=> b!724161 (=> (not res!485761) (not e!405619))))

(assert (=> b!724161 (= res!485761 (and (= (size!20010 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20010 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20010 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!724162 () Bool)

(declare-fun res!485765 () Bool)

(assert (=> b!724162 (=> (not res!485765) (not e!405621))))

(assert (=> b!724162 (= res!485765 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19589 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!724163 () Bool)

(declare-fun res!485758 () Bool)

(assert (=> b!724163 (=> (not res!485758) (not e!405622))))

(assert (=> b!724163 (= res!485758 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20010 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20010 a!3186))))))

(declare-fun b!724164 () Bool)

(assert (=> b!724164 (= e!405620 (not (or (bvslt mask!3328 #b00000000000000000000000000000000) (bvsge resIntermediateIndex!5 (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge resIntermediateX!5 #b00000000000000000000000000000000))))))

(declare-fun e!405618 () Bool)

(assert (=> b!724164 e!405618))

(declare-fun res!485762 () Bool)

(assert (=> b!724164 (=> (not res!485762) (not e!405618))))

(assert (=> b!724164 (= res!485762 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24710 0))(
  ( (Unit!24711) )
))
(declare-fun lt!320900 () Unit!24710)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!40940 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24710)

(assert (=> b!724164 (= lt!320900 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!724165 () Bool)

(declare-fun res!485766 () Bool)

(assert (=> b!724165 (=> (not res!485766) (not e!405619))))

(assert (=> b!724165 (= res!485766 (validKeyInArray!0 (select (arr!19589 a!3186) j!159)))))

(declare-fun b!724166 () Bool)

(assert (=> b!724166 (= e!405618 (= (seekEntryOrOpen!0 (select (arr!19589 a!3186) j!159) a!3186 mask!3328) (Found!7196 j!159)))))

(assert (= (and start!64406 res!485763) b!724161))

(assert (= (and b!724161 res!485761) b!724165))

(assert (= (and b!724165 res!485766) b!724157))

(assert (= (and b!724157 res!485759) b!724156))

(assert (= (and b!724156 res!485760) b!724160))

(assert (= (and b!724160 res!485768) b!724152))

(assert (= (and b!724152 res!485769) b!724153))

(assert (= (and b!724153 res!485767) b!724163))

(assert (= (and b!724163 res!485758) b!724155))

(assert (= (and b!724155 res!485764) b!724162))

(assert (= (and b!724162 res!485765) b!724159))

(assert (= (and b!724159 c!79569) b!724158))

(assert (= (and b!724159 (not c!79569)) b!724151))

(assert (= (and b!724159 res!485756) b!724154))

(assert (= (and b!724154 res!485757) b!724164))

(assert (= (and b!724164 res!485762) b!724166))

(declare-fun m!678623 () Bool)

(assert (=> b!724165 m!678623))

(assert (=> b!724165 m!678623))

(declare-fun m!678625 () Bool)

(assert (=> b!724165 m!678625))

(assert (=> b!724158 m!678623))

(assert (=> b!724158 m!678623))

(declare-fun m!678627 () Bool)

(assert (=> b!724158 m!678627))

(declare-fun m!678629 () Bool)

(assert (=> b!724164 m!678629))

(declare-fun m!678631 () Bool)

(assert (=> b!724164 m!678631))

(declare-fun m!678633 () Bool)

(assert (=> b!724152 m!678633))

(assert (=> b!724151 m!678623))

(assert (=> b!724151 m!678623))

(declare-fun m!678635 () Bool)

(assert (=> b!724151 m!678635))

(assert (=> b!724166 m!678623))

(assert (=> b!724166 m!678623))

(declare-fun m!678637 () Bool)

(assert (=> b!724166 m!678637))

(declare-fun m!678639 () Bool)

(assert (=> b!724157 m!678639))

(declare-fun m!678641 () Bool)

(assert (=> b!724153 m!678641))

(declare-fun m!678643 () Bool)

(assert (=> start!64406 m!678643))

(declare-fun m!678645 () Bool)

(assert (=> start!64406 m!678645))

(declare-fun m!678647 () Bool)

(assert (=> b!724156 m!678647))

(declare-fun m!678649 () Bool)

(assert (=> b!724154 m!678649))

(declare-fun m!678651 () Bool)

(assert (=> b!724154 m!678651))

(declare-fun m!678653 () Bool)

(assert (=> b!724154 m!678653))

(declare-fun m!678655 () Bool)

(assert (=> b!724154 m!678655))

(assert (=> b!724154 m!678649))

(declare-fun m!678657 () Bool)

(assert (=> b!724154 m!678657))

(assert (=> b!724155 m!678623))

(assert (=> b!724155 m!678623))

(declare-fun m!678659 () Bool)

(assert (=> b!724155 m!678659))

(assert (=> b!724155 m!678659))

(assert (=> b!724155 m!678623))

(declare-fun m!678661 () Bool)

(assert (=> b!724155 m!678661))

(declare-fun m!678663 () Bool)

(assert (=> b!724162 m!678663))

(declare-fun m!678665 () Bool)

(assert (=> b!724160 m!678665))

(push 1)

(assert (not b!724152))

(assert (not b!724156))

(assert (not b!724157))

(assert (not b!724166))

(assert (not b!724151))

(assert (not b!724155))

(assert (not b!724154))

(assert (not b!724164))

(assert (not b!724153))

(assert (not b!724165))

(assert (not b!724160))

(assert (not start!64406))

(assert (not b!724158))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!724229 () Bool)

(declare-fun e!405660 () Bool)

(declare-fun call!34788 () Bool)

(assert (=> b!724229 (= e!405660 call!34788)))

(declare-fun b!724230 () Bool)

(declare-fun e!405661 () Bool)

(assert (=> b!724230 (= e!405661 e!405660)))

(declare-fun lt!320930 () (_ BitVec 64))

(assert (=> b!724230 (= lt!320930 (select (arr!19589 a!3186) #b00000000000000000000000000000000))))

(declare-fun lt!320932 () Unit!24710)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!40940 (_ BitVec 64) (_ BitVec 32)) Unit!24710)

(assert (=> b!724230 (= lt!320932 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!320930 #b00000000000000000000000000000000))))

(assert (=> b!724230 (arrayContainsKey!0 a!3186 lt!320930 #b00000000000000000000000000000000)))

(declare-fun lt!320931 () Unit!24710)

(assert (=> b!724230 (= lt!320931 lt!320932)))

(declare-fun res!485788 () Bool)

(assert (=> b!724230 (= res!485788 (= (seekEntryOrOpen!0 (select (arr!19589 a!3186) #b00000000000000000000000000000000) a!3186 mask!3328) (Found!7196 #b00000000000000000000000000000000)))))

(assert (=> b!724230 (=> (not res!485788) (not e!405660))))

(declare-fun d!99245 () Bool)

(declare-fun res!485787 () Bool)

(declare-fun e!405662 () Bool)

(assert (=> d!99245 (=> res!485787 e!405662)))

(assert (=> d!99245 (= res!485787 (bvsge #b00000000000000000000000000000000 (size!20010 a!3186)))))

(assert (=> d!99245 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328) e!405662)))

(declare-fun b!724231 () Bool)

(assert (=> b!724231 (= e!405662 e!405661)))

(declare-fun c!79593 () Bool)

(assert (=> b!724231 (= c!79593 (validKeyInArray!0 (select (arr!19589 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!724232 () Bool)

(assert (=> b!724232 (= e!405661 call!34788)))

(declare-fun bm!34785 () Bool)

(assert (=> bm!34785 (= call!34788 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3186 mask!3328))))

(assert (= (and d!99245 (not res!485787)) b!724231))

(assert (= (and b!724231 c!79593) b!724230))

(assert (= (and b!724231 (not c!79593)) b!724232))

(assert (= (and b!724230 res!485788) b!724229))

(assert (= (or b!724229 b!724232) bm!34785))

(declare-fun m!678685 () Bool)

(assert (=> b!724230 m!678685))

(declare-fun m!678687 () Bool)

(assert (=> b!724230 m!678687))

(declare-fun m!678691 () Bool)

(assert (=> b!724230 m!678691))

(assert (=> b!724230 m!678685))

(declare-fun m!678695 () Bool)

(assert (=> b!724230 m!678695))

(assert (=> b!724231 m!678685))

(assert (=> b!724231 m!678685))

(declare-fun m!678699 () Bool)

(assert (=> b!724231 m!678699))

(declare-fun m!678703 () Bool)

(assert (=> bm!34785 m!678703))

(assert (=> b!724152 d!99245))

(declare-fun b!724290 () Bool)

(declare-fun e!405694 () SeekEntryResult!7196)

(assert (=> b!724290 (= e!405694 (MissingVacant!7196 resIntermediateIndex!5))))

(declare-fun b!724291 () Bool)

(declare-fun c!79617 () Bool)

(declare-fun lt!320949 () (_ BitVec 64))

(assert (=> b!724291 (= c!79617 (= lt!320949 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!405695 () SeekEntryResult!7196)

(assert (=> b!724291 (= e!405695 e!405694)))

(declare-fun b!724292 () Bool)

(declare-fun e!405696 () SeekEntryResult!7196)

(assert (=> b!724292 (= e!405696 e!405695)))

(declare-fun c!79616 () Bool)

(assert (=> b!724292 (= c!79616 (= lt!320949 (select (arr!19589 a!3186) j!159)))))

(declare-fun d!99253 () Bool)

(declare-fun lt!320950 () SeekEntryResult!7196)

(assert (=> d!99253 (and (or (is-Undefined!7196 lt!320950) (not (is-Found!7196 lt!320950)) (and (bvsge (index!31152 lt!320950) #b00000000000000000000000000000000) (bvslt (index!31152 lt!320950) (size!20010 a!3186)))) (or (is-Undefined!7196 lt!320950) (is-Found!7196 lt!320950) (not (is-MissingVacant!7196 lt!320950)) (not (= (index!31154 lt!320950) resIntermediateIndex!5)) (and (bvsge (index!31154 lt!320950) #b00000000000000000000000000000000) (bvslt (index!31154 lt!320950) (size!20010 a!3186)))) (or (is-Undefined!7196 lt!320950) (ite (is-Found!7196 lt!320950) (= (select (arr!19589 a!3186) (index!31152 lt!320950)) (select (arr!19589 a!3186) j!159)) (and (is-MissingVacant!7196 lt!320950) (= (index!31154 lt!320950) resIntermediateIndex!5) (= (select (arr!19589 a!3186) (index!31154 lt!320950)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!99253 (= lt!320950 e!405696)))

(declare-fun c!79615 () Bool)

(assert (=> d!99253 (= c!79615 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!99253 (= lt!320949 (select (arr!19589 a!3186) index!1321))))

(assert (=> d!99253 (validMask!0 mask!3328)))

(assert (=> d!99253 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19589 a!3186) j!159) a!3186 mask!3328) lt!320950)))

(declare-fun b!724293 () Bool)

(assert (=> b!724293 (= e!405695 (Found!7196 index!1321))))

(declare-fun b!724294 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!724294 (= e!405694 (seekKeyOrZeroReturnVacant!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) resIntermediateIndex!5 (select (arr!19589 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!724295 () Bool)

(assert (=> b!724295 (= e!405696 Undefined!7196)))

(assert (= (and d!99253 c!79615) b!724295))

(assert (= (and d!99253 (not c!79615)) b!724292))

(assert (= (and b!724292 c!79616) b!724293))

(assert (= (and b!724292 (not c!79616)) b!724291))

(assert (= (and b!724291 c!79617) b!724290))

(assert (= (and b!724291 (not c!79617)) b!724294))

(declare-fun m!678727 () Bool)

(assert (=> d!99253 m!678727))

(declare-fun m!678729 () Bool)

(assert (=> d!99253 m!678729))

(declare-fun m!678731 () Bool)

(assert (=> d!99253 m!678731))

(assert (=> d!99253 m!678643))

(declare-fun m!678733 () Bool)

(assert (=> b!724294 m!678733))

(assert (=> b!724294 m!678733))

(assert (=> b!724294 m!678623))

(declare-fun m!678735 () Bool)

(assert (=> b!724294 m!678735))

(assert (=> b!724151 d!99253))

(declare-fun b!724296 () Bool)

(declare-fun e!405697 () Bool)

(declare-fun call!34789 () Bool)

(assert (=> b!724296 (= e!405697 call!34789)))

(declare-fun b!724297 () Bool)

(declare-fun e!405698 () Bool)

(assert (=> b!724297 (= e!405698 e!405697)))

(declare-fun lt!320951 () (_ BitVec 64))

(assert (=> b!724297 (= lt!320951 (select (arr!19589 a!3186) j!159))))

(declare-fun lt!320953 () Unit!24710)

(assert (=> b!724297 (= lt!320953 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!320951 j!159))))

(assert (=> b!724297 (arrayContainsKey!0 a!3186 lt!320951 #b00000000000000000000000000000000)))

(declare-fun lt!320952 () Unit!24710)

(assert (=> b!724297 (= lt!320952 lt!320953)))

(declare-fun res!485805 () Bool)

(assert (=> b!724297 (= res!485805 (= (seekEntryOrOpen!0 (select (arr!19589 a!3186) j!159) a!3186 mask!3328) (Found!7196 j!159)))))

(assert (=> b!724297 (=> (not res!485805) (not e!405697))))

(declare-fun d!99271 () Bool)

(declare-fun res!485804 () Bool)

(declare-fun e!405699 () Bool)

(assert (=> d!99271 (=> res!485804 e!405699)))

(assert (=> d!99271 (= res!485804 (bvsge j!159 (size!20010 a!3186)))))

(assert (=> d!99271 (= (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328) e!405699)))

(declare-fun b!724298 () Bool)

(assert (=> b!724298 (= e!405699 e!405698)))

(declare-fun c!79618 () Bool)

(assert (=> b!724298 (= c!79618 (validKeyInArray!0 (select (arr!19589 a!3186) j!159)))))

(declare-fun b!724299 () Bool)

(assert (=> b!724299 (= e!405698 call!34789)))

(declare-fun bm!34786 () Bool)

(assert (=> bm!34786 (= call!34789 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!159 #b00000000000000000000000000000001) a!3186 mask!3328))))

(assert (= (and d!99271 (not res!485804)) b!724298))

(assert (= (and b!724298 c!79618) b!724297))

(assert (= (and b!724298 (not c!79618)) b!724299))

(assert (= (and b!724297 res!485805) b!724296))

(assert (= (or b!724296 b!724299) bm!34786))

(assert (=> b!724297 m!678623))

(declare-fun m!678737 () Bool)

(assert (=> b!724297 m!678737))

(declare-fun m!678739 () Bool)

(assert (=> b!724297 m!678739))

(assert (=> b!724297 m!678623))

(assert (=> b!724297 m!678637))

(assert (=> b!724298 m!678623))

(assert (=> b!724298 m!678623))

(assert (=> b!724298 m!678625))

(declare-fun m!678741 () Bool)

(assert (=> bm!34786 m!678741))

(assert (=> b!724164 d!99271))

(declare-fun d!99273 () Bool)

(assert (=> d!99273 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!320959 () Unit!24710)

(declare-fun choose!38 (array!40940 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24710)

(assert (=> d!99273 (= lt!320959 (choose!38 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(assert (=> d!99273 (validMask!0 mask!3328)))

(assert (=> d!99273 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159) lt!320959)))

(declare-fun bs!20804 () Bool)

(assert (= bs!20804 d!99273))

(assert (=> bs!20804 m!678629))

(declare-fun m!678751 () Bool)

(assert (=> bs!20804 m!678751))

(assert (=> bs!20804 m!678643))

(assert (=> b!724164 d!99273))

(declare-fun b!724355 () Bool)

(declare-fun e!405738 () Bool)

(declare-fun e!405736 () Bool)

(assert (=> b!724355 (= e!405738 e!405736)))

(declare-fun res!485823 () Bool)

(assert (=> b!724355 (=> (not res!485823) (not e!405736))))

(declare-fun e!405739 () Bool)

(assert (=> b!724355 (= res!485823 (not e!405739))))

(declare-fun res!485825 () Bool)

(assert (=> b!724355 (=> (not res!485825) (not e!405739))))

(assert (=> b!724355 (= res!485825 (validKeyInArray!0 (select (arr!19589 a!3186) #b00000000000000000000000000000000)))))

(declare-fun bm!34792 () Bool)

(declare-fun call!34795 () Bool)

(declare-fun c!79638 () Bool)

(assert (=> bm!34792 (= call!34795 (arrayNoDuplicates!0 a!3186 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!79638 (Cons!13640 (select (arr!19589 a!3186) #b00000000000000000000000000000000) Nil!13641) Nil!13641)))))

(declare-fun b!724356 () Bool)

(declare-fun e!405737 () Bool)

(assert (=> b!724356 (= e!405736 e!405737)))

(assert (=> b!724356 (= c!79638 (validKeyInArray!0 (select (arr!19589 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!724357 () Bool)

(assert (=> b!724357 (= e!405737 call!34795)))

(declare-fun b!724358 () Bool)

(assert (=> b!724358 (= e!405737 call!34795)))

(declare-fun d!99277 () Bool)

(declare-fun res!485824 () Bool)

(assert (=> d!99277 (=> res!485824 e!405738)))

(assert (=> d!99277 (= res!485824 (bvsge #b00000000000000000000000000000000 (size!20010 a!3186)))))

(assert (=> d!99277 (= (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13641) e!405738)))

(declare-fun b!724359 () Bool)

(declare-fun contains!4049 (List!13644 (_ BitVec 64)) Bool)

(assert (=> b!724359 (= e!405739 (contains!4049 Nil!13641 (select (arr!19589 a!3186) #b00000000000000000000000000000000)))))

(assert (= (and d!99277 (not res!485824)) b!724355))

(assert (= (and b!724355 res!485825) b!724359))

(assert (= (and b!724355 res!485823) b!724356))

(assert (= (and b!724356 c!79638) b!724358))

(assert (= (and b!724356 (not c!79638)) b!724357))

(assert (= (or b!724358 b!724357) bm!34792))

(assert (=> b!724355 m!678685))

(assert (=> b!724355 m!678685))

(assert (=> b!724355 m!678699))

(assert (=> bm!34792 m!678685))

(declare-fun m!678773 () Bool)

(assert (=> bm!34792 m!678773))

(assert (=> b!724356 m!678685))

(assert (=> b!724356 m!678685))

(assert (=> b!724356 m!678699))

(assert (=> b!724359 m!678685))

(assert (=> b!724359 m!678685))

(declare-fun m!678775 () Bool)

(assert (=> b!724359 m!678775))

(assert (=> b!724153 d!99277))

(declare-fun e!405761 () SeekEntryResult!7196)

(declare-fun b!724388 () Bool)

(declare-fun lt!320987 () SeekEntryResult!7196)

(assert (=> b!724388 (= e!405761 (seekKeyOrZeroReturnVacant!0 (x!62166 lt!320987) (index!31153 lt!320987) (index!31153 lt!320987) k!2102 a!3186 mask!3328))))

(declare-fun b!724389 () Bool)

(assert (=> b!724389 (= e!405761 (MissingZero!7196 (index!31153 lt!320987)))))

(declare-fun b!724390 () Bool)

(declare-fun e!405760 () SeekEntryResult!7196)

(declare-fun e!405762 () SeekEntryResult!7196)

(assert (=> b!724390 (= e!405760 e!405762)))

(declare-fun lt!320988 () (_ BitVec 64))

(assert (=> b!724390 (= lt!320988 (select (arr!19589 a!3186) (index!31153 lt!320987)))))

(declare-fun c!79649 () Bool)

(assert (=> b!724390 (= c!79649 (= lt!320988 k!2102))))

(declare-fun b!724391 () Bool)

(declare-fun c!79648 () Bool)

(assert (=> b!724391 (= c!79648 (= lt!320988 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!724391 (= e!405762 e!405761)))

(declare-fun d!99285 () Bool)

(declare-fun lt!320989 () SeekEntryResult!7196)

(assert (=> d!99285 (and (or (is-Undefined!7196 lt!320989) (not (is-Found!7196 lt!320989)) (and (bvsge (index!31152 lt!320989) #b00000000000000000000000000000000) (bvslt (index!31152 lt!320989) (size!20010 a!3186)))) (or (is-Undefined!7196 lt!320989) (is-Found!7196 lt!320989) (not (is-MissingZero!7196 lt!320989)) (and (bvsge (index!31151 lt!320989) #b00000000000000000000000000000000) (bvslt (index!31151 lt!320989) (size!20010 a!3186)))) (or (is-Undefined!7196 lt!320989) (is-Found!7196 lt!320989) (is-MissingZero!7196 lt!320989) (not (is-MissingVacant!7196 lt!320989)) (and (bvsge (index!31154 lt!320989) #b00000000000000000000000000000000) (bvslt (index!31154 lt!320989) (size!20010 a!3186)))) (or (is-Undefined!7196 lt!320989) (ite (is-Found!7196 lt!320989) (= (select (arr!19589 a!3186) (index!31152 lt!320989)) k!2102) (ite (is-MissingZero!7196 lt!320989) (= (select (arr!19589 a!3186) (index!31151 lt!320989)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!7196 lt!320989) (= (select (arr!19589 a!3186) (index!31154 lt!320989)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!99285 (= lt!320989 e!405760)))

(declare-fun c!79647 () Bool)

(assert (=> d!99285 (= c!79647 (and (is-Intermediate!7196 lt!320987) (undefined!8008 lt!320987)))))

(assert (=> d!99285 (= lt!320987 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2102 mask!3328) k!2102 a!3186 mask!3328))))

(assert (=> d!99285 (validMask!0 mask!3328)))

(assert (=> d!99285 (= (seekEntryOrOpen!0 k!2102 a!3186 mask!3328) lt!320989)))

(declare-fun b!724392 () Bool)

(assert (=> b!724392 (= e!405760 Undefined!7196)))

(declare-fun b!724393 () Bool)

(assert (=> b!724393 (= e!405762 (Found!7196 (index!31153 lt!320987)))))

(assert (= (and d!99285 c!79647) b!724392))

(assert (= (and d!99285 (not c!79647)) b!724390))

(assert (= (and b!724390 c!79649) b!724393))

(assert (= (and b!724390 (not c!79649)) b!724391))

(assert (= (and b!724391 c!79648) b!724389))

(assert (= (and b!724391 (not c!79648)) b!724388))

(declare-fun m!678795 () Bool)

(assert (=> b!724388 m!678795))

(declare-fun m!678797 () Bool)

(assert (=> b!724390 m!678797))

(assert (=> d!99285 m!678643))

(declare-fun m!678799 () Bool)

(assert (=> d!99285 m!678799))

(declare-fun m!678801 () Bool)

(assert (=> d!99285 m!678801))

(declare-fun m!678803 () Bool)

(assert (=> d!99285 m!678803))

(declare-fun m!678805 () Bool)

(assert (=> d!99285 m!678805))

(assert (=> d!99285 m!678803))

(declare-fun m!678807 () Bool)

(assert (=> d!99285 m!678807))

(assert (=> b!724160 d!99285))

(declare-fun d!99299 () Bool)

(assert (=> d!99299 (= (validKeyInArray!0 k!2102) (and (not (= k!2102 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2102 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!724157 d!99299))

(declare-fun b!724460 () Bool)

(declare-fun e!405803 () Bool)

(declare-fun lt!321019 () SeekEntryResult!7196)

(assert (=> b!724460 (= e!405803 (bvsge (x!62166 lt!321019) #b01111111111111111111111111111110))))

(declare-fun b!724461 () Bool)

(declare-fun e!405802 () SeekEntryResult!7196)

(assert (=> b!724461 (= e!405802 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) (select (arr!19589 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!724462 () Bool)

(declare-fun e!405801 () SeekEntryResult!7196)

(assert (=> b!724462 (= e!405801 e!405802)))

(declare-fun c!79678 () Bool)

(declare-fun lt!321018 () (_ BitVec 64))

(assert (=> b!724462 (= c!79678 (or (= lt!321018 (select (arr!19589 a!3186) j!159)) (= (bvadd lt!321018 lt!321018) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!724463 () Bool)

(assert (=> b!724463 (= e!405802 (Intermediate!7196 false index!1321 x!1131))))

(declare-fun b!724464 () Bool)

(declare-fun e!405804 () Bool)

(assert (=> b!724464 (= e!405803 e!405804)))

(declare-fun res!485852 () Bool)

(assert (=> b!724464 (= res!485852 (and (is-Intermediate!7196 lt!321019) (not (undefined!8008 lt!321019)) (bvslt (x!62166 lt!321019) #b01111111111111111111111111111110) (bvsge (x!62166 lt!321019) #b00000000000000000000000000000000) (bvsge (x!62166 lt!321019) x!1131)))))

(assert (=> b!724464 (=> (not res!485852) (not e!405804))))

(declare-fun b!724465 () Bool)

(assert (=> b!724465 (and (bvsge (index!31153 lt!321019) #b00000000000000000000000000000000) (bvslt (index!31153 lt!321019) (size!20010 a!3186)))))

(declare-fun res!485851 () Bool)

(assert (=> b!724465 (= res!485851 (= (select (arr!19589 a!3186) (index!31153 lt!321019)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!405800 () Bool)

(assert (=> b!724465 (=> res!485851 e!405800)))

(declare-fun b!724466 () Bool)

(assert (=> b!724466 (= e!405801 (Intermediate!7196 true index!1321 x!1131))))

(declare-fun b!724467 () Bool)

(assert (=> b!724467 (and (bvsge (index!31153 lt!321019) #b00000000000000000000000000000000) (bvslt (index!31153 lt!321019) (size!20010 a!3186)))))

(assert (=> b!724467 (= e!405800 (= (select (arr!19589 a!3186) (index!31153 lt!321019)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!724468 () Bool)

(assert (=> b!724468 (and (bvsge (index!31153 lt!321019) #b00000000000000000000000000000000) (bvslt (index!31153 lt!321019) (size!20010 a!3186)))))

(declare-fun res!485850 () Bool)

(assert (=> b!724468 (= res!485850 (= (select (arr!19589 a!3186) (index!31153 lt!321019)) (select (arr!19589 a!3186) j!159)))))

(assert (=> b!724468 (=> res!485850 e!405800)))

(assert (=> b!724468 (= e!405804 e!405800)))

(declare-fun d!99301 () Bool)

(assert (=> d!99301 e!405803))

(declare-fun c!79679 () Bool)

(assert (=> d!99301 (= c!79679 (and (is-Intermediate!7196 lt!321019) (undefined!8008 lt!321019)))))

(assert (=> d!99301 (= lt!321019 e!405801)))

(declare-fun c!79677 () Bool)

(assert (=> d!99301 (= c!79677 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!99301 (= lt!321018 (select (arr!19589 a!3186) index!1321))))

(assert (=> d!99301 (validMask!0 mask!3328)))

(assert (=> d!99301 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19589 a!3186) j!159) a!3186 mask!3328) lt!321019)))

(assert (= (and d!99301 c!79677) b!724466))

(assert (= (and d!99301 (not c!79677)) b!724462))

(assert (= (and b!724462 c!79678) b!724463))

(assert (= (and b!724462 (not c!79678)) b!724461))

(assert (= (and d!99301 c!79679) b!724460))

(assert (= (and d!99301 (not c!79679)) b!724464))

(assert (= (and b!724464 res!485852) b!724468))

(assert (= (and b!724468 (not res!485850)) b!724465))

(assert (= (and b!724465 (not res!485851)) b!724467))

(assert (=> d!99301 m!678731))

(assert (=> d!99301 m!678643))

(declare-fun m!678831 () Bool)

(assert (=> b!724468 m!678831))

(assert (=> b!724465 m!678831))

(assert (=> b!724461 m!678733))

(assert (=> b!724461 m!678733))

(assert (=> b!724461 m!678623))

(declare-fun m!678833 () Bool)

(assert (=> b!724461 m!678833))

(assert (=> b!724467 m!678831))

(assert (=> b!724158 d!99301))

(declare-fun d!99307 () Bool)

(assert (=> d!99307 (= (validKeyInArray!0 (select (arr!19589 a!3186) j!159)) (and (not (= (select (arr!19589 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!19589 a!3186) j!159) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!724165 d!99307))

(declare-fun d!99309 () Bool)

(assert (=> d!99309 (= (validMask!0 mask!3328) (and (or (= mask!3328 #b00000000000000000000000000000111) (= mask!3328 #b00000000000000000000000000001111) (= mask!3328 #b00000000000000000000000000011111) (= mask!3328 #b00000000000000000000000000111111) (= mask!3328 #b00000000000000000000000001111111) (= mask!3328 #b00000000000000000000000011111111) (= mask!3328 #b00000000000000000000000111111111) (= mask!3328 #b00000000000000000000001111111111) (= mask!3328 #b00000000000000000000011111111111) (= mask!3328 #b00000000000000000000111111111111) (= mask!3328 #b00000000000000000001111111111111) (= mask!3328 #b00000000000000000011111111111111) (= mask!3328 #b00000000000000000111111111111111) (= mask!3328 #b00000000000000001111111111111111) (= mask!3328 #b00000000000000011111111111111111) (= mask!3328 #b00000000000000111111111111111111) (= mask!3328 #b00000000000001111111111111111111) (= mask!3328 #b00000000000011111111111111111111) (= mask!3328 #b00000000000111111111111111111111) (= mask!3328 #b00000000001111111111111111111111) (= mask!3328 #b00000000011111111111111111111111) (= mask!3328 #b00000000111111111111111111111111) (= mask!3328 #b00000001111111111111111111111111) (= mask!3328 #b00000011111111111111111111111111) (= mask!3328 #b00000111111111111111111111111111) (= mask!3328 #b00001111111111111111111111111111) (= mask!3328 #b00011111111111111111111111111111) (= mask!3328 #b00111111111111111111111111111111)) (bvsle mask!3328 #b00111111111111111111111111111111)))))

(assert (=> start!64406 d!99309))

(declare-fun d!99315 () Bool)

(assert (=> d!99315 (= (array_inv!15363 a!3186) (bvsge (size!20010 a!3186) #b00000000000000000000000000000000))))

(assert (=> start!64406 d!99315))

(declare-fun b!724493 () Bool)

(declare-fun e!405825 () Bool)

(declare-fun lt!321026 () SeekEntryResult!7196)

(assert (=> b!724493 (= e!405825 (bvsge (x!62166 lt!321026) #b01111111111111111111111111111110))))

(declare-fun b!724494 () Bool)

(declare-fun e!405824 () SeekEntryResult!7196)

(assert (=> b!724494 (= e!405824 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!320898 mask!3328) #b00000000000000000000000000000000 mask!3328) lt!320898 lt!320897 mask!3328))))

(declare-fun b!724495 () Bool)

(declare-fun e!405823 () SeekEntryResult!7196)

(assert (=> b!724495 (= e!405823 e!405824)))

(declare-fun c!79687 () Bool)

(declare-fun lt!321025 () (_ BitVec 64))

(assert (=> b!724495 (= c!79687 (or (= lt!321025 lt!320898) (= (bvadd lt!321025 lt!321025) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!724496 () Bool)

(assert (=> b!724496 (= e!405824 (Intermediate!7196 false (toIndex!0 lt!320898 mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!724497 () Bool)

(declare-fun e!405826 () Bool)

(assert (=> b!724497 (= e!405825 e!405826)))

(declare-fun res!485867 () Bool)

(assert (=> b!724497 (= res!485867 (and (is-Intermediate!7196 lt!321026) (not (undefined!8008 lt!321026)) (bvslt (x!62166 lt!321026) #b01111111111111111111111111111110) (bvsge (x!62166 lt!321026) #b00000000000000000000000000000000) (bvsge (x!62166 lt!321026) #b00000000000000000000000000000000)))))

(assert (=> b!724497 (=> (not res!485867) (not e!405826))))

(declare-fun b!724498 () Bool)

(assert (=> b!724498 (and (bvsge (index!31153 lt!321026) #b00000000000000000000000000000000) (bvslt (index!31153 lt!321026) (size!20010 lt!320897)))))

(declare-fun res!485866 () Bool)

(assert (=> b!724498 (= res!485866 (= (select (arr!19589 lt!320897) (index!31153 lt!321026)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!405822 () Bool)

(assert (=> b!724498 (=> res!485866 e!405822)))

(declare-fun b!724499 () Bool)

(assert (=> b!724499 (= e!405823 (Intermediate!7196 true (toIndex!0 lt!320898 mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!724500 () Bool)

(assert (=> b!724500 (and (bvsge (index!31153 lt!321026) #b00000000000000000000000000000000) (bvslt (index!31153 lt!321026) (size!20010 lt!320897)))))

(assert (=> b!724500 (= e!405822 (= (select (arr!19589 lt!320897) (index!31153 lt!321026)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!724501 () Bool)

(assert (=> b!724501 (and (bvsge (index!31153 lt!321026) #b00000000000000000000000000000000) (bvslt (index!31153 lt!321026) (size!20010 lt!320897)))))

(declare-fun res!485865 () Bool)

(assert (=> b!724501 (= res!485865 (= (select (arr!19589 lt!320897) (index!31153 lt!321026)) lt!320898))))

(assert (=> b!724501 (=> res!485865 e!405822)))

(assert (=> b!724501 (= e!405826 e!405822)))

(declare-fun d!99319 () Bool)

(assert (=> d!99319 e!405825))

(declare-fun c!79688 () Bool)

(assert (=> d!99319 (= c!79688 (and (is-Intermediate!7196 lt!321026) (undefined!8008 lt!321026)))))

(assert (=> d!99319 (= lt!321026 e!405823)))

(declare-fun c!79686 () Bool)

(assert (=> d!99319 (= c!79686 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!99319 (= lt!321025 (select (arr!19589 lt!320897) (toIndex!0 lt!320898 mask!3328)))))

(assert (=> d!99319 (validMask!0 mask!3328)))

(assert (=> d!99319 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!320898 mask!3328) lt!320898 lt!320897 mask!3328) lt!321026)))

(assert (= (and d!99319 c!79686) b!724499))

(assert (= (and d!99319 (not c!79686)) b!724495))

(assert (= (and b!724495 c!79687) b!724496))

(assert (= (and b!724495 (not c!79687)) b!724494))

(assert (= (and d!99319 c!79688) b!724493))

(assert (= (and d!99319 (not c!79688)) b!724497))

(assert (= (and b!724497 res!485867) b!724501))

(assert (= (and b!724501 (not res!485865)) b!724498))

(assert (= (and b!724498 (not res!485866)) b!724500))

(assert (=> d!99319 m!678649))

(declare-fun m!678853 () Bool)

(assert (=> d!99319 m!678853))

(assert (=> d!99319 m!678643))

(declare-fun m!678855 () Bool)

(assert (=> b!724501 m!678855))

(assert (=> b!724498 m!678855))

(assert (=> b!724494 m!678649))

(declare-fun m!678857 () Bool)

(assert (=> b!724494 m!678857))

(assert (=> b!724494 m!678857))

(declare-fun m!678859 () Bool)

(assert (=> b!724494 m!678859))

(assert (=> b!724500 m!678855))

(assert (=> b!724154 d!99319))

(declare-fun d!99321 () Bool)

(declare-fun lt!321040 () (_ BitVec 32))

(declare-fun lt!321039 () (_ BitVec 32))

(assert (=> d!99321 (= lt!321040 (bvmul (bvxor lt!321039 (bvlshr lt!321039 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!99321 (= lt!321039 ((_ extract 31 0) (bvand (bvxor lt!320898 (bvlshr lt!320898 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!99321 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!485869 (let ((h!14697 ((_ extract 31 0) (bvand (bvxor lt!320898 (bvlshr lt!320898 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!62175 (bvmul (bvxor h!14697 (bvlshr h!14697 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!62175 (bvlshr x!62175 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!485869 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!485869 #b00000000000000000000000000000000))))))

(assert (=> d!99321 (= (toIndex!0 lt!320898 mask!3328) (bvand (bvxor lt!321040 (bvlshr lt!321040 #b00000000000000000000000000001101)) mask!3328))))

