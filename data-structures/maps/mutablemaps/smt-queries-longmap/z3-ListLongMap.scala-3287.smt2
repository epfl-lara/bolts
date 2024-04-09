; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45678 () Bool)

(assert start!45678)

(declare-fun b!503767 () Bool)

(declare-fun e!294994 () Bool)

(declare-fun e!294998 () Bool)

(assert (=> b!503767 (= e!294994 (not e!294998))))

(declare-fun res!305155 () Bool)

(assert (=> b!503767 (=> res!305155 e!294998)))

(declare-datatypes ((array!32394 0))(
  ( (array!32395 (arr!15574 (Array (_ BitVec 32) (_ BitVec 64))) (size!15938 (_ BitVec 32))) )
))
(declare-fun lt!229325 () array!32394)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun lt!229329 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4048 0))(
  ( (MissingZero!4048 (index!18380 (_ BitVec 32))) (Found!4048 (index!18381 (_ BitVec 32))) (Intermediate!4048 (undefined!4860 Bool) (index!18382 (_ BitVec 32)) (x!47428 (_ BitVec 32))) (Undefined!4048) (MissingVacant!4048 (index!18383 (_ BitVec 32))) )
))
(declare-fun lt!229330 () SeekEntryResult!4048)

(declare-fun lt!229334 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32394 (_ BitVec 32)) SeekEntryResult!4048)

(assert (=> b!503767 (= res!305155 (= lt!229330 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229329 lt!229334 lt!229325 mask!3524)))))

(declare-fun lt!229332 () (_ BitVec 32))

(declare-fun a!3235 () array!32394)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!503767 (= lt!229330 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229332 (select (arr!15574 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!503767 (= lt!229329 (toIndex!0 lt!229334 mask!3524))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!503767 (= lt!229334 (select (store (arr!15574 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!503767 (= lt!229332 (toIndex!0 (select (arr!15574 a!3235) j!176) mask!3524))))

(assert (=> b!503767 (= lt!229325 (array!32395 (store (arr!15574 a!3235) i!1204 k0!2280) (size!15938 a!3235)))))

(declare-fun e!294997 () Bool)

(assert (=> b!503767 e!294997))

(declare-fun res!305168 () Bool)

(assert (=> b!503767 (=> (not res!305168) (not e!294997))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32394 (_ BitVec 32)) Bool)

(assert (=> b!503767 (= res!305168 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15282 0))(
  ( (Unit!15283) )
))
(declare-fun lt!229328 () Unit!15282)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32394 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15282)

(assert (=> b!503767 (= lt!229328 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!503768 () Bool)

(declare-fun e!294993 () Bool)

(assert (=> b!503768 (= e!294993 true)))

(declare-fun lt!229327 () SeekEntryResult!4048)

(assert (=> b!503768 (= lt!229327 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229332 lt!229334 lt!229325 mask!3524))))

(declare-fun b!503769 () Bool)

(declare-fun res!305157 () Bool)

(assert (=> b!503769 (=> (not res!305157) (not e!294994))))

(assert (=> b!503769 (= res!305157 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!503770 () Bool)

(declare-fun res!305163 () Bool)

(assert (=> b!503770 (=> res!305163 e!294993)))

(declare-fun e!295000 () Bool)

(assert (=> b!503770 (= res!305163 e!295000)))

(declare-fun res!305167 () Bool)

(assert (=> b!503770 (=> (not res!305167) (not e!295000))))

(assert (=> b!503770 (= res!305167 (bvsgt #b00000000000000000000000000000000 (x!47428 lt!229330)))))

(declare-fun res!305154 () Bool)

(declare-fun e!294995 () Bool)

(assert (=> start!45678 (=> (not res!305154) (not e!294995))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45678 (= res!305154 (validMask!0 mask!3524))))

(assert (=> start!45678 e!294995))

(assert (=> start!45678 true))

(declare-fun array_inv!11348 (array!32394) Bool)

(assert (=> start!45678 (array_inv!11348 a!3235)))

(declare-fun b!503771 () Bool)

(declare-fun res!305160 () Bool)

(assert (=> b!503771 (=> (not res!305160) (not e!294994))))

(declare-datatypes ((List!9785 0))(
  ( (Nil!9782) (Cons!9781 (h!10658 (_ BitVec 64)) (t!16021 List!9785)) )
))
(declare-fun arrayNoDuplicates!0 (array!32394 (_ BitVec 32) List!9785) Bool)

(assert (=> b!503771 (= res!305160 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9782))))

(declare-fun b!503772 () Bool)

(declare-fun e!294999 () Bool)

(assert (=> b!503772 (= e!294999 false)))

(declare-fun b!503773 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32394 (_ BitVec 32)) SeekEntryResult!4048)

(assert (=> b!503773 (= e!294997 (= (seekEntryOrOpen!0 (select (arr!15574 a!3235) j!176) a!3235 mask!3524) (Found!4048 j!176)))))

(declare-fun b!503774 () Bool)

(declare-fun res!305159 () Bool)

(assert (=> b!503774 (=> (not res!305159) (not e!294995))))

(declare-fun arrayContainsKey!0 (array!32394 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!503774 (= res!305159 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!503775 () Bool)

(declare-fun res!305165 () Bool)

(assert (=> b!503775 (=> (not res!305165) (not e!294995))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!503775 (= res!305165 (validKeyInArray!0 k0!2280))))

(declare-fun b!503776 () Bool)

(declare-fun e!294992 () Unit!15282)

(declare-fun Unit!15284 () Unit!15282)

(assert (=> b!503776 (= e!294992 Unit!15284)))

(declare-fun b!503777 () Bool)

(declare-fun res!305158 () Bool)

(assert (=> b!503777 (=> res!305158 e!294998)))

(get-info :version)

(assert (=> b!503777 (= res!305158 (or (undefined!4860 lt!229330) (not ((_ is Intermediate!4048) lt!229330))))))

(declare-fun b!503778 () Bool)

(declare-fun res!305164 () Bool)

(assert (=> b!503778 (=> (not res!305164) (not e!294995))))

(assert (=> b!503778 (= res!305164 (and (= (size!15938 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15938 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15938 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!503779 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32394 (_ BitVec 32)) SeekEntryResult!4048)

(assert (=> b!503779 (= e!295000 (not (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!229332 (index!18382 lt!229330) (select (arr!15574 a!3235) j!176) a!3235 mask!3524) (Found!4048 j!176))))))

(declare-fun b!503780 () Bool)

(declare-fun Unit!15285 () Unit!15282)

(assert (=> b!503780 (= e!294992 Unit!15285)))

(declare-fun lt!229324 () Unit!15282)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32394 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15282)

(assert (=> b!503780 (= lt!229324 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!229332 #b00000000000000000000000000000000 (index!18382 lt!229330) (x!47428 lt!229330) mask!3524))))

(declare-fun res!305156 () Bool)

(assert (=> b!503780 (= res!305156 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229332 lt!229334 lt!229325 mask!3524) (Intermediate!4048 false (index!18382 lt!229330) (x!47428 lt!229330))))))

(assert (=> b!503780 (=> (not res!305156) (not e!294999))))

(assert (=> b!503780 e!294999))

(declare-fun b!503781 () Bool)

(assert (=> b!503781 (= e!294998 e!294993)))

(declare-fun res!305161 () Bool)

(assert (=> b!503781 (=> res!305161 e!294993)))

(assert (=> b!503781 (= res!305161 (or (bvsgt (x!47428 lt!229330) #b01111111111111111111111111111110) (bvslt lt!229332 #b00000000000000000000000000000000) (bvsge lt!229332 (size!15938 a!3235)) (bvslt (index!18382 lt!229330) #b00000000000000000000000000000000) (bvsge (index!18382 lt!229330) (size!15938 a!3235)) (not (= lt!229330 (Intermediate!4048 false (index!18382 lt!229330) (x!47428 lt!229330))))))))

(assert (=> b!503781 (= (index!18382 lt!229330) i!1204)))

(declare-fun lt!229333 () Unit!15282)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!32394 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15282)

(assert (=> b!503781 (= lt!229333 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k0!2280 j!176 lt!229332 #b00000000000000000000000000000000 (index!18382 lt!229330) (x!47428 lt!229330) mask!3524))))

(assert (=> b!503781 (and (or (= (select (arr!15574 a!3235) (index!18382 lt!229330)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15574 a!3235) (index!18382 lt!229330)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15574 a!3235) (index!18382 lt!229330)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15574 a!3235) (index!18382 lt!229330)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!229331 () Unit!15282)

(assert (=> b!503781 (= lt!229331 e!294992)))

(declare-fun c!59585 () Bool)

(assert (=> b!503781 (= c!59585 (= (select (arr!15574 a!3235) (index!18382 lt!229330)) (select (arr!15574 a!3235) j!176)))))

(assert (=> b!503781 (and (bvslt (x!47428 lt!229330) #b01111111111111111111111111111110) (or (= (select (arr!15574 a!3235) (index!18382 lt!229330)) (select (arr!15574 a!3235) j!176)) (= (select (arr!15574 a!3235) (index!18382 lt!229330)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15574 a!3235) (index!18382 lt!229330)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!503782 () Bool)

(assert (=> b!503782 (= e!294995 e!294994)))

(declare-fun res!305162 () Bool)

(assert (=> b!503782 (=> (not res!305162) (not e!294994))))

(declare-fun lt!229326 () SeekEntryResult!4048)

(assert (=> b!503782 (= res!305162 (or (= lt!229326 (MissingZero!4048 i!1204)) (= lt!229326 (MissingVacant!4048 i!1204))))))

(assert (=> b!503782 (= lt!229326 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!503783 () Bool)

(declare-fun res!305166 () Bool)

(assert (=> b!503783 (=> (not res!305166) (not e!294995))))

(assert (=> b!503783 (= res!305166 (validKeyInArray!0 (select (arr!15574 a!3235) j!176)))))

(assert (= (and start!45678 res!305154) b!503778))

(assert (= (and b!503778 res!305164) b!503783))

(assert (= (and b!503783 res!305166) b!503775))

(assert (= (and b!503775 res!305165) b!503774))

(assert (= (and b!503774 res!305159) b!503782))

(assert (= (and b!503782 res!305162) b!503769))

(assert (= (and b!503769 res!305157) b!503771))

(assert (= (and b!503771 res!305160) b!503767))

(assert (= (and b!503767 res!305168) b!503773))

(assert (= (and b!503767 (not res!305155)) b!503777))

(assert (= (and b!503777 (not res!305158)) b!503781))

(assert (= (and b!503781 c!59585) b!503780))

(assert (= (and b!503781 (not c!59585)) b!503776))

(assert (= (and b!503780 res!305156) b!503772))

(assert (= (and b!503781 (not res!305161)) b!503770))

(assert (= (and b!503770 res!305167) b!503779))

(assert (= (and b!503770 (not res!305163)) b!503768))

(declare-fun m!484589 () Bool)

(assert (=> b!503771 m!484589))

(declare-fun m!484591 () Bool)

(assert (=> b!503774 m!484591))

(declare-fun m!484593 () Bool)

(assert (=> b!503775 m!484593))

(declare-fun m!484595 () Bool)

(assert (=> b!503782 m!484595))

(declare-fun m!484597 () Bool)

(assert (=> b!503768 m!484597))

(declare-fun m!484599 () Bool)

(assert (=> b!503781 m!484599))

(declare-fun m!484601 () Bool)

(assert (=> b!503781 m!484601))

(declare-fun m!484603 () Bool)

(assert (=> b!503781 m!484603))

(assert (=> b!503773 m!484603))

(assert (=> b!503773 m!484603))

(declare-fun m!484605 () Bool)

(assert (=> b!503773 m!484605))

(declare-fun m!484607 () Bool)

(assert (=> b!503780 m!484607))

(assert (=> b!503780 m!484597))

(assert (=> b!503783 m!484603))

(assert (=> b!503783 m!484603))

(declare-fun m!484609 () Bool)

(assert (=> b!503783 m!484609))

(assert (=> b!503767 m!484603))

(declare-fun m!484611 () Bool)

(assert (=> b!503767 m!484611))

(declare-fun m!484613 () Bool)

(assert (=> b!503767 m!484613))

(declare-fun m!484615 () Bool)

(assert (=> b!503767 m!484615))

(declare-fun m!484617 () Bool)

(assert (=> b!503767 m!484617))

(assert (=> b!503767 m!484603))

(declare-fun m!484619 () Bool)

(assert (=> b!503767 m!484619))

(assert (=> b!503767 m!484603))

(declare-fun m!484621 () Bool)

(assert (=> b!503767 m!484621))

(declare-fun m!484623 () Bool)

(assert (=> b!503767 m!484623))

(declare-fun m!484625 () Bool)

(assert (=> b!503767 m!484625))

(declare-fun m!484627 () Bool)

(assert (=> start!45678 m!484627))

(declare-fun m!484629 () Bool)

(assert (=> start!45678 m!484629))

(declare-fun m!484631 () Bool)

(assert (=> b!503769 m!484631))

(assert (=> b!503779 m!484603))

(assert (=> b!503779 m!484603))

(declare-fun m!484633 () Bool)

(assert (=> b!503779 m!484633))

(check-sat (not b!503767) (not b!503780) (not b!503771) (not b!503769) (not b!503782) (not b!503774) (not start!45678) (not b!503779) (not b!503775) (not b!503783) (not b!503768) (not b!503781) (not b!503773))
(check-sat)
