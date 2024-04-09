; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125298 () Bool)

(assert start!125298)

(declare-datatypes ((array!98663 0))(
  ( (array!98664 (arr!47615 (Array (_ BitVec 32) (_ BitVec 64))) (size!48166 (_ BitVec 32))) )
))
(declare-fun lt!640227 () array!98663)

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11890 0))(
  ( (MissingZero!11890 (index!49951 (_ BitVec 32))) (Found!11890 (index!49952 (_ BitVec 32))) (Intermediate!11890 (undefined!12702 Bool) (index!49953 (_ BitVec 32)) (x!131550 (_ BitVec 32))) (Undefined!11890) (MissingVacant!11890 (index!49954 (_ BitVec 32))) )
))
(declare-fun lt!640223 () SeekEntryResult!11890)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun b!1461835 () Bool)

(declare-fun lt!640226 () (_ BitVec 64))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun e!821818 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98663 (_ BitVec 32)) SeekEntryResult!11890)

(assert (=> b!1461835 (= e!821818 (= lt!640223 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!640226 lt!640227 mask!2687)))))

(declare-fun res!991472 () Bool)

(declare-fun e!821822 () Bool)

(assert (=> start!125298 (=> (not res!991472) (not e!821822))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125298 (= res!991472 (validMask!0 mask!2687))))

(assert (=> start!125298 e!821822))

(assert (=> start!125298 true))

(declare-fun a!2862 () array!98663)

(declare-fun array_inv!36560 (array!98663) Bool)

(assert (=> start!125298 (array_inv!36560 a!2862)))

(declare-fun lt!640225 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun e!821819 () Bool)

(declare-fun b!1461836 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98663 (_ BitVec 32)) SeekEntryResult!11890)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98663 (_ BitVec 32)) SeekEntryResult!11890)

(assert (=> b!1461836 (= e!821819 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640225 intermediateAfterIndex!19 lt!640226 lt!640227 mask!2687) (seekEntryOrOpen!0 lt!640226 lt!640227 mask!2687))))))

(declare-fun b!1461837 () Bool)

(declare-fun res!991486 () Bool)

(assert (=> b!1461837 (=> (not res!991486) (not e!821822))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1461837 (= res!991486 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48166 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48166 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48166 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1461838 () Bool)

(declare-fun res!991478 () Bool)

(declare-fun e!821821 () Bool)

(assert (=> b!1461838 (=> res!991478 e!821821)))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun lt!640222 () SeekEntryResult!11890)

(assert (=> b!1461838 (= res!991478 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640225 (select (arr!47615 a!2862) j!93) a!2862 mask!2687) lt!640222)))))

(declare-fun b!1461839 () Bool)

(declare-fun e!821817 () Bool)

(assert (=> b!1461839 (= e!821817 e!821821)))

(declare-fun res!991476 () Bool)

(assert (=> b!1461839 (=> res!991476 e!821821)))

(assert (=> b!1461839 (= res!991476 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!640225 #b00000000000000000000000000000000) (bvsge lt!640225 (size!48166 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1461839 (= lt!640225 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1461840 () Bool)

(declare-fun e!821813 () Bool)

(assert (=> b!1461840 (= e!821813 (or (= (select (arr!47615 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47615 a!2862) intermediateBeforeIndex!19) (select (arr!47615 a!2862) j!93))))))

(declare-fun b!1461841 () Bool)

(declare-fun res!991483 () Bool)

(assert (=> b!1461841 (=> (not res!991483) (not e!821822))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1461841 (= res!991483 (validKeyInArray!0 (select (arr!47615 a!2862) j!93)))))

(declare-fun b!1461842 () Bool)

(declare-fun e!821816 () Bool)

(assert (=> b!1461842 (= e!821822 e!821816)))

(declare-fun res!991487 () Bool)

(assert (=> b!1461842 (=> (not res!991487) (not e!821816))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1461842 (= res!991487 (= (select (store (arr!47615 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1461842 (= lt!640227 (array!98664 (store (arr!47615 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48166 a!2862)))))

(declare-fun b!1461843 () Bool)

(declare-fun res!991481 () Bool)

(assert (=> b!1461843 (=> (not res!991481) (not e!821822))))

(declare-datatypes ((List!34296 0))(
  ( (Nil!34293) (Cons!34292 (h!35642 (_ BitVec 64)) (t!48997 List!34296)) )
))
(declare-fun arrayNoDuplicates!0 (array!98663 (_ BitVec 32) List!34296) Bool)

(assert (=> b!1461843 (= res!991481 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34293))))

(declare-fun b!1461844 () Bool)

(declare-fun res!991484 () Bool)

(declare-fun e!821820 () Bool)

(assert (=> b!1461844 (=> (not res!991484) (not e!821820))))

(assert (=> b!1461844 (= res!991484 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47615 a!2862) j!93) a!2862 mask!2687) lt!640222))))

(declare-fun b!1461845 () Bool)

(assert (=> b!1461845 (= e!821821 true)))

(declare-fun lt!640228 () Bool)

(assert (=> b!1461845 (= lt!640228 e!821819)))

(declare-fun c!134696 () Bool)

(assert (=> b!1461845 (= c!134696 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1461846 () Bool)

(declare-fun e!821815 () Bool)

(assert (=> b!1461846 (= e!821820 e!821815)))

(declare-fun res!991473 () Bool)

(assert (=> b!1461846 (=> (not res!991473) (not e!821815))))

(assert (=> b!1461846 (= res!991473 (= lt!640223 (Intermediate!11890 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1461846 (= lt!640223 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!640226 mask!2687) lt!640226 lt!640227 mask!2687))))

(assert (=> b!1461846 (= lt!640226 (select (store (arr!47615 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1461847 () Bool)

(declare-fun res!991479 () Bool)

(assert (=> b!1461847 (=> (not res!991479) (not e!821822))))

(assert (=> b!1461847 (= res!991479 (validKeyInArray!0 (select (arr!47615 a!2862) i!1006)))))

(declare-fun b!1461848 () Bool)

(assert (=> b!1461848 (= e!821815 (not e!821817))))

(declare-fun res!991482 () Bool)

(assert (=> b!1461848 (=> res!991482 e!821817)))

(assert (=> b!1461848 (= res!991482 (or (and (= (select (arr!47615 a!2862) index!646) (select (store (arr!47615 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47615 a!2862) index!646) (select (arr!47615 a!2862) j!93))) (= (select (arr!47615 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1461848 e!821813))

(declare-fun res!991485 () Bool)

(assert (=> b!1461848 (=> (not res!991485) (not e!821813))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98663 (_ BitVec 32)) Bool)

(assert (=> b!1461848 (= res!991485 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49224 0))(
  ( (Unit!49225) )
))
(declare-fun lt!640224 () Unit!49224)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98663 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49224)

(assert (=> b!1461848 (= lt!640224 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1461849 () Bool)

(assert (=> b!1461849 (= e!821818 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!640226 lt!640227 mask!2687) (seekEntryOrOpen!0 lt!640226 lt!640227 mask!2687)))))

(declare-fun b!1461850 () Bool)

(assert (=> b!1461850 (= e!821816 e!821820)))

(declare-fun res!991471 () Bool)

(assert (=> b!1461850 (=> (not res!991471) (not e!821820))))

(assert (=> b!1461850 (= res!991471 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47615 a!2862) j!93) mask!2687) (select (arr!47615 a!2862) j!93) a!2862 mask!2687) lt!640222))))

(assert (=> b!1461850 (= lt!640222 (Intermediate!11890 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1461851 () Bool)

(declare-fun res!991488 () Bool)

(assert (=> b!1461851 (=> (not res!991488) (not e!821822))))

(assert (=> b!1461851 (= res!991488 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1461852 () Bool)

(declare-fun res!991475 () Bool)

(assert (=> b!1461852 (=> (not res!991475) (not e!821822))))

(assert (=> b!1461852 (= res!991475 (and (= (size!48166 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48166 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48166 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1461853 () Bool)

(declare-fun res!991474 () Bool)

(assert (=> b!1461853 (=> (not res!991474) (not e!821815))))

(assert (=> b!1461853 (= res!991474 e!821818)))

(declare-fun c!134695 () Bool)

(assert (=> b!1461853 (= c!134695 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1461854 () Bool)

(assert (=> b!1461854 (= e!821819 (not (= lt!640223 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640225 lt!640226 lt!640227 mask!2687))))))

(declare-fun b!1461855 () Bool)

(declare-fun res!991480 () Bool)

(assert (=> b!1461855 (=> (not res!991480) (not e!821815))))

(assert (=> b!1461855 (= res!991480 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1461856 () Bool)

(declare-fun res!991477 () Bool)

(assert (=> b!1461856 (=> (not res!991477) (not e!821813))))

(assert (=> b!1461856 (= res!991477 (= (seekEntryOrOpen!0 (select (arr!47615 a!2862) j!93) a!2862 mask!2687) (Found!11890 j!93)))))

(assert (= (and start!125298 res!991472) b!1461852))

(assert (= (and b!1461852 res!991475) b!1461847))

(assert (= (and b!1461847 res!991479) b!1461841))

(assert (= (and b!1461841 res!991483) b!1461851))

(assert (= (and b!1461851 res!991488) b!1461843))

(assert (= (and b!1461843 res!991481) b!1461837))

(assert (= (and b!1461837 res!991486) b!1461842))

(assert (= (and b!1461842 res!991487) b!1461850))

(assert (= (and b!1461850 res!991471) b!1461844))

(assert (= (and b!1461844 res!991484) b!1461846))

(assert (= (and b!1461846 res!991473) b!1461853))

(assert (= (and b!1461853 c!134695) b!1461835))

(assert (= (and b!1461853 (not c!134695)) b!1461849))

(assert (= (and b!1461853 res!991474) b!1461855))

(assert (= (and b!1461855 res!991480) b!1461848))

(assert (= (and b!1461848 res!991485) b!1461856))

(assert (= (and b!1461856 res!991477) b!1461840))

(assert (= (and b!1461848 (not res!991482)) b!1461839))

(assert (= (and b!1461839 (not res!991476)) b!1461838))

(assert (= (and b!1461838 (not res!991478)) b!1461845))

(assert (= (and b!1461845 c!134696) b!1461854))

(assert (= (and b!1461845 (not c!134696)) b!1461836))

(declare-fun m!1349413 () Bool)

(assert (=> b!1461854 m!1349413))

(declare-fun m!1349415 () Bool)

(assert (=> b!1461844 m!1349415))

(assert (=> b!1461844 m!1349415))

(declare-fun m!1349417 () Bool)

(assert (=> b!1461844 m!1349417))

(assert (=> b!1461856 m!1349415))

(assert (=> b!1461856 m!1349415))

(declare-fun m!1349419 () Bool)

(assert (=> b!1461856 m!1349419))

(declare-fun m!1349421 () Bool)

(assert (=> start!125298 m!1349421))

(declare-fun m!1349423 () Bool)

(assert (=> start!125298 m!1349423))

(declare-fun m!1349425 () Bool)

(assert (=> b!1461848 m!1349425))

(declare-fun m!1349427 () Bool)

(assert (=> b!1461848 m!1349427))

(declare-fun m!1349429 () Bool)

(assert (=> b!1461848 m!1349429))

(declare-fun m!1349431 () Bool)

(assert (=> b!1461848 m!1349431))

(declare-fun m!1349433 () Bool)

(assert (=> b!1461848 m!1349433))

(assert (=> b!1461848 m!1349415))

(declare-fun m!1349435 () Bool)

(assert (=> b!1461839 m!1349435))

(assert (=> b!1461841 m!1349415))

(assert (=> b!1461841 m!1349415))

(declare-fun m!1349437 () Bool)

(assert (=> b!1461841 m!1349437))

(declare-fun m!1349439 () Bool)

(assert (=> b!1461840 m!1349439))

(assert (=> b!1461840 m!1349415))

(declare-fun m!1349441 () Bool)

(assert (=> b!1461836 m!1349441))

(declare-fun m!1349443 () Bool)

(assert (=> b!1461836 m!1349443))

(assert (=> b!1461850 m!1349415))

(assert (=> b!1461850 m!1349415))

(declare-fun m!1349445 () Bool)

(assert (=> b!1461850 m!1349445))

(assert (=> b!1461850 m!1349445))

(assert (=> b!1461850 m!1349415))

(declare-fun m!1349447 () Bool)

(assert (=> b!1461850 m!1349447))

(declare-fun m!1349449 () Bool)

(assert (=> b!1461846 m!1349449))

(assert (=> b!1461846 m!1349449))

(declare-fun m!1349451 () Bool)

(assert (=> b!1461846 m!1349451))

(assert (=> b!1461846 m!1349427))

(declare-fun m!1349453 () Bool)

(assert (=> b!1461846 m!1349453))

(assert (=> b!1461838 m!1349415))

(assert (=> b!1461838 m!1349415))

(declare-fun m!1349455 () Bool)

(assert (=> b!1461838 m!1349455))

(declare-fun m!1349457 () Bool)

(assert (=> b!1461843 m!1349457))

(assert (=> b!1461842 m!1349427))

(declare-fun m!1349459 () Bool)

(assert (=> b!1461842 m!1349459))

(declare-fun m!1349461 () Bool)

(assert (=> b!1461851 m!1349461))

(declare-fun m!1349463 () Bool)

(assert (=> b!1461835 m!1349463))

(declare-fun m!1349465 () Bool)

(assert (=> b!1461847 m!1349465))

(assert (=> b!1461847 m!1349465))

(declare-fun m!1349467 () Bool)

(assert (=> b!1461847 m!1349467))

(declare-fun m!1349469 () Bool)

(assert (=> b!1461849 m!1349469))

(assert (=> b!1461849 m!1349443))

(check-sat (not b!1461856) (not b!1461839) (not start!125298) (not b!1461849) (not b!1461854) (not b!1461850) (not b!1461835) (not b!1461836) (not b!1461844) (not b!1461847) (not b!1461851) (not b!1461841) (not b!1461843) (not b!1461848) (not b!1461846) (not b!1461838))
(check-sat)
