; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81982 () Bool)

(assert start!81982)

(declare-fun b!955819 () Bool)

(declare-fun res!640179 () Bool)

(declare-fun e!538505 () Bool)

(assert (=> b!955819 (=> (not res!640179) (not e!538505))))

(declare-datatypes ((array!58107 0))(
  ( (array!58108 (arr!27929 (Array (_ BitVec 32) (_ BitVec 64))) (size!28409 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!58107)

(declare-fun mask!1823 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58107 (_ BitVec 32)) Bool)

(assert (=> b!955819 (= res!640179 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1441 mask!1823))))

(declare-fun b!955820 () Bool)

(assert (=> b!955820 (= e!538505 false)))

(declare-fun lt!430012 () Bool)

(declare-datatypes ((List!19606 0))(
  ( (Nil!19603) (Cons!19602 (h!20764 (_ BitVec 64)) (t!27975 List!19606)) )
))
(declare-fun arrayNoDuplicates!0 (array!58107 (_ BitVec 32) List!19606) Bool)

(assert (=> b!955820 (= lt!430012 (arrayNoDuplicates!0 _keys!1441 #b00000000000000000000000000000000 Nil!19603))))

(declare-fun mapNonEmpty!33451 () Bool)

(declare-fun mapRes!33451 () Bool)

(declare-fun tp!64030 () Bool)

(declare-fun e!538503 () Bool)

(assert (=> mapNonEmpty!33451 (= mapRes!33451 (and tp!64030 e!538503))))

(declare-fun mapKey!33451 () (_ BitVec 32))

(declare-datatypes ((V!32973 0))(
  ( (V!32974 (val!10547 Int)) )
))
(declare-datatypes ((ValueCell!10015 0))(
  ( (ValueCellFull!10015 (v!13102 V!32973)) (EmptyCell!10015) )
))
(declare-fun mapRest!33451 () (Array (_ BitVec 32) ValueCell!10015))

(declare-datatypes ((array!58109 0))(
  ( (array!58110 (arr!27930 (Array (_ BitVec 32) ValueCell!10015)) (size!28410 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!58109)

(declare-fun mapValue!33451 () ValueCell!10015)

(assert (=> mapNonEmpty!33451 (= (arr!27930 _values!1197) (store mapRest!33451 mapKey!33451 mapValue!33451))))

(declare-fun b!955821 () Bool)

(declare-fun e!538504 () Bool)

(declare-fun tp_is_empty!20993 () Bool)

(assert (=> b!955821 (= e!538504 tp_is_empty!20993)))

(declare-fun b!955822 () Bool)

(declare-fun e!538502 () Bool)

(assert (=> b!955822 (= e!538502 (and e!538504 mapRes!33451))))

(declare-fun condMapEmpty!33451 () Bool)

(declare-fun mapDefault!33451 () ValueCell!10015)

