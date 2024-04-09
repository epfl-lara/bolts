; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41986 () Bool)

(assert start!41986)

(declare-fun b_free!11551 () Bool)

(declare-fun b_next!11551 () Bool)

(assert (=> start!41986 (= b_free!11551 (not b_next!11551))))

(declare-fun tp!40668 () Bool)

(declare-fun b_and!19967 () Bool)

(assert (=> start!41986 (= tp!40668 b_and!19967)))

(declare-fun b!468471 () Bool)

(declare-fun res!280030 () Bool)

(declare-fun e!274216 () Bool)

(assert (=> b!468471 (=> (not res!280030) (not e!274216))))

(declare-datatypes ((array!29691 0))(
  ( (array!29692 (arr!14268 (Array (_ BitVec 32) (_ BitVec 64))) (size!14620 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29691)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29691 (_ BitVec 32)) Bool)

(assert (=> b!468471 (= res!280030 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun mapNonEmpty!21163 () Bool)

(declare-fun mapRes!21163 () Bool)

(declare-fun tp!40669 () Bool)

(declare-fun e!274214 () Bool)

(assert (=> mapNonEmpty!21163 (= mapRes!21163 (and tp!40669 e!274214))))

(declare-fun mapKey!21163 () (_ BitVec 32))

(declare-datatypes ((V!18411 0))(
  ( (V!18412 (val!6534 Int)) )
))
(declare-datatypes ((ValueCell!6146 0))(
  ( (ValueCellFull!6146 (v!8819 V!18411)) (EmptyCell!6146) )
))
(declare-datatypes ((array!29693 0))(
  ( (array!29694 (arr!14269 (Array (_ BitVec 32) ValueCell!6146)) (size!14621 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29693)

(declare-fun mapValue!21163 () ValueCell!6146)

(declare-fun mapRest!21163 () (Array (_ BitVec 32) ValueCell!6146))

(assert (=> mapNonEmpty!21163 (= (arr!14269 _values!833) (store mapRest!21163 mapKey!21163 mapValue!21163))))

(declare-fun b!468472 () Bool)

(declare-fun e!274217 () Bool)

(assert (=> b!468472 (= e!274216 (not e!274217))))

(declare-fun res!280033 () Bool)

(assert (=> b!468472 (=> res!280033 e!274217)))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!468472 (= res!280033 (or (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!8568 0))(
  ( (tuple2!8569 (_1!4294 (_ BitVec 64)) (_2!4294 V!18411)) )
))
(declare-datatypes ((List!8688 0))(
  ( (Nil!8685) (Cons!8684 (h!9540 tuple2!8568) (t!14654 List!8688)) )
))
(declare-datatypes ((ListLongMap!7495 0))(
  ( (ListLongMap!7496 (toList!3763 List!8688)) )
))
(declare-fun lt!212006 () ListLongMap!7495)

(declare-fun lt!212005 () ListLongMap!7495)

(assert (=> b!468472 (= lt!212006 lt!212005)))

(declare-fun minValueBefore!38 () V!18411)

(declare-datatypes ((Unit!13648 0))(
  ( (Unit!13649) )
))
(declare-fun lt!212003 () Unit!13648)

(declare-fun zeroValue!794 () V!18411)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-fun minValueAfter!38 () V!18411)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!123 (array!29691 array!29693 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18411 V!18411 V!18411 V!18411 (_ BitVec 32) Int) Unit!13648)

(assert (=> b!468472 (= lt!212003 (lemmaNoChangeToArrayThenSameMapNoExtras!123 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1928 (array!29691 array!29693 (_ BitVec 32) (_ BitVec 32) V!18411 V!18411 (_ BitVec 32) Int) ListLongMap!7495)

(assert (=> b!468472 (= lt!212005 (getCurrentListMapNoExtraKeys!1928 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!468472 (= lt!212006 (getCurrentListMapNoExtraKeys!1928 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun mapIsEmpty!21163 () Bool)

(assert (=> mapIsEmpty!21163 mapRes!21163))

(declare-fun b!468473 () Bool)

(declare-fun tp_is_empty!12979 () Bool)

(assert (=> b!468473 (= e!274214 tp_is_empty!12979)))

(declare-fun b!468475 () Bool)

(declare-fun e!274218 () Bool)

(declare-fun e!274213 () Bool)

(assert (=> b!468475 (= e!274218 (and e!274213 mapRes!21163))))

(declare-fun condMapEmpty!21163 () Bool)

(declare-fun mapDefault!21163 () ValueCell!6146)

