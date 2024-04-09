; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!32414 () Bool)

(assert start!32414)

(declare-fun b!323145 () Bool)

(assert (=> b!323145 false))

(declare-datatypes ((Unit!9983 0))(
  ( (Unit!9984) )
))
(declare-fun e!199787 () Unit!9983)

(declare-fun Unit!9985 () Unit!9983)

(assert (=> b!323145 (= e!199787 Unit!9985)))

(declare-fun b!323146 () Bool)

(declare-fun res!176883 () Bool)

(declare-fun e!199790 () Bool)

(assert (=> b!323146 (=> (not res!176883) (not e!199790))))

(declare-datatypes ((array!16549 0))(
  ( (array!16550 (arr!7829 (Array (_ BitVec 32) (_ BitVec 64))) (size!8181 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16549)

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!323146 (= res!176883 (and (= (size!8181 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8181 a!3305))))))

(declare-fun b!323147 () Bool)

(declare-fun e!199792 () Bool)

(assert (=> b!323147 (= e!199790 e!199792)))

(declare-fun res!176880 () Bool)

(assert (=> b!323147 (=> (not res!176880) (not e!199792))))

(declare-datatypes ((SeekEntryResult!2971 0))(
  ( (MissingZero!2971 (index!14060 (_ BitVec 32))) (Found!2971 (index!14061 (_ BitVec 32))) (Intermediate!2971 (undefined!3783 Bool) (index!14062 (_ BitVec 32)) (x!32282 (_ BitVec 32))) (Undefined!2971) (MissingVacant!2971 (index!14063 (_ BitVec 32))) )
))
(declare-fun lt!156581 () SeekEntryResult!2971)

(declare-fun k0!2497 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16549 (_ BitVec 32)) SeekEntryResult!2971)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!323147 (= res!176880 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777) lt!156581))))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(assert (=> b!323147 (= lt!156581 (Intermediate!2971 false resIndex!58 resX!58))))

(declare-fun b!323148 () Bool)

(declare-fun res!176882 () Bool)

(assert (=> b!323148 (=> (not res!176882) (not e!199790))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!323148 (= res!176882 (validKeyInArray!0 k0!2497))))

(declare-fun b!323149 () Bool)

(declare-fun res!176877 () Bool)

(assert (=> b!323149 (=> (not res!176877) (not e!199792))))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(assert (=> b!323149 (= res!176877 (and (= (select (arr!7829 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8181 a!3305))))))

(declare-fun b!323150 () Bool)

(assert (=> b!323150 false))

(declare-fun lt!156579 () Unit!9983)

(declare-fun e!199788 () Unit!9983)

(assert (=> b!323150 (= lt!156579 e!199788)))

(declare-fun c!50765 () Bool)

(get-info :version)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!323150 (= c!50765 ((_ is Intermediate!2971) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) k0!2497 a!3305 mask!3777)))))

(declare-fun Unit!9986 () Unit!9983)

(assert (=> b!323150 (= e!199787 Unit!9986)))

(declare-fun b!323151 () Bool)

(declare-fun Unit!9987 () Unit!9983)

(assert (=> b!323151 (= e!199788 Unit!9987)))

(declare-fun res!176879 () Bool)

(assert (=> start!32414 (=> (not res!176879) (not e!199790))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32414 (= res!176879 (validMask!0 mask!3777))))

(assert (=> start!32414 e!199790))

(declare-fun array_inv!5783 (array!16549) Bool)

(assert (=> start!32414 (array_inv!5783 a!3305)))

(assert (=> start!32414 true))

(declare-fun b!323152 () Bool)

(declare-fun res!176875 () Bool)

(assert (=> b!323152 (=> (not res!176875) (not e!199792))))

(assert (=> b!323152 (= res!176875 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k0!2497 a!3305 mask!3777) lt!156581))))

(declare-fun b!323153 () Bool)

(declare-fun res!176878 () Bool)

(assert (=> b!323153 (=> (not res!176878) (not e!199792))))

(assert (=> b!323153 (= res!176878 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7829 a!3305) index!1840) k0!2497)) (= x!1490 resX!58)))))

(declare-fun b!323154 () Bool)

(declare-fun e!199789 () Unit!9983)

(assert (=> b!323154 (= e!199789 e!199787)))

(declare-fun c!50764 () Bool)

(assert (=> b!323154 (= c!50764 (or (= (select (arr!7829 a!3305) index!1840) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7829 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!323155 () Bool)

(declare-fun Unit!9988 () Unit!9983)

(assert (=> b!323155 (= e!199789 Unit!9988)))

(declare-fun b!323156 () Bool)

(declare-fun res!176881 () Bool)

(assert (=> b!323156 (=> (not res!176881) (not e!199790))))

(declare-fun arrayContainsKey!0 (array!16549 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!323156 (= res!176881 (not (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000)))))

(declare-fun b!323157 () Bool)

(declare-fun res!176874 () Bool)

(assert (=> b!323157 (=> (not res!176874) (not e!199790))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16549 (_ BitVec 32)) SeekEntryResult!2971)

(assert (=> b!323157 (= res!176874 (= (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777) (MissingVacant!2971 i!1250)))))

(declare-fun b!323158 () Bool)

(assert (=> b!323158 (= e!199792 (not (or (not (= (select (arr!7829 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge mask!3777 #b00000000000000000000000000000000))))))

(assert (=> b!323158 (= index!1840 resIndex!58)))

(declare-fun lt!156580 () Unit!9983)

(assert (=> b!323158 (= lt!156580 e!199789)))

(declare-fun c!50763 () Bool)

(assert (=> b!323158 (= c!50763 (not (= resIndex!58 index!1840)))))

(declare-fun b!323159 () Bool)

(declare-fun res!176876 () Bool)

(assert (=> b!323159 (=> (not res!176876) (not e!199790))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16549 (_ BitVec 32)) Bool)

(assert (=> b!323159 (= res!176876 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!323160 () Bool)

(declare-fun Unit!9989 () Unit!9983)

(assert (=> b!323160 (= e!199788 Unit!9989)))

(assert (=> b!323160 false))

(assert (= (and start!32414 res!176879) b!323146))

(assert (= (and b!323146 res!176883) b!323148))

(assert (= (and b!323148 res!176882) b!323156))

(assert (= (and b!323156 res!176881) b!323157))

(assert (= (and b!323157 res!176874) b!323159))

(assert (= (and b!323159 res!176876) b!323147))

(assert (= (and b!323147 res!176880) b!323149))

(assert (= (and b!323149 res!176877) b!323152))

(assert (= (and b!323152 res!176875) b!323153))

(assert (= (and b!323153 res!176878) b!323158))

(assert (= (and b!323158 c!50763) b!323154))

(assert (= (and b!323158 (not c!50763)) b!323155))

(assert (= (and b!323154 c!50764) b!323145))

(assert (= (and b!323154 (not c!50764)) b!323150))

(assert (= (and b!323150 c!50765) b!323151))

(assert (= (and b!323150 (not c!50765)) b!323160))

(declare-fun m!330609 () Bool)

(assert (=> b!323157 m!330609))

(declare-fun m!330611 () Bool)

(assert (=> b!323148 m!330611))

(declare-fun m!330613 () Bool)

(assert (=> b!323152 m!330613))

(declare-fun m!330615 () Bool)

(assert (=> b!323158 m!330615))

(assert (=> b!323153 m!330615))

(declare-fun m!330617 () Bool)

(assert (=> b!323150 m!330617))

(assert (=> b!323150 m!330617))

(declare-fun m!330619 () Bool)

(assert (=> b!323150 m!330619))

(assert (=> b!323154 m!330615))

(declare-fun m!330621 () Bool)

(assert (=> b!323159 m!330621))

(declare-fun m!330623 () Bool)

(assert (=> start!32414 m!330623))

(declare-fun m!330625 () Bool)

(assert (=> start!32414 m!330625))

(declare-fun m!330627 () Bool)

(assert (=> b!323147 m!330627))

(assert (=> b!323147 m!330627))

(declare-fun m!330629 () Bool)

(assert (=> b!323147 m!330629))

(declare-fun m!330631 () Bool)

(assert (=> b!323149 m!330631))

(declare-fun m!330633 () Bool)

(assert (=> b!323156 m!330633))

(check-sat (not b!323156) (not b!323148) (not b!323152) (not b!323150) (not b!323147) (not start!32414) (not b!323159) (not b!323157))
(check-sat)
