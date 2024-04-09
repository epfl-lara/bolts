; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86092 () Bool)

(assert start!86092)

(declare-fun b!996788 () Bool)

(declare-fun res!667064 () Bool)

(declare-fun e!562321 () Bool)

(assert (=> b!996788 (=> (not res!667064) (not e!562321))))

(declare-datatypes ((array!63049 0))(
  ( (array!63050 (arr!30352 (Array (_ BitVec 32) (_ BitVec 64))) (size!30855 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63049)

(declare-datatypes ((List!21154 0))(
  ( (Nil!21151) (Cons!21150 (h!22315 (_ BitVec 64)) (t!30163 List!21154)) )
))
(declare-fun arrayNoDuplicates!0 (array!63049 (_ BitVec 32) List!21154) Bool)

(assert (=> b!996788 (= res!667064 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21151))))

(declare-fun b!996789 () Bool)

(declare-fun res!667058 () Bool)

(declare-fun e!562322 () Bool)

(assert (=> b!996789 (=> (not res!667058) (not e!562322))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!996789 (= res!667058 (validKeyInArray!0 k!2224))))

(declare-fun b!996790 () Bool)

(declare-fun res!667060 () Bool)

(assert (=> b!996790 (=> (not res!667060) (not e!562322))))

(declare-fun arrayContainsKey!0 (array!63049 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!996790 (= res!667060 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!996791 () Bool)

(declare-fun res!667066 () Bool)

(assert (=> b!996791 (=> (not res!667066) (not e!562321))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63049 (_ BitVec 32)) Bool)

(assert (=> b!996791 (= res!667066 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun res!667063 () Bool)

(assert (=> start!86092 (=> (not res!667063) (not e!562322))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86092 (= res!667063 (validMask!0 mask!3464))))

(assert (=> start!86092 e!562322))

(declare-fun array_inv!23342 (array!63049) Bool)

(assert (=> start!86092 (array_inv!23342 a!3219)))

(assert (=> start!86092 true))

(declare-fun b!996792 () Bool)

(declare-fun res!667059 () Bool)

(assert (=> b!996792 (=> (not res!667059) (not e!562322))))

(declare-fun j!170 () (_ BitVec 32))

(assert (=> b!996792 (= res!667059 (validKeyInArray!0 (select (arr!30352 a!3219) j!170)))))

(declare-fun b!996793 () Bool)

(assert (=> b!996793 (= e!562321 false)))

(declare-datatypes ((SeekEntryResult!9284 0))(
  ( (MissingZero!9284 (index!39506 (_ BitVec 32))) (Found!9284 (index!39507 (_ BitVec 32))) (Intermediate!9284 (undefined!10096 Bool) (index!39508 (_ BitVec 32)) (x!86969 (_ BitVec 32))) (Undefined!9284) (MissingVacant!9284 (index!39509 (_ BitVec 32))) )
))
(declare-fun lt!441258 () SeekEntryResult!9284)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63049 (_ BitVec 32)) SeekEntryResult!9284)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!996793 (= lt!441258 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30352 a!3219) j!170) mask!3464) (select (arr!30352 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!996794 () Bool)

(declare-fun res!667061 () Bool)

(assert (=> b!996794 (=> (not res!667061) (not e!562322))))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!996794 (= res!667061 (and (= (size!30855 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30855 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30855 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!996795 () Bool)

(declare-fun res!667062 () Bool)

(assert (=> b!996795 (=> (not res!667062) (not e!562321))))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!996795 (= res!667062 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30855 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30855 a!3219))))))

(declare-fun b!996796 () Bool)

(assert (=> b!996796 (= e!562322 e!562321)))

(declare-fun res!667065 () Bool)

(assert (=> b!996796 (=> (not res!667065) (not e!562321))))

(declare-fun lt!441257 () SeekEntryResult!9284)

(assert (=> b!996796 (= res!667065 (or (= lt!441257 (MissingVacant!9284 i!1194)) (= lt!441257 (MissingZero!9284 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63049 (_ BitVec 32)) SeekEntryResult!9284)

(assert (=> b!996796 (= lt!441257 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(assert (= (and start!86092 res!667063) b!996794))

(assert (= (and b!996794 res!667061) b!996792))

(assert (= (and b!996792 res!667059) b!996789))

(assert (= (and b!996789 res!667058) b!996790))

(assert (= (and b!996790 res!667060) b!996796))

(assert (= (and b!996796 res!667065) b!996791))

(assert (= (and b!996791 res!667066) b!996788))

(assert (= (and b!996788 res!667064) b!996795))

(assert (= (and b!996795 res!667062) b!996793))

(declare-fun m!923907 () Bool)

(assert (=> b!996788 m!923907))

(declare-fun m!923909 () Bool)

(assert (=> b!996796 m!923909))

(declare-fun m!923911 () Bool)

(assert (=> b!996793 m!923911))

(assert (=> b!996793 m!923911))

(declare-fun m!923913 () Bool)

(assert (=> b!996793 m!923913))

(assert (=> b!996793 m!923913))

(assert (=> b!996793 m!923911))

(declare-fun m!923915 () Bool)

(assert (=> b!996793 m!923915))

(declare-fun m!923917 () Bool)

(assert (=> b!996791 m!923917))

(assert (=> b!996792 m!923911))

(assert (=> b!996792 m!923911))

(declare-fun m!923919 () Bool)

(assert (=> b!996792 m!923919))

(declare-fun m!923921 () Bool)

(assert (=> b!996789 m!923921))

(declare-fun m!923923 () Bool)

(assert (=> b!996790 m!923923))

(declare-fun m!923925 () Bool)

(assert (=> start!86092 m!923925))

(declare-fun m!923927 () Bool)

(assert (=> start!86092 m!923927))

(push 1)

