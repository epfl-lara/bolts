; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!616 () Bool)

(assert start!616)

(declare-fun b_free!89 () Bool)

(declare-fun b_next!89 () Bool)

(assert (=> start!616 (= b_free!89 (not b_next!89))))

(declare-fun tp!484 () Bool)

(declare-fun b_and!227 () Bool)

(assert (=> start!616 (= tp!484 b_and!227)))

(declare-fun res!5415 () Bool)

(declare-fun e!1966 () Bool)

(assert (=> start!616 (=> (not res!5415) (not e!1966))))

(declare-fun mask!2250 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!616 (= res!5415 (validMask!0 mask!2250))))

(assert (=> start!616 e!1966))

(assert (=> start!616 tp!484))

(assert (=> start!616 true))

(declare-datatypes ((V!399 0))(
  ( (V!400 (val!89 Int)) )
))
(declare-datatypes ((ValueCell!67 0))(
  ( (ValueCellFull!67 (v!1176 V!399)) (EmptyCell!67) )
))
(declare-datatypes ((array!267 0))(
  ( (array!268 (arr!126 (Array (_ BitVec 32) ValueCell!67)) (size!188 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!267)

(declare-fun e!1967 () Bool)

(declare-fun array_inv!89 (array!267) Bool)

(assert (=> start!616 (and (array_inv!89 _values!1492) e!1967)))

(declare-fun tp_is_empty!167 () Bool)

(assert (=> start!616 tp_is_empty!167))

(declare-datatypes ((array!269 0))(
  ( (array!270 (arr!127 (Array (_ BitVec 32) (_ BitVec 64))) (size!189 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!269)

(declare-fun array_inv!90 (array!269) Bool)

(assert (=> start!616 (array_inv!90 _keys!1806)))

(declare-fun b!3868 () Bool)

(assert (=> b!3868 (= e!1966 false)))

(declare-fun defaultEntry!1495 () Int)

(declare-fun lt!534 () Bool)

(declare-fun minValue!1434 () V!399)

(declare-fun k!1278 () (_ BitVec 64))

(declare-fun extraKeys!1413 () (_ BitVec 32))

(declare-fun zeroValue!1434 () V!399)

(declare-datatypes ((tuple2!72 0))(
  ( (tuple2!73 (_1!36 (_ BitVec 64)) (_2!36 V!399)) )
))
(declare-datatypes ((List!77 0))(
  ( (Nil!74) (Cons!73 (h!639 tuple2!72) (t!2204 List!77)) )
))
(declare-datatypes ((ListLongMap!77 0))(
  ( (ListLongMap!78 (toList!54 List!77)) )
))
(declare-fun contains!24 (ListLongMap!77 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!13 (array!269 array!267 (_ BitVec 32) (_ BitVec 32) V!399 V!399 (_ BitVec 32) Int) ListLongMap!77)

(assert (=> b!3868 (= lt!534 (contains!24 (getCurrentListMap!13 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495) k!1278))))

(declare-fun b!3869 () Bool)

(declare-fun e!1970 () Bool)

(assert (=> b!3869 (= e!1970 tp_is_empty!167)))

(declare-fun mapIsEmpty!209 () Bool)

(declare-fun mapRes!209 () Bool)

(assert (=> mapIsEmpty!209 mapRes!209))

(declare-fun b!3870 () Bool)

(declare-fun res!5414 () Bool)

(assert (=> b!3870 (=> (not res!5414) (not e!1966))))

(assert (=> b!3870 (= res!5414 (and (= (size!188 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!189 _keys!1806) (size!188 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!209 () Bool)

(declare-fun tp!485 () Bool)

(declare-fun e!1969 () Bool)

(assert (=> mapNonEmpty!209 (= mapRes!209 (and tp!485 e!1969))))

(declare-fun mapValue!209 () ValueCell!67)

(declare-fun mapKey!209 () (_ BitVec 32))

(declare-fun mapRest!209 () (Array (_ BitVec 32) ValueCell!67))

(assert (=> mapNonEmpty!209 (= (arr!126 _values!1492) (store mapRest!209 mapKey!209 mapValue!209))))

(declare-fun b!3871 () Bool)

(declare-fun res!5416 () Bool)

(assert (=> b!3871 (=> (not res!5416) (not e!1966))))

(declare-datatypes ((List!78 0))(
  ( (Nil!75) (Cons!74 (h!640 (_ BitVec 64)) (t!2205 List!78)) )
))
(declare-fun arrayNoDuplicates!0 (array!269 (_ BitVec 32) List!78) Bool)

(assert (=> b!3871 (= res!5416 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!75))))

(declare-fun b!3872 () Bool)

(assert (=> b!3872 (= e!1969 tp_is_empty!167)))

(declare-fun b!3873 () Bool)

(assert (=> b!3873 (= e!1967 (and e!1970 mapRes!209))))

(declare-fun condMapEmpty!209 () Bool)

(declare-fun mapDefault!209 () ValueCell!67)

