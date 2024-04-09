; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92474 () Bool)

(assert start!92474)

(declare-fun b!1050949 () Bool)

(declare-fun e!596520 () Bool)

(declare-fun e!596521 () Bool)

(assert (=> b!1050949 (= e!596520 e!596521)))

(declare-fun res!700186 () Bool)

(assert (=> b!1050949 (=> (not res!700186) (not e!596521))))

(declare-datatypes ((array!66223 0))(
  ( (array!66224 (arr!31847 (Array (_ BitVec 32) (_ BitVec 64))) (size!32384 (_ BitVec 32))) )
))
(declare-fun lt!464106 () array!66223)

(declare-fun k0!2747 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66223 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1050949 (= res!700186 (arrayContainsKey!0 lt!464106 k0!2747 #b00000000000000000000000000000000))))

(declare-fun a!3488 () array!66223)

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1050949 (= lt!464106 (array!66224 (store (arr!31847 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32384 a!3488)))))

(declare-fun e!596525 () Bool)

(declare-fun b!1050950 () Bool)

(assert (=> b!1050950 (= e!596525 (arrayContainsKey!0 a!3488 k0!2747 i!1381))))

(declare-fun b!1050951 () Bool)

(declare-fun res!700190 () Bool)

(assert (=> b!1050951 (=> (not res!700190) (not e!596520))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1050951 (= res!700190 (validKeyInArray!0 k0!2747))))

(declare-fun b!1050952 () Bool)

(declare-fun res!700191 () Bool)

(assert (=> b!1050952 (=> (not res!700191) (not e!596520))))

(assert (=> b!1050952 (= res!700191 (= (select (arr!31847 a!3488) i!1381) k0!2747))))

(declare-fun b!1050953 () Bool)

(declare-fun e!596523 () Bool)

(assert (=> b!1050953 (= e!596521 e!596523)))

(declare-fun res!700189 () Bool)

(assert (=> b!1050953 (=> (not res!700189) (not e!596523))))

(declare-fun lt!464107 () (_ BitVec 32))

(assert (=> b!1050953 (= res!700189 (not (= lt!464107 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66223 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1050953 (= lt!464107 (arrayScanForKey!0 lt!464106 k0!2747 #b00000000000000000000000000000000))))

(declare-fun b!1050954 () Bool)

(declare-fun res!700185 () Bool)

(assert (=> b!1050954 (=> (not res!700185) (not e!596520))))

(declare-datatypes ((List!22290 0))(
  ( (Nil!22287) (Cons!22286 (h!23495 (_ BitVec 64)) (t!31604 List!22290)) )
))
(declare-fun arrayNoDuplicates!0 (array!66223 (_ BitVec 32) List!22290) Bool)

(assert (=> b!1050954 (= res!700185 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22287))))

(declare-fun b!1050955 () Bool)

(assert (=> b!1050955 (= e!596523 (not true))))

(declare-fun e!596524 () Bool)

(assert (=> b!1050955 e!596524))

(declare-fun res!700187 () Bool)

(assert (=> b!1050955 (=> (not res!700187) (not e!596524))))

(assert (=> b!1050955 (= res!700187 (= (select (store (arr!31847 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!464107) k0!2747))))

(declare-fun res!700188 () Bool)

(assert (=> start!92474 (=> (not res!700188) (not e!596520))))

(assert (=> start!92474 (= res!700188 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32384 a!3488)) (bvslt (size!32384 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92474 e!596520))

(assert (=> start!92474 true))

(declare-fun array_inv!24469 (array!66223) Bool)

(assert (=> start!92474 (array_inv!24469 a!3488)))

(declare-fun b!1050956 () Bool)

(assert (=> b!1050956 (= e!596524 e!596525)))

(declare-fun res!700184 () Bool)

(assert (=> b!1050956 (=> res!700184 e!596525)))

(assert (=> b!1050956 (= res!700184 (or (bvsgt lt!464107 i!1381) (bvsle i!1381 lt!464107)))))

(assert (= (and start!92474 res!700188) b!1050954))

(assert (= (and b!1050954 res!700185) b!1050951))

(assert (= (and b!1050951 res!700190) b!1050952))

(assert (= (and b!1050952 res!700191) b!1050949))

(assert (= (and b!1050949 res!700186) b!1050953))

(assert (= (and b!1050953 res!700189) b!1050955))

(assert (= (and b!1050955 res!700187) b!1050956))

(assert (= (and b!1050956 (not res!700184)) b!1050950))

(declare-fun m!971679 () Bool)

(assert (=> b!1050951 m!971679))

(declare-fun m!971681 () Bool)

(assert (=> start!92474 m!971681))

(declare-fun m!971683 () Bool)

(assert (=> b!1050950 m!971683))

(declare-fun m!971685 () Bool)

(assert (=> b!1050955 m!971685))

(declare-fun m!971687 () Bool)

(assert (=> b!1050955 m!971687))

(declare-fun m!971689 () Bool)

(assert (=> b!1050952 m!971689))

(declare-fun m!971691 () Bool)

(assert (=> b!1050954 m!971691))

(declare-fun m!971693 () Bool)

(assert (=> b!1050949 m!971693))

(assert (=> b!1050949 m!971685))

(declare-fun m!971695 () Bool)

(assert (=> b!1050953 m!971695))

(check-sat (not b!1050949) (not b!1050953) (not start!92474) (not b!1050954) (not b!1050950) (not b!1050951))
(check-sat)
