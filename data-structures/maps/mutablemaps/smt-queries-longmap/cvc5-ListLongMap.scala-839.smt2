; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20142 () Bool)

(assert start!20142)

(declare-fun b_free!4789 () Bool)

(declare-fun b_next!4789 () Bool)

(assert (=> start!20142 (= b_free!4789 (not b_next!4789))))

(declare-fun tp!17398 () Bool)

(declare-fun b_and!11553 () Bool)

(assert (=> start!20142 (= tp!17398 b_and!11553)))

(declare-fun b!197340 () Bool)

(declare-fun res!93349 () Bool)

(declare-fun e!129880 () Bool)

(assert (=> b!197340 (=> (not res!93349) (not e!129880))))

(declare-datatypes ((array!8542 0))(
  ( (array!8543 (arr!4021 (Array (_ BitVec 32) (_ BitVec 64))) (size!4346 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8542)

(declare-datatypes ((List!2530 0))(
  ( (Nil!2527) (Cons!2526 (h!3168 (_ BitVec 64)) (t!7469 List!2530)) )
))
(declare-fun arrayNoDuplicates!0 (array!8542 (_ BitVec 32) List!2530) Bool)

(assert (=> b!197340 (= res!93349 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2527))))

(declare-fun res!93347 () Bool)

(assert (=> start!20142 (=> (not res!93347) (not e!129880))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20142 (= res!93347 (validMask!0 mask!1149))))

(assert (=> start!20142 e!129880))

(declare-datatypes ((V!5841 0))(
  ( (V!5842 (val!2367 Int)) )
))
(declare-datatypes ((ValueCell!1979 0))(
  ( (ValueCellFull!1979 (v!4333 V!5841)) (EmptyCell!1979) )
))
(declare-datatypes ((array!8544 0))(
  ( (array!8545 (arr!4022 (Array (_ BitVec 32) ValueCell!1979)) (size!4347 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8544)

(declare-fun e!129877 () Bool)

(declare-fun array_inv!2613 (array!8544) Bool)

(assert (=> start!20142 (and (array_inv!2613 _values!649) e!129877)))

(assert (=> start!20142 true))

(declare-fun tp_is_empty!4645 () Bool)

(assert (=> start!20142 tp_is_empty!4645))

(declare-fun array_inv!2614 (array!8542) Bool)

(assert (=> start!20142 (array_inv!2614 _keys!825)))

(assert (=> start!20142 tp!17398))

(declare-fun b!197341 () Bool)

(declare-fun res!93348 () Bool)

(assert (=> b!197341 (=> (not res!93348) (not e!129880))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8542 (_ BitVec 32)) Bool)

(assert (=> b!197341 (= res!93348 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!197342 () Bool)

(declare-fun e!129879 () Bool)

(assert (=> b!197342 (= e!129879 tp_is_empty!4645)))

(declare-fun b!197343 () Bool)

(assert (=> b!197343 (= e!129880 (bvsgt #b00000000000000000000000000000000 (size!4346 _keys!825)))))

(declare-datatypes ((tuple2!3594 0))(
  ( (tuple2!3595 (_1!1807 (_ BitVec 64)) (_2!1807 V!5841)) )
))
(declare-datatypes ((List!2531 0))(
  ( (Nil!2528) (Cons!2527 (h!3169 tuple2!3594) (t!7470 List!2531)) )
))
(declare-datatypes ((ListLongMap!2521 0))(
  ( (ListLongMap!2522 (toList!1276 List!2531)) )
))
(declare-fun lt!97735 () ListLongMap!2521)

(declare-fun zeroValue!615 () V!5841)

(declare-fun defaultEntry!657 () Int)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-fun minValue!615 () V!5841)

(declare-fun getCurrentListMapNoExtraKeys!233 (array!8542 array!8544 (_ BitVec 32) (_ BitVec 32) V!5841 V!5841 (_ BitVec 32) Int) ListLongMap!2521)

(assert (=> b!197343 (= lt!97735 (getCurrentListMapNoExtraKeys!233 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!197344 () Bool)

(declare-fun res!93345 () Bool)

(assert (=> b!197344 (=> (not res!93345) (not e!129880))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!197344 (= res!93345 (= (select (arr!4021 _keys!825) i!601) k!843))))

(declare-fun b!197345 () Bool)

(declare-fun res!93346 () Bool)

(assert (=> b!197345 (=> (not res!93346) (not e!129880))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!197345 (= res!93346 (validKeyInArray!0 k!843))))

(declare-fun b!197346 () Bool)

(declare-fun res!93343 () Bool)

(assert (=> b!197346 (=> (not res!93343) (not e!129880))))

(assert (=> b!197346 (= res!93343 (and (= (size!4347 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4346 _keys!825) (size!4347 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!8036 () Bool)

(declare-fun mapRes!8036 () Bool)

(declare-fun tp!17399 () Bool)

(assert (=> mapNonEmpty!8036 (= mapRes!8036 (and tp!17399 e!129879))))

(declare-fun mapKey!8036 () (_ BitVec 32))

(declare-fun mapValue!8036 () ValueCell!1979)

(declare-fun mapRest!8036 () (Array (_ BitVec 32) ValueCell!1979))

(assert (=> mapNonEmpty!8036 (= (arr!4022 _values!649) (store mapRest!8036 mapKey!8036 mapValue!8036))))

(declare-fun b!197347 () Bool)

(declare-fun e!129878 () Bool)

(assert (=> b!197347 (= e!129878 tp_is_empty!4645)))

(declare-fun b!197348 () Bool)

(declare-fun res!93344 () Bool)

(assert (=> b!197348 (=> (not res!93344) (not e!129880))))

(assert (=> b!197348 (= res!93344 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4346 _keys!825))))))

(declare-fun b!197349 () Bool)

(assert (=> b!197349 (= e!129877 (and e!129878 mapRes!8036))))

(declare-fun condMapEmpty!8036 () Bool)

(declare-fun mapDefault!8036 () ValueCell!1979)

