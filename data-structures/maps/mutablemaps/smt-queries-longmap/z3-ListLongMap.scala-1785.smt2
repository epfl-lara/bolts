; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!32420 () Bool)

(assert start!32420)

(declare-fun b!323290 () Bool)

(declare-fun res!176965 () Bool)

(declare-fun e!199845 () Bool)

(assert (=> b!323290 (=> (not res!176965) (not e!199845))))

(declare-datatypes ((array!16555 0))(
  ( (array!16556 (arr!7832 (Array (_ BitVec 32) (_ BitVec 64))) (size!8184 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16555)

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16555 (_ BitVec 32)) Bool)

(assert (=> b!323290 (= res!176965 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!323291 () Bool)

(declare-fun res!176969 () Bool)

(assert (=> b!323291 (=> (not res!176969) (not e!199845))))

(declare-fun k0!2497 () (_ BitVec 64))

(declare-fun i!1250 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2974 0))(
  ( (MissingZero!2974 (index!14072 (_ BitVec 32))) (Found!2974 (index!14073 (_ BitVec 32))) (Intermediate!2974 (undefined!3786 Bool) (index!14074 (_ BitVec 32)) (x!32293 (_ BitVec 32))) (Undefined!2974) (MissingVacant!2974 (index!14075 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16555 (_ BitVec 32)) SeekEntryResult!2974)

(assert (=> b!323291 (= res!176969 (= (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777) (MissingVacant!2974 i!1250)))))

(declare-fun b!323292 () Bool)

(declare-datatypes ((Unit!10004 0))(
  ( (Unit!10005) )
))
(declare-fun e!199844 () Unit!10004)

(declare-fun Unit!10006 () Unit!10004)

(assert (=> b!323292 (= e!199844 Unit!10006)))

(assert (=> b!323292 false))

(declare-fun b!323293 () Bool)

(declare-fun res!176972 () Bool)

(declare-fun e!199842 () Bool)

(assert (=> b!323293 (=> (not res!176972) (not e!199842))))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(assert (=> b!323293 (= res!176972 (and (= (select (arr!7832 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8184 a!3305))))))

(declare-fun b!323294 () Bool)

(assert (=> b!323294 false))

(declare-fun lt!156607 () Unit!10004)

(assert (=> b!323294 (= lt!156607 e!199844)))

(declare-fun c!50790 () Bool)

(get-info :version)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16555 (_ BitVec 32)) SeekEntryResult!2974)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!323294 (= c!50790 ((_ is Intermediate!2974) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) k0!2497 a!3305 mask!3777)))))

(declare-fun e!199841 () Unit!10004)

(declare-fun Unit!10007 () Unit!10004)

(assert (=> b!323294 (= e!199841 Unit!10007)))

(declare-fun b!323295 () Bool)

(assert (=> b!323295 false))

(declare-fun Unit!10008 () Unit!10004)

(assert (=> b!323295 (= e!199841 Unit!10008)))

(declare-fun b!323296 () Bool)

(declare-fun res!176968 () Bool)

(assert (=> b!323296 (=> (not res!176968) (not e!199845))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!323296 (= res!176968 (validKeyInArray!0 k0!2497))))

(declare-fun b!323297 () Bool)

(declare-fun res!176970 () Bool)

(assert (=> b!323297 (=> (not res!176970) (not e!199845))))

(assert (=> b!323297 (= res!176970 (and (= (size!8184 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8184 a!3305))))))

(declare-fun b!323298 () Bool)

(assert (=> b!323298 (= e!199845 e!199842)))

(declare-fun res!176971 () Bool)

(assert (=> b!323298 (=> (not res!176971) (not e!199842))))

(declare-fun lt!156608 () SeekEntryResult!2974)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!323298 (= res!176971 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777) lt!156608))))

(assert (=> b!323298 (= lt!156608 (Intermediate!2974 false resIndex!58 resX!58))))

(declare-fun b!323299 () Bool)

(declare-fun res!176967 () Bool)

(assert (=> b!323299 (=> (not res!176967) (not e!199842))))

(assert (=> b!323299 (= res!176967 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k0!2497 a!3305 mask!3777) lt!156608))))

(declare-fun b!323300 () Bool)

(declare-fun Unit!10009 () Unit!10004)

(assert (=> b!323300 (= e!199844 Unit!10009)))

(declare-fun b!323289 () Bool)

(declare-fun res!176973 () Bool)

(assert (=> b!323289 (=> (not res!176973) (not e!199845))))

(declare-fun arrayContainsKey!0 (array!16555 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!323289 (= res!176973 (not (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000)))))

(declare-fun res!176966 () Bool)

(assert (=> start!32420 (=> (not res!176966) (not e!199845))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32420 (= res!176966 (validMask!0 mask!3777))))

(assert (=> start!32420 e!199845))

(declare-fun array_inv!5786 (array!16555) Bool)

(assert (=> start!32420 (array_inv!5786 a!3305)))

(assert (=> start!32420 true))

(declare-fun b!323301 () Bool)

(declare-fun res!176964 () Bool)

(assert (=> b!323301 (=> (not res!176964) (not e!199842))))

(assert (=> b!323301 (= res!176964 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7832 a!3305) index!1840) k0!2497)) (= x!1490 resX!58)))))

(declare-fun b!323302 () Bool)

(assert (=> b!323302 (= e!199842 (not true))))

(assert (=> b!323302 (= index!1840 resIndex!58)))

(declare-fun lt!156606 () Unit!10004)

(declare-fun e!199846 () Unit!10004)

(assert (=> b!323302 (= lt!156606 e!199846)))

(declare-fun c!50791 () Bool)

(assert (=> b!323302 (= c!50791 (not (= resIndex!58 index!1840)))))

(declare-fun b!323303 () Bool)

(declare-fun Unit!10010 () Unit!10004)

(assert (=> b!323303 (= e!199846 Unit!10010)))

(declare-fun b!323304 () Bool)

(assert (=> b!323304 (= e!199846 e!199841)))

(declare-fun c!50792 () Bool)

(assert (=> b!323304 (= c!50792 (or (= (select (arr!7832 a!3305) index!1840) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7832 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!32420 res!176966) b!323297))

(assert (= (and b!323297 res!176970) b!323296))

(assert (= (and b!323296 res!176968) b!323289))

(assert (= (and b!323289 res!176973) b!323291))

(assert (= (and b!323291 res!176969) b!323290))

(assert (= (and b!323290 res!176965) b!323298))

(assert (= (and b!323298 res!176971) b!323293))

(assert (= (and b!323293 res!176972) b!323299))

(assert (= (and b!323299 res!176967) b!323301))

(assert (= (and b!323301 res!176964) b!323302))

(assert (= (and b!323302 c!50791) b!323304))

(assert (= (and b!323302 (not c!50791)) b!323303))

(assert (= (and b!323304 c!50792) b!323295))

(assert (= (and b!323304 (not c!50792)) b!323294))

(assert (= (and b!323294 c!50790) b!323300))

(assert (= (and b!323294 (not c!50790)) b!323292))

(declare-fun m!330687 () Bool)

(assert (=> start!32420 m!330687))

(declare-fun m!330689 () Bool)

(assert (=> start!32420 m!330689))

(declare-fun m!330691 () Bool)

(assert (=> b!323293 m!330691))

(declare-fun m!330693 () Bool)

(assert (=> b!323296 m!330693))

(declare-fun m!330695 () Bool)

(assert (=> b!323304 m!330695))

(declare-fun m!330697 () Bool)

(assert (=> b!323291 m!330697))

(assert (=> b!323301 m!330695))

(declare-fun m!330699 () Bool)

(assert (=> b!323298 m!330699))

(assert (=> b!323298 m!330699))

(declare-fun m!330701 () Bool)

(assert (=> b!323298 m!330701))

(declare-fun m!330703 () Bool)

(assert (=> b!323299 m!330703))

(declare-fun m!330705 () Bool)

(assert (=> b!323289 m!330705))

(declare-fun m!330707 () Bool)

(assert (=> b!323290 m!330707))

(declare-fun m!330709 () Bool)

(assert (=> b!323294 m!330709))

(assert (=> b!323294 m!330709))

(declare-fun m!330711 () Bool)

(assert (=> b!323294 m!330711))

(check-sat (not b!323298) (not start!32420) (not b!323294) (not b!323299) (not b!323291) (not b!323290) (not b!323289) (not b!323296))
(check-sat)
