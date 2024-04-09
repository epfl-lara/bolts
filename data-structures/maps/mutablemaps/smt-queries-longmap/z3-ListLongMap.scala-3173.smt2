; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!44676 () Bool)

(assert start!44676)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun b!489888 () Bool)

(declare-datatypes ((array!31695 0))(
  ( (array!31696 (arr!15232 (Array (_ BitVec 32) (_ BitVec 64))) (size!15596 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31695)

(declare-fun e!288042 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3706 0))(
  ( (MissingZero!3706 (index!17003 (_ BitVec 32))) (Found!3706 (index!17004 (_ BitVec 32))) (Intermediate!3706 (undefined!4518 Bool) (index!17005 (_ BitVec 32)) (x!46135 (_ BitVec 32))) (Undefined!3706) (MissingVacant!3706 (index!17006 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31695 (_ BitVec 32)) SeekEntryResult!3706)

(assert (=> b!489888 (= e!288042 (= (seekEntryOrOpen!0 (select (arr!15232 a!3235) j!176) a!3235 mask!3524) (Found!3706 j!176)))))

(declare-fun b!489890 () Bool)

(declare-fun res!292979 () Bool)

(declare-fun e!288040 () Bool)

(assert (=> b!489890 (=> (not res!292979) (not e!288040))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31695 (_ BitVec 32)) Bool)

(assert (=> b!489890 (= res!292979 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!489891 () Bool)

(declare-fun res!292978 () Bool)

(declare-fun e!288041 () Bool)

(assert (=> b!489891 (=> (not res!292978) (not e!288041))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!489891 (= res!292978 (and (= (size!15596 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15596 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15596 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!489892 () Bool)

(declare-fun res!292980 () Bool)

(assert (=> b!489892 (=> (not res!292980) (not e!288041))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!489892 (= res!292980 (validKeyInArray!0 k0!2280))))

(declare-fun b!489893 () Bool)

(declare-fun res!292975 () Bool)

(assert (=> b!489893 (=> (not res!292975) (not e!288041))))

(assert (=> b!489893 (= res!292975 (validKeyInArray!0 (select (arr!15232 a!3235) j!176)))))

(declare-fun b!489894 () Bool)

(assert (=> b!489894 (= e!288041 e!288040)))

(declare-fun res!292981 () Bool)

(assert (=> b!489894 (=> (not res!292981) (not e!288040))))

(declare-fun lt!221219 () SeekEntryResult!3706)

(assert (=> b!489894 (= res!292981 (or (= lt!221219 (MissingZero!3706 i!1204)) (= lt!221219 (MissingVacant!3706 i!1204))))))

(assert (=> b!489894 (= lt!221219 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!489895 () Bool)

(declare-fun res!292977 () Bool)

(assert (=> b!489895 (=> (not res!292977) (not e!288040))))

(declare-datatypes ((List!9443 0))(
  ( (Nil!9440) (Cons!9439 (h!10301 (_ BitVec 64)) (t!15679 List!9443)) )
))
(declare-fun arrayNoDuplicates!0 (array!31695 (_ BitVec 32) List!9443) Bool)

(assert (=> b!489895 (= res!292977 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9440))))

(declare-fun b!489896 () Bool)

(declare-fun res!292976 () Bool)

(assert (=> b!489896 (=> (not res!292976) (not e!288041))))

(declare-fun arrayContainsKey!0 (array!31695 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!489896 (= res!292976 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun res!292982 () Bool)

(assert (=> start!44676 (=> (not res!292982) (not e!288041))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44676 (= res!292982 (validMask!0 mask!3524))))

(assert (=> start!44676 e!288041))

(assert (=> start!44676 true))

(declare-fun array_inv!11006 (array!31695) Bool)

(assert (=> start!44676 (array_inv!11006 a!3235)))

(declare-fun b!489889 () Bool)

(assert (=> b!489889 (= e!288040 (not true))))

(declare-fun lt!221221 () SeekEntryResult!3706)

(declare-fun lt!221222 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31695 (_ BitVec 32)) SeekEntryResult!3706)

(assert (=> b!489889 (= lt!221221 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!221222 (select (store (arr!15232 a!3235) i!1204 k0!2280) j!176) (array!31696 (store (arr!15232 a!3235) i!1204 k0!2280) (size!15596 a!3235)) mask!3524))))

(declare-fun lt!221218 () SeekEntryResult!3706)

(declare-fun lt!221220 () (_ BitVec 32))

(assert (=> b!489889 (= lt!221218 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!221220 (select (arr!15232 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!489889 (= lt!221222 (toIndex!0 (select (store (arr!15232 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!489889 (= lt!221220 (toIndex!0 (select (arr!15232 a!3235) j!176) mask!3524))))

(assert (=> b!489889 e!288042))

(declare-fun res!292974 () Bool)

(assert (=> b!489889 (=> (not res!292974) (not e!288042))))

(assert (=> b!489889 (= res!292974 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14350 0))(
  ( (Unit!14351) )
))
(declare-fun lt!221217 () Unit!14350)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31695 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14350)

(assert (=> b!489889 (= lt!221217 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (= (and start!44676 res!292982) b!489891))

(assert (= (and b!489891 res!292978) b!489893))

(assert (= (and b!489893 res!292975) b!489892))

(assert (= (and b!489892 res!292980) b!489896))

(assert (= (and b!489896 res!292976) b!489894))

(assert (= (and b!489894 res!292981) b!489890))

(assert (= (and b!489890 res!292979) b!489895))

(assert (= (and b!489895 res!292977) b!489889))

(assert (= (and b!489889 res!292974) b!489888))

(declare-fun m!469915 () Bool)

(assert (=> b!489888 m!469915))

(assert (=> b!489888 m!469915))

(declare-fun m!469917 () Bool)

(assert (=> b!489888 m!469917))

(assert (=> b!489893 m!469915))

(assert (=> b!489893 m!469915))

(declare-fun m!469919 () Bool)

(assert (=> b!489893 m!469919))

(declare-fun m!469921 () Bool)

(assert (=> b!489895 m!469921))

(declare-fun m!469923 () Bool)

(assert (=> b!489890 m!469923))

(declare-fun m!469925 () Bool)

(assert (=> start!44676 m!469925))

(declare-fun m!469927 () Bool)

(assert (=> start!44676 m!469927))

(declare-fun m!469929 () Bool)

(assert (=> b!489896 m!469929))

(declare-fun m!469931 () Bool)

(assert (=> b!489892 m!469931))

(declare-fun m!469933 () Bool)

(assert (=> b!489889 m!469933))

(declare-fun m!469935 () Bool)

(assert (=> b!489889 m!469935))

(declare-fun m!469937 () Bool)

(assert (=> b!489889 m!469937))

(assert (=> b!489889 m!469915))

(declare-fun m!469939 () Bool)

(assert (=> b!489889 m!469939))

(assert (=> b!489889 m!469915))

(declare-fun m!469941 () Bool)

(assert (=> b!489889 m!469941))

(assert (=> b!489889 m!469937))

(declare-fun m!469943 () Bool)

(assert (=> b!489889 m!469943))

(assert (=> b!489889 m!469915))

(declare-fun m!469945 () Bool)

(assert (=> b!489889 m!469945))

(assert (=> b!489889 m!469937))

(declare-fun m!469947 () Bool)

(assert (=> b!489889 m!469947))

(declare-fun m!469949 () Bool)

(assert (=> b!489894 m!469949))

(check-sat (not start!44676) (not b!489892) (not b!489889) (not b!489896) (not b!489895) (not b!489888) (not b!489894) (not b!489893) (not b!489890))
(check-sat)
