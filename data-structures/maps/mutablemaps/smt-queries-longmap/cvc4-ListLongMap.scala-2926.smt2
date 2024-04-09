; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41738 () Bool)

(assert start!41738)

(declare-fun b_free!11369 () Bool)

(declare-fun b_next!11369 () Bool)

(assert (=> start!41738 (= b_free!11369 (not b_next!11369))))

(declare-fun tp!40110 () Bool)

(declare-fun b_and!19743 () Bool)

(assert (=> start!41738 (= tp!40110 b_and!19743)))

(declare-fun b!465767 () Bool)

(declare-fun e!272292 () Bool)

(declare-fun e!272289 () Bool)

(assert (=> b!465767 (= e!272292 (not e!272289))))

(declare-fun res!278496 () Bool)

(assert (=> b!465767 (=> res!278496 e!272289)))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!465767 (= res!278496 (or (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-datatypes ((V!18167 0))(
  ( (V!18168 (val!6443 Int)) )
))
(declare-datatypes ((tuple2!8426 0))(
  ( (tuple2!8427 (_1!4223 (_ BitVec 64)) (_2!4223 V!18167)) )
))
(declare-datatypes ((List!8548 0))(
  ( (Nil!8545) (Cons!8544 (h!9400 tuple2!8426) (t!14506 List!8548)) )
))
(declare-datatypes ((ListLongMap!7353 0))(
  ( (ListLongMap!7354 (toList!3692 List!8548)) )
))
(declare-fun lt!210448 () ListLongMap!7353)

(declare-fun lt!210451 () ListLongMap!7353)

(assert (=> b!465767 (= lt!210448 lt!210451)))

(declare-fun minValueBefore!38 () V!18167)

(declare-fun zeroValue!794 () V!18167)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((Unit!13503 0))(
  ( (Unit!13504) )
))
(declare-fun lt!210450 () Unit!13503)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!29331 0))(
  ( (array!29332 (arr!14092 (Array (_ BitVec 32) (_ BitVec 64))) (size!14444 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29331)

(declare-datatypes ((ValueCell!6055 0))(
  ( (ValueCellFull!6055 (v!8726 V!18167)) (EmptyCell!6055) )
))
(declare-datatypes ((array!29333 0))(
  ( (array!29334 (arr!14093 (Array (_ BitVec 32) ValueCell!6055)) (size!14445 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29333)

(declare-fun minValueAfter!38 () V!18167)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!54 (array!29331 array!29333 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18167 V!18167 V!18167 V!18167 (_ BitVec 32) Int) Unit!13503)

(assert (=> b!465767 (= lt!210450 (lemmaNoChangeToArrayThenSameMapNoExtras!54 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1859 (array!29331 array!29333 (_ BitVec 32) (_ BitVec 32) V!18167 V!18167 (_ BitVec 32) Int) ListLongMap!7353)

(assert (=> b!465767 (= lt!210451 (getCurrentListMapNoExtraKeys!1859 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!465767 (= lt!210448 (getCurrentListMapNoExtraKeys!1859 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!465768 () Bool)

(declare-fun e!272290 () Bool)

(declare-fun tp_is_empty!12797 () Bool)

(assert (=> b!465768 (= e!272290 tp_is_empty!12797)))

(declare-fun b!465769 () Bool)

(declare-fun res!278493 () Bool)

(assert (=> b!465769 (=> (not res!278493) (not e!272292))))

(declare-datatypes ((List!8549 0))(
  ( (Nil!8546) (Cons!8545 (h!9401 (_ BitVec 64)) (t!14507 List!8549)) )
))
(declare-fun arrayNoDuplicates!0 (array!29331 (_ BitVec 32) List!8549) Bool)

(assert (=> b!465769 (= res!278493 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8546))))

(declare-fun b!465770 () Bool)

(declare-fun e!272291 () Bool)

(declare-fun e!272287 () Bool)

(declare-fun mapRes!20878 () Bool)

(assert (=> b!465770 (= e!272291 (and e!272287 mapRes!20878))))

(declare-fun condMapEmpty!20878 () Bool)

(declare-fun mapDefault!20878 () ValueCell!6055)

