; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26748 () Bool)

(assert start!26748)

(declare-fun b!277704 () Bool)

(declare-fun e!177162 () Bool)

(declare-fun e!177159 () Bool)

(assert (=> b!277704 (= e!177162 e!177159)))

(declare-fun res!141581 () Bool)

(assert (=> b!277704 (=> (not res!141581) (not e!177159))))

(declare-datatypes ((SeekEntryResult!1735 0))(
  ( (MissingZero!1735 (index!9110 (_ BitVec 32))) (Found!1735 (index!9111 (_ BitVec 32))) (Intermediate!1735 (undefined!2547 Bool) (index!9112 (_ BitVec 32)) (x!27324 (_ BitVec 32))) (Undefined!1735) (MissingVacant!1735 (index!9113 (_ BitVec 32))) )
))
(declare-fun lt!138063 () SeekEntryResult!1735)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!277704 (= res!141581 (or (= lt!138063 (MissingZero!1735 i!1267)) (= lt!138063 (MissingVacant!1735 i!1267))))))

(declare-datatypes ((array!13834 0))(
  ( (array!13835 (arr!6566 (Array (_ BitVec 32) (_ BitVec 64))) (size!6918 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13834)

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13834 (_ BitVec 32)) SeekEntryResult!1735)

(assert (=> b!277704 (= lt!138063 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!277705 () Bool)

(declare-fun res!141578 () Bool)

(assert (=> b!277705 (=> (not res!141578) (not e!177162))))

(declare-fun arrayContainsKey!0 (array!13834 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!277705 (= res!141578 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!277706 () Bool)

(declare-fun res!141584 () Bool)

(assert (=> b!277706 (=> (not res!141584) (not e!177162))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!277706 (= res!141584 (validKeyInArray!0 k0!2581))))

(declare-fun b!277708 () Bool)

(declare-datatypes ((Unit!8775 0))(
  ( (Unit!8776) )
))
(declare-fun e!177161 () Unit!8775)

(declare-fun Unit!8777 () Unit!8775)

(assert (=> b!277708 (= e!177161 Unit!8777)))

(declare-fun b!277709 () Bool)

(declare-fun e!177160 () Bool)

(assert (=> b!277709 (= e!177159 e!177160)))

(declare-fun res!141585 () Bool)

(assert (=> b!277709 (=> (not res!141585) (not e!177160))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!277709 (= res!141585 (= startIndex!26 i!1267))))

(declare-fun lt!138062 () array!13834)

(assert (=> b!277709 (= lt!138062 (array!13835 (store (arr!6566 a!3325) i!1267 k0!2581) (size!6918 a!3325)))))

(declare-fun b!277710 () Bool)

(declare-fun res!141580 () Bool)

(assert (=> b!277710 (=> (not res!141580) (not e!177162))))

(assert (=> b!277710 (= res!141580 (and (= (size!6918 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6918 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6918 a!3325))))))

(declare-fun b!277711 () Bool)

(declare-fun lt!138061 () Unit!8775)

(assert (=> b!277711 (= e!177161 lt!138061)))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!13834 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8775)

(assert (=> b!277711 (= lt!138061 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k0!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13834 (_ BitVec 32)) Bool)

(assert (=> b!277711 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) lt!138062 mask!3868)))

(declare-fun b!277707 () Bool)

(declare-fun res!141583 () Bool)

(assert (=> b!277707 (=> (not res!141583) (not e!177159))))

(assert (=> b!277707 (= res!141583 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun res!141582 () Bool)

(assert (=> start!26748 (=> (not res!141582) (not e!177162))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26748 (= res!141582 (validMask!0 mask!3868))))

(assert (=> start!26748 e!177162))

(declare-fun array_inv!4520 (array!13834) Bool)

(assert (=> start!26748 (array_inv!4520 a!3325)))

(assert (=> start!26748 true))

(declare-fun b!277712 () Bool)

(assert (=> b!277712 (= e!177160 (not true))))

(assert (=> b!277712 (= (seekEntryOrOpen!0 k0!2581 lt!138062 mask!3868) (Found!1735 i!1267))))

(declare-fun lt!138064 () Unit!8775)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFinds!0 (array!13834 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!8775)

(assert (=> b!277712 (= lt!138064 (lemmaPutValidKeyAtRightPlaceThenFinds!0 a!3325 i!1267 k0!2581 mask!3868))))

(declare-fun lt!138065 () Unit!8775)

(assert (=> b!277712 (= lt!138065 e!177161)))

(declare-fun c!45614 () Bool)

(assert (=> b!277712 (= c!45614 (bvslt startIndex!26 (bvsub (size!6918 a!3325) #b00000000000000000000000000000001)))))

(declare-fun b!277713 () Bool)

(declare-fun res!141579 () Bool)

(assert (=> b!277713 (=> (not res!141579) (not e!177162))))

(declare-datatypes ((List!4395 0))(
  ( (Nil!4392) (Cons!4391 (h!5058 (_ BitVec 64)) (t!9485 List!4395)) )
))
(declare-fun arrayNoDuplicates!0 (array!13834 (_ BitVec 32) List!4395) Bool)

(assert (=> b!277713 (= res!141579 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4392))))

(assert (= (and start!26748 res!141582) b!277710))

(assert (= (and b!277710 res!141580) b!277706))

(assert (= (and b!277706 res!141584) b!277713))

(assert (= (and b!277713 res!141579) b!277705))

(assert (= (and b!277705 res!141578) b!277704))

(assert (= (and b!277704 res!141581) b!277707))

(assert (= (and b!277707 res!141583) b!277709))

(assert (= (and b!277709 res!141585) b!277712))

(assert (= (and b!277712 c!45614) b!277711))

(assert (= (and b!277712 (not c!45614)) b!277708))

(declare-fun m!292693 () Bool)

(assert (=> start!26748 m!292693))

(declare-fun m!292695 () Bool)

(assert (=> start!26748 m!292695))

(declare-fun m!292697 () Bool)

(assert (=> b!277712 m!292697))

(declare-fun m!292699 () Bool)

(assert (=> b!277712 m!292699))

(declare-fun m!292701 () Bool)

(assert (=> b!277709 m!292701))

(declare-fun m!292703 () Bool)

(assert (=> b!277704 m!292703))

(declare-fun m!292705 () Bool)

(assert (=> b!277705 m!292705))

(declare-fun m!292707 () Bool)

(assert (=> b!277711 m!292707))

(declare-fun m!292709 () Bool)

(assert (=> b!277711 m!292709))

(declare-fun m!292711 () Bool)

(assert (=> b!277706 m!292711))

(declare-fun m!292713 () Bool)

(assert (=> b!277713 m!292713))

(declare-fun m!292715 () Bool)

(assert (=> b!277707 m!292715))

(check-sat (not b!277706) (not b!277707) (not b!277704) (not b!277712) (not b!277711) (not b!277705) (not start!26748) (not b!277713))
(check-sat)
