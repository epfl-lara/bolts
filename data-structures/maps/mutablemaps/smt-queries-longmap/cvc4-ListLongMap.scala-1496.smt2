; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28424 () Bool)

(assert start!28424)

(declare-fun res!152266 () Bool)

(declare-fun e!184075 () Bool)

(assert (=> start!28424 (=> (not res!152266) (not e!184075))))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28424 (= res!152266 (validMask!0 mask!3809))))

(assert (=> start!28424 e!184075))

(assert (=> start!28424 true))

(declare-datatypes ((array!14682 0))(
  ( (array!14683 (arr!6966 (Array (_ BitVec 32) (_ BitVec 64))) (size!7318 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14682)

(declare-fun array_inv!4920 (array!14682) Bool)

(assert (=> start!28424 (array_inv!4920 a!3312)))

(declare-fun b!290885 () Bool)

(declare-fun res!152268 () Bool)

(assert (=> b!290885 (=> (not res!152268) (not e!184075))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!290885 (= res!152268 (validKeyInArray!0 k!2524))))

(declare-fun b!290886 () Bool)

(declare-fun e!184077 () Bool)

(declare-fun e!184076 () Bool)

(assert (=> b!290886 (= e!184077 e!184076)))

(declare-fun res!152267 () Bool)

(assert (=> b!290886 (=> (not res!152267) (not e!184076))))

(declare-datatypes ((SeekEntryResult!2126 0))(
  ( (MissingZero!2126 (index!10674 (_ BitVec 32))) (Found!2126 (index!10675 (_ BitVec 32))) (Intermediate!2126 (undefined!2938 Bool) (index!10676 (_ BitVec 32)) (x!28833 (_ BitVec 32))) (Undefined!2126) (MissingVacant!2126 (index!10677 (_ BitVec 32))) )
))
(declare-fun lt!143836 () SeekEntryResult!2126)

(declare-fun lt!143837 () Bool)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!290886 (= res!152267 (and (not lt!143837) (= lt!143836 (MissingVacant!2126 i!1256))))))

(declare-fun lt!143833 () SeekEntryResult!2126)

(declare-fun lt!143835 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14682 (_ BitVec 32)) SeekEntryResult!2126)

(assert (=> b!290886 (= lt!143833 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143835 k!2524 (array!14683 (store (arr!6966 a!3312) i!1256 k!2524) (size!7318 a!3312)) mask!3809))))

(declare-fun lt!143832 () SeekEntryResult!2126)

(assert (=> b!290886 (= lt!143832 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143835 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!290886 (= lt!143835 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!290887 () Bool)

(declare-fun e!184074 () Bool)

(assert (=> b!290887 (= e!184074 (not true))))

(assert (=> b!290887 (= (index!10676 lt!143832) i!1256)))

(declare-fun b!290888 () Bool)

(assert (=> b!290888 (= e!184076 e!184074)))

(declare-fun res!152263 () Bool)

(assert (=> b!290888 (=> (not res!152263) (not e!184074))))

(declare-fun lt!143834 () Bool)

(assert (=> b!290888 (= res!152263 (and (or lt!143834 (not (undefined!2938 lt!143832))) (not lt!143834) (= (select (arr!6966 a!3312) (index!10676 lt!143832)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!290888 (= lt!143834 (not (is-Intermediate!2126 lt!143832)))))

(declare-fun b!290889 () Bool)

(assert (=> b!290889 (= e!184075 e!184077)))

(declare-fun res!152261 () Bool)

(assert (=> b!290889 (=> (not res!152261) (not e!184077))))

(assert (=> b!290889 (= res!152261 (or lt!143837 (= lt!143836 (MissingVacant!2126 i!1256))))))

(assert (=> b!290889 (= lt!143837 (= lt!143836 (MissingZero!2126 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14682 (_ BitVec 32)) SeekEntryResult!2126)

(assert (=> b!290889 (= lt!143836 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!290890 () Bool)

(declare-fun res!152265 () Bool)

(assert (=> b!290890 (=> (not res!152265) (not e!184077))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14682 (_ BitVec 32)) Bool)

(assert (=> b!290890 (= res!152265 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!290891 () Bool)

(declare-fun res!152264 () Bool)

(assert (=> b!290891 (=> (not res!152264) (not e!184075))))

(declare-fun arrayContainsKey!0 (array!14682 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!290891 (= res!152264 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!290892 () Bool)

(declare-fun res!152262 () Bool)

(assert (=> b!290892 (=> (not res!152262) (not e!184075))))

(assert (=> b!290892 (= res!152262 (and (= (size!7318 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7318 a!3312))))))

(assert (= (and start!28424 res!152266) b!290892))

(assert (= (and b!290892 res!152262) b!290885))

(assert (= (and b!290885 res!152268) b!290891))

(assert (= (and b!290891 res!152264) b!290889))

(assert (= (and b!290889 res!152261) b!290890))

(assert (= (and b!290890 res!152265) b!290886))

(assert (= (and b!290886 res!152267) b!290888))

(assert (= (and b!290888 res!152263) b!290887))

(declare-fun m!304905 () Bool)

(assert (=> b!290886 m!304905))

(declare-fun m!304907 () Bool)

(assert (=> b!290886 m!304907))

(declare-fun m!304909 () Bool)

(assert (=> b!290886 m!304909))

(declare-fun m!304911 () Bool)

(assert (=> b!290886 m!304911))

(declare-fun m!304913 () Bool)

(assert (=> b!290890 m!304913))

(declare-fun m!304915 () Bool)

(assert (=> b!290891 m!304915))

(declare-fun m!304917 () Bool)

(assert (=> start!28424 m!304917))

(declare-fun m!304919 () Bool)

(assert (=> start!28424 m!304919))

(declare-fun m!304921 () Bool)

(assert (=> b!290888 m!304921))

(declare-fun m!304923 () Bool)

(assert (=> b!290889 m!304923))

(declare-fun m!304925 () Bool)

(assert (=> b!290885 m!304925))

(push 1)

