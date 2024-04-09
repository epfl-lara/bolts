; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56314 () Bool)

(assert start!56314)

(declare-fun b!624089 () Bool)

(declare-fun res!402421 () Bool)

(declare-fun e!357911 () Bool)

(assert (=> b!624089 (=> (not res!402421) (not e!357911))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!624089 (= res!402421 (validKeyInArray!0 k!1786))))

(declare-fun b!624090 () Bool)

(declare-fun res!402424 () Bool)

(assert (=> b!624090 (=> (not res!402424) (not e!357911))))

(declare-datatypes ((array!37702 0))(
  ( (array!37703 (arr!18092 (Array (_ BitVec 32) (_ BitVec 64))) (size!18456 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37702)

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!624090 (= res!402424 (validKeyInArray!0 (select (arr!18092 a!2986) j!136)))))

(declare-fun b!624091 () Bool)

(declare-fun res!402420 () Bool)

(assert (=> b!624091 (=> (not res!402420) (not e!357911))))

(declare-fun arrayContainsKey!0 (array!37702 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!624091 (= res!402420 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!624092 () Bool)

(declare-fun e!357912 () Bool)

(assert (=> b!624092 (= e!357911 e!357912)))

(declare-fun res!402423 () Bool)

(assert (=> b!624092 (=> (not res!402423) (not e!357912))))

(declare-datatypes ((SeekEntryResult!6539 0))(
  ( (MissingZero!6539 (index!28439 (_ BitVec 32))) (Found!6539 (index!28440 (_ BitVec 32))) (Intermediate!6539 (undefined!7351 Bool) (index!28441 (_ BitVec 32)) (x!57223 (_ BitVec 32))) (Undefined!6539) (MissingVacant!6539 (index!28442 (_ BitVec 32))) )
))
(declare-fun lt!289515 () SeekEntryResult!6539)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!624092 (= res!402423 (or (= lt!289515 (MissingZero!6539 i!1108)) (= lt!289515 (MissingVacant!6539 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37702 (_ BitVec 32)) SeekEntryResult!6539)

(assert (=> b!624092 (= lt!289515 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun res!402419 () Bool)

(assert (=> start!56314 (=> (not res!402419) (not e!357911))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56314 (= res!402419 (validMask!0 mask!3053))))

(assert (=> start!56314 e!357911))

(assert (=> start!56314 true))

(declare-fun array_inv!13866 (array!37702) Bool)

(assert (=> start!56314 (array_inv!13866 a!2986)))

(declare-fun b!624093 () Bool)

(declare-fun res!402425 () Bool)

(assert (=> b!624093 (=> (not res!402425) (not e!357912))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37702 (_ BitVec 32)) Bool)

(assert (=> b!624093 (= res!402425 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!624094 () Bool)

(declare-fun res!402422 () Bool)

(assert (=> b!624094 (=> (not res!402422) (not e!357911))))

(assert (=> b!624094 (= res!402422 (and (= (size!18456 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18456 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18456 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!624095 () Bool)

(assert (=> b!624095 (= e!357912 false)))

(declare-fun lt!289514 () Bool)

(declare-datatypes ((List!12186 0))(
  ( (Nil!12183) (Cons!12182 (h!13227 (_ BitVec 64)) (t!18422 List!12186)) )
))
(declare-fun arrayNoDuplicates!0 (array!37702 (_ BitVec 32) List!12186) Bool)

(assert (=> b!624095 (= lt!289514 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12183))))

(assert (= (and start!56314 res!402419) b!624094))

(assert (= (and b!624094 res!402422) b!624090))

(assert (= (and b!624090 res!402424) b!624089))

(assert (= (and b!624089 res!402421) b!624091))

(assert (= (and b!624091 res!402420) b!624092))

(assert (= (and b!624092 res!402423) b!624093))

(assert (= (and b!624093 res!402425) b!624095))

(declare-fun m!599865 () Bool)

(assert (=> b!624095 m!599865))

(declare-fun m!599867 () Bool)

(assert (=> start!56314 m!599867))

(declare-fun m!599869 () Bool)

(assert (=> start!56314 m!599869))

(declare-fun m!599871 () Bool)

(assert (=> b!624092 m!599871))

(declare-fun m!599873 () Bool)

(assert (=> b!624089 m!599873))

(declare-fun m!599875 () Bool)

(assert (=> b!624093 m!599875))

(declare-fun m!599877 () Bool)

(assert (=> b!624090 m!599877))

(assert (=> b!624090 m!599877))

(declare-fun m!599879 () Bool)

(assert (=> b!624090 m!599879))

(declare-fun m!599881 () Bool)

(assert (=> b!624091 m!599881))

(push 1)

