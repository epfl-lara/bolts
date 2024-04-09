; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!93272 () Bool)

(assert start!93272)

(declare-fun e!601125 () Bool)

(declare-datatypes ((array!66658 0))(
  ( (array!66659 (arr!32048 (Array (_ BitVec 32) (_ BitVec 64))) (size!32585 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66658)

(declare-fun b!1057050 () Bool)

(declare-fun k0!2747 () (_ BitVec 64))

(declare-fun i!1381 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!66658 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1057050 (= e!601125 (arrayContainsKey!0 a!3488 k0!2747 i!1381))))

(declare-fun b!1057051 () Bool)

(declare-fun e!601122 () Bool)

(declare-fun e!601123 () Bool)

(assert (=> b!1057051 (= e!601122 (not e!601123))))

(declare-fun res!705863 () Bool)

(assert (=> b!1057051 (=> res!705863 e!601123)))

(declare-fun lt!466275 () (_ BitVec 32))

(assert (=> b!1057051 (= res!705863 (or (bvsgt lt!466275 i!1381) (bvsle i!1381 lt!466275)))))

(declare-fun e!601126 () Bool)

(assert (=> b!1057051 e!601126))

(declare-fun res!705859 () Bool)

(assert (=> b!1057051 (=> (not res!705859) (not e!601126))))

(assert (=> b!1057051 (= res!705859 (= (select (store (arr!32048 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!466275) k0!2747))))

(declare-fun b!1057052 () Bool)

(declare-fun res!705861 () Bool)

(declare-fun e!601124 () Bool)

(assert (=> b!1057052 (=> (not res!705861) (not e!601124))))

(declare-datatypes ((List!22491 0))(
  ( (Nil!22488) (Cons!22487 (h!23696 (_ BitVec 64)) (t!31805 List!22491)) )
))
(declare-fun arrayNoDuplicates!0 (array!66658 (_ BitVec 32) List!22491) Bool)

(assert (=> b!1057052 (= res!705861 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22488))))

(declare-fun b!1057053 () Bool)

(assert (=> b!1057053 (= e!601126 e!601125)))

(declare-fun res!705864 () Bool)

(assert (=> b!1057053 (=> res!705864 e!601125)))

(assert (=> b!1057053 (= res!705864 (or (bvsgt lt!466275 i!1381) (bvsle i!1381 lt!466275)))))

(declare-fun b!1057054 () Bool)

(declare-fun res!705862 () Bool)

(assert (=> b!1057054 (=> (not res!705862) (not e!601124))))

(assert (=> b!1057054 (= res!705862 (= (select (arr!32048 a!3488) i!1381) k0!2747))))

(declare-fun b!1057055 () Bool)

(assert (=> b!1057055 (= e!601123 true)))

(assert (=> b!1057055 (arrayNoDuplicates!0 a!3488 lt!466275 Nil!22488)))

(declare-datatypes ((Unit!34627 0))(
  ( (Unit!34628) )
))
(declare-fun lt!466274 () Unit!34627)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66658 (_ BitVec 32) (_ BitVec 32)) Unit!34627)

(assert (=> b!1057055 (= lt!466274 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!466275))))

(declare-fun b!1057056 () Bool)

(declare-fun e!601121 () Bool)

(assert (=> b!1057056 (= e!601121 e!601122)))

(declare-fun res!705860 () Bool)

(assert (=> b!1057056 (=> (not res!705860) (not e!601122))))

(assert (=> b!1057056 (= res!705860 (not (= lt!466275 i!1381)))))

(declare-fun lt!466276 () array!66658)

(declare-fun arrayScanForKey!0 (array!66658 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1057056 (= lt!466275 (arrayScanForKey!0 lt!466276 k0!2747 #b00000000000000000000000000000000))))

(declare-fun res!705867 () Bool)

(assert (=> start!93272 (=> (not res!705867) (not e!601124))))

(assert (=> start!93272 (= res!705867 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32585 a!3488)) (bvslt (size!32585 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!93272 e!601124))

(assert (=> start!93272 true))

(declare-fun array_inv!24670 (array!66658) Bool)

(assert (=> start!93272 (array_inv!24670 a!3488)))

(declare-fun b!1057057 () Bool)

(declare-fun res!705865 () Bool)

(assert (=> b!1057057 (=> (not res!705865) (not e!601124))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1057057 (= res!705865 (validKeyInArray!0 k0!2747))))

(declare-fun b!1057058 () Bool)

(assert (=> b!1057058 (= e!601124 e!601121)))

(declare-fun res!705866 () Bool)

(assert (=> b!1057058 (=> (not res!705866) (not e!601121))))

(assert (=> b!1057058 (= res!705866 (arrayContainsKey!0 lt!466276 k0!2747 #b00000000000000000000000000000000))))

(assert (=> b!1057058 (= lt!466276 (array!66659 (store (arr!32048 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32585 a!3488)))))

(assert (= (and start!93272 res!705867) b!1057052))

(assert (= (and b!1057052 res!705861) b!1057057))

(assert (= (and b!1057057 res!705865) b!1057054))

(assert (= (and b!1057054 res!705862) b!1057058))

(assert (= (and b!1057058 res!705866) b!1057056))

(assert (= (and b!1057056 res!705860) b!1057051))

(assert (= (and b!1057051 res!705859) b!1057053))

(assert (= (and b!1057053 (not res!705864)) b!1057050))

(assert (= (and b!1057051 (not res!705863)) b!1057055))

(declare-fun m!976909 () Bool)

(assert (=> b!1057054 m!976909))

(declare-fun m!976911 () Bool)

(assert (=> b!1057056 m!976911))

(declare-fun m!976913 () Bool)

(assert (=> b!1057051 m!976913))

(declare-fun m!976915 () Bool)

(assert (=> b!1057051 m!976915))

(declare-fun m!976917 () Bool)

(assert (=> b!1057055 m!976917))

(declare-fun m!976919 () Bool)

(assert (=> b!1057055 m!976919))

(declare-fun m!976921 () Bool)

(assert (=> b!1057057 m!976921))

(declare-fun m!976923 () Bool)

(assert (=> b!1057052 m!976923))

(declare-fun m!976925 () Bool)

(assert (=> start!93272 m!976925))

(declare-fun m!976927 () Bool)

(assert (=> b!1057050 m!976927))

(declare-fun m!976929 () Bool)

(assert (=> b!1057058 m!976929))

(assert (=> b!1057058 m!976913))

(check-sat (not b!1057057) (not b!1057056) (not b!1057050) (not b!1057055) (not start!93272) (not b!1057052) (not b!1057058))
(check-sat)
