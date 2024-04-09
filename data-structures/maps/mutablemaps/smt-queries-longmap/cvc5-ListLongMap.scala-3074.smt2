; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43304 () Bool)

(assert start!43304)

(declare-fun b_free!12163 () Bool)

(declare-fun b_next!12163 () Bool)

(assert (=> start!43304 (= b_free!12163 (not b_next!12163))))

(declare-fun tp!42760 () Bool)

(declare-fun b_and!20933 () Bool)

(assert (=> start!43304 (= tp!42760 b_and!20933)))

(declare-fun mapNonEmpty!22210 () Bool)

(declare-fun mapRes!22210 () Bool)

(declare-fun tp!42759 () Bool)

(declare-fun e!282129 () Bool)

(assert (=> mapNonEmpty!22210 (= mapRes!22210 (and tp!42759 e!282129))))

(declare-datatypes ((V!19305 0))(
  ( (V!19306 (val!6885 Int)) )
))
(declare-datatypes ((ValueCell!6476 0))(
  ( (ValueCellFull!6476 (v!9170 V!19305)) (EmptyCell!6476) )
))
(declare-fun mapValue!22210 () ValueCell!6476)

(declare-fun mapRest!22210 () (Array (_ BitVec 32) ValueCell!6476))

(declare-fun mapKey!22210 () (_ BitVec 32))

(declare-datatypes ((array!30987 0))(
  ( (array!30988 (arr!14897 (Array (_ BitVec 32) ValueCell!6476)) (size!15255 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!30987)

(assert (=> mapNonEmpty!22210 (= (arr!14897 _values!1516) (store mapRest!22210 mapKey!22210 mapValue!22210))))

(declare-fun b!479483 () Bool)

(declare-fun tp_is_empty!13675 () Bool)

(assert (=> b!479483 (= e!282129 tp_is_empty!13675)))

(declare-fun b!479484 () Bool)

(declare-fun e!282130 () Bool)

(assert (=> b!479484 (= e!282130 tp_is_empty!13675)))

(declare-fun mapIsEmpty!22210 () Bool)

(assert (=> mapIsEmpty!22210 mapRes!22210))

(declare-fun b!479485 () Bool)

(declare-fun res!286080 () Bool)

(declare-fun e!282133 () Bool)

(assert (=> b!479485 (=> (not res!286080) (not e!282133))))

(declare-datatypes ((array!30989 0))(
  ( (array!30990 (arr!14898 (Array (_ BitVec 32) (_ BitVec 64))) (size!15256 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!30989)

(declare-datatypes ((List!9143 0))(
  ( (Nil!9140) (Cons!9139 (h!9995 (_ BitVec 64)) (t!15357 List!9143)) )
))
(declare-fun arrayNoDuplicates!0 (array!30989 (_ BitVec 32) List!9143) Bool)

(assert (=> b!479485 (= res!286080 (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9140))))

(declare-fun b!479486 () Bool)

(assert (=> b!479486 (= e!282133 false)))

(declare-fun k!1332 () (_ BitVec 64))

(declare-fun mask!2352 () (_ BitVec 32))

(declare-fun minValue!1458 () V!19305)

(declare-fun lt!217859 () Bool)

(declare-fun extraKeys!1437 () (_ BitVec 32))

(declare-fun zeroValue!1458 () V!19305)

(declare-fun defaultEntry!1519 () Int)

(declare-datatypes ((tuple2!9030 0))(
  ( (tuple2!9031 (_1!4525 (_ BitVec 64)) (_2!4525 V!19305)) )
))
(declare-datatypes ((List!9144 0))(
  ( (Nil!9141) (Cons!9140 (h!9996 tuple2!9030) (t!15358 List!9144)) )
))
(declare-datatypes ((ListLongMap!7957 0))(
  ( (ListLongMap!7958 (toList!3994 List!9144)) )
))
(declare-fun contains!2601 (ListLongMap!7957 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2286 (array!30989 array!30987 (_ BitVec 32) (_ BitVec 32) V!19305 V!19305 (_ BitVec 32) Int) ListLongMap!7957)

(assert (=> b!479486 (= lt!217859 (contains!2601 (getCurrentListMap!2286 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519) k!1332))))

(declare-fun b!479487 () Bool)

(declare-fun e!282132 () Bool)

(assert (=> b!479487 (= e!282132 (and e!282130 mapRes!22210))))

(declare-fun condMapEmpty!22210 () Bool)

(declare-fun mapDefault!22210 () ValueCell!6476)

