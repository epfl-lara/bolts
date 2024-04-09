; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35310 () Bool)

(assert start!35310)

(declare-fun b!353460 () Bool)

(declare-fun res!196019 () Bool)

(declare-fun e!216519 () Bool)

(assert (=> b!353460 (=> (not res!196019) (not e!216519))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-datatypes ((array!19131 0))(
  ( (array!19132 (arr!9059 (Array (_ BitVec 32) (_ BitVec 64))) (size!9411 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19131)

(declare-datatypes ((V!11363 0))(
  ( (V!11364 (val!3939 Int)) )
))
(declare-datatypes ((ValueCell!3551 0))(
  ( (ValueCellFull!3551 (v!6128 V!11363)) (EmptyCell!3551) )
))
(declare-datatypes ((array!19133 0))(
  ( (array!19134 (arr!9060 (Array (_ BitVec 32) ValueCell!3551)) (size!9412 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19133)

(declare-fun mask!1842 () (_ BitVec 32))

(assert (=> b!353460 (= res!196019 (and (= (size!9412 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9411 _keys!1456) (size!9412 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!13182 () Bool)

(declare-fun mapRes!13182 () Bool)

(declare-fun tp!27078 () Bool)

(declare-fun e!216518 () Bool)

(assert (=> mapNonEmpty!13182 (= mapRes!13182 (and tp!27078 e!216518))))

(declare-fun mapRest!13182 () (Array (_ BitVec 32) ValueCell!3551))

(declare-fun mapKey!13182 () (_ BitVec 32))

(declare-fun mapValue!13182 () ValueCell!3551)

(assert (=> mapNonEmpty!13182 (= (arr!9060 _values!1208) (store mapRest!13182 mapKey!13182 mapValue!13182))))

(declare-fun b!353461 () Bool)

(declare-fun e!216517 () Bool)

(declare-fun e!216516 () Bool)

(assert (=> b!353461 (= e!216517 (and e!216516 mapRes!13182))))

(declare-fun condMapEmpty!13182 () Bool)

(declare-fun mapDefault!13182 () ValueCell!3551)

