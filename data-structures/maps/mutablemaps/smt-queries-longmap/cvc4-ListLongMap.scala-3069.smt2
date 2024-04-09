; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43278 () Bool)

(assert start!43278)

(declare-fun b_free!12137 () Bool)

(declare-fun b_next!12137 () Bool)

(assert (=> start!43278 (= b_free!12137 (not b_next!12137))))

(declare-fun tp!42681 () Bool)

(declare-fun b_and!20907 () Bool)

(assert (=> start!43278 (= tp!42681 b_and!20907)))

(declare-fun b!479210 () Bool)

(declare-fun e!281938 () Bool)

(assert (=> b!479210 (= e!281938 false)))

(declare-fun k!1332 () (_ BitVec 64))

(declare-fun mask!2352 () (_ BitVec 32))

(declare-datatypes ((V!19269 0))(
  ( (V!19270 (val!6872 Int)) )
))
(declare-fun minValue!1458 () V!19269)

(declare-fun lt!217820 () Bool)

(declare-fun extraKeys!1437 () (_ BitVec 32))

(declare-fun zeroValue!1458 () V!19269)

(declare-datatypes ((ValueCell!6463 0))(
  ( (ValueCellFull!6463 (v!9157 V!19269)) (EmptyCell!6463) )
))
(declare-datatypes ((array!30937 0))(
  ( (array!30938 (arr!14872 (Array (_ BitVec 32) ValueCell!6463)) (size!15230 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!30937)

(declare-fun defaultEntry!1519 () Int)

(declare-datatypes ((array!30939 0))(
  ( (array!30940 (arr!14873 (Array (_ BitVec 32) (_ BitVec 64))) (size!15231 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!30939)

(declare-datatypes ((tuple2!9014 0))(
  ( (tuple2!9015 (_1!4517 (_ BitVec 64)) (_2!4517 V!19269)) )
))
(declare-datatypes ((List!9126 0))(
  ( (Nil!9123) (Cons!9122 (h!9978 tuple2!9014) (t!15340 List!9126)) )
))
(declare-datatypes ((ListLongMap!7941 0))(
  ( (ListLongMap!7942 (toList!3986 List!9126)) )
))
(declare-fun contains!2593 (ListLongMap!7941 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2278 (array!30939 array!30937 (_ BitVec 32) (_ BitVec 32) V!19269 V!19269 (_ BitVec 32) Int) ListLongMap!7941)

(assert (=> b!479210 (= lt!217820 (contains!2593 (getCurrentListMap!2278 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519) k!1332))))

(declare-fun b!479211 () Bool)

(declare-fun e!281936 () Bool)

(declare-fun tp_is_empty!13649 () Bool)

(assert (=> b!479211 (= e!281936 tp_is_empty!13649)))

(declare-fun b!479212 () Bool)

(declare-fun res!285925 () Bool)

(assert (=> b!479212 (=> (not res!285925) (not e!281938))))

(declare-datatypes ((List!9127 0))(
  ( (Nil!9124) (Cons!9123 (h!9979 (_ BitVec 64)) (t!15341 List!9127)) )
))
(declare-fun arrayNoDuplicates!0 (array!30939 (_ BitVec 32) List!9127) Bool)

(assert (=> b!479212 (= res!285925 (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9124))))

(declare-fun mapNonEmpty!22171 () Bool)

(declare-fun mapRes!22171 () Bool)

(declare-fun tp!42682 () Bool)

(assert (=> mapNonEmpty!22171 (= mapRes!22171 (and tp!42682 e!281936))))

(declare-fun mapValue!22171 () ValueCell!6463)

(declare-fun mapKey!22171 () (_ BitVec 32))

(declare-fun mapRest!22171 () (Array (_ BitVec 32) ValueCell!6463))

(assert (=> mapNonEmpty!22171 (= (arr!14872 _values!1516) (store mapRest!22171 mapKey!22171 mapValue!22171))))

(declare-fun res!285924 () Bool)

(assert (=> start!43278 (=> (not res!285924) (not e!281938))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!43278 (= res!285924 (validMask!0 mask!2352))))

(assert (=> start!43278 e!281938))

(assert (=> start!43278 true))

(assert (=> start!43278 tp_is_empty!13649))

(declare-fun e!281937 () Bool)

(declare-fun array_inv!10714 (array!30937) Bool)

(assert (=> start!43278 (and (array_inv!10714 _values!1516) e!281937)))

(assert (=> start!43278 tp!42681))

(declare-fun array_inv!10715 (array!30939) Bool)

(assert (=> start!43278 (array_inv!10715 _keys!1874)))

(declare-fun mapIsEmpty!22171 () Bool)

(assert (=> mapIsEmpty!22171 mapRes!22171))

(declare-fun b!479213 () Bool)

(declare-fun res!285926 () Bool)

(assert (=> b!479213 (=> (not res!285926) (not e!281938))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30939 (_ BitVec 32)) Bool)

(assert (=> b!479213 (= res!285926 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352))))

(declare-fun b!479214 () Bool)

(declare-fun e!281935 () Bool)

(assert (=> b!479214 (= e!281937 (and e!281935 mapRes!22171))))

(declare-fun condMapEmpty!22171 () Bool)

(declare-fun mapDefault!22171 () ValueCell!6463)

