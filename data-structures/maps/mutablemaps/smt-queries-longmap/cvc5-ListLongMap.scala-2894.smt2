; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41514 () Bool)

(assert start!41514)

(declare-fun b_free!11173 () Bool)

(declare-fun b_next!11173 () Bool)

(assert (=> start!41514 (= b_free!11173 (not b_next!11173))))

(declare-fun tp!39517 () Bool)

(declare-fun b_and!19531 () Bool)

(assert (=> start!41514 (= tp!39517 b_and!19531)))

(declare-fun b!463468 () Bool)

(declare-fun res!277187 () Bool)

(declare-fun e!270637 () Bool)

(assert (=> b!463468 (=> (not res!277187) (not e!270637))))

(declare-datatypes ((array!28961 0))(
  ( (array!28962 (arr!13909 (Array (_ BitVec 32) (_ BitVec 64))) (size!14261 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!28961)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28961 (_ BitVec 32)) Bool)

(assert (=> b!463468 (= res!277187 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun res!277185 () Bool)

(assert (=> start!41514 (=> (not res!277185) (not e!270637))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41514 (= res!277185 (validMask!0 mask!1365))))

(assert (=> start!41514 e!270637))

(declare-fun tp_is_empty!12601 () Bool)

(assert (=> start!41514 tp_is_empty!12601))

(assert (=> start!41514 tp!39517))

(assert (=> start!41514 true))

(declare-fun array_inv!10032 (array!28961) Bool)

(assert (=> start!41514 (array_inv!10032 _keys!1025)))

(declare-datatypes ((V!17907 0))(
  ( (V!17908 (val!6345 Int)) )
))
(declare-datatypes ((ValueCell!5957 0))(
  ( (ValueCellFull!5957 (v!8628 V!17907)) (EmptyCell!5957) )
))
(declare-datatypes ((array!28963 0))(
  ( (array!28964 (arr!13910 (Array (_ BitVec 32) ValueCell!5957)) (size!14262 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!28963)

(declare-fun e!270638 () Bool)

(declare-fun array_inv!10033 (array!28963) Bool)

(assert (=> start!41514 (and (array_inv!10033 _values!833) e!270638)))

(declare-fun mapIsEmpty!20578 () Bool)

(declare-fun mapRes!20578 () Bool)

(assert (=> mapIsEmpty!20578 mapRes!20578))

(declare-fun mapNonEmpty!20578 () Bool)

(declare-fun tp!39516 () Bool)

(declare-fun e!270639 () Bool)

(assert (=> mapNonEmpty!20578 (= mapRes!20578 (and tp!39516 e!270639))))

(declare-fun mapRest!20578 () (Array (_ BitVec 32) ValueCell!5957))

(declare-fun mapValue!20578 () ValueCell!5957)

(declare-fun mapKey!20578 () (_ BitVec 32))

(assert (=> mapNonEmpty!20578 (= (arr!13910 _values!833) (store mapRest!20578 mapKey!20578 mapValue!20578))))

(declare-fun b!463469 () Bool)

(assert (=> b!463469 (= e!270637 false)))

(declare-datatypes ((tuple2!8288 0))(
  ( (tuple2!8289 (_1!4154 (_ BitVec 64)) (_2!4154 V!17907)) )
))
(declare-datatypes ((List!8414 0))(
  ( (Nil!8411) (Cons!8410 (h!9266 tuple2!8288) (t!14368 List!8414)) )
))
(declare-datatypes ((ListLongMap!7215 0))(
  ( (ListLongMap!7216 (toList!3623 List!8414)) )
))
(declare-fun lt!209406 () ListLongMap!7215)

(declare-fun zeroValue!794 () V!17907)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-fun minValueAfter!38 () V!17907)

(declare-fun getCurrentListMapNoExtraKeys!1791 (array!28961 array!28963 (_ BitVec 32) (_ BitVec 32) V!17907 V!17907 (_ BitVec 32) Int) ListLongMap!7215)

(assert (=> b!463469 (= lt!209406 (getCurrentListMapNoExtraKeys!1791 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun minValueBefore!38 () V!17907)

(declare-fun lt!209405 () ListLongMap!7215)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!463469 (= lt!209405 (getCurrentListMapNoExtraKeys!1791 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!463470 () Bool)

(declare-fun e!270640 () Bool)

(assert (=> b!463470 (= e!270638 (and e!270640 mapRes!20578))))

(declare-fun condMapEmpty!20578 () Bool)

(declare-fun mapDefault!20578 () ValueCell!5957)

