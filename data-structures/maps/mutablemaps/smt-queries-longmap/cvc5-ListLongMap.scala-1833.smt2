; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33216 () Bool)

(assert start!33216)

(declare-fun b!329919 () Bool)

(declare-datatypes ((Unit!10238 0))(
  ( (Unit!10239) )
))
(declare-fun e!202602 () Unit!10238)

(declare-fun e!202604 () Unit!10238)

(assert (=> b!329919 (= e!202602 e!202604)))

(declare-fun c!51672 () Bool)

(declare-datatypes ((array!16871 0))(
  ( (array!16872 (arr!7975 (Array (_ BitVec 32) (_ BitVec 64))) (size!8327 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16871)

(declare-fun index!1840 () (_ BitVec 32))

(assert (=> b!329919 (= c!51672 (or (= (select (arr!7975 a!3305) index!1840) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7975 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!329920 () Bool)

(declare-fun e!202606 () Bool)

(declare-fun e!202605 () Bool)

(assert (=> b!329920 (= e!202606 e!202605)))

(declare-fun res!181864 () Bool)

(assert (=> b!329920 (=> (not res!181864) (not e!202605))))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun k!2497 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!3117 0))(
  ( (MissingZero!3117 (index!14644 (_ BitVec 32))) (Found!3117 (index!14645 (_ BitVec 32))) (Intermediate!3117 (undefined!3929 Bool) (index!14646 (_ BitVec 32)) (x!32895 (_ BitVec 32))) (Undefined!3117) (MissingVacant!3117 (index!14647 (_ BitVec 32))) )
))
(declare-fun lt!158412 () SeekEntryResult!3117)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16871 (_ BitVec 32)) SeekEntryResult!3117)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!329920 (= res!181864 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!158412))))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(assert (=> b!329920 (= lt!158412 (Intermediate!3117 false resIndex!58 resX!58))))

(declare-fun b!329921 () Bool)

(declare-fun e!202601 () Unit!10238)

(declare-fun Unit!10240 () Unit!10238)

(assert (=> b!329921 (= e!202601 Unit!10240)))

(declare-fun b!329923 () Bool)

(assert (=> b!329923 (= e!202605 (not true))))

(assert (=> b!329923 (= index!1840 resIndex!58)))

(declare-fun lt!158413 () Unit!10238)

(assert (=> b!329923 (= lt!158413 e!202602)))

(declare-fun c!51674 () Bool)

(assert (=> b!329923 (= c!51674 (not (= resIndex!58 index!1840)))))

(declare-fun b!329924 () Bool)

(assert (=> b!329924 false))

(declare-fun lt!158414 () Unit!10238)

(assert (=> b!329924 (= lt!158414 e!202601)))

(declare-fun c!51673 () Bool)

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!329924 (= c!51673 (is-Intermediate!3117 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) k!2497 a!3305 mask!3777)))))

(declare-fun Unit!10241 () Unit!10238)

(assert (=> b!329924 (= e!202604 Unit!10241)))

(declare-fun b!329925 () Bool)

(assert (=> b!329925 false))

(declare-fun Unit!10242 () Unit!10238)

(assert (=> b!329925 (= e!202604 Unit!10242)))

(declare-fun b!329926 () Bool)

(declare-fun res!181862 () Bool)

(assert (=> b!329926 (=> (not res!181862) (not e!202606))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16871 (_ BitVec 32)) Bool)

(assert (=> b!329926 (= res!181862 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!329927 () Bool)

(declare-fun res!181869 () Bool)

(assert (=> b!329927 (=> (not res!181869) (not e!202606))))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!329927 (= res!181869 (and (= (size!8327 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8327 a!3305))))))

(declare-fun b!329928 () Bool)

(declare-fun res!181867 () Bool)

(assert (=> b!329928 (=> (not res!181867) (not e!202606))))

(declare-fun arrayContainsKey!0 (array!16871 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!329928 (= res!181867 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!329929 () Bool)

(declare-fun res!181866 () Bool)

(assert (=> b!329929 (=> (not res!181866) (not e!202605))))

(assert (=> b!329929 (= res!181866 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7975 a!3305) index!1840) k!2497)) (= x!1490 resX!58)))))

(declare-fun b!329930 () Bool)

(declare-fun res!181863 () Bool)

(assert (=> b!329930 (=> (not res!181863) (not e!202605))))

(assert (=> b!329930 (= res!181863 (and (= (select (arr!7975 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8327 a!3305))))))

(declare-fun b!329931 () Bool)

(declare-fun res!181860 () Bool)

(assert (=> b!329931 (=> (not res!181860) (not e!202606))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!329931 (= res!181860 (validKeyInArray!0 k!2497))))

(declare-fun res!181865 () Bool)

(assert (=> start!33216 (=> (not res!181865) (not e!202606))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33216 (= res!181865 (validMask!0 mask!3777))))

(assert (=> start!33216 e!202606))

(declare-fun array_inv!5929 (array!16871) Bool)

(assert (=> start!33216 (array_inv!5929 a!3305)))

(assert (=> start!33216 true))

(declare-fun b!329922 () Bool)

(declare-fun res!181868 () Bool)

(assert (=> b!329922 (=> (not res!181868) (not e!202606))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16871 (_ BitVec 32)) SeekEntryResult!3117)

(assert (=> b!329922 (= res!181868 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!3117 i!1250)))))

(declare-fun b!329932 () Bool)

(declare-fun res!181861 () Bool)

(assert (=> b!329932 (=> (not res!181861) (not e!202605))))

(assert (=> b!329932 (= res!181861 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!158412))))

(declare-fun b!329933 () Bool)

(declare-fun Unit!10243 () Unit!10238)

(assert (=> b!329933 (= e!202601 Unit!10243)))

(assert (=> b!329933 false))

(declare-fun b!329934 () Bool)

(declare-fun Unit!10244 () Unit!10238)

(assert (=> b!329934 (= e!202602 Unit!10244)))

(assert (= (and start!33216 res!181865) b!329927))

(assert (= (and b!329927 res!181869) b!329931))

(assert (= (and b!329931 res!181860) b!329928))

(assert (= (and b!329928 res!181867) b!329922))

(assert (= (and b!329922 res!181868) b!329926))

(assert (= (and b!329926 res!181862) b!329920))

(assert (= (and b!329920 res!181864) b!329930))

(assert (= (and b!329930 res!181863) b!329932))

(assert (= (and b!329932 res!181861) b!329929))

(assert (= (and b!329929 res!181866) b!329923))

(assert (= (and b!329923 c!51674) b!329919))

(assert (= (and b!329923 (not c!51674)) b!329934))

(assert (= (and b!329919 c!51672) b!329925))

(assert (= (and b!329919 (not c!51672)) b!329924))

(assert (= (and b!329924 c!51673) b!329921))

(assert (= (and b!329924 (not c!51673)) b!329933))

(declare-fun m!335341 () Bool)

(assert (=> b!329928 m!335341))

(declare-fun m!335343 () Bool)

(assert (=> b!329931 m!335343))

(declare-fun m!335345 () Bool)

(assert (=> b!329926 m!335345))

(declare-fun m!335347 () Bool)

(assert (=> b!329919 m!335347))

(declare-fun m!335349 () Bool)

(assert (=> start!33216 m!335349))

(declare-fun m!335351 () Bool)

(assert (=> start!33216 m!335351))

(declare-fun m!335353 () Bool)

(assert (=> b!329932 m!335353))

(declare-fun m!335355 () Bool)

(assert (=> b!329920 m!335355))

(assert (=> b!329920 m!335355))

(declare-fun m!335357 () Bool)

(assert (=> b!329920 m!335357))

(declare-fun m!335359 () Bool)

(assert (=> b!329930 m!335359))

(declare-fun m!335361 () Bool)

(assert (=> b!329924 m!335361))

(assert (=> b!329924 m!335361))

(declare-fun m!335363 () Bool)

(assert (=> b!329924 m!335363))

(declare-fun m!335365 () Bool)

(assert (=> b!329922 m!335365))

(assert (=> b!329929 m!335347))

(push 1)

