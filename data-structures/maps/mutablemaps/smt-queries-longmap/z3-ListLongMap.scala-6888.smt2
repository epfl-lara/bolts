; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!86616 () Bool)

(assert start!86616)

(declare-fun b!1003843 () Bool)

(declare-fun res!673483 () Bool)

(declare-fun e!565372 () Bool)

(assert (=> b!1003843 (=> (not res!673483) (not e!565372))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1003843 (= res!673483 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1003844 () Bool)

(declare-fun res!673491 () Bool)

(declare-fun e!565371 () Bool)

(assert (=> b!1003844 (=> (not res!673491) (not e!565371))))

(declare-datatypes ((array!63369 0))(
  ( (array!63370 (arr!30506 (Array (_ BitVec 32) (_ BitVec 64))) (size!31009 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63369)

(declare-datatypes ((List!21308 0))(
  ( (Nil!21305) (Cons!21304 (h!22481 (_ BitVec 64)) (t!30317 List!21308)) )
))
(declare-fun arrayNoDuplicates!0 (array!63369 (_ BitVec 32) List!21308) Bool)

(assert (=> b!1003844 (= res!673491 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21305))))

(declare-fun b!1003845 () Bool)

(declare-fun res!673482 () Bool)

(declare-fun e!565374 () Bool)

(assert (=> b!1003845 (=> (not res!673482) (not e!565374))))

(declare-fun j!170 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!9438 0))(
  ( (MissingZero!9438 (index!40122 (_ BitVec 32))) (Found!9438 (index!40123 (_ BitVec 32))) (Intermediate!9438 (undefined!10250 Bool) (index!40124 (_ BitVec 32)) (x!87555 (_ BitVec 32))) (Undefined!9438) (MissingVacant!9438 (index!40125 (_ BitVec 32))) )
))
(declare-fun lt!443890 () SeekEntryResult!9438)

(declare-fun lt!443891 () (_ BitVec 32))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63369 (_ BitVec 32)) SeekEntryResult!9438)

(assert (=> b!1003845 (= res!673482 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!443891 (select (arr!30506 a!3219) j!170) a!3219 mask!3464) lt!443890))))

(declare-fun b!1003846 () Bool)

(declare-fun e!565370 () Bool)

(assert (=> b!1003846 (= e!565371 e!565370)))

(declare-fun res!673489 () Bool)

(assert (=> b!1003846 (=> (not res!673489) (not e!565370))))

(declare-fun lt!443895 () SeekEntryResult!9438)

(assert (=> b!1003846 (= res!673489 (= lt!443895 lt!443890))))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1003846 (= lt!443890 (Intermediate!9438 false resIndex!38 resX!38))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1003846 (= lt!443895 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30506 a!3219) j!170) mask!3464) (select (arr!30506 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1003847 () Bool)

(declare-fun e!565376 () Bool)

(assert (=> b!1003847 (= e!565370 e!565376)))

(declare-fun res!673479 () Bool)

(assert (=> b!1003847 (=> (not res!673479) (not e!565376))))

(declare-fun lt!443893 () SeekEntryResult!9438)

(assert (=> b!1003847 (= res!673479 (= lt!443893 lt!443890))))

(assert (=> b!1003847 (= lt!443893 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30506 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1003848 () Bool)

(assert (=> b!1003848 (= e!565372 e!565374)))

(declare-fun res!673486 () Bool)

(assert (=> b!1003848 (=> (not res!673486) (not e!565374))))

(assert (=> b!1003848 (= res!673486 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1245) resX!38) (bvsge (bvadd #b00000000000000000000000000000001 x!1245) #b00000000000000000000000000000000) (bvsge lt!443891 #b00000000000000000000000000000000) (bvslt lt!443891 (size!31009 a!3219))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1003848 (= lt!443891 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1003850 () Bool)

(declare-fun res!673488 () Bool)

(assert (=> b!1003850 (=> (not res!673488) (not e!565371))))

(assert (=> b!1003850 (= res!673488 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31009 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31009 a!3219))))))

(declare-fun b!1003851 () Bool)

(declare-fun e!565375 () Bool)

(assert (=> b!1003851 (= e!565375 e!565371)))

(declare-fun res!673477 () Bool)

(assert (=> b!1003851 (=> (not res!673477) (not e!565371))))

(declare-fun lt!443892 () SeekEntryResult!9438)

(assert (=> b!1003851 (= res!673477 (or (= lt!443892 (MissingVacant!9438 i!1194)) (= lt!443892 (MissingZero!9438 i!1194))))))

(declare-fun k0!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63369 (_ BitVec 32)) SeekEntryResult!9438)

(assert (=> b!1003851 (= lt!443892 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(declare-fun b!1003852 () Bool)

(assert (=> b!1003852 (= e!565376 e!565372)))

(declare-fun res!673481 () Bool)

(assert (=> b!1003852 (=> (not res!673481) (not e!565372))))

(declare-fun lt!443894 () array!63369)

(declare-fun lt!443889 () (_ BitVec 64))

(assert (=> b!1003852 (= res!673481 (not (= lt!443895 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!443889 mask!3464) lt!443889 lt!443894 mask!3464))))))

(assert (=> b!1003852 (= lt!443889 (select (store (arr!30506 a!3219) i!1194 k0!2224) j!170))))

(assert (=> b!1003852 (= lt!443894 (array!63370 (store (arr!30506 a!3219) i!1194 k0!2224) (size!31009 a!3219)))))

(declare-fun b!1003853 () Bool)

(declare-fun res!673490 () Bool)

(assert (=> b!1003853 (=> (not res!673490) (not e!565371))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63369 (_ BitVec 32)) Bool)

(assert (=> b!1003853 (= res!673490 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1003854 () Bool)

(assert (=> b!1003854 (= e!565374 false)))

(declare-fun lt!443888 () SeekEntryResult!9438)

(assert (=> b!1003854 (= lt!443888 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!443891 lt!443889 lt!443894 mask!3464))))

(declare-fun b!1003855 () Bool)

(declare-fun res!673485 () Bool)

(assert (=> b!1003855 (=> (not res!673485) (not e!565372))))

(assert (=> b!1003855 (= res!673485 (not (= lt!443893 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!443889 lt!443894 mask!3464))))))

(declare-fun b!1003856 () Bool)

(declare-fun res!673492 () Bool)

(assert (=> b!1003856 (=> (not res!673492) (not e!565375))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1003856 (= res!673492 (validKeyInArray!0 k0!2224))))

(declare-fun b!1003857 () Bool)

(declare-fun res!673487 () Bool)

(assert (=> b!1003857 (=> (not res!673487) (not e!565375))))

(assert (=> b!1003857 (= res!673487 (validKeyInArray!0 (select (arr!30506 a!3219) j!170)))))

(declare-fun b!1003858 () Bool)

(declare-fun res!673484 () Bool)

(assert (=> b!1003858 (=> (not res!673484) (not e!565375))))

(declare-fun arrayContainsKey!0 (array!63369 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1003858 (= res!673484 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(declare-fun res!673478 () Bool)

(assert (=> start!86616 (=> (not res!673478) (not e!565375))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86616 (= res!673478 (validMask!0 mask!3464))))

(assert (=> start!86616 e!565375))

(declare-fun array_inv!23496 (array!63369) Bool)

(assert (=> start!86616 (array_inv!23496 a!3219)))

(assert (=> start!86616 true))

(declare-fun b!1003849 () Bool)

(declare-fun res!673480 () Bool)

(assert (=> b!1003849 (=> (not res!673480) (not e!565375))))

(assert (=> b!1003849 (= res!673480 (and (= (size!31009 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31009 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31009 a!3219)) (not (= i!1194 j!170))))))

(assert (= (and start!86616 res!673478) b!1003849))

(assert (= (and b!1003849 res!673480) b!1003857))

(assert (= (and b!1003857 res!673487) b!1003856))

(assert (= (and b!1003856 res!673492) b!1003858))

(assert (= (and b!1003858 res!673484) b!1003851))

(assert (= (and b!1003851 res!673477) b!1003853))

(assert (= (and b!1003853 res!673490) b!1003844))

(assert (= (and b!1003844 res!673491) b!1003850))

(assert (= (and b!1003850 res!673488) b!1003846))

(assert (= (and b!1003846 res!673489) b!1003847))

(assert (= (and b!1003847 res!673479) b!1003852))

(assert (= (and b!1003852 res!673481) b!1003855))

(assert (= (and b!1003855 res!673485) b!1003843))

(assert (= (and b!1003843 res!673483) b!1003848))

(assert (= (and b!1003848 res!673486) b!1003845))

(assert (= (and b!1003845 res!673482) b!1003854))

(declare-fun m!929581 () Bool)

(assert (=> b!1003844 m!929581))

(declare-fun m!929583 () Bool)

(assert (=> b!1003848 m!929583))

(declare-fun m!929585 () Bool)

(assert (=> b!1003858 m!929585))

(declare-fun m!929587 () Bool)

(assert (=> b!1003852 m!929587))

(assert (=> b!1003852 m!929587))

(declare-fun m!929589 () Bool)

(assert (=> b!1003852 m!929589))

(declare-fun m!929591 () Bool)

(assert (=> b!1003852 m!929591))

(declare-fun m!929593 () Bool)

(assert (=> b!1003852 m!929593))

(declare-fun m!929595 () Bool)

(assert (=> b!1003846 m!929595))

(assert (=> b!1003846 m!929595))

(declare-fun m!929597 () Bool)

(assert (=> b!1003846 m!929597))

(assert (=> b!1003846 m!929597))

(assert (=> b!1003846 m!929595))

(declare-fun m!929599 () Bool)

(assert (=> b!1003846 m!929599))

(declare-fun m!929601 () Bool)

(assert (=> start!86616 m!929601))

(declare-fun m!929603 () Bool)

(assert (=> start!86616 m!929603))

(assert (=> b!1003845 m!929595))

(assert (=> b!1003845 m!929595))

(declare-fun m!929605 () Bool)

(assert (=> b!1003845 m!929605))

(assert (=> b!1003847 m!929595))

(assert (=> b!1003847 m!929595))

(declare-fun m!929607 () Bool)

(assert (=> b!1003847 m!929607))

(declare-fun m!929609 () Bool)

(assert (=> b!1003854 m!929609))

(declare-fun m!929611 () Bool)

(assert (=> b!1003855 m!929611))

(declare-fun m!929613 () Bool)

(assert (=> b!1003851 m!929613))

(assert (=> b!1003857 m!929595))

(assert (=> b!1003857 m!929595))

(declare-fun m!929615 () Bool)

(assert (=> b!1003857 m!929615))

(declare-fun m!929617 () Bool)

(assert (=> b!1003856 m!929617))

(declare-fun m!929619 () Bool)

(assert (=> b!1003853 m!929619))

(check-sat (not b!1003845) (not b!1003857) (not b!1003852) (not b!1003851) (not b!1003847) (not b!1003844) (not b!1003858) (not b!1003853) (not b!1003846) (not start!86616) (not b!1003856) (not b!1003848) (not b!1003854) (not b!1003855))
(check-sat)
