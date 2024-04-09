; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92960 () Bool)

(assert start!92960)

(declare-fun b!1054932 () Bool)

(declare-fun e!599491 () Bool)

(declare-fun e!599490 () Bool)

(assert (=> b!1054932 (= e!599491 e!599490)))

(declare-fun res!703944 () Bool)

(assert (=> b!1054932 (=> res!703944 e!599490)))

(declare-fun lt!465602 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1054932 (= res!703944 (bvsle lt!465602 i!1381))))

(declare-fun b!1054933 () Bool)

(declare-fun e!599495 () Bool)

(assert (=> b!1054933 (= e!599495 true)))

(declare-datatypes ((array!66529 0))(
  ( (array!66530 (arr!31991 (Array (_ BitVec 32) (_ BitVec 64))) (size!32528 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66529)

(declare-fun k0!2747 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66529 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1054933 (arrayContainsKey!0 a!3488 k0!2747 (bvadd #b00000000000000000000000000000001 i!1381))))

(declare-datatypes ((Unit!34549 0))(
  ( (Unit!34550) )
))
(declare-fun lt!465601 () Unit!34549)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66529 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34549)

(assert (=> b!1054933 (= lt!465601 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k0!2747 lt!465602 (bvadd #b00000000000000000000000000000001 i!1381)))))

(declare-datatypes ((List!22434 0))(
  ( (Nil!22431) (Cons!22430 (h!23639 (_ BitVec 64)) (t!31748 List!22434)) )
))
(declare-fun arrayNoDuplicates!0 (array!66529 (_ BitVec 32) List!22434) Bool)

(assert (=> b!1054933 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22431)))

(declare-fun lt!465603 () Unit!34549)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66529 (_ BitVec 32) (_ BitVec 32)) Unit!34549)

(assert (=> b!1054933 (= lt!465603 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381))))

(declare-fun res!703943 () Bool)

(declare-fun e!599494 () Bool)

(assert (=> start!92960 (=> (not res!703943) (not e!599494))))

(assert (=> start!92960 (= res!703943 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32528 a!3488)) (bvslt (size!32528 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92960 e!599494))

(assert (=> start!92960 true))

(declare-fun array_inv!24613 (array!66529) Bool)

(assert (=> start!92960 (array_inv!24613 a!3488)))

(declare-fun b!1054934 () Bool)

(declare-fun e!599492 () Bool)

(assert (=> b!1054934 (= e!599494 e!599492)))

(declare-fun res!703942 () Bool)

(assert (=> b!1054934 (=> (not res!703942) (not e!599492))))

(declare-fun lt!465604 () array!66529)

(assert (=> b!1054934 (= res!703942 (arrayContainsKey!0 lt!465604 k0!2747 #b00000000000000000000000000000000))))

(assert (=> b!1054934 (= lt!465604 (array!66530 (store (arr!31991 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32528 a!3488)))))

(declare-fun b!1054935 () Bool)

(assert (=> b!1054935 (= e!599490 (arrayContainsKey!0 a!3488 k0!2747 lt!465602))))

(declare-fun b!1054936 () Bool)

(declare-fun res!703941 () Bool)

(assert (=> b!1054936 (=> (not res!703941) (not e!599494))))

(assert (=> b!1054936 (= res!703941 (= (select (arr!31991 a!3488) i!1381) k0!2747))))

(declare-fun b!1054937 () Bool)

(declare-fun res!703946 () Bool)

(assert (=> b!1054937 (=> (not res!703946) (not e!599494))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1054937 (= res!703946 (validKeyInArray!0 k0!2747))))

(declare-fun b!1054938 () Bool)

(declare-fun e!599493 () Bool)

(assert (=> b!1054938 (= e!599492 e!599493)))

(declare-fun res!703939 () Bool)

(assert (=> b!1054938 (=> (not res!703939) (not e!599493))))

(assert (=> b!1054938 (= res!703939 (not (= lt!465602 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66529 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1054938 (= lt!465602 (arrayScanForKey!0 lt!465604 k0!2747 #b00000000000000000000000000000000))))

(declare-fun b!1054939 () Bool)

(declare-fun res!703940 () Bool)

(assert (=> b!1054939 (=> (not res!703940) (not e!599494))))

(assert (=> b!1054939 (= res!703940 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22431))))

(declare-fun b!1054940 () Bool)

(assert (=> b!1054940 (= e!599493 (not e!599495))))

(declare-fun res!703947 () Bool)

(assert (=> b!1054940 (=> res!703947 e!599495)))

(assert (=> b!1054940 (= res!703947 (bvsle lt!465602 i!1381))))

(assert (=> b!1054940 e!599491))

(declare-fun res!703945 () Bool)

(assert (=> b!1054940 (=> (not res!703945) (not e!599491))))

(assert (=> b!1054940 (= res!703945 (= (select (store (arr!31991 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!465602) k0!2747))))

(assert (= (and start!92960 res!703943) b!1054939))

(assert (= (and b!1054939 res!703940) b!1054937))

(assert (= (and b!1054937 res!703946) b!1054936))

(assert (= (and b!1054936 res!703941) b!1054934))

(assert (= (and b!1054934 res!703942) b!1054938))

(assert (= (and b!1054938 res!703939) b!1054940))

(assert (= (and b!1054940 res!703945) b!1054932))

(assert (= (and b!1054932 (not res!703944)) b!1054935))

(assert (= (and b!1054940 (not res!703947)) b!1054933))

(declare-fun m!975107 () Bool)

(assert (=> b!1054939 m!975107))

(declare-fun m!975109 () Bool)

(assert (=> b!1054936 m!975109))

(declare-fun m!975111 () Bool)

(assert (=> b!1054940 m!975111))

(declare-fun m!975113 () Bool)

(assert (=> b!1054940 m!975113))

(declare-fun m!975115 () Bool)

(assert (=> start!92960 m!975115))

(declare-fun m!975117 () Bool)

(assert (=> b!1054933 m!975117))

(declare-fun m!975119 () Bool)

(assert (=> b!1054933 m!975119))

(declare-fun m!975121 () Bool)

(assert (=> b!1054933 m!975121))

(declare-fun m!975123 () Bool)

(assert (=> b!1054933 m!975123))

(declare-fun m!975125 () Bool)

(assert (=> b!1054934 m!975125))

(assert (=> b!1054934 m!975111))

(declare-fun m!975127 () Bool)

(assert (=> b!1054935 m!975127))

(declare-fun m!975129 () Bool)

(assert (=> b!1054937 m!975129))

(declare-fun m!975131 () Bool)

(assert (=> b!1054938 m!975131))

(check-sat (not b!1054938) (not b!1054933) (not start!92960) (not b!1054934) (not b!1054937) (not b!1054935) (not b!1054939))
(check-sat)
