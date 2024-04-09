; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35510 () Bool)

(assert start!35510)

(declare-fun b!355587 () Bool)

(declare-fun res!197352 () Bool)

(declare-fun e!217849 () Bool)

(assert (=> b!355587 (=> (not res!197352) (not e!217849))))

(declare-datatypes ((array!19457 0))(
  ( (array!19458 (arr!9219 (Array (_ BitVec 32) (_ BitVec 64))) (size!9571 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19457)

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19457 (_ BitVec 32)) Bool)

(assert (=> b!355587 (= res!197352 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!355588 () Bool)

(declare-fun e!217847 () Bool)

(declare-fun tp_is_empty!7955 () Bool)

(assert (=> b!355588 (= e!217847 tp_is_empty!7955)))

(declare-fun b!355589 () Bool)

(declare-fun e!217846 () Bool)

(assert (=> b!355589 (= e!217846 tp_is_empty!7955)))

(declare-fun b!355590 () Bool)

(declare-fun res!197351 () Bool)

(assert (=> b!355590 (=> (not res!197351) (not e!217849))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-datatypes ((V!11583 0))(
  ( (V!11584 (val!4022 Int)) )
))
(declare-datatypes ((ValueCell!3634 0))(
  ( (ValueCellFull!3634 (v!6212 V!11583)) (EmptyCell!3634) )
))
(declare-datatypes ((array!19459 0))(
  ( (array!19460 (arr!9220 (Array (_ BitVec 32) ValueCell!3634)) (size!9572 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19459)

(assert (=> b!355590 (= res!197351 (and (= (size!9572 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9571 _keys!1456) (size!9572 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!355591 () Bool)

(assert (=> b!355591 (= e!217849 false)))

(declare-fun lt!165808 () Bool)

(declare-datatypes ((List!5367 0))(
  ( (Nil!5364) (Cons!5363 (h!6219 (_ BitVec 64)) (t!10525 List!5367)) )
))
(declare-fun arrayNoDuplicates!0 (array!19457 (_ BitVec 32) List!5367) Bool)

(assert (=> b!355591 (= lt!165808 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5364))))

(declare-fun res!197353 () Bool)

(assert (=> start!35510 (=> (not res!197353) (not e!217849))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35510 (= res!197353 (validMask!0 mask!1842))))

(assert (=> start!35510 e!217849))

(assert (=> start!35510 true))

(declare-fun e!217848 () Bool)

(declare-fun array_inv!6788 (array!19459) Bool)

(assert (=> start!35510 (and (array_inv!6788 _values!1208) e!217848)))

(declare-fun array_inv!6789 (array!19457) Bool)

(assert (=> start!35510 (array_inv!6789 _keys!1456)))

(declare-fun mapNonEmpty!13440 () Bool)

(declare-fun mapRes!13440 () Bool)

(declare-fun tp!27417 () Bool)

(assert (=> mapNonEmpty!13440 (= mapRes!13440 (and tp!27417 e!217846))))

(declare-fun mapRest!13440 () (Array (_ BitVec 32) ValueCell!3634))

(declare-fun mapKey!13440 () (_ BitVec 32))

(declare-fun mapValue!13440 () ValueCell!3634)

(assert (=> mapNonEmpty!13440 (= (arr!9220 _values!1208) (store mapRest!13440 mapKey!13440 mapValue!13440))))

(declare-fun mapIsEmpty!13440 () Bool)

(assert (=> mapIsEmpty!13440 mapRes!13440))

(declare-fun b!355592 () Bool)

(assert (=> b!355592 (= e!217848 (and e!217847 mapRes!13440))))

(declare-fun condMapEmpty!13440 () Bool)

(declare-fun mapDefault!13440 () ValueCell!3634)

