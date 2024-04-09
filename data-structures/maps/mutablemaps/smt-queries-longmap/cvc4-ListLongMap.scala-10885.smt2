; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127622 () Bool)

(assert start!127622)

(declare-fun b!1498717 () Bool)

(declare-fun res!1019868 () Bool)

(declare-fun e!839120 () Bool)

(assert (=> b!1498717 (=> (not res!1019868) (not e!839120))))

(declare-datatypes ((array!99916 0))(
  ( (array!99917 (arr!48213 (Array (_ BitVec 32) (_ BitVec 64))) (size!48764 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!99916)

(declare-fun j!87 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1498717 (= res!1019868 (validKeyInArray!0 (select (arr!48213 a!2850) j!87)))))

(declare-fun b!1498718 () Bool)

(declare-fun res!1019869 () Bool)

(assert (=> b!1498718 (=> (not res!1019869) (not e!839120))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99916 (_ BitVec 32)) Bool)

(assert (=> b!1498718 (= res!1019869 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1498719 () Bool)

(declare-fun res!1019866 () Bool)

(assert (=> b!1498719 (=> (not res!1019866) (not e!839120))))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(assert (=> b!1498719 (= res!1019866 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48764 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48764 a!2850)) (= (select (arr!48213 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48213 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48764 a!2850))))))

(declare-fun b!1498720 () Bool)

(declare-fun res!1019867 () Bool)

(assert (=> b!1498720 (=> (not res!1019867) (not e!839120))))

(declare-datatypes ((List!34885 0))(
  ( (Nil!34882) (Cons!34881 (h!36279 (_ BitVec 64)) (t!49586 List!34885)) )
))
(declare-fun arrayNoDuplicates!0 (array!99916 (_ BitVec 32) List!34885) Bool)

(assert (=> b!1498720 (= res!1019867 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34882))))

(declare-fun res!1019871 () Bool)

(assert (=> start!127622 (=> (not res!1019871) (not e!839120))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127622 (= res!1019871 (validMask!0 mask!2661))))

(assert (=> start!127622 e!839120))

(assert (=> start!127622 true))

(declare-fun array_inv!37158 (array!99916) Bool)

(assert (=> start!127622 (array_inv!37158 a!2850)))

(declare-fun b!1498721 () Bool)

(declare-fun res!1019865 () Bool)

(assert (=> b!1498721 (=> (not res!1019865) (not e!839120))))

(assert (=> b!1498721 (= res!1019865 (validKeyInArray!0 (select (arr!48213 a!2850) i!996)))))

(declare-fun b!1498722 () Bool)

(declare-fun res!1019870 () Bool)

(assert (=> b!1498722 (=> (not res!1019870) (not e!839120))))

(assert (=> b!1498722 (= res!1019870 (and (= (size!48764 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48764 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48764 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1498723 () Bool)

(assert (=> b!1498723 (= e!839120 false)))

(declare-datatypes ((SeekEntryResult!12442 0))(
  ( (MissingZero!12442 (index!52159 (_ BitVec 32))) (Found!12442 (index!52160 (_ BitVec 32))) (Intermediate!12442 (undefined!13254 Bool) (index!52161 (_ BitVec 32)) (x!133865 (_ BitVec 32))) (Undefined!12442) (MissingVacant!12442 (index!52162 (_ BitVec 32))) )
))
(declare-fun lt!652633 () SeekEntryResult!12442)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99916 (_ BitVec 32)) SeekEntryResult!12442)

(assert (=> b!1498723 (= lt!652633 (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48213 a!2850) j!87) a!2850 mask!2661))))

(assert (= (and start!127622 res!1019871) b!1498722))

(assert (= (and b!1498722 res!1019870) b!1498721))

(assert (= (and b!1498721 res!1019865) b!1498717))

(assert (= (and b!1498717 res!1019868) b!1498718))

(assert (= (and b!1498718 res!1019869) b!1498720))

(assert (= (and b!1498720 res!1019867) b!1498719))

(assert (= (and b!1498719 res!1019866) b!1498723))

(declare-fun m!1381917 () Bool)

(assert (=> b!1498718 m!1381917))

(declare-fun m!1381919 () Bool)

(assert (=> b!1498721 m!1381919))

(assert (=> b!1498721 m!1381919))

(declare-fun m!1381921 () Bool)

(assert (=> b!1498721 m!1381921))

(declare-fun m!1381923 () Bool)

(assert (=> b!1498719 m!1381923))

(declare-fun m!1381925 () Bool)

(assert (=> b!1498719 m!1381925))

(declare-fun m!1381927 () Bool)

(assert (=> b!1498719 m!1381927))

(declare-fun m!1381929 () Bool)

(assert (=> b!1498723 m!1381929))

(assert (=> b!1498723 m!1381929))

(declare-fun m!1381931 () Bool)

(assert (=> b!1498723 m!1381931))

(assert (=> b!1498717 m!1381929))

(assert (=> b!1498717 m!1381929))

(declare-fun m!1381933 () Bool)

(assert (=> b!1498717 m!1381933))

(declare-fun m!1381935 () Bool)

(assert (=> start!127622 m!1381935))

(declare-fun m!1381937 () Bool)

(assert (=> start!127622 m!1381937))

(declare-fun m!1381939 () Bool)

(assert (=> b!1498720 m!1381939))

(push 1)

(assert (not b!1498717))

(assert (not start!127622))

(assert (not b!1498721))

(assert (not b!1498720))

(assert (not b!1498723))

(assert (not b!1498718))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

