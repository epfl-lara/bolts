; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28256 () Bool)

(assert start!28256)

(declare-fun b!289265 () Bool)

(declare-fun res!150928 () Bool)

(declare-fun e!183152 () Bool)

(assert (=> b!289265 (=> (not res!150928) (not e!183152))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!289265 (= res!150928 (validKeyInArray!0 k!2524))))

(declare-fun b!289266 () Bool)

(declare-fun e!183154 () Bool)

(declare-fun e!183151 () Bool)

(assert (=> b!289266 (= e!183154 e!183151)))

(declare-fun res!150930 () Bool)

(assert (=> b!289266 (=> (not res!150930) (not e!183151))))

(declare-fun lt!142760 () Bool)

(declare-datatypes ((SeekEntryResult!2066 0))(
  ( (MissingZero!2066 (index!10434 (_ BitVec 32))) (Found!2066 (index!10435 (_ BitVec 32))) (Intermediate!2066 (undefined!2878 Bool) (index!10436 (_ BitVec 32)) (x!28607 (_ BitVec 32))) (Undefined!2066) (MissingVacant!2066 (index!10437 (_ BitVec 32))) )
))
(declare-fun lt!142759 () SeekEntryResult!2066)

(declare-datatypes ((array!14559 0))(
  ( (array!14560 (arr!6906 (Array (_ BitVec 32) (_ BitVec 64))) (size!7258 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14559)

(assert (=> b!289266 (= res!150930 (and (or lt!142760 (not (undefined!2878 lt!142759))) (or lt!142760 (not (= (select (arr!6906 a!3312) (index!10436 lt!142759)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or lt!142760 (not (= (select (arr!6906 a!3312) (index!10436 lt!142759)) k!2524))) (not lt!142760)))))

(assert (=> b!289266 (= lt!142760 (not (is-Intermediate!2066 lt!142759)))))

(declare-fun b!289267 () Bool)

(declare-fun e!183153 () Bool)

(assert (=> b!289267 (= e!183152 e!183153)))

(declare-fun res!150926 () Bool)

(assert (=> b!289267 (=> (not res!150926) (not e!183153))))

(declare-fun lt!142757 () Bool)

(declare-fun lt!142756 () SeekEntryResult!2066)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!289267 (= res!150926 (or lt!142757 (= lt!142756 (MissingVacant!2066 i!1256))))))

(assert (=> b!289267 (= lt!142757 (= lt!142756 (MissingZero!2066 i!1256)))))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14559 (_ BitVec 32)) SeekEntryResult!2066)

(assert (=> b!289267 (= lt!142756 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!289268 () Bool)

(assert (=> b!289268 (= e!183151 (not true))))

(assert (=> b!289268 (and (= (select (arr!6906 a!3312) (index!10436 lt!142759)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!10436 lt!142759) i!1256))))

(declare-fun b!289269 () Bool)

(assert (=> b!289269 (= e!183153 e!183154)))

(declare-fun res!150929 () Bool)

(assert (=> b!289269 (=> (not res!150929) (not e!183154))))

(assert (=> b!289269 (= res!150929 lt!142757)))

(declare-fun lt!142755 () (_ BitVec 32))

(declare-fun lt!142758 () SeekEntryResult!2066)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14559 (_ BitVec 32)) SeekEntryResult!2066)

(assert (=> b!289269 (= lt!142758 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!142755 k!2524 (array!14560 (store (arr!6906 a!3312) i!1256 k!2524) (size!7258 a!3312)) mask!3809))))

(assert (=> b!289269 (= lt!142759 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!142755 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!289269 (= lt!142755 (toIndex!0 k!2524 mask!3809))))

(declare-fun res!150931 () Bool)

(assert (=> start!28256 (=> (not res!150931) (not e!183152))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28256 (= res!150931 (validMask!0 mask!3809))))

(assert (=> start!28256 e!183152))

(assert (=> start!28256 true))

(declare-fun array_inv!4860 (array!14559) Bool)

(assert (=> start!28256 (array_inv!4860 a!3312)))

(declare-fun b!289270 () Bool)

(declare-fun res!150933 () Bool)

(assert (=> b!289270 (=> (not res!150933) (not e!183152))))

(assert (=> b!289270 (= res!150933 (and (= (size!7258 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7258 a!3312))))))

(declare-fun b!289271 () Bool)

(declare-fun res!150927 () Bool)

(assert (=> b!289271 (=> (not res!150927) (not e!183153))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14559 (_ BitVec 32)) Bool)

(assert (=> b!289271 (= res!150927 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!289272 () Bool)

(declare-fun res!150932 () Bool)

(assert (=> b!289272 (=> (not res!150932) (not e!183152))))

(declare-fun arrayContainsKey!0 (array!14559 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!289272 (= res!150932 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(assert (= (and start!28256 res!150931) b!289270))

(assert (= (and b!289270 res!150933) b!289265))

(assert (= (and b!289265 res!150928) b!289272))

(assert (= (and b!289272 res!150932) b!289267))

(assert (= (and b!289267 res!150926) b!289271))

(assert (= (and b!289271 res!150927) b!289269))

(assert (= (and b!289269 res!150929) b!289266))

(assert (= (and b!289266 res!150930) b!289268))

(declare-fun m!303465 () Bool)

(assert (=> b!289266 m!303465))

(assert (=> b!289268 m!303465))

(declare-fun m!303467 () Bool)

(assert (=> b!289267 m!303467))

(declare-fun m!303469 () Bool)

(assert (=> start!28256 m!303469))

(declare-fun m!303471 () Bool)

(assert (=> start!28256 m!303471))

(declare-fun m!303473 () Bool)

(assert (=> b!289269 m!303473))

(declare-fun m!303475 () Bool)

(assert (=> b!289269 m!303475))

(declare-fun m!303477 () Bool)

(assert (=> b!289269 m!303477))

(declare-fun m!303479 () Bool)

(assert (=> b!289269 m!303479))

(declare-fun m!303481 () Bool)

(assert (=> b!289271 m!303481))

(declare-fun m!303483 () Bool)

(assert (=> b!289272 m!303483))

(declare-fun m!303485 () Bool)

(assert (=> b!289265 m!303485))

(push 1)

