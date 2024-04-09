; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!86622 () Bool)

(assert start!86622)

(declare-fun b!1003987 () Bool)

(declare-fun res!673626 () Bool)

(declare-fun e!565439 () Bool)

(assert (=> b!1003987 (=> (not res!673626) (not e!565439))))

(declare-datatypes ((array!63375 0))(
  ( (array!63376 (arr!30509 (Array (_ BitVec 32) (_ BitVec 64))) (size!31012 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63375)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63375 (_ BitVec 32)) Bool)

(assert (=> b!1003987 (= res!673626 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1003988 () Bool)

(declare-fun res!673633 () Bool)

(assert (=> b!1003988 (=> (not res!673633) (not e!565439))))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(assert (=> b!1003988 (= res!673633 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31012 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31012 a!3219))))))

(declare-fun b!1003989 () Bool)

(declare-fun e!565435 () Bool)

(declare-fun e!565433 () Bool)

(assert (=> b!1003989 (= e!565435 e!565433)))

(declare-fun res!673636 () Bool)

(assert (=> b!1003989 (=> (not res!673636) (not e!565433))))

(declare-fun lt!443965 () (_ BitVec 64))

(declare-fun lt!443960 () array!63375)

(declare-datatypes ((SeekEntryResult!9441 0))(
  ( (MissingZero!9441 (index!40134 (_ BitVec 32))) (Found!9441 (index!40135 (_ BitVec 32))) (Intermediate!9441 (undefined!10253 Bool) (index!40136 (_ BitVec 32)) (x!87566 (_ BitVec 32))) (Undefined!9441) (MissingVacant!9441 (index!40137 (_ BitVec 32))) )
))
(declare-fun lt!443961 () SeekEntryResult!9441)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63375 (_ BitVec 32)) SeekEntryResult!9441)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1003989 (= res!673636 (not (= lt!443961 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!443965 mask!3464) lt!443965 lt!443960 mask!3464))))))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(declare-fun k0!2224 () (_ BitVec 64))

(assert (=> b!1003989 (= lt!443965 (select (store (arr!30509 a!3219) i!1194 k0!2224) j!170))))

(assert (=> b!1003989 (= lt!443960 (array!63376 (store (arr!30509 a!3219) i!1194 k0!2224) (size!31012 a!3219)))))

(declare-fun b!1003991 () Bool)

(declare-fun e!565437 () Bool)

(assert (=> b!1003991 (= e!565437 e!565439)))

(declare-fun res!673623 () Bool)

(assert (=> b!1003991 (=> (not res!673623) (not e!565439))))

(declare-fun lt!443962 () SeekEntryResult!9441)

(assert (=> b!1003991 (= res!673623 (or (= lt!443962 (MissingVacant!9441 i!1194)) (= lt!443962 (MissingZero!9441 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63375 (_ BitVec 32)) SeekEntryResult!9441)

(assert (=> b!1003991 (= lt!443962 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(declare-fun b!1003992 () Bool)

(declare-fun res!673622 () Bool)

(assert (=> b!1003992 (=> (not res!673622) (not e!565433))))

(assert (=> b!1003992 (= res!673622 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1003993 () Bool)

(declare-fun e!565436 () Bool)

(assert (=> b!1003993 (= e!565436 false)))

(declare-fun lt!443964 () (_ BitVec 32))

(declare-fun lt!443966 () SeekEntryResult!9441)

(assert (=> b!1003993 (= lt!443966 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!443964 lt!443965 lt!443960 mask!3464))))

(declare-fun b!1003994 () Bool)

(declare-fun e!565434 () Bool)

(assert (=> b!1003994 (= e!565434 e!565435)))

(declare-fun res!673635 () Bool)

(assert (=> b!1003994 (=> (not res!673635) (not e!565435))))

(declare-fun lt!443967 () SeekEntryResult!9441)

(declare-fun lt!443963 () SeekEntryResult!9441)

(assert (=> b!1003994 (= res!673635 (= lt!443967 lt!443963))))

(assert (=> b!1003994 (= lt!443967 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30509 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1003995 () Bool)

(declare-fun res!673629 () Bool)

(assert (=> b!1003995 (=> (not res!673629) (not e!565437))))

(assert (=> b!1003995 (= res!673629 (and (= (size!31012 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31012 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31012 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1003996 () Bool)

(declare-fun res!673625 () Bool)

(assert (=> b!1003996 (=> (not res!673625) (not e!565437))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1003996 (= res!673625 (validKeyInArray!0 k0!2224))))

(declare-fun b!1003997 () Bool)

(declare-fun res!673631 () Bool)

(assert (=> b!1003997 (=> (not res!673631) (not e!565437))))

(declare-fun arrayContainsKey!0 (array!63375 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1003997 (= res!673631 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1003998 () Bool)

(assert (=> b!1003998 (= e!565433 e!565436)))

(declare-fun res!673630 () Bool)

(assert (=> b!1003998 (=> (not res!673630) (not e!565436))))

(assert (=> b!1003998 (= res!673630 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1245) resX!38) (bvsge (bvadd #b00000000000000000000000000000001 x!1245) #b00000000000000000000000000000000) (bvsge lt!443964 #b00000000000000000000000000000000) (bvslt lt!443964 (size!31012 a!3219))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1003998 (= lt!443964 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1003999 () Bool)

(declare-fun res!673621 () Bool)

(assert (=> b!1003999 (=> (not res!673621) (not e!565436))))

(assert (=> b!1003999 (= res!673621 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!443964 (select (arr!30509 a!3219) j!170) a!3219 mask!3464) lt!443963))))

(declare-fun b!1003990 () Bool)

(declare-fun res!673632 () Bool)

(assert (=> b!1003990 (=> (not res!673632) (not e!565433))))

(assert (=> b!1003990 (= res!673632 (not (= lt!443967 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!443965 lt!443960 mask!3464))))))

(declare-fun res!673624 () Bool)

(assert (=> start!86622 (=> (not res!673624) (not e!565437))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86622 (= res!673624 (validMask!0 mask!3464))))

(assert (=> start!86622 e!565437))

(declare-fun array_inv!23499 (array!63375) Bool)

(assert (=> start!86622 (array_inv!23499 a!3219)))

(assert (=> start!86622 true))

(declare-fun b!1004000 () Bool)

(declare-fun res!673628 () Bool)

(assert (=> b!1004000 (=> (not res!673628) (not e!565437))))

(assert (=> b!1004000 (= res!673628 (validKeyInArray!0 (select (arr!30509 a!3219) j!170)))))

(declare-fun b!1004001 () Bool)

(declare-fun res!673627 () Bool)

(assert (=> b!1004001 (=> (not res!673627) (not e!565439))))

(declare-datatypes ((List!21311 0))(
  ( (Nil!21308) (Cons!21307 (h!22484 (_ BitVec 64)) (t!30320 List!21311)) )
))
(declare-fun arrayNoDuplicates!0 (array!63375 (_ BitVec 32) List!21311) Bool)

(assert (=> b!1004001 (= res!673627 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21308))))

(declare-fun b!1004002 () Bool)

(assert (=> b!1004002 (= e!565439 e!565434)))

(declare-fun res!673634 () Bool)

(assert (=> b!1004002 (=> (not res!673634) (not e!565434))))

(assert (=> b!1004002 (= res!673634 (= lt!443961 lt!443963))))

(assert (=> b!1004002 (= lt!443963 (Intermediate!9441 false resIndex!38 resX!38))))

(assert (=> b!1004002 (= lt!443961 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30509 a!3219) j!170) mask!3464) (select (arr!30509 a!3219) j!170) a!3219 mask!3464))))

(assert (= (and start!86622 res!673624) b!1003995))

(assert (= (and b!1003995 res!673629) b!1004000))

(assert (= (and b!1004000 res!673628) b!1003996))

(assert (= (and b!1003996 res!673625) b!1003997))

(assert (= (and b!1003997 res!673631) b!1003991))

(assert (= (and b!1003991 res!673623) b!1003987))

(assert (= (and b!1003987 res!673626) b!1004001))

(assert (= (and b!1004001 res!673627) b!1003988))

(assert (= (and b!1003988 res!673633) b!1004002))

(assert (= (and b!1004002 res!673634) b!1003994))

(assert (= (and b!1003994 res!673635) b!1003989))

(assert (= (and b!1003989 res!673636) b!1003990))

(assert (= (and b!1003990 res!673632) b!1003992))

(assert (= (and b!1003992 res!673622) b!1003998))

(assert (= (and b!1003998 res!673630) b!1003999))

(assert (= (and b!1003999 res!673621) b!1003993))

(declare-fun m!929701 () Bool)

(assert (=> b!1004001 m!929701))

(declare-fun m!929703 () Bool)

(assert (=> b!1003991 m!929703))

(declare-fun m!929705 () Bool)

(assert (=> b!1004000 m!929705))

(assert (=> b!1004000 m!929705))

(declare-fun m!929707 () Bool)

(assert (=> b!1004000 m!929707))

(declare-fun m!929709 () Bool)

(assert (=> b!1003989 m!929709))

(assert (=> b!1003989 m!929709))

(declare-fun m!929711 () Bool)

(assert (=> b!1003989 m!929711))

(declare-fun m!929713 () Bool)

(assert (=> b!1003989 m!929713))

(declare-fun m!929715 () Bool)

(assert (=> b!1003989 m!929715))

(declare-fun m!929717 () Bool)

(assert (=> b!1003997 m!929717))

(declare-fun m!929719 () Bool)

(assert (=> b!1003996 m!929719))

(declare-fun m!929721 () Bool)

(assert (=> b!1003993 m!929721))

(assert (=> b!1004002 m!929705))

(assert (=> b!1004002 m!929705))

(declare-fun m!929723 () Bool)

(assert (=> b!1004002 m!929723))

(assert (=> b!1004002 m!929723))

(assert (=> b!1004002 m!929705))

(declare-fun m!929725 () Bool)

(assert (=> b!1004002 m!929725))

(declare-fun m!929727 () Bool)

(assert (=> start!86622 m!929727))

(declare-fun m!929729 () Bool)

(assert (=> start!86622 m!929729))

(assert (=> b!1003999 m!929705))

(assert (=> b!1003999 m!929705))

(declare-fun m!929731 () Bool)

(assert (=> b!1003999 m!929731))

(declare-fun m!929733 () Bool)

(assert (=> b!1003998 m!929733))

(assert (=> b!1003994 m!929705))

(assert (=> b!1003994 m!929705))

(declare-fun m!929735 () Bool)

(assert (=> b!1003994 m!929735))

(declare-fun m!929737 () Bool)

(assert (=> b!1003987 m!929737))

(declare-fun m!929739 () Bool)

(assert (=> b!1003990 m!929739))

(check-sat (not b!1004000) (not b!1003999) (not b!1003987) (not b!1004002) (not start!86622) (not b!1003997) (not b!1003994) (not b!1003996) (not b!1003990) (not b!1004001) (not b!1003989) (not b!1003993) (not b!1003991) (not b!1003998))
(check-sat)
