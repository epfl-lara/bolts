; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127934 () Bool)

(assert start!127934)

(declare-fun mask!2661 () (_ BitVec 32))

(declare-datatypes ((array!100195 0))(
  ( (array!100196 (arr!48351 (Array (_ BitVec 32) (_ BitVec 64))) (size!48902 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100195)

(declare-fun index!625 () (_ BitVec 32))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun e!840371 () Bool)

(declare-datatypes ((SeekEntryResult!12568 0))(
  ( (MissingZero!12568 (index!52663 (_ BitVec 32))) (Found!12568 (index!52664 (_ BitVec 32))) (Intermediate!12568 (undefined!13380 Bool) (index!52665 (_ BitVec 32)) (x!134362 (_ BitVec 32))) (Undefined!12568) (MissingVacant!12568 (index!52666 (_ BitVec 32))) )
))
(declare-fun lt!653362 () SeekEntryResult!12568)

(declare-fun vacantAfter!10 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(declare-fun b!1502558 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100195 (_ BitVec 32)) SeekEntryResult!12568)

(assert (=> b!1502558 (= e!840371 (not (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantAfter!10 (select (store (arr!48351 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) j!87) (array!100196 (store (arr!48351 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48902 a!2850)) mask!2661) lt!653362)))))

(declare-fun b!1502559 () Bool)

(declare-fun res!1023621 () Bool)

(assert (=> b!1502559 (=> (not res!1023621) (not e!840371))))

(assert (=> b!1502559 (= res!1023621 (and (= (select (arr!48351 a!2850) index!625) (select (arr!48351 a!2850) j!87)) (= j!87 index!625)))))

(declare-fun b!1502560 () Bool)

(declare-fun res!1023623 () Bool)

(declare-fun e!840370 () Bool)

(assert (=> b!1502560 (=> (not res!1023623) (not e!840370))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1502560 (= res!1023623 (validKeyInArray!0 (select (arr!48351 a!2850) j!87)))))

(declare-fun b!1502561 () Bool)

(declare-fun res!1023620 () Bool)

(assert (=> b!1502561 (=> (not res!1023620) (not e!840370))))

(assert (=> b!1502561 (= res!1023620 (validKeyInArray!0 (select (arr!48351 a!2850) i!996)))))

(declare-fun b!1502562 () Bool)

(declare-fun res!1023619 () Bool)

(assert (=> b!1502562 (=> (not res!1023619) (not e!840370))))

(declare-datatypes ((List!35023 0))(
  ( (Nil!35020) (Cons!35019 (h!36417 (_ BitVec 64)) (t!49724 List!35023)) )
))
(declare-fun arrayNoDuplicates!0 (array!100195 (_ BitVec 32) List!35023) Bool)

(assert (=> b!1502562 (= res!1023619 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!35020))))

(declare-fun res!1023622 () Bool)

(assert (=> start!127934 (=> (not res!1023622) (not e!840370))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127934 (= res!1023622 (validMask!0 mask!2661))))

(assert (=> start!127934 e!840370))

(assert (=> start!127934 true))

(declare-fun array_inv!37296 (array!100195) Bool)

(assert (=> start!127934 (array_inv!37296 a!2850)))

(declare-fun b!1502563 () Bool)

(declare-fun res!1023617 () Bool)

(assert (=> b!1502563 (=> (not res!1023617) (not e!840370))))

(assert (=> b!1502563 (= res!1023617 (and (= (size!48902 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48902 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48902 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1502564 () Bool)

(assert (=> b!1502564 (= e!840370 e!840371)))

(declare-fun res!1023618 () Bool)

(assert (=> b!1502564 (=> (not res!1023618) (not e!840371))))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(assert (=> b!1502564 (= res!1023618 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48351 a!2850) j!87) a!2850 mask!2661) lt!653362))))

(assert (=> b!1502564 (= lt!653362 (Found!12568 j!87))))

(declare-fun b!1502565 () Bool)

(declare-fun res!1023624 () Bool)

(assert (=> b!1502565 (=> (not res!1023624) (not e!840370))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100195 (_ BitVec 32)) Bool)

(assert (=> b!1502565 (= res!1023624 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1502566 () Bool)

(declare-fun res!1023616 () Bool)

(assert (=> b!1502566 (=> (not res!1023616) (not e!840370))))

(assert (=> b!1502566 (= res!1023616 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48902 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48902 a!2850)) (= (select (arr!48351 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48351 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48902 a!2850))))))

(assert (= (and start!127934 res!1023622) b!1502563))

(assert (= (and b!1502563 res!1023617) b!1502561))

(assert (= (and b!1502561 res!1023620) b!1502560))

(assert (= (and b!1502560 res!1023623) b!1502565))

(assert (= (and b!1502565 res!1023624) b!1502562))

(assert (= (and b!1502562 res!1023619) b!1502566))

(assert (= (and b!1502566 res!1023616) b!1502564))

(assert (= (and b!1502564 res!1023618) b!1502559))

(assert (= (and b!1502559 res!1023621) b!1502558))

(declare-fun m!1385895 () Bool)

(assert (=> b!1502560 m!1385895))

(assert (=> b!1502560 m!1385895))

(declare-fun m!1385897 () Bool)

(assert (=> b!1502560 m!1385897))

(declare-fun m!1385899 () Bool)

(assert (=> start!127934 m!1385899))

(declare-fun m!1385901 () Bool)

(assert (=> start!127934 m!1385901))

(declare-fun m!1385903 () Bool)

(assert (=> b!1502559 m!1385903))

(assert (=> b!1502559 m!1385895))

(assert (=> b!1502564 m!1385895))

(assert (=> b!1502564 m!1385895))

(declare-fun m!1385905 () Bool)

(assert (=> b!1502564 m!1385905))

(declare-fun m!1385907 () Bool)

(assert (=> b!1502561 m!1385907))

(assert (=> b!1502561 m!1385907))

(declare-fun m!1385909 () Bool)

(assert (=> b!1502561 m!1385909))

(declare-fun m!1385911 () Bool)

(assert (=> b!1502562 m!1385911))

(declare-fun m!1385913 () Bool)

(assert (=> b!1502566 m!1385913))

(declare-fun m!1385915 () Bool)

(assert (=> b!1502566 m!1385915))

(declare-fun m!1385917 () Bool)

(assert (=> b!1502566 m!1385917))

(declare-fun m!1385919 () Bool)

(assert (=> b!1502565 m!1385919))

(assert (=> b!1502558 m!1385915))

(declare-fun m!1385921 () Bool)

(assert (=> b!1502558 m!1385921))

(assert (=> b!1502558 m!1385921))

(declare-fun m!1385923 () Bool)

(assert (=> b!1502558 m!1385923))

(push 1)

(assert (not b!1502560))

(assert (not b!1502565))

(assert (not b!1502562))

(assert (not b!1502564))

(assert (not b!1502561))

(assert (not b!1502558))

(assert (not start!127934))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!157673 () Bool)

(assert (=> d!157673 (= (validKeyInArray!0 (select (arr!48351 a!2850) j!87)) (and (not (= (select (arr!48351 a!2850) j!87) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48351 a!2850) j!87) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1502560 d!157673))

(declare-fun bm!68088 () Bool)

(declare-fun call!68091 () Bool)

(assert (=> bm!68088 (= call!68091 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2850 mask!2661))))

(declare-fun b!1502608 () Bool)

(declare-fun e!840401 () Bool)

(assert (=> b!1502608 (= e!840401 call!68091)))

(declare-fun d!157675 () Bool)

(declare-fun res!1023639 () Bool)

(declare-fun e!840400 () Bool)

(assert (=> d!157675 (=> res!1023639 e!840400)))

(assert (=> d!157675 (= res!1023639 (bvsge #b00000000000000000000000000000000 (size!48902 a!2850)))))

(assert (=> d!157675 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661) e!840400)))

(declare-fun b!1502609 () Bool)

(declare-fun e!840399 () Bool)

(assert (=> b!1502609 (= e!840399 e!840401)))

(declare-fun lt!653375 () (_ BitVec 64))

(assert (=> b!1502609 (= lt!653375 (select (arr!48351 a!2850) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!50204 0))(
  ( (Unit!50205) )
))
(declare-fun lt!653377 () Unit!50204)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!100195 (_ BitVec 64) (_ BitVec 32)) Unit!50204)

(assert (=> b!1502609 (= lt!653377 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2850 lt!653375 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!100195 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1502609 (arrayContainsKey!0 a!2850 lt!653375 #b00000000000000000000000000000000)))

(declare-fun lt!653376 () Unit!50204)

(assert (=> b!1502609 (= lt!653376 lt!653377)))

(declare-fun res!1023638 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100195 (_ BitVec 32)) SeekEntryResult!12568)

(assert (=> b!1502609 (= res!1023638 (= (seekEntryOrOpen!0 (select (arr!48351 a!2850) #b00000000000000000000000000000000) a!2850 mask!2661) (Found!12568 #b00000000000000000000000000000000)))))

(assert (=> b!1502609 (=> (not res!1023638) (not e!840401))))

(declare-fun b!1502610 () Bool)

(assert (=> b!1502610 (= e!840400 e!840399)))

(declare-fun c!139022 () Bool)

(assert (=> b!1502610 (= c!139022 (validKeyInArray!0 (select (arr!48351 a!2850) #b00000000000000000000000000000000)))))

(declare-fun b!1502611 () Bool)

(assert (=> b!1502611 (= e!840399 call!68091)))

(assert (= (and d!157675 (not res!1023639)) b!1502610))

(assert (= (and b!1502610 c!139022) b!1502609))

(assert (= (and b!1502610 (not c!139022)) b!1502611))

(assert (= (and b!1502609 res!1023638) b!1502608))

(assert (= (or b!1502608 b!1502611) bm!68088))

(declare-fun m!1385943 () Bool)

