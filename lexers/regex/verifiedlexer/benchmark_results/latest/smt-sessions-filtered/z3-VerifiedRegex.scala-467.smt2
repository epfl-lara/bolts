; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!13414 () Bool)

(assert start!13414)

(declare-fun res!59574 () Bool)

(declare-fun e!74578 () Bool)

(assert (=> start!13414 (=> (not res!59574) (not e!74578))))

(declare-datatypes ((B!689 0))(
  ( (B!690 (val!830 Int)) )
))
(declare-datatypes ((List!2148 0))(
  ( (Nil!2142) (Cons!2142 (h!7539 B!689) (t!22734 List!2148)) )
))
(declare-fun baseList!9 () List!2148)

(declare-fun noDuplicate!38 (List!2148) Bool)

(assert (=> start!13414 (= res!59574 (noDuplicate!38 baseList!9))))

(assert (=> start!13414 e!74578))

(declare-fun e!74581 () Bool)

(assert (=> start!13414 e!74581))

(declare-fun e!74579 () Bool)

(assert (=> start!13414 e!74579))

(declare-fun b!129506 () Bool)

(declare-fun res!59575 () Bool)

(assert (=> b!129506 (=> (not res!59575) (not e!74578))))

(declare-fun newList!20 () List!2148)

(declare-fun contains!322 (List!2148 B!689) Bool)

(assert (=> b!129506 (= res!59575 (not (contains!322 baseList!9 (h!7539 newList!20))))))

(declare-fun b!129507 () Bool)

(declare-fun tp_is_empty!1333 () Bool)

(declare-fun tp!70143 () Bool)

(assert (=> b!129507 (= e!74579 (and tp_is_empty!1333 tp!70143))))

(declare-fun b!129508 () Bool)

(declare-fun res!59576 () Bool)

(assert (=> b!129508 (=> (not res!59576) (not e!74578))))

(get-info :version)

(assert (=> b!129508 (= res!59576 ((_ is Cons!2142) newList!20))))

(declare-fun b!129509 () Bool)

(declare-fun e!74580 () Bool)

(assert (=> b!129509 (= e!74580 (not (contains!322 baseList!9 (h!7539 newList!20))))))

(declare-fun b!129510 () Bool)

(declare-fun res!59573 () Bool)

(assert (=> b!129510 (=> (not res!59573) (not e!74578))))

(assert (=> b!129510 (= res!59573 e!74580)))

(declare-fun res!59572 () Bool)

(assert (=> b!129510 (=> res!59572 e!74580)))

(assert (=> b!129510 (= res!59572 (not ((_ is Cons!2142) newList!20)))))

(declare-fun b!129511 () Bool)

(assert (=> b!129511 (= e!74578 (not true))))

(declare-fun lt!38782 () List!2148)

(declare-fun isPrefix!143 (List!2148 List!2148) Bool)

(declare-fun ++!424 (List!2148 List!2148) List!2148)

(assert (=> b!129511 (isPrefix!143 baseList!9 (++!424 baseList!9 lt!38782))))

(declare-datatypes ((Unit!1668 0))(
  ( (Unit!1669) )
))
(declare-fun lt!38781 () Unit!1668)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!82 (List!2148 List!2148) Unit!1668)

(assert (=> b!129511 (= lt!38781 (lemmaConcatTwoListThenFirstIsPrefix!82 baseList!9 lt!38782))))

(assert (=> b!129511 (= lt!38782 (Cons!2142 (h!7539 newList!20) Nil!2142))))

(declare-fun b!129512 () Bool)

(declare-fun tp!70144 () Bool)

(assert (=> b!129512 (= e!74581 (and tp_is_empty!1333 tp!70144))))

(assert (= (and start!13414 res!59574) b!129510))

(assert (= (and b!129510 (not res!59572)) b!129509))

(assert (= (and b!129510 res!59573) b!129508))

(assert (= (and b!129508 res!59576) b!129506))

(assert (= (and b!129506 res!59575) b!129511))

(assert (= (and start!13414 ((_ is Cons!2142) baseList!9)) b!129512))

(assert (= (and start!13414 ((_ is Cons!2142) newList!20)) b!129507))

(declare-fun m!114091 () Bool)

(assert (=> start!13414 m!114091))

(declare-fun m!114093 () Bool)

(assert (=> b!129506 m!114093))

(assert (=> b!129509 m!114093))

(declare-fun m!114095 () Bool)

(assert (=> b!129511 m!114095))

(assert (=> b!129511 m!114095))

(declare-fun m!114097 () Bool)

(assert (=> b!129511 m!114097))

(declare-fun m!114099 () Bool)

(assert (=> b!129511 m!114099))

(check-sat (not b!129507) tp_is_empty!1333 (not b!129511) (not start!13414) (not b!129512) (not b!129506) (not b!129509))
(check-sat)
