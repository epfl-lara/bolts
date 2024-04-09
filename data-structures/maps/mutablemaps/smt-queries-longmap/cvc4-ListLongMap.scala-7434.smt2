; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94494 () Bool)

(assert start!94494)

(declare-fun b_free!21785 () Bool)

(declare-fun b_next!21785 () Bool)

(assert (=> start!94494 (= b_free!21785 (not b_next!21785))))

(declare-fun tp!76803 () Bool)

(declare-fun b_and!34595 () Bool)

(assert (=> start!94494 (= tp!76803 b_and!34595)))

(declare-fun mapNonEmpty!40087 () Bool)

(declare-fun mapRes!40087 () Bool)

(declare-fun tp!76802 () Bool)

(declare-fun e!609343 () Bool)

(assert (=> mapNonEmpty!40087 (= mapRes!40087 (and tp!76802 e!609343))))

(declare-datatypes ((V!39261 0))(
  ( (V!39262 (val!12848 Int)) )
))
(declare-datatypes ((ValueCell!12094 0))(
  ( (ValueCellFull!12094 (v!15463 V!39261)) (EmptyCell!12094) )
))
(declare-fun mapRest!40087 () (Array (_ BitVec 32) ValueCell!12094))

(declare-fun mapValue!40087 () ValueCell!12094)

(declare-fun mapKey!40087 () (_ BitVec 32))

(declare-datatypes ((array!68144 0))(
  ( (array!68145 (arr!32768 (Array (_ BitVec 32) ValueCell!12094)) (size!33305 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68144)

(assert (=> mapNonEmpty!40087 (= (arr!32768 _values!955) (store mapRest!40087 mapKey!40087 mapValue!40087))))

(declare-fun b!1068048 () Bool)

(declare-fun res!712807 () Bool)

(declare-fun e!609340 () Bool)

(assert (=> b!1068048 (=> (not res!712807) (not e!609340))))

(declare-datatypes ((array!68146 0))(
  ( (array!68147 (arr!32769 (Array (_ BitVec 32) (_ BitVec 64))) (size!33306 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68146)

(declare-datatypes ((List!22983 0))(
  ( (Nil!22980) (Cons!22979 (h!24188 (_ BitVec 64)) (t!32315 List!22983)) )
))
(declare-fun arrayNoDuplicates!0 (array!68146 (_ BitVec 32) List!22983) Bool)

(assert (=> b!1068048 (= res!712807 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22980))))

(declare-fun mapIsEmpty!40087 () Bool)

(assert (=> mapIsEmpty!40087 mapRes!40087))

(declare-fun b!1068049 () Bool)

(declare-fun e!609341 () Bool)

(declare-fun tp_is_empty!25595 () Bool)

(assert (=> b!1068049 (= e!609341 tp_is_empty!25595)))

(declare-fun b!1068050 () Bool)

(declare-fun res!712809 () Bool)

(assert (=> b!1068050 (=> (not res!712809) (not e!609340))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68146 (_ BitVec 32)) Bool)

(assert (=> b!1068050 (= res!712809 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1068051 () Bool)

(declare-fun e!609344 () Bool)

(assert (=> b!1068051 (= e!609344 true)))

(declare-datatypes ((tuple2!16392 0))(
  ( (tuple2!16393 (_1!8206 (_ BitVec 64)) (_2!8206 V!39261)) )
))
(declare-datatypes ((List!22984 0))(
  ( (Nil!22981) (Cons!22980 (h!24189 tuple2!16392) (t!32316 List!22984)) )
))
(declare-datatypes ((ListLongMap!14373 0))(
  ( (ListLongMap!14374 (toList!7202 List!22984)) )
))
(declare-fun lt!471778 () ListLongMap!14373)

(declare-fun -!641 (ListLongMap!14373 (_ BitVec 64)) ListLongMap!14373)

(assert (=> b!1068051 (= (-!641 lt!471778 #b0000000000000000000000000000000000000000000000000000000000000000) lt!471778)))

(declare-datatypes ((Unit!35070 0))(
  ( (Unit!35071) )
))
(declare-fun lt!471776 () Unit!35070)

(declare-fun removeNotPresentStillSame!50 (ListLongMap!14373 (_ BitVec 64)) Unit!35070)

(assert (=> b!1068051 (= lt!471776 (removeNotPresentStillSame!50 lt!471778 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1068052 () Bool)

(declare-fun e!609345 () Bool)

(assert (=> b!1068052 (= e!609345 (and e!609341 mapRes!40087))))

(declare-fun condMapEmpty!40087 () Bool)

(declare-fun mapDefault!40087 () ValueCell!12094)

