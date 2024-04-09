; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!66302 () Bool)

(assert start!66302)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!42160 0))(
  ( (array!42161 (arr!20184 (Array (_ BitVec 32) (_ BitVec 64))) (size!20605 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42160)

(declare-fun e!425460 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!763707 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7791 0))(
  ( (MissingZero!7791 (index!33531 (_ BitVec 32))) (Found!7791 (index!33532 (_ BitVec 32))) (Intermediate!7791 (undefined!8603 Bool) (index!33533 (_ BitVec 32)) (x!64460 (_ BitVec 32))) (Undefined!7791) (MissingVacant!7791 (index!33534 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42160 (_ BitVec 32)) SeekEntryResult!7791)

(assert (=> b!763707 (= e!425460 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20184 a!3186) j!159) a!3186 mask!3328) (Found!7791 j!159)))))

(declare-fun b!763708 () Bool)

(declare-fun res!516787 () Bool)

(declare-fun e!425462 () Bool)

(assert (=> b!763708 (=> (not res!516787) (not e!425462))))

(declare-datatypes ((List!14239 0))(
  ( (Nil!14236) (Cons!14235 (h!15319 (_ BitVec 64)) (t!20562 List!14239)) )
))
(declare-fun arrayNoDuplicates!0 (array!42160 (_ BitVec 32) List!14239) Bool)

(assert (=> b!763708 (= res!516787 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14236))))

(declare-fun b!763709 () Bool)

(declare-fun e!425459 () Bool)

(assert (=> b!763709 (= e!425459 e!425462)))

(declare-fun res!516789 () Bool)

(assert (=> b!763709 (=> (not res!516789) (not e!425462))))

(declare-fun lt!339921 () SeekEntryResult!7791)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!763709 (= res!516789 (or (= lt!339921 (MissingZero!7791 i!1173)) (= lt!339921 (MissingVacant!7791 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42160 (_ BitVec 32)) SeekEntryResult!7791)

(assert (=> b!763709 (= lt!339921 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun res!516795 () Bool)

(assert (=> start!66302 (=> (not res!516795) (not e!425459))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66302 (= res!516795 (validMask!0 mask!3328))))

(assert (=> start!66302 e!425459))

(assert (=> start!66302 true))

(declare-fun array_inv!15958 (array!42160) Bool)

(assert (=> start!66302 (array_inv!15958 a!3186)))

(declare-fun b!763710 () Bool)

(declare-fun res!516797 () Bool)

(assert (=> b!763710 (=> (not res!516797) (not e!425459))))

(assert (=> b!763710 (= res!516797 (and (= (size!20605 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20605 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20605 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!763711 () Bool)

(declare-fun res!516793 () Bool)

(declare-fun e!425457 () Bool)

(assert (=> b!763711 (=> (not res!516793) (not e!425457))))

(assert (=> b!763711 (= res!516793 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20184 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!763712 () Bool)

(declare-fun res!516786 () Bool)

(assert (=> b!763712 (=> (not res!516786) (not e!425459))))

(declare-fun arrayContainsKey!0 (array!42160 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!763712 (= res!516786 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!763713 () Bool)

(declare-fun res!516794 () Bool)

(assert (=> b!763713 (=> (not res!516794) (not e!425457))))

(assert (=> b!763713 (= res!516794 e!425460)))

(declare-fun c!83847 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!763713 (= c!83847 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!763714 () Bool)

(declare-fun res!516791 () Bool)

(assert (=> b!763714 (=> (not res!516791) (not e!425459))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!763714 (= res!516791 (validKeyInArray!0 (select (arr!20184 a!3186) j!159)))))

(declare-fun b!763715 () Bool)

(declare-fun e!425458 () Bool)

(assert (=> b!763715 (= e!425457 e!425458)))

(declare-fun res!516796 () Bool)

(assert (=> b!763715 (=> (not res!516796) (not e!425458))))

(declare-fun lt!339920 () array!42160)

(declare-fun lt!339919 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42160 (_ BitVec 32)) SeekEntryResult!7791)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!763715 (= res!516796 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!339919 mask!3328) lt!339919 lt!339920 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!339919 lt!339920 mask!3328)))))

(assert (=> b!763715 (= lt!339919 (select (store (arr!20184 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!763715 (= lt!339920 (array!42161 (store (arr!20184 a!3186) i!1173 k!2102) (size!20605 a!3186)))))

(declare-fun b!763716 () Bool)

(assert (=> b!763716 (= e!425462 e!425457)))

(declare-fun res!516792 () Bool)

(assert (=> b!763716 (=> (not res!516792) (not e!425457))))

(declare-fun lt!339922 () SeekEntryResult!7791)

(assert (=> b!763716 (= res!516792 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20184 a!3186) j!159) mask!3328) (select (arr!20184 a!3186) j!159) a!3186 mask!3328) lt!339922))))

(assert (=> b!763716 (= lt!339922 (Intermediate!7791 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!763717 () Bool)

(declare-fun res!516788 () Bool)

(assert (=> b!763717 (=> (not res!516788) (not e!425462))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42160 (_ BitVec 32)) Bool)

(assert (=> b!763717 (= res!516788 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!763718 () Bool)

(assert (=> b!763718 (= e!425458 (bvsgt #b00000000000000000000000000000000 (size!20605 a!3186)))))

(declare-fun b!763719 () Bool)

(declare-fun res!516790 () Bool)

(assert (=> b!763719 (=> (not res!516790) (not e!425459))))

(assert (=> b!763719 (= res!516790 (validKeyInArray!0 k!2102))))

(declare-fun b!763720 () Bool)

(assert (=> b!763720 (= e!425460 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20184 a!3186) j!159) a!3186 mask!3328) lt!339922))))

(declare-fun b!763721 () Bool)

(declare-fun res!516798 () Bool)

(assert (=> b!763721 (=> (not res!516798) (not e!425462))))

(assert (=> b!763721 (= res!516798 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20605 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20605 a!3186))))))

(assert (= (and start!66302 res!516795) b!763710))

(assert (= (and b!763710 res!516797) b!763714))

(assert (= (and b!763714 res!516791) b!763719))

(assert (= (and b!763719 res!516790) b!763712))

(assert (= (and b!763712 res!516786) b!763709))

(assert (= (and b!763709 res!516789) b!763717))

(assert (= (and b!763717 res!516788) b!763708))

(assert (= (and b!763708 res!516787) b!763721))

(assert (= (and b!763721 res!516798) b!763716))

(assert (= (and b!763716 res!516792) b!763711))

(assert (= (and b!763711 res!516793) b!763713))

(assert (= (and b!763713 c!83847) b!763720))

(assert (= (and b!763713 (not c!83847)) b!763707))

(assert (= (and b!763713 res!516794) b!763715))

(assert (= (and b!763715 res!516796) b!763718))

(declare-fun m!710225 () Bool)

(assert (=> b!763709 m!710225))

(declare-fun m!710227 () Bool)

(assert (=> b!763711 m!710227))

(declare-fun m!710229 () Bool)

(assert (=> b!763707 m!710229))

(assert (=> b!763707 m!710229))

(declare-fun m!710231 () Bool)

(assert (=> b!763707 m!710231))

(assert (=> b!763716 m!710229))

(assert (=> b!763716 m!710229))

(declare-fun m!710233 () Bool)

(assert (=> b!763716 m!710233))

(assert (=> b!763716 m!710233))

(assert (=> b!763716 m!710229))

(declare-fun m!710235 () Bool)

(assert (=> b!763716 m!710235))

(declare-fun m!710237 () Bool)

(assert (=> b!763712 m!710237))

(assert (=> b!763714 m!710229))

(assert (=> b!763714 m!710229))

(declare-fun m!710239 () Bool)

(assert (=> b!763714 m!710239))

(declare-fun m!710241 () Bool)

(assert (=> b!763715 m!710241))

(declare-fun m!710243 () Bool)

(assert (=> b!763715 m!710243))

(assert (=> b!763715 m!710241))

(declare-fun m!710245 () Bool)

(assert (=> b!763715 m!710245))

(declare-fun m!710247 () Bool)

(assert (=> b!763715 m!710247))

(declare-fun m!710249 () Bool)

(assert (=> b!763715 m!710249))

(declare-fun m!710251 () Bool)

(assert (=> start!66302 m!710251))

(declare-fun m!710253 () Bool)

(assert (=> start!66302 m!710253))

(declare-fun m!710255 () Bool)

(assert (=> b!763719 m!710255))

(assert (=> b!763720 m!710229))

(assert (=> b!763720 m!710229))

(declare-fun m!710257 () Bool)

(assert (=> b!763720 m!710257))

(declare-fun m!710259 () Bool)

(assert (=> b!763708 m!710259))

(declare-fun m!710261 () Bool)

(assert (=> b!763717 m!710261))

(push 1)

