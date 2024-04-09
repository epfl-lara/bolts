; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133410 () Bool)

(assert start!133410)

(declare-fun mapNonEmpty!59094 () Bool)

(declare-fun mapRes!59094 () Bool)

(declare-fun tp!112750 () Bool)

(declare-fun e!868848 () Bool)

(assert (=> mapNonEmpty!59094 (= mapRes!59094 (and tp!112750 e!868848))))

(declare-fun mapKey!59094 () (_ BitVec 32))

(declare-datatypes ((V!59517 0))(
  ( (V!59518 (val!19325 Int)) )
))
(declare-datatypes ((ValueCell!18211 0))(
  ( (ValueCellFull!18211 (v!22073 V!59517)) (EmptyCell!18211) )
))
(declare-fun mapRest!59094 () (Array (_ BitVec 32) ValueCell!18211))

(declare-fun mapValue!59094 () ValueCell!18211)

(declare-datatypes ((array!103643 0))(
  ( (array!103644 (arr!50011 (Array (_ BitVec 32) ValueCell!18211)) (size!50562 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!103643)

(assert (=> mapNonEmpty!59094 (= (arr!50011 _values!487) (store mapRest!59094 mapKey!59094 mapValue!59094))))

(declare-fun mapIsEmpty!59094 () Bool)

(assert (=> mapIsEmpty!59094 mapRes!59094))

(declare-fun b!1559281 () Bool)

(declare-fun e!868847 () Bool)

(declare-fun tp_is_empty!38483 () Bool)

(assert (=> b!1559281 (= e!868847 tp_is_empty!38483)))

(declare-fun b!1559282 () Bool)

(declare-fun res!1066383 () Bool)

(declare-fun e!868846 () Bool)

(assert (=> b!1559282 (=> (not res!1066383) (not e!868846))))

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-datatypes ((array!103645 0))(
  ( (array!103646 (arr!50012 (Array (_ BitVec 32) (_ BitVec 64))) (size!50563 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!103645)

(declare-fun mask!947 () (_ BitVec 32))

(assert (=> b!1559282 (= res!1066383 (and (= (size!50562 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50563 _keys!637) (size!50562 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1559283 () Bool)

(assert (=> b!1559283 (= e!868848 tp_is_empty!38483)))

(declare-fun res!1066384 () Bool)

(assert (=> start!133410 (=> (not res!1066384) (not e!868846))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133410 (= res!1066384 (validMask!0 mask!947))))

(assert (=> start!133410 e!868846))

(assert (=> start!133410 true))

(declare-fun e!868844 () Bool)

(declare-fun array_inv!38799 (array!103643) Bool)

(assert (=> start!133410 (and (array_inv!38799 _values!487) e!868844)))

(declare-fun array_inv!38800 (array!103645) Bool)

(assert (=> start!133410 (array_inv!38800 _keys!637)))

(declare-fun b!1559284 () Bool)

(assert (=> b!1559284 (= e!868844 (and e!868847 mapRes!59094))))

(declare-fun condMapEmpty!59094 () Bool)

(declare-fun mapDefault!59094 () ValueCell!18211)

