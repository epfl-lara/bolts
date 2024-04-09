; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53216 () Bool)

(assert start!53216)

(declare-fun b!578075 () Bool)

(declare-fun res!366044 () Bool)

(declare-fun e!332474 () Bool)

(assert (=> b!578075 (=> (not res!366044) (not e!332474))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!578075 (= res!366044 (validKeyInArray!0 k!1786))))

(declare-fun b!578076 () Bool)

(declare-fun res!366045 () Bool)

(assert (=> b!578076 (=> (not res!366045) (not e!332474))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-datatypes ((array!36071 0))(
  ( (array!36072 (arr!17306 (Array (_ BitVec 32) (_ BitVec 64))) (size!17670 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36071)

(assert (=> b!578076 (= res!366045 (and (= (size!17670 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17670 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17670 a!2986)) (not (= i!1108 j!136))))))

(declare-fun res!366043 () Bool)

(assert (=> start!53216 (=> (not res!366043) (not e!332474))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53216 (= res!366043 (validMask!0 mask!3053))))

(assert (=> start!53216 e!332474))

(assert (=> start!53216 true))

(declare-fun array_inv!13080 (array!36071) Bool)

(assert (=> start!53216 (array_inv!13080 a!2986)))

(declare-fun b!578077 () Bool)

(declare-fun res!366047 () Bool)

(declare-fun e!332475 () Bool)

(assert (=> b!578077 (=> (not res!366047) (not e!332475))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36071 (_ BitVec 32)) Bool)

(assert (=> b!578077 (= res!366047 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!578078 () Bool)

(declare-fun res!366046 () Bool)

(assert (=> b!578078 (=> (not res!366046) (not e!332474))))

(declare-fun arrayContainsKey!0 (array!36071 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!578078 (= res!366046 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!578079 () Bool)

(assert (=> b!578079 (= e!332474 e!332475)))

(declare-fun res!366041 () Bool)

(assert (=> b!578079 (=> (not res!366041) (not e!332475))))

(declare-datatypes ((SeekEntryResult!5753 0))(
  ( (MissingZero!5753 (index!25239 (_ BitVec 32))) (Found!5753 (index!25240 (_ BitVec 32))) (Intermediate!5753 (undefined!6565 Bool) (index!25241 (_ BitVec 32)) (x!54169 (_ BitVec 32))) (Undefined!5753) (MissingVacant!5753 (index!25242 (_ BitVec 32))) )
))
(declare-fun lt!264176 () SeekEntryResult!5753)

(assert (=> b!578079 (= res!366041 (or (= lt!264176 (MissingZero!5753 i!1108)) (= lt!264176 (MissingVacant!5753 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36071 (_ BitVec 32)) SeekEntryResult!5753)

(assert (=> b!578079 (= lt!264176 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!578080 () Bool)

(assert (=> b!578080 (= e!332475 false)))

(declare-fun lt!264175 () Bool)

(declare-datatypes ((List!11400 0))(
  ( (Nil!11397) (Cons!11396 (h!12441 (_ BitVec 64)) (t!17636 List!11400)) )
))
(declare-fun arrayNoDuplicates!0 (array!36071 (_ BitVec 32) List!11400) Bool)

(assert (=> b!578080 (= lt!264175 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11397))))

(declare-fun b!578081 () Bool)

(declare-fun res!366042 () Bool)

(assert (=> b!578081 (=> (not res!366042) (not e!332474))))

(assert (=> b!578081 (= res!366042 (validKeyInArray!0 (select (arr!17306 a!2986) j!136)))))

(assert (= (and start!53216 res!366043) b!578076))

(assert (= (and b!578076 res!366045) b!578081))

(assert (= (and b!578081 res!366042) b!578075))

(assert (= (and b!578075 res!366044) b!578078))

(assert (= (and b!578078 res!366046) b!578079))

(assert (= (and b!578079 res!366041) b!578077))

(assert (= (and b!578077 res!366047) b!578080))

(declare-fun m!556837 () Bool)

(assert (=> b!578077 m!556837))

(declare-fun m!556839 () Bool)

(assert (=> b!578078 m!556839))

(declare-fun m!556841 () Bool)

(assert (=> b!578080 m!556841))

(declare-fun m!556843 () Bool)

(assert (=> b!578075 m!556843))

(declare-fun m!556845 () Bool)

(assert (=> start!53216 m!556845))

(declare-fun m!556847 () Bool)

(assert (=> start!53216 m!556847))

(declare-fun m!556849 () Bool)

(assert (=> b!578079 m!556849))

(declare-fun m!556851 () Bool)

(assert (=> b!578081 m!556851))

(assert (=> b!578081 m!556851))

(declare-fun m!556853 () Bool)

(assert (=> b!578081 m!556853))

(push 1)

(assert (not b!578081))

