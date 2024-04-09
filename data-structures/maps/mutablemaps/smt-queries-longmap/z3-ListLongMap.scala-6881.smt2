; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!86574 () Bool)

(assert start!86574)

(declare-fun b!1002835 () Bool)

(declare-fun res!672479 () Bool)

(declare-fun e!564929 () Bool)

(assert (=> b!1002835 (=> (not res!672479) (not e!564929))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1002835 (= res!672479 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1002836 () Bool)

(declare-fun e!564935 () Bool)

(assert (=> b!1002836 (= e!564929 e!564935)))

(declare-fun res!672471 () Bool)

(assert (=> b!1002836 (=> (not res!672471) (not e!564935))))

(declare-datatypes ((array!63327 0))(
  ( (array!63328 (arr!30485 (Array (_ BitVec 32) (_ BitVec 64))) (size!30988 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63327)

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun lt!443385 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1002836 (= res!672471 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1245) resX!38) (bvsge (bvadd #b00000000000000000000000000000001 x!1245) #b00000000000000000000000000000000) (bvsge lt!443385 #b00000000000000000000000000000000) (bvslt lt!443385 (size!30988 a!3219))))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1002836 (= lt!443385 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1002837 () Bool)

(declare-fun res!672472 () Bool)

(declare-fun e!564930 () Bool)

(assert (=> b!1002837 (=> (not res!672472) (not e!564930))))

(declare-fun j!170 () (_ BitVec 32))

(assert (=> b!1002837 (= res!672472 (and (= (size!30988 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30988 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30988 a!3219)) (not (= i!1194 j!170))))))

(declare-fun res!672474 () Bool)

(assert (=> start!86574 (=> (not res!672474) (not e!564930))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86574 (= res!672474 (validMask!0 mask!3464))))

(assert (=> start!86574 e!564930))

(declare-fun array_inv!23475 (array!63327) Bool)

(assert (=> start!86574 (array_inv!23475 a!3219)))

(assert (=> start!86574 true))

(declare-fun b!1002838 () Bool)

(declare-fun res!672484 () Bool)

(assert (=> b!1002838 (=> (not res!672484) (not e!564930))))

(declare-fun k0!2224 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!63327 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1002838 (= res!672484 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1002839 () Bool)

(declare-fun res!672475 () Bool)

(assert (=> b!1002839 (=> (not res!672475) (not e!564929))))

(declare-fun lt!443384 () array!63327)

(declare-fun lt!443391 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!9417 0))(
  ( (MissingZero!9417 (index!40038 (_ BitVec 32))) (Found!9417 (index!40039 (_ BitVec 32))) (Intermediate!9417 (undefined!10229 Bool) (index!40040 (_ BitVec 32)) (x!87478 (_ BitVec 32))) (Undefined!9417) (MissingVacant!9417 (index!40041 (_ BitVec 32))) )
))
(declare-fun lt!443386 () SeekEntryResult!9417)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63327 (_ BitVec 32)) SeekEntryResult!9417)

(assert (=> b!1002839 (= res!672475 (not (= lt!443386 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!443391 lt!443384 mask!3464))))))

(declare-fun b!1002840 () Bool)

(declare-fun e!564933 () Bool)

(declare-fun e!564932 () Bool)

(assert (=> b!1002840 (= e!564933 e!564932)))

(declare-fun res!672478 () Bool)

(assert (=> b!1002840 (=> (not res!672478) (not e!564932))))

(declare-fun lt!443390 () SeekEntryResult!9417)

(assert (=> b!1002840 (= res!672478 (= lt!443386 lt!443390))))

(assert (=> b!1002840 (= lt!443386 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30485 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1002841 () Bool)

(declare-fun res!672470 () Bool)

(declare-fun e!564934 () Bool)

(assert (=> b!1002841 (=> (not res!672470) (not e!564934))))

(declare-datatypes ((List!21287 0))(
  ( (Nil!21284) (Cons!21283 (h!22460 (_ BitVec 64)) (t!30296 List!21287)) )
))
(declare-fun arrayNoDuplicates!0 (array!63327 (_ BitVec 32) List!21287) Bool)

(assert (=> b!1002841 (= res!672470 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21284))))

(declare-fun b!1002842 () Bool)

(assert (=> b!1002842 (= e!564934 e!564933)))

(declare-fun res!672480 () Bool)

(assert (=> b!1002842 (=> (not res!672480) (not e!564933))))

(declare-fun lt!443388 () SeekEntryResult!9417)

(assert (=> b!1002842 (= res!672480 (= lt!443388 lt!443390))))

(assert (=> b!1002842 (= lt!443390 (Intermediate!9417 false resIndex!38 resX!38))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1002842 (= lt!443388 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30485 a!3219) j!170) mask!3464) (select (arr!30485 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1002843 () Bool)

(assert (=> b!1002843 (= e!564932 e!564929)))

(declare-fun res!672482 () Bool)

(assert (=> b!1002843 (=> (not res!672482) (not e!564929))))

(assert (=> b!1002843 (= res!672482 (not (= lt!443388 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!443391 mask!3464) lt!443391 lt!443384 mask!3464))))))

(assert (=> b!1002843 (= lt!443391 (select (store (arr!30485 a!3219) i!1194 k0!2224) j!170))))

(assert (=> b!1002843 (= lt!443384 (array!63328 (store (arr!30485 a!3219) i!1194 k0!2224) (size!30988 a!3219)))))

(declare-fun b!1002844 () Bool)

(assert (=> b!1002844 (= e!564930 e!564934)))

(declare-fun res!672477 () Bool)

(assert (=> b!1002844 (=> (not res!672477) (not e!564934))))

(declare-fun lt!443389 () SeekEntryResult!9417)

(assert (=> b!1002844 (= res!672477 (or (= lt!443389 (MissingVacant!9417 i!1194)) (= lt!443389 (MissingZero!9417 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63327 (_ BitVec 32)) SeekEntryResult!9417)

(assert (=> b!1002844 (= lt!443389 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(declare-fun b!1002845 () Bool)

(declare-fun res!672473 () Bool)

(assert (=> b!1002845 (=> (not res!672473) (not e!564930))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1002845 (= res!672473 (validKeyInArray!0 (select (arr!30485 a!3219) j!170)))))

(declare-fun b!1002846 () Bool)

(declare-fun res!672481 () Bool)

(assert (=> b!1002846 (=> (not res!672481) (not e!564934))))

(assert (=> b!1002846 (= res!672481 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30988 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30988 a!3219))))))

(declare-fun b!1002847 () Bool)

(assert (=> b!1002847 (= e!564935 false)))

(declare-fun lt!443387 () SeekEntryResult!9417)

(assert (=> b!1002847 (= lt!443387 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!443385 lt!443391 lt!443384 mask!3464))))

(declare-fun b!1002848 () Bool)

(declare-fun res!672469 () Bool)

(assert (=> b!1002848 (=> (not res!672469) (not e!564935))))

(assert (=> b!1002848 (= res!672469 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!443385 (select (arr!30485 a!3219) j!170) a!3219 mask!3464) lt!443390))))

(declare-fun b!1002849 () Bool)

(declare-fun res!672483 () Bool)

(assert (=> b!1002849 (=> (not res!672483) (not e!564934))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63327 (_ BitVec 32)) Bool)

(assert (=> b!1002849 (= res!672483 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1002850 () Bool)

(declare-fun res!672476 () Bool)

(assert (=> b!1002850 (=> (not res!672476) (not e!564930))))

(assert (=> b!1002850 (= res!672476 (validKeyInArray!0 k0!2224))))

(assert (= (and start!86574 res!672474) b!1002837))

(assert (= (and b!1002837 res!672472) b!1002845))

(assert (= (and b!1002845 res!672473) b!1002850))

(assert (= (and b!1002850 res!672476) b!1002838))

(assert (= (and b!1002838 res!672484) b!1002844))

(assert (= (and b!1002844 res!672477) b!1002849))

(assert (= (and b!1002849 res!672483) b!1002841))

(assert (= (and b!1002841 res!672470) b!1002846))

(assert (= (and b!1002846 res!672481) b!1002842))

(assert (= (and b!1002842 res!672480) b!1002840))

(assert (= (and b!1002840 res!672478) b!1002843))

(assert (= (and b!1002843 res!672482) b!1002839))

(assert (= (and b!1002839 res!672475) b!1002835))

(assert (= (and b!1002835 res!672479) b!1002836))

(assert (= (and b!1002836 res!672471) b!1002848))

(assert (= (and b!1002848 res!672469) b!1002847))

(declare-fun m!928741 () Bool)

(assert (=> b!1002839 m!928741))

(declare-fun m!928743 () Bool)

(assert (=> b!1002836 m!928743))

(declare-fun m!928745 () Bool)

(assert (=> start!86574 m!928745))

(declare-fun m!928747 () Bool)

(assert (=> start!86574 m!928747))

(declare-fun m!928749 () Bool)

(assert (=> b!1002848 m!928749))

(assert (=> b!1002848 m!928749))

(declare-fun m!928751 () Bool)

(assert (=> b!1002848 m!928751))

(assert (=> b!1002842 m!928749))

(assert (=> b!1002842 m!928749))

(declare-fun m!928753 () Bool)

(assert (=> b!1002842 m!928753))

(assert (=> b!1002842 m!928753))

(assert (=> b!1002842 m!928749))

(declare-fun m!928755 () Bool)

(assert (=> b!1002842 m!928755))

(assert (=> b!1002840 m!928749))

(assert (=> b!1002840 m!928749))

(declare-fun m!928757 () Bool)

(assert (=> b!1002840 m!928757))

(declare-fun m!928759 () Bool)

(assert (=> b!1002838 m!928759))

(declare-fun m!928761 () Bool)

(assert (=> b!1002843 m!928761))

(assert (=> b!1002843 m!928761))

(declare-fun m!928763 () Bool)

(assert (=> b!1002843 m!928763))

(declare-fun m!928765 () Bool)

(assert (=> b!1002843 m!928765))

(declare-fun m!928767 () Bool)

(assert (=> b!1002843 m!928767))

(declare-fun m!928769 () Bool)

(assert (=> b!1002849 m!928769))

(assert (=> b!1002845 m!928749))

(assert (=> b!1002845 m!928749))

(declare-fun m!928771 () Bool)

(assert (=> b!1002845 m!928771))

(declare-fun m!928773 () Bool)

(assert (=> b!1002844 m!928773))

(declare-fun m!928775 () Bool)

(assert (=> b!1002841 m!928775))

(declare-fun m!928777 () Bool)

(assert (=> b!1002847 m!928777))

(declare-fun m!928779 () Bool)

(assert (=> b!1002850 m!928779))

(check-sat (not b!1002838) (not b!1002847) (not b!1002842) (not b!1002841) (not b!1002845) (not b!1002848) (not b!1002844) (not b!1002850) (not b!1002839) (not b!1002840) (not start!86574) (not b!1002843) (not b!1002836) (not b!1002849))
(check-sat)
