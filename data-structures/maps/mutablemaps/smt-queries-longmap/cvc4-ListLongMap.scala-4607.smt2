; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64298 () Bool)

(assert start!64298)

(declare-fun b!721768 () Bool)

(declare-fun e!404684 () Bool)

(declare-fun e!404687 () Bool)

(assert (=> b!721768 (= e!404684 e!404687)))

(declare-fun res!483704 () Bool)

(assert (=> b!721768 (=> (not res!483704) (not e!404687))))

(declare-datatypes ((array!40832 0))(
  ( (array!40833 (arr!19535 (Array (_ BitVec 32) (_ BitVec 64))) (size!19956 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40832)

(declare-datatypes ((SeekEntryResult!7142 0))(
  ( (MissingZero!7142 (index!30935 (_ BitVec 32))) (Found!7142 (index!30936 (_ BitVec 32))) (Intermediate!7142 (undefined!7954 Bool) (index!30937 (_ BitVec 32)) (x!61968 (_ BitVec 32))) (Undefined!7142) (MissingVacant!7142 (index!30938 (_ BitVec 32))) )
))
(declare-fun lt!320135 () SeekEntryResult!7142)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40832 (_ BitVec 32)) SeekEntryResult!7142)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!721768 (= res!483704 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19535 a!3186) j!159) mask!3328) (select (arr!19535 a!3186) j!159) a!3186 mask!3328) lt!320135))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!721768 (= lt!320135 (Intermediate!7142 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!721769 () Bool)

(declare-fun res!483703 () Bool)

(declare-fun e!404685 () Bool)

(assert (=> b!721769 (=> (not res!483703) (not e!404685))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!721769 (= res!483703 (and (= (size!19956 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19956 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19956 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!721770 () Bool)

(declare-fun res!483702 () Bool)

(assert (=> b!721770 (=> (not res!483702) (not e!404687))))

(declare-fun e!404688 () Bool)

(assert (=> b!721770 (= res!483702 e!404688)))

(declare-fun c!79407 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!721770 (= c!79407 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!721771 () Bool)

(assert (=> b!721771 (= e!404685 e!404684)))

(declare-fun res!483706 () Bool)

(assert (=> b!721771 (=> (not res!483706) (not e!404684))))

(declare-fun lt!320134 () SeekEntryResult!7142)

(assert (=> b!721771 (= res!483706 (or (= lt!320134 (MissingZero!7142 i!1173)) (= lt!320134 (MissingVacant!7142 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40832 (_ BitVec 32)) SeekEntryResult!7142)

(assert (=> b!721771 (= lt!320134 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!721772 () Bool)

(declare-fun res!483708 () Bool)

(assert (=> b!721772 (=> (not res!483708) (not e!404685))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!721772 (= res!483708 (validKeyInArray!0 (select (arr!19535 a!3186) j!159)))))

(declare-fun res!483698 () Bool)

(assert (=> start!64298 (=> (not res!483698) (not e!404685))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64298 (= res!483698 (validMask!0 mask!3328))))

(assert (=> start!64298 e!404685))

(assert (=> start!64298 true))

(declare-fun array_inv!15309 (array!40832) Bool)

(assert (=> start!64298 (array_inv!15309 a!3186)))

(declare-fun b!721773 () Bool)

(declare-fun res!483707 () Bool)

(assert (=> b!721773 (=> (not res!483707) (not e!404687))))

(assert (=> b!721773 (= res!483707 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19535 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!721774 () Bool)

(declare-fun res!483699 () Bool)

(assert (=> b!721774 (=> (not res!483699) (not e!404685))))

(assert (=> b!721774 (= res!483699 (validKeyInArray!0 k!2102))))

(declare-fun b!721775 () Bool)

(declare-fun res!483697 () Bool)

(assert (=> b!721775 (=> (not res!483697) (not e!404684))))

(declare-datatypes ((List!13590 0))(
  ( (Nil!13587) (Cons!13586 (h!14640 (_ BitVec 64)) (t!19913 List!13590)) )
))
(declare-fun arrayNoDuplicates!0 (array!40832 (_ BitVec 32) List!13590) Bool)

(assert (=> b!721775 (= res!483697 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13587))))

(declare-fun b!721776 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!721776 (= e!404688 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19535 a!3186) j!159) a!3186 mask!3328) lt!320135))))

(declare-fun b!721777 () Bool)

(declare-fun res!483705 () Bool)

(assert (=> b!721777 (=> (not res!483705) (not e!404685))))

(declare-fun arrayContainsKey!0 (array!40832 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!721777 (= res!483705 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!721778 () Bool)

(declare-fun res!483701 () Bool)

(assert (=> b!721778 (=> (not res!483701) (not e!404684))))

(assert (=> b!721778 (= res!483701 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19956 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19956 a!3186))))))

(declare-fun b!721779 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40832 (_ BitVec 32)) SeekEntryResult!7142)

(assert (=> b!721779 (= e!404688 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19535 a!3186) j!159) a!3186 mask!3328) (Found!7142 j!159)))))

(declare-fun b!721780 () Bool)

(assert (=> b!721780 (= e!404687 (bvslt mask!3328 #b00000000000000000000000000000000))))

(declare-fun b!721781 () Bool)

(declare-fun res!483700 () Bool)

(assert (=> b!721781 (=> (not res!483700) (not e!404684))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40832 (_ BitVec 32)) Bool)

(assert (=> b!721781 (= res!483700 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(assert (= (and start!64298 res!483698) b!721769))

(assert (= (and b!721769 res!483703) b!721772))

(assert (= (and b!721772 res!483708) b!721774))

(assert (= (and b!721774 res!483699) b!721777))

(assert (= (and b!721777 res!483705) b!721771))

(assert (= (and b!721771 res!483706) b!721781))

(assert (= (and b!721781 res!483700) b!721775))

(assert (= (and b!721775 res!483697) b!721778))

(assert (= (and b!721778 res!483701) b!721768))

(assert (= (and b!721768 res!483704) b!721773))

(assert (= (and b!721773 res!483707) b!721770))

(assert (= (and b!721770 c!79407) b!721776))

(assert (= (and b!721770 (not c!79407)) b!721779))

(assert (= (and b!721770 res!483702) b!721780))

(declare-fun m!676551 () Bool)

(assert (=> b!721772 m!676551))

(assert (=> b!721772 m!676551))

(declare-fun m!676553 () Bool)

(assert (=> b!721772 m!676553))

(assert (=> b!721779 m!676551))

(assert (=> b!721779 m!676551))

(declare-fun m!676555 () Bool)

(assert (=> b!721779 m!676555))

(assert (=> b!721768 m!676551))

(assert (=> b!721768 m!676551))

(declare-fun m!676557 () Bool)

(assert (=> b!721768 m!676557))

(assert (=> b!721768 m!676557))

(assert (=> b!721768 m!676551))

(declare-fun m!676559 () Bool)

(assert (=> b!721768 m!676559))

(assert (=> b!721776 m!676551))

(assert (=> b!721776 m!676551))

(declare-fun m!676561 () Bool)

(assert (=> b!721776 m!676561))

(declare-fun m!676563 () Bool)

(assert (=> b!721781 m!676563))

(declare-fun m!676565 () Bool)

(assert (=> start!64298 m!676565))

(declare-fun m!676567 () Bool)

(assert (=> start!64298 m!676567))

(declare-fun m!676569 () Bool)

(assert (=> b!721777 m!676569))

(declare-fun m!676571 () Bool)

(assert (=> b!721773 m!676571))

(declare-fun m!676573 () Bool)

(assert (=> b!721774 m!676573))

(declare-fun m!676575 () Bool)

(assert (=> b!721771 m!676575))

(declare-fun m!676577 () Bool)

(assert (=> b!721775 m!676577))

(push 1)

(assert (not b!721777))

(assert (not start!64298))

