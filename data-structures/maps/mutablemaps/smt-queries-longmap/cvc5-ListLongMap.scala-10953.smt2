; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128224 () Bool)

(assert start!128224)

(declare-fun b!1504911 () Bool)

(declare-fun res!1025576 () Bool)

(declare-fun e!841190 () Bool)

(assert (=> b!1504911 (=> (not res!1025576) (not e!841190))))

(declare-datatypes ((array!100335 0))(
  ( (array!100336 (arr!48415 (Array (_ BitVec 32) (_ BitVec 64))) (size!48966 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100335)

(declare-fun index!625 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1504911 (= res!1025576 (not (= (select (arr!48415 a!2850) index!625) (select (arr!48415 a!2850) j!87))))))

(declare-fun b!1504912 () Bool)

(declare-fun res!1025575 () Bool)

(declare-fun e!841193 () Bool)

(assert (=> b!1504912 (=> (not res!1025575) (not e!841193))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun lt!653813 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12632 0))(
  ( (MissingZero!12632 (index!52919 (_ BitVec 32))) (Found!12632 (index!52920 (_ BitVec 32))) (Intermediate!12632 (undefined!13444 Bool) (index!52921 (_ BitVec 32)) (x!134623 (_ BitVec 32))) (Undefined!12632) (MissingVacant!12632 (index!52922 (_ BitVec 32))) )
))
(declare-fun lt!653814 () SeekEntryResult!12632)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100335 (_ BitVec 32)) SeekEntryResult!12632)

(assert (=> b!1504912 (= res!1025575 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!653813 vacantBefore!10 (select (arr!48415 a!2850) j!87) a!2850 mask!2661) lt!653814))))

(declare-fun b!1504913 () Bool)

(declare-fun res!1025573 () Bool)

(declare-fun e!841191 () Bool)

(assert (=> b!1504913 (=> (not res!1025573) (not e!841191))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100335 (_ BitVec 32)) Bool)

(assert (=> b!1504913 (= res!1025573 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun res!1025582 () Bool)

(assert (=> start!128224 (=> (not res!1025582) (not e!841191))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128224 (= res!1025582 (validMask!0 mask!2661))))

(assert (=> start!128224 e!841191))

(assert (=> start!128224 true))

(declare-fun array_inv!37360 (array!100335) Bool)

(assert (=> start!128224 (array_inv!37360 a!2850)))

(declare-fun b!1504914 () Bool)

(declare-fun res!1025583 () Bool)

(assert (=> b!1504914 (=> (not res!1025583) (not e!841191))))

(declare-fun i!996 () (_ BitVec 32))

(assert (=> b!1504914 (= res!1025583 (and (= (size!48966 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48966 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48966 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1504915 () Bool)

(declare-fun res!1025578 () Bool)

(assert (=> b!1504915 (=> (not res!1025578) (not e!841191))))

(declare-datatypes ((List!35087 0))(
  ( (Nil!35084) (Cons!35083 (h!36481 (_ BitVec 64)) (t!49788 List!35087)) )
))
(declare-fun arrayNoDuplicates!0 (array!100335 (_ BitVec 32) List!35087) Bool)

(assert (=> b!1504915 (= res!1025578 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!35084))))

(declare-fun b!1504916 () Bool)

(declare-fun res!1025577 () Bool)

(assert (=> b!1504916 (=> (not res!1025577) (not e!841191))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1504916 (= res!1025577 (validKeyInArray!0 (select (arr!48415 a!2850) j!87)))))

(declare-fun b!1504917 () Bool)

(declare-fun res!1025579 () Bool)

(assert (=> b!1504917 (=> (not res!1025579) (not e!841191))))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1504917 (= res!1025579 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48966 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48966 a!2850)) (= (select (arr!48415 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48415 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48966 a!2850))))))

(declare-fun b!1504918 () Bool)

(assert (=> b!1504918 (= e!841190 e!841193)))

(declare-fun res!1025581 () Bool)

(assert (=> b!1504918 (=> (not res!1025581) (not e!841193))))

(assert (=> b!1504918 (= res!1025581 (and (bvsge (bvadd #b00000000000000000000000000000001 x!647) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110) (bvsge lt!653813 #b00000000000000000000000000000000) (bvslt lt!653813 (size!48966 a!2850))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1504918 (= lt!653813 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1504919 () Bool)

(assert (=> b!1504919 (= e!841193 (not true))))

(assert (=> b!1504919 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!653813 vacantAfter!10 (select (store (arr!48415 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) j!87) (array!100336 (store (arr!48415 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48966 a!2850)) mask!2661) lt!653814)))

(declare-datatypes ((Unit!50226 0))(
  ( (Unit!50227) )
))
(declare-fun lt!653815 () Unit!50226)

(declare-fun lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 (array!100335 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50226)

(assert (=> b!1504919 (= lt!653815 (lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 a!2850 i!996 j!87 (bvadd #b00000000000000000000000000000001 x!647) lt!653813 vacantBefore!10 vacantAfter!10 mask!2661))))

(declare-fun b!1504920 () Bool)

(declare-fun res!1025580 () Bool)

(assert (=> b!1504920 (=> (not res!1025580) (not e!841191))))

(assert (=> b!1504920 (= res!1025580 (validKeyInArray!0 (select (arr!48415 a!2850) i!996)))))

(declare-fun b!1504921 () Bool)

(assert (=> b!1504921 (= e!841191 e!841190)))

(declare-fun res!1025574 () Bool)

(assert (=> b!1504921 (=> (not res!1025574) (not e!841190))))

(assert (=> b!1504921 (= res!1025574 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48415 a!2850) j!87) a!2850 mask!2661) lt!653814))))

(assert (=> b!1504921 (= lt!653814 (Found!12632 j!87))))

(assert (= (and start!128224 res!1025582) b!1504914))

(assert (= (and b!1504914 res!1025583) b!1504920))

(assert (= (and b!1504920 res!1025580) b!1504916))

(assert (= (and b!1504916 res!1025577) b!1504913))

(assert (= (and b!1504913 res!1025573) b!1504915))

(assert (= (and b!1504915 res!1025578) b!1504917))

(assert (= (and b!1504917 res!1025579) b!1504921))

(assert (= (and b!1504921 res!1025574) b!1504911))

(assert (= (and b!1504911 res!1025576) b!1504918))

(assert (= (and b!1504918 res!1025581) b!1504912))

(assert (= (and b!1504912 res!1025575) b!1504919))

(declare-fun m!1388067 () Bool)

(assert (=> b!1504913 m!1388067))

(declare-fun m!1388069 () Bool)

(assert (=> b!1504911 m!1388069))

(declare-fun m!1388071 () Bool)

(assert (=> b!1504911 m!1388071))

(assert (=> b!1504921 m!1388071))

(assert (=> b!1504921 m!1388071))

(declare-fun m!1388073 () Bool)

(assert (=> b!1504921 m!1388073))

(declare-fun m!1388075 () Bool)

(assert (=> b!1504919 m!1388075))

(declare-fun m!1388077 () Bool)

(assert (=> b!1504919 m!1388077))

(assert (=> b!1504919 m!1388077))

(declare-fun m!1388079 () Bool)

(assert (=> b!1504919 m!1388079))

(declare-fun m!1388081 () Bool)

(assert (=> b!1504919 m!1388081))

(declare-fun m!1388083 () Bool)

(assert (=> start!128224 m!1388083))

(declare-fun m!1388085 () Bool)

(assert (=> start!128224 m!1388085))

(assert (=> b!1504912 m!1388071))

(assert (=> b!1504912 m!1388071))

(declare-fun m!1388087 () Bool)

(assert (=> b!1504912 m!1388087))

(declare-fun m!1388089 () Bool)

(assert (=> b!1504917 m!1388089))

(assert (=> b!1504917 m!1388075))

(declare-fun m!1388091 () Bool)

(assert (=> b!1504917 m!1388091))

(assert (=> b!1504916 m!1388071))

(assert (=> b!1504916 m!1388071))

(declare-fun m!1388093 () Bool)

(assert (=> b!1504916 m!1388093))

(declare-fun m!1388095 () Bool)

(assert (=> b!1504920 m!1388095))

(assert (=> b!1504920 m!1388095))

(declare-fun m!1388097 () Bool)

(assert (=> b!1504920 m!1388097))

(declare-fun m!1388099 () Bool)

(assert (=> b!1504918 m!1388099))

(declare-fun m!1388101 () Bool)

(assert (=> b!1504915 m!1388101))

(push 1)

