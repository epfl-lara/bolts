; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20208 () Bool)

(assert start!20208)

(declare-fun b_free!4855 () Bool)

(declare-fun b_next!4855 () Bool)

(assert (=> start!20208 (= b_free!4855 (not b_next!4855))))

(declare-fun tp!17596 () Bool)

(declare-fun b_and!11619 () Bool)

(assert (=> start!20208 (= tp!17596 b_and!11619)))

(declare-fun b!198330 () Bool)

(declare-fun res!94039 () Bool)

(declare-fun e!130371 () Bool)

(assert (=> b!198330 (=> (not res!94039) (not e!130371))))

(declare-datatypes ((array!8670 0))(
  ( (array!8671 (arr!4085 (Array (_ BitVec 32) (_ BitVec 64))) (size!4410 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8670)

(declare-fun k!843 () (_ BitVec 64))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!198330 (= res!94039 (= (select (arr!4085 _keys!825) i!601) k!843))))

(declare-fun res!94037 () Bool)

(assert (=> start!20208 (=> (not res!94037) (not e!130371))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20208 (= res!94037 (validMask!0 mask!1149))))

(assert (=> start!20208 e!130371))

(declare-datatypes ((V!5929 0))(
  ( (V!5930 (val!2400 Int)) )
))
(declare-datatypes ((ValueCell!2012 0))(
  ( (ValueCellFull!2012 (v!4366 V!5929)) (EmptyCell!2012) )
))
(declare-datatypes ((array!8672 0))(
  ( (array!8673 (arr!4086 (Array (_ BitVec 32) ValueCell!2012)) (size!4411 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8672)

(declare-fun e!130372 () Bool)

(declare-fun array_inv!2665 (array!8672) Bool)

(assert (=> start!20208 (and (array_inv!2665 _values!649) e!130372)))

(assert (=> start!20208 true))

(declare-fun tp_is_empty!4711 () Bool)

(assert (=> start!20208 tp_is_empty!4711))

(declare-fun array_inv!2666 (array!8670) Bool)

(assert (=> start!20208 (array_inv!2666 _keys!825)))

(assert (=> start!20208 tp!17596))

(declare-fun mapIsEmpty!8135 () Bool)

(declare-fun mapRes!8135 () Bool)

(assert (=> mapIsEmpty!8135 mapRes!8135))

(declare-fun b!198331 () Bool)

(declare-fun e!130375 () Bool)

(assert (=> b!198331 (= e!130375 tp_is_empty!4711)))

(declare-fun b!198332 () Bool)

(declare-fun res!94038 () Bool)

(assert (=> b!198332 (=> (not res!94038) (not e!130371))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!198332 (= res!94038 (and (= (size!4411 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4410 _keys!825) (size!4411 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!198333 () Bool)

(declare-fun res!94040 () Bool)

(assert (=> b!198333 (=> (not res!94040) (not e!130371))))

(assert (=> b!198333 (= res!94040 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4410 _keys!825))))))

(declare-fun b!198334 () Bool)

(declare-fun res!94036 () Bool)

(assert (=> b!198334 (=> (not res!94036) (not e!130371))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!198334 (= res!94036 (validKeyInArray!0 k!843))))

(declare-fun mapNonEmpty!8135 () Bool)

(declare-fun tp!17597 () Bool)

(declare-fun e!130373 () Bool)

(assert (=> mapNonEmpty!8135 (= mapRes!8135 (and tp!17597 e!130373))))

(declare-fun mapKey!8135 () (_ BitVec 32))

(declare-fun mapValue!8135 () ValueCell!2012)

(declare-fun mapRest!8135 () (Array (_ BitVec 32) ValueCell!2012))

(assert (=> mapNonEmpty!8135 (= (arr!4086 _values!649) (store mapRest!8135 mapKey!8135 mapValue!8135))))

(declare-fun b!198335 () Bool)

(assert (=> b!198335 (= e!130371 false)))

(declare-datatypes ((tuple2!3638 0))(
  ( (tuple2!3639 (_1!1829 (_ BitVec 64)) (_2!1829 V!5929)) )
))
(declare-datatypes ((List!2576 0))(
  ( (Nil!2573) (Cons!2572 (h!3214 tuple2!3638) (t!7515 List!2576)) )
))
(declare-datatypes ((ListLongMap!2565 0))(
  ( (ListLongMap!2566 (toList!1298 List!2576)) )
))
(declare-fun lt!97926 () ListLongMap!2565)

(declare-fun v!520 () V!5929)

(declare-fun zeroValue!615 () V!5929)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!5929)

(declare-fun getCurrentListMapNoExtraKeys!255 (array!8670 array!8672 (_ BitVec 32) (_ BitVec 32) V!5929 V!5929 (_ BitVec 32) Int) ListLongMap!2565)

(assert (=> b!198335 (= lt!97926 (getCurrentListMapNoExtraKeys!255 _keys!825 (array!8673 (store (arr!4086 _values!649) i!601 (ValueCellFull!2012 v!520)) (size!4411 _values!649)) mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!97927 () ListLongMap!2565)

(assert (=> b!198335 (= lt!97927 (getCurrentListMapNoExtraKeys!255 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!198336 () Bool)

(assert (=> b!198336 (= e!130372 (and e!130375 mapRes!8135))))

(declare-fun condMapEmpty!8135 () Bool)

(declare-fun mapDefault!8135 () ValueCell!2012)

