; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56326 () Bool)

(assert start!56326)

(declare-fun b!624224 () Bool)

(declare-fun res!402559 () Bool)

(declare-fun e!357967 () Bool)

(assert (=> b!624224 (=> (not res!402559) (not e!357967))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!624224 (= res!402559 (validKeyInArray!0 k!1786))))

(declare-fun b!624225 () Bool)

(declare-fun res!402556 () Bool)

(assert (=> b!624225 (=> (not res!402556) (not e!357967))))

(declare-datatypes ((array!37714 0))(
  ( (array!37715 (arr!18098 (Array (_ BitVec 32) (_ BitVec 64))) (size!18462 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37714)

(declare-fun arrayContainsKey!0 (array!37714 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!624225 (= res!402556 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!624226 () Bool)

(declare-fun e!357965 () Bool)

(assert (=> b!624226 (= e!357965 false)))

(declare-fun lt!289542 () Bool)

(declare-datatypes ((List!12192 0))(
  ( (Nil!12189) (Cons!12188 (h!13233 (_ BitVec 64)) (t!18428 List!12192)) )
))
(declare-fun arrayNoDuplicates!0 (array!37714 (_ BitVec 32) List!12192) Bool)

(assert (=> b!624226 (= lt!289542 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12189))))

(declare-fun b!624227 () Bool)

(assert (=> b!624227 (= e!357967 e!357965)))

(declare-fun res!402557 () Bool)

(assert (=> b!624227 (=> (not res!402557) (not e!357965))))

(declare-datatypes ((SeekEntryResult!6545 0))(
  ( (MissingZero!6545 (index!28463 (_ BitVec 32))) (Found!6545 (index!28464 (_ BitVec 32))) (Intermediate!6545 (undefined!7357 Bool) (index!28465 (_ BitVec 32)) (x!57245 (_ BitVec 32))) (Undefined!6545) (MissingVacant!6545 (index!28466 (_ BitVec 32))) )
))
(declare-fun lt!289541 () SeekEntryResult!6545)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!624227 (= res!402557 (or (= lt!289541 (MissingZero!6545 i!1108)) (= lt!289541 (MissingVacant!6545 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37714 (_ BitVec 32)) SeekEntryResult!6545)

(assert (=> b!624227 (= lt!289541 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun res!402558 () Bool)

(assert (=> start!56326 (=> (not res!402558) (not e!357967))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56326 (= res!402558 (validMask!0 mask!3053))))

(assert (=> start!56326 e!357967))

(assert (=> start!56326 true))

(declare-fun array_inv!13872 (array!37714) Bool)

(assert (=> start!56326 (array_inv!13872 a!2986)))

(declare-fun b!624228 () Bool)

(declare-fun res!402554 () Bool)

(assert (=> b!624228 (=> (not res!402554) (not e!357967))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!624228 (= res!402554 (validKeyInArray!0 (select (arr!18098 a!2986) j!136)))))

(declare-fun b!624229 () Bool)

(declare-fun res!402560 () Bool)

(assert (=> b!624229 (=> (not res!402560) (not e!357965))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37714 (_ BitVec 32)) Bool)

(assert (=> b!624229 (= res!402560 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!624230 () Bool)

(declare-fun res!402555 () Bool)

(assert (=> b!624230 (=> (not res!402555) (not e!357967))))

(assert (=> b!624230 (= res!402555 (and (= (size!18462 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18462 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18462 a!2986)) (not (= i!1108 j!136))))))

(assert (= (and start!56326 res!402558) b!624230))

(assert (= (and b!624230 res!402555) b!624228))

(assert (= (and b!624228 res!402554) b!624224))

(assert (= (and b!624224 res!402559) b!624225))

(assert (= (and b!624225 res!402556) b!624227))

(assert (= (and b!624227 res!402557) b!624229))

(assert (= (and b!624229 res!402560) b!624226))

(declare-fun m!599979 () Bool)

(assert (=> b!624226 m!599979))

(declare-fun m!599981 () Bool)

(assert (=> b!624227 m!599981))

(declare-fun m!599983 () Bool)

(assert (=> b!624228 m!599983))

(assert (=> b!624228 m!599983))

(declare-fun m!599985 () Bool)

(assert (=> b!624228 m!599985))

(declare-fun m!599987 () Bool)

(assert (=> b!624224 m!599987))

(declare-fun m!599989 () Bool)

(assert (=> b!624229 m!599989))

(declare-fun m!599991 () Bool)

(assert (=> start!56326 m!599991))

(declare-fun m!599993 () Bool)

(assert (=> start!56326 m!599993))

(declare-fun m!599995 () Bool)

(assert (=> b!624225 m!599995))

(push 1)

