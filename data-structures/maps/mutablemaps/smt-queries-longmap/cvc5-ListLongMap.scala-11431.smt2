; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133378 () Bool)

(assert start!133378)

(declare-fun b!1559089 () Bool)

(declare-fun e!868697 () Bool)

(declare-fun tp_is_empty!38467 () Bool)

(assert (=> b!1559089 (= e!868697 tp_is_empty!38467)))

(declare-fun mapNonEmpty!59064 () Bool)

(declare-fun mapRes!59064 () Bool)

(declare-fun tp!112720 () Bool)

(declare-fun e!868694 () Bool)

(assert (=> mapNonEmpty!59064 (= mapRes!59064 (and tp!112720 e!868694))))

(declare-datatypes ((V!59497 0))(
  ( (V!59498 (val!19317 Int)) )
))
(declare-datatypes ((ValueCell!18203 0))(
  ( (ValueCellFull!18203 (v!22065 V!59497)) (EmptyCell!18203) )
))
(declare-fun mapValue!59064 () ValueCell!18203)

(declare-datatypes ((array!103613 0))(
  ( (array!103614 (arr!49998 (Array (_ BitVec 32) ValueCell!18203)) (size!50549 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!103613)

(declare-fun mapKey!59064 () (_ BitVec 32))

(declare-fun mapRest!59064 () (Array (_ BitVec 32) ValueCell!18203))

(assert (=> mapNonEmpty!59064 (= (arr!49998 _values!487) (store mapRest!59064 mapKey!59064 mapValue!59064))))

(declare-fun b!1559090 () Bool)

(declare-fun e!868696 () Bool)

(declare-datatypes ((array!103615 0))(
  ( (array!103616 (arr!49999 (Array (_ BitVec 32) (_ BitVec 64))) (size!50550 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!103615)

(assert (=> b!1559090 (= e!868696 (bvsgt #b00000000000000000000000000000000 (size!50550 _keys!637)))))

(declare-fun b!1559091 () Bool)

(declare-fun res!1066293 () Bool)

(assert (=> b!1559091 (=> (not res!1066293) (not e!868696))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun extraKeys!434 () (_ BitVec 32))

(assert (=> b!1559091 (= res!1066293 (and (= (size!50549 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50550 _keys!637) (size!50549 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun res!1066292 () Bool)

(assert (=> start!133378 (=> (not res!1066292) (not e!868696))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133378 (= res!1066292 (validMask!0 mask!947))))

(assert (=> start!133378 e!868696))

(assert (=> start!133378 true))

(declare-fun e!868695 () Bool)

(declare-fun array_inv!38789 (array!103613) Bool)

(assert (=> start!133378 (and (array_inv!38789 _values!487) e!868695)))

(declare-fun array_inv!38790 (array!103615) Bool)

(assert (=> start!133378 (array_inv!38790 _keys!637)))

(declare-fun b!1559092 () Bool)

(assert (=> b!1559092 (= e!868695 (and e!868697 mapRes!59064))))

(declare-fun condMapEmpty!59064 () Bool)

(declare-fun mapDefault!59064 () ValueCell!18203)

