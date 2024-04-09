; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41864 () Bool)

(assert start!41864)

(declare-fun b_free!11459 () Bool)

(declare-fun b_next!11459 () Bool)

(assert (=> start!41864 (= b_free!11459 (not b_next!11459))))

(declare-fun tp!40387 () Bool)

(declare-fun b_and!19857 () Bool)

(assert (=> start!41864 (= tp!40387 b_and!19857)))

(declare-fun res!279288 () Bool)

(declare-fun e!273276 () Bool)

(assert (=> start!41864 (=> (not res!279288) (not e!273276))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41864 (= res!279288 (validMask!0 mask!1365))))

(assert (=> start!41864 e!273276))

(declare-fun tp_is_empty!12887 () Bool)

(assert (=> start!41864 tp_is_empty!12887))

(assert (=> start!41864 tp!40387))

(assert (=> start!41864 true))

(declare-datatypes ((array!29509 0))(
  ( (array!29510 (arr!14179 (Array (_ BitVec 32) (_ BitVec 64))) (size!14531 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29509)

(declare-fun array_inv!10224 (array!29509) Bool)

(assert (=> start!41864 (array_inv!10224 _keys!1025)))

(declare-datatypes ((V!18287 0))(
  ( (V!18288 (val!6488 Int)) )
))
(declare-datatypes ((ValueCell!6100 0))(
  ( (ValueCellFull!6100 (v!8773 V!18287)) (EmptyCell!6100) )
))
(declare-datatypes ((array!29511 0))(
  ( (array!29512 (arr!14180 (Array (_ BitVec 32) ValueCell!6100)) (size!14532 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29511)

(declare-fun e!273274 () Bool)

(declare-fun array_inv!10225 (array!29511) Bool)

(assert (=> start!41864 (and (array_inv!10225 _values!833) e!273274)))

(declare-fun b!467171 () Bool)

(declare-fun e!273273 () Bool)

(assert (=> b!467171 (= e!273273 tp_is_empty!12887)))

(declare-fun b!467172 () Bool)

(assert (=> b!467172 (= e!273276 (not true))))

(declare-datatypes ((tuple2!8506 0))(
  ( (tuple2!8507 (_1!4263 (_ BitVec 64)) (_2!4263 V!18287)) )
))
(declare-datatypes ((List!8620 0))(
  ( (Nil!8617) (Cons!8616 (h!9472 tuple2!8506) (t!14582 List!8620)) )
))
(declare-datatypes ((ListLongMap!7433 0))(
  ( (ListLongMap!7434 (toList!3732 List!8620)) )
))
(declare-fun lt!211280 () ListLongMap!7433)

(declare-fun lt!211281 () ListLongMap!7433)

(assert (=> b!467172 (= lt!211280 lt!211281)))

(declare-fun minValueBefore!38 () V!18287)

(declare-fun zeroValue!794 () V!18287)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((Unit!13585 0))(
  ( (Unit!13586) )
))
(declare-fun lt!211279 () Unit!13585)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-fun minValueAfter!38 () V!18287)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!93 (array!29509 array!29511 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18287 V!18287 V!18287 V!18287 (_ BitVec 32) Int) Unit!13585)

(assert (=> b!467172 (= lt!211279 (lemmaNoChangeToArrayThenSameMapNoExtras!93 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1898 (array!29509 array!29511 (_ BitVec 32) (_ BitVec 32) V!18287 V!18287 (_ BitVec 32) Int) ListLongMap!7433)

(assert (=> b!467172 (= lt!211281 (getCurrentListMapNoExtraKeys!1898 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!467172 (= lt!211280 (getCurrentListMapNoExtraKeys!1898 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!467173 () Bool)

(declare-fun res!279291 () Bool)

(assert (=> b!467173 (=> (not res!279291) (not e!273276))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29509 (_ BitVec 32)) Bool)

(assert (=> b!467173 (= res!279291 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun mapIsEmpty!21019 () Bool)

(declare-fun mapRes!21019 () Bool)

(assert (=> mapIsEmpty!21019 mapRes!21019))

(declare-fun b!467174 () Bool)

(declare-fun e!273277 () Bool)

(assert (=> b!467174 (= e!273274 (and e!273277 mapRes!21019))))

(declare-fun condMapEmpty!21019 () Bool)

(declare-fun mapDefault!21019 () ValueCell!6100)

