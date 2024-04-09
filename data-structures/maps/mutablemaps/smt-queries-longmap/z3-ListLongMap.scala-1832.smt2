; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!33212 () Bool)

(assert start!33212)

(declare-fun b!329823 () Bool)

(declare-fun res!181802 () Bool)

(declare-fun e!202566 () Bool)

(assert (=> b!329823 (=> (not res!181802) (not e!202566))))

(declare-datatypes ((array!16867 0))(
  ( (array!16868 (arr!7973 (Array (_ BitVec 32) (_ BitVec 64))) (size!8325 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16867)

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun k0!2497 () (_ BitVec 64))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3115 0))(
  ( (MissingZero!3115 (index!14636 (_ BitVec 32))) (Found!3115 (index!14637 (_ BitVec 32))) (Intermediate!3115 (undefined!3927 Bool) (index!14638 (_ BitVec 32)) (x!32885 (_ BitVec 32))) (Undefined!3115) (MissingVacant!3115 (index!14639 (_ BitVec 32))) )
))
(declare-fun lt!158395 () SeekEntryResult!3115)

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16867 (_ BitVec 32)) SeekEntryResult!3115)

(assert (=> b!329823 (= res!181802 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k0!2497 a!3305 mask!3777) lt!158395))))

(declare-fun b!329824 () Bool)

(declare-fun res!181803 () Bool)

(declare-fun e!202565 () Bool)

(assert (=> b!329824 (=> (not res!181803) (not e!202565))))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!329824 (= res!181803 (and (= (size!8325 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8325 a!3305))))))

(declare-fun b!329825 () Bool)

(declare-datatypes ((Unit!10224 0))(
  ( (Unit!10225) )
))
(declare-fun e!202568 () Unit!10224)

(declare-fun Unit!10226 () Unit!10224)

(assert (=> b!329825 (= e!202568 Unit!10226)))

(declare-fun b!329826 () Bool)

(declare-fun res!181809 () Bool)

(assert (=> b!329826 (=> (not res!181809) (not e!202566))))

(declare-fun resX!58 () (_ BitVec 32))

(assert (=> b!329826 (= res!181809 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7973 a!3305) index!1840) k0!2497)) (= x!1490 resX!58)))))

(declare-fun b!329827 () Bool)

(assert (=> b!329827 false))

(declare-fun lt!158394 () Unit!10224)

(declare-fun e!202567 () Unit!10224)

(assert (=> b!329827 (= lt!158394 e!202567)))

(declare-fun c!51654 () Bool)

(get-info :version)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!329827 (= c!51654 ((_ is Intermediate!3115) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) k0!2497 a!3305 mask!3777)))))

(declare-fun e!202570 () Unit!10224)

(declare-fun Unit!10227 () Unit!10224)

(assert (=> b!329827 (= e!202570 Unit!10227)))

(declare-fun b!329828 () Bool)

(declare-fun res!181806 () Bool)

(assert (=> b!329828 (=> (not res!181806) (not e!202566))))

(declare-fun resIndex!58 () (_ BitVec 32))

(assert (=> b!329828 (= res!181806 (and (= (select (arr!7973 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8325 a!3305))))))

(declare-fun res!181805 () Bool)

(assert (=> start!33212 (=> (not res!181805) (not e!202565))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33212 (= res!181805 (validMask!0 mask!3777))))

(assert (=> start!33212 e!202565))

(declare-fun array_inv!5927 (array!16867) Bool)

(assert (=> start!33212 (array_inv!5927 a!3305)))

(assert (=> start!33212 true))

(declare-fun b!329829 () Bool)

(declare-fun Unit!10228 () Unit!10224)

(assert (=> b!329829 (= e!202567 Unit!10228)))

(assert (=> b!329829 false))

(declare-fun b!329830 () Bool)

(declare-fun res!181807 () Bool)

(assert (=> b!329830 (=> (not res!181807) (not e!202565))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!329830 (= res!181807 (validKeyInArray!0 k0!2497))))

(declare-fun b!329831 () Bool)

(declare-fun res!181800 () Bool)

(assert (=> b!329831 (=> (not res!181800) (not e!202565))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16867 (_ BitVec 32)) Bool)

(assert (=> b!329831 (= res!181800 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!329832 () Bool)

(declare-fun res!181801 () Bool)

(assert (=> b!329832 (=> (not res!181801) (not e!202565))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16867 (_ BitVec 32)) SeekEntryResult!3115)

(assert (=> b!329832 (= res!181801 (= (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777) (MissingVacant!3115 i!1250)))))

(declare-fun b!329833 () Bool)

(declare-fun Unit!10229 () Unit!10224)

(assert (=> b!329833 (= e!202567 Unit!10229)))

(declare-fun b!329834 () Bool)

(assert (=> b!329834 (= e!202568 e!202570)))

(declare-fun c!51655 () Bool)

(assert (=> b!329834 (= c!51655 (or (= (select (arr!7973 a!3305) index!1840) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7973 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!329835 () Bool)

(assert (=> b!329835 (= e!202565 e!202566)))

(declare-fun res!181804 () Bool)

(assert (=> b!329835 (=> (not res!181804) (not e!202566))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!329835 (= res!181804 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777) lt!158395))))

(assert (=> b!329835 (= lt!158395 (Intermediate!3115 false resIndex!58 resX!58))))

(declare-fun b!329836 () Bool)

(declare-fun res!181808 () Bool)

(assert (=> b!329836 (=> (not res!181808) (not e!202565))))

(declare-fun arrayContainsKey!0 (array!16867 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!329836 (= res!181808 (not (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000)))))

(declare-fun b!329837 () Bool)

(assert (=> b!329837 false))

(declare-fun Unit!10230 () Unit!10224)

(assert (=> b!329837 (= e!202570 Unit!10230)))

(declare-fun b!329838 () Bool)

(assert (=> b!329838 (= e!202566 (not (= index!1840 resIndex!58)))))

(declare-fun lt!158396 () Unit!10224)

(assert (=> b!329838 (= lt!158396 e!202568)))

(declare-fun c!51656 () Bool)

(assert (=> b!329838 (= c!51656 (not (= resIndex!58 index!1840)))))

(assert (= (and start!33212 res!181805) b!329824))

(assert (= (and b!329824 res!181803) b!329830))

(assert (= (and b!329830 res!181807) b!329836))

(assert (= (and b!329836 res!181808) b!329832))

(assert (= (and b!329832 res!181801) b!329831))

(assert (= (and b!329831 res!181800) b!329835))

(assert (= (and b!329835 res!181804) b!329828))

(assert (= (and b!329828 res!181806) b!329823))

(assert (= (and b!329823 res!181802) b!329826))

(assert (= (and b!329826 res!181809) b!329838))

(assert (= (and b!329838 c!51656) b!329834))

(assert (= (and b!329838 (not c!51656)) b!329825))

(assert (= (and b!329834 c!51655) b!329837))

(assert (= (and b!329834 (not c!51655)) b!329827))

(assert (= (and b!329827 c!51654) b!329833))

(assert (= (and b!329827 (not c!51654)) b!329829))

(declare-fun m!335289 () Bool)

(assert (=> b!329836 m!335289))

(declare-fun m!335291 () Bool)

(assert (=> b!329832 m!335291))

(declare-fun m!335293 () Bool)

(assert (=> start!33212 m!335293))

(declare-fun m!335295 () Bool)

(assert (=> start!33212 m!335295))

(declare-fun m!335297 () Bool)

(assert (=> b!329830 m!335297))

(declare-fun m!335299 () Bool)

(assert (=> b!329823 m!335299))

(declare-fun m!335301 () Bool)

(assert (=> b!329835 m!335301))

(assert (=> b!329835 m!335301))

(declare-fun m!335303 () Bool)

(assert (=> b!329835 m!335303))

(declare-fun m!335305 () Bool)

(assert (=> b!329828 m!335305))

(declare-fun m!335307 () Bool)

(assert (=> b!329826 m!335307))

(assert (=> b!329834 m!335307))

(declare-fun m!335309 () Bool)

(assert (=> b!329827 m!335309))

(assert (=> b!329827 m!335309))

(declare-fun m!335311 () Bool)

(assert (=> b!329827 m!335311))

(declare-fun m!335313 () Bool)

(assert (=> b!329831 m!335313))

(check-sat (not b!329832) (not b!329831) (not b!329827) (not b!329835) (not b!329823) (not b!329836) (not start!33212) (not b!329830))
(check-sat)
