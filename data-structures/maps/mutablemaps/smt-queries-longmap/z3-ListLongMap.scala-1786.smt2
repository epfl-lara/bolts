; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!32426 () Bool)

(assert start!32426)

(declare-fun b!323433 () Bool)

(declare-fun res!177056 () Bool)

(declare-fun e!199899 () Bool)

(assert (=> b!323433 (=> (not res!177056) (not e!199899))))

(declare-fun k0!2497 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!323433 (= res!177056 (validKeyInArray!0 k0!2497))))

(declare-fun b!323434 () Bool)

(declare-fun res!177063 () Bool)

(declare-fun e!199895 () Bool)

(assert (=> b!323434 (=> (not res!177063) (not e!199895))))

(declare-datatypes ((array!16561 0))(
  ( (array!16562 (arr!7835 (Array (_ BitVec 32) (_ BitVec 64))) (size!8187 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16561)

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!323434 (= res!177063 (and (= (select (arr!7835 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8187 a!3305))))))

(declare-fun b!323435 () Bool)

(declare-fun res!177055 () Bool)

(assert (=> b!323435 (=> (not res!177055) (not e!199895))))

(assert (=> b!323435 (= res!177055 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7835 a!3305) index!1840) k0!2497)) (= x!1490 resX!58)))))

(declare-fun b!323436 () Bool)

(assert (=> b!323436 false))

(declare-datatypes ((Unit!10025 0))(
  ( (Unit!10026) )
))
(declare-fun lt!156635 () Unit!10025)

(declare-fun e!199900 () Unit!10025)

(assert (=> b!323436 (= lt!156635 e!199900)))

(declare-fun c!50818 () Bool)

(declare-fun mask!3777 () (_ BitVec 32))

(get-info :version)

(declare-datatypes ((SeekEntryResult!2977 0))(
  ( (MissingZero!2977 (index!14084 (_ BitVec 32))) (Found!2977 (index!14085 (_ BitVec 32))) (Intermediate!2977 (undefined!3789 Bool) (index!14086 (_ BitVec 32)) (x!32304 (_ BitVec 32))) (Undefined!2977) (MissingVacant!2977 (index!14087 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16561 (_ BitVec 32)) SeekEntryResult!2977)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!323436 (= c!50818 ((_ is Intermediate!2977) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) k0!2497 a!3305 mask!3777)))))

(declare-fun e!199897 () Unit!10025)

(declare-fun Unit!10027 () Unit!10025)

(assert (=> b!323436 (= e!199897 Unit!10027)))

(declare-fun b!323437 () Bool)

(declare-fun e!199896 () Unit!10025)

(assert (=> b!323437 (= e!199896 e!199897)))

(declare-fun c!50819 () Bool)

(assert (=> b!323437 (= c!50819 (or (= (select (arr!7835 a!3305) index!1840) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7835 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!323438 () Bool)

(declare-fun Unit!10028 () Unit!10025)

(assert (=> b!323438 (= e!199900 Unit!10028)))

(assert (=> b!323438 false))

(declare-fun b!323439 () Bool)

(assert (=> b!323439 false))

(declare-fun Unit!10029 () Unit!10025)

(assert (=> b!323439 (= e!199897 Unit!10029)))

(declare-fun b!323440 () Bool)

(declare-fun res!177062 () Bool)

(assert (=> b!323440 (=> (not res!177062) (not e!199899))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16561 (_ BitVec 32)) SeekEntryResult!2977)

(assert (=> b!323440 (= res!177062 (= (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777) (MissingVacant!2977 i!1250)))))

(declare-fun b!323442 () Bool)

(declare-fun res!177059 () Bool)

(assert (=> b!323442 (=> (not res!177059) (not e!199899))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16561 (_ BitVec 32)) Bool)

(assert (=> b!323442 (= res!177059 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!323443 () Bool)

(declare-fun res!177060 () Bool)

(assert (=> b!323443 (=> (not res!177060) (not e!199895))))

(declare-fun lt!156634 () SeekEntryResult!2977)

(assert (=> b!323443 (= res!177060 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k0!2497 a!3305 mask!3777) lt!156634))))

(declare-fun b!323444 () Bool)

(declare-fun res!177054 () Bool)

(assert (=> b!323444 (=> (not res!177054) (not e!199899))))

(assert (=> b!323444 (= res!177054 (and (= (size!8187 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8187 a!3305))))))

(declare-fun b!323445 () Bool)

(declare-fun Unit!10030 () Unit!10025)

(assert (=> b!323445 (= e!199896 Unit!10030)))

(declare-fun b!323446 () Bool)

(declare-fun Unit!10031 () Unit!10025)

(assert (=> b!323446 (= e!199900 Unit!10031)))

(declare-fun b!323447 () Bool)

(declare-fun res!177057 () Bool)

(assert (=> b!323447 (=> (not res!177057) (not e!199899))))

(declare-fun arrayContainsKey!0 (array!16561 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!323447 (= res!177057 (not (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000)))))

(declare-fun b!323448 () Bool)

(assert (=> b!323448 (= e!199895 (not (or (not (= (select (arr!7835 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt mask!3777 #b00000000000000000000000000000000) (bvslt index!1840 (bvadd #b00000000000000000000000000000001 mask!3777)))))))

(assert (=> b!323448 (= index!1840 resIndex!58)))

(declare-fun lt!156633 () Unit!10025)

(assert (=> b!323448 (= lt!156633 e!199896)))

(declare-fun c!50817 () Bool)

(assert (=> b!323448 (= c!50817 (not (= resIndex!58 index!1840)))))

(declare-fun b!323441 () Bool)

(assert (=> b!323441 (= e!199899 e!199895)))

(declare-fun res!177061 () Bool)

(assert (=> b!323441 (=> (not res!177061) (not e!199895))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!323441 (= res!177061 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777) lt!156634))))

(assert (=> b!323441 (= lt!156634 (Intermediate!2977 false resIndex!58 resX!58))))

(declare-fun res!177058 () Bool)

(assert (=> start!32426 (=> (not res!177058) (not e!199899))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32426 (= res!177058 (validMask!0 mask!3777))))

(assert (=> start!32426 e!199899))

(declare-fun array_inv!5789 (array!16561) Bool)

(assert (=> start!32426 (array_inv!5789 a!3305)))

(assert (=> start!32426 true))

(assert (= (and start!32426 res!177058) b!323444))

(assert (= (and b!323444 res!177054) b!323433))

(assert (= (and b!323433 res!177056) b!323447))

(assert (= (and b!323447 res!177057) b!323440))

(assert (= (and b!323440 res!177062) b!323442))

(assert (= (and b!323442 res!177059) b!323441))

(assert (= (and b!323441 res!177061) b!323434))

(assert (= (and b!323434 res!177063) b!323443))

(assert (= (and b!323443 res!177060) b!323435))

(assert (= (and b!323435 res!177055) b!323448))

(assert (= (and b!323448 c!50817) b!323437))

(assert (= (and b!323448 (not c!50817)) b!323445))

(assert (= (and b!323437 c!50819) b!323439))

(assert (= (and b!323437 (not c!50819)) b!323436))

(assert (= (and b!323436 c!50818) b!323446))

(assert (= (and b!323436 (not c!50818)) b!323438))

(declare-fun m!330765 () Bool)

(assert (=> b!323442 m!330765))

(declare-fun m!330767 () Bool)

(assert (=> b!323435 m!330767))

(declare-fun m!330769 () Bool)

(assert (=> b!323441 m!330769))

(assert (=> b!323441 m!330769))

(declare-fun m!330771 () Bool)

(assert (=> b!323441 m!330771))

(declare-fun m!330773 () Bool)

(assert (=> b!323433 m!330773))

(assert (=> b!323448 m!330767))

(assert (=> b!323437 m!330767))

(declare-fun m!330775 () Bool)

(assert (=> b!323436 m!330775))

(assert (=> b!323436 m!330775))

(declare-fun m!330777 () Bool)

(assert (=> b!323436 m!330777))

(declare-fun m!330779 () Bool)

(assert (=> b!323443 m!330779))

(declare-fun m!330781 () Bool)

(assert (=> b!323440 m!330781))

(declare-fun m!330783 () Bool)

(assert (=> b!323434 m!330783))

(declare-fun m!330785 () Bool)

(assert (=> b!323447 m!330785))

(declare-fun m!330787 () Bool)

(assert (=> start!32426 m!330787))

(declare-fun m!330789 () Bool)

(assert (=> start!32426 m!330789))

(check-sat (not b!323440) (not start!32426) (not b!323441) (not b!323443) (not b!323436) (not b!323447) (not b!323442) (not b!323433))
(check-sat)
