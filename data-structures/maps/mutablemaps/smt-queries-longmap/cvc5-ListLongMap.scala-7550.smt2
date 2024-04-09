; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95656 () Bool)

(assert start!95656)

(declare-fun b_free!22273 () Bool)

(declare-fun b_next!22273 () Bool)

(assert (=> start!95656 (= b_free!22273 (not b_next!22273))))

(declare-fun tp!78669 () Bool)

(declare-fun b_and!35269 () Bool)

(assert (=> start!95656 (= tp!78669 b_and!35269)))

(declare-fun b!1080379 () Bool)

(declare-fun res!720146 () Bool)

(declare-fun e!617649 () Bool)

(assert (=> b!1080379 (=> (not res!720146) (not e!617649))))

(declare-datatypes ((array!69456 0))(
  ( (array!69457 (arr!33398 (Array (_ BitVec 32) (_ BitVec 64))) (size!33935 (_ BitVec 32))) )
))
(declare-fun lt!478993 () array!69456)

(declare-datatypes ((List!23402 0))(
  ( (Nil!23399) (Cons!23398 (h!24607 (_ BitVec 64)) (t!32768 List!23402)) )
))
(declare-fun arrayNoDuplicates!0 (array!69456 (_ BitVec 32) List!23402) Bool)

(assert (=> b!1080379 (= res!720146 (arrayNoDuplicates!0 lt!478993 #b00000000000000000000000000000000 Nil!23399))))

(declare-fun mapNonEmpty!41167 () Bool)

(declare-fun mapRes!41167 () Bool)

(declare-fun tp!78668 () Bool)

(declare-fun e!617652 () Bool)

(assert (=> mapNonEmpty!41167 (= mapRes!41167 (and tp!78668 e!617652))))

(declare-datatypes ((V!40161 0))(
  ( (V!40162 (val!13194 Int)) )
))
(declare-datatypes ((ValueCell!12428 0))(
  ( (ValueCellFull!12428 (v!15816 V!40161)) (EmptyCell!12428) )
))
(declare-datatypes ((array!69458 0))(
  ( (array!69459 (arr!33399 (Array (_ BitVec 32) ValueCell!12428)) (size!33936 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69458)

(declare-fun mapKey!41167 () (_ BitVec 32))

(declare-fun mapValue!41167 () ValueCell!12428)

(declare-fun mapRest!41167 () (Array (_ BitVec 32) ValueCell!12428))

(assert (=> mapNonEmpty!41167 (= (arr!33399 _values!874) (store mapRest!41167 mapKey!41167 mapValue!41167))))

(declare-fun b!1080380 () Bool)

(assert (=> b!1080380 (= e!617649 (not true))))

(declare-fun minValue!831 () V!40161)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-fun zeroValue!831 () V!40161)

(declare-datatypes ((tuple2!16780 0))(
  ( (tuple2!16781 (_1!8400 (_ BitVec 64)) (_2!8400 V!40161)) )
))
(declare-datatypes ((List!23403 0))(
  ( (Nil!23400) (Cons!23399 (h!24608 tuple2!16780) (t!32769 List!23403)) )
))
(declare-datatypes ((ListLongMap!14761 0))(
  ( (ListLongMap!14762 (toList!7396 List!23403)) )
))
(declare-fun lt!478992 () ListLongMap!14761)

(declare-fun defaultEntry!882 () Int)

(declare-fun _keys!1070 () array!69456)

(declare-fun getCurrentListMapNoExtraKeys!3907 (array!69456 array!69458 (_ BitVec 32) (_ BitVec 32) V!40161 V!40161 (_ BitVec 32) Int) ListLongMap!14761)

(assert (=> b!1080380 (= lt!478992 (getCurrentListMapNoExtraKeys!3907 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!69456 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1080380 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((Unit!35471 0))(
  ( (Unit!35472) )
))
(declare-fun lt!478994 () Unit!35471)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69456 (_ BitVec 64) (_ BitVec 32)) Unit!35471)

(assert (=> b!1080380 (= lt!478994 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1080381 () Bool)

(declare-fun e!617648 () Bool)

(declare-fun e!617650 () Bool)

(assert (=> b!1080381 (= e!617648 (and e!617650 mapRes!41167))))

(declare-fun condMapEmpty!41167 () Bool)

(declare-fun mapDefault!41167 () ValueCell!12428)

