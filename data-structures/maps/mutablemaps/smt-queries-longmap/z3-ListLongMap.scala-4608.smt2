; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64302 () Bool)

(assert start!64302)

(declare-fun b!721847 () Bool)

(declare-fun e!404716 () Bool)

(assert (=> b!721847 (= e!404716 false)))

(declare-fun lt!320153 () Bool)

(declare-fun e!404715 () Bool)

(assert (=> b!721847 (= lt!320153 e!404715)))

(declare-fun c!79413 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!721847 (= c!79413 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!721848 () Bool)

(declare-fun res!483773 () Bool)

(declare-fun e!404714 () Bool)

(assert (=> b!721848 (=> (not res!483773) (not e!404714))))

(declare-datatypes ((array!40836 0))(
  ( (array!40837 (arr!19537 (Array (_ BitVec 32) (_ BitVec 64))) (size!19958 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40836)

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!40836 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!721848 (= res!483773 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun res!483770 () Bool)

(assert (=> start!64302 (=> (not res!483770) (not e!404714))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64302 (= res!483770 (validMask!0 mask!3328))))

(assert (=> start!64302 e!404714))

(assert (=> start!64302 true))

(declare-fun array_inv!15311 (array!40836) Bool)

(assert (=> start!64302 (array_inv!15311 a!3186)))

(declare-fun b!721849 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7144 0))(
  ( (MissingZero!7144 (index!30943 (_ BitVec 32))) (Found!7144 (index!30944 (_ BitVec 32))) (Intermediate!7144 (undefined!7956 Bool) (index!30945 (_ BitVec 32)) (x!61978 (_ BitVec 32))) (Undefined!7144) (MissingVacant!7144 (index!30946 (_ BitVec 32))) )
))
(declare-fun lt!320152 () SeekEntryResult!7144)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40836 (_ BitVec 32)) SeekEntryResult!7144)

(assert (=> b!721849 (= e!404715 (not (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19537 a!3186) j!159) a!3186 mask!3328) lt!320152)))))

(declare-fun b!721850 () Bool)

(declare-fun res!483764 () Bool)

(declare-fun e!404718 () Bool)

(assert (=> b!721850 (=> (not res!483764) (not e!404718))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40836 (_ BitVec 32)) Bool)

(assert (=> b!721850 (= res!483764 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!721851 () Bool)

(assert (=> b!721851 (= e!404718 e!404716)))

(declare-fun res!483768 () Bool)

(assert (=> b!721851 (=> (not res!483768) (not e!404716))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!721851 (= res!483768 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19537 a!3186) j!159) mask!3328) (select (arr!19537 a!3186) j!159) a!3186 mask!3328) lt!320152))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!721851 (= lt!320152 (Intermediate!7144 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!721852 () Bool)

(declare-fun res!483769 () Bool)

(assert (=> b!721852 (=> (not res!483769) (not e!404714))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!721852 (= res!483769 (validKeyInArray!0 (select (arr!19537 a!3186) j!159)))))

(declare-fun b!721853 () Bool)

(declare-fun res!483774 () Bool)

(assert (=> b!721853 (=> (not res!483774) (not e!404718))))

(declare-datatypes ((List!13592 0))(
  ( (Nil!13589) (Cons!13588 (h!14642 (_ BitVec 64)) (t!19915 List!13592)) )
))
(declare-fun arrayNoDuplicates!0 (array!40836 (_ BitVec 32) List!13592) Bool)

(assert (=> b!721853 (= res!483774 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13589))))

(declare-fun b!721854 () Bool)

(declare-fun res!483765 () Bool)

(assert (=> b!721854 (=> (not res!483765) (not e!404714))))

(assert (=> b!721854 (= res!483765 (validKeyInArray!0 k0!2102))))

(declare-fun b!721855 () Bool)

(declare-fun res!483767 () Bool)

(assert (=> b!721855 (=> (not res!483767) (not e!404714))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!721855 (= res!483767 (and (= (size!19958 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19958 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19958 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!721856 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40836 (_ BitVec 32)) SeekEntryResult!7144)

(assert (=> b!721856 (= e!404715 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19537 a!3186) j!159) a!3186 mask!3328) (Found!7144 j!159))))))

(declare-fun b!721857 () Bool)

(assert (=> b!721857 (= e!404714 e!404718)))

(declare-fun res!483771 () Bool)

(assert (=> b!721857 (=> (not res!483771) (not e!404718))))

(declare-fun lt!320151 () SeekEntryResult!7144)

(assert (=> b!721857 (= res!483771 (or (= lt!320151 (MissingZero!7144 i!1173)) (= lt!320151 (MissingVacant!7144 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40836 (_ BitVec 32)) SeekEntryResult!7144)

(assert (=> b!721857 (= lt!320151 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!721858 () Bool)

(declare-fun res!483772 () Bool)

(assert (=> b!721858 (=> (not res!483772) (not e!404716))))

(assert (=> b!721858 (= res!483772 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19537 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!721859 () Bool)

(declare-fun res!483766 () Bool)

(assert (=> b!721859 (=> (not res!483766) (not e!404718))))

(assert (=> b!721859 (= res!483766 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19958 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19958 a!3186))))))

(assert (= (and start!64302 res!483770) b!721855))

(assert (= (and b!721855 res!483767) b!721852))

(assert (= (and b!721852 res!483769) b!721854))

(assert (= (and b!721854 res!483765) b!721848))

(assert (= (and b!721848 res!483773) b!721857))

(assert (= (and b!721857 res!483771) b!721850))

(assert (= (and b!721850 res!483764) b!721853))

(assert (= (and b!721853 res!483774) b!721859))

(assert (= (and b!721859 res!483766) b!721851))

(assert (= (and b!721851 res!483768) b!721858))

(assert (= (and b!721858 res!483772) b!721847))

(assert (= (and b!721847 c!79413) b!721849))

(assert (= (and b!721847 (not c!79413)) b!721856))

(declare-fun m!676607 () Bool)

(assert (=> b!721848 m!676607))

(declare-fun m!676609 () Bool)

(assert (=> b!721856 m!676609))

(assert (=> b!721856 m!676609))

(declare-fun m!676611 () Bool)

(assert (=> b!721856 m!676611))

(declare-fun m!676613 () Bool)

(assert (=> start!64302 m!676613))

(declare-fun m!676615 () Bool)

(assert (=> start!64302 m!676615))

(declare-fun m!676617 () Bool)

(assert (=> b!721857 m!676617))

(assert (=> b!721852 m!676609))

(assert (=> b!721852 m!676609))

(declare-fun m!676619 () Bool)

(assert (=> b!721852 m!676619))

(declare-fun m!676621 () Bool)

(assert (=> b!721853 m!676621))

(assert (=> b!721851 m!676609))

(assert (=> b!721851 m!676609))

(declare-fun m!676623 () Bool)

(assert (=> b!721851 m!676623))

(assert (=> b!721851 m!676623))

(assert (=> b!721851 m!676609))

(declare-fun m!676625 () Bool)

(assert (=> b!721851 m!676625))

(declare-fun m!676627 () Bool)

(assert (=> b!721854 m!676627))

(declare-fun m!676629 () Bool)

(assert (=> b!721858 m!676629))

(declare-fun m!676631 () Bool)

(assert (=> b!721850 m!676631))

(assert (=> b!721849 m!676609))

(assert (=> b!721849 m!676609))

(declare-fun m!676633 () Bool)

(assert (=> b!721849 m!676633))

(check-sat (not start!64302) (not b!721852) (not b!721848) (not b!721850) (not b!721857) (not b!721856) (not b!721853) (not b!721854) (not b!721851) (not b!721849))
(check-sat)
